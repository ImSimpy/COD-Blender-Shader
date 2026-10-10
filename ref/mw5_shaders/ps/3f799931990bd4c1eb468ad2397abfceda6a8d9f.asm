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
; ENTITY_IDS               0    yz        12     NONE    uint     z 
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
; shader hash: 12c9ef6f3d19bc547b824a440ca74e2a
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
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
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %196 = fmul fast float %106, 5.000000e-01
  %197 = fmul fast float %107, 5.000000e-01
  %198 = fptosi float %196 to i32
  %199 = fptosi float %197 to i32
  %200 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %198, i32 %199, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = lshr i32 %201, 18
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F4C00EBA0000000
  %205 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %206 = fadd fast float %205, -1.000000e+00
  %207 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %208 = extractvalue %dx.types.Dimensions %207, 0
  %209 = sitofp i32 %208 to float
  %210 = extractvalue %dx.types.Dimensions %207, 1
  %211 = sitofp i32 %210 to float
  %212 = fcmp fast oge float %196, %209
  %213 = fcmp fast oge float %197, %211
  %214 = or i1 %212, %213
  %215 = select i1 %214, float 0x4197782600000000, float %206
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %219 = fmul fast float %217, %106
  %220 = fmul fast float %218, %107
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, 114688
  %224 = icmp ne i32 %223, 0
  %225 = select i1 %224, float %219, float 0.000000e+00
  %226 = select i1 %224, float %220, float 0.000000e+00
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %225, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fmul fast float %228, 2.550000e+02
  %230 = fptoui float %229 to i32
  %231 = select i1 %224, i32 %230, i32 0
  %232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.i32 %232, 3
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %233, 4
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %235, %237
  br i1 %238, label %239, label %248

; <label>:239                                     ; preds = %0
  %240 = fmul fast float %141, %107
  %241 = fmul fast float %140, %106
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %241, float %240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %236, 0
  %250 = and i1 %235, %249
  br label %251

; <label>:251                                     ; preds = %248, %239
  %252 = phi i1 [ %247, %239 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %106, 2.560000e+02
  %257 = frem fast float %107, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = fcmp uge float %71, 0.000000e+00
  br i1 %264, label %265, label %268

; <label>:265                                     ; preds = %251
  %266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  br label %268

; <label>:268                                     ; preds = %265, %251
  %269 = phi float [ %267, %265 ], [ 0.000000e+00, %251 ]
  %270 = add i32 %55, 156
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = shl i32 %272, 4
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %272, 7
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %272, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %55, 216
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %284, 8
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %284, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = add i32 %55, 36
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %55, 288
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = fmul fast float %307, 0x3F50624DE0000000
  %311 = fmul fast float %309, 0x3F50624DE0000000
  %312 = mul i32 %56, 100
  %313 = add i32 %312, 28
  %314 = add i32 %312, 40
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = add i32 %55, 172
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %55, 232
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %331, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %331, 16
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = add i32 %55, 52
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %55, 304
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = and i32 %316, 1
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %369, float %361, float %322
  %371 = select i1 %369, float %364, float %325
  %372 = select i1 %369, float %367, float %328
  %373 = add i32 %312, 44
  %374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = fmul fast float %375, %370
  %377 = fmul fast float %375, %371
  %378 = fmul fast float %375, %372
  %379 = add i32 %312, 48
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = shl i32 %381, 4
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %381, 7
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %381, 22
  %389 = shl nuw nsw i32 %388, 5
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %316, 8
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %392, float %384, float %334
  %394 = select i1 %392, float %387, float %338
  %395 = select i1 %392, float %390, float %342
  %396 = add i32 %312, 52
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = and i32 %316, 2
  %404 = icmp ne i32 %403, 0
  %405 = select i1 %404, float %400, float %347
  %406 = select i1 %404, float %402, float %349
  %407 = add i32 %312, 56
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = and i32 %316, 4
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %411, float %354
  %417 = fmul float %416, 0x3F50624DE0000000
  %418 = select i1 %415, float %413, float %356
  %419 = fmul float %418, 0x3F50624DE0000000
  %420 = add i32 %312, 60
  %421 = add i32 %312, 32
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %55, 188
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = shl i32 %426, 4
  %428 = and i32 %427, 32752
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %426, 7
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %426, 22
  %434 = shl nuw nsw i32 %433, 5
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %55, 248
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = lshr i32 %438, 8
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 0x3F70101020000000
  %446 = lshr i32 %438, 16
  %447 = and i32 %446, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %448, 0x3F70101020000000
  %450 = add i32 %55, 68
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = add i32 %55, 320
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = shl i32 %465, 4
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %465, 7
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %465, 22
  %473 = shl nuw nsw i32 %472, 5
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = and i32 %423, 1
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %468, float %429
  %478 = select i1 %476, float %471, float %432
  %479 = select i1 %476, float %474, float %435
  %480 = add i32 %312, 64
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = fmul fast float %482, %477
  %484 = fmul fast float %482, %478
  %485 = fmul fast float %482, %479
  %486 = add i32 %312, 68
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %498 = and i32 %423, 8
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %491, float %441
  %501 = select i1 %499, float %494, float %445
  %502 = select i1 %499, float %497, float %449
  %503 = add i32 %312, 72
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = and i32 %423, 2
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %507, float %454
  %513 = select i1 %511, float %509, float %456
  %514 = add i32 %312, 76
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %516, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %423, 4
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %518, float %461
  %524 = fmul float %523, 0x3F50624DE0000000
  %525 = select i1 %522, float %520, float %463
  %526 = fmul float %525, 0x3F50624DE0000000
  %527 = add i32 %312, 80
  %528 = add i32 %312, 36
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = add i32 %55, 204
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = shl i32 %533, 4
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %533, 7
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 22
  %541 = shl nuw nsw i32 %540, 5
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = add i32 %55, 264
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %547, 0x3F70101020000000
  %549 = lshr i32 %545, 8
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = lshr i32 %545, 16
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %555, 0x3F70101020000000
  %557 = add i32 %55, 84
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = lshr i32 %559, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = add i32 %55, 336
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 65535
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %566, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = shl i32 %572, 4
  %574 = and i32 %573, 32752
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %572, 7
  %577 = and i32 %576, 32752
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %572, 22
  %580 = shl nuw nsw i32 %579, 5
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = and i32 %530, 1
  %583 = icmp ne i32 %582, 0
  %584 = select i1 %583, float %575, float %536
  %585 = select i1 %583, float %578, float %539
  %586 = select i1 %583, float %581, float %542
  %587 = add i32 %312, 84
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = fmul fast float %589, %584
  %591 = fmul fast float %589, %585
  %592 = fmul fast float %589, %586
  %593 = add i32 %312, 88
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = shl i32 %595, 4
  %597 = and i32 %596, 32752
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %595, 7
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %595, 22
  %603 = shl nuw nsw i32 %602, 5
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %530, 8
  %606 = icmp ne i32 %605, 0
  %607 = select i1 %606, float %598, float %548
  %608 = select i1 %606, float %601, float %552
  %609 = select i1 %606, float %604, float %556
  %610 = add i32 %312, 92
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %612, 16
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = and i32 %530, 2
  %618 = icmp ne i32 %617, 0
  %619 = select i1 %618, float %614, float %561
  %620 = select i1 %618, float %616, float %563
  %621 = add i32 %312, 96
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %623, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %530, 4
  %629 = icmp ne i32 %628, 0
  %630 = select i1 %629, float %625, float %568
  %631 = fmul float %630, 0x3F50624DE0000000
  %632 = select i1 %629, float %627, float %570
  %633 = fmul float %632, 0x3F50624DE0000000
  %634 = add i32 %55, 348
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 32
  %638 = icmp eq i32 %637, 0
  %639 = and i32 %636, 64
  %640 = icmp eq i32 %639, 0
  %641 = and i32 %636, 128
  %642 = icmp eq i32 %641, 0
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 2
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %662, label %647

; <label>:647                                     ; preds = %268
  %648 = add i32 %55, 472
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = extractvalue %dx.types.ResRet.f32 %653, 3
  %658 = fmul fast float %657, %90
  %659 = fmul fast float %654, %91
  %660 = fmul fast float %655, %92
  %661 = fmul fast float %656, %93
  br label %662

; <label>:662                                     ; preds = %647, %268
  %663 = phi float [ %93, %268 ], [ %661, %647 ]
  %664 = phi float [ %92, %268 ], [ %660, %647 ]
  %665 = phi float [ %91, %268 ], [ %659, %647 ]
  %666 = phi float [ %90, %268 ], [ %658, %647 ]
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 2
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %690, label %671

; <label>:671                                     ; preds = %662
  %672 = add i32 %55, 44
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 1
  %676 = icmp ne i32 %675, 0
  %677 = select i1 %676, float %665, float 1.000000e+00
  %678 = add i32 %55, 60
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %664, float 1.000000e+00
  %684 = add i32 %55, 76
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 1
  %688 = icmp ne i32 %687, 0
  %689 = select i1 %688, float %663, float 1.000000e+00
  br label %690

; <label>:690                                     ; preds = %671, %662
  %691 = phi float [ %663, %662 ], [ %689, %671 ]
  %692 = phi float [ %664, %662 ], [ %683, %671 ]
  %693 = phi float [ %665, %662 ], [ %677, %671 ]
  %694 = add i32 %55, 476
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = add i32 %55, 40
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %711, label %707

; <label>:707                                     ; preds = %690
  %708 = add i32 %312, 16
  %709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %707, %690
  %712 = phi float [ %710, %707 ], [ %269, %690 ]
  %713 = and i32 %705, 536870912
  %714 = icmp ne i32 %713, 0
  %715 = add i32 %55, 116
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = shl i32 %717, 4
  %719 = and i32 %718, 32752
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = lshr i32 %717, 7
  %722 = and i32 %721, 32752
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = fmul fast float %720, 5.000000e-01
  %725 = select i1 %714, float 4.000000e+00, float 1.000000e+00
  %726 = select i1 %714, float 1.000000e+00, float 0.000000e+00
  %727 = fadd fast float %712, -5.000000e-01
  %728 = call float @dx.op.unary.f32(i32 6, float %727)  ; FAbs(value)
  %729 = fsub fast float 5.000000e-01, %728
  %730 = call float @dx.op.binary.f32(i32 36, float %724, float %729)  ; FMin(a,b)
  %731 = fadd fast float %700, -1.000000e+00
  %732 = fadd fast float %731, %712
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %730, 2.000000e+00
  %735 = fdiv fast float %733, %734
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %737 = fmul fast float %736, %725
  %738 = fmul fast float %736, %726
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %737, %739
  %741 = bitcast float %740 to i32
  %742 = sitofp i32 %741 to float
  %743 = fadd fast float %742, 0xC1CFBF8940000000
  %744 = fmul fast float %743, %723
  %745 = fadd fast float %744, 0x41CFBF8940000000
  %746 = fptosi float %745 to i32
  %747 = bitcast i32 %746 to float
  %748 = add i32 %55, 56
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = icmp slt i32 %750, 0
  br i1 %751, label %756, label %752

; <label>:752                                     ; preds = %711
  %753 = add i32 %312, 20
  %754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.f32 %754, 0
  br label %756

; <label>:756                                     ; preds = %752, %711
  %757 = phi float [ %755, %752 ], [ %269, %711 ]
  %758 = and i32 %750, 536870912
  %759 = icmp ne i32 %758, 0
  %760 = add i32 %55, 132
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = shl i32 %762, 4
  %764 = and i32 %763, 32752
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %762, 7
  %767 = and i32 %766, 32752
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = fmul fast float %765, 5.000000e-01
  %770 = select i1 %759, float 4.000000e+00, float 1.000000e+00
  %771 = select i1 %759, float 1.000000e+00, float 0.000000e+00
  %772 = fadd fast float %757, -5.000000e-01
  %773 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %774 = fsub fast float 5.000000e-01, %773
  %775 = call float @dx.op.binary.f32(i32 36, float %769, float %774)  ; FMin(a,b)
  %776 = fadd fast float %701, -1.000000e+00
  %777 = fadd fast float %776, %757
  %778 = fadd fast float %777, %775
  %779 = fmul fast float %775, 2.000000e+00
  %780 = fdiv fast float %778, %779
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %782 = fmul fast float %781, %770
  %783 = fmul fast float %781, %771
  %784 = fsub fast float 1.000000e+00, %783
  %785 = fmul fast float %782, %784
  %786 = bitcast float %785 to i32
  %787 = sitofp i32 %786 to float
  %788 = fadd fast float %787, 0xC1CFBF8940000000
  %789 = fmul fast float %788, %768
  %790 = fadd fast float %789, 0x41CFBF8940000000
  %791 = fptosi float %790 to i32
  %792 = bitcast i32 %791 to float
  %793 = add i32 %55, 72
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %801, label %797

; <label>:797                                     ; preds = %756
  %798 = add i32 %312, 24
  %799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  br label %801

; <label>:801                                     ; preds = %797, %756
  %802 = phi float [ %800, %797 ], [ %269, %756 ]
  %803 = and i32 %795, 536870912
  %804 = icmp ne i32 %803, 0
  %805 = add i32 %55, 148
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = shl i32 %807, 4
  %809 = and i32 %808, 32752
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %807, 7
  %812 = and i32 %811, 32752
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fmul fast float %810, 5.000000e-01
  %815 = select i1 %804, float 4.000000e+00, float 1.000000e+00
  %816 = select i1 %804, float 1.000000e+00, float 0.000000e+00
  %817 = fadd fast float %802, -5.000000e-01
  %818 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %819 = fsub fast float 5.000000e-01, %818
  %820 = call float @dx.op.binary.f32(i32 36, float %814, float %819)  ; FMin(a,b)
  %821 = fadd fast float %702, -1.000000e+00
  %822 = fadd fast float %821, %802
  %823 = fadd fast float %822, %820
  %824 = fmul fast float %820, 2.000000e+00
  %825 = fdiv fast float %823, %824
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fmul fast float %826, %815
  %828 = fmul fast float %826, %816
  %829 = fsub fast float 1.000000e+00, %828
  %830 = fmul fast float %827, %829
  %831 = bitcast float %830 to i32
  %832 = sitofp i32 %831 to float
  %833 = fadd fast float %832, 0xC1CFBF8940000000
  %834 = fmul fast float %833, %813
  %835 = fadd fast float %834, 0x41CFBF8940000000
  %836 = fptosi float %835 to i32
  %837 = bitcast i32 %836 to float
  %838 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %747, float %792, float %837, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %840 = and i32 %705, 268435456
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %847, label %842

; <label>:842                                     ; preds = %801
  %843 = and i32 %705, 1073741824
  %844 = icmp ne i32 %843, 0
  %845 = select i1 %844, float %839, float %747
  %846 = fmul fast float %845, %693
  br label %847

; <label>:847                                     ; preds = %842, %801
  %848 = phi float [ %693, %801 ], [ %846, %842 ]
  %849 = and i32 %750, 268435456
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %856, label %851

; <label>:851                                     ; preds = %847
  %852 = and i32 %750, 1073741824
  %853 = icmp ne i32 %852, 0
  %854 = select i1 %853, float %839, float %792
  %855 = fmul fast float %854, %692
  br label %856

; <label>:856                                     ; preds = %851, %847
  %857 = phi float [ %692, %847 ], [ %855, %851 ]
  %858 = and i32 %795, 268435456
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %865, label %860

; <label>:860                                     ; preds = %856
  %861 = and i32 %795, 1073741824
  %862 = icmp ne i32 %861, 0
  %863 = select i1 %862, float %839, float %837
  %864 = fmul fast float %863, %691
  br label %865

; <label>:865                                     ; preds = %860, %856
  %866 = phi float [ %691, %856 ], [ %864, %860 ]
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = lshr i32 %868, 20
  %870 = and i32 %869, 3
  %871 = add nuw nsw i32 %870, 1
  %872 = add i32 %55, 24
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %55, 28
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = or i32 %877, %874
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %1414, label %880

; <label>:880                                     ; preds = %865
  %881 = and i32 %874, 262144
  %882 = icmp ne i32 %881, 0
  %883 = select i1 %882, float %61, float 1.000000e+00
  %884 = select i1 %882, float %62, float 0.000000e+00
  %885 = select i1 %882, float %63, float 0.000000e+00
  %886 = select i1 %882, float %64, float 1.000000e+00
  %887 = select i1 %882, float %65, float %88
  %888 = select i1 %882, float %66, float %89
  %889 = add i32 %55, 284
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = lshr i32 %891, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = fmul fast float %893, 0x3F50624DE0000000
  %895 = add i32 %55, 88
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 16
  %899 = and i32 %898, 255
  %900 = lshr i32 %897, 24
  %901 = add i32 %55, 292
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 65535
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = lshr i32 %903, 16
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = add i32 %55, 32
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = lshr i32 %910, 22
  %912 = shl nuw nsw i32 %911, 5
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = shl i32 %910, 4
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %910, 7
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 3
  %922 = fmul fast float %921, 1.000000e+03
  %923 = fmul fast float %310, %922
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = fadd fast float %924, %300
  %926 = fmul fast float %311, %922
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fadd fast float %927, %302
  %929 = fmul fast float %894, %922
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = fmul fast float %930, 0x401921FB60000000
  %932 = fadd fast float %931, %913
  %933 = call float @dx.op.unary.f32(i32 13, float %932)  ; Sin(value)
  %934 = call float @dx.op.unary.f32(i32 12, float %932)  ; Cos(value)
  %935 = fsub fast float -0.000000e+00, %933
  %936 = fadd fast float %887, -5.000000e-01
  %937 = fadd fast float %888, -5.000000e-01
  %938 = fmul fast float %905, %936
  %939 = fmul fast float %907, %937
  %940 = fadd fast float %938, 5.000000e-01
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fmul fast float %916, %940
  %943 = fmul fast float %919, %941
  %944 = fmul fast float %934, %942
  %945 = call float @dx.op.tertiary.f32(i32 46, float %935, float %943, float %944)  ; FMad(a,b,c)
  %946 = fmul fast float %933, %942
  %947 = call float @dx.op.tertiary.f32(i32 46, float %934, float %943, float %946)  ; FMad(a,b,c)
  %948 = fadd fast float %925, %945
  %949 = fadd fast float %928, %947
  %950 = icmp ugt i32 %899, 1
  %951 = icmp ugt i32 %897, 33554431
  %952 = or i1 %951, %950
  br i1 %952, label %953, label %978

; <label>:953                                     ; preds = %880
  %954 = add i32 %55, 228
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fmul fast float %921, %958
  %960 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %961 = mul nuw nsw i32 %899, %900
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %960, %962
  %964 = call float @dx.op.unary.f32(i32 27, float %963)  ; Round_ni(value)
  %965 = fptoui float %964 to i32
  %966 = urem i32 %965, %899
  %967 = udiv i32 %965, %900
  %968 = call float @dx.op.unary.f32(i32 22, float %948)  ; Frc(value)
  %969 = call float @dx.op.unary.f32(i32 22, float %949)  ; Frc(value)
  %970 = uitofp i32 %966 to float
  %971 = uitofp i32 %967 to float
  %972 = fadd fast float %968, %970
  %973 = fadd fast float %969, %971
  %974 = uitofp i32 %899 to float
  %975 = uitofp i32 %900 to float
  %976 = fdiv fast float %972, %974
  %977 = fdiv fast float %973, %975
  br label %978

; <label>:978                                     ; preds = %953, %880
  %979 = phi float [ %976, %953 ], [ %948, %880 ]
  %980 = phi float [ %977, %953 ], [ %949, %880 ]
  %981 = and i32 %874, 256
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1029, label %983

; <label>:983                                     ; preds = %978
  %984 = add i32 %55, 424
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %103, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = add i32 %55, 100
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = shl i32 %993, 4
  %995 = and i32 %994, 32752
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = lshr i32 %993, 7
  %998 = and i32 %997, 32752
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = fsub fast float 1.000000e+00, %666
  %1001 = call float @dx.op.binary.f32(i32 35, float %1000, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1002 = bitcast float %666 to i32
  %1003 = sitofp i32 %1002 to float
  %1004 = fadd fast float %1003, 0xC1CFBF8940000000
  %1005 = fmul fast float %999, %1004
  %1006 = fadd fast float %1005, 0x41CFBF8940000000
  %1007 = fptosi float %1006 to i32
  %1008 = bitcast i32 %1007 to float
  %1009 = bitcast float %1001 to i32
  %1010 = sitofp i32 %1009 to float
  %1011 = fadd fast float %1010, 0xC1CFBF8940000000
  %1012 = fmul fast float %1011, %999
  %1013 = fadd fast float %1012, 0x41CFBF8940000000
  %1014 = fptosi float %1013 to i32
  %1015 = bitcast i32 %1014 to float
  %1016 = fmul fast float %1008, %996
  %1017 = fmul fast float %1015, %996
  %1018 = fsub fast float %1001, %1016
  %1019 = fadd fast float %1017, %1001
  %1020 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1021 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1022 = fsub fast float %990, %1020
  %1023 = fsub fast float %1021, %1020
  %1024 = bitcast float %1023 to i32
  %1025 = sub nsw i32 2129859010, %1024
  %1026 = bitcast i32 %1025 to float
  %1027 = fmul fast float %1026, %1022
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  br label %1029

; <label>:1029                                    ; preds = %983, %978
  %1030 = phi float [ %1028, %983 ], [ %666, %978 ]
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 128
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %1029
  %1036 = add i32 %55, 408
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = add i32 %1038, 0
  %1040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1040, %dx.types.Handle %103, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 524288
  %1046 = icmp ne i32 %1045, 0
  %1047 = fcmp fast ogt float %1042, 0x3FE0101020000000
  %1048 = select i1 %1047, float 1.000000e+00, float 0.000000e+00
  %1049 = select i1 %1046, float %1048, float %1042
  %1050 = fmul fast float %1049, %1030
  br label %1051

; <label>:1051                                    ; preds = %1035, %1029
  %1052 = phi float [ %1050, %1035 ], [ %1030, %1029 ]
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 16
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1255, label %1057

; <label>:1057                                    ; preds = %1051
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = add i32 %55, 360
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = add i32 %1062, 0
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1064, %dx.types.Handle %102, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = and i32 %1059, 255
  %1071 = uitofp i32 %1070 to float
  %1072 = lshr i32 %1059, 8
  %1073 = and i32 %1072, 255
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1069, %1071
  %1076 = fadd fast float %1075, %1074
  %1077 = fmul fast float %1076, 0x3F70101000000000
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 512
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1090, label %1082

; <label>:1082                                    ; preds = %1057
  %1083 = add i32 %55, 440
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %103, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  br label %1090

; <label>:1090                                    ; preds = %1082, %1057
  %1091 = phi float [ %1089, %1082 ], [ 1.000000e+00, %1057 ]
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 33554432
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1202, label %1096

; <label>:1096                                    ; preds = %1090
  %1097 = add i32 %55, 224
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 65535
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = lshr i32 %1099, 16
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = add i32 %55, 228
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 65535
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = lshr i32 %1110, 24
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = and i32 %1110, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = lshr i32 %1110, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = lshr i32 %1110, 16
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = add i32 %55, 220
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = lshr i32 %1127, 24
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = and i32 %1127, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F70101020000000
  %1134 = lshr i32 %1127, 8
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101020000000
  %1138 = lshr i32 %1127, 16
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = fmul fast float %1140, 0x3F70101020000000
  %1142 = bitcast float %1066 to i32
  %1143 = ashr i32 %1142, 1
  %1144 = sub nsw i32 1597463174, %1143
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1066, 5.000000e-01
  %1147 = fmul fast float %1145, %1145
  %1148 = fmul fast float %1147, %1146
  %1149 = fsub fast float 1.500000e+00, %1148
  %1150 = fmul fast float %1145, %1066
  %1151 = fmul fast float %1150, %1149
  %1152 = bitcast float %1067 to i32
  %1153 = ashr i32 %1152, 1
  %1154 = sub nsw i32 1597463174, %1153
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1067, 5.000000e-01
  %1157 = fmul fast float %1155, %1155
  %1158 = fmul fast float %1157, %1156
  %1159 = fsub fast float 1.500000e+00, %1158
  %1160 = fmul fast float %1155, %1067
  %1161 = fmul fast float %1160, %1159
  %1162 = bitcast float %1068 to i32
  %1163 = ashr i32 %1162, 1
  %1164 = sub nsw i32 1597463174, %1163
  %1165 = bitcast i32 %1164 to float
  %1166 = fmul fast float %1068, 5.000000e-01
  %1167 = fmul fast float %1165, %1165
  %1168 = fmul fast float %1167, %1166
  %1169 = fsub fast float 1.500000e+00, %1168
  %1170 = fmul fast float %1165, %1068
  %1171 = fmul fast float %1170, %1169
  %1172 = fsub fast float %1151, %1133
  %1173 = fsub fast float %1161, %1137
  %1174 = fsub fast float %1171, %1141
  %1175 = fmul fast float %1172, %1101
  %1176 = fmul fast float %1173, %1103
  %1177 = fmul fast float %1174, %1108
  %1178 = fadd fast float %1175, %1116
  %1179 = fadd fast float %1176, %1120
  %1180 = fadd fast float %1177, %1124
  %1181 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1182 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1184 = fmul fast float %1181, %1181
  %1185 = fmul fast float %1182, %1182
  %1186 = fmul fast float %1183, %1183
  %1187 = fsub fast float %1184, %1066
  %1188 = fsub fast float %1185, %1067
  %1189 = fsub fast float %1186, %1068
  %1190 = fmul fast float %1187, %1091
  %1191 = fmul fast float %1188, %1091
  %1192 = fmul fast float %1189, %1091
  %1193 = fadd fast float %1190, %1066
  %1194 = fadd fast float %1191, %1067
  %1195 = fadd fast float %1192, %1068
  %1196 = fadd fast float %1113, %1077
  %1197 = fsub fast float %1196, %1130
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fsub fast float %1198, %1077
  %1200 = fmul fast float %1199, %1091
  %1201 = fadd fast float %1200, %1077
  br label %1255

; <label>:1202                                    ; preds = %1090
  %1203 = and i32 %1093, 134217728
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1239, label %1205

; <label>:1205                                    ; preds = %1202
  %1206 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1207 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1208 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1209 = fadd fast float %1206, -5.000000e-01
  %1210 = fadd fast float %1207, -5.000000e-01
  %1211 = fadd fast float %1208, -5.000000e-01
  %1212 = fmul fast float %1209, %1091
  %1213 = fmul fast float %1210, %1091
  %1214 = fmul fast float %1211, %1091
  %1215 = fadd fast float %1212, 5.000000e-01
  %1216 = fadd fast float %1213, 5.000000e-01
  %1217 = fadd fast float %1214, 5.000000e-01
  %1218 = call float @dx.op.unary.f32(i32 24, float %1066)  ; Sqrt(value)
  %1219 = call float @dx.op.unary.f32(i32 24, float %1067)  ; Sqrt(value)
  %1220 = call float @dx.op.unary.f32(i32 24, float %1068)  ; Sqrt(value)
  %1221 = fmul fast float %1215, 2.000000e+00
  %1222 = fsub fast float 1.000000e+00, %1221
  %1223 = fmul fast float %1222, %1218
  %1224 = fadd fast float %1223, %1221
  %1225 = fmul fast float %1224, %1218
  %1226 = fmul fast float %1216, 2.000000e+00
  %1227 = fsub fast float 1.000000e+00, %1226
  %1228 = fmul fast float %1227, %1219
  %1229 = fadd fast float %1228, %1226
  %1230 = fmul fast float %1229, %1219
  %1231 = fmul fast float %1217, 2.000000e+00
  %1232 = fsub fast float 1.000000e+00, %1231
  %1233 = fmul fast float %1232, %1220
  %1234 = fadd fast float %1233, %1231
  %1235 = fmul fast float %1234, %1220
  %1236 = fmul fast float %1225, %1225
  %1237 = fmul fast float %1230, %1230
  %1238 = fmul fast float %1235, %1235
  br label %1255

; <label>:1239                                    ; preds = %1202
  %1240 = fmul fast float %287, %287
  %1241 = fmul fast float %291, %291
  %1242 = fmul fast float %295, %295
  %1243 = fadd fast float %1240, -1.000000e+00
  %1244 = fadd fast float %1241, -1.000000e+00
  %1245 = fadd fast float %1242, -1.000000e+00
  %1246 = fmul fast float %1091, %1243
  %1247 = fmul fast float %1091, %1244
  %1248 = fmul fast float %1091, %1245
  %1249 = fadd fast float %1246, 1.000000e+00
  %1250 = fadd fast float %1247, 1.000000e+00
  %1251 = fadd fast float %1248, 1.000000e+00
  %1252 = fmul fast float %1249, %1066
  %1253 = fmul fast float %1250, %1067
  %1254 = fmul fast float %1251, %1068
  br label %1255

; <label>:1255                                    ; preds = %1239, %1205, %1096, %1051
  %1256 = phi float [ %1201, %1096 ], [ %1077, %1205 ], [ %1077, %1239 ], [ 0x3FA23C0BE0000000, %1051 ]
  %1257 = phi float [ %1193, %1096 ], [ %1236, %1205 ], [ %1252, %1239 ], [ 1.000000e+00, %1051 ]
  %1258 = phi float [ %1194, %1096 ], [ %1237, %1205 ], [ %1253, %1239 ], [ 1.000000e+00, %1051 ]
  %1259 = phi float [ %1195, %1096 ], [ %1238, %1205 ], [ %1254, %1239 ], [ 1.000000e+00, %1051 ]
  %1260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.i32 %1260, 1
  %1262 = and i32 %1261, 1
  %1263 = icmp ne i32 %1262, 0
  %1264 = add i32 %55, 356
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 32
  %1268 = icmp ne i32 %1267, 0
  %1269 = and i1 %1263, %1268
  %1270 = select i1 %1269, float 1.000000e+00, float %1257
  %1271 = select i1 %1269, float 0x3FD3333340000000, float %1258
  %1272 = select i1 %1269, float 0x3FD3333340000000, float %1259
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 32
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1349, label %1277

; <label>:1277                                    ; preds = %1255
  %1278 = add i32 %55, 92
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %55, 376
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %1283, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1285, %dx.types.Handle %102, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = extractvalue %dx.types.ResRet.f32 %1286, 3
  %1291 = and i32 %1280, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = lshr i32 %1280, 8
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = lshr i32 %1280, 16
  %1297 = and i32 %1296, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101000000000
  %1300 = fmul fast float %1287, %1292
  %1301 = fadd fast float %1300, %1295
  %1302 = fmul fast float %1301, 0x3F70101000000000
  %1303 = fadd fast float %1288, -5.000000e-01
  %1304 = fadd fast float %1290, -5.000000e-01
  %1305 = fmul fast float %1303, %1299
  %1306 = fmul fast float %1304, %1299
  %1307 = fadd fast float %1305, 5.000000e-01
  %1308 = fadd fast float %1306, 5.000000e-01
  %1309 = fmul fast float %1307, 2.000000e+00
  %1310 = fadd fast float %1309, -1.000000e+00
  %1311 = fmul fast float %1308, 2.000000e+00
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fadd fast float %1310, %1312
  %1314 = fmul fast float %1313, 5.000000e-01
  %1315 = fsub fast float %1310, %1312
  %1316 = fmul fast float %1315, 5.000000e-01
  %1317 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1318 = fsub fast float 1.000000e+00, %1317
  %1319 = call float @dx.op.unary.f32(i32 6, float %1316)  ; FAbs(value)
  %1320 = fsub fast float %1318, %1319
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1314, float %1316, float %1320, float %1314, float %1316, float %1320)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = call float @dx.op.unary.f32(i32 25, float %1321)  ; Rsqrt(value)
  %1323 = fmul fast float %1314, %1322
  %1324 = fmul fast float %1316, %1322
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 67108864
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1345, label %1329

; <label>:1329                                    ; preds = %1277
  %1330 = add i32 %55, 280
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %1332, 65535
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 65535
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = lshr i32 %1332, 16
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = fsub fast float %1302, %1340
  %1342 = fmul fast float %1341, %1334
  %1343 = fadd fast float %1342, %1338
  %1344 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  br label %1345

; <label>:1345                                    ; preds = %1329, %1277
  %1346 = phi float [ %1344, %1329 ], [ %1302, %1277 ]
  %1347 = call float @dx.op.dot2.f32(i32 54, float %1323, float %1324, float %883, float %884)  ; Dot2(ax,ay,bx,by)
  %1348 = call float @dx.op.dot2.f32(i32 54, float %1323, float %1324, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  br label %1349

; <label>:1349                                    ; preds = %1345, %1255
  %1350 = phi float [ %1346, %1345 ], [ 0x3FD6666660000000, %1255 ]
  %1351 = phi float [ %1347, %1345 ], [ 0.000000e+00, %1255 ]
  %1352 = phi float [ %1348, %1345 ], [ 0.000000e+00, %1255 ]
  %1353 = phi float [ %1289, %1345 ], [ 1.000000e+00, %1255 ]
  %1354 = add i32 %55, 160
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 22
  %1358 = shl nuw nsw i32 %1357, 5
  %1359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1358)  ; LegacyF16ToF32(value)
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 64
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1397, label %1364

; <label>:1364                                    ; preds = %1349
  %1365 = add i32 %55, 392
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 131072
  %1373 = icmp eq i32 %1372, 0
  %1374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %102, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = fmul fast float %1375, %275
  %1379 = fmul fast float %1376, %278
  %1380 = fmul fast float %1377, %281
  br i1 %1373, label %1387, label %1381

; <label>:1381                                    ; preds = %1364
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = fmul fast float %1383, %1378
  %1385 = fmul fast float %1383, %1379
  %1386 = fmul fast float %1383, %1380
  br label %1387

; <label>:1387                                    ; preds = %1381, %1364
  %1388 = phi float [ %1384, %1381 ], [ %1378, %1364 ]
  %1389 = phi float [ %1385, %1381 ], [ %1379, %1364 ]
  %1390 = phi float [ %1386, %1381 ], [ %1380, %1364 ]
  %1391 = fmul fast float %1388, %1359
  %1392 = select i1 %252, float %1391, float %1388
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1392, float %1389, float %1390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = select i1 %252, float 0.000000e+00, float %1388
  %1395 = select i1 %252, float %1393, float %1389
  %1396 = select i1 %252, float 0.000000e+00, float %1390
  br label %1397

; <label>:1397                                    ; preds = %1387, %1349
  %1398 = phi float [ %1394, %1387 ], [ 0.000000e+00, %1349 ]
  %1399 = phi float [ %1395, %1387 ], [ 0.000000e+00, %1349 ]
  %1400 = phi float [ %1396, %1387 ], [ 0.000000e+00, %1349 ]
  %1401 = add i32 %55, 96
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = lshr i32 %1403, 8
  %1407 = and i32 %1406, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1270, float %1271, float %1272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = fmul fast float %1408, %1409
  %1411 = fadd fast float %1410, %1405
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  br label %1414

; <label>:1414                                    ; preds = %1397, %865
  %1415 = phi float [ 0.000000e+00, %865 ], [ %1351, %1397 ]
  %1416 = phi float [ 0.000000e+00, %865 ], [ %1352, %1397 ]
  %1417 = phi float [ 0.000000e+00, %865 ], [ %1270, %1397 ]
  %1418 = phi float [ 0.000000e+00, %865 ], [ %1271, %1397 ]
  %1419 = phi float [ 0.000000e+00, %865 ], [ %1272, %1397 ]
  %1420 = phi float [ 0.000000e+00, %865 ], [ %1398, %1397 ]
  %1421 = phi float [ 0.000000e+00, %865 ], [ %1399, %1397 ]
  %1422 = phi float [ 0.000000e+00, %865 ], [ %1400, %1397 ]
  %1423 = phi float [ 0.000000e+00, %865 ], [ %1256, %1397 ]
  %1424 = phi float [ 0.000000e+00, %865 ], [ %1052, %1397 ]
  %1425 = phi float [ 0.000000e+00, %865 ], [ %1350, %1397 ]
  %1426 = phi float [ 0.000000e+00, %865 ], [ %1353, %1397 ]
  %1427 = phi float [ 0.000000e+00, %865 ], [ %1413, %1397 ]
  br i1 %638, label %2152, label %1428

; <label>:1428                                    ; preds = %1414
  %1429 = icmp ult i32 %871, 2
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %55, 44
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = or i32 %1434, %1431
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %2152, label %1437

; <label>:1437                                    ; preds = %1428
  %1438 = and i32 %1431, 262144
  %1439 = icmp ne i32 %1438, 0
  %1440 = select i1 %1439, float %61, float 1.000000e+00
  %1441 = select i1 %1439, float %62, float 0.000000e+00
  %1442 = select i1 %1439, float %63, float 0.000000e+00
  %1443 = select i1 %1439, float %64, float 1.000000e+00
  %1444 = select i1 %1439, float %65, float %88
  %1445 = select i1 %1439, float %66, float %89
  %1446 = add i32 %55, 300
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = lshr i32 %1448, 16
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = fmul fast float %1450, 0x3F50624DE0000000
  %1452 = add i32 %55, 104
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = lshr i32 %1454, 16
  %1456 = and i32 %1455, 255
  %1457 = lshr i32 %1454, 24
  %1458 = add i32 %55, 308
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 65535
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = lshr i32 %1460, 16
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = add i32 %55, 48
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = lshr i32 %1467, 22
  %1469 = shl nuw nsw i32 %1468, 5
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = shl i32 %1467, 4
  %1472 = and i32 %1471, 32752
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = lshr i32 %1467, 7
  %1475 = and i32 %1474, 32752
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1479 = fmul fast float %1478, 1.000000e+03
  %1480 = fmul fast float %1479, %417
  %1481 = call float @dx.op.unary.f32(i32 22, float %1480)  ; Frc(value)
  %1482 = fadd fast float %1481, %405
  %1483 = fmul fast float %1479, %419
  %1484 = call float @dx.op.unary.f32(i32 22, float %1483)  ; Frc(value)
  %1485 = fadd fast float %1484, %406
  %1486 = fmul fast float %1451, %1479
  %1487 = call float @dx.op.unary.f32(i32 22, float %1486)  ; Frc(value)
  %1488 = fmul fast float %1487, 0x401921FB60000000
  %1489 = fadd fast float %1488, %1470
  %1490 = call float @dx.op.unary.f32(i32 13, float %1489)  ; Sin(value)
  %1491 = call float @dx.op.unary.f32(i32 12, float %1489)  ; Cos(value)
  %1492 = fsub fast float -0.000000e+00, %1490
  %1493 = fadd fast float %1444, -5.000000e-01
  %1494 = fadd fast float %1445, -5.000000e-01
  %1495 = fmul fast float %1462, %1493
  %1496 = fmul fast float %1464, %1494
  %1497 = fadd fast float %1495, 5.000000e-01
  %1498 = fadd fast float %1496, 5.000000e-01
  %1499 = fmul fast float %1473, %1497
  %1500 = fmul fast float %1476, %1498
  %1501 = fmul fast float %1491, %1499
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1492, float %1500, float %1501)  ; FMad(a,b,c)
  %1503 = fmul fast float %1490, %1499
  %1504 = call float @dx.op.tertiary.f32(i32 46, float %1491, float %1500, float %1503)  ; FMad(a,b,c)
  %1505 = fadd fast float %1482, %1502
  %1506 = fadd fast float %1485, %1504
  %1507 = icmp ugt i32 %1456, 1
  %1508 = icmp ugt i32 %1454, 33554431
  %1509 = or i1 %1508, %1507
  br i1 %1509, label %1510, label %1535

; <label>:1510                                    ; preds = %1437
  %1511 = add i32 %55, 244
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = lshr i32 %1513, 16
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = fmul fast float %1478, %1515
  %1517 = call float @dx.op.unary.f32(i32 22, float %1516)  ; Frc(value)
  %1518 = mul nuw nsw i32 %1456, %1457
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1517, %1519
  %1521 = call float @dx.op.unary.f32(i32 27, float %1520)  ; Round_ni(value)
  %1522 = fptoui float %1521 to i32
  %1523 = urem i32 %1522, %1456
  %1524 = udiv i32 %1522, %1457
  %1525 = call float @dx.op.unary.f32(i32 22, float %1505)  ; Frc(value)
  %1526 = call float @dx.op.unary.f32(i32 22, float %1506)  ; Frc(value)
  %1527 = uitofp i32 %1523 to float
  %1528 = uitofp i32 %1524 to float
  %1529 = fadd fast float %1525, %1527
  %1530 = fadd fast float %1526, %1528
  %1531 = uitofp i32 %1456 to float
  %1532 = uitofp i32 %1457 to float
  %1533 = fdiv fast float %1529, %1531
  %1534 = fdiv fast float %1530, %1532
  br label %1535

; <label>:1535                                    ; preds = %1510, %1437
  %1536 = phi float [ %1533, %1510 ], [ %1505, %1437 ]
  %1537 = phi float [ %1534, %1510 ], [ %1506, %1437 ]
  %1538 = and i32 %1431, 256
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1585, label %1540

; <label>:1540                                    ; preds = %1535
  %1541 = add i32 %55, 428
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %1543, 0
  %1545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1545, %dx.types.Handle %103, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = shl i32 %1549, 4
  %1551 = and i32 %1550, 32752
  %1552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1551)  ; LegacyF16ToF32(value)
  %1553 = lshr i32 %1549, 7
  %1554 = and i32 %1553, 32752
  %1555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1554)  ; LegacyF16ToF32(value)
  %1556 = fsub fast float 1.000000e+00, %848
  %1557 = call float @dx.op.binary.f32(i32 35, float %1556, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1558 = bitcast float %848 to i32
  %1559 = sitofp i32 %1558 to float
  %1560 = fadd fast float %1559, 0xC1CFBF8940000000
  %1561 = fmul fast float %1555, %1560
  %1562 = fadd fast float %1561, 0x41CFBF8940000000
  %1563 = fptosi float %1562 to i32
  %1564 = bitcast i32 %1563 to float
  %1565 = bitcast float %1557 to i32
  %1566 = sitofp i32 %1565 to float
  %1567 = fadd fast float %1566, 0xC1CFBF8940000000
  %1568 = fmul fast float %1567, %1555
  %1569 = fadd fast float %1568, 0x41CFBF8940000000
  %1570 = fptosi float %1569 to i32
  %1571 = bitcast i32 %1570 to float
  %1572 = fmul fast float %1564, %1552
  %1573 = fmul fast float %1571, %1552
  %1574 = fsub fast float %1557, %1572
  %1575 = fadd fast float %1573, %1557
  %1576 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1577 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1578 = fsub fast float %1547, %1576
  %1579 = fsub fast float %1577, %1576
  %1580 = bitcast float %1579 to i32
  %1581 = sub nsw i32 2129859010, %1580
  %1582 = bitcast i32 %1581 to float
  %1583 = fmul fast float %1582, %1578
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  br label %1585

; <label>:1585                                    ; preds = %1540, %1535
  %1586 = phi float [ %1584, %1540 ], [ %848, %1535 ]
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 128
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1607, label %1591

; <label>:1591                                    ; preds = %1585
  %1592 = add i32 %55, 412
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = add i32 %1594, 0
  %1596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1596, %dx.types.Handle %103, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 524288
  %1602 = icmp ne i32 %1601, 0
  %1603 = fcmp fast ogt float %1598, 0x3FE0101020000000
  %1604 = select i1 %1603, float 1.000000e+00, float 0.000000e+00
  %1605 = select i1 %1602, float %1604, float %1598
  %1606 = fmul fast float %1605, %1586
  br label %1607

; <label>:1607                                    ; preds = %1591, %1585
  %1608 = phi float [ %1606, %1591 ], [ %1586, %1585 ]
  %1609 = fcmp fast ult float %1608, 0x3F70101020000000
  br i1 %1609, label %2152, label %1610

; <label>:1610                                    ; preds = %1607
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 16
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1813, label %1615

; <label>:1615                                    ; preds = %1610
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = add i32 %55, 364
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = add i32 %1620, 0
  %1622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1622, %dx.types.Handle %102, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1626 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1627 = extractvalue %dx.types.ResRet.f32 %1623, 3
  %1628 = and i32 %1617, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = lshr i32 %1617, 8
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1627, %1629
  %1634 = fadd fast float %1633, %1632
  %1635 = fmul fast float %1634, 0x3F70101000000000
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 512
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1648, label %1640

; <label>:1640                                    ; preds = %1615
  %1641 = add i32 %55, 444
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = add i32 %1643, 0
  %1645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1645, %dx.types.Handle %103, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1647 = extractvalue %dx.types.ResRet.f32 %1646, 0
  br label %1648

; <label>:1648                                    ; preds = %1640, %1615
  %1649 = phi float [ %1647, %1640 ], [ 1.000000e+00, %1615 ]
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 33554432
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1760, label %1654

; <label>:1654                                    ; preds = %1648
  %1655 = add i32 %55, 240
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 65535
  %1659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1658)  ; LegacyF16ToF32(value)
  %1660 = lshr i32 %1657, 16
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = add i32 %55, 244
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 65535
  %1666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1665)  ; LegacyF16ToF32(value)
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = lshr i32 %1668, 24
  %1670 = uitofp i32 %1669 to float
  %1671 = fmul fast float %1670, 0x3F70101020000000
  %1672 = and i32 %1668, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F70101020000000
  %1675 = lshr i32 %1668, 8
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101020000000
  %1679 = lshr i32 %1668, 16
  %1680 = and i32 %1679, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1681, 0x3F70101020000000
  %1683 = add i32 %55, 236
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = lshr i32 %1685, 24
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101020000000
  %1689 = and i32 %1685, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = fmul fast float %1690, 0x3F70101020000000
  %1692 = lshr i32 %1685, 8
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = fmul fast float %1694, 0x3F70101020000000
  %1696 = lshr i32 %1685, 16
  %1697 = and i32 %1696, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = fmul fast float %1698, 0x3F70101020000000
  %1700 = bitcast float %1624 to i32
  %1701 = ashr i32 %1700, 1
  %1702 = sub nsw i32 1597463174, %1701
  %1703 = bitcast i32 %1702 to float
  %1704 = fmul fast float %1624, 5.000000e-01
  %1705 = fmul fast float %1703, %1703
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float 1.500000e+00, %1706
  %1708 = fmul fast float %1703, %1624
  %1709 = fmul fast float %1708, %1707
  %1710 = bitcast float %1625 to i32
  %1711 = ashr i32 %1710, 1
  %1712 = sub nsw i32 1597463174, %1711
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1625, 5.000000e-01
  %1715 = fmul fast float %1713, %1713
  %1716 = fmul fast float %1715, %1714
  %1717 = fsub fast float 1.500000e+00, %1716
  %1718 = fmul fast float %1713, %1625
  %1719 = fmul fast float %1718, %1717
  %1720 = bitcast float %1626 to i32
  %1721 = ashr i32 %1720, 1
  %1722 = sub nsw i32 1597463174, %1721
  %1723 = bitcast i32 %1722 to float
  %1724 = fmul fast float %1626, 5.000000e-01
  %1725 = fmul fast float %1723, %1723
  %1726 = fmul fast float %1725, %1724
  %1727 = fsub fast float 1.500000e+00, %1726
  %1728 = fmul fast float %1723, %1626
  %1729 = fmul fast float %1728, %1727
  %1730 = fsub fast float %1709, %1691
  %1731 = fsub fast float %1719, %1695
  %1732 = fsub fast float %1729, %1699
  %1733 = fmul fast float %1730, %1659
  %1734 = fmul fast float %1731, %1661
  %1735 = fmul fast float %1732, %1666
  %1736 = fadd fast float %1733, %1674
  %1737 = fadd fast float %1734, %1678
  %1738 = fadd fast float %1735, %1682
  %1739 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1740 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1742 = fmul fast float %1739, %1739
  %1743 = fmul fast float %1740, %1740
  %1744 = fmul fast float %1741, %1741
  %1745 = fsub fast float %1742, %1624
  %1746 = fsub fast float %1743, %1625
  %1747 = fsub fast float %1744, %1626
  %1748 = fmul fast float %1745, %1649
  %1749 = fmul fast float %1746, %1649
  %1750 = fmul fast float %1747, %1649
  %1751 = fadd fast float %1748, %1624
  %1752 = fadd fast float %1749, %1625
  %1753 = fadd fast float %1750, %1626
  %1754 = fadd fast float %1671, %1635
  %1755 = fsub fast float %1754, %1688
  %1756 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1757 = fsub fast float %1756, %1635
  %1758 = fmul fast float %1757, %1649
  %1759 = fadd fast float %1758, %1635
  br label %1813

; <label>:1760                                    ; preds = %1648
  %1761 = and i32 %1651, 134217728
  %1762 = icmp eq i32 %1761, 0
  br i1 %1762, label %1797, label %1763

; <label>:1763                                    ; preds = %1760
  %1764 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %1765 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %1766 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %1767 = fadd fast float %1764, -5.000000e-01
  %1768 = fadd fast float %1765, -5.000000e-01
  %1769 = fadd fast float %1766, -5.000000e-01
  %1770 = fmul fast float %1767, %1649
  %1771 = fmul fast float %1768, %1649
  %1772 = fmul fast float %1769, %1649
  %1773 = fadd fast float %1770, 5.000000e-01
  %1774 = fadd fast float %1771, 5.000000e-01
  %1775 = fadd fast float %1772, 5.000000e-01
  %1776 = call float @dx.op.unary.f32(i32 24, float %1624)  ; Sqrt(value)
  %1777 = call float @dx.op.unary.f32(i32 24, float %1625)  ; Sqrt(value)
  %1778 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1779 = fmul fast float %1773, 2.000000e+00
  %1780 = fsub fast float 1.000000e+00, %1779
  %1781 = fmul fast float %1780, %1776
  %1782 = fadd fast float %1781, %1779
  %1783 = fmul fast float %1782, %1776
  %1784 = fmul fast float %1774, 2.000000e+00
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = fmul fast float %1785, %1777
  %1787 = fadd fast float %1786, %1784
  %1788 = fmul fast float %1787, %1777
  %1789 = fmul fast float %1775, 2.000000e+00
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = fmul fast float %1790, %1778
  %1792 = fadd fast float %1791, %1789
  %1793 = fmul fast float %1792, %1778
  %1794 = fmul fast float %1783, %1783
  %1795 = fmul fast float %1788, %1788
  %1796 = fmul fast float %1793, %1793
  br label %1813

; <label>:1797                                    ; preds = %1760
  %1798 = fmul fast float %393, %393
  %1799 = fmul fast float %394, %394
  %1800 = fmul fast float %395, %395
  %1801 = fadd fast float %1798, -1.000000e+00
  %1802 = fadd fast float %1799, -1.000000e+00
  %1803 = fadd fast float %1800, -1.000000e+00
  %1804 = fmul fast float %1649, %1801
  %1805 = fmul fast float %1649, %1802
  %1806 = fmul fast float %1649, %1803
  %1807 = fadd fast float %1804, 1.000000e+00
  %1808 = fadd fast float %1805, 1.000000e+00
  %1809 = fadd fast float %1806, 1.000000e+00
  %1810 = fmul fast float %1807, %1624
  %1811 = fmul fast float %1808, %1625
  %1812 = fmul fast float %1809, %1626
  br label %1813

; <label>:1813                                    ; preds = %1797, %1763, %1654, %1610
  %1814 = phi float [ %1759, %1654 ], [ %1635, %1763 ], [ %1635, %1797 ], [ 0x3FA23C0BE0000000, %1610 ]
  %1815 = phi float [ %1751, %1654 ], [ %1794, %1763 ], [ %1810, %1797 ], [ 1.000000e+00, %1610 ]
  %1816 = phi float [ %1752, %1654 ], [ %1795, %1763 ], [ %1811, %1797 ], [ 1.000000e+00, %1610 ]
  %1817 = phi float [ %1753, %1654 ], [ %1796, %1763 ], [ %1812, %1797 ], [ 1.000000e+00, %1610 ]
  %1818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.i32 %1818, 1
  %1820 = and i32 %1819, 1
  %1821 = icmp ne i32 %1820, 0
  %1822 = add i32 %55, 356
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 32
  %1826 = icmp ne i32 %1825, 0
  %1827 = and i1 %1821, %1826
  %1828 = select i1 %1827, float 1.000000e+00, float %1815
  %1829 = select i1 %1827, float 0x3FD3333340000000, float %1816
  %1830 = select i1 %1827, float 0x3FD3333340000000, float %1817
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 32
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1907, label %1835

; <label>:1835                                    ; preds = %1813
  %1836 = add i32 %55, 108
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %55, 380
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = add i32 %1841, 0
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1843, %dx.types.Handle %102, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.ResRet.f32 %1844, 3
  %1849 = and i32 %1838, 255
  %1850 = uitofp i32 %1849 to float
  %1851 = lshr i32 %1838, 8
  %1852 = and i32 %1851, 255
  %1853 = uitofp i32 %1852 to float
  %1854 = lshr i32 %1838, 16
  %1855 = and i32 %1854, 255
  %1856 = uitofp i32 %1855 to float
  %1857 = fmul fast float %1856, 0x3F70101000000000
  %1858 = fmul fast float %1845, %1850
  %1859 = fadd fast float %1858, %1853
  %1860 = fmul fast float %1859, 0x3F70101000000000
  %1861 = fadd fast float %1846, -5.000000e-01
  %1862 = fadd fast float %1848, -5.000000e-01
  %1863 = fmul fast float %1861, %1857
  %1864 = fmul fast float %1862, %1857
  %1865 = fadd fast float %1863, 5.000000e-01
  %1866 = fadd fast float %1864, 5.000000e-01
  %1867 = fmul fast float %1865, 2.000000e+00
  %1868 = fadd fast float %1867, -1.000000e+00
  %1869 = fmul fast float %1866, 2.000000e+00
  %1870 = fadd fast float %1869, -1.000000e+00
  %1871 = fadd fast float %1868, %1870
  %1872 = fmul fast float %1871, 5.000000e-01
  %1873 = fsub fast float %1868, %1870
  %1874 = fmul fast float %1873, 5.000000e-01
  %1875 = call float @dx.op.unary.f32(i32 6, float %1872)  ; FAbs(value)
  %1876 = fsub fast float 1.000000e+00, %1875
  %1877 = call float @dx.op.unary.f32(i32 6, float %1874)  ; FAbs(value)
  %1878 = fsub fast float %1876, %1877
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1872, float %1874, float %1878, float %1872, float %1874, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = call float @dx.op.unary.f32(i32 25, float %1879)  ; Rsqrt(value)
  %1881 = fmul fast float %1872, %1880
  %1882 = fmul fast float %1874, %1880
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = and i32 %1884, 67108864
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1903, label %1887

; <label>:1887                                    ; preds = %1835
  %1888 = add i32 %55, 296
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 65535
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = and i32 %1894, 65535
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = lshr i32 %1890, 16
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = fsub fast float %1860, %1898
  %1900 = fmul fast float %1899, %1892
  %1901 = fadd fast float %1900, %1896
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  br label %1903

; <label>:1903                                    ; preds = %1887, %1835
  %1904 = phi float [ %1902, %1887 ], [ %1860, %1835 ]
  %1905 = call float @dx.op.dot2.f32(i32 54, float %1881, float %1882, float %1440, float %1441)  ; Dot2(ax,ay,bx,by)
  %1906 = call float @dx.op.dot2.f32(i32 54, float %1881, float %1882, float %1442, float %1443)  ; Dot2(ax,ay,bx,by)
  br label %1907

; <label>:1907                                    ; preds = %1903, %1813
  %1908 = phi float [ %1904, %1903 ], [ 0x3FD6666660000000, %1813 ]
  %1909 = phi float [ %1905, %1903 ], [ 0.000000e+00, %1813 ]
  %1910 = phi float [ %1906, %1903 ], [ 0.000000e+00, %1813 ]
  %1911 = phi float [ %1847, %1903 ], [ 1.000000e+00, %1813 ]
  %1912 = add i32 %55, 176
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 22
  %1916 = shl nuw nsw i32 %1915, 5
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 64
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1955, label %1922

; <label>:1922                                    ; preds = %1907
  %1923 = add i32 %55, 396
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = add i32 %1925, 0
  %1927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = and i32 %1929, 131072
  %1931 = icmp eq i32 %1930, 0
  %1932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1927, %dx.types.Handle %102, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = fmul fast float %376, %1933
  %1937 = fmul fast float %377, %1934
  %1938 = fmul fast float %378, %1935
  br i1 %1931, label %1945, label %1939

; <label>:1939                                    ; preds = %1922
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = fmul fast float %1941, %1936
  %1943 = fmul fast float %1941, %1937
  %1944 = fmul fast float %1941, %1938
  br label %1945

; <label>:1945                                    ; preds = %1939, %1922
  %1946 = phi float [ %1942, %1939 ], [ %1936, %1922 ]
  %1947 = phi float [ %1943, %1939 ], [ %1937, %1922 ]
  %1948 = phi float [ %1944, %1939 ], [ %1938, %1922 ]
  %1949 = fmul fast float %1946, %1917
  %1950 = select i1 %252, float %1949, float %1946
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1950, float %1947, float %1948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = select i1 %252, float 0.000000e+00, float %1946
  %1953 = select i1 %252, float %1951, float %1947
  %1954 = select i1 %252, float 0.000000e+00, float %1948
  br label %1955

; <label>:1955                                    ; preds = %1945, %1907
  %1956 = phi float [ %1952, %1945 ], [ 0.000000e+00, %1907 ]
  %1957 = phi float [ %1953, %1945 ], [ 0.000000e+00, %1907 ]
  %1958 = phi float [ %1954, %1945 ], [ 0.000000e+00, %1907 ]
  %1959 = add i32 %55, 112
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 255
  %1963 = uitofp i32 %1962 to float
  %1964 = lshr i32 %1961, 8
  %1965 = and i32 %1964, 255
  %1966 = uitofp i32 %1965 to float
  %1967 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1829, float %1830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1968 = fmul fast float %1966, %1967
  %1969 = fadd fast float %1968, %1963
  %1970 = fmul fast float %1969, 0x3F70101020000000
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  br i1 %1429, label %1972, label %1980

; <label>:1972                                    ; preds = %1955
  %1973 = fsub fast float 1.000000e+00, %1608
  %1974 = fmul fast float %1973, %1417
  %1975 = fmul fast float %1973, %1418
  %1976 = fmul fast float %1973, %1419
  %1977 = fmul fast float %1973, %1420
  %1978 = fmul fast float %1973, %1421
  %1979 = fmul fast float %1973, %1422
  br label %1980

; <label>:1980                                    ; preds = %1972, %1955
  %1981 = phi float [ %1974, %1972 ], [ %1417, %1955 ]
  %1982 = phi float [ %1975, %1972 ], [ %1418, %1955 ]
  %1983 = phi float [ %1976, %1972 ], [ %1419, %1955 ]
  %1984 = phi float [ %1977, %1972 ], [ %1420, %1955 ]
  %1985 = phi float [ %1978, %1972 ], [ %1421, %1955 ]
  %1986 = phi float [ %1979, %1972 ], [ %1422, %1955 ]
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 3
  %1990 = icmp eq i32 %1989, 3
  br i1 %1990, label %2069, label %1991

; <label>:1991                                    ; preds = %1980
  %1992 = and i32 %1988, 16
  %1993 = icmp ne i32 %1992, 0
  %1994 = select i1 %1993, float %1608, float 0.000000e+00
  %1995 = icmp eq i32 %1989, 0
  br i1 %1995, label %1996, label %2024

; <label>:1996                                    ; preds = %1991
  %1997 = and i32 %1988, 64
  %1998 = icmp ne i32 %1997, 0
  %1999 = select i1 %1998, float %1608, float 0.000000e+00
  %2000 = fsub fast float %1828, %1981
  %2001 = fsub fast float %1829, %1982
  %2002 = fsub fast float %1830, %1983
  %2003 = fmul fast float %1994, %2000
  %2004 = fmul fast float %1994, %2001
  %2005 = fmul fast float %1994, %2002
  %2006 = fadd fast float %2003, %1981
  %2007 = fadd fast float %2004, %1982
  %2008 = fadd fast float %2005, %1983
  %2009 = fsub fast float %1814, %1423
  %2010 = fmul fast float %1994, %2009
  %2011 = fadd fast float %2010, %1423
  %2012 = fsub fast float %1956, %1984
  %2013 = fsub fast float %1957, %1985
  %2014 = fsub fast float %1958, %1986
  %2015 = fmul fast float %1999, %2012
  %2016 = fmul fast float %1999, %2013
  %2017 = fmul fast float %1999, %2014
  %2018 = fadd fast float %2015, %1984
  %2019 = fadd fast float %2016, %1985
  %2020 = fadd fast float %2017, %1986
  %2021 = fsub fast float %1971, %1427
  %2022 = fmul fast float %1994, %2021
  %2023 = fadd fast float %2022, %1427
  br label %2069

; <label>:2024                                    ; preds = %1991
  %2025 = icmp eq i32 %1989, 1
  br i1 %2025, label %2026, label %2039

; <label>:2026                                    ; preds = %2024
  %2027 = fadd fast float %1828, -1.000000e+00
  %2028 = fadd fast float %1829, -1.000000e+00
  %2029 = fadd fast float %1830, -1.000000e+00
  %2030 = fmul fast float %1994, %2027
  %2031 = fmul fast float %1994, %2028
  %2032 = fmul fast float %1994, %2029
  %2033 = fadd fast float %2030, 1.000000e+00
  %2034 = fadd fast float %2031, 1.000000e+00
  %2035 = fadd fast float %2032, 1.000000e+00
  %2036 = fmul fast float %2033, %1981
  %2037 = fmul fast float %2034, %1982
  %2038 = fmul fast float %2035, %1983
  br label %2069

; <label>:2039                                    ; preds = %2024
  %2040 = icmp eq i32 %1989, 2
  br i1 %2040, label %2041, label %2069

; <label>:2041                                    ; preds = %2039
  %2042 = call float @dx.op.unary.f32(i32 24, float %1828)  ; Sqrt(value)
  %2043 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %2044 = call float @dx.op.unary.f32(i32 24, float %1830)  ; Sqrt(value)
  %2045 = fadd fast float %2042, -5.000000e-01
  %2046 = fadd fast float %2043, -5.000000e-01
  %2047 = fadd fast float %2044, -5.000000e-01
  %2048 = fmul fast float %2045, %1994
  %2049 = fmul fast float %2046, %1994
  %2050 = fmul fast float %2047, %1994
  %2051 = fadd fast float %2048, 5.000000e-01
  %2052 = fadd fast float %2049, 5.000000e-01
  %2053 = fadd fast float %2050, 5.000000e-01
  %2054 = fmul fast float %2051, 2.000000e+00
  %2055 = fsub fast float 1.000000e+00, %2054
  %2056 = fmul fast float %2055, %1981
  %2057 = fadd fast float %2056, %2054
  %2058 = fmul fast float %2057, %1981
  %2059 = fmul fast float %2052, 2.000000e+00
  %2060 = fsub fast float 1.000000e+00, %2059
  %2061 = fmul fast float %2060, %1982
  %2062 = fadd fast float %2061, %2059
  %2063 = fmul fast float %2062, %1982
  %2064 = fmul fast float %2053, 2.000000e+00
  %2065 = fsub fast float 1.000000e+00, %2064
  %2066 = fmul fast float %2065, %1983
  %2067 = fadd fast float %2066, %2064
  %2068 = fmul fast float %2067, %1983
  br label %2069

; <label>:2069                                    ; preds = %2041, %2039, %2026, %1996, %1980
  %2070 = phi float [ %1981, %1980 ], [ %2058, %2041 ], [ %1981, %2039 ], [ %2036, %2026 ], [ %2006, %1996 ]
  %2071 = phi float [ %1982, %1980 ], [ %2063, %2041 ], [ %1982, %2039 ], [ %2037, %2026 ], [ %2007, %1996 ]
  %2072 = phi float [ %1983, %1980 ], [ %2068, %2041 ], [ %1983, %2039 ], [ %2038, %2026 ], [ %2008, %1996 ]
  %2073 = phi float [ %1984, %1980 ], [ %1984, %2041 ], [ %1984, %2039 ], [ %1984, %2026 ], [ %2018, %1996 ]
  %2074 = phi float [ %1985, %1980 ], [ %1985, %2041 ], [ %1985, %2039 ], [ %1985, %2026 ], [ %2019, %1996 ]
  %2075 = phi float [ %1986, %1980 ], [ %1986, %2041 ], [ %1986, %2039 ], [ %1986, %2026 ], [ %2020, %1996 ]
  %2076 = phi float [ %1423, %1980 ], [ %1423, %2041 ], [ %1423, %2039 ], [ %1423, %2026 ], [ %2011, %1996 ]
  %2077 = phi float [ %1427, %1980 ], [ %1427, %2041 ], [ %1427, %2039 ], [ %1427, %2026 ], [ %2023, %1996 ]
  %2078 = and i32 %1988, 12
  %2079 = icmp eq i32 %2078, 12
  br i1 %2079, label %2152, label %2080

; <label>:2080                                    ; preds = %2069
  %2081 = and i32 %1988, 2097184
  %2082 = icmp eq i32 %2081, 2097184
  %2083 = select i1 %2082, float %1608, float 0.000000e+00
  %2084 = and i32 %1988, 4194336
  %2085 = icmp eq i32 %2084, 4194336
  %2086 = select i1 %2085, float %1608, float 0.000000e+00
  %2087 = and i32 %1988, 8388640
  %2088 = icmp eq i32 %2087, 8388640
  %2089 = select i1 %2088, float %1608, float 0.000000e+00
  %2090 = icmp eq i32 %2078, 0
  br i1 %2090, label %2091, label %2104

; <label>:2091                                    ; preds = %2080
  %2092 = fsub fast float %1909, %1415
  %2093 = fsub fast float %1910, %1416
  %2094 = fmul fast float %2083, %2092
  %2095 = fmul fast float %2083, %2093
  %2096 = fadd fast float %2094, %1415
  %2097 = fadd fast float %2095, %1416
  %2098 = fsub fast float %1911, %1426
  %2099 = fmul fast float %2086, %2098
  %2100 = fadd fast float %2099, %1426
  %2101 = fsub fast float %1908, %1425
  %2102 = fmul fast float %2089, %2101
  %2103 = fadd fast float %2102, %1425
  br label %2152

; <label>:2104                                    ; preds = %2080
  %2105 = icmp eq i32 %2078, 4
  br i1 %2105, label %2106, label %2138

; <label>:2106                                    ; preds = %2104
  %2107 = fmul fast float %2083, %1909
  %2108 = fmul fast float %2083, %1910
  %2109 = fadd fast float %2107, %1415
  %2110 = fadd fast float %2108, %1416
  %2111 = call float @dx.op.binary.f32(i32 36, float %1426, float %1911)  ; FMin(a,b)
  %2112 = fsub fast float %2111, %1426
  %2113 = fmul fast float %2112, %2086
  %2114 = fadd fast float %2113, %1426
  %2115 = fadd fast float %1908, %1425
  %2116 = fmul fast float %2115, 0x3FF337FAE0000000
  %2117 = fmul fast float %1425, %1425
  %2118 = fmul fast float %1908, %1908
  %2119 = fadd fast float %2118, %2117
  %2120 = fmul fast float %2119, 0x3FE5152B00000000
  %2121 = fmul fast float %1425, 0xBFCC1F85E0000000
  %2122 = fmul fast float %2121, %1908
  %2123 = fadd fast float %2122, 0xBFE1363700000000
  %2124 = fadd fast float %2123, %2116
  %2125 = fsub fast float %2124, %2120
  %2126 = fmul fast float %2115, 0x3FBA6F0D00000000
  %2127 = fmul fast float %2119, 0x3FD0432880000000
  %2128 = fmul fast float %1425, 0xBFEF110800000000
  %2129 = fmul fast float %2128, %1908
  %2130 = fadd fast float %2129, 1.000000e+00
  %2131 = fsub fast float %2130, %2126
  %2132 = fadd fast float %2131, %2127
  %2133 = fdiv fast float %2125, %2132
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fsub fast float %2134, %1425
  %2136 = fmul fast float %2135, %2089
  %2137 = fadd fast float %2136, %1425
  br label %2152

; <label>:2138                                    ; preds = %2104
  %2139 = icmp eq i32 %2078, 8
  br i1 %2139, label %2140, label %2152

; <label>:2140                                    ; preds = %2138
  %2141 = fmul fast float %2083, %1909
  %2142 = fmul fast float %2083, %1910
  %2143 = fadd fast float %2141, %1415
  %2144 = fadd fast float %2142, %1416
  %2145 = call float @dx.op.binary.f32(i32 36, float %1426, float %1911)  ; FMin(a,b)
  %2146 = fsub fast float %2145, %1426
  %2147 = fmul fast float %2146, %2086
  %2148 = fadd fast float %2147, %1426
  %2149 = fsub fast float %1908, %1425
  %2150 = fmul fast float %2089, %2149
  %2151 = fadd fast float %2150, %1425
  br label %2152

; <label>:2152                                    ; preds = %2140, %2138, %2106, %2091, %2069, %1607, %1428, %1414
  %2153 = phi float [ %1415, %2069 ], [ %1415, %1607 ], [ %1415, %1414 ], [ %2143, %2140 ], [ %1415, %2138 ], [ %2109, %2106 ], [ %2096, %2091 ], [ %1415, %1428 ]
  %2154 = phi float [ %1416, %2069 ], [ %1416, %1607 ], [ %1416, %1414 ], [ %2144, %2140 ], [ %1416, %2138 ], [ %2110, %2106 ], [ %2097, %2091 ], [ %1416, %1428 ]
  %2155 = phi float [ %2070, %2069 ], [ %1417, %1607 ], [ %1417, %1414 ], [ %2070, %2140 ], [ %2070, %2138 ], [ %2070, %2106 ], [ %2070, %2091 ], [ %1417, %1428 ]
  %2156 = phi float [ %2071, %2069 ], [ %1418, %1607 ], [ %1418, %1414 ], [ %2071, %2140 ], [ %2071, %2138 ], [ %2071, %2106 ], [ %2071, %2091 ], [ %1418, %1428 ]
  %2157 = phi float [ %2072, %2069 ], [ %1419, %1607 ], [ %1419, %1414 ], [ %2072, %2140 ], [ %2072, %2138 ], [ %2072, %2106 ], [ %2072, %2091 ], [ %1419, %1428 ]
  %2158 = phi float [ %2073, %2069 ], [ %1420, %1607 ], [ %1420, %1414 ], [ %2073, %2140 ], [ %2073, %2138 ], [ %2073, %2106 ], [ %2073, %2091 ], [ %1420, %1428 ]
  %2159 = phi float [ %2074, %2069 ], [ %1421, %1607 ], [ %1421, %1414 ], [ %2074, %2140 ], [ %2074, %2138 ], [ %2074, %2106 ], [ %2074, %2091 ], [ %1421, %1428 ]
  %2160 = phi float [ %2075, %2069 ], [ %1422, %1607 ], [ %1422, %1414 ], [ %2075, %2140 ], [ %2075, %2138 ], [ %2075, %2106 ], [ %2075, %2091 ], [ %1422, %1428 ]
  %2161 = phi float [ %2076, %2069 ], [ %1423, %1607 ], [ %1423, %1414 ], [ %2076, %2140 ], [ %2076, %2138 ], [ %2076, %2106 ], [ %2076, %2091 ], [ %1423, %1428 ]
  %2162 = phi float [ %1425, %2069 ], [ %1425, %1607 ], [ %1425, %1414 ], [ %2151, %2140 ], [ %1425, %2138 ], [ %2137, %2106 ], [ %2103, %2091 ], [ %1425, %1428 ]
  %2163 = phi float [ %1426, %2069 ], [ %1426, %1607 ], [ %1426, %1414 ], [ %2148, %2140 ], [ %1426, %2138 ], [ %2114, %2106 ], [ %2100, %2091 ], [ %1426, %1428 ]
  %2164 = phi float [ %2077, %2069 ], [ %1427, %1607 ], [ %1427, %1414 ], [ %2077, %2140 ], [ %2077, %2138 ], [ %2077, %2106 ], [ %2077, %2091 ], [ %1427, %1428 ]
  br i1 %640, label %2889, label %2165

; <label>:2165                                    ; preds = %2152
  %2166 = icmp ult i32 %871, 3
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %55, 60
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = or i32 %2171, %2168
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2889, label %2174

; <label>:2174                                    ; preds = %2165
  %2175 = and i32 %2168, 262144
  %2176 = icmp ne i32 %2175, 0
  %2177 = select i1 %2176, float %61, float 1.000000e+00
  %2178 = select i1 %2176, float %62, float 0.000000e+00
  %2179 = select i1 %2176, float %63, float 0.000000e+00
  %2180 = select i1 %2176, float %64, float 1.000000e+00
  %2181 = select i1 %2176, float %65, float %88
  %2182 = select i1 %2176, float %66, float %89
  %2183 = add i32 %55, 316
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 16
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = fmul fast float %2187, 0x3F50624DE0000000
  %2189 = add i32 %55, 120
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 16
  %2193 = and i32 %2192, 255
  %2194 = lshr i32 %2191, 24
  %2195 = add i32 %55, 324
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 65535
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = lshr i32 %2197, 16
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = add i32 %55, 64
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = lshr i32 %2204, 22
  %2206 = shl nuw nsw i32 %2205, 5
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = shl i32 %2204, 4
  %2209 = and i32 %2208, 32752
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = lshr i32 %2204, 7
  %2212 = and i32 %2211, 32752
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2216 = fmul fast float %2215, 1.000000e+03
  %2217 = fmul fast float %2216, %524
  %2218 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2219 = fadd fast float %2218, %512
  %2220 = fmul fast float %2216, %526
  %2221 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2222 = fadd fast float %2221, %513
  %2223 = fmul fast float %2188, %2216
  %2224 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2225 = fmul fast float %2224, 0x401921FB60000000
  %2226 = fadd fast float %2225, %2207
  %2227 = call float @dx.op.unary.f32(i32 13, float %2226)  ; Sin(value)
  %2228 = call float @dx.op.unary.f32(i32 12, float %2226)  ; Cos(value)
  %2229 = fsub fast float -0.000000e+00, %2227
  %2230 = fadd fast float %2181, -5.000000e-01
  %2231 = fadd fast float %2182, -5.000000e-01
  %2232 = fmul fast float %2199, %2230
  %2233 = fmul fast float %2201, %2231
  %2234 = fadd fast float %2232, 5.000000e-01
  %2235 = fadd fast float %2233, 5.000000e-01
  %2236 = fmul fast float %2210, %2234
  %2237 = fmul fast float %2213, %2235
  %2238 = fmul fast float %2228, %2236
  %2239 = call float @dx.op.tertiary.f32(i32 46, float %2229, float %2237, float %2238)  ; FMad(a,b,c)
  %2240 = fmul fast float %2227, %2236
  %2241 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2237, float %2240)  ; FMad(a,b,c)
  %2242 = fadd fast float %2219, %2239
  %2243 = fadd fast float %2222, %2241
  %2244 = icmp ugt i32 %2193, 1
  %2245 = icmp ugt i32 %2191, 33554431
  %2246 = or i1 %2245, %2244
  br i1 %2246, label %2247, label %2272

; <label>:2247                                    ; preds = %2174
  %2248 = add i32 %55, 260
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = lshr i32 %2250, 16
  %2252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2251)  ; LegacyF16ToF32(value)
  %2253 = fmul fast float %2215, %2252
  %2254 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2255 = mul nuw nsw i32 %2193, %2194
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2254, %2256
  %2258 = call float @dx.op.unary.f32(i32 27, float %2257)  ; Round_ni(value)
  %2259 = fptoui float %2258 to i32
  %2260 = urem i32 %2259, %2193
  %2261 = udiv i32 %2259, %2194
  %2262 = call float @dx.op.unary.f32(i32 22, float %2242)  ; Frc(value)
  %2263 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2264 = uitofp i32 %2260 to float
  %2265 = uitofp i32 %2261 to float
  %2266 = fadd fast float %2262, %2264
  %2267 = fadd fast float %2263, %2265
  %2268 = uitofp i32 %2193 to float
  %2269 = uitofp i32 %2194 to float
  %2270 = fdiv fast float %2266, %2268
  %2271 = fdiv fast float %2267, %2269
  br label %2272

; <label>:2272                                    ; preds = %2247, %2174
  %2273 = phi float [ %2270, %2247 ], [ %2242, %2174 ]
  %2274 = phi float [ %2271, %2247 ], [ %2243, %2174 ]
  %2275 = and i32 %2168, 256
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2322, label %2277

; <label>:2277                                    ; preds = %2272
  %2278 = add i32 %55, 432
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = add i32 %2280, 0
  %2282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2282, %dx.types.Handle %103, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2284 = extractvalue %dx.types.ResRet.f32 %2283, 0
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = shl i32 %2286, 4
  %2288 = and i32 %2287, 32752
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = lshr i32 %2286, 7
  %2291 = and i32 %2290, 32752
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = fsub fast float 1.000000e+00, %857
  %2294 = call float @dx.op.binary.f32(i32 35, float %2293, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2295 = bitcast float %857 to i32
  %2296 = sitofp i32 %2295 to float
  %2297 = fadd fast float %2296, 0xC1CFBF8940000000
  %2298 = fmul fast float %2292, %2297
  %2299 = fadd fast float %2298, 0x41CFBF8940000000
  %2300 = fptosi float %2299 to i32
  %2301 = bitcast i32 %2300 to float
  %2302 = bitcast float %2294 to i32
  %2303 = sitofp i32 %2302 to float
  %2304 = fadd fast float %2303, 0xC1CFBF8940000000
  %2305 = fmul fast float %2304, %2292
  %2306 = fadd fast float %2305, 0x41CFBF8940000000
  %2307 = fptosi float %2306 to i32
  %2308 = bitcast i32 %2307 to float
  %2309 = fmul fast float %2301, %2289
  %2310 = fmul fast float %2308, %2289
  %2311 = fsub fast float %2294, %2309
  %2312 = fadd fast float %2310, %2294
  %2313 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2314 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2315 = fsub fast float %2284, %2313
  %2316 = fsub fast float %2314, %2313
  %2317 = bitcast float %2316 to i32
  %2318 = sub nsw i32 2129859010, %2317
  %2319 = bitcast i32 %2318 to float
  %2320 = fmul fast float %2319, %2315
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2322

; <label>:2322                                    ; preds = %2277, %2272
  %2323 = phi float [ %2321, %2277 ], [ %857, %2272 ]
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 128
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2344, label %2328

; <label>:2328                                    ; preds = %2322
  %2329 = add i32 %55, 416
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %2331, 0
  %2333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2333, %dx.types.Handle %103, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 524288
  %2339 = icmp ne i32 %2338, 0
  %2340 = fcmp fast ogt float %2335, 0x3FE0101020000000
  %2341 = select i1 %2340, float 1.000000e+00, float 0.000000e+00
  %2342 = select i1 %2339, float %2341, float %2335
  %2343 = fmul fast float %2342, %2323
  br label %2344

; <label>:2344                                    ; preds = %2328, %2322
  %2345 = phi float [ %2343, %2328 ], [ %2323, %2322 ]
  %2346 = fcmp fast ult float %2345, 0x3F70101020000000
  br i1 %2346, label %2889, label %2347

; <label>:2347                                    ; preds = %2344
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 16
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2550, label %2352

; <label>:2352                                    ; preds = %2347
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = add i32 %55, 368
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = add i32 %2357, 0
  %2359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2359, %dx.types.Handle %102, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.ResRet.f32 %2360, 3
  %2365 = and i32 %2354, 255
  %2366 = uitofp i32 %2365 to float
  %2367 = lshr i32 %2354, 8
  %2368 = and i32 %2367, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2364, %2366
  %2371 = fadd fast float %2370, %2369
  %2372 = fmul fast float %2371, 0x3F70101000000000
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 512
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2385, label %2377

; <label>:2377                                    ; preds = %2352
  %2378 = add i32 %55, 448
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = add i32 %2380, 0
  %2382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2382, %dx.types.Handle %103, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  br label %2385

; <label>:2385                                    ; preds = %2377, %2352
  %2386 = phi float [ %2384, %2377 ], [ 1.000000e+00, %2352 ]
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 33554432
  %2390 = icmp eq i32 %2389, 0
  br i1 %2390, label %2497, label %2391

; <label>:2391                                    ; preds = %2385
  %2392 = add i32 %55, 256
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 65535
  %2396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2395)  ; LegacyF16ToF32(value)
  %2397 = lshr i32 %2394, 16
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = add i32 %55, 260
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 65535
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = lshr i32 %2405, 24
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2407, 0x3F70101020000000
  %2409 = and i32 %2405, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = fmul fast float %2410, 0x3F70101020000000
  %2412 = lshr i32 %2405, 8
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = lshr i32 %2405, 16
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = add i32 %55, 252
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = lshr i32 %2422, 24
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101020000000
  %2426 = and i32 %2422, 255
  %2427 = uitofp i32 %2426 to float
  %2428 = fmul fast float %2427, 0x3F70101020000000
  %2429 = lshr i32 %2422, 8
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101020000000
  %2433 = lshr i32 %2422, 16
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101020000000
  %2437 = bitcast float %2361 to i32
  %2438 = ashr i32 %2437, 1
  %2439 = sub nsw i32 1597463174, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = fmul fast float %2361, 5.000000e-01
  %2442 = fmul fast float %2440, %2440
  %2443 = fmul fast float %2442, %2441
  %2444 = fsub fast float 1.500000e+00, %2443
  %2445 = fmul fast float %2440, %2361
  %2446 = fmul fast float %2445, %2444
  %2447 = bitcast float %2362 to i32
  %2448 = ashr i32 %2447, 1
  %2449 = sub nsw i32 1597463174, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2362, 5.000000e-01
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2452, %2451
  %2454 = fsub fast float 1.500000e+00, %2453
  %2455 = fmul fast float %2450, %2362
  %2456 = fmul fast float %2455, %2454
  %2457 = bitcast float %2363 to i32
  %2458 = ashr i32 %2457, 1
  %2459 = sub nsw i32 1597463174, %2458
  %2460 = bitcast i32 %2459 to float
  %2461 = fmul fast float %2363, 5.000000e-01
  %2462 = fmul fast float %2460, %2460
  %2463 = fmul fast float %2462, %2461
  %2464 = fsub fast float 1.500000e+00, %2463
  %2465 = fmul fast float %2460, %2363
  %2466 = fmul fast float %2465, %2464
  %2467 = fsub fast float %2446, %2428
  %2468 = fsub fast float %2456, %2432
  %2469 = fsub fast float %2466, %2436
  %2470 = fmul fast float %2467, %2396
  %2471 = fmul fast float %2468, %2398
  %2472 = fmul fast float %2469, %2403
  %2473 = fadd fast float %2470, %2411
  %2474 = fadd fast float %2471, %2415
  %2475 = fadd fast float %2472, %2419
  %2476 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2477 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2478 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2479 = fmul fast float %2476, %2476
  %2480 = fmul fast float %2477, %2477
  %2481 = fmul fast float %2478, %2478
  %2482 = fsub fast float %2479, %2361
  %2483 = fsub fast float %2480, %2362
  %2484 = fsub fast float %2481, %2363
  %2485 = fmul fast float %2482, %2386
  %2486 = fmul fast float %2483, %2386
  %2487 = fmul fast float %2484, %2386
  %2488 = fadd fast float %2485, %2361
  %2489 = fadd fast float %2486, %2362
  %2490 = fadd fast float %2487, %2363
  %2491 = fadd fast float %2408, %2372
  %2492 = fsub fast float %2491, %2425
  %2493 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2494 = fsub fast float %2493, %2372
  %2495 = fmul fast float %2494, %2386
  %2496 = fadd fast float %2495, %2372
  br label %2550

; <label>:2497                                    ; preds = %2385
  %2498 = and i32 %2388, 134217728
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2534, label %2500

; <label>:2500                                    ; preds = %2497
  %2501 = call float @dx.op.unary.f32(i32 24, float %500)  ; Sqrt(value)
  %2502 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %2504 = fadd fast float %2501, -5.000000e-01
  %2505 = fadd fast float %2502, -5.000000e-01
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fmul fast float %2504, %2386
  %2508 = fmul fast float %2505, %2386
  %2509 = fmul fast float %2506, %2386
  %2510 = fadd fast float %2507, 5.000000e-01
  %2511 = fadd fast float %2508, 5.000000e-01
  %2512 = fadd fast float %2509, 5.000000e-01
  %2513 = call float @dx.op.unary.f32(i32 24, float %2361)  ; Sqrt(value)
  %2514 = call float @dx.op.unary.f32(i32 24, float %2362)  ; Sqrt(value)
  %2515 = call float @dx.op.unary.f32(i32 24, float %2363)  ; Sqrt(value)
  %2516 = fmul fast float %2510, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2513
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2513
  %2521 = fmul fast float %2511, 2.000000e+00
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2522, %2514
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2524, %2514
  %2526 = fmul fast float %2512, 2.000000e+00
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = fmul fast float %2527, %2515
  %2529 = fadd fast float %2528, %2526
  %2530 = fmul fast float %2529, %2515
  %2531 = fmul fast float %2520, %2520
  %2532 = fmul fast float %2525, %2525
  %2533 = fmul fast float %2530, %2530
  br label %2550

; <label>:2534                                    ; preds = %2497
  %2535 = fmul fast float %500, %500
  %2536 = fmul fast float %501, %501
  %2537 = fmul fast float %502, %502
  %2538 = fadd fast float %2535, -1.000000e+00
  %2539 = fadd fast float %2536, -1.000000e+00
  %2540 = fadd fast float %2537, -1.000000e+00
  %2541 = fmul fast float %2386, %2538
  %2542 = fmul fast float %2386, %2539
  %2543 = fmul fast float %2386, %2540
  %2544 = fadd fast float %2541, 1.000000e+00
  %2545 = fadd fast float %2542, 1.000000e+00
  %2546 = fadd fast float %2543, 1.000000e+00
  %2547 = fmul fast float %2544, %2361
  %2548 = fmul fast float %2545, %2362
  %2549 = fmul fast float %2546, %2363
  br label %2550

; <label>:2550                                    ; preds = %2534, %2500, %2391, %2347
  %2551 = phi float [ %2496, %2391 ], [ %2372, %2500 ], [ %2372, %2534 ], [ 0x3FA23C0BE0000000, %2347 ]
  %2552 = phi float [ %2488, %2391 ], [ %2531, %2500 ], [ %2547, %2534 ], [ 1.000000e+00, %2347 ]
  %2553 = phi float [ %2489, %2391 ], [ %2532, %2500 ], [ %2548, %2534 ], [ 1.000000e+00, %2347 ]
  %2554 = phi float [ %2490, %2391 ], [ %2533, %2500 ], [ %2549, %2534 ], [ 1.000000e+00, %2347 ]
  %2555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.i32 %2555, 1
  %2557 = and i32 %2556, 1
  %2558 = icmp ne i32 %2557, 0
  %2559 = add i32 %55, 356
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 32
  %2563 = icmp ne i32 %2562, 0
  %2564 = and i1 %2558, %2563
  %2565 = select i1 %2564, float 1.000000e+00, float %2552
  %2566 = select i1 %2564, float 0x3FD3333340000000, float %2553
  %2567 = select i1 %2564, float 0x3FD3333340000000, float %2554
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 32
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2644, label %2572

; <label>:2572                                    ; preds = %2550
  %2573 = add i32 %55, 124
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = add i32 %55, 384
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = add i32 %2578, 0
  %2580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2580, %dx.types.Handle %102, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.ResRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.ResRet.f32 %2581, 2
  %2585 = extractvalue %dx.types.ResRet.f32 %2581, 3
  %2586 = and i32 %2575, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = lshr i32 %2575, 8
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = lshr i32 %2575, 16
  %2592 = and i32 %2591, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = fmul fast float %2593, 0x3F70101000000000
  %2595 = fmul fast float %2582, %2587
  %2596 = fadd fast float %2595, %2590
  %2597 = fmul fast float %2596, 0x3F70101000000000
  %2598 = fadd fast float %2583, -5.000000e-01
  %2599 = fadd fast float %2585, -5.000000e-01
  %2600 = fmul fast float %2598, %2594
  %2601 = fmul fast float %2599, %2594
  %2602 = fadd fast float %2600, 5.000000e-01
  %2603 = fadd fast float %2601, 5.000000e-01
  %2604 = fmul fast float %2602, 2.000000e+00
  %2605 = fadd fast float %2604, -1.000000e+00
  %2606 = fmul fast float %2603, 2.000000e+00
  %2607 = fadd fast float %2606, -1.000000e+00
  %2608 = fadd fast float %2605, %2607
  %2609 = fmul fast float %2608, 5.000000e-01
  %2610 = fsub fast float %2605, %2607
  %2611 = fmul fast float %2610, 5.000000e-01
  %2612 = call float @dx.op.unary.f32(i32 6, float %2609)  ; FAbs(value)
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = call float @dx.op.unary.f32(i32 6, float %2611)  ; FAbs(value)
  %2615 = fsub fast float %2613, %2614
  %2616 = call float @dx.op.dot3.f32(i32 55, float %2609, float %2611, float %2615, float %2609, float %2611, float %2615)  ; Dot3(ax,ay,az,bx,by,bz)
  %2617 = call float @dx.op.unary.f32(i32 25, float %2616)  ; Rsqrt(value)
  %2618 = fmul fast float %2609, %2617
  %2619 = fmul fast float %2611, %2617
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 67108864
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2640, label %2624

; <label>:2624                                    ; preds = %2572
  %2625 = add i32 %55, 312
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 65535
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 65535
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = lshr i32 %2627, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = fsub fast float %2597, %2635
  %2637 = fmul fast float %2636, %2629
  %2638 = fadd fast float %2637, %2633
  %2639 = call float @dx.op.unary.f32(i32 7, float %2638)  ; Saturate(value)
  br label %2640

; <label>:2640                                    ; preds = %2624, %2572
  %2641 = phi float [ %2639, %2624 ], [ %2597, %2572 ]
  %2642 = call float @dx.op.dot2.f32(i32 54, float %2618, float %2619, float %2177, float %2178)  ; Dot2(ax,ay,bx,by)
  %2643 = call float @dx.op.dot2.f32(i32 54, float %2618, float %2619, float %2179, float %2180)  ; Dot2(ax,ay,bx,by)
  br label %2644

; <label>:2644                                    ; preds = %2640, %2550
  %2645 = phi float [ %2641, %2640 ], [ 0x3FD6666660000000, %2550 ]
  %2646 = phi float [ %2642, %2640 ], [ 0.000000e+00, %2550 ]
  %2647 = phi float [ %2643, %2640 ], [ 0.000000e+00, %2550 ]
  %2648 = phi float [ %2584, %2640 ], [ 1.000000e+00, %2550 ]
  %2649 = add i32 %55, 192
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = lshr i32 %2651, 22
  %2653 = shl nuw nsw i32 %2652, 5
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 64
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2692, label %2659

; <label>:2659                                    ; preds = %2644
  %2660 = add i32 %55, 400
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %2662, 0
  %2664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 131072
  %2668 = icmp eq i32 %2667, 0
  %2669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2664, %dx.types.Handle %102, float %2273, float %2274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2673 = fmul fast float %483, %2670
  %2674 = fmul fast float %484, %2671
  %2675 = fmul fast float %485, %2672
  br i1 %2668, label %2682, label %2676

; <label>:2676                                    ; preds = %2659
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 0
  %2679 = fmul fast float %2678, %2673
  %2680 = fmul fast float %2678, %2674
  %2681 = fmul fast float %2678, %2675
  br label %2682

; <label>:2682                                    ; preds = %2676, %2659
  %2683 = phi float [ %2679, %2676 ], [ %2673, %2659 ]
  %2684 = phi float [ %2680, %2676 ], [ %2674, %2659 ]
  %2685 = phi float [ %2681, %2676 ], [ %2675, %2659 ]
  %2686 = fmul fast float %2683, %2654
  %2687 = select i1 %252, float %2686, float %2683
  %2688 = call float @dx.op.dot3.f32(i32 55, float %2687, float %2684, float %2685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = select i1 %252, float 0.000000e+00, float %2683
  %2690 = select i1 %252, float %2688, float %2684
  %2691 = select i1 %252, float 0.000000e+00, float %2685
  br label %2692

; <label>:2692                                    ; preds = %2682, %2644
  %2693 = phi float [ %2689, %2682 ], [ 0.000000e+00, %2644 ]
  %2694 = phi float [ %2690, %2682 ], [ 0.000000e+00, %2644 ]
  %2695 = phi float [ %2691, %2682 ], [ 0.000000e+00, %2644 ]
  %2696 = add i32 %55, 128
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = lshr i32 %2698, 8
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = call float @dx.op.dot3.f32(i32 55, float %2565, float %2566, float %2567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2705 = fmul fast float %2703, %2704
  %2706 = fadd fast float %2705, %2700
  %2707 = fmul fast float %2706, 0x3F70101020000000
  %2708 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  br i1 %2166, label %2709, label %2717

; <label>:2709                                    ; preds = %2692
  %2710 = fsub fast float 1.000000e+00, %2345
  %2711 = fmul fast float %2710, %2155
  %2712 = fmul fast float %2710, %2156
  %2713 = fmul fast float %2710, %2157
  %2714 = fmul fast float %2710, %2158
  %2715 = fmul fast float %2710, %2159
  %2716 = fmul fast float %2710, %2160
  br label %2717

; <label>:2717                                    ; preds = %2709, %2692
  %2718 = phi float [ %2711, %2709 ], [ %2155, %2692 ]
  %2719 = phi float [ %2712, %2709 ], [ %2156, %2692 ]
  %2720 = phi float [ %2713, %2709 ], [ %2157, %2692 ]
  %2721 = phi float [ %2714, %2709 ], [ %2158, %2692 ]
  %2722 = phi float [ %2715, %2709 ], [ %2159, %2692 ]
  %2723 = phi float [ %2716, %2709 ], [ %2160, %2692 ]
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, 3
  %2727 = icmp eq i32 %2726, 3
  br i1 %2727, label %2806, label %2728

; <label>:2728                                    ; preds = %2717
  %2729 = and i32 %2725, 16
  %2730 = icmp ne i32 %2729, 0
  %2731 = select i1 %2730, float %2345, float 0.000000e+00
  %2732 = icmp eq i32 %2726, 0
  br i1 %2732, label %2733, label %2761

; <label>:2733                                    ; preds = %2728
  %2734 = and i32 %2725, 64
  %2735 = icmp ne i32 %2734, 0
  %2736 = select i1 %2735, float %2345, float 0.000000e+00
  %2737 = fsub fast float %2565, %2718
  %2738 = fsub fast float %2566, %2719
  %2739 = fsub fast float %2567, %2720
  %2740 = fmul fast float %2731, %2737
  %2741 = fmul fast float %2731, %2738
  %2742 = fmul fast float %2731, %2739
  %2743 = fadd fast float %2740, %2718
  %2744 = fadd fast float %2741, %2719
  %2745 = fadd fast float %2742, %2720
  %2746 = fsub fast float %2551, %2161
  %2747 = fmul fast float %2731, %2746
  %2748 = fadd fast float %2747, %2161
  %2749 = fsub fast float %2693, %2721
  %2750 = fsub fast float %2694, %2722
  %2751 = fsub fast float %2695, %2723
  %2752 = fmul fast float %2736, %2749
  %2753 = fmul fast float %2736, %2750
  %2754 = fmul fast float %2736, %2751
  %2755 = fadd fast float %2752, %2721
  %2756 = fadd fast float %2753, %2722
  %2757 = fadd fast float %2754, %2723
  %2758 = fsub fast float %2708, %2164
  %2759 = fmul fast float %2731, %2758
  %2760 = fadd fast float %2759, %2164
  br label %2806

; <label>:2761                                    ; preds = %2728
  %2762 = icmp eq i32 %2726, 1
  br i1 %2762, label %2763, label %2776

; <label>:2763                                    ; preds = %2761
  %2764 = fadd fast float %2565, -1.000000e+00
  %2765 = fadd fast float %2566, -1.000000e+00
  %2766 = fadd fast float %2567, -1.000000e+00
  %2767 = fmul fast float %2731, %2764
  %2768 = fmul fast float %2731, %2765
  %2769 = fmul fast float %2731, %2766
  %2770 = fadd fast float %2767, 1.000000e+00
  %2771 = fadd fast float %2768, 1.000000e+00
  %2772 = fadd fast float %2769, 1.000000e+00
  %2773 = fmul fast float %2770, %2718
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2772, %2720
  br label %2806

; <label>:2776                                    ; preds = %2761
  %2777 = icmp eq i32 %2726, 2
  br i1 %2777, label %2778, label %2806

; <label>:2778                                    ; preds = %2776
  %2779 = call float @dx.op.unary.f32(i32 24, float %2565)  ; Sqrt(value)
  %2780 = call float @dx.op.unary.f32(i32 24, float %2566)  ; Sqrt(value)
  %2781 = call float @dx.op.unary.f32(i32 24, float %2567)  ; Sqrt(value)
  %2782 = fadd fast float %2779, -5.000000e-01
  %2783 = fadd fast float %2780, -5.000000e-01
  %2784 = fadd fast float %2781, -5.000000e-01
  %2785 = fmul fast float %2782, %2731
  %2786 = fmul fast float %2783, %2731
  %2787 = fmul fast float %2784, %2731
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = fadd fast float %2786, 5.000000e-01
  %2790 = fadd fast float %2787, 5.000000e-01
  %2791 = fmul fast float %2788, 2.000000e+00
  %2792 = fsub fast float 1.000000e+00, %2791
  %2793 = fmul fast float %2792, %2718
  %2794 = fadd fast float %2793, %2791
  %2795 = fmul fast float %2794, %2718
  %2796 = fmul fast float %2789, 2.000000e+00
  %2797 = fsub fast float 1.000000e+00, %2796
  %2798 = fmul fast float %2797, %2719
  %2799 = fadd fast float %2798, %2796
  %2800 = fmul fast float %2799, %2719
  %2801 = fmul fast float %2790, 2.000000e+00
  %2802 = fsub fast float 1.000000e+00, %2801
  %2803 = fmul fast float %2802, %2720
  %2804 = fadd fast float %2803, %2801
  %2805 = fmul fast float %2804, %2720
  br label %2806

; <label>:2806                                    ; preds = %2778, %2776, %2763, %2733, %2717
  %2807 = phi float [ %2718, %2717 ], [ %2795, %2778 ], [ %2718, %2776 ], [ %2773, %2763 ], [ %2743, %2733 ]
  %2808 = phi float [ %2719, %2717 ], [ %2800, %2778 ], [ %2719, %2776 ], [ %2774, %2763 ], [ %2744, %2733 ]
  %2809 = phi float [ %2720, %2717 ], [ %2805, %2778 ], [ %2720, %2776 ], [ %2775, %2763 ], [ %2745, %2733 ]
  %2810 = phi float [ %2721, %2717 ], [ %2721, %2778 ], [ %2721, %2776 ], [ %2721, %2763 ], [ %2755, %2733 ]
  %2811 = phi float [ %2722, %2717 ], [ %2722, %2778 ], [ %2722, %2776 ], [ %2722, %2763 ], [ %2756, %2733 ]
  %2812 = phi float [ %2723, %2717 ], [ %2723, %2778 ], [ %2723, %2776 ], [ %2723, %2763 ], [ %2757, %2733 ]
  %2813 = phi float [ %2161, %2717 ], [ %2161, %2778 ], [ %2161, %2776 ], [ %2161, %2763 ], [ %2748, %2733 ]
  %2814 = phi float [ %2164, %2717 ], [ %2164, %2778 ], [ %2164, %2776 ], [ %2164, %2763 ], [ %2760, %2733 ]
  %2815 = and i32 %2725, 12
  %2816 = icmp eq i32 %2815, 12
  br i1 %2816, label %2889, label %2817

; <label>:2817                                    ; preds = %2806
  %2818 = and i32 %2725, 2097184
  %2819 = icmp eq i32 %2818, 2097184
  %2820 = select i1 %2819, float %2345, float 0.000000e+00
  %2821 = and i32 %2725, 4194336
  %2822 = icmp eq i32 %2821, 4194336
  %2823 = select i1 %2822, float %2345, float 0.000000e+00
  %2824 = and i32 %2725, 8388640
  %2825 = icmp eq i32 %2824, 8388640
  %2826 = select i1 %2825, float %2345, float 0.000000e+00
  %2827 = icmp eq i32 %2815, 0
  br i1 %2827, label %2828, label %2841

; <label>:2828                                    ; preds = %2817
  %2829 = fsub fast float %2646, %2153
  %2830 = fsub fast float %2647, %2154
  %2831 = fmul fast float %2820, %2829
  %2832 = fmul fast float %2820, %2830
  %2833 = fadd fast float %2831, %2153
  %2834 = fadd fast float %2832, %2154
  %2835 = fsub fast float %2648, %2163
  %2836 = fmul fast float %2823, %2835
  %2837 = fadd fast float %2836, %2163
  %2838 = fsub fast float %2645, %2162
  %2839 = fmul fast float %2826, %2838
  %2840 = fadd fast float %2839, %2162
  br label %2889

; <label>:2841                                    ; preds = %2817
  %2842 = icmp eq i32 %2815, 4
  br i1 %2842, label %2843, label %2875

; <label>:2843                                    ; preds = %2841
  %2844 = fmul fast float %2820, %2646
  %2845 = fmul fast float %2820, %2647
  %2846 = fadd fast float %2844, %2153
  %2847 = fadd fast float %2845, %2154
  %2848 = call float @dx.op.binary.f32(i32 36, float %2163, float %2648)  ; FMin(a,b)
  %2849 = fsub fast float %2848, %2163
  %2850 = fmul fast float %2849, %2823
  %2851 = fadd fast float %2850, %2163
  %2852 = fadd fast float %2645, %2162
  %2853 = fmul fast float %2852, 0x3FF337FAE0000000
  %2854 = fmul fast float %2162, %2162
  %2855 = fmul fast float %2645, %2645
  %2856 = fadd fast float %2855, %2854
  %2857 = fmul fast float %2856, 0x3FE5152B00000000
  %2858 = fmul fast float %2162, 0xBFCC1F85E0000000
  %2859 = fmul fast float %2858, %2645
  %2860 = fadd fast float %2859, 0xBFE1363700000000
  %2861 = fadd fast float %2860, %2853
  %2862 = fsub fast float %2861, %2857
  %2863 = fmul fast float %2852, 0x3FBA6F0D00000000
  %2864 = fmul fast float %2856, 0x3FD0432880000000
  %2865 = fmul fast float %2162, 0xBFEF110800000000
  %2866 = fmul fast float %2865, %2645
  %2867 = fadd fast float %2866, 1.000000e+00
  %2868 = fsub fast float %2867, %2863
  %2869 = fadd fast float %2868, %2864
  %2870 = fdiv fast float %2862, %2869
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = fsub fast float %2871, %2162
  %2873 = fmul fast float %2872, %2826
  %2874 = fadd fast float %2873, %2162
  br label %2889

; <label>:2875                                    ; preds = %2841
  %2876 = icmp eq i32 %2815, 8
  br i1 %2876, label %2877, label %2889

; <label>:2877                                    ; preds = %2875
  %2878 = fmul fast float %2820, %2646
  %2879 = fmul fast float %2820, %2647
  %2880 = fadd fast float %2878, %2153
  %2881 = fadd fast float %2879, %2154
  %2882 = call float @dx.op.binary.f32(i32 36, float %2163, float %2648)  ; FMin(a,b)
  %2883 = fsub fast float %2882, %2163
  %2884 = fmul fast float %2883, %2823
  %2885 = fadd fast float %2884, %2163
  %2886 = fsub fast float %2645, %2162
  %2887 = fmul fast float %2826, %2886
  %2888 = fadd fast float %2887, %2162
  br label %2889

; <label>:2889                                    ; preds = %2877, %2875, %2843, %2828, %2806, %2344, %2165, %2152
  %2890 = phi float [ %2153, %2806 ], [ %2153, %2344 ], [ %2153, %2152 ], [ %2880, %2877 ], [ %2153, %2875 ], [ %2846, %2843 ], [ %2833, %2828 ], [ %2153, %2165 ]
  %2891 = phi float [ %2154, %2806 ], [ %2154, %2344 ], [ %2154, %2152 ], [ %2881, %2877 ], [ %2154, %2875 ], [ %2847, %2843 ], [ %2834, %2828 ], [ %2154, %2165 ]
  %2892 = phi float [ %2807, %2806 ], [ %2155, %2344 ], [ %2155, %2152 ], [ %2807, %2877 ], [ %2807, %2875 ], [ %2807, %2843 ], [ %2807, %2828 ], [ %2155, %2165 ]
  %2893 = phi float [ %2808, %2806 ], [ %2156, %2344 ], [ %2156, %2152 ], [ %2808, %2877 ], [ %2808, %2875 ], [ %2808, %2843 ], [ %2808, %2828 ], [ %2156, %2165 ]
  %2894 = phi float [ %2809, %2806 ], [ %2157, %2344 ], [ %2157, %2152 ], [ %2809, %2877 ], [ %2809, %2875 ], [ %2809, %2843 ], [ %2809, %2828 ], [ %2157, %2165 ]
  %2895 = phi float [ %2810, %2806 ], [ %2158, %2344 ], [ %2158, %2152 ], [ %2810, %2877 ], [ %2810, %2875 ], [ %2810, %2843 ], [ %2810, %2828 ], [ %2158, %2165 ]
  %2896 = phi float [ %2811, %2806 ], [ %2159, %2344 ], [ %2159, %2152 ], [ %2811, %2877 ], [ %2811, %2875 ], [ %2811, %2843 ], [ %2811, %2828 ], [ %2159, %2165 ]
  %2897 = phi float [ %2812, %2806 ], [ %2160, %2344 ], [ %2160, %2152 ], [ %2812, %2877 ], [ %2812, %2875 ], [ %2812, %2843 ], [ %2812, %2828 ], [ %2160, %2165 ]
  %2898 = phi float [ %2813, %2806 ], [ %2161, %2344 ], [ %2161, %2152 ], [ %2813, %2877 ], [ %2813, %2875 ], [ %2813, %2843 ], [ %2813, %2828 ], [ %2161, %2165 ]
  %2899 = phi float [ %2162, %2806 ], [ %2162, %2344 ], [ %2162, %2152 ], [ %2888, %2877 ], [ %2162, %2875 ], [ %2874, %2843 ], [ %2840, %2828 ], [ %2162, %2165 ]
  %2900 = phi float [ %2163, %2806 ], [ %2163, %2344 ], [ %2163, %2152 ], [ %2885, %2877 ], [ %2163, %2875 ], [ %2851, %2843 ], [ %2837, %2828 ], [ %2163, %2165 ]
  %2901 = phi float [ %2814, %2806 ], [ %2164, %2344 ], [ %2164, %2152 ], [ %2814, %2877 ], [ %2814, %2875 ], [ %2814, %2843 ], [ %2814, %2828 ], [ %2164, %2165 ]
  br i1 %642, label %3626, label %2902

; <label>:2902                                    ; preds = %2889
  %2903 = icmp ult i32 %871, 4
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %55, 76
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = or i32 %2908, %2905
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %3626, label %2911

; <label>:2911                                    ; preds = %2902
  %2912 = and i32 %2905, 262144
  %2913 = icmp ne i32 %2912, 0
  %2914 = select i1 %2913, float %61, float 1.000000e+00
  %2915 = select i1 %2913, float %62, float 0.000000e+00
  %2916 = select i1 %2913, float %63, float 0.000000e+00
  %2917 = select i1 %2913, float %64, float 1.000000e+00
  %2918 = select i1 %2913, float %65, float %88
  %2919 = select i1 %2913, float %66, float %89
  %2920 = add i32 %55, 332
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = lshr i32 %2922, 16
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = fmul fast float %2924, 0x3F50624DE0000000
  %2926 = add i32 %55, 136
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = lshr i32 %2928, 16
  %2930 = and i32 %2929, 255
  %2931 = lshr i32 %2928, 24
  %2932 = add i32 %55, 340
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 65535
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = lshr i32 %2934, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = add i32 %55, 80
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 22
  %2943 = shl nuw nsw i32 %2942, 5
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = shl i32 %2941, 4
  %2946 = and i32 %2945, 32752
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = lshr i32 %2941, 7
  %2949 = and i32 %2948, 32752
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 3
  %2953 = fmul fast float %2952, 1.000000e+03
  %2954 = fmul fast float %2953, %631
  %2955 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2956 = fadd fast float %2955, %619
  %2957 = fmul fast float %2953, %633
  %2958 = call float @dx.op.unary.f32(i32 22, float %2957)  ; Frc(value)
  %2959 = fadd fast float %2958, %620
  %2960 = fmul fast float %2925, %2953
  %2961 = call float @dx.op.unary.f32(i32 22, float %2960)  ; Frc(value)
  %2962 = fmul fast float %2961, 0x401921FB60000000
  %2963 = fadd fast float %2962, %2944
  %2964 = call float @dx.op.unary.f32(i32 13, float %2963)  ; Sin(value)
  %2965 = call float @dx.op.unary.f32(i32 12, float %2963)  ; Cos(value)
  %2966 = fsub fast float -0.000000e+00, %2964
  %2967 = fadd fast float %2918, -5.000000e-01
  %2968 = fadd fast float %2919, -5.000000e-01
  %2969 = fmul fast float %2936, %2967
  %2970 = fmul fast float %2938, %2968
  %2971 = fadd fast float %2969, 5.000000e-01
  %2972 = fadd fast float %2970, 5.000000e-01
  %2973 = fmul fast float %2947, %2971
  %2974 = fmul fast float %2950, %2972
  %2975 = fmul fast float %2965, %2973
  %2976 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %2974, float %2975)  ; FMad(a,b,c)
  %2977 = fmul fast float %2964, %2973
  %2978 = call float @dx.op.tertiary.f32(i32 46, float %2965, float %2974, float %2977)  ; FMad(a,b,c)
  %2979 = fadd fast float %2956, %2976
  %2980 = fadd fast float %2959, %2978
  %2981 = icmp ugt i32 %2930, 1
  %2982 = icmp ugt i32 %2928, 33554431
  %2983 = or i1 %2982, %2981
  br i1 %2983, label %2984, label %3009

; <label>:2984                                    ; preds = %2911
  %2985 = add i32 %55, 276
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = lshr i32 %2987, 16
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = fmul fast float %2952, %2989
  %2991 = call float @dx.op.unary.f32(i32 22, float %2990)  ; Frc(value)
  %2992 = mul nuw nsw i32 %2930, %2931
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2991, %2993
  %2995 = call float @dx.op.unary.f32(i32 27, float %2994)  ; Round_ni(value)
  %2996 = fptoui float %2995 to i32
  %2997 = urem i32 %2996, %2930
  %2998 = udiv i32 %2996, %2931
  %2999 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %3001 = uitofp i32 %2997 to float
  %3002 = uitofp i32 %2998 to float
  %3003 = fadd fast float %2999, %3001
  %3004 = fadd fast float %3000, %3002
  %3005 = uitofp i32 %2930 to float
  %3006 = uitofp i32 %2931 to float
  %3007 = fdiv fast float %3003, %3005
  %3008 = fdiv fast float %3004, %3006
  br label %3009

; <label>:3009                                    ; preds = %2984, %2911
  %3010 = phi float [ %3007, %2984 ], [ %2979, %2911 ]
  %3011 = phi float [ %3008, %2984 ], [ %2980, %2911 ]
  %3012 = and i32 %2905, 256
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3059, label %3014

; <label>:3014                                    ; preds = %3009
  %3015 = add i32 %55, 436
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = add i32 %3017, 0
  %3019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3019, %dx.types.Handle %103, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = shl i32 %3023, 4
  %3025 = and i32 %3024, 32752
  %3026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3025)  ; LegacyF16ToF32(value)
  %3027 = lshr i32 %3023, 7
  %3028 = and i32 %3027, 32752
  %3029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3028)  ; LegacyF16ToF32(value)
  %3030 = fsub fast float 1.000000e+00, %866
  %3031 = call float @dx.op.binary.f32(i32 35, float %3030, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3032 = bitcast float %866 to i32
  %3033 = sitofp i32 %3032 to float
  %3034 = fadd fast float %3033, 0xC1CFBF8940000000
  %3035 = fmul fast float %3029, %3034
  %3036 = fadd fast float %3035, 0x41CFBF8940000000
  %3037 = fptosi float %3036 to i32
  %3038 = bitcast i32 %3037 to float
  %3039 = bitcast float %3031 to i32
  %3040 = sitofp i32 %3039 to float
  %3041 = fadd fast float %3040, 0xC1CFBF8940000000
  %3042 = fmul fast float %3041, %3029
  %3043 = fadd fast float %3042, 0x41CFBF8940000000
  %3044 = fptosi float %3043 to i32
  %3045 = bitcast i32 %3044 to float
  %3046 = fmul fast float %3038, %3026
  %3047 = fmul fast float %3045, %3026
  %3048 = fsub fast float %3031, %3046
  %3049 = fadd fast float %3047, %3031
  %3050 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3051 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3052 = fsub fast float %3021, %3050
  %3053 = fsub fast float %3051, %3050
  %3054 = bitcast float %3053 to i32
  %3055 = sub nsw i32 2129859010, %3054
  %3056 = bitcast i32 %3055 to float
  %3057 = fmul fast float %3056, %3052
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  br label %3059

; <label>:3059                                    ; preds = %3014, %3009
  %3060 = phi float [ %3058, %3014 ], [ %866, %3009 ]
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 128
  %3064 = icmp eq i32 %3063, 0
  br i1 %3064, label %3081, label %3065

; <label>:3065                                    ; preds = %3059
  %3066 = add i32 %55, 420
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = add i32 %3068, 0
  %3070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3070, %dx.types.Handle %103, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3072 = extractvalue %dx.types.ResRet.f32 %3071, 0
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 524288
  %3076 = icmp ne i32 %3075, 0
  %3077 = fcmp fast ogt float %3072, 0x3FE0101020000000
  %3078 = select i1 %3077, float 1.000000e+00, float 0.000000e+00
  %3079 = select i1 %3076, float %3078, float %3072
  %3080 = fmul fast float %3079, %3060
  br label %3081

; <label>:3081                                    ; preds = %3065, %3059
  %3082 = phi float [ %3080, %3065 ], [ %3060, %3059 ]
  %3083 = fcmp fast ult float %3082, 0x3F70101020000000
  br i1 %3083, label %3626, label %3084

; <label>:3084                                    ; preds = %3081
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 16
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %3287, label %3089

; <label>:3089                                    ; preds = %3084
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %55, 372
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %3094, 0
  %3096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3096, %dx.types.Handle %102, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.ResRet.f32 %3097, 2
  %3101 = extractvalue %dx.types.ResRet.f32 %3097, 3
  %3102 = and i32 %3091, 255
  %3103 = uitofp i32 %3102 to float
  %3104 = lshr i32 %3091, 8
  %3105 = and i32 %3104, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = fmul fast float %3101, %3103
  %3108 = fadd fast float %3107, %3106
  %3109 = fmul fast float %3108, 0x3F70101000000000
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 512
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3122, label %3114

; <label>:3114                                    ; preds = %3089
  %3115 = add i32 %55, 452
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %103, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  br label %3122

; <label>:3122                                    ; preds = %3114, %3089
  %3123 = phi float [ %3121, %3114 ], [ 1.000000e+00, %3089 ]
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 33554432
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3234, label %3128

; <label>:3128                                    ; preds = %3122
  %3129 = add i32 %55, 272
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 65535
  %3133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3132)  ; LegacyF16ToF32(value)
  %3134 = lshr i32 %3131, 16
  %3135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3134)  ; LegacyF16ToF32(value)
  %3136 = add i32 %55, 276
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 65535
  %3140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3139)  ; LegacyF16ToF32(value)
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = lshr i32 %3142, 24
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3144, 0x3F70101020000000
  %3146 = and i32 %3142, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3147, 0x3F70101020000000
  %3149 = lshr i32 %3142, 8
  %3150 = and i32 %3149, 255
  %3151 = uitofp i32 %3150 to float
  %3152 = fmul fast float %3151, 0x3F70101020000000
  %3153 = lshr i32 %3142, 16
  %3154 = and i32 %3153, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3155, 0x3F70101020000000
  %3157 = add i32 %55, 268
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = lshr i32 %3159, 24
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101020000000
  %3163 = and i32 %3159, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = lshr i32 %3159, 8
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = lshr i32 %3159, 16
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = bitcast float %3098 to i32
  %3175 = ashr i32 %3174, 1
  %3176 = sub nsw i32 1597463174, %3175
  %3177 = bitcast i32 %3176 to float
  %3178 = fmul fast float %3098, 5.000000e-01
  %3179 = fmul fast float %3177, %3177
  %3180 = fmul fast float %3179, %3178
  %3181 = fsub fast float 1.500000e+00, %3180
  %3182 = fmul fast float %3177, %3098
  %3183 = fmul fast float %3182, %3181
  %3184 = bitcast float %3099 to i32
  %3185 = ashr i32 %3184, 1
  %3186 = sub nsw i32 1597463174, %3185
  %3187 = bitcast i32 %3186 to float
  %3188 = fmul fast float %3099, 5.000000e-01
  %3189 = fmul fast float %3187, %3187
  %3190 = fmul fast float %3189, %3188
  %3191 = fsub fast float 1.500000e+00, %3190
  %3192 = fmul fast float %3187, %3099
  %3193 = fmul fast float %3192, %3191
  %3194 = bitcast float %3100 to i32
  %3195 = ashr i32 %3194, 1
  %3196 = sub nsw i32 1597463174, %3195
  %3197 = bitcast i32 %3196 to float
  %3198 = fmul fast float %3100, 5.000000e-01
  %3199 = fmul fast float %3197, %3197
  %3200 = fmul fast float %3199, %3198
  %3201 = fsub fast float 1.500000e+00, %3200
  %3202 = fmul fast float %3197, %3100
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float %3183, %3165
  %3205 = fsub fast float %3193, %3169
  %3206 = fsub fast float %3203, %3173
  %3207 = fmul fast float %3204, %3133
  %3208 = fmul fast float %3205, %3135
  %3209 = fmul fast float %3206, %3140
  %3210 = fadd fast float %3207, %3148
  %3211 = fadd fast float %3208, %3152
  %3212 = fadd fast float %3209, %3156
  %3213 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3215 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3216 = fmul fast float %3213, %3213
  %3217 = fmul fast float %3214, %3214
  %3218 = fmul fast float %3215, %3215
  %3219 = fsub fast float %3216, %3098
  %3220 = fsub fast float %3217, %3099
  %3221 = fsub fast float %3218, %3100
  %3222 = fmul fast float %3219, %3123
  %3223 = fmul fast float %3220, %3123
  %3224 = fmul fast float %3221, %3123
  %3225 = fadd fast float %3222, %3098
  %3226 = fadd fast float %3223, %3099
  %3227 = fadd fast float %3224, %3100
  %3228 = fadd fast float %3145, %3109
  %3229 = fsub fast float %3228, %3162
  %3230 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3231 = fsub fast float %3230, %3109
  %3232 = fmul fast float %3231, %3123
  %3233 = fadd fast float %3232, %3109
  br label %3287

; <label>:3234                                    ; preds = %3122
  %3235 = and i32 %3125, 134217728
  %3236 = icmp eq i32 %3235, 0
  br i1 %3236, label %3271, label %3237

; <label>:3237                                    ; preds = %3234
  %3238 = call float @dx.op.unary.f32(i32 24, float %607)  ; Sqrt(value)
  %3239 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %3240 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %3241 = fadd fast float %3238, -5.000000e-01
  %3242 = fadd fast float %3239, -5.000000e-01
  %3243 = fadd fast float %3240, -5.000000e-01
  %3244 = fmul fast float %3241, %3123
  %3245 = fmul fast float %3242, %3123
  %3246 = fmul fast float %3243, %3123
  %3247 = fadd fast float %3244, 5.000000e-01
  %3248 = fadd fast float %3245, 5.000000e-01
  %3249 = fadd fast float %3246, 5.000000e-01
  %3250 = call float @dx.op.unary.f32(i32 24, float %3098)  ; Sqrt(value)
  %3251 = call float @dx.op.unary.f32(i32 24, float %3099)  ; Sqrt(value)
  %3252 = call float @dx.op.unary.f32(i32 24, float %3100)  ; Sqrt(value)
  %3253 = fmul fast float %3247, 2.000000e+00
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = fmul fast float %3254, %3250
  %3256 = fadd fast float %3255, %3253
  %3257 = fmul fast float %3256, %3250
  %3258 = fmul fast float %3248, 2.000000e+00
  %3259 = fsub fast float 1.000000e+00, %3258
  %3260 = fmul fast float %3259, %3251
  %3261 = fadd fast float %3260, %3258
  %3262 = fmul fast float %3261, %3251
  %3263 = fmul fast float %3249, 2.000000e+00
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = fmul fast float %3264, %3252
  %3266 = fadd fast float %3265, %3263
  %3267 = fmul fast float %3266, %3252
  %3268 = fmul fast float %3257, %3257
  %3269 = fmul fast float %3262, %3262
  %3270 = fmul fast float %3267, %3267
  br label %3287

; <label>:3271                                    ; preds = %3234
  %3272 = fmul fast float %607, %607
  %3273 = fmul fast float %608, %608
  %3274 = fmul fast float %609, %609
  %3275 = fadd fast float %3272, -1.000000e+00
  %3276 = fadd fast float %3273, -1.000000e+00
  %3277 = fadd fast float %3274, -1.000000e+00
  %3278 = fmul fast float %3123, %3275
  %3279 = fmul fast float %3123, %3276
  %3280 = fmul fast float %3123, %3277
  %3281 = fadd fast float %3278, 1.000000e+00
  %3282 = fadd fast float %3279, 1.000000e+00
  %3283 = fadd fast float %3280, 1.000000e+00
  %3284 = fmul fast float %3281, %3098
  %3285 = fmul fast float %3282, %3099
  %3286 = fmul fast float %3283, %3100
  br label %3287

; <label>:3287                                    ; preds = %3271, %3237, %3128, %3084
  %3288 = phi float [ %3233, %3128 ], [ %3109, %3237 ], [ %3109, %3271 ], [ 0x3FA23C0BE0000000, %3084 ]
  %3289 = phi float [ %3225, %3128 ], [ %3268, %3237 ], [ %3284, %3271 ], [ 1.000000e+00, %3084 ]
  %3290 = phi float [ %3226, %3128 ], [ %3269, %3237 ], [ %3285, %3271 ], [ 1.000000e+00, %3084 ]
  %3291 = phi float [ %3227, %3128 ], [ %3270, %3237 ], [ %3286, %3271 ], [ 1.000000e+00, %3084 ]
  %3292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.i32 %3292, 1
  %3294 = and i32 %3293, 1
  %3295 = icmp ne i32 %3294, 0
  %3296 = add i32 %55, 356
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 32
  %3300 = icmp ne i32 %3299, 0
  %3301 = and i1 %3295, %3300
  %3302 = select i1 %3301, float 1.000000e+00, float %3289
  %3303 = select i1 %3301, float 0x3FD3333340000000, float %3290
  %3304 = select i1 %3301, float 0x3FD3333340000000, float %3291
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 32
  %3308 = icmp eq i32 %3307, 0
  br i1 %3308, label %3381, label %3309

; <label>:3309                                    ; preds = %3287
  %3310 = add i32 %55, 140
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = add i32 %55, 388
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = add i32 %3315, 0
  %3317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3317, %dx.types.Handle %102, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3318, 3
  %3323 = and i32 %3312, 255
  %3324 = uitofp i32 %3323 to float
  %3325 = lshr i32 %3312, 8
  %3326 = and i32 %3325, 255
  %3327 = uitofp i32 %3326 to float
  %3328 = lshr i32 %3312, 16
  %3329 = and i32 %3328, 255
  %3330 = uitofp i32 %3329 to float
  %3331 = fmul fast float %3330, 0x3F70101000000000
  %3332 = fmul fast float %3319, %3324
  %3333 = fadd fast float %3332, %3327
  %3334 = fmul fast float %3333, 0x3F70101000000000
  %3335 = fadd fast float %3320, -5.000000e-01
  %3336 = fadd fast float %3322, -5.000000e-01
  %3337 = fmul fast float %3335, %3331
  %3338 = fmul fast float %3336, %3331
  %3339 = fadd fast float %3337, 5.000000e-01
  %3340 = fadd fast float %3338, 5.000000e-01
  %3341 = fmul fast float %3339, 2.000000e+00
  %3342 = fadd fast float %3341, -1.000000e+00
  %3343 = fmul fast float %3340, 2.000000e+00
  %3344 = fadd fast float %3343, -1.000000e+00
  %3345 = fadd fast float %3342, %3344
  %3346 = fmul fast float %3345, 5.000000e-01
  %3347 = fsub fast float %3342, %3344
  %3348 = fmul fast float %3347, 5.000000e-01
  %3349 = call float @dx.op.unary.f32(i32 6, float %3346)  ; FAbs(value)
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = call float @dx.op.unary.f32(i32 6, float %3348)  ; FAbs(value)
  %3352 = fsub fast float %3350, %3351
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3346, float %3348, float %3352, float %3346, float %3348, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call float @dx.op.unary.f32(i32 25, float %3353)  ; Rsqrt(value)
  %3355 = fmul fast float %3346, %3354
  %3356 = fmul fast float %3348, %3354
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = and i32 %3358, 67108864
  %3360 = icmp eq i32 %3359, 0
  br i1 %3360, label %3377, label %3361

; <label>:3361                                    ; preds = %3309
  %3362 = add i32 %55, 328
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = and i32 %3364, 65535
  %3366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3365)  ; LegacyF16ToF32(value)
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 65535
  %3370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3369)  ; LegacyF16ToF32(value)
  %3371 = lshr i32 %3364, 16
  %3372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3371)  ; LegacyF16ToF32(value)
  %3373 = fsub fast float %3334, %3372
  %3374 = fmul fast float %3373, %3366
  %3375 = fadd fast float %3374, %3370
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  br label %3377

; <label>:3377                                    ; preds = %3361, %3309
  %3378 = phi float [ %3376, %3361 ], [ %3334, %3309 ]
  %3379 = call float @dx.op.dot2.f32(i32 54, float %3355, float %3356, float %2914, float %2915)  ; Dot2(ax,ay,bx,by)
  %3380 = call float @dx.op.dot2.f32(i32 54, float %3355, float %3356, float %2916, float %2917)  ; Dot2(ax,ay,bx,by)
  br label %3381

; <label>:3381                                    ; preds = %3377, %3287
  %3382 = phi float [ %3378, %3377 ], [ 0x3FD6666660000000, %3287 ]
  %3383 = phi float [ %3379, %3377 ], [ 0.000000e+00, %3287 ]
  %3384 = phi float [ %3380, %3377 ], [ 0.000000e+00, %3287 ]
  %3385 = phi float [ %3321, %3377 ], [ 1.000000e+00, %3287 ]
  %3386 = add i32 %55, 208
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = lshr i32 %3388, 22
  %3390 = shl nuw nsw i32 %3389, 5
  %3391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3390)  ; LegacyF16ToF32(value)
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 64
  %3395 = icmp eq i32 %3394, 0
  br i1 %3395, label %3429, label %3396

; <label>:3396                                    ; preds = %3381
  %3397 = add i32 %55, 404
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = add i32 %3399, 0
  %3401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 131072
  %3405 = icmp eq i32 %3404, 0
  %3406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3401, %dx.types.Handle %102, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = fmul fast float %590, %3407
  %3411 = fmul fast float %591, %3408
  %3412 = fmul fast float %592, %3409
  br i1 %3405, label %3419, label %3413

; <label>:3413                                    ; preds = %3396
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3416 = fmul fast float %3415, %3410
  %3417 = fmul fast float %3415, %3411
  %3418 = fmul fast float %3415, %3412
  br label %3419

; <label>:3419                                    ; preds = %3413, %3396
  %3420 = phi float [ %3416, %3413 ], [ %3410, %3396 ]
  %3421 = phi float [ %3417, %3413 ], [ %3411, %3396 ]
  %3422 = phi float [ %3418, %3413 ], [ %3412, %3396 ]
  %3423 = fmul fast float %3420, %3391
  %3424 = select i1 %252, float %3423, float %3420
  %3425 = call float @dx.op.dot3.f32(i32 55, float %3424, float %3421, float %3422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3426 = select i1 %252, float 0.000000e+00, float %3420
  %3427 = select i1 %252, float %3425, float %3421
  %3428 = select i1 %252, float 0.000000e+00, float %3422
  br label %3429

; <label>:3429                                    ; preds = %3419, %3381
  %3430 = phi float [ %3426, %3419 ], [ 0.000000e+00, %3381 ]
  %3431 = phi float [ %3427, %3419 ], [ 0.000000e+00, %3381 ]
  %3432 = phi float [ %3428, %3419 ], [ 0.000000e+00, %3381 ]
  %3433 = add i32 %55, 144
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 255
  %3437 = uitofp i32 %3436 to float
  %3438 = lshr i32 %3435, 8
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3442 = fmul fast float %3440, %3441
  %3443 = fadd fast float %3442, %3437
  %3444 = fmul fast float %3443, 0x3F70101020000000
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  br i1 %2903, label %3446, label %3454

; <label>:3446                                    ; preds = %3429
  %3447 = fsub fast float 1.000000e+00, %3082
  %3448 = fmul fast float %3447, %2892
  %3449 = fmul fast float %3447, %2893
  %3450 = fmul fast float %3447, %2894
  %3451 = fmul fast float %3447, %2895
  %3452 = fmul fast float %3447, %2896
  %3453 = fmul fast float %3447, %2897
  br label %3454

; <label>:3454                                    ; preds = %3446, %3429
  %3455 = phi float [ %3448, %3446 ], [ %2892, %3429 ]
  %3456 = phi float [ %3449, %3446 ], [ %2893, %3429 ]
  %3457 = phi float [ %3450, %3446 ], [ %2894, %3429 ]
  %3458 = phi float [ %3451, %3446 ], [ %2895, %3429 ]
  %3459 = phi float [ %3452, %3446 ], [ %2896, %3429 ]
  %3460 = phi float [ %3453, %3446 ], [ %2897, %3429 ]
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 3
  %3464 = icmp eq i32 %3463, 3
  br i1 %3464, label %3543, label %3465

; <label>:3465                                    ; preds = %3454
  %3466 = and i32 %3462, 16
  %3467 = icmp ne i32 %3466, 0
  %3468 = select i1 %3467, float %3082, float 0.000000e+00
  %3469 = icmp eq i32 %3463, 0
  br i1 %3469, label %3470, label %3498

; <label>:3470                                    ; preds = %3465
  %3471 = and i32 %3462, 64
  %3472 = icmp ne i32 %3471, 0
  %3473 = select i1 %3472, float %3082, float 0.000000e+00
  %3474 = fsub fast float %3302, %3455
  %3475 = fsub fast float %3303, %3456
  %3476 = fsub fast float %3304, %3457
  %3477 = fmul fast float %3468, %3474
  %3478 = fmul fast float %3468, %3475
  %3479 = fmul fast float %3468, %3476
  %3480 = fadd fast float %3477, %3455
  %3481 = fadd fast float %3478, %3456
  %3482 = fadd fast float %3479, %3457
  %3483 = fsub fast float %3288, %2898
  %3484 = fmul fast float %3468, %3483
  %3485 = fadd fast float %3484, %2898
  %3486 = fsub fast float %3430, %3458
  %3487 = fsub fast float %3431, %3459
  %3488 = fsub fast float %3432, %3460
  %3489 = fmul fast float %3473, %3486
  %3490 = fmul fast float %3473, %3487
  %3491 = fmul fast float %3473, %3488
  %3492 = fadd fast float %3489, %3458
  %3493 = fadd fast float %3490, %3459
  %3494 = fadd fast float %3491, %3460
  %3495 = fsub fast float %3445, %2901
  %3496 = fmul fast float %3468, %3495
  %3497 = fadd fast float %3496, %2901
  br label %3543

; <label>:3498                                    ; preds = %3465
  %3499 = icmp eq i32 %3463, 1
  br i1 %3499, label %3500, label %3513

; <label>:3500                                    ; preds = %3498
  %3501 = fadd fast float %3302, -1.000000e+00
  %3502 = fadd fast float %3303, -1.000000e+00
  %3503 = fadd fast float %3304, -1.000000e+00
  %3504 = fmul fast float %3468, %3501
  %3505 = fmul fast float %3468, %3502
  %3506 = fmul fast float %3468, %3503
  %3507 = fadd fast float %3504, 1.000000e+00
  %3508 = fadd fast float %3505, 1.000000e+00
  %3509 = fadd fast float %3506, 1.000000e+00
  %3510 = fmul fast float %3507, %3455
  %3511 = fmul fast float %3508, %3456
  %3512 = fmul fast float %3509, %3457
  br label %3543

; <label>:3513                                    ; preds = %3498
  %3514 = icmp eq i32 %3463, 2
  br i1 %3514, label %3515, label %3543

; <label>:3515                                    ; preds = %3513
  %3516 = call float @dx.op.unary.f32(i32 24, float %3302)  ; Sqrt(value)
  %3517 = call float @dx.op.unary.f32(i32 24, float %3303)  ; Sqrt(value)
  %3518 = call float @dx.op.unary.f32(i32 24, float %3304)  ; Sqrt(value)
  %3519 = fadd fast float %3516, -5.000000e-01
  %3520 = fadd fast float %3517, -5.000000e-01
  %3521 = fadd fast float %3518, -5.000000e-01
  %3522 = fmul fast float %3519, %3468
  %3523 = fmul fast float %3520, %3468
  %3524 = fmul fast float %3521, %3468
  %3525 = fadd fast float %3522, 5.000000e-01
  %3526 = fadd fast float %3523, 5.000000e-01
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fmul fast float %3525, 2.000000e+00
  %3529 = fsub fast float 1.000000e+00, %3528
  %3530 = fmul fast float %3529, %3455
  %3531 = fadd fast float %3530, %3528
  %3532 = fmul fast float %3531, %3455
  %3533 = fmul fast float %3526, 2.000000e+00
  %3534 = fsub fast float 1.000000e+00, %3533
  %3535 = fmul fast float %3534, %3456
  %3536 = fadd fast float %3535, %3533
  %3537 = fmul fast float %3536, %3456
  %3538 = fmul fast float %3527, 2.000000e+00
  %3539 = fsub fast float 1.000000e+00, %3538
  %3540 = fmul fast float %3539, %3457
  %3541 = fadd fast float %3540, %3538
  %3542 = fmul fast float %3541, %3457
  br label %3543

; <label>:3543                                    ; preds = %3515, %3513, %3500, %3470, %3454
  %3544 = phi float [ %3455, %3454 ], [ %3532, %3515 ], [ %3455, %3513 ], [ %3510, %3500 ], [ %3480, %3470 ]
  %3545 = phi float [ %3456, %3454 ], [ %3537, %3515 ], [ %3456, %3513 ], [ %3511, %3500 ], [ %3481, %3470 ]
  %3546 = phi float [ %3457, %3454 ], [ %3542, %3515 ], [ %3457, %3513 ], [ %3512, %3500 ], [ %3482, %3470 ]
  %3547 = phi float [ %3458, %3454 ], [ %3458, %3515 ], [ %3458, %3513 ], [ %3458, %3500 ], [ %3492, %3470 ]
  %3548 = phi float [ %3459, %3454 ], [ %3459, %3515 ], [ %3459, %3513 ], [ %3459, %3500 ], [ %3493, %3470 ]
  %3549 = phi float [ %3460, %3454 ], [ %3460, %3515 ], [ %3460, %3513 ], [ %3460, %3500 ], [ %3494, %3470 ]
  %3550 = phi float [ %2898, %3454 ], [ %2898, %3515 ], [ %2898, %3513 ], [ %2898, %3500 ], [ %3485, %3470 ]
  %3551 = phi float [ %2901, %3454 ], [ %2901, %3515 ], [ %2901, %3513 ], [ %2901, %3500 ], [ %3497, %3470 ]
  %3552 = and i32 %3462, 12
  %3553 = icmp eq i32 %3552, 12
  br i1 %3553, label %3626, label %3554

; <label>:3554                                    ; preds = %3543
  %3555 = and i32 %3462, 2097184
  %3556 = icmp eq i32 %3555, 2097184
  %3557 = select i1 %3556, float %3082, float 0.000000e+00
  %3558 = and i32 %3462, 4194336
  %3559 = icmp eq i32 %3558, 4194336
  %3560 = select i1 %3559, float %3082, float 0.000000e+00
  %3561 = and i32 %3462, 8388640
  %3562 = icmp eq i32 %3561, 8388640
  %3563 = select i1 %3562, float %3082, float 0.000000e+00
  %3564 = icmp eq i32 %3552, 0
  br i1 %3564, label %3565, label %3578

; <label>:3565                                    ; preds = %3554
  %3566 = fsub fast float %3383, %2890
  %3567 = fsub fast float %3384, %2891
  %3568 = fmul fast float %3557, %3566
  %3569 = fmul fast float %3557, %3567
  %3570 = fadd fast float %3568, %2890
  %3571 = fadd fast float %3569, %2891
  %3572 = fsub fast float %3385, %2900
  %3573 = fmul fast float %3560, %3572
  %3574 = fadd fast float %3573, %2900
  %3575 = fsub fast float %3382, %2899
  %3576 = fmul fast float %3563, %3575
  %3577 = fadd fast float %3576, %2899
  br label %3626

; <label>:3578                                    ; preds = %3554
  %3579 = icmp eq i32 %3552, 4
  br i1 %3579, label %3580, label %3612

; <label>:3580                                    ; preds = %3578
  %3581 = fmul fast float %3557, %3383
  %3582 = fmul fast float %3557, %3384
  %3583 = fadd fast float %3581, %2890
  %3584 = fadd fast float %3582, %2891
  %3585 = call float @dx.op.binary.f32(i32 36, float %2900, float %3385)  ; FMin(a,b)
  %3586 = fsub fast float %3585, %2900
  %3587 = fmul fast float %3586, %3560
  %3588 = fadd fast float %3587, %2900
  %3589 = fadd fast float %3382, %2899
  %3590 = fmul fast float %3589, 0x3FF337FAE0000000
  %3591 = fmul fast float %2899, %2899
  %3592 = fmul fast float %3382, %3382
  %3593 = fadd fast float %3592, %3591
  %3594 = fmul fast float %3593, 0x3FE5152B00000000
  %3595 = fmul fast float %2899, 0xBFCC1F85E0000000
  %3596 = fmul fast float %3595, %3382
  %3597 = fadd fast float %3596, 0xBFE1363700000000
  %3598 = fadd fast float %3597, %3590
  %3599 = fsub fast float %3598, %3594
  %3600 = fmul fast float %3589, 0x3FBA6F0D00000000
  %3601 = fmul fast float %3593, 0x3FD0432880000000
  %3602 = fmul fast float %2899, 0xBFEF110800000000
  %3603 = fmul fast float %3602, %3382
  %3604 = fadd fast float %3603, 1.000000e+00
  %3605 = fsub fast float %3604, %3600
  %3606 = fadd fast float %3605, %3601
  %3607 = fdiv fast float %3599, %3606
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fsub fast float %3608, %2899
  %3610 = fmul fast float %3609, %3563
  %3611 = fadd fast float %3610, %2899
  br label %3626

; <label>:3612                                    ; preds = %3578
  %3613 = icmp eq i32 %3552, 8
  br i1 %3613, label %3614, label %3626

; <label>:3614                                    ; preds = %3612
  %3615 = fmul fast float %3557, %3383
  %3616 = fmul fast float %3557, %3384
  %3617 = fadd fast float %3615, %2890
  %3618 = fadd fast float %3616, %2891
  %3619 = call float @dx.op.binary.f32(i32 36, float %2900, float %3385)  ; FMin(a,b)
  %3620 = fsub fast float %3619, %2900
  %3621 = fmul fast float %3620, %3560
  %3622 = fadd fast float %3621, %2900
  %3623 = fsub fast float %3382, %2899
  %3624 = fmul fast float %3563, %3623
  %3625 = fadd fast float %3624, %2899
  br label %3626

; <label>:3626                                    ; preds = %3614, %3612, %3580, %3565, %3543, %3081, %2902, %2889
  %3627 = phi float [ %2890, %3543 ], [ %2890, %3081 ], [ %2890, %2889 ], [ %2890, %2902 ], [ %3570, %3565 ], [ %3583, %3580 ], [ %2890, %3612 ], [ %3617, %3614 ]
  %3628 = phi float [ %2891, %3543 ], [ %2891, %3081 ], [ %2891, %2889 ], [ %2891, %2902 ], [ %3571, %3565 ], [ %3584, %3580 ], [ %2891, %3612 ], [ %3618, %3614 ]
  %3629 = phi float [ %3544, %3543 ], [ %2892, %3081 ], [ %2892, %2889 ], [ %2892, %2902 ], [ %3544, %3565 ], [ %3544, %3580 ], [ %3544, %3612 ], [ %3544, %3614 ]
  %3630 = phi float [ %3545, %3543 ], [ %2893, %3081 ], [ %2893, %2889 ], [ %2893, %2902 ], [ %3545, %3565 ], [ %3545, %3580 ], [ %3545, %3612 ], [ %3545, %3614 ]
  %3631 = phi float [ %3546, %3543 ], [ %2894, %3081 ], [ %2894, %2889 ], [ %2894, %2902 ], [ %3546, %3565 ], [ %3546, %3580 ], [ %3546, %3612 ], [ %3546, %3614 ]
  %3632 = phi float [ %3547, %3543 ], [ %2895, %3081 ], [ %2895, %2889 ], [ %2895, %2902 ], [ %3547, %3565 ], [ %3547, %3580 ], [ %3547, %3612 ], [ %3547, %3614 ]
  %3633 = phi float [ %3548, %3543 ], [ %2896, %3081 ], [ %2896, %2889 ], [ %2896, %2902 ], [ %3548, %3565 ], [ %3548, %3580 ], [ %3548, %3612 ], [ %3548, %3614 ]
  %3634 = phi float [ %3549, %3543 ], [ %2897, %3081 ], [ %2897, %2889 ], [ %2897, %2902 ], [ %3549, %3565 ], [ %3549, %3580 ], [ %3549, %3612 ], [ %3549, %3614 ]
  %3635 = phi float [ %3550, %3543 ], [ %2898, %3081 ], [ %2898, %2889 ], [ %2898, %2902 ], [ %3550, %3565 ], [ %3550, %3580 ], [ %3550, %3612 ], [ %3550, %3614 ]
  %3636 = phi float [ %2899, %3543 ], [ %2899, %3081 ], [ %2899, %2889 ], [ %2899, %2902 ], [ %3577, %3565 ], [ %3611, %3580 ], [ %2899, %3612 ], [ %3625, %3614 ]
  %3637 = phi float [ %2900, %3543 ], [ %2900, %3081 ], [ %2900, %2889 ], [ %2900, %2902 ], [ %3574, %3565 ], [ %3588, %3580 ], [ %2900, %3612 ], [ %3622, %3614 ]
  %3638 = phi float [ %3551, %3543 ], [ %2901, %3081 ], [ %2901, %2889 ], [ %2901, %2902 ], [ %3551, %3565 ], [ %3551, %3580 ], [ %3551, %3612 ], [ %3551, %3614 ]
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = call float @dx.op.dot2.f32(i32 54, float %3627, float %3628, float %3627, float %3628)  ; Dot2(ax,ay,bx,by)
  %3642 = fmul fast float %3641, 0x3FE3333340000000
  %3643 = fsub fast float 1.000000e+00, %3642
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3627, float %3628, float %3643, float %3627, float %3628, float %3643)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = call float @dx.op.unary.f32(i32 25, float %3644)  ; Rsqrt(value)
  %3646 = fmul fast float %3645, %3627
  %3647 = fmul fast float %3645, %3628
  %3648 = fmul fast float %3643, %3645
  %3649 = fmul fast float %3648, %113
  %3650 = fmul fast float %3648, %114
  %3651 = fmul fast float %3648, %115
  %3652 = fmul fast float %3646, %81
  %3653 = fmul fast float %3646, %82
  %3654 = fmul fast float %3646, %83
  %3655 = fadd fast float %3649, %3652
  %3656 = fadd fast float %3650, %3653
  %3657 = fadd fast float %3651, %3654
  %3658 = fmul fast float %125, %3647
  %3659 = fmul fast float %126, %3647
  %3660 = fmul fast float %127, %3647
  %3661 = fadd fast float %3655, %3658
  %3662 = fadd fast float %3656, %3659
  %3663 = fadd fast float %3657, %3660
  %3664 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3665 = call float @dx.op.unary.f32(i32 25, float %3664)  ; Rsqrt(value)
  %3666 = fmul fast float %3661, %3665
  %3667 = fmul fast float %3662, %3665
  %3668 = fmul fast float %3663, %3665
  %3669 = icmp eq i32 %57, 65535
  br i1 %3669, label %4188, label %3670

; <label>:3670                                    ; preds = %3626
  %3671 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3672 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3673 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3674 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3675 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3676 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3677 = fadd fast float %3671, %58
  %3678 = fadd fast float %3672, %59
  %3679 = fadd fast float %3673, %60
  %3680 = fadd fast float %3674, %58
  %3681 = fadd fast float %3675, %59
  %3682 = fadd fast float %3676, %60
  %3683 = mul i32 %57, 48
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = add i32 %3683, 16
  %3689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3693 = add i32 %3683, 32
  %3694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3697 = extractvalue %dx.types.ResRet.f32 %3694, 2
  %3698 = extractvalue %dx.types.ResRet.f32 %3694, 3
  %3699 = bitcast float %3698 to i32
  %3700 = fmul fast float %3685, %58
  %3701 = fmul fast float %3686, %59
  %3702 = fmul fast float %3687, %60
  %3703 = fsub fast float %3700, %3690
  %3704 = fsub fast float %3701, %3691
  %3705 = fsub fast float %3702, %3692
  %3706 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3707 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3708 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3709 = fmul fast float %3706, %3695
  %3710 = fmul fast float %3707, %3696
  %3711 = fmul fast float %3708, %3697
  %3712 = fadd fast float %3695, -1.000000e+00
  %3713 = fadd fast float %3696, -1.000000e+00
  %3714 = fadd fast float %3697, -1.000000e+00
  %3715 = call float @dx.op.unary.f32(i32 27, float %3709)  ; Round_ni(value)
  %3716 = call float @dx.op.unary.f32(i32 27, float %3710)  ; Round_ni(value)
  %3717 = call float @dx.op.unary.f32(i32 27, float %3711)  ; Round_ni(value)
  %3718 = call float @dx.op.binary.f32(i32 36, float %3715, float %3712)  ; FMin(a,b)
  %3719 = call float @dx.op.binary.f32(i32 36, float %3716, float %3713)  ; FMin(a,b)
  %3720 = call float @dx.op.binary.f32(i32 36, float %3717, float %3714)  ; FMin(a,b)
  %3721 = fmul fast float %3720, %3696
  %3722 = fadd fast float %3721, %3719
  %3723 = fmul fast float %3722, %3695
  %3724 = fadd fast float %3723, %3718
  %3725 = fptosi float %3724 to i32
  %3726 = add nsw i32 %3725, %3699
  %3727 = shl nsw i32 %3726, 2
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = lshr i32 %3729, 16
  %3731 = icmp eq i32 %3730, 0
  br i1 %3731, label %4156, label %3732

; <label>:3732                                    ; preds = %3670
  br label %3733

; <label>:3733                                    ; preds = %3855, %3732
  %3734 = phi i32 [ %3757, %3855 ], [ %3730, %3732 ]
  %3735 = phi float [ %3856, %3855 ], [ 0.000000e+00, %3732 ]
  %3736 = phi float [ %3857, %3855 ], [ %1424, %3732 ]
  %3737 = phi float [ %3858, %3855 ], [ %3640, %3732 ]
  %3738 = phi float [ %3859, %3855 ], [ %3638, %3732 ]
  %3739 = phi float [ %3860, %3855 ], [ 0.000000e+00, %3732 ]
  %3740 = phi float [ %3861, %3855 ], [ 0.000000e+00, %3732 ]
  %3741 = phi float [ %3862, %3855 ], [ %3632, %3732 ]
  %3742 = phi float [ %3863, %3855 ], [ %3633, %3732 ]
  %3743 = phi float [ %3864, %3855 ], [ %3634, %3732 ]
  %3744 = phi float [ %3865, %3855 ], [ %3666, %3732 ]
  %3745 = phi float [ %3866, %3855 ], [ %3667, %3732 ]
  %3746 = phi float [ %3867, %3855 ], [ %3668, %3732 ]
  %3747 = phi float [ %3868, %3855 ], [ %3637, %3732 ]
  %3748 = phi float [ %3869, %3855 ], [ %3636, %3732 ]
  %3749 = phi float [ %3870, %3855 ], [ 0.000000e+00, %3732 ]
  %3750 = phi float [ %3871, %3855 ], [ %3635, %3732 ]
  %3751 = phi float [ %3872, %3855 ], [ %3629, %3732 ]
  %3752 = phi float [ %3873, %3855 ], [ %3630, %3732 ]
  %3753 = phi float [ %3874, %3855 ], [ %3631, %3732 ]
  %3754 = shl nuw nsw i32 %3734, 2
  %3755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.i32 %3755, 0
  %3757 = lshr i32 %3756, 16
  %3758 = shl i32 %3756, 8
  %3759 = and i32 %3758, 16776960
  %3760 = or i32 %3759, 48
  %3761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = or i32 %3759, 64
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.i32 %3766, 1
  %3769 = or i32 %3759, 80
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3773 = or i32 %3759, 96
  %3774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = or i32 %3759, 112
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3782 = or i32 %3759, 128
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = extractvalue %dx.types.ResRet.f32 %3783, 3
  %3788 = or i32 %3759, 144
  %3789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = or i32 %3759, 160
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = or i32 %3759, 192
  %3801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.i32 %3801, 0
  %3803 = or i32 %3759, 208
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = or i32 %3759, 248
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = call float @dx.op.dot4.f32(i32 56, float %3811, float %3812, float %3813, float %3814, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3816 = or i32 %3759, 16
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = call float @dx.op.dot4.f32(i32 56, float %3818, float %3819, float %3820, float %3821, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3823 = or i32 %3759, 32
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = call float @dx.op.dot4.f32(i32 56, float %3825, float %3826, float %3827, float %3828, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3830 = call float @dx.op.unary.f32(i32 27, float %3815)  ; Round_ni(value)
  %3831 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3832 = call float @dx.op.unary.f32(i32 27, float %3822)  ; Round_ni(value)
  %3833 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3834 = call float @dx.op.unary.f32(i32 6, float %3829)  ; FAbs(value)
  %3835 = call float @dx.op.unary.f32(i32 27, float %3834)  ; Round_ni(value)
  %3836 = fadd fast float %3833, %3831
  %3837 = fadd fast float %3836, %3835
  %3838 = fcmp fast oeq float %3837, 0.000000e+00
  %3839 = call float @dx.op.dot4.f32(i32 56, float %3811, float %3812, float %3813, float %3814, float %3677, float %3678, float %3679, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3840 = call float @dx.op.dot4.f32(i32 56, float %3818, float %3819, float %3820, float %3821, float %3677, float %3678, float %3679, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3841 = call float @dx.op.dot4.f32(i32 56, float %3811, float %3812, float %3813, float %3814, float %3680, float %3681, float %3682, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3842 = call float @dx.op.dot4.f32(i32 56, float %3818, float %3819, float %3820, float %3821, float %3680, float %3681, float %3682, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3843 = fsub fast float %3839, %3815
  %3844 = fsub fast float %3841, %3815
  %3845 = fsub fast float %3840, %3822
  %3846 = fsub fast float %3842, %3822
  %3847 = call float @dx.op.dot3.f32(i32 55, float %3762, float %3763, float %3764, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 2
  %3850 = fadd fast float %3849, %3847
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3853 = fcmp fast ogt float %3851, %3852
  %3854 = and i1 %3838, %3853
  br i1 %3854, label %3876, label %3855

; <label>:3855                                    ; preds = %4142, %3959, %3876, %3733
  %3856 = phi float [ %3735, %3876 ], [ %3962, %3959 ], [ %3962, %4142 ], [ %3735, %3733 ]
  %3857 = phi float [ %3736, %3876 ], [ %3736, %3959 ], [ %4117, %4142 ], [ %3736, %3733 ]
  %3858 = phi float [ %3737, %3876 ], [ %3737, %3959 ], [ %4116, %4142 ], [ %3737, %3733 ]
  %3859 = phi float [ %3738, %3876 ], [ %3738, %3959 ], [ %4114, %4142 ], [ %3738, %3733 ]
  %3860 = phi float [ %3739, %3876 ], [ %3739, %3959 ], [ %4086, %4142 ], [ %3739, %3733 ]
  %3861 = phi float [ %3740, %3876 ], [ %3740, %3959 ], [ %4084, %4142 ], [ %3740, %3733 ]
  %3862 = phi float [ %3741, %3876 ], [ %3741, %3959 ], [ %4152, %4142 ], [ %3741, %3733 ]
  %3863 = phi float [ %3742, %3876 ], [ %3742, %3959 ], [ %4153, %4142 ], [ %3742, %3733 ]
  %3864 = phi float [ %3743, %3876 ], [ %3743, %3959 ], [ %4154, %4142 ], [ %3743, %3733 ]
  %3865 = phi float [ %3744, %3876 ], [ %3744, %3959 ], [ %4065, %4142 ], [ %3744, %3733 ]
  %3866 = phi float [ %3745, %3876 ], [ %3745, %3959 ], [ %4066, %4142 ], [ %3745, %3733 ]
  %3867 = phi float [ %3746, %3876 ], [ %3746, %3959 ], [ %4067, %4142 ], [ %3746, %3733 ]
  %3868 = phi float [ %3747, %3876 ], [ %3747, %3959 ], [ %4094, %4142 ], [ %3747, %3733 ]
  %3869 = phi float [ %3748, %3876 ], [ %3748, %3959 ], [ %4091, %4142 ], [ %3748, %3733 ]
  %3870 = phi float [ %3749, %3876 ], [ %3749, %3959 ], [ %4088, %4142 ], [ %3749, %3733 ]
  %3871 = phi float [ %3750, %3876 ], [ %3750, %3959 ], [ %4082, %4142 ], [ %3750, %3733 ]
  %3872 = phi float [ %3751, %3876 ], [ %3751, %3959 ], [ %4077, %4142 ], [ %3751, %3733 ]
  %3873 = phi float [ %3752, %3876 ], [ %3752, %3959 ], [ %4078, %4142 ], [ %3752, %3733 ]
  %3874 = phi float [ %3753, %3876 ], [ %3753, %3959 ], [ %4079, %4142 ], [ %3753, %3733 ]
  %3875 = icmp eq i32 %3757, 0
  br i1 %3875, label %4155, label %3733

; <label>:3876                                    ; preds = %3733
  %3877 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3878 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3879 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3880 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3883 = extractvalue %dx.types.ResRet.i32 %3766, 3
  %3884 = extractvalue %dx.types.ResRet.i32 %3766, 2
  %3885 = bitcast float %3877 to i32
  %3886 = add i32 %3883, 0
  %3887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3886, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3887, %dx.types.Handle %3888, float %3815, float %3822, float undef, float undef, i32 0, i32 0, i32 undef, float %3843, float %3845, float undef, float %3844, float %3846, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = fmul fast float %3890, %3882
  %3892 = fadd fast float %3891, %3881
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fmul fast float %3815, %3775
  %3895 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3822, float %3894)  ; FMad(a,b,c)
  %3896 = fadd fast float %3895, %3880
  %3897 = fmul fast float %3815, %3777
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3822, float %3897)  ; FMad(a,b,c)
  %3899 = fadd fast float %3898, %3879
  %3900 = fmul fast float %3843, %3775
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3845, float %3900)  ; FMad(a,b,c)
  %3902 = fmul fast float %3843, %3777
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3845, float %3902)  ; FMad(a,b,c)
  %3904 = fmul fast float %3844, %3775
  %3905 = call float @dx.op.tertiary.f32(i32 46, float %3776, float %3846, float %3904)  ; FMad(a,b,c)
  %3906 = fmul fast float %3844, %3777
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3846, float %3906)  ; FMad(a,b,c)
  %3908 = add i32 %3884, 0
  %3909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3908, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3910 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3909, %dx.types.Handle %3888, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = and i32 %3885, 1024
  %3913 = icmp ne i32 %3912, 0
  %3914 = fcmp fast ogt float %3911, 0x3FE0101020000000
  %3915 = uitofp i1 %3914 to float
  %3916 = select i1 %3913, float %3915, float %3911
  %3917 = and i32 %3885, 8192
  %3918 = icmp ne i32 %3917, 0
  %3919 = select i1 %3918, float %3878, float 1.000000e+00
  %3920 = fmul fast float %3815, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = call float @dx.op.unary.f32(i32 6, float %3921)  ; FAbs(value)
  %3923 = fmul fast float %3922, %3808
  %3924 = fsub fast float %3923, %3808
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = fmul fast float %3822, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3929 = fmul fast float %3928, %3809
  %3930 = fsub fast float %3929, %3809
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3834, %3771
  %3933 = fsub fast float %3932, %3771
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fmul fast float %3893, %3919
  %3936 = fmul fast float %3935, %3890
  %3937 = fmul fast float %3936, %3925
  %3938 = fmul fast float %3937, %3916
  %3939 = fmul fast float %3938, %3931
  %3940 = fmul fast float %3939, %3934
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3944 = fsub fast float %3851, %3943
  %3945 = fmul fast float %3944, %3942
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fmul fast float %3940, %3772
  %3948 = fadd fast float %3940, %3772
  %3949 = fmul fast float %3948, %3781
  %3950 = fsub fast float %3949, %3781
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = and i32 %3885, 128
  %3953 = icmp ne i32 %3952, 0
  %3954 = select i1 %3953, float %3951, float %3947
  %3955 = fmul fast float %3954, %3946
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = fcmp fast ugt float %3955, %3957
  br i1 %3958, label %3959, label %3855

; <label>:3959                                    ; preds = %3876
  %3960 = select i1 %3918, float %3955, float 0.000000e+00
  %3961 = fadd fast float %3960, %3735
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  br i1 %3918, label %3855, label %3963

; <label>:3963                                    ; preds = %3959
  %3964 = and i32 %3885, 4
  %3965 = and i32 %3885, 8
  %3966 = add i32 %3767, 0
  %3967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3967, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = bitcast float %3793 to i32
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3974, 8
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3973, %3976
  %3981 = fadd fast float %3980, %3979
  %3982 = fmul fast float %3981, 0x3F70101000000000
  %3983 = add i32 %3768, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3983, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3984, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = extractvalue %dx.types.ResRet.f32 %3985, 3
  %3990 = bitcast float %3787 to i32
  %3991 = and i32 %3990, 255
  %3992 = uitofp i32 %3991 to float
  %3993 = lshr i32 %3990, 8
  %3994 = and i32 %3993, 255
  %3995 = uitofp i32 %3994 to float
  %3996 = lshr i32 %3990, 16
  %3997 = and i32 %3996, 255
  %3998 = uitofp i32 %3997 to float
  %3999 = fmul fast float %3998, 0x3F70101000000000
  %4000 = fmul fast float %3986, %3992
  %4001 = fadd fast float %4000, %3995
  %4002 = fmul fast float %4001, 0x3F70101000000000
  %4003 = fadd fast float %3987, -5.000000e-01
  %4004 = fadd fast float %3989, -5.000000e-01
  %4005 = fmul fast float %4003, %3999
  %4006 = fmul fast float %4004, %3999
  %4007 = fadd fast float %4005, 5.000000e-01
  %4008 = fadd fast float %4006, 5.000000e-01
  %4009 = fmul fast float %3970, %3796
  %4010 = fmul fast float %3971, %3797
  %4011 = fmul fast float %3972, %3798
  %4012 = fmul fast float %4007, 2.000000e+00
  %4013 = fadd fast float %4012, -1.000000e+00
  %4014 = fmul fast float %4008, 2.000000e+00
  %4015 = fadd fast float %4014, -1.000000e+00
  %4016 = fadd fast float %4013, %4015
  %4017 = fmul fast float %4016, 5.000000e-01
  %4018 = fsub fast float %4013, %4015
  %4019 = fmul fast float %4018, 5.000000e-01
  %4020 = call float @dx.op.unary.f32(i32 6, float %4017)  ; FAbs(value)
  %4021 = fsub fast float 1.000000e+00, %4020
  %4022 = call float @dx.op.unary.f32(i32 6, float %4019)  ; FAbs(value)
  %4023 = fsub fast float %4021, %4022
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4019, float %4023, float %4017, float %4019, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4017, %4025
  %4027 = fmul fast float %4019, %4025
  %4028 = fmul fast float %4025, %4023
  %4029 = fmul fast float %4028, %3762
  %4030 = fmul fast float %4028, %3763
  %4031 = fmul fast float %4028, %3764
  %4032 = fmul fast float %4026, %3784
  %4033 = fmul fast float %4026, %3785
  %4034 = fmul fast float %4026, %3786
  %4035 = fadd fast float %4032, %4029
  %4036 = fadd fast float %4033, %4030
  %4037 = fadd fast float %4034, %4031
  %4038 = fmul fast float %4027, %3790
  %4039 = fmul fast float %4027, %3791
  %4040 = fmul fast float %4027, %3792
  %4041 = fadd fast float %4035, %4038
  %4042 = fadd fast float %4036, %4039
  %4043 = fadd fast float %4037, %4040
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4041, float %4042, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = call float @dx.op.unary.f32(i32 25, float %4044)  ; Rsqrt(value)
  %4046 = fmul fast float %4041, %4045
  %4047 = fmul fast float %4042, %4045
  %4048 = fmul fast float %4043, %4045
  %4049 = icmp ne i32 %3965, 0
  %4050 = select i1 %4049, float 1.000000e+00, float 0.000000e+00
  %4051 = fmul fast float %3955, %4050
  %4052 = and i32 %3885, 1
  %4053 = icmp eq i32 %4052, 0
  br i1 %4053, label %4054, label %4058

; <label>:4054                                    ; preds = %3963
  %4055 = fsub fast float %4046, %3744
  %4056 = fsub fast float %4047, %3745
  %4057 = fsub fast float %4048, %3746
  br label %4058

; <label>:4058                                    ; preds = %4054, %3963
  %4059 = phi float [ %4055, %4054 ], [ %4046, %3963 ]
  %4060 = phi float [ %4056, %4054 ], [ %4047, %3963 ]
  %4061 = phi float [ %4057, %4054 ], [ %4048, %3963 ]
  %4062 = fmul float %4061, %4051
  %4063 = fmul float %4060, %4051
  %4064 = fmul float %4059, %4051
  %4065 = fadd fast float %4064, %3744
  %4066 = fadd fast float %4063, %3745
  %4067 = fadd fast float %4062, %3746
  %4068 = icmp ne i32 %3964, 0
  %4069 = select i1 %4068, float 1.000000e+00, float 0.000000e+00
  %4070 = fmul fast float %3955, %4069
  %4071 = fsub fast float %4009, %3751
  %4072 = fsub fast float %4010, %3752
  %4073 = fsub fast float %4011, %3753
  %4074 = fmul fast float %4071, %4070
  %4075 = fmul fast float %4072, %4070
  %4076 = fmul fast float %4073, %4070
  %4077 = fadd fast float %4074, %3751
  %4078 = fadd fast float %4075, %3752
  %4079 = fadd fast float %4076, %3753
  %4080 = fsub fast float %3982, %3750
  %4081 = fmul fast float %4080, %4070
  %4082 = fadd fast float %4081, %3750
  %4083 = fmul fast float %4070, %3740
  %4084 = fsub fast float %3740, %4083
  %4085 = fmul fast float %4070, %3739
  %4086 = fsub fast float %3739, %4085
  %4087 = fadd fast float %3955, %3749
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = fsub fast float %4002, %3748
  %4090 = fmul fast float %4089, %4051
  %4091 = fadd fast float %4090, %3748
  %4092 = fsub fast float %3988, %3747
  %4093 = fmul fast float %4092, %4051
  %4094 = fadd fast float %4093, %3747
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4010, float %4011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = fmul fast float %4098, %4095
  %4100 = fadd fast float %4099, %4097
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = bitcast float %3799 to i32
  %4103 = and i32 %4102, 65535
  %4104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4103)  ; LegacyF16ToF32(value)
  %4105 = lshr i32 %4102, 16
  %4106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4105)  ; LegacyF16ToF32(value)
  %4107 = fcmp fast oge float %4104, 0.000000e+00
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = select i1 %4107, float %4104, float %4109
  %4111 = fadd fast float %4110, %4106
  %4112 = fsub fast float %4101, %3738
  %4113 = fmul fast float %4112, %3955
  %4114 = fadd fast float %4113, %3738
  %4115 = fmul fast float %4111, %3955
  %4116 = call float @dx.op.binary.f32(i32 35, float %3737, float %4115)  ; FMax(a,b)
  %4117 = call float @dx.op.binary.f32(i32 35, float %3736, float %3955)  ; FMax(a,b)
  %4118 = and i32 %3885, 16
  %4119 = icmp eq i32 %4118, 0
  br i1 %4119, label %4142, label %4120

; <label>:4120                                    ; preds = %4058
  %4121 = bitcast float %3805 to i32
  %4122 = add i32 %3802, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4123, %dx.types.Handle %3968, float %3896, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = and i32 %4121, 65535
  %4129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4128)  ; LegacyF16ToF32(value)
  %4130 = fmul fast float %4125, %3796
  %4131 = fmul fast float %4126, %3797
  %4132 = fmul fast float %4127, %3798
  %4133 = and i32 %3885, 16384
  %4134 = icmp ne i32 %4133, 0
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = select i1 %4134, float %4136, float 1.000000e+00
  %4138 = fmul fast float %4137, %4129
  %4139 = fmul fast float %4130, %4138
  %4140 = fmul fast float %4131, %4138
  %4141 = fmul fast float %4132, %4138
  br label %4142

; <label>:4142                                    ; preds = %4120, %4058
  %4143 = phi float [ %4139, %4120 ], [ 0.000000e+00, %4058 ]
  %4144 = phi float [ %4140, %4120 ], [ 0.000000e+00, %4058 ]
  %4145 = phi float [ %4141, %4120 ], [ 0.000000e+00, %4058 ]
  %4146 = fsub fast float %4143, %3741
  %4147 = fsub fast float %4144, %3742
  %4148 = fsub fast float %4145, %3743
  %4149 = fmul fast float %4146, %3955
  %4150 = fmul fast float %4147, %3955
  %4151 = fmul fast float %4148, %3955
  %4152 = fadd fast float %4149, %3741
  %4153 = fadd fast float %4150, %3742
  %4154 = fadd fast float %4151, %3743
  br label %3855

; <label>:4155                                    ; preds = %3855
  br label %4156

; <label>:4156                                    ; preds = %4155, %3670
  %4157 = phi float [ 0.000000e+00, %3670 ], [ %3856, %4155 ]
  %4158 = phi float [ %1424, %3670 ], [ %3857, %4155 ]
  %4159 = phi float [ %3640, %3670 ], [ %3858, %4155 ]
  %4160 = phi float [ %3638, %3670 ], [ %3859, %4155 ]
  %4161 = phi float [ 0.000000e+00, %3670 ], [ %3860, %4155 ]
  %4162 = phi float [ 0.000000e+00, %3670 ], [ %3861, %4155 ]
  %4163 = phi float [ %3632, %3670 ], [ %3862, %4155 ]
  %4164 = phi float [ %3633, %3670 ], [ %3863, %4155 ]
  %4165 = phi float [ %3634, %3670 ], [ %3864, %4155 ]
  %4166 = phi float [ %3666, %3670 ], [ %3865, %4155 ]
  %4167 = phi float [ %3667, %3670 ], [ %3866, %4155 ]
  %4168 = phi float [ %3668, %3670 ], [ %3867, %4155 ]
  %4169 = phi float [ %3637, %3670 ], [ %3868, %4155 ]
  %4170 = phi float [ %3636, %3670 ], [ %3869, %4155 ]
  %4171 = phi float [ 0.000000e+00, %3670 ], [ %3870, %4155 ]
  %4172 = phi float [ %3635, %3670 ], [ %3871, %4155 ]
  %4173 = phi float [ %3629, %3670 ], [ %3872, %4155 ]
  %4174 = phi float [ %3630, %3670 ], [ %3873, %4155 ]
  %4175 = phi float [ %3631, %3670 ], [ %3874, %4155 ]
  %4176 = call float @dx.op.dot3.f32(i32 55, float %4166, float %4167, float %4168, float %4166, float %4167, float %4168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = call float @dx.op.unary.f32(i32 25, float %4176)  ; Rsqrt(value)
  %4178 = fmul fast float %4177, %4166
  %4179 = fmul fast float %4177, %4167
  %4180 = fmul fast float %4177, %4168
  %4181 = fadd fast float %4171, %1424
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4179, float %4180, float %4178, float %4179, float %4180)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = call float @dx.op.unary.f32(i32 25, float %4183)  ; Rsqrt(value)
  %4185 = fmul fast float %4184, %4178
  %4186 = fmul fast float %4184, %4179
  %4187 = fmul fast float %4184, %4180
  br label %4188

; <label>:4188                                    ; preds = %4156, %3626
  %4189 = phi float [ %4185, %4156 ], [ %3666, %3626 ]
  %4190 = phi float [ %4186, %4156 ], [ %3667, %3626 ]
  %4191 = phi float [ %4187, %4156 ], [ %3668, %3626 ]
  %4192 = phi float [ %4173, %4156 ], [ %3629, %3626 ]
  %4193 = phi float [ %4174, %4156 ], [ %3630, %3626 ]
  %4194 = phi float [ %4175, %4156 ], [ %3631, %3626 ]
  %4195 = phi float [ %4163, %4156 ], [ %3632, %3626 ]
  %4196 = phi float [ %4164, %4156 ], [ %3633, %3626 ]
  %4197 = phi float [ %4165, %4156 ], [ %3634, %3626 ]
  %4198 = phi float [ %4172, %4156 ], [ %3635, %3626 ]
  %4199 = phi float [ %4182, %4156 ], [ %1424, %3626 ]
  %4200 = phi float [ %4170, %4156 ], [ %3636, %3626 ]
  %4201 = phi float [ %4169, %4156 ], [ %3637, %3626 ]
  %4202 = phi float [ %4162, %4156 ], [ 0.000000e+00, %3626 ]
  %4203 = phi float [ %4161, %4156 ], [ 0.000000e+00, %3626 ]
  %4204 = phi float [ %4157, %4156 ], [ 0.000000e+00, %3626 ]
  %4205 = phi float [ %4159, %4156 ], [ %3640, %3626 ]
  %4206 = phi float [ %4158, %4156 ], [ %1424, %3626 ]
  %4207 = phi float [ %4160, %4156 ], [ %3638, %3626 ]
  %4208 = fadd fast float %4198, 0xBFB99999A0000000
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = fmul fast float %4209, 0x3FF1C71C80000000
  %4211 = call float @dx.op.binary.f32(i32 36, float %4198, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4212 = fsub fast float 1.000000e+00, %4210
  %4213 = call float @dx.op.unary.f32(i32 7, float %4212)  ; Saturate(value)
  %4214 = fmul fast float %4213, %4192
  %4215 = fmul fast float %4213, %4193
  %4216 = fmul fast float %4213, %4194
  %4217 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4218 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = fmul fast float %4210, %4192
  %4221 = fmul fast float %4210, %4193
  %4222 = fmul fast float %4210, %4194
  %4223 = fadd fast float %4220, %4211
  %4224 = fadd fast float %4221, %4211
  %4225 = fadd fast float %4222, %4211
  %4226 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.i32 %4230, 3
  %4232 = and i32 %4231, 8
  %4233 = icmp ne i32 %4232, 0
  %4234 = call float @dx.op.binary.f32(i32 35, float %4217, float %4192)  ; FMax(a,b)
  %4235 = call float @dx.op.binary.f32(i32 35, float %4218, float %4192)  ; FMax(a,b)
  %4236 = call float @dx.op.binary.f32(i32 35, float %4219, float %4192)  ; FMax(a,b)
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %4219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = select i1 %252, float %4192, float %4217
  %4239 = select i1 %252, float %4237, float %4218
  %4240 = select i1 %252, float 1.000000e+00, float %4219
  %4241 = select i1 %4233, float %4234, float %4238
  %4242 = select i1 %4233, float %4235, float %4239
  %4243 = select i1 %4233, float %4236, float %4240
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.CBufRet.f32 %4244, 2
  %4248 = fadd fast float %4245, %193
  %4249 = fadd fast float %4246, %194
  %4250 = fadd fast float %4247, %195
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.CBufRet.f32 %4251, 1
  %4254 = fsub fast float %4248, %4252
  %4255 = fsub fast float %4249, %4253
  %4256 = fmul fast float %4254, %4254
  %4257 = fmul fast float %4255, %4255
  %4258 = fadd fast float %4256, %4257
  %4259 = call float @dx.op.unary.f32(i32 24, float %4258)  ; Sqrt(value)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4251, 2
  %4261 = fcmp fast olt float %4259, %4260
  br i1 %4261, label %4262, label %4329

; <label>:4262                                    ; preds = %4188
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 0
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.f32 %4263, 1
  %4270 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4271 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4272 = extractvalue %dx.types.CBufRet.f32 %4263, 3
  %4273 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4274 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4275 = fadd fast float %4272, %4248
  %4276 = fadd fast float %4273, %4249
  %4277 = fadd fast float %4274, %4250
  %4278 = fmul fast float %4275, %4264
  %4279 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4266, float %4278)  ; FMad(a,b,c)
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4277, float %4268, float %4279)  ; FMad(a,b,c)
  %4281 = fmul fast float %4275, %4269
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4276, float %4270, float %4281)  ; FMad(a,b,c)
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4277, float %4271, float %4282)  ; FMad(a,b,c)
  %4284 = fsub fast float %4280, %4272
  %4285 = fsub fast float %4283, %4273
  %4286 = fsub fast float %4284, %4252
  %4287 = fadd fast float %4286, %4260
  %4288 = fsub fast float %4285, %4253
  %4289 = fadd fast float %4288, %4260
  %4290 = extractvalue %dx.types.CBufRet.f32 %4251, 3
  %4291 = fmul fast float %4287, %4290
  %4292 = fmul fast float %4289, %4290
  %4293 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = fsub fast float 1.000000e+00, %4293
  %4296 = fsub fast float 1.000000e+00, %4294
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = fcmp fast ugt float %4298, 0.000000e+00
  br i1 %4299, label %4300, label %4603

; <label>:4300                                    ; preds = %4262
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4303 = fmul fast float %4302, %4298
  %4304 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4305 = fadd fast float %4304, %4303
  %4306 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4307 = fadd fast float %4305, %4274
  %4308 = fmul fast float %4280, %4268
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4283, float %4271, float %4308)  ; FMad(a,b,c)
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4306, float %4309)  ; FMad(a,b,c)
  %4311 = fsub fast float %4310, %4274
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4314 = fsub fast float %4311, %4313
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.ResRet.f32 %4319, 1
  %4322 = extractvalue %dx.types.ResRet.f32 %4319, 2
  %4323 = fadd fast float %4320, %4316
  %4324 = fmul fast float %4323, 0x3F847AE140000000
  %4325 = fadd fast float %4321, %4317
  %4326 = fmul fast float %4325, 0x3F847AE140000000
  %4327 = fadd fast float %4322, %4318
  %4328 = fmul fast float %4327, 0x3F847AE140000000
  br label %4603

; <label>:4329                                    ; preds = %4188
  %4330 = and i32 %231, 1
  %4331 = icmp eq i32 %4330, 0
  br i1 %4331, label %4603, label %4332

; <label>:4332                                    ; preds = %4329
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4340 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4341 = extractvalue %dx.types.CBufRet.f32 %4337, 1
  %4342 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4343 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4344 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4345 = fadd fast float %4342, %4248
  %4346 = fadd fast float %4343, %4249
  %4347 = fadd fast float %4344, %4250
  %4348 = fmul fast float %4345, %4334
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4336, float %4348)  ; FMad(a,b,c)
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4338, float %4349)  ; FMad(a,b,c)
  %4351 = fmul fast float %4345, %4339
  %4352 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4340, float %4351)  ; FMad(a,b,c)
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4341, float %4352)  ; FMad(a,b,c)
  %4354 = fsub fast float %4350, %4342
  %4355 = fsub fast float %4353, %4343
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.CBufRet.f32 %4356, 2
  %4360 = extractvalue %dx.types.CBufRet.f32 %4356, 3
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 3
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 0
  %4365 = extractvalue %dx.types.CBufRet.i32 %4363, 1
  %4366 = udiv i32 %4365, %4364
  %4367 = fsub fast float %4354, %4357
  %4368 = fsub fast float %4355, %4358
  %4369 = call float @dx.op.binary.f32(i32 35, float %4367, float 0.000000e+00)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4368, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call float @dx.op.binary.f32(i32 36, float %4369, float %4359)  ; FMin(a,b)
  %4372 = call float @dx.op.binary.f32(i32 36, float %4370, float %4360)  ; FMin(a,b)
  %4373 = add i32 %4364, -1
  %4374 = add i32 %4366, -1
  %4375 = fmul fast float %4371, %4362
  %4376 = fmul fast float %4372, %4362
  %4377 = fptoui float %4375 to i32
  %4378 = fptoui float %4376 to i32
  %4379 = call i32 @dx.op.binary.i32(i32 40, i32 %4377, i32 %4373)  ; UMin(a,b)
  %4380 = call i32 @dx.op.binary.i32(i32 40, i32 %4378, i32 %4374)  ; UMin(a,b)
  %4381 = mul i32 %4380, %4364
  %4382 = add i32 %4381, %4379
  %4383 = shl i32 %4382, 2
  %4384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.i32 %4384, 0
  %4386 = icmp eq i32 %4385, -1
  br i1 %4386, label %4603, label %4387

; <label>:4387                                    ; preds = %4332
  %4388 = mul i32 %4385, 148
  %4389 = add i32 %4388, 4
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = add i32 %4388, 8
  %4393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = add i32 %4388, 36
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = add i32 %4388, 60
  %4399 = add i32 %4388, 92
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = add i32 %4388, 116
  %4403 = fsub fast float %4354, %4391
  %4404 = fsub fast float %4355, %4394
  %4405 = fmul fast float %4362, %4403
  %4406 = fmul fast float %4362, %4404
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = fsub fast float 1.000000e+00, %4408
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 2
  %4412 = call float @dx.op.unary.f32(i32 83, float %4407)  ; DerivCoarseX(value)
  %4413 = call float @dx.op.unary.f32(i32 83, float %4409)  ; DerivCoarseX(value)
  %4414 = call float @dx.op.unary.f32(i32 84, float %4407)  ; DerivCoarseY(value)
  %4415 = call float @dx.op.unary.f32(i32 84, float %4409)  ; DerivCoarseY(value)
  %4416 = fmul fast float %4412, %4411
  %4417 = fmul fast float %4413, %4411
  %4418 = fmul fast float %4414, %4411
  %4419 = fmul fast float %4415, %4411
  %4420 = call float @dx.op.dot2.f32(i32 54, float %4418, float %4419, float %4418, float %4419)  ; Dot2(ax,ay,bx,by)
  %4421 = call float @dx.op.dot2.f32(i32 54, float %4416, float %4417, float %4416, float %4417)  ; Dot2(ax,ay,bx,by)
  %4422 = call float @dx.op.binary.f32(i32 35, float %4421, float %4420)  ; FMax(a,b)
  %4423 = call float @dx.op.unary.f32(i32 23, float %4422)  ; Log(value)
  %4424 = fmul fast float %4423, 5.000000e-01
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 1
  %4427 = fadd fast float %4426, %4424
  %4428 = call float @dx.op.binary.f32(i32 35, float %4427, float 0.000000e+00)  ; FMax(a,b)
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 3
  %4431 = fadd fast float %4430, %4428
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4434 = fadd fast float %4431, %4433
  %4435 = add i32 %4401, 0
  %4436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4436, i32 0)  ; GetDimensions(handle,mipLevel)
  %4438 = extractvalue %dx.types.Dimensions %4437, 0
  %4439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4438)  ; FirstbitLo(value)
  %4440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.i32 %4440, 1
  %4442 = sub nsw i32 %4441, %4439
  %4443 = sitofp i32 %4442 to float
  %4444 = fsub fast float %4434, %4443
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float 0.000000e+00)  ; FMax(a,b)
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4436, %dx.types.Handle %47, float %4407, float %4409, float %4397, float undef, i32 0, i32 0, i32 undef, float %4445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = fcmp ule float %4447, 0x3FE0101020000000
  %4449 = extractvalue %dx.types.CBufRet.i32 %4440, 0
  %4450 = and i32 %4449, 128
  %4451 = icmp ne i32 %4450, 0
  %4452 = and i1 %4448, %4451
  br i1 %4452, label %4603, label %4453

; <label>:4453                                    ; preds = %4387
  %4454 = add i32 %4388, 20
  %4455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4454, i32 undef)  ; BufferLoad(srv,index,wot)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = add i32 %4388, 24
  %4458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = add i32 %4388, 40
  %4461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = add i32 %4388, 96
  %4464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.i32 %4464, 0
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = fmul fast float %4467, %4407
  %4469 = fmul fast float %4467, %4409
  %4470 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4471 = fadd fast float %4468, %4470
  %4472 = fadd fast float %4469, %4470
  %4473 = add i32 %4465, 0
  %4474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4474, i32 0)  ; GetDimensions(handle,mipLevel)
  %4476 = extractvalue %dx.types.Dimensions %4475, 0
  %4477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4476)  ; FirstbitLo(value)
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 1
  %4480 = sub nsw i32 %4479, %4477
  %4481 = sitofp i32 %4480 to float
  %4482 = fsub fast float %4431, %4481
  %4483 = call float @dx.op.binary.f32(i32 35, float %4482, float 0.000000e+00)  ; FMax(a,b)
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4474, %dx.types.Handle %47, float %4471, float %4472, float %4462, float undef, i32 0, i32 0, i32 undef, float %4483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = fmul fast float %4485, %4456
  %4487 = fadd fast float %4486, %4459
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 3
  %4496 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4497 = fadd fast float %4493, %4354
  %4498 = fadd fast float %4495, %4355
  %4499 = fadd fast float %4487, %4496
  %4500 = fmul fast float %4497, %4489
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4490, float %4500)  ; FMad(a,b,c)
  %4502 = call float @dx.op.tertiary.f32(i32 46, float %4499, float %4491, float %4501)  ; FMad(a,b,c)
  %4503 = fsub fast float %4502, %4496
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4506 = fsub fast float %4503, %4505
  %4507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.i32 %4507, 0
  %4509 = call i32 @dx.op.binary.i32(i32 40, i32 %4385, i32 %4508)  ; UMin(a,b)
  %4510 = mul i32 %4509, 36
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = add i32 %4510, 4
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = fmul fast float %4515, %4407
  %4517 = fmul fast float %4515, %4409
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4519 = fadd fast float %4516, %4518
  %4520 = fadd fast float %4517, %4518
  %4521 = icmp eq i32 %4512, 0
  br i1 %4521, label %4590, label %4522

; <label>:4522                                    ; preds = %4453
  br label %4523

; <label>:4523                                    ; preds = %4580, %4522
  %4524 = phi float [ %4581, %4580 ], [ 0.000000e+00, %4522 ]
  %4525 = phi float [ %4582, %4580 ], [ 0.000000e+00, %4522 ]
  %4526 = phi float [ %4583, %4580 ], [ 0.000000e+00, %4522 ]
  %4527 = phi float [ %4584, %4580 ], [ 0.000000e+00, %4522 ]
  %4528 = phi float [ %4585, %4580 ], [ 0.000000e+00, %4522 ]
  %4529 = phi float [ %4586, %4580 ], [ 0.000000e+00, %4522 ]
  %4530 = phi i32 [ %4587, %4580 ], [ 0, %4522 ]
  %4531 = shl i32 %4530, 2
  %4532 = add i32 %4398, %4531
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = add i32 %4402, %4531
  %4536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.i32 %4536, 0
  %4538 = add i32 %4537, 0
  %4539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4539, i32 0)  ; GetDimensions(handle,mipLevel)
  %4541 = extractvalue %dx.types.Dimensions %4540, 0
  %4542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4541)  ; FirstbitLo(value)
  %4543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.i32 %4543, 1
  %4545 = sub nsw i32 %4544, %4542
  %4546 = sitofp i32 %4545 to float
  %4547 = fsub fast float %4431, %4546
  %4548 = call float @dx.op.binary.f32(i32 35, float %4547, float 0.000000e+00)  ; FMax(a,b)
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4539, %dx.types.Handle %47, float %4519, float %4520, float %4534, float undef, i32 0, i32 0, i32 undef, float %4548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = fcmp fast ogt float %4550, 0.000000e+00
  br i1 %4551, label %4552, label %4580

; <label>:4552                                    ; preds = %4523
  %4553 = add i32 %4513, %4531
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = and i32 %4555, 32767
  %4557 = mul nuw nsw i32 %4556, 928
  %4558 = add nuw nsw i32 %4557, 48
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4563 = add nuw nsw i32 %4557, 60
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = fmul fast float %4560, %4550
  %4569 = fmul fast float %4561, %4550
  %4570 = fmul fast float %4562, %4550
  %4571 = fadd fast float %4568, %4524
  %4572 = fadd fast float %4569, %4525
  %4573 = fadd fast float %4570, %4526
  %4574 = fmul fast float %4565, %4550
  %4575 = fmul fast float %4566, %4550
  %4576 = fmul fast float %4567, %4550
  %4577 = fadd fast float %4574, %4527
  %4578 = fadd fast float %4575, %4528
  %4579 = fadd fast float %4576, %4529
  br label %4580

; <label>:4580                                    ; preds = %4552, %4523
  %4581 = phi float [ %4571, %4552 ], [ %4524, %4523 ]
  %4582 = phi float [ %4572, %4552 ], [ %4525, %4523 ]
  %4583 = phi float [ %4573, %4552 ], [ %4526, %4523 ]
  %4584 = phi float [ %4577, %4552 ], [ %4527, %4523 ]
  %4585 = phi float [ %4578, %4552 ], [ %4528, %4523 ]
  %4586 = phi float [ %4579, %4552 ], [ %4529, %4523 ]
  %4587 = add nuw i32 %4530, 1
  %4588 = icmp eq i32 %4587, %4512
  br i1 %4588, label %4589, label %4523

; <label>:4589                                    ; preds = %4580
  br label %4590

; <label>:4590                                    ; preds = %4589, %4453
  %4591 = phi float [ 0.000000e+00, %4453 ], [ %4581, %4589 ]
  %4592 = phi float [ 0.000000e+00, %4453 ], [ %4582, %4589 ]
  %4593 = phi float [ 0.000000e+00, %4453 ], [ %4583, %4589 ]
  %4594 = phi float [ 0.000000e+00, %4453 ], [ %4584, %4589 ]
  %4595 = phi float [ 0.000000e+00, %4453 ], [ %4585, %4589 ]
  %4596 = phi float [ 0.000000e+00, %4453 ], [ %4586, %4589 ]
  %4597 = fadd fast float %4594, %4591
  %4598 = fmul fast float %4597, 0x3F847AE140000000
  %4599 = fadd fast float %4595, %4592
  %4600 = fmul fast float %4599, 0x3F847AE140000000
  %4601 = fadd fast float %4596, %4593
  %4602 = fmul fast float %4601, 0x3F847AE140000000
  br label %4603

; <label>:4603                                    ; preds = %4590, %4387, %4332, %4329, %4300, %4262
  %4604 = phi float [ %4314, %4300 ], [ -1.310720e+05, %4262 ], [ %4506, %4590 ], [ -1.310720e+05, %4332 ], [ -1.310720e+05, %4387 ], [ -1.310720e+05, %4329 ]
  %4605 = phi float [ %4324, %4300 ], [ 0.000000e+00, %4262 ], [ %4598, %4590 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4387 ], [ 0.000000e+00, %4329 ]
  %4606 = phi float [ %4326, %4300 ], [ 0.000000e+00, %4262 ], [ %4600, %4590 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4387 ], [ 0.000000e+00, %4329 ]
  %4607 = phi float [ %4328, %4300 ], [ 0.000000e+00, %4262 ], [ %4602, %4590 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4387 ], [ 0.000000e+00, %4329 ]
  %4608 = phi i1 [ true, %4300 ], [ false, %4262 ], [ true, %4590 ], [ false, %4332 ], [ false, %4387 ], [ false, %4329 ]
  %4609 = and i32 %231, 3
  %4610 = icmp eq i32 %4609, 1
  %4611 = select i1 %4610, float 1.000000e+00, float 0.000000e+00
  %4612 = fsub fast float %4604, %195
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = select i1 %4608, float %4613, float 1.000000e+00
  %4615 = fmul fast float %4614, %4611
  %4616 = icmp eq i32 %4609, 3
  %4617 = select i1 %4616, float 1.000000e+00, float %4615
  %4618 = call float @dx.op.binary.f32(i32 35, float %4204, float %4617)  ; FMax(a,b)
  %4619 = fcmp fast olt float %4617, 1.000000e+00
  %4620 = and i1 %264, %4619
  br i1 %4620, label %4621, label %4631

; <label>:4621                                    ; preds = %4603
  %4622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.ResRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.ResRet.f32 %4622, 2
  %4626 = fadd fast float %4623, %4618
  %4627 = fcmp ule float %70, 0.000000e+00
  %4628 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = select i1 %4627, float %4628, float 1.000000e+00
  %4630 = fmul fast float %4629, %4625
  br label %4631

; <label>:4631                                    ; preds = %4621, %4603
  %4632 = phi float [ %4626, %4621 ], [ %4618, %4603 ]
  %4633 = phi float [ %4624, %4621 ], [ 0.000000e+00, %4603 ]
  %4634 = phi float [ %4630, %4621 ], [ 0.000000e+00, %4603 ]
  %4635 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = fcmp fast une float %4636, 0.000000e+00
  %4639 = fcmp fast une float %4637, 0.000000e+00
  %4640 = or i1 %4638, %4639
  br i1 %4640, label %4641, label %5200

; <label>:4641                                    ; preds = %4631
  br i1 %4638, label %4642, label %4915

; <label>:4642                                    ; preds = %4641
  %4643 = call float @dx.op.unary.f32(i32 23, float %4201)  ; Log(value)
  %4644 = fmul fast float %4643, 4.000000e+00
  %4645 = call float @dx.op.unary.f32(i32 21, float %4644)  ; Exp(value)
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = fmul fast float %4647, %58
  %4649 = fmul fast float %4647, %59
  %4650 = fmul fast float %4647, %60
  %4651 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4652 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4653 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4654 = call float @dx.op.unary.f32(i32 23, float %4651)  ; Log(value)
  %4655 = call float @dx.op.unary.f32(i32 23, float %4652)  ; Log(value)
  %4656 = call float @dx.op.unary.f32(i32 23, float %4653)  ; Log(value)
  %4657 = fmul fast float %4654, 4.000000e+00
  %4658 = fmul fast float %4655, 4.000000e+00
  %4659 = fmul fast float %4656, 4.000000e+00
  %4660 = call float @dx.op.unary.f32(i32 21, float %4657)  ; Exp(value)
  %4661 = call float @dx.op.unary.f32(i32 21, float %4658)  ; Exp(value)
  %4662 = call float @dx.op.unary.f32(i32 21, float %4659)  ; Exp(value)
  %4663 = fadd fast float %4661, %4660
  %4664 = fadd fast float %4663, %4662
  %4665 = fdiv fast float 1.000000e+00, %4664
  %4666 = fmul fast float %4665, %4660
  %4667 = fcmp fast ogt float %67, 0.000000e+00
  %4668 = fcmp fast ogt float %68, 0.000000e+00
  %4669 = fcmp fast ogt float %69, 0.000000e+00
  %4670 = fcmp fast olt float %67, 0.000000e+00
  %4671 = fcmp fast olt float %68, 0.000000e+00
  %4672 = fcmp fast olt float %69, 0.000000e+00
  %4673 = zext i1 %4667 to i32
  %4674 = zext i1 %4668 to i32
  %4675 = zext i1 %4669 to i32
  %4676 = zext i1 %4670 to i32
  %4677 = zext i1 %4671 to i32
  %4678 = zext i1 %4672 to i32
  %4679 = sub nsw i32 %4673, %4676
  %4680 = sub nsw i32 %4674, %4677
  %4681 = sub nsw i32 %4675, %4678
  %4682 = call float @dx.op.unary.f32(i32 83, float %4648)  ; DerivCoarseX(value)
  %4683 = call float @dx.op.unary.f32(i32 83, float %4649)  ; DerivCoarseX(value)
  %4684 = call float @dx.op.unary.f32(i32 83, float %4650)  ; DerivCoarseX(value)
  %4685 = call float @dx.op.unary.f32(i32 84, float %4648)  ; DerivCoarseY(value)
  %4686 = call float @dx.op.unary.f32(i32 84, float %4649)  ; DerivCoarseY(value)
  %4687 = call float @dx.op.unary.f32(i32 84, float %4650)  ; DerivCoarseY(value)
  %4688 = fcmp fast ole float %263, %4666
  %4689 = fmul fast float %4665, %4663
  %4690 = fcmp fast ole float %263, %4689
  %4691 = select i1 %4690, float %4650, float %4648
  %4692 = select i1 %4690, float %4648, float %4649
  %4693 = select i1 %4688, float %4649, float %4691
  %4694 = select i1 %4688, float %4650, float %4692
  %4695 = select i1 %4690, float %4684, float %4682
  %4696 = select i1 %4690, float %4682, float %4683
  %4697 = select i1 %4688, float %4683, float %4695
  %4698 = select i1 %4688, float %4684, float %4696
  %4699 = select i1 %4690, float %4687, float %4685
  %4700 = select i1 %4690, float %4685, float %4686
  %4701 = select i1 %4688, float %4686, float %4699
  %4702 = select i1 %4688, float %4687, float %4700
  %4703 = call float @dx.op.unary.f32(i32 27, float %4693)  ; Round_ni(value)
  %4704 = call float @dx.op.unary.f32(i32 27, float %4694)  ; Round_ni(value)
  %4705 = fptosi float %4703 to i32
  %4706 = fptosi float %4704 to i32
  %4707 = xor i32 %4706, %4705
  %4708 = sitofp i32 %4707 to float
  %4709 = fptosi float %4708 to i32
  %4710 = sitofp i32 %4709 to float
  %4711 = fmul fast float %4710, 0x3FE3C6EF40000000
  %4712 = frem fast float %4703, 2.560000e+02
  %4713 = frem fast float %4704, 2.560000e+02
  %4714 = fptoui float %4712 to i32
  %4715 = fptoui float %4713 to i32
  %4716 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4714, i32 %4715, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.ResRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.ResRet.f32 %4716, 2
  %4720 = fadd fast float %4717, %4711
  %4721 = fadd fast float %4718, %4711
  %4722 = fadd fast float %4719, %4711
  %4723 = call float @dx.op.unary.f32(i32 22, float %4720)  ; Frc(value)
  %4724 = call float @dx.op.unary.f32(i32 22, float %4721)  ; Frc(value)
  %4725 = call float @dx.op.unary.f32(i32 22, float %4722)  ; Frc(value)
  %4726 = fmul fast float %4725, 0x401921FB60000000
  %4727 = call float @dx.op.unary.f32(i32 13, float %4726)  ; Sin(value)
  %4728 = call float @dx.op.unary.f32(i32 12, float %4726)  ; Cos(value)
  %4729 = fsub fast float -0.000000e+00, %4728
  %4730 = fmul fast float %4728, %4693
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4727, float %4694, float %4730)  ; FMad(a,b,c)
  %4732 = fmul fast float %4727, %4693
  %4733 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4694, float %4732)  ; FMad(a,b,c)
  %4734 = fadd fast float %4731, %4723
  %4735 = fadd fast float %4733, %4724
  %4736 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4737 = bitcast float %4736 to i32
  %4738 = icmp eq i32 %4737, 0
  br i1 %4738, label %4777, label %4739

; <label>:4739                                    ; preds = %4642
  %4740 = add i32 %4737, 0
  %4741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4741, %dx.types.Handle %103, float %4734, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4697, float %4698, float undef, float %4701, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4746 = extractvalue %dx.types.CBufRet.f32 %4744, 2
  %4747 = fsub fast float 1.000000e+00, %4636
  %4748 = call float @dx.op.binary.f32(i32 35, float %4747, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4749 = bitcast float %4636 to i32
  %4750 = sitofp i32 %4749 to float
  %4751 = fadd fast float %4750, 0xC1CFBF8940000000
  %4752 = fmul fast float %4746, %4751
  %4753 = fadd fast float %4752, 0x41CFBF8940000000
  %4754 = fptosi float %4753 to i32
  %4755 = bitcast i32 %4754 to float
  %4756 = bitcast float %4748 to i32
  %4757 = sitofp i32 %4756 to float
  %4758 = fadd fast float %4757, 0xC1CFBF8940000000
  %4759 = fmul fast float %4758, %4746
  %4760 = fadd fast float %4759, 0x41CFBF8940000000
  %4761 = fptosi float %4760 to i32
  %4762 = bitcast i32 %4761 to float
  %4763 = fmul fast float %4755, %4745
  %4764 = fmul fast float %4762, %4745
  %4765 = fsub fast float %4748, %4763
  %4766 = fadd fast float %4764, %4748
  %4767 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4769 = fsub fast float %4743, %4767
  %4770 = fsub fast float %4768, %4767
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fmul fast float %4773, %4769
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fcmp fast olt float %4775, 0x3F70101020000000
  br i1 %4776, label %4915, label %4777

; <label>:4777                                    ; preds = %4739, %4642
  %4778 = phi float [ %4775, %4739 ], [ %4636, %4642 ]
  %4779 = fmul fast float %4778, %4645
  %4780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.i32 %4780, 1
  %4782 = extractvalue %dx.types.CBufRet.i32 %4780, 0
  %4783 = add i32 %4782, 0
  %4784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4785 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4784, %dx.types.Handle %102, float %4734, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4697, float %4698, float undef, float %4701, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = extractvalue %dx.types.ResRet.f32 %4785, 3
  %4790 = and i32 %4781, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = lshr i32 %4781, 8
  %4793 = and i32 %4792, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = fmul fast float %4789, %4791
  %4796 = fadd fast float %4795, %4794
  %4797 = fmul fast float %4796, 0x3F70101000000000
  %4798 = fadd fast float %4797, 0xBFB99999A0000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fmul fast float %4799, 0x3FF1C71C80000000
  %4801 = call float @dx.op.binary.f32(i32 36, float %4797, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4802 = fsub fast float 1.000000e+00, %4800
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, %4786
  %4805 = fmul fast float %4803, %4787
  %4806 = fmul fast float %4803, %4788
  %4807 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = fmul fast float %4800, %4786
  %4811 = fmul fast float %4800, %4787
  %4812 = fmul fast float %4800, %4788
  %4813 = fadd fast float %4810, %4801
  %4814 = fadd fast float %4811, %4801
  %4815 = fadd fast float %4812, %4801
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.i32 %4819, 3
  %4821 = extractvalue %dx.types.CBufRet.i32 %4819, 2
  %4822 = add i32 %4821, 0
  %4823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4824 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4823, %dx.types.Handle %102, float %4734, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4697, float %4698, float undef, float %4701, float %4702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = extractvalue %dx.types.ResRet.f32 %4824, 1
  %4827 = extractvalue %dx.types.ResRet.f32 %4824, 2
  %4828 = extractvalue %dx.types.ResRet.f32 %4824, 3
  %4829 = and i32 %4820, 255
  %4830 = uitofp i32 %4829 to float
  %4831 = lshr i32 %4820, 8
  %4832 = and i32 %4831, 255
  %4833 = uitofp i32 %4832 to float
  %4834 = lshr i32 %4820, 16
  %4835 = and i32 %4834, 255
  %4836 = uitofp i32 %4835 to float
  %4837 = fmul fast float %4836, 0x3F70101000000000
  %4838 = fmul fast float %4825, %4830
  %4839 = fadd fast float %4838, %4833
  %4840 = fmul fast float %4839, 0x3F70101000000000
  %4841 = fadd fast float %4826, -5.000000e-01
  %4842 = fadd fast float %4828, -5.000000e-01
  %4843 = fmul fast float %4841, %4837
  %4844 = fmul fast float %4842, %4837
  %4845 = fadd fast float %4843, 5.000000e-01
  %4846 = fadd fast float %4844, 5.000000e-01
  %4847 = fmul fast float %4845, 2.000000e+00
  %4848 = fadd fast float %4847, -1.000000e+00
  %4849 = fmul fast float %4846, 2.000000e+00
  %4850 = fadd fast float %4849, -1.000000e+00
  %4851 = fadd fast float %4848, %4850
  %4852 = fmul fast float %4851, 5.000000e-01
  %4853 = fsub fast float %4848, %4850
  %4854 = fmul fast float %4853, 5.000000e-01
  %4855 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4858 = fsub fast float %4856, %4857
  %4859 = call float @dx.op.dot3.f32(i32 55, float %4852, float %4854, float %4858, float %4852, float %4854, float %4858)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = call float @dx.op.unary.f32(i32 25, float %4859)  ; Rsqrt(value)
  %4861 = fmul fast float %4852, %4860
  %4862 = fmul fast float %4854, %4860
  %4863 = select i1 %4690, i32 %4680, i32 %4681
  %4864 = select i1 %4688, i32 %4679, i32 %4863
  %4865 = sitofp i32 %4864 to float
  %4866 = fmul fast float %4858, %4865
  %4867 = fmul fast float %4866, %4860
  %4868 = select i1 %4690, float %4867, float %4862
  %4869 = select i1 %4690, float %4862, float %4867
  %4870 = select i1 %4688, float %4867, float %4861
  %4871 = select i1 %4688, float %4862, float %4868
  %4872 = select i1 %4688, float %4861, float %4869
  %4873 = fsub fast float %4807, %4241
  %4874 = fsub fast float %4808, %4242
  %4875 = fsub fast float %4809, %4243
  %4876 = fmul fast float %4873, %4779
  %4877 = fmul fast float %4874, %4779
  %4878 = fmul fast float %4875, %4779
  %4879 = fadd fast float %4876, %4241
  %4880 = fadd fast float %4877, %4242
  %4881 = fadd fast float %4878, %4243
  %4882 = fsub fast float %4816, %4226
  %4883 = fsub fast float %4817, %4227
  %4884 = fsub fast float %4818, %4228
  %4885 = fmul fast float %4882, %4779
  %4886 = fmul fast float %4883, %4779
  %4887 = fmul fast float %4884, %4779
  %4888 = fadd fast float %4885, %4226
  %4889 = fadd fast float %4886, %4227
  %4890 = fadd fast float %4887, %4228
  %4891 = fadd fast float %4870, %4189
  %4892 = fadd fast float %4871, %4190
  %4893 = fadd fast float %4872, %4191
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4891, %4895
  %4897 = fmul fast float %4892, %4895
  %4898 = fmul fast float %4893, %4895
  %4899 = fsub fast float %4896, %4189
  %4900 = fsub fast float %4897, %4190
  %4901 = fsub fast float %4898, %4191
  %4902 = fmul fast float %4899, %4779
  %4903 = fmul fast float %4900, %4779
  %4904 = fmul fast float %4901, %4779
  %4905 = fadd fast float %4902, %4189
  %4906 = fadd fast float %4903, %4190
  %4907 = fadd fast float %4904, %4191
  %4908 = call float @dx.op.binary.f32(i32 36, float %4201, float %4827)  ; FMin(a,b)
  %4909 = fsub fast float %4908, %4201
  %4910 = fmul fast float %4909, %4779
  %4911 = fadd fast float %4910, %4201
  %4912 = fsub fast float %4840, %4229
  %4913 = fmul fast float %4912, %4779
  %4914 = fadd fast float %4913, %4229
  br label %4915

; <label>:4915                                    ; preds = %4777, %4739, %4641
  %4916 = phi float [ %4879, %4777 ], [ %4241, %4739 ], [ %4241, %4641 ]
  %4917 = phi float [ %4880, %4777 ], [ %4242, %4739 ], [ %4242, %4641 ]
  %4918 = phi float [ %4881, %4777 ], [ %4243, %4739 ], [ %4243, %4641 ]
  %4919 = phi float [ %4888, %4777 ], [ %4226, %4739 ], [ %4226, %4641 ]
  %4920 = phi float [ %4889, %4777 ], [ %4227, %4739 ], [ %4227, %4641 ]
  %4921 = phi float [ %4890, %4777 ], [ %4228, %4739 ], [ %4228, %4641 ]
  %4922 = phi float [ %4905, %4777 ], [ %4189, %4739 ], [ %4189, %4641 ]
  %4923 = phi float [ %4906, %4777 ], [ %4190, %4739 ], [ %4190, %4641 ]
  %4924 = phi float [ %4907, %4777 ], [ %4191, %4739 ], [ %4191, %4641 ]
  %4925 = phi float [ %4914, %4777 ], [ %4229, %4739 ], [ %4229, %4641 ]
  %4926 = phi float [ %4911, %4777 ], [ %4201, %4739 ], [ %4201, %4641 ]
  br i1 %4639, label %4927, label %5200

; <label>:4927                                    ; preds = %4915
  %4928 = call float @dx.op.unary.f32(i32 23, float %4926)  ; Log(value)
  %4929 = fmul fast float %4928, 4.000000e+00
  %4930 = call float @dx.op.unary.f32(i32 21, float %4929)  ; Exp(value)
  %4931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4932 = extractvalue %dx.types.CBufRet.f32 %4931, 0
  %4933 = fmul fast float %4932, %58
  %4934 = fmul fast float %4932, %59
  %4935 = fmul fast float %4932, %60
  %4936 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4937 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4938 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4939 = call float @dx.op.unary.f32(i32 23, float %4936)  ; Log(value)
  %4940 = call float @dx.op.unary.f32(i32 23, float %4937)  ; Log(value)
  %4941 = call float @dx.op.unary.f32(i32 23, float %4938)  ; Log(value)
  %4942 = fmul fast float %4939, 4.000000e+00
  %4943 = fmul fast float %4940, 4.000000e+00
  %4944 = fmul fast float %4941, 4.000000e+00
  %4945 = call float @dx.op.unary.f32(i32 21, float %4942)  ; Exp(value)
  %4946 = call float @dx.op.unary.f32(i32 21, float %4943)  ; Exp(value)
  %4947 = call float @dx.op.unary.f32(i32 21, float %4944)  ; Exp(value)
  %4948 = fadd fast float %4946, %4945
  %4949 = fadd fast float %4948, %4947
  %4950 = fdiv fast float 1.000000e+00, %4949
  %4951 = fmul fast float %4950, %4945
  %4952 = fcmp fast ogt float %67, 0.000000e+00
  %4953 = fcmp fast ogt float %68, 0.000000e+00
  %4954 = fcmp fast ogt float %69, 0.000000e+00
  %4955 = fcmp fast olt float %67, 0.000000e+00
  %4956 = fcmp fast olt float %68, 0.000000e+00
  %4957 = fcmp fast olt float %69, 0.000000e+00
  %4958 = zext i1 %4952 to i32
  %4959 = zext i1 %4953 to i32
  %4960 = zext i1 %4954 to i32
  %4961 = zext i1 %4955 to i32
  %4962 = zext i1 %4956 to i32
  %4963 = zext i1 %4957 to i32
  %4964 = sub nsw i32 %4958, %4961
  %4965 = sub nsw i32 %4959, %4962
  %4966 = sub nsw i32 %4960, %4963
  %4967 = call float @dx.op.unary.f32(i32 83, float %4933)  ; DerivCoarseX(value)
  %4968 = call float @dx.op.unary.f32(i32 83, float %4934)  ; DerivCoarseX(value)
  %4969 = call float @dx.op.unary.f32(i32 83, float %4935)  ; DerivCoarseX(value)
  %4970 = call float @dx.op.unary.f32(i32 84, float %4933)  ; DerivCoarseY(value)
  %4971 = call float @dx.op.unary.f32(i32 84, float %4934)  ; DerivCoarseY(value)
  %4972 = call float @dx.op.unary.f32(i32 84, float %4935)  ; DerivCoarseY(value)
  %4973 = fcmp fast ole float %263, %4951
  %4974 = fmul fast float %4950, %4948
  %4975 = fcmp fast ole float %263, %4974
  %4976 = select i1 %4975, float %4935, float %4933
  %4977 = select i1 %4975, float %4933, float %4934
  %4978 = select i1 %4973, float %4934, float %4976
  %4979 = select i1 %4973, float %4935, float %4977
  %4980 = select i1 %4975, float %4969, float %4967
  %4981 = select i1 %4975, float %4967, float %4968
  %4982 = select i1 %4973, float %4968, float %4980
  %4983 = select i1 %4973, float %4969, float %4981
  %4984 = select i1 %4975, float %4972, float %4970
  %4985 = select i1 %4975, float %4970, float %4971
  %4986 = select i1 %4973, float %4971, float %4984
  %4987 = select i1 %4973, float %4972, float %4985
  %4988 = call float @dx.op.unary.f32(i32 27, float %4978)  ; Round_ni(value)
  %4989 = call float @dx.op.unary.f32(i32 27, float %4979)  ; Round_ni(value)
  %4990 = fptosi float %4988 to i32
  %4991 = fptosi float %4989 to i32
  %4992 = xor i32 %4991, %4990
  %4993 = sitofp i32 %4992 to float
  %4994 = fptosi float %4993 to i32
  %4995 = sitofp i32 %4994 to float
  %4996 = fmul fast float %4995, 0x3FE3C6EF40000000
  %4997 = frem fast float %4988, 2.560000e+02
  %4998 = frem fast float %4989, 2.560000e+02
  %4999 = fptoui float %4997 to i32
  %5000 = fptoui float %4998 to i32
  %5001 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4999, i32 %5000, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = fadd fast float %5002, %4996
  %5006 = fadd fast float %5003, %4996
  %5007 = fadd fast float %5004, %4996
  %5008 = call float @dx.op.unary.f32(i32 22, float %5005)  ; Frc(value)
  %5009 = call float @dx.op.unary.f32(i32 22, float %5006)  ; Frc(value)
  %5010 = call float @dx.op.unary.f32(i32 22, float %5007)  ; Frc(value)
  %5011 = fmul fast float %5010, 0x401921FB60000000
  %5012 = call float @dx.op.unary.f32(i32 13, float %5011)  ; Sin(value)
  %5013 = call float @dx.op.unary.f32(i32 12, float %5011)  ; Cos(value)
  %5014 = fsub fast float -0.000000e+00, %5013
  %5015 = fmul fast float %5013, %4978
  %5016 = call float @dx.op.tertiary.f32(i32 46, float %5012, float %4979, float %5015)  ; FMad(a,b,c)
  %5017 = fmul fast float %5012, %4978
  %5018 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %4979, float %5017)  ; FMad(a,b,c)
  %5019 = fadd fast float %5016, %5008
  %5020 = fadd fast float %5018, %5009
  %5021 = extractvalue %dx.types.CBufRet.f32 %4931, 3
  %5022 = bitcast float %5021 to i32
  %5023 = icmp eq i32 %5022, 0
  br i1 %5023, label %5062, label %5024

; <label>:5024                                    ; preds = %4927
  %5025 = add i32 %5022, 0
  %5026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5027 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5026, %dx.types.Handle %103, float %5019, float %5020, float undef, float undef, i32 0, i32 0, i32 undef, float %4982, float %4983, float undef, float %4986, float %4987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 0
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5032 = fsub fast float 1.000000e+00, %4637
  %5033 = call float @dx.op.binary.f32(i32 35, float %5032, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5034 = bitcast float %4637 to i32
  %5035 = sitofp i32 %5034 to float
  %5036 = fadd fast float %5035, 0xC1CFBF8940000000
  %5037 = fmul fast float %5031, %5036
  %5038 = fadd fast float %5037, 0x41CFBF8940000000
  %5039 = fptosi float %5038 to i32
  %5040 = bitcast i32 %5039 to float
  %5041 = bitcast float %5033 to i32
  %5042 = sitofp i32 %5041 to float
  %5043 = fadd fast float %5042, 0xC1CFBF8940000000
  %5044 = fmul fast float %5043, %5031
  %5045 = fadd fast float %5044, 0x41CFBF8940000000
  %5046 = fptosi float %5045 to i32
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5040, %5030
  %5049 = fmul fast float %5047, %5030
  %5050 = fsub fast float %5033, %5048
  %5051 = fadd fast float %5049, %5033
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5054 = fsub fast float %5028, %5052
  %5055 = fsub fast float %5053, %5052
  %5056 = bitcast float %5055 to i32
  %5057 = sub nsw i32 2129859010, %5056
  %5058 = bitcast i32 %5057 to float
  %5059 = fmul fast float %5058, %5054
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fcmp fast olt float %5060, 0x3F70101020000000
  br i1 %5061, label %5200, label %5062

; <label>:5062                                    ; preds = %5024, %4927
  %5063 = phi float [ %5060, %5024 ], [ %4637, %4927 ]
  %5064 = fmul fast float %5063, %4930
  %5065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.i32 %5065, 1
  %5067 = extractvalue %dx.types.CBufRet.i32 %5065, 0
  %5068 = add i32 %5067, 0
  %5069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5070 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5069, %dx.types.Handle %102, float %5019, float %5020, float undef, float undef, i32 0, i32 0, i32 undef, float %4982, float %4983, float undef, float %4986, float %4987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5074 = extractvalue %dx.types.ResRet.f32 %5070, 3
  %5075 = and i32 %5066, 255
  %5076 = uitofp i32 %5075 to float
  %5077 = lshr i32 %5066, 8
  %5078 = and i32 %5077, 255
  %5079 = uitofp i32 %5078 to float
  %5080 = fmul fast float %5074, %5076
  %5081 = fadd fast float %5080, %5079
  %5082 = fmul fast float %5081, 0x3F70101000000000
  %5083 = fadd fast float %5082, 0xBFB99999A0000000
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, 0x3FF1C71C80000000
  %5086 = call float @dx.op.binary.f32(i32 36, float %5082, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5087 = fsub fast float 1.000000e+00, %5085
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, %5071
  %5090 = fmul fast float %5088, %5072
  %5091 = fmul fast float %5088, %5073
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = fmul fast float %5085, %5071
  %5096 = fmul fast float %5085, %5072
  %5097 = fmul fast float %5085, %5073
  %5098 = fadd fast float %5095, %5086
  %5099 = fadd fast float %5096, %5086
  %5100 = fadd fast float %5097, %5086
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 3
  %5106 = extractvalue %dx.types.CBufRet.i32 %5104, 2
  %5107 = add i32 %5106, 0
  %5108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5108, %dx.types.Handle %102, float %5019, float %5020, float undef, float undef, i32 0, i32 0, i32 undef, float %4982, float %4983, float undef, float %4986, float %4987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5113 = extractvalue %dx.types.ResRet.f32 %5109, 3
  %5114 = and i32 %5105, 255
  %5115 = uitofp i32 %5114 to float
  %5116 = lshr i32 %5105, 8
  %5117 = and i32 %5116, 255
  %5118 = uitofp i32 %5117 to float
  %5119 = lshr i32 %5105, 16
  %5120 = and i32 %5119, 255
  %5121 = uitofp i32 %5120 to float
  %5122 = fmul fast float %5121, 0x3F70101000000000
  %5123 = fmul fast float %5110, %5115
  %5124 = fadd fast float %5123, %5118
  %5125 = fmul fast float %5124, 0x3F70101000000000
  %5126 = fadd fast float %5111, -5.000000e-01
  %5127 = fadd fast float %5113, -5.000000e-01
  %5128 = fmul fast float %5126, %5122
  %5129 = fmul fast float %5127, %5122
  %5130 = fadd fast float %5128, 5.000000e-01
  %5131 = fadd fast float %5129, 5.000000e-01
  %5132 = fmul fast float %5130, 2.000000e+00
  %5133 = fadd fast float %5132, -1.000000e+00
  %5134 = fmul fast float %5131, 2.000000e+00
  %5135 = fadd fast float %5134, -1.000000e+00
  %5136 = fadd fast float %5133, %5135
  %5137 = fmul fast float %5136, 5.000000e-01
  %5138 = fsub fast float %5133, %5135
  %5139 = fmul fast float %5138, 5.000000e-01
  %5140 = call float @dx.op.unary.f32(i32 6, float %5137)  ; FAbs(value)
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5143 = fsub fast float %5141, %5142
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5139, float %5143, float %5137, float %5139, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.unary.f32(i32 25, float %5144)  ; Rsqrt(value)
  %5146 = fmul fast float %5137, %5145
  %5147 = fmul fast float %5139, %5145
  %5148 = select i1 %4975, i32 %4965, i32 %4966
  %5149 = select i1 %4973, i32 %4964, i32 %5148
  %5150 = sitofp i32 %5149 to float
  %5151 = fmul fast float %5143, %5150
  %5152 = fmul fast float %5151, %5145
  %5153 = select i1 %4975, float %5152, float %5147
  %5154 = select i1 %4975, float %5147, float %5152
  %5155 = select i1 %4973, float %5152, float %5146
  %5156 = select i1 %4973, float %5147, float %5153
  %5157 = select i1 %4973, float %5146, float %5154
  %5158 = fsub fast float %5092, %4916
  %5159 = fsub fast float %5093, %4917
  %5160 = fsub fast float %5094, %4918
  %5161 = fmul fast float %5158, %5064
  %5162 = fmul fast float %5159, %5064
  %5163 = fmul fast float %5160, %5064
  %5164 = fadd fast float %5161, %4916
  %5165 = fadd fast float %5162, %4917
  %5166 = fadd fast float %5163, %4918
  %5167 = fsub fast float %5101, %4919
  %5168 = fsub fast float %5102, %4920
  %5169 = fsub fast float %5103, %4921
  %5170 = fmul fast float %5167, %5064
  %5171 = fmul fast float %5168, %5064
  %5172 = fmul fast float %5169, %5064
  %5173 = fadd fast float %5170, %4919
  %5174 = fadd fast float %5171, %4920
  %5175 = fadd fast float %5172, %4921
  %5176 = fadd fast float %5155, %4922
  %5177 = fadd fast float %5156, %4923
  %5178 = fadd fast float %5157, %4924
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5176, float %5177, float %5178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 25, float %5179)  ; Rsqrt(value)
  %5181 = fmul fast float %5176, %5180
  %5182 = fmul fast float %5177, %5180
  %5183 = fmul fast float %5178, %5180
  %5184 = fsub fast float %5181, %4922
  %5185 = fsub fast float %5182, %4923
  %5186 = fsub fast float %5183, %4924
  %5187 = fmul fast float %5184, %5064
  %5188 = fmul fast float %5185, %5064
  %5189 = fmul fast float %5186, %5064
  %5190 = fadd fast float %5187, %4922
  %5191 = fadd fast float %5188, %4923
  %5192 = fadd fast float %5189, %4924
  %5193 = call float @dx.op.binary.f32(i32 36, float %4926, float %5112)  ; FMin(a,b)
  %5194 = fsub fast float %5193, %4926
  %5195 = fmul fast float %5194, %5064
  %5196 = fadd fast float %5195, %4926
  %5197 = fsub fast float %5125, %4925
  %5198 = fmul fast float %5197, %5064
  %5199 = fadd fast float %5198, %4925
  br label %5200

; <label>:5200                                    ; preds = %5062, %5024, %4915, %4631
  %5201 = phi float [ %5164, %5062 ], [ %4916, %5024 ], [ %4916, %4915 ], [ %4241, %4631 ]
  %5202 = phi float [ %5165, %5062 ], [ %4917, %5024 ], [ %4917, %4915 ], [ %4242, %4631 ]
  %5203 = phi float [ %5166, %5062 ], [ %4918, %5024 ], [ %4918, %4915 ], [ %4243, %4631 ]
  %5204 = phi float [ %5173, %5062 ], [ %4919, %5024 ], [ %4919, %4915 ], [ %4226, %4631 ]
  %5205 = phi float [ %5174, %5062 ], [ %4920, %5024 ], [ %4920, %4915 ], [ %4227, %4631 ]
  %5206 = phi float [ %5175, %5062 ], [ %4921, %5024 ], [ %4921, %4915 ], [ %4228, %4631 ]
  %5207 = phi float [ %5190, %5062 ], [ %4922, %5024 ], [ %4922, %4915 ], [ %4189, %4631 ]
  %5208 = phi float [ %5191, %5062 ], [ %4923, %5024 ], [ %4923, %4915 ], [ %4190, %4631 ]
  %5209 = phi float [ %5192, %5062 ], [ %4924, %5024 ], [ %4924, %4915 ], [ %4191, %4631 ]
  %5210 = phi float [ %5199, %5062 ], [ %4925, %5024 ], [ %4925, %4915 ], [ %4229, %4631 ]
  %5211 = phi float [ %5196, %5062 ], [ %4926, %5024 ], [ %4926, %4915 ], [ %4201, %4631 ]
  %5212 = fcmp fast une float %4635, 0.000000e+00
  %5213 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 25, float %5213)  ; Rsqrt(value)
  br i1 %5212, label %5222, label %5215

; <label>:5215                                    ; preds = %5200
  %5216 = fmul fast float %5214, %193
  %5217 = fmul fast float %5214, %194
  %5218 = fmul fast float %5214, %195
  %5219 = fsub fast float -0.000000e+00, %5216
  %5220 = fsub fast float -0.000000e+00, %5217
  %5221 = fsub fast float -0.000000e+00, %5218
  br label %5389

; <label>:5222                                    ; preds = %5200
  %5223 = fmul fast float %193, %5214
  %5224 = fsub fast float -0.000000e+00, %5223
  %5225 = fmul fast float %194, %5214
  %5226 = fsub fast float -0.000000e+00, %5225
  %5227 = fmul fast float %195, %5214
  %5228 = fsub fast float -0.000000e+00, %5227
  %5229 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5226, float %5228, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = fmul fast float %4635, 2.500000e+00
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fmul fast float %4635, 0x4013FFFFE0000000
  %5233 = fadd fast float %5232, 0xBFFFFFFFE0000000
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %4635, 0x4004000020000000
  %5236 = fadd fast float %5235, 0xBFF8000040000000
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %4208, 1.000000e+01
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5239, 2.000000e+00
  %5241 = fsub fast float 3.000000e+00, %5240
  %5242 = fmul fast float %5239, %5239
  %5243 = fmul fast float %5242, %5241
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fsub fast float 0x3FE3333340000000, %5210
  %5246 = fmul fast float %5245, 0x400AAAAAA0000000
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5244, %5247
  %5249 = fmul fast float %5201, 0x3FEA2B8620000000
  %5250 = fmul fast float %5202, 0x3FEA2B8620000000
  %5251 = fmul fast float %5203, 0x3FEA2B8620000000
  %5252 = fadd fast float %5249, 0x3FC81DFBA0000000
  %5253 = fmul fast float %5252, %5201
  %5254 = fadd fast float %5253, 0x3F910E6020000000
  %5255 = fadd fast float %5250, 0x3FC81DFBA0000000
  %5256 = fmul fast float %5255, %5202
  %5257 = fadd fast float %5256, 0x3F910E6020000000
  %5258 = fadd fast float %5251, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %5203
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = fsub fast float %5261, %5201
  %5265 = fsub fast float %5262, %5202
  %5266 = fsub fast float %5263, %5203
  %5267 = fmul fast float %5264, %5231
  %5268 = fmul fast float %5267, %5248
  %5269 = fmul fast float %5265, %5231
  %5270 = fmul fast float %5269, %5248
  %5271 = fmul fast float %5266, %5231
  %5272 = fmul fast float %5271, %5248
  %5273 = fadd fast float %5268, %5201
  %5274 = fadd fast float %5270, %5202
  %5275 = fadd fast float %5272, %5203
  %5276 = fmul fast float %5211, %5211
  %5277 = fmul fast float %5276, %5276
  %5278 = fadd fast float %5234, 1.000000e+00
  %5279 = fsub fast float %5278, %5248
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5277
  %5284 = call float @dx.op.binary.f32(i32 36, float %5280, float %5283)  ; FMin(a,b)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5284, float %5285)  ; FMax(a,b)
  %5287 = fadd fast float %5282, 0xBFE4CCCCC0000000
  %5288 = fmul fast float %5287, 0x4006DB6DA0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, 2.000000e+00
  %5291 = fsub fast float 3.000000e+00, %5290
  %5292 = bitcast float %5204 to i32
  %5293 = ashr i32 %5292, 1
  %5294 = add nsw i32 %5293, 532487669
  %5295 = bitcast i32 %5294 to float
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = bitcast float %5296 to i32
  %5298 = sub nsw i32 2129859010, %5297
  %5299 = bitcast i32 %5298 to float
  %5300 = fmul fast float %5299, 2.000000e+00
  %5301 = bitcast float %5205 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5206 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = fsub fast float 0x4002A9FBE0000000, %5300
  %5320 = fadd fast float %5300, 0x3FD54FDF00000000
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, %5319
  %5325 = fmul fast float %5324, %5324
  %5326 = fsub fast float 0x4002A9FBE0000000, %5309
  %5327 = fadd fast float %5309, 0x3FD54FDF00000000
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %5326
  %5332 = fmul fast float %5331, %5331
  %5333 = fsub fast float 0x4002A9FBE0000000, %5318
  %5334 = fadd fast float %5318, 0x3FD54FDF00000000
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5338
  %5340 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5325)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5332)  ; FMax(a,b)
  %5342 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5339)  ; FMax(a,b)
  %5343 = fsub fast float 1.000000e+00, %5229
  %5344 = fadd fast float %5343, %5244
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5346 = fsub fast float 1.000000e+00, %4617
  %5347 = fmul fast float %5286, %5346
  %5348 = fmul fast float %5289, %5289
  %5349 = fmul fast float %5348, %5347
  %5350 = fmul fast float %5349, %5291
  %5351 = fmul fast float %5346, 0xBFE99999A0000000
  %5352 = fmul fast float %5351, %5231
  %5353 = fmul fast float %5352, %5248
  %5354 = fadd fast float %5353, 1.000000e+00
  %5355 = fadd fast float %5210, -1.000000e+00
  %5356 = fmul fast float %5354, %5355
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = fsub fast float %5340, %5204
  %5359 = fsub fast float %5341, %5205
  %5360 = fsub fast float %5342, %5206
  %5361 = fmul fast float %5350, %5358
  %5362 = fmul fast float %5350, %5359
  %5363 = fmul fast float %5350, %5360
  %5364 = fadd fast float %5361, %5204
  %5365 = fadd fast float %5362, %5205
  %5366 = fadd fast float %5363, %5206
  %5367 = fsub fast float %113, %5207
  %5368 = fsub fast float %114, %5208
  %5369 = fsub fast float %115, %5209
  %5370 = fmul fast float %5350, %5367
  %5371 = fmul fast float %5350, %5368
  %5372 = fmul fast float %5350, %5369
  %5373 = fadd fast float %5370, %5207
  %5374 = fadd fast float %5371, %5208
  %5375 = fadd fast float %5372, %5209
  %5376 = fmul fast float %5350, %5345
  %5377 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5376, %5378
  %5380 = fadd fast float %5379, %5377
  %5381 = fsub fast float 1.000000e+00, %5211
  %5382 = fmul fast float %5350, %5381
  %5383 = fadd fast float %5382, %5211
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5373, float %5374, float %5375, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5373, %5385
  %5387 = fmul fast float %5374, %5385
  %5388 = fmul fast float %5375, %5385
  br label %5389

; <label>:5389                                    ; preds = %5222, %5215
  %5390 = phi float [ %5221, %5215 ], [ %5228, %5222 ]
  %5391 = phi float [ %5220, %5215 ], [ %5226, %5222 ]
  %5392 = phi float [ %5219, %5215 ], [ %5224, %5222 ]
  %5393 = phi float [ %5218, %5215 ], [ %5227, %5222 ]
  %5394 = phi float [ %5217, %5215 ], [ %5225, %5222 ]
  %5395 = phi float [ %5216, %5215 ], [ %5223, %5222 ]
  %5396 = phi float [ %5201, %5215 ], [ %5273, %5222 ]
  %5397 = phi float [ %5202, %5215 ], [ %5274, %5222 ]
  %5398 = phi float [ %5203, %5215 ], [ %5275, %5222 ]
  %5399 = phi float [ %5204, %5215 ], [ %5364, %5222 ]
  %5400 = phi float [ %5205, %5215 ], [ %5365, %5222 ]
  %5401 = phi float [ %5206, %5215 ], [ %5366, %5222 ]
  %5402 = phi float [ %5207, %5215 ], [ %5386, %5222 ]
  %5403 = phi float [ %5208, %5215 ], [ %5387, %5222 ]
  %5404 = phi float [ %5209, %5215 ], [ %5388, %5222 ]
  %5405 = phi float [ %5210, %5215 ], [ %5380, %5222 ]
  %5406 = phi float [ %5211, %5215 ], [ %5383, %5222 ]
  %5407 = fsub fast float -0.000000e+00, %195
  %5408 = select i1 %252, float 0.000000e+00, float %5401
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %5392, float %5391, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5394, float %5393, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = fmul fast float %5411, 2.000000e+00
  %5413 = fmul fast float %5412, %5402
  %5414 = fmul fast float %5412, %5403
  %5415 = fmul fast float %5412, %5404
  %5416 = fsub fast float %5395, %5413
  %5417 = fsub fast float %5394, %5414
  %5418 = fsub fast float %5393, %5415
  %5419 = call float @dx.op.binary.f32(i32 36, float %5406, float 1.000000e+00)  ; FMin(a,b)
  %5420 = fsub fast float 1.000000e+00, %5406
  %5421 = bitcast float %5420 to i32
  %5422 = sub nsw i32 2129859010, %5421
  %5423 = bitcast i32 %5422 to float
  %5424 = fsub fast float 1.000000e+00, %77
  %5425 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = call float @dx.op.binary.f32(i32 35, float %5425, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5427 = fdiv fast float %5424, %5426
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %5429, 5.000000e-01
  %5431 = fadd fast float %5430, 5.000000e-01
  %5432 = fmul fast float %5431, %77
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5435 = fmul fast float %5434, %5427
  %5436 = fadd fast float %5432, %5435
  %5437 = fsub fast float 5.000000e-01, %5430
  %5438 = fmul fast float %5437, %5396
  %5439 = fmul fast float %5437, %5397
  %5440 = fmul fast float %5437, %5398
  %5441 = fadd fast float %5436, %5438
  %5442 = fadd fast float %5436, %5439
  %5443 = fadd fast float %5436, %5440
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = fmul fast float %5445, 5.000000e-01
  %5447 = fadd fast float %5446, 5.000000e-01
  %5448 = fmul fast float %5447, %77
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5450, %5427
  %5452 = fadd fast float %5448, %5451
  %5453 = fsub fast float 5.000000e-01, %5446
  %5454 = fmul fast float %5453, %5396
  %5455 = fmul fast float %5453, %5397
  %5456 = fmul fast float %5453, %5398
  %5457 = fadd fast float %5452, %5454
  %5458 = fadd fast float %5452, %5455
  %5459 = fadd fast float %5452, %5456
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = call float @dx.op.binary.f32(i32 36, float %5396, float %5461)  ; FMin(a,b)
  %5463 = fsub fast float 1.000000e+00, %5419
  %5464 = fmul fast float %5462, %5463
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = bitcast float %5465 to i32
  %5467 = sub nsw i32 2129859010, %5466
  %5468 = bitcast i32 %5467 to float
  %5469 = call float @dx.op.binary.f32(i32 36, float %5397, float %5461)  ; FMin(a,b)
  %5470 = fmul fast float %5469, %5463
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = bitcast float %5471 to i32
  %5473 = sub nsw i32 2129859010, %5472
  %5474 = bitcast i32 %5473 to float
  %5475 = call float @dx.op.binary.f32(i32 36, float %5398, float %5461)  ; FMin(a,b)
  %5476 = fmul fast float %5475, %5463
  %5477 = fsub fast float 1.000000e+00, %5476
  %5478 = bitcast float %5477 to i32
  %5479 = sub nsw i32 2129859010, %5478
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5419, %78
  %5482 = fmul fast float %5481, %5441
  %5483 = fmul fast float %5482, %5468
  %5484 = fmul fast float %5419, %79
  %5485 = fmul fast float %5484, %5442
  %5486 = fmul fast float %5485, %5474
  %5487 = fmul fast float %5419, %80
  %5488 = fmul fast float %5487, %5443
  %5489 = fmul fast float %5488, %5480
  %5490 = call float @dx.op.binary.f32(i32 36, float %5399, float %5461)  ; FMin(a,b)
  %5491 = fmul fast float %5490, %5463
  %5492 = fsub fast float 1.000000e+00, %5491
  %5493 = bitcast float %5492 to i32
  %5494 = sub nsw i32 2129859010, %5493
  %5495 = bitcast i32 %5494 to float
  %5496 = call float @dx.op.binary.f32(i32 36, float %5400, float %5461)  ; FMin(a,b)
  %5497 = fmul fast float %5496, %5463
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = bitcast float %5498 to i32
  %5500 = sub nsw i32 2129859010, %5499
  %5501 = bitcast i32 %5500 to float
  %5502 = call float @dx.op.binary.f32(i32 36, float %5408, float %5461)  ; FMin(a,b)
  %5503 = fmul fast float %5502, %5463
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = bitcast float %5504 to i32
  %5506 = sub nsw i32 2129859010, %5505
  %5507 = bitcast i32 %5506 to float
  %5508 = fmul fast float %5481, %5457
  %5509 = fmul fast float %5508, %5495
  %5510 = fmul fast float %5484, %5458
  %5511 = fmul fast float %5510, %5501
  %5512 = fmul fast float %5487, %5459
  %5513 = fmul fast float %5512, %5507
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5486, float %5489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = select i1 %252, float 0.000000e+00, float %5483
  %5516 = select i1 %252, float %5514, float %5486
  %5517 = select i1 %252, float 0.000000e+00, float %5489
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5511, float %5513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = select i1 %252, float 0.000000e+00, float %5509
  %5520 = select i1 %252, float %5518, float %5511
  %5521 = select i1 %252, float 0.000000e+00, float %5513
  %5522 = fmul fast float %5410, 9.843750e-01
  %5523 = fmul fast float %5405, 9.843750e-01
  %5524 = fadd fast float %5522, 7.812500e-03
  %5525 = fadd fast float %5523, 7.812500e-03
  %5526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5524, float %5525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 2
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 3
  %5529 = fmul fast float %5527, %5399
  %5530 = fmul fast float %5527, %5400
  %5531 = fmul fast float %5527, %5408
  %5532 = fadd fast float %5529, %5528
  %5533 = fadd fast float %5530, %5528
  %5534 = fadd fast float %5531, %5528
  %5535 = fcmp fast ogt float %4202, 0.000000e+00
  br i1 %5535, label %5536, label %5562

; <label>:5536                                    ; preds = %5389
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4202, float %5410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = fadd fast float %5538, -5.000000e-01
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fsub fast float 1.000000e+00, %5399
  %5545 = fsub fast float 1.000000e+00, %5400
  %5546 = fsub fast float 1.000000e+00, %5408
  %5547 = fmul fast float %5399, 4.000000e+00
  %5548 = fmul fast float %5547, %5544
  %5549 = fmul fast float %5548, %5541
  %5550 = fmul fast float %5400, 4.000000e+00
  %5551 = fmul fast float %5550, %5545
  %5552 = fmul fast float %5551, %5542
  %5553 = fmul fast float %5408, 4.000000e+00
  %5554 = fmul fast float %5553, %5546
  %5555 = fmul fast float %5554, %5543
  %5556 = fadd fast float %5549, %5532
  %5557 = fadd fast float %5552, %5533
  %5558 = fadd fast float %5555, %5534
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  br label %5562

; <label>:5562                                    ; preds = %5536, %5389
  %5563 = phi float [ %5559, %5536 ], [ %5532, %5389 ]
  %5564 = phi float [ %5560, %5536 ], [ %5533, %5389 ]
  %5565 = phi float [ %5561, %5536 ], [ %5534, %5389 ]
  %5566 = call float @dx.op.binary.f32(i32 35, float %5564, float %5565)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5563, float %5566)  ; FMax(a,b)
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5568, %5515
  %5570 = fmul fast float %5568, %5516
  %5571 = fmul fast float %5568, %5517
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5397, float %5398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fcmp fast ogt float %5572, 0x3E7FF19E20000000
  %5574 = fdiv fast float 1.000000e+00, %5572
  %5575 = select i1 %5573, float %5574, float 0.000000e+00
  %5576 = fmul fast float %5575, %5396
  %5577 = fmul fast float %5575, %5397
  %5578 = fmul fast float %5575, %5398
  %5579 = fadd fast float %5576, -1.000000e+00
  %5580 = fadd fast float %5577, -1.000000e+00
  %5581 = fadd fast float %5578, -1.000000e+00
  %5582 = fmul fast float %5579, 5.000000e-01
  %5583 = fmul fast float %5580, 5.000000e-01
  %5584 = fmul fast float %5581, 5.000000e-01
  %5585 = fadd fast float %5582, 1.000000e+00
  %5586 = fadd fast float %5583, 1.000000e+00
  %5587 = fadd fast float %5584, 1.000000e+00
  %5588 = fmul fast float %5563, %5519
  %5589 = fmul fast float %5564, %5520
  %5590 = fmul fast float %5565, %5521
  %5591 = fsub fast float 1.000000e+00, %5410
  %5592 = bitcast float %5591 to i32
  %5593 = sitofp i32 %5592 to float
  %5594 = fmul fast float %5593, 5.000000e+00
  %5595 = fadd fast float %5594, 0xC1EFBF8940000000
  %5596 = fptosi float %5595 to i32
  %5597 = bitcast i32 %5596 to float
  %5598 = fmul fast float %5597, %4203
  %5599 = fmul fast float %5515, %5598
  %5600 = fmul fast float %5599, %5568
  %5601 = fmul fast float %5600, %5585
  %5602 = fmul fast float %5516, %5598
  %5603 = fmul fast float %5602, %5568
  %5604 = fmul fast float %5603, %5586
  %5605 = fmul fast float %5517, %5598
  %5606 = fmul fast float %5605, %5568
  %5607 = fmul fast float %5606, %5587
  %5608 = fmul fast float %5569, %4199
  %5609 = fmul fast float %5570, %4199
  %5610 = fmul fast float %5571, %4199
  %5611 = fadd fast float %5588, %4195
  %5612 = fadd fast float %5611, %5601
  %5613 = fmul fast float %5612, %4199
  %5614 = fadd fast float %5589, %4196
  %5615 = fadd fast float %5614, %5604
  %5616 = fmul fast float %5615, %4199
  %5617 = fadd fast float %5590, %4197
  %5618 = fadd fast float %5617, %5607
  %5619 = fmul fast float %5618, %4199
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5622 = fcmp fast oeq float %5621, 0.000000e+00
  br i1 %5622, label %6707, label %5623

; <label>:5623                                    ; preds = %5562
  %5624 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.CBufRet.f32 %5631, 1
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5628, float %5629, float %5630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = select i1 %252, float %5632, float %5628
  %5636 = select i1 %252, float %5634, float %5629
  %5637 = select i1 %252, float %5633, float %5630
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 2
  %5640 = fmul fast float %5639, %113
  %5641 = fmul fast float %5639, %114
  %5642 = fmul fast float %5639, %115
  %5643 = fadd fast float %5640, %193
  %5644 = fadd fast float %5641, %194
  %5645 = fadd fast float %5642, %195
  %5646 = fcmp fast olt float %5621, 0.000000e+00
  br i1 %5646, label %6286, label %5647

; <label>:5647                                    ; preds = %5623
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.CBufRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5652 = extractvalue %dx.types.CBufRet.f32 %5648, 3
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5653, 3
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = fmul fast float %5649, %5643
  %5664 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5650, float %5663)  ; FMad(a,b,c)
  %5665 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5651, float %5664)  ; FMad(a,b,c)
  %5666 = fadd fast float %5665, %5652
  %5667 = fmul fast float %5654, %5643
  %5668 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5655, float %5667)  ; FMad(a,b,c)
  %5669 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5656, float %5668)  ; FMad(a,b,c)
  %5670 = fadd fast float %5669, %5657
  %5671 = fmul fast float %5659, %5643
  %5672 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5660, float %5671)  ; FMad(a,b,c)
  %5673 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5661, float %5672)  ; FMad(a,b,c)
  %5674 = fadd fast float %5673, %5662
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = fcmp fast une float %5676, 0.000000e+00
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.CBufRet.f32 %5678, 3
  %5682 = fmul fast float %5681, %5666
  %5683 = fmul fast float %5681, %5670
  %5684 = fadd fast float %5682, %5679
  %5685 = fadd fast float %5683, %5680
  %5686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.CBufRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.CBufRet.f32 %5686, 3
  %5690 = fmul fast float %5689, %5666
  %5691 = fmul fast float %5689, %5670
  %5692 = fadd fast float %5690, %5687
  %5693 = fadd fast float %5691, %5688
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5696 = fsub fast float %5695, %5674
  %5697 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5698 = fmul fast float %5696, %5697
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  br i1 %5677, label %5761, label %5701

; <label>:5701                                    ; preds = %5647
  %5702 = extractvalue %dx.types.CBufRet.f32 %5686, 2
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5705 = fadd fast float %5704, %5702
  %5706 = fcmp fast ogt float %5705, 0.000000e+00
  br i1 %5706, label %5707, label %5731

; <label>:5707                                    ; preds = %5701
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = fsub fast float %5692, %5709
  %5712 = fsub fast float %5693, %5710
  %5713 = fcmp fast olt float %5711, 0.000000e+00
  %5714 = fcmp fast olt float %5712, 0.000000e+00
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5720 = select i1 %5713, float %5716, float %5718
  %5721 = select i1 %5714, float %5717, float %5719
  %5722 = fmul fast float %5720, %5711
  %5723 = fmul fast float %5721, %5712
  %5724 = call float @dx.op.unary.f32(i32 6, float %5722)  ; FAbs(value)
  %5725 = call float @dx.op.unary.f32(i32 6, float %5723)  ; FAbs(value)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5727 = call float @dx.op.binary.f32(i32 35, float %5724, float %5725)  ; FMax(a,b)
  %5728 = fsub fast float %5726, %5727
  %5729 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5730 = fmul fast float %5729, %5700
  br label %5731

; <label>:5731                                    ; preds = %5707, %5701
  %5732 = phi float [ %5730, %5707 ], [ 0.000000e+00, %5701 ]
  %5733 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5734 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5735 = fadd fast float %5734, %5733
  %5736 = fcmp fast ogt float %5735, 0.000000e+00
  br i1 %5736, label %5737, label %5761

; <label>:5737                                    ; preds = %5731
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = fsub fast float %5684, %5739
  %5742 = fsub fast float %5685, %5740
  %5743 = fcmp fast olt float %5741, 0.000000e+00
  %5744 = fcmp fast olt float %5742, 0.000000e+00
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5750 = select i1 %5743, float %5746, float %5748
  %5751 = select i1 %5744, float %5747, float %5749
  %5752 = fmul fast float %5750, %5741
  %5753 = fmul fast float %5751, %5742
  %5754 = call float @dx.op.unary.f32(i32 6, float %5752)  ; FAbs(value)
  %5755 = call float @dx.op.unary.f32(i32 6, float %5753)  ; FAbs(value)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5757 = call float @dx.op.binary.f32(i32 35, float %5754, float %5755)  ; FMax(a,b)
  %5758 = fsub fast float %5756, %5757
  %5759 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5760 = fmul fast float %5759, %5700
  br label %5761

; <label>:5761                                    ; preds = %5737, %5731, %5647
  %5762 = phi float [ 0.000000e+00, %5647 ], [ %5760, %5737 ], [ 0.000000e+00, %5731 ]
  %5763 = phi float [ 0.000000e+00, %5647 ], [ %5732, %5737 ], [ %5732, %5731 ]
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = fsub fast float %5666, %5768
  %5771 = fsub fast float %5670, %5769
  %5772 = fcmp fast olt float %5770, 0.000000e+00
  %5773 = fcmp fast olt float %5771, 0.000000e+00
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = select i1 %5772, float %5775, float %5777
  %5780 = select i1 %5773, float %5776, float %5778
  %5781 = fmul fast float %5779, %5770
  %5782 = fmul fast float %5780, %5771
  %5783 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5784 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5786 = call float @dx.op.binary.f32(i32 35, float %5783, float %5784)  ; FMax(a,b)
  %5787 = fsub fast float %5785, %5786
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call float @dx.op.binary.f32(i32 36, float %5788, float %5766)  ; FMin(a,b)
  %5790 = fmul fast float %5789, %5700
  %5791 = fsub fast float %5762, %5790
  %5792 = fsub fast float %5763, %5762
  %5793 = fsub fast float %5792, %5790
  %5794 = call float @dx.op.binary.f32(i32 35, float %5762, float %5763)  ; FMax(a,b)
  %5795 = call float @dx.op.binary.f32(i32 35, float %5790, float %5794)  ; FMax(a,b)
  %5796 = fcmp fast olt float %5795, 1.000000e+00
  br i1 %5796, label %5797, label %6195, !dx.controlflow.hints !99

; <label>:5797                                    ; preds = %5761
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 0
  %5800 = fcmp fast une float %5799, 0.000000e+00
  br i1 %5800, label %5801, label %6195, !dx.controlflow.hints !100

; <label>:5801                                    ; preds = %5797
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5802, 3
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5817 = fmul fast float %5803, %5643
  %5818 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5804, float %5817)  ; FMad(a,b,c)
  %5819 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5805, float %5818)  ; FMad(a,b,c)
  %5820 = fadd fast float %5819, %5806
  %5821 = fmul fast float %5808, %5643
  %5822 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5809, float %5821)  ; FMad(a,b,c)
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5810, float %5822)  ; FMad(a,b,c)
  %5824 = fadd fast float %5823, %5811
  %5825 = fmul fast float %5813, %5643
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5814, float %5825)  ; FMad(a,b,c)
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5815, float %5826)  ; FMad(a,b,c)
  %5828 = fadd fast float %5827, %5816
  %5829 = fcmp fast oge float %5820, 1.000000e+00
  %5830 = fcmp fast oge float %5824, 1.000000e+00
  %5831 = or i1 %5829, %5830
  %5832 = fcmp fast olt float %5820, 0.000000e+00
  %5833 = fcmp fast olt float %5824, 0.000000e+00
  %5834 = or i1 %5832, %5833
  %5835 = or i1 %5831, %5834
  br i1 %5835, label %6195, label %5836, !dx.controlflow.hints !101

; <label>:5836                                    ; preds = %5801
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.i32 %5841, 2
  %5843 = uitofp i32 %5842 to float
  %5844 = extractvalue %dx.types.CBufRet.i32 %5841, 3
  %5845 = uitofp i32 %5844 to float
  %5846 = extractvalue %dx.types.CBufRet.f32 %5837, 3
  %5847 = fmul fast float %5846, 2.000000e+00
  %5848 = fsub fast float %5820, %5838
  %5849 = fsub fast float %5824, %5839
  %5850 = fmul fast float %5847, %5848
  %5851 = fmul fast float %5847, %5849
  %5852 = fdiv fast float 1.000000e+00, %5626
  %5853 = fmul fast float %5851, %5852
  %5854 = call float @dx.op.unary.f32(i32 6, float %5853)  ; FAbs(value)
  %5855 = fmul fast float %5840, %5645
  %5856 = fmul fast float %5855, %5847
  %5857 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5858 = call float @dx.op.unary.f32(i32 6, float %5850)  ; FAbs(value)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5857, float %5854)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5858, float %5859)  ; FMax(a,b)
  %5861 = fmul fast float %5860, 2.000000e+00
  %5862 = call float @dx.op.unary.f32(i32 23, float %5861)  ; Log(value)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5862, float %5843)  ; FMax(a,b)
  %5864 = call float @dx.op.unary.f32(i32 22, float %5863)  ; Frc(value)
  %5865 = fadd fast float %5864, 0xBFEA666660000000
  %5866 = fmul fast float %5865, 8.000000e+00
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = call float @dx.op.unary.f32(i32 27, float %5863)  ; Round_ni(value)
  %5869 = fadd fast float %5868, %5867
  %5870 = call float @dx.op.binary.f32(i32 36, float %5869, float %5845)  ; FMin(a,b)
  %5871 = call float @dx.op.unary.f32(i32 27, float %5870)  ; Round_ni(value)
  %5872 = fsub fast float -0.000000e+00, %5871
  %5873 = call float @dx.op.unary.f32(i32 21, float %5872)  ; Exp(value)
  %5874 = fmul fast float %5873, %5847
  %5875 = fmul fast float %5874, %5820
  %5876 = fmul fast float %5874, %5824
  %5877 = fmul fast float %5875, 2.500000e-01
  %5878 = fmul fast float %5876, 2.500000e-01
  %5879 = fadd fast float %5877, 5.000000e-01
  %5880 = fadd fast float %5878, 5.000000e-01
  %5881 = fsub fast float %5845, %5843
  %5882 = fptoui float %5881 to i32
  %5883 = add i32 %5882, 320
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5883)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = fcmp fast une float %5870, %5845
  %5888 = fsub fast float %5820, %5885
  %5889 = fsub fast float %5824, %5886
  %5890 = call float @dx.op.unary.f32(i32 6, float %5888)  ; FAbs(value)
  %5891 = call float @dx.op.unary.f32(i32 6, float %5889)  ; FAbs(value)
  %5892 = fmul fast float %5890, %5874
  %5893 = fmul fast float %5891, %5874
  %5894 = fcmp fast olt float %5892, 1.000000e+00
  %5895 = fcmp fast olt float %5893, 1.000000e+00
  %5896 = and i1 %5894, %5895
  %5897 = or i1 %5887, %5896
  br i1 %5897, label %5898, label %6195, !dx.controlflow.hints !102

; <label>:5898                                    ; preds = %5836
  %5899 = fmul fast float %5876, 5.000000e-01
  %5900 = fmul fast float %5875, 5.000000e-01
  %5901 = fadd fast float %5899, 5.000000e-01
  %5902 = fadd fast float %5900, 5.000000e-01
  %5903 = sitofp i32 %5842 to float
  %5904 = fsub fast float %5870, %5903
  %5905 = call float @dx.op.unary.f32(i32 27, float %5904)  ; Round_ni(value)
  %5906 = call float @dx.op.unary.f32(i32 22, float %5870)  ; Frc(value)
  %5907 = call float @dx.op.unary.f32(i32 22, float %5902)  ; Frc(value)
  %5908 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5907, float %5908, float %5905, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.ResRet.f32 %5909, 3
  %5914 = fcmp fast ogt float %5906, 0.000000e+00
  br i1 %5914, label %5915, label %5936, !dx.controlflow.hints !103

; <label>:5915                                    ; preds = %5898
  %5916 = fadd fast float %5905, 1.000000e+00
  %5917 = call float @dx.op.unary.f32(i32 22, float %5879)  ; Frc(value)
  %5918 = call float @dx.op.unary.f32(i32 22, float %5880)  ; Frc(value)
  %5919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5917, float %5918, float %5916, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5920 = extractvalue %dx.types.ResRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.ResRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.ResRet.f32 %5919, 2
  %5923 = extractvalue %dx.types.ResRet.f32 %5919, 3
  %5924 = fsub fast float %5920, %5910
  %5925 = fsub fast float %5921, %5911
  %5926 = fsub fast float %5922, %5912
  %5927 = fsub fast float %5923, %5913
  %5928 = fmul fast float %5924, %5906
  %5929 = fmul fast float %5925, %5906
  %5930 = fmul fast float %5926, %5906
  %5931 = fmul fast float %5927, %5906
  %5932 = fadd fast float %5928, %5910
  %5933 = fadd fast float %5929, %5911
  %5934 = fadd fast float %5930, %5912
  %5935 = fadd fast float %5931, %5913
  br label %5936

; <label>:5936                                    ; preds = %5915, %5898
  %5937 = phi float [ %5932, %5915 ], [ %5910, %5898 ]
  %5938 = phi float [ %5933, %5915 ], [ %5911, %5898 ]
  %5939 = phi float [ %5934, %5915 ], [ %5912, %5898 ]
  %5940 = phi float [ %5935, %5915 ], [ %5913, %5898 ]
  %5941 = fadd fast float %5937, -5.000000e-01
  %5942 = fadd fast float %5939, -5.000000e-01
  %5943 = fmul fast float %5941, 0xBFD5555560000000
  %5944 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5942, float %5943)  ; FMad(a,b,c)
  %5945 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5938, float 0.000000e+00)  ; FMad(a,b,c)
  %5946 = fadd fast float %5945, %5940
  %5947 = fmul fast float %5941, -7.500000e-01
  %5948 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5942, float %5947)  ; FMad(a,b,c)
  %5949 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5938, float 0.000000e+00)  ; FMad(a,b,c)
  %5950 = fadd fast float %5949, %5940
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5958 = fsub fast float %5954, %5944
  %5959 = fsub fast float %5955, %5946
  %5960 = fsub fast float %5956, %5948
  %5961 = fsub fast float %5957, %5950
  %5962 = fmul fast float %5958, %5952
  %5963 = fmul fast float %5959, %5952
  %5964 = fmul fast float %5960, %5952
  %5965 = fmul fast float %5961, %5952
  %5966 = fadd fast float %5962, %5944
  %5967 = fadd fast float %5963, %5946
  %5968 = fadd fast float %5964, %5948
  %5969 = fadd fast float %5965, %5950
  %5970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.i32 %5970, 0
  %5972 = and i32 %5971, 536870911
  %5973 = uitofp i32 %5972 to float
  %5974 = fmul fast float %5973, %5820
  %5975 = fmul fast float %5973, %5824
  %5976 = fptoui float %5974 to i32
  %5977 = fptoui float %5975 to i32
  %5978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5979 = extractvalue %dx.types.ResRet.i32 %5978, 0
  %5980 = and i32 %5979, 31
  %5981 = lshr i32 %5976, %5980
  %5982 = lshr i32 %5977, %5980
  %5983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5984 = extractvalue %dx.types.ResRet.i32 %5983, 0
  %5985 = and i32 %5984, 31
  %5986 = shl i32 1, %5985
  %5987 = call i32 @dx.op.binary.i32(i32 40, i32 %5986, i32 4)  ; UMin(a,b)
  %5988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5989 = extractvalue %dx.types.ResRet.i32 %5988, 0
  %5990 = extractvalue %dx.types.ResRet.i32 %5988, 1
  %5991 = icmp eq i32 %5987, 0
  br i1 %5991, label %6033, label %5992

; <label>:5992                                    ; preds = %5936
  br label %5993

; <label>:5993                                    ; preds = %6021, %5992
  %5994 = phi i32 [ %6024, %6021 ], [ 0, %5992 ]
  %5995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5996 = extractvalue %dx.types.ResRet.i32 %5995, 0
  %5997 = lshr i32 %5996, 16
  %5998 = and i32 %5997, 31
  %5999 = shl i32 %5982, %5998
  %6000 = add i32 %5999, %5981
  %6001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6002 = extractvalue %dx.types.ResRet.i32 %6001, 0
  %6003 = and i32 %6002, 31
  %6004 = shl i32 %6000, %6003
  %6005 = add i32 %6004, %5994
  %6006 = shl i32 %6005, 2
  %6007 = add i32 %6006, 32
  %6008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.i32 %6008, 0
  %6010 = icmp slt i32 %6009, 0
  %6011 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5994
  %6012 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5994
  %6013 = bitcast float* %6011 to i32*
  %6014 = bitcast float* %6012 to i32*
  br i1 %6010, label %6015, label %6021

; <label>:6015                                    ; preds = %5993
  %6016 = and i32 %6009, 1073741823
  %6017 = add nuw nsw i32 %6016, 20
  %6018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.i32 %6018, 0
  %6020 = extractvalue %dx.types.ResRet.i32 %6018, 1
  br label %6021

; <label>:6021                                    ; preds = %6015, %5993
  %6022 = phi i32 [ %6019, %6015 ], [ %5989, %5993 ]
  %6023 = phi i32 [ %6020, %6015 ], [ %5990, %5993 ]
  store i32 %6022, i32* %6013, align 4
  store i32 %6023, i32* %6014, align 4
  %6024 = add nuw i32 %5994, 1
  %6025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.i32 %6025, 2
  %6027 = icmp eq i32 %6026, 0
  %6028 = icmp ugt i32 %6009, -1073741825
  %6029 = and i1 %6028, %6027
  %6030 = icmp ult i32 %6024, %5987
  %6031 = and i1 %6029, %6030
  br i1 %6031, label %5993, label %6032

; <label>:6032                                    ; preds = %6021
  br label %6033

; <label>:6033                                    ; preds = %6032, %5936
  %6034 = phi i32 [ 0, %5936 ], [ %6024, %6032 ]
  %6035 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %6036 = fptoui float %6035 to i32
  %6037 = icmp eq i32 %6036, 0
  br i1 %6037, label %6089, label %6038

; <label>:6038                                    ; preds = %6033
  br label %6039

; <label>:6039                                    ; preds = %6084, %6038
  %6040 = phi i32 [ %6085, %6084 ], [ %6034, %6038 ]
  %6041 = phi i32 [ %6086, %6084 ], [ 0, %6038 ]
  %6042 = lshr i32 %6041, 2
  %6043 = and i32 %6041, 3
  %6044 = add nuw nsw i32 %6042, 83
  %6045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6044)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.i32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.i32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.i32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.i32 %6045, 3
  %6050 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6046, i32* %6050, align 4
  %6051 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6047, i32* %6051, align 4
  %6052 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6048, i32* %6052, align 4
  %6053 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6049, i32* %6053, align 4
  %6054 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6043
  %6055 = load i32, i32* %6054, align 4, !tbaa !104, !noalias !108
  %6056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.i32 %6056, 0
  %6058 = lshr i32 %6057, 16
  %6059 = and i32 %6058, 31
  %6060 = shl i32 %5982, %6059
  %6061 = add i32 %6060, %5981
  %6062 = shl i32 %6061, 2
  %6063 = add i32 %6062, %6055
  %6064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6063, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.i32 %6064, 0
  %6066 = icmp eq i32 %6065, 0
  br i1 %6066, label %6084, label %6067

; <label>:6067                                    ; preds = %6039
  %6068 = icmp slt i32 %6065, 0
  %6069 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6040
  %6070 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6040
  %6071 = bitcast float* %6069 to i32*
  %6072 = bitcast float* %6070 to i32*
  br i1 %6068, label %6073, label %6080

; <label>:6073                                    ; preds = %6067
  %6074 = and i32 %6065, 1073741823
  %6075 = add i32 %6055, 20
  %6076 = add i32 %6075, %6074
  %6077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.i32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.i32 %6077, 1
  br label %6080

; <label>:6080                                    ; preds = %6073, %6067
  %6081 = phi i32 [ %6078, %6073 ], [ %5989, %6067 ]
  %6082 = phi i32 [ %6079, %6073 ], [ %5990, %6067 ]
  store i32 %6081, i32* %6071, align 4
  store i32 %6082, i32* %6072, align 4
  %6083 = add i32 %6040, 1
  br label %6084

; <label>:6084                                    ; preds = %6080, %6039
  %6085 = phi i32 [ %6040, %6039 ], [ %6083, %6080 ]
  %6086 = add nuw i32 %6041, 1
  %6087 = icmp eq i32 %6086, %6036
  br i1 %6087, label %6088, label %6039

; <label>:6088                                    ; preds = %6084
  br label %6089

; <label>:6089                                    ; preds = %6088, %6033
  %6090 = phi i32 [ %6034, %6033 ], [ %6085, %6088 ]
  %6091 = icmp eq i32 %6090, 1
  %6092 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6093 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6091, label %6094, label %6097

; <label>:6094                                    ; preds = %6089
  %6095 = load float, float* %6092, align 4
  %6096 = load float, float* %6093, align 4
  br label %6124

; <label>:6097                                    ; preds = %6089
  %6098 = load float, float* %6092, align 4
  %6099 = load float, float* %6093, align 4
  %6100 = fdiv fast float 1.000000e+00, %6099
  %6101 = fsub fast float %6098, %6100
  %6102 = icmp ugt i32 %6090, 1
  br i1 %6102, label %6103, label %6119

; <label>:6103                                    ; preds = %6097
  br label %6104

; <label>:6104                                    ; preds = %6104, %6103
  %6105 = phi float [ %6114, %6104 ], [ %6101, %6103 ]
  %6106 = phi float [ %6115, %6104 ], [ %6098, %6103 ]
  %6107 = phi i32 [ %6116, %6104 ], [ 1, %6103 ]
  %6108 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6107
  %6109 = load float, float* %6108, align 4
  %6110 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6107
  %6111 = load float, float* %6110, align 4
  %6112 = fdiv fast float 1.000000e+00, %6111
  %6113 = fsub fast float %6109, %6112
  %6114 = call float @dx.op.binary.f32(i32 36, float %6105, float %6113)  ; FMin(a,b)
  %6115 = call float @dx.op.binary.f32(i32 35, float %6106, float %6109)  ; FMax(a,b)
  %6116 = add nuw i32 %6107, 1
  %6117 = icmp eq i32 %6116, %6090
  br i1 %6117, label %6118, label %6104

; <label>:6118                                    ; preds = %6104
  br label %6119

; <label>:6119                                    ; preds = %6118, %6097
  %6120 = phi float [ %6101, %6097 ], [ %6114, %6118 ]
  %6121 = phi float [ %6098, %6097 ], [ %6115, %6118 ]
  %6122 = fsub fast float %6121, %6120
  %6123 = fdiv fast float 1.000000e+00, %6122
  br label %6124

; <label>:6124                                    ; preds = %6119, %6094
  %6125 = phi float [ %6095, %6094 ], [ %6121, %6119 ]
  %6126 = phi float [ %6096, %6094 ], [ %6123, %6119 ]
  %6127 = fadd fast float %5828, %6125
  %6128 = fmul fast float %6127, %6126
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6130 = fmul fast float %6129, 2.000000e+00
  %6131 = fsub fast float 1.000000e+00, %6130
  %6132 = fmul fast float %5966, %5966
  %6133 = fsub fast float %5967, %6132
  %6134 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6133)  ; FMax(a,b)
  %6135 = fdiv fast float 1.000000e+00, %6134
  %6136 = fmul fast float %5967, %5966
  %6137 = fsub fast float %5968, %6136
  %6138 = fsub fast float %6131, %5966
  %6139 = fmul fast float %6131, %6131
  %6140 = fsub fast float %6139, %5967
  %6141 = fmul fast float %6135, %6137
  %6142 = fmul fast float %6141, %6138
  %6143 = fsub fast float %6140, %6142
  %6144 = fmul fast float %5967, %5967
  %6145 = fsub fast float %5969, %6144
  %6146 = fmul fast float %6137, %6137
  %6147 = fmul fast float %6146, %6135
  %6148 = fsub fast float %6145, %6147
  %6149 = fdiv fast float %6143, %6148
  %6150 = fmul fast float %6149, %6137
  %6151 = fsub fast float %6138, %6150
  %6152 = fmul fast float %6151, %6135
  %6153 = fmul fast float %6152, %5966
  %6154 = fsub fast float 1.000000e+00, %6153
  %6155 = fmul fast float %6149, %5967
  %6156 = fsub fast float %6154, %6155
  %6157 = fmul fast float %6152, %6152
  %6158 = fmul fast float %6149, 4.000000e+00
  %6159 = fmul fast float %6158, %6156
  %6160 = fsub fast float %6157, %6159
  %6161 = call float @dx.op.unary.f32(i32 24, float %6160)  ; Sqrt(value)
  %6162 = fcmp fast oge float %6152, 0.000000e+00
  %6163 = fsub fast float -0.000000e+00, %6161
  %6164 = select i1 %6162, float %6163, float %6161
  %6165 = fsub fast float %6164, %6152
  %6166 = fdiv fast float %6165, %6149
  %6167 = fdiv fast float %6156, %6165
  %6168 = fmul fast float %6166, 5.000000e-01
  %6169 = fmul fast float %6167, 2.000000e+00
  %6170 = select i1 %6162, float %6168, float %6169
  %6171 = select i1 %6162, float %6169, float %6168
  %6172 = call float @dx.op.binary.f32(i32 35, float %6170, float %6171)  ; FMax(a,b)
  %6173 = call float @dx.op.binary.f32(i32 36, float %6170, float %6171)  ; FMin(a,b)
  %6174 = fcmp fast ogt float %6131, %6172
  %6175 = fsub fast float %6131, %6173
  %6176 = fsub fast float %6131, %6172
  %6177 = fsub fast float %6172, %6173
  %6178 = select i1 %6174, float %6176, float %6177
  %6179 = fmul float %6175, %6178
  %6180 = select i1 %6174, float %6173, float %6131
  %6181 = fcmp fast ogt float %6131, %6173
  %6182 = fmul fast float %6180, %6172
  %6183 = fadd fast float %6180, %6172
  %6184 = fmul fast float %6183, %5966
  %6185 = fadd fast float %6182, %5967
  %6186 = fsub fast float %6185, %6184
  %6187 = fdiv fast float %6186, %6179
  %6188 = select i1 %6181, float %6187, float 0.000000e+00
  %6189 = fsub fast float 1.000000e+00, %6188
  %6190 = select i1 %6174, float %6189, float %6188
  %6191 = call float @dx.op.unary.f32(i32 7, float %6190)  ; Saturate(value)
  %6192 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %6193 = fmul fast float %6192, %6191
  %6194 = fsub fast float 1.000000e+00, %6193
  br label %6195

; <label>:6195                                    ; preds = %6124, %5836, %5801, %5797, %5761
  %6196 = phi float [ 1.000000e+00, %5761 ], [ %6194, %6124 ], [ 1.000000e+00, %5801 ], [ 1.000000e+00, %5836 ], [ 1.000000e+00, %5797 ]
  %6197 = fcmp fast ogt float %5793, 0.000000e+00
  br i1 %6197, label %6198, label %6206, !dx.controlflow.hints !117

; <label>:6198                                    ; preds = %6195
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6201 = fadd fast float %6200, %5674
  %6202 = call float @dx.op.binary.f32(i32 35, float %6201, float 0.000000e+00)  ; FMax(a,b)
  %6203 = fadd fast float %6202, 0x3F10000000000000
  %6204 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5692, float %5693, float undef, float undef, i32 0, i32 0, i32 undef, float %6203)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  br label %6206

; <label>:6206                                    ; preds = %6198, %6195
  %6207 = phi float [ %6205, %6198 ], [ 1.000000e+00, %6195 ]
  %6208 = fcmp fast ogt float %5791, 0.000000e+00
  br i1 %6208, label %6209, label %6217, !dx.controlflow.hints !118

; <label>:6209                                    ; preds = %6206
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6212 = fadd fast float %6211, %5674
  %6213 = call float @dx.op.binary.f32(i32 35, float %6212, float 0.000000e+00)  ; FMax(a,b)
  %6214 = fadd fast float %6213, 0x3F10000000000000
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5684, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float %6214)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  br label %6217

; <label>:6217                                    ; preds = %6209, %6206
  %6218 = phi float [ %6216, %6209 ], [ 1.000000e+00, %6206 ]
  %6219 = fcmp fast ogt float %5790, 0.000000e+00
  br i1 %6219, label %6220, label %6232, !dx.controlflow.hints !119

; <label>:6220                                    ; preds = %6217
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6223 = fadd fast float %6222, %5674
  %6224 = call float @dx.op.binary.f32(i32 35, float %6223, float 0.000000e+00)  ; FMax(a,b)
  %6225 = fadd fast float %6224, 0x3F10000000000000
  br i1 %5677, label %6226, label %6229, !dx.controlflow.hints !120

; <label>:6226                                    ; preds = %6220
  %6227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5666, float %5670, float undef, float undef, i32 0, i32 0, i32 undef, float %6225)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6228 = extractvalue %dx.types.ResRet.f32 %6227, 0
  br label %6232

; <label>:6229                                    ; preds = %6220
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5666, float %5670, float undef, float undef, i32 0, i32 0, i32 undef, float %6225)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  br label %6232

; <label>:6232                                    ; preds = %6229, %6226, %6217
  %6233 = phi float [ %6228, %6226 ], [ %6231, %6229 ], [ 1.000000e+00, %6217 ]
  %6234 = fsub fast float %6207, %6196
  %6235 = fmul fast float %6234, %5763
  %6236 = fadd fast float %6235, %6196
  %6237 = fsub fast float %6218, %6236
  %6238 = fmul fast float %6237, %5762
  %6239 = fadd fast float %6238, %6236
  %6240 = fsub fast float %6233, %6239
  %6241 = fmul fast float %6240, %5790
  %6242 = fadd fast float %6241, %6239
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6245 = fcmp fast ogt float %6244, 0.000000e+00
  br i1 %6245, label %6246, label %6286, !dx.controlflow.hints !121

; <label>:6246                                    ; preds = %6232
  %6247 = fcmp fast ugt float %6244, 0.000000e+00
  br i1 %6247, label %6248, label %6283

; <label>:6248                                    ; preds = %6246
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6259 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = fadd fast float %6262, %5643
  %6266 = fadd fast float %6263, %5644
  %6267 = fadd fast float %6264, %5645
  %6268 = fmul fast float %6265, %6250
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %6251, float %6266, float %6268)  ; FMad(a,b,c)
  %6270 = call float @dx.op.tertiary.f32(i32 46, float %6252, float %6267, float %6269)  ; FMad(a,b,c)
  %6271 = fadd fast float %6270, %6253
  %6272 = fmul fast float %6265, %6255
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6256, float %6266, float %6272)  ; FMad(a,b,c)
  %6274 = call float @dx.op.tertiary.f32(i32 46, float %6257, float %6267, float %6273)  ; FMad(a,b,c)
  %6275 = fadd fast float %6274, %6258
  %6276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6271, float %6275, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = fmul fast float %6277, %6260
  %6279 = fadd fast float %6278, %6259
  %6280 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6281 = fmul fast float %6280, %6244
  %6282 = fsub fast float 1.000000e+00, %6281
  br label %6283

; <label>:6283                                    ; preds = %6248, %6246
  %6284 = phi float [ %6282, %6248 ], [ 1.000000e+00, %6246 ]
  %6285 = fmul fast float %6284, %6242
  br label %6286

; <label>:6286                                    ; preds = %6283, %6232, %5623
  %6287 = phi float [ 1.000000e+00, %5623 ], [ %6285, %6283 ], [ %6242, %6232 ]
  %6288 = call float @dx.op.binary.f32(i32 36, float %6287, float %6287)  ; FMin(a,b)
  %6289 = call float @dx.op.binary.f32(i32 36, float %6287, float %6288)  ; FMin(a,b)
  %6290 = fcmp fast ogt float %6289, 0.000000e+00
  br i1 %6290, label %6291, label %6451, !dx.controlflow.hints !122

; <label>:6291                                    ; preds = %6286
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6296 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6307 = fmul fast float %6293, %5643
  %6308 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %6294, float %6307)  ; FMad(a,b,c)
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %6295, float %6308)  ; FMad(a,b,c)
  %6310 = fadd fast float %6309, %6296
  %6311 = fmul fast float %6298, %5643
  %6312 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %6299, float %6311)  ; FMad(a,b,c)
  %6313 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %6300, float %6312)  ; FMad(a,b,c)
  %6314 = fadd fast float %6313, %6301
  %6315 = fmul fast float %6303, %5643
  %6316 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %6304, float %6315)  ; FMad(a,b,c)
  %6317 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %6305, float %6316)  ; FMad(a,b,c)
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6322 = fmul fast float %6321, %6310
  %6323 = fmul fast float %6321, %6314
  %6324 = fadd fast float %6322, %6319
  %6325 = fadd fast float %6323, %6320
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = fsub fast float %6324, %6327
  %6330 = fsub fast float %6325, %6328
  %6331 = fcmp fast olt float %6329, 0.000000e+00
  %6332 = fcmp fast olt float %6330, 0.000000e+00
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6344 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %6345 = call float @dx.op.binary.f32(i32 35, float %6342, float %6343)  ; FMax(a,b)
  %6346 = fsub fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6348 = fcmp fast ogt float %6347, 0.000000e+00
  br i1 %6348, label %6349, label %6390, !dx.controlflow.hints !123

; <label>:6349                                    ; preds = %6291
  %6350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6324, float %6325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 1
  %6352 = fcmp fast ogt float %6351, 0.000000e+00
  br i1 %6352, label %6353, label %6385

; <label>:6353                                    ; preds = %6349
  %6354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6324, float %6325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.ResRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.ResRet.f32 %6354, 2
  %6358 = extractvalue %dx.types.ResRet.f32 %6354, 3
  %6359 = fsub fast float 1.000000e+00, %6306
  %6360 = fsub fast float %6359, %6317
  %6361 = fmul fast float %6360, 0x400921FB60000000
  %6362 = fadd fast float %6361, 0x3FF921FB60000000
  %6363 = call float @dx.op.unary.f32(i32 13, float %6362)  ; Sin(value)
  %6364 = fadd fast float %6363, -1.000000e+00
  %6365 = fmul fast float %6364, 0x3FD45F3060000000
  %6366 = fmul fast float %6360, 0x401921FB60000000
  %6367 = fadd fast float %6366, 0x400921FB60000000
  %6368 = call float @dx.op.unary.f32(i32 13, float %6367)  ; Sin(value)
  %6369 = fadd fast float %6368, 0x3E7777A5C0000000
  %6370 = fmul fast float %6369, 0x3FC45F3060000000
  %6371 = fmul fast float %6360, 0x4022D97C80000000
  %6372 = fadd fast float %6371, 0x4012D97C80000000
  %6373 = call float @dx.op.unary.f32(i32 13, float %6372)  ; Sin(value)
  %6374 = fadd fast float %6373, 1.000000e+00
  %6375 = fmul fast float %6374, 0x3FBB2995E0000000
  %6376 = fmul fast float %6360, 0x402921FB60000000
  %6377 = fadd fast float %6376, 0x401921FB60000000
  %6378 = call float @dx.op.unary.f32(i32 13, float %6377)  ; Sin(value)
  %6379 = fadd fast float %6378, 0xBE8777A5C0000000
  %6380 = fmul fast float %6379, 0x3FB45F3060000000
  %6381 = call float @dx.op.dot4.f32(i32 56, float %6355, float %6356, float %6357, float %6358, float %6365, float %6370, float %6375, float %6380)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6382 = fmul fast float %6381, 0xBFF7154760000000
  %6383 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6384 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  br label %6385

; <label>:6385                                    ; preds = %6353, %6349
  %6386 = phi float [ %6384, %6353 ], [ 1.000000e+00, %6349 ]
  %6387 = fadd fast float %6386, -1.000000e+00
  %6388 = fmul fast float %6387, %6347
  %6389 = fadd fast float %6388, 1.000000e+00
  br label %6390

; <label>:6390                                    ; preds = %6385, %6291
  %6391 = phi float [ %6389, %6385 ], [ 1.000000e+00, %6291 ]
  %6392 = fmul fast float %6391, %6287
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6397 = fadd fast float %6394, %193
  %6398 = fadd fast float %6395, %194
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6401 = fsub fast float -0.000000e+00, %6397
  %6402 = fsub fast float -0.000000e+00, %6398
  %6403 = fsub fast float %5407, %6396
  %6404 = fadd fast float %6403, %6400
  %6405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6401, float %6402, float %6404)  ; Dot3(ax,ay,az,bx,by,bz)
  %6406 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = fdiv fast float 1.000000e+00, %6406
  %6408 = fmul fast float %6407, %6405
  %6409 = fmul fast float %5624, %6408
  %6410 = fmul fast float %5625, %6408
  %6411 = fadd fast float %6409, %6397
  %6412 = fadd fast float %6410, %6398
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = fsub fast float %6411, %6414
  %6417 = fsub fast float %6412, %6415
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 2
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 3
  %6421 = fmul fast float %6416, %6419
  %6422 = fmul fast float %6417, %6420
  %6423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.i32 %6423, 3
  %6425 = icmp eq i32 %6424, 0
  br i1 %6425, label %6431, label %6426

; <label>:6426                                    ; preds = %6390
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6421, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.ResRet.f32 %6427, 1
  %6430 = extractvalue %dx.types.ResRet.f32 %6427, 2
  br label %6436

; <label>:6431                                    ; preds = %6390
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6421, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.ResRet.f32 %6432, 2
  br label %6436

; <label>:6436                                    ; preds = %6431, %6426
  %6437 = phi float [ %6428, %6426 ], [ %6433, %6431 ]
  %6438 = phi float [ %6429, %6426 ], [ %6434, %6431 ]
  %6439 = phi float [ %6430, %6426 ], [ %6435, %6431 ]
  %6440 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6441 = fmul fast float %6440, %6437
  %6442 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6443 = fsub fast float %6408, %6442
  %6444 = fsub fast float %6443, %6441
  %6445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6444)  ; FMax(a,b)
  %6446 = fmul fast float %6445, %6438
  %6447 = call float @dx.op.binary.f32(i32 36, float %6439, float %6446)  ; FMin(a,b)
  %6448 = fmul fast float %6447, 0xBFF7154760000000
  %6449 = call float @dx.op.unary.f32(i32 21, float %6448)  ; Exp(value)
  %6450 = fmul fast float %6392, %6449
  br label %6451

; <label>:6451                                    ; preds = %6436, %6286
  %6452 = phi float [ %6450, %6436 ], [ %6287, %6286 ]
  %6453 = call float @dx.op.binary.f32(i32 36, float %6452, float %6452)  ; FMin(a,b)
  %6454 = call float @dx.op.binary.f32(i32 36, float %6452, float %6453)  ; FMin(a,b)
  %6455 = fcmp fast ogt float %6454, 0.000000e+00
  br i1 %6455, label %6456, label %6707, !dx.controlflow.hints !124

; <label>:6456                                    ; preds = %6451
  %6457 = fmul fast float %6452, %5635
  %6458 = fmul fast float %6452, %5636
  %6459 = fmul fast float %6452, %5637
  %6460 = fsub fast float %195, %4604
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  %6462 = fmul fast float %5624, 5.120000e+02
  %6463 = fmul fast float %5625, 5.120000e+02
  %6464 = fmul fast float %5626, 5.120000e+02
  %6465 = fadd fast float %6464, %195
  %6466 = fsub fast float %4604, %6465
  %6467 = fmul fast float %6466, 2.000000e+00
  %6468 = fadd fast float %6467, %6465
  %6469 = select i1 %6461, float %6468, float %6465
  %6470 = fsub fast float %6469, %195
  %6471 = call float @dx.op.dot3.f32(i32 55, float %6462, float %6463, float %6470, float %6462, float %6463, float %6470)  ; Dot3(ax,ay,az,bx,by,bz)
  %6472 = call float @dx.op.unary.f32(i32 25, float %6471)  ; Rsqrt(value)
  %6473 = fmul fast float %6472, %6462
  %6474 = fmul fast float %6472, %6463
  %6475 = fmul fast float %6472, %6470
  %6476 = fsub fast float %4604, %195
  %6477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6476)  ; Dot3(ax,ay,az,bx,by,bz)
  %6478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6473, float %6474, float %6475)  ; Dot3(ax,ay,az,bx,by,bz)
  %6479 = fdiv fast float 1.000000e+00, %6478
  %6480 = fmul fast float %6479, %6477
  %6481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6460, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6482 = fcmp fast ogt float %6481, 0.000000e+00
  %6483 = fcmp fast olt float %6481, 0.000000e+00
  %6484 = zext i1 %6482 to i32
  %6485 = zext i1 %6483 to i32
  %6486 = sub nsw i32 %6484, %6485
  %6487 = sitofp i32 %6486 to float
  %6488 = fsub fast float %6469, %4604
  %6489 = call float @dx.op.dot3.f32(i32 55, float %6462, float %6463, float %6488, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6490 = fcmp fast ogt float %6489, 0.000000e+00
  %6491 = fcmp fast olt float %6489, 0.000000e+00
  %6492 = zext i1 %6490 to i32
  %6493 = zext i1 %6491 to i32
  %6494 = sub nsw i32 %6492, %6493
  %6495 = sitofp i32 %6494 to float
  %6496 = fcmp fast une float %6487, %6495
  br i1 %6496, label %6497, label %6507

; <label>:6497                                    ; preds = %6456
  %6498 = fmul fast float %6480, %6475
  %6499 = fmul fast float %6480, %6474
  %6500 = fmul fast float %6480, %6473
  %6501 = fmul fast float %6500, %6500
  %6502 = fmul fast float %6499, %6499
  %6503 = fadd fast float %6501, %6502
  %6504 = fmul fast float %6498, %6498
  %6505 = fadd fast float %6503, %6504
  %6506 = call float @dx.op.unary.f32(i32 24, float %6505)  ; Sqrt(value)
  br label %6517

; <label>:6507                                    ; preds = %6456
  %6508 = icmp slt i32 %6486, 0
  br i1 %6508, label %6509, label %6517

; <label>:6509                                    ; preds = %6507
  %6510 = fsub fast float %195, %6469
  %6511 = fmul fast float %6462, %6462
  %6512 = fmul fast float %6463, %6463
  %6513 = fadd fast float %6511, %6512
  %6514 = fmul fast float %6510, %6510
  %6515 = fadd fast float %6513, %6514
  %6516 = call float @dx.op.unary.f32(i32 24, float %6515)  ; Sqrt(value)
  br label %6517

; <label>:6517                                    ; preds = %6509, %6507, %6497
  %6518 = phi float [ %6506, %6497 ], [ %6516, %6509 ], [ 0.000000e+00, %6507 ]
  %6519 = fsub fast float -0.000000e+00, %6518
  %6520 = select i1 %6461, float -0.000000e+00, float %6519
  %6521 = fmul fast float %4605, 0x3FF7154760000000
  %6522 = fmul fast float %6521, %6520
  %6523 = fmul fast float %4606, 0x3FF7154760000000
  %6524 = fmul fast float %6523, %6520
  %6525 = fmul fast float %4607, 0x3FF7154760000000
  %6526 = fmul fast float %6525, %6520
  %6527 = call float @dx.op.unary.f32(i32 21, float %6522)  ; Exp(value)
  %6528 = call float @dx.op.unary.f32(i32 21, float %6524)  ; Exp(value)
  %6529 = call float @dx.op.unary.f32(i32 21, float %6526)  ; Exp(value)
  %6530 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6531 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  %6532 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6533 = fmul fast float %6457, %6530
  %6534 = fmul fast float %6458, %6531
  %6535 = fmul fast float %6459, %6532
  %6536 = fsub fast float %5624, %5395
  %6537 = fsub fast float %5625, %5394
  %6538 = fsub fast float %5626, %5393
  %6539 = call float @dx.op.dot3.f32(i32 55, float %6536, float %6537, float %6538, float %6536, float %6537, float %6538)  ; Dot3(ax,ay,az,bx,by,bz)
  %6540 = call float @dx.op.unary.f32(i32 25, float %6539)  ; Rsqrt(value)
  %6541 = fmul fast float %6540, %6536
  %6542 = fmul fast float %6540, %6537
  %6543 = fmul fast float %6540, %6538
  %6544 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5391, float %5390, float %6541, float %6542, float %6543)  ; Dot3(ax,ay,az,bx,by,bz)
  %6546 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6547 = fmul fast float %6546, %6546
  %6548 = fmul fast float %6547, %5423
  %6549 = call float @dx.op.unary.f32(i32 7, float %6548)  ; Saturate(value)
  %6550 = fmul fast float %6549, %6546
  %6551 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %6541, float %6542, float %6543)  ; Dot3(ax,ay,az,bx,by,bz)
  %6552 = fmul fast float %6551, %6551
  %6553 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6554 = fsub fast float 1.000000e+00, %5405
  %6555 = call float @dx.op.binary.f32(i32 35, float %6554, float 0x3F847AE140000000)  ; FMax(a,b)
  %6556 = fmul fast float %6555, %6555
  %6557 = fmul fast float %6556, %6556
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = fmul fast float %5410, %5410
  %6560 = fmul fast float %6559, %6558
  %6561 = fadd fast float %6560, %6557
  %6562 = bitcast float %6561 to i32
  %6563 = ashr i32 %6562, 1
  %6564 = add nsw i32 %6563, 532487669
  %6565 = bitcast i32 %6564 to float
  %6566 = fadd fast float %6565, %5410
  %6567 = fmul fast float %6557, %6552
  %6568 = fsub fast float 1.000000e+00, %6552
  %6569 = fadd fast float %6568, %6567
  %6570 = fmul fast float %6553, %6553
  %6571 = fmul fast float %6570, %6558
  %6572 = fadd fast float %6571, %6557
  %6573 = bitcast float %6572 to i32
  %6574 = ashr i32 %6573, 1
  %6575 = add nsw i32 %6574, 532487669
  %6576 = bitcast i32 %6575 to float
  %6577 = fadd fast float %6576, %6553
  %6578 = fmul fast float %6569, %6569
  %6579 = fmul fast float %6578, %6566
  %6580 = fmul fast float %6579, %6577
  %6581 = fdiv fast float 0x3FF0A00000000000, %6580
  %6582 = fmul fast float %6581, %6557
  %6583 = call float @dx.op.unary.f32(i32 6, float %6545)  ; FAbs(value)
  %6584 = fsub fast float 1.000000e+00, %6583
  %6585 = bitcast float %6584 to i32
  %6586 = sitofp i32 %6585 to float
  %6587 = fmul fast float %6586, 5.000000e+00
  %6588 = fadd fast float %6587, 0xC1EFBF8940000000
  %6589 = fptosi float %6588 to i32
  %6590 = bitcast i32 %6589 to float
  %6591 = fsub fast float 1.000000e+00, %5399
  %6592 = fsub fast float 1.000000e+00, %5400
  %6593 = fsub fast float 1.000000e+00, %5408
  %6594 = fmul fast float %6590, %6591
  %6595 = fmul fast float %6590, %6592
  %6596 = fmul fast float %6590, %6593
  %6597 = fadd fast float %6594, %5399
  %6598 = fadd fast float %6595, %5400
  %6599 = fadd fast float %6596, %5408
  br i1 %5535, label %6600, label %6623

; <label>:6600                                    ; preds = %6517
  %6601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4202, float %6583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.ResRet.f32 %6601, 2
  %6605 = fadd fast float %6602, -5.000000e-01
  %6606 = fadd fast float %6603, -5.000000e-01
  %6607 = fadd fast float %6604, -5.000000e-01
  %6608 = fmul fast float %5399, 4.000000e+00
  %6609 = fmul fast float %6608, %6591
  %6610 = fmul fast float %6609, %6605
  %6611 = fmul fast float %5400, 4.000000e+00
  %6612 = fmul fast float %6611, %6592
  %6613 = fmul fast float %6612, %6606
  %6614 = fmul fast float %5408, 4.000000e+00
  %6615 = fmul fast float %6614, %6593
  %6616 = fmul fast float %6615, %6607
  %6617 = fadd fast float %6610, %6597
  %6618 = fadd fast float %6613, %6598
  %6619 = fadd fast float %6616, %6599
  %6620 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6621 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6622 = call float @dx.op.unary.f32(i32 7, float %6619)  ; Saturate(value)
  br label %6623

; <label>:6623                                    ; preds = %6600, %6517
  %6624 = phi float [ %6620, %6600 ], [ %6597, %6517 ]
  %6625 = phi float [ %6621, %6600 ], [ %6598, %6517 ]
  %6626 = phi float [ %6622, %6600 ], [ %6599, %6517 ]
  %6627 = fmul fast float %6544, 9.843750e-01
  %6628 = fadd fast float %6627, 7.812500e-03
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6628, float %5525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 2
  %6631 = extractvalue %dx.types.ResRet.f32 %6629, 3
  %6632 = fmul fast float %6630, %5399
  %6633 = fmul fast float %6630, %5400
  %6634 = fmul fast float %6630, %5408
  %6635 = fadd fast float %6632, %6631
  %6636 = fadd fast float %6633, %6631
  %6637 = fadd fast float %6634, %6631
  br i1 %5535, label %6638, label %6661

; <label>:6638                                    ; preds = %6623
  %6639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4202, float %6544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.ResRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.ResRet.f32 %6639, 2
  %6643 = fadd fast float %6640, -5.000000e-01
  %6644 = fadd fast float %6641, -5.000000e-01
  %6645 = fadd fast float %6642, -5.000000e-01
  %6646 = fmul fast float %5399, 4.000000e+00
  %6647 = fmul fast float %6646, %6591
  %6648 = fmul fast float %6647, %6643
  %6649 = fmul fast float %5400, 4.000000e+00
  %6650 = fmul fast float %6649, %6592
  %6651 = fmul fast float %6650, %6644
  %6652 = fmul fast float %5408, 4.000000e+00
  %6653 = fmul fast float %6652, %6593
  %6654 = fmul fast float %6653, %6645
  %6655 = fadd fast float %6648, %6635
  %6656 = fadd fast float %6651, %6636
  %6657 = fadd fast float %6654, %6637
  %6658 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6659 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6660 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  br label %6661

; <label>:6661                                    ; preds = %6638, %6623
  %6662 = phi float [ %6658, %6638 ], [ %6635, %6623 ]
  %6663 = phi float [ %6659, %6638 ], [ %6636, %6623 ]
  %6664 = phi float [ %6660, %6638 ], [ %6637, %6623 ]
  %6665 = call float @dx.op.binary.f32(i32 35, float %6663, float %6664)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6662, float %6665)  ; FMax(a,b)
  %6667 = fsub fast float 1.000000e+00, %6666
  %6668 = fmul fast float %6624, %6582
  %6669 = fmul fast float %6625, %6582
  %6670 = fmul fast float %6626, %6582
  %6671 = fsub fast float 1.000000e+00, %6545
  %6672 = bitcast float %6671 to i32
  %6673 = sitofp i32 %6672 to float
  %6674 = fmul fast float %6673, 5.000000e+00
  %6675 = fadd fast float %6674, 0xC1EFBF8940000000
  %6676 = fptosi float %6675 to i32
  %6677 = bitcast i32 %6676 to float
  %6678 = fmul fast float %6677, %4203
  %6679 = fmul fast float %6667, %6678
  %6680 = fmul fast float %6679, %5585
  %6681 = fmul fast float %6679, %5586
  %6682 = fmul fast float %6679, %5587
  %6683 = fadd fast float %6680, %6668
  %6684 = fadd fast float %6681, %6669
  %6685 = fadd fast float %6682, %6670
  %6686 = fmul fast float %6550, %6533
  %6687 = fmul fast float %6686, %6667
  %6688 = fmul fast float %6550, %6534
  %6689 = fmul fast float %6688, %6667
  %6690 = fmul fast float %6550, %6535
  %6691 = fmul fast float %6690, %6667
  %6692 = fmul fast float %6686, %6683
  %6693 = fmul fast float %6688, %6684
  %6694 = fmul fast float %6690, %6685
  %6695 = fadd fast float %6687, %5569
  %6696 = fmul fast float %6695, %4199
  %6697 = fadd fast float %6689, %5570
  %6698 = fmul fast float %6697, %4199
  %6699 = fadd fast float %6691, %5571
  %6700 = fmul fast float %6699, %4199
  %6701 = fadd fast float %6692, %5612
  %6702 = fmul fast float %6701, %4199
  %6703 = fadd fast float %6693, %5615
  %6704 = fmul fast float %6703, %4199
  %6705 = fadd fast float %6694, %5618
  %6706 = fmul fast float %6705, %4199
  br label %6707

; <label>:6707                                    ; preds = %6661, %6451, %5562
  %6708 = phi float [ %5613, %5562 ], [ %5613, %6451 ], [ %6702, %6661 ]
  %6709 = phi float [ %5616, %5562 ], [ %5616, %6451 ], [ %6704, %6661 ]
  %6710 = phi float [ %5619, %5562 ], [ %5619, %6451 ], [ %6706, %6661 ]
  %6711 = phi float [ %5608, %5562 ], [ %5608, %6451 ], [ %6696, %6661 ]
  %6712 = phi float [ %5609, %5562 ], [ %5609, %6451 ], [ %6698, %6661 ]
  %6713 = phi float [ %5610, %5562 ], [ %5610, %6451 ], [ %6700, %6661 ]
  %6714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.i32 %6714, 0
  %6716 = icmp eq i32 %6715, 0
  br i1 %6716, label %7337, label %6717

; <label>:6717                                    ; preds = %6707
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6721 = fmul fast float %6719, %106
  %6722 = fmul fast float %6720, %107
  %6723 = fptoui float %6721 to i32
  %6724 = fptoui float %6722 to i32
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6728 = extractvalue %dx.types.CBufRet.f32 %6725, 3
  %6729 = fadd fast float %97, -4.000000e+00
  %6730 = call float @dx.op.binary.f32(i32 35, float %6729, float 0.000000e+00)  ; FMax(a,b)
  %6731 = fadd fast float %6730, %6726
  %6732 = fmul fast float %6731, %6727
  %6733 = call float @dx.op.unary.f32(i32 23, float %6732)  ; Log(value)
  %6734 = fmul fast float %6733, %6728
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6737 = fmul fast float %6734, %6736
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.i32 %6739, 1
  %6741 = add i32 %6740, -1
  %6742 = uitofp i32 %6740 to float
  %6743 = fmul fast float %6742, %6738
  %6744 = fptoui float %6743 to i32
  %6745 = call i32 @dx.op.binary.i32(i32 40, i32 %6744, i32 %6741)  ; UMin(a,b)
  %6746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.i32 %6746, 2
  %6748 = extractvalue %dx.types.CBufRet.i32 %6746, 3
  %6749 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6724, i32 %6747, i32 %6723)  ; UMad(a,b,c)
  %6750 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6745, i32 %6748, i32 %6749)  ; UMad(a,b,c)
  %6751 = add nsw i32 %6715, -1
  %6752 = call i32 @dx.op.binary.i32(i32 37, i32 %6751, i32 0)  ; IMax(a,b)
  %6753 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6754 = fptoui float %6753 to i32
  %6755 = lshr i32 %6754, 5
  %6756 = call i32 @dx.op.binary.i32(i32 40, i32 %6755, i32 8191)  ; UMin(a,b)
  %6757 = shl i32 %6756, 2
  %6758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6757, i32 undef)  ; BufferLoad(srv,index,wot)
  %6759 = extractvalue %dx.types.ResRet.i32 %6758, 0
  %6760 = lshr i32 %6759, 16
  %6761 = and i32 %6759, 65535
  %6762 = lshr i32 %6759, 21
  %6763 = lshr i32 %6761, 5
  %6764 = call i32 @dx.op.binary.i32(i32 40, i32 %6763, i32 %6752)  ; UMin(a,b)
  %6765 = icmp ugt i32 %6762, %6764
  br i1 %6765, label %7337, label %6766

; <label>:6766                                    ; preds = %6717
  br label %6767

; <label>:6767                                    ; preds = %7327, %6766
  %6768 = phi i32 [ %7334, %7327 ], [ %6762, %6766 ]
  %6769 = phi float [ %7328, %7327 ], [ %6708, %6766 ]
  %6770 = phi float [ %7329, %7327 ], [ %6709, %6766 ]
  %6771 = phi float [ %7330, %7327 ], [ %6710, %6766 ]
  %6772 = phi float [ %7331, %7327 ], [ %6711, %6766 ]
  %6773 = phi float [ %7332, %7327 ], [ %6712, %6766 ]
  %6774 = phi float [ %7333, %7327 ], [ %6713, %6766 ]
  %6775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.i32 %6775, 0
  %6777 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6750, i32 %6776, i32 %6768)  ; UMad(a,b,c)
  %6778 = shl i32 %6777, 2
  %6779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6778, i32 undef)  ; BufferLoad(srv,index,wot)
  %6780 = extractvalue %dx.types.ResRet.i32 %6779, 0
  %6781 = shl i32 %6768, 5
  %6782 = sub nsw i32 %6760, %6781
  %6783 = call i32 @dx.op.binary.i32(i32 37, i32 %6782, i32 0)  ; IMax(a,b)
  %6784 = call i32 @dx.op.binary.i32(i32 38, i32 %6783, i32 31)  ; IMin(a,b)
  %6785 = sub nsw i32 1, %6760
  %6786 = add nsw i32 %6785, %6761
  %6787 = call i32 @dx.op.binary.i32(i32 37, i32 %6786, i32 0)  ; IMax(a,b)
  %6788 = call i32 @dx.op.binary.i32(i32 38, i32 %6787, i32 32)  ; IMin(a,b)
  %6789 = and i32 %6788, 31
  %6790 = shl i32 -1, %6789
  %6791 = xor i32 %6790, -1
  %6792 = and i32 %6784, 31
  %6793 = shl i32 %6791, %6792
  %6794 = icmp eq i32 %6788, 32
  %6795 = select i1 %6794, i32 -1, i32 %6793
  %6796 = and i32 %6795, %6780
  %6797 = icmp eq i32 %6796, 0
  br i1 %6797, label %7327, label %6798

; <label>:6798                                    ; preds = %6767
  br label %6799

; <label>:6799                                    ; preds = %6933, %6798
  %6800 = phi i32 [ %6811, %6933 ], [ %6796, %6798 ]
  %6801 = phi float [ %6934, %6933 ], [ %6769, %6798 ]
  %6802 = phi float [ %6935, %6933 ], [ %6770, %6798 ]
  %6803 = phi float [ %6936, %6933 ], [ %6771, %6798 ]
  %6804 = phi float [ %6937, %6933 ], [ %6772, %6798 ]
  %6805 = phi float [ %6938, %6933 ], [ %6773, %6798 ]
  %6806 = phi float [ %6939, %6933 ], [ %6774, %6798 ]
  %6807 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6800)  ; FirstbitLo(value)
  %6808 = add i32 %6807, %6781
  %6809 = and i32 %6807, 31
  %6810 = shl i32 1, %6809
  %6811 = xor i32 %6810, %6800
  %6812 = mul i32 %6808, 112
  %6813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6812, i32 undef)  ; BufferLoad(srv,index,wot)
  %6814 = extractvalue %dx.types.ResRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.ResRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.ResRet.f32 %6813, 2
  %6817 = or i32 %6812, 12
  %6818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6817, i32 undef)  ; BufferLoad(srv,index,wot)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  %6820 = add i32 %6812, 16
  %6821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6820, i32 undef)  ; BufferLoad(srv,index,wot)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = add i32 %6812, 28
  %6826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6825, i32 undef)  ; BufferLoad(srv,index,wot)
  %6827 = extractvalue %dx.types.ResRet.i32 %6826, 0
  %6828 = add i32 %6812, 44
  %6829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6828, i32 undef)  ; BufferLoad(srv,index,wot)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = add i32 %6812, 48
  %6832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6831, i32 undef)  ; BufferLoad(srv,index,wot)
  %6833 = extractvalue %dx.types.ResRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.ResRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.ResRet.f32 %6832, 2
  %6836 = extractvalue %dx.types.ResRet.f32 %6832, 3
  %6837 = add i32 %6812, 64
  %6838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6837, i32 undef)  ; BufferLoad(srv,index,wot)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.ResRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.ResRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.ResRet.f32 %6838, 3
  %6843 = add i32 %6812, 80
  %6844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6843, i32 undef)  ; BufferLoad(srv,index,wot)
  %6845 = extractvalue %dx.types.ResRet.f32 %6844, 1
  %6846 = extractvalue %dx.types.ResRet.f32 %6844, 2
  %6847 = add i32 %6812, 92
  %6848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6847, i32 undef)  ; BufferLoad(srv,index,wot)
  %6849 = extractvalue %dx.types.ResRet.i32 %6848, 0
  %6850 = call float @dx.op.dot3.f32(i32 55, float %6814, float %6815, float %6816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6851 = select i1 %252, float %6845, float %6814
  %6852 = select i1 %252, float %6850, float %6815
  %6853 = select i1 %252, float %6846, float %6816
  %6854 = and i32 %6849, 65535
  %6855 = uitofp i32 %6854 to float
  %6856 = lshr i32 %6849, 16
  %6857 = uitofp i32 %6856 to float
  %6858 = and i32 %6827, 65535
  %6859 = and i32 %6827, 50331648
  %6860 = icmp eq i32 %6859, 33554432
  %6861 = fsub fast float %6833, %193
  %6862 = fsub fast float %6834, %194
  %6863 = fsub fast float %6835, %195
  %6864 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %6863, float %6861, float %6862, float %6863)  ; Dot3(ax,ay,az,bx,by,bz)
  %6865 = call float @dx.op.unary.f32(i32 24, float %6864)  ; Sqrt(value)
  %6866 = fdiv fast float 1.000000e+00, %6865
  %6867 = fmul fast float %6866, %6861
  %6868 = fmul fast float %6866, %6862
  %6869 = fmul fast float %6866, %6863
  %6870 = fadd fast float %6865, %6819
  %6871 = fdiv fast float 1.000000e+00, %6870
  %6872 = fmul float %6830, %6871
  %6873 = fmul float %6872, %6872
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  br i1 %6860, label %6875, label %6896

; <label>:6875                                    ; preds = %6799
  %6876 = fmul fast float %6841, %6822
  %6877 = fmul fast float %6841, %6823
  %6878 = fmul fast float %6841, %6824
  %6879 = fadd fast float %6861, %6876
  %6880 = fadd fast float %6862, %6877
  %6881 = fadd fast float %6863, %6878
  %6882 = call float @dx.op.dot3.f32(i32 55, float %6879, float %6880, float %6881, float %6879, float %6880, float %6881)  ; Dot3(ax,ay,az,bx,by,bz)
  %6883 = call float @dx.op.unary.f32(i32 25, float %6882)  ; Rsqrt(value)
  %6884 = fmul fast float %6883, %6879
  %6885 = fmul fast float %6883, %6880
  %6886 = fmul fast float %6883, %6881
  %6887 = fsub fast float %193, %6833
  %6888 = fsub fast float %194, %6834
  %6889 = fsub fast float %195, %6835
  %6890 = fsub fast float -0.000000e+00, %6887
  %6891 = fsub fast float -0.000000e+00, %6888
  %6892 = fsub fast float -0.000000e+00, %6889
  %6893 = call float @dx.op.dot3.f32(i32 55, float %6890, float %6891, float %6892, float %6822, float %6823, float %6824)  ; Dot3(ax,ay,az,bx,by,bz)
  %6894 = fcmp fast ogt float %6893, 0.000000e+00
  %6895 = uitofp i1 %6894 to float
  br label %6896

; <label>:6896                                    ; preds = %6875, %6799
  %6897 = phi float [ %6895, %6875 ], [ 1.000000e+00, %6799 ]
  %6898 = phi float [ %6884, %6875 ], [ %6867, %6799 ]
  %6899 = phi float [ %6885, %6875 ], [ %6868, %6799 ]
  %6900 = phi float [ %6886, %6875 ], [ %6869, %6799 ]
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6822, float %6823, float %6824, float %6898, float %6899, float %6900)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = fmul fast float %6901, %6901
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6904, 5.000000e-01
  %6906 = fcmp fast ogt float %6901, 0.000000e+00
  %6907 = fsub fast float 1.000000e+00, %6905
  %6908 = select i1 %6906, float %6905, float %6907
  %6909 = fmul fast float %6908, %6857
  %6910 = fadd fast float %6909, %6855
  %6911 = fmul fast float %6910, 0x3EF0001000000000
  %6912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6911, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = fmul fast float %6901, %6839
  %6915 = fadd fast float %6914, %6840
  %6916 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6917 = select i1 %6860, float 1.000000e+00, float %6916
  %6918 = select i1 %6860, float %6916, float 1.000000e+00
  %6919 = fmul fast float %6865, %6836
  %6920 = fsub fast float 1.000000e+00, %6919
  %6921 = fmul fast float %6920, %6842
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = fmul fast float %6922, %6918
  %6924 = fmul fast float %6923, 2.000000e+00
  %6925 = fsub fast float 3.000000e+00, %6924
  %6926 = fmul fast float %6913, %6897
  %6927 = fmul fast float %6923, %6923
  %6928 = fmul fast float %6927, %6926
  %6929 = fmul fast float %6928, %6925
  %6930 = call float @dx.op.binary.f32(i32 36, float %6929, float %6929)  ; FMin(a,b)
  %6931 = call float @dx.op.binary.f32(i32 36, float %6929, float %6930)  ; FMin(a,b)
  %6932 = fcmp fast ogt float %6931, 0.000000e+00
  br i1 %6932, label %6941, label %6933, !dx.controlflow.hints !125

; <label>:6933                                    ; preds = %7283, %7041, %6896
  %6934 = phi float [ %6801, %7041 ], [ %6801, %6896 ], [ %7323, %7283 ]
  %6935 = phi float [ %6802, %7041 ], [ %6802, %6896 ], [ %7324, %7283 ]
  %6936 = phi float [ %6803, %7041 ], [ %6803, %6896 ], [ %7325, %7283 ]
  %6937 = phi float [ %6804, %7041 ], [ %6804, %6896 ], [ %7317, %7283 ]
  %6938 = phi float [ %6805, %7041 ], [ %6805, %6896 ], [ %7318, %7283 ]
  %6939 = phi float [ %6806, %7041 ], [ %6806, %6896 ], [ %7319, %7283 ]
  %6940 = icmp eq i32 %6800, %6810
  br i1 %6940, label %7326, label %6799

; <label>:6941                                    ; preds = %6896
  %6942 = icmp eq i32 %6858, 255
  br i1 %6942, label %7041, label %6943, !dx.controlflow.hints !126

; <label>:6943                                    ; preds = %6941
  %6944 = mul nuw nsw i32 %6858, 176
  %6945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6944, i32 undef)  ; BufferLoad(srv,index,wot)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = add nuw nsw i32 %6944, 16
  %6951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6950, i32 undef)  ; BufferLoad(srv,index,wot)
  %6952 = extractvalue %dx.types.ResRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.ResRet.f32 %6951, 1
  %6954 = add nuw nsw i32 %6944, 32
  %6955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.ResRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.ResRet.f32 %6955, 2
  %6959 = add nuw nsw i32 %6944, 48
  %6960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6959, i32 undef)  ; BufferLoad(srv,index,wot)
  %6961 = extractvalue %dx.types.ResRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.ResRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.ResRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.ResRet.f32 %6960, 3
  %6965 = add nuw nsw i32 %6944, 64
  %6966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6965, i32 undef)  ; BufferLoad(srv,index,wot)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.ResRet.f32 %6966, 2
  %6970 = extractvalue %dx.types.ResRet.f32 %6966, 3
  %6971 = add nuw nsw i32 %6944, 80
  %6972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6971, i32 undef)  ; BufferLoad(srv,index,wot)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = extractvalue %dx.types.ResRet.f32 %6972, 3
  %6977 = add nuw nsw i32 %6944, 96
  %6978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6977, i32 undef)  ; BufferLoad(srv,index,wot)
  %6979 = extractvalue %dx.types.ResRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.ResRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.ResRet.f32 %6978, 2
  %6982 = extractvalue %dx.types.ResRet.f32 %6978, 3
  %6983 = bitcast float %6953 to i32
  %6984 = fmul fast float %6958, %113
  %6985 = fmul fast float %6958, %114
  %6986 = fmul fast float %6958, %115
  %6987 = fadd fast float %6984, %193
  %6988 = fadd fast float %6985, %194
  %6989 = fadd fast float %6986, %195
  %6990 = fmul fast float %6987, %6961
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6988, float %6967, float %6990)  ; FMad(a,b,c)
  %6992 = call float @dx.op.tertiary.f32(i32 46, float %6989, float %6973, float %6991)  ; FMad(a,b,c)
  %6993 = fadd fast float %6992, %6979
  %6994 = fmul fast float %6987, %6962
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6988, float %6968, float %6994)  ; FMad(a,b,c)
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6989, float %6974, float %6995)  ; FMad(a,b,c)
  %6997 = fadd fast float %6996, %6980
  %6998 = fmul fast float %6987, %6963
  %6999 = call float @dx.op.tertiary.f32(i32 46, float %6988, float %6969, float %6998)  ; FMad(a,b,c)
  %7000 = call float @dx.op.tertiary.f32(i32 46, float %6989, float %6975, float %6999)  ; FMad(a,b,c)
  %7001 = fadd fast float %7000, %6981
  %7002 = fmul fast float %6987, %6964
  %7003 = call float @dx.op.tertiary.f32(i32 46, float %6988, float %6970, float %7002)  ; FMad(a,b,c)
  %7004 = call float @dx.op.tertiary.f32(i32 46, float %6989, float %6976, float %7003)  ; FMad(a,b,c)
  %7005 = fadd fast float %7004, %6982
  %7006 = fdiv fast float %6993, %7005
  %7007 = fdiv fast float %6997, %7005
  %7008 = fdiv fast float %7001, %7005
  %7009 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7008)  ; FMax(a,b)
  %7010 = fmul fast float %263, 0x401921FB60000000
  %7011 = call float @dx.op.unary.f32(i32 13, float %7010)  ; Sin(value)
  %7012 = call float @dx.op.unary.f32(i32 12, float %7010)  ; Cos(value)
  %7013 = fsub fast float -0.000000e+00, %7011
  %7014 = fmul fast float %6948, 5.000000e-01
  %7015 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7016 = call float @dx.op.unary.f32(i32 22, float %7015)  ; Frc(value)
  %7017 = fmul fast float %7016, 0x404A7DD040000000
  %7018 = call float @dx.op.unary.f32(i32 22, float %7017)  ; Frc(value)
  %7019 = fmul fast float %7018, %6957
  %7020 = fadd fast float %7019, %7014
  %7021 = call float @dx.op.tertiary.f32(i32 46, float %7020, float %7013, float 0.000000e+00)  ; FMad(a,b,c)
  %7022 = call float @dx.op.tertiary.f32(i32 46, float %7020, float %7012, float 0.000000e+00)  ; FMad(a,b,c)
  %7023 = fadd fast float %7021, %7006
  %7024 = fadd fast float %7022, %7007
  %7025 = fmul fast float %7023, %6952
  %7026 = fmul fast float %7024, %6952
  %7027 = call float @dx.op.binary.f32(i32 35, float %7025, float %6948)  ; FMax(a,b)
  %7028 = call float @dx.op.binary.f32(i32 35, float %7026, float %6948)  ; FMax(a,b)
  %7029 = call float @dx.op.binary.f32(i32 36, float %7027, float %6949)  ; FMin(a,b)
  %7030 = call float @dx.op.binary.f32(i32 36, float %7028, float %6949)  ; FMin(a,b)
  %7031 = fadd fast float %7029, %6946
  %7032 = fadd fast float %7030, %6947
  %7033 = uitofp i32 %6983 to float
  %7034 = fadd fast float %7009, %6956
  %7035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7031, float %7032, float %7033, float undef, i32 0, i32 0, i32 undef, float %7034)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7036 = extractvalue %dx.types.ResRet.f32 %7035, 0
  %7037 = fadd fast float %7036, -1.000000e+00
  %7038 = fmul fast float %7037, %6917
  %7039 = fadd fast float %7038, 1.000000e+00
  %7040 = fmul fast float %7039, %6929
  br label %7041

; <label>:7041                                    ; preds = %6943, %6941
  %7042 = phi float [ %7040, %6943 ], [ %6929, %6941 ]
  %7043 = call float @dx.op.binary.f32(i32 36, float %7042, float %7042)  ; FMin(a,b)
  %7044 = call float @dx.op.binary.f32(i32 36, float %7042, float %7043)  ; FMin(a,b)
  %7045 = fcmp fast ogt float %7044, 0.000000e+00
  br i1 %7045, label %7046, label %6933, !dx.controlflow.hints !127

; <label>:7046                                    ; preds = %7041
  %7047 = fmul fast float %7042, %6851
  %7048 = fmul fast float %7042, %6852
  %7049 = fmul fast float %7042, %6853
  %7050 = fsub fast float %6835, %4604
  %7051 = fcmp fast ogt float %7050, 0.000000e+00
  %7052 = fsub fast float %195, %4604
  %7053 = fcmp fast ogt float %7052, 0.000000e+00
  %7054 = xor i1 %7053, %7051
  %7055 = fsub fast float %4604, %6835
  %7056 = fmul fast float %7055, 2.000000e+00
  %7057 = fadd fast float %7056, %6835
  %7058 = select i1 %7054, float %6835, float %7057
  %7059 = fsub fast float %7058, %195
  %7060 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %7059, float %6861, float %6862, float %7059)  ; Dot3(ax,ay,az,bx,by,bz)
  %7061 = call float @dx.op.unary.f32(i32 25, float %7060)  ; Rsqrt(value)
  %7062 = fmul fast float %7061, %6861
  %7063 = fmul fast float %7061, %6862
  %7064 = fmul fast float %7061, %7059
  %7065 = fsub fast float %4604, %195
  %7066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7065)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7062, float %7063, float %7064)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = fdiv fast float 1.000000e+00, %7067
  %7069 = fmul fast float %7068, %7066
  %7070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7052, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7071 = fcmp fast ogt float %7070, 0.000000e+00
  %7072 = fcmp fast olt float %7070, 0.000000e+00
  %7073 = zext i1 %7071 to i32
  %7074 = zext i1 %7072 to i32
  %7075 = sub nsw i32 %7073, %7074
  %7076 = sitofp i32 %7075 to float
  %7077 = fsub fast float %7058, %4604
  %7078 = call float @dx.op.dot3.f32(i32 55, float %6861, float %6862, float %7077, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = fcmp fast ogt float %7078, 0.000000e+00
  %7080 = fcmp fast olt float %7078, 0.000000e+00
  %7081 = zext i1 %7079 to i32
  %7082 = zext i1 %7080 to i32
  %7083 = sub nsw i32 %7081, %7082
  %7084 = sitofp i32 %7083 to float
  %7085 = fcmp fast une float %7076, %7084
  br i1 %7085, label %7086, label %7096

; <label>:7086                                    ; preds = %7046
  %7087 = fmul fast float %7069, %7064
  %7088 = fmul fast float %7069, %7063
  %7089 = fmul fast float %7069, %7062
  %7090 = fmul fast float %7089, %7089
  %7091 = fmul fast float %7088, %7088
  %7092 = fadd fast float %7090, %7091
  %7093 = fmul fast float %7087, %7087
  %7094 = fadd fast float %7092, %7093
  %7095 = call float @dx.op.unary.f32(i32 24, float %7094)  ; Sqrt(value)
  br label %7108

; <label>:7096                                    ; preds = %7046
  %7097 = icmp slt i32 %7075, 0
  br i1 %7097, label %7098, label %7108

; <label>:7098                                    ; preds = %7096
  %7099 = fsub fast float %193, %6833
  %7100 = fsub fast float %194, %6834
  %7101 = fsub fast float %195, %7058
  %7102 = fmul fast float %7099, %7099
  %7103 = fmul fast float %7100, %7100
  %7104 = fadd fast float %7102, %7103
  %7105 = fmul fast float %7101, %7101
  %7106 = fadd fast float %7104, %7105
  %7107 = call float @dx.op.unary.f32(i32 24, float %7106)  ; Sqrt(value)
  br label %7108

; <label>:7108                                    ; preds = %7098, %7096, %7086
  %7109 = phi float [ %7095, %7086 ], [ %7107, %7098 ], [ 0.000000e+00, %7096 ]
  %7110 = and i1 %7053, %7051
  %7111 = fsub fast float -0.000000e+00, %7109
  %7112 = select i1 %7110, float -0.000000e+00, float %7111
  %7113 = fmul fast float %4605, 0x3FF7154760000000
  %7114 = fmul fast float %7113, %7112
  %7115 = fmul fast float %4606, 0x3FF7154760000000
  %7116 = fmul fast float %7115, %7112
  %7117 = fmul fast float %4607, 0x3FF7154760000000
  %7118 = fmul fast float %7117, %7112
  %7119 = call float @dx.op.unary.f32(i32 21, float %7114)  ; Exp(value)
  %7120 = call float @dx.op.unary.f32(i32 21, float %7116)  ; Exp(value)
  %7121 = call float @dx.op.unary.f32(i32 21, float %7118)  ; Exp(value)
  %7122 = call float @dx.op.unary.f32(i32 7, float %7119)  ; Saturate(value)
  %7123 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7124 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7125 = fmul fast float %7047, %7122
  %7126 = fmul fast float %7048, %7123
  %7127 = fmul fast float %7049, %7124
  %7128 = fsub fast float %6867, %5395
  %7129 = fsub fast float %6868, %5394
  %7130 = fsub fast float %6869, %5393
  %7131 = call float @dx.op.dot3.f32(i32 55, float %7128, float %7129, float %7130, float %7128, float %7129, float %7130)  ; Dot3(ax,ay,az,bx,by,bz)
  %7132 = call float @dx.op.unary.f32(i32 25, float %7131)  ; Rsqrt(value)
  %7133 = fmul fast float %7132, %7128
  %7134 = fmul fast float %7132, %7129
  %7135 = fmul fast float %7132, %7130
  %7136 = call float @dx.op.dot3.f32(i32 55, float %6867, float %6868, float %6869, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %7137 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5391, float %5390, float %7133, float %7134, float %7135)  ; Dot3(ax,ay,az,bx,by,bz)
  %7138 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7139 = fmul fast float %7138, %6874
  %7140 = fmul fast float %7138, %7138
  %7141 = fmul fast float %7140, %5423
  %7142 = call float @dx.op.unary.f32(i32 7, float %7141)  ; Saturate(value)
  %7143 = fmul fast float %7139, %7142
  %7144 = bitcast float %6864 to i32
  %7145 = ashr i32 %7144, 1
  %7146 = sub nsw i32 1597463007, %7145
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %7147, %6861
  %7149 = fmul fast float %7147, %6862
  %7150 = fmul fast float %7147, %6863
  %7151 = fsub fast float %7148, %5395
  %7152 = fsub fast float %7149, %5394
  %7153 = fsub fast float %7150, %5393
  %7154 = call float @dx.op.dot3.f32(i32 55, float %7151, float %7152, float %7153, float %7151, float %7152, float %7153)  ; Dot3(ax,ay,az,bx,by,bz)
  %7155 = call float @dx.op.unary.f32(i32 25, float %7154)  ; Rsqrt(value)
  %7156 = fmul fast float %7151, %7155
  %7157 = fmul fast float %7152, %7155
  %7158 = fmul fast float %7153, %7155
  %7159 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %7156, float %7157, float %7158)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = fmul fast float %7159, %7159
  %7161 = call float @dx.op.unary.f32(i32 6, float %7136)  ; FAbs(value)
  %7162 = fsub fast float 1.000000e+00, %5405
  %7163 = call float @dx.op.binary.f32(i32 35, float %7162, float 0x3F847AE140000000)  ; FMax(a,b)
  %7164 = fmul fast float %7163, %7163
  %7165 = fmul fast float %7164, %7164
  %7166 = fsub fast float 1.000000e+00, %7165
  %7167 = fmul fast float %5410, %5410
  %7168 = fmul fast float %7167, %7166
  %7169 = fadd fast float %7168, %7165
  %7170 = bitcast float %7169 to i32
  %7171 = ashr i32 %7170, 1
  %7172 = add nsw i32 %7171, 532487669
  %7173 = bitcast i32 %7172 to float
  %7174 = fadd fast float %7173, %5410
  %7175 = fmul fast float %7165, %7160
  %7176 = fsub fast float 1.000000e+00, %7160
  %7177 = fadd fast float %7176, %7175
  %7178 = fmul fast float %7161, %7161
  %7179 = fmul fast float %7178, %7166
  %7180 = fadd fast float %7179, %7165
  %7181 = bitcast float %7180 to i32
  %7182 = ashr i32 %7181, 1
  %7183 = add nsw i32 %7182, 532487669
  %7184 = bitcast i32 %7183 to float
  %7185 = fadd fast float %7184, %7161
  %7186 = fmul fast float %7177, %7177
  %7187 = fmul fast float %7186, %7174
  %7188 = fmul fast float %7187, %7185
  %7189 = fdiv fast float 1.000000e+00, %7188
  %7190 = bitcast float %7165 to i32
  %7191 = sitofp i32 %7190 to float
  %7192 = fmul fast float %7191, 0x3FE7F73180000000
  %7193 = fadd fast float %7192, 0x41AFE27C40000000
  %7194 = fptosi float %7193 to i32
  %7195 = bitcast i32 %7194 to float
  %7196 = fmul fast float %6830, 0x3FD80E9D60000000
  %7197 = fmul fast float %7196, %7147
  %7198 = fadd fast float %7195, %7197
  %7199 = bitcast float %7198 to i32
  %7200 = sub nsw i32 2129859010, %7199
  %7201 = bitcast i32 %7200 to float
  %7202 = fmul fast float %7165, %7189
  %7203 = fmul fast float %7202, %7195
  %7204 = fmul fast float %7203, %7201
  %7205 = call float @dx.op.unary.f32(i32 6, float %7137)  ; FAbs(value)
  %7206 = fsub fast float 1.000000e+00, %7205
  %7207 = bitcast float %7206 to i32
  %7208 = sitofp i32 %7207 to float
  %7209 = fmul fast float %7208, 5.000000e+00
  %7210 = fadd fast float %7209, 0xC1EFBF8940000000
  %7211 = fptosi float %7210 to i32
  %7212 = bitcast i32 %7211 to float
  %7213 = fsub fast float 1.000000e+00, %5399
  %7214 = fsub fast float 1.000000e+00, %5400
  %7215 = fsub fast float 1.000000e+00, %5408
  %7216 = fmul fast float %7212, %7213
  %7217 = fmul fast float %7212, %7214
  %7218 = fmul fast float %7212, %7215
  %7219 = fadd fast float %7216, %5399
  %7220 = fadd fast float %7217, %5400
  %7221 = fadd fast float %7218, %5408
  br i1 %5535, label %7222, label %7245

; <label>:7222                                    ; preds = %7108
  %7223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4202, float %7205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7224 = extractvalue %dx.types.ResRet.f32 %7223, 0
  %7225 = extractvalue %dx.types.ResRet.f32 %7223, 1
  %7226 = extractvalue %dx.types.ResRet.f32 %7223, 2
  %7227 = fadd fast float %7224, -5.000000e-01
  %7228 = fadd fast float %7225, -5.000000e-01
  %7229 = fadd fast float %7226, -5.000000e-01
  %7230 = fmul fast float %5399, 4.000000e+00
  %7231 = fmul fast float %7230, %7213
  %7232 = fmul fast float %7231, %7227
  %7233 = fmul fast float %5400, 4.000000e+00
  %7234 = fmul fast float %7233, %7214
  %7235 = fmul fast float %7234, %7228
  %7236 = fmul fast float %5408, 4.000000e+00
  %7237 = fmul fast float %7236, %7215
  %7238 = fmul fast float %7237, %7229
  %7239 = fadd fast float %7232, %7219
  %7240 = fadd fast float %7235, %7220
  %7241 = fadd fast float %7238, %7221
  %7242 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  %7243 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7244 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  br label %7245

; <label>:7245                                    ; preds = %7222, %7108
  %7246 = phi float [ %7242, %7222 ], [ %7219, %7108 ]
  %7247 = phi float [ %7243, %7222 ], [ %7220, %7108 ]
  %7248 = phi float [ %7244, %7222 ], [ %7221, %7108 ]
  %7249 = fmul fast float %7136, 9.843750e-01
  %7250 = fadd fast float %7249, 7.812500e-03
  %7251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7250, float %5525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 3
  %7254 = fmul fast float %7252, %5399
  %7255 = fmul fast float %7252, %5400
  %7256 = fmul fast float %7252, %5408
  %7257 = fadd fast float %7254, %7253
  %7258 = fadd fast float %7255, %7253
  %7259 = fadd fast float %7256, %7253
  br i1 %5535, label %7260, label %7283

; <label>:7260                                    ; preds = %7245
  %7261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4202, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = fadd fast float %7262, -5.000000e-01
  %7266 = fadd fast float %7263, -5.000000e-01
  %7267 = fadd fast float %7264, -5.000000e-01
  %7268 = fmul fast float %5399, 4.000000e+00
  %7269 = fmul fast float %7268, %7213
  %7270 = fmul fast float %7269, %7265
  %7271 = fmul fast float %5400, 4.000000e+00
  %7272 = fmul fast float %7271, %7214
  %7273 = fmul fast float %7272, %7266
  %7274 = fmul fast float %5408, 4.000000e+00
  %7275 = fmul fast float %7274, %7215
  %7276 = fmul fast float %7275, %7267
  %7277 = fadd fast float %7270, %7257
  %7278 = fadd fast float %7273, %7258
  %7279 = fadd fast float %7276, %7259
  %7280 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  %7281 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  br label %7283

; <label>:7283                                    ; preds = %7260, %7245
  %7284 = phi float [ %7280, %7260 ], [ %7257, %7245 ]
  %7285 = phi float [ %7281, %7260 ], [ %7258, %7245 ]
  %7286 = phi float [ %7282, %7260 ], [ %7259, %7245 ]
  %7287 = call float @dx.op.binary.f32(i32 35, float %7285, float %7286)  ; FMax(a,b)
  %7288 = call float @dx.op.binary.f32(i32 35, float %7284, float %7287)  ; FMax(a,b)
  %7289 = fsub fast float 1.000000e+00, %7288
  %7290 = fmul fast float %7246, %7204
  %7291 = fmul fast float %7247, %7204
  %7292 = fmul fast float %7248, %7204
  %7293 = fsub fast float 1.000000e+00, %7137
  %7294 = bitcast float %7293 to i32
  %7295 = sitofp i32 %7294 to float
  %7296 = fmul fast float %7295, 5.000000e+00
  %7297 = fadd fast float %7296, 0xC1EFBF8940000000
  %7298 = fptosi float %7297 to i32
  %7299 = bitcast i32 %7298 to float
  %7300 = fmul fast float %7299, %4203
  %7301 = fmul fast float %7289, %7300
  %7302 = fmul fast float %7301, %5585
  %7303 = fmul fast float %7301, %5586
  %7304 = fmul fast float %7301, %5587
  %7305 = fadd fast float %7302, %7290
  %7306 = fadd fast float %7303, %7291
  %7307 = fadd fast float %7304, %7292
  %7308 = fmul fast float %7125, %4199
  %7309 = fmul fast float %7308, %7143
  %7310 = fmul fast float %7309, %7289
  %7311 = fmul fast float %7126, %4199
  %7312 = fmul fast float %7311, %7143
  %7313 = fmul fast float %7312, %7289
  %7314 = fmul fast float %7127, %4199
  %7315 = fmul fast float %7314, %7143
  %7316 = fmul fast float %7315, %7289
  %7317 = fadd fast float %7310, %6804
  %7318 = fadd fast float %7313, %6805
  %7319 = fadd fast float %7316, %6806
  %7320 = fmul fast float %7309, %7305
  %7321 = fmul fast float %7312, %7306
  %7322 = fmul fast float %7315, %7307
  %7323 = fadd fast float %7320, %6801
  %7324 = fadd fast float %7321, %6802
  %7325 = fadd fast float %7322, %6803
  br label %6933

; <label>:7326                                    ; preds = %6933
  br label %7327

; <label>:7327                                    ; preds = %7326, %6767
  %7328 = phi float [ %6769, %6767 ], [ %6934, %7326 ]
  %7329 = phi float [ %6770, %6767 ], [ %6935, %7326 ]
  %7330 = phi float [ %6771, %6767 ], [ %6936, %7326 ]
  %7331 = phi float [ %6772, %6767 ], [ %6937, %7326 ]
  %7332 = phi float [ %6773, %6767 ], [ %6938, %7326 ]
  %7333 = phi float [ %6774, %6767 ], [ %6939, %7326 ]
  %7334 = add i32 %6768, 1
  %7335 = icmp ugt i32 %7334, %6764
  br i1 %7335, label %7336, label %6767

; <label>:7336                                    ; preds = %7327
  br label %7337

; <label>:7337                                    ; preds = %7336, %6717, %6707
  %7338 = phi float [ %6708, %6707 ], [ %6708, %6717 ], [ %7328, %7336 ]
  %7339 = phi float [ %6709, %6707 ], [ %6709, %6717 ], [ %7329, %7336 ]
  %7340 = phi float [ %6710, %6707 ], [ %6710, %6717 ], [ %7330, %7336 ]
  %7341 = phi float [ %6711, %6707 ], [ %6711, %6717 ], [ %7331, %7336 ]
  %7342 = phi float [ %6712, %6707 ], [ %6712, %6717 ], [ %7332, %7336 ]
  %7343 = phi float [ %6713, %6707 ], [ %6713, %6717 ], [ %7333, %7336 ]
  %7344 = fmul fast float %4199, %4199
  %7345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7346 = extractvalue %dx.types.CBufRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %5591
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7350 = fsub fast float 1.000000e+00, %4207
  %7351 = call float @dx.op.unary.f32(i32 7, float %7350)  ; Saturate(value)
  %7352 = fadd fast float %7343, %4205
  %7353 = fmul fast float %7352, %4207
  %7354 = fmul fast float %7351, %7349
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 3
  %7357 = fmul fast float %7341, %5396
  %7358 = fmul fast float %7342, %5397
  %7359 = fmul fast float %7343, %5398
  %7360 = fcmp fast ogt float %97, %215
  %7361 = and i1 %7360, %4610
  %7362 = or i1 %4616, %7361
  %7363 = icmp eq i32 %4609, 2
  %7364 = fcmp fast ole float %97, %215
  %7365 = and i1 %7364, %7363
  %7366 = or i1 %7365, %7362
  br i1 %7361, label %7367, label %7624

; <label>:7367                                    ; preds = %7337
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7371 = fmul fast float %7369, %106
  %7372 = fmul fast float %7370, %107
  %7373 = call float @dx.op.unary.f32(i32 7, float %7371)  ; Saturate(value)
  %7374 = call float @dx.op.unary.f32(i32 7, float %7372)  ; Saturate(value)
  %7375 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7373, float %7374, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = extractvalue %dx.types.ResRet.f32 %7375, 3
  %7380 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7373, float %7374, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.ResRet.f32 %7380, 1
  %7383 = extractvalue %dx.types.ResRet.f32 %7380, 2
  %7384 = extractvalue %dx.types.ResRet.f32 %7380, 3
  %7385 = call float @dx.op.binary.f32(i32 35, float %7377, float %7378)  ; FMax(a,b)
  %7386 = call float @dx.op.binary.f32(i32 35, float %7376, float %7385)  ; FMax(a,b)
  %7387 = call float @dx.op.binary.f32(i32 35, float %7386, float %7379)  ; FMax(a,b)
  %7388 = call float @dx.op.binary.f32(i32 36, float %7382, float %7383)  ; FMin(a,b)
  %7389 = call float @dx.op.binary.f32(i32 36, float %7381, float %7388)  ; FMin(a,b)
  %7390 = call float @dx.op.binary.f32(i32 36, float %7389, float %7384)  ; FMin(a,b)
  %7391 = fmul fast float %7387, 2.550000e+02
  %7392 = fadd fast float %7391, 0x3F70101020000000
  %7393 = fptoui float %7392 to i32
  %7394 = fmul fast float %7390, 2.550000e+02
  %7395 = fadd fast float %7394, 0x3F70101020000000
  %7396 = fptoui float %7395 to i32
  %7397 = icmp ult i32 %7393, %7396
  br i1 %7397, label %7398, label %7566

; <label>:7398                                    ; preds = %7367
  %7399 = fcmp fast ogt float %96, 9.843750e-01
  %7400 = fadd fast float %97, -4.000000e+00
  %7401 = select i1 %7399, float -4.000000e+00, float %7400
  %7402 = call float @dx.op.binary.f32(i32 35, float %7401, float 0.000000e+00)  ; FMax(a,b)
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = fadd fast float %7404, %7402
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = fmul fast float %7405, %7406
  %7408 = call float @dx.op.unary.f32(i32 23, float %7407)  ; Log(value)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7410 = fmul fast float %7409, %7408
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7413 = fmul fast float %7410, %7412
  %7414 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7415 = uitofp i32 %7393 to float
  %7416 = uitofp i32 %7396 to float
  %7417 = fadd fast float %7415, 5.000000e-01
  %7418 = fadd fast float %7416, 5.000000e-01
  %7419 = fmul fast float %7412, %7417
  %7420 = fmul fast float %7412, %7418
  %7421 = fadd fast float %7419, 0x3F0FFB4800000000
  %7422 = fadd fast float %7420, 0xBF0FFB4800000000
  %7423 = call float @dx.op.binary.f32(i32 35, float %7414, float %7421)  ; FMax(a,b)
  %7424 = call float @dx.op.binary.f32(i32 36, float %7423, float %7422)  ; FMin(a,b)
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7428 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7429 = fmul fast float %7426, %7424
  %7430 = fadd fast float %7428, %7429
  %7431 = fadd fast float %7428, %7427
  %7432 = fsub fast float %7426, %7427
  %7433 = fadd fast float %7432, %7428
  %7434 = call float @dx.op.binary.f32(i32 35, float %7430, float %7431)  ; FMax(a,b)
  %7435 = call float @dx.op.binary.f32(i32 36, float %7434, float %7433)  ; FMin(a,b)
  %7436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7373, float %7374, float %7435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7437 = extractvalue %dx.types.ResRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.ResRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.ResRet.f32 %7436, 2
  %7440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.i32 %7440, 0
  %7442 = extractvalue %dx.types.CBufRet.i32 %7440, 1
  %7443 = uitofp i32 %7441 to float
  %7444 = uitofp i32 %7442 to float
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = fmul fast float %7443, %7373
  %7449 = fmul fast float %7444, %7374
  %7450 = fadd fast float %7448, -5.000000e-01
  %7451 = fadd fast float %7449, -5.000000e-01
  %7452 = call float @dx.op.unary.f32(i32 22, float %7450)  ; Frc(value)
  %7453 = call float @dx.op.unary.f32(i32 22, float %7451)  ; Frc(value)
  %7454 = fmul fast float %7452, %7452
  %7455 = fmul fast float %7454, %7452
  %7456 = fsub fast float 3.000000e+00, %7452
  %7457 = fmul fast float %7454, %7456
  %7458 = fmul fast float %7452, 3.000000e+00
  %7459 = fmul fast float %7455, 3.000000e+00
  %7460 = fmul fast float %7454, 6.000000e+00
  %7461 = fsub fast float %7459, %7460
  %7462 = fadd fast float %7461, 4.000000e+00
  %7463 = fmul fast float %7462, 0x3FC5555560000000
  %7464 = fmul fast float %7455, -3.000000e+00
  %7465 = fadd fast float %7454, %7452
  %7466 = fmul fast float %7465, 3.000000e+00
  %7467 = fadd fast float %7464, 1.000000e+00
  %7468 = fadd fast float %7467, %7466
  %7469 = fmul fast float %7455, 0x3FC5555560000000
  %7470 = fmul fast float %7453, %7453
  %7471 = fmul fast float %7470, %7453
  %7472 = fsub fast float 3.000000e+00, %7453
  %7473 = fmul fast float %7470, %7472
  %7474 = fmul fast float %7453, 3.000000e+00
  %7475 = fmul fast float %7471, 3.000000e+00
  %7476 = fmul fast float %7470, 6.000000e+00
  %7477 = fsub fast float %7475, %7476
  %7478 = fadd fast float %7477, 4.000000e+00
  %7479 = fmul fast float %7478, 0x3FC5555560000000
  %7480 = fmul fast float %7471, -3.000000e+00
  %7481 = fadd fast float %7470, %7453
  %7482 = fmul fast float %7481, 3.000000e+00
  %7483 = fadd fast float %7480, 1.000000e+00
  %7484 = fadd fast float %7483, %7482
  %7485 = fmul fast float %7471, 0x3FC5555560000000
  %7486 = fadd fast float %7452, 1.000000e+00
  %7487 = fsub fast float 1.000000e+00, %7458
  %7488 = fadd fast float %7487, %7457
  %7489 = fadd fast float %7488, %7462
  %7490 = fmul fast float %7489, 0x3FC5555560000000
  %7491 = fdiv fast float %7463, %7490
  %7492 = fsub fast float %7486, %7491
  %7493 = fsub fast float 1.000000e+00, %7452
  %7494 = fadd fast float %7468, %7455
  %7495 = fmul fast float %7494, 0x3FC5555560000000
  %7496 = fdiv fast float %7469, %7495
  %7497 = fadd fast float %7493, %7496
  %7498 = fadd fast float %7453, 1.000000e+00
  %7499 = fsub fast float 1.000000e+00, %7474
  %7500 = fadd fast float %7499, %7473
  %7501 = fadd fast float %7500, %7478
  %7502 = fmul fast float %7501, 0x3FC5555560000000
  %7503 = fdiv fast float %7479, %7502
  %7504 = fsub fast float %7498, %7503
  %7505 = fsub fast float 1.000000e+00, %7453
  %7506 = fadd fast float %7484, %7471
  %7507 = fmul fast float %7506, 0x3FC5555560000000
  %7508 = fdiv fast float %7485, %7507
  %7509 = fadd fast float %7508, %7505
  %7510 = fmul fast float %7492, %7446
  %7511 = fsub fast float %7373, %7510
  %7512 = fmul fast float %7497, %7446
  %7513 = fadd fast float %7512, %7373
  %7514 = fmul fast float %7509, %7447
  %7515 = fadd fast float %7514, %7374
  %7516 = fmul fast float %7504, %7447
  %7517 = fsub fast float %7374, %7516
  %7518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7511, float %7517, float %7435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7513, float %7517, float %7435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7523 = extractvalue %dx.types.ResRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.ResRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.ResRet.f32 %7522, 2
  %7526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7511, float %7515, float %7435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.ResRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.ResRet.f32 %7526, 2
  %7530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7513, float %7515, float %7435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.ResRet.f32 %7530, 2
  %7534 = fsub fast float %7527, %7519
  %7535 = fsub fast float %7528, %7520
  %7536 = fsub fast float %7529, %7521
  %7537 = fmul fast float %7534, %7507
  %7538 = fmul fast float %7535, %7507
  %7539 = fmul fast float %7536, %7507
  %7540 = fadd fast float %7537, %7519
  %7541 = fadd fast float %7538, %7520
  %7542 = fadd fast float %7539, %7521
  %7543 = fsub fast float %7531, %7523
  %7544 = fsub fast float %7532, %7524
  %7545 = fsub fast float %7533, %7525
  %7546 = fmul fast float %7543, %7507
  %7547 = fmul fast float %7544, %7507
  %7548 = fmul fast float %7545, %7507
  %7549 = fsub fast float %7523, %7540
  %7550 = fadd fast float %7549, %7546
  %7551 = fsub fast float %7524, %7541
  %7552 = fadd fast float %7551, %7547
  %7553 = fsub fast float %7525, %7542
  %7554 = fadd fast float %7553, %7548
  %7555 = fmul fast float %7550, %7495
  %7556 = fmul fast float %7552, %7495
  %7557 = fmul fast float %7554, %7495
  %7558 = fadd fast float %7555, %7540
  %7559 = fadd fast float %7556, %7541
  %7560 = fadd fast float %7557, %7542
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 1
  %7563 = fmul fast float %7558, %7562
  %7564 = fmul fast float %7559, %7562
  %7565 = fmul fast float %7560, %7562
  br label %7566

; <label>:7566                                    ; preds = %7398, %7367
  %7567 = phi float [ %7437, %7398 ], [ 1.000000e+00, %7367 ]
  %7568 = phi float [ %7438, %7398 ], [ 1.000000e+00, %7367 ]
  %7569 = phi float [ %7439, %7398 ], [ 1.000000e+00, %7367 ]
  %7570 = phi float [ %7563, %7398 ], [ 0.000000e+00, %7367 ]
  %7571 = phi float [ %7564, %7398 ], [ 0.000000e+00, %7367 ]
  %7572 = phi float [ %7565, %7398 ], [ 0.000000e+00, %7367 ]
  %7573 = fmul fast float %7570, %7344
  %7574 = fmul fast float %7571, %7344
  %7575 = fmul fast float %7572, %7344
  %7576 = call float @dx.op.dot3.f32(i32 55, float %7567, float %7568, float %7569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7577 = call float @dx.op.dot3.f32(i32 55, float %7573, float %7574, float %7575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7578 = select i1 %252, float %7576, float %7567
  %7579 = select i1 %252, float %7576, float %7568
  %7580 = select i1 %252, float 1.000000e+00, float %7569
  %7581 = select i1 %252, float %7577, float %7573
  %7582 = select i1 %252, float 0.000000e+00, float %7574
  %7583 = select i1 %252, float 0.000000e+00, float %7575
  %7584 = fmul fast float %7578, %7357
  %7585 = fmul fast float %7579, %7358
  %7586 = fmul fast float %7580, %7359
  %7587 = fadd fast float %7584, %7581
  %7588 = fadd fast float %7585, %7582
  %7589 = fadd fast float %7583, %7586
  %7590 = fmul fast float %7578, %7338
  %7591 = fmul fast float %7579, %7339
  %7592 = fmul fast float %7580, %7340
  %7593 = fmul fast float %142, %7369
  %7594 = fmul fast float %144, %7370
  %7595 = fsub fast float 1.000000e+00, %7593
  %7596 = fsub fast float 1.000000e+00, %7594
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7601 = fmul fast float %7595, %7598
  %7602 = fmul fast float %7595, %7599
  %7603 = fmul fast float %7595, %7600
  %7604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7605 = extractvalue %dx.types.CBufRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.CBufRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.CBufRet.f32 %7604, 2
  %7608 = fmul fast float %7596, %7605
  %7609 = fmul fast float %7596, %7606
  %7610 = fmul fast float %7596, %7607
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7615 = fadd fast float %7608, %7612
  %7616 = fadd fast float %7615, %7601
  %7617 = fadd fast float %7609, %7613
  %7618 = fadd fast float %7617, %7602
  %7619 = fadd fast float %7610, %7614
  %7620 = fadd fast float %7619, %7603
  %7621 = fmul fast float %7616, %215
  %7622 = fmul fast float %7618, %215
  %7623 = fmul fast float %7620, %215
  br label %7624

; <label>:7624                                    ; preds = %7566, %7337
  %7625 = phi float [ %7621, %7566 ], [ %193, %7337 ]
  %7626 = phi float [ %7622, %7566 ], [ %194, %7337 ]
  %7627 = phi float [ %7623, %7566 ], [ %195, %7337 ]
  %7628 = phi float [ %215, %7566 ], [ %97, %7337 ]
  %7629 = phi float [ %7587, %7566 ], [ %7357, %7337 ]
  %7630 = phi float [ %7588, %7566 ], [ %7358, %7337 ]
  %7631 = phi float [ %7589, %7566 ], [ %7359, %7337 ]
  %7632 = phi float [ %7590, %7566 ], [ %7338, %7337 ]
  %7633 = phi float [ %7591, %7566 ], [ %7339, %7337 ]
  %7634 = phi float [ %7592, %7566 ], [ %7340, %7337 ]
  %7635 = phi float [ %7567, %7566 ], [ 1.000000e+00, %7337 ]
  br i1 %7366, label %8790, label %7636

; <label>:7636                                    ; preds = %7624
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7641 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7643 = extractvalue %dx.types.CBufRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.CBufRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.CBufRet.f32 %7642, 2
  %7646 = extractvalue %dx.types.CBufRet.f32 %7642, 3
  %7647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7648 = extractvalue %dx.types.CBufRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.CBufRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.CBufRet.f32 %7647, 2
  %7651 = extractvalue %dx.types.CBufRet.f32 %7647, 3
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7656 = extractvalue %dx.types.CBufRet.f32 %7652, 3
  %7657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7658 = extractvalue %dx.types.CBufRet.f32 %7657, 3
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 3
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7663 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7664 = fcmp fast olt float %7663, -5.000000e-01
  %7665 = call float @dx.op.dot3.f32(i32 55, float %7625, float %7626, float %7627, float %7625, float %7626, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = call float @dx.op.unary.f32(i32 25, float %7665)  ; Rsqrt(value)
  %7667 = fmul fast float %7666, %7665
  %7668 = fmul fast float %7666, %7625
  %7669 = fmul fast float %7666, %7626
  %7670 = fmul fast float %7666, %7627
  %7671 = fadd fast float %7667, %7641
  %7672 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7670, float %7638, float %7639, float %7640)  ; Dot3(ax,ay,az,bx,by,bz)
  %7673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.i32 %7673, 1
  %7675 = and i32 %7674, 1
  %7676 = icmp ne i32 %7675, 0
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7679 = fcmp fast ogt float %7678, 0.000000e+00
  %7680 = and i1 %7676, %7679
  br i1 %7680, label %7681, label %8087, !dx.controlflow.hints !128

; <label>:7681                                    ; preds = %7636
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 2
  %7688 = fsub fast float %7685, %7687
  %7689 = and i32 %7674, 2
  %7690 = extractvalue %dx.types.CBufRet.i32 %7673, 0
  %7691 = call i32 @dx.op.binary.i32(i32 40, i32 %7690, i32 3)  ; UMin(a,b)
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7696 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7697 = fsub fast float %7693, %7695
  %7698 = fsub fast float %7694, %7696
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 0
  %7701 = fcmp fast ogt float %7700, 0.000000e+00
  %7702 = fsub fast float -0.000000e+00, %7697
  %7703 = fsub fast float -0.000000e+00, %7698
  %7704 = call float @dx.op.dot2.f32(i32 54, float %7668, float %7669, float %7668, float %7669)  ; Dot2(ax,ay,bx,by)
  %7705 = call float @dx.op.dot2.f32(i32 54, float %7668, float %7669, float %7702, float %7703)  ; Dot2(ax,ay,bx,by)
  %7706 = fmul fast float %7705, 2.000000e+00
  %7707 = call float @dx.op.dot2.f32(i32 54, float %7702, float %7703, float %7702, float %7703)  ; Dot2(ax,ay,bx,by)
  %7708 = fmul fast float %7700, %7700
  %7709 = fsub fast float %7707, %7708
  %7710 = fmul fast float %7706, %7706
  %7711 = fmul fast float %7704, 4.000000e+00
  %7712 = fmul fast float %7711, %7709
  %7713 = fsub fast float %7710, %7712
  %7714 = fcmp fast ogt float %7713, 0.000000e+00
  br i1 %7714, label %7715, label %7730

; <label>:7715                                    ; preds = %7681
  %7716 = fcmp fast ogt float %7706, 0.000000e+00
  %7717 = call float @dx.op.unary.f32(i32 24, float %7713)  ; Sqrt(value)
  %7718 = fsub fast float -0.000000e+00, %7717
  %7719 = select i1 %7716, float %7717, float %7718
  %7720 = fadd fast float %7719, %7706
  %7721 = fmul float %7720, -5.000000e-01
  %7722 = fdiv fast float %7721, %7704
  %7723 = call float @dx.op.binary.f32(i32 35, float %7722, float 0.000000e+00)  ; FMax(a,b)
  %7724 = call float @dx.op.binary.f32(i32 36, float %7667, float %7723)  ; FMin(a,b)
  %7725 = fdiv fast float %7709, %7721
  %7726 = call float @dx.op.binary.f32(i32 35, float %7725, float 0.000000e+00)  ; FMax(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7667, float %7726)  ; FMin(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7724, float %7727)  ; FMin(a,b)
  %7729 = call float @dx.op.binary.f32(i32 35, float %7724, float %7727)  ; FMax(a,b)
  br label %7730

; <label>:7730                                    ; preds = %7715, %7681
  %7731 = phi float [ %7729, %7715 ], [ -1.000000e+00, %7681 ]
  %7732 = phi float [ %7728, %7715 ], [ -1.000000e+00, %7681 ]
  %7733 = phi i1 [ true, %7715 ], [ false, %7681 ]
  %7734 = and i1 %7701, %7733
  br i1 %7734, label %7735, label %7737

; <label>:7735                                    ; preds = %7730
  %7736 = fcmp fast oeq float %7732, %7731
  br i1 %7736, label %8040, label %7738

; <label>:7737                                    ; preds = %7730
  br i1 %7701, label %8040, label %7738

; <label>:7738                                    ; preds = %7737, %7735
  %7739 = phi float [ %7667, %7737 ], [ %7731, %7735 ]
  %7740 = phi float [ 0.000000e+00, %7737 ], [ %7732, %7735 ]
  %7741 = icmp ne i32 %7689, 0
  %7742 = fmul fast float %7739, %7670
  %7743 = fadd fast float %7742, %7683
  %7744 = fmul fast float %7743, %7739
  %7745 = select i1 %7741, float 0.000000e+00, float %7744
  %7746 = fcmp fast oeq float %7670, 0.000000e+00
  %7747 = fdiv fast float %7688, %7670
  %7748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7747)  ; FMax(a,b)
  %7749 = select i1 %7746, float %7739, float %7748
  %7750 = call float @dx.op.binary.f32(i32 36, float %7739, float %7749)  ; FMin(a,b)
  %7751 = fcmp fast ogt float %7670, 0.000000e+00
  %7752 = fcmp fast olt float %7688, 0.000000e+00
  br i1 %7751, label %7753, label %7810

; <label>:7753                                    ; preds = %7738
  %7754 = icmp eq i32 %7689, 0
  br i1 %7752, label %7755, label %7799

; <label>:7755                                    ; preds = %7753
  %7756 = select i1 %7754, float %7739, float 0.000000e+00
  %7757 = fsub fast float -0.000000e+00, %7756
  %7758 = call float @dx.op.unary.f32(i32 6, float %7757)  ; FAbs(value)
  %7759 = fmul fast float %7756, %7670
  %7760 = fadd fast float %7759, %7683
  %7761 = fmul fast float %7758, %7760
  %7762 = fsub fast float %7745, %7761
  %7763 = fsub fast float %7739, %7758
  %7764 = select i1 %7754, float %7763, float 0.000000e+00
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.CBufRet.f32 %7769, 3
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7776 = call float @dx.op.binary.f32(i32 36, float %7762, float %7775)  ; FMin(a,b)
  %7777 = fmul fast float %7773, %7764
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fsub fast float %7770, %7766
  %7780 = fsub fast float %7771, %7767
  %7781 = fsub fast float %7772, %7768
  %7782 = fmul fast float %7778, %7779
  %7783 = fmul fast float %7778, %7780
  %7784 = fmul fast float %7778, %7781
  %7785 = fadd fast float %7782, %7766
  %7786 = fadd fast float %7783, %7767
  %7787 = fadd fast float %7784, %7768
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.CBufRet.f32 %7788, 1
  %7791 = fadd fast float %7790, %7789
  %7792 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7794 = extractvalue %dx.types.CBufRet.f32 %7788, 3
  %7795 = fadd fast float %7794, %7793
  %7796 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7797 = fmul fast float %7792, %7776
  %7798 = fmul fast float %7797, %7796
  br label %8040

; <label>:7799                                    ; preds = %7753
  br i1 %7754, label %7800, label %7821

; <label>:7800                                    ; preds = %7799
  %7801 = call float @dx.op.binary.f32(i32 36, float %7750, float %7740)  ; FMin(a,b)
  %7802 = fsub fast float %7750, %7801
  %7803 = fsub fast float %7802, %7739
  %7804 = call float @dx.op.unary.f32(i32 6, float %7803)  ; FAbs(value)
  %7805 = fadd fast float %7802, %7739
  %7806 = fmul fast float %7805, %7670
  %7807 = fadd fast float %7806, %7683
  %7808 = fmul fast float %7807, %7804
  %7809 = fsub fast float %7745, %7808
  br label %7821

; <label>:7810                                    ; preds = %7738
  br i1 %7752, label %7811, label %7821

; <label>:7811                                    ; preds = %7810
  %7812 = call float @dx.op.binary.f32(i32 35, float %7740, float %7750)  ; FMax(a,b)
  %7813 = icmp eq i32 %7689, 0
  %7814 = select i1 %7813, float %7750, float 0.000000e+00
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = call float @dx.op.unary.f32(i32 6, float %7815)  ; FAbs(value)
  %7817 = fmul fast float %7814, %7670
  %7818 = fadd fast float %7817, %7683
  %7819 = fmul fast float %7816, %7818
  %7820 = fsub fast float %7745, %7819
  br label %7821

; <label>:7821                                    ; preds = %7811, %7810, %7800, %7799
  %7822 = phi float [ %7740, %7799 ], [ %7740, %7800 ], [ %7812, %7811 ], [ %7740, %7810 ]
  %7823 = phi float [ 0.000000e+00, %7799 ], [ %7804, %7800 ], [ %7816, %7811 ], [ 0.000000e+00, %7810 ]
  %7824 = phi float [ %7745, %7799 ], [ %7809, %7800 ], [ %7820, %7811 ], [ %7745, %7810 ]
  %7825 = phi float [ %7750, %7799 ], [ %7750, %7800 ], [ %7739, %7811 ], [ %7739, %7810 ]
  %7826 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7826, align 4, !tbaa !129, !noalias !131
  %7827 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7827, align 4, !tbaa !129, !noalias !131
  %7828 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7828, align 4, !tbaa !129, !noalias !131
  %7829 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7829, align 4, !tbaa !129, !noalias !131
  %7830 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7830, align 4, !tbaa !129, !noalias !131
  %7831 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7831, align 4, !tbaa !129, !noalias !131
  %7832 = icmp sgt i32 %7691, 0
  br i1 %7832, label %7833, label %7894

; <label>:7833                                    ; preds = %7821
  br label %7834

; <label>:7834                                    ; preds = %7883, %7833
  %7835 = phi i32 [ %7884, %7883 ], [ 0, %7833 ]
  %7836 = phi i32 [ %7885, %7883 ], [ 0, %7833 ]
  %7837 = add nuw i32 %7836, 171
  %7838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7837)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.CBufRet.f32 %7838, 1
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7844 = fsub fast float %7839, %7842
  %7845 = fsub fast float %7840, %7843
  %7846 = extractvalue %dx.types.CBufRet.f32 %7838, 2
  %7847 = fsub fast float -0.000000e+00, %7844
  %7848 = fsub fast float -0.000000e+00, %7845
  %7849 = call float @dx.op.dot2.f32(i32 54, float %7668, float %7669, float %7847, float %7848)  ; Dot2(ax,ay,bx,by)
  %7850 = fmul fast float %7849, 2.000000e+00
  %7851 = call float @dx.op.dot2.f32(i32 54, float %7847, float %7848, float %7847, float %7848)  ; Dot2(ax,ay,bx,by)
  %7852 = fmul fast float %7846, %7846
  %7853 = fsub fast float %7851, %7852
  %7854 = fmul fast float %7850, %7850
  %7855 = fmul fast float %7711, %7853
  %7856 = fsub fast float %7854, %7855
  %7857 = fcmp fast ogt float %7856, 0.000000e+00
  br i1 %7857, label %7858, label %7873

; <label>:7858                                    ; preds = %7834
  %7859 = fcmp fast ogt float %7850, 0.000000e+00
  %7860 = call float @dx.op.unary.f32(i32 24, float %7856)  ; Sqrt(value)
  %7861 = fsub fast float -0.000000e+00, %7860
  %7862 = select i1 %7859, float %7860, float %7861
  %7863 = fadd fast float %7862, %7850
  %7864 = fmul float %7863, -5.000000e-01
  %7865 = fdiv fast float %7864, %7704
  %7866 = call float @dx.op.binary.f32(i32 35, float %7865, float 0.000000e+00)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 36, float %7739, float %7866)  ; FMin(a,b)
  %7868 = fdiv fast float %7853, %7864
  %7869 = call float @dx.op.binary.f32(i32 35, float %7868, float 0.000000e+00)  ; FMax(a,b)
  %7870 = call float @dx.op.binary.f32(i32 36, float %7739, float %7869)  ; FMin(a,b)
  %7871 = call float @dx.op.binary.f32(i32 36, float %7867, float %7870)  ; FMin(a,b)
  %7872 = call float @dx.op.binary.f32(i32 35, float %7867, float %7870)  ; FMax(a,b)
  br label %7873

; <label>:7873                                    ; preds = %7858, %7834
  %7874 = phi float [ %7872, %7858 ], [ -1.000000e+00, %7834 ]
  %7875 = phi float [ %7871, %7858 ], [ -1.000000e+00, %7834 ]
  %7876 = phi i1 [ true, %7858 ], [ false, %7834 ]
  br i1 %7876, label %7877, label %7883

; <label>:7877                                    ; preds = %7873
  %7878 = call float @dx.op.binary.f32(i32 35, float %7822, float %7875)  ; FMax(a,b)
  %7879 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7836
  store float %7878, float* %7879, align 4, !tbaa !129, !noalias !131
  %7880 = call float @dx.op.binary.f32(i32 35, float %7822, float %7874)  ; FMax(a,b)
  %7881 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7836
  store float %7880, float* %7881, align 4, !tbaa !129, !noalias !131
  %7882 = add nsw i32 %7835, 1
  br label %7883

; <label>:7883                                    ; preds = %7877, %7873
  %7884 = phi i32 [ %7882, %7877 ], [ %7835, %7873 ]
  %7885 = add nuw nsw i32 %7836, 1
  %7886 = icmp eq i32 %7885, %7691
  br i1 %7886, label %7887, label %7834

; <label>:7887                                    ; preds = %7883
  %7888 = load float, float* %7828, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7889 = load float, float* %7827, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %7890 = load float, float* %7826, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %7891 = load float, float* %7831, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7892 = load float, float* %7830, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %7893 = load float, float* %7829, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %7894

; <label>:7894                                    ; preds = %7887, %7821
  %7895 = phi float [ -1.000000e+00, %7821 ], [ %7893, %7887 ]
  %7896 = phi float [ -1.000000e+00, %7821 ], [ %7892, %7887 ]
  %7897 = phi float [ -1.000000e+00, %7821 ], [ %7891, %7887 ]
  %7898 = phi float [ -1.000000e+00, %7821 ], [ %7890, %7887 ]
  %7899 = phi float [ -1.000000e+00, %7821 ], [ %7889, %7887 ]
  %7900 = phi float [ -1.000000e+00, %7821 ], [ %7888, %7887 ]
  %7901 = phi i32 [ 0, %7821 ], [ %7884, %7887 ]
  %7902 = call float @dx.op.binary.f32(i32 36, float %7899, float %7900)  ; FMin(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7898, float %7902)  ; FMin(a,b)
  %7904 = call float @dx.op.binary.f32(i32 35, float %7898, float %7899)  ; FMax(a,b)
  %7905 = call float @dx.op.binary.f32(i32 36, float %7904, float %7900)  ; FMin(a,b)
  %7906 = call float @dx.op.binary.f32(i32 36, float %7898, float %7899)  ; FMin(a,b)
  %7907 = call float @dx.op.binary.f32(i32 35, float %7906, float %7905)  ; FMax(a,b)
  %7908 = call float @dx.op.binary.f32(i32 35, float %7899, float %7900)  ; FMax(a,b)
  %7909 = call float @dx.op.binary.f32(i32 35, float %7898, float %7908)  ; FMax(a,b)
  store float %7903, float* %7826, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %7907, float* %7827, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %7909, float* %7828, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7910 = call float @dx.op.binary.f32(i32 36, float %7896, float %7897)  ; FMin(a,b)
  %7911 = call float @dx.op.binary.f32(i32 36, float %7895, float %7910)  ; FMin(a,b)
  %7912 = call float @dx.op.binary.f32(i32 35, float %7895, float %7896)  ; FMax(a,b)
  %7913 = call float @dx.op.binary.f32(i32 36, float %7912, float %7897)  ; FMin(a,b)
  %7914 = call float @dx.op.binary.f32(i32 36, float %7895, float %7896)  ; FMin(a,b)
  %7915 = call float @dx.op.binary.f32(i32 35, float %7914, float %7913)  ; FMax(a,b)
  %7916 = call float @dx.op.binary.f32(i32 35, float %7896, float %7897)  ; FMax(a,b)
  %7917 = call float @dx.op.binary.f32(i32 35, float %7895, float %7916)  ; FMax(a,b)
  store float %7911, float* %7829, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %7915, float* %7830, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %7917, float* %7831, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7918 = sub nsw i32 3, %7901
  %7919 = icmp sgt i32 %7918, 2
  br i1 %7919, label %7920, label %7958

; <label>:7920                                    ; preds = %7894
  %7921 = icmp eq i32 %7689, 0
  %7922 = fsub fast float %7739, %7823
  %7923 = select i1 %7921, float %7922, float %7823
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7932 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 3
  %7935 = call float @dx.op.binary.f32(i32 36, float %7824, float %7934)  ; FMin(a,b)
  %7936 = fmul fast float %7932, %7923
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7938 = fsub fast float %7929, %7925
  %7939 = fsub fast float %7930, %7926
  %7940 = fsub fast float %7931, %7927
  %7941 = fmul fast float %7937, %7938
  %7942 = fmul fast float %7937, %7939
  %7943 = fmul fast float %7937, %7940
  %7944 = fadd fast float %7941, %7925
  %7945 = fadd fast float %7942, %7926
  %7946 = fadd fast float %7943, %7927
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = fadd fast float %7949, %7948
  %7951 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7953 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7954 = fadd fast float %7953, %7952
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fmul fast float %7951, %7935
  %7957 = fmul fast float %7956, %7955
  br label %8040

; <label>:7958                                    ; preds = %7894
  %7959 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7918
  %7960 = load float, float* %7959, align 4, !tbaa !129, !noalias !131
  %7961 = fcmp fast olt float %7960, %7825
  %7962 = icmp sgt i32 %7901, 0
  %7963 = and i1 %7962, %7961
  br i1 %7963, label %7964, label %8001

; <label>:7964                                    ; preds = %7958
  br label %7965

; <label>:7965                                    ; preds = %7994, %7964
  %7966 = phi float [ %7995, %7994 ], [ %7823, %7964 ]
  %7967 = phi float [ %7996, %7994 ], [ %7824, %7964 ]
  %7968 = phi float [ %7976, %7994 ], [ %7960, %7964 ]
  %7969 = phi i32 [ %7973, %7994 ], [ %7918, %7964 ]
  %7970 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7969
  %7971 = load float, float* %7970, align 4, !tbaa !129, !noalias !131
  %7972 = icmp slt i32 %7969, 2
  %7973 = add nsw i32 %7969, 1
  %7974 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7973
  %7975 = load float, float* %7974, align 4, !tbaa !129, !noalias !131
  %7976 = select i1 %7972, float %7975, float %7739
  %7977 = call float @dx.op.binary.f32(i32 36, float %7976, float %7971)  ; FMin(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7825, float %7977)  ; FMin(a,b)
  %7979 = icmp eq i32 %7689, 0
  %7980 = fadd fast float %7978, %7968
  %7981 = fmul fast float %7980, %7670
  %7982 = fadd fast float %7981, %7683
  br i1 %7979, label %7988, label %7983

; <label>:7983                                    ; preds = %7965
  %7984 = fsub fast float %7978, %7968
  %7985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7984)  ; FMax(a,b)
  %7986 = fmul fast float %7985, %7982
  %7987 = fadd fast float %7986, %7967
  br label %7994

; <label>:7988                                    ; preds = %7965
  %7989 = fsub fast float %7968, %7978
  %7990 = call float @dx.op.unary.f32(i32 6, float %7989)  ; FAbs(value)
  %7991 = fadd fast float %7990, %7966
  %7992 = fmul fast float %7990, %7982
  %7993 = fsub fast float %7967, %7992
  br label %7994

; <label>:7994                                    ; preds = %7988, %7983
  %7995 = phi float [ %7985, %7983 ], [ %7991, %7988 ]
  %7996 = phi float [ %7987, %7983 ], [ %7993, %7988 ]
  %7997 = fcmp fast olt float %7976, %7825
  %7998 = icmp slt i32 %7973, 3
  %7999 = and i1 %7998, %7997
  br i1 %7999, label %7965, label %8000

; <label>:8000                                    ; preds = %7994
  br label %8001

; <label>:8001                                    ; preds = %8000, %7958
  %8002 = phi float [ %7823, %7958 ], [ %7995, %8000 ]
  %8003 = phi float [ %7824, %7958 ], [ %7996, %8000 ]
  %8004 = fsub fast float %7739, %8002
  %8005 = select i1 %7741, float %8002, float %8004
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.CBufRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.CBufRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8014 = extractvalue %dx.types.CBufRet.f32 %8010, 3
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 3
  %8017 = call float @dx.op.binary.f32(i32 36, float %8003, float %8016)  ; FMin(a,b)
  %8018 = fmul fast float %8014, %8005
  %8019 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8020 = fsub fast float %8011, %8007
  %8021 = fsub fast float %8012, %8008
  %8022 = fsub fast float %8013, %8009
  %8023 = fmul fast float %8019, %8020
  %8024 = fmul fast float %8019, %8021
  %8025 = fmul fast float %8019, %8022
  %8026 = fadd fast float %8023, %8007
  %8027 = fadd fast float %8024, %8008
  %8028 = fadd fast float %8025, %8009
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8032 = fadd fast float %8031, %8030
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8035 = extractvalue %dx.types.CBufRet.f32 %8029, 3
  %8036 = fadd fast float %8035, %8034
  %8037 = call float @dx.op.unary.f32(i32 7, float %8036)  ; Saturate(value)
  %8038 = fmul fast float %8033, %8017
  %8039 = fmul fast float %8038, %8037
  br label %8040

; <label>:8040                                    ; preds = %8001, %7920, %7755, %7737, %7735
  %8041 = phi float [ %7764, %7755 ], [ %7923, %7920 ], [ %8005, %8001 ], [ 0.000000e+00, %7735 ], [ 0.000000e+00, %7737 ]
  %8042 = phi float [ %7798, %7755 ], [ %7957, %7920 ], [ %8039, %8001 ], [ 0.000000e+00, %7735 ], [ 0.000000e+00, %7737 ]
  %8043 = phi float [ %7785, %7755 ], [ %7944, %7920 ], [ %8026, %8001 ], [ 0.000000e+00, %7735 ], [ 0.000000e+00, %7737 ]
  %8044 = phi float [ %7786, %7755 ], [ %7945, %7920 ], [ %8027, %8001 ], [ 0.000000e+00, %7735 ], [ 0.000000e+00, %7737 ]
  %8045 = phi float [ %7787, %7755 ], [ %7946, %7920 ], [ %8028, %8001 ], [ 0.000000e+00, %7735 ], [ 0.000000e+00, %7737 ]
  %8046 = fmul fast float %7678, %8042
  %8047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8047, 2
  %8049 = fsub fast float %7685, %8048
  %8050 = fcmp fast olt float %8046, -2.000000e+01
  %8051 = call float @dx.op.unary.f32(i32 21, float %8046)  ; Exp(value)
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %8054 = extractvalue %dx.types.CBufRet.f32 %8052, 3
  %8055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8056 = extractvalue %dx.types.CBufRet.f32 %8055, 2
  %8057 = fmul fast float %8054, %8049
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = fsub fast float 1.000000e+00, %8058
  %8060 = fmul fast float %7670, 5.000000e-01
  %8061 = fadd fast float %8060, 5.000000e-01
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = fsub fast float 1.000000e+00, %8062
  %8064 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8059)  ; FMax(a,b)
  %8065 = fdiv fast float %8063, %8064
  %8066 = fsub fast float %8049, %7627
  %8067 = call float @dx.op.unary.f32(i32 6, float %8066)  ; FAbs(value)
  %8068 = fmul fast float %8067, %8053
  %8069 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8070 = fsub fast float 1.000000e+00, %8068
  %8071 = fmul fast float %8070, %8069
  %8072 = fadd fast float %8071, %8068
  %8073 = fmul fast float %8056, %8049
  %8074 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  %8075 = fsub fast float 1.000000e+00, %8072
  %8076 = fmul fast float %8075, %8074
  %8077 = fadd fast float %8076, %8072
  %8078 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8079 = fadd fast float %8051, -1.000000e+00
  %8080 = select i1 %8050, float -1.000000e+00, float %8079
  %8081 = fmul fast float %8078, %8080
  %8082 = fadd fast float %8081, 1.000000e+00
  %8083 = fsub fast float -0.000000e+00, %8081
  %8084 = fmul fast float %8043, %8083
  %8085 = fmul fast float %8044, %8083
  %8086 = fmul fast float %8045, %8083
  br label %8087

; <label>:8087                                    ; preds = %8040, %7636
  %8088 = phi float [ %8041, %8040 ], [ 0.000000e+00, %7636 ]
  %8089 = phi float [ %8082, %8040 ], [ 1.000000e+00, %7636 ]
  %8090 = phi float [ %8084, %8040 ], [ 0.000000e+00, %7636 ]
  %8091 = phi float [ %8085, %8040 ], [ 0.000000e+00, %7636 ]
  %8092 = phi float [ %8086, %8040 ], [ 0.000000e+00, %7636 ]
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8095 = fsub fast float 1.000000e+00, %8089
  %8096 = fmul fast float %8095, %7671
  %8097 = fmul fast float %8096, %8094
  %8098 = fsub fast float %7671, %8097
  br i1 %7664, label %8099, label %8128, !dx.controlflow.hints !167

; <label>:8099                                    ; preds = %8087
  %8100 = fmul fast float %7672, %7661
  %8101 = fadd fast float %8100, %7662
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8103 = fmul fast float %7643, %8098
  %8104 = fsub fast float -0.000000e+00, %8103
  %8105 = fmul fast float %7644, %8098
  %8106 = fsub fast float -0.000000e+00, %8105
  %8107 = call float @dx.op.unary.f32(i32 21, float %8104)  ; Exp(value)
  %8108 = call float @dx.op.unary.f32(i32 21, float %8106)  ; Exp(value)
  %8109 = call float @dx.op.binary.f32(i32 35, float %7651, float %8107)  ; FMax(a,b)
  %8110 = call float @dx.op.binary.f32(i32 35, float %7651, float %8108)  ; FMax(a,b)
  %8111 = fsub fast float %8110, %8109
  %8112 = fmul fast float %8111, %8102
  %8113 = fadd fast float %8112, %8109
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = fsub fast float %7648, %7653
  %8116 = fsub fast float %7649, %7654
  %8117 = fsub fast float %7650, %7655
  %8118 = fmul fast float %8102, %8115
  %8119 = fmul fast float %8102, %8116
  %8120 = fmul fast float %8102, %8117
  %8121 = fadd fast float %8118, %7653
  %8122 = fadd fast float %8119, %7654
  %8123 = fadd fast float %8120, %7655
  %8124 = fsub fast float 1.000000e+00, %8114
  %8125 = fmul fast float %8124, %8121
  %8126 = fmul fast float %8124, %8122
  %8127 = fmul fast float %8124, %8123
  br label %8187

; <label>:8128                                    ; preds = %8087
  %8129 = fmul fast float %8098, %7660
  %8130 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8131 = fsub fast float 2.000000e+00, %8130
  %8132 = fmul fast float %8130, 9.921875e-01
  %8133 = fmul fast float %8132, %8131
  %8134 = fadd fast float %8133, 3.906250e-03
  %8135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8134, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8136 = extractvalue %dx.types.ResRet.f32 %8135, 0
  %8137 = fsub fast float %8130, %8136
  %8138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8137)  ; FMax(a,b)
  %8139 = fmul fast float %7646, %7627
  %8140 = call float @dx.op.unary.f32(i32 6, float %8139)  ; FAbs(value)
  %8141 = fcmp fast ogt float %8140, 0x3EB0C6F7A0000000
  br i1 %8141, label %8142, label %8148, !dx.controlflow.hints !168

; <label>:8142                                    ; preds = %8128
  %8143 = fmul fast float %8139, 0xBFF7154760000000
  %8144 = call float @dx.op.unary.f32(i32 21, float %8143)  ; Exp(value)
  %8145 = fsub fast float 1.000000e+00, %8144
  %8146 = fdiv fast float %8145, %8139
  %8147 = fmul fast float %8146, %7656
  br label %8148

; <label>:8148                                    ; preds = %8142, %8128
  %8149 = phi float [ %8147, %8142 ], [ %7656, %8128 ]
  %8150 = fadd fast float %8149, %7658
  %8151 = fmul fast float %8150, %8138
  %8152 = fmul fast float %7643, %8151
  %8153 = fsub fast float -0.000000e+00, %8152
  %8154 = fmul fast float %7644, %8151
  %8155 = fsub fast float -0.000000e+00, %8154
  %8156 = fmul fast float %7645, %8151
  %8157 = fsub fast float -0.000000e+00, %8156
  %8158 = call float @dx.op.unary.f32(i32 21, float %8153)  ; Exp(value)
  %8159 = call float @dx.op.unary.f32(i32 21, float %8155)  ; Exp(value)
  %8160 = call float @dx.op.unary.f32(i32 21, float %8157)  ; Exp(value)
  %8161 = fmul fast float %7672, %7672
  %8162 = fadd fast float %8161, 1.000000e+00
  %8163 = fmul fast float %8162, 0x3FAE8EC8A0000000
  %8164 = fmul fast float %8163, %7653
  %8165 = fmul fast float %8163, %7654
  %8166 = fmul fast float %8163, %7655
  %8167 = fmul fast float %7672, %7651
  %8168 = fsub fast float 1.000000e+00, %8167
  %8169 = fmul fast float %7651, %7651
  %8170 = fsub fast float 1.000000e+00, %8169
  %8171 = fmul fast float %8170, 0x3FB45F3060000000
  %8172 = fmul fast float %8168, %8168
  %8173 = fdiv fast float 1.000000e+00, %8172
  %8174 = fmul fast float %8171, %8173
  %8175 = fmul fast float %8174, %7648
  %8176 = fmul fast float %8174, %7649
  %8177 = fmul fast float %8174, %7650
  %8178 = fadd fast float %8175, %8164
  %8179 = fadd fast float %8176, %8165
  %8180 = fadd fast float %8177, %8166
  %8181 = fsub fast float 1.000000e+00, %8158
  %8182 = fsub fast float 1.000000e+00, %8159
  %8183 = fsub fast float 1.000000e+00, %8160
  %8184 = fmul fast float %8178, %8181
  %8185 = fmul fast float %8179, %8182
  %8186 = fmul fast float %8180, %8183
  br label %8187

; <label>:8187                                    ; preds = %8148, %8099
  %8188 = phi float [ %8125, %8099 ], [ %8184, %8148 ]
  %8189 = phi float [ %8126, %8099 ], [ %8185, %8148 ]
  %8190 = phi float [ %8127, %8099 ], [ %8186, %8148 ]
  %8191 = phi float [ %8114, %8099 ], [ %8158, %8148 ]
  %8192 = phi float [ %8114, %8099 ], [ %8159, %8148 ]
  %8193 = phi float [ %8114, %8099 ], [ %8160, %8148 ]
  br i1 %7680, label %8194, label %8392, !dx.controlflow.hints !169

; <label>:8194                                    ; preds = %8187
  %8195 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8196 = fmul fast float %8195, %8095
  %8197 = fsub fast float %8090, %8188
  %8198 = fsub fast float %8091, %8189
  %8199 = fsub fast float %8092, %8190
  %8200 = fmul fast float %8196, %8197
  %8201 = fmul fast float %8196, %8198
  %8202 = fmul fast float %8196, %8199
  %8203 = fadd fast float %8200, %8188
  %8204 = fadd fast float %8201, %8189
  %8205 = fadd fast float %8202, %8190
  %8206 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8191)  ; FMax(a,b)
  %8207 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8192)  ; FMax(a,b)
  %8208 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8193)  ; FMax(a,b)
  %8209 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8089)  ; FMax(a,b)
  %8210 = call float @dx.op.binary.f32(i32 35, float %8088, float %8098)  ; FMax(a,b)
  %8211 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8210)  ; FMax(a,b)
  %8212 = fdiv fast float %8088, %8211
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = fdiv fast float %8098, %8211
  %8215 = call float @dx.op.unary.f32(i32 7, float %8214)  ; Saturate(value)
  %8216 = fcmp fast une float %8209, 1.000000e+00
  br i1 %8216, label %8217, label %8230, !dx.controlflow.hints !170

; <label>:8217                                    ; preds = %8194
  %8218 = call float @dx.op.unary.f32(i32 23, float %8209)  ; Log(value)
  %8219 = fmul fast float %8218, 0x3FE62E4300000000
  %8220 = fmul fast float %8090, %8219
  %8221 = fsub fast float -0.000000e+00, %8220
  %8222 = fmul fast float %8091, %8219
  %8223 = fsub fast float -0.000000e+00, %8222
  %8224 = fmul fast float %8092, %8219
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = fsub fast float 1.000000e+00, %8209
  %8227 = fdiv fast float %8221, %8226
  %8228 = fdiv fast float %8223, %8226
  %8229 = fdiv fast float %8225, %8226
  br label %8230

; <label>:8230                                    ; preds = %8217, %8194
  %8231 = phi float [ %8227, %8217 ], [ %8090, %8194 ]
  %8232 = phi float [ %8228, %8217 ], [ %8091, %8194 ]
  %8233 = phi float [ %8229, %8217 ], [ %8092, %8194 ]
  %8234 = phi float [ %8219, %8217 ], [ 0.000000e+00, %8194 ]
  %8235 = fcmp fast une float %8206, 1.000000e+00
  br i1 %8235, label %8236, label %8243, !dx.controlflow.hints !171

; <label>:8236                                    ; preds = %8230
  %8237 = call float @dx.op.unary.f32(i32 23, float %8206)  ; Log(value)
  %8238 = fmul fast float %8237, 0x3FE62E4300000000
  %8239 = fmul fast float %8203, %8238
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fsub fast float 1.000000e+00, %8206
  %8242 = fdiv fast float %8240, %8241
  br label %8243

; <label>:8243                                    ; preds = %8236, %8230
  %8244 = phi float [ %8242, %8236 ], [ %8203, %8230 ]
  %8245 = phi float [ %8238, %8236 ], [ 0.000000e+00, %8230 ]
  %8246 = fcmp fast une float %8207, 1.000000e+00
  br i1 %8246, label %8247, label %8254, !dx.controlflow.hints !171

; <label>:8247                                    ; preds = %8243
  %8248 = call float @dx.op.unary.f32(i32 23, float %8207)  ; Log(value)
  %8249 = fmul fast float %8248, 0x3FE62E4300000000
  %8250 = fmul fast float %8204, %8249
  %8251 = fsub fast float -0.000000e+00, %8250
  %8252 = fsub fast float 1.000000e+00, %8207
  %8253 = fdiv fast float %8251, %8252
  br label %8254

; <label>:8254                                    ; preds = %8247, %8243
  %8255 = phi float [ %8253, %8247 ], [ %8204, %8243 ]
  %8256 = phi float [ %8249, %8247 ], [ 0.000000e+00, %8243 ]
  %8257 = fcmp fast une float %8208, 1.000000e+00
  br i1 %8257, label %8258, label %8265, !dx.controlflow.hints !171

; <label>:8258                                    ; preds = %8254
  %8259 = call float @dx.op.unary.f32(i32 23, float %8208)  ; Log(value)
  %8260 = fmul fast float %8259, 0x3FE62E4300000000
  %8261 = fmul fast float %8205, %8260
  %8262 = fsub fast float -0.000000e+00, %8261
  %8263 = fsub fast float 1.000000e+00, %8208
  %8264 = fdiv fast float %8262, %8263
  br label %8265

; <label>:8265                                    ; preds = %8258, %8254
  %8266 = phi float [ %8264, %8258 ], [ %8205, %8254 ]
  %8267 = phi float [ %8260, %8258 ], [ 0.000000e+00, %8254 ]
  %8268 = fmul fast float %8231, %8215
  %8269 = fmul fast float %8232, %8215
  %8270 = fmul fast float %8233, %8215
  %8271 = fmul fast float %8234, %8215
  %8272 = fmul fast float %8244, %8213
  %8273 = fmul fast float %8255, %8213
  %8274 = fmul fast float %8266, %8213
  %8275 = fmul fast float %8245, %8213
  %8276 = fmul fast float %8256, %8213
  %8277 = fmul fast float %8267, %8213
  %8278 = fadd fast float %8272, %8268
  %8279 = fadd fast float %8273, %8269
  %8280 = fadd fast float %8274, %8270
  %8281 = fadd fast float %8275, %8271
  %8282 = fadd fast float %8276, %8271
  %8283 = fadd fast float %8277, %8271
  %8284 = fcmp fast une float %8281, 0.000000e+00
  br i1 %8284, label %8285, label %8292, !dx.controlflow.hints !172

; <label>:8285                                    ; preds = %8265
  %8286 = fmul fast float %8281, 0x3FF7154760000000
  %8287 = call float @dx.op.unary.f32(i32 21, float %8286)  ; Exp(value)
  %8288 = fsub fast float 1.000000e+00, %8287
  %8289 = fmul fast float %8278, %8288
  %8290 = fsub fast float -0.000000e+00, %8289
  %8291 = fdiv fast float %8290, %8281
  br label %8292

; <label>:8292                                    ; preds = %8285, %8265
  %8293 = phi float [ %8287, %8285 ], [ 1.000000e+00, %8265 ]
  %8294 = phi float [ %8291, %8285 ], [ %8278, %8265 ]
  %8295 = fcmp fast une float %8282, 0.000000e+00
  br i1 %8295, label %8296, label %8303, !dx.controlflow.hints !172

; <label>:8296                                    ; preds = %8292
  %8297 = fmul fast float %8282, 0x3FF7154760000000
  %8298 = call float @dx.op.unary.f32(i32 21, float %8297)  ; Exp(value)
  %8299 = fsub fast float 1.000000e+00, %8298
  %8300 = fmul fast float %8279, %8299
  %8301 = fsub fast float -0.000000e+00, %8300
  %8302 = fdiv fast float %8301, %8282
  br label %8303

; <label>:8303                                    ; preds = %8296, %8292
  %8304 = phi float [ %8298, %8296 ], [ 1.000000e+00, %8292 ]
  %8305 = phi float [ %8302, %8296 ], [ %8279, %8292 ]
  %8306 = fcmp fast une float %8283, 0.000000e+00
  br i1 %8306, label %8307, label %8314, !dx.controlflow.hints !172

; <label>:8307                                    ; preds = %8303
  %8308 = fmul fast float %8283, 0x3FF7154760000000
  %8309 = call float @dx.op.unary.f32(i32 21, float %8308)  ; Exp(value)
  %8310 = fsub fast float 1.000000e+00, %8309
  %8311 = fmul fast float %8280, %8310
  %8312 = fsub fast float -0.000000e+00, %8311
  %8313 = fdiv fast float %8312, %8283
  br label %8314

; <label>:8314                                    ; preds = %8307, %8303
  %8315 = phi float [ %8309, %8307 ], [ 1.000000e+00, %8303 ]
  %8316 = phi float [ %8313, %8307 ], [ %8280, %8303 ]
  %8317 = fcmp fast ogt float %8213, %8215
  br i1 %8317, label %8318, label %8338

; <label>:8318                                    ; preds = %8314
  %8319 = fsub fast float 1.000000e+00, %8215
  %8320 = fmul fast float %8231, %8319
  %8321 = fmul fast float %8232, %8319
  %8322 = fmul fast float %8233, %8319
  %8323 = fmul fast float %8234, %8319
  %8324 = fcmp fast une float %8323, 0.000000e+00
  br i1 %8324, label %8325, label %8376, !dx.controlflow.hints !173

; <label>:8325                                    ; preds = %8318
  %8326 = fmul fast float %8323, 0x3FF7154760000000
  %8327 = call float @dx.op.unary.f32(i32 21, float %8326)  ; Exp(value)
  %8328 = fsub fast float 1.000000e+00, %8327
  %8329 = fmul fast float %8320, %8328
  %8330 = fsub fast float -0.000000e+00, %8329
  %8331 = fmul fast float %8321, %8328
  %8332 = fsub fast float -0.000000e+00, %8331
  %8333 = fmul fast float %8322, %8328
  %8334 = fsub fast float -0.000000e+00, %8333
  %8335 = fdiv fast float %8330, %8323
  %8336 = fdiv fast float %8332, %8323
  %8337 = fdiv fast float %8334, %8323
  br label %8376

; <label>:8338                                    ; preds = %8314
  %8339 = fsub fast float 1.000000e+00, %8213
  %8340 = fmul fast float %8244, %8339
  %8341 = fmul fast float %8255, %8339
  %8342 = fmul fast float %8266, %8339
  %8343 = fmul fast float %8245, %8339
  %8344 = fmul fast float %8256, %8339
  %8345 = fmul fast float %8267, %8339
  %8346 = fcmp fast une float %8343, 0.000000e+00
  br i1 %8346, label %8347, label %8354, !dx.controlflow.hints !172

; <label>:8347                                    ; preds = %8338
  %8348 = fmul fast float %8343, 0x3FF7154760000000
  %8349 = call float @dx.op.unary.f32(i32 21, float %8348)  ; Exp(value)
  %8350 = fsub fast float 1.000000e+00, %8349
  %8351 = fmul fast float %8340, %8350
  %8352 = fsub fast float -0.000000e+00, %8351
  %8353 = fdiv fast float %8352, %8343
  br label %8354

; <label>:8354                                    ; preds = %8347, %8338
  %8355 = phi float [ %8353, %8347 ], [ %8340, %8338 ]
  %8356 = phi float [ %8349, %8347 ], [ 1.000000e+00, %8338 ]
  %8357 = fcmp fast une float %8344, 0.000000e+00
  br i1 %8357, label %8358, label %8365, !dx.controlflow.hints !172

; <label>:8358                                    ; preds = %8354
  %8359 = fmul fast float %8344, 0x3FF7154760000000
  %8360 = call float @dx.op.unary.f32(i32 21, float %8359)  ; Exp(value)
  %8361 = fsub fast float 1.000000e+00, %8360
  %8362 = fmul fast float %8341, %8361
  %8363 = fsub fast float -0.000000e+00, %8362
  %8364 = fdiv fast float %8363, %8344
  br label %8365

; <label>:8365                                    ; preds = %8358, %8354
  %8366 = phi float [ %8364, %8358 ], [ %8341, %8354 ]
  %8367 = phi float [ %8360, %8358 ], [ 1.000000e+00, %8354 ]
  %8368 = fcmp fast une float %8345, 0.000000e+00
  br i1 %8368, label %8369, label %8376, !dx.controlflow.hints !172

; <label>:8369                                    ; preds = %8365
  %8370 = fmul fast float %8345, 0x3FF7154760000000
  %8371 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8372 = fsub fast float 1.000000e+00, %8371
  %8373 = fmul fast float %8342, %8372
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fdiv fast float %8374, %8345
  br label %8376

; <label>:8376                                    ; preds = %8369, %8365, %8325, %8318
  %8377 = phi float [ %8375, %8369 ], [ %8337, %8325 ], [ %8322, %8318 ], [ %8342, %8365 ]
  %8378 = phi float [ %8366, %8369 ], [ %8336, %8325 ], [ %8321, %8318 ], [ %8366, %8365 ]
  %8379 = phi float [ %8355, %8369 ], [ %8335, %8325 ], [ %8320, %8318 ], [ %8355, %8365 ]
  %8380 = phi float [ %8371, %8369 ], [ %8327, %8325 ], [ 1.000000e+00, %8318 ], [ 1.000000e+00, %8365 ]
  %8381 = phi float [ %8367, %8369 ], [ %8327, %8325 ], [ 1.000000e+00, %8318 ], [ %8367, %8365 ]
  %8382 = phi float [ %8356, %8369 ], [ %8327, %8325 ], [ 1.000000e+00, %8318 ], [ %8356, %8365 ]
  %8383 = fmul fast float %8382, %8294
  %8384 = fmul fast float %8381, %8305
  %8385 = fmul fast float %8380, %8316
  %8386 = fadd fast float %8383, %8379
  %8387 = fadd fast float %8384, %8378
  %8388 = fadd fast float %8385, %8377
  %8389 = fmul fast float %8382, %8293
  %8390 = fmul fast float %8381, %8304
  %8391 = fmul fast float %8380, %8315
  br label %8392

; <label>:8392                                    ; preds = %8376, %8187
  %8393 = phi float [ %8391, %8376 ], [ %8193, %8187 ]
  %8394 = phi float [ %8390, %8376 ], [ %8192, %8187 ]
  %8395 = phi float [ %8389, %8376 ], [ %8191, %8187 ]
  %8396 = phi float [ %8388, %8376 ], [ %8190, %8187 ]
  %8397 = phi float [ %8387, %8376 ], [ %8189, %8187 ]
  %8398 = phi float [ %8386, %8376 ], [ %8188, %8187 ]
  %8399 = fmul fast float %8398, %7344
  %8400 = fmul fast float %8397, %7344
  %8401 = fmul fast float %8396, %7344
  %8402 = fmul fast float %8395, %7635
  %8403 = call float @dx.op.dot3.f32(i32 55, float %8395, float %8394, float %8393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8404 = call float @dx.op.dot3.f32(i32 55, float %8399, float %8400, float %8401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8405 = select i1 %252, float %8403, float %8395
  %8406 = select i1 %252, float %8403, float %8394
  %8407 = select i1 %252, float 1.000000e+00, float %8393
  %8408 = select i1 %252, float %8404, float %8399
  %8409 = select i1 %252, float 0.000000e+00, float %8400
  %8410 = select i1 %252, float 0.000000e+00, float %8401
  %8411 = fmul fast float %8405, %7629
  %8412 = fmul fast float %8406, %7630
  %8413 = fmul fast float %8407, %7631
  %8414 = fadd fast float %8411, %8408
  %8415 = fadd fast float %8412, %8409
  %8416 = fadd fast float %8410, %8413
  %8417 = fmul fast float %8405, %7632
  %8418 = fmul fast float %8406, %7633
  %8419 = fmul fast float %8407, %7634
  %8420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.i32 %8420, 0
  %8422 = icmp eq i32 %8421, 0
  br i1 %8422, label %8790, label %8423, !dx.controlflow.hints !174

; <label>:8423                                    ; preds = %8392
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 2
  %8426 = extractvalue %dx.types.CBufRet.f32 %8424, 3
  %8427 = fmul fast float %8425, %106
  %8428 = fmul fast float %8426, %107
  %8429 = fmul fast float %8427, 2.000000e+00
  %8430 = fmul fast float %8428, 2.000000e+00
  %8431 = fsub fast float 1.000000e+00, %8429
  %8432 = fsub fast float 1.000000e+00, %8430
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8435 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8436 = extractvalue %dx.types.CBufRet.f32 %8433, 2
  %8437 = fmul fast float %8431, %8434
  %8438 = fmul fast float %8431, %8435
  %8439 = fmul fast float %8431, %8436
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 0
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8443 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8444 = fmul fast float %8432, %8441
  %8445 = fmul fast float %8432, %8442
  %8446 = fmul fast float %8432, %8443
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = fadd fast float %8444, %8448
  %8452 = fadd fast float %8451, %8437
  %8453 = fadd fast float %8445, %8449
  %8454 = fadd fast float %8453, %8438
  %8455 = fadd fast float %8446, %8450
  %8456 = fadd fast float %8455, %8439
  %8457 = fmul fast float %8452, %7628
  %8458 = fmul fast float %8454, %7628
  %8459 = fmul fast float %8456, %7628
  %8460 = fmul fast float %8457, %8457
  %8461 = fmul fast float %8458, %8458
  %8462 = fadd fast float %8460, %8461
  %8463 = fmul fast float %8459, %8459
  %8464 = fadd fast float %8462, %8463
  %8465 = call float @dx.op.unary.f32(i32 24, float %8464)  ; Sqrt(value)
  %8466 = extractvalue %dx.types.CBufRet.f32 %7355, 0
  %8467 = fsub fast float %8465, %8466
  %8468 = extractvalue %dx.types.CBufRet.f32 %7355, 2
  %8469 = fmul fast float %8467, %8468
  %8470 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  %8471 = fadd fast float %8470, -5.000000e-01
  %8472 = fmul fast float %8471, 2.000000e+00
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8475 = call float @dx.op.binary.f32(i32 36, float %8474, float %8472)  ; FMin(a,b)
  %8476 = fsub fast float -0.000000e+00, %8474
  %8477 = fcmp fast ogt float %8475, %8476
  br i1 %8477, label %8478, label %8790, !dx.controlflow.hints !175

; <label>:8478                                    ; preds = %8423
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 3
  %8481 = fcmp fast ogt float %8480, 0.000000e+00
  br i1 %8481, label %8482, label %8557, !dx.controlflow.hints !176

; <label>:8482                                    ; preds = %8478
  %8483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8484 = extractvalue %dx.types.Dimensions %8483, 0
  %8485 = sitofp i32 %8484 to float
  %8486 = extractvalue %dx.types.Dimensions %8483, 1
  %8487 = sitofp i32 %8486 to float
  %8488 = fmul fast float %8427, %8485
  %8489 = fmul fast float %8428, %8487
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 1
  %8492 = fsub fast float -0.000000e+00, %8491
  %8493 = fptoui float %8492 to i32
  %8494 = fptoui float %8488 to i32
  %8495 = fptoui float %8489 to i32
  %8496 = and i32 %8493, 31
  %8497 = lshr i32 %8494, %8496
  %8498 = lshr i32 %8495, %8496
  %8499 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8493, i32 %8497, i32 %8498, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8500 = extractvalue %dx.types.ResRet.f32 %8499, 0
  %8501 = fcmp fast olt float %8500, -1.000000e+00
  %8502 = fcmp fast ogt float %8500, -1.000000e+00
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8505 = select i1 %8502, float %8504, float 1.000000e+00
  %8506 = fadd fast float %8500, 1.000000e+00
  %8507 = fmul fast float %8505, %8506
  %8508 = call float @dx.op.unary.f32(i32 6, float %8507)  ; FAbs(value)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8510 = fcmp fast oge float %8508, %8509
  %8511 = select i1 %8510, float 0x4197782600000000, float %8508
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.CBufRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.CBufRet.f32 %8512, 2
  %8516 = select i1 %8501, float %8513, float %8434
  %8517 = select i1 %8501, float %8514, float %8435
  %8518 = select i1 %8501, float %8515, float %8436
  %8519 = fmul fast float %8516, %8431
  %8520 = fmul fast float %8517, %8431
  %8521 = fmul fast float %8518, %8431
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8525 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8526 = select i1 %8501, float %8523, float %8441
  %8527 = select i1 %8501, float %8524, float %8442
  %8528 = select i1 %8501, float %8525, float %8443
  %8529 = fmul fast float %8526, %8432
  %8530 = fmul fast float %8527, %8432
  %8531 = fmul fast float %8528, %8432
  %8532 = fadd fast float %8529, %8519
  %8533 = fadd fast float %8530, %8520
  %8534 = fadd fast float %8531, %8521
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8539 = select i1 %8501, float %8536, float %8448
  %8540 = select i1 %8501, float %8537, float %8449
  %8541 = select i1 %8501, float %8538, float %8450
  %8542 = fadd fast float %8532, %8539
  %8543 = fadd fast float %8533, %8540
  %8544 = fadd fast float %8534, %8541
  %8545 = fmul fast float %8542, %8511
  %8546 = fmul fast float %8543, %8511
  %8547 = fmul fast float %8544, %8511
  %8548 = fmul fast float %8545, %8545
  %8549 = fmul fast float %8546, %8546
  %8550 = fadd fast float %8548, %8549
  %8551 = fmul fast float %8547, %8547
  %8552 = fadd fast float %8550, %8551
  %8553 = call float @dx.op.unary.f32(i32 24, float %8552)  ; Sqrt(value)
  %8554 = fsub fast float %8553, %8466
  %8555 = fmul fast float %8554, %8468
  %8556 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  br label %8557

; <label>:8557                                    ; preds = %8482, %8478
  %8558 = phi float [ %8556, %8482 ], [ 1.000000e+00, %8478 ]
  %8559 = fmul fast float %8475, 5.000000e-01
  %8560 = fadd fast float %8559, 5.000000e-01
  %8561 = call float @dx.op.unary.f32(i32 22, float %8560)  ; Frc(value)
  %8562 = call float @dx.op.unary.f32(i32 27, float %8561)  ; Round_ni(value)
  %8563 = call float @dx.op.unary.f32(i32 22, float %8561)  ; Frc(value)
  %8564 = fmul fast float %8563, 2.000000e+00
  %8565 = fadd fast float %8564, -1.000000e+00
  %8566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8427, float %8428, float %8562, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8567 = extractvalue %dx.types.ResRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.ResRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.ResRet.f32 %8566, 2
  %8570 = extractvalue %dx.types.ResRet.f32 %8566, 3
  %8571 = fadd fast float %8567, -5.000000e-01
  %8572 = fadd fast float %8569, -5.000000e-01
  %8573 = fmul fast float %8571, 0xBFD5555560000000
  %8574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8572, float %8573)  ; FMad(a,b,c)
  %8575 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8568, float 0.000000e+00)  ; FMad(a,b,c)
  %8576 = fadd fast float %8575, %8570
  %8577 = fmul fast float %8571, -7.500000e-01
  %8578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8572, float %8577)  ; FMad(a,b,c)
  %8579 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8568, float 0.000000e+00)  ; FMad(a,b,c)
  %8580 = fadd fast float %8579, %8570
  %8581 = call float @dx.op.binary.f32(i32 35, float %8574, float -1.000000e+00)  ; FMax(a,b)
  %8582 = call float @dx.op.binary.f32(i32 35, float %8576, float -1.000000e+00)  ; FMax(a,b)
  %8583 = call float @dx.op.binary.f32(i32 35, float %8578, float -1.000000e+00)  ; FMax(a,b)
  %8584 = call float @dx.op.binary.f32(i32 35, float %8580, float -1.000000e+00)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8581, float 1.000000e+00)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8582, float 1.000000e+00)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8583, float 1.000000e+00)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8584, float 1.000000e+00)  ; FMin(a,b)
  %8589 = fcmp fast olt float %8585, 0x3FEFFF8020000000
  br i1 %8589, label %8590, label %8705, !dx.controlflow.hints !177

; <label>:8590                                    ; preds = %8557
  %8591 = extractvalue %dx.types.CBufRet.f32 %8473, 3
  %8592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.CBufRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8592, 2
  %8596 = extractvalue %dx.types.CBufRet.f32 %8592, 3
  %8597 = fsub fast float %8593, %8585
  %8598 = fsub fast float %8594, %8586
  %8599 = fsub fast float %8595, %8587
  %8600 = fsub fast float %8596, %8588
  %8601 = fmul fast float %8597, %8591
  %8602 = fmul fast float %8598, %8591
  %8603 = fmul fast float %8599, %8591
  %8604 = fmul fast float %8600, %8591
  %8605 = fadd fast float %8601, %8585
  %8606 = fadd fast float %8602, %8586
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = fadd fast float %8603, %8587
  %8609 = fadd fast float %8604, %8588
  %8610 = fmul fast float %8605, %8605
  %8611 = fsub fast float %8606, %8610
  %8612 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8611)  ; FMax(a,b)
  %8613 = fdiv fast float 1.000000e+00, %8612
  %8614 = fmul fast float %8606, %8605
  %8615 = fsub fast float %8608, %8614
  %8616 = fsub fast float %8565, %8605
  %8617 = fmul fast float %8565, %8565
  %8618 = fsub fast float %8617, %8606
  %8619 = fmul fast float %8616, %8613
  %8620 = fmul fast float %8619, %8615
  %8621 = fsub fast float %8618, %8620
  %8622 = fmul fast float %8606, %8606
  %8623 = fsub fast float %8609, %8622
  %8624 = fmul fast float %8615, %8615
  %8625 = fmul fast float %8624, %8613
  %8626 = fsub fast float %8623, %8625
  %8627 = fdiv fast float %8621, %8626
  %8628 = fmul fast float %8615, %8627
  %8629 = fsub fast float %8616, %8628
  %8630 = fmul fast float %8629, %8613
  %8631 = fmul fast float %8630, %8605
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = fmul fast float %8606, %8627
  %8634 = fsub fast float %8632, %8633
  %8635 = fmul fast float %8630, %8630
  %8636 = fmul fast float %8627, 4.000000e+00
  %8637 = fmul fast float %8636, %8634
  %8638 = fsub fast float %8635, %8637
  %8639 = call float @dx.op.unary.f32(i32 24, float %8638)  ; Sqrt(value)
  %8640 = fcmp fast oge float %8630, 0.000000e+00
  %8641 = fsub fast float -0.000000e+00, %8639
  %8642 = select i1 %8640, float %8641, float %8639
  %8643 = fsub fast float %8642, %8630
  %8644 = fdiv fast float %8643, %8627
  %8645 = fdiv fast float %8634, %8643
  %8646 = fmul fast float %8644, 5.000000e-01
  %8647 = fmul fast float %8645, 2.000000e+00
  %8648 = select i1 %8640, float %8646, float %8647
  %8649 = select i1 %8640, float %8647, float %8646
  %8650 = call float @dx.op.binary.f32(i32 35, float %8648, float %8649)  ; FMax(a,b)
  %8651 = call float @dx.op.binary.f32(i32 36, float %8648, float %8649)  ; FMin(a,b)
  %8652 = fcmp fast ogt float %8565, %8651
  br i1 %8652, label %8653, label %8663

; <label>:8653                                    ; preds = %8590
  %8654 = fsub fast float %8565, %8651
  %8655 = fsub fast float %8650, %8651
  %8656 = fmul fast float %8654, %8655
  %8657 = fmul fast float %8650, %8565
  %8658 = fadd fast float %8650, %8565
  %8659 = fmul fast float %8658, %8605
  %8660 = fadd fast float %8657, %8606
  %8661 = fsub fast float %8660, %8659
  %8662 = fdiv fast float %8661, %8656
  br label %8663

; <label>:8663                                    ; preds = %8653, %8590
  %8664 = phi float [ %8662, %8653 ], [ 0.000000e+00, %8590 ]
  %8665 = fcmp fast ogt float %8565, %8650
  %8666 = fsub fast float %8565, %8650
  br i1 %8665, label %8667, label %8677

; <label>:8667                                    ; preds = %8663
  %8668 = fsub fast float %8650, %8651
  %8669 = fmul fast float %8668, %8666
  %8670 = fmul fast float %8651, %8565
  %8671 = fadd fast float %8651, %8565
  %8672 = fmul fast float %8671, %8605
  %8673 = fsub fast float %8607, %8670
  %8674 = fadd fast float %8673, %8672
  %8675 = fdiv fast float %8674, %8669
  %8676 = fadd fast float %8675, %8664
  br label %8677

; <label>:8677                                    ; preds = %8667, %8663
  %8678 = phi float [ %8676, %8667 ], [ %8664, %8663 ]
  %8679 = fsub fast float %8565, %8651
  %8680 = fmul fast float %8679, %8666
  %8681 = fmul fast float %8651, %8650
  %8682 = fadd fast float %8651, %8650
  %8683 = fmul fast float %8682, %8605
  %8684 = fadd fast float %8681, %8606
  %8685 = fsub fast float %8684, %8683
  %8686 = fdiv fast float %8685, %8680
  %8687 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8688 = fcmp fast oeq float %7356, 0.000000e+00
  %8689 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8690 = fcmp fast oeq float %8689, 0.000000e+00
  %8691 = or i1 %8688, %8690
  %8692 = fmul fast float %8689, 2.000000e+00
  %8693 = fadd fast float %8474, %8475
  %8694 = fdiv fast float %8693, %8692
  %8695 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8696 = fmul fast float %8695, 2.000000e+00
  %8697 = fsub fast float 3.000000e+00, %8696
  %8698 = fmul fast float %8695, %8695
  %8699 = fmul fast float %8698, %8697
  %8700 = select i1 %8691, float 1.000000e+00, float %8699
  %8701 = fmul fast float %8686, %7356
  %8702 = fadd fast float %8687, %8701
  %8703 = call float @dx.op.unary.f32(i32 7, float %8702)  ; Saturate(value)
  %8704 = fmul fast float %8700, %8703
  br label %8705

; <label>:8705                                    ; preds = %8677, %8557
  %8706 = phi float [ %8704, %8677 ], [ 0.000000e+00, %8557 ]
  %8707 = fsub fast float 1.000000e+00, %8706
  %8708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8427, float %8428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8709 = extractvalue %dx.types.ResRet.f32 %8708, 0
  %8710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.i32 %8710, 2
  %8712 = icmp eq i32 %8711, 0
  br i1 %8712, label %8718, label %8713

; <label>:8713                                    ; preds = %8705
  %8714 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  %8715 = fadd fast float %8709, -1.000000e+00
  %8716 = fmul fast float %8714, %8715
  %8717 = fadd fast float %8716, 1.000000e+00
  br label %8718

; <label>:8718                                    ; preds = %8713, %8705
  %8719 = phi float [ %8717, %8713 ], [ %8707, %8705 ]
  br i1 %8481, label %8720, label %8738

; <label>:8720                                    ; preds = %8718
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 1
  %8723 = fsub fast float %8558, %8722
  %8724 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8725 = fsub fast float %8558, %8480
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float %8724, %8726
  %8728 = fsub fast float %8560, %8726
  %8729 = fdiv fast float %8728, %8727
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = fmul fast float %8730, 2.000000e+00
  %8732 = fsub fast float 3.000000e+00, %8731
  %8733 = fsub fast float %8709, %8719
  %8734 = fmul fast float %8730, %8730
  %8735 = fmul fast float %8734, %8733
  %8736 = fmul fast float %8735, %8732
  %8737 = fadd fast float %8736, %8719
  br label %8738

; <label>:8738                                    ; preds = %8720, %8718
  %8739 = phi float [ %8737, %8720 ], [ %8719, %8718 ]
  %8740 = call float @dx.op.binary.f32(i32 35, float %8709, float %8739)  ; FMax(a,b)
  %8741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.i32 %8741, 2
  %8743 = and i32 %8742, 1
  %8744 = icmp eq i32 %8743, 0
  %8745 = fcmp fast une float %8740, 1.000000e+00
  %8746 = and i1 %8745, %8744
  br i1 %8746, label %8747, label %8766

; <label>:8747                                    ; preds = %8738
  %8748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8427, float %8428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = extractvalue %dx.types.ResRet.f32 %8748, 1
  %8751 = extractvalue %dx.types.ResRet.f32 %8748, 2
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8754 = fmul fast float %8753, %8749
  %8755 = fmul fast float %8753, %8750
  %8756 = fmul fast float %8753, %8751
  %8757 = fcmp fast ogt float %8709, 0x3FEFFF2E40000000
  %8758 = fsub fast float 1.000000e+00, %8740
  %8759 = fsub fast float 1.000000e+00, %8709
  %8760 = fdiv fast float %8758, %8759
  %8761 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8762 = select i1 %8757, float 0.000000e+00, float %8761
  %8763 = fmul fast float %8754, %8762
  %8764 = fmul fast float %8755, %8762
  %8765 = fmul fast float %8756, %8762
  br label %8766

; <label>:8766                                    ; preds = %8747, %8738
  %8767 = phi float [ 0.000000e+00, %8738 ], [ %8763, %8747 ]
  %8768 = phi float [ 0.000000e+00, %8738 ], [ %8764, %8747 ]
  %8769 = phi float [ 0.000000e+00, %8738 ], [ %8765, %8747 ]
  %8770 = fmul fast float %8767, %7344
  %8771 = fmul fast float %8768, %7344
  %8772 = fmul fast float %8769, %7344
  %8773 = fmul fast float %8740, %8402
  %8774 = call float @dx.op.dot3.f32(i32 55, float %8740, float %8740, float %8740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8775 = call float @dx.op.dot3.f32(i32 55, float %8770, float %8771, float %8772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8776 = select i1 %252, float %8774, float %8740
  %8777 = select i1 %252, float 1.000000e+00, float %8740
  %8778 = select i1 %252, float %8775, float %8770
  %8779 = select i1 %252, float 0.000000e+00, float %8771
  %8780 = select i1 %252, float 0.000000e+00, float %8772
  %8781 = fmul fast float %8776, %8414
  %8782 = fmul fast float %8776, %8415
  %8783 = fmul fast float %8777, %8416
  %8784 = fadd fast float %8781, %8778
  %8785 = fadd fast float %8782, %8779
  %8786 = fadd fast float %8780, %8783
  %8787 = fmul fast float %8776, %8417
  %8788 = fmul fast float %8776, %8418
  %8789 = fmul fast float %8777, %8419
  br label %8790

; <label>:8790                                    ; preds = %8766, %8423, %8392, %7624
  %8791 = phi float [ %7629, %7624 ], [ %8414, %8392 ], [ %8784, %8766 ], [ %8414, %8423 ]
  %8792 = phi float [ %7630, %7624 ], [ %8415, %8392 ], [ %8785, %8766 ], [ %8415, %8423 ]
  %8793 = phi float [ %7631, %7624 ], [ %8416, %8392 ], [ %8786, %8766 ], [ %8416, %8423 ]
  %8794 = phi float [ %7632, %7624 ], [ %8417, %8392 ], [ %8787, %8766 ], [ %8417, %8423 ]
  %8795 = phi float [ %7633, %7624 ], [ %8418, %8392 ], [ %8788, %8766 ], [ %8418, %8423 ]
  %8796 = phi float [ %7634, %7624 ], [ %8419, %8392 ], [ %8789, %8766 ], [ %8419, %8423 ]
  %8797 = phi float [ %7635, %7624 ], [ %8402, %8392 ], [ %8773, %8766 ], [ %8402, %8423 ]
  %8798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8798, 2
  %8800 = extractvalue %dx.types.CBufRet.f32 %8798, 3
  %8801 = fmul fast float %8799, %106
  %8802 = fmul fast float %8800, %107
  %8803 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8804 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8805 = select i1 %7366, i32 2, i32 0
  %8806 = or i32 %8805, 1
  %8807 = uitofp i32 %8806 to float
  %8808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8803, float %8804, float %8807, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8809 = extractvalue %dx.types.ResRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.ResRet.f32 %8808, 1
  %8811 = extractvalue %dx.types.ResRet.f32 %8808, 2
  %8812 = extractvalue %dx.types.ResRet.f32 %8808, 3
  %8813 = add nuw nsw i32 %8805, 2
  %8814 = uitofp i32 %8813 to float
  %8815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8803, float %8804, float %8814, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8816 = extractvalue %dx.types.ResRet.f32 %8815, 0
  %8817 = extractvalue %dx.types.ResRet.f32 %8815, 1
  %8818 = extractvalue %dx.types.ResRet.f32 %8815, 2
  %8819 = extractvalue %dx.types.ResRet.f32 %8815, 3
  %8820 = call float @dx.op.binary.f32(i32 35, float %8810, float %8811)  ; FMax(a,b)
  %8821 = call float @dx.op.binary.f32(i32 35, float %8809, float %8820)  ; FMax(a,b)
  %8822 = call float @dx.op.binary.f32(i32 35, float %8821, float %8812)  ; FMax(a,b)
  %8823 = call float @dx.op.binary.f32(i32 36, float %8817, float %8818)  ; FMin(a,b)
  %8824 = call float @dx.op.binary.f32(i32 36, float %8816, float %8823)  ; FMin(a,b)
  %8825 = call float @dx.op.binary.f32(i32 36, float %8824, float %8819)  ; FMin(a,b)
  %8826 = fmul fast float %8822, 2.550000e+02
  %8827 = fadd fast float %8826, 0x3F70101020000000
  %8828 = fptoui float %8827 to i32
  %8829 = fmul fast float %8825, 2.550000e+02
  %8830 = fadd fast float %8829, 0x3F70101020000000
  %8831 = fptoui float %8830 to i32
  %8832 = icmp ult i32 %8828, %8831
  br i1 %8832, label %8833, label %9002

; <label>:8833                                    ; preds = %8790
  %8834 = fcmp fast ogt float %96, 9.843750e-01
  %8835 = fadd fast float %7628, -4.000000e+00
  %8836 = select i1 %8834, float -4.000000e+00, float %8835
  %8837 = call float @dx.op.binary.f32(i32 35, float %8836, float 0.000000e+00)  ; FMax(a,b)
  %8838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8839 = extractvalue %dx.types.CBufRet.f32 %8838, 0
  %8840 = fadd fast float %8839, %8837
  %8841 = extractvalue %dx.types.CBufRet.f32 %8838, 2
  %8842 = fmul fast float %8840, %8841
  %8843 = call float @dx.op.unary.f32(i32 23, float %8842)  ; Log(value)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8838, 3
  %8845 = fmul fast float %8844, %8843
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 2
  %8848 = fmul fast float %8845, %8847
  %8849 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8850 = uitofp i32 %8828 to float
  %8851 = uitofp i32 %8831 to float
  %8852 = fadd fast float %8850, 5.000000e-01
  %8853 = fadd fast float %8851, 5.000000e-01
  %8854 = fmul fast float %8847, %8852
  %8855 = fmul fast float %8847, %8853
  %8856 = fadd fast float %8854, 0x3F0FFB4800000000
  %8857 = fadd fast float %8855, 0xBF0FFB4800000000
  %8858 = call float @dx.op.binary.f32(i32 35, float %8849, float %8856)  ; FMax(a,b)
  %8859 = call float @dx.op.binary.f32(i32 36, float %8858, float %8857)  ; FMin(a,b)
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 1
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8863 = extractvalue %dx.types.CBufRet.f32 %8860, 0
  %8864 = select i1 %7366, float %8863, float 0.000000e+00
  %8865 = fmul fast float %8861, %8859
  %8866 = fadd fast float %8864, %8865
  %8867 = fadd fast float %8864, %8862
  %8868 = fsub fast float %8861, %8862
  %8869 = fadd fast float %8868, %8864
  %8870 = call float @dx.op.binary.f32(i32 35, float %8866, float %8867)  ; FMax(a,b)
  %8871 = call float @dx.op.binary.f32(i32 36, float %8870, float %8869)  ; FMin(a,b)
  %8872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8803, float %8804, float %8871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8873 = extractvalue %dx.types.ResRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.ResRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.ResRet.f32 %8872, 2
  %8876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.i32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.i32 %8876, 1
  %8879 = uitofp i32 %8877 to float
  %8880 = uitofp i32 %8878 to float
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 0
  %8883 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8884 = fmul fast float %8879, %8803
  %8885 = fmul fast float %8880, %8804
  %8886 = fadd fast float %8884, -5.000000e-01
  %8887 = fadd fast float %8885, -5.000000e-01
  %8888 = call float @dx.op.unary.f32(i32 22, float %8886)  ; Frc(value)
  %8889 = call float @dx.op.unary.f32(i32 22, float %8887)  ; Frc(value)
  %8890 = fmul fast float %8888, %8888
  %8891 = fmul fast float %8890, %8888
  %8892 = fsub fast float 3.000000e+00, %8888
  %8893 = fmul fast float %8890, %8892
  %8894 = fmul fast float %8888, 3.000000e+00
  %8895 = fmul fast float %8891, 3.000000e+00
  %8896 = fmul fast float %8890, 6.000000e+00
  %8897 = fsub fast float %8895, %8896
  %8898 = fadd fast float %8897, 4.000000e+00
  %8899 = fmul fast float %8898, 0x3FC5555560000000
  %8900 = fmul fast float %8891, -3.000000e+00
  %8901 = fadd fast float %8890, %8888
  %8902 = fmul fast float %8901, 3.000000e+00
  %8903 = fadd fast float %8900, 1.000000e+00
  %8904 = fadd fast float %8903, %8902
  %8905 = fmul fast float %8891, 0x3FC5555560000000
  %8906 = fmul fast float %8889, %8889
  %8907 = fmul fast float %8906, %8889
  %8908 = fsub fast float 3.000000e+00, %8889
  %8909 = fmul fast float %8906, %8908
  %8910 = fmul fast float %8889, 3.000000e+00
  %8911 = fmul fast float %8907, 3.000000e+00
  %8912 = fmul fast float %8906, 6.000000e+00
  %8913 = fsub fast float %8911, %8912
  %8914 = fadd fast float %8913, 4.000000e+00
  %8915 = fmul fast float %8914, 0x3FC5555560000000
  %8916 = fmul fast float %8907, -3.000000e+00
  %8917 = fadd fast float %8906, %8889
  %8918 = fmul fast float %8917, 3.000000e+00
  %8919 = fadd fast float %8916, 1.000000e+00
  %8920 = fadd fast float %8919, %8918
  %8921 = fmul fast float %8907, 0x3FC5555560000000
  %8922 = fadd fast float %8888, 1.000000e+00
  %8923 = fsub fast float 1.000000e+00, %8894
  %8924 = fadd fast float %8923, %8893
  %8925 = fadd fast float %8924, %8898
  %8926 = fmul fast float %8925, 0x3FC5555560000000
  %8927 = fdiv fast float %8899, %8926
  %8928 = fsub fast float %8922, %8927
  %8929 = fsub fast float 1.000000e+00, %8888
  %8930 = fadd fast float %8904, %8891
  %8931 = fmul fast float %8930, 0x3FC5555560000000
  %8932 = fdiv fast float %8905, %8931
  %8933 = fadd fast float %8929, %8932
  %8934 = fadd fast float %8889, 1.000000e+00
  %8935 = fsub fast float 1.000000e+00, %8910
  %8936 = fadd fast float %8935, %8909
  %8937 = fadd fast float %8936, %8914
  %8938 = fmul fast float %8937, 0x3FC5555560000000
  %8939 = fdiv fast float %8915, %8938
  %8940 = fsub fast float %8934, %8939
  %8941 = fsub fast float 1.000000e+00, %8889
  %8942 = fadd fast float %8920, %8907
  %8943 = fmul fast float %8942, 0x3FC5555560000000
  %8944 = fdiv fast float %8921, %8943
  %8945 = fadd fast float %8944, %8941
  %8946 = fmul fast float %8928, %8882
  %8947 = fsub fast float %8803, %8946
  %8948 = fmul fast float %8933, %8882
  %8949 = fadd fast float %8948, %8803
  %8950 = fmul fast float %8945, %8883
  %8951 = fadd fast float %8950, %8804
  %8952 = fmul fast float %8940, %8883
  %8953 = fsub fast float %8804, %8952
  %8954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8947, float %8953, float %8871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8955 = extractvalue %dx.types.ResRet.f32 %8954, 0
  %8956 = extractvalue %dx.types.ResRet.f32 %8954, 1
  %8957 = extractvalue %dx.types.ResRet.f32 %8954, 2
  %8958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8949, float %8953, float %8871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8959 = extractvalue %dx.types.ResRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.ResRet.f32 %8958, 1
  %8961 = extractvalue %dx.types.ResRet.f32 %8958, 2
  %8962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8947, float %8951, float %8871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8963 = extractvalue %dx.types.ResRet.f32 %8962, 0
  %8964 = extractvalue %dx.types.ResRet.f32 %8962, 1
  %8965 = extractvalue %dx.types.ResRet.f32 %8962, 2
  %8966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8949, float %8951, float %8871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8967 = extractvalue %dx.types.ResRet.f32 %8966, 0
  %8968 = extractvalue %dx.types.ResRet.f32 %8966, 1
  %8969 = extractvalue %dx.types.ResRet.f32 %8966, 2
  %8970 = fsub fast float %8963, %8955
  %8971 = fsub fast float %8964, %8956
  %8972 = fsub fast float %8965, %8957
  %8973 = fmul fast float %8970, %8943
  %8974 = fmul fast float %8971, %8943
  %8975 = fmul fast float %8972, %8943
  %8976 = fadd fast float %8973, %8955
  %8977 = fadd fast float %8974, %8956
  %8978 = fadd fast float %8975, %8957
  %8979 = fsub fast float %8967, %8959
  %8980 = fsub fast float %8968, %8960
  %8981 = fsub fast float %8969, %8961
  %8982 = fmul fast float %8979, %8943
  %8983 = fmul fast float %8980, %8943
  %8984 = fmul fast float %8981, %8943
  %8985 = fsub fast float %8959, %8976
  %8986 = fadd fast float %8985, %8982
  %8987 = fsub fast float %8960, %8977
  %8988 = fadd fast float %8987, %8983
  %8989 = fsub fast float %8961, %8978
  %8990 = fadd fast float %8989, %8984
  %8991 = fmul fast float %8986, %8931
  %8992 = fmul fast float %8988, %8931
  %8993 = fmul fast float %8990, %8931
  %8994 = fadd fast float %8991, %8976
  %8995 = fadd fast float %8992, %8977
  %8996 = fadd fast float %8993, %8978
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 1
  %8999 = fmul fast float %8994, %8998
  %9000 = fmul fast float %8995, %8998
  %9001 = fmul fast float %8996, %8998
  br label %9002

; <label>:9002                                    ; preds = %8833, %8790
  %9003 = phi float [ %8873, %8833 ], [ 1.000000e+00, %8790 ]
  %9004 = phi float [ %8874, %8833 ], [ 1.000000e+00, %8790 ]
  %9005 = phi float [ %8875, %8833 ], [ 1.000000e+00, %8790 ]
  %9006 = phi float [ %8999, %8833 ], [ 0.000000e+00, %8790 ]
  %9007 = phi float [ %9000, %8833 ], [ 0.000000e+00, %8790 ]
  %9008 = phi float [ %9001, %8833 ], [ 0.000000e+00, %8790 ]
  %9009 = fmul fast float %9006, %7344
  %9010 = fmul fast float %9007, %7344
  %9011 = fmul fast float %9008, %7344
  %9012 = fmul fast float %9003, %8797
  %9013 = call float @dx.op.dot3.f32(i32 55, float %9003, float %9004, float %9005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9014 = call float @dx.op.dot3.f32(i32 55, float %9009, float %9010, float %9011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9015 = select i1 %252, float %9013, float %9003
  %9016 = select i1 %252, float %9013, float %9004
  %9017 = select i1 %252, float 1.000000e+00, float %9005
  %9018 = select i1 %252, float %9014, float %9009
  %9019 = select i1 %252, float 0.000000e+00, float %9010
  %9020 = select i1 %252, float 0.000000e+00, float %9011
  %9021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.i32 %9021, 3
  %9023 = and i32 %9022, 3
  %9024 = icmp ne i32 %9023, 0
  %9025 = and i32 %9022, 4
  %9026 = icmp ne i32 %9025, 0
  %9027 = and i1 %9024, %9026
  %9028 = and i1 %252, %9027
  br i1 %9028, label %9029, label %9035

; <label>:9029                                    ; preds = %9002
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 1
  %9032 = fadd fast float %9012, -1.000000e+00
  %9033 = fmul fast float %9031, %9032
  %9034 = fadd fast float %9033, 1.000000e+00
  br label %9035

; <label>:9035                                    ; preds = %9029, %9002
  %9036 = phi float [ %9034, %9029 ], [ %9012, %9002 ]
  %9037 = fadd fast float %8794, %8791
  %9038 = fmul fast float %9015, %9037
  %9039 = fadd fast float %9038, %9018
  %9040 = fadd fast float %8795, %8792
  %9041 = fmul fast float %9016, %9040
  %9042 = fadd fast float %9041, %9019
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  br i1 %252, label %9045, label %9061

; <label>:9045                                    ; preds = %9035
  %9046 = fadd fast float %9039, %9042
  %9047 = fmul fast float %9044, %9046
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 3
  %9050 = extractvalue %dx.types.CBufRet.f32 %7348, 1
  %9051 = fsub fast float %7353, %7347
  %9052 = fadd fast float %9051, %7354
  %9053 = fsub fast float %9052, %9050
  %9054 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %9055 = fmul fast float %9053, %9054
  %9056 = call float @dx.op.unary.f32(i32 7, float %9055)  ; Saturate(value)
  %9057 = fsub fast float %9056, %9049
  %9058 = fmul fast float %9057, %9036
  %9059 = fadd fast float %9058, %9049
  %9060 = fmul fast float %9059, %4206
  br label %9087

; <label>:9061                                    ; preds = %9035
  %9062 = fadd fast float %8796, %8793
  %9063 = fmul fast float %9017, %9062
  %9064 = fadd fast float %9063, %9020
  %9065 = fmul fast float %9044, %9039
  %9066 = fmul fast float %9044, %9042
  %9067 = fmul fast float %9044, %9064
  %9068 = call float @dx.op.binary.f32(i32 35, float %9066, float %9067)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float %9065, float %9068)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float %7344, float %7344)  ; FMax(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %7344, float %9070)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 35, float %9069, float %9071)  ; FMax(a,b)
  %9073 = fcmp fast ugt float %9072, 0x3F10000000000000
  br i1 %9073, label %9075, label %9074

; <label>:9074                                    ; preds = %9061
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9075

; <label>:9075                                    ; preds = %9074, %9061
  %9076 = add i32 %55, 356
  %9077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9076, i32 undef)  ; BufferLoad(srv,index,wot)
  %9078 = extractvalue %dx.types.ResRet.i32 %9077, 0
  %9079 = and i32 %9078, 32
  %9080 = icmp eq i32 %9079, 0
  br i1 %9080, label %9087, label %9081

; <label>:9081                                    ; preds = %9075
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = fmul fast float %9083, 0x3FE99999A0000000
  %9085 = fadd fast float %9083, %9065
  %9086 = fadd fast float %9084, %9067
  br label %9087

; <label>:9087                                    ; preds = %9081, %9075, %9045
  %9088 = phi float [ %4206, %9045 ], [ %7344, %9081 ], [ %7344, %9075 ]
  %9089 = phi float [ %9047, %9045 ], [ %9085, %9081 ], [ %9065, %9075 ]
  %9090 = phi float [ %9060, %9045 ], [ %9066, %9081 ], [ %9066, %9075 ]
  %9091 = phi float [ %4206, %9045 ], [ %9086, %9081 ], [ %9067, %9075 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9092 = call float @dx.op.binary.f32(i32 36, float %9089, float 3.225500e+04)  ; FMin(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %9090, float 3.225500e+04)  ; FMin(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %9091, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9092)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9093)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9094)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9095 = call float @dx.op.binary.f32(i32 36, float %7344, float 3.225500e+04)  ; FMin(a,b)
  %9096 = call float @dx.op.binary.f32(i32 36, float %9088, float 3.225500e+04)  ; FMin(a,b)
  %9097 = call float @dx.op.binary.f32(i32 36, float %9088, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9095)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9097)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!68 = !{[58 x i32] [i32 56, i32 8, i32 7, i32 7, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 7, i32 0, i32 119, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !98}
!70 = !{!71, !94, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !92, !93}
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
!90 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 12, i8 1, !91}
!91 = !{i32 3, i32 2}
!92 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !89}
!93 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!94 = !{!95, !96}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!96 = !{i32 1, !"SV_Target", i8 9, i8 16, !97, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
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

