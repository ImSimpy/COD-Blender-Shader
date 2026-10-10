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
; shader hash: 9419ff619fed2cd60b34325fcbac22bb
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %264 = add i32 %55, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %55, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %55, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %55, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = mul i32 %56, 100
  %307 = add i32 %306, 28
  %308 = add i32 %306, 40
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %55, 172
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %55, 232
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %55, 52
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %55, 304
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = shl i32 %352, 4
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %352, 7
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %352, 22
  %360 = shl nuw nsw i32 %359, 5
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = and i32 %310, 1
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, float %355, float %316
  %365 = select i1 %363, float %358, float %319
  %366 = select i1 %363, float %361, float %322
  %367 = add i32 %306, 44
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = fmul fast float %369, %364
  %371 = fmul fast float %369, %365
  %372 = fmul fast float %369, %366
  %373 = add i32 %306, 48
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 22
  %383 = shl nuw nsw i32 %382, 5
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %310, 8
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %378, float %328
  %388 = select i1 %386, float %381, float %332
  %389 = select i1 %386, float %384, float %336
  %390 = add i32 %306, 52
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = and i32 %310, 2
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %394, float %341
  %400 = select i1 %398, float %396, float %343
  %401 = add i32 %306, 56
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %310, 4
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %405, float %348
  %411 = fmul float %410, 0x3F50624DE0000000
  %412 = select i1 %409, float %407, float %350
  %413 = fmul float %412, 0x3F50624DE0000000
  %414 = add i32 %306, 60
  %415 = add i32 %306, 32
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = add i32 %55, 188
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = shl i32 %420, 4
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %420, 7
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %420, 22
  %428 = shl nuw nsw i32 %427, 5
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %55, 248
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 255
  %434 = uitofp i32 %433 to float
  %435 = fmul fast float %434, 0x3F70101020000000
  %436 = lshr i32 %432, 8
  %437 = and i32 %436, 255
  %438 = uitofp i32 %437 to float
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = lshr i32 %432, 16
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = add i32 %55, 68
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = add i32 %55, 320
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 65535
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %453, 16
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = shl i32 %459, 4
  %461 = and i32 %460, 32752
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %459, 7
  %464 = and i32 %463, 32752
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %459, 22
  %467 = shl nuw nsw i32 %466, 5
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = and i32 %417, 1
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %462, float %423
  %472 = select i1 %470, float %465, float %426
  %473 = select i1 %470, float %468, float %429
  %474 = add i32 %306, 64
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = fmul fast float %476, %471
  %478 = fmul fast float %476, %472
  %479 = fmul fast float %476, %473
  %480 = add i32 %306, 68
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %417, 8
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %435
  %495 = select i1 %493, float %488, float %439
  %496 = select i1 %493, float %491, float %443
  %497 = add i32 %306, 72
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %417, 2
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %501, float %448
  %507 = select i1 %505, float %503, float %450
  %508 = add i32 %306, 76
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %417, 4
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %512, float %455
  %518 = fmul float %517, 0x3F50624DE0000000
  %519 = select i1 %516, float %514, float %457
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = add i32 %306, 80
  %522 = add i32 %306, 36
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %55, 204
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 4
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %527, 7
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %527, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = add i32 %55, 264
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %539, 8
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = lshr i32 %539, 16
  %548 = and i32 %547, 255
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = add i32 %55, 84
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %55, 336
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %566, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %566, 22
  %574 = shl nuw nsw i32 %573, 5
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = and i32 %524, 1
  %577 = icmp ne i32 %576, 0
  %578 = select i1 %577, float %569, float %530
  %579 = select i1 %577, float %572, float %533
  %580 = select i1 %577, float %575, float %536
  %581 = add i32 %306, 84
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = fmul fast float %583, %578
  %585 = fmul fast float %583, %579
  %586 = fmul fast float %583, %580
  %587 = add i32 %306, 88
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %524, 8
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %600, float %592, float %542
  %602 = select i1 %600, float %595, float %546
  %603 = select i1 %600, float %598, float %550
  %604 = add i32 %306, 92
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %524, 2
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %612, float %608, float %555
  %614 = select i1 %612, float %610, float %557
  %615 = add i32 %306, 96
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %617, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %524, 4
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %619, float %562
  %625 = fmul float %624, 0x3F50624DE0000000
  %626 = select i1 %623, float %621, float %564
  %627 = fmul float %626, 0x3F50624DE0000000
  %628 = add i32 %55, 348
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 32
  %632 = icmp eq i32 %631, 0
  %633 = and i32 %630, 64
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %630, 128
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 2
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %656, label %641

; <label>:641                                     ; preds = %251
  %642 = add i32 %55, 488
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = fmul fast float %651, %90
  %653 = fmul fast float %648, %91
  %654 = fmul fast float %649, %92
  %655 = fmul fast float %650, %93
  br label %656

; <label>:656                                     ; preds = %641, %251
  %657 = phi float [ %93, %251 ], [ %655, %641 ]
  %658 = phi float [ %92, %251 ], [ %654, %641 ]
  %659 = phi float [ %91, %251 ], [ %653, %641 ]
  %660 = phi float [ %90, %251 ], [ %652, %641 ]
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 2
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %684, label %665

; <label>:665                                     ; preds = %656
  %666 = add i32 %55, 44
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 1
  %670 = icmp ne i32 %669, 0
  %671 = select i1 %670, float %659, float 1.000000e+00
  %672 = add i32 %55, 60
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 1
  %676 = icmp ne i32 %675, 0
  %677 = select i1 %676, float %658, float 1.000000e+00
  %678 = add i32 %55, 76
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %657, float 1.000000e+00
  br label %684

; <label>:684                                     ; preds = %665, %656
  %685 = phi float [ %657, %656 ], [ %683, %665 ]
  %686 = phi float [ %658, %656 ], [ %677, %665 ]
  %687 = phi float [ %659, %656 ], [ %671, %665 ]
  %688 = lshr i32 %662, 20
  %689 = and i32 %688, 3
  %690 = add nuw nsw i32 %689, 1
  %691 = add i32 %55, 24
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %55, 28
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = or i32 %696, %693
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %1317, label %699

; <label>:699                                     ; preds = %684
  %700 = and i32 %693, 262144
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %61, float 1.000000e+00
  %703 = select i1 %701, float %62, float 0.000000e+00
  %704 = select i1 %701, float %63, float 0.000000e+00
  %705 = select i1 %701, float %64, float 1.000000e+00
  %706 = select i1 %701, float %65, float %88
  %707 = select i1 %701, float %66, float %89
  %708 = add i32 %55, 284
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 16
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fmul fast float %712, 0x3F50624DE0000000
  %714 = add i32 %55, 88
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = lshr i32 %716, 16
  %718 = and i32 %717, 255
  %719 = lshr i32 %716, 24
  %720 = add i32 %55, 292
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %55, 32
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = shl i32 %729, 4
  %734 = and i32 %733, 32752
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %729, 7
  %737 = and i32 %736, 32752
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %741 = fmul fast float %740, 1.000000e+03
  %742 = fmul fast float %304, %741
  %743 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %744 = fadd fast float %743, %294
  %745 = fmul fast float %305, %741
  %746 = call float @dx.op.unary.f32(i32 22, float %745)  ; Frc(value)
  %747 = fadd fast float %746, %296
  %748 = fmul fast float %713, %741
  %749 = call float @dx.op.unary.f32(i32 22, float %748)  ; Frc(value)
  %750 = fmul fast float %749, 0x401921FB60000000
  %751 = fadd fast float %750, %732
  %752 = call float @dx.op.unary.f32(i32 13, float %751)  ; Sin(value)
  %753 = call float @dx.op.unary.f32(i32 12, float %751)  ; Cos(value)
  %754 = fsub fast float -0.000000e+00, %752
  %755 = fadd fast float %706, -5.000000e-01
  %756 = fadd fast float %707, -5.000000e-01
  %757 = fmul fast float %724, %755
  %758 = fmul fast float %726, %756
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fmul fast float %735, %759
  %762 = fmul fast float %738, %760
  %763 = fmul fast float %753, %761
  %764 = call float @dx.op.tertiary.f32(i32 46, float %754, float %762, float %763)  ; FMad(a,b,c)
  %765 = fmul fast float %752, %761
  %766 = call float @dx.op.tertiary.f32(i32 46, float %753, float %762, float %765)  ; FMad(a,b,c)
  %767 = fadd fast float %744, %764
  %768 = fadd fast float %747, %766
  %769 = icmp ugt i32 %718, 1
  %770 = icmp ugt i32 %716, 33554431
  %771 = or i1 %770, %769
  br i1 %771, label %772, label %797

; <label>:772                                     ; preds = %699
  %773 = add i32 %55, 228
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %740, %777
  %779 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %780 = mul nuw nsw i32 %718, %719
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %779, %781
  %783 = call float @dx.op.unary.f32(i32 27, float %782)  ; Round_ni(value)
  %784 = fptoui float %783 to i32
  %785 = urem i32 %784, %718
  %786 = udiv i32 %784, %719
  %787 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %788 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %789 = uitofp i32 %785 to float
  %790 = uitofp i32 %786 to float
  %791 = fadd fast float %787, %789
  %792 = fadd fast float %788, %790
  %793 = uitofp i32 %718 to float
  %794 = uitofp i32 %719 to float
  %795 = fdiv fast float %791, %793
  %796 = fdiv fast float %792, %794
  br label %797

; <label>:797                                     ; preds = %772, %699
  %798 = phi float [ %795, %772 ], [ %767, %699 ]
  %799 = phi float [ %796, %772 ], [ %768, %699 ]
  %800 = and i32 %693, 256
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %848, label %802

; <label>:802                                     ; preds = %797
  %803 = add i32 %55, 424
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = add i32 %805, 0
  %807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %808 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %807, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = add i32 %55, 100
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = shl i32 %812, 4
  %814 = and i32 %813, 32752
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %812, 7
  %817 = and i32 %816, 32752
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fsub fast float 1.000000e+00, %660
  %820 = call float @dx.op.binary.f32(i32 35, float %819, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %821 = bitcast float %660 to i32
  %822 = sitofp i32 %821 to float
  %823 = fadd fast float %822, 0xC1CFBF8940000000
  %824 = fmul fast float %818, %823
  %825 = fadd fast float %824, 0x41CFBF8940000000
  %826 = fptosi float %825 to i32
  %827 = bitcast i32 %826 to float
  %828 = bitcast float %820 to i32
  %829 = sitofp i32 %828 to float
  %830 = fadd fast float %829, 0xC1CFBF8940000000
  %831 = fmul fast float %830, %818
  %832 = fadd fast float %831, 0x41CFBF8940000000
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = fmul fast float %827, %815
  %836 = fmul fast float %834, %815
  %837 = fsub fast float %820, %835
  %838 = fadd fast float %836, %820
  %839 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %840 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %841 = fsub fast float %809, %839
  %842 = fsub fast float %840, %839
  %843 = bitcast float %842 to i32
  %844 = sub nsw i32 2129859010, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %845, %841
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  br label %848

; <label>:848                                     ; preds = %802, %797
  %849 = phi float [ %847, %802 ], [ %660, %797 ]
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 128
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %870, label %854

; <label>:854                                     ; preds = %848
  %855 = add i32 %55, 408
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = add i32 %857, 0
  %859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %859, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 524288
  %865 = icmp ne i32 %864, 0
  %866 = fcmp fast ogt float %861, 0x3FE0101020000000
  %867 = select i1 %866, float 1.000000e+00, float 0.000000e+00
  %868 = select i1 %865, float %867, float %861
  %869 = fmul fast float %868, %849
  br label %870

; <label>:870                                     ; preds = %854, %848
  %871 = phi float [ %869, %854 ], [ %849, %848 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 16
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %1074, label %876

; <label>:876                                     ; preds = %870
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %55, 360
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = add i32 %881, 0
  %883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %883, %dx.types.Handle %102, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = and i32 %878, 255
  %890 = uitofp i32 %889 to float
  %891 = lshr i32 %878, 8
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %888, %890
  %895 = fadd fast float %894, %893
  %896 = fmul fast float %895, 0x3F70101000000000
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 512
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %909, label %901

; <label>:901                                     ; preds = %876
  %902 = add i32 %55, 440
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  br label %909

; <label>:909                                     ; preds = %901, %876
  %910 = phi float [ %908, %901 ], [ 1.000000e+00, %876 ]
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 33554432
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %1021, label %915

; <label>:915                                     ; preds = %909
  %916 = add i32 %55, 224
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %918, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = add i32 %55, 228
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 65535
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 24
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101020000000
  %933 = and i32 %929, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101020000000
  %936 = lshr i32 %929, 8
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = lshr i32 %929, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = add i32 %55, 220
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %961 = bitcast float %885 to i32
  %962 = ashr i32 %961, 1
  %963 = sub nsw i32 1597463174, %962
  %964 = bitcast i32 %963 to float
  %965 = fmul fast float %885, 5.000000e-01
  %966 = fmul fast float %964, %964
  %967 = fmul fast float %966, %965
  %968 = fsub fast float 1.500000e+00, %967
  %969 = fmul fast float %964, %885
  %970 = fmul fast float %969, %968
  %971 = bitcast float %886 to i32
  %972 = ashr i32 %971, 1
  %973 = sub nsw i32 1597463174, %972
  %974 = bitcast i32 %973 to float
  %975 = fmul fast float %886, 5.000000e-01
  %976 = fmul fast float %974, %974
  %977 = fmul fast float %976, %975
  %978 = fsub fast float 1.500000e+00, %977
  %979 = fmul fast float %974, %886
  %980 = fmul fast float %979, %978
  %981 = bitcast float %887 to i32
  %982 = ashr i32 %981, 1
  %983 = sub nsw i32 1597463174, %982
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %887, 5.000000e-01
  %986 = fmul fast float %984, %984
  %987 = fmul fast float %986, %985
  %988 = fsub fast float 1.500000e+00, %987
  %989 = fmul fast float %984, %887
  %990 = fmul fast float %989, %988
  %991 = fsub fast float %970, %952
  %992 = fsub fast float %980, %956
  %993 = fsub fast float %990, %960
  %994 = fmul fast float %991, %920
  %995 = fmul fast float %992, %922
  %996 = fmul fast float %993, %927
  %997 = fadd fast float %994, %935
  %998 = fadd fast float %995, %939
  %999 = fadd fast float %996, %943
  %1000 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %1001 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = fmul fast float %1000, %1000
  %1004 = fmul fast float %1001, %1001
  %1005 = fmul fast float %1002, %1002
  %1006 = fsub fast float %1003, %885
  %1007 = fsub fast float %1004, %886
  %1008 = fsub fast float %1005, %887
  %1009 = fmul fast float %1006, %910
  %1010 = fmul fast float %1007, %910
  %1011 = fmul fast float %1008, %910
  %1012 = fadd fast float %1009, %885
  %1013 = fadd fast float %1010, %886
  %1014 = fadd fast float %1011, %887
  %1015 = fadd fast float %932, %896
  %1016 = fsub fast float %1015, %949
  %1017 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1018 = fsub fast float %1017, %896
  %1019 = fmul fast float %1018, %910
  %1020 = fadd fast float %1019, %896
  br label %1074

; <label>:1021                                    ; preds = %909
  %1022 = and i32 %912, 134217728
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1058, label %1024

; <label>:1024                                    ; preds = %1021
  %1025 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1026 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1027 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1028 = fadd fast float %1025, -5.000000e-01
  %1029 = fadd fast float %1026, -5.000000e-01
  %1030 = fadd fast float %1027, -5.000000e-01
  %1031 = fmul fast float %1028, %910
  %1032 = fmul fast float %1029, %910
  %1033 = fmul fast float %1030, %910
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = call float @dx.op.unary.f32(i32 24, float %885)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %886)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %1040 = fmul fast float %1034, 2.000000e+00
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1041, %1037
  %1043 = fadd fast float %1042, %1040
  %1044 = fmul fast float %1043, %1037
  %1045 = fmul fast float %1035, 2.000000e+00
  %1046 = fsub fast float 1.000000e+00, %1045
  %1047 = fmul fast float %1046, %1038
  %1048 = fadd fast float %1047, %1045
  %1049 = fmul fast float %1048, %1038
  %1050 = fmul fast float %1036, 2.000000e+00
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1051, %1039
  %1053 = fadd fast float %1052, %1050
  %1054 = fmul fast float %1053, %1039
  %1055 = fmul fast float %1044, %1044
  %1056 = fmul fast float %1049, %1049
  %1057 = fmul fast float %1054, %1054
  br label %1074

; <label>:1058                                    ; preds = %1021
  %1059 = fmul fast float %281, %281
  %1060 = fmul fast float %285, %285
  %1061 = fmul fast float %289, %289
  %1062 = fadd fast float %1059, -1.000000e+00
  %1063 = fadd fast float %1060, -1.000000e+00
  %1064 = fadd fast float %1061, -1.000000e+00
  %1065 = fmul fast float %910, %1062
  %1066 = fmul fast float %910, %1063
  %1067 = fmul fast float %910, %1064
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fadd fast float %1066, 1.000000e+00
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fmul fast float %1068, %885
  %1072 = fmul fast float %1069, %886
  %1073 = fmul fast float %1070, %887
  br label %1074

; <label>:1074                                    ; preds = %1058, %1024, %915, %870
  %1075 = phi float [ %1020, %915 ], [ %896, %1024 ], [ %896, %1058 ], [ 0x3FA23C0BE0000000, %870 ]
  %1076 = phi float [ %1012, %915 ], [ %1055, %1024 ], [ %1071, %1058 ], [ 1.000000e+00, %870 ]
  %1077 = phi float [ %1013, %915 ], [ %1056, %1024 ], [ %1072, %1058 ], [ 1.000000e+00, %870 ]
  %1078 = phi float [ %1014, %915 ], [ %1057, %1024 ], [ %1073, %1058 ], [ 1.000000e+00, %870 ]
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 1
  %1081 = and i32 %1080, 1
  %1082 = icmp ne i32 %1081, 0
  %1083 = add i32 %55, 356
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 32
  %1087 = icmp ne i32 %1086, 0
  %1088 = and i1 %1082, %1087
  %1089 = select i1 %1088, float 1.000000e+00, float %1076
  %1090 = select i1 %1088, float 0x3FD3333340000000, float %1077
  %1091 = select i1 %1088, float 0x3FD3333340000000, float %1078
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 32
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1168, label %1096

; <label>:1096                                    ; preds = %1074
  %1097 = add i32 %55, 92
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %55, 376
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %102, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = and i32 %1099, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1099, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = lshr i32 %1099, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101000000000
  %1119 = fmul fast float %1106, %1111
  %1120 = fadd fast float %1119, %1114
  %1121 = fmul fast float %1120, 0x3F70101000000000
  %1122 = fadd fast float %1107, -5.000000e-01
  %1123 = fadd fast float %1109, -5.000000e-01
  %1124 = fmul fast float %1122, %1118
  %1125 = fmul fast float %1123, %1118
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = fmul fast float %1126, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1127, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fadd fast float %1129, %1131
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = fsub fast float %1129, %1131
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1137 = fsub fast float 1.000000e+00, %1136
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float %1137, %1138
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1135, float %1139, float %1133, float %1135, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1133, %1141
  %1143 = fmul fast float %1135, %1141
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 67108864
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1164, label %1148

; <label>:1148                                    ; preds = %1096
  %1149 = add i32 %55, 280
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 65535
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = lshr i32 %1151, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fsub fast float %1121, %1159
  %1161 = fmul fast float %1160, %1153
  %1162 = fadd fast float %1161, %1157
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  br label %1164

; <label>:1164                                    ; preds = %1148, %1096
  %1165 = phi float [ %1163, %1148 ], [ %1121, %1096 ]
  %1166 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %702, float %703)  ; Dot2(ax,ay,bx,by)
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  br label %1168

; <label>:1168                                    ; preds = %1164, %1074
  %1169 = phi float [ %1165, %1164 ], [ 0x3FD6666660000000, %1074 ]
  %1170 = phi float [ %1166, %1164 ], [ 0.000000e+00, %1074 ]
  %1171 = phi float [ %1167, %1164 ], [ 0.000000e+00, %1074 ]
  %1172 = phi float [ %1108, %1164 ], [ 1.000000e+00, %1074 ]
  %1173 = add i32 %55, 160
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 22
  %1177 = shl nuw nsw i32 %1176, 5
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 64
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1216, label %1183

; <label>:1183                                    ; preds = %1168
  %1184 = add i32 %55, 392
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 131072
  %1192 = icmp eq i32 %1191, 0
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %102, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = fmul fast float %1194, %269
  %1198 = fmul fast float %1195, %272
  %1199 = fmul fast float %1196, %275
  br i1 %1192, label %1206, label %1200

; <label>:1200                                    ; preds = %1183
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = fmul fast float %1202, %1197
  %1204 = fmul fast float %1202, %1198
  %1205 = fmul fast float %1202, %1199
  br label %1206

; <label>:1206                                    ; preds = %1200, %1183
  %1207 = phi float [ %1203, %1200 ], [ %1197, %1183 ]
  %1208 = phi float [ %1204, %1200 ], [ %1198, %1183 ]
  %1209 = phi float [ %1205, %1200 ], [ %1199, %1183 ]
  %1210 = fmul fast float %1207, %1178
  %1211 = select i1 %252, float %1210, float %1207
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1211, float %1208, float %1209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = select i1 %252, float 0.000000e+00, float %1207
  %1214 = select i1 %252, float %1212, float %1208
  %1215 = select i1 %252, float 0.000000e+00, float %1209
  br label %1216

; <label>:1216                                    ; preds = %1206, %1168
  %1217 = phi float [ %1213, %1206 ], [ 0.000000e+00, %1168 ]
  %1218 = phi float [ %1214, %1206 ], [ 0.000000e+00, %1168 ]
  %1219 = phi float [ %1215, %1206 ], [ 0.000000e+00, %1168 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 1024
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1254, label %1224

; <label>:1224                                    ; preds = %1216
  %1225 = add i32 %55, 152
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1227, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1227, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = fmul fast float %1230, %1230
  %1240 = fmul fast float %1234, %1234
  %1241 = fmul fast float %1238, %1238
  %1242 = add i32 %55, 456
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = fmul fast float %1239, %1248
  %1252 = fmul fast float %1240, %1249
  %1253 = fmul fast float %1241, %1250
  br label %1254

; <label>:1254                                    ; preds = %1224, %1216
  %1255 = phi float [ %1251, %1224 ], [ 0.000000e+00, %1216 ]
  %1256 = phi float [ %1252, %1224 ], [ 0.000000e+00, %1216 ]
  %1257 = phi float [ %1253, %1224 ], [ 0.000000e+00, %1216 ]
  %1258 = fcmp fast ogt float %1255, 0.000000e+00
  %1259 = fcmp fast ogt float %1256, 0.000000e+00
  %1260 = fcmp fast ogt float %1257, 0.000000e+00
  %1261 = call float @dx.op.unary.f32(i32 23, float %1255)  ; Log(value)
  %1262 = call float @dx.op.unary.f32(i32 23, float %1256)  ; Log(value)
  %1263 = call float @dx.op.unary.f32(i32 23, float %1257)  ; Log(value)
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 7
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fmul fast float %1261, 0xBFE62E4300000000
  %1270 = fmul fast float %1269, %1268
  %1271 = fmul fast float %1262, 0xBFE62E4300000000
  %1272 = fmul fast float %1271, %1268
  %1273 = fmul fast float %1263, 0xBFE62E4300000000
  %1274 = fmul fast float %1273, %1268
  %1275 = select i1 %1258, float %1270, float 1.270000e+02
  %1276 = select i1 %1259, float %1272, float 1.270000e+02
  %1277 = select i1 %1260, float %1274, float 1.270000e+02
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 10240
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1302, label %1282

; <label>:1282                                    ; preds = %1254
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 2048
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1302, label %1287

; <label>:1287                                    ; preds = %1282
  %1288 = add i32 %55, 472
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %103, float %798, float %799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = shl i32 %1296, 4
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = fmul fast float %1299, %1294
  %1301 = call float @dx.op.binary.f32(i32 35, float %1300, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1302

; <label>:1302                                    ; preds = %1287, %1282, %1254
  %1303 = phi float [ %1301, %1287 ], [ 0x3F70101020000000, %1282 ], [ 0x3F70101020000000, %1254 ]
  %1304 = add i32 %55, 96
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1306, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = fmul fast float %1311, %1312
  %1314 = fadd fast float %1313, %1308
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  br label %1317

; <label>:1317                                    ; preds = %1302, %684
  %1318 = phi float [ 0.000000e+00, %684 ], [ %1170, %1302 ]
  %1319 = phi float [ 0.000000e+00, %684 ], [ %1171, %1302 ]
  %1320 = phi float [ 0.000000e+00, %684 ], [ %1089, %1302 ]
  %1321 = phi float [ 0.000000e+00, %684 ], [ %1090, %1302 ]
  %1322 = phi float [ 0.000000e+00, %684 ], [ %1091, %1302 ]
  %1323 = phi float [ 0.000000e+00, %684 ], [ %1217, %1302 ]
  %1324 = phi float [ 0.000000e+00, %684 ], [ %1218, %1302 ]
  %1325 = phi float [ 0.000000e+00, %684 ], [ %1219, %1302 ]
  %1326 = phi float [ 0.000000e+00, %684 ], [ %1275, %1302 ]
  %1327 = phi float [ 0.000000e+00, %684 ], [ %1276, %1302 ]
  %1328 = phi float [ 0.000000e+00, %684 ], [ %1277, %1302 ]
  %1329 = phi float [ 0.000000e+00, %684 ], [ %1075, %1302 ]
  %1330 = phi float [ 0.000000e+00, %684 ], [ %871, %1302 ]
  %1331 = phi float [ 0.000000e+00, %684 ], [ %1169, %1302 ]
  %1332 = phi float [ 0.000000e+00, %684 ], [ %1172, %1302 ]
  %1333 = phi float [ 0.000000e+00, %684 ], [ %1303, %1302 ]
  %1334 = phi float [ 0.000000e+00, %684 ], [ %1316, %1302 ]
  br i1 %632, label %2206, label %1335

; <label>:1335                                    ; preds = %1317
  %1336 = icmp ult i32 %690, 2
  %1337 = add i32 %55, 40
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = add i32 %55, 44
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = or i32 %1342, %1339
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %2206, label %1345

; <label>:1345                                    ; preds = %1335
  %1346 = and i32 %1339, 262144
  %1347 = icmp ne i32 %1346, 0
  %1348 = select i1 %1347, float %61, float 1.000000e+00
  %1349 = select i1 %1347, float %62, float 0.000000e+00
  %1350 = select i1 %1347, float %63, float 0.000000e+00
  %1351 = select i1 %1347, float %64, float 1.000000e+00
  %1352 = select i1 %1347, float %65, float %88
  %1353 = select i1 %1347, float %66, float %89
  %1354 = add i32 %55, 300
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fmul fast float %1358, 0x3F50624DE0000000
  %1360 = add i32 %55, 104
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = lshr i32 %1362, 16
  %1364 = and i32 %1363, 255
  %1365 = lshr i32 %1362, 24
  %1366 = add i32 %55, 308
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 65535
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = lshr i32 %1368, 16
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = add i32 %55, 48
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = lshr i32 %1375, 22
  %1377 = shl nuw nsw i32 %1376, 5
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = shl i32 %1375, 4
  %1380 = and i32 %1379, 32752
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = lshr i32 %1375, 7
  %1383 = and i32 %1382, 32752
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1387 = fmul fast float %1386, 1.000000e+03
  %1388 = fmul fast float %1387, %411
  %1389 = call float @dx.op.unary.f32(i32 22, float %1388)  ; Frc(value)
  %1390 = fadd fast float %1389, %399
  %1391 = fmul fast float %1387, %413
  %1392 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1393 = fadd fast float %1392, %400
  %1394 = fmul fast float %1359, %1387
  %1395 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1396 = fmul fast float %1395, 0x401921FB60000000
  %1397 = fadd fast float %1396, %1378
  %1398 = call float @dx.op.unary.f32(i32 13, float %1397)  ; Sin(value)
  %1399 = call float @dx.op.unary.f32(i32 12, float %1397)  ; Cos(value)
  %1400 = fsub fast float -0.000000e+00, %1398
  %1401 = fadd fast float %1352, -5.000000e-01
  %1402 = fadd fast float %1353, -5.000000e-01
  %1403 = fmul fast float %1370, %1401
  %1404 = fmul fast float %1372, %1402
  %1405 = fadd fast float %1403, 5.000000e-01
  %1406 = fadd fast float %1404, 5.000000e-01
  %1407 = fmul fast float %1381, %1405
  %1408 = fmul fast float %1384, %1406
  %1409 = fmul fast float %1399, %1407
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1408, float %1409)  ; FMad(a,b,c)
  %1411 = fmul fast float %1398, %1407
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1399, float %1408, float %1411)  ; FMad(a,b,c)
  %1413 = fadd fast float %1390, %1410
  %1414 = fadd fast float %1393, %1412
  %1415 = icmp ugt i32 %1364, 1
  %1416 = icmp ugt i32 %1362, 33554431
  %1417 = or i1 %1416, %1415
  br i1 %1417, label %1418, label %1443

; <label>:1418                                    ; preds = %1345
  %1419 = add i32 %55, 244
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = lshr i32 %1421, 16
  %1423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1422)  ; LegacyF16ToF32(value)
  %1424 = fmul fast float %1386, %1423
  %1425 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1426 = mul nuw nsw i32 %1364, %1365
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1425, %1427
  %1429 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1430 = fptoui float %1429 to i32
  %1431 = urem i32 %1430, %1364
  %1432 = udiv i32 %1430, %1365
  %1433 = call float @dx.op.unary.f32(i32 22, float %1413)  ; Frc(value)
  %1434 = call float @dx.op.unary.f32(i32 22, float %1414)  ; Frc(value)
  %1435 = uitofp i32 %1431 to float
  %1436 = uitofp i32 %1432 to float
  %1437 = fadd fast float %1433, %1435
  %1438 = fadd fast float %1434, %1436
  %1439 = uitofp i32 %1364 to float
  %1440 = uitofp i32 %1365 to float
  %1441 = fdiv fast float %1437, %1439
  %1442 = fdiv fast float %1438, %1440
  br label %1443

; <label>:1443                                    ; preds = %1418, %1345
  %1444 = phi float [ %1441, %1418 ], [ %1413, %1345 ]
  %1445 = phi float [ %1442, %1418 ], [ %1414, %1345 ]
  %1446 = and i32 %1339, 256
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1494, label %1448

; <label>:1448                                    ; preds = %1443
  %1449 = add i32 %55, 428
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %103, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = add i32 %55, 116
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = shl i32 %1458, 4
  %1460 = and i32 %1459, 32752
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = lshr i32 %1458, 7
  %1463 = and i32 %1462, 32752
  %1464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1463)  ; LegacyF16ToF32(value)
  %1465 = fsub fast float 1.000000e+00, %687
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1467 = bitcast float %687 to i32
  %1468 = sitofp i32 %1467 to float
  %1469 = fadd fast float %1468, 0xC1CFBF8940000000
  %1470 = fmul fast float %1464, %1469
  %1471 = fadd fast float %1470, 0x41CFBF8940000000
  %1472 = fptosi float %1471 to i32
  %1473 = bitcast i32 %1472 to float
  %1474 = bitcast float %1466 to i32
  %1475 = sitofp i32 %1474 to float
  %1476 = fadd fast float %1475, 0xC1CFBF8940000000
  %1477 = fmul fast float %1476, %1464
  %1478 = fadd fast float %1477, 0x41CFBF8940000000
  %1479 = fptosi float %1478 to i32
  %1480 = bitcast i32 %1479 to float
  %1481 = fmul fast float %1473, %1461
  %1482 = fmul fast float %1480, %1461
  %1483 = fsub fast float %1466, %1481
  %1484 = fadd fast float %1482, %1466
  %1485 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1486 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1487 = fsub fast float %1455, %1485
  %1488 = fsub fast float %1486, %1485
  %1489 = bitcast float %1488 to i32
  %1490 = sub nsw i32 2129859010, %1489
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1491, %1487
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  br label %1494

; <label>:1494                                    ; preds = %1448, %1443
  %1495 = phi float [ %1493, %1448 ], [ %687, %1443 ]
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 128
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1516, label %1500

; <label>:1500                                    ; preds = %1494
  %1501 = add i32 %55, 412
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = add i32 %1503, 0
  %1505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1505, %dx.types.Handle %103, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 524288
  %1511 = icmp ne i32 %1510, 0
  %1512 = fcmp fast ogt float %1507, 0x3FE0101020000000
  %1513 = select i1 %1512, float 1.000000e+00, float 0.000000e+00
  %1514 = select i1 %1511, float %1513, float %1507
  %1515 = fmul fast float %1514, %1495
  br label %1516

; <label>:1516                                    ; preds = %1500, %1494
  %1517 = phi float [ %1515, %1500 ], [ %1495, %1494 ]
  %1518 = fcmp fast ult float %1517, 0x3F70101020000000
  br i1 %1518, label %2206, label %1519

; <label>:1519                                    ; preds = %1516
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 16
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1722, label %1524

; <label>:1524                                    ; preds = %1519
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %55, 364
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %1529, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1531, %dx.types.Handle %102, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = extractvalue %dx.types.ResRet.f32 %1532, 3
  %1537 = and i32 %1526, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = lshr i32 %1526, 8
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1536, %1538
  %1543 = fadd fast float %1542, %1541
  %1544 = fmul fast float %1543, 0x3F70101000000000
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 512
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1557, label %1549

; <label>:1549                                    ; preds = %1524
  %1550 = add i32 %55, 444
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %103, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  br label %1557

; <label>:1557                                    ; preds = %1549, %1524
  %1558 = phi float [ %1556, %1549 ], [ 1.000000e+00, %1524 ]
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 33554432
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1669, label %1563

; <label>:1563                                    ; preds = %1557
  %1564 = add i32 %55, 240
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 65535
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = lshr i32 %1566, 16
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = add i32 %55, 244
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 65535
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 24
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = and i32 %1577, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = lshr i32 %1577, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1577, 16
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = add i32 %55, 236
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 24
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = and i32 %1594, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = lshr i32 %1594, 8
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1603, 0x3F70101020000000
  %1605 = lshr i32 %1594, 16
  %1606 = and i32 %1605, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = bitcast float %1533 to i32
  %1610 = ashr i32 %1609, 1
  %1611 = sub nsw i32 1597463174, %1610
  %1612 = bitcast i32 %1611 to float
  %1613 = fmul fast float %1533, 5.000000e-01
  %1614 = fmul fast float %1612, %1612
  %1615 = fmul fast float %1614, %1613
  %1616 = fsub fast float 1.500000e+00, %1615
  %1617 = fmul fast float %1612, %1533
  %1618 = fmul fast float %1617, %1616
  %1619 = bitcast float %1534 to i32
  %1620 = ashr i32 %1619, 1
  %1621 = sub nsw i32 1597463174, %1620
  %1622 = bitcast i32 %1621 to float
  %1623 = fmul fast float %1534, 5.000000e-01
  %1624 = fmul fast float %1622, %1622
  %1625 = fmul fast float %1624, %1623
  %1626 = fsub fast float 1.500000e+00, %1625
  %1627 = fmul fast float %1622, %1534
  %1628 = fmul fast float %1627, %1626
  %1629 = bitcast float %1535 to i32
  %1630 = ashr i32 %1629, 1
  %1631 = sub nsw i32 1597463174, %1630
  %1632 = bitcast i32 %1631 to float
  %1633 = fmul fast float %1535, 5.000000e-01
  %1634 = fmul fast float %1632, %1632
  %1635 = fmul fast float %1634, %1633
  %1636 = fsub fast float 1.500000e+00, %1635
  %1637 = fmul fast float %1632, %1535
  %1638 = fmul fast float %1637, %1636
  %1639 = fsub fast float %1618, %1600
  %1640 = fsub fast float %1628, %1604
  %1641 = fsub fast float %1638, %1608
  %1642 = fmul fast float %1639, %1568
  %1643 = fmul fast float %1640, %1570
  %1644 = fmul fast float %1641, %1575
  %1645 = fadd fast float %1642, %1583
  %1646 = fadd fast float %1643, %1587
  %1647 = fadd fast float %1644, %1591
  %1648 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = fmul fast float %1648, %1648
  %1652 = fmul fast float %1649, %1649
  %1653 = fmul fast float %1650, %1650
  %1654 = fsub fast float %1651, %1533
  %1655 = fsub fast float %1652, %1534
  %1656 = fsub fast float %1653, %1535
  %1657 = fmul fast float %1654, %1558
  %1658 = fmul fast float %1655, %1558
  %1659 = fmul fast float %1656, %1558
  %1660 = fadd fast float %1657, %1533
  %1661 = fadd fast float %1658, %1534
  %1662 = fadd fast float %1659, %1535
  %1663 = fadd fast float %1580, %1544
  %1664 = fsub fast float %1663, %1597
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = fsub fast float %1665, %1544
  %1667 = fmul fast float %1666, %1558
  %1668 = fadd fast float %1667, %1544
  br label %1722

; <label>:1669                                    ; preds = %1557
  %1670 = and i32 %1560, 134217728
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1706, label %1672

; <label>:1672                                    ; preds = %1669
  %1673 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %1674 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fmul fast float %1676, %1558
  %1680 = fmul fast float %1677, %1558
  %1681 = fmul fast float %1678, %1558
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = call float @dx.op.unary.f32(i32 24, float %1533)  ; Sqrt(value)
  %1686 = call float @dx.op.unary.f32(i32 24, float %1534)  ; Sqrt(value)
  %1687 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1688 = fmul fast float %1682, 2.000000e+00
  %1689 = fsub fast float 1.000000e+00, %1688
  %1690 = fmul fast float %1689, %1685
  %1691 = fadd fast float %1690, %1688
  %1692 = fmul fast float %1691, %1685
  %1693 = fmul fast float %1683, 2.000000e+00
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fmul fast float %1694, %1686
  %1696 = fadd fast float %1695, %1693
  %1697 = fmul fast float %1696, %1686
  %1698 = fmul fast float %1684, 2.000000e+00
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = fmul fast float %1699, %1687
  %1701 = fadd fast float %1700, %1698
  %1702 = fmul fast float %1701, %1687
  %1703 = fmul fast float %1692, %1692
  %1704 = fmul fast float %1697, %1697
  %1705 = fmul fast float %1702, %1702
  br label %1722

; <label>:1706                                    ; preds = %1669
  %1707 = fmul fast float %387, %387
  %1708 = fmul fast float %388, %388
  %1709 = fmul fast float %389, %389
  %1710 = fadd fast float %1707, -1.000000e+00
  %1711 = fadd fast float %1708, -1.000000e+00
  %1712 = fadd fast float %1709, -1.000000e+00
  %1713 = fmul fast float %1558, %1710
  %1714 = fmul fast float %1558, %1711
  %1715 = fmul fast float %1558, %1712
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fmul fast float %1716, %1533
  %1720 = fmul fast float %1717, %1534
  %1721 = fmul fast float %1718, %1535
  br label %1722

; <label>:1722                                    ; preds = %1706, %1672, %1563, %1519
  %1723 = phi float [ %1668, %1563 ], [ %1544, %1672 ], [ %1544, %1706 ], [ 0x3FA23C0BE0000000, %1519 ]
  %1724 = phi float [ %1660, %1563 ], [ %1703, %1672 ], [ %1719, %1706 ], [ 1.000000e+00, %1519 ]
  %1725 = phi float [ %1661, %1563 ], [ %1704, %1672 ], [ %1720, %1706 ], [ 1.000000e+00, %1519 ]
  %1726 = phi float [ %1662, %1563 ], [ %1705, %1672 ], [ %1721, %1706 ], [ 1.000000e+00, %1519 ]
  %1727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.i32 %1727, 1
  %1729 = and i32 %1728, 1
  %1730 = icmp ne i32 %1729, 0
  %1731 = add i32 %55, 356
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 32
  %1735 = icmp ne i32 %1734, 0
  %1736 = and i1 %1730, %1735
  %1737 = select i1 %1736, float 1.000000e+00, float %1724
  %1738 = select i1 %1736, float 0x3FD3333340000000, float %1725
  %1739 = select i1 %1736, float 0x3FD3333340000000, float %1726
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 32
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1816, label %1744

; <label>:1744                                    ; preds = %1722
  %1745 = add i32 %55, 108
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = add i32 %55, 380
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %102, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1758 = and i32 %1747, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = lshr i32 %1747, 8
  %1761 = and i32 %1760, 255
  %1762 = uitofp i32 %1761 to float
  %1763 = lshr i32 %1747, 16
  %1764 = and i32 %1763, 255
  %1765 = uitofp i32 %1764 to float
  %1766 = fmul fast float %1765, 0x3F70101000000000
  %1767 = fmul fast float %1754, %1759
  %1768 = fadd fast float %1767, %1762
  %1769 = fmul fast float %1768, 0x3F70101000000000
  %1770 = fadd fast float %1755, -5.000000e-01
  %1771 = fadd fast float %1757, -5.000000e-01
  %1772 = fmul fast float %1770, %1766
  %1773 = fmul fast float %1771, %1766
  %1774 = fadd fast float %1772, 5.000000e-01
  %1775 = fadd fast float %1773, 5.000000e-01
  %1776 = fmul fast float %1774, 2.000000e+00
  %1777 = fadd fast float %1776, -1.000000e+00
  %1778 = fmul fast float %1775, 2.000000e+00
  %1779 = fadd fast float %1778, -1.000000e+00
  %1780 = fadd fast float %1777, %1779
  %1781 = fmul fast float %1780, 5.000000e-01
  %1782 = fsub fast float %1777, %1779
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1785 = fsub fast float 1.000000e+00, %1784
  %1786 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1787 = fsub fast float %1785, %1786
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1783, float %1787, float %1781, float %1783, float %1787)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = call float @dx.op.unary.f32(i32 25, float %1788)  ; Rsqrt(value)
  %1790 = fmul fast float %1781, %1789
  %1791 = fmul fast float %1783, %1789
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 67108864
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1812, label %1796

; <label>:1796                                    ; preds = %1744
  %1797 = add i32 %55, 296
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 65535
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 65535
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = lshr i32 %1799, 16
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = fsub fast float %1769, %1807
  %1809 = fmul fast float %1808, %1801
  %1810 = fadd fast float %1809, %1805
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  br label %1812

; <label>:1812                                    ; preds = %1796, %1744
  %1813 = phi float [ %1811, %1796 ], [ %1769, %1744 ]
  %1814 = call float @dx.op.dot2.f32(i32 54, float %1790, float %1791, float %1348, float %1349)  ; Dot2(ax,ay,bx,by)
  %1815 = call float @dx.op.dot2.f32(i32 54, float %1790, float %1791, float %1350, float %1351)  ; Dot2(ax,ay,bx,by)
  br label %1816

; <label>:1816                                    ; preds = %1812, %1722
  %1817 = phi float [ %1813, %1812 ], [ 0x3FD6666660000000, %1722 ]
  %1818 = phi float [ %1814, %1812 ], [ 0.000000e+00, %1722 ]
  %1819 = phi float [ %1815, %1812 ], [ 0.000000e+00, %1722 ]
  %1820 = phi float [ %1756, %1812 ], [ 1.000000e+00, %1722 ]
  %1821 = add i32 %55, 176
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = lshr i32 %1823, 22
  %1825 = shl nuw nsw i32 %1824, 5
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 64
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1864, label %1831

; <label>:1831                                    ; preds = %1816
  %1832 = add i32 %55, 396
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = add i32 %1834, 0
  %1836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 131072
  %1840 = icmp eq i32 %1839, 0
  %1841 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1836, %dx.types.Handle %102, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = fmul fast float %370, %1842
  %1846 = fmul fast float %371, %1843
  %1847 = fmul fast float %372, %1844
  br i1 %1840, label %1854, label %1848

; <label>:1848                                    ; preds = %1831
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = fmul fast float %1850, %1845
  %1852 = fmul fast float %1850, %1846
  %1853 = fmul fast float %1850, %1847
  br label %1854

; <label>:1854                                    ; preds = %1848, %1831
  %1855 = phi float [ %1851, %1848 ], [ %1845, %1831 ]
  %1856 = phi float [ %1852, %1848 ], [ %1846, %1831 ]
  %1857 = phi float [ %1853, %1848 ], [ %1847, %1831 ]
  %1858 = fmul fast float %1855, %1826
  %1859 = select i1 %252, float %1858, float %1855
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1856, float %1857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = select i1 %252, float 0.000000e+00, float %1855
  %1862 = select i1 %252, float %1860, float %1856
  %1863 = select i1 %252, float 0.000000e+00, float %1857
  br label %1864

; <label>:1864                                    ; preds = %1854, %1816
  %1865 = phi float [ %1861, %1854 ], [ 0.000000e+00, %1816 ]
  %1866 = phi float [ %1862, %1854 ], [ 0.000000e+00, %1816 ]
  %1867 = phi float [ %1863, %1854 ], [ 0.000000e+00, %1816 ]
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 1024
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1902, label %1872

; <label>:1872                                    ; preds = %1864
  %1873 = add i32 %55, 168
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = and i32 %1875, 255
  %1877 = uitofp i32 %1876 to float
  %1878 = fmul fast float %1877, 0x3F70101020000000
  %1879 = lshr i32 %1875, 8
  %1880 = and i32 %1879, 255
  %1881 = uitofp i32 %1880 to float
  %1882 = fmul fast float %1881, 0x3F70101020000000
  %1883 = lshr i32 %1875, 16
  %1884 = and i32 %1883, 255
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1885, 0x3F70101020000000
  %1887 = fmul fast float %1878, %1878
  %1888 = fmul fast float %1882, %1882
  %1889 = fmul fast float %1886, %1886
  %1890 = add i32 %55, 460
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = add i32 %1892, 0
  %1894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1893, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1895 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1894, %dx.types.Handle %103, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = fmul fast float %1887, %1896
  %1900 = fmul fast float %1888, %1897
  %1901 = fmul fast float %1889, %1898
  br label %1902

; <label>:1902                                    ; preds = %1872, %1864
  %1903 = phi float [ %1899, %1872 ], [ 0.000000e+00, %1864 ]
  %1904 = phi float [ %1900, %1872 ], [ 0.000000e+00, %1864 ]
  %1905 = phi float [ %1901, %1872 ], [ 0.000000e+00, %1864 ]
  %1906 = fcmp fast ogt float %1903, 0.000000e+00
  %1907 = fcmp fast ogt float %1904, 0.000000e+00
  %1908 = fcmp fast ogt float %1905, 0.000000e+00
  %1909 = call float @dx.op.unary.f32(i32 23, float %1903)  ; Log(value)
  %1910 = call float @dx.op.unary.f32(i32 23, float %1904)  ; Log(value)
  %1911 = call float @dx.op.unary.f32(i32 23, float %1905)  ; Log(value)
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = lshr i32 %1913, 7
  %1915 = and i32 %1914, 32752
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = fmul fast float %1909, 0xBFE62E4300000000
  %1918 = fmul fast float %1917, %1916
  %1919 = fmul fast float %1910, 0xBFE62E4300000000
  %1920 = fmul fast float %1919, %1916
  %1921 = fmul fast float %1911, 0xBFE62E4300000000
  %1922 = fmul fast float %1921, %1916
  %1923 = select i1 %1906, float %1918, float 1.270000e+02
  %1924 = select i1 %1907, float %1920, float 1.270000e+02
  %1925 = select i1 %1908, float %1922, float 1.270000e+02
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = and i32 %1927, 10240
  %1929 = icmp eq i32 %1928, 0
  br i1 %1929, label %1950, label %1930

; <label>:1930                                    ; preds = %1902
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 2048
  %1934 = icmp eq i32 %1933, 0
  br i1 %1934, label %1950, label %1935

; <label>:1935                                    ; preds = %1930
  %1936 = add i32 %55, 476
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = add i32 %1938, 0
  %1940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1940, %dx.types.Handle %103, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 3
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = shl i32 %1944, 4
  %1946 = and i32 %1945, 32752
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = fmul fast float %1947, %1942
  %1949 = call float @dx.op.binary.f32(i32 35, float %1948, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1950

; <label>:1950                                    ; preds = %1935, %1930, %1902
  %1951 = phi float [ %1949, %1935 ], [ 0x3F70101020000000, %1930 ], [ 0x3F70101020000000, %1902 ]
  %1952 = add i32 %55, 112
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = and i32 %1954, 255
  %1956 = uitofp i32 %1955 to float
  %1957 = lshr i32 %1954, 8
  %1958 = and i32 %1957, 255
  %1959 = uitofp i32 %1958 to float
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1737, float %1738, float %1739, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = fmul fast float %1959, %1960
  %1962 = fadd fast float %1961, %1956
  %1963 = fmul fast float %1962, 0x3F70101020000000
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  br i1 %1336, label %1965, label %2000

; <label>:1965                                    ; preds = %1950
  %1966 = fmul fast float %1951, 2.000000e+00
  %1967 = fcmp fast olt float %1923, 1.270000e+02
  %1968 = fcmp fast olt float %1924, 1.270000e+02
  %1969 = fcmp fast olt float %1925, 1.270000e+02
  %1970 = fmul fast float %1923, 0xBFF7154760000000
  %1971 = fmul fast float %1970, %1966
  %1972 = fmul fast float %1924, 0xBFF7154760000000
  %1973 = fmul fast float %1972, %1966
  %1974 = fmul fast float %1925, 0xBFF7154760000000
  %1975 = fmul fast float %1974, %1966
  %1976 = call float @dx.op.unary.f32(i32 21, float %1971)  ; Exp(value)
  %1977 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1978 = call float @dx.op.unary.f32(i32 21, float %1975)  ; Exp(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = fadd fast float %1979, -1.000000e+00
  %1983 = select i1 %1967, float %1982, float -1.000000e+00
  %1984 = fadd fast float %1980, -1.000000e+00
  %1985 = select i1 %1968, float %1984, float -1.000000e+00
  %1986 = fadd fast float %1981, -1.000000e+00
  %1987 = select i1 %1969, float %1986, float -1.000000e+00
  %1988 = fmul fast float %1983, %1517
  %1989 = fmul fast float %1985, %1517
  %1990 = fmul fast float %1987, %1517
  %1991 = fadd fast float %1988, 1.000000e+00
  %1992 = fadd fast float %1989, 1.000000e+00
  %1993 = fadd fast float %1990, 1.000000e+00
  %1994 = fmul fast float %1991, %1320
  %1995 = fmul fast float %1992, %1321
  %1996 = fmul fast float %1993, %1322
  %1997 = fmul fast float %1991, %1323
  %1998 = fmul fast float %1992, %1324
  %1999 = fmul fast float %1993, %1325
  br label %2000

; <label>:2000                                    ; preds = %1965, %1950
  %2001 = phi float [ %1994, %1965 ], [ %1320, %1950 ]
  %2002 = phi float [ %1995, %1965 ], [ %1321, %1950 ]
  %2003 = phi float [ %1996, %1965 ], [ %1322, %1950 ]
  %2004 = phi float [ %1997, %1965 ], [ %1323, %1950 ]
  %2005 = phi float [ %1998, %1965 ], [ %1324, %1950 ]
  %2006 = phi float [ %1999, %1965 ], [ %1325, %1950 ]
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 3
  %2010 = icmp eq i32 %2009, 3
  br i1 %2010, label %2089, label %2011

; <label>:2011                                    ; preds = %2000
  %2012 = and i32 %2008, 16
  %2013 = icmp ne i32 %2012, 0
  %2014 = select i1 %2013, float %1517, float 0.000000e+00
  %2015 = icmp eq i32 %2009, 0
  br i1 %2015, label %2016, label %2044

; <label>:2016                                    ; preds = %2011
  %2017 = and i32 %2008, 64
  %2018 = icmp ne i32 %2017, 0
  %2019 = select i1 %2018, float %1517, float 0.000000e+00
  %2020 = fsub fast float %1737, %2001
  %2021 = fsub fast float %1738, %2002
  %2022 = fsub fast float %1739, %2003
  %2023 = fmul fast float %2014, %2020
  %2024 = fmul fast float %2014, %2021
  %2025 = fmul fast float %2014, %2022
  %2026 = fadd fast float %2023, %2001
  %2027 = fadd fast float %2024, %2002
  %2028 = fadd fast float %2025, %2003
  %2029 = fsub fast float %1723, %1329
  %2030 = fmul fast float %2014, %2029
  %2031 = fadd fast float %2030, %1329
  %2032 = fsub fast float %1865, %2004
  %2033 = fsub fast float %1866, %2005
  %2034 = fsub fast float %1867, %2006
  %2035 = fmul fast float %2019, %2032
  %2036 = fmul fast float %2019, %2033
  %2037 = fmul fast float %2019, %2034
  %2038 = fadd fast float %2035, %2004
  %2039 = fadd fast float %2036, %2005
  %2040 = fadd fast float %2037, %2006
  %2041 = fsub fast float %1964, %1334
  %2042 = fmul fast float %2014, %2041
  %2043 = fadd fast float %2042, %1334
  br label %2089

; <label>:2044                                    ; preds = %2011
  %2045 = icmp eq i32 %2009, 1
  br i1 %2045, label %2046, label %2059

; <label>:2046                                    ; preds = %2044
  %2047 = fadd fast float %1737, -1.000000e+00
  %2048 = fadd fast float %1738, -1.000000e+00
  %2049 = fadd fast float %1739, -1.000000e+00
  %2050 = fmul fast float %2014, %2047
  %2051 = fmul fast float %2014, %2048
  %2052 = fmul fast float %2014, %2049
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fmul fast float %2053, %2001
  %2057 = fmul fast float %2054, %2002
  %2058 = fmul fast float %2055, %2003
  br label %2089

; <label>:2059                                    ; preds = %2044
  %2060 = icmp eq i32 %2009, 2
  br i1 %2060, label %2061, label %2089

; <label>:2061                                    ; preds = %2059
  %2062 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %2063 = call float @dx.op.unary.f32(i32 24, float %1738)  ; Sqrt(value)
  %2064 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %2065 = fadd fast float %2062, -5.000000e-01
  %2066 = fadd fast float %2063, -5.000000e-01
  %2067 = fadd fast float %2064, -5.000000e-01
  %2068 = fmul fast float %2065, %2014
  %2069 = fmul fast float %2066, %2014
  %2070 = fmul fast float %2067, %2014
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fmul fast float %2071, 2.000000e+00
  %2075 = fsub fast float 1.000000e+00, %2074
  %2076 = fmul fast float %2075, %2001
  %2077 = fadd fast float %2076, %2074
  %2078 = fmul fast float %2077, %2001
  %2079 = fmul fast float %2072, 2.000000e+00
  %2080 = fsub fast float 1.000000e+00, %2079
  %2081 = fmul fast float %2080, %2002
  %2082 = fadd fast float %2081, %2079
  %2083 = fmul fast float %2082, %2002
  %2084 = fmul fast float %2073, 2.000000e+00
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = fmul fast float %2085, %2003
  %2087 = fadd fast float %2086, %2084
  %2088 = fmul fast float %2087, %2003
  br label %2089

; <label>:2089                                    ; preds = %2061, %2059, %2046, %2016, %2000
  %2090 = phi float [ %2001, %2000 ], [ %2078, %2061 ], [ %2001, %2059 ], [ %2056, %2046 ], [ %2026, %2016 ]
  %2091 = phi float [ %2002, %2000 ], [ %2083, %2061 ], [ %2002, %2059 ], [ %2057, %2046 ], [ %2027, %2016 ]
  %2092 = phi float [ %2003, %2000 ], [ %2088, %2061 ], [ %2003, %2059 ], [ %2058, %2046 ], [ %2028, %2016 ]
  %2093 = phi float [ %2004, %2000 ], [ %2004, %2061 ], [ %2004, %2059 ], [ %2004, %2046 ], [ %2038, %2016 ]
  %2094 = phi float [ %2005, %2000 ], [ %2005, %2061 ], [ %2005, %2059 ], [ %2005, %2046 ], [ %2039, %2016 ]
  %2095 = phi float [ %2006, %2000 ], [ %2006, %2061 ], [ %2006, %2059 ], [ %2006, %2046 ], [ %2040, %2016 ]
  %2096 = phi float [ %1329, %2000 ], [ %1329, %2061 ], [ %1329, %2059 ], [ %1329, %2046 ], [ %2031, %2016 ]
  %2097 = phi float [ %1334, %2000 ], [ %1334, %2061 ], [ %1334, %2059 ], [ %1334, %2046 ], [ %2043, %2016 ]
  %2098 = and i32 %2008, 12
  %2099 = icmp eq i32 %2098, 12
  br i1 %2099, label %2206, label %2100

; <label>:2100                                    ; preds = %2089
  %2101 = and i32 %2008, 2097184
  %2102 = icmp eq i32 %2101, 2097184
  %2103 = select i1 %2102, float %1517, float 0.000000e+00
  %2104 = and i32 %2008, 4194336
  %2105 = icmp eq i32 %2104, 4194336
  %2106 = select i1 %2105, float %1517, float 0.000000e+00
  %2107 = and i32 %2008, 8388640
  %2108 = icmp eq i32 %2107, 8388640
  %2109 = select i1 %2108, float %1517, float 0.000000e+00
  %2110 = and i32 %2008, 1024
  %2111 = icmp ne i32 %2110, 0
  %2112 = select i1 %2111, float %1517, float 0.000000e+00
  %2113 = and i32 %2008, 2048
  %2114 = icmp ne i32 %2113, 0
  %2115 = select i1 %2114, float %1517, float 0.000000e+00
  %2116 = icmp eq i32 %2098, 0
  br i1 %2116, label %2117, label %2142

; <label>:2117                                    ; preds = %2100
  %2118 = fsub fast float %1818, %1318
  %2119 = fsub fast float %1819, %1319
  %2120 = fmul fast float %2103, %2118
  %2121 = fmul fast float %2103, %2119
  %2122 = fadd fast float %2120, %1318
  %2123 = fadd fast float %2121, %1319
  %2124 = fsub fast float %1820, %1332
  %2125 = fmul fast float %2106, %2124
  %2126 = fadd fast float %2125, %1332
  %2127 = fsub fast float %1817, %1331
  %2128 = fmul fast float %2109, %2127
  %2129 = fadd fast float %2128, %1331
  %2130 = fsub fast float %1923, %1326
  %2131 = fsub fast float %1924, %1327
  %2132 = fsub fast float %1925, %1328
  %2133 = fmul fast float %2112, %2130
  %2134 = fmul fast float %2112, %2131
  %2135 = fmul fast float %2112, %2132
  %2136 = fadd fast float %2133, %1326
  %2137 = fadd fast float %2134, %1327
  %2138 = fadd fast float %2135, %1328
  %2139 = fsub fast float %1951, %1333
  %2140 = fmul fast float %2115, %2139
  %2141 = fadd fast float %2140, %1333
  br label %2206

; <label>:2142                                    ; preds = %2100
  %2143 = icmp eq i32 %2098, 4
  br i1 %2143, label %2144, label %2184

; <label>:2144                                    ; preds = %2142
  %2145 = fmul fast float %2103, %1818
  %2146 = fmul fast float %2103, %1819
  %2147 = fadd fast float %2145, %1318
  %2148 = fadd fast float %2146, %1319
  %2149 = call float @dx.op.binary.f32(i32 36, float %1332, float %1820)  ; FMin(a,b)
  %2150 = fsub fast float %2149, %1332
  %2151 = fmul fast float %2150, %2106
  %2152 = fadd fast float %2151, %1332
  %2153 = fadd fast float %1817, %1331
  %2154 = fmul fast float %2153, 0x3FF337FAE0000000
  %2155 = fmul fast float %1331, %1331
  %2156 = fmul fast float %1817, %1817
  %2157 = fadd fast float %2156, %2155
  %2158 = fmul fast float %2157, 0x3FE5152B00000000
  %2159 = fmul fast float %1331, 0xBFCC1F85E0000000
  %2160 = fmul fast float %2159, %1817
  %2161 = fadd fast float %2160, 0xBFE1363700000000
  %2162 = fadd fast float %2161, %2154
  %2163 = fsub fast float %2162, %2158
  %2164 = fmul fast float %2153, 0x3FBA6F0D00000000
  %2165 = fmul fast float %2157, 0x3FD0432880000000
  %2166 = fmul fast float %1331, 0xBFEF110800000000
  %2167 = fmul fast float %2166, %1817
  %2168 = fadd fast float %2167, 1.000000e+00
  %2169 = fsub fast float %2168, %2164
  %2170 = fadd fast float %2169, %2165
  %2171 = fdiv fast float %2163, %2170
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float %2172, %1331
  %2174 = fmul fast float %2173, %2109
  %2175 = fadd fast float %2174, %1331
  %2176 = fmul fast float %2112, %1923
  %2177 = fmul fast float %2112, %1924
  %2178 = fmul fast float %2112, %1925
  %2179 = fadd fast float %2176, %1326
  %2180 = fadd fast float %2177, %1327
  %2181 = fadd fast float %2178, %1328
  %2182 = fmul fast float %2115, %1951
  %2183 = fadd fast float %2182, %1333
  br label %2206

; <label>:2184                                    ; preds = %2142
  %2185 = icmp eq i32 %2098, 8
  br i1 %2185, label %2186, label %2206

; <label>:2186                                    ; preds = %2184
  %2187 = fmul fast float %2103, %1818
  %2188 = fmul fast float %2103, %1819
  %2189 = fadd fast float %2187, %1318
  %2190 = fadd fast float %2188, %1319
  %2191 = call float @dx.op.binary.f32(i32 36, float %1332, float %1820)  ; FMin(a,b)
  %2192 = fsub fast float %2191, %1332
  %2193 = fmul fast float %2192, %2106
  %2194 = fadd fast float %2193, %1332
  %2195 = fsub fast float %1817, %1331
  %2196 = fmul fast float %2109, %2195
  %2197 = fadd fast float %2196, %1331
  %2198 = fmul fast float %2112, %1923
  %2199 = fmul fast float %2112, %1924
  %2200 = fmul fast float %2112, %1925
  %2201 = fadd fast float %2198, %1326
  %2202 = fadd fast float %2199, %1327
  %2203 = fadd fast float %2200, %1328
  %2204 = fmul fast float %2115, %1951
  %2205 = fadd fast float %2204, %1333
  br label %2206

; <label>:2206                                    ; preds = %2186, %2184, %2144, %2117, %2089, %1516, %1335, %1317
  %2207 = phi float [ %1318, %2089 ], [ %1318, %1516 ], [ %1318, %1317 ], [ %2189, %2186 ], [ %1318, %2184 ], [ %2147, %2144 ], [ %2122, %2117 ], [ %1318, %1335 ]
  %2208 = phi float [ %1319, %2089 ], [ %1319, %1516 ], [ %1319, %1317 ], [ %2190, %2186 ], [ %1319, %2184 ], [ %2148, %2144 ], [ %2123, %2117 ], [ %1319, %1335 ]
  %2209 = phi float [ %2090, %2089 ], [ %1320, %1516 ], [ %1320, %1317 ], [ %2090, %2186 ], [ %2090, %2184 ], [ %2090, %2144 ], [ %2090, %2117 ], [ %1320, %1335 ]
  %2210 = phi float [ %2091, %2089 ], [ %1321, %1516 ], [ %1321, %1317 ], [ %2091, %2186 ], [ %2091, %2184 ], [ %2091, %2144 ], [ %2091, %2117 ], [ %1321, %1335 ]
  %2211 = phi float [ %2092, %2089 ], [ %1322, %1516 ], [ %1322, %1317 ], [ %2092, %2186 ], [ %2092, %2184 ], [ %2092, %2144 ], [ %2092, %2117 ], [ %1322, %1335 ]
  %2212 = phi float [ %2093, %2089 ], [ %1323, %1516 ], [ %1323, %1317 ], [ %2093, %2186 ], [ %2093, %2184 ], [ %2093, %2144 ], [ %2093, %2117 ], [ %1323, %1335 ]
  %2213 = phi float [ %2094, %2089 ], [ %1324, %1516 ], [ %1324, %1317 ], [ %2094, %2186 ], [ %2094, %2184 ], [ %2094, %2144 ], [ %2094, %2117 ], [ %1324, %1335 ]
  %2214 = phi float [ %2095, %2089 ], [ %1325, %1516 ], [ %1325, %1317 ], [ %2095, %2186 ], [ %2095, %2184 ], [ %2095, %2144 ], [ %2095, %2117 ], [ %1325, %1335 ]
  %2215 = phi float [ %1326, %2089 ], [ %1326, %1516 ], [ %1326, %1317 ], [ %2201, %2186 ], [ %1326, %2184 ], [ %2179, %2144 ], [ %2136, %2117 ], [ %1326, %1335 ]
  %2216 = phi float [ %1327, %2089 ], [ %1327, %1516 ], [ %1327, %1317 ], [ %2202, %2186 ], [ %1327, %2184 ], [ %2180, %2144 ], [ %2137, %2117 ], [ %1327, %1335 ]
  %2217 = phi float [ %1328, %2089 ], [ %1328, %1516 ], [ %1328, %1317 ], [ %2203, %2186 ], [ %1328, %2184 ], [ %2181, %2144 ], [ %2138, %2117 ], [ %1328, %1335 ]
  %2218 = phi float [ %2096, %2089 ], [ %1329, %1516 ], [ %1329, %1317 ], [ %2096, %2186 ], [ %2096, %2184 ], [ %2096, %2144 ], [ %2096, %2117 ], [ %1329, %1335 ]
  %2219 = phi float [ %1331, %2089 ], [ %1331, %1516 ], [ %1331, %1317 ], [ %2197, %2186 ], [ %1331, %2184 ], [ %2175, %2144 ], [ %2129, %2117 ], [ %1331, %1335 ]
  %2220 = phi float [ %1332, %2089 ], [ %1332, %1516 ], [ %1332, %1317 ], [ %2194, %2186 ], [ %1332, %2184 ], [ %2152, %2144 ], [ %2126, %2117 ], [ %1332, %1335 ]
  %2221 = phi float [ %1333, %2089 ], [ %1333, %1516 ], [ %1333, %1317 ], [ %2205, %2186 ], [ %1333, %2184 ], [ %2183, %2144 ], [ %2141, %2117 ], [ %1333, %1335 ]
  %2222 = phi float [ %2097, %2089 ], [ %1334, %1516 ], [ %1334, %1317 ], [ %2097, %2186 ], [ %2097, %2184 ], [ %2097, %2144 ], [ %2097, %2117 ], [ %1334, %1335 ]
  br i1 %634, label %3094, label %2223

; <label>:2223                                    ; preds = %2206
  %2224 = icmp ult i32 %690, 3
  %2225 = add i32 %55, 56
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %55, 60
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = or i32 %2230, %2227
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %3094, label %2233

; <label>:2233                                    ; preds = %2223
  %2234 = and i32 %2227, 262144
  %2235 = icmp ne i32 %2234, 0
  %2236 = select i1 %2235, float %61, float 1.000000e+00
  %2237 = select i1 %2235, float %62, float 0.000000e+00
  %2238 = select i1 %2235, float %63, float 0.000000e+00
  %2239 = select i1 %2235, float %64, float 1.000000e+00
  %2240 = select i1 %2235, float %65, float %88
  %2241 = select i1 %2235, float %66, float %89
  %2242 = add i32 %55, 316
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = lshr i32 %2244, 16
  %2246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2245)  ; LegacyF16ToF32(value)
  %2247 = fmul fast float %2246, 0x3F50624DE0000000
  %2248 = add i32 %55, 120
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = lshr i32 %2250, 16
  %2252 = and i32 %2251, 255
  %2253 = lshr i32 %2250, 24
  %2254 = add i32 %55, 324
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2256, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = add i32 %55, 64
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 22
  %2265 = shl nuw nsw i32 %2264, 5
  %2266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2265)  ; LegacyF16ToF32(value)
  %2267 = shl i32 %2263, 4
  %2268 = and i32 %2267, 32752
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = lshr i32 %2263, 7
  %2271 = and i32 %2270, 32752
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 3
  %2275 = fmul fast float %2274, 1.000000e+03
  %2276 = fmul fast float %2275, %518
  %2277 = call float @dx.op.unary.f32(i32 22, float %2276)  ; Frc(value)
  %2278 = fadd fast float %2277, %506
  %2279 = fmul fast float %2275, %520
  %2280 = call float @dx.op.unary.f32(i32 22, float %2279)  ; Frc(value)
  %2281 = fadd fast float %2280, %507
  %2282 = fmul fast float %2247, %2275
  %2283 = call float @dx.op.unary.f32(i32 22, float %2282)  ; Frc(value)
  %2284 = fmul fast float %2283, 0x401921FB60000000
  %2285 = fadd fast float %2284, %2266
  %2286 = call float @dx.op.unary.f32(i32 13, float %2285)  ; Sin(value)
  %2287 = call float @dx.op.unary.f32(i32 12, float %2285)  ; Cos(value)
  %2288 = fsub fast float -0.000000e+00, %2286
  %2289 = fadd fast float %2240, -5.000000e-01
  %2290 = fadd fast float %2241, -5.000000e-01
  %2291 = fmul fast float %2258, %2289
  %2292 = fmul fast float %2260, %2290
  %2293 = fadd fast float %2291, 5.000000e-01
  %2294 = fadd fast float %2292, 5.000000e-01
  %2295 = fmul fast float %2269, %2293
  %2296 = fmul fast float %2272, %2294
  %2297 = fmul fast float %2287, %2295
  %2298 = call float @dx.op.tertiary.f32(i32 46, float %2288, float %2296, float %2297)  ; FMad(a,b,c)
  %2299 = fmul fast float %2286, %2295
  %2300 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %2296, float %2299)  ; FMad(a,b,c)
  %2301 = fadd fast float %2278, %2298
  %2302 = fadd fast float %2281, %2300
  %2303 = icmp ugt i32 %2252, 1
  %2304 = icmp ugt i32 %2250, 33554431
  %2305 = or i1 %2304, %2303
  br i1 %2305, label %2306, label %2331

; <label>:2306                                    ; preds = %2233
  %2307 = add i32 %55, 260
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = lshr i32 %2309, 16
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = fmul fast float %2274, %2311
  %2313 = call float @dx.op.unary.f32(i32 22, float %2312)  ; Frc(value)
  %2314 = mul nuw nsw i32 %2252, %2253
  %2315 = uitofp i32 %2314 to float
  %2316 = fmul fast float %2313, %2315
  %2317 = call float @dx.op.unary.f32(i32 27, float %2316)  ; Round_ni(value)
  %2318 = fptoui float %2317 to i32
  %2319 = urem i32 %2318, %2252
  %2320 = udiv i32 %2318, %2253
  %2321 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2322 = call float @dx.op.unary.f32(i32 22, float %2302)  ; Frc(value)
  %2323 = uitofp i32 %2319 to float
  %2324 = uitofp i32 %2320 to float
  %2325 = fadd fast float %2321, %2323
  %2326 = fadd fast float %2322, %2324
  %2327 = uitofp i32 %2252 to float
  %2328 = uitofp i32 %2253 to float
  %2329 = fdiv fast float %2325, %2327
  %2330 = fdiv fast float %2326, %2328
  br label %2331

; <label>:2331                                    ; preds = %2306, %2233
  %2332 = phi float [ %2329, %2306 ], [ %2301, %2233 ]
  %2333 = phi float [ %2330, %2306 ], [ %2302, %2233 ]
  %2334 = and i32 %2227, 256
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2382, label %2336

; <label>:2336                                    ; preds = %2331
  %2337 = add i32 %55, 432
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %2339, 0
  %2341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2341, %dx.types.Handle %103, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = add i32 %55, 132
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = shl i32 %2346, 4
  %2348 = and i32 %2347, 32752
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2346, 7
  %2351 = and i32 %2350, 32752
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = fsub fast float 1.000000e+00, %686
  %2354 = call float @dx.op.binary.f32(i32 35, float %2353, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2355 = bitcast float %686 to i32
  %2356 = sitofp i32 %2355 to float
  %2357 = fadd fast float %2356, 0xC1CFBF8940000000
  %2358 = fmul fast float %2352, %2357
  %2359 = fadd fast float %2358, 0x41CFBF8940000000
  %2360 = fptosi float %2359 to i32
  %2361 = bitcast i32 %2360 to float
  %2362 = bitcast float %2354 to i32
  %2363 = sitofp i32 %2362 to float
  %2364 = fadd fast float %2363, 0xC1CFBF8940000000
  %2365 = fmul fast float %2364, %2352
  %2366 = fadd fast float %2365, 0x41CFBF8940000000
  %2367 = fptosi float %2366 to i32
  %2368 = bitcast i32 %2367 to float
  %2369 = fmul fast float %2361, %2349
  %2370 = fmul fast float %2368, %2349
  %2371 = fsub fast float %2354, %2369
  %2372 = fadd fast float %2370, %2354
  %2373 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2374 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  %2375 = fsub fast float %2343, %2373
  %2376 = fsub fast float %2374, %2373
  %2377 = bitcast float %2376 to i32
  %2378 = sub nsw i32 2129859010, %2377
  %2379 = bitcast i32 %2378 to float
  %2380 = fmul fast float %2379, %2375
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  br label %2382

; <label>:2382                                    ; preds = %2336, %2331
  %2383 = phi float [ %2381, %2336 ], [ %686, %2331 ]
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 128
  %2387 = icmp eq i32 %2386, 0
  br i1 %2387, label %2404, label %2388

; <label>:2388                                    ; preds = %2382
  %2389 = add i32 %55, 416
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = add i32 %2391, 0
  %2393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2392, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2393, %dx.types.Handle %103, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2395 = extractvalue %dx.types.ResRet.f32 %2394, 0
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = and i32 %2397, 524288
  %2399 = icmp ne i32 %2398, 0
  %2400 = fcmp fast ogt float %2395, 0x3FE0101020000000
  %2401 = select i1 %2400, float 1.000000e+00, float 0.000000e+00
  %2402 = select i1 %2399, float %2401, float %2395
  %2403 = fmul fast float %2402, %2383
  br label %2404

; <label>:2404                                    ; preds = %2388, %2382
  %2405 = phi float [ %2403, %2388 ], [ %2383, %2382 ]
  %2406 = fcmp fast ult float %2405, 0x3F70101020000000
  br i1 %2406, label %3094, label %2407

; <label>:2407                                    ; preds = %2404
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 16
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2610, label %2412

; <label>:2412                                    ; preds = %2407
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = add i32 %55, 368
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %2417, 0
  %2419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2419, %dx.types.Handle %102, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2421 = extractvalue %dx.types.ResRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.ResRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.ResRet.f32 %2420, 2
  %2424 = extractvalue %dx.types.ResRet.f32 %2420, 3
  %2425 = and i32 %2414, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = lshr i32 %2414, 8
  %2428 = and i32 %2427, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = fmul fast float %2424, %2426
  %2431 = fadd fast float %2430, %2429
  %2432 = fmul fast float %2431, 0x3F70101000000000
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 512
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2445, label %2437

; <label>:2437                                    ; preds = %2412
  %2438 = add i32 %55, 448
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2440, 0
  %2442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2442, %dx.types.Handle %103, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  br label %2445

; <label>:2445                                    ; preds = %2437, %2412
  %2446 = phi float [ %2444, %2437 ], [ 1.000000e+00, %2412 ]
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 33554432
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2557, label %2451

; <label>:2451                                    ; preds = %2445
  %2452 = add i32 %55, 256
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 65535
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = lshr i32 %2454, 16
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = add i32 %55, 260
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 65535
  %2463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2462)  ; LegacyF16ToF32(value)
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = lshr i32 %2465, 24
  %2467 = uitofp i32 %2466 to float
  %2468 = fmul fast float %2467, 0x3F70101020000000
  %2469 = and i32 %2465, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101020000000
  %2472 = lshr i32 %2465, 8
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = fmul fast float %2474, 0x3F70101020000000
  %2476 = lshr i32 %2465, 16
  %2477 = and i32 %2476, 255
  %2478 = uitofp i32 %2477 to float
  %2479 = fmul fast float %2478, 0x3F70101020000000
  %2480 = add i32 %55, 252
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 24
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2484, 0x3F70101020000000
  %2486 = and i32 %2482, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, 0x3F70101020000000
  %2489 = lshr i32 %2482, 8
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2482, 16
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = bitcast float %2421 to i32
  %2498 = ashr i32 %2497, 1
  %2499 = sub nsw i32 1597463174, %2498
  %2500 = bitcast i32 %2499 to float
  %2501 = fmul fast float %2421, 5.000000e-01
  %2502 = fmul fast float %2500, %2500
  %2503 = fmul fast float %2502, %2501
  %2504 = fsub fast float 1.500000e+00, %2503
  %2505 = fmul fast float %2500, %2421
  %2506 = fmul fast float %2505, %2504
  %2507 = bitcast float %2422 to i32
  %2508 = ashr i32 %2507, 1
  %2509 = sub nsw i32 1597463174, %2508
  %2510 = bitcast i32 %2509 to float
  %2511 = fmul fast float %2422, 5.000000e-01
  %2512 = fmul fast float %2510, %2510
  %2513 = fmul fast float %2512, %2511
  %2514 = fsub fast float 1.500000e+00, %2513
  %2515 = fmul fast float %2510, %2422
  %2516 = fmul fast float %2515, %2514
  %2517 = bitcast float %2423 to i32
  %2518 = ashr i32 %2517, 1
  %2519 = sub nsw i32 1597463174, %2518
  %2520 = bitcast i32 %2519 to float
  %2521 = fmul fast float %2423, 5.000000e-01
  %2522 = fmul fast float %2520, %2520
  %2523 = fmul fast float %2522, %2521
  %2524 = fsub fast float 1.500000e+00, %2523
  %2525 = fmul fast float %2520, %2423
  %2526 = fmul fast float %2525, %2524
  %2527 = fsub fast float %2506, %2488
  %2528 = fsub fast float %2516, %2492
  %2529 = fsub fast float %2526, %2496
  %2530 = fmul fast float %2527, %2456
  %2531 = fmul fast float %2528, %2458
  %2532 = fmul fast float %2529, %2463
  %2533 = fadd fast float %2530, %2471
  %2534 = fadd fast float %2531, %2475
  %2535 = fadd fast float %2532, %2479
  %2536 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2537 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2538 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2539 = fmul fast float %2536, %2536
  %2540 = fmul fast float %2537, %2537
  %2541 = fmul fast float %2538, %2538
  %2542 = fsub fast float %2539, %2421
  %2543 = fsub fast float %2540, %2422
  %2544 = fsub fast float %2541, %2423
  %2545 = fmul fast float %2542, %2446
  %2546 = fmul fast float %2543, %2446
  %2547 = fmul fast float %2544, %2446
  %2548 = fadd fast float %2545, %2421
  %2549 = fadd fast float %2546, %2422
  %2550 = fadd fast float %2547, %2423
  %2551 = fadd fast float %2468, %2432
  %2552 = fsub fast float %2551, %2485
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = fsub fast float %2553, %2432
  %2555 = fmul fast float %2554, %2446
  %2556 = fadd fast float %2555, %2432
  br label %2610

; <label>:2557                                    ; preds = %2445
  %2558 = and i32 %2448, 134217728
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2594, label %2560

; <label>:2560                                    ; preds = %2557
  %2561 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2562 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2563 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2564 = fadd fast float %2561, -5.000000e-01
  %2565 = fadd fast float %2562, -5.000000e-01
  %2566 = fadd fast float %2563, -5.000000e-01
  %2567 = fmul fast float %2564, %2446
  %2568 = fmul fast float %2565, %2446
  %2569 = fmul fast float %2566, %2446
  %2570 = fadd fast float %2567, 5.000000e-01
  %2571 = fadd fast float %2568, 5.000000e-01
  %2572 = fadd fast float %2569, 5.000000e-01
  %2573 = call float @dx.op.unary.f32(i32 24, float %2421)  ; Sqrt(value)
  %2574 = call float @dx.op.unary.f32(i32 24, float %2422)  ; Sqrt(value)
  %2575 = call float @dx.op.unary.f32(i32 24, float %2423)  ; Sqrt(value)
  %2576 = fmul fast float %2570, 2.000000e+00
  %2577 = fsub fast float 1.000000e+00, %2576
  %2578 = fmul fast float %2577, %2573
  %2579 = fadd fast float %2578, %2576
  %2580 = fmul fast float %2579, %2573
  %2581 = fmul fast float %2571, 2.000000e+00
  %2582 = fsub fast float 1.000000e+00, %2581
  %2583 = fmul fast float %2582, %2574
  %2584 = fadd fast float %2583, %2581
  %2585 = fmul fast float %2584, %2574
  %2586 = fmul fast float %2572, 2.000000e+00
  %2587 = fsub fast float 1.000000e+00, %2586
  %2588 = fmul fast float %2587, %2575
  %2589 = fadd fast float %2588, %2586
  %2590 = fmul fast float %2589, %2575
  %2591 = fmul fast float %2580, %2580
  %2592 = fmul fast float %2585, %2585
  %2593 = fmul fast float %2590, %2590
  br label %2610

; <label>:2594                                    ; preds = %2557
  %2595 = fmul fast float %494, %494
  %2596 = fmul fast float %495, %495
  %2597 = fmul fast float %496, %496
  %2598 = fadd fast float %2595, -1.000000e+00
  %2599 = fadd fast float %2596, -1.000000e+00
  %2600 = fadd fast float %2597, -1.000000e+00
  %2601 = fmul fast float %2446, %2598
  %2602 = fmul fast float %2446, %2599
  %2603 = fmul fast float %2446, %2600
  %2604 = fadd fast float %2601, 1.000000e+00
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fadd fast float %2603, 1.000000e+00
  %2607 = fmul fast float %2604, %2421
  %2608 = fmul fast float %2605, %2422
  %2609 = fmul fast float %2606, %2423
  br label %2610

; <label>:2610                                    ; preds = %2594, %2560, %2451, %2407
  %2611 = phi float [ %2556, %2451 ], [ %2432, %2560 ], [ %2432, %2594 ], [ 0x3FA23C0BE0000000, %2407 ]
  %2612 = phi float [ %2548, %2451 ], [ %2591, %2560 ], [ %2607, %2594 ], [ 1.000000e+00, %2407 ]
  %2613 = phi float [ %2549, %2451 ], [ %2592, %2560 ], [ %2608, %2594 ], [ 1.000000e+00, %2407 ]
  %2614 = phi float [ %2550, %2451 ], [ %2593, %2560 ], [ %2609, %2594 ], [ 1.000000e+00, %2407 ]
  %2615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.i32 %2615, 1
  %2617 = and i32 %2616, 1
  %2618 = icmp ne i32 %2617, 0
  %2619 = add i32 %55, 356
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 32
  %2623 = icmp ne i32 %2622, 0
  %2624 = and i1 %2618, %2623
  %2625 = select i1 %2624, float 1.000000e+00, float %2612
  %2626 = select i1 %2624, float 0x3FD3333340000000, float %2613
  %2627 = select i1 %2624, float 0x3FD3333340000000, float %2614
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 32
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2704, label %2632

; <label>:2632                                    ; preds = %2610
  %2633 = add i32 %55, 124
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %55, 384
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %102, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = extractvalue %dx.types.ResRet.f32 %2641, 3
  %2646 = and i32 %2635, 255
  %2647 = uitofp i32 %2646 to float
  %2648 = lshr i32 %2635, 8
  %2649 = and i32 %2648, 255
  %2650 = uitofp i32 %2649 to float
  %2651 = lshr i32 %2635, 16
  %2652 = and i32 %2651, 255
  %2653 = uitofp i32 %2652 to float
  %2654 = fmul fast float %2653, 0x3F70101000000000
  %2655 = fmul fast float %2642, %2647
  %2656 = fadd fast float %2655, %2650
  %2657 = fmul fast float %2656, 0x3F70101000000000
  %2658 = fadd fast float %2643, -5.000000e-01
  %2659 = fadd fast float %2645, -5.000000e-01
  %2660 = fmul fast float %2658, %2654
  %2661 = fmul fast float %2659, %2654
  %2662 = fadd fast float %2660, 5.000000e-01
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = fmul fast float %2662, 2.000000e+00
  %2665 = fadd fast float %2664, -1.000000e+00
  %2666 = fmul fast float %2663, 2.000000e+00
  %2667 = fadd fast float %2666, -1.000000e+00
  %2668 = fadd fast float %2665, %2667
  %2669 = fmul fast float %2668, 5.000000e-01
  %2670 = fsub fast float %2665, %2667
  %2671 = fmul fast float %2670, 5.000000e-01
  %2672 = call float @dx.op.unary.f32(i32 6, float %2669)  ; FAbs(value)
  %2673 = fsub fast float 1.000000e+00, %2672
  %2674 = call float @dx.op.unary.f32(i32 6, float %2671)  ; FAbs(value)
  %2675 = fsub fast float %2673, %2674
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2671, float %2675, float %2669, float %2671, float %2675)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = call float @dx.op.unary.f32(i32 25, float %2676)  ; Rsqrt(value)
  %2678 = fmul fast float %2669, %2677
  %2679 = fmul fast float %2671, %2677
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = and i32 %2681, 67108864
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2700, label %2684

; <label>:2684                                    ; preds = %2632
  %2685 = add i32 %55, 312
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 65535
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = lshr i32 %2687, 16
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = fsub fast float %2657, %2695
  %2697 = fmul fast float %2696, %2689
  %2698 = fadd fast float %2697, %2693
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  br label %2700

; <label>:2700                                    ; preds = %2684, %2632
  %2701 = phi float [ %2699, %2684 ], [ %2657, %2632 ]
  %2702 = call float @dx.op.dot2.f32(i32 54, float %2678, float %2679, float %2236, float %2237)  ; Dot2(ax,ay,bx,by)
  %2703 = call float @dx.op.dot2.f32(i32 54, float %2678, float %2679, float %2238, float %2239)  ; Dot2(ax,ay,bx,by)
  br label %2704

; <label>:2704                                    ; preds = %2700, %2610
  %2705 = phi float [ %2701, %2700 ], [ 0x3FD6666660000000, %2610 ]
  %2706 = phi float [ %2702, %2700 ], [ 0.000000e+00, %2610 ]
  %2707 = phi float [ %2703, %2700 ], [ 0.000000e+00, %2610 ]
  %2708 = phi float [ %2644, %2700 ], [ 1.000000e+00, %2610 ]
  %2709 = add i32 %55, 192
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = lshr i32 %2711, 22
  %2713 = shl nuw nsw i32 %2712, 5
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 64
  %2718 = icmp eq i32 %2717, 0
  br i1 %2718, label %2752, label %2719

; <label>:2719                                    ; preds = %2704
  %2720 = add i32 %55, 400
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = add i32 %2722, 0
  %2724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 131072
  %2728 = icmp eq i32 %2727, 0
  %2729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2724, %dx.types.Handle %102, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = fmul fast float %477, %2730
  %2734 = fmul fast float %478, %2731
  %2735 = fmul fast float %479, %2732
  br i1 %2728, label %2742, label %2736

; <label>:2736                                    ; preds = %2719
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = fmul fast float %2738, %2733
  %2740 = fmul fast float %2738, %2734
  %2741 = fmul fast float %2738, %2735
  br label %2742

; <label>:2742                                    ; preds = %2736, %2719
  %2743 = phi float [ %2739, %2736 ], [ %2733, %2719 ]
  %2744 = phi float [ %2740, %2736 ], [ %2734, %2719 ]
  %2745 = phi float [ %2741, %2736 ], [ %2735, %2719 ]
  %2746 = fmul fast float %2743, %2714
  %2747 = select i1 %252, float %2746, float %2743
  %2748 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2744, float %2745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2749 = select i1 %252, float 0.000000e+00, float %2743
  %2750 = select i1 %252, float %2748, float %2744
  %2751 = select i1 %252, float 0.000000e+00, float %2745
  br label %2752

; <label>:2752                                    ; preds = %2742, %2704
  %2753 = phi float [ %2749, %2742 ], [ 0.000000e+00, %2704 ]
  %2754 = phi float [ %2750, %2742 ], [ 0.000000e+00, %2704 ]
  %2755 = phi float [ %2751, %2742 ], [ 0.000000e+00, %2704 ]
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 1024
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2790, label %2760

; <label>:2760                                    ; preds = %2752
  %2761 = add i32 %55, 184
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2765, 0x3F70101020000000
  %2767 = lshr i32 %2763, 8
  %2768 = and i32 %2767, 255
  %2769 = uitofp i32 %2768 to float
  %2770 = fmul fast float %2769, 0x3F70101020000000
  %2771 = lshr i32 %2763, 16
  %2772 = and i32 %2771, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x3F70101020000000
  %2775 = fmul fast float %2766, %2766
  %2776 = fmul fast float %2770, %2770
  %2777 = fmul fast float %2774, %2774
  %2778 = add i32 %55, 464
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = add i32 %2780, 0
  %2782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2782, %dx.types.Handle %103, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = fmul fast float %2775, %2784
  %2788 = fmul fast float %2776, %2785
  %2789 = fmul fast float %2777, %2786
  br label %2790

; <label>:2790                                    ; preds = %2760, %2752
  %2791 = phi float [ %2787, %2760 ], [ 0.000000e+00, %2752 ]
  %2792 = phi float [ %2788, %2760 ], [ 0.000000e+00, %2752 ]
  %2793 = phi float [ %2789, %2760 ], [ 0.000000e+00, %2752 ]
  %2794 = fcmp fast ogt float %2791, 0.000000e+00
  %2795 = fcmp fast ogt float %2792, 0.000000e+00
  %2796 = fcmp fast ogt float %2793, 0.000000e+00
  %2797 = call float @dx.op.unary.f32(i32 23, float %2791)  ; Log(value)
  %2798 = call float @dx.op.unary.f32(i32 23, float %2792)  ; Log(value)
  %2799 = call float @dx.op.unary.f32(i32 23, float %2793)  ; Log(value)
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = lshr i32 %2801, 7
  %2803 = and i32 %2802, 32752
  %2804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2803)  ; LegacyF16ToF32(value)
  %2805 = fmul fast float %2797, 0xBFE62E4300000000
  %2806 = fmul fast float %2805, %2804
  %2807 = fmul fast float %2798, 0xBFE62E4300000000
  %2808 = fmul fast float %2807, %2804
  %2809 = fmul fast float %2799, 0xBFE62E4300000000
  %2810 = fmul fast float %2809, %2804
  %2811 = select i1 %2794, float %2806, float 1.270000e+02
  %2812 = select i1 %2795, float %2808, float 1.270000e+02
  %2813 = select i1 %2796, float %2810, float 1.270000e+02
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 10240
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2838, label %2818

; <label>:2818                                    ; preds = %2790
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 2048
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2838, label %2823

; <label>:2823                                    ; preds = %2818
  %2824 = add i32 %55, 480
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = add i32 %2826, 0
  %2828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2828, %dx.types.Handle %103, float %2332, float %2333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 3
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = shl i32 %2832, 4
  %2834 = and i32 %2833, 32752
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = fmul fast float %2835, %2830
  %2837 = call float @dx.op.binary.f32(i32 35, float %2836, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2838

; <label>:2838                                    ; preds = %2823, %2818, %2790
  %2839 = phi float [ %2837, %2823 ], [ 0x3F70101020000000, %2818 ], [ 0x3F70101020000000, %2790 ]
  %2840 = add i32 %55, 128
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = lshr i32 %2842, 8
  %2846 = and i32 %2845, 255
  %2847 = uitofp i32 %2846 to float
  %2848 = call float @dx.op.dot3.f32(i32 55, float %2625, float %2626, float %2627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2849 = fmul fast float %2847, %2848
  %2850 = fadd fast float %2849, %2844
  %2851 = fmul fast float %2850, 0x3F70101020000000
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  br i1 %2224, label %2853, label %2888

; <label>:2853                                    ; preds = %2838
  %2854 = fmul fast float %2839, 2.000000e+00
  %2855 = fcmp fast olt float %2811, 1.270000e+02
  %2856 = fcmp fast olt float %2812, 1.270000e+02
  %2857 = fcmp fast olt float %2813, 1.270000e+02
  %2858 = fmul fast float %2811, 0xBFF7154760000000
  %2859 = fmul fast float %2858, %2854
  %2860 = fmul fast float %2812, 0xBFF7154760000000
  %2861 = fmul fast float %2860, %2854
  %2862 = fmul fast float %2813, 0xBFF7154760000000
  %2863 = fmul fast float %2862, %2854
  %2864 = call float @dx.op.unary.f32(i32 21, float %2859)  ; Exp(value)
  %2865 = call float @dx.op.unary.f32(i32 21, float %2861)  ; Exp(value)
  %2866 = call float @dx.op.unary.f32(i32 21, float %2863)  ; Exp(value)
  %2867 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2868 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2870 = fadd fast float %2867, -1.000000e+00
  %2871 = select i1 %2855, float %2870, float -1.000000e+00
  %2872 = fadd fast float %2868, -1.000000e+00
  %2873 = select i1 %2856, float %2872, float -1.000000e+00
  %2874 = fadd fast float %2869, -1.000000e+00
  %2875 = select i1 %2857, float %2874, float -1.000000e+00
  %2876 = fmul fast float %2871, %2405
  %2877 = fmul fast float %2873, %2405
  %2878 = fmul fast float %2875, %2405
  %2879 = fadd fast float %2876, 1.000000e+00
  %2880 = fadd fast float %2877, 1.000000e+00
  %2881 = fadd fast float %2878, 1.000000e+00
  %2882 = fmul fast float %2879, %2209
  %2883 = fmul fast float %2880, %2210
  %2884 = fmul fast float %2881, %2211
  %2885 = fmul fast float %2879, %2212
  %2886 = fmul fast float %2880, %2213
  %2887 = fmul fast float %2881, %2214
  br label %2888

; <label>:2888                                    ; preds = %2853, %2838
  %2889 = phi float [ %2882, %2853 ], [ %2209, %2838 ]
  %2890 = phi float [ %2883, %2853 ], [ %2210, %2838 ]
  %2891 = phi float [ %2884, %2853 ], [ %2211, %2838 ]
  %2892 = phi float [ %2885, %2853 ], [ %2212, %2838 ]
  %2893 = phi float [ %2886, %2853 ], [ %2213, %2838 ]
  %2894 = phi float [ %2887, %2853 ], [ %2214, %2838 ]
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 3
  %2898 = icmp eq i32 %2897, 3
  br i1 %2898, label %2977, label %2899

; <label>:2899                                    ; preds = %2888
  %2900 = and i32 %2896, 16
  %2901 = icmp ne i32 %2900, 0
  %2902 = select i1 %2901, float %2405, float 0.000000e+00
  %2903 = icmp eq i32 %2897, 0
  br i1 %2903, label %2904, label %2932

; <label>:2904                                    ; preds = %2899
  %2905 = and i32 %2896, 64
  %2906 = icmp ne i32 %2905, 0
  %2907 = select i1 %2906, float %2405, float 0.000000e+00
  %2908 = fsub fast float %2625, %2889
  %2909 = fsub fast float %2626, %2890
  %2910 = fsub fast float %2627, %2891
  %2911 = fmul fast float %2902, %2908
  %2912 = fmul fast float %2902, %2909
  %2913 = fmul fast float %2902, %2910
  %2914 = fadd fast float %2911, %2889
  %2915 = fadd fast float %2912, %2890
  %2916 = fadd fast float %2913, %2891
  %2917 = fsub fast float %2611, %2218
  %2918 = fmul fast float %2902, %2917
  %2919 = fadd fast float %2918, %2218
  %2920 = fsub fast float %2753, %2892
  %2921 = fsub fast float %2754, %2893
  %2922 = fsub fast float %2755, %2894
  %2923 = fmul fast float %2907, %2920
  %2924 = fmul fast float %2907, %2921
  %2925 = fmul fast float %2907, %2922
  %2926 = fadd fast float %2923, %2892
  %2927 = fadd fast float %2924, %2893
  %2928 = fadd fast float %2925, %2894
  %2929 = fsub fast float %2852, %2222
  %2930 = fmul fast float %2902, %2929
  %2931 = fadd fast float %2930, %2222
  br label %2977

; <label>:2932                                    ; preds = %2899
  %2933 = icmp eq i32 %2897, 1
  br i1 %2933, label %2934, label %2947

; <label>:2934                                    ; preds = %2932
  %2935 = fadd fast float %2625, -1.000000e+00
  %2936 = fadd fast float %2626, -1.000000e+00
  %2937 = fadd fast float %2627, -1.000000e+00
  %2938 = fmul fast float %2902, %2935
  %2939 = fmul fast float %2902, %2936
  %2940 = fmul fast float %2902, %2937
  %2941 = fadd fast float %2938, 1.000000e+00
  %2942 = fadd fast float %2939, 1.000000e+00
  %2943 = fadd fast float %2940, 1.000000e+00
  %2944 = fmul fast float %2941, %2889
  %2945 = fmul fast float %2942, %2890
  %2946 = fmul fast float %2943, %2891
  br label %2977

; <label>:2947                                    ; preds = %2932
  %2948 = icmp eq i32 %2897, 2
  br i1 %2948, label %2949, label %2977

; <label>:2949                                    ; preds = %2947
  %2950 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2951 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2952 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2953 = fadd fast float %2950, -5.000000e-01
  %2954 = fadd fast float %2951, -5.000000e-01
  %2955 = fadd fast float %2952, -5.000000e-01
  %2956 = fmul fast float %2953, %2902
  %2957 = fmul fast float %2954, %2902
  %2958 = fmul fast float %2955, %2902
  %2959 = fadd fast float %2956, 5.000000e-01
  %2960 = fadd fast float %2957, 5.000000e-01
  %2961 = fadd fast float %2958, 5.000000e-01
  %2962 = fmul fast float %2959, 2.000000e+00
  %2963 = fsub fast float 1.000000e+00, %2962
  %2964 = fmul fast float %2963, %2889
  %2965 = fadd fast float %2964, %2962
  %2966 = fmul fast float %2965, %2889
  %2967 = fmul fast float %2960, 2.000000e+00
  %2968 = fsub fast float 1.000000e+00, %2967
  %2969 = fmul fast float %2968, %2890
  %2970 = fadd fast float %2969, %2967
  %2971 = fmul fast float %2970, %2890
  %2972 = fmul fast float %2961, 2.000000e+00
  %2973 = fsub fast float 1.000000e+00, %2972
  %2974 = fmul fast float %2973, %2891
  %2975 = fadd fast float %2974, %2972
  %2976 = fmul fast float %2975, %2891
  br label %2977

; <label>:2977                                    ; preds = %2949, %2947, %2934, %2904, %2888
  %2978 = phi float [ %2889, %2888 ], [ %2966, %2949 ], [ %2889, %2947 ], [ %2944, %2934 ], [ %2914, %2904 ]
  %2979 = phi float [ %2890, %2888 ], [ %2971, %2949 ], [ %2890, %2947 ], [ %2945, %2934 ], [ %2915, %2904 ]
  %2980 = phi float [ %2891, %2888 ], [ %2976, %2949 ], [ %2891, %2947 ], [ %2946, %2934 ], [ %2916, %2904 ]
  %2981 = phi float [ %2892, %2888 ], [ %2892, %2949 ], [ %2892, %2947 ], [ %2892, %2934 ], [ %2926, %2904 ]
  %2982 = phi float [ %2893, %2888 ], [ %2893, %2949 ], [ %2893, %2947 ], [ %2893, %2934 ], [ %2927, %2904 ]
  %2983 = phi float [ %2894, %2888 ], [ %2894, %2949 ], [ %2894, %2947 ], [ %2894, %2934 ], [ %2928, %2904 ]
  %2984 = phi float [ %2218, %2888 ], [ %2218, %2949 ], [ %2218, %2947 ], [ %2218, %2934 ], [ %2919, %2904 ]
  %2985 = phi float [ %2222, %2888 ], [ %2222, %2949 ], [ %2222, %2947 ], [ %2222, %2934 ], [ %2931, %2904 ]
  %2986 = and i32 %2896, 12
  %2987 = icmp eq i32 %2986, 12
  br i1 %2987, label %3094, label %2988

; <label>:2988                                    ; preds = %2977
  %2989 = and i32 %2896, 2097184
  %2990 = icmp eq i32 %2989, 2097184
  %2991 = select i1 %2990, float %2405, float 0.000000e+00
  %2992 = and i32 %2896, 4194336
  %2993 = icmp eq i32 %2992, 4194336
  %2994 = select i1 %2993, float %2405, float 0.000000e+00
  %2995 = and i32 %2896, 8388640
  %2996 = icmp eq i32 %2995, 8388640
  %2997 = select i1 %2996, float %2405, float 0.000000e+00
  %2998 = and i32 %2896, 1024
  %2999 = icmp ne i32 %2998, 0
  %3000 = select i1 %2999, float %2405, float 0.000000e+00
  %3001 = and i32 %2896, 2048
  %3002 = icmp ne i32 %3001, 0
  %3003 = select i1 %3002, float %2405, float 0.000000e+00
  %3004 = icmp eq i32 %2986, 0
  br i1 %3004, label %3005, label %3030

; <label>:3005                                    ; preds = %2988
  %3006 = fsub fast float %2706, %2207
  %3007 = fsub fast float %2707, %2208
  %3008 = fmul fast float %2991, %3006
  %3009 = fmul fast float %2991, %3007
  %3010 = fadd fast float %3008, %2207
  %3011 = fadd fast float %3009, %2208
  %3012 = fsub fast float %2708, %2220
  %3013 = fmul fast float %2994, %3012
  %3014 = fadd fast float %3013, %2220
  %3015 = fsub fast float %2705, %2219
  %3016 = fmul fast float %2997, %3015
  %3017 = fadd fast float %3016, %2219
  %3018 = fsub fast float %2811, %2215
  %3019 = fsub fast float %2812, %2216
  %3020 = fsub fast float %2813, %2217
  %3021 = fmul fast float %3000, %3018
  %3022 = fmul fast float %3000, %3019
  %3023 = fmul fast float %3000, %3020
  %3024 = fadd fast float %3021, %2215
  %3025 = fadd fast float %3022, %2216
  %3026 = fadd fast float %3023, %2217
  %3027 = fsub fast float %2839, %2221
  %3028 = fmul fast float %3003, %3027
  %3029 = fadd fast float %3028, %2221
  br label %3094

; <label>:3030                                    ; preds = %2988
  %3031 = icmp eq i32 %2986, 4
  br i1 %3031, label %3032, label %3072

; <label>:3032                                    ; preds = %3030
  %3033 = fmul fast float %2991, %2706
  %3034 = fmul fast float %2991, %2707
  %3035 = fadd fast float %3033, %2207
  %3036 = fadd fast float %3034, %2208
  %3037 = call float @dx.op.binary.f32(i32 36, float %2220, float %2708)  ; FMin(a,b)
  %3038 = fsub fast float %3037, %2220
  %3039 = fmul fast float %3038, %2994
  %3040 = fadd fast float %3039, %2220
  %3041 = fadd fast float %2705, %2219
  %3042 = fmul fast float %3041, 0x3FF337FAE0000000
  %3043 = fmul fast float %2219, %2219
  %3044 = fmul fast float %2705, %2705
  %3045 = fadd fast float %3044, %3043
  %3046 = fmul fast float %3045, 0x3FE5152B00000000
  %3047 = fmul fast float %2219, 0xBFCC1F85E0000000
  %3048 = fmul fast float %3047, %2705
  %3049 = fadd fast float %3048, 0xBFE1363700000000
  %3050 = fadd fast float %3049, %3042
  %3051 = fsub fast float %3050, %3046
  %3052 = fmul fast float %3041, 0x3FBA6F0D00000000
  %3053 = fmul fast float %3045, 0x3FD0432880000000
  %3054 = fmul fast float %2219, 0xBFEF110800000000
  %3055 = fmul fast float %3054, %2705
  %3056 = fadd fast float %3055, 1.000000e+00
  %3057 = fsub fast float %3056, %3052
  %3058 = fadd fast float %3057, %3053
  %3059 = fdiv fast float %3051, %3058
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3061 = fsub fast float %3060, %2219
  %3062 = fmul fast float %3061, %2997
  %3063 = fadd fast float %3062, %2219
  %3064 = fmul fast float %3000, %2811
  %3065 = fmul fast float %3000, %2812
  %3066 = fmul fast float %3000, %2813
  %3067 = fadd fast float %3064, %2215
  %3068 = fadd fast float %3065, %2216
  %3069 = fadd fast float %3066, %2217
  %3070 = fmul fast float %3003, %2839
  %3071 = fadd fast float %3070, %2221
  br label %3094

; <label>:3072                                    ; preds = %3030
  %3073 = icmp eq i32 %2986, 8
  br i1 %3073, label %3074, label %3094

; <label>:3074                                    ; preds = %3072
  %3075 = fmul fast float %2991, %2706
  %3076 = fmul fast float %2991, %2707
  %3077 = fadd fast float %3075, %2207
  %3078 = fadd fast float %3076, %2208
  %3079 = call float @dx.op.binary.f32(i32 36, float %2220, float %2708)  ; FMin(a,b)
  %3080 = fsub fast float %3079, %2220
  %3081 = fmul fast float %3080, %2994
  %3082 = fadd fast float %3081, %2220
  %3083 = fsub fast float %2705, %2219
  %3084 = fmul fast float %2997, %3083
  %3085 = fadd fast float %3084, %2219
  %3086 = fmul fast float %3000, %2811
  %3087 = fmul fast float %3000, %2812
  %3088 = fmul fast float %3000, %2813
  %3089 = fadd fast float %3086, %2215
  %3090 = fadd fast float %3087, %2216
  %3091 = fadd fast float %3088, %2217
  %3092 = fmul fast float %3003, %2839
  %3093 = fadd fast float %3092, %2221
  br label %3094

; <label>:3094                                    ; preds = %3074, %3072, %3032, %3005, %2977, %2404, %2223, %2206
  %3095 = phi float [ %2207, %2977 ], [ %2207, %2404 ], [ %2207, %2206 ], [ %3077, %3074 ], [ %2207, %3072 ], [ %3035, %3032 ], [ %3010, %3005 ], [ %2207, %2223 ]
  %3096 = phi float [ %2208, %2977 ], [ %2208, %2404 ], [ %2208, %2206 ], [ %3078, %3074 ], [ %2208, %3072 ], [ %3036, %3032 ], [ %3011, %3005 ], [ %2208, %2223 ]
  %3097 = phi float [ %2978, %2977 ], [ %2209, %2404 ], [ %2209, %2206 ], [ %2978, %3074 ], [ %2978, %3072 ], [ %2978, %3032 ], [ %2978, %3005 ], [ %2209, %2223 ]
  %3098 = phi float [ %2979, %2977 ], [ %2210, %2404 ], [ %2210, %2206 ], [ %2979, %3074 ], [ %2979, %3072 ], [ %2979, %3032 ], [ %2979, %3005 ], [ %2210, %2223 ]
  %3099 = phi float [ %2980, %2977 ], [ %2211, %2404 ], [ %2211, %2206 ], [ %2980, %3074 ], [ %2980, %3072 ], [ %2980, %3032 ], [ %2980, %3005 ], [ %2211, %2223 ]
  %3100 = phi float [ %2981, %2977 ], [ %2212, %2404 ], [ %2212, %2206 ], [ %2981, %3074 ], [ %2981, %3072 ], [ %2981, %3032 ], [ %2981, %3005 ], [ %2212, %2223 ]
  %3101 = phi float [ %2982, %2977 ], [ %2213, %2404 ], [ %2213, %2206 ], [ %2982, %3074 ], [ %2982, %3072 ], [ %2982, %3032 ], [ %2982, %3005 ], [ %2213, %2223 ]
  %3102 = phi float [ %2983, %2977 ], [ %2214, %2404 ], [ %2214, %2206 ], [ %2983, %3074 ], [ %2983, %3072 ], [ %2983, %3032 ], [ %2983, %3005 ], [ %2214, %2223 ]
  %3103 = phi float [ %2215, %2977 ], [ %2215, %2404 ], [ %2215, %2206 ], [ %3089, %3074 ], [ %2215, %3072 ], [ %3067, %3032 ], [ %3024, %3005 ], [ %2215, %2223 ]
  %3104 = phi float [ %2216, %2977 ], [ %2216, %2404 ], [ %2216, %2206 ], [ %3090, %3074 ], [ %2216, %3072 ], [ %3068, %3032 ], [ %3025, %3005 ], [ %2216, %2223 ]
  %3105 = phi float [ %2217, %2977 ], [ %2217, %2404 ], [ %2217, %2206 ], [ %3091, %3074 ], [ %2217, %3072 ], [ %3069, %3032 ], [ %3026, %3005 ], [ %2217, %2223 ]
  %3106 = phi float [ %2984, %2977 ], [ %2218, %2404 ], [ %2218, %2206 ], [ %2984, %3074 ], [ %2984, %3072 ], [ %2984, %3032 ], [ %2984, %3005 ], [ %2218, %2223 ]
  %3107 = phi float [ %2219, %2977 ], [ %2219, %2404 ], [ %2219, %2206 ], [ %3085, %3074 ], [ %2219, %3072 ], [ %3063, %3032 ], [ %3017, %3005 ], [ %2219, %2223 ]
  %3108 = phi float [ %2220, %2977 ], [ %2220, %2404 ], [ %2220, %2206 ], [ %3082, %3074 ], [ %2220, %3072 ], [ %3040, %3032 ], [ %3014, %3005 ], [ %2220, %2223 ]
  %3109 = phi float [ %2221, %2977 ], [ %2221, %2404 ], [ %2221, %2206 ], [ %3093, %3074 ], [ %2221, %3072 ], [ %3071, %3032 ], [ %3029, %3005 ], [ %2221, %2223 ]
  %3110 = phi float [ %2985, %2977 ], [ %2222, %2404 ], [ %2222, %2206 ], [ %2985, %3074 ], [ %2985, %3072 ], [ %2985, %3032 ], [ %2985, %3005 ], [ %2222, %2223 ]
  br i1 %636, label %3982, label %3111

; <label>:3111                                    ; preds = %3094
  %3112 = icmp ult i32 %690, 4
  %3113 = add i32 %55, 72
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = add i32 %55, 76
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = or i32 %3118, %3115
  %3120 = icmp eq i32 %3119, 0
  br i1 %3120, label %3982, label %3121

; <label>:3121                                    ; preds = %3111
  %3122 = and i32 %3115, 262144
  %3123 = icmp ne i32 %3122, 0
  %3124 = select i1 %3123, float %61, float 1.000000e+00
  %3125 = select i1 %3123, float %62, float 0.000000e+00
  %3126 = select i1 %3123, float %63, float 0.000000e+00
  %3127 = select i1 %3123, float %64, float 1.000000e+00
  %3128 = select i1 %3123, float %65, float %88
  %3129 = select i1 %3123, float %66, float %89
  %3130 = add i32 %55, 332
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = lshr i32 %3132, 16
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = fmul fast float %3134, 0x3F50624DE0000000
  %3136 = add i32 %55, 136
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = lshr i32 %3138, 16
  %3140 = and i32 %3139, 255
  %3141 = lshr i32 %3138, 24
  %3142 = add i32 %55, 340
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 65535
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = lshr i32 %3144, 16
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = add i32 %55, 80
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = lshr i32 %3151, 22
  %3153 = shl nuw nsw i32 %3152, 5
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = shl i32 %3151, 4
  %3156 = and i32 %3155, 32752
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = lshr i32 %3151, 7
  %3159 = and i32 %3158, 32752
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3163 = fmul fast float %3162, 1.000000e+03
  %3164 = fmul fast float %3163, %625
  %3165 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3166 = fadd fast float %3165, %613
  %3167 = fmul fast float %3163, %627
  %3168 = call float @dx.op.unary.f32(i32 22, float %3167)  ; Frc(value)
  %3169 = fadd fast float %3168, %614
  %3170 = fmul fast float %3135, %3163
  %3171 = call float @dx.op.unary.f32(i32 22, float %3170)  ; Frc(value)
  %3172 = fmul fast float %3171, 0x401921FB60000000
  %3173 = fadd fast float %3172, %3154
  %3174 = call float @dx.op.unary.f32(i32 13, float %3173)  ; Sin(value)
  %3175 = call float @dx.op.unary.f32(i32 12, float %3173)  ; Cos(value)
  %3176 = fsub fast float -0.000000e+00, %3174
  %3177 = fadd fast float %3128, -5.000000e-01
  %3178 = fadd fast float %3129, -5.000000e-01
  %3179 = fmul fast float %3146, %3177
  %3180 = fmul fast float %3148, %3178
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = fmul fast float %3157, %3181
  %3184 = fmul fast float %3160, %3182
  %3185 = fmul fast float %3175, %3183
  %3186 = call float @dx.op.tertiary.f32(i32 46, float %3176, float %3184, float %3185)  ; FMad(a,b,c)
  %3187 = fmul fast float %3174, %3183
  %3188 = call float @dx.op.tertiary.f32(i32 46, float %3175, float %3184, float %3187)  ; FMad(a,b,c)
  %3189 = fadd fast float %3166, %3186
  %3190 = fadd fast float %3169, %3188
  %3191 = icmp ugt i32 %3140, 1
  %3192 = icmp ugt i32 %3138, 33554431
  %3193 = or i1 %3192, %3191
  br i1 %3193, label %3194, label %3219

; <label>:3194                                    ; preds = %3121
  %3195 = add i32 %55, 276
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fmul fast float %3162, %3199
  %3201 = call float @dx.op.unary.f32(i32 22, float %3200)  ; Frc(value)
  %3202 = mul nuw nsw i32 %3140, %3141
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3201, %3203
  %3205 = call float @dx.op.unary.f32(i32 27, float %3204)  ; Round_ni(value)
  %3206 = fptoui float %3205 to i32
  %3207 = urem i32 %3206, %3140
  %3208 = udiv i32 %3206, %3141
  %3209 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3210 = call float @dx.op.unary.f32(i32 22, float %3190)  ; Frc(value)
  %3211 = uitofp i32 %3207 to float
  %3212 = uitofp i32 %3208 to float
  %3213 = fadd fast float %3209, %3211
  %3214 = fadd fast float %3210, %3212
  %3215 = uitofp i32 %3140 to float
  %3216 = uitofp i32 %3141 to float
  %3217 = fdiv fast float %3213, %3215
  %3218 = fdiv fast float %3214, %3216
  br label %3219

; <label>:3219                                    ; preds = %3194, %3121
  %3220 = phi float [ %3217, %3194 ], [ %3189, %3121 ]
  %3221 = phi float [ %3218, %3194 ], [ %3190, %3121 ]
  %3222 = and i32 %3115, 256
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3270, label %3224

; <label>:3224                                    ; preds = %3219
  %3225 = add i32 %55, 436
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %3227, 0
  %3229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3229, %dx.types.Handle %103, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = add i32 %55, 148
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = shl i32 %3234, 4
  %3236 = and i32 %3235, 32752
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = lshr i32 %3234, 7
  %3239 = and i32 %3238, 32752
  %3240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3239)  ; LegacyF16ToF32(value)
  %3241 = fsub fast float 1.000000e+00, %685
  %3242 = call float @dx.op.binary.f32(i32 35, float %3241, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3243 = bitcast float %685 to i32
  %3244 = sitofp i32 %3243 to float
  %3245 = fadd fast float %3244, 0xC1CFBF8940000000
  %3246 = fmul fast float %3240, %3245
  %3247 = fadd fast float %3246, 0x41CFBF8940000000
  %3248 = fptosi float %3247 to i32
  %3249 = bitcast i32 %3248 to float
  %3250 = bitcast float %3242 to i32
  %3251 = sitofp i32 %3250 to float
  %3252 = fadd fast float %3251, 0xC1CFBF8940000000
  %3253 = fmul fast float %3252, %3240
  %3254 = fadd fast float %3253, 0x41CFBF8940000000
  %3255 = fptosi float %3254 to i32
  %3256 = bitcast i32 %3255 to float
  %3257 = fmul fast float %3249, %3237
  %3258 = fmul fast float %3256, %3237
  %3259 = fsub fast float %3242, %3257
  %3260 = fadd fast float %3258, %3242
  %3261 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3262 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  %3263 = fsub fast float %3231, %3261
  %3264 = fsub fast float %3262, %3261
  %3265 = bitcast float %3264 to i32
  %3266 = sub nsw i32 2129859010, %3265
  %3267 = bitcast i32 %3266 to float
  %3268 = fmul fast float %3267, %3263
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  br label %3270

; <label>:3270                                    ; preds = %3224, %3219
  %3271 = phi float [ %3269, %3224 ], [ %685, %3219 ]
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 128
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3292, label %3276

; <label>:3276                                    ; preds = %3270
  %3277 = add i32 %55, 420
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = add i32 %3279, 0
  %3281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3281, %dx.types.Handle %103, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 524288
  %3287 = icmp ne i32 %3286, 0
  %3288 = fcmp fast ogt float %3283, 0x3FE0101020000000
  %3289 = select i1 %3288, float 1.000000e+00, float 0.000000e+00
  %3290 = select i1 %3287, float %3289, float %3283
  %3291 = fmul fast float %3290, %3271
  br label %3292

; <label>:3292                                    ; preds = %3276, %3270
  %3293 = phi float [ %3291, %3276 ], [ %3271, %3270 ]
  %3294 = fcmp fast ult float %3293, 0x3F70101020000000
  br i1 %3294, label %3982, label %3295

; <label>:3295                                    ; preds = %3292
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = and i32 %3297, 16
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3498, label %3300

; <label>:3300                                    ; preds = %3295
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = add i32 %55, 372
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = add i32 %3305, 0
  %3307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3307, %dx.types.Handle %102, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.ResRet.f32 %3308, 2
  %3312 = extractvalue %dx.types.ResRet.f32 %3308, 3
  %3313 = and i32 %3302, 255
  %3314 = uitofp i32 %3313 to float
  %3315 = lshr i32 %3302, 8
  %3316 = and i32 %3315, 255
  %3317 = uitofp i32 %3316 to float
  %3318 = fmul fast float %3312, %3314
  %3319 = fadd fast float %3318, %3317
  %3320 = fmul fast float %3319, 0x3F70101000000000
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 512
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3333, label %3325

; <label>:3325                                    ; preds = %3300
  %3326 = add i32 %55, 452
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = add i32 %3328, 0
  %3330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3330, %dx.types.Handle %103, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  br label %3333

; <label>:3333                                    ; preds = %3325, %3300
  %3334 = phi float [ %3332, %3325 ], [ 1.000000e+00, %3300 ]
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 33554432
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3445, label %3339

; <label>:3339                                    ; preds = %3333
  %3340 = add i32 %55, 272
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, 65535
  %3344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3343)  ; LegacyF16ToF32(value)
  %3345 = lshr i32 %3342, 16
  %3346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3345)  ; LegacyF16ToF32(value)
  %3347 = add i32 %55, 276
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 65535
  %3351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3350)  ; LegacyF16ToF32(value)
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = lshr i32 %3353, 24
  %3355 = uitofp i32 %3354 to float
  %3356 = fmul fast float %3355, 0x3F70101020000000
  %3357 = and i32 %3353, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101020000000
  %3360 = lshr i32 %3353, 8
  %3361 = and i32 %3360, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = fmul fast float %3362, 0x3F70101020000000
  %3364 = lshr i32 %3353, 16
  %3365 = and i32 %3364, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = fmul fast float %3366, 0x3F70101020000000
  %3368 = add i32 %55, 268
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = lshr i32 %3370, 24
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101020000000
  %3374 = and i32 %3370, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = fmul fast float %3375, 0x3F70101020000000
  %3377 = lshr i32 %3370, 8
  %3378 = and i32 %3377, 255
  %3379 = uitofp i32 %3378 to float
  %3380 = fmul fast float %3379, 0x3F70101020000000
  %3381 = lshr i32 %3370, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101020000000
  %3385 = bitcast float %3309 to i32
  %3386 = ashr i32 %3385, 1
  %3387 = sub nsw i32 1597463174, %3386
  %3388 = bitcast i32 %3387 to float
  %3389 = fmul fast float %3309, 5.000000e-01
  %3390 = fmul fast float %3388, %3388
  %3391 = fmul fast float %3390, %3389
  %3392 = fsub fast float 1.500000e+00, %3391
  %3393 = fmul fast float %3388, %3309
  %3394 = fmul fast float %3393, %3392
  %3395 = bitcast float %3310 to i32
  %3396 = ashr i32 %3395, 1
  %3397 = sub nsw i32 1597463174, %3396
  %3398 = bitcast i32 %3397 to float
  %3399 = fmul fast float %3310, 5.000000e-01
  %3400 = fmul fast float %3398, %3398
  %3401 = fmul fast float %3400, %3399
  %3402 = fsub fast float 1.500000e+00, %3401
  %3403 = fmul fast float %3398, %3310
  %3404 = fmul fast float %3403, %3402
  %3405 = bitcast float %3311 to i32
  %3406 = ashr i32 %3405, 1
  %3407 = sub nsw i32 1597463174, %3406
  %3408 = bitcast i32 %3407 to float
  %3409 = fmul fast float %3311, 5.000000e-01
  %3410 = fmul fast float %3408, %3408
  %3411 = fmul fast float %3410, %3409
  %3412 = fsub fast float 1.500000e+00, %3411
  %3413 = fmul fast float %3408, %3311
  %3414 = fmul fast float %3413, %3412
  %3415 = fsub fast float %3394, %3376
  %3416 = fsub fast float %3404, %3380
  %3417 = fsub fast float %3414, %3384
  %3418 = fmul fast float %3415, %3344
  %3419 = fmul fast float %3416, %3346
  %3420 = fmul fast float %3417, %3351
  %3421 = fadd fast float %3418, %3359
  %3422 = fadd fast float %3419, %3363
  %3423 = fadd fast float %3420, %3367
  %3424 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3425 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3426 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3427 = fmul fast float %3424, %3424
  %3428 = fmul fast float %3425, %3425
  %3429 = fmul fast float %3426, %3426
  %3430 = fsub fast float %3427, %3309
  %3431 = fsub fast float %3428, %3310
  %3432 = fsub fast float %3429, %3311
  %3433 = fmul fast float %3430, %3334
  %3434 = fmul fast float %3431, %3334
  %3435 = fmul fast float %3432, %3334
  %3436 = fadd fast float %3433, %3309
  %3437 = fadd fast float %3434, %3310
  %3438 = fadd fast float %3435, %3311
  %3439 = fadd fast float %3356, %3320
  %3440 = fsub fast float %3439, %3373
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fsub fast float %3441, %3320
  %3443 = fmul fast float %3442, %3334
  %3444 = fadd fast float %3443, %3320
  br label %3498

; <label>:3445                                    ; preds = %3333
  %3446 = and i32 %3336, 134217728
  %3447 = icmp eq i32 %3446, 0
  br i1 %3447, label %3482, label %3448

; <label>:3448                                    ; preds = %3445
  %3449 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %3450 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %3451 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3452 = fadd fast float %3449, -5.000000e-01
  %3453 = fadd fast float %3450, -5.000000e-01
  %3454 = fadd fast float %3451, -5.000000e-01
  %3455 = fmul fast float %3452, %3334
  %3456 = fmul fast float %3453, %3334
  %3457 = fmul fast float %3454, %3334
  %3458 = fadd fast float %3455, 5.000000e-01
  %3459 = fadd fast float %3456, 5.000000e-01
  %3460 = fadd fast float %3457, 5.000000e-01
  %3461 = call float @dx.op.unary.f32(i32 24, float %3309)  ; Sqrt(value)
  %3462 = call float @dx.op.unary.f32(i32 24, float %3310)  ; Sqrt(value)
  %3463 = call float @dx.op.unary.f32(i32 24, float %3311)  ; Sqrt(value)
  %3464 = fmul fast float %3458, 2.000000e+00
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3465, %3461
  %3467 = fadd fast float %3466, %3464
  %3468 = fmul fast float %3467, %3461
  %3469 = fmul fast float %3459, 2.000000e+00
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = fmul fast float %3470, %3462
  %3472 = fadd fast float %3471, %3469
  %3473 = fmul fast float %3472, %3462
  %3474 = fmul fast float %3460, 2.000000e+00
  %3475 = fsub fast float 1.000000e+00, %3474
  %3476 = fmul fast float %3475, %3463
  %3477 = fadd fast float %3476, %3474
  %3478 = fmul fast float %3477, %3463
  %3479 = fmul fast float %3468, %3468
  %3480 = fmul fast float %3473, %3473
  %3481 = fmul fast float %3478, %3478
  br label %3498

; <label>:3482                                    ; preds = %3445
  %3483 = fmul fast float %601, %601
  %3484 = fmul fast float %602, %602
  %3485 = fmul fast float %603, %603
  %3486 = fadd fast float %3483, -1.000000e+00
  %3487 = fadd fast float %3484, -1.000000e+00
  %3488 = fadd fast float %3485, -1.000000e+00
  %3489 = fmul fast float %3334, %3486
  %3490 = fmul fast float %3334, %3487
  %3491 = fmul fast float %3334, %3488
  %3492 = fadd fast float %3489, 1.000000e+00
  %3493 = fadd fast float %3490, 1.000000e+00
  %3494 = fadd fast float %3491, 1.000000e+00
  %3495 = fmul fast float %3492, %3309
  %3496 = fmul fast float %3493, %3310
  %3497 = fmul fast float %3494, %3311
  br label %3498

; <label>:3498                                    ; preds = %3482, %3448, %3339, %3295
  %3499 = phi float [ %3444, %3339 ], [ %3320, %3448 ], [ %3320, %3482 ], [ 0x3FA23C0BE0000000, %3295 ]
  %3500 = phi float [ %3436, %3339 ], [ %3479, %3448 ], [ %3495, %3482 ], [ 1.000000e+00, %3295 ]
  %3501 = phi float [ %3437, %3339 ], [ %3480, %3448 ], [ %3496, %3482 ], [ 1.000000e+00, %3295 ]
  %3502 = phi float [ %3438, %3339 ], [ %3481, %3448 ], [ %3497, %3482 ], [ 1.000000e+00, %3295 ]
  %3503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.i32 %3503, 1
  %3505 = and i32 %3504, 1
  %3506 = icmp ne i32 %3505, 0
  %3507 = add i32 %55, 356
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 32
  %3511 = icmp ne i32 %3510, 0
  %3512 = and i1 %3506, %3511
  %3513 = select i1 %3512, float 1.000000e+00, float %3500
  %3514 = select i1 %3512, float 0x3FD3333340000000, float %3501
  %3515 = select i1 %3512, float 0x3FD3333340000000, float %3502
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 32
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3592, label %3520

; <label>:3520                                    ; preds = %3498
  %3521 = add i32 %55, 140
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = add i32 %55, 388
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = add i32 %3526, 0
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3528, %dx.types.Handle %102, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = and i32 %3523, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = lshr i32 %3523, 8
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = lshr i32 %3523, 16
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = fmul fast float %3541, 0x3F70101000000000
  %3543 = fmul fast float %3530, %3535
  %3544 = fadd fast float %3543, %3538
  %3545 = fmul fast float %3544, 0x3F70101000000000
  %3546 = fadd fast float %3531, -5.000000e-01
  %3547 = fadd fast float %3533, -5.000000e-01
  %3548 = fmul fast float %3546, %3542
  %3549 = fmul fast float %3547, %3542
  %3550 = fadd fast float %3548, 5.000000e-01
  %3551 = fadd fast float %3549, 5.000000e-01
  %3552 = fmul fast float %3550, 2.000000e+00
  %3553 = fadd fast float %3552, -1.000000e+00
  %3554 = fmul fast float %3551, 2.000000e+00
  %3555 = fadd fast float %3554, -1.000000e+00
  %3556 = fadd fast float %3553, %3555
  %3557 = fmul fast float %3556, 5.000000e-01
  %3558 = fsub fast float %3553, %3555
  %3559 = fmul fast float %3558, 5.000000e-01
  %3560 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3561 = fsub fast float 1.000000e+00, %3560
  %3562 = call float @dx.op.unary.f32(i32 6, float %3559)  ; FAbs(value)
  %3563 = fsub fast float %3561, %3562
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3559, float %3563, float %3557, float %3559, float %3563)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = call float @dx.op.unary.f32(i32 25, float %3564)  ; Rsqrt(value)
  %3566 = fmul fast float %3557, %3565
  %3567 = fmul fast float %3559, %3565
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = and i32 %3569, 67108864
  %3571 = icmp eq i32 %3570, 0
  br i1 %3571, label %3588, label %3572

; <label>:3572                                    ; preds = %3520
  %3573 = add i32 %55, 328
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = and i32 %3575, 65535
  %3577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3576)  ; LegacyF16ToF32(value)
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = and i32 %3579, 65535
  %3581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3580)  ; LegacyF16ToF32(value)
  %3582 = lshr i32 %3575, 16
  %3583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3582)  ; LegacyF16ToF32(value)
  %3584 = fsub fast float %3545, %3583
  %3585 = fmul fast float %3584, %3577
  %3586 = fadd fast float %3585, %3581
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  br label %3588

; <label>:3588                                    ; preds = %3572, %3520
  %3589 = phi float [ %3587, %3572 ], [ %3545, %3520 ]
  %3590 = call float @dx.op.dot2.f32(i32 54, float %3566, float %3567, float %3124, float %3125)  ; Dot2(ax,ay,bx,by)
  %3591 = call float @dx.op.dot2.f32(i32 54, float %3566, float %3567, float %3126, float %3127)  ; Dot2(ax,ay,bx,by)
  br label %3592

; <label>:3592                                    ; preds = %3588, %3498
  %3593 = phi float [ %3589, %3588 ], [ 0x3FD6666660000000, %3498 ]
  %3594 = phi float [ %3590, %3588 ], [ 0.000000e+00, %3498 ]
  %3595 = phi float [ %3591, %3588 ], [ 0.000000e+00, %3498 ]
  %3596 = phi float [ %3532, %3588 ], [ 1.000000e+00, %3498 ]
  %3597 = add i32 %55, 208
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = lshr i32 %3599, 22
  %3601 = shl nuw nsw i32 %3600, 5
  %3602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3601)  ; LegacyF16ToF32(value)
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 64
  %3606 = icmp eq i32 %3605, 0
  br i1 %3606, label %3640, label %3607

; <label>:3607                                    ; preds = %3592
  %3608 = add i32 %55, 404
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = add i32 %3610, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 131072
  %3616 = icmp eq i32 %3615, 0
  %3617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3612, %dx.types.Handle %102, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = fmul fast float %584, %3618
  %3622 = fmul fast float %585, %3619
  %3623 = fmul fast float %586, %3620
  br i1 %3616, label %3630, label %3624

; <label>:3624                                    ; preds = %3607
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = fmul fast float %3626, %3621
  %3628 = fmul fast float %3626, %3622
  %3629 = fmul fast float %3626, %3623
  br label %3630

; <label>:3630                                    ; preds = %3624, %3607
  %3631 = phi float [ %3627, %3624 ], [ %3621, %3607 ]
  %3632 = phi float [ %3628, %3624 ], [ %3622, %3607 ]
  %3633 = phi float [ %3629, %3624 ], [ %3623, %3607 ]
  %3634 = fmul fast float %3631, %3602
  %3635 = select i1 %252, float %3634, float %3631
  %3636 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3632, float %3633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3637 = select i1 %252, float 0.000000e+00, float %3631
  %3638 = select i1 %252, float %3636, float %3632
  %3639 = select i1 %252, float 0.000000e+00, float %3633
  br label %3640

; <label>:3640                                    ; preds = %3630, %3592
  %3641 = phi float [ %3637, %3630 ], [ 0.000000e+00, %3592 ]
  %3642 = phi float [ %3638, %3630 ], [ 0.000000e+00, %3592 ]
  %3643 = phi float [ %3639, %3630 ], [ 0.000000e+00, %3592 ]
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = and i32 %3645, 1024
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3678, label %3648

; <label>:3648                                    ; preds = %3640
  %3649 = add i32 %55, 200
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, 255
  %3653 = uitofp i32 %3652 to float
  %3654 = fmul fast float %3653, 0x3F70101020000000
  %3655 = lshr i32 %3651, 8
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = fmul fast float %3657, 0x3F70101020000000
  %3659 = lshr i32 %3651, 16
  %3660 = and i32 %3659, 255
  %3661 = uitofp i32 %3660 to float
  %3662 = fmul fast float %3661, 0x3F70101020000000
  %3663 = fmul fast float %3654, %3654
  %3664 = fmul fast float %3658, %3658
  %3665 = fmul fast float %3662, %3662
  %3666 = add i32 %55, 468
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %3668, 0
  %3670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3670, %dx.types.Handle %103, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = fmul fast float %3663, %3672
  %3676 = fmul fast float %3664, %3673
  %3677 = fmul fast float %3665, %3674
  br label %3678

; <label>:3678                                    ; preds = %3648, %3640
  %3679 = phi float [ %3675, %3648 ], [ 0.000000e+00, %3640 ]
  %3680 = phi float [ %3676, %3648 ], [ 0.000000e+00, %3640 ]
  %3681 = phi float [ %3677, %3648 ], [ 0.000000e+00, %3640 ]
  %3682 = fcmp fast ogt float %3679, 0.000000e+00
  %3683 = fcmp fast ogt float %3680, 0.000000e+00
  %3684 = fcmp fast ogt float %3681, 0.000000e+00
  %3685 = call float @dx.op.unary.f32(i32 23, float %3679)  ; Log(value)
  %3686 = call float @dx.op.unary.f32(i32 23, float %3680)  ; Log(value)
  %3687 = call float @dx.op.unary.f32(i32 23, float %3681)  ; Log(value)
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = lshr i32 %3689, 7
  %3691 = and i32 %3690, 32752
  %3692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3691)  ; LegacyF16ToF32(value)
  %3693 = fmul fast float %3685, 0xBFE62E4300000000
  %3694 = fmul fast float %3693, %3692
  %3695 = fmul fast float %3686, 0xBFE62E4300000000
  %3696 = fmul fast float %3695, %3692
  %3697 = fmul fast float %3687, 0xBFE62E4300000000
  %3698 = fmul fast float %3697, %3692
  %3699 = select i1 %3682, float %3694, float 1.270000e+02
  %3700 = select i1 %3683, float %3696, float 1.270000e+02
  %3701 = select i1 %3684, float %3698, float 1.270000e+02
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 10240
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3726, label %3706

; <label>:3706                                    ; preds = %3678
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 2048
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3726, label %3711

; <label>:3711                                    ; preds = %3706
  %3712 = add i32 %55, 484
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = add i32 %3714, 0
  %3716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3716, %dx.types.Handle %103, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = shl i32 %3720, 4
  %3722 = and i32 %3721, 32752
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = fmul fast float %3723, %3718
  %3725 = call float @dx.op.binary.f32(i32 35, float %3724, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3726

; <label>:3726                                    ; preds = %3711, %3706, %3678
  %3727 = phi float [ %3725, %3711 ], [ 0x3F70101020000000, %3706 ], [ 0x3F70101020000000, %3678 ]
  %3728 = add i32 %55, 144
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = lshr i32 %3730, 8
  %3734 = and i32 %3733, 255
  %3735 = uitofp i32 %3734 to float
  %3736 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3514, float %3515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3737 = fmul fast float %3735, %3736
  %3738 = fadd fast float %3737, %3732
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  br i1 %3112, label %3741, label %3776

; <label>:3741                                    ; preds = %3726
  %3742 = fmul fast float %3727, 2.000000e+00
  %3743 = fcmp fast olt float %3699, 1.270000e+02
  %3744 = fcmp fast olt float %3700, 1.270000e+02
  %3745 = fcmp fast olt float %3701, 1.270000e+02
  %3746 = fmul fast float %3699, 0xBFF7154760000000
  %3747 = fmul fast float %3746, %3742
  %3748 = fmul fast float %3700, 0xBFF7154760000000
  %3749 = fmul fast float %3748, %3742
  %3750 = fmul fast float %3701, 0xBFF7154760000000
  %3751 = fmul fast float %3750, %3742
  %3752 = call float @dx.op.unary.f32(i32 21, float %3747)  ; Exp(value)
  %3753 = call float @dx.op.unary.f32(i32 21, float %3749)  ; Exp(value)
  %3754 = call float @dx.op.unary.f32(i32 21, float %3751)  ; Exp(value)
  %3755 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3756 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = fadd fast float %3755, -1.000000e+00
  %3759 = select i1 %3743, float %3758, float -1.000000e+00
  %3760 = fadd fast float %3756, -1.000000e+00
  %3761 = select i1 %3744, float %3760, float -1.000000e+00
  %3762 = fadd fast float %3757, -1.000000e+00
  %3763 = select i1 %3745, float %3762, float -1.000000e+00
  %3764 = fmul fast float %3759, %3293
  %3765 = fmul fast float %3761, %3293
  %3766 = fmul fast float %3763, %3293
  %3767 = fadd fast float %3764, 1.000000e+00
  %3768 = fadd fast float %3765, 1.000000e+00
  %3769 = fadd fast float %3766, 1.000000e+00
  %3770 = fmul fast float %3767, %3097
  %3771 = fmul fast float %3768, %3098
  %3772 = fmul fast float %3769, %3099
  %3773 = fmul fast float %3767, %3100
  %3774 = fmul fast float %3768, %3101
  %3775 = fmul fast float %3769, %3102
  br label %3776

; <label>:3776                                    ; preds = %3741, %3726
  %3777 = phi float [ %3770, %3741 ], [ %3097, %3726 ]
  %3778 = phi float [ %3771, %3741 ], [ %3098, %3726 ]
  %3779 = phi float [ %3772, %3741 ], [ %3099, %3726 ]
  %3780 = phi float [ %3773, %3741 ], [ %3100, %3726 ]
  %3781 = phi float [ %3774, %3741 ], [ %3101, %3726 ]
  %3782 = phi float [ %3775, %3741 ], [ %3102, %3726 ]
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = and i32 %3784, 3
  %3786 = icmp eq i32 %3785, 3
  br i1 %3786, label %3865, label %3787

; <label>:3787                                    ; preds = %3776
  %3788 = and i32 %3784, 16
  %3789 = icmp ne i32 %3788, 0
  %3790 = select i1 %3789, float %3293, float 0.000000e+00
  %3791 = icmp eq i32 %3785, 0
  br i1 %3791, label %3792, label %3820

; <label>:3792                                    ; preds = %3787
  %3793 = and i32 %3784, 64
  %3794 = icmp ne i32 %3793, 0
  %3795 = select i1 %3794, float %3293, float 0.000000e+00
  %3796 = fsub fast float %3513, %3777
  %3797 = fsub fast float %3514, %3778
  %3798 = fsub fast float %3515, %3779
  %3799 = fmul fast float %3790, %3796
  %3800 = fmul fast float %3790, %3797
  %3801 = fmul fast float %3790, %3798
  %3802 = fadd fast float %3799, %3777
  %3803 = fadd fast float %3800, %3778
  %3804 = fadd fast float %3801, %3779
  %3805 = fsub fast float %3499, %3106
  %3806 = fmul fast float %3790, %3805
  %3807 = fadd fast float %3806, %3106
  %3808 = fsub fast float %3641, %3780
  %3809 = fsub fast float %3642, %3781
  %3810 = fsub fast float %3643, %3782
  %3811 = fmul fast float %3795, %3808
  %3812 = fmul fast float %3795, %3809
  %3813 = fmul fast float %3795, %3810
  %3814 = fadd fast float %3811, %3780
  %3815 = fadd fast float %3812, %3781
  %3816 = fadd fast float %3813, %3782
  %3817 = fsub fast float %3740, %3110
  %3818 = fmul fast float %3790, %3817
  %3819 = fadd fast float %3818, %3110
  br label %3865

; <label>:3820                                    ; preds = %3787
  %3821 = icmp eq i32 %3785, 1
  br i1 %3821, label %3822, label %3835

; <label>:3822                                    ; preds = %3820
  %3823 = fadd fast float %3513, -1.000000e+00
  %3824 = fadd fast float %3514, -1.000000e+00
  %3825 = fadd fast float %3515, -1.000000e+00
  %3826 = fmul fast float %3790, %3823
  %3827 = fmul fast float %3790, %3824
  %3828 = fmul fast float %3790, %3825
  %3829 = fadd fast float %3826, 1.000000e+00
  %3830 = fadd fast float %3827, 1.000000e+00
  %3831 = fadd fast float %3828, 1.000000e+00
  %3832 = fmul fast float %3829, %3777
  %3833 = fmul fast float %3830, %3778
  %3834 = fmul fast float %3831, %3779
  br label %3865

; <label>:3835                                    ; preds = %3820
  %3836 = icmp eq i32 %3785, 2
  br i1 %3836, label %3837, label %3865

; <label>:3837                                    ; preds = %3835
  %3838 = call float @dx.op.unary.f32(i32 24, float %3513)  ; Sqrt(value)
  %3839 = call float @dx.op.unary.f32(i32 24, float %3514)  ; Sqrt(value)
  %3840 = call float @dx.op.unary.f32(i32 24, float %3515)  ; Sqrt(value)
  %3841 = fadd fast float %3838, -5.000000e-01
  %3842 = fadd fast float %3839, -5.000000e-01
  %3843 = fadd fast float %3840, -5.000000e-01
  %3844 = fmul fast float %3841, %3790
  %3845 = fmul fast float %3842, %3790
  %3846 = fmul fast float %3843, %3790
  %3847 = fadd fast float %3844, 5.000000e-01
  %3848 = fadd fast float %3845, 5.000000e-01
  %3849 = fadd fast float %3846, 5.000000e-01
  %3850 = fmul fast float %3847, 2.000000e+00
  %3851 = fsub fast float 1.000000e+00, %3850
  %3852 = fmul fast float %3851, %3777
  %3853 = fadd fast float %3852, %3850
  %3854 = fmul fast float %3853, %3777
  %3855 = fmul fast float %3848, 2.000000e+00
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = fmul fast float %3856, %3778
  %3858 = fadd fast float %3857, %3855
  %3859 = fmul fast float %3858, %3778
  %3860 = fmul fast float %3849, 2.000000e+00
  %3861 = fsub fast float 1.000000e+00, %3860
  %3862 = fmul fast float %3861, %3779
  %3863 = fadd fast float %3862, %3860
  %3864 = fmul fast float %3863, %3779
  br label %3865

; <label>:3865                                    ; preds = %3837, %3835, %3822, %3792, %3776
  %3866 = phi float [ %3777, %3776 ], [ %3854, %3837 ], [ %3777, %3835 ], [ %3832, %3822 ], [ %3802, %3792 ]
  %3867 = phi float [ %3778, %3776 ], [ %3859, %3837 ], [ %3778, %3835 ], [ %3833, %3822 ], [ %3803, %3792 ]
  %3868 = phi float [ %3779, %3776 ], [ %3864, %3837 ], [ %3779, %3835 ], [ %3834, %3822 ], [ %3804, %3792 ]
  %3869 = phi float [ %3780, %3776 ], [ %3780, %3837 ], [ %3780, %3835 ], [ %3780, %3822 ], [ %3814, %3792 ]
  %3870 = phi float [ %3781, %3776 ], [ %3781, %3837 ], [ %3781, %3835 ], [ %3781, %3822 ], [ %3815, %3792 ]
  %3871 = phi float [ %3782, %3776 ], [ %3782, %3837 ], [ %3782, %3835 ], [ %3782, %3822 ], [ %3816, %3792 ]
  %3872 = phi float [ %3106, %3776 ], [ %3106, %3837 ], [ %3106, %3835 ], [ %3106, %3822 ], [ %3807, %3792 ]
  %3873 = phi float [ %3110, %3776 ], [ %3110, %3837 ], [ %3110, %3835 ], [ %3110, %3822 ], [ %3819, %3792 ]
  %3874 = and i32 %3784, 12
  %3875 = icmp eq i32 %3874, 12
  br i1 %3875, label %3982, label %3876

; <label>:3876                                    ; preds = %3865
  %3877 = and i32 %3784, 2097184
  %3878 = icmp eq i32 %3877, 2097184
  %3879 = select i1 %3878, float %3293, float 0.000000e+00
  %3880 = and i32 %3784, 4194336
  %3881 = icmp eq i32 %3880, 4194336
  %3882 = select i1 %3881, float %3293, float 0.000000e+00
  %3883 = and i32 %3784, 8388640
  %3884 = icmp eq i32 %3883, 8388640
  %3885 = select i1 %3884, float %3293, float 0.000000e+00
  %3886 = and i32 %3784, 1024
  %3887 = icmp ne i32 %3886, 0
  %3888 = select i1 %3887, float %3293, float 0.000000e+00
  %3889 = and i32 %3784, 2048
  %3890 = icmp ne i32 %3889, 0
  %3891 = select i1 %3890, float %3293, float 0.000000e+00
  %3892 = icmp eq i32 %3874, 0
  br i1 %3892, label %3893, label %3918

; <label>:3893                                    ; preds = %3876
  %3894 = fsub fast float %3594, %3095
  %3895 = fsub fast float %3595, %3096
  %3896 = fmul fast float %3879, %3894
  %3897 = fmul fast float %3879, %3895
  %3898 = fadd fast float %3896, %3095
  %3899 = fadd fast float %3897, %3096
  %3900 = fsub fast float %3596, %3108
  %3901 = fmul fast float %3882, %3900
  %3902 = fadd fast float %3901, %3108
  %3903 = fsub fast float %3593, %3107
  %3904 = fmul fast float %3885, %3903
  %3905 = fadd fast float %3904, %3107
  %3906 = fsub fast float %3699, %3103
  %3907 = fsub fast float %3700, %3104
  %3908 = fsub fast float %3701, %3105
  %3909 = fmul fast float %3888, %3906
  %3910 = fmul fast float %3888, %3907
  %3911 = fmul fast float %3888, %3908
  %3912 = fadd fast float %3909, %3103
  %3913 = fadd fast float %3910, %3104
  %3914 = fadd fast float %3911, %3105
  %3915 = fsub fast float %3727, %3109
  %3916 = fmul fast float %3891, %3915
  %3917 = fadd fast float %3916, %3109
  br label %3982

; <label>:3918                                    ; preds = %3876
  %3919 = icmp eq i32 %3874, 4
  br i1 %3919, label %3920, label %3960

; <label>:3920                                    ; preds = %3918
  %3921 = fmul fast float %3879, %3594
  %3922 = fmul fast float %3879, %3595
  %3923 = fadd fast float %3921, %3095
  %3924 = fadd fast float %3922, %3096
  %3925 = call float @dx.op.binary.f32(i32 36, float %3108, float %3596)  ; FMin(a,b)
  %3926 = fsub fast float %3925, %3108
  %3927 = fmul fast float %3926, %3882
  %3928 = fadd fast float %3927, %3108
  %3929 = fadd fast float %3593, %3107
  %3930 = fmul fast float %3929, 0x3FF337FAE0000000
  %3931 = fmul fast float %3107, %3107
  %3932 = fmul fast float %3593, %3593
  %3933 = fadd fast float %3932, %3931
  %3934 = fmul fast float %3933, 0x3FE5152B00000000
  %3935 = fmul fast float %3107, 0xBFCC1F85E0000000
  %3936 = fmul fast float %3935, %3593
  %3937 = fadd fast float %3936, 0xBFE1363700000000
  %3938 = fadd fast float %3937, %3930
  %3939 = fsub fast float %3938, %3934
  %3940 = fmul fast float %3929, 0x3FBA6F0D00000000
  %3941 = fmul fast float %3933, 0x3FD0432880000000
  %3942 = fmul fast float %3107, 0xBFEF110800000000
  %3943 = fmul fast float %3942, %3593
  %3944 = fadd fast float %3943, 1.000000e+00
  %3945 = fsub fast float %3944, %3940
  %3946 = fadd fast float %3945, %3941
  %3947 = fdiv fast float %3939, %3946
  %3948 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3949 = fsub fast float %3948, %3107
  %3950 = fmul fast float %3949, %3885
  %3951 = fadd fast float %3950, %3107
  %3952 = fmul fast float %3888, %3699
  %3953 = fmul fast float %3888, %3700
  %3954 = fmul fast float %3888, %3701
  %3955 = fadd fast float %3952, %3103
  %3956 = fadd fast float %3953, %3104
  %3957 = fadd fast float %3954, %3105
  %3958 = fmul fast float %3891, %3727
  %3959 = fadd fast float %3958, %3109
  br label %3982

; <label>:3960                                    ; preds = %3918
  %3961 = icmp eq i32 %3874, 8
  br i1 %3961, label %3962, label %3982

; <label>:3962                                    ; preds = %3960
  %3963 = fmul fast float %3879, %3594
  %3964 = fmul fast float %3879, %3595
  %3965 = fadd fast float %3963, %3095
  %3966 = fadd fast float %3964, %3096
  %3967 = call float @dx.op.binary.f32(i32 36, float %3108, float %3596)  ; FMin(a,b)
  %3968 = fsub fast float %3967, %3108
  %3969 = fmul fast float %3968, %3882
  %3970 = fadd fast float %3969, %3108
  %3971 = fsub fast float %3593, %3107
  %3972 = fmul fast float %3885, %3971
  %3973 = fadd fast float %3972, %3107
  %3974 = fmul fast float %3888, %3699
  %3975 = fmul fast float %3888, %3700
  %3976 = fmul fast float %3888, %3701
  %3977 = fadd fast float %3974, %3103
  %3978 = fadd fast float %3975, %3104
  %3979 = fadd fast float %3976, %3105
  %3980 = fmul fast float %3891, %3727
  %3981 = fadd fast float %3980, %3109
  br label %3982

; <label>:3982                                    ; preds = %3962, %3960, %3920, %3893, %3865, %3292, %3111, %3094
  %3983 = phi float [ %3095, %3865 ], [ %3095, %3292 ], [ %3095, %3094 ], [ %3095, %3111 ], [ %3898, %3893 ], [ %3923, %3920 ], [ %3095, %3960 ], [ %3965, %3962 ]
  %3984 = phi float [ %3096, %3865 ], [ %3096, %3292 ], [ %3096, %3094 ], [ %3096, %3111 ], [ %3899, %3893 ], [ %3924, %3920 ], [ %3096, %3960 ], [ %3966, %3962 ]
  %3985 = phi float [ %3866, %3865 ], [ %3097, %3292 ], [ %3097, %3094 ], [ %3097, %3111 ], [ %3866, %3893 ], [ %3866, %3920 ], [ %3866, %3960 ], [ %3866, %3962 ]
  %3986 = phi float [ %3867, %3865 ], [ %3098, %3292 ], [ %3098, %3094 ], [ %3098, %3111 ], [ %3867, %3893 ], [ %3867, %3920 ], [ %3867, %3960 ], [ %3867, %3962 ]
  %3987 = phi float [ %3868, %3865 ], [ %3099, %3292 ], [ %3099, %3094 ], [ %3099, %3111 ], [ %3868, %3893 ], [ %3868, %3920 ], [ %3868, %3960 ], [ %3868, %3962 ]
  %3988 = phi float [ %3869, %3865 ], [ %3100, %3292 ], [ %3100, %3094 ], [ %3100, %3111 ], [ %3869, %3893 ], [ %3869, %3920 ], [ %3869, %3960 ], [ %3869, %3962 ]
  %3989 = phi float [ %3870, %3865 ], [ %3101, %3292 ], [ %3101, %3094 ], [ %3101, %3111 ], [ %3870, %3893 ], [ %3870, %3920 ], [ %3870, %3960 ], [ %3870, %3962 ]
  %3990 = phi float [ %3871, %3865 ], [ %3102, %3292 ], [ %3102, %3094 ], [ %3102, %3111 ], [ %3871, %3893 ], [ %3871, %3920 ], [ %3871, %3960 ], [ %3871, %3962 ]
  %3991 = phi float [ %3103, %3865 ], [ %3103, %3292 ], [ %3103, %3094 ], [ %3103, %3111 ], [ %3912, %3893 ], [ %3955, %3920 ], [ %3103, %3960 ], [ %3977, %3962 ]
  %3992 = phi float [ %3104, %3865 ], [ %3104, %3292 ], [ %3104, %3094 ], [ %3104, %3111 ], [ %3913, %3893 ], [ %3956, %3920 ], [ %3104, %3960 ], [ %3978, %3962 ]
  %3993 = phi float [ %3105, %3865 ], [ %3105, %3292 ], [ %3105, %3094 ], [ %3105, %3111 ], [ %3914, %3893 ], [ %3957, %3920 ], [ %3105, %3960 ], [ %3979, %3962 ]
  %3994 = phi float [ %3872, %3865 ], [ %3106, %3292 ], [ %3106, %3094 ], [ %3106, %3111 ], [ %3872, %3893 ], [ %3872, %3920 ], [ %3872, %3960 ], [ %3872, %3962 ]
  %3995 = phi float [ %3107, %3865 ], [ %3107, %3292 ], [ %3107, %3094 ], [ %3107, %3111 ], [ %3905, %3893 ], [ %3951, %3920 ], [ %3107, %3960 ], [ %3973, %3962 ]
  %3996 = phi float [ %3108, %3865 ], [ %3108, %3292 ], [ %3108, %3094 ], [ %3108, %3111 ], [ %3902, %3893 ], [ %3928, %3920 ], [ %3108, %3960 ], [ %3970, %3962 ]
  %3997 = phi float [ %3109, %3865 ], [ %3109, %3292 ], [ %3109, %3094 ], [ %3109, %3111 ], [ %3917, %3893 ], [ %3959, %3920 ], [ %3109, %3960 ], [ %3981, %3962 ]
  %3998 = phi float [ %3873, %3865 ], [ %3110, %3292 ], [ %3110, %3094 ], [ %3110, %3111 ], [ %3873, %3893 ], [ %3873, %3920 ], [ %3873, %3960 ], [ %3873, %3962 ]
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = call float @dx.op.dot2.f32(i32 54, float %3983, float %3984, float %3983, float %3984)  ; Dot2(ax,ay,bx,by)
  %4002 = fmul fast float %4001, 0x3FE3333340000000
  %4003 = fsub fast float 1.000000e+00, %4002
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %4003, float %3983, float %3984, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %4005, %3983
  %4007 = fmul fast float %4005, %3984
  %4008 = fmul fast float %4003, %4005
  %4009 = fmul fast float %4008, %113
  %4010 = fmul fast float %4008, %114
  %4011 = fmul fast float %4008, %115
  %4012 = fmul fast float %4006, %81
  %4013 = fmul fast float %4006, %82
  %4014 = fmul fast float %4006, %83
  %4015 = fadd fast float %4009, %4012
  %4016 = fadd fast float %4010, %4013
  %4017 = fadd fast float %4011, %4014
  %4018 = fmul fast float %125, %4007
  %4019 = fmul fast float %126, %4007
  %4020 = fmul fast float %127, %4007
  %4021 = fadd fast float %4015, %4018
  %4022 = fadd fast float %4016, %4019
  %4023 = fadd fast float %4017, %4020
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4021, float %4022, float %4023, float %4021, float %4022, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4021, %4025
  %4027 = fmul fast float %4022, %4025
  %4028 = fmul fast float %4023, %4025
  %4029 = icmp eq i32 %57, 65535
  br i1 %4029, label %4575, label %4030

; <label>:4030                                    ; preds = %3982
  %4031 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %4032 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %4033 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4034 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %4035 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %4036 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4037 = fadd fast float %4031, %58
  %4038 = fadd fast float %4032, %59
  %4039 = fadd fast float %4033, %60
  %4040 = fadd fast float %4034, %58
  %4041 = fadd fast float %4035, %59
  %4042 = fadd fast float %4036, %60
  %4043 = mul i32 %57, 48
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = add i32 %4043, 16
  %4049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.ResRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %4049, 2
  %4053 = add i32 %4043, 32
  %4054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.ResRet.f32 %4054, 2
  %4058 = extractvalue %dx.types.ResRet.f32 %4054, 3
  %4059 = bitcast float %4058 to i32
  %4060 = fmul fast float %4045, %58
  %4061 = fmul fast float %4046, %59
  %4062 = fmul fast float %4047, %60
  %4063 = fsub fast float %4060, %4050
  %4064 = fsub fast float %4061, %4051
  %4065 = fsub fast float %4062, %4052
  %4066 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4067 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4068 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4069 = fmul fast float %4066, %4055
  %4070 = fmul fast float %4067, %4056
  %4071 = fmul fast float %4068, %4057
  %4072 = fadd fast float %4055, -1.000000e+00
  %4073 = fadd fast float %4056, -1.000000e+00
  %4074 = fadd fast float %4057, -1.000000e+00
  %4075 = call float @dx.op.unary.f32(i32 27, float %4069)  ; Round_ni(value)
  %4076 = call float @dx.op.unary.f32(i32 27, float %4070)  ; Round_ni(value)
  %4077 = call float @dx.op.unary.f32(i32 27, float %4071)  ; Round_ni(value)
  %4078 = call float @dx.op.binary.f32(i32 36, float %4075, float %4072)  ; FMin(a,b)
  %4079 = call float @dx.op.binary.f32(i32 36, float %4076, float %4073)  ; FMin(a,b)
  %4080 = call float @dx.op.binary.f32(i32 36, float %4077, float %4074)  ; FMin(a,b)
  %4081 = fmul fast float %4080, %4056
  %4082 = fadd fast float %4081, %4079
  %4083 = fmul fast float %4082, %4055
  %4084 = fadd fast float %4083, %4078
  %4085 = fptosi float %4084 to i32
  %4086 = add nsw i32 %4085, %4059
  %4087 = shl nsw i32 %4086, 2
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = lshr i32 %4089, 16
  %4091 = icmp eq i32 %4090, 0
  br i1 %4091, label %4541, label %4092

; <label>:4092                                    ; preds = %4030
  br label %4093

; <label>:4093                                    ; preds = %4217, %4092
  %4094 = phi i32 [ %4119, %4217 ], [ %4090, %4092 ]
  %4095 = phi float [ %4218, %4217 ], [ 0.000000e+00, %4092 ]
  %4096 = phi float [ %4219, %4217 ], [ %4000, %4092 ]
  %4097 = phi float [ %4220, %4217 ], [ %3998, %4092 ]
  %4098 = phi float [ %4221, %4217 ], [ %3991, %4092 ]
  %4099 = phi float [ %4222, %4217 ], [ %3992, %4092 ]
  %4100 = phi float [ %4223, %4217 ], [ %3993, %4092 ]
  %4101 = phi float [ %4224, %4217 ], [ 0.000000e+00, %4092 ]
  %4102 = phi float [ %4225, %4217 ], [ 0.000000e+00, %4092 ]
  %4103 = phi float [ %4226, %4217 ], [ %3988, %4092 ]
  %4104 = phi float [ %4227, %4217 ], [ %3989, %4092 ]
  %4105 = phi float [ %4228, %4217 ], [ %3990, %4092 ]
  %4106 = phi float [ %4229, %4217 ], [ %4026, %4092 ]
  %4107 = phi float [ %4230, %4217 ], [ %4027, %4092 ]
  %4108 = phi float [ %4231, %4217 ], [ %4028, %4092 ]
  %4109 = phi float [ %4232, %4217 ], [ %3996, %4092 ]
  %4110 = phi float [ %4233, %4217 ], [ %3995, %4092 ]
  %4111 = phi float [ %4234, %4217 ], [ 0.000000e+00, %4092 ]
  %4112 = phi float [ %4235, %4217 ], [ %3994, %4092 ]
  %4113 = phi float [ %4236, %4217 ], [ %3985, %4092 ]
  %4114 = phi float [ %4237, %4217 ], [ %3986, %4092 ]
  %4115 = phi float [ %4238, %4217 ], [ %3987, %4092 ]
  %4116 = shl nuw nsw i32 %4094, 2
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = lshr i32 %4118, 16
  %4120 = shl i32 %4118, 8
  %4121 = and i32 %4120, 16776960
  %4122 = or i32 %4121, 48
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4127 = or i32 %4121, 64
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.i32 %4128, 1
  %4131 = or i32 %4121, 80
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 3
  %4135 = or i32 %4121, 96
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = extractvalue %dx.types.ResRet.f32 %4136, 3
  %4141 = or i32 %4121, 112
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4144 = or i32 %4121, 128
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = or i32 %4121, 144
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = or i32 %4121, 160
  %4157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = extractvalue %dx.types.ResRet.f32 %4157, 3
  %4162 = or i32 %4121, 192
  %4163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.i32 %4163, 0
  %4165 = or i32 %4121, 208
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = or i32 %4121, 248
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = call float @dx.op.dot4.f32(i32 56, float %4173, float %4174, float %4175, float %4176, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4178 = or i32 %4121, 16
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = call float @dx.op.dot4.f32(i32 56, float %4180, float %4181, float %4182, float %4183, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4185 = or i32 %4121, 32
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.ResRet.f32 %4186, 3
  %4191 = call float @dx.op.dot4.f32(i32 56, float %4187, float %4188, float %4189, float %4190, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4192 = call float @dx.op.unary.f32(i32 27, float %4177)  ; Round_ni(value)
  %4193 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4194 = call float @dx.op.unary.f32(i32 27, float %4184)  ; Round_ni(value)
  %4195 = call float @dx.op.unary.f32(i32 6, float %4194)  ; FAbs(value)
  %4196 = call float @dx.op.unary.f32(i32 6, float %4191)  ; FAbs(value)
  %4197 = call float @dx.op.unary.f32(i32 27, float %4196)  ; Round_ni(value)
  %4198 = fadd fast float %4195, %4193
  %4199 = fadd fast float %4198, %4197
  %4200 = fcmp fast oeq float %4199, 0.000000e+00
  %4201 = call float @dx.op.dot4.f32(i32 56, float %4173, float %4174, float %4175, float %4176, float %4037, float %4038, float %4039, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4202 = call float @dx.op.dot4.f32(i32 56, float %4180, float %4181, float %4182, float %4183, float %4037, float %4038, float %4039, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4203 = call float @dx.op.dot4.f32(i32 56, float %4173, float %4174, float %4175, float %4176, float %4040, float %4041, float %4042, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4204 = call float @dx.op.dot4.f32(i32 56, float %4180, float %4181, float %4182, float %4183, float %4040, float %4041, float %4042, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4205 = fsub fast float %4201, %4177
  %4206 = fsub fast float %4203, %4177
  %4207 = fsub fast float %4202, %4184
  %4208 = fsub fast float %4204, %4184
  %4209 = call float @dx.op.dot3.f32(i32 55, float %4124, float %4125, float %4126, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4212 = fadd fast float %4211, %4209
  %4213 = call float @dx.op.unary.f32(i32 7, float %4212)  ; Saturate(value)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4215 = fcmp fast ogt float %4213, %4214
  %4216 = and i1 %4200, %4215
  br i1 %4216, label %4240, label %4217

; <label>:4217                                    ; preds = %4527, %4323, %4240, %4093
  %4218 = phi float [ %4095, %4240 ], [ %4326, %4323 ], [ %4326, %4527 ], [ %4095, %4093 ]
  %4219 = phi float [ %4096, %4240 ], [ %4096, %4323 ], [ %4503, %4527 ], [ %4096, %4093 ]
  %4220 = phi float [ %4097, %4240 ], [ %4097, %4323 ], [ %4501, %4527 ], [ %4097, %4093 ]
  %4221 = phi float [ %4098, %4240 ], [ %4098, %4323 ], [ %4479, %4527 ], [ %4098, %4093 ]
  %4222 = phi float [ %4099, %4240 ], [ %4099, %4323 ], [ %4480, %4527 ], [ %4099, %4093 ]
  %4223 = phi float [ %4100, %4240 ], [ %4100, %4323 ], [ %4481, %4527 ], [ %4100, %4093 ]
  %4224 = phi float [ %4101, %4240 ], [ %4101, %4323 ], [ %4450, %4527 ], [ %4101, %4093 ]
  %4225 = phi float [ %4102, %4240 ], [ %4102, %4323 ], [ %4448, %4527 ], [ %4102, %4093 ]
  %4226 = phi float [ %4103, %4240 ], [ %4103, %4323 ], [ %4537, %4527 ], [ %4103, %4093 ]
  %4227 = phi float [ %4104, %4240 ], [ %4104, %4323 ], [ %4538, %4527 ], [ %4104, %4093 ]
  %4228 = phi float [ %4105, %4240 ], [ %4105, %4323 ], [ %4539, %4527 ], [ %4105, %4093 ]
  %4229 = phi float [ %4106, %4240 ], [ %4106, %4323 ], [ %4429, %4527 ], [ %4106, %4093 ]
  %4230 = phi float [ %4107, %4240 ], [ %4107, %4323 ], [ %4430, %4527 ], [ %4107, %4093 ]
  %4231 = phi float [ %4108, %4240 ], [ %4108, %4323 ], [ %4431, %4527 ], [ %4108, %4093 ]
  %4232 = phi float [ %4109, %4240 ], [ %4109, %4323 ], [ %4459, %4527 ], [ %4109, %4093 ]
  %4233 = phi float [ %4110, %4240 ], [ %4110, %4323 ], [ %4456, %4527 ], [ %4110, %4093 ]
  %4234 = phi float [ %4111, %4240 ], [ %4111, %4323 ], [ %4453, %4527 ], [ %4111, %4093 ]
  %4235 = phi float [ %4112, %4240 ], [ %4112, %4323 ], [ %4446, %4527 ], [ %4112, %4093 ]
  %4236 = phi float [ %4113, %4240 ], [ %4113, %4323 ], [ %4441, %4527 ], [ %4113, %4093 ]
  %4237 = phi float [ %4114, %4240 ], [ %4114, %4323 ], [ %4442, %4527 ], [ %4114, %4093 ]
  %4238 = phi float [ %4115, %4240 ], [ %4115, %4323 ], [ %4443, %4527 ], [ %4115, %4093 ]
  %4239 = icmp eq i32 %4119, 0
  br i1 %4239, label %4540, label %4093

; <label>:4240                                    ; preds = %4093
  %4241 = extractvalue %dx.types.ResRet.f32 %4123, 3
  %4242 = extractvalue %dx.types.ResRet.f32 %4142, 3
  %4243 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4245 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4246 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4247 = extractvalue %dx.types.ResRet.i32 %4128, 3
  %4248 = extractvalue %dx.types.ResRet.i32 %4128, 2
  %4249 = bitcast float %4241 to i32
  %4250 = add i32 %4247, 0
  %4251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4251, %dx.types.Handle %4252, float %4177, float %4184, float undef, float undef, i32 0, i32 0, i32 undef, float %4205, float %4207, float undef, float %4206, float %4208, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = fmul fast float %4254, %4246
  %4256 = fadd fast float %4255, %4245
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = fmul fast float %4177, %4137
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4184, float %4258)  ; FMad(a,b,c)
  %4260 = fadd fast float %4259, %4244
  %4261 = fmul fast float %4177, %4139
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4184, float %4261)  ; FMad(a,b,c)
  %4263 = fadd fast float %4262, %4243
  %4264 = fmul fast float %4205, %4137
  %4265 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4207, float %4264)  ; FMad(a,b,c)
  %4266 = fmul fast float %4205, %4139
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4207, float %4266)  ; FMad(a,b,c)
  %4268 = fmul fast float %4206, %4137
  %4269 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4208, float %4268)  ; FMad(a,b,c)
  %4270 = fmul fast float %4206, %4139
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4208, float %4270)  ; FMad(a,b,c)
  %4272 = add i32 %4248, 0
  %4273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4272, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4273, %dx.types.Handle %4252, float %4260, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float %4265, float %4267, float undef, float %4269, float %4271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = and i32 %4249, 1024
  %4277 = icmp ne i32 %4276, 0
  %4278 = fcmp fast ogt float %4275, 0x3FE0101020000000
  %4279 = uitofp i1 %4278 to float
  %4280 = select i1 %4277, float %4279, float %4275
  %4281 = and i32 %4249, 8192
  %4282 = icmp ne i32 %4281, 0
  %4283 = select i1 %4282, float %4242, float 1.000000e+00
  %4284 = fmul fast float %4177, 2.000000e+00
  %4285 = fadd fast float %4284, -1.000000e+00
  %4286 = call float @dx.op.unary.f32(i32 6, float %4285)  ; FAbs(value)
  %4287 = fmul fast float %4286, %4170
  %4288 = fsub fast float %4287, %4170
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = fmul fast float %4184, 2.000000e+00
  %4291 = fadd fast float %4290, -1.000000e+00
  %4292 = call float @dx.op.unary.f32(i32 6, float %4291)  ; FAbs(value)
  %4293 = fmul fast float %4292, %4171
  %4294 = fsub fast float %4293, %4171
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fmul fast float %4196, %4133
  %4297 = fsub fast float %4296, %4133
  %4298 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4299 = fmul fast float %4257, %4283
  %4300 = fmul fast float %4299, %4254
  %4301 = fmul fast float %4300, %4289
  %4302 = fmul fast float %4301, %4280
  %4303 = fmul fast float %4302, %4295
  %4304 = fmul fast float %4303, %4298
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4308 = fsub fast float %4213, %4307
  %4309 = fmul fast float %4308, %4306
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fmul fast float %4304, %4134
  %4312 = fadd fast float %4304, %4134
  %4313 = fmul fast float %4312, %4143
  %4314 = fsub fast float %4313, %4143
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = and i32 %4249, 128
  %4317 = icmp ne i32 %4316, 0
  %4318 = select i1 %4317, float %4315, float %4311
  %4319 = fmul fast float %4318, %4310
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = fcmp fast ugt float %4319, %4321
  br i1 %4322, label %4323, label %4217

; <label>:4323                                    ; preds = %4240
  %4324 = select i1 %4282, float %4319, float 0.000000e+00
  %4325 = fadd fast float %4324, %4095
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  br i1 %4282, label %4217, label %4327

; <label>:4327                                    ; preds = %4323
  %4328 = and i32 %4249, 4
  %4329 = and i32 %4249, 8
  %4330 = add i32 %4129, 0
  %4331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4330, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4331, %dx.types.Handle %4332, float %4260, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float %4265, float %4267, float undef, float %4269, float %4271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = extractvalue %dx.types.ResRet.f32 %4333, 3
  %4338 = bitcast float %4155 to i32
  %4339 = and i32 %4338, 255
  %4340 = uitofp i32 %4339 to float
  %4341 = lshr i32 %4338, 8
  %4342 = and i32 %4341, 255
  %4343 = uitofp i32 %4342 to float
  %4344 = fmul fast float %4337, %4340
  %4345 = fadd fast float %4344, %4343
  %4346 = fmul fast float %4345, 0x3F70101000000000
  %4347 = add i32 %4130, 0
  %4348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4348, %dx.types.Handle %4332, float %4260, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float %4265, float %4267, float undef, float %4269, float %4271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.ResRet.f32 %4349, 3
  %4354 = bitcast float %4149 to i32
  %4355 = and i32 %4354, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = lshr i32 %4354, 8
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = lshr i32 %4354, 16
  %4361 = and i32 %4360, 255
  %4362 = uitofp i32 %4361 to float
  %4363 = fmul fast float %4362, 0x3F70101000000000
  %4364 = fmul fast float %4350, %4356
  %4365 = fadd fast float %4364, %4359
  %4366 = fmul fast float %4365, 0x3F70101000000000
  %4367 = fadd fast float %4351, -5.000000e-01
  %4368 = fadd fast float %4353, -5.000000e-01
  %4369 = fmul fast float %4367, %4363
  %4370 = fmul fast float %4368, %4363
  %4371 = fadd fast float %4369, 5.000000e-01
  %4372 = fadd fast float %4370, 5.000000e-01
  %4373 = fmul fast float %4334, %4158
  %4374 = fmul fast float %4335, %4159
  %4375 = fmul fast float %4336, %4160
  %4376 = fmul fast float %4371, 2.000000e+00
  %4377 = fadd fast float %4376, -1.000000e+00
  %4378 = fmul fast float %4372, 2.000000e+00
  %4379 = fadd fast float %4378, -1.000000e+00
  %4380 = fadd fast float %4377, %4379
  %4381 = fmul fast float %4380, 5.000000e-01
  %4382 = fsub fast float %4377, %4379
  %4383 = fmul fast float %4382, 5.000000e-01
  %4384 = call float @dx.op.unary.f32(i32 6, float %4381)  ; FAbs(value)
  %4385 = fsub fast float 1.000000e+00, %4384
  %4386 = call float @dx.op.unary.f32(i32 6, float %4383)  ; FAbs(value)
  %4387 = fsub fast float %4385, %4386
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4381, float %4383, float %4387, float %4381, float %4383, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 25, float %4388)  ; Rsqrt(value)
  %4390 = fmul fast float %4381, %4389
  %4391 = fmul fast float %4383, %4389
  %4392 = fmul fast float %4389, %4387
  %4393 = fmul fast float %4392, %4124
  %4394 = fmul fast float %4392, %4125
  %4395 = fmul fast float %4392, %4126
  %4396 = fmul fast float %4390, %4146
  %4397 = fmul fast float %4390, %4147
  %4398 = fmul fast float %4390, %4148
  %4399 = fadd fast float %4396, %4393
  %4400 = fadd fast float %4397, %4394
  %4401 = fadd fast float %4398, %4395
  %4402 = fmul fast float %4391, %4152
  %4403 = fmul fast float %4391, %4153
  %4404 = fmul fast float %4391, %4154
  %4405 = fadd fast float %4399, %4402
  %4406 = fadd fast float %4400, %4403
  %4407 = fadd fast float %4401, %4404
  %4408 = call float @dx.op.dot3.f32(i32 55, float %4405, float %4406, float %4407, float %4405, float %4406, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = call float @dx.op.unary.f32(i32 25, float %4408)  ; Rsqrt(value)
  %4410 = fmul fast float %4405, %4409
  %4411 = fmul fast float %4406, %4409
  %4412 = fmul fast float %4407, %4409
  %4413 = icmp ne i32 %4329, 0
  %4414 = select i1 %4413, float 1.000000e+00, float 0.000000e+00
  %4415 = fmul fast float %4319, %4414
  %4416 = and i32 %4249, 1
  %4417 = icmp eq i32 %4416, 0
  br i1 %4417, label %4418, label %4422

; <label>:4418                                    ; preds = %4327
  %4419 = fsub fast float %4410, %4106
  %4420 = fsub fast float %4411, %4107
  %4421 = fsub fast float %4412, %4108
  br label %4422

; <label>:4422                                    ; preds = %4418, %4327
  %4423 = phi float [ %4419, %4418 ], [ %4410, %4327 ]
  %4424 = phi float [ %4420, %4418 ], [ %4411, %4327 ]
  %4425 = phi float [ %4421, %4418 ], [ %4412, %4327 ]
  %4426 = fmul float %4425, %4415
  %4427 = fmul float %4424, %4415
  %4428 = fmul float %4423, %4415
  %4429 = fadd fast float %4428, %4106
  %4430 = fadd fast float %4427, %4107
  %4431 = fadd fast float %4426, %4108
  %4432 = icmp ne i32 %4328, 0
  %4433 = select i1 %4432, float 1.000000e+00, float 0.000000e+00
  %4434 = fmul fast float %4319, %4433
  %4435 = fsub fast float %4373, %4113
  %4436 = fsub fast float %4374, %4114
  %4437 = fsub fast float %4375, %4115
  %4438 = fmul fast float %4435, %4434
  %4439 = fmul fast float %4436, %4434
  %4440 = fmul fast float %4437, %4434
  %4441 = fadd fast float %4438, %4113
  %4442 = fadd fast float %4439, %4114
  %4443 = fadd fast float %4440, %4115
  %4444 = fsub fast float %4346, %4112
  %4445 = fmul fast float %4444, %4434
  %4446 = fadd fast float %4445, %4112
  %4447 = fmul fast float %4434, %4102
  %4448 = fsub fast float %4102, %4447
  %4449 = fmul fast float %4434, %4101
  %4450 = fsub fast float %4101, %4449
  %4451 = bitcast float %4167 to i32
  %4452 = fadd fast float %4319, %4111
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = fsub fast float %4366, %4110
  %4455 = fmul fast float %4454, %4415
  %4456 = fadd fast float %4455, %4110
  %4457 = fsub fast float %4352, %4109
  %4458 = fmul fast float %4457, %4415
  %4459 = fadd fast float %4458, %4109
  br i1 %4417, label %4468, label %4460

; <label>:4460                                    ; preds = %4422
  %4461 = and i32 %4249, 32768
  %4462 = icmp eq i32 %4461, 0
  br i1 %4462, label %4478, label %4463

; <label>:4463                                    ; preds = %4460
  %4464 = fmul fast float %4415, 1.270000e+02
  %4465 = fadd fast float %4464, %4098
  %4466 = fadd fast float %4464, %4099
  %4467 = fadd fast float %4464, %4100
  br label %4478

; <label>:4468                                    ; preds = %4422
  %4469 = fsub fast float 1.270000e+02, %4098
  %4470 = fsub fast float 1.270000e+02, %4099
  %4471 = fsub fast float 1.270000e+02, %4100
  %4472 = fmul fast float %4415, %4469
  %4473 = fmul fast float %4415, %4470
  %4474 = fmul fast float %4415, %4471
  %4475 = fadd fast float %4472, %4098
  %4476 = fadd fast float %4473, %4099
  %4477 = fadd fast float %4474, %4100
  br label %4478

; <label>:4478                                    ; preds = %4468, %4463, %4460
  %4479 = phi float [ %4465, %4463 ], [ %4098, %4460 ], [ %4475, %4468 ]
  %4480 = phi float [ %4466, %4463 ], [ %4099, %4460 ], [ %4476, %4468 ]
  %4481 = phi float [ %4467, %4463 ], [ %4100, %4460 ], [ %4477, %4468 ]
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4374, float %4375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4486 = fmul fast float %4485, %4482
  %4487 = fadd fast float %4486, %4484
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = bitcast float %4161 to i32
  %4490 = and i32 %4489, 65535
  %4491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4490)  ; LegacyF16ToF32(value)
  %4492 = lshr i32 %4489, 16
  %4493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4492)  ; LegacyF16ToF32(value)
  %4494 = fcmp fast oge float %4491, 0.000000e+00
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = select i1 %4494, float %4491, float %4496
  %4498 = fadd fast float %4497, %4493
  %4499 = fsub fast float %4488, %4097
  %4500 = fmul fast float %4499, %4319
  %4501 = fadd fast float %4500, %4097
  %4502 = fmul fast float %4498, %4319
  %4503 = call float @dx.op.binary.f32(i32 35, float %4096, float %4502)  ; FMax(a,b)
  %4504 = and i32 %4249, 16
  %4505 = icmp eq i32 %4504, 0
  br i1 %4505, label %4527, label %4506

; <label>:4506                                    ; preds = %4478
  %4507 = add i32 %4164, 0
  %4508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4507, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4508, %dx.types.Handle %4332, float %4260, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float %4265, float %4267, float undef, float %4269, float %4271, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = and i32 %4451, 65535
  %4514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4513)  ; LegacyF16ToF32(value)
  %4515 = fmul fast float %4510, %4158
  %4516 = fmul fast float %4511, %4159
  %4517 = fmul fast float %4512, %4160
  %4518 = and i32 %4249, 16384
  %4519 = icmp ne i32 %4518, 0
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = select i1 %4519, float %4521, float 1.000000e+00
  %4523 = fmul fast float %4522, %4514
  %4524 = fmul fast float %4515, %4523
  %4525 = fmul fast float %4516, %4523
  %4526 = fmul fast float %4517, %4523
  br label %4527

; <label>:4527                                    ; preds = %4506, %4478
  %4528 = phi float [ %4524, %4506 ], [ 0.000000e+00, %4478 ]
  %4529 = phi float [ %4525, %4506 ], [ 0.000000e+00, %4478 ]
  %4530 = phi float [ %4526, %4506 ], [ 0.000000e+00, %4478 ]
  %4531 = fsub fast float %4528, %4103
  %4532 = fsub fast float %4529, %4104
  %4533 = fsub fast float %4530, %4105
  %4534 = fmul fast float %4531, %4319
  %4535 = fmul fast float %4532, %4319
  %4536 = fmul fast float %4533, %4319
  %4537 = fadd fast float %4534, %4103
  %4538 = fadd fast float %4535, %4104
  %4539 = fadd fast float %4536, %4105
  br label %4217

; <label>:4540                                    ; preds = %4217
  br label %4541

; <label>:4541                                    ; preds = %4540, %4030
  %4542 = phi float [ 0.000000e+00, %4030 ], [ %4218, %4540 ]
  %4543 = phi float [ %4000, %4030 ], [ %4219, %4540 ]
  %4544 = phi float [ %3998, %4030 ], [ %4220, %4540 ]
  %4545 = phi float [ %3991, %4030 ], [ %4221, %4540 ]
  %4546 = phi float [ %3992, %4030 ], [ %4222, %4540 ]
  %4547 = phi float [ %3993, %4030 ], [ %4223, %4540 ]
  %4548 = phi float [ 0.000000e+00, %4030 ], [ %4224, %4540 ]
  %4549 = phi float [ 0.000000e+00, %4030 ], [ %4225, %4540 ]
  %4550 = phi float [ %3988, %4030 ], [ %4226, %4540 ]
  %4551 = phi float [ %3989, %4030 ], [ %4227, %4540 ]
  %4552 = phi float [ %3990, %4030 ], [ %4228, %4540 ]
  %4553 = phi float [ %4026, %4030 ], [ %4229, %4540 ]
  %4554 = phi float [ %4027, %4030 ], [ %4230, %4540 ]
  %4555 = phi float [ %4028, %4030 ], [ %4231, %4540 ]
  %4556 = phi float [ %3996, %4030 ], [ %4232, %4540 ]
  %4557 = phi float [ %3995, %4030 ], [ %4233, %4540 ]
  %4558 = phi float [ 0.000000e+00, %4030 ], [ %4234, %4540 ]
  %4559 = phi float [ %3994, %4030 ], [ %4235, %4540 ]
  %4560 = phi float [ %3985, %4030 ], [ %4236, %4540 ]
  %4561 = phi float [ %3986, %4030 ], [ %4237, %4540 ]
  %4562 = phi float [ %3987, %4030 ], [ %4238, %4540 ]
  %4563 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4554, float %4555, float %4553, float %4554, float %4555)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = call float @dx.op.unary.f32(i32 25, float %4563)  ; Rsqrt(value)
  %4565 = fmul fast float %4564, %4553
  %4566 = fmul fast float %4564, %4554
  %4567 = fmul fast float %4564, %4555
  %4568 = fadd fast float %4558, %1330
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = call float @dx.op.unary.f32(i32 25, float %4570)  ; Rsqrt(value)
  %4572 = fmul fast float %4571, %4565
  %4573 = fmul fast float %4571, %4566
  %4574 = fmul fast float %4571, %4567
  br label %4575

; <label>:4575                                    ; preds = %4541, %3982
  %4576 = phi float [ %4572, %4541 ], [ %4026, %3982 ]
  %4577 = phi float [ %4573, %4541 ], [ %4027, %3982 ]
  %4578 = phi float [ %4574, %4541 ], [ %4028, %3982 ]
  %4579 = phi float [ %4560, %4541 ], [ %3985, %3982 ]
  %4580 = phi float [ %4561, %4541 ], [ %3986, %3982 ]
  %4581 = phi float [ %4562, %4541 ], [ %3987, %3982 ]
  %4582 = phi float [ %4550, %4541 ], [ %3988, %3982 ]
  %4583 = phi float [ %4551, %4541 ], [ %3989, %3982 ]
  %4584 = phi float [ %4552, %4541 ], [ %3990, %3982 ]
  %4585 = phi float [ %4545, %4541 ], [ %3991, %3982 ]
  %4586 = phi float [ %4546, %4541 ], [ %3992, %3982 ]
  %4587 = phi float [ %4547, %4541 ], [ %3993, %3982 ]
  %4588 = phi float [ %4559, %4541 ], [ %3994, %3982 ]
  %4589 = phi float [ %4569, %4541 ], [ %1330, %3982 ]
  %4590 = phi float [ %4557, %4541 ], [ %3995, %3982 ]
  %4591 = phi float [ %4556, %4541 ], [ %3996, %3982 ]
  %4592 = phi float [ %4549, %4541 ], [ 0.000000e+00, %3982 ]
  %4593 = phi float [ %4548, %4541 ], [ 0.000000e+00, %3982 ]
  %4594 = phi float [ %4542, %4541 ], [ 0.000000e+00, %3982 ]
  %4595 = phi float [ %4543, %4541 ], [ %4000, %3982 ]
  %4596 = phi float [ %4544, %4541 ], [ %3998, %3982 ]
  %4597 = fadd fast float %4588, 0xBFB99999A0000000
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = fmul fast float %4598, 0x3FF1C71C80000000
  %4600 = call float @dx.op.binary.f32(i32 36, float %4588, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4601 = fsub fast float 1.000000e+00, %4599
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fmul fast float %4602, %4579
  %4604 = fmul fast float %4602, %4580
  %4605 = fmul fast float %4602, %4581
  %4606 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = fmul fast float %4599, %4579
  %4610 = fmul fast float %4599, %4580
  %4611 = fmul fast float %4599, %4581
  %4612 = fadd fast float %4609, %4600
  %4613 = fadd fast float %4610, %4600
  %4614 = fadd fast float %4611, %4600
  %4615 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4619 = call float @dx.op.binary.f32(i32 36, float %4585, float 1.270000e+02)  ; FMin(a,b)
  %4620 = call float @dx.op.binary.f32(i32 36, float %4586, float 1.270000e+02)  ; FMin(a,b)
  %4621 = call float @dx.op.binary.f32(i32 36, float %4587, float 1.270000e+02)  ; FMin(a,b)
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 3
  %4624 = and i32 %4623, 8
  %4625 = icmp ne i32 %4624, 0
  %4626 = call float @dx.op.binary.f32(i32 35, float %4606, float %4579)  ; FMax(a,b)
  %4627 = call float @dx.op.binary.f32(i32 35, float %4607, float %4579)  ; FMax(a,b)
  %4628 = call float @dx.op.binary.f32(i32 35, float %4608, float %4579)  ; FMax(a,b)
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = select i1 %252, float %4579, float %4606
  %4631 = select i1 %252, float %4629, float %4607
  %4632 = select i1 %252, float 1.000000e+00, float %4608
  %4633 = select i1 %4625, float %4626, float %4630
  %4634 = select i1 %4625, float %4627, float %4631
  %4635 = select i1 %4625, float %4628, float %4632
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4640 = fadd fast float %4637, %193
  %4641 = fadd fast float %4638, %194
  %4642 = fadd fast float %4639, %195
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = fsub fast float %4640, %4644
  %4647 = fsub fast float %4641, %4645
  %4648 = fmul fast float %4646, %4646
  %4649 = fmul fast float %4647, %4647
  %4650 = fadd fast float %4648, %4649
  %4651 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4653 = fcmp fast olt float %4651, %4652
  br i1 %4653, label %4654, label %4721

; <label>:4654                                    ; preds = %4575
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 0
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4662 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4663 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4665 = extractvalue %dx.types.CBufRet.f32 %4657, 3
  %4666 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4667 = fadd fast float %4664, %4640
  %4668 = fadd fast float %4665, %4641
  %4669 = fadd fast float %4666, %4642
  %4670 = fmul fast float %4667, %4656
  %4671 = call float @dx.op.tertiary.f32(i32 46, float %4668, float %4658, float %4670)  ; FMad(a,b,c)
  %4672 = call float @dx.op.tertiary.f32(i32 46, float %4669, float %4660, float %4671)  ; FMad(a,b,c)
  %4673 = fmul fast float %4667, %4661
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4668, float %4662, float %4673)  ; FMad(a,b,c)
  %4675 = call float @dx.op.tertiary.f32(i32 46, float %4669, float %4663, float %4674)  ; FMad(a,b,c)
  %4676 = fsub fast float %4672, %4664
  %4677 = fsub fast float %4675, %4665
  %4678 = fsub fast float %4676, %4644
  %4679 = fadd fast float %4678, %4652
  %4680 = fsub fast float %4677, %4645
  %4681 = fadd fast float %4680, %4652
  %4682 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4683 = fmul fast float %4679, %4682
  %4684 = fmul fast float %4681, %4682
  %4685 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4687 = fsub fast float 1.000000e+00, %4685
  %4688 = fsub fast float 1.000000e+00, %4686
  %4689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4687, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = fcmp fast ugt float %4690, 0.000000e+00
  br i1 %4691, label %4692, label %4995

; <label>:4692                                    ; preds = %4654
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4695 = fmul fast float %4694, %4690
  %4696 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4697 = fadd fast float %4696, %4695
  %4698 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %4699 = fadd fast float %4697, %4666
  %4700 = fmul fast float %4672, %4660
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4675, float %4663, float %4700)  ; FMad(a,b,c)
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4699, float %4698, float %4701)  ; FMad(a,b,c)
  %4703 = fsub fast float %4702, %4666
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4706 = fsub fast float %4703, %4705
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4687, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4687, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4715 = fadd fast float %4712, %4708
  %4716 = fmul fast float %4715, 0x3F847AE140000000
  %4717 = fadd fast float %4713, %4709
  %4718 = fmul fast float %4717, 0x3F847AE140000000
  %4719 = fadd fast float %4714, %4710
  %4720 = fmul fast float %4719, 0x3F847AE140000000
  br label %4995

; <label>:4721                                    ; preds = %4575
  %4722 = and i32 %231, 1
  %4723 = icmp eq i32 %4722, 0
  br i1 %4723, label %4995, label %4724

; <label>:4724                                    ; preds = %4721
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4733 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4735 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4736 = extractvalue %dx.types.CBufRet.f32 %4729, 3
  %4737 = fadd fast float %4734, %4640
  %4738 = fadd fast float %4735, %4641
  %4739 = fadd fast float %4736, %4642
  %4740 = fmul fast float %4737, %4726
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4728, float %4740)  ; FMad(a,b,c)
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4739, float %4730, float %4741)  ; FMad(a,b,c)
  %4743 = fmul fast float %4737, %4731
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4738, float %4732, float %4743)  ; FMad(a,b,c)
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4739, float %4733, float %4744)  ; FMad(a,b,c)
  %4746 = fsub fast float %4742, %4734
  %4747 = fsub fast float %4745, %4735
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = extractvalue %dx.types.CBufRet.f32 %4748, 1
  %4751 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4752 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.i32 %4755, 0
  %4757 = extractvalue %dx.types.CBufRet.i32 %4755, 1
  %4758 = udiv i32 %4757, %4756
  %4759 = fsub fast float %4746, %4749
  %4760 = fsub fast float %4747, %4750
  %4761 = call float @dx.op.binary.f32(i32 35, float %4759, float 0.000000e+00)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4760, float 0.000000e+00)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 36, float %4761, float %4751)  ; FMin(a,b)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4762, float %4752)  ; FMin(a,b)
  %4765 = add i32 %4756, -1
  %4766 = add i32 %4758, -1
  %4767 = fmul fast float %4763, %4754
  %4768 = fmul fast float %4764, %4754
  %4769 = fptoui float %4767 to i32
  %4770 = fptoui float %4768 to i32
  %4771 = call i32 @dx.op.binary.i32(i32 40, i32 %4769, i32 %4765)  ; UMin(a,b)
  %4772 = call i32 @dx.op.binary.i32(i32 40, i32 %4770, i32 %4766)  ; UMin(a,b)
  %4773 = mul i32 %4772, %4756
  %4774 = add i32 %4773, %4771
  %4775 = shl i32 %4774, 2
  %4776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4775, i32 undef)  ; BufferLoad(srv,index,wot)
  %4777 = extractvalue %dx.types.ResRet.i32 %4776, 0
  %4778 = icmp eq i32 %4777, -1
  br i1 %4778, label %4995, label %4779

; <label>:4779                                    ; preds = %4724
  %4780 = mul i32 %4777, 148
  %4781 = add i32 %4780, 4
  %4782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4781, i32 undef)  ; BufferLoad(srv,index,wot)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = add i32 %4780, 8
  %4785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4784, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = add i32 %4780, 36
  %4788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4787, i32 undef)  ; BufferLoad(srv,index,wot)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = add i32 %4780, 60
  %4791 = add i32 %4780, 92
  %4792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4791, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.i32 %4792, 0
  %4794 = add i32 %4780, 116
  %4795 = fsub fast float %4746, %4783
  %4796 = fsub fast float %4747, %4786
  %4797 = fmul fast float %4754, %4795
  %4798 = fmul fast float %4754, %4796
  %4799 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4801 = fsub fast float 1.000000e+00, %4800
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4804 = call float @dx.op.unary.f32(i32 83, float %4799)  ; DerivCoarseX(value)
  %4805 = call float @dx.op.unary.f32(i32 83, float %4801)  ; DerivCoarseX(value)
  %4806 = call float @dx.op.unary.f32(i32 84, float %4799)  ; DerivCoarseY(value)
  %4807 = call float @dx.op.unary.f32(i32 84, float %4801)  ; DerivCoarseY(value)
  %4808 = fmul fast float %4804, %4803
  %4809 = fmul fast float %4805, %4803
  %4810 = fmul fast float %4806, %4803
  %4811 = fmul fast float %4807, %4803
  %4812 = call float @dx.op.dot2.f32(i32 54, float %4810, float %4811, float %4810, float %4811)  ; Dot2(ax,ay,bx,by)
  %4813 = call float @dx.op.dot2.f32(i32 54, float %4808, float %4809, float %4808, float %4809)  ; Dot2(ax,ay,bx,by)
  %4814 = call float @dx.op.binary.f32(i32 35, float %4813, float %4812)  ; FMax(a,b)
  %4815 = call float @dx.op.unary.f32(i32 23, float %4814)  ; Log(value)
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4819 = fadd fast float %4818, %4816
  %4820 = call float @dx.op.binary.f32(i32 35, float %4819, float 0.000000e+00)  ; FMax(a,b)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4823 = fadd fast float %4822, %4820
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 3
  %4826 = fadd fast float %4823, %4825
  %4827 = add i32 %4793, 0
  %4828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4829 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4828, i32 0)  ; GetDimensions(handle,mipLevel)
  %4830 = extractvalue %dx.types.Dimensions %4829, 0
  %4831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4830)  ; FirstbitLo(value)
  %4832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.i32 %4832, 1
  %4834 = sub nsw i32 %4833, %4831
  %4835 = sitofp i32 %4834 to float
  %4836 = fsub fast float %4826, %4835
  %4837 = call float @dx.op.binary.f32(i32 35, float %4836, float 0.000000e+00)  ; FMax(a,b)
  %4838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4828, %dx.types.Handle %47, float %4799, float %4801, float %4789, float undef, i32 0, i32 0, i32 undef, float %4837)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = fcmp ule float %4839, 0x3FE0101020000000
  %4841 = extractvalue %dx.types.CBufRet.i32 %4832, 0
  %4842 = and i32 %4841, 128
  %4843 = icmp ne i32 %4842, 0
  %4844 = and i1 %4840, %4843
  br i1 %4844, label %4995, label %4845

; <label>:4845                                    ; preds = %4779
  %4846 = add i32 %4780, 20
  %4847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4846, i32 undef)  ; BufferLoad(srv,index,wot)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = add i32 %4780, 24
  %4850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4849, i32 undef)  ; BufferLoad(srv,index,wot)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 0
  %4852 = add i32 %4780, 40
  %4853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4852, i32 undef)  ; BufferLoad(srv,index,wot)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = add i32 %4780, 96
  %4856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4855, i32 undef)  ; BufferLoad(srv,index,wot)
  %4857 = extractvalue %dx.types.ResRet.i32 %4856, 0
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4860 = fmul fast float %4859, %4799
  %4861 = fmul fast float %4859, %4801
  %4862 = extractvalue %dx.types.CBufRet.f32 %4858, 3
  %4863 = fadd fast float %4860, %4862
  %4864 = fadd fast float %4861, %4862
  %4865 = add i32 %4857, 0
  %4866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4865, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4867 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4866, i32 0)  ; GetDimensions(handle,mipLevel)
  %4868 = extractvalue %dx.types.Dimensions %4867, 0
  %4869 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4868)  ; FirstbitLo(value)
  %4870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.i32 %4870, 1
  %4872 = sub nsw i32 %4871, %4869
  %4873 = sitofp i32 %4872 to float
  %4874 = fsub fast float %4823, %4873
  %4875 = call float @dx.op.binary.f32(i32 35, float %4874, float 0.000000e+00)  ; FMax(a,b)
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4866, %dx.types.Handle %47, float %4863, float %4864, float %4854, float undef, i32 0, i32 0, i32 undef, float %4875)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = fmul fast float %4877, %4848
  %4879 = fadd fast float %4878, %4851
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = extractvalue %dx.types.CBufRet.f32 %4880, 2
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4888 = extractvalue %dx.types.CBufRet.f32 %4880, 3
  %4889 = fadd fast float %4885, %4746
  %4890 = fadd fast float %4887, %4747
  %4891 = fadd fast float %4879, %4888
  %4892 = fmul fast float %4889, %4881
  %4893 = call float @dx.op.tertiary.f32(i32 46, float %4890, float %4882, float %4892)  ; FMad(a,b,c)
  %4894 = call float @dx.op.tertiary.f32(i32 46, float %4891, float %4883, float %4893)  ; FMad(a,b,c)
  %4895 = fsub fast float %4894, %4888
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4898 = fsub fast float %4895, %4897
  %4899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.i32 %4899, 0
  %4901 = call i32 @dx.op.binary.i32(i32 40, i32 %4777, i32 %4900)  ; UMin(a,b)
  %4902 = mul i32 %4901, 36
  %4903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4902, i32 undef)  ; BufferLoad(srv,index,wot)
  %4904 = extractvalue %dx.types.ResRet.i32 %4903, 0
  %4905 = add i32 %4902, 4
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = fmul fast float %4907, %4799
  %4909 = fmul fast float %4907, %4801
  %4910 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4911 = fadd fast float %4908, %4910
  %4912 = fadd fast float %4909, %4910
  %4913 = icmp eq i32 %4904, 0
  br i1 %4913, label %4982, label %4914

; <label>:4914                                    ; preds = %4845
  br label %4915

; <label>:4915                                    ; preds = %4972, %4914
  %4916 = phi float [ %4973, %4972 ], [ 0.000000e+00, %4914 ]
  %4917 = phi float [ %4974, %4972 ], [ 0.000000e+00, %4914 ]
  %4918 = phi float [ %4975, %4972 ], [ 0.000000e+00, %4914 ]
  %4919 = phi float [ %4976, %4972 ], [ 0.000000e+00, %4914 ]
  %4920 = phi float [ %4977, %4972 ], [ 0.000000e+00, %4914 ]
  %4921 = phi float [ %4978, %4972 ], [ 0.000000e+00, %4914 ]
  %4922 = phi i32 [ %4979, %4972 ], [ 0, %4914 ]
  %4923 = shl i32 %4922, 2
  %4924 = add i32 %4790, %4923
  %4925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4924, i32 undef)  ; BufferLoad(srv,index,wot)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = add i32 %4794, %4923
  %4928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.i32 %4928, 0
  %4930 = add i32 %4929, 0
  %4931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4930, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4932 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4931, i32 0)  ; GetDimensions(handle,mipLevel)
  %4933 = extractvalue %dx.types.Dimensions %4932, 0
  %4934 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4933)  ; FirstbitLo(value)
  %4935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.i32 %4935, 1
  %4937 = sub nsw i32 %4936, %4934
  %4938 = sitofp i32 %4937 to float
  %4939 = fsub fast float %4823, %4938
  %4940 = call float @dx.op.binary.f32(i32 35, float %4939, float 0.000000e+00)  ; FMax(a,b)
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4931, %dx.types.Handle %47, float %4911, float %4912, float %4926, float undef, i32 0, i32 0, i32 undef, float %4940)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = fcmp fast ogt float %4942, 0.000000e+00
  br i1 %4943, label %4944, label %4972

; <label>:4944                                    ; preds = %4915
  %4945 = add i32 %4905, %4923
  %4946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.i32 %4946, 0
  %4948 = and i32 %4947, 32767
  %4949 = mul nuw nsw i32 %4948, 928
  %4950 = add nuw nsw i32 %4949, 48
  %4951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4950, i32 undef)  ; BufferLoad(srv,index,wot)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.ResRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.ResRet.f32 %4951, 2
  %4955 = add nuw nsw i32 %4949, 60
  %4956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4955, i32 undef)  ; BufferLoad(srv,index,wot)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = fmul fast float %4952, %4942
  %4961 = fmul fast float %4953, %4942
  %4962 = fmul fast float %4954, %4942
  %4963 = fadd fast float %4960, %4916
  %4964 = fadd fast float %4961, %4917
  %4965 = fadd fast float %4962, %4918
  %4966 = fmul fast float %4957, %4942
  %4967 = fmul fast float %4958, %4942
  %4968 = fmul fast float %4959, %4942
  %4969 = fadd fast float %4966, %4919
  %4970 = fadd fast float %4967, %4920
  %4971 = fadd fast float %4968, %4921
  br label %4972

; <label>:4972                                    ; preds = %4944, %4915
  %4973 = phi float [ %4963, %4944 ], [ %4916, %4915 ]
  %4974 = phi float [ %4964, %4944 ], [ %4917, %4915 ]
  %4975 = phi float [ %4965, %4944 ], [ %4918, %4915 ]
  %4976 = phi float [ %4969, %4944 ], [ %4919, %4915 ]
  %4977 = phi float [ %4970, %4944 ], [ %4920, %4915 ]
  %4978 = phi float [ %4971, %4944 ], [ %4921, %4915 ]
  %4979 = add nuw i32 %4922, 1
  %4980 = icmp eq i32 %4979, %4904
  br i1 %4980, label %4981, label %4915

; <label>:4981                                    ; preds = %4972
  br label %4982

; <label>:4982                                    ; preds = %4981, %4845
  %4983 = phi float [ 0.000000e+00, %4845 ], [ %4973, %4981 ]
  %4984 = phi float [ 0.000000e+00, %4845 ], [ %4974, %4981 ]
  %4985 = phi float [ 0.000000e+00, %4845 ], [ %4975, %4981 ]
  %4986 = phi float [ 0.000000e+00, %4845 ], [ %4976, %4981 ]
  %4987 = phi float [ 0.000000e+00, %4845 ], [ %4977, %4981 ]
  %4988 = phi float [ 0.000000e+00, %4845 ], [ %4978, %4981 ]
  %4989 = fadd fast float %4986, %4983
  %4990 = fmul fast float %4989, 0x3F847AE140000000
  %4991 = fadd fast float %4987, %4984
  %4992 = fmul fast float %4991, 0x3F847AE140000000
  %4993 = fadd fast float %4988, %4985
  %4994 = fmul fast float %4993, 0x3F847AE140000000
  br label %4995

; <label>:4995                                    ; preds = %4982, %4779, %4724, %4721, %4692, %4654
  %4996 = phi float [ %4706, %4692 ], [ -1.310720e+05, %4654 ], [ %4898, %4982 ], [ -1.310720e+05, %4724 ], [ -1.310720e+05, %4779 ], [ -1.310720e+05, %4721 ]
  %4997 = phi float [ %4716, %4692 ], [ 0.000000e+00, %4654 ], [ %4990, %4982 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4779 ], [ 0.000000e+00, %4721 ]
  %4998 = phi float [ %4718, %4692 ], [ 0.000000e+00, %4654 ], [ %4992, %4982 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4779 ], [ 0.000000e+00, %4721 ]
  %4999 = phi float [ %4720, %4692 ], [ 0.000000e+00, %4654 ], [ %4994, %4982 ], [ 0.000000e+00, %4724 ], [ 0.000000e+00, %4779 ], [ 0.000000e+00, %4721 ]
  %5000 = phi i1 [ true, %4692 ], [ false, %4654 ], [ true, %4982 ], [ false, %4724 ], [ false, %4779 ], [ false, %4721 ]
  %5001 = and i32 %231, 3
  %5002 = icmp eq i32 %5001, 1
  %5003 = select i1 %5002, float 1.000000e+00, float 0.000000e+00
  %5004 = fsub fast float %4996, %195
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = select i1 %5000, float %5005, float 1.000000e+00
  %5007 = fmul fast float %5006, %5003
  %5008 = icmp eq i32 %5001, 3
  %5009 = select i1 %5008, float 1.000000e+00, float %5007
  %5010 = call float @dx.op.binary.f32(i32 35, float %4594, float %5009)  ; FMax(a,b)
  %5011 = fcmp fast olt float %5009, 1.000000e+00
  %5012 = fcmp uge float %71, 0.000000e+00
  %5013 = and i1 %5012, %5011
  br i1 %5013, label %5014, label %5024

; <label>:5014                                    ; preds = %4995
  %5015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5016 = extractvalue %dx.types.ResRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.ResRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.ResRet.f32 %5015, 2
  %5019 = fadd fast float %5016, %5010
  %5020 = fcmp ule float %70, 0.000000e+00
  %5021 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = select i1 %5020, float %5021, float 1.000000e+00
  %5023 = fmul fast float %5022, %5018
  br label %5024

; <label>:5024                                    ; preds = %5014, %4995
  %5025 = phi float [ %5019, %5014 ], [ %5010, %4995 ]
  %5026 = phi float [ %5017, %5014 ], [ 0.000000e+00, %4995 ]
  %5027 = phi float [ %5023, %5014 ], [ 0.000000e+00, %4995 ]
  %5028 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5029 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5030 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5031 = fcmp fast une float %5029, 0.000000e+00
  %5032 = fcmp fast une float %5030, 0.000000e+00
  %5033 = or i1 %5031, %5032
  br i1 %5033, label %5034, label %5593

; <label>:5034                                    ; preds = %5024
  br i1 %5031, label %5035, label %5308

; <label>:5035                                    ; preds = %5034
  %5036 = call float @dx.op.unary.f32(i32 23, float %4591)  ; Log(value)
  %5037 = fmul fast float %5036, 4.000000e+00
  %5038 = call float @dx.op.unary.f32(i32 21, float %5037)  ; Exp(value)
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = fmul fast float %5040, %58
  %5042 = fmul fast float %5040, %59
  %5043 = fmul fast float %5040, %60
  %5044 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5045 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5046 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5047 = call float @dx.op.unary.f32(i32 23, float %5044)  ; Log(value)
  %5048 = call float @dx.op.unary.f32(i32 23, float %5045)  ; Log(value)
  %5049 = call float @dx.op.unary.f32(i32 23, float %5046)  ; Log(value)
  %5050 = fmul fast float %5047, 4.000000e+00
  %5051 = fmul fast float %5048, 4.000000e+00
  %5052 = fmul fast float %5049, 4.000000e+00
  %5053 = call float @dx.op.unary.f32(i32 21, float %5050)  ; Exp(value)
  %5054 = call float @dx.op.unary.f32(i32 21, float %5051)  ; Exp(value)
  %5055 = call float @dx.op.unary.f32(i32 21, float %5052)  ; Exp(value)
  %5056 = fadd fast float %5054, %5053
  %5057 = fadd fast float %5056, %5055
  %5058 = fdiv fast float 1.000000e+00, %5057
  %5059 = fmul fast float %5058, %5053
  %5060 = fcmp fast ogt float %67, 0.000000e+00
  %5061 = fcmp fast ogt float %68, 0.000000e+00
  %5062 = fcmp fast ogt float %69, 0.000000e+00
  %5063 = fcmp fast olt float %67, 0.000000e+00
  %5064 = fcmp fast olt float %68, 0.000000e+00
  %5065 = fcmp fast olt float %69, 0.000000e+00
  %5066 = zext i1 %5060 to i32
  %5067 = zext i1 %5061 to i32
  %5068 = zext i1 %5062 to i32
  %5069 = zext i1 %5063 to i32
  %5070 = zext i1 %5064 to i32
  %5071 = zext i1 %5065 to i32
  %5072 = sub nsw i32 %5066, %5069
  %5073 = sub nsw i32 %5067, %5070
  %5074 = sub nsw i32 %5068, %5071
  %5075 = call float @dx.op.unary.f32(i32 83, float %5041)  ; DerivCoarseX(value)
  %5076 = call float @dx.op.unary.f32(i32 83, float %5042)  ; DerivCoarseX(value)
  %5077 = call float @dx.op.unary.f32(i32 83, float %5043)  ; DerivCoarseX(value)
  %5078 = call float @dx.op.unary.f32(i32 84, float %5041)  ; DerivCoarseY(value)
  %5079 = call float @dx.op.unary.f32(i32 84, float %5042)  ; DerivCoarseY(value)
  %5080 = call float @dx.op.unary.f32(i32 84, float %5043)  ; DerivCoarseY(value)
  %5081 = fcmp fast ole float %263, %5059
  %5082 = fmul fast float %5058, %5056
  %5083 = fcmp fast ole float %263, %5082
  %5084 = select i1 %5083, float %5043, float %5041
  %5085 = select i1 %5083, float %5041, float %5042
  %5086 = select i1 %5081, float %5042, float %5084
  %5087 = select i1 %5081, float %5043, float %5085
  %5088 = select i1 %5083, float %5077, float %5075
  %5089 = select i1 %5083, float %5075, float %5076
  %5090 = select i1 %5081, float %5076, float %5088
  %5091 = select i1 %5081, float %5077, float %5089
  %5092 = select i1 %5083, float %5080, float %5078
  %5093 = select i1 %5083, float %5078, float %5079
  %5094 = select i1 %5081, float %5079, float %5092
  %5095 = select i1 %5081, float %5080, float %5093
  %5096 = call float @dx.op.unary.f32(i32 27, float %5086)  ; Round_ni(value)
  %5097 = call float @dx.op.unary.f32(i32 27, float %5087)  ; Round_ni(value)
  %5098 = fptosi float %5096 to i32
  %5099 = fptosi float %5097 to i32
  %5100 = xor i32 %5099, %5098
  %5101 = sitofp i32 %5100 to float
  %5102 = fptosi float %5101 to i32
  %5103 = sitofp i32 %5102 to float
  %5104 = fmul fast float %5103, 0x3FE3C6EF40000000
  %5105 = frem fast float %5096, 2.560000e+02
  %5106 = frem fast float %5097, 2.560000e+02
  %5107 = fptoui float %5105 to i32
  %5108 = fptoui float %5106 to i32
  %5109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5107, i32 %5108, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5113 = fadd fast float %5110, %5104
  %5114 = fadd fast float %5111, %5104
  %5115 = fadd fast float %5112, %5104
  %5116 = call float @dx.op.unary.f32(i32 22, float %5113)  ; Frc(value)
  %5117 = call float @dx.op.unary.f32(i32 22, float %5114)  ; Frc(value)
  %5118 = call float @dx.op.unary.f32(i32 22, float %5115)  ; Frc(value)
  %5119 = fmul fast float %5118, 0x401921FB60000000
  %5120 = call float @dx.op.unary.f32(i32 13, float %5119)  ; Sin(value)
  %5121 = call float @dx.op.unary.f32(i32 12, float %5119)  ; Cos(value)
  %5122 = fsub fast float -0.000000e+00, %5121
  %5123 = fmul fast float %5121, %5086
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5120, float %5087, float %5123)  ; FMad(a,b,c)
  %5125 = fmul fast float %5120, %5086
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5087, float %5125)  ; FMad(a,b,c)
  %5127 = fadd fast float %5124, %5116
  %5128 = fadd fast float %5126, %5117
  %5129 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5130 = bitcast float %5129 to i32
  %5131 = icmp eq i32 %5130, 0
  br i1 %5131, label %5170, label %5132

; <label>:5132                                    ; preds = %5035
  %5133 = add i32 %5130, 0
  %5134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5134, %dx.types.Handle %103, float %5127, float %5128, float undef, float undef, i32 0, i32 0, i32 undef, float %5090, float %5091, float undef, float %5094, float %5095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5140 = fsub fast float 1.000000e+00, %5029
  %5141 = call float @dx.op.binary.f32(i32 35, float %5140, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5142 = bitcast float %5029 to i32
  %5143 = sitofp i32 %5142 to float
  %5144 = fadd fast float %5143, 0xC1CFBF8940000000
  %5145 = fmul fast float %5139, %5144
  %5146 = fadd fast float %5145, 0x41CFBF8940000000
  %5147 = fptosi float %5146 to i32
  %5148 = bitcast i32 %5147 to float
  %5149 = bitcast float %5141 to i32
  %5150 = sitofp i32 %5149 to float
  %5151 = fadd fast float %5150, 0xC1CFBF8940000000
  %5152 = fmul fast float %5151, %5139
  %5153 = fadd fast float %5152, 0x41CFBF8940000000
  %5154 = fptosi float %5153 to i32
  %5155 = bitcast i32 %5154 to float
  %5156 = fmul fast float %5148, %5138
  %5157 = fmul fast float %5155, %5138
  %5158 = fsub fast float %5141, %5156
  %5159 = fadd fast float %5157, %5141
  %5160 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5162 = fsub fast float %5136, %5160
  %5163 = fsub fast float %5161, %5160
  %5164 = bitcast float %5163 to i32
  %5165 = sub nsw i32 2129859010, %5164
  %5166 = bitcast i32 %5165 to float
  %5167 = fmul fast float %5166, %5162
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = fcmp fast olt float %5168, 0x3F70101020000000
  br i1 %5169, label %5308, label %5170

; <label>:5170                                    ; preds = %5132, %5035
  %5171 = phi float [ %5168, %5132 ], [ %5029, %5035 ]
  %5172 = fmul fast float %5171, %5038
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 1
  %5175 = extractvalue %dx.types.CBufRet.i32 %5173, 0
  %5176 = add i32 %5175, 0
  %5177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5177, %dx.types.Handle %102, float %5127, float %5128, float undef, float undef, i32 0, i32 0, i32 undef, float %5090, float %5091, float undef, float %5094, float %5095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.ResRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.ResRet.f32 %5178, 2
  %5182 = extractvalue %dx.types.ResRet.f32 %5178, 3
  %5183 = and i32 %5174, 255
  %5184 = uitofp i32 %5183 to float
  %5185 = lshr i32 %5174, 8
  %5186 = and i32 %5185, 255
  %5187 = uitofp i32 %5186 to float
  %5188 = fmul fast float %5182, %5184
  %5189 = fadd fast float %5188, %5187
  %5190 = fmul fast float %5189, 0x3F70101000000000
  %5191 = fadd fast float %5190, 0xBFB99999A0000000
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = fmul fast float %5192, 0x3FF1C71C80000000
  %5194 = call float @dx.op.binary.f32(i32 36, float %5190, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5195 = fsub fast float 1.000000e+00, %5193
  %5196 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5197 = fmul fast float %5196, %5179
  %5198 = fmul fast float %5196, %5180
  %5199 = fmul fast float %5196, %5181
  %5200 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5201 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5202 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5203 = fmul fast float %5193, %5179
  %5204 = fmul fast float %5193, %5180
  %5205 = fmul fast float %5193, %5181
  %5206 = fadd fast float %5203, %5194
  %5207 = fadd fast float %5204, %5194
  %5208 = fadd fast float %5205, %5194
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.i32 %5212, 3
  %5214 = extractvalue %dx.types.CBufRet.i32 %5212, 2
  %5215 = add i32 %5214, 0
  %5216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5216, %dx.types.Handle %102, float %5127, float %5128, float undef, float undef, i32 0, i32 0, i32 undef, float %5090, float %5091, float undef, float %5094, float %5095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = extractvalue %dx.types.ResRet.f32 %5217, 3
  %5222 = and i32 %5213, 255
  %5223 = uitofp i32 %5222 to float
  %5224 = lshr i32 %5213, 8
  %5225 = and i32 %5224, 255
  %5226 = uitofp i32 %5225 to float
  %5227 = lshr i32 %5213, 16
  %5228 = and i32 %5227, 255
  %5229 = uitofp i32 %5228 to float
  %5230 = fmul fast float %5229, 0x3F70101000000000
  %5231 = fmul fast float %5218, %5223
  %5232 = fadd fast float %5231, %5226
  %5233 = fmul fast float %5232, 0x3F70101000000000
  %5234 = fadd fast float %5219, -5.000000e-01
  %5235 = fadd fast float %5221, -5.000000e-01
  %5236 = fmul fast float %5234, %5230
  %5237 = fmul fast float %5235, %5230
  %5238 = fadd fast float %5236, 5.000000e-01
  %5239 = fadd fast float %5237, 5.000000e-01
  %5240 = fmul fast float %5238, 2.000000e+00
  %5241 = fadd fast float %5240, -1.000000e+00
  %5242 = fmul fast float %5239, 2.000000e+00
  %5243 = fadd fast float %5242, -1.000000e+00
  %5244 = fadd fast float %5241, %5243
  %5245 = fmul fast float %5244, 5.000000e-01
  %5246 = fsub fast float %5241, %5243
  %5247 = fmul fast float %5246, 5.000000e-01
  %5248 = call float @dx.op.unary.f32(i32 6, float %5245)  ; FAbs(value)
  %5249 = fsub fast float 1.000000e+00, %5248
  %5250 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5251 = fsub fast float %5249, %5250
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5247, float %5251, float %5245, float %5247, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 25, float %5252)  ; Rsqrt(value)
  %5254 = fmul fast float %5245, %5253
  %5255 = fmul fast float %5247, %5253
  %5256 = select i1 %5083, i32 %5073, i32 %5074
  %5257 = select i1 %5081, i32 %5072, i32 %5256
  %5258 = sitofp i32 %5257 to float
  %5259 = fmul fast float %5251, %5258
  %5260 = fmul fast float %5259, %5253
  %5261 = select i1 %5083, float %5260, float %5255
  %5262 = select i1 %5083, float %5255, float %5260
  %5263 = select i1 %5081, float %5260, float %5254
  %5264 = select i1 %5081, float %5255, float %5261
  %5265 = select i1 %5081, float %5254, float %5262
  %5266 = fsub fast float %5200, %4633
  %5267 = fsub fast float %5201, %4634
  %5268 = fsub fast float %5202, %4635
  %5269 = fmul fast float %5266, %5172
  %5270 = fmul fast float %5267, %5172
  %5271 = fmul fast float %5268, %5172
  %5272 = fadd fast float %5269, %4633
  %5273 = fadd fast float %5270, %4634
  %5274 = fadd fast float %5271, %4635
  %5275 = fsub fast float %5209, %4615
  %5276 = fsub fast float %5210, %4616
  %5277 = fsub fast float %5211, %4617
  %5278 = fmul fast float %5275, %5172
  %5279 = fmul fast float %5276, %5172
  %5280 = fmul fast float %5277, %5172
  %5281 = fadd fast float %5278, %4615
  %5282 = fadd fast float %5279, %4616
  %5283 = fadd fast float %5280, %4617
  %5284 = fadd fast float %5263, %4576
  %5285 = fadd fast float %5264, %4577
  %5286 = fadd fast float %5265, %4578
  %5287 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5285, float %5286, float %5284, float %5285, float %5286)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = call float @dx.op.unary.f32(i32 25, float %5287)  ; Rsqrt(value)
  %5289 = fmul fast float %5284, %5288
  %5290 = fmul fast float %5285, %5288
  %5291 = fmul fast float %5286, %5288
  %5292 = fsub fast float %5289, %4576
  %5293 = fsub fast float %5290, %4577
  %5294 = fsub fast float %5291, %4578
  %5295 = fmul fast float %5292, %5172
  %5296 = fmul fast float %5293, %5172
  %5297 = fmul fast float %5294, %5172
  %5298 = fadd fast float %5295, %4576
  %5299 = fadd fast float %5296, %4577
  %5300 = fadd fast float %5297, %4578
  %5301 = call float @dx.op.binary.f32(i32 36, float %4591, float %5220)  ; FMin(a,b)
  %5302 = fsub fast float %5301, %4591
  %5303 = fmul fast float %5302, %5172
  %5304 = fadd fast float %5303, %4591
  %5305 = fsub fast float %5233, %4618
  %5306 = fmul fast float %5305, %5172
  %5307 = fadd fast float %5306, %4618
  br label %5308

; <label>:5308                                    ; preds = %5170, %5132, %5034
  %5309 = phi float [ %5298, %5170 ], [ %4576, %5132 ], [ %4576, %5034 ]
  %5310 = phi float [ %5299, %5170 ], [ %4577, %5132 ], [ %4577, %5034 ]
  %5311 = phi float [ %5300, %5170 ], [ %4578, %5132 ], [ %4578, %5034 ]
  %5312 = phi float [ %5272, %5170 ], [ %4633, %5132 ], [ %4633, %5034 ]
  %5313 = phi float [ %5273, %5170 ], [ %4634, %5132 ], [ %4634, %5034 ]
  %5314 = phi float [ %5274, %5170 ], [ %4635, %5132 ], [ %4635, %5034 ]
  %5315 = phi float [ %5281, %5170 ], [ %4615, %5132 ], [ %4615, %5034 ]
  %5316 = phi float [ %5282, %5170 ], [ %4616, %5132 ], [ %4616, %5034 ]
  %5317 = phi float [ %5283, %5170 ], [ %4617, %5132 ], [ %4617, %5034 ]
  %5318 = phi float [ %5307, %5170 ], [ %4618, %5132 ], [ %4618, %5034 ]
  %5319 = phi float [ %5304, %5170 ], [ %4591, %5132 ], [ %4591, %5034 ]
  br i1 %5032, label %5320, label %5593

; <label>:5320                                    ; preds = %5308
  %5321 = call float @dx.op.unary.f32(i32 23, float %5319)  ; Log(value)
  %5322 = fmul fast float %5321, 4.000000e+00
  %5323 = call float @dx.op.unary.f32(i32 21, float %5322)  ; Exp(value)
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = fmul fast float %5325, %58
  %5327 = fmul fast float %5325, %59
  %5328 = fmul fast float %5325, %60
  %5329 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5330 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5331 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5332 = call float @dx.op.unary.f32(i32 23, float %5329)  ; Log(value)
  %5333 = call float @dx.op.unary.f32(i32 23, float %5330)  ; Log(value)
  %5334 = call float @dx.op.unary.f32(i32 23, float %5331)  ; Log(value)
  %5335 = fmul fast float %5332, 4.000000e+00
  %5336 = fmul fast float %5333, 4.000000e+00
  %5337 = fmul fast float %5334, 4.000000e+00
  %5338 = call float @dx.op.unary.f32(i32 21, float %5335)  ; Exp(value)
  %5339 = call float @dx.op.unary.f32(i32 21, float %5336)  ; Exp(value)
  %5340 = call float @dx.op.unary.f32(i32 21, float %5337)  ; Exp(value)
  %5341 = fadd fast float %5339, %5338
  %5342 = fadd fast float %5341, %5340
  %5343 = fdiv fast float 1.000000e+00, %5342
  %5344 = fmul fast float %5343, %5338
  %5345 = fcmp fast ogt float %67, 0.000000e+00
  %5346 = fcmp fast ogt float %68, 0.000000e+00
  %5347 = fcmp fast ogt float %69, 0.000000e+00
  %5348 = fcmp fast olt float %67, 0.000000e+00
  %5349 = fcmp fast olt float %68, 0.000000e+00
  %5350 = fcmp fast olt float %69, 0.000000e+00
  %5351 = zext i1 %5345 to i32
  %5352 = zext i1 %5346 to i32
  %5353 = zext i1 %5347 to i32
  %5354 = zext i1 %5348 to i32
  %5355 = zext i1 %5349 to i32
  %5356 = zext i1 %5350 to i32
  %5357 = sub nsw i32 %5351, %5354
  %5358 = sub nsw i32 %5352, %5355
  %5359 = sub nsw i32 %5353, %5356
  %5360 = call float @dx.op.unary.f32(i32 83, float %5326)  ; DerivCoarseX(value)
  %5361 = call float @dx.op.unary.f32(i32 83, float %5327)  ; DerivCoarseX(value)
  %5362 = call float @dx.op.unary.f32(i32 83, float %5328)  ; DerivCoarseX(value)
  %5363 = call float @dx.op.unary.f32(i32 84, float %5326)  ; DerivCoarseY(value)
  %5364 = call float @dx.op.unary.f32(i32 84, float %5327)  ; DerivCoarseY(value)
  %5365 = call float @dx.op.unary.f32(i32 84, float %5328)  ; DerivCoarseY(value)
  %5366 = fcmp fast ole float %263, %5344
  %5367 = fmul fast float %5343, %5341
  %5368 = fcmp fast ole float %263, %5367
  %5369 = select i1 %5368, float %5328, float %5326
  %5370 = select i1 %5368, float %5326, float %5327
  %5371 = select i1 %5366, float %5327, float %5369
  %5372 = select i1 %5366, float %5328, float %5370
  %5373 = select i1 %5368, float %5362, float %5360
  %5374 = select i1 %5368, float %5360, float %5361
  %5375 = select i1 %5366, float %5361, float %5373
  %5376 = select i1 %5366, float %5362, float %5374
  %5377 = select i1 %5368, float %5365, float %5363
  %5378 = select i1 %5368, float %5363, float %5364
  %5379 = select i1 %5366, float %5364, float %5377
  %5380 = select i1 %5366, float %5365, float %5378
  %5381 = call float @dx.op.unary.f32(i32 27, float %5371)  ; Round_ni(value)
  %5382 = call float @dx.op.unary.f32(i32 27, float %5372)  ; Round_ni(value)
  %5383 = fptosi float %5381 to i32
  %5384 = fptosi float %5382 to i32
  %5385 = xor i32 %5384, %5383
  %5386 = sitofp i32 %5385 to float
  %5387 = fptosi float %5386 to i32
  %5388 = sitofp i32 %5387 to float
  %5389 = fmul fast float %5388, 0x3FE3C6EF40000000
  %5390 = frem fast float %5381, 2.560000e+02
  %5391 = frem fast float %5382, 2.560000e+02
  %5392 = fptoui float %5390 to i32
  %5393 = fptoui float %5391 to i32
  %5394 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5392, i32 %5393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5398 = fadd fast float %5395, %5389
  %5399 = fadd fast float %5396, %5389
  %5400 = fadd fast float %5397, %5389
  %5401 = call float @dx.op.unary.f32(i32 22, float %5398)  ; Frc(value)
  %5402 = call float @dx.op.unary.f32(i32 22, float %5399)  ; Frc(value)
  %5403 = call float @dx.op.unary.f32(i32 22, float %5400)  ; Frc(value)
  %5404 = fmul fast float %5403, 0x401921FB60000000
  %5405 = call float @dx.op.unary.f32(i32 13, float %5404)  ; Sin(value)
  %5406 = call float @dx.op.unary.f32(i32 12, float %5404)  ; Cos(value)
  %5407 = fsub fast float -0.000000e+00, %5406
  %5408 = fmul fast float %5406, %5371
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %5405, float %5372, float %5408)  ; FMad(a,b,c)
  %5410 = fmul fast float %5405, %5371
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5372, float %5410)  ; FMad(a,b,c)
  %5412 = fadd fast float %5409, %5401
  %5413 = fadd fast float %5411, %5402
  %5414 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5415 = bitcast float %5414 to i32
  %5416 = icmp eq i32 %5415, 0
  br i1 %5416, label %5455, label %5417

; <label>:5417                                    ; preds = %5320
  %5418 = add i32 %5415, 0
  %5419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5420 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5419, %dx.types.Handle %103, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float %5375, float %5376, float undef, float %5379, float %5380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5424 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5425 = fsub fast float 1.000000e+00, %5030
  %5426 = call float @dx.op.binary.f32(i32 35, float %5425, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5427 = bitcast float %5030 to i32
  %5428 = sitofp i32 %5427 to float
  %5429 = fadd fast float %5428, 0xC1CFBF8940000000
  %5430 = fmul fast float %5424, %5429
  %5431 = fadd fast float %5430, 0x41CFBF8940000000
  %5432 = fptosi float %5431 to i32
  %5433 = bitcast i32 %5432 to float
  %5434 = bitcast float %5426 to i32
  %5435 = sitofp i32 %5434 to float
  %5436 = fadd fast float %5435, 0xC1CFBF8940000000
  %5437 = fmul fast float %5436, %5424
  %5438 = fadd fast float %5437, 0x41CFBF8940000000
  %5439 = fptosi float %5438 to i32
  %5440 = bitcast i32 %5439 to float
  %5441 = fmul fast float %5433, %5423
  %5442 = fmul fast float %5440, %5423
  %5443 = fsub fast float %5426, %5441
  %5444 = fadd fast float %5442, %5426
  %5445 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5447 = fsub fast float %5421, %5445
  %5448 = fsub fast float %5446, %5445
  %5449 = bitcast float %5448 to i32
  %5450 = sub nsw i32 2129859010, %5449
  %5451 = bitcast i32 %5450 to float
  %5452 = fmul fast float %5451, %5447
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fcmp fast olt float %5453, 0x3F70101020000000
  br i1 %5454, label %5593, label %5455

; <label>:5455                                    ; preds = %5417, %5320
  %5456 = phi float [ %5453, %5417 ], [ %5030, %5320 ]
  %5457 = fmul fast float %5456, %5323
  %5458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.i32 %5458, 1
  %5460 = extractvalue %dx.types.CBufRet.i32 %5458, 0
  %5461 = add i32 %5460, 0
  %5462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5463 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5462, %dx.types.Handle %102, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float %5375, float %5376, float undef, float %5379, float %5380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = extractvalue %dx.types.ResRet.f32 %5463, 3
  %5468 = and i32 %5459, 255
  %5469 = uitofp i32 %5468 to float
  %5470 = lshr i32 %5459, 8
  %5471 = and i32 %5470, 255
  %5472 = uitofp i32 %5471 to float
  %5473 = fmul fast float %5467, %5469
  %5474 = fadd fast float %5473, %5472
  %5475 = fmul fast float %5474, 0x3F70101000000000
  %5476 = fadd fast float %5475, 0xBFB99999A0000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %5477, 0x3FF1C71C80000000
  %5479 = call float @dx.op.binary.f32(i32 36, float %5475, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5480 = fsub fast float 1.000000e+00, %5478
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = fmul fast float %5481, %5464
  %5483 = fmul fast float %5481, %5465
  %5484 = fmul fast float %5481, %5466
  %5485 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = fmul fast float %5478, %5464
  %5489 = fmul fast float %5478, %5465
  %5490 = fmul fast float %5478, %5466
  %5491 = fadd fast float %5488, %5479
  %5492 = fadd fast float %5489, %5479
  %5493 = fadd fast float %5490, %5479
  %5494 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5495 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.i32 %5497, 3
  %5499 = extractvalue %dx.types.CBufRet.i32 %5497, 2
  %5500 = add i32 %5499, 0
  %5501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5501, %dx.types.Handle %102, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float %5375, float %5376, float undef, float %5379, float %5380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5506 = extractvalue %dx.types.ResRet.f32 %5502, 3
  %5507 = and i32 %5498, 255
  %5508 = uitofp i32 %5507 to float
  %5509 = lshr i32 %5498, 8
  %5510 = and i32 %5509, 255
  %5511 = uitofp i32 %5510 to float
  %5512 = lshr i32 %5498, 16
  %5513 = and i32 %5512, 255
  %5514 = uitofp i32 %5513 to float
  %5515 = fmul fast float %5514, 0x3F70101000000000
  %5516 = fmul fast float %5503, %5508
  %5517 = fadd fast float %5516, %5511
  %5518 = fmul fast float %5517, 0x3F70101000000000
  %5519 = fadd fast float %5504, -5.000000e-01
  %5520 = fadd fast float %5506, -5.000000e-01
  %5521 = fmul fast float %5519, %5515
  %5522 = fmul fast float %5520, %5515
  %5523 = fadd fast float %5521, 5.000000e-01
  %5524 = fadd fast float %5522, 5.000000e-01
  %5525 = fmul fast float %5523, 2.000000e+00
  %5526 = fadd fast float %5525, -1.000000e+00
  %5527 = fmul fast float %5524, 2.000000e+00
  %5528 = fadd fast float %5527, -1.000000e+00
  %5529 = fadd fast float %5526, %5528
  %5530 = fmul fast float %5529, 5.000000e-01
  %5531 = fsub fast float %5526, %5528
  %5532 = fmul fast float %5531, 5.000000e-01
  %5533 = call float @dx.op.unary.f32(i32 6, float %5530)  ; FAbs(value)
  %5534 = fsub fast float 1.000000e+00, %5533
  %5535 = call float @dx.op.unary.f32(i32 6, float %5532)  ; FAbs(value)
  %5536 = fsub fast float %5534, %5535
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5532, float %5536, float %5530, float %5532, float %5536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = call float @dx.op.unary.f32(i32 25, float %5537)  ; Rsqrt(value)
  %5539 = fmul fast float %5530, %5538
  %5540 = fmul fast float %5532, %5538
  %5541 = select i1 %5368, i32 %5358, i32 %5359
  %5542 = select i1 %5366, i32 %5357, i32 %5541
  %5543 = sitofp i32 %5542 to float
  %5544 = fmul fast float %5536, %5543
  %5545 = fmul fast float %5544, %5538
  %5546 = select i1 %5368, float %5545, float %5540
  %5547 = select i1 %5368, float %5540, float %5545
  %5548 = select i1 %5366, float %5545, float %5539
  %5549 = select i1 %5366, float %5540, float %5546
  %5550 = select i1 %5366, float %5539, float %5547
  %5551 = fsub fast float %5485, %5312
  %5552 = fsub fast float %5486, %5313
  %5553 = fsub fast float %5487, %5314
  %5554 = fmul fast float %5551, %5457
  %5555 = fmul fast float %5552, %5457
  %5556 = fmul fast float %5553, %5457
  %5557 = fadd fast float %5554, %5312
  %5558 = fadd fast float %5555, %5313
  %5559 = fadd fast float %5556, %5314
  %5560 = fsub fast float %5494, %5315
  %5561 = fsub fast float %5495, %5316
  %5562 = fsub fast float %5496, %5317
  %5563 = fmul fast float %5560, %5457
  %5564 = fmul fast float %5561, %5457
  %5565 = fmul fast float %5562, %5457
  %5566 = fadd fast float %5563, %5315
  %5567 = fadd fast float %5564, %5316
  %5568 = fadd fast float %5565, %5317
  %5569 = fadd fast float %5548, %5309
  %5570 = fadd fast float %5549, %5310
  %5571 = fadd fast float %5550, %5311
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5569, float %5570, float %5571, float %5569, float %5570, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 25, float %5572)  ; Rsqrt(value)
  %5574 = fmul fast float %5569, %5573
  %5575 = fmul fast float %5570, %5573
  %5576 = fmul fast float %5571, %5573
  %5577 = fsub fast float %5574, %5309
  %5578 = fsub fast float %5575, %5310
  %5579 = fsub fast float %5576, %5311
  %5580 = fmul fast float %5577, %5457
  %5581 = fmul fast float %5578, %5457
  %5582 = fmul fast float %5579, %5457
  %5583 = fadd fast float %5580, %5309
  %5584 = fadd fast float %5581, %5310
  %5585 = fadd fast float %5582, %5311
  %5586 = call float @dx.op.binary.f32(i32 36, float %5319, float %5505)  ; FMin(a,b)
  %5587 = fsub fast float %5586, %5319
  %5588 = fmul fast float %5587, %5457
  %5589 = fadd fast float %5588, %5319
  %5590 = fsub fast float %5518, %5318
  %5591 = fmul fast float %5590, %5457
  %5592 = fadd fast float %5591, %5318
  br label %5593

; <label>:5593                                    ; preds = %5455, %5417, %5308, %5024
  %5594 = phi float [ %5583, %5455 ], [ %5309, %5417 ], [ %5309, %5308 ], [ %4576, %5024 ]
  %5595 = phi float [ %5584, %5455 ], [ %5310, %5417 ], [ %5310, %5308 ], [ %4577, %5024 ]
  %5596 = phi float [ %5585, %5455 ], [ %5311, %5417 ], [ %5311, %5308 ], [ %4578, %5024 ]
  %5597 = phi float [ %5557, %5455 ], [ %5312, %5417 ], [ %5312, %5308 ], [ %4633, %5024 ]
  %5598 = phi float [ %5558, %5455 ], [ %5313, %5417 ], [ %5313, %5308 ], [ %4634, %5024 ]
  %5599 = phi float [ %5559, %5455 ], [ %5314, %5417 ], [ %5314, %5308 ], [ %4635, %5024 ]
  %5600 = phi float [ %5566, %5455 ], [ %5315, %5417 ], [ %5315, %5308 ], [ %4615, %5024 ]
  %5601 = phi float [ %5567, %5455 ], [ %5316, %5417 ], [ %5316, %5308 ], [ %4616, %5024 ]
  %5602 = phi float [ %5568, %5455 ], [ %5317, %5417 ], [ %5317, %5308 ], [ %4617, %5024 ]
  %5603 = phi float [ %5592, %5455 ], [ %5318, %5417 ], [ %5318, %5308 ], [ %4618, %5024 ]
  %5604 = phi float [ %5589, %5455 ], [ %5319, %5417 ], [ %5319, %5308 ], [ %4591, %5024 ]
  %5605 = fcmp fast une float %5028, 0.000000e+00
  br i1 %5605, label %5606, label %5775

; <label>:5606                                    ; preds = %5593
  %5607 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 25, float %5607)  ; Rsqrt(value)
  %5609 = fmul fast float %193, %5608
  %5610 = fsub fast float -0.000000e+00, %5609
  %5611 = fmul fast float %194, %5608
  %5612 = fsub fast float -0.000000e+00, %5611
  %5613 = fmul fast float %195, %5608
  %5614 = fsub fast float -0.000000e+00, %5613
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5612, float %5614, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = fmul fast float %5028, 2.500000e+00
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5028, 0x4013FFFFE0000000
  %5619 = fadd fast float %5618, 0xBFFFFFFFE0000000
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = fmul fast float %5028, 0x4004000020000000
  %5622 = fadd fast float %5621, 0xBFF8000040000000
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = fmul fast float %4597, 1.000000e+01
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fmul fast float %5625, 2.000000e+00
  %5627 = fsub fast float 3.000000e+00, %5626
  %5628 = fmul fast float %5625, %5625
  %5629 = fmul fast float %5628, %5627
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = fsub fast float 0x3FE3333340000000, %5603
  %5632 = fmul fast float %5631, 0x400AAAAAA0000000
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fmul fast float %5630, %5633
  %5635 = fmul fast float %5597, 0x3FEA2B8620000000
  %5636 = fmul fast float %5598, 0x3FEA2B8620000000
  %5637 = fmul fast float %5599, 0x3FEA2B8620000000
  %5638 = fadd fast float %5635, 0x3FC81DFBA0000000
  %5639 = fmul fast float %5638, %5597
  %5640 = fadd fast float %5639, 0x3F910E6020000000
  %5641 = fadd fast float %5636, 0x3FC81DFBA0000000
  %5642 = fmul fast float %5641, %5598
  %5643 = fadd fast float %5642, 0x3F910E6020000000
  %5644 = fadd fast float %5637, 0x3FC81DFBA0000000
  %5645 = fmul fast float %5644, %5599
  %5646 = fadd fast float %5645, 0x3F910E6020000000
  %5647 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5648 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5650 = fsub fast float %5647, %5597
  %5651 = fsub fast float %5648, %5598
  %5652 = fsub fast float %5649, %5599
  %5653 = fmul fast float %5650, %5617
  %5654 = fmul fast float %5653, %5634
  %5655 = fmul fast float %5651, %5617
  %5656 = fmul fast float %5655, %5634
  %5657 = fmul fast float %5652, %5617
  %5658 = fmul fast float %5657, %5634
  %5659 = fadd fast float %5654, %5597
  %5660 = fadd fast float %5656, %5598
  %5661 = fadd fast float %5658, %5599
  %5662 = fmul fast float %5604, %5604
  %5663 = fmul fast float %5662, %5662
  %5664 = fadd fast float %5620, 1.000000e+00
  %5665 = fsub fast float %5664, %5634
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = fsub fast float 1.000000e+00, %5663
  %5670 = call float @dx.op.binary.f32(i32 36, float %5666, float %5669)  ; FMin(a,b)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5672 = call float @dx.op.binary.f32(i32 35, float %5670, float %5671)  ; FMax(a,b)
  %5673 = fadd fast float %5668, 0xBFE4CCCCC0000000
  %5674 = fmul fast float %5673, 0x4006DB6DA0000000
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = fmul fast float %5675, 2.000000e+00
  %5677 = fsub fast float 3.000000e+00, %5676
  %5678 = bitcast float %5600 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = add nsw i32 %5679, 532487669
  %5681 = bitcast i32 %5680 to float
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = bitcast float %5601 to i32
  %5688 = ashr i32 %5687, 1
  %5689 = add nsw i32 %5688, 532487669
  %5690 = bitcast i32 %5689 to float
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = fmul fast float %5694, 2.000000e+00
  %5696 = bitcast float %5602 to i32
  %5697 = ashr i32 %5696, 1
  %5698 = add nsw i32 %5697, 532487669
  %5699 = bitcast i32 %5698 to float
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = bitcast float %5700 to i32
  %5702 = sub nsw i32 2129859010, %5701
  %5703 = bitcast i32 %5702 to float
  %5704 = fmul fast float %5703, 2.000000e+00
  %5705 = fsub fast float 0x4002A9FBE0000000, %5686
  %5706 = fadd fast float %5686, 0x3FD54FDF00000000
  %5707 = bitcast float %5706 to i32
  %5708 = sub nsw i32 2129859010, %5707
  %5709 = bitcast i32 %5708 to float
  %5710 = fmul fast float %5709, %5705
  %5711 = fmul fast float %5710, %5710
  %5712 = fsub fast float 0x4002A9FBE0000000, %5695
  %5713 = fadd fast float %5695, 0x3FD54FDF00000000
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5716, %5712
  %5718 = fmul fast float %5717, %5717
  %5719 = fsub fast float 0x4002A9FBE0000000, %5704
  %5720 = fadd fast float %5704, 0x3FD54FDF00000000
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = fmul fast float %5723, %5719
  %5725 = fmul fast float %5724, %5724
  %5726 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5711)  ; FMax(a,b)
  %5727 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5718)  ; FMax(a,b)
  %5728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5725)  ; FMax(a,b)
  %5729 = fsub fast float 1.000000e+00, %5615
  %5730 = fadd fast float %5729, %5630
  %5731 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5732 = fsub fast float 1.000000e+00, %5009
  %5733 = fmul fast float %5672, %5732
  %5734 = fmul fast float %5675, %5675
  %5735 = fmul fast float %5734, %5733
  %5736 = fmul fast float %5735, %5677
  %5737 = fmul fast float %5732, 0xBFE99999A0000000
  %5738 = fmul fast float %5737, %5617
  %5739 = fmul fast float %5738, %5634
  %5740 = fadd fast float %5739, 1.000000e+00
  %5741 = fadd fast float %5603, -1.000000e+00
  %5742 = fmul fast float %5740, %5741
  %5743 = fadd fast float %5742, 1.000000e+00
  %5744 = fsub fast float %5726, %5600
  %5745 = fsub fast float %5727, %5601
  %5746 = fsub fast float %5728, %5602
  %5747 = fmul fast float %5736, %5744
  %5748 = fmul fast float %5736, %5745
  %5749 = fmul fast float %5736, %5746
  %5750 = fadd fast float %5747, %5600
  %5751 = fadd fast float %5748, %5601
  %5752 = fadd fast float %5749, %5602
  %5753 = fsub fast float %113, %5594
  %5754 = fsub fast float %114, %5595
  %5755 = fsub fast float %115, %5596
  %5756 = fmul fast float %5736, %5753
  %5757 = fmul fast float %5736, %5754
  %5758 = fmul fast float %5736, %5755
  %5759 = fadd fast float %5756, %5594
  %5760 = fadd fast float %5757, %5595
  %5761 = fadd fast float %5758, %5596
  %5762 = fmul fast float %5736, %5731
  %5763 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5762, %5764
  %5766 = fadd fast float %5765, %5763
  %5767 = fsub fast float 1.000000e+00, %5604
  %5768 = fmul fast float %5736, %5767
  %5769 = fadd fast float %5768, %5604
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5759, %5771
  %5773 = fmul fast float %5760, %5771
  %5774 = fmul fast float %5761, %5771
  br label %5775

; <label>:5775                                    ; preds = %5606, %5593
  %5776 = phi float [ %5772, %5606 ], [ %5594, %5593 ]
  %5777 = phi float [ %5773, %5606 ], [ %5595, %5593 ]
  %5778 = phi float [ %5774, %5606 ], [ %5596, %5593 ]
  %5779 = phi float [ %5659, %5606 ], [ %5597, %5593 ]
  %5780 = phi float [ %5660, %5606 ], [ %5598, %5593 ]
  %5781 = phi float [ %5661, %5606 ], [ %5599, %5593 ]
  %5782 = phi float [ %5750, %5606 ], [ %5600, %5593 ]
  %5783 = phi float [ %5751, %5606 ], [ %5601, %5593 ]
  %5784 = phi float [ %5752, %5606 ], [ %5602, %5593 ]
  %5785 = phi float [ %5766, %5606 ], [ %5603, %5593 ]
  %5786 = phi float [ %5769, %5606 ], [ %5604, %5593 ]
  %5787 = icmp eq i32 %56, 0
  br i1 %5787, label %5818, label %5788

; <label>:5788                                    ; preds = %5775
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5792 = fmul fast float %5790, %106
  %5793 = fmul fast float %5791, %107
  %5794 = fmul fast float %5792, 1.024000e+03
  %5795 = fmul fast float %5793, 1.024000e+03
  %5796 = fadd fast float %5794, -5.120000e+02
  %5797 = fadd fast float %5795, -5.120000e+02
  %5798 = fmul fast float %5792, 0x4081BEDF00000000
  %5799 = fadd fast float %5798, 0xC071BEDF00000000
  %5800 = call float @dx.op.unary.f32(i32 22, float %5799)  ; Frc(value)
  %5801 = fmul fast float %5796, %5800
  %5802 = fadd fast float %5801, %5797
  %5803 = fmul fast float %5793, 0x4073BEBE20000000
  %5804 = fadd fast float %5803, 0xC063BEBE20000000
  %5805 = call float @dx.op.unary.f32(i32 22, float %5804)  ; Frc(value)
  %5806 = fmul fast float %5797, %5805
  %5807 = fadd fast float %5806, %5796
  %5808 = fmul fast float %5802, %5807
  %5809 = call float @dx.op.unary.f32(i32 22, float %5808)  ; Frc(value)
  %5810 = add i32 %306, 12
  %5811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5810, i32 undef)  ; BufferLoad(srv,index,wot)
  %5812 = extractvalue %dx.types.ResRet.i32 %5811, 0
  %5813 = and i32 %5812, 255
  %5814 = uitofp i32 %5813 to float
  %5815 = fmul fast float %5814, 0x3F70101020000000
  %5816 = fcmp fast olt float %5809, %5815
  br i1 %5816, label %5817, label %5818

; <label>:5817                                    ; preds = %5788
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5818

; <label>:5818                                    ; preds = %5817, %5788, %5775
  %5819 = fsub fast float -0.000000e+00, %195
  %5820 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.unary.f32(i32 25, float %5820)  ; Rsqrt(value)
  %5822 = fmul fast float %5821, %193
  %5823 = fmul fast float %5821, %194
  %5824 = fmul fast float %5821, %195
  %5825 = fsub fast float -0.000000e+00, %5822
  %5826 = fsub fast float -0.000000e+00, %5823
  %5827 = fsub fast float -0.000000e+00, %5824
  %5828 = select i1 %252, float 0.000000e+00, float %5784
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float %5776, float %5777, float %5778)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fmul fast float %5831, 2.000000e+00
  %5833 = fmul fast float %5832, %5776
  %5834 = fmul fast float %5832, %5777
  %5835 = fmul fast float %5832, %5778
  %5836 = fsub fast float %5822, %5833
  %5837 = fsub fast float %5823, %5834
  %5838 = fsub fast float %5824, %5835
  %5839 = call float @dx.op.binary.f32(i32 36, float %5786, float 1.000000e+00)  ; FMin(a,b)
  %5840 = fsub fast float 1.000000e+00, %5786
  %5841 = bitcast float %5840 to i32
  %5842 = sub nsw i32 2129859010, %5841
  %5843 = bitcast i32 %5842 to float
  %5844 = fsub fast float 1.000000e+00, %77
  %5845 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5845, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5847 = fdiv fast float %5844, %5846
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = fmul fast float %5849, 5.000000e-01
  %5851 = fadd fast float %5850, 5.000000e-01
  %5852 = fmul fast float %5851, %77
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5855 = fmul fast float %5854, %5847
  %5856 = fadd fast float %5852, %5855
  %5857 = fsub fast float 5.000000e-01, %5850
  %5858 = fmul fast float %5857, %5779
  %5859 = fmul fast float %5857, %5780
  %5860 = fmul fast float %5857, %5781
  %5861 = fadd fast float %5856, %5858
  %5862 = fadd fast float %5856, %5859
  %5863 = fadd fast float %5856, %5860
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = fmul fast float %5865, 5.000000e-01
  %5867 = fadd fast float %5866, 5.000000e-01
  %5868 = fmul fast float %5867, %77
  %5869 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = fmul fast float %5870, %5847
  %5872 = fadd fast float %5868, %5871
  %5873 = fsub fast float 5.000000e-01, %5866
  %5874 = fmul fast float %5873, %5779
  %5875 = fmul fast float %5873, %5780
  %5876 = fmul fast float %5873, %5781
  %5877 = fadd fast float %5872, %5874
  %5878 = fadd fast float %5872, %5875
  %5879 = fadd fast float %5872, %5876
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = call float @dx.op.binary.f32(i32 36, float %5779, float %5881)  ; FMin(a,b)
  %5883 = fsub fast float 1.000000e+00, %5839
  %5884 = fmul fast float %5882, %5883
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5780, float %5881)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5883
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = call float @dx.op.binary.f32(i32 36, float %5781, float %5881)  ; FMin(a,b)
  %5896 = fmul fast float %5895, %5883
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = bitcast float %5897 to i32
  %5899 = sub nsw i32 2129859010, %5898
  %5900 = bitcast i32 %5899 to float
  %5901 = fmul fast float %5839, %78
  %5902 = fmul fast float %5901, %5861
  %5903 = fmul fast float %5902, %5888
  %5904 = fmul fast float %5839, %79
  %5905 = fmul fast float %5904, %5862
  %5906 = fmul fast float %5905, %5894
  %5907 = fmul fast float %5839, %80
  %5908 = fmul fast float %5907, %5863
  %5909 = fmul fast float %5908, %5900
  %5910 = call float @dx.op.binary.f32(i32 36, float %5782, float %5881)  ; FMin(a,b)
  %5911 = fmul fast float %5910, %5883
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = bitcast float %5912 to i32
  %5914 = sub nsw i32 2129859010, %5913
  %5915 = bitcast i32 %5914 to float
  %5916 = call float @dx.op.binary.f32(i32 36, float %5783, float %5881)  ; FMin(a,b)
  %5917 = fmul fast float %5916, %5883
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = bitcast float %5918 to i32
  %5920 = sub nsw i32 2129859010, %5919
  %5921 = bitcast i32 %5920 to float
  %5922 = call float @dx.op.binary.f32(i32 36, float %5828, float %5881)  ; FMin(a,b)
  %5923 = fmul fast float %5922, %5883
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = bitcast float %5924 to i32
  %5926 = sub nsw i32 2129859010, %5925
  %5927 = bitcast i32 %5926 to float
  %5928 = fmul fast float %5901, %5877
  %5929 = fmul fast float %5928, %5915
  %5930 = fmul fast float %5904, %5878
  %5931 = fmul fast float %5930, %5921
  %5932 = fmul fast float %5907, %5879
  %5933 = fmul fast float %5932, %5927
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5906, float %5909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = select i1 %252, float 0.000000e+00, float %5903
  %5936 = select i1 %252, float %5934, float %5906
  %5937 = select i1 %252, float 0.000000e+00, float %5909
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5931, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = select i1 %252, float 0.000000e+00, float %5929
  %5940 = select i1 %252, float %5938, float %5931
  %5941 = select i1 %252, float 0.000000e+00, float %5933
  %5942 = fmul fast float %3997, %3997
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5830, 9.843750e-01
  %5945 = fmul fast float %5785, 9.843750e-01
  %5946 = fadd fast float %5944, 7.812500e-03
  %5947 = fadd fast float %5945, 7.812500e-03
  %5948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5946, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.ResRet.f32 %5948, 3
  %5953 = fsub fast float 1.000000e+00, %5943
  %5954 = fsub fast float %5951, %5949
  %5955 = fsub fast float %5952, %5950
  %5956 = fmul fast float %5954, %5953
  %5957 = fmul fast float %5955, %5953
  %5958 = fadd fast float %5956, %5949
  %5959 = fadd fast float %5957, %5950
  %5960 = fmul fast float %5958, %5782
  %5961 = fmul fast float %5958, %5783
  %5962 = fmul fast float %5958, %5828
  %5963 = fadd fast float %5960, %5959
  %5964 = fadd fast float %5961, %5959
  %5965 = fadd fast float %5962, %5959
  %5966 = fcmp fast ogt float %4592, 0.000000e+00
  br i1 %5966, label %5967, label %5993

; <label>:5967                                    ; preds = %5818
  %5968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4592, float %5830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5972 = fadd fast float %5969, -5.000000e-01
  %5973 = fadd fast float %5970, -5.000000e-01
  %5974 = fadd fast float %5971, -5.000000e-01
  %5975 = fsub fast float 1.000000e+00, %5782
  %5976 = fsub fast float 1.000000e+00, %5783
  %5977 = fsub fast float 1.000000e+00, %5828
  %5978 = fmul fast float %5782, 4.000000e+00
  %5979 = fmul fast float %5978, %5975
  %5980 = fmul fast float %5979, %5972
  %5981 = fmul fast float %5783, 4.000000e+00
  %5982 = fmul fast float %5981, %5976
  %5983 = fmul fast float %5982, %5973
  %5984 = fmul fast float %5828, 4.000000e+00
  %5985 = fmul fast float %5984, %5977
  %5986 = fmul fast float %5985, %5974
  %5987 = fadd fast float %5980, %5963
  %5988 = fadd fast float %5983, %5964
  %5989 = fadd fast float %5986, %5965
  %5990 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  br label %5993

; <label>:5993                                    ; preds = %5967, %5818
  %5994 = phi float [ %5990, %5967 ], [ %5963, %5818 ]
  %5995 = phi float [ %5991, %5967 ], [ %5964, %5818 ]
  %5996 = phi float [ %5992, %5967 ], [ %5965, %5818 ]
  %5997 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 35, float %5994, float %5997)  ; FMax(a,b)
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = fmul fast float %5999, %5935
  %6001 = fmul fast float %5999, %5936
  %6002 = fmul fast float %5999, %5937
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = fcmp fast ogt float %6003, 0x3E7FF19E20000000
  %6005 = fdiv fast float 1.000000e+00, %6003
  %6006 = select i1 %6004, float %6005, float 0.000000e+00
  %6007 = fmul fast float %6006, %5779
  %6008 = fmul fast float %6006, %5780
  %6009 = fmul fast float %6006, %5781
  %6010 = fadd fast float %6007, -1.000000e+00
  %6011 = fadd fast float %6008, -1.000000e+00
  %6012 = fadd fast float %6009, -1.000000e+00
  %6013 = fmul fast float %6010, 5.000000e-01
  %6014 = fmul fast float %6011, 5.000000e-01
  %6015 = fmul fast float %6012, 5.000000e-01
  %6016 = fadd fast float %6013, 1.000000e+00
  %6017 = fadd fast float %6014, 1.000000e+00
  %6018 = fadd fast float %6015, 1.000000e+00
  %6019 = call float @dx.op.binary.f32(i32 35, float %5830, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6020 = fdiv fast float %3997, %6019
  %6021 = fcmp fast olt float %4619, 1.270000e+02
  %6022 = fcmp fast olt float %4620, 1.270000e+02
  %6023 = fcmp fast olt float %4621, 1.270000e+02
  %6024 = fmul fast float %4619, 0xBFF7154760000000
  %6025 = fmul fast float %6024, %6020
  %6026 = fmul fast float %4620, 0xBFF7154760000000
  %6027 = fmul fast float %6026, %6020
  %6028 = fmul fast float %4621, 0xBFF7154760000000
  %6029 = fmul fast float %6028, %6020
  %6030 = call float @dx.op.unary.f32(i32 21, float %6025)  ; Exp(value)
  %6031 = call float @dx.op.unary.f32(i32 21, float %6027)  ; Exp(value)
  %6032 = call float @dx.op.unary.f32(i32 21, float %6029)  ; Exp(value)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6035 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6036 = select i1 %6021, float %6033, float 0.000000e+00
  %6037 = select i1 %6022, float %6034, float 0.000000e+00
  %6038 = select i1 %6023, float %6035, float 0.000000e+00
  %6039 = fmul fast float %6036, %5999
  %6040 = fmul fast float %6037, %5999
  %6041 = fmul fast float %6038, %5999
  %6042 = fadd fast float %6039, -1.000000e+00
  %6043 = fadd fast float %6040, -1.000000e+00
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fmul fast float %5994, %5939
  %6046 = fmul fast float %5995, %5940
  %6047 = fmul fast float %5996, %5941
  %6048 = fsub fast float 1.000000e+00, %5830
  %6049 = bitcast float %6048 to i32
  %6050 = sitofp i32 %6049 to float
  %6051 = fmul fast float %6050, 5.000000e+00
  %6052 = fadd fast float %6051, 0xC1EFBF8940000000
  %6053 = fptosi float %6052 to i32
  %6054 = bitcast i32 %6053 to float
  %6055 = fmul fast float %6054, %4593
  %6056 = fmul fast float %5935, %6055
  %6057 = fmul fast float %6056, %5999
  %6058 = fmul fast float %6057, %6016
  %6059 = fmul fast float %5936, %6055
  %6060 = fmul fast float %6059, %5999
  %6061 = fmul fast float %6060, %6017
  %6062 = fmul fast float %5937, %6055
  %6063 = fmul fast float %6062, %5999
  %6064 = fmul fast float %6063, %6018
  %6065 = fmul fast float %6000, %4589
  %6066 = fmul fast float %6001, %4589
  %6067 = fmul fast float %6002, %4589
  %6068 = fadd fast float %6045, %4582
  %6069 = fadd fast float %6068, %6058
  %6070 = fmul fast float %6069, %4589
  %6071 = fadd fast float %6046, %4583
  %6072 = fadd fast float %6071, %6061
  %6073 = fmul fast float %6072, %4589
  %6074 = fadd fast float %6047, %4584
  %6075 = fadd fast float %6074, %6064
  %6076 = fmul fast float %6075, %4589
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6079 = fcmp fast oeq float %6078, 0.000000e+00
  br i1 %6079, label %7176, label %6080

; <label>:6080                                    ; preds = %5993
  %6081 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6083 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6088, 1
  %6091 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = select i1 %252, float %6089, float %6085
  %6093 = select i1 %252, float %6091, float %6086
  %6094 = select i1 %252, float %6090, float %6087
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6097 = fmul fast float %6096, %113
  %6098 = fmul fast float %6096, %114
  %6099 = fmul fast float %6096, %115
  %6100 = fadd fast float %6097, %193
  %6101 = fadd fast float %6098, %194
  %6102 = fadd fast float %6099, %195
  %6103 = fcmp fast olt float %6078, 0.000000e+00
  br i1 %6103, label %6743, label %6104

; <label>:6104                                    ; preds = %6080
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6120 = fmul fast float %6106, %6100
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6107, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6108, float %6121)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6109
  %6124 = fmul fast float %6111, %6100
  %6125 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6112, float %6124)  ; FMad(a,b,c)
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6113, float %6125)  ; FMad(a,b,c)
  %6127 = fadd fast float %6126, %6114
  %6128 = fmul fast float %6116, %6100
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6117, float %6128)  ; FMad(a,b,c)
  %6130 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6118, float %6129)  ; FMad(a,b,c)
  %6131 = fadd fast float %6130, %6119
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = fcmp fast une float %6133, 0.000000e+00
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6139 = fmul fast float %6138, %6123
  %6140 = fmul fast float %6138, %6127
  %6141 = fadd fast float %6139, %6136
  %6142 = fadd fast float %6140, %6137
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6147 = fmul fast float %6146, %6123
  %6148 = fmul fast float %6146, %6127
  %6149 = fadd fast float %6147, %6144
  %6150 = fadd fast float %6148, %6145
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6153 = fsub fast float %6152, %6131
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = fmul fast float %6153, %6154
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  br i1 %6134, label %6218, label %6158

; <label>:6158                                    ; preds = %6104
  %6159 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6162 = fadd fast float %6161, %6159
  %6163 = fcmp fast ogt float %6162, 0.000000e+00
  br i1 %6163, label %6164, label %6188

; <label>:6164                                    ; preds = %6158
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = fsub fast float %6149, %6166
  %6169 = fsub fast float %6150, %6167
  %6170 = fcmp fast olt float %6168, 0.000000e+00
  %6171 = fcmp fast olt float %6169, 0.000000e+00
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6172, 2
  %6176 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6177 = select i1 %6170, float %6173, float %6175
  %6178 = select i1 %6171, float %6174, float %6176
  %6179 = fmul fast float %6177, %6168
  %6180 = fmul fast float %6178, %6169
  %6181 = call float @dx.op.unary.f32(i32 6, float %6179)  ; FAbs(value)
  %6182 = call float @dx.op.unary.f32(i32 6, float %6180)  ; FAbs(value)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6184 = call float @dx.op.binary.f32(i32 35, float %6181, float %6182)  ; FMax(a,b)
  %6185 = fsub fast float %6183, %6184
  %6186 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  %6187 = fmul fast float %6186, %6157
  br label %6188

; <label>:6188                                    ; preds = %6164, %6158
  %6189 = phi float [ %6187, %6164 ], [ 0.000000e+00, %6158 ]
  %6190 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6191 = extractvalue %dx.types.CBufRet.f32 %6160, 1
  %6192 = fadd fast float %6191, %6190
  %6193 = fcmp fast ogt float %6192, 0.000000e+00
  br i1 %6193, label %6194, label %6218

; <label>:6194                                    ; preds = %6188
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = fsub fast float %6141, %6196
  %6199 = fsub fast float %6142, %6197
  %6200 = fcmp fast olt float %6198, 0.000000e+00
  %6201 = fcmp fast olt float %6199, 0.000000e+00
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = select i1 %6200, float %6203, float %6205
  %6208 = select i1 %6201, float %6204, float %6206
  %6209 = fmul fast float %6207, %6198
  %6210 = fmul fast float %6208, %6199
  %6211 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6212 = call float @dx.op.unary.f32(i32 6, float %6210)  ; FAbs(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6214 = call float @dx.op.binary.f32(i32 35, float %6211, float %6212)  ; FMax(a,b)
  %6215 = fsub fast float %6213, %6214
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fmul fast float %6216, %6157
  br label %6218

; <label>:6218                                    ; preds = %6194, %6188, %6104
  %6219 = phi float [ 0.000000e+00, %6104 ], [ %6217, %6194 ], [ 0.000000e+00, %6188 ]
  %6220 = phi float [ 0.000000e+00, %6104 ], [ %6189, %6194 ], [ %6189, %6188 ]
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 1
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = fsub fast float %6123, %6225
  %6228 = fsub fast float %6127, %6226
  %6229 = fcmp fast olt float %6227, 0.000000e+00
  %6230 = fcmp fast olt float %6228, 0.000000e+00
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6235 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6236 = select i1 %6229, float %6232, float %6234
  %6237 = select i1 %6230, float %6233, float %6235
  %6238 = fmul fast float %6236, %6227
  %6239 = fmul fast float %6237, %6228
  %6240 = call float @dx.op.unary.f32(i32 6, float %6238)  ; FAbs(value)
  %6241 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6243 = call float @dx.op.binary.f32(i32 35, float %6240, float %6241)  ; FMax(a,b)
  %6244 = fsub fast float %6242, %6243
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = call float @dx.op.binary.f32(i32 36, float %6245, float %6223)  ; FMin(a,b)
  %6247 = fmul fast float %6246, %6157
  %6248 = fsub fast float %6219, %6247
  %6249 = fsub fast float %6220, %6219
  %6250 = fsub fast float %6249, %6247
  %6251 = call float @dx.op.binary.f32(i32 35, float %6219, float %6220)  ; FMax(a,b)
  %6252 = call float @dx.op.binary.f32(i32 35, float %6247, float %6251)  ; FMax(a,b)
  %6253 = fcmp fast olt float %6252, 1.000000e+00
  br i1 %6253, label %6254, label %6652, !dx.controlflow.hints !99

; <label>:6254                                    ; preds = %6218
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = fcmp fast une float %6256, 0.000000e+00
  br i1 %6257, label %6258, label %6652, !dx.controlflow.hints !100

; <label>:6258                                    ; preds = %6254
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.CBufRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.CBufRet.f32 %6259, 3
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.CBufRet.f32 %6269, 3
  %6274 = fmul fast float %6260, %6100
  %6275 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6261, float %6274)  ; FMad(a,b,c)
  %6276 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6262, float %6275)  ; FMad(a,b,c)
  %6277 = fadd fast float %6276, %6263
  %6278 = fmul fast float %6265, %6100
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6266, float %6278)  ; FMad(a,b,c)
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6267, float %6279)  ; FMad(a,b,c)
  %6281 = fadd fast float %6280, %6268
  %6282 = fmul fast float %6270, %6100
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6271, float %6282)  ; FMad(a,b,c)
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6272, float %6283)  ; FMad(a,b,c)
  %6285 = fadd fast float %6284, %6273
  %6286 = fcmp fast oge float %6277, 1.000000e+00
  %6287 = fcmp fast oge float %6281, 1.000000e+00
  %6288 = or i1 %6286, %6287
  %6289 = fcmp fast olt float %6277, 0.000000e+00
  %6290 = fcmp fast olt float %6281, 0.000000e+00
  %6291 = or i1 %6289, %6290
  %6292 = or i1 %6288, %6291
  br i1 %6292, label %6652, label %6293, !dx.controlflow.hints !101

; <label>:6293                                    ; preds = %6258
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.i32 %6298, 2
  %6300 = uitofp i32 %6299 to float
  %6301 = extractvalue %dx.types.CBufRet.i32 %6298, 3
  %6302 = uitofp i32 %6301 to float
  %6303 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6304 = fmul fast float %6303, 2.000000e+00
  %6305 = fsub fast float %6277, %6295
  %6306 = fsub fast float %6281, %6296
  %6307 = fmul fast float %6304, %6305
  %6308 = fmul fast float %6304, %6306
  %6309 = fdiv fast float 1.000000e+00, %6083
  %6310 = fmul fast float %6308, %6309
  %6311 = call float @dx.op.unary.f32(i32 6, float %6310)  ; FAbs(value)
  %6312 = fmul fast float %6297, %6102
  %6313 = fmul fast float %6312, %6304
  %6314 = call float @dx.op.unary.f32(i32 6, float %6313)  ; FAbs(value)
  %6315 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6316 = call float @dx.op.binary.f32(i32 35, float %6314, float %6311)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6315, float %6316)  ; FMax(a,b)
  %6318 = fmul fast float %6317, 2.000000e+00
  %6319 = call float @dx.op.unary.f32(i32 23, float %6318)  ; Log(value)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6319, float %6300)  ; FMax(a,b)
  %6321 = call float @dx.op.unary.f32(i32 22, float %6320)  ; Frc(value)
  %6322 = fadd fast float %6321, 0xBFEA666660000000
  %6323 = fmul fast float %6322, 8.000000e+00
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = call float @dx.op.unary.f32(i32 27, float %6320)  ; Round_ni(value)
  %6326 = fadd fast float %6325, %6324
  %6327 = call float @dx.op.binary.f32(i32 36, float %6326, float %6302)  ; FMin(a,b)
  %6328 = call float @dx.op.unary.f32(i32 27, float %6327)  ; Round_ni(value)
  %6329 = fsub fast float -0.000000e+00, %6328
  %6330 = call float @dx.op.unary.f32(i32 21, float %6329)  ; Exp(value)
  %6331 = fmul fast float %6330, %6304
  %6332 = fmul fast float %6331, %6277
  %6333 = fmul fast float %6331, %6281
  %6334 = fmul fast float %6332, 2.500000e-01
  %6335 = fmul fast float %6333, 2.500000e-01
  %6336 = fadd fast float %6334, 5.000000e-01
  %6337 = fadd fast float %6335, 5.000000e-01
  %6338 = fsub fast float %6302, %6300
  %6339 = fptoui float %6338 to i32
  %6340 = add i32 %6339, 320
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6340)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = fcmp fast une float %6327, %6302
  %6345 = fsub fast float %6277, %6342
  %6346 = fsub fast float %6281, %6343
  %6347 = call float @dx.op.unary.f32(i32 6, float %6345)  ; FAbs(value)
  %6348 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6349 = fmul fast float %6347, %6331
  %6350 = fmul fast float %6348, %6331
  %6351 = fcmp fast olt float %6349, 1.000000e+00
  %6352 = fcmp fast olt float %6350, 1.000000e+00
  %6353 = and i1 %6351, %6352
  %6354 = or i1 %6344, %6353
  br i1 %6354, label %6355, label %6652, !dx.controlflow.hints !102

; <label>:6355                                    ; preds = %6293
  %6356 = fmul fast float %6333, 5.000000e-01
  %6357 = fmul fast float %6332, 5.000000e-01
  %6358 = fadd fast float %6356, 5.000000e-01
  %6359 = fadd fast float %6357, 5.000000e-01
  %6360 = sitofp i32 %6299 to float
  %6361 = fsub fast float %6327, %6360
  %6362 = call float @dx.op.unary.f32(i32 27, float %6361)  ; Round_ni(value)
  %6363 = call float @dx.op.unary.f32(i32 22, float %6327)  ; Frc(value)
  %6364 = call float @dx.op.unary.f32(i32 22, float %6359)  ; Frc(value)
  %6365 = call float @dx.op.unary.f32(i32 22, float %6358)  ; Frc(value)
  %6366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6364, float %6365, float %6362, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = extractvalue %dx.types.ResRet.f32 %6366, 3
  %6371 = fcmp fast ogt float %6363, 0.000000e+00
  br i1 %6371, label %6372, label %6393, !dx.controlflow.hints !103

; <label>:6372                                    ; preds = %6355
  %6373 = fadd fast float %6362, 1.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 22, float %6336)  ; Frc(value)
  %6375 = call float @dx.op.unary.f32(i32 22, float %6337)  ; Frc(value)
  %6376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6374, float %6375, float %6373, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6377 = extractvalue %dx.types.ResRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.ResRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.ResRet.f32 %6376, 2
  %6380 = extractvalue %dx.types.ResRet.f32 %6376, 3
  %6381 = fsub fast float %6377, %6367
  %6382 = fsub fast float %6378, %6368
  %6383 = fsub fast float %6379, %6369
  %6384 = fsub fast float %6380, %6370
  %6385 = fmul fast float %6381, %6363
  %6386 = fmul fast float %6382, %6363
  %6387 = fmul fast float %6383, %6363
  %6388 = fmul fast float %6384, %6363
  %6389 = fadd fast float %6385, %6367
  %6390 = fadd fast float %6386, %6368
  %6391 = fadd fast float %6387, %6369
  %6392 = fadd fast float %6388, %6370
  br label %6393

; <label>:6393                                    ; preds = %6372, %6355
  %6394 = phi float [ %6389, %6372 ], [ %6367, %6355 ]
  %6395 = phi float [ %6390, %6372 ], [ %6368, %6355 ]
  %6396 = phi float [ %6391, %6372 ], [ %6369, %6355 ]
  %6397 = phi float [ %6392, %6372 ], [ %6370, %6355 ]
  %6398 = fadd fast float %6394, -5.000000e-01
  %6399 = fadd fast float %6396, -5.000000e-01
  %6400 = fmul fast float %6398, 0xBFD5555560000000
  %6401 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6399, float %6400)  ; FMad(a,b,c)
  %6402 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6395, float 0.000000e+00)  ; FMad(a,b,c)
  %6403 = fadd fast float %6402, %6397
  %6404 = fmul fast float %6398, -7.500000e-01
  %6405 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6399, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6395, float 0.000000e+00)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6397
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6415 = fsub fast float %6411, %6401
  %6416 = fsub fast float %6412, %6403
  %6417 = fsub fast float %6413, %6405
  %6418 = fsub fast float %6414, %6407
  %6419 = fmul fast float %6415, %6409
  %6420 = fmul fast float %6416, %6409
  %6421 = fmul fast float %6417, %6409
  %6422 = fmul fast float %6418, %6409
  %6423 = fadd fast float %6419, %6401
  %6424 = fadd fast float %6420, %6403
  %6425 = fadd fast float %6421, %6405
  %6426 = fadd fast float %6422, %6407
  %6427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.i32 %6427, 0
  %6429 = and i32 %6428, 536870911
  %6430 = uitofp i32 %6429 to float
  %6431 = fmul fast float %6430, %6277
  %6432 = fmul fast float %6430, %6281
  %6433 = fptoui float %6431 to i32
  %6434 = fptoui float %6432 to i32
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 0
  %6437 = and i32 %6436, 31
  %6438 = lshr i32 %6433, %6437
  %6439 = lshr i32 %6434, %6437
  %6440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.i32 %6440, 0
  %6442 = and i32 %6441, 31
  %6443 = shl i32 1, %6442
  %6444 = call i32 @dx.op.binary.i32(i32 40, i32 %6443, i32 4)  ; UMin(a,b)
  %6445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.i32 %6445, 0
  %6447 = extractvalue %dx.types.ResRet.i32 %6445, 1
  %6448 = icmp eq i32 %6444, 0
  br i1 %6448, label %6490, label %6449

; <label>:6449                                    ; preds = %6393
  br label %6450

; <label>:6450                                    ; preds = %6478, %6449
  %6451 = phi i32 [ %6481, %6478 ], [ 0, %6449 ]
  %6452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.i32 %6452, 0
  %6454 = lshr i32 %6453, 16
  %6455 = and i32 %6454, 31
  %6456 = shl i32 %6439, %6455
  %6457 = add i32 %6456, %6438
  %6458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6459 = extractvalue %dx.types.ResRet.i32 %6458, 0
  %6460 = and i32 %6459, 31
  %6461 = shl i32 %6457, %6460
  %6462 = add i32 %6461, %6451
  %6463 = shl i32 %6462, 2
  %6464 = add i32 %6463, 32
  %6465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6464, i32 undef)  ; BufferLoad(srv,index,wot)
  %6466 = extractvalue %dx.types.ResRet.i32 %6465, 0
  %6467 = icmp slt i32 %6466, 0
  %6468 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6451
  %6469 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6451
  %6470 = bitcast float* %6468 to i32*
  %6471 = bitcast float* %6469 to i32*
  br i1 %6467, label %6472, label %6478

; <label>:6472                                    ; preds = %6450
  %6473 = and i32 %6466, 1073741823
  %6474 = add nuw nsw i32 %6473, 20
  %6475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6474, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.i32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.i32 %6475, 1
  br label %6478

; <label>:6478                                    ; preds = %6472, %6450
  %6479 = phi i32 [ %6476, %6472 ], [ %6446, %6450 ]
  %6480 = phi i32 [ %6477, %6472 ], [ %6447, %6450 ]
  store i32 %6479, i32* %6470, align 4
  store i32 %6480, i32* %6471, align 4
  %6481 = add nuw i32 %6451, 1
  %6482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.i32 %6482, 2
  %6484 = icmp eq i32 %6483, 0
  %6485 = icmp ugt i32 %6466, -1073741825
  %6486 = and i1 %6485, %6484
  %6487 = icmp ult i32 %6481, %6444
  %6488 = and i1 %6486, %6487
  br i1 %6488, label %6450, label %6489

; <label>:6489                                    ; preds = %6478
  br label %6490

; <label>:6490                                    ; preds = %6489, %6393
  %6491 = phi i32 [ 0, %6393 ], [ %6481, %6489 ]
  %6492 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6493 = fptoui float %6492 to i32
  %6494 = icmp eq i32 %6493, 0
  br i1 %6494, label %6546, label %6495

; <label>:6495                                    ; preds = %6490
  br label %6496

; <label>:6496                                    ; preds = %6541, %6495
  %6497 = phi i32 [ %6542, %6541 ], [ %6491, %6495 ]
  %6498 = phi i32 [ %6543, %6541 ], [ 0, %6495 ]
  %6499 = lshr i32 %6498, 2
  %6500 = and i32 %6498, 3
  %6501 = add nuw nsw i32 %6499, 83
  %6502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6501)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.i32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.i32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.i32 %6502, 2
  %6506 = extractvalue %dx.types.CBufRet.i32 %6502, 3
  %6507 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6503, i32* %6507, align 4
  %6508 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6504, i32* %6508, align 4
  %6509 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6505, i32* %6509, align 4
  %6510 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6506, i32* %6510, align 4
  %6511 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6500
  %6512 = load i32, i32* %6511, align 4, !tbaa !104, !noalias !108
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = lshr i32 %6514, 16
  %6516 = and i32 %6515, 31
  %6517 = shl i32 %6439, %6516
  %6518 = add i32 %6517, %6438
  %6519 = shl i32 %6518, 2
  %6520 = add i32 %6519, %6512
  %6521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6520, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.i32 %6521, 0
  %6523 = icmp eq i32 %6522, 0
  br i1 %6523, label %6541, label %6524

; <label>:6524                                    ; preds = %6496
  %6525 = icmp slt i32 %6522, 0
  %6526 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6497
  %6527 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6497
  %6528 = bitcast float* %6526 to i32*
  %6529 = bitcast float* %6527 to i32*
  br i1 %6525, label %6530, label %6537

; <label>:6530                                    ; preds = %6524
  %6531 = and i32 %6522, 1073741823
  %6532 = add i32 %6512, 20
  %6533 = add i32 %6532, %6531
  %6534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6533, i32 undef)  ; BufferLoad(srv,index,wot)
  %6535 = extractvalue %dx.types.ResRet.i32 %6534, 0
  %6536 = extractvalue %dx.types.ResRet.i32 %6534, 1
  br label %6537

; <label>:6537                                    ; preds = %6530, %6524
  %6538 = phi i32 [ %6535, %6530 ], [ %6446, %6524 ]
  %6539 = phi i32 [ %6536, %6530 ], [ %6447, %6524 ]
  store i32 %6538, i32* %6528, align 4
  store i32 %6539, i32* %6529, align 4
  %6540 = add i32 %6497, 1
  br label %6541

; <label>:6541                                    ; preds = %6537, %6496
  %6542 = phi i32 [ %6497, %6496 ], [ %6540, %6537 ]
  %6543 = add nuw i32 %6498, 1
  %6544 = icmp eq i32 %6543, %6493
  br i1 %6544, label %6545, label %6496

; <label>:6545                                    ; preds = %6541
  br label %6546

; <label>:6546                                    ; preds = %6545, %6490
  %6547 = phi i32 [ %6491, %6490 ], [ %6542, %6545 ]
  %6548 = icmp eq i32 %6547, 1
  %6549 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6550 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6548, label %6551, label %6554

; <label>:6551                                    ; preds = %6546
  %6552 = load float, float* %6549, align 4
  %6553 = load float, float* %6550, align 4
  br label %6581

; <label>:6554                                    ; preds = %6546
  %6555 = load float, float* %6549, align 4
  %6556 = load float, float* %6550, align 4
  %6557 = fdiv fast float 1.000000e+00, %6556
  %6558 = fsub fast float %6555, %6557
  %6559 = icmp ugt i32 %6547, 1
  br i1 %6559, label %6560, label %6576

; <label>:6560                                    ; preds = %6554
  br label %6561

; <label>:6561                                    ; preds = %6561, %6560
  %6562 = phi float [ %6571, %6561 ], [ %6558, %6560 ]
  %6563 = phi float [ %6572, %6561 ], [ %6555, %6560 ]
  %6564 = phi i32 [ %6573, %6561 ], [ 1, %6560 ]
  %6565 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6564
  %6566 = load float, float* %6565, align 4
  %6567 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6564
  %6568 = load float, float* %6567, align 4
  %6569 = fdiv fast float 1.000000e+00, %6568
  %6570 = fsub fast float %6566, %6569
  %6571 = call float @dx.op.binary.f32(i32 36, float %6562, float %6570)  ; FMin(a,b)
  %6572 = call float @dx.op.binary.f32(i32 35, float %6563, float %6566)  ; FMax(a,b)
  %6573 = add nuw i32 %6564, 1
  %6574 = icmp eq i32 %6573, %6547
  br i1 %6574, label %6575, label %6561

; <label>:6575                                    ; preds = %6561
  br label %6576

; <label>:6576                                    ; preds = %6575, %6554
  %6577 = phi float [ %6558, %6554 ], [ %6571, %6575 ]
  %6578 = phi float [ %6555, %6554 ], [ %6572, %6575 ]
  %6579 = fsub fast float %6578, %6577
  %6580 = fdiv fast float 1.000000e+00, %6579
  br label %6581

; <label>:6581                                    ; preds = %6576, %6551
  %6582 = phi float [ %6552, %6551 ], [ %6578, %6576 ]
  %6583 = phi float [ %6553, %6551 ], [ %6580, %6576 ]
  %6584 = fadd fast float %6285, %6582
  %6585 = fmul fast float %6584, %6583
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = fmul fast float %6586, 2.000000e+00
  %6588 = fsub fast float 1.000000e+00, %6587
  %6589 = fmul fast float %6423, %6423
  %6590 = fsub fast float %6424, %6589
  %6591 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6590)  ; FMax(a,b)
  %6592 = fdiv fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6424, %6423
  %6594 = fsub fast float %6425, %6593
  %6595 = fsub fast float %6588, %6423
  %6596 = fmul fast float %6588, %6588
  %6597 = fsub fast float %6596, %6424
  %6598 = fmul fast float %6592, %6594
  %6599 = fmul fast float %6598, %6595
  %6600 = fsub fast float %6597, %6599
  %6601 = fmul fast float %6424, %6424
  %6602 = fsub fast float %6426, %6601
  %6603 = fmul fast float %6594, %6594
  %6604 = fmul fast float %6603, %6592
  %6605 = fsub fast float %6602, %6604
  %6606 = fdiv fast float %6600, %6605
  %6607 = fmul fast float %6606, %6594
  %6608 = fsub fast float %6595, %6607
  %6609 = fmul fast float %6608, %6592
  %6610 = fmul fast float %6609, %6423
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %6606, %6424
  %6613 = fsub fast float %6611, %6612
  %6614 = fmul fast float %6609, %6609
  %6615 = fmul fast float %6606, 4.000000e+00
  %6616 = fmul fast float %6615, %6613
  %6617 = fsub fast float %6614, %6616
  %6618 = call float @dx.op.unary.f32(i32 24, float %6617)  ; Sqrt(value)
  %6619 = fcmp fast oge float %6609, 0.000000e+00
  %6620 = fsub fast float -0.000000e+00, %6618
  %6621 = select i1 %6619, float %6620, float %6618
  %6622 = fsub fast float %6621, %6609
  %6623 = fdiv fast float %6622, %6606
  %6624 = fdiv fast float %6613, %6622
  %6625 = fmul fast float %6623, 5.000000e-01
  %6626 = fmul fast float %6624, 2.000000e+00
  %6627 = select i1 %6619, float %6625, float %6626
  %6628 = select i1 %6619, float %6626, float %6625
  %6629 = call float @dx.op.binary.f32(i32 35, float %6627, float %6628)  ; FMax(a,b)
  %6630 = call float @dx.op.binary.f32(i32 36, float %6627, float %6628)  ; FMin(a,b)
  %6631 = fcmp fast ogt float %6588, %6629
  %6632 = fsub fast float %6588, %6630
  %6633 = fsub fast float %6588, %6629
  %6634 = fsub fast float %6629, %6630
  %6635 = select i1 %6631, float %6633, float %6634
  %6636 = fmul float %6632, %6635
  %6637 = select i1 %6631, float %6630, float %6588
  %6638 = fcmp fast ogt float %6588, %6630
  %6639 = fmul fast float %6637, %6629
  %6640 = fadd fast float %6637, %6629
  %6641 = fmul fast float %6640, %6423
  %6642 = fadd fast float %6639, %6424
  %6643 = fsub fast float %6642, %6641
  %6644 = fdiv fast float %6643, %6636
  %6645 = select i1 %6638, float %6644, float 0.000000e+00
  %6646 = fsub fast float 1.000000e+00, %6645
  %6647 = select i1 %6631, float %6646, float %6645
  %6648 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6650 = fmul fast float %6649, %6648
  %6651 = fsub fast float 1.000000e+00, %6650
  br label %6652

; <label>:6652                                    ; preds = %6581, %6293, %6258, %6254, %6218
  %6653 = phi float [ 1.000000e+00, %6218 ], [ %6651, %6581 ], [ 1.000000e+00, %6258 ], [ 1.000000e+00, %6293 ], [ 1.000000e+00, %6254 ]
  %6654 = fcmp fast ogt float %6250, 0.000000e+00
  br i1 %6654, label %6655, label %6663, !dx.controlflow.hints !117

; <label>:6655                                    ; preds = %6652
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6658 = fadd fast float %6657, %6131
  %6659 = call float @dx.op.binary.f32(i32 35, float %6658, float 0.000000e+00)  ; FMax(a,b)
  %6660 = fadd fast float %6659, 0x3F10000000000000
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6149, float %6150, float undef, float undef, i32 0, i32 0, i32 undef, float %6660)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  br label %6663

; <label>:6663                                    ; preds = %6655, %6652
  %6664 = phi float [ %6662, %6655 ], [ 1.000000e+00, %6652 ]
  %6665 = fcmp fast ogt float %6248, 0.000000e+00
  br i1 %6665, label %6666, label %6674, !dx.controlflow.hints !118

; <label>:6666                                    ; preds = %6663
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6669 = fadd fast float %6668, %6131
  %6670 = call float @dx.op.binary.f32(i32 35, float %6669, float 0.000000e+00)  ; FMax(a,b)
  %6671 = fadd fast float %6670, 0x3F10000000000000
  %6672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6141, float %6142, float undef, float undef, i32 0, i32 0, i32 undef, float %6671)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6673 = extractvalue %dx.types.ResRet.f32 %6672, 0
  br label %6674

; <label>:6674                                    ; preds = %6666, %6663
  %6675 = phi float [ %6673, %6666 ], [ 1.000000e+00, %6663 ]
  %6676 = fcmp fast ogt float %6247, 0.000000e+00
  br i1 %6676, label %6677, label %6689, !dx.controlflow.hints !119

; <label>:6677                                    ; preds = %6674
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6680 = fadd fast float %6679, %6131
  %6681 = call float @dx.op.binary.f32(i32 35, float %6680, float 0.000000e+00)  ; FMax(a,b)
  %6682 = fadd fast float %6681, 0x3F10000000000000
  br i1 %6134, label %6683, label %6686, !dx.controlflow.hints !120

; <label>:6683                                    ; preds = %6677
  %6684 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6123, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  br label %6689

; <label>:6686                                    ; preds = %6677
  %6687 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6123, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6688 = extractvalue %dx.types.ResRet.f32 %6687, 0
  br label %6689

; <label>:6689                                    ; preds = %6686, %6683, %6674
  %6690 = phi float [ %6685, %6683 ], [ %6688, %6686 ], [ 1.000000e+00, %6674 ]
  %6691 = fsub fast float %6664, %6653
  %6692 = fmul fast float %6691, %6220
  %6693 = fadd fast float %6692, %6653
  %6694 = fsub fast float %6675, %6693
  %6695 = fmul fast float %6694, %6219
  %6696 = fadd fast float %6695, %6693
  %6697 = fsub fast float %6690, %6696
  %6698 = fmul fast float %6697, %6247
  %6699 = fadd fast float %6698, %6696
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6702 = fcmp fast ogt float %6701, 0.000000e+00
  br i1 %6702, label %6703, label %6743, !dx.controlflow.hints !121

; <label>:6703                                    ; preds = %6689
  %6704 = fcmp fast ugt float %6701, 0.000000e+00
  br i1 %6704, label %6705, label %6740

; <label>:6705                                    ; preds = %6703
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6722 = fadd fast float %6719, %6100
  %6723 = fadd fast float %6720, %6101
  %6724 = fadd fast float %6721, %6102
  %6725 = fmul fast float %6722, %6707
  %6726 = call float @dx.op.tertiary.f32(i32 46, float %6708, float %6723, float %6725)  ; FMad(a,b,c)
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6709, float %6724, float %6726)  ; FMad(a,b,c)
  %6728 = fadd fast float %6727, %6710
  %6729 = fmul fast float %6722, %6712
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6723, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6724, float %6730)  ; FMad(a,b,c)
  %6732 = fadd fast float %6731, %6715
  %6733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6728, float %6732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  %6735 = fmul fast float %6734, %6717
  %6736 = fadd fast float %6735, %6716
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fmul fast float %6737, %6701
  %6739 = fsub fast float 1.000000e+00, %6738
  br label %6740

; <label>:6740                                    ; preds = %6705, %6703
  %6741 = phi float [ %6739, %6705 ], [ 1.000000e+00, %6703 ]
  %6742 = fmul fast float %6741, %6699
  br label %6743

; <label>:6743                                    ; preds = %6740, %6689, %6080
  %6744 = phi float [ 1.000000e+00, %6080 ], [ %6742, %6740 ], [ %6699, %6689 ]
  %6745 = call float @dx.op.binary.f32(i32 36, float %6744, float %6744)  ; FMin(a,b)
  %6746 = call float @dx.op.binary.f32(i32 36, float %6744, float %6745)  ; FMin(a,b)
  %6747 = fcmp fast ogt float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %6908, !dx.controlflow.hints !122

; <label>:6748                                    ; preds = %6743
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = extractvalue %dx.types.CBufRet.f32 %6759, 3
  %6764 = fmul fast float %6750, %6100
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6751, float %6764)  ; FMad(a,b,c)
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6752, float %6765)  ; FMad(a,b,c)
  %6767 = fadd fast float %6766, %6753
  %6768 = fmul fast float %6755, %6100
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6756, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6757, float %6769)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6758
  %6772 = fmul fast float %6760, %6100
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6101, float %6761, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6102, float %6762, float %6773)  ; FMad(a,b,c)
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6779 = fmul fast float %6778, %6767
  %6780 = fmul fast float %6778, %6771
  %6781 = fadd fast float %6779, %6776
  %6782 = fadd fast float %6780, %6777
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = fsub fast float %6781, %6784
  %6787 = fsub fast float %6782, %6785
  %6788 = fcmp fast olt float %6786, 0.000000e+00
  %6789 = fcmp fast olt float %6787, 0.000000e+00
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = select i1 %6788, float %6791, float %6793
  %6796 = select i1 %6789, float %6792, float %6794
  %6797 = fmul fast float %6795, %6786
  %6798 = fmul fast float %6796, %6787
  %6799 = call float @dx.op.unary.f32(i32 6, float %6797)  ; FAbs(value)
  %6800 = call float @dx.op.unary.f32(i32 6, float %6798)  ; FAbs(value)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6802 = call float @dx.op.binary.f32(i32 35, float %6799, float %6800)  ; FMax(a,b)
  %6803 = fsub fast float %6801, %6802
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = fcmp fast ogt float %6804, 0.000000e+00
  br i1 %6805, label %6806, label %6847, !dx.controlflow.hints !123

; <label>:6806                                    ; preds = %6748
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6809 = fcmp fast ogt float %6808, 0.000000e+00
  br i1 %6809, label %6810, label %6842

; <label>:6810                                    ; preds = %6806
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.ResRet.f32 %6811, 3
  %6816 = fsub fast float 1.000000e+00, %6763
  %6817 = fsub fast float %6816, %6774
  %6818 = fmul fast float %6817, 0x400921FB60000000
  %6819 = fadd fast float %6818, 0x3FF921FB60000000
  %6820 = call float @dx.op.unary.f32(i32 13, float %6819)  ; Sin(value)
  %6821 = fadd fast float %6820, -1.000000e+00
  %6822 = fmul fast float %6821, 0x3FD45F3060000000
  %6823 = fmul fast float %6817, 0x401921FB60000000
  %6824 = fadd fast float %6823, 0x400921FB60000000
  %6825 = call float @dx.op.unary.f32(i32 13, float %6824)  ; Sin(value)
  %6826 = fadd fast float %6825, 0x3E7777A5C0000000
  %6827 = fmul fast float %6826, 0x3FC45F3060000000
  %6828 = fmul fast float %6817, 0x4022D97C80000000
  %6829 = fadd fast float %6828, 0x4012D97C80000000
  %6830 = call float @dx.op.unary.f32(i32 13, float %6829)  ; Sin(value)
  %6831 = fadd fast float %6830, 1.000000e+00
  %6832 = fmul fast float %6831, 0x3FBB2995E0000000
  %6833 = fmul fast float %6817, 0x402921FB60000000
  %6834 = fadd fast float %6833, 0x401921FB60000000
  %6835 = call float @dx.op.unary.f32(i32 13, float %6834)  ; Sin(value)
  %6836 = fadd fast float %6835, 0xBE8777A5C0000000
  %6837 = fmul fast float %6836, 0x3FB45F3060000000
  %6838 = call float @dx.op.dot4.f32(i32 56, float %6812, float %6813, float %6814, float %6815, float %6822, float %6827, float %6832, float %6837)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6839 = fmul fast float %6838, 0xBFF7154760000000
  %6840 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  br label %6842

; <label>:6842                                    ; preds = %6810, %6806
  %6843 = phi float [ %6841, %6810 ], [ 1.000000e+00, %6806 ]
  %6844 = fadd fast float %6843, -1.000000e+00
  %6845 = fmul fast float %6844, %6804
  %6846 = fadd fast float %6845, 1.000000e+00
  br label %6847

; <label>:6847                                    ; preds = %6842, %6748
  %6848 = phi float [ %6846, %6842 ], [ 1.000000e+00, %6748 ]
  %6849 = fmul fast float %6848, %6744
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.f32 %6850, 2
  %6854 = fadd fast float %6851, %193
  %6855 = fadd fast float %6852, %194
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6858 = fsub fast float -0.000000e+00, %6854
  %6859 = fsub fast float -0.000000e+00, %6855
  %6860 = fsub fast float %5819, %6853
  %6861 = fadd fast float %6860, %6857
  %6862 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6858, float %6859, float %6861)  ; Dot3(ax,ay,az,bx,by,bz)
  %6863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6081, float %6082, float %6083)  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = fdiv fast float 1.000000e+00, %6863
  %6865 = fmul fast float %6864, %6862
  %6866 = fmul fast float %6081, %6865
  %6867 = fmul fast float %6082, %6865
  %6868 = fadd fast float %6866, %6854
  %6869 = fadd fast float %6867, %6855
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = fsub fast float %6868, %6871
  %6874 = fsub fast float %6869, %6872
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6878 = fmul fast float %6873, %6876
  %6879 = fmul fast float %6874, %6877
  %6880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.i32 %6880, 3
  %6882 = icmp eq i32 %6881, 0
  br i1 %6882, label %6888, label %6883

; <label>:6883                                    ; preds = %6847
  %6884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6878, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6885 = extractvalue %dx.types.ResRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.ResRet.f32 %6884, 1
  %6887 = extractvalue %dx.types.ResRet.f32 %6884, 2
  br label %6893

; <label>:6888                                    ; preds = %6847
  %6889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6878, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  br label %6893

; <label>:6893                                    ; preds = %6888, %6883
  %6894 = phi float [ %6885, %6883 ], [ %6890, %6888 ]
  %6895 = phi float [ %6886, %6883 ], [ %6891, %6888 ]
  %6896 = phi float [ %6887, %6883 ], [ %6892, %6888 ]
  %6897 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6898 = fmul fast float %6897, %6894
  %6899 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6900 = fsub fast float %6865, %6899
  %6901 = fsub fast float %6900, %6898
  %6902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6901)  ; FMax(a,b)
  %6903 = fmul fast float %6902, %6895
  %6904 = call float @dx.op.binary.f32(i32 36, float %6896, float %6903)  ; FMin(a,b)
  %6905 = fmul fast float %6904, 0xBFF7154760000000
  %6906 = call float @dx.op.unary.f32(i32 21, float %6905)  ; Exp(value)
  %6907 = fmul fast float %6849, %6906
  br label %6908

; <label>:6908                                    ; preds = %6893, %6743
  %6909 = phi float [ %6907, %6893 ], [ %6744, %6743 ]
  %6910 = call float @dx.op.binary.f32(i32 36, float %6909, float %6909)  ; FMin(a,b)
  %6911 = call float @dx.op.binary.f32(i32 36, float %6909, float %6910)  ; FMin(a,b)
  %6912 = fcmp fast ogt float %6911, 0.000000e+00
  br i1 %6912, label %6913, label %7176, !dx.controlflow.hints !124

; <label>:6913                                    ; preds = %6908
  %6914 = fmul fast float %6909, %6092
  %6915 = fmul fast float %6909, %6093
  %6916 = fmul fast float %6909, %6094
  %6917 = fsub fast float %195, %4996
  %6918 = fcmp fast ogt float %6917, 0.000000e+00
  %6919 = fmul fast float %6081, 5.120000e+02
  %6920 = fmul fast float %6082, 5.120000e+02
  %6921 = fmul fast float %6083, 5.120000e+02
  %6922 = fadd fast float %6921, %195
  %6923 = fsub fast float %4996, %6922
  %6924 = fmul fast float %6923, 2.000000e+00
  %6925 = fadd fast float %6924, %6922
  %6926 = select i1 %6918, float %6925, float %6922
  %6927 = fsub fast float %6926, %195
  %6928 = call float @dx.op.dot3.f32(i32 55, float %6919, float %6920, float %6927, float %6919, float %6920, float %6927)  ; Dot3(ax,ay,az,bx,by,bz)
  %6929 = call float @dx.op.unary.f32(i32 25, float %6928)  ; Rsqrt(value)
  %6930 = fmul fast float %6929, %6919
  %6931 = fmul fast float %6929, %6920
  %6932 = fmul fast float %6929, %6927
  %6933 = fsub fast float %4996, %195
  %6934 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6933)  ; Dot3(ax,ay,az,bx,by,bz)
  %6935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6930, float %6931, float %6932)  ; Dot3(ax,ay,az,bx,by,bz)
  %6936 = fdiv fast float 1.000000e+00, %6935
  %6937 = fmul fast float %6936, %6934
  %6938 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6917, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6939 = fcmp fast ogt float %6938, 0.000000e+00
  %6940 = fcmp fast olt float %6938, 0.000000e+00
  %6941 = zext i1 %6939 to i32
  %6942 = zext i1 %6940 to i32
  %6943 = sub nsw i32 %6941, %6942
  %6944 = sitofp i32 %6943 to float
  %6945 = fsub fast float %6926, %4996
  %6946 = call float @dx.op.dot3.f32(i32 55, float %6919, float %6920, float %6945, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = fcmp fast ogt float %6946, 0.000000e+00
  %6948 = fcmp fast olt float %6946, 0.000000e+00
  %6949 = zext i1 %6947 to i32
  %6950 = zext i1 %6948 to i32
  %6951 = sub nsw i32 %6949, %6950
  %6952 = sitofp i32 %6951 to float
  %6953 = fcmp fast une float %6944, %6952
  br i1 %6953, label %6954, label %6964

; <label>:6954                                    ; preds = %6913
  %6955 = fmul fast float %6937, %6932
  %6956 = fmul fast float %6937, %6931
  %6957 = fmul fast float %6937, %6930
  %6958 = fmul fast float %6957, %6957
  %6959 = fmul fast float %6956, %6956
  %6960 = fadd fast float %6958, %6959
  %6961 = fmul fast float %6955, %6955
  %6962 = fadd fast float %6960, %6961
  %6963 = call float @dx.op.unary.f32(i32 24, float %6962)  ; Sqrt(value)
  br label %6974

; <label>:6964                                    ; preds = %6913
  %6965 = icmp slt i32 %6943, 0
  br i1 %6965, label %6966, label %6974

; <label>:6966                                    ; preds = %6964
  %6967 = fsub fast float %195, %6926
  %6968 = fmul fast float %6919, %6919
  %6969 = fmul fast float %6920, %6920
  %6970 = fadd fast float %6968, %6969
  %6971 = fmul fast float %6967, %6967
  %6972 = fadd fast float %6970, %6971
  %6973 = call float @dx.op.unary.f32(i32 24, float %6972)  ; Sqrt(value)
  br label %6974

; <label>:6974                                    ; preds = %6966, %6964, %6954
  %6975 = phi float [ %6963, %6954 ], [ %6973, %6966 ], [ 0.000000e+00, %6964 ]
  %6976 = fsub fast float -0.000000e+00, %6975
  %6977 = select i1 %6918, float -0.000000e+00, float %6976
  %6978 = fmul fast float %4997, 0x3FF7154760000000
  %6979 = fmul fast float %6978, %6977
  %6980 = fmul fast float %4998, 0x3FF7154760000000
  %6981 = fmul fast float %6980, %6977
  %6982 = fmul fast float %4999, 0x3FF7154760000000
  %6983 = fmul fast float %6982, %6977
  %6984 = call float @dx.op.unary.f32(i32 21, float %6979)  ; Exp(value)
  %6985 = call float @dx.op.unary.f32(i32 21, float %6981)  ; Exp(value)
  %6986 = call float @dx.op.unary.f32(i32 21, float %6983)  ; Exp(value)
  %6987 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6988 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6989 = call float @dx.op.unary.f32(i32 7, float %6986)  ; Saturate(value)
  %6990 = fmul fast float %6914, %6987
  %6991 = fmul fast float %6915, %6988
  %6992 = fmul fast float %6916, %6989
  %6993 = fsub fast float %6081, %5822
  %6994 = fsub fast float %6082, %5823
  %6995 = fsub fast float %6083, %5824
  %6996 = call float @dx.op.dot3.f32(i32 55, float %6993, float %6994, float %6995, float %6993, float %6994, float %6995)  ; Dot3(ax,ay,az,bx,by,bz)
  %6997 = call float @dx.op.unary.f32(i32 25, float %6996)  ; Rsqrt(value)
  %6998 = fmul fast float %6997, %6993
  %6999 = fmul fast float %6997, %6994
  %7000 = fmul fast float %6997, %6995
  %7001 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %5776, float %5777, float %5778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7002 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %6998, float %6999, float %7000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7003 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7004 = fmul fast float %7003, %7003
  %7005 = fmul fast float %7004, %5843
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7007 = fmul fast float %7006, %7003
  %7008 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %6998, float %6999, float %7000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7009 = fmul fast float %7008, %7008
  %7010 = call float @dx.op.unary.f32(i32 6, float %7001)  ; FAbs(value)
  %7011 = fsub fast float 1.000000e+00, %5785
  %7012 = call float @dx.op.binary.f32(i32 35, float %7011, float 0x3F847AE140000000)  ; FMax(a,b)
  %7013 = fmul fast float %7012, %7012
  %7014 = fmul fast float %7013, %7013
  %7015 = fsub fast float 1.000000e+00, %7014
  %7016 = fmul fast float %5830, %5830
  %7017 = fmul fast float %7016, %7015
  %7018 = fadd fast float %7017, %7014
  %7019 = bitcast float %7018 to i32
  %7020 = ashr i32 %7019, 1
  %7021 = add nsw i32 %7020, 532487669
  %7022 = bitcast i32 %7021 to float
  %7023 = fadd fast float %7022, %5830
  %7024 = fmul fast float %7014, %7009
  %7025 = fsub fast float 1.000000e+00, %7009
  %7026 = fadd fast float %7025, %7024
  %7027 = fmul fast float %7010, %7010
  %7028 = fmul fast float %7027, %7015
  %7029 = fadd fast float %7028, %7014
  %7030 = bitcast float %7029 to i32
  %7031 = ashr i32 %7030, 1
  %7032 = add nsw i32 %7031, 532487669
  %7033 = bitcast i32 %7032 to float
  %7034 = fadd fast float %7033, %7010
  %7035 = fmul fast float %7026, %7026
  %7036 = fmul fast float %7035, %7023
  %7037 = fmul fast float %7036, %7034
  %7038 = fdiv fast float 0x3FF0A00000000000, %7037
  %7039 = fmul fast float %7038, %7014
  %7040 = fmul fast float %5943, 0x3FF9999980000000
  %7041 = fsub fast float 5.000000e+00, %7040
  %7042 = call float @dx.op.unary.f32(i32 6, float %7002)  ; FAbs(value)
  %7043 = fsub fast float 1.000000e+00, %7042
  %7044 = fmul fast float %5943, 0x41D9660740000000
  %7045 = fadd fast float %7044, 0xC1EFBF8940000000
  %7046 = bitcast float %7043 to i32
  %7047 = sitofp i32 %7046 to float
  %7048 = fmul fast float %7047, %7041
  %7049 = fadd fast float %7045, %7048
  %7050 = fptosi float %7049 to i32
  %7051 = bitcast i32 %7050 to float
  %7052 = fsub fast float 1.000000e+00, %5782
  %7053 = fsub fast float 1.000000e+00, %5783
  %7054 = fsub fast float 1.000000e+00, %5828
  %7055 = fmul fast float %7051, %7052
  %7056 = fmul fast float %7051, %7053
  %7057 = fmul fast float %7051, %7054
  %7058 = fadd fast float %7055, %5782
  %7059 = fadd fast float %7056, %5783
  %7060 = fadd fast float %7057, %5828
  br i1 %5966, label %7061, label %7084

; <label>:7061                                    ; preds = %6974
  %7062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4592, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.ResRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.ResRet.f32 %7062, 2
  %7066 = fadd fast float %7063, -5.000000e-01
  %7067 = fadd fast float %7064, -5.000000e-01
  %7068 = fadd fast float %7065, -5.000000e-01
  %7069 = fmul fast float %5782, 4.000000e+00
  %7070 = fmul fast float %7069, %7052
  %7071 = fmul fast float %7070, %7066
  %7072 = fmul fast float %5783, 4.000000e+00
  %7073 = fmul fast float %7072, %7053
  %7074 = fmul fast float %7073, %7067
  %7075 = fmul fast float %5828, 4.000000e+00
  %7076 = fmul fast float %7075, %7054
  %7077 = fmul fast float %7076, %7068
  %7078 = fadd fast float %7071, %7058
  %7079 = fadd fast float %7074, %7059
  %7080 = fadd fast float %7077, %7060
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7082 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7083 = call float @dx.op.unary.f32(i32 7, float %7080)  ; Saturate(value)
  br label %7084

; <label>:7084                                    ; preds = %7061, %6974
  %7085 = phi float [ %7081, %7061 ], [ %7058, %6974 ]
  %7086 = phi float [ %7082, %7061 ], [ %7059, %6974 ]
  %7087 = phi float [ %7083, %7061 ], [ %7060, %6974 ]
  %7088 = fmul fast float %7001, 9.843750e-01
  %7089 = fadd fast float %7088, 7.812500e-03
  %7090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7089, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7091 = extractvalue %dx.types.ResRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.ResRet.f32 %7090, 1
  %7093 = extractvalue %dx.types.ResRet.f32 %7090, 2
  %7094 = extractvalue %dx.types.ResRet.f32 %7090, 3
  %7095 = fsub fast float %7093, %7091
  %7096 = fsub fast float %7094, %7092
  %7097 = fmul fast float %7095, %5953
  %7098 = fmul fast float %7096, %5953
  %7099 = fadd fast float %7097, %7091
  %7100 = fadd fast float %7098, %7092
  %7101 = fmul fast float %7099, %5782
  %7102 = fmul fast float %7099, %5783
  %7103 = fmul fast float %7099, %5828
  %7104 = fadd fast float %7101, %7100
  %7105 = fadd fast float %7102, %7100
  %7106 = fadd fast float %7103, %7100
  br i1 %5966, label %7107, label %7130

; <label>:7107                                    ; preds = %7084
  %7108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4592, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7109 = extractvalue %dx.types.ResRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.ResRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.ResRet.f32 %7108, 2
  %7112 = fadd fast float %7109, -5.000000e-01
  %7113 = fadd fast float %7110, -5.000000e-01
  %7114 = fadd fast float %7111, -5.000000e-01
  %7115 = fmul fast float %5782, 4.000000e+00
  %7116 = fmul fast float %7115, %7052
  %7117 = fmul fast float %7116, %7112
  %7118 = fmul fast float %5783, 4.000000e+00
  %7119 = fmul fast float %7118, %7053
  %7120 = fmul fast float %7119, %7113
  %7121 = fmul fast float %5828, 4.000000e+00
  %7122 = fmul fast float %7121, %7054
  %7123 = fmul fast float %7122, %7114
  %7124 = fadd fast float %7117, %7104
  %7125 = fadd fast float %7120, %7105
  %7126 = fadd fast float %7123, %7106
  %7127 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7128 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  br label %7130

; <label>:7130                                    ; preds = %7107, %7084
  %7131 = phi float [ %7127, %7107 ], [ %7104, %7084 ]
  %7132 = phi float [ %7128, %7107 ], [ %7105, %7084 ]
  %7133 = phi float [ %7129, %7107 ], [ %7106, %7084 ]
  %7134 = call float @dx.op.binary.f32(i32 35, float %7132, float %7133)  ; FMax(a,b)
  %7135 = call float @dx.op.binary.f32(i32 35, float %7131, float %7134)  ; FMax(a,b)
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = fmul fast float %7085, %7039
  %7138 = fmul fast float %7086, %7039
  %7139 = fmul fast float %7087, %7039
  %7140 = fsub fast float 1.000000e+00, %7002
  %7141 = bitcast float %7140 to i32
  %7142 = sitofp i32 %7141 to float
  %7143 = fmul fast float %7142, 5.000000e+00
  %7144 = fadd fast float %7143, 0xC1EFBF8940000000
  %7145 = fptosi float %7144 to i32
  %7146 = bitcast i32 %7145 to float
  %7147 = fmul fast float %7146, %4593
  %7148 = fmul fast float %7136, %7147
  %7149 = fmul fast float %7148, %6016
  %7150 = fmul fast float %7148, %6017
  %7151 = fmul fast float %7148, %6018
  %7152 = fadd fast float %7149, %7137
  %7153 = fadd fast float %7150, %7138
  %7154 = fadd fast float %7151, %7139
  %7155 = fmul fast float %7007, %6990
  %7156 = fmul fast float %7155, %7136
  %7157 = fmul fast float %7007, %6991
  %7158 = fmul fast float %7157, %7136
  %7159 = fmul fast float %7007, %6992
  %7160 = fmul fast float %7159, %7136
  %7161 = fmul fast float %7155, %7152
  %7162 = fmul fast float %7157, %7153
  %7163 = fmul fast float %7159, %7154
  %7164 = fadd fast float %7156, %6000
  %7165 = fmul fast float %7164, %4589
  %7166 = fadd fast float %7158, %6001
  %7167 = fmul fast float %7166, %4589
  %7168 = fadd fast float %7160, %6002
  %7169 = fmul fast float %7168, %4589
  %7170 = fadd fast float %7161, %6069
  %7171 = fmul fast float %7170, %4589
  %7172 = fadd fast float %7162, %6072
  %7173 = fmul fast float %7172, %4589
  %7174 = fadd fast float %7163, %6075
  %7175 = fmul fast float %7174, %4589
  br label %7176

; <label>:7176                                    ; preds = %7130, %6908, %5993
  %7177 = phi float [ %6070, %5993 ], [ %6070, %6908 ], [ %7171, %7130 ]
  %7178 = phi float [ %6073, %5993 ], [ %6073, %6908 ], [ %7173, %7130 ]
  %7179 = phi float [ %6076, %5993 ], [ %6076, %6908 ], [ %7175, %7130 ]
  %7180 = phi float [ %6065, %5993 ], [ %6065, %6908 ], [ %7165, %7130 ]
  %7181 = phi float [ %6066, %5993 ], [ %6066, %6908 ], [ %7167, %7130 ]
  %7182 = phi float [ %6067, %5993 ], [ %6067, %6908 ], [ %7169, %7130 ]
  %7183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.i32 %7183, 0
  %7185 = icmp eq i32 %7184, 0
  br i1 %7185, label %7818, label %7186

; <label>:7186                                    ; preds = %7176
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %7189 = extractvalue %dx.types.CBufRet.f32 %7187, 3
  %7190 = fmul fast float %7188, %106
  %7191 = fmul fast float %7189, %107
  %7192 = fptoui float %7190 to i32
  %7193 = fptoui float %7191 to i32
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.CBufRet.f32 %7194, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7194, 3
  %7198 = fadd fast float %97, -4.000000e+00
  %7199 = call float @dx.op.binary.f32(i32 35, float %7198, float 0.000000e+00)  ; FMax(a,b)
  %7200 = fadd fast float %7199, %7195
  %7201 = fmul fast float %7200, %7196
  %7202 = call float @dx.op.unary.f32(i32 23, float %7201)  ; Log(value)
  %7203 = fmul fast float %7202, %7197
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 2
  %7206 = fmul fast float %7203, %7205
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.i32 %7208, 1
  %7210 = add i32 %7209, -1
  %7211 = uitofp i32 %7209 to float
  %7212 = fmul fast float %7211, %7207
  %7213 = fptoui float %7212 to i32
  %7214 = call i32 @dx.op.binary.i32(i32 40, i32 %7213, i32 %7210)  ; UMin(a,b)
  %7215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.i32 %7215, 2
  %7217 = extractvalue %dx.types.CBufRet.i32 %7215, 3
  %7218 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7193, i32 %7216, i32 %7192)  ; UMad(a,b,c)
  %7219 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7214, i32 %7217, i32 %7218)  ; UMad(a,b,c)
  %7220 = add nsw i32 %7184, -1
  %7221 = call i32 @dx.op.binary.i32(i32 37, i32 %7220, i32 0)  ; IMax(a,b)
  %7222 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7223 = fptoui float %7222 to i32
  %7224 = lshr i32 %7223, 5
  %7225 = call i32 @dx.op.binary.i32(i32 40, i32 %7224, i32 8191)  ; UMin(a,b)
  %7226 = shl i32 %7225, 2
  %7227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7226, i32 undef)  ; BufferLoad(srv,index,wot)
  %7228 = extractvalue %dx.types.ResRet.i32 %7227, 0
  %7229 = lshr i32 %7228, 16
  %7230 = and i32 %7228, 65535
  %7231 = lshr i32 %7228, 21
  %7232 = lshr i32 %7230, 5
  %7233 = call i32 @dx.op.binary.i32(i32 40, i32 %7232, i32 %7221)  ; UMin(a,b)
  %7234 = icmp ugt i32 %7231, %7233
  br i1 %7234, label %7818, label %7235

; <label>:7235                                    ; preds = %7186
  br label %7236

; <label>:7236                                    ; preds = %7808, %7235
  %7237 = phi i32 [ %7815, %7808 ], [ %7231, %7235 ]
  %7238 = phi float [ %7809, %7808 ], [ %7177, %7235 ]
  %7239 = phi float [ %7810, %7808 ], [ %7178, %7235 ]
  %7240 = phi float [ %7811, %7808 ], [ %7179, %7235 ]
  %7241 = phi float [ %7812, %7808 ], [ %7180, %7235 ]
  %7242 = phi float [ %7813, %7808 ], [ %7181, %7235 ]
  %7243 = phi float [ %7814, %7808 ], [ %7182, %7235 ]
  %7244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.i32 %7244, 0
  %7246 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7219, i32 %7245, i32 %7237)  ; UMad(a,b,c)
  %7247 = shl i32 %7246, 2
  %7248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7247, i32 undef)  ; BufferLoad(srv,index,wot)
  %7249 = extractvalue %dx.types.ResRet.i32 %7248, 0
  %7250 = shl i32 %7237, 5
  %7251 = sub nsw i32 %7229, %7250
  %7252 = call i32 @dx.op.binary.i32(i32 37, i32 %7251, i32 0)  ; IMax(a,b)
  %7253 = call i32 @dx.op.binary.i32(i32 38, i32 %7252, i32 31)  ; IMin(a,b)
  %7254 = sub nsw i32 1, %7229
  %7255 = add nsw i32 %7254, %7230
  %7256 = call i32 @dx.op.binary.i32(i32 37, i32 %7255, i32 0)  ; IMax(a,b)
  %7257 = call i32 @dx.op.binary.i32(i32 38, i32 %7256, i32 32)  ; IMin(a,b)
  %7258 = and i32 %7257, 31
  %7259 = shl i32 -1, %7258
  %7260 = xor i32 %7259, -1
  %7261 = and i32 %7253, 31
  %7262 = shl i32 %7260, %7261
  %7263 = icmp eq i32 %7257, 32
  %7264 = select i1 %7263, i32 -1, i32 %7262
  %7265 = and i32 %7264, %7249
  %7266 = icmp eq i32 %7265, 0
  br i1 %7266, label %7808, label %7267

; <label>:7267                                    ; preds = %7236
  br label %7268

; <label>:7268                                    ; preds = %7402, %7267
  %7269 = phi i32 [ %7280, %7402 ], [ %7265, %7267 ]
  %7270 = phi float [ %7403, %7402 ], [ %7238, %7267 ]
  %7271 = phi float [ %7404, %7402 ], [ %7239, %7267 ]
  %7272 = phi float [ %7405, %7402 ], [ %7240, %7267 ]
  %7273 = phi float [ %7406, %7402 ], [ %7241, %7267 ]
  %7274 = phi float [ %7407, %7402 ], [ %7242, %7267 ]
  %7275 = phi float [ %7408, %7402 ], [ %7243, %7267 ]
  %7276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7269)  ; FirstbitLo(value)
  %7277 = add i32 %7276, %7250
  %7278 = and i32 %7276, 31
  %7279 = shl i32 1, %7278
  %7280 = xor i32 %7279, %7269
  %7281 = mul i32 %7277, 112
  %7282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7281, i32 undef)  ; BufferLoad(srv,index,wot)
  %7283 = extractvalue %dx.types.ResRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.ResRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.ResRet.f32 %7282, 2
  %7286 = or i32 %7281, 12
  %7287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7286, i32 undef)  ; BufferLoad(srv,index,wot)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 0
  %7289 = add i32 %7281, 16
  %7290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7289, i32 undef)  ; BufferLoad(srv,index,wot)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.ResRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7290, 2
  %7294 = add i32 %7281, 28
  %7295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7294, i32 undef)  ; BufferLoad(srv,index,wot)
  %7296 = extractvalue %dx.types.ResRet.i32 %7295, 0
  %7297 = add i32 %7281, 44
  %7298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7297, i32 undef)  ; BufferLoad(srv,index,wot)
  %7299 = extractvalue %dx.types.ResRet.f32 %7298, 0
  %7300 = add i32 %7281, 48
  %7301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7300, i32 undef)  ; BufferLoad(srv,index,wot)
  %7302 = extractvalue %dx.types.ResRet.f32 %7301, 0
  %7303 = extractvalue %dx.types.ResRet.f32 %7301, 1
  %7304 = extractvalue %dx.types.ResRet.f32 %7301, 2
  %7305 = extractvalue %dx.types.ResRet.f32 %7301, 3
  %7306 = add i32 %7281, 64
  %7307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7306, i32 undef)  ; BufferLoad(srv,index,wot)
  %7308 = extractvalue %dx.types.ResRet.f32 %7307, 0
  %7309 = extractvalue %dx.types.ResRet.f32 %7307, 1
  %7310 = extractvalue %dx.types.ResRet.f32 %7307, 2
  %7311 = extractvalue %dx.types.ResRet.f32 %7307, 3
  %7312 = add i32 %7281, 80
  %7313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7312, i32 undef)  ; BufferLoad(srv,index,wot)
  %7314 = extractvalue %dx.types.ResRet.f32 %7313, 1
  %7315 = extractvalue %dx.types.ResRet.f32 %7313, 2
  %7316 = add i32 %7281, 92
  %7317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7316, i32 undef)  ; BufferLoad(srv,index,wot)
  %7318 = extractvalue %dx.types.ResRet.i32 %7317, 0
  %7319 = call float @dx.op.dot3.f32(i32 55, float %7283, float %7284, float %7285, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7320 = select i1 %252, float %7314, float %7283
  %7321 = select i1 %252, float %7319, float %7284
  %7322 = select i1 %252, float %7315, float %7285
  %7323 = and i32 %7318, 65535
  %7324 = uitofp i32 %7323 to float
  %7325 = lshr i32 %7318, 16
  %7326 = uitofp i32 %7325 to float
  %7327 = and i32 %7296, 65535
  %7328 = and i32 %7296, 50331648
  %7329 = icmp eq i32 %7328, 33554432
  %7330 = fsub fast float %7302, %193
  %7331 = fsub fast float %7303, %194
  %7332 = fsub fast float %7304, %195
  %7333 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7332, float %7330, float %7331, float %7332)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = call float @dx.op.unary.f32(i32 24, float %7333)  ; Sqrt(value)
  %7335 = fdiv fast float 1.000000e+00, %7334
  %7336 = fmul fast float %7335, %7330
  %7337 = fmul fast float %7335, %7331
  %7338 = fmul fast float %7335, %7332
  %7339 = fadd fast float %7334, %7288
  %7340 = fdiv fast float 1.000000e+00, %7339
  %7341 = fmul float %7299, %7340
  %7342 = fmul float %7341, %7341
  %7343 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  br i1 %7329, label %7344, label %7365

; <label>:7344                                    ; preds = %7268
  %7345 = fmul fast float %7310, %7291
  %7346 = fmul fast float %7310, %7292
  %7347 = fmul fast float %7310, %7293
  %7348 = fadd fast float %7330, %7345
  %7349 = fadd fast float %7331, %7346
  %7350 = fadd fast float %7332, %7347
  %7351 = call float @dx.op.dot3.f32(i32 55, float %7348, float %7349, float %7350, float %7348, float %7349, float %7350)  ; Dot3(ax,ay,az,bx,by,bz)
  %7352 = call float @dx.op.unary.f32(i32 25, float %7351)  ; Rsqrt(value)
  %7353 = fmul fast float %7352, %7348
  %7354 = fmul fast float %7352, %7349
  %7355 = fmul fast float %7352, %7350
  %7356 = fsub fast float %193, %7302
  %7357 = fsub fast float %194, %7303
  %7358 = fsub fast float %195, %7304
  %7359 = fsub fast float -0.000000e+00, %7356
  %7360 = fsub fast float -0.000000e+00, %7357
  %7361 = fsub fast float -0.000000e+00, %7358
  %7362 = call float @dx.op.dot3.f32(i32 55, float %7359, float %7360, float %7361, float %7291, float %7292, float %7293)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = fcmp fast ogt float %7362, 0.000000e+00
  %7364 = uitofp i1 %7363 to float
  br label %7365

; <label>:7365                                    ; preds = %7344, %7268
  %7366 = phi float [ %7364, %7344 ], [ 1.000000e+00, %7268 ]
  %7367 = phi float [ %7353, %7344 ], [ %7336, %7268 ]
  %7368 = phi float [ %7354, %7344 ], [ %7337, %7268 ]
  %7369 = phi float [ %7355, %7344 ], [ %7338, %7268 ]
  %7370 = call float @dx.op.dot3.f32(i32 55, float %7291, float %7292, float %7293, float %7367, float %7368, float %7369)  ; Dot3(ax,ay,az,bx,by,bz)
  %7371 = fmul fast float %7370, %7370
  %7372 = call float @dx.op.unary.f32(i32 7, float %7371)  ; Saturate(value)
  %7373 = fsub fast float 1.000000e+00, %7372
  %7374 = fmul fast float %7373, 5.000000e-01
  %7375 = fcmp fast ogt float %7370, 0.000000e+00
  %7376 = fsub fast float 1.000000e+00, %7374
  %7377 = select i1 %7375, float %7374, float %7376
  %7378 = fmul fast float %7377, %7326
  %7379 = fadd fast float %7378, %7324
  %7380 = fmul fast float %7379, 0x3EF0001000000000
  %7381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7380, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = fmul fast float %7370, %7308
  %7384 = fadd fast float %7383, %7309
  %7385 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7386 = select i1 %7329, float 1.000000e+00, float %7385
  %7387 = select i1 %7329, float %7385, float 1.000000e+00
  %7388 = fmul fast float %7334, %7305
  %7389 = fsub fast float 1.000000e+00, %7388
  %7390 = fmul fast float %7389, %7311
  %7391 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7392 = fmul fast float %7391, %7387
  %7393 = fmul fast float %7392, 2.000000e+00
  %7394 = fsub fast float 3.000000e+00, %7393
  %7395 = fmul fast float %7382, %7366
  %7396 = fmul fast float %7392, %7392
  %7397 = fmul fast float %7396, %7395
  %7398 = fmul fast float %7397, %7394
  %7399 = call float @dx.op.binary.f32(i32 36, float %7398, float %7398)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7398, float %7399)  ; FMin(a,b)
  %7401 = fcmp fast ogt float %7400, 0.000000e+00
  br i1 %7401, label %7410, label %7402, !dx.controlflow.hints !125

; <label>:7402                                    ; preds = %7764, %7510, %7365
  %7403 = phi float [ %7270, %7510 ], [ %7270, %7365 ], [ %7804, %7764 ]
  %7404 = phi float [ %7271, %7510 ], [ %7271, %7365 ], [ %7805, %7764 ]
  %7405 = phi float [ %7272, %7510 ], [ %7272, %7365 ], [ %7806, %7764 ]
  %7406 = phi float [ %7273, %7510 ], [ %7273, %7365 ], [ %7798, %7764 ]
  %7407 = phi float [ %7274, %7510 ], [ %7274, %7365 ], [ %7799, %7764 ]
  %7408 = phi float [ %7275, %7510 ], [ %7275, %7365 ], [ %7800, %7764 ]
  %7409 = icmp eq i32 %7269, %7279
  br i1 %7409, label %7807, label %7268

; <label>:7410                                    ; preds = %7365
  %7411 = icmp eq i32 %7327, 255
  br i1 %7411, label %7510, label %7412, !dx.controlflow.hints !126

; <label>:7412                                    ; preds = %7410
  %7413 = mul nuw nsw i32 %7327, 176
  %7414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7413, i32 undef)  ; BufferLoad(srv,index,wot)
  %7415 = extractvalue %dx.types.ResRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.ResRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.ResRet.f32 %7414, 2
  %7418 = extractvalue %dx.types.ResRet.f32 %7414, 3
  %7419 = add nuw nsw i32 %7413, 16
  %7420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7419, i32 undef)  ; BufferLoad(srv,index,wot)
  %7421 = extractvalue %dx.types.ResRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.ResRet.f32 %7420, 1
  %7423 = add nuw nsw i32 %7413, 32
  %7424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7423, i32 undef)  ; BufferLoad(srv,index,wot)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.ResRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.ResRet.f32 %7424, 2
  %7428 = add nuw nsw i32 %7413, 48
  %7429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7428, i32 undef)  ; BufferLoad(srv,index,wot)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7429, 3
  %7434 = add nuw nsw i32 %7413, 64
  %7435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7434, i32 undef)  ; BufferLoad(srv,index,wot)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.ResRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.ResRet.f32 %7435, 2
  %7439 = extractvalue %dx.types.ResRet.f32 %7435, 3
  %7440 = add nuw nsw i32 %7413, 80
  %7441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7440, i32 undef)  ; BufferLoad(srv,index,wot)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.ResRet.f32 %7441, 1
  %7444 = extractvalue %dx.types.ResRet.f32 %7441, 2
  %7445 = extractvalue %dx.types.ResRet.f32 %7441, 3
  %7446 = add nuw nsw i32 %7413, 96
  %7447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7446, i32 undef)  ; BufferLoad(srv,index,wot)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = extractvalue %dx.types.ResRet.f32 %7447, 3
  %7452 = bitcast float %7422 to i32
  %7453 = fmul fast float %7427, %113
  %7454 = fmul fast float %7427, %114
  %7455 = fmul fast float %7427, %115
  %7456 = fadd fast float %7453, %193
  %7457 = fadd fast float %7454, %194
  %7458 = fadd fast float %7455, %195
  %7459 = fmul fast float %7456, %7430
  %7460 = call float @dx.op.tertiary.f32(i32 46, float %7457, float %7436, float %7459)  ; FMad(a,b,c)
  %7461 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7442, float %7460)  ; FMad(a,b,c)
  %7462 = fadd fast float %7461, %7448
  %7463 = fmul fast float %7456, %7431
  %7464 = call float @dx.op.tertiary.f32(i32 46, float %7457, float %7437, float %7463)  ; FMad(a,b,c)
  %7465 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7443, float %7464)  ; FMad(a,b,c)
  %7466 = fadd fast float %7465, %7449
  %7467 = fmul fast float %7456, %7432
  %7468 = call float @dx.op.tertiary.f32(i32 46, float %7457, float %7438, float %7467)  ; FMad(a,b,c)
  %7469 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7444, float %7468)  ; FMad(a,b,c)
  %7470 = fadd fast float %7469, %7450
  %7471 = fmul fast float %7456, %7433
  %7472 = call float @dx.op.tertiary.f32(i32 46, float %7457, float %7439, float %7471)  ; FMad(a,b,c)
  %7473 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7445, float %7472)  ; FMad(a,b,c)
  %7474 = fadd fast float %7473, %7451
  %7475 = fdiv fast float %7462, %7474
  %7476 = fdiv fast float %7466, %7474
  %7477 = fdiv fast float %7470, %7474
  %7478 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7477)  ; FMax(a,b)
  %7479 = fmul fast float %263, 0x401921FB60000000
  %7480 = call float @dx.op.unary.f32(i32 13, float %7479)  ; Sin(value)
  %7481 = call float @dx.op.unary.f32(i32 12, float %7479)  ; Cos(value)
  %7482 = fsub fast float -0.000000e+00, %7480
  %7483 = fmul fast float %7417, 5.000000e-01
  %7484 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7485 = call float @dx.op.unary.f32(i32 22, float %7484)  ; Frc(value)
  %7486 = fmul fast float %7485, 0x404A7DD040000000
  %7487 = call float @dx.op.unary.f32(i32 22, float %7486)  ; Frc(value)
  %7488 = fmul fast float %7487, %7426
  %7489 = fadd fast float %7488, %7483
  %7490 = call float @dx.op.tertiary.f32(i32 46, float %7489, float %7482, float 0.000000e+00)  ; FMad(a,b,c)
  %7491 = call float @dx.op.tertiary.f32(i32 46, float %7489, float %7481, float 0.000000e+00)  ; FMad(a,b,c)
  %7492 = fadd fast float %7490, %7475
  %7493 = fadd fast float %7491, %7476
  %7494 = fmul fast float %7492, %7421
  %7495 = fmul fast float %7493, %7421
  %7496 = call float @dx.op.binary.f32(i32 35, float %7494, float %7417)  ; FMax(a,b)
  %7497 = call float @dx.op.binary.f32(i32 35, float %7495, float %7417)  ; FMax(a,b)
  %7498 = call float @dx.op.binary.f32(i32 36, float %7496, float %7418)  ; FMin(a,b)
  %7499 = call float @dx.op.binary.f32(i32 36, float %7497, float %7418)  ; FMin(a,b)
  %7500 = fadd fast float %7498, %7415
  %7501 = fadd fast float %7499, %7416
  %7502 = uitofp i32 %7452 to float
  %7503 = fadd fast float %7478, %7425
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7500, float %7501, float %7502, float undef, i32 0, i32 0, i32 undef, float %7503)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = fadd fast float %7505, -1.000000e+00
  %7507 = fmul fast float %7506, %7386
  %7508 = fadd fast float %7507, 1.000000e+00
  %7509 = fmul fast float %7508, %7398
  br label %7510

; <label>:7510                                    ; preds = %7412, %7410
  %7511 = phi float [ %7509, %7412 ], [ %7398, %7410 ]
  %7512 = call float @dx.op.binary.f32(i32 36, float %7511, float %7511)  ; FMin(a,b)
  %7513 = call float @dx.op.binary.f32(i32 36, float %7511, float %7512)  ; FMin(a,b)
  %7514 = fcmp fast ogt float %7513, 0.000000e+00
  br i1 %7514, label %7515, label %7402, !dx.controlflow.hints !127

; <label>:7515                                    ; preds = %7510
  %7516 = fmul fast float %7511, %7320
  %7517 = fmul fast float %7511, %7321
  %7518 = fmul fast float %7511, %7322
  %7519 = fsub fast float %7304, %4996
  %7520 = fcmp fast ogt float %7519, 0.000000e+00
  %7521 = fsub fast float %195, %4996
  %7522 = fcmp fast ogt float %7521, 0.000000e+00
  %7523 = xor i1 %7522, %7520
  %7524 = fsub fast float %4996, %7304
  %7525 = fmul fast float %7524, 2.000000e+00
  %7526 = fadd fast float %7525, %7304
  %7527 = select i1 %7523, float %7304, float %7526
  %7528 = fsub fast float %7527, %195
  %7529 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7528, float %7330, float %7331, float %7528)  ; Dot3(ax,ay,az,bx,by,bz)
  %7530 = call float @dx.op.unary.f32(i32 25, float %7529)  ; Rsqrt(value)
  %7531 = fmul fast float %7530, %7330
  %7532 = fmul fast float %7530, %7331
  %7533 = fmul fast float %7530, %7528
  %7534 = fsub fast float %4996, %195
  %7535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7534)  ; Dot3(ax,ay,az,bx,by,bz)
  %7536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7531, float %7532, float %7533)  ; Dot3(ax,ay,az,bx,by,bz)
  %7537 = fdiv fast float 1.000000e+00, %7536
  %7538 = fmul fast float %7537, %7535
  %7539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7521, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7540 = fcmp fast ogt float %7539, 0.000000e+00
  %7541 = fcmp fast olt float %7539, 0.000000e+00
  %7542 = zext i1 %7540 to i32
  %7543 = zext i1 %7541 to i32
  %7544 = sub nsw i32 %7542, %7543
  %7545 = sitofp i32 %7544 to float
  %7546 = fsub fast float %7527, %4996
  %7547 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7546, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = fcmp fast ogt float %7547, 0.000000e+00
  %7549 = fcmp fast olt float %7547, 0.000000e+00
  %7550 = zext i1 %7548 to i32
  %7551 = zext i1 %7549 to i32
  %7552 = sub nsw i32 %7550, %7551
  %7553 = sitofp i32 %7552 to float
  %7554 = fcmp fast une float %7545, %7553
  br i1 %7554, label %7555, label %7565

; <label>:7555                                    ; preds = %7515
  %7556 = fmul fast float %7538, %7533
  %7557 = fmul fast float %7538, %7532
  %7558 = fmul fast float %7538, %7531
  %7559 = fmul fast float %7558, %7558
  %7560 = fmul fast float %7557, %7557
  %7561 = fadd fast float %7559, %7560
  %7562 = fmul fast float %7556, %7556
  %7563 = fadd fast float %7561, %7562
  %7564 = call float @dx.op.unary.f32(i32 24, float %7563)  ; Sqrt(value)
  br label %7577

; <label>:7565                                    ; preds = %7515
  %7566 = icmp slt i32 %7544, 0
  br i1 %7566, label %7567, label %7577

; <label>:7567                                    ; preds = %7565
  %7568 = fsub fast float %193, %7302
  %7569 = fsub fast float %194, %7303
  %7570 = fsub fast float %195, %7527
  %7571 = fmul fast float %7568, %7568
  %7572 = fmul fast float %7569, %7569
  %7573 = fadd fast float %7571, %7572
  %7574 = fmul fast float %7570, %7570
  %7575 = fadd fast float %7573, %7574
  %7576 = call float @dx.op.unary.f32(i32 24, float %7575)  ; Sqrt(value)
  br label %7577

; <label>:7577                                    ; preds = %7567, %7565, %7555
  %7578 = phi float [ %7564, %7555 ], [ %7576, %7567 ], [ 0.000000e+00, %7565 ]
  %7579 = and i1 %7522, %7520
  %7580 = fsub fast float -0.000000e+00, %7578
  %7581 = select i1 %7579, float -0.000000e+00, float %7580
  %7582 = fmul fast float %4997, 0x3FF7154760000000
  %7583 = fmul fast float %7582, %7581
  %7584 = fmul fast float %4998, 0x3FF7154760000000
  %7585 = fmul fast float %7584, %7581
  %7586 = fmul fast float %4999, 0x3FF7154760000000
  %7587 = fmul fast float %7586, %7581
  %7588 = call float @dx.op.unary.f32(i32 21, float %7583)  ; Exp(value)
  %7589 = call float @dx.op.unary.f32(i32 21, float %7585)  ; Exp(value)
  %7590 = call float @dx.op.unary.f32(i32 21, float %7587)  ; Exp(value)
  %7591 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7592 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7593 = call float @dx.op.unary.f32(i32 7, float %7590)  ; Saturate(value)
  %7594 = fmul fast float %7516, %7591
  %7595 = fmul fast float %7517, %7592
  %7596 = fmul fast float %7518, %7593
  %7597 = fsub fast float %7336, %5822
  %7598 = fsub fast float %7337, %5823
  %7599 = fsub fast float %7338, %5824
  %7600 = call float @dx.op.dot3.f32(i32 55, float %7597, float %7598, float %7599, float %7597, float %7598, float %7599)  ; Dot3(ax,ay,az,bx,by,bz)
  %7601 = call float @dx.op.unary.f32(i32 25, float %7600)  ; Rsqrt(value)
  %7602 = fmul fast float %7601, %7597
  %7603 = fmul fast float %7601, %7598
  %7604 = fmul fast float %7601, %7599
  %7605 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float %5776, float %5777, float %5778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float %7602, float %7603, float %7604)  ; Dot3(ax,ay,az,bx,by,bz)
  %7607 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7608 = fmul fast float %7607, %7343
  %7609 = fmul fast float %7607, %7607
  %7610 = fmul fast float %7609, %5843
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fmul fast float %7608, %7611
  %7613 = bitcast float %7333 to i32
  %7614 = ashr i32 %7613, 1
  %7615 = sub nsw i32 1597463007, %7614
  %7616 = bitcast i32 %7615 to float
  %7617 = fmul fast float %7616, %7330
  %7618 = fmul fast float %7616, %7331
  %7619 = fmul fast float %7616, %7332
  %7620 = fsub fast float %7617, %5822
  %7621 = fsub fast float %7618, %5823
  %7622 = fsub fast float %7619, %5824
  %7623 = call float @dx.op.dot3.f32(i32 55, float %7620, float %7621, float %7622, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7624 = call float @dx.op.unary.f32(i32 25, float %7623)  ; Rsqrt(value)
  %7625 = fmul fast float %7620, %7624
  %7626 = fmul fast float %7621, %7624
  %7627 = fmul fast float %7622, %7624
  %7628 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %7625, float %7626, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7629 = fmul fast float %7628, %7628
  %7630 = call float @dx.op.unary.f32(i32 6, float %7605)  ; FAbs(value)
  %7631 = fsub fast float 1.000000e+00, %5785
  %7632 = call float @dx.op.binary.f32(i32 35, float %7631, float 0x3F847AE140000000)  ; FMax(a,b)
  %7633 = fmul fast float %7632, %7632
  %7634 = fmul fast float %7633, %7633
  %7635 = fsub fast float 1.000000e+00, %7634
  %7636 = fmul fast float %5830, %5830
  %7637 = fmul fast float %7636, %7635
  %7638 = fadd fast float %7637, %7634
  %7639 = bitcast float %7638 to i32
  %7640 = ashr i32 %7639, 1
  %7641 = add nsw i32 %7640, 532487669
  %7642 = bitcast i32 %7641 to float
  %7643 = fadd fast float %7642, %5830
  %7644 = fmul fast float %7634, %7629
  %7645 = fsub fast float 1.000000e+00, %7629
  %7646 = fadd fast float %7645, %7644
  %7647 = fmul fast float %7630, %7630
  %7648 = fmul fast float %7647, %7635
  %7649 = fadd fast float %7648, %7634
  %7650 = bitcast float %7649 to i32
  %7651 = ashr i32 %7650, 1
  %7652 = add nsw i32 %7651, 532487669
  %7653 = bitcast i32 %7652 to float
  %7654 = fadd fast float %7653, %7630
  %7655 = fmul fast float %7646, %7646
  %7656 = fmul fast float %7655, %7643
  %7657 = fmul fast float %7656, %7654
  %7658 = fdiv fast float 1.000000e+00, %7657
  %7659 = bitcast float %7634 to i32
  %7660 = sitofp i32 %7659 to float
  %7661 = fmul fast float %7660, 0x3FE7F73180000000
  %7662 = fadd fast float %7661, 0x41AFE27C40000000
  %7663 = fptosi float %7662 to i32
  %7664 = bitcast i32 %7663 to float
  %7665 = fmul fast float %7299, 0x3FD80E9D60000000
  %7666 = fmul fast float %7665, %7616
  %7667 = fadd fast float %7664, %7666
  %7668 = bitcast float %7667 to i32
  %7669 = sub nsw i32 2129859010, %7668
  %7670 = bitcast i32 %7669 to float
  %7671 = fmul fast float %7634, %7658
  %7672 = fmul fast float %7671, %7664
  %7673 = fmul fast float %7672, %7670
  %7674 = fmul fast float %5943, 0x3FF9999980000000
  %7675 = fsub fast float 5.000000e+00, %7674
  %7676 = call float @dx.op.unary.f32(i32 6, float %7606)  ; FAbs(value)
  %7677 = fsub fast float 1.000000e+00, %7676
  %7678 = fmul fast float %5943, 0x41D9660740000000
  %7679 = fadd fast float %7678, 0xC1EFBF8940000000
  %7680 = bitcast float %7677 to i32
  %7681 = sitofp i32 %7680 to float
  %7682 = fmul fast float %7681, %7675
  %7683 = fadd fast float %7679, %7682
  %7684 = fptosi float %7683 to i32
  %7685 = bitcast i32 %7684 to float
  %7686 = fsub fast float 1.000000e+00, %5782
  %7687 = fsub fast float 1.000000e+00, %5783
  %7688 = fsub fast float 1.000000e+00, %5828
  %7689 = fmul fast float %7685, %7686
  %7690 = fmul fast float %7685, %7687
  %7691 = fmul fast float %7685, %7688
  %7692 = fadd fast float %7689, %5782
  %7693 = fadd fast float %7690, %5783
  %7694 = fadd fast float %7691, %5828
  br i1 %5966, label %7695, label %7718

; <label>:7695                                    ; preds = %7577
  %7696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4592, float %7676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = fadd fast float %7697, -5.000000e-01
  %7701 = fadd fast float %7698, -5.000000e-01
  %7702 = fadd fast float %7699, -5.000000e-01
  %7703 = fmul fast float %5782, 4.000000e+00
  %7704 = fmul fast float %7703, %7686
  %7705 = fmul fast float %7704, %7700
  %7706 = fmul fast float %5783, 4.000000e+00
  %7707 = fmul fast float %7706, %7687
  %7708 = fmul fast float %7707, %7701
  %7709 = fmul fast float %5828, 4.000000e+00
  %7710 = fmul fast float %7709, %7688
  %7711 = fmul fast float %7710, %7702
  %7712 = fadd fast float %7705, %7692
  %7713 = fadd fast float %7708, %7693
  %7714 = fadd fast float %7711, %7694
  %7715 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7716 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  br label %7718

; <label>:7718                                    ; preds = %7695, %7577
  %7719 = phi float [ %7715, %7695 ], [ %7692, %7577 ]
  %7720 = phi float [ %7716, %7695 ], [ %7693, %7577 ]
  %7721 = phi float [ %7717, %7695 ], [ %7694, %7577 ]
  %7722 = fmul fast float %7605, 9.843750e-01
  %7723 = fadd fast float %7722, 7.812500e-03
  %7724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7723, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7725 = extractvalue %dx.types.ResRet.f32 %7724, 0
  %7726 = extractvalue %dx.types.ResRet.f32 %7724, 1
  %7727 = extractvalue %dx.types.ResRet.f32 %7724, 2
  %7728 = extractvalue %dx.types.ResRet.f32 %7724, 3
  %7729 = fsub fast float %7727, %7725
  %7730 = fsub fast float %7728, %7726
  %7731 = fmul fast float %7729, %5953
  %7732 = fmul fast float %7730, %5953
  %7733 = fadd fast float %7731, %7725
  %7734 = fadd fast float %7732, %7726
  %7735 = fmul fast float %7733, %5782
  %7736 = fmul fast float %7733, %5783
  %7737 = fmul fast float %7733, %5828
  %7738 = fadd fast float %7735, %7734
  %7739 = fadd fast float %7736, %7734
  %7740 = fadd fast float %7737, %7734
  br i1 %5966, label %7741, label %7764

; <label>:7741                                    ; preds = %7718
  %7742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4592, float %7605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7743 = extractvalue %dx.types.ResRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.ResRet.f32 %7742, 1
  %7745 = extractvalue %dx.types.ResRet.f32 %7742, 2
  %7746 = fadd fast float %7743, -5.000000e-01
  %7747 = fadd fast float %7744, -5.000000e-01
  %7748 = fadd fast float %7745, -5.000000e-01
  %7749 = fmul fast float %5782, 4.000000e+00
  %7750 = fmul fast float %7749, %7686
  %7751 = fmul fast float %7750, %7746
  %7752 = fmul fast float %5783, 4.000000e+00
  %7753 = fmul fast float %7752, %7687
  %7754 = fmul fast float %7753, %7747
  %7755 = fmul fast float %5828, 4.000000e+00
  %7756 = fmul fast float %7755, %7688
  %7757 = fmul fast float %7756, %7748
  %7758 = fadd fast float %7751, %7738
  %7759 = fadd fast float %7754, %7739
  %7760 = fadd fast float %7757, %7740
  %7761 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7762 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  br label %7764

; <label>:7764                                    ; preds = %7741, %7718
  %7765 = phi float [ %7761, %7741 ], [ %7738, %7718 ]
  %7766 = phi float [ %7762, %7741 ], [ %7739, %7718 ]
  %7767 = phi float [ %7763, %7741 ], [ %7740, %7718 ]
  %7768 = call float @dx.op.binary.f32(i32 35, float %7766, float %7767)  ; FMax(a,b)
  %7769 = call float @dx.op.binary.f32(i32 35, float %7765, float %7768)  ; FMax(a,b)
  %7770 = fsub fast float 1.000000e+00, %7769
  %7771 = fmul fast float %7719, %7673
  %7772 = fmul fast float %7720, %7673
  %7773 = fmul fast float %7721, %7673
  %7774 = fsub fast float 1.000000e+00, %7606
  %7775 = bitcast float %7774 to i32
  %7776 = sitofp i32 %7775 to float
  %7777 = fmul fast float %7776, 5.000000e+00
  %7778 = fadd fast float %7777, 0xC1EFBF8940000000
  %7779 = fptosi float %7778 to i32
  %7780 = bitcast i32 %7779 to float
  %7781 = fmul fast float %7780, %4593
  %7782 = fmul fast float %7770, %7781
  %7783 = fmul fast float %7782, %6016
  %7784 = fmul fast float %7782, %6017
  %7785 = fmul fast float %7782, %6018
  %7786 = fadd fast float %7783, %7771
  %7787 = fadd fast float %7784, %7772
  %7788 = fadd fast float %7785, %7773
  %7789 = fmul fast float %7594, %4589
  %7790 = fmul fast float %7789, %7612
  %7791 = fmul fast float %7790, %7770
  %7792 = fmul fast float %7595, %4589
  %7793 = fmul fast float %7792, %7612
  %7794 = fmul fast float %7793, %7770
  %7795 = fmul fast float %7596, %4589
  %7796 = fmul fast float %7795, %7612
  %7797 = fmul fast float %7796, %7770
  %7798 = fadd fast float %7791, %7273
  %7799 = fadd fast float %7794, %7274
  %7800 = fadd fast float %7797, %7275
  %7801 = fmul fast float %7790, %7786
  %7802 = fmul fast float %7793, %7787
  %7803 = fmul fast float %7796, %7788
  %7804 = fadd fast float %7801, %7270
  %7805 = fadd fast float %7802, %7271
  %7806 = fadd fast float %7803, %7272
  br label %7402

; <label>:7807                                    ; preds = %7402
  br label %7808

; <label>:7808                                    ; preds = %7807, %7236
  %7809 = phi float [ %7238, %7236 ], [ %7403, %7807 ]
  %7810 = phi float [ %7239, %7236 ], [ %7404, %7807 ]
  %7811 = phi float [ %7240, %7236 ], [ %7405, %7807 ]
  %7812 = phi float [ %7241, %7236 ], [ %7406, %7807 ]
  %7813 = phi float [ %7242, %7236 ], [ %7407, %7807 ]
  %7814 = phi float [ %7243, %7236 ], [ %7408, %7807 ]
  %7815 = add i32 %7237, 1
  %7816 = icmp ugt i32 %7815, %7233
  br i1 %7816, label %7817, label %7236

; <label>:7817                                    ; preds = %7808
  br label %7818

; <label>:7818                                    ; preds = %7817, %7186, %7176
  %7819 = phi float [ %7177, %7176 ], [ %7177, %7186 ], [ %7809, %7817 ]
  %7820 = phi float [ %7178, %7176 ], [ %7178, %7186 ], [ %7810, %7817 ]
  %7821 = phi float [ %7179, %7176 ], [ %7179, %7186 ], [ %7811, %7817 ]
  %7822 = phi float [ %7180, %7176 ], [ %7180, %7186 ], [ %7812, %7817 ]
  %7823 = phi float [ %7181, %7176 ], [ %7181, %7186 ], [ %7813, %7817 ]
  %7824 = phi float [ %7182, %7176 ], [ %7182, %7186 ], [ %7814, %7817 ]
  %7825 = fmul fast float %4589, %4589
  %7826 = fmul fast float %7825, %6042
  %7827 = fsub fast float -0.000000e+00, %7826
  %7828 = fmul fast float %7825, %6043
  %7829 = fsub fast float -0.000000e+00, %7828
  %7830 = fmul fast float %7825, %6044
  %7831 = fsub fast float -0.000000e+00, %7830
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = fmul fast float %7833, %6048
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 3
  %7837 = fsub fast float 1.000000e+00, %4596
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  %7839 = fadd fast float %7824, %4595
  %7840 = fmul fast float %7839, %4596
  %7841 = fmul fast float %7838, %7836
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7844 = fmul fast float %7822, %5779
  %7845 = fmul fast float %7823, %5780
  %7846 = fmul fast float %7824, %5781
  %7847 = fcmp fast ogt float %97, %215
  %7848 = and i1 %7847, %5002
  %7849 = or i1 %5008, %7848
  %7850 = icmp eq i32 %5001, 2
  %7851 = fcmp fast ole float %97, %215
  %7852 = and i1 %7851, %7850
  %7853 = or i1 %7852, %7849
  br i1 %7848, label %7854, label %8111

; <label>:7854                                    ; preds = %7818
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7858 = fmul fast float %7856, %106
  %7859 = fmul fast float %7857, %107
  %7860 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7861 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7862 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7860, float %7861, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7863 = extractvalue %dx.types.ResRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.ResRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.ResRet.f32 %7862, 2
  %7866 = extractvalue %dx.types.ResRet.f32 %7862, 3
  %7867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7860, float %7861, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7868 = extractvalue %dx.types.ResRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.ResRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.ResRet.f32 %7867, 2
  %7871 = extractvalue %dx.types.ResRet.f32 %7867, 3
  %7872 = call float @dx.op.binary.f32(i32 35, float %7864, float %7865)  ; FMax(a,b)
  %7873 = call float @dx.op.binary.f32(i32 35, float %7863, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7873, float %7866)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 36, float %7869, float %7870)  ; FMin(a,b)
  %7876 = call float @dx.op.binary.f32(i32 36, float %7868, float %7875)  ; FMin(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7871)  ; FMin(a,b)
  %7878 = fmul fast float %7874, 2.550000e+02
  %7879 = fadd fast float %7878, 0x3F70101020000000
  %7880 = fptoui float %7879 to i32
  %7881 = fmul fast float %7877, 2.550000e+02
  %7882 = fadd fast float %7881, 0x3F70101020000000
  %7883 = fptoui float %7882 to i32
  %7884 = icmp ult i32 %7880, %7883
  br i1 %7884, label %7885, label %8053

; <label>:7885                                    ; preds = %7854
  %7886 = fcmp fast ogt float %96, 9.843750e-01
  %7887 = fadd fast float %97, -4.000000e+00
  %7888 = select i1 %7886, float -4.000000e+00, float %7887
  %7889 = call float @dx.op.binary.f32(i32 35, float %7888, float 0.000000e+00)  ; FMax(a,b)
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = fadd fast float %7891, %7889
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fmul fast float %7892, %7893
  %7895 = call float @dx.op.unary.f32(i32 23, float %7894)  ; Log(value)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7890, 3
  %7897 = fmul fast float %7896, %7895
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7900 = fmul fast float %7897, %7899
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7902 = uitofp i32 %7880 to float
  %7903 = uitofp i32 %7883 to float
  %7904 = fadd fast float %7902, 5.000000e-01
  %7905 = fadd fast float %7903, 5.000000e-01
  %7906 = fmul fast float %7899, %7904
  %7907 = fmul fast float %7899, %7905
  %7908 = fadd fast float %7906, 0x3F0FFB4800000000
  %7909 = fadd fast float %7907, 0xBF0FFB4800000000
  %7910 = call float @dx.op.binary.f32(i32 35, float %7901, float %7908)  ; FMax(a,b)
  %7911 = call float @dx.op.binary.f32(i32 36, float %7910, float %7909)  ; FMin(a,b)
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7916 = fmul fast float %7913, %7911
  %7917 = fadd fast float %7915, %7916
  %7918 = fadd fast float %7915, %7914
  %7919 = fsub fast float %7913, %7914
  %7920 = fadd fast float %7919, %7915
  %7921 = call float @dx.op.binary.f32(i32 35, float %7917, float %7918)  ; FMax(a,b)
  %7922 = call float @dx.op.binary.f32(i32 36, float %7921, float %7920)  ; FMin(a,b)
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7860, float %7861, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.i32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.i32 %7927, 1
  %7930 = uitofp i32 %7928 to float
  %7931 = uitofp i32 %7929 to float
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 1
  %7935 = fmul fast float %7930, %7860
  %7936 = fmul fast float %7931, %7861
  %7937 = fadd fast float %7935, -5.000000e-01
  %7938 = fadd fast float %7936, -5.000000e-01
  %7939 = call float @dx.op.unary.f32(i32 22, float %7937)  ; Frc(value)
  %7940 = call float @dx.op.unary.f32(i32 22, float %7938)  ; Frc(value)
  %7941 = fmul fast float %7939, %7939
  %7942 = fmul fast float %7941, %7939
  %7943 = fsub fast float 3.000000e+00, %7939
  %7944 = fmul fast float %7941, %7943
  %7945 = fmul fast float %7939, 3.000000e+00
  %7946 = fmul fast float %7942, 3.000000e+00
  %7947 = fmul fast float %7941, 6.000000e+00
  %7948 = fsub fast float %7946, %7947
  %7949 = fadd fast float %7948, 4.000000e+00
  %7950 = fmul fast float %7949, 0x3FC5555560000000
  %7951 = fmul fast float %7942, -3.000000e+00
  %7952 = fadd fast float %7941, %7939
  %7953 = fmul fast float %7952, 3.000000e+00
  %7954 = fadd fast float %7951, 1.000000e+00
  %7955 = fadd fast float %7954, %7953
  %7956 = fmul fast float %7942, 0x3FC5555560000000
  %7957 = fmul fast float %7940, %7940
  %7958 = fmul fast float %7957, %7940
  %7959 = fsub fast float 3.000000e+00, %7940
  %7960 = fmul fast float %7957, %7959
  %7961 = fmul fast float %7940, 3.000000e+00
  %7962 = fmul fast float %7958, 3.000000e+00
  %7963 = fmul fast float %7957, 6.000000e+00
  %7964 = fsub fast float %7962, %7963
  %7965 = fadd fast float %7964, 4.000000e+00
  %7966 = fmul fast float %7965, 0x3FC5555560000000
  %7967 = fmul fast float %7958, -3.000000e+00
  %7968 = fadd fast float %7957, %7940
  %7969 = fmul fast float %7968, 3.000000e+00
  %7970 = fadd fast float %7967, 1.000000e+00
  %7971 = fadd fast float %7970, %7969
  %7972 = fmul fast float %7958, 0x3FC5555560000000
  %7973 = fadd fast float %7939, 1.000000e+00
  %7974 = fsub fast float 1.000000e+00, %7945
  %7975 = fadd fast float %7974, %7944
  %7976 = fadd fast float %7975, %7949
  %7977 = fmul fast float %7976, 0x3FC5555560000000
  %7978 = fdiv fast float %7950, %7977
  %7979 = fsub fast float %7973, %7978
  %7980 = fsub fast float 1.000000e+00, %7939
  %7981 = fadd fast float %7955, %7942
  %7982 = fmul fast float %7981, 0x3FC5555560000000
  %7983 = fdiv fast float %7956, %7982
  %7984 = fadd fast float %7980, %7983
  %7985 = fadd fast float %7940, 1.000000e+00
  %7986 = fsub fast float 1.000000e+00, %7961
  %7987 = fadd fast float %7986, %7960
  %7988 = fadd fast float %7987, %7965
  %7989 = fmul fast float %7988, 0x3FC5555560000000
  %7990 = fdiv fast float %7966, %7989
  %7991 = fsub fast float %7985, %7990
  %7992 = fsub fast float 1.000000e+00, %7940
  %7993 = fadd fast float %7971, %7958
  %7994 = fmul fast float %7993, 0x3FC5555560000000
  %7995 = fdiv fast float %7972, %7994
  %7996 = fadd fast float %7995, %7992
  %7997 = fmul fast float %7979, %7933
  %7998 = fsub fast float %7860, %7997
  %7999 = fmul fast float %7984, %7933
  %8000 = fadd fast float %7999, %7860
  %8001 = fmul fast float %7996, %7934
  %8002 = fadd fast float %8001, %7861
  %8003 = fmul fast float %7991, %7934
  %8004 = fsub fast float %7861, %8003
  %8005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7998, float %8004, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8006 = extractvalue %dx.types.ResRet.f32 %8005, 0
  %8007 = extractvalue %dx.types.ResRet.f32 %8005, 1
  %8008 = extractvalue %dx.types.ResRet.f32 %8005, 2
  %8009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8000, float %8004, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8010 = extractvalue %dx.types.ResRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.ResRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.ResRet.f32 %8009, 2
  %8013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7998, float %8002, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8000, float %8002, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8018 = extractvalue %dx.types.ResRet.f32 %8017, 0
  %8019 = extractvalue %dx.types.ResRet.f32 %8017, 1
  %8020 = extractvalue %dx.types.ResRet.f32 %8017, 2
  %8021 = fsub fast float %8014, %8006
  %8022 = fsub fast float %8015, %8007
  %8023 = fsub fast float %8016, %8008
  %8024 = fmul fast float %8021, %7994
  %8025 = fmul fast float %8022, %7994
  %8026 = fmul fast float %8023, %7994
  %8027 = fadd fast float %8024, %8006
  %8028 = fadd fast float %8025, %8007
  %8029 = fadd fast float %8026, %8008
  %8030 = fsub fast float %8018, %8010
  %8031 = fsub fast float %8019, %8011
  %8032 = fsub fast float %8020, %8012
  %8033 = fmul fast float %8030, %7994
  %8034 = fmul fast float %8031, %7994
  %8035 = fmul fast float %8032, %7994
  %8036 = fsub fast float %8010, %8027
  %8037 = fadd fast float %8036, %8033
  %8038 = fsub fast float %8011, %8028
  %8039 = fadd fast float %8038, %8034
  %8040 = fsub fast float %8012, %8029
  %8041 = fadd fast float %8040, %8035
  %8042 = fmul fast float %8037, %7982
  %8043 = fmul fast float %8039, %7982
  %8044 = fmul fast float %8041, %7982
  %8045 = fadd fast float %8042, %8027
  %8046 = fadd fast float %8043, %8028
  %8047 = fadd fast float %8044, %8029
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8050 = fmul fast float %8045, %8049
  %8051 = fmul fast float %8046, %8049
  %8052 = fmul fast float %8047, %8049
  br label %8053

; <label>:8053                                    ; preds = %7885, %7854
  %8054 = phi float [ %7924, %7885 ], [ 1.000000e+00, %7854 ]
  %8055 = phi float [ %7925, %7885 ], [ 1.000000e+00, %7854 ]
  %8056 = phi float [ %7926, %7885 ], [ 1.000000e+00, %7854 ]
  %8057 = phi float [ %8050, %7885 ], [ 0.000000e+00, %7854 ]
  %8058 = phi float [ %8051, %7885 ], [ 0.000000e+00, %7854 ]
  %8059 = phi float [ %8052, %7885 ], [ 0.000000e+00, %7854 ]
  %8060 = fmul fast float %8057, %7827
  %8061 = fmul fast float %8058, %7829
  %8062 = fmul fast float %8059, %7831
  %8063 = call float @dx.op.dot3.f32(i32 55, float %8054, float %8055, float %8056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8064 = call float @dx.op.dot3.f32(i32 55, float %8060, float %8061, float %8062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8065 = select i1 %252, float %8063, float %8054
  %8066 = select i1 %252, float %8063, float %8055
  %8067 = select i1 %252, float 1.000000e+00, float %8056
  %8068 = select i1 %252, float %8064, float %8060
  %8069 = select i1 %252, float 0.000000e+00, float %8061
  %8070 = select i1 %252, float 0.000000e+00, float %8062
  %8071 = fmul fast float %8065, %7844
  %8072 = fmul fast float %8066, %7845
  %8073 = fmul fast float %8067, %7846
  %8074 = fadd fast float %8071, %8068
  %8075 = fadd fast float %8072, %8069
  %8076 = fadd fast float %8070, %8073
  %8077 = fmul fast float %8065, %7819
  %8078 = fmul fast float %8066, %7820
  %8079 = fmul fast float %8067, %7821
  %8080 = fmul fast float %142, %7856
  %8081 = fmul fast float %144, %7857
  %8082 = fsub fast float 1.000000e+00, %8080
  %8083 = fsub fast float 1.000000e+00, %8081
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = fmul fast float %8082, %8085
  %8089 = fmul fast float %8082, %8086
  %8090 = fmul fast float %8082, %8087
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = fmul fast float %8083, %8092
  %8096 = fmul fast float %8083, %8093
  %8097 = fmul fast float %8083, %8094
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = fadd fast float %8095, %8099
  %8103 = fadd fast float %8102, %8088
  %8104 = fadd fast float %8096, %8100
  %8105 = fadd fast float %8104, %8089
  %8106 = fadd fast float %8097, %8101
  %8107 = fadd fast float %8106, %8090
  %8108 = fmul fast float %8103, %215
  %8109 = fmul fast float %8105, %215
  %8110 = fmul fast float %8107, %215
  br label %8111

; <label>:8111                                    ; preds = %8053, %7818
  %8112 = phi float [ %8108, %8053 ], [ %193, %7818 ]
  %8113 = phi float [ %8109, %8053 ], [ %194, %7818 ]
  %8114 = phi float [ %8110, %8053 ], [ %195, %7818 ]
  %8115 = phi float [ %215, %8053 ], [ %97, %7818 ]
  %8116 = phi float [ %8074, %8053 ], [ %7844, %7818 ]
  %8117 = phi float [ %8075, %8053 ], [ %7845, %7818 ]
  %8118 = phi float [ %8076, %8053 ], [ %7846, %7818 ]
  %8119 = phi float [ %8077, %8053 ], [ %7819, %7818 ]
  %8120 = phi float [ %8078, %8053 ], [ %7820, %7818 ]
  %8121 = phi float [ %8079, %8053 ], [ %7821, %7818 ]
  %8122 = phi float [ %8054, %8053 ], [ 1.000000e+00, %7818 ]
  br i1 %7853, label %9277, label %8123

; <label>:8123                                    ; preds = %8111
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = extractvalue %dx.types.CBufRet.f32 %8124, 3
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8133 = extractvalue %dx.types.CBufRet.f32 %8129, 3
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 0
  %8136 = extractvalue %dx.types.CBufRet.f32 %8134, 1
  %8137 = extractvalue %dx.types.CBufRet.f32 %8134, 2
  %8138 = extractvalue %dx.types.CBufRet.f32 %8134, 3
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8143 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 3
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 3
  %8148 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %8150 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %8151 = fcmp fast olt float %8150, -5.000000e-01
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8112, float %8113, float %8114, float %8112, float %8113, float %8114)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = call float @dx.op.unary.f32(i32 25, float %8152)  ; Rsqrt(value)
  %8154 = fmul fast float %8153, %8152
  %8155 = fmul fast float %8153, %8112
  %8156 = fmul fast float %8153, %8113
  %8157 = fmul fast float %8153, %8114
  %8158 = fadd fast float %8154, %8128
  %8159 = call float @dx.op.dot3.f32(i32 55, float %8155, float %8156, float %8157, float %8125, float %8126, float %8127)  ; Dot3(ax,ay,az,bx,by,bz)
  %8160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.i32 %8160, 1
  %8162 = and i32 %8161, 1
  %8163 = icmp ne i32 %8162, 0
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  %8167 = and i1 %8163, %8166
  br i1 %8167, label %8168, label %8574, !dx.controlflow.hints !128

; <label>:8168                                    ; preds = %8123
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8175 = fsub fast float %8172, %8174
  %8176 = and i32 %8161, 2
  %8177 = extractvalue %dx.types.CBufRet.i32 %8160, 0
  %8178 = call i32 @dx.op.binary.i32(i32 40, i32 %8177, i32 3)  ; UMin(a,b)
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8183 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8184 = fsub fast float %8180, %8182
  %8185 = fsub fast float %8181, %8183
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = fcmp fast ogt float %8187, 0.000000e+00
  %8189 = fsub fast float -0.000000e+00, %8184
  %8190 = fsub fast float -0.000000e+00, %8185
  %8191 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8192 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8189, float %8190)  ; Dot2(ax,ay,bx,by)
  %8193 = fmul fast float %8192, 2.000000e+00
  %8194 = call float @dx.op.dot2.f32(i32 54, float %8189, float %8190, float %8189, float %8190)  ; Dot2(ax,ay,bx,by)
  %8195 = fmul fast float %8187, %8187
  %8196 = fsub fast float %8194, %8195
  %8197 = fmul fast float %8193, %8193
  %8198 = fmul fast float %8191, 4.000000e+00
  %8199 = fmul fast float %8198, %8196
  %8200 = fsub fast float %8197, %8199
  %8201 = fcmp fast ogt float %8200, 0.000000e+00
  br i1 %8201, label %8202, label %8217

; <label>:8202                                    ; preds = %8168
  %8203 = fcmp fast ogt float %8193, 0.000000e+00
  %8204 = call float @dx.op.unary.f32(i32 24, float %8200)  ; Sqrt(value)
  %8205 = fsub fast float -0.000000e+00, %8204
  %8206 = select i1 %8203, float %8204, float %8205
  %8207 = fadd fast float %8206, %8193
  %8208 = fmul float %8207, -5.000000e-01
  %8209 = fdiv fast float %8208, %8191
  %8210 = call float @dx.op.binary.f32(i32 35, float %8209, float 0.000000e+00)  ; FMax(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8154, float %8210)  ; FMin(a,b)
  %8212 = fdiv fast float %8196, %8208
  %8213 = call float @dx.op.binary.f32(i32 35, float %8212, float 0.000000e+00)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8154, float %8213)  ; FMin(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8211, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8211, float %8214)  ; FMax(a,b)
  br label %8217

; <label>:8217                                    ; preds = %8202, %8168
  %8218 = phi float [ %8216, %8202 ], [ -1.000000e+00, %8168 ]
  %8219 = phi float [ %8215, %8202 ], [ -1.000000e+00, %8168 ]
  %8220 = phi i1 [ true, %8202 ], [ false, %8168 ]
  %8221 = and i1 %8188, %8220
  br i1 %8221, label %8222, label %8224

; <label>:8222                                    ; preds = %8217
  %8223 = fcmp fast oeq float %8219, %8218
  br i1 %8223, label %8527, label %8225

; <label>:8224                                    ; preds = %8217
  br i1 %8188, label %8527, label %8225

; <label>:8225                                    ; preds = %8224, %8222
  %8226 = phi float [ %8154, %8224 ], [ %8218, %8222 ]
  %8227 = phi float [ 0.000000e+00, %8224 ], [ %8219, %8222 ]
  %8228 = icmp ne i32 %8176, 0
  %8229 = fmul fast float %8226, %8157
  %8230 = fadd fast float %8229, %8170
  %8231 = fmul fast float %8230, %8226
  %8232 = select i1 %8228, float 0.000000e+00, float %8231
  %8233 = fcmp fast oeq float %8157, 0.000000e+00
  %8234 = fdiv fast float %8175, %8157
  %8235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8234)  ; FMax(a,b)
  %8236 = select i1 %8233, float %8226, float %8235
  %8237 = call float @dx.op.binary.f32(i32 36, float %8226, float %8236)  ; FMin(a,b)
  %8238 = fcmp fast ogt float %8157, 0.000000e+00
  %8239 = fcmp fast olt float %8175, 0.000000e+00
  br i1 %8238, label %8240, label %8297

; <label>:8240                                    ; preds = %8225
  %8241 = icmp eq i32 %8176, 0
  br i1 %8239, label %8242, label %8286

; <label>:8242                                    ; preds = %8240
  %8243 = select i1 %8241, float %8226, float 0.000000e+00
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = call float @dx.op.unary.f32(i32 6, float %8244)  ; FAbs(value)
  %8246 = fmul fast float %8243, %8157
  %8247 = fadd fast float %8246, %8170
  %8248 = fmul fast float %8245, %8247
  %8249 = fsub fast float %8232, %8248
  %8250 = fsub fast float %8226, %8245
  %8251 = select i1 %8241, float %8250, float 0.000000e+00
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8260 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8263 = call float @dx.op.binary.f32(i32 36, float %8249, float %8262)  ; FMin(a,b)
  %8264 = fmul fast float %8260, %8251
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = fsub fast float %8257, %8253
  %8267 = fsub fast float %8258, %8254
  %8268 = fsub fast float %8259, %8255
  %8269 = fmul fast float %8265, %8266
  %8270 = fmul fast float %8265, %8267
  %8271 = fmul fast float %8265, %8268
  %8272 = fadd fast float %8269, %8253
  %8273 = fadd fast float %8270, %8254
  %8274 = fadd fast float %8271, %8255
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8278 = fadd fast float %8277, %8276
  %8279 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8281 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8282 = fadd fast float %8281, %8280
  %8283 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8284 = fmul fast float %8279, %8263
  %8285 = fmul fast float %8284, %8283
  br label %8527

; <label>:8286                                    ; preds = %8240
  br i1 %8241, label %8287, label %8308

; <label>:8287                                    ; preds = %8286
  %8288 = call float @dx.op.binary.f32(i32 36, float %8237, float %8227)  ; FMin(a,b)
  %8289 = fsub fast float %8237, %8288
  %8290 = fsub fast float %8289, %8226
  %8291 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8292 = fadd fast float %8289, %8226
  %8293 = fmul fast float %8292, %8157
  %8294 = fadd fast float %8293, %8170
  %8295 = fmul fast float %8294, %8291
  %8296 = fsub fast float %8232, %8295
  br label %8308

; <label>:8297                                    ; preds = %8225
  br i1 %8239, label %8298, label %8308

; <label>:8298                                    ; preds = %8297
  %8299 = call float @dx.op.binary.f32(i32 35, float %8227, float %8237)  ; FMax(a,b)
  %8300 = icmp eq i32 %8176, 0
  %8301 = select i1 %8300, float %8237, float 0.000000e+00
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = call float @dx.op.unary.f32(i32 6, float %8302)  ; FAbs(value)
  %8304 = fmul fast float %8301, %8157
  %8305 = fadd fast float %8304, %8170
  %8306 = fmul fast float %8303, %8305
  %8307 = fsub fast float %8232, %8306
  br label %8308

; <label>:8308                                    ; preds = %8298, %8297, %8287, %8286
  %8309 = phi float [ %8227, %8286 ], [ %8227, %8287 ], [ %8299, %8298 ], [ %8227, %8297 ]
  %8310 = phi float [ 0.000000e+00, %8286 ], [ %8291, %8287 ], [ %8303, %8298 ], [ 0.000000e+00, %8297 ]
  %8311 = phi float [ %8232, %8286 ], [ %8296, %8287 ], [ %8307, %8298 ], [ %8232, %8297 ]
  %8312 = phi float [ %8237, %8286 ], [ %8237, %8287 ], [ %8226, %8298 ], [ %8226, %8297 ]
  %8313 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8313, align 4, !tbaa !129, !noalias !131
  %8314 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8314, align 4, !tbaa !129, !noalias !131
  %8315 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8315, align 4, !tbaa !129, !noalias !131
  %8316 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8316, align 4, !tbaa !129, !noalias !131
  %8317 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8317, align 4, !tbaa !129, !noalias !131
  %8318 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8318, align 4, !tbaa !129, !noalias !131
  %8319 = icmp sgt i32 %8178, 0
  br i1 %8319, label %8320, label %8381

; <label>:8320                                    ; preds = %8308
  br label %8321

; <label>:8321                                    ; preds = %8370, %8320
  %8322 = phi i32 [ %8371, %8370 ], [ 0, %8320 ]
  %8323 = phi i32 [ %8372, %8370 ], [ 0, %8320 ]
  %8324 = add nuw i32 %8323, 171
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8324)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8328, 1
  %8331 = fsub fast float %8326, %8329
  %8332 = fsub fast float %8327, %8330
  %8333 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8334 = fsub fast float -0.000000e+00, %8331
  %8335 = fsub fast float -0.000000e+00, %8332
  %8336 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8334, float %8335)  ; Dot2(ax,ay,bx,by)
  %8337 = fmul fast float %8336, 2.000000e+00
  %8338 = call float @dx.op.dot2.f32(i32 54, float %8334, float %8335, float %8334, float %8335)  ; Dot2(ax,ay,bx,by)
  %8339 = fmul fast float %8333, %8333
  %8340 = fsub fast float %8338, %8339
  %8341 = fmul fast float %8337, %8337
  %8342 = fmul fast float %8198, %8340
  %8343 = fsub fast float %8341, %8342
  %8344 = fcmp fast ogt float %8343, 0.000000e+00
  br i1 %8344, label %8345, label %8360

; <label>:8345                                    ; preds = %8321
  %8346 = fcmp fast ogt float %8337, 0.000000e+00
  %8347 = call float @dx.op.unary.f32(i32 24, float %8343)  ; Sqrt(value)
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = select i1 %8346, float %8347, float %8348
  %8350 = fadd fast float %8349, %8337
  %8351 = fmul float %8350, -5.000000e-01
  %8352 = fdiv fast float %8351, %8191
  %8353 = call float @dx.op.binary.f32(i32 35, float %8352, float 0.000000e+00)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8226, float %8353)  ; FMin(a,b)
  %8355 = fdiv fast float %8340, %8351
  %8356 = call float @dx.op.binary.f32(i32 35, float %8355, float 0.000000e+00)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8226, float %8356)  ; FMin(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8354, float %8357)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 35, float %8354, float %8357)  ; FMax(a,b)
  br label %8360

; <label>:8360                                    ; preds = %8345, %8321
  %8361 = phi float [ %8359, %8345 ], [ -1.000000e+00, %8321 ]
  %8362 = phi float [ %8358, %8345 ], [ -1.000000e+00, %8321 ]
  %8363 = phi i1 [ true, %8345 ], [ false, %8321 ]
  br i1 %8363, label %8364, label %8370

; <label>:8364                                    ; preds = %8360
  %8365 = call float @dx.op.binary.f32(i32 35, float %8309, float %8362)  ; FMax(a,b)
  %8366 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8323
  store float %8365, float* %8366, align 4, !tbaa !129, !noalias !131
  %8367 = call float @dx.op.binary.f32(i32 35, float %8309, float %8361)  ; FMax(a,b)
  %8368 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8323
  store float %8367, float* %8368, align 4, !tbaa !129, !noalias !131
  %8369 = add nsw i32 %8322, 1
  br label %8370

; <label>:8370                                    ; preds = %8364, %8360
  %8371 = phi i32 [ %8369, %8364 ], [ %8322, %8360 ]
  %8372 = add nuw nsw i32 %8323, 1
  %8373 = icmp eq i32 %8372, %8178
  br i1 %8373, label %8374, label %8321

; <label>:8374                                    ; preds = %8370
  %8375 = load float, float* %8315, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8376 = load float, float* %8314, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8377 = load float, float* %8313, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8378 = load float, float* %8318, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8379 = load float, float* %8317, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8380 = load float, float* %8316, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8381

; <label>:8381                                    ; preds = %8374, %8308
  %8382 = phi float [ -1.000000e+00, %8308 ], [ %8380, %8374 ]
  %8383 = phi float [ -1.000000e+00, %8308 ], [ %8379, %8374 ]
  %8384 = phi float [ -1.000000e+00, %8308 ], [ %8378, %8374 ]
  %8385 = phi float [ -1.000000e+00, %8308 ], [ %8377, %8374 ]
  %8386 = phi float [ -1.000000e+00, %8308 ], [ %8376, %8374 ]
  %8387 = phi float [ -1.000000e+00, %8308 ], [ %8375, %8374 ]
  %8388 = phi i32 [ 0, %8308 ], [ %8371, %8374 ]
  %8389 = call float @dx.op.binary.f32(i32 36, float %8386, float %8387)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 36, float %8385, float %8389)  ; FMin(a,b)
  %8391 = call float @dx.op.binary.f32(i32 35, float %8385, float %8386)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 36, float %8391, float %8387)  ; FMin(a,b)
  %8393 = call float @dx.op.binary.f32(i32 36, float %8385, float %8386)  ; FMin(a,b)
  %8394 = call float @dx.op.binary.f32(i32 35, float %8393, float %8392)  ; FMax(a,b)
  %8395 = call float @dx.op.binary.f32(i32 35, float %8386, float %8387)  ; FMax(a,b)
  %8396 = call float @dx.op.binary.f32(i32 35, float %8385, float %8395)  ; FMax(a,b)
  store float %8390, float* %8313, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8394, float* %8314, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8396, float* %8315, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8397 = call float @dx.op.binary.f32(i32 36, float %8383, float %8384)  ; FMin(a,b)
  %8398 = call float @dx.op.binary.f32(i32 36, float %8382, float %8397)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 35, float %8382, float %8383)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8384)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8382, float %8383)  ; FMin(a,b)
  %8402 = call float @dx.op.binary.f32(i32 35, float %8401, float %8400)  ; FMax(a,b)
  %8403 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8404 = call float @dx.op.binary.f32(i32 35, float %8382, float %8403)  ; FMax(a,b)
  store float %8398, float* %8316, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8402, float* %8317, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8404, float* %8318, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8405 = sub nsw i32 3, %8388
  %8406 = icmp sgt i32 %8405, 2
  br i1 %8406, label %8407, label %8445

; <label>:8407                                    ; preds = %8381
  %8408 = icmp eq i32 %8176, 0
  %8409 = fsub fast float %8226, %8310
  %8410 = select i1 %8408, float %8409, float %8310
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.CBufRet.f32 %8415, 3
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8422 = call float @dx.op.binary.f32(i32 36, float %8311, float %8421)  ; FMin(a,b)
  %8423 = fmul fast float %8419, %8410
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fsub fast float %8416, %8412
  %8426 = fsub fast float %8417, %8413
  %8427 = fsub fast float %8418, %8414
  %8428 = fmul fast float %8424, %8425
  %8429 = fmul fast float %8424, %8426
  %8430 = fmul fast float %8424, %8427
  %8431 = fadd fast float %8428, %8412
  %8432 = fadd fast float %8429, %8413
  %8433 = fadd fast float %8430, %8414
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = fadd fast float %8436, %8435
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8441 = fadd fast float %8440, %8439
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = fmul fast float %8438, %8422
  %8444 = fmul fast float %8443, %8442
  br label %8527

; <label>:8445                                    ; preds = %8381
  %8446 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8405
  %8447 = load float, float* %8446, align 4, !tbaa !129, !noalias !131
  %8448 = fcmp fast olt float %8447, %8312
  %8449 = icmp sgt i32 %8388, 0
  %8450 = and i1 %8449, %8448
  br i1 %8450, label %8451, label %8488

; <label>:8451                                    ; preds = %8445
  br label %8452

; <label>:8452                                    ; preds = %8481, %8451
  %8453 = phi float [ %8482, %8481 ], [ %8310, %8451 ]
  %8454 = phi float [ %8483, %8481 ], [ %8311, %8451 ]
  %8455 = phi float [ %8463, %8481 ], [ %8447, %8451 ]
  %8456 = phi i32 [ %8460, %8481 ], [ %8405, %8451 ]
  %8457 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8456
  %8458 = load float, float* %8457, align 4, !tbaa !129, !noalias !131
  %8459 = icmp slt i32 %8456, 2
  %8460 = add nsw i32 %8456, 1
  %8461 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8460
  %8462 = load float, float* %8461, align 4, !tbaa !129, !noalias !131
  %8463 = select i1 %8459, float %8462, float %8226
  %8464 = call float @dx.op.binary.f32(i32 36, float %8463, float %8458)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 36, float %8312, float %8464)  ; FMin(a,b)
  %8466 = icmp eq i32 %8176, 0
  %8467 = fadd fast float %8465, %8455
  %8468 = fmul fast float %8467, %8157
  %8469 = fadd fast float %8468, %8170
  br i1 %8466, label %8475, label %8470

; <label>:8470                                    ; preds = %8452
  %8471 = fsub fast float %8465, %8455
  %8472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8471)  ; FMax(a,b)
  %8473 = fmul fast float %8472, %8469
  %8474 = fadd fast float %8473, %8454
  br label %8481

; <label>:8475                                    ; preds = %8452
  %8476 = fsub fast float %8455, %8465
  %8477 = call float @dx.op.unary.f32(i32 6, float %8476)  ; FAbs(value)
  %8478 = fadd fast float %8477, %8453
  %8479 = fmul fast float %8477, %8469
  %8480 = fsub fast float %8454, %8479
  br label %8481

; <label>:8481                                    ; preds = %8475, %8470
  %8482 = phi float [ %8472, %8470 ], [ %8478, %8475 ]
  %8483 = phi float [ %8474, %8470 ], [ %8480, %8475 ]
  %8484 = fcmp fast olt float %8463, %8312
  %8485 = icmp slt i32 %8460, 3
  %8486 = and i1 %8485, %8484
  br i1 %8486, label %8452, label %8487

; <label>:8487                                    ; preds = %8481
  br label %8488

; <label>:8488                                    ; preds = %8487, %8445
  %8489 = phi float [ %8310, %8445 ], [ %8482, %8487 ]
  %8490 = phi float [ %8311, %8445 ], [ %8483, %8487 ]
  %8491 = fsub fast float %8226, %8489
  %8492 = select i1 %8228, float %8489, float %8491
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.CBufRet.f32 %8493, 2
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8504 = call float @dx.op.binary.f32(i32 36, float %8490, float %8503)  ; FMin(a,b)
  %8505 = fmul fast float %8501, %8492
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8507 = fsub fast float %8498, %8494
  %8508 = fsub fast float %8499, %8495
  %8509 = fsub fast float %8500, %8496
  %8510 = fmul fast float %8506, %8507
  %8511 = fmul fast float %8506, %8508
  %8512 = fmul fast float %8506, %8509
  %8513 = fadd fast float %8510, %8494
  %8514 = fadd fast float %8511, %8495
  %8515 = fadd fast float %8512, %8496
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = fadd fast float %8518, %8517
  %8520 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8522 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8523 = fadd fast float %8522, %8521
  %8524 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8525 = fmul fast float %8520, %8504
  %8526 = fmul fast float %8525, %8524
  br label %8527

; <label>:8527                                    ; preds = %8488, %8407, %8242, %8224, %8222
  %8528 = phi float [ %8251, %8242 ], [ %8410, %8407 ], [ %8492, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8529 = phi float [ %8285, %8242 ], [ %8444, %8407 ], [ %8526, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8530 = phi float [ %8272, %8242 ], [ %8431, %8407 ], [ %8513, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8531 = phi float [ %8273, %8242 ], [ %8432, %8407 ], [ %8514, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8532 = phi float [ %8274, %8242 ], [ %8433, %8407 ], [ %8515, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8533 = fmul fast float %8165, %8529
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8536 = fsub fast float %8172, %8535
  %8537 = fcmp fast olt float %8533, -2.000000e+01
  %8538 = call float @dx.op.unary.f32(i32 21, float %8533)  ; Exp(value)
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8544 = fmul fast float %8541, %8536
  %8545 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8546 = fsub fast float 1.000000e+00, %8545
  %8547 = fmul fast float %8157, 5.000000e-01
  %8548 = fadd fast float %8547, 5.000000e-01
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fsub fast float 1.000000e+00, %8549
  %8551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8546)  ; FMax(a,b)
  %8552 = fdiv fast float %8550, %8551
  %8553 = fsub fast float %8536, %8114
  %8554 = call float @dx.op.unary.f32(i32 6, float %8553)  ; FAbs(value)
  %8555 = fmul fast float %8554, %8540
  %8556 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8557 = fsub fast float 1.000000e+00, %8555
  %8558 = fmul fast float %8557, %8556
  %8559 = fadd fast float %8558, %8555
  %8560 = fmul fast float %8543, %8536
  %8561 = call float @dx.op.unary.f32(i32 7, float %8560)  ; Saturate(value)
  %8562 = fsub fast float 1.000000e+00, %8559
  %8563 = fmul fast float %8562, %8561
  %8564 = fadd fast float %8563, %8559
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fadd fast float %8538, -1.000000e+00
  %8567 = select i1 %8537, float -1.000000e+00, float %8566
  %8568 = fmul fast float %8565, %8567
  %8569 = fadd fast float %8568, 1.000000e+00
  %8570 = fsub fast float -0.000000e+00, %8568
  %8571 = fmul fast float %8530, %8570
  %8572 = fmul fast float %8531, %8570
  %8573 = fmul fast float %8532, %8570
  br label %8574

; <label>:8574                                    ; preds = %8527, %8123
  %8575 = phi float [ %8528, %8527 ], [ 0.000000e+00, %8123 ]
  %8576 = phi float [ %8569, %8527 ], [ 1.000000e+00, %8123 ]
  %8577 = phi float [ %8571, %8527 ], [ 0.000000e+00, %8123 ]
  %8578 = phi float [ %8572, %8527 ], [ 0.000000e+00, %8123 ]
  %8579 = phi float [ %8573, %8527 ], [ 0.000000e+00, %8123 ]
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8582 = fsub fast float 1.000000e+00, %8576
  %8583 = fmul fast float %8582, %8158
  %8584 = fmul fast float %8583, %8581
  %8585 = fsub fast float %8158, %8584
  br i1 %8151, label %8586, label %8615, !dx.controlflow.hints !167

; <label>:8586                                    ; preds = %8574
  %8587 = fmul fast float %8159, %8148
  %8588 = fadd fast float %8587, %8149
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fmul fast float %8130, %8585
  %8591 = fsub fast float -0.000000e+00, %8590
  %8592 = fmul fast float %8131, %8585
  %8593 = fsub fast float -0.000000e+00, %8592
  %8594 = call float @dx.op.unary.f32(i32 21, float %8591)  ; Exp(value)
  %8595 = call float @dx.op.unary.f32(i32 21, float %8593)  ; Exp(value)
  %8596 = call float @dx.op.binary.f32(i32 35, float %8138, float %8594)  ; FMax(a,b)
  %8597 = call float @dx.op.binary.f32(i32 35, float %8138, float %8595)  ; FMax(a,b)
  %8598 = fsub fast float %8597, %8596
  %8599 = fmul fast float %8598, %8589
  %8600 = fadd fast float %8599, %8596
  %8601 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8602 = fsub fast float %8135, %8140
  %8603 = fsub fast float %8136, %8141
  %8604 = fsub fast float %8137, %8142
  %8605 = fmul fast float %8589, %8602
  %8606 = fmul fast float %8589, %8603
  %8607 = fmul fast float %8589, %8604
  %8608 = fadd fast float %8605, %8140
  %8609 = fadd fast float %8606, %8141
  %8610 = fadd fast float %8607, %8142
  %8611 = fsub fast float 1.000000e+00, %8601
  %8612 = fmul fast float %8611, %8608
  %8613 = fmul fast float %8611, %8609
  %8614 = fmul fast float %8611, %8610
  br label %8674

; <label>:8615                                    ; preds = %8574
  %8616 = fmul fast float %8585, %8147
  %8617 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8618 = fsub fast float 2.000000e+00, %8617
  %8619 = fmul fast float %8617, 9.921875e-01
  %8620 = fmul fast float %8619, %8618
  %8621 = fadd fast float %8620, 3.906250e-03
  %8622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8621, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = fsub fast float %8617, %8623
  %8625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8624)  ; FMax(a,b)
  %8626 = fmul fast float %8133, %8114
  %8627 = call float @dx.op.unary.f32(i32 6, float %8626)  ; FAbs(value)
  %8628 = fcmp fast ogt float %8627, 0x3EB0C6F7A0000000
  br i1 %8628, label %8629, label %8635, !dx.controlflow.hints !168

; <label>:8629                                    ; preds = %8615
  %8630 = fmul fast float %8626, 0xBFF7154760000000
  %8631 = call float @dx.op.unary.f32(i32 21, float %8630)  ; Exp(value)
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = fdiv fast float %8632, %8626
  %8634 = fmul fast float %8633, %8143
  br label %8635

; <label>:8635                                    ; preds = %8629, %8615
  %8636 = phi float [ %8634, %8629 ], [ %8143, %8615 ]
  %8637 = fadd fast float %8636, %8145
  %8638 = fmul fast float %8637, %8625
  %8639 = fmul fast float %8130, %8638
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = fmul fast float %8131, %8638
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = fmul fast float %8132, %8638
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = call float @dx.op.unary.f32(i32 21, float %8640)  ; Exp(value)
  %8646 = call float @dx.op.unary.f32(i32 21, float %8642)  ; Exp(value)
  %8647 = call float @dx.op.unary.f32(i32 21, float %8644)  ; Exp(value)
  %8648 = fmul fast float %8159, %8159
  %8649 = fadd fast float %8648, 1.000000e+00
  %8650 = fmul fast float %8649, 0x3FAE8EC8A0000000
  %8651 = fmul fast float %8650, %8140
  %8652 = fmul fast float %8650, %8141
  %8653 = fmul fast float %8650, %8142
  %8654 = fmul fast float %8159, %8138
  %8655 = fsub fast float 1.000000e+00, %8654
  %8656 = fmul fast float %8138, %8138
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = fmul fast float %8657, 0x3FB45F3060000000
  %8659 = fmul fast float %8655, %8655
  %8660 = fdiv fast float 1.000000e+00, %8659
  %8661 = fmul fast float %8658, %8660
  %8662 = fmul fast float %8661, %8135
  %8663 = fmul fast float %8661, %8136
  %8664 = fmul fast float %8661, %8137
  %8665 = fadd fast float %8662, %8651
  %8666 = fadd fast float %8663, %8652
  %8667 = fadd fast float %8664, %8653
  %8668 = fsub fast float 1.000000e+00, %8645
  %8669 = fsub fast float 1.000000e+00, %8646
  %8670 = fsub fast float 1.000000e+00, %8647
  %8671 = fmul fast float %8665, %8668
  %8672 = fmul fast float %8666, %8669
  %8673 = fmul fast float %8667, %8670
  br label %8674

; <label>:8674                                    ; preds = %8635, %8586
  %8675 = phi float [ %8612, %8586 ], [ %8671, %8635 ]
  %8676 = phi float [ %8613, %8586 ], [ %8672, %8635 ]
  %8677 = phi float [ %8614, %8586 ], [ %8673, %8635 ]
  %8678 = phi float [ %8601, %8586 ], [ %8645, %8635 ]
  %8679 = phi float [ %8601, %8586 ], [ %8646, %8635 ]
  %8680 = phi float [ %8601, %8586 ], [ %8647, %8635 ]
  br i1 %8167, label %8681, label %8879, !dx.controlflow.hints !169

; <label>:8681                                    ; preds = %8674
  %8682 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8683 = fmul fast float %8682, %8582
  %8684 = fsub fast float %8577, %8675
  %8685 = fsub fast float %8578, %8676
  %8686 = fsub fast float %8579, %8677
  %8687 = fmul fast float %8683, %8684
  %8688 = fmul fast float %8683, %8685
  %8689 = fmul fast float %8683, %8686
  %8690 = fadd fast float %8687, %8675
  %8691 = fadd fast float %8688, %8676
  %8692 = fadd fast float %8689, %8677
  %8693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8678)  ; FMax(a,b)
  %8694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8679)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8680)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8576)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8575, float %8585)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8697)  ; FMax(a,b)
  %8699 = fdiv fast float %8575, %8698
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = fdiv fast float %8585, %8698
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fcmp fast une float %8696, 1.000000e+00
  br i1 %8703, label %8704, label %8717, !dx.controlflow.hints !170

; <label>:8704                                    ; preds = %8681
  %8705 = call float @dx.op.unary.f32(i32 23, float %8696)  ; Log(value)
  %8706 = fmul fast float %8705, 0x3FE62E4300000000
  %8707 = fmul fast float %8577, %8706
  %8708 = fsub fast float -0.000000e+00, %8707
  %8709 = fmul fast float %8578, %8706
  %8710 = fsub fast float -0.000000e+00, %8709
  %8711 = fmul fast float %8579, %8706
  %8712 = fsub fast float -0.000000e+00, %8711
  %8713 = fsub fast float 1.000000e+00, %8696
  %8714 = fdiv fast float %8708, %8713
  %8715 = fdiv fast float %8710, %8713
  %8716 = fdiv fast float %8712, %8713
  br label %8717

; <label>:8717                                    ; preds = %8704, %8681
  %8718 = phi float [ %8714, %8704 ], [ %8577, %8681 ]
  %8719 = phi float [ %8715, %8704 ], [ %8578, %8681 ]
  %8720 = phi float [ %8716, %8704 ], [ %8579, %8681 ]
  %8721 = phi float [ %8706, %8704 ], [ 0.000000e+00, %8681 ]
  %8722 = fcmp fast une float %8693, 1.000000e+00
  br i1 %8722, label %8723, label %8730, !dx.controlflow.hints !171

; <label>:8723                                    ; preds = %8717
  %8724 = call float @dx.op.unary.f32(i32 23, float %8693)  ; Log(value)
  %8725 = fmul fast float %8724, 0x3FE62E4300000000
  %8726 = fmul fast float %8690, %8725
  %8727 = fsub fast float -0.000000e+00, %8726
  %8728 = fsub fast float 1.000000e+00, %8693
  %8729 = fdiv fast float %8727, %8728
  br label %8730

; <label>:8730                                    ; preds = %8723, %8717
  %8731 = phi float [ %8729, %8723 ], [ %8690, %8717 ]
  %8732 = phi float [ %8725, %8723 ], [ 0.000000e+00, %8717 ]
  %8733 = fcmp fast une float %8694, 1.000000e+00
  br i1 %8733, label %8734, label %8741, !dx.controlflow.hints !171

; <label>:8734                                    ; preds = %8730
  %8735 = call float @dx.op.unary.f32(i32 23, float %8694)  ; Log(value)
  %8736 = fmul fast float %8735, 0x3FE62E4300000000
  %8737 = fmul fast float %8691, %8736
  %8738 = fsub fast float -0.000000e+00, %8737
  %8739 = fsub fast float 1.000000e+00, %8694
  %8740 = fdiv fast float %8738, %8739
  br label %8741

; <label>:8741                                    ; preds = %8734, %8730
  %8742 = phi float [ %8740, %8734 ], [ %8691, %8730 ]
  %8743 = phi float [ %8736, %8734 ], [ 0.000000e+00, %8730 ]
  %8744 = fcmp fast une float %8695, 1.000000e+00
  br i1 %8744, label %8745, label %8752, !dx.controlflow.hints !171

; <label>:8745                                    ; preds = %8741
  %8746 = call float @dx.op.unary.f32(i32 23, float %8695)  ; Log(value)
  %8747 = fmul fast float %8746, 0x3FE62E4300000000
  %8748 = fmul fast float %8692, %8747
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = fsub fast float 1.000000e+00, %8695
  %8751 = fdiv fast float %8749, %8750
  br label %8752

; <label>:8752                                    ; preds = %8745, %8741
  %8753 = phi float [ %8751, %8745 ], [ %8692, %8741 ]
  %8754 = phi float [ %8747, %8745 ], [ 0.000000e+00, %8741 ]
  %8755 = fmul fast float %8718, %8702
  %8756 = fmul fast float %8719, %8702
  %8757 = fmul fast float %8720, %8702
  %8758 = fmul fast float %8721, %8702
  %8759 = fmul fast float %8731, %8700
  %8760 = fmul fast float %8742, %8700
  %8761 = fmul fast float %8753, %8700
  %8762 = fmul fast float %8732, %8700
  %8763 = fmul fast float %8743, %8700
  %8764 = fmul fast float %8754, %8700
  %8765 = fadd fast float %8759, %8755
  %8766 = fadd fast float %8760, %8756
  %8767 = fadd fast float %8761, %8757
  %8768 = fadd fast float %8762, %8758
  %8769 = fadd fast float %8763, %8758
  %8770 = fadd fast float %8764, %8758
  %8771 = fcmp fast une float %8768, 0.000000e+00
  br i1 %8771, label %8772, label %8779, !dx.controlflow.hints !172

; <label>:8772                                    ; preds = %8752
  %8773 = fmul fast float %8768, 0x3FF7154760000000
  %8774 = call float @dx.op.unary.f32(i32 21, float %8773)  ; Exp(value)
  %8775 = fsub fast float 1.000000e+00, %8774
  %8776 = fmul fast float %8765, %8775
  %8777 = fsub fast float -0.000000e+00, %8776
  %8778 = fdiv fast float %8777, %8768
  br label %8779

; <label>:8779                                    ; preds = %8772, %8752
  %8780 = phi float [ %8774, %8772 ], [ 1.000000e+00, %8752 ]
  %8781 = phi float [ %8778, %8772 ], [ %8765, %8752 ]
  %8782 = fcmp fast une float %8769, 0.000000e+00
  br i1 %8782, label %8783, label %8790, !dx.controlflow.hints !172

; <label>:8783                                    ; preds = %8779
  %8784 = fmul fast float %8769, 0x3FF7154760000000
  %8785 = call float @dx.op.unary.f32(i32 21, float %8784)  ; Exp(value)
  %8786 = fsub fast float 1.000000e+00, %8785
  %8787 = fmul fast float %8766, %8786
  %8788 = fsub fast float -0.000000e+00, %8787
  %8789 = fdiv fast float %8788, %8769
  br label %8790

; <label>:8790                                    ; preds = %8783, %8779
  %8791 = phi float [ %8785, %8783 ], [ 1.000000e+00, %8779 ]
  %8792 = phi float [ %8789, %8783 ], [ %8766, %8779 ]
  %8793 = fcmp fast une float %8770, 0.000000e+00
  br i1 %8793, label %8794, label %8801, !dx.controlflow.hints !172

; <label>:8794                                    ; preds = %8790
  %8795 = fmul fast float %8770, 0x3FF7154760000000
  %8796 = call float @dx.op.unary.f32(i32 21, float %8795)  ; Exp(value)
  %8797 = fsub fast float 1.000000e+00, %8796
  %8798 = fmul fast float %8767, %8797
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = fdiv fast float %8799, %8770
  br label %8801

; <label>:8801                                    ; preds = %8794, %8790
  %8802 = phi float [ %8796, %8794 ], [ 1.000000e+00, %8790 ]
  %8803 = phi float [ %8800, %8794 ], [ %8767, %8790 ]
  %8804 = fcmp fast ogt float %8700, %8702
  br i1 %8804, label %8805, label %8825

; <label>:8805                                    ; preds = %8801
  %8806 = fsub fast float 1.000000e+00, %8702
  %8807 = fmul fast float %8718, %8806
  %8808 = fmul fast float %8719, %8806
  %8809 = fmul fast float %8720, %8806
  %8810 = fmul fast float %8721, %8806
  %8811 = fcmp fast une float %8810, 0.000000e+00
  br i1 %8811, label %8812, label %8863, !dx.controlflow.hints !173

; <label>:8812                                    ; preds = %8805
  %8813 = fmul fast float %8810, 0x3FF7154760000000
  %8814 = call float @dx.op.unary.f32(i32 21, float %8813)  ; Exp(value)
  %8815 = fsub fast float 1.000000e+00, %8814
  %8816 = fmul fast float %8807, %8815
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fmul fast float %8808, %8815
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fmul fast float %8809, %8815
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fdiv fast float %8817, %8810
  %8823 = fdiv fast float %8819, %8810
  %8824 = fdiv fast float %8821, %8810
  br label %8863

; <label>:8825                                    ; preds = %8801
  %8826 = fsub fast float 1.000000e+00, %8700
  %8827 = fmul fast float %8731, %8826
  %8828 = fmul fast float %8742, %8826
  %8829 = fmul fast float %8753, %8826
  %8830 = fmul fast float %8732, %8826
  %8831 = fmul fast float %8743, %8826
  %8832 = fmul fast float %8754, %8826
  %8833 = fcmp fast une float %8830, 0.000000e+00
  br i1 %8833, label %8834, label %8841, !dx.controlflow.hints !172

; <label>:8834                                    ; preds = %8825
  %8835 = fmul fast float %8830, 0x3FF7154760000000
  %8836 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8827, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fdiv fast float %8839, %8830
  br label %8841

; <label>:8841                                    ; preds = %8834, %8825
  %8842 = phi float [ %8840, %8834 ], [ %8827, %8825 ]
  %8843 = phi float [ %8836, %8834 ], [ 1.000000e+00, %8825 ]
  %8844 = fcmp fast une float %8831, 0.000000e+00
  br i1 %8844, label %8845, label %8852, !dx.controlflow.hints !172

; <label>:8845                                    ; preds = %8841
  %8846 = fmul fast float %8831, 0x3FF7154760000000
  %8847 = call float @dx.op.unary.f32(i32 21, float %8846)  ; Exp(value)
  %8848 = fsub fast float 1.000000e+00, %8847
  %8849 = fmul fast float %8828, %8848
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fdiv fast float %8850, %8831
  br label %8852

; <label>:8852                                    ; preds = %8845, %8841
  %8853 = phi float [ %8851, %8845 ], [ %8828, %8841 ]
  %8854 = phi float [ %8847, %8845 ], [ 1.000000e+00, %8841 ]
  %8855 = fcmp fast une float %8832, 0.000000e+00
  br i1 %8855, label %8856, label %8863, !dx.controlflow.hints !172

; <label>:8856                                    ; preds = %8852
  %8857 = fmul fast float %8832, 0x3FF7154760000000
  %8858 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8859 = fsub fast float 1.000000e+00, %8858
  %8860 = fmul fast float %8829, %8859
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = fdiv fast float %8861, %8832
  br label %8863

; <label>:8863                                    ; preds = %8856, %8852, %8812, %8805
  %8864 = phi float [ %8862, %8856 ], [ %8824, %8812 ], [ %8809, %8805 ], [ %8829, %8852 ]
  %8865 = phi float [ %8853, %8856 ], [ %8823, %8812 ], [ %8808, %8805 ], [ %8853, %8852 ]
  %8866 = phi float [ %8842, %8856 ], [ %8822, %8812 ], [ %8807, %8805 ], [ %8842, %8852 ]
  %8867 = phi float [ %8858, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ 1.000000e+00, %8852 ]
  %8868 = phi float [ %8854, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ %8854, %8852 ]
  %8869 = phi float [ %8843, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ %8843, %8852 ]
  %8870 = fmul fast float %8869, %8781
  %8871 = fmul fast float %8868, %8792
  %8872 = fmul fast float %8867, %8803
  %8873 = fadd fast float %8870, %8866
  %8874 = fadd fast float %8871, %8865
  %8875 = fadd fast float %8872, %8864
  %8876 = fmul fast float %8869, %8780
  %8877 = fmul fast float %8868, %8791
  %8878 = fmul fast float %8867, %8802
  br label %8879

; <label>:8879                                    ; preds = %8863, %8674
  %8880 = phi float [ %8878, %8863 ], [ %8680, %8674 ]
  %8881 = phi float [ %8877, %8863 ], [ %8679, %8674 ]
  %8882 = phi float [ %8876, %8863 ], [ %8678, %8674 ]
  %8883 = phi float [ %8875, %8863 ], [ %8677, %8674 ]
  %8884 = phi float [ %8874, %8863 ], [ %8676, %8674 ]
  %8885 = phi float [ %8873, %8863 ], [ %8675, %8674 ]
  %8886 = fmul fast float %8885, %7827
  %8887 = fmul fast float %8884, %7829
  %8888 = fmul fast float %8883, %7831
  %8889 = fmul fast float %8882, %8122
  %8890 = call float @dx.op.dot3.f32(i32 55, float %8882, float %8881, float %8880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8891 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8887, float %8888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8892 = select i1 %252, float %8890, float %8882
  %8893 = select i1 %252, float %8890, float %8881
  %8894 = select i1 %252, float 1.000000e+00, float %8880
  %8895 = select i1 %252, float %8891, float %8886
  %8896 = select i1 %252, float 0.000000e+00, float %8887
  %8897 = select i1 %252, float 0.000000e+00, float %8888
  %8898 = fmul fast float %8892, %8116
  %8899 = fmul fast float %8893, %8117
  %8900 = fmul fast float %8894, %8118
  %8901 = fadd fast float %8898, %8895
  %8902 = fadd fast float %8899, %8896
  %8903 = fadd fast float %8897, %8900
  %8904 = fmul fast float %8892, %8119
  %8905 = fmul fast float %8893, %8120
  %8906 = fmul fast float %8894, %8121
  %8907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.i32 %8907, 0
  %8909 = icmp eq i32 %8908, 0
  br i1 %8909, label %9277, label %8910, !dx.controlflow.hints !174

; <label>:8910                                    ; preds = %8879
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 2
  %8913 = extractvalue %dx.types.CBufRet.f32 %8911, 3
  %8914 = fmul fast float %8912, %106
  %8915 = fmul fast float %8913, %107
  %8916 = fmul fast float %8914, 2.000000e+00
  %8917 = fmul fast float %8915, 2.000000e+00
  %8918 = fsub fast float 1.000000e+00, %8916
  %8919 = fsub fast float 1.000000e+00, %8917
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8924 = fmul fast float %8918, %8921
  %8925 = fmul fast float %8918, %8922
  %8926 = fmul fast float %8918, %8923
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 0
  %8929 = extractvalue %dx.types.CBufRet.f32 %8927, 1
  %8930 = extractvalue %dx.types.CBufRet.f32 %8927, 2
  %8931 = fmul fast float %8919, %8928
  %8932 = fmul fast float %8919, %8929
  %8933 = fmul fast float %8919, %8930
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.CBufRet.f32 %8934, 2
  %8938 = fadd fast float %8931, %8935
  %8939 = fadd fast float %8938, %8924
  %8940 = fadd fast float %8932, %8936
  %8941 = fadd fast float %8940, %8925
  %8942 = fadd fast float %8933, %8937
  %8943 = fadd fast float %8942, %8926
  %8944 = fmul fast float %8939, %8115
  %8945 = fmul fast float %8941, %8115
  %8946 = fmul fast float %8943, %8115
  %8947 = fmul fast float %8944, %8944
  %8948 = fmul fast float %8945, %8945
  %8949 = fadd fast float %8947, %8948
  %8950 = fmul fast float %8946, %8946
  %8951 = fadd fast float %8949, %8950
  %8952 = call float @dx.op.unary.f32(i32 24, float %8951)  ; Sqrt(value)
  %8953 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %8954 = fsub fast float %8952, %8953
  %8955 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %8956 = fmul fast float %8954, %8955
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fadd fast float %8957, -5.000000e-01
  %8959 = fmul fast float %8958, 2.000000e+00
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8962 = call float @dx.op.binary.f32(i32 36, float %8961, float %8959)  ; FMin(a,b)
  %8963 = fsub fast float -0.000000e+00, %8961
  %8964 = fcmp fast ogt float %8962, %8963
  br i1 %8964, label %8965, label %9277, !dx.controlflow.hints !175

; <label>:8965                                    ; preds = %8910
  %8966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8967 = extractvalue %dx.types.CBufRet.f32 %8966, 3
  %8968 = fcmp fast ogt float %8967, 0.000000e+00
  br i1 %8968, label %8969, label %9044, !dx.controlflow.hints !176

; <label>:8969                                    ; preds = %8965
  %8970 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8971 = extractvalue %dx.types.Dimensions %8970, 0
  %8972 = sitofp i32 %8971 to float
  %8973 = extractvalue %dx.types.Dimensions %8970, 1
  %8974 = sitofp i32 %8973 to float
  %8975 = fmul fast float %8914, %8972
  %8976 = fmul fast float %8915, %8974
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 1
  %8979 = fsub fast float -0.000000e+00, %8978
  %8980 = fptoui float %8979 to i32
  %8981 = fptoui float %8975 to i32
  %8982 = fptoui float %8976 to i32
  %8983 = and i32 %8980, 31
  %8984 = lshr i32 %8981, %8983
  %8985 = lshr i32 %8982, %8983
  %8986 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8980, i32 %8984, i32 %8985, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8987 = extractvalue %dx.types.ResRet.f32 %8986, 0
  %8988 = fcmp fast olt float %8987, -1.000000e+00
  %8989 = fcmp fast ogt float %8987, -1.000000e+00
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8992 = select i1 %8989, float %8991, float 1.000000e+00
  %8993 = fadd fast float %8987, 1.000000e+00
  %8994 = fmul fast float %8992, %8993
  %8995 = call float @dx.op.unary.f32(i32 6, float %8994)  ; FAbs(value)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8990, 3
  %8997 = fcmp fast oge float %8995, %8996
  %8998 = select i1 %8997, float 0x4197782600000000, float %8995
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 0
  %9001 = extractvalue %dx.types.CBufRet.f32 %8999, 1
  %9002 = extractvalue %dx.types.CBufRet.f32 %8999, 2
  %9003 = select i1 %8988, float %9000, float %8921
  %9004 = select i1 %8988, float %9001, float %8922
  %9005 = select i1 %8988, float %9002, float %8923
  %9006 = fmul fast float %9003, %8918
  %9007 = fmul fast float %9004, %8918
  %9008 = fmul fast float %9005, %8918
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.CBufRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.CBufRet.f32 %9009, 2
  %9013 = select i1 %8988, float %9010, float %8928
  %9014 = select i1 %8988, float %9011, float %8929
  %9015 = select i1 %8988, float %9012, float %8930
  %9016 = fmul fast float %9013, %8919
  %9017 = fmul fast float %9014, %8919
  %9018 = fmul fast float %9015, %8919
  %9019 = fadd fast float %9016, %9006
  %9020 = fadd fast float %9017, %9007
  %9021 = fadd fast float %9018, %9008
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.CBufRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.CBufRet.f32 %9022, 2
  %9026 = select i1 %8988, float %9023, float %8935
  %9027 = select i1 %8988, float %9024, float %8936
  %9028 = select i1 %8988, float %9025, float %8937
  %9029 = fadd fast float %9019, %9026
  %9030 = fadd fast float %9020, %9027
  %9031 = fadd fast float %9021, %9028
  %9032 = fmul fast float %9029, %8998
  %9033 = fmul fast float %9030, %8998
  %9034 = fmul fast float %9031, %8998
  %9035 = fmul fast float %9032, %9032
  %9036 = fmul fast float %9033, %9033
  %9037 = fadd fast float %9035, %9036
  %9038 = fmul fast float %9034, %9034
  %9039 = fadd fast float %9037, %9038
  %9040 = call float @dx.op.unary.f32(i32 24, float %9039)  ; Sqrt(value)
  %9041 = fsub fast float %9040, %8953
  %9042 = fmul fast float %9041, %8955
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  br label %9044

; <label>:9044                                    ; preds = %8969, %8965
  %9045 = phi float [ %9043, %8969 ], [ 1.000000e+00, %8965 ]
  %9046 = fmul fast float %8962, 5.000000e-01
  %9047 = fadd fast float %9046, 5.000000e-01
  %9048 = call float @dx.op.unary.f32(i32 22, float %9047)  ; Frc(value)
  %9049 = call float @dx.op.unary.f32(i32 27, float %9048)  ; Round_ni(value)
  %9050 = call float @dx.op.unary.f32(i32 22, float %9048)  ; Frc(value)
  %9051 = fmul fast float %9050, 2.000000e+00
  %9052 = fadd fast float %9051, -1.000000e+00
  %9053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8914, float %8915, float %9049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9054 = extractvalue %dx.types.ResRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.ResRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.ResRet.f32 %9053, 2
  %9057 = extractvalue %dx.types.ResRet.f32 %9053, 3
  %9058 = fadd fast float %9054, -5.000000e-01
  %9059 = fadd fast float %9056, -5.000000e-01
  %9060 = fmul fast float %9058, 0xBFD5555560000000
  %9061 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9059, float %9060)  ; FMad(a,b,c)
  %9062 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9055, float 0.000000e+00)  ; FMad(a,b,c)
  %9063 = fadd fast float %9062, %9057
  %9064 = fmul fast float %9058, -7.500000e-01
  %9065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9059, float %9064)  ; FMad(a,b,c)
  %9066 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9055, float 0.000000e+00)  ; FMad(a,b,c)
  %9067 = fadd fast float %9066, %9057
  %9068 = call float @dx.op.binary.f32(i32 35, float %9061, float -1.000000e+00)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float %9063, float -1.000000e+00)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float %9065, float -1.000000e+00)  ; FMax(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %9067, float -1.000000e+00)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 36, float %9068, float 1.000000e+00)  ; FMin(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %9069, float 1.000000e+00)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 36, float %9070, float 1.000000e+00)  ; FMin(a,b)
  %9075 = call float @dx.op.binary.f32(i32 36, float %9071, float 1.000000e+00)  ; FMin(a,b)
  %9076 = fcmp fast olt float %9072, 0x3FEFFF8020000000
  br i1 %9076, label %9077, label %9192, !dx.controlflow.hints !177

; <label>:9077                                    ; preds = %9044
  %9078 = extractvalue %dx.types.CBufRet.f32 %8960, 3
  %9079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9080 = extractvalue %dx.types.CBufRet.f32 %9079, 0
  %9081 = extractvalue %dx.types.CBufRet.f32 %9079, 1
  %9082 = extractvalue %dx.types.CBufRet.f32 %9079, 2
  %9083 = extractvalue %dx.types.CBufRet.f32 %9079, 3
  %9084 = fsub fast float %9080, %9072
  %9085 = fsub fast float %9081, %9073
  %9086 = fsub fast float %9082, %9074
  %9087 = fsub fast float %9083, %9075
  %9088 = fmul fast float %9084, %9078
  %9089 = fmul fast float %9085, %9078
  %9090 = fmul fast float %9086, %9078
  %9091 = fmul fast float %9087, %9078
  %9092 = fadd fast float %9088, %9072
  %9093 = fadd fast float %9089, %9073
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = fadd fast float %9090, %9074
  %9096 = fadd fast float %9091, %9075
  %9097 = fmul fast float %9092, %9092
  %9098 = fsub fast float %9093, %9097
  %9099 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9098)  ; FMax(a,b)
  %9100 = fdiv fast float 1.000000e+00, %9099
  %9101 = fmul fast float %9093, %9092
  %9102 = fsub fast float %9095, %9101
  %9103 = fsub fast float %9052, %9092
  %9104 = fmul fast float %9052, %9052
  %9105 = fsub fast float %9104, %9093
  %9106 = fmul fast float %9103, %9100
  %9107 = fmul fast float %9106, %9102
  %9108 = fsub fast float %9105, %9107
  %9109 = fmul fast float %9093, %9093
  %9110 = fsub fast float %9096, %9109
  %9111 = fmul fast float %9102, %9102
  %9112 = fmul fast float %9111, %9100
  %9113 = fsub fast float %9110, %9112
  %9114 = fdiv fast float %9108, %9113
  %9115 = fmul fast float %9102, %9114
  %9116 = fsub fast float %9103, %9115
  %9117 = fmul fast float %9116, %9100
  %9118 = fmul fast float %9117, %9092
  %9119 = fsub fast float 1.000000e+00, %9118
  %9120 = fmul fast float %9093, %9114
  %9121 = fsub fast float %9119, %9120
  %9122 = fmul fast float %9117, %9117
  %9123 = fmul fast float %9114, 4.000000e+00
  %9124 = fmul fast float %9123, %9121
  %9125 = fsub fast float %9122, %9124
  %9126 = call float @dx.op.unary.f32(i32 24, float %9125)  ; Sqrt(value)
  %9127 = fcmp fast oge float %9117, 0.000000e+00
  %9128 = fsub fast float -0.000000e+00, %9126
  %9129 = select i1 %9127, float %9128, float %9126
  %9130 = fsub fast float %9129, %9117
  %9131 = fdiv fast float %9130, %9114
  %9132 = fdiv fast float %9121, %9130
  %9133 = fmul fast float %9131, 5.000000e-01
  %9134 = fmul fast float %9132, 2.000000e+00
  %9135 = select i1 %9127, float %9133, float %9134
  %9136 = select i1 %9127, float %9134, float %9133
  %9137 = call float @dx.op.binary.f32(i32 35, float %9135, float %9136)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 36, float %9135, float %9136)  ; FMin(a,b)
  %9139 = fcmp fast ogt float %9052, %9138
  br i1 %9139, label %9140, label %9150

; <label>:9140                                    ; preds = %9077
  %9141 = fsub fast float %9052, %9138
  %9142 = fsub fast float %9137, %9138
  %9143 = fmul fast float %9141, %9142
  %9144 = fmul fast float %9137, %9052
  %9145 = fadd fast float %9137, %9052
  %9146 = fmul fast float %9145, %9092
  %9147 = fadd fast float %9144, %9093
  %9148 = fsub fast float %9147, %9146
  %9149 = fdiv fast float %9148, %9143
  br label %9150

; <label>:9150                                    ; preds = %9140, %9077
  %9151 = phi float [ %9149, %9140 ], [ 0.000000e+00, %9077 ]
  %9152 = fcmp fast ogt float %9052, %9137
  %9153 = fsub fast float %9052, %9137
  br i1 %9152, label %9154, label %9164

; <label>:9154                                    ; preds = %9150
  %9155 = fsub fast float %9137, %9138
  %9156 = fmul fast float %9155, %9153
  %9157 = fmul fast float %9138, %9052
  %9158 = fadd fast float %9138, %9052
  %9159 = fmul fast float %9158, %9092
  %9160 = fsub fast float %9094, %9157
  %9161 = fadd fast float %9160, %9159
  %9162 = fdiv fast float %9161, %9156
  %9163 = fadd fast float %9162, %9151
  br label %9164

; <label>:9164                                    ; preds = %9154, %9150
  %9165 = phi float [ %9163, %9154 ], [ %9151, %9150 ]
  %9166 = fsub fast float %9052, %9138
  %9167 = fmul fast float %9166, %9153
  %9168 = fmul fast float %9138, %9137
  %9169 = fadd fast float %9138, %9137
  %9170 = fmul fast float %9169, %9092
  %9171 = fadd fast float %9168, %9093
  %9172 = fsub fast float %9171, %9170
  %9173 = fdiv fast float %9172, %9167
  %9174 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  %9175 = fcmp fast oeq float %7843, 0.000000e+00
  %9176 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %9177 = fcmp fast oeq float %9176, 0.000000e+00
  %9178 = or i1 %9175, %9177
  %9179 = fmul fast float %9176, 2.000000e+00
  %9180 = fadd fast float %8961, %8962
  %9181 = fdiv fast float %9180, %9179
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fmul fast float %9182, 2.000000e+00
  %9184 = fsub fast float 3.000000e+00, %9183
  %9185 = fmul fast float %9182, %9182
  %9186 = fmul fast float %9185, %9184
  %9187 = select i1 %9178, float 1.000000e+00, float %9186
  %9188 = fmul fast float %9173, %7843
  %9189 = fadd fast float %9174, %9188
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  %9191 = fmul fast float %9187, %9190
  br label %9192

; <label>:9192                                    ; preds = %9164, %9044
  %9193 = phi float [ %9191, %9164 ], [ 0.000000e+00, %9044 ]
  %9194 = fsub fast float 1.000000e+00, %9193
  %9195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9196 = extractvalue %dx.types.ResRet.f32 %9195, 0
  %9197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.i32 %9197, 2
  %9199 = icmp eq i32 %9198, 0
  br i1 %9199, label %9205, label %9200

; <label>:9200                                    ; preds = %9192
  %9201 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9202 = fadd fast float %9196, -1.000000e+00
  %9203 = fmul fast float %9201, %9202
  %9204 = fadd fast float %9203, 1.000000e+00
  br label %9205

; <label>:9205                                    ; preds = %9200, %9192
  %9206 = phi float [ %9204, %9200 ], [ %9194, %9192 ]
  br i1 %8968, label %9207, label %9225

; <label>:9207                                    ; preds = %9205
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 1
  %9210 = fsub fast float %9045, %9209
  %9211 = call float @dx.op.unary.f32(i32 7, float %9210)  ; Saturate(value)
  %9212 = fsub fast float %9045, %8967
  %9213 = call float @dx.op.unary.f32(i32 7, float %9212)  ; Saturate(value)
  %9214 = fsub fast float %9211, %9213
  %9215 = fsub fast float %9047, %9213
  %9216 = fdiv fast float %9215, %9214
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fmul fast float %9217, 2.000000e+00
  %9219 = fsub fast float 3.000000e+00, %9218
  %9220 = fsub fast float %9196, %9206
  %9221 = fmul fast float %9217, %9217
  %9222 = fmul fast float %9221, %9220
  %9223 = fmul fast float %9222, %9219
  %9224 = fadd fast float %9223, %9206
  br label %9225

; <label>:9225                                    ; preds = %9207, %9205
  %9226 = phi float [ %9224, %9207 ], [ %9206, %9205 ]
  %9227 = call float @dx.op.binary.f32(i32 35, float %9196, float %9226)  ; FMax(a,b)
  %9228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.i32 %9228, 2
  %9230 = and i32 %9229, 1
  %9231 = icmp eq i32 %9230, 0
  %9232 = fcmp fast une float %9227, 1.000000e+00
  %9233 = and i1 %9232, %9231
  br i1 %9233, label %9234, label %9253

; <label>:9234                                    ; preds = %9225
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = extractvalue %dx.types.ResRet.f32 %9235, 1
  %9238 = extractvalue %dx.types.ResRet.f32 %9235, 2
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9241 = fmul fast float %9240, %9236
  %9242 = fmul fast float %9240, %9237
  %9243 = fmul fast float %9240, %9238
  %9244 = fcmp fast ogt float %9196, 0x3FEFFF2E40000000
  %9245 = fsub fast float 1.000000e+00, %9227
  %9246 = fsub fast float 1.000000e+00, %9196
  %9247 = fdiv fast float %9245, %9246
  %9248 = call float @dx.op.unary.f32(i32 7, float %9247)  ; Saturate(value)
  %9249 = select i1 %9244, float 0.000000e+00, float %9248
  %9250 = fmul fast float %9241, %9249
  %9251 = fmul fast float %9242, %9249
  %9252 = fmul fast float %9243, %9249
  br label %9253

; <label>:9253                                    ; preds = %9234, %9225
  %9254 = phi float [ 0.000000e+00, %9225 ], [ %9250, %9234 ]
  %9255 = phi float [ 0.000000e+00, %9225 ], [ %9251, %9234 ]
  %9256 = phi float [ 0.000000e+00, %9225 ], [ %9252, %9234 ]
  %9257 = fmul fast float %9254, %7827
  %9258 = fmul fast float %9255, %7829
  %9259 = fmul fast float %9256, %7831
  %9260 = fmul fast float %9227, %8889
  %9261 = call float @dx.op.dot3.f32(i32 55, float %9227, float %9227, float %9227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9257, float %9258, float %9259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = select i1 %252, float %9261, float %9227
  %9264 = select i1 %252, float 1.000000e+00, float %9227
  %9265 = select i1 %252, float %9262, float %9257
  %9266 = select i1 %252, float 0.000000e+00, float %9258
  %9267 = select i1 %252, float 0.000000e+00, float %9259
  %9268 = fmul fast float %9263, %8901
  %9269 = fmul fast float %9263, %8902
  %9270 = fmul fast float %9264, %8903
  %9271 = fadd fast float %9268, %9265
  %9272 = fadd fast float %9269, %9266
  %9273 = fadd fast float %9267, %9270
  %9274 = fmul fast float %9263, %8904
  %9275 = fmul fast float %9263, %8905
  %9276 = fmul fast float %9264, %8906
  br label %9277

; <label>:9277                                    ; preds = %9253, %8910, %8879, %8111
  %9278 = phi float [ %8116, %8111 ], [ %8901, %8879 ], [ %9271, %9253 ], [ %8901, %8910 ]
  %9279 = phi float [ %8117, %8111 ], [ %8902, %8879 ], [ %9272, %9253 ], [ %8902, %8910 ]
  %9280 = phi float [ %8118, %8111 ], [ %8903, %8879 ], [ %9273, %9253 ], [ %8903, %8910 ]
  %9281 = phi float [ %8119, %8111 ], [ %8904, %8879 ], [ %9274, %9253 ], [ %8904, %8910 ]
  %9282 = phi float [ %8120, %8111 ], [ %8905, %8879 ], [ %9275, %9253 ], [ %8905, %8910 ]
  %9283 = phi float [ %8121, %8111 ], [ %8906, %8879 ], [ %9276, %9253 ], [ %8906, %8910 ]
  %9284 = phi float [ %8122, %8111 ], [ %8889, %8879 ], [ %9260, %9253 ], [ %8889, %8910 ]
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 3
  %9288 = fmul fast float %9286, %106
  %9289 = fmul fast float %9287, %107
  %9290 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9291 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9292 = select i1 %7853, i32 2, i32 0
  %9293 = or i32 %9292, 1
  %9294 = uitofp i32 %9293 to float
  %9295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9290, float %9291, float %9294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = extractvalue %dx.types.ResRet.f32 %9295, 3
  %9300 = add nuw nsw i32 %9292, 2
  %9301 = uitofp i32 %9300 to float
  %9302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9290, float %9291, float %9301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9303 = extractvalue %dx.types.ResRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.ResRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.ResRet.f32 %9302, 2
  %9306 = extractvalue %dx.types.ResRet.f32 %9302, 3
  %9307 = call float @dx.op.binary.f32(i32 35, float %9297, float %9298)  ; FMax(a,b)
  %9308 = call float @dx.op.binary.f32(i32 35, float %9296, float %9307)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 35, float %9308, float %9299)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 36, float %9304, float %9305)  ; FMin(a,b)
  %9311 = call float @dx.op.binary.f32(i32 36, float %9303, float %9310)  ; FMin(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9311, float %9306)  ; FMin(a,b)
  %9313 = fmul fast float %9309, 2.550000e+02
  %9314 = fadd fast float %9313, 0x3F70101020000000
  %9315 = fptoui float %9314 to i32
  %9316 = fmul fast float %9312, 2.550000e+02
  %9317 = fadd fast float %9316, 0x3F70101020000000
  %9318 = fptoui float %9317 to i32
  %9319 = icmp ult i32 %9315, %9318
  br i1 %9319, label %9320, label %9489

; <label>:9320                                    ; preds = %9277
  %9321 = fcmp fast ogt float %96, 9.843750e-01
  %9322 = fadd fast float %8115, -4.000000e+00
  %9323 = select i1 %9321, float -4.000000e+00, float %9322
  %9324 = call float @dx.op.binary.f32(i32 35, float %9323, float 0.000000e+00)  ; FMax(a,b)
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 0
  %9327 = fadd fast float %9326, %9324
  %9328 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9329 = fmul fast float %9327, %9328
  %9330 = call float @dx.op.unary.f32(i32 23, float %9329)  ; Log(value)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9332 = fmul fast float %9331, %9330
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9335 = fmul fast float %9332, %9334
  %9336 = call float @dx.op.unary.f32(i32 7, float %9335)  ; Saturate(value)
  %9337 = uitofp i32 %9315 to float
  %9338 = uitofp i32 %9318 to float
  %9339 = fadd fast float %9337, 5.000000e-01
  %9340 = fadd fast float %9338, 5.000000e-01
  %9341 = fmul fast float %9334, %9339
  %9342 = fmul fast float %9334, %9340
  %9343 = fadd fast float %9341, 0x3F0FFB4800000000
  %9344 = fadd fast float %9342, 0xBF0FFB4800000000
  %9345 = call float @dx.op.binary.f32(i32 35, float %9336, float %9343)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 36, float %9345, float %9344)  ; FMin(a,b)
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9349 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9350 = extractvalue %dx.types.CBufRet.f32 %9347, 0
  %9351 = select i1 %7853, float %9350, float 0.000000e+00
  %9352 = fmul fast float %9348, %9346
  %9353 = fadd fast float %9351, %9352
  %9354 = fadd fast float %9351, %9349
  %9355 = fsub fast float %9348, %9349
  %9356 = fadd fast float %9355, %9351
  %9357 = call float @dx.op.binary.f32(i32 35, float %9353, float %9354)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9357, float %9356)  ; FMin(a,b)
  %9359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9290, float %9291, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9360 = extractvalue %dx.types.ResRet.f32 %9359, 0
  %9361 = extractvalue %dx.types.ResRet.f32 %9359, 1
  %9362 = extractvalue %dx.types.ResRet.f32 %9359, 2
  %9363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9364 = extractvalue %dx.types.CBufRet.i32 %9363, 0
  %9365 = extractvalue %dx.types.CBufRet.i32 %9363, 1
  %9366 = uitofp i32 %9364 to float
  %9367 = uitofp i32 %9365 to float
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.CBufRet.f32 %9368, 1
  %9371 = fmul fast float %9366, %9290
  %9372 = fmul fast float %9367, %9291
  %9373 = fadd fast float %9371, -5.000000e-01
  %9374 = fadd fast float %9372, -5.000000e-01
  %9375 = call float @dx.op.unary.f32(i32 22, float %9373)  ; Frc(value)
  %9376 = call float @dx.op.unary.f32(i32 22, float %9374)  ; Frc(value)
  %9377 = fmul fast float %9375, %9375
  %9378 = fmul fast float %9377, %9375
  %9379 = fsub fast float 3.000000e+00, %9375
  %9380 = fmul fast float %9377, %9379
  %9381 = fmul fast float %9375, 3.000000e+00
  %9382 = fmul fast float %9378, 3.000000e+00
  %9383 = fmul fast float %9377, 6.000000e+00
  %9384 = fsub fast float %9382, %9383
  %9385 = fadd fast float %9384, 4.000000e+00
  %9386 = fmul fast float %9385, 0x3FC5555560000000
  %9387 = fmul fast float %9378, -3.000000e+00
  %9388 = fadd fast float %9377, %9375
  %9389 = fmul fast float %9388, 3.000000e+00
  %9390 = fadd fast float %9387, 1.000000e+00
  %9391 = fadd fast float %9390, %9389
  %9392 = fmul fast float %9378, 0x3FC5555560000000
  %9393 = fmul fast float %9376, %9376
  %9394 = fmul fast float %9393, %9376
  %9395 = fsub fast float 3.000000e+00, %9376
  %9396 = fmul fast float %9393, %9395
  %9397 = fmul fast float %9376, 3.000000e+00
  %9398 = fmul fast float %9394, 3.000000e+00
  %9399 = fmul fast float %9393, 6.000000e+00
  %9400 = fsub fast float %9398, %9399
  %9401 = fadd fast float %9400, 4.000000e+00
  %9402 = fmul fast float %9401, 0x3FC5555560000000
  %9403 = fmul fast float %9394, -3.000000e+00
  %9404 = fadd fast float %9393, %9376
  %9405 = fmul fast float %9404, 3.000000e+00
  %9406 = fadd fast float %9403, 1.000000e+00
  %9407 = fadd fast float %9406, %9405
  %9408 = fmul fast float %9394, 0x3FC5555560000000
  %9409 = fadd fast float %9375, 1.000000e+00
  %9410 = fsub fast float 1.000000e+00, %9381
  %9411 = fadd fast float %9410, %9380
  %9412 = fadd fast float %9411, %9385
  %9413 = fmul fast float %9412, 0x3FC5555560000000
  %9414 = fdiv fast float %9386, %9413
  %9415 = fsub fast float %9409, %9414
  %9416 = fsub fast float 1.000000e+00, %9375
  %9417 = fadd fast float %9391, %9378
  %9418 = fmul fast float %9417, 0x3FC5555560000000
  %9419 = fdiv fast float %9392, %9418
  %9420 = fadd fast float %9416, %9419
  %9421 = fadd fast float %9376, 1.000000e+00
  %9422 = fsub fast float 1.000000e+00, %9397
  %9423 = fadd fast float %9422, %9396
  %9424 = fadd fast float %9423, %9401
  %9425 = fmul fast float %9424, 0x3FC5555560000000
  %9426 = fdiv fast float %9402, %9425
  %9427 = fsub fast float %9421, %9426
  %9428 = fsub fast float 1.000000e+00, %9376
  %9429 = fadd fast float %9407, %9394
  %9430 = fmul fast float %9429, 0x3FC5555560000000
  %9431 = fdiv fast float %9408, %9430
  %9432 = fadd fast float %9431, %9428
  %9433 = fmul fast float %9415, %9369
  %9434 = fsub fast float %9290, %9433
  %9435 = fmul fast float %9420, %9369
  %9436 = fadd fast float %9435, %9290
  %9437 = fmul fast float %9432, %9370
  %9438 = fadd fast float %9437, %9291
  %9439 = fmul fast float %9427, %9370
  %9440 = fsub fast float %9291, %9439
  %9441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9434, float %9440, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9442 = extractvalue %dx.types.ResRet.f32 %9441, 0
  %9443 = extractvalue %dx.types.ResRet.f32 %9441, 1
  %9444 = extractvalue %dx.types.ResRet.f32 %9441, 2
  %9445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9436, float %9440, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9446 = extractvalue %dx.types.ResRet.f32 %9445, 0
  %9447 = extractvalue %dx.types.ResRet.f32 %9445, 1
  %9448 = extractvalue %dx.types.ResRet.f32 %9445, 2
  %9449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9434, float %9438, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9450 = extractvalue %dx.types.ResRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.ResRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.ResRet.f32 %9449, 2
  %9453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9436, float %9438, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9454 = extractvalue %dx.types.ResRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.ResRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.ResRet.f32 %9453, 2
  %9457 = fsub fast float %9450, %9442
  %9458 = fsub fast float %9451, %9443
  %9459 = fsub fast float %9452, %9444
  %9460 = fmul fast float %9457, %9430
  %9461 = fmul fast float %9458, %9430
  %9462 = fmul fast float %9459, %9430
  %9463 = fadd fast float %9460, %9442
  %9464 = fadd fast float %9461, %9443
  %9465 = fadd fast float %9462, %9444
  %9466 = fsub fast float %9454, %9446
  %9467 = fsub fast float %9455, %9447
  %9468 = fsub fast float %9456, %9448
  %9469 = fmul fast float %9466, %9430
  %9470 = fmul fast float %9467, %9430
  %9471 = fmul fast float %9468, %9430
  %9472 = fsub fast float %9446, %9463
  %9473 = fadd fast float %9472, %9469
  %9474 = fsub fast float %9447, %9464
  %9475 = fadd fast float %9474, %9470
  %9476 = fsub fast float %9448, %9465
  %9477 = fadd fast float %9476, %9471
  %9478 = fmul fast float %9473, %9418
  %9479 = fmul fast float %9475, %9418
  %9480 = fmul fast float %9477, %9418
  %9481 = fadd fast float %9478, %9463
  %9482 = fadd fast float %9479, %9464
  %9483 = fadd fast float %9480, %9465
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9486 = fmul fast float %9481, %9485
  %9487 = fmul fast float %9482, %9485
  %9488 = fmul fast float %9483, %9485
  br label %9489

; <label>:9489                                    ; preds = %9320, %9277
  %9490 = phi float [ %9360, %9320 ], [ 1.000000e+00, %9277 ]
  %9491 = phi float [ %9361, %9320 ], [ 1.000000e+00, %9277 ]
  %9492 = phi float [ %9362, %9320 ], [ 1.000000e+00, %9277 ]
  %9493 = phi float [ %9486, %9320 ], [ 0.000000e+00, %9277 ]
  %9494 = phi float [ %9487, %9320 ], [ 0.000000e+00, %9277 ]
  %9495 = phi float [ %9488, %9320 ], [ 0.000000e+00, %9277 ]
  %9496 = fmul fast float %9493, %7827
  %9497 = fmul fast float %9494, %7829
  %9498 = fmul fast float %9495, %7831
  %9499 = fmul fast float %9490, %9284
  %9500 = call float @dx.op.dot3.f32(i32 55, float %9490, float %9491, float %9492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9501 = call float @dx.op.dot3.f32(i32 55, float %9496, float %9497, float %9498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9502 = select i1 %252, float %9500, float %9490
  %9503 = select i1 %252, float %9500, float %9491
  %9504 = select i1 %252, float 1.000000e+00, float %9492
  %9505 = select i1 %252, float %9501, float %9496
  %9506 = select i1 %252, float 0.000000e+00, float %9497
  %9507 = select i1 %252, float 0.000000e+00, float %9498
  %9508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.i32 %9508, 3
  %9510 = and i32 %9509, 3
  %9511 = icmp ne i32 %9510, 0
  %9512 = and i32 %9509, 4
  %9513 = icmp ne i32 %9512, 0
  %9514 = and i1 %9511, %9513
  %9515 = and i1 %252, %9514
  br i1 %9515, label %9516, label %9522

; <label>:9516                                    ; preds = %9489
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9519 = fadd fast float %9499, -1.000000e+00
  %9520 = fmul fast float %9518, %9519
  %9521 = fadd fast float %9520, 1.000000e+00
  br label %9522

; <label>:9522                                    ; preds = %9516, %9489
  %9523 = phi float [ %9521, %9516 ], [ %9499, %9489 ]
  %9524 = fadd fast float %9281, %9278
  %9525 = fmul fast float %9502, %9524
  %9526 = fadd fast float %9525, %9505
  %9527 = fadd fast float %9282, %9279
  %9528 = fmul fast float %9503, %9527
  %9529 = fadd fast float %9528, %9506
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  br i1 %252, label %9532, label %9547

; <label>:9532                                    ; preds = %9522
  %9533 = fadd fast float %9526, %9529
  %9534 = fmul fast float %9531, %9533
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 3
  %9537 = extractvalue %dx.types.CBufRet.f32 %7835, 1
  %9538 = fsub fast float %7840, %7834
  %9539 = fadd fast float %9538, %7841
  %9540 = fsub fast float %9539, %9537
  %9541 = extractvalue %dx.types.CBufRet.f32 %7835, 2
  %9542 = fmul fast float %9540, %9541
  %9543 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9544 = fsub fast float %9543, %9536
  %9545 = fmul fast float %9544, %9523
  %9546 = fadd fast float %9545, %9536
  br label %9573

; <label>:9547                                    ; preds = %9522
  %9548 = fadd fast float %9283, %9280
  %9549 = fmul fast float %9504, %9548
  %9550 = fadd fast float %9549, %9507
  %9551 = fmul fast float %9531, %9526
  %9552 = fmul fast float %9531, %9529
  %9553 = fmul fast float %9531, %9550
  %9554 = call float @dx.op.binary.f32(i32 35, float %9552, float %9553)  ; FMax(a,b)
  %9555 = call float @dx.op.binary.f32(i32 35, float %9551, float %9554)  ; FMax(a,b)
  %9556 = call float @dx.op.binary.f32(i32 35, float %7829, float %7831)  ; FMax(a,b)
  %9557 = call float @dx.op.binary.f32(i32 35, float %7827, float %9556)  ; FMax(a,b)
  %9558 = call float @dx.op.binary.f32(i32 35, float %9555, float %9557)  ; FMax(a,b)
  %9559 = fcmp fast ugt float %9558, 0x3F10000000000000
  br i1 %9559, label %9561, label %9560

; <label>:9560                                    ; preds = %9547
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9561

; <label>:9561                                    ; preds = %9560, %9547
  %9562 = add i32 %55, 356
  %9563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9562, i32 undef)  ; BufferLoad(srv,index,wot)
  %9564 = extractvalue %dx.types.ResRet.i32 %9563, 0
  %9565 = and i32 %9564, 32
  %9566 = icmp eq i32 %9565, 0
  br i1 %9566, label %9573, label %9567

; <label>:9567                                    ; preds = %9561
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9570 = fmul fast float %9569, 0x3FE99999A0000000
  %9571 = fadd fast float %9569, %9551
  %9572 = fadd fast float %9570, %9553
  br label %9573

; <label>:9573                                    ; preds = %9567, %9561, %9532
  %9574 = phi float [ 1.000000e+00, %9532 ], [ %7829, %9567 ], [ %7829, %9561 ]
  %9575 = phi float [ 1.000000e+00, %9532 ], [ %7831, %9567 ], [ %7831, %9561 ]
  %9576 = phi float [ %9534, %9532 ], [ %9571, %9567 ], [ %9551, %9561 ]
  %9577 = phi float [ %9546, %9532 ], [ %9552, %9567 ], [ %9552, %9561 ]
  %9578 = phi float [ 1.000000e+00, %9532 ], [ %9572, %9567 ], [ %9553, %9561 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9579 = call float @dx.op.binary.f32(i32 36, float %9576, float 3.225500e+04)  ; FMin(a,b)
  %9580 = call float @dx.op.binary.f32(i32 36, float %9577, float 3.225500e+04)  ; FMin(a,b)
  %9581 = call float @dx.op.binary.f32(i32 36, float %9578, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9579)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9580)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9581)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9582 = call float @dx.op.binary.f32(i32 36, float %7827, float 3.225500e+04)  ; FMin(a,b)
  %9583 = call float @dx.op.binary.f32(i32 36, float %9574, float 3.225500e+04)  ; FMin(a,b)
  %9584 = call float @dx.op.binary.f32(i32 36, float %9575, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9583)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

