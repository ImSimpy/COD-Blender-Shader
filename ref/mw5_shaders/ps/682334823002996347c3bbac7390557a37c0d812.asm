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
;
; shader hash: 1f452ff091d7aa4e3ded987afbf082a0
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %642 = add i32 %55, 472
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
  br i1 %698, label %1233, label %699

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
  %1220 = add i32 %55, 96
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1222, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = fmul fast float %1227, %1228
  %1230 = fadd fast float %1229, %1224
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1216, %684
  %1234 = phi float [ 0.000000e+00, %684 ], [ %1170, %1216 ]
  %1235 = phi float [ 0.000000e+00, %684 ], [ %1171, %1216 ]
  %1236 = phi float [ 0.000000e+00, %684 ], [ %1089, %1216 ]
  %1237 = phi float [ 0.000000e+00, %684 ], [ %1090, %1216 ]
  %1238 = phi float [ 0.000000e+00, %684 ], [ %1091, %1216 ]
  %1239 = phi float [ 0.000000e+00, %684 ], [ %1217, %1216 ]
  %1240 = phi float [ 0.000000e+00, %684 ], [ %1218, %1216 ]
  %1241 = phi float [ 0.000000e+00, %684 ], [ %1219, %1216 ]
  %1242 = phi float [ 0.000000e+00, %684 ], [ %1075, %1216 ]
  %1243 = phi float [ 0.000000e+00, %684 ], [ %871, %1216 ]
  %1244 = phi float [ 0.000000e+00, %684 ], [ %1169, %1216 ]
  %1245 = phi float [ 0.000000e+00, %684 ], [ %1172, %1216 ]
  %1246 = phi float [ 0.000000e+00, %684 ], [ %1232, %1216 ]
  br i1 %632, label %1973, label %1247

; <label>:1247                                    ; preds = %1233
  %1248 = icmp ult i32 %690, 2
  %1249 = add i32 %55, 40
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %55, 44
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = or i32 %1254, %1251
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1973, label %1257

; <label>:1257                                    ; preds = %1247
  %1258 = and i32 %1251, 262144
  %1259 = icmp ne i32 %1258, 0
  %1260 = select i1 %1259, float %61, float 1.000000e+00
  %1261 = select i1 %1259, float %62, float 0.000000e+00
  %1262 = select i1 %1259, float %63, float 0.000000e+00
  %1263 = select i1 %1259, float %64, float 1.000000e+00
  %1264 = select i1 %1259, float %65, float %88
  %1265 = select i1 %1259, float %66, float %89
  %1266 = add i32 %55, 300
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = lshr i32 %1268, 16
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = fmul fast float %1270, 0x3F50624DE0000000
  %1272 = add i32 %55, 104
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 16
  %1276 = and i32 %1275, 255
  %1277 = lshr i32 %1274, 24
  %1278 = add i32 %55, 308
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1280, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = add i32 %55, 48
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 22
  %1289 = shl nuw nsw i32 %1288, 5
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = shl i32 %1287, 4
  %1292 = and i32 %1291, 32752
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = lshr i32 %1287, 7
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1299 = fmul fast float %1298, 1.000000e+03
  %1300 = fmul fast float %1299, %411
  %1301 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1302 = fadd fast float %1301, %399
  %1303 = fmul fast float %1299, %413
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = fadd fast float %1304, %400
  %1306 = fmul fast float %1271, %1299
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = fmul fast float %1307, 0x401921FB60000000
  %1309 = fadd fast float %1308, %1290
  %1310 = call float @dx.op.unary.f32(i32 13, float %1309)  ; Sin(value)
  %1311 = call float @dx.op.unary.f32(i32 12, float %1309)  ; Cos(value)
  %1312 = fsub fast float -0.000000e+00, %1310
  %1313 = fadd fast float %1264, -5.000000e-01
  %1314 = fadd fast float %1265, -5.000000e-01
  %1315 = fmul fast float %1282, %1313
  %1316 = fmul fast float %1284, %1314
  %1317 = fadd fast float %1315, 5.000000e-01
  %1318 = fadd fast float %1316, 5.000000e-01
  %1319 = fmul fast float %1293, %1317
  %1320 = fmul fast float %1296, %1318
  %1321 = fmul fast float %1311, %1319
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1320, float %1321)  ; FMad(a,b,c)
  %1323 = fmul fast float %1310, %1319
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1320, float %1323)  ; FMad(a,b,c)
  %1325 = fadd fast float %1302, %1322
  %1326 = fadd fast float %1305, %1324
  %1327 = icmp ugt i32 %1276, 1
  %1328 = icmp ugt i32 %1274, 33554431
  %1329 = or i1 %1328, %1327
  br i1 %1329, label %1330, label %1355

; <label>:1330                                    ; preds = %1257
  %1331 = add i32 %55, 244
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = lshr i32 %1333, 16
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = fmul fast float %1298, %1335
  %1337 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1338 = mul nuw nsw i32 %1276, %1277
  %1339 = uitofp i32 %1338 to float
  %1340 = fmul fast float %1337, %1339
  %1341 = call float @dx.op.unary.f32(i32 27, float %1340)  ; Round_ni(value)
  %1342 = fptoui float %1341 to i32
  %1343 = urem i32 %1342, %1276
  %1344 = udiv i32 %1342, %1277
  %1345 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1346 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1347 = uitofp i32 %1343 to float
  %1348 = uitofp i32 %1344 to float
  %1349 = fadd fast float %1345, %1347
  %1350 = fadd fast float %1346, %1348
  %1351 = uitofp i32 %1276 to float
  %1352 = uitofp i32 %1277 to float
  %1353 = fdiv fast float %1349, %1351
  %1354 = fdiv fast float %1350, %1352
  br label %1355

; <label>:1355                                    ; preds = %1330, %1257
  %1356 = phi float [ %1353, %1330 ], [ %1325, %1257 ]
  %1357 = phi float [ %1354, %1330 ], [ %1326, %1257 ]
  %1358 = and i32 %1251, 256
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1406, label %1360

; <label>:1360                                    ; preds = %1355
  %1361 = add i32 %55, 428
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = add i32 %1363, 0
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1365, %dx.types.Handle %103, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = add i32 %55, 116
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = shl i32 %1370, 4
  %1372 = and i32 %1371, 32752
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = lshr i32 %1370, 7
  %1375 = and i32 %1374, 32752
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = fsub fast float 1.000000e+00, %687
  %1378 = call float @dx.op.binary.f32(i32 35, float %1377, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1379 = bitcast float %687 to i32
  %1380 = sitofp i32 %1379 to float
  %1381 = fadd fast float %1380, 0xC1CFBF8940000000
  %1382 = fmul fast float %1376, %1381
  %1383 = fadd fast float %1382, 0x41CFBF8940000000
  %1384 = fptosi float %1383 to i32
  %1385 = bitcast i32 %1384 to float
  %1386 = bitcast float %1378 to i32
  %1387 = sitofp i32 %1386 to float
  %1388 = fadd fast float %1387, 0xC1CFBF8940000000
  %1389 = fmul fast float %1388, %1376
  %1390 = fadd fast float %1389, 0x41CFBF8940000000
  %1391 = fptosi float %1390 to i32
  %1392 = bitcast i32 %1391 to float
  %1393 = fmul fast float %1385, %1373
  %1394 = fmul fast float %1392, %1373
  %1395 = fsub fast float %1378, %1393
  %1396 = fadd fast float %1394, %1378
  %1397 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1398 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1399 = fsub fast float %1367, %1397
  %1400 = fsub fast float %1398, %1397
  %1401 = bitcast float %1400 to i32
  %1402 = sub nsw i32 2129859010, %1401
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1403, %1399
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  br label %1406

; <label>:1406                                    ; preds = %1360, %1355
  %1407 = phi float [ %1405, %1360 ], [ %687, %1355 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 128
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1428, label %1412

; <label>:1412                                    ; preds = %1406
  %1413 = add i32 %55, 412
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %103, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 524288
  %1423 = icmp ne i32 %1422, 0
  %1424 = fcmp fast ogt float %1419, 0x3FE0101020000000
  %1425 = select i1 %1424, float 1.000000e+00, float 0.000000e+00
  %1426 = select i1 %1423, float %1425, float %1419
  %1427 = fmul fast float %1426, %1407
  br label %1428

; <label>:1428                                    ; preds = %1412, %1406
  %1429 = phi float [ %1427, %1412 ], [ %1407, %1406 ]
  %1430 = fcmp fast ult float %1429, 0x3F70101020000000
  br i1 %1430, label %1973, label %1431

; <label>:1431                                    ; preds = %1428
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 16
  %1435 = icmp eq i32 %1434, 0
  br i1 %1435, label %1634, label %1436

; <label>:1436                                    ; preds = %1431
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %55, 364
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %1441, 0
  %1443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1443, %dx.types.Handle %102, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = extractvalue %dx.types.ResRet.f32 %1444, 3
  %1449 = and i32 %1438, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1438, 8
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1448, %1450
  %1455 = fadd fast float %1454, %1453
  %1456 = fmul fast float %1455, 0x3F70101000000000
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 512
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1469, label %1461

; <label>:1461                                    ; preds = %1436
  %1462 = add i32 %55, 444
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %103, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  br label %1469

; <label>:1469                                    ; preds = %1461, %1436
  %1470 = phi float [ %1468, %1461 ], [ 1.000000e+00, %1436 ]
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 33554432
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1581, label %1475

; <label>:1475                                    ; preds = %1469
  %1476 = add i32 %55, 240
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 65535
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = lshr i32 %1478, 16
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = add i32 %55, 244
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 65535
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = lshr i32 %1489, 24
  %1491 = uitofp i32 %1490 to float
  %1492 = fmul fast float %1491, 0x3F70101020000000
  %1493 = and i32 %1489, 255
  %1494 = uitofp i32 %1493 to float
  %1495 = fmul fast float %1494, 0x3F70101020000000
  %1496 = lshr i32 %1489, 8
  %1497 = and i32 %1496, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, 0x3F70101020000000
  %1500 = lshr i32 %1489, 16
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = add i32 %55, 236
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1521 = bitcast float %1445 to i32
  %1522 = ashr i32 %1521, 1
  %1523 = sub nsw i32 1597463174, %1522
  %1524 = bitcast i32 %1523 to float
  %1525 = fmul fast float %1445, 5.000000e-01
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1526, %1525
  %1528 = fsub fast float 1.500000e+00, %1527
  %1529 = fmul fast float %1524, %1445
  %1530 = fmul fast float %1529, %1528
  %1531 = bitcast float %1446 to i32
  %1532 = ashr i32 %1531, 1
  %1533 = sub nsw i32 1597463174, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1446, 5.000000e-01
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1536, %1535
  %1538 = fsub fast float 1.500000e+00, %1537
  %1539 = fmul fast float %1534, %1446
  %1540 = fmul fast float %1539, %1538
  %1541 = bitcast float %1447 to i32
  %1542 = ashr i32 %1541, 1
  %1543 = sub nsw i32 1597463174, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1447, 5.000000e-01
  %1546 = fmul fast float %1544, %1544
  %1547 = fmul fast float %1546, %1545
  %1548 = fsub fast float 1.500000e+00, %1547
  %1549 = fmul fast float %1544, %1447
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float %1530, %1512
  %1552 = fsub fast float %1540, %1516
  %1553 = fsub fast float %1550, %1520
  %1554 = fmul fast float %1551, %1480
  %1555 = fmul fast float %1552, %1482
  %1556 = fmul fast float %1553, %1487
  %1557 = fadd fast float %1554, %1495
  %1558 = fadd fast float %1555, %1499
  %1559 = fadd fast float %1556, %1503
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = fmul fast float %1560, %1560
  %1564 = fmul fast float %1561, %1561
  %1565 = fmul fast float %1562, %1562
  %1566 = fsub fast float %1563, %1445
  %1567 = fsub fast float %1564, %1446
  %1568 = fsub fast float %1565, %1447
  %1569 = fmul fast float %1566, %1470
  %1570 = fmul fast float %1567, %1470
  %1571 = fmul fast float %1568, %1470
  %1572 = fadd fast float %1569, %1445
  %1573 = fadd fast float %1570, %1446
  %1574 = fadd fast float %1571, %1447
  %1575 = fadd fast float %1492, %1456
  %1576 = fsub fast float %1575, %1509
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fsub fast float %1577, %1456
  %1579 = fmul fast float %1578, %1470
  %1580 = fadd fast float %1579, %1456
  br label %1634

; <label>:1581                                    ; preds = %1469
  %1582 = and i32 %1472, 134217728
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1618, label %1584

; <label>:1584                                    ; preds = %1581
  %1585 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %1586 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %1587 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1588 = fadd fast float %1585, -5.000000e-01
  %1589 = fadd fast float %1586, -5.000000e-01
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fmul fast float %1588, %1470
  %1592 = fmul fast float %1589, %1470
  %1593 = fmul fast float %1590, %1470
  %1594 = fadd fast float %1591, 5.000000e-01
  %1595 = fadd fast float %1592, 5.000000e-01
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %1446)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1600 = fmul fast float %1594, 2.000000e+00
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = fmul fast float %1601, %1597
  %1603 = fadd fast float %1602, %1600
  %1604 = fmul fast float %1603, %1597
  %1605 = fmul fast float %1595, 2.000000e+00
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1606, %1598
  %1608 = fadd fast float %1607, %1605
  %1609 = fmul fast float %1608, %1598
  %1610 = fmul fast float %1596, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1599
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1599
  %1615 = fmul fast float %1604, %1604
  %1616 = fmul fast float %1609, %1609
  %1617 = fmul fast float %1614, %1614
  br label %1634

; <label>:1618                                    ; preds = %1581
  %1619 = fmul fast float %387, %387
  %1620 = fmul fast float %388, %388
  %1621 = fmul fast float %389, %389
  %1622 = fadd fast float %1619, -1.000000e+00
  %1623 = fadd fast float %1620, -1.000000e+00
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fmul fast float %1470, %1622
  %1626 = fmul fast float %1470, %1623
  %1627 = fmul fast float %1470, %1624
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fmul fast float %1628, %1445
  %1632 = fmul fast float %1629, %1446
  %1633 = fmul fast float %1630, %1447
  br label %1634

; <label>:1634                                    ; preds = %1618, %1584, %1475, %1431
  %1635 = phi float [ %1580, %1475 ], [ %1456, %1584 ], [ %1456, %1618 ], [ 0x3FA23C0BE0000000, %1431 ]
  %1636 = phi float [ %1572, %1475 ], [ %1615, %1584 ], [ %1631, %1618 ], [ 1.000000e+00, %1431 ]
  %1637 = phi float [ %1573, %1475 ], [ %1616, %1584 ], [ %1632, %1618 ], [ 1.000000e+00, %1431 ]
  %1638 = phi float [ %1574, %1475 ], [ %1617, %1584 ], [ %1633, %1618 ], [ 1.000000e+00, %1431 ]
  %1639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.i32 %1639, 1
  %1641 = and i32 %1640, 1
  %1642 = icmp ne i32 %1641, 0
  %1643 = add i32 %55, 356
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 32
  %1647 = icmp ne i32 %1646, 0
  %1648 = and i1 %1642, %1647
  %1649 = select i1 %1648, float 1.000000e+00, float %1636
  %1650 = select i1 %1648, float 0x3FD3333340000000, float %1637
  %1651 = select i1 %1648, float 0x3FD3333340000000, float %1638
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 32
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1728, label %1656

; <label>:1656                                    ; preds = %1634
  %1657 = add i32 %55, 108
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = add i32 %55, 380
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = add i32 %1662, 0
  %1664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1664, %dx.types.Handle %102, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = extractvalue %dx.types.ResRet.f32 %1665, 3
  %1670 = and i32 %1659, 255
  %1671 = uitofp i32 %1670 to float
  %1672 = lshr i32 %1659, 8
  %1673 = and i32 %1672, 255
  %1674 = uitofp i32 %1673 to float
  %1675 = lshr i32 %1659, 16
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101000000000
  %1679 = fmul fast float %1666, %1671
  %1680 = fadd fast float %1679, %1674
  %1681 = fmul fast float %1680, 0x3F70101000000000
  %1682 = fadd fast float %1667, -5.000000e-01
  %1683 = fadd fast float %1669, -5.000000e-01
  %1684 = fmul fast float %1682, %1678
  %1685 = fmul fast float %1683, %1678
  %1686 = fadd fast float %1684, 5.000000e-01
  %1687 = fadd fast float %1685, 5.000000e-01
  %1688 = fmul fast float %1686, 2.000000e+00
  %1689 = fadd fast float %1688, -1.000000e+00
  %1690 = fmul fast float %1687, 2.000000e+00
  %1691 = fadd fast float %1690, -1.000000e+00
  %1692 = fadd fast float %1689, %1691
  %1693 = fmul fast float %1692, 5.000000e-01
  %1694 = fsub fast float %1689, %1691
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1699 = fsub fast float %1697, %1698
  %1700 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1695, float %1699, float %1693, float %1695, float %1699)  ; Dot3(ax,ay,az,bx,by,bz)
  %1701 = call float @dx.op.unary.f32(i32 25, float %1700)  ; Rsqrt(value)
  %1702 = fmul fast float %1693, %1701
  %1703 = fmul fast float %1695, %1701
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 67108864
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1724, label %1708

; <label>:1708                                    ; preds = %1656
  %1709 = add i32 %55, 296
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = and i32 %1711, 65535
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = lshr i32 %1711, 16
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = fsub fast float %1681, %1719
  %1721 = fmul fast float %1720, %1713
  %1722 = fadd fast float %1721, %1717
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  br label %1724

; <label>:1724                                    ; preds = %1708, %1656
  %1725 = phi float [ %1723, %1708 ], [ %1681, %1656 ]
  %1726 = call float @dx.op.dot2.f32(i32 54, float %1702, float %1703, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  %1727 = call float @dx.op.dot2.f32(i32 54, float %1702, float %1703, float %1262, float %1263)  ; Dot2(ax,ay,bx,by)
  br label %1728

; <label>:1728                                    ; preds = %1724, %1634
  %1729 = phi float [ %1725, %1724 ], [ 0x3FD6666660000000, %1634 ]
  %1730 = phi float [ %1726, %1724 ], [ 0.000000e+00, %1634 ]
  %1731 = phi float [ %1727, %1724 ], [ 0.000000e+00, %1634 ]
  %1732 = phi float [ %1668, %1724 ], [ 1.000000e+00, %1634 ]
  %1733 = add i32 %55, 176
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = lshr i32 %1735, 22
  %1737 = shl nuw nsw i32 %1736, 5
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 64
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1776, label %1743

; <label>:1743                                    ; preds = %1728
  %1744 = add i32 %55, 396
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = add i32 %1746, 0
  %1748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 131072
  %1752 = icmp eq i32 %1751, 0
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1748, %dx.types.Handle %102, float %1356, float %1357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = fmul fast float %370, %1754
  %1758 = fmul fast float %371, %1755
  %1759 = fmul fast float %372, %1756
  br i1 %1752, label %1766, label %1760

; <label>:1760                                    ; preds = %1743
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1763 = fmul fast float %1762, %1757
  %1764 = fmul fast float %1762, %1758
  %1765 = fmul fast float %1762, %1759
  br label %1766

; <label>:1766                                    ; preds = %1760, %1743
  %1767 = phi float [ %1763, %1760 ], [ %1757, %1743 ]
  %1768 = phi float [ %1764, %1760 ], [ %1758, %1743 ]
  %1769 = phi float [ %1765, %1760 ], [ %1759, %1743 ]
  %1770 = fmul fast float %1767, %1738
  %1771 = select i1 %252, float %1770, float %1767
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = select i1 %252, float 0.000000e+00, float %1767
  %1774 = select i1 %252, float %1772, float %1768
  %1775 = select i1 %252, float 0.000000e+00, float %1769
  br label %1776

; <label>:1776                                    ; preds = %1766, %1728
  %1777 = phi float [ %1773, %1766 ], [ 0.000000e+00, %1728 ]
  %1778 = phi float [ %1774, %1766 ], [ 0.000000e+00, %1728 ]
  %1779 = phi float [ %1775, %1766 ], [ 0.000000e+00, %1728 ]
  %1780 = add i32 %55, 112
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = lshr i32 %1782, 8
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = call float @dx.op.dot3.f32(i32 55, float %1649, float %1650, float %1651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1789 = fmul fast float %1787, %1788
  %1790 = fadd fast float %1789, %1784
  %1791 = fmul fast float %1790, 0x3F70101020000000
  %1792 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  br i1 %1248, label %1793, label %1801

; <label>:1793                                    ; preds = %1776
  %1794 = fsub fast float 1.000000e+00, %1429
  %1795 = fmul fast float %1794, %1236
  %1796 = fmul fast float %1794, %1237
  %1797 = fmul fast float %1794, %1238
  %1798 = fmul fast float %1794, %1239
  %1799 = fmul fast float %1794, %1240
  %1800 = fmul fast float %1794, %1241
  br label %1801

; <label>:1801                                    ; preds = %1793, %1776
  %1802 = phi float [ %1795, %1793 ], [ %1236, %1776 ]
  %1803 = phi float [ %1796, %1793 ], [ %1237, %1776 ]
  %1804 = phi float [ %1797, %1793 ], [ %1238, %1776 ]
  %1805 = phi float [ %1798, %1793 ], [ %1239, %1776 ]
  %1806 = phi float [ %1799, %1793 ], [ %1240, %1776 ]
  %1807 = phi float [ %1800, %1793 ], [ %1241, %1776 ]
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 3
  %1811 = icmp eq i32 %1810, 3
  br i1 %1811, label %1890, label %1812

; <label>:1812                                    ; preds = %1801
  %1813 = and i32 %1809, 16
  %1814 = icmp ne i32 %1813, 0
  %1815 = select i1 %1814, float %1429, float 0.000000e+00
  %1816 = icmp eq i32 %1810, 0
  br i1 %1816, label %1817, label %1845

; <label>:1817                                    ; preds = %1812
  %1818 = and i32 %1809, 64
  %1819 = icmp ne i32 %1818, 0
  %1820 = select i1 %1819, float %1429, float 0.000000e+00
  %1821 = fsub fast float %1649, %1802
  %1822 = fsub fast float %1650, %1803
  %1823 = fsub fast float %1651, %1804
  %1824 = fmul fast float %1815, %1821
  %1825 = fmul fast float %1815, %1822
  %1826 = fmul fast float %1815, %1823
  %1827 = fadd fast float %1824, %1802
  %1828 = fadd fast float %1825, %1803
  %1829 = fadd fast float %1826, %1804
  %1830 = fsub fast float %1635, %1242
  %1831 = fmul fast float %1815, %1830
  %1832 = fadd fast float %1831, %1242
  %1833 = fsub fast float %1777, %1805
  %1834 = fsub fast float %1778, %1806
  %1835 = fsub fast float %1779, %1807
  %1836 = fmul fast float %1820, %1833
  %1837 = fmul fast float %1820, %1834
  %1838 = fmul fast float %1820, %1835
  %1839 = fadd fast float %1836, %1805
  %1840 = fadd fast float %1837, %1806
  %1841 = fadd fast float %1838, %1807
  %1842 = fsub fast float %1792, %1246
  %1843 = fmul fast float %1815, %1842
  %1844 = fadd fast float %1843, %1246
  br label %1890

; <label>:1845                                    ; preds = %1812
  %1846 = icmp eq i32 %1810, 1
  br i1 %1846, label %1847, label %1860

; <label>:1847                                    ; preds = %1845
  %1848 = fadd fast float %1649, -1.000000e+00
  %1849 = fadd fast float %1650, -1.000000e+00
  %1850 = fadd fast float %1651, -1.000000e+00
  %1851 = fmul fast float %1815, %1848
  %1852 = fmul fast float %1815, %1849
  %1853 = fmul fast float %1815, %1850
  %1854 = fadd fast float %1851, 1.000000e+00
  %1855 = fadd fast float %1852, 1.000000e+00
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fmul fast float %1854, %1802
  %1858 = fmul fast float %1855, %1803
  %1859 = fmul fast float %1856, %1804
  br label %1890

; <label>:1860                                    ; preds = %1845
  %1861 = icmp eq i32 %1810, 2
  br i1 %1861, label %1862, label %1890

; <label>:1862                                    ; preds = %1860
  %1863 = call float @dx.op.unary.f32(i32 24, float %1649)  ; Sqrt(value)
  %1864 = call float @dx.op.unary.f32(i32 24, float %1650)  ; Sqrt(value)
  %1865 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1866 = fadd fast float %1863, -5.000000e-01
  %1867 = fadd fast float %1864, -5.000000e-01
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fmul fast float %1866, %1815
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1815
  %1872 = fadd fast float %1869, 5.000000e-01
  %1873 = fadd fast float %1870, 5.000000e-01
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fmul fast float %1872, 2.000000e+00
  %1876 = fsub fast float 1.000000e+00, %1875
  %1877 = fmul fast float %1876, %1802
  %1878 = fadd fast float %1877, %1875
  %1879 = fmul fast float %1878, %1802
  %1880 = fmul fast float %1873, 2.000000e+00
  %1881 = fsub fast float 1.000000e+00, %1880
  %1882 = fmul fast float %1881, %1803
  %1883 = fadd fast float %1882, %1880
  %1884 = fmul fast float %1883, %1803
  %1885 = fmul fast float %1874, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1804
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1804
  br label %1890

; <label>:1890                                    ; preds = %1862, %1860, %1847, %1817, %1801
  %1891 = phi float [ %1802, %1801 ], [ %1879, %1862 ], [ %1802, %1860 ], [ %1857, %1847 ], [ %1827, %1817 ]
  %1892 = phi float [ %1803, %1801 ], [ %1884, %1862 ], [ %1803, %1860 ], [ %1858, %1847 ], [ %1828, %1817 ]
  %1893 = phi float [ %1804, %1801 ], [ %1889, %1862 ], [ %1804, %1860 ], [ %1859, %1847 ], [ %1829, %1817 ]
  %1894 = phi float [ %1805, %1801 ], [ %1805, %1862 ], [ %1805, %1860 ], [ %1805, %1847 ], [ %1839, %1817 ]
  %1895 = phi float [ %1806, %1801 ], [ %1806, %1862 ], [ %1806, %1860 ], [ %1806, %1847 ], [ %1840, %1817 ]
  %1896 = phi float [ %1807, %1801 ], [ %1807, %1862 ], [ %1807, %1860 ], [ %1807, %1847 ], [ %1841, %1817 ]
  %1897 = phi float [ %1242, %1801 ], [ %1242, %1862 ], [ %1242, %1860 ], [ %1242, %1847 ], [ %1832, %1817 ]
  %1898 = phi float [ %1246, %1801 ], [ %1246, %1862 ], [ %1246, %1860 ], [ %1246, %1847 ], [ %1844, %1817 ]
  %1899 = and i32 %1809, 12
  %1900 = icmp eq i32 %1899, 12
  br i1 %1900, label %1973, label %1901

; <label>:1901                                    ; preds = %1890
  %1902 = and i32 %1809, 2097184
  %1903 = icmp eq i32 %1902, 2097184
  %1904 = select i1 %1903, float %1429, float 0.000000e+00
  %1905 = and i32 %1809, 4194336
  %1906 = icmp eq i32 %1905, 4194336
  %1907 = select i1 %1906, float %1429, float 0.000000e+00
  %1908 = and i32 %1809, 8388640
  %1909 = icmp eq i32 %1908, 8388640
  %1910 = select i1 %1909, float %1429, float 0.000000e+00
  %1911 = icmp eq i32 %1899, 0
  br i1 %1911, label %1912, label %1925

; <label>:1912                                    ; preds = %1901
  %1913 = fsub fast float %1730, %1234
  %1914 = fsub fast float %1731, %1235
  %1915 = fmul fast float %1904, %1913
  %1916 = fmul fast float %1904, %1914
  %1917 = fadd fast float %1915, %1234
  %1918 = fadd fast float %1916, %1235
  %1919 = fsub fast float %1732, %1245
  %1920 = fmul fast float %1907, %1919
  %1921 = fadd fast float %1920, %1245
  %1922 = fsub fast float %1729, %1244
  %1923 = fmul fast float %1910, %1922
  %1924 = fadd fast float %1923, %1244
  br label %1973

; <label>:1925                                    ; preds = %1901
  %1926 = icmp eq i32 %1899, 4
  br i1 %1926, label %1927, label %1959

; <label>:1927                                    ; preds = %1925
  %1928 = fmul fast float %1904, %1730
  %1929 = fmul fast float %1904, %1731
  %1930 = fadd fast float %1928, %1234
  %1931 = fadd fast float %1929, %1235
  %1932 = call float @dx.op.binary.f32(i32 36, float %1245, float %1732)  ; FMin(a,b)
  %1933 = fsub fast float %1932, %1245
  %1934 = fmul fast float %1933, %1907
  %1935 = fadd fast float %1934, %1245
  %1936 = fadd fast float %1729, %1244
  %1937 = fmul fast float %1936, 0x3FF337FAE0000000
  %1938 = fmul fast float %1244, %1244
  %1939 = fmul fast float %1729, %1729
  %1940 = fadd fast float %1939, %1938
  %1941 = fmul fast float %1940, 0x3FE5152B00000000
  %1942 = fmul fast float %1244, 0xBFCC1F85E0000000
  %1943 = fmul fast float %1942, %1729
  %1944 = fadd fast float %1943, 0xBFE1363700000000
  %1945 = fadd fast float %1944, %1937
  %1946 = fsub fast float %1945, %1941
  %1947 = fmul fast float %1936, 0x3FBA6F0D00000000
  %1948 = fmul fast float %1940, 0x3FD0432880000000
  %1949 = fmul fast float %1244, 0xBFEF110800000000
  %1950 = fmul fast float %1949, %1729
  %1951 = fadd fast float %1950, 1.000000e+00
  %1952 = fsub fast float %1951, %1947
  %1953 = fadd fast float %1952, %1948
  %1954 = fdiv fast float %1946, %1953
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = fsub fast float %1955, %1244
  %1957 = fmul fast float %1956, %1910
  %1958 = fadd fast float %1957, %1244
  br label %1973

; <label>:1959                                    ; preds = %1925
  %1960 = icmp eq i32 %1899, 8
  br i1 %1960, label %1961, label %1973

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1904, %1730
  %1963 = fmul fast float %1904, %1731
  %1964 = fadd fast float %1962, %1234
  %1965 = fadd fast float %1963, %1235
  %1966 = call float @dx.op.binary.f32(i32 36, float %1245, float %1732)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1245
  %1968 = fmul fast float %1967, %1907
  %1969 = fadd fast float %1968, %1245
  %1970 = fsub fast float %1729, %1244
  %1971 = fmul fast float %1910, %1970
  %1972 = fadd fast float %1971, %1244
  br label %1973

; <label>:1973                                    ; preds = %1961, %1959, %1927, %1912, %1890, %1428, %1247, %1233
  %1974 = phi float [ %1234, %1890 ], [ %1234, %1428 ], [ %1234, %1233 ], [ %1964, %1961 ], [ %1234, %1959 ], [ %1930, %1927 ], [ %1917, %1912 ], [ %1234, %1247 ]
  %1975 = phi float [ %1235, %1890 ], [ %1235, %1428 ], [ %1235, %1233 ], [ %1965, %1961 ], [ %1235, %1959 ], [ %1931, %1927 ], [ %1918, %1912 ], [ %1235, %1247 ]
  %1976 = phi float [ %1891, %1890 ], [ %1236, %1428 ], [ %1236, %1233 ], [ %1891, %1961 ], [ %1891, %1959 ], [ %1891, %1927 ], [ %1891, %1912 ], [ %1236, %1247 ]
  %1977 = phi float [ %1892, %1890 ], [ %1237, %1428 ], [ %1237, %1233 ], [ %1892, %1961 ], [ %1892, %1959 ], [ %1892, %1927 ], [ %1892, %1912 ], [ %1237, %1247 ]
  %1978 = phi float [ %1893, %1890 ], [ %1238, %1428 ], [ %1238, %1233 ], [ %1893, %1961 ], [ %1893, %1959 ], [ %1893, %1927 ], [ %1893, %1912 ], [ %1238, %1247 ]
  %1979 = phi float [ %1894, %1890 ], [ %1239, %1428 ], [ %1239, %1233 ], [ %1894, %1961 ], [ %1894, %1959 ], [ %1894, %1927 ], [ %1894, %1912 ], [ %1239, %1247 ]
  %1980 = phi float [ %1895, %1890 ], [ %1240, %1428 ], [ %1240, %1233 ], [ %1895, %1961 ], [ %1895, %1959 ], [ %1895, %1927 ], [ %1895, %1912 ], [ %1240, %1247 ]
  %1981 = phi float [ %1896, %1890 ], [ %1241, %1428 ], [ %1241, %1233 ], [ %1896, %1961 ], [ %1896, %1959 ], [ %1896, %1927 ], [ %1896, %1912 ], [ %1241, %1247 ]
  %1982 = phi float [ %1897, %1890 ], [ %1242, %1428 ], [ %1242, %1233 ], [ %1897, %1961 ], [ %1897, %1959 ], [ %1897, %1927 ], [ %1897, %1912 ], [ %1242, %1247 ]
  %1983 = phi float [ %1244, %1890 ], [ %1244, %1428 ], [ %1244, %1233 ], [ %1972, %1961 ], [ %1244, %1959 ], [ %1958, %1927 ], [ %1924, %1912 ], [ %1244, %1247 ]
  %1984 = phi float [ %1245, %1890 ], [ %1245, %1428 ], [ %1245, %1233 ], [ %1969, %1961 ], [ %1245, %1959 ], [ %1935, %1927 ], [ %1921, %1912 ], [ %1245, %1247 ]
  %1985 = phi float [ %1898, %1890 ], [ %1246, %1428 ], [ %1246, %1233 ], [ %1898, %1961 ], [ %1898, %1959 ], [ %1898, %1927 ], [ %1898, %1912 ], [ %1246, %1247 ]
  br i1 %634, label %2712, label %1986

; <label>:1986                                    ; preds = %1973
  %1987 = icmp ult i32 %690, 3
  %1988 = add i32 %55, 56
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = add i32 %55, 60
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = or i32 %1993, %1990
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2712, label %1996

; <label>:1996                                    ; preds = %1986
  %1997 = and i32 %1990, 262144
  %1998 = icmp ne i32 %1997, 0
  %1999 = select i1 %1998, float %61, float 1.000000e+00
  %2000 = select i1 %1998, float %62, float 0.000000e+00
  %2001 = select i1 %1998, float %63, float 0.000000e+00
  %2002 = select i1 %1998, float %64, float 1.000000e+00
  %2003 = select i1 %1998, float %65, float %88
  %2004 = select i1 %1998, float %66, float %89
  %2005 = add i32 %55, 316
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = lshr i32 %2007, 16
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = fmul fast float %2009, 0x3F50624DE0000000
  %2011 = add i32 %55, 120
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 16
  %2015 = and i32 %2014, 255
  %2016 = lshr i32 %2013, 24
  %2017 = add i32 %55, 324
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2019, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = add i32 %55, 64
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 22
  %2028 = shl nuw nsw i32 %2027, 5
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = shl i32 %2026, 4
  %2031 = and i32 %2030, 32752
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = lshr i32 %2026, 7
  %2034 = and i32 %2033, 32752
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 3
  %2038 = fmul fast float %2037, 1.000000e+03
  %2039 = fmul fast float %2038, %518
  %2040 = call float @dx.op.unary.f32(i32 22, float %2039)  ; Frc(value)
  %2041 = fadd fast float %2040, %506
  %2042 = fmul fast float %2038, %520
  %2043 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2044 = fadd fast float %2043, %507
  %2045 = fmul fast float %2010, %2038
  %2046 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2047 = fmul fast float %2046, 0x401921FB60000000
  %2048 = fadd fast float %2047, %2029
  %2049 = call float @dx.op.unary.f32(i32 13, float %2048)  ; Sin(value)
  %2050 = call float @dx.op.unary.f32(i32 12, float %2048)  ; Cos(value)
  %2051 = fsub fast float -0.000000e+00, %2049
  %2052 = fadd fast float %2003, -5.000000e-01
  %2053 = fadd fast float %2004, -5.000000e-01
  %2054 = fmul fast float %2021, %2052
  %2055 = fmul fast float %2023, %2053
  %2056 = fadd fast float %2054, 5.000000e-01
  %2057 = fadd fast float %2055, 5.000000e-01
  %2058 = fmul fast float %2032, %2056
  %2059 = fmul fast float %2035, %2057
  %2060 = fmul fast float %2050, %2058
  %2061 = call float @dx.op.tertiary.f32(i32 46, float %2051, float %2059, float %2060)  ; FMad(a,b,c)
  %2062 = fmul fast float %2049, %2058
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2050, float %2059, float %2062)  ; FMad(a,b,c)
  %2064 = fadd fast float %2041, %2061
  %2065 = fadd fast float %2044, %2063
  %2066 = icmp ugt i32 %2015, 1
  %2067 = icmp ugt i32 %2013, 33554431
  %2068 = or i1 %2067, %2066
  br i1 %2068, label %2069, label %2094

; <label>:2069                                    ; preds = %1996
  %2070 = add i32 %55, 260
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = lshr i32 %2072, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = fmul fast float %2037, %2074
  %2076 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2077 = mul nuw nsw i32 %2015, %2016
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2076, %2078
  %2080 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2081 = fptoui float %2080 to i32
  %2082 = urem i32 %2081, %2015
  %2083 = udiv i32 %2081, %2016
  %2084 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2065)  ; Frc(value)
  %2086 = uitofp i32 %2082 to float
  %2087 = uitofp i32 %2083 to float
  %2088 = fadd fast float %2084, %2086
  %2089 = fadd fast float %2085, %2087
  %2090 = uitofp i32 %2015 to float
  %2091 = uitofp i32 %2016 to float
  %2092 = fdiv fast float %2088, %2090
  %2093 = fdiv fast float %2089, %2091
  br label %2094

; <label>:2094                                    ; preds = %2069, %1996
  %2095 = phi float [ %2092, %2069 ], [ %2064, %1996 ]
  %2096 = phi float [ %2093, %2069 ], [ %2065, %1996 ]
  %2097 = and i32 %1990, 256
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2145, label %2099

; <label>:2099                                    ; preds = %2094
  %2100 = add i32 %55, 432
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = add i32 %2102, 0
  %2104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2104, %dx.types.Handle %103, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = add i32 %55, 132
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = shl i32 %2109, 4
  %2111 = and i32 %2110, 32752
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = lshr i32 %2109, 7
  %2114 = and i32 %2113, 32752
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = fsub fast float 1.000000e+00, %686
  %2117 = call float @dx.op.binary.f32(i32 35, float %2116, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2118 = bitcast float %686 to i32
  %2119 = sitofp i32 %2118 to float
  %2120 = fadd fast float %2119, 0xC1CFBF8940000000
  %2121 = fmul fast float %2115, %2120
  %2122 = fadd fast float %2121, 0x41CFBF8940000000
  %2123 = fptosi float %2122 to i32
  %2124 = bitcast i32 %2123 to float
  %2125 = bitcast float %2117 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fadd fast float %2126, 0xC1CFBF8940000000
  %2128 = fmul fast float %2127, %2115
  %2129 = fadd fast float %2128, 0x41CFBF8940000000
  %2130 = fptosi float %2129 to i32
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2124, %2112
  %2133 = fmul fast float %2131, %2112
  %2134 = fsub fast float %2117, %2132
  %2135 = fadd fast float %2133, %2117
  %2136 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2137 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2138 = fsub fast float %2106, %2136
  %2139 = fsub fast float %2137, %2136
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2142, %2138
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  br label %2145

; <label>:2145                                    ; preds = %2099, %2094
  %2146 = phi float [ %2144, %2099 ], [ %686, %2094 ]
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 128
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2167, label %2151

; <label>:2151                                    ; preds = %2145
  %2152 = add i32 %55, 416
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %2154, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2156, %dx.types.Handle %103, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 524288
  %2162 = icmp ne i32 %2161, 0
  %2163 = fcmp fast ogt float %2158, 0x3FE0101020000000
  %2164 = select i1 %2163, float 1.000000e+00, float 0.000000e+00
  %2165 = select i1 %2162, float %2164, float %2158
  %2166 = fmul fast float %2165, %2146
  br label %2167

; <label>:2167                                    ; preds = %2151, %2145
  %2168 = phi float [ %2166, %2151 ], [ %2146, %2145 ]
  %2169 = fcmp fast ult float %2168, 0x3F70101020000000
  br i1 %2169, label %2712, label %2170

; <label>:2170                                    ; preds = %2167
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 16
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2373, label %2175

; <label>:2175                                    ; preds = %2170
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %55, 368
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = add i32 %2180, 0
  %2182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2182, %dx.types.Handle %102, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  %2188 = and i32 %2177, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2177, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2187, %2189
  %2194 = fadd fast float %2193, %2192
  %2195 = fmul fast float %2194, 0x3F70101000000000
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 512
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2208, label %2200

; <label>:2200                                    ; preds = %2175
  %2201 = add i32 %55, 448
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %103, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  br label %2208

; <label>:2208                                    ; preds = %2200, %2175
  %2209 = phi float [ %2207, %2200 ], [ 1.000000e+00, %2175 ]
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 33554432
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2320, label %2214

; <label>:2214                                    ; preds = %2208
  %2215 = add i32 %55, 256
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 65535
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = lshr i32 %2217, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = add i32 %55, 260
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = lshr i32 %2228, 24
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = and i32 %2228, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = lshr i32 %2228, 8
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = lshr i32 %2228, 16
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = add i32 %55, 252
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2260 = bitcast float %2184 to i32
  %2261 = ashr i32 %2260, 1
  %2262 = sub nsw i32 1597463174, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2184, 5.000000e-01
  %2265 = fmul fast float %2263, %2263
  %2266 = fmul fast float %2265, %2264
  %2267 = fsub fast float 1.500000e+00, %2266
  %2268 = fmul fast float %2263, %2184
  %2269 = fmul fast float %2268, %2267
  %2270 = bitcast float %2185 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2185, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2185
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2186 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2186, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2186
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float %2269, %2251
  %2291 = fsub fast float %2279, %2255
  %2292 = fsub fast float %2289, %2259
  %2293 = fmul fast float %2290, %2219
  %2294 = fmul fast float %2291, %2221
  %2295 = fmul fast float %2292, %2226
  %2296 = fadd fast float %2293, %2234
  %2297 = fadd fast float %2294, %2238
  %2298 = fadd fast float %2295, %2242
  %2299 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2301 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2302 = fmul fast float %2299, %2299
  %2303 = fmul fast float %2300, %2300
  %2304 = fmul fast float %2301, %2301
  %2305 = fsub fast float %2302, %2184
  %2306 = fsub fast float %2303, %2185
  %2307 = fsub fast float %2304, %2186
  %2308 = fmul fast float %2305, %2209
  %2309 = fmul fast float %2306, %2209
  %2310 = fmul fast float %2307, %2209
  %2311 = fadd fast float %2308, %2184
  %2312 = fadd fast float %2309, %2185
  %2313 = fadd fast float %2310, %2186
  %2314 = fadd fast float %2231, %2195
  %2315 = fsub fast float %2314, %2248
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fsub fast float %2316, %2195
  %2318 = fmul fast float %2317, %2209
  %2319 = fadd fast float %2318, %2195
  br label %2373

; <label>:2320                                    ; preds = %2208
  %2321 = and i32 %2211, 134217728
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2357, label %2323

; <label>:2323                                    ; preds = %2320
  %2324 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2325 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2326 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2327 = fadd fast float %2324, -5.000000e-01
  %2328 = fadd fast float %2325, -5.000000e-01
  %2329 = fadd fast float %2326, -5.000000e-01
  %2330 = fmul fast float %2327, %2209
  %2331 = fmul fast float %2328, %2209
  %2332 = fmul fast float %2329, %2209
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2339 = fmul fast float %2333, 2.000000e+00
  %2340 = fsub fast float 1.000000e+00, %2339
  %2341 = fmul fast float %2340, %2336
  %2342 = fadd fast float %2341, %2339
  %2343 = fmul fast float %2342, %2336
  %2344 = fmul fast float %2334, 2.000000e+00
  %2345 = fsub fast float 1.000000e+00, %2344
  %2346 = fmul fast float %2345, %2337
  %2347 = fadd fast float %2346, %2344
  %2348 = fmul fast float %2347, %2337
  %2349 = fmul fast float %2335, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2338
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2338
  %2354 = fmul fast float %2343, %2343
  %2355 = fmul fast float %2348, %2348
  %2356 = fmul fast float %2353, %2353
  br label %2373

; <label>:2357                                    ; preds = %2320
  %2358 = fmul fast float %494, %494
  %2359 = fmul fast float %495, %495
  %2360 = fmul fast float %496, %496
  %2361 = fadd fast float %2358, -1.000000e+00
  %2362 = fadd fast float %2359, -1.000000e+00
  %2363 = fadd fast float %2360, -1.000000e+00
  %2364 = fmul fast float %2209, %2361
  %2365 = fmul fast float %2209, %2362
  %2366 = fmul fast float %2209, %2363
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fadd fast float %2365, 1.000000e+00
  %2369 = fadd fast float %2366, 1.000000e+00
  %2370 = fmul fast float %2367, %2184
  %2371 = fmul fast float %2368, %2185
  %2372 = fmul fast float %2369, %2186
  br label %2373

; <label>:2373                                    ; preds = %2357, %2323, %2214, %2170
  %2374 = phi float [ %2319, %2214 ], [ %2195, %2323 ], [ %2195, %2357 ], [ 0x3FA23C0BE0000000, %2170 ]
  %2375 = phi float [ %2311, %2214 ], [ %2354, %2323 ], [ %2370, %2357 ], [ 1.000000e+00, %2170 ]
  %2376 = phi float [ %2312, %2214 ], [ %2355, %2323 ], [ %2371, %2357 ], [ 1.000000e+00, %2170 ]
  %2377 = phi float [ %2313, %2214 ], [ %2356, %2323 ], [ %2372, %2357 ], [ 1.000000e+00, %2170 ]
  %2378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.i32 %2378, 1
  %2380 = and i32 %2379, 1
  %2381 = icmp ne i32 %2380, 0
  %2382 = add i32 %55, 356
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 32
  %2386 = icmp ne i32 %2385, 0
  %2387 = and i1 %2381, %2386
  %2388 = select i1 %2387, float 1.000000e+00, float %2375
  %2389 = select i1 %2387, float 0x3FD3333340000000, float %2376
  %2390 = select i1 %2387, float 0x3FD3333340000000, float %2377
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2467, label %2395

; <label>:2395                                    ; preds = %2373
  %2396 = add i32 %55, 124
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %55, 384
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %2401, 0
  %2403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2403, %dx.types.Handle %102, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = extractvalue %dx.types.ResRet.f32 %2404, 3
  %2409 = and i32 %2398, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = lshr i32 %2398, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = lshr i32 %2398, 16
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101000000000
  %2418 = fmul fast float %2405, %2410
  %2419 = fadd fast float %2418, %2413
  %2420 = fmul fast float %2419, 0x3F70101000000000
  %2421 = fadd fast float %2406, -5.000000e-01
  %2422 = fadd fast float %2408, -5.000000e-01
  %2423 = fmul fast float %2421, %2417
  %2424 = fmul fast float %2422, %2417
  %2425 = fadd fast float %2423, 5.000000e-01
  %2426 = fadd fast float %2424, 5.000000e-01
  %2427 = fmul fast float %2425, 2.000000e+00
  %2428 = fadd fast float %2427, -1.000000e+00
  %2429 = fmul fast float %2426, 2.000000e+00
  %2430 = fadd fast float %2429, -1.000000e+00
  %2431 = fadd fast float %2428, %2430
  %2432 = fmul fast float %2431, 5.000000e-01
  %2433 = fsub fast float %2428, %2430
  %2434 = fmul fast float %2433, 5.000000e-01
  %2435 = call float @dx.op.unary.f32(i32 6, float %2432)  ; FAbs(value)
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2438 = fsub fast float %2436, %2437
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2432, float %2434, float %2438, float %2432, float %2434, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2439)  ; Rsqrt(value)
  %2441 = fmul fast float %2432, %2440
  %2442 = fmul fast float %2434, %2440
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 67108864
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2463, label %2447

; <label>:2447                                    ; preds = %2395
  %2448 = add i32 %55, 312
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 65535
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = lshr i32 %2450, 16
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = fsub fast float %2420, %2458
  %2460 = fmul fast float %2459, %2452
  %2461 = fadd fast float %2460, %2456
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  br label %2463

; <label>:2463                                    ; preds = %2447, %2395
  %2464 = phi float [ %2462, %2447 ], [ %2420, %2395 ]
  %2465 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %1999, float %2000)  ; Dot2(ax,ay,bx,by)
  %2466 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %2001, float %2002)  ; Dot2(ax,ay,bx,by)
  br label %2467

; <label>:2467                                    ; preds = %2463, %2373
  %2468 = phi float [ %2464, %2463 ], [ 0x3FD6666660000000, %2373 ]
  %2469 = phi float [ %2465, %2463 ], [ 0.000000e+00, %2373 ]
  %2470 = phi float [ %2466, %2463 ], [ 0.000000e+00, %2373 ]
  %2471 = phi float [ %2407, %2463 ], [ 1.000000e+00, %2373 ]
  %2472 = add i32 %55, 192
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = lshr i32 %2474, 22
  %2476 = shl nuw nsw i32 %2475, 5
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 64
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2515, label %2482

; <label>:2482                                    ; preds = %2467
  %2483 = add i32 %55, 400
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %2485, 0
  %2487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 131072
  %2491 = icmp eq i32 %2490, 0
  %2492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2487, %dx.types.Handle %102, float %2095, float %2096, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = fmul fast float %477, %2493
  %2497 = fmul fast float %478, %2494
  %2498 = fmul fast float %479, %2495
  br i1 %2491, label %2505, label %2499

; <label>:2499                                    ; preds = %2482
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fmul fast float %2501, %2496
  %2503 = fmul fast float %2501, %2497
  %2504 = fmul fast float %2501, %2498
  br label %2505

; <label>:2505                                    ; preds = %2499, %2482
  %2506 = phi float [ %2502, %2499 ], [ %2496, %2482 ]
  %2507 = phi float [ %2503, %2499 ], [ %2497, %2482 ]
  %2508 = phi float [ %2504, %2499 ], [ %2498, %2482 ]
  %2509 = fmul fast float %2506, %2477
  %2510 = select i1 %252, float %2509, float %2506
  %2511 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2507, float %2508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2512 = select i1 %252, float 0.000000e+00, float %2506
  %2513 = select i1 %252, float %2511, float %2507
  %2514 = select i1 %252, float 0.000000e+00, float %2508
  br label %2515

; <label>:2515                                    ; preds = %2505, %2467
  %2516 = phi float [ %2512, %2505 ], [ 0.000000e+00, %2467 ]
  %2517 = phi float [ %2513, %2505 ], [ 0.000000e+00, %2467 ]
  %2518 = phi float [ %2514, %2505 ], [ 0.000000e+00, %2467 ]
  %2519 = add i32 %55, 128
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2521, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2388, float %2389, float %2390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = fmul fast float %2526, %2527
  %2529 = fadd fast float %2528, %2523
  %2530 = fmul fast float %2529, 0x3F70101020000000
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  br i1 %1987, label %2532, label %2540

; <label>:2532                                    ; preds = %2515
  %2533 = fsub fast float 1.000000e+00, %2168
  %2534 = fmul fast float %2533, %1976
  %2535 = fmul fast float %2533, %1977
  %2536 = fmul fast float %2533, %1978
  %2537 = fmul fast float %2533, %1979
  %2538 = fmul fast float %2533, %1980
  %2539 = fmul fast float %2533, %1981
  br label %2540

; <label>:2540                                    ; preds = %2532, %2515
  %2541 = phi float [ %2534, %2532 ], [ %1976, %2515 ]
  %2542 = phi float [ %2535, %2532 ], [ %1977, %2515 ]
  %2543 = phi float [ %2536, %2532 ], [ %1978, %2515 ]
  %2544 = phi float [ %2537, %2532 ], [ %1979, %2515 ]
  %2545 = phi float [ %2538, %2532 ], [ %1980, %2515 ]
  %2546 = phi float [ %2539, %2532 ], [ %1981, %2515 ]
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 3
  %2550 = icmp eq i32 %2549, 3
  br i1 %2550, label %2629, label %2551

; <label>:2551                                    ; preds = %2540
  %2552 = and i32 %2548, 16
  %2553 = icmp ne i32 %2552, 0
  %2554 = select i1 %2553, float %2168, float 0.000000e+00
  %2555 = icmp eq i32 %2549, 0
  br i1 %2555, label %2556, label %2584

; <label>:2556                                    ; preds = %2551
  %2557 = and i32 %2548, 64
  %2558 = icmp ne i32 %2557, 0
  %2559 = select i1 %2558, float %2168, float 0.000000e+00
  %2560 = fsub fast float %2388, %2541
  %2561 = fsub fast float %2389, %2542
  %2562 = fsub fast float %2390, %2543
  %2563 = fmul fast float %2554, %2560
  %2564 = fmul fast float %2554, %2561
  %2565 = fmul fast float %2554, %2562
  %2566 = fadd fast float %2563, %2541
  %2567 = fadd fast float %2564, %2542
  %2568 = fadd fast float %2565, %2543
  %2569 = fsub fast float %2374, %1982
  %2570 = fmul fast float %2554, %2569
  %2571 = fadd fast float %2570, %1982
  %2572 = fsub fast float %2516, %2544
  %2573 = fsub fast float %2517, %2545
  %2574 = fsub fast float %2518, %2546
  %2575 = fmul fast float %2559, %2572
  %2576 = fmul fast float %2559, %2573
  %2577 = fmul fast float %2559, %2574
  %2578 = fadd fast float %2575, %2544
  %2579 = fadd fast float %2576, %2545
  %2580 = fadd fast float %2577, %2546
  %2581 = fsub fast float %2531, %1985
  %2582 = fmul fast float %2554, %2581
  %2583 = fadd fast float %2582, %1985
  br label %2629

; <label>:2584                                    ; preds = %2551
  %2585 = icmp eq i32 %2549, 1
  br i1 %2585, label %2586, label %2599

; <label>:2586                                    ; preds = %2584
  %2587 = fadd fast float %2388, -1.000000e+00
  %2588 = fadd fast float %2389, -1.000000e+00
  %2589 = fadd fast float %2390, -1.000000e+00
  %2590 = fmul fast float %2554, %2587
  %2591 = fmul fast float %2554, %2588
  %2592 = fmul fast float %2554, %2589
  %2593 = fadd fast float %2590, 1.000000e+00
  %2594 = fadd fast float %2591, 1.000000e+00
  %2595 = fadd fast float %2592, 1.000000e+00
  %2596 = fmul fast float %2593, %2541
  %2597 = fmul fast float %2594, %2542
  %2598 = fmul fast float %2595, %2543
  br label %2629

; <label>:2599                                    ; preds = %2584
  %2600 = icmp eq i32 %2549, 2
  br i1 %2600, label %2601, label %2629

; <label>:2601                                    ; preds = %2599
  %2602 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2604 = call float @dx.op.unary.f32(i32 24, float %2390)  ; Sqrt(value)
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fadd fast float %2604, -5.000000e-01
  %2608 = fmul fast float %2605, %2554
  %2609 = fmul fast float %2606, %2554
  %2610 = fmul fast float %2607, %2554
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = fadd fast float %2610, 5.000000e-01
  %2614 = fmul fast float %2611, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2541
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2541
  %2619 = fmul fast float %2612, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2620, %2542
  %2622 = fadd fast float %2621, %2619
  %2623 = fmul fast float %2622, %2542
  %2624 = fmul fast float %2613, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2543
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2543
  br label %2629

; <label>:2629                                    ; preds = %2601, %2599, %2586, %2556, %2540
  %2630 = phi float [ %2541, %2540 ], [ %2618, %2601 ], [ %2541, %2599 ], [ %2596, %2586 ], [ %2566, %2556 ]
  %2631 = phi float [ %2542, %2540 ], [ %2623, %2601 ], [ %2542, %2599 ], [ %2597, %2586 ], [ %2567, %2556 ]
  %2632 = phi float [ %2543, %2540 ], [ %2628, %2601 ], [ %2543, %2599 ], [ %2598, %2586 ], [ %2568, %2556 ]
  %2633 = phi float [ %2544, %2540 ], [ %2544, %2601 ], [ %2544, %2599 ], [ %2544, %2586 ], [ %2578, %2556 ]
  %2634 = phi float [ %2545, %2540 ], [ %2545, %2601 ], [ %2545, %2599 ], [ %2545, %2586 ], [ %2579, %2556 ]
  %2635 = phi float [ %2546, %2540 ], [ %2546, %2601 ], [ %2546, %2599 ], [ %2546, %2586 ], [ %2580, %2556 ]
  %2636 = phi float [ %1982, %2540 ], [ %1982, %2601 ], [ %1982, %2599 ], [ %1982, %2586 ], [ %2571, %2556 ]
  %2637 = phi float [ %1985, %2540 ], [ %1985, %2601 ], [ %1985, %2599 ], [ %1985, %2586 ], [ %2583, %2556 ]
  %2638 = and i32 %2548, 12
  %2639 = icmp eq i32 %2638, 12
  br i1 %2639, label %2712, label %2640

; <label>:2640                                    ; preds = %2629
  %2641 = and i32 %2548, 2097184
  %2642 = icmp eq i32 %2641, 2097184
  %2643 = select i1 %2642, float %2168, float 0.000000e+00
  %2644 = and i32 %2548, 4194336
  %2645 = icmp eq i32 %2644, 4194336
  %2646 = select i1 %2645, float %2168, float 0.000000e+00
  %2647 = and i32 %2548, 8388640
  %2648 = icmp eq i32 %2647, 8388640
  %2649 = select i1 %2648, float %2168, float 0.000000e+00
  %2650 = icmp eq i32 %2638, 0
  br i1 %2650, label %2651, label %2664

; <label>:2651                                    ; preds = %2640
  %2652 = fsub fast float %2469, %1974
  %2653 = fsub fast float %2470, %1975
  %2654 = fmul fast float %2643, %2652
  %2655 = fmul fast float %2643, %2653
  %2656 = fadd fast float %2654, %1974
  %2657 = fadd fast float %2655, %1975
  %2658 = fsub fast float %2471, %1984
  %2659 = fmul fast float %2646, %2658
  %2660 = fadd fast float %2659, %1984
  %2661 = fsub fast float %2468, %1983
  %2662 = fmul fast float %2649, %2661
  %2663 = fadd fast float %2662, %1983
  br label %2712

; <label>:2664                                    ; preds = %2640
  %2665 = icmp eq i32 %2638, 4
  br i1 %2665, label %2666, label %2698

; <label>:2666                                    ; preds = %2664
  %2667 = fmul fast float %2643, %2469
  %2668 = fmul fast float %2643, %2470
  %2669 = fadd fast float %2667, %1974
  %2670 = fadd fast float %2668, %1975
  %2671 = call float @dx.op.binary.f32(i32 36, float %1984, float %2471)  ; FMin(a,b)
  %2672 = fsub fast float %2671, %1984
  %2673 = fmul fast float %2672, %2646
  %2674 = fadd fast float %2673, %1984
  %2675 = fadd fast float %2468, %1983
  %2676 = fmul fast float %2675, 0x3FF337FAE0000000
  %2677 = fmul fast float %1983, %1983
  %2678 = fmul fast float %2468, %2468
  %2679 = fadd fast float %2678, %2677
  %2680 = fmul fast float %2679, 0x3FE5152B00000000
  %2681 = fmul fast float %1983, 0xBFCC1F85E0000000
  %2682 = fmul fast float %2681, %2468
  %2683 = fadd fast float %2682, 0xBFE1363700000000
  %2684 = fadd fast float %2683, %2676
  %2685 = fsub fast float %2684, %2680
  %2686 = fmul fast float %2675, 0x3FBA6F0D00000000
  %2687 = fmul fast float %2679, 0x3FD0432880000000
  %2688 = fmul fast float %1983, 0xBFEF110800000000
  %2689 = fmul fast float %2688, %2468
  %2690 = fadd fast float %2689, 1.000000e+00
  %2691 = fsub fast float %2690, %2686
  %2692 = fadd fast float %2691, %2687
  %2693 = fdiv fast float %2685, %2692
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2695 = fsub fast float %2694, %1983
  %2696 = fmul fast float %2695, %2649
  %2697 = fadd fast float %2696, %1983
  br label %2712

; <label>:2698                                    ; preds = %2664
  %2699 = icmp eq i32 %2638, 8
  br i1 %2699, label %2700, label %2712

; <label>:2700                                    ; preds = %2698
  %2701 = fmul fast float %2643, %2469
  %2702 = fmul fast float %2643, %2470
  %2703 = fadd fast float %2701, %1974
  %2704 = fadd fast float %2702, %1975
  %2705 = call float @dx.op.binary.f32(i32 36, float %1984, float %2471)  ; FMin(a,b)
  %2706 = fsub fast float %2705, %1984
  %2707 = fmul fast float %2706, %2646
  %2708 = fadd fast float %2707, %1984
  %2709 = fsub fast float %2468, %1983
  %2710 = fmul fast float %2649, %2709
  %2711 = fadd fast float %2710, %1983
  br label %2712

; <label>:2712                                    ; preds = %2700, %2698, %2666, %2651, %2629, %2167, %1986, %1973
  %2713 = phi float [ %1974, %2629 ], [ %1974, %2167 ], [ %1974, %1973 ], [ %2703, %2700 ], [ %1974, %2698 ], [ %2669, %2666 ], [ %2656, %2651 ], [ %1974, %1986 ]
  %2714 = phi float [ %1975, %2629 ], [ %1975, %2167 ], [ %1975, %1973 ], [ %2704, %2700 ], [ %1975, %2698 ], [ %2670, %2666 ], [ %2657, %2651 ], [ %1975, %1986 ]
  %2715 = phi float [ %2630, %2629 ], [ %1976, %2167 ], [ %1976, %1973 ], [ %2630, %2700 ], [ %2630, %2698 ], [ %2630, %2666 ], [ %2630, %2651 ], [ %1976, %1986 ]
  %2716 = phi float [ %2631, %2629 ], [ %1977, %2167 ], [ %1977, %1973 ], [ %2631, %2700 ], [ %2631, %2698 ], [ %2631, %2666 ], [ %2631, %2651 ], [ %1977, %1986 ]
  %2717 = phi float [ %2632, %2629 ], [ %1978, %2167 ], [ %1978, %1973 ], [ %2632, %2700 ], [ %2632, %2698 ], [ %2632, %2666 ], [ %2632, %2651 ], [ %1978, %1986 ]
  %2718 = phi float [ %2633, %2629 ], [ %1979, %2167 ], [ %1979, %1973 ], [ %2633, %2700 ], [ %2633, %2698 ], [ %2633, %2666 ], [ %2633, %2651 ], [ %1979, %1986 ]
  %2719 = phi float [ %2634, %2629 ], [ %1980, %2167 ], [ %1980, %1973 ], [ %2634, %2700 ], [ %2634, %2698 ], [ %2634, %2666 ], [ %2634, %2651 ], [ %1980, %1986 ]
  %2720 = phi float [ %2635, %2629 ], [ %1981, %2167 ], [ %1981, %1973 ], [ %2635, %2700 ], [ %2635, %2698 ], [ %2635, %2666 ], [ %2635, %2651 ], [ %1981, %1986 ]
  %2721 = phi float [ %2636, %2629 ], [ %1982, %2167 ], [ %1982, %1973 ], [ %2636, %2700 ], [ %2636, %2698 ], [ %2636, %2666 ], [ %2636, %2651 ], [ %1982, %1986 ]
  %2722 = phi float [ %1983, %2629 ], [ %1983, %2167 ], [ %1983, %1973 ], [ %2711, %2700 ], [ %1983, %2698 ], [ %2697, %2666 ], [ %2663, %2651 ], [ %1983, %1986 ]
  %2723 = phi float [ %1984, %2629 ], [ %1984, %2167 ], [ %1984, %1973 ], [ %2708, %2700 ], [ %1984, %2698 ], [ %2674, %2666 ], [ %2660, %2651 ], [ %1984, %1986 ]
  %2724 = phi float [ %2637, %2629 ], [ %1985, %2167 ], [ %1985, %1973 ], [ %2637, %2700 ], [ %2637, %2698 ], [ %2637, %2666 ], [ %2637, %2651 ], [ %1985, %1986 ]
  br i1 %636, label %3451, label %2725

; <label>:2725                                    ; preds = %2712
  %2726 = icmp ult i32 %690, 4
  %2727 = add i32 %55, 72
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = add i32 %55, 76
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = or i32 %2732, %2729
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %3451, label %2735

; <label>:2735                                    ; preds = %2725
  %2736 = and i32 %2729, 262144
  %2737 = icmp ne i32 %2736, 0
  %2738 = select i1 %2737, float %61, float 1.000000e+00
  %2739 = select i1 %2737, float %62, float 0.000000e+00
  %2740 = select i1 %2737, float %63, float 0.000000e+00
  %2741 = select i1 %2737, float %64, float 1.000000e+00
  %2742 = select i1 %2737, float %65, float %88
  %2743 = select i1 %2737, float %66, float %89
  %2744 = add i32 %55, 332
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = lshr i32 %2746, 16
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = fmul fast float %2748, 0x3F50624DE0000000
  %2750 = add i32 %55, 136
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = lshr i32 %2752, 16
  %2754 = and i32 %2753, 255
  %2755 = lshr i32 %2752, 24
  %2756 = add i32 %55, 340
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 65535
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = lshr i32 %2758, 16
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = add i32 %55, 80
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 22
  %2767 = shl nuw nsw i32 %2766, 5
  %2768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2767)  ; LegacyF16ToF32(value)
  %2769 = shl i32 %2765, 4
  %2770 = and i32 %2769, 32752
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = lshr i32 %2765, 7
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2777 = fmul fast float %2776, 1.000000e+03
  %2778 = fmul fast float %2777, %625
  %2779 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2780 = fadd fast float %2779, %613
  %2781 = fmul fast float %2777, %627
  %2782 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2783 = fadd fast float %2782, %614
  %2784 = fmul fast float %2749, %2777
  %2785 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2786 = fmul fast float %2785, 0x401921FB60000000
  %2787 = fadd fast float %2786, %2768
  %2788 = call float @dx.op.unary.f32(i32 13, float %2787)  ; Sin(value)
  %2789 = call float @dx.op.unary.f32(i32 12, float %2787)  ; Cos(value)
  %2790 = fsub fast float -0.000000e+00, %2788
  %2791 = fadd fast float %2742, -5.000000e-01
  %2792 = fadd fast float %2743, -5.000000e-01
  %2793 = fmul fast float %2760, %2791
  %2794 = fmul fast float %2762, %2792
  %2795 = fadd fast float %2793, 5.000000e-01
  %2796 = fadd fast float %2794, 5.000000e-01
  %2797 = fmul fast float %2771, %2795
  %2798 = fmul fast float %2774, %2796
  %2799 = fmul fast float %2789, %2797
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2790, float %2798, float %2799)  ; FMad(a,b,c)
  %2801 = fmul fast float %2788, %2797
  %2802 = call float @dx.op.tertiary.f32(i32 46, float %2789, float %2798, float %2801)  ; FMad(a,b,c)
  %2803 = fadd fast float %2780, %2800
  %2804 = fadd fast float %2783, %2802
  %2805 = icmp ugt i32 %2754, 1
  %2806 = icmp ugt i32 %2752, 33554431
  %2807 = or i1 %2806, %2805
  br i1 %2807, label %2808, label %2833

; <label>:2808                                    ; preds = %2735
  %2809 = add i32 %55, 276
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = lshr i32 %2811, 16
  %2813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2812)  ; LegacyF16ToF32(value)
  %2814 = fmul fast float %2776, %2813
  %2815 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2816 = mul nuw nsw i32 %2754, %2755
  %2817 = uitofp i32 %2816 to float
  %2818 = fmul fast float %2815, %2817
  %2819 = call float @dx.op.unary.f32(i32 27, float %2818)  ; Round_ni(value)
  %2820 = fptoui float %2819 to i32
  %2821 = urem i32 %2820, %2754
  %2822 = udiv i32 %2820, %2755
  %2823 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2824 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2825 = uitofp i32 %2821 to float
  %2826 = uitofp i32 %2822 to float
  %2827 = fadd fast float %2823, %2825
  %2828 = fadd fast float %2824, %2826
  %2829 = uitofp i32 %2754 to float
  %2830 = uitofp i32 %2755 to float
  %2831 = fdiv fast float %2827, %2829
  %2832 = fdiv fast float %2828, %2830
  br label %2833

; <label>:2833                                    ; preds = %2808, %2735
  %2834 = phi float [ %2831, %2808 ], [ %2803, %2735 ]
  %2835 = phi float [ %2832, %2808 ], [ %2804, %2735 ]
  %2836 = and i32 %2729, 256
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2884, label %2838

; <label>:2838                                    ; preds = %2833
  %2839 = add i32 %55, 436
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %2841, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2843, %dx.types.Handle %103, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = add i32 %55, 148
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = shl i32 %2848, 4
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = lshr i32 %2848, 7
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = fsub fast float 1.000000e+00, %685
  %2856 = call float @dx.op.binary.f32(i32 35, float %2855, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2857 = bitcast float %685 to i32
  %2858 = sitofp i32 %2857 to float
  %2859 = fadd fast float %2858, 0xC1CFBF8940000000
  %2860 = fmul fast float %2854, %2859
  %2861 = fadd fast float %2860, 0x41CFBF8940000000
  %2862 = fptosi float %2861 to i32
  %2863 = bitcast i32 %2862 to float
  %2864 = bitcast float %2856 to i32
  %2865 = sitofp i32 %2864 to float
  %2866 = fadd fast float %2865, 0xC1CFBF8940000000
  %2867 = fmul fast float %2866, %2854
  %2868 = fadd fast float %2867, 0x41CFBF8940000000
  %2869 = fptosi float %2868 to i32
  %2870 = bitcast i32 %2869 to float
  %2871 = fmul fast float %2863, %2851
  %2872 = fmul fast float %2870, %2851
  %2873 = fsub fast float %2856, %2871
  %2874 = fadd fast float %2872, %2856
  %2875 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2876 = call float @dx.op.unary.f32(i32 7, float %2874)  ; Saturate(value)
  %2877 = fsub fast float %2845, %2875
  %2878 = fsub fast float %2876, %2875
  %2879 = bitcast float %2878 to i32
  %2880 = sub nsw i32 2129859010, %2879
  %2881 = bitcast i32 %2880 to float
  %2882 = fmul fast float %2881, %2877
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  br label %2884

; <label>:2884                                    ; preds = %2838, %2833
  %2885 = phi float [ %2883, %2838 ], [ %685, %2833 ]
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 128
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2906, label %2890

; <label>:2890                                    ; preds = %2884
  %2891 = add i32 %55, 420
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %103, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 524288
  %2901 = icmp ne i32 %2900, 0
  %2902 = fcmp fast ogt float %2897, 0x3FE0101020000000
  %2903 = select i1 %2902, float 1.000000e+00, float 0.000000e+00
  %2904 = select i1 %2901, float %2903, float %2897
  %2905 = fmul fast float %2904, %2885
  br label %2906

; <label>:2906                                    ; preds = %2890, %2884
  %2907 = phi float [ %2905, %2890 ], [ %2885, %2884 ]
  %2908 = fcmp fast ult float %2907, 0x3F70101020000000
  br i1 %2908, label %3451, label %2909

; <label>:2909                                    ; preds = %2906
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 16
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %3112, label %2914

; <label>:2914                                    ; preds = %2909
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %55, 372
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %2919, 0
  %2921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2921, %dx.types.Handle %102, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2923 = extractvalue %dx.types.ResRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.ResRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.ResRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.ResRet.f32 %2922, 3
  %2927 = and i32 %2916, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = lshr i32 %2916, 8
  %2930 = and i32 %2929, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = fmul fast float %2926, %2928
  %2933 = fadd fast float %2932, %2931
  %2934 = fmul fast float %2933, 0x3F70101000000000
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 512
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %2947, label %2939

; <label>:2939                                    ; preds = %2914
  %2940 = add i32 %55, 452
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %103, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  br label %2947

; <label>:2947                                    ; preds = %2939, %2914
  %2948 = phi float [ %2946, %2939 ], [ 1.000000e+00, %2914 ]
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 33554432
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %3059, label %2953

; <label>:2953                                    ; preds = %2947
  %2954 = add i32 %55, 272
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 65535
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %2956, 16
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = add i32 %55, 276
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 65535
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = lshr i32 %2967, 24
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = and i32 %2967, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2967, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2967, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = add i32 %55, 268
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2999 = bitcast float %2923 to i32
  %3000 = ashr i32 %2999, 1
  %3001 = sub nsw i32 1597463174, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2923, 5.000000e-01
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float 1.500000e+00, %3005
  %3007 = fmul fast float %3002, %2923
  %3008 = fmul fast float %3007, %3006
  %3009 = bitcast float %2924 to i32
  %3010 = ashr i32 %3009, 1
  %3011 = sub nsw i32 1597463174, %3010
  %3012 = bitcast i32 %3011 to float
  %3013 = fmul fast float %2924, 5.000000e-01
  %3014 = fmul fast float %3012, %3012
  %3015 = fmul fast float %3014, %3013
  %3016 = fsub fast float 1.500000e+00, %3015
  %3017 = fmul fast float %3012, %2924
  %3018 = fmul fast float %3017, %3016
  %3019 = bitcast float %2925 to i32
  %3020 = ashr i32 %3019, 1
  %3021 = sub nsw i32 1597463174, %3020
  %3022 = bitcast i32 %3021 to float
  %3023 = fmul fast float %2925, 5.000000e-01
  %3024 = fmul fast float %3022, %3022
  %3025 = fmul fast float %3024, %3023
  %3026 = fsub fast float 1.500000e+00, %3025
  %3027 = fmul fast float %3022, %2925
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float %3008, %2990
  %3030 = fsub fast float %3018, %2994
  %3031 = fsub fast float %3028, %2998
  %3032 = fmul fast float %3029, %2958
  %3033 = fmul fast float %3030, %2960
  %3034 = fmul fast float %3031, %2965
  %3035 = fadd fast float %3032, %2973
  %3036 = fadd fast float %3033, %2977
  %3037 = fadd fast float %3034, %2981
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = fmul fast float %3038, %3038
  %3042 = fmul fast float %3039, %3039
  %3043 = fmul fast float %3040, %3040
  %3044 = fsub fast float %3041, %2923
  %3045 = fsub fast float %3042, %2924
  %3046 = fsub fast float %3043, %2925
  %3047 = fmul fast float %3044, %2948
  %3048 = fmul fast float %3045, %2948
  %3049 = fmul fast float %3046, %2948
  %3050 = fadd fast float %3047, %2923
  %3051 = fadd fast float %3048, %2924
  %3052 = fadd fast float %3049, %2925
  %3053 = fadd fast float %2970, %2934
  %3054 = fsub fast float %3053, %2987
  %3055 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3056 = fsub fast float %3055, %2934
  %3057 = fmul fast float %3056, %2948
  %3058 = fadd fast float %3057, %2934
  br label %3112

; <label>:3059                                    ; preds = %2947
  %3060 = and i32 %2950, 134217728
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3096, label %3062

; <label>:3062                                    ; preds = %3059
  %3063 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %3064 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %3065 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fadd fast float %3064, -5.000000e-01
  %3068 = fadd fast float %3065, -5.000000e-01
  %3069 = fmul fast float %3066, %2948
  %3070 = fmul fast float %3067, %2948
  %3071 = fmul fast float %3068, %2948
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = fadd fast float %3070, 5.000000e-01
  %3074 = fadd fast float %3071, 5.000000e-01
  %3075 = call float @dx.op.unary.f32(i32 24, float %2923)  ; Sqrt(value)
  %3076 = call float @dx.op.unary.f32(i32 24, float %2924)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %3078 = fmul fast float %3072, 2.000000e+00
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3079, %3075
  %3081 = fadd fast float %3080, %3078
  %3082 = fmul fast float %3081, %3075
  %3083 = fmul fast float %3073, 2.000000e+00
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = fmul fast float %3084, %3076
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, %3076
  %3088 = fmul fast float %3074, 2.000000e+00
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = fmul fast float %3089, %3077
  %3091 = fadd fast float %3090, %3088
  %3092 = fmul fast float %3091, %3077
  %3093 = fmul fast float %3082, %3082
  %3094 = fmul fast float %3087, %3087
  %3095 = fmul fast float %3092, %3092
  br label %3112

; <label>:3096                                    ; preds = %3059
  %3097 = fmul fast float %601, %601
  %3098 = fmul fast float %602, %602
  %3099 = fmul fast float %603, %603
  %3100 = fadd fast float %3097, -1.000000e+00
  %3101 = fadd fast float %3098, -1.000000e+00
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = fmul fast float %2948, %3100
  %3104 = fmul fast float %2948, %3101
  %3105 = fmul fast float %2948, %3102
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fadd fast float %3105, 1.000000e+00
  %3109 = fmul fast float %3106, %2923
  %3110 = fmul fast float %3107, %2924
  %3111 = fmul fast float %3108, %2925
  br label %3112

; <label>:3112                                    ; preds = %3096, %3062, %2953, %2909
  %3113 = phi float [ %3058, %2953 ], [ %2934, %3062 ], [ %2934, %3096 ], [ 0x3FA23C0BE0000000, %2909 ]
  %3114 = phi float [ %3050, %2953 ], [ %3093, %3062 ], [ %3109, %3096 ], [ 1.000000e+00, %2909 ]
  %3115 = phi float [ %3051, %2953 ], [ %3094, %3062 ], [ %3110, %3096 ], [ 1.000000e+00, %2909 ]
  %3116 = phi float [ %3052, %2953 ], [ %3095, %3062 ], [ %3111, %3096 ], [ 1.000000e+00, %2909 ]
  %3117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.i32 %3117, 1
  %3119 = and i32 %3118, 1
  %3120 = icmp ne i32 %3119, 0
  %3121 = add i32 %55, 356
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 32
  %3125 = icmp ne i32 %3124, 0
  %3126 = and i1 %3120, %3125
  %3127 = select i1 %3126, float 1.000000e+00, float %3114
  %3128 = select i1 %3126, float 0x3FD3333340000000, float %3115
  %3129 = select i1 %3126, float 0x3FD3333340000000, float %3116
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 32
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3206, label %3134

; <label>:3134                                    ; preds = %3112
  %3135 = add i32 %55, 140
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = add i32 %55, 388
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %102, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = extractvalue %dx.types.ResRet.f32 %3143, 3
  %3148 = and i32 %3137, 255
  %3149 = uitofp i32 %3148 to float
  %3150 = lshr i32 %3137, 8
  %3151 = and i32 %3150, 255
  %3152 = uitofp i32 %3151 to float
  %3153 = lshr i32 %3137, 16
  %3154 = and i32 %3153, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3155, 0x3F70101000000000
  %3157 = fmul fast float %3144, %3149
  %3158 = fadd fast float %3157, %3152
  %3159 = fmul fast float %3158, 0x3F70101000000000
  %3160 = fadd fast float %3145, -5.000000e-01
  %3161 = fadd fast float %3147, -5.000000e-01
  %3162 = fmul fast float %3160, %3156
  %3163 = fmul fast float %3161, %3156
  %3164 = fadd fast float %3162, 5.000000e-01
  %3165 = fadd fast float %3163, 5.000000e-01
  %3166 = fmul fast float %3164, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fmul fast float %3165, 2.000000e+00
  %3169 = fadd fast float %3168, -1.000000e+00
  %3170 = fadd fast float %3167, %3169
  %3171 = fmul fast float %3170, 5.000000e-01
  %3172 = fsub fast float %3167, %3169
  %3173 = fmul fast float %3172, 5.000000e-01
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3177 = fsub fast float %3175, %3176
  %3178 = call float @dx.op.dot3.f32(i32 55, float %3171, float %3173, float %3177, float %3171, float %3173, float %3177)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = call float @dx.op.unary.f32(i32 25, float %3178)  ; Rsqrt(value)
  %3180 = fmul fast float %3171, %3179
  %3181 = fmul fast float %3173, %3179
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 67108864
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3202, label %3186

; <label>:3186                                    ; preds = %3134
  %3187 = add i32 %55, 328
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 65535
  %3191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3190)  ; LegacyF16ToF32(value)
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 65535
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = lshr i32 %3189, 16
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = fsub fast float %3159, %3197
  %3199 = fmul fast float %3198, %3191
  %3200 = fadd fast float %3199, %3195
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  br label %3202

; <label>:3202                                    ; preds = %3186, %3134
  %3203 = phi float [ %3201, %3186 ], [ %3159, %3134 ]
  %3204 = call float @dx.op.dot2.f32(i32 54, float %3180, float %3181, float %2738, float %2739)  ; Dot2(ax,ay,bx,by)
  %3205 = call float @dx.op.dot2.f32(i32 54, float %3180, float %3181, float %2740, float %2741)  ; Dot2(ax,ay,bx,by)
  br label %3206

; <label>:3206                                    ; preds = %3202, %3112
  %3207 = phi float [ %3203, %3202 ], [ 0x3FD6666660000000, %3112 ]
  %3208 = phi float [ %3204, %3202 ], [ 0.000000e+00, %3112 ]
  %3209 = phi float [ %3205, %3202 ], [ 0.000000e+00, %3112 ]
  %3210 = phi float [ %3146, %3202 ], [ 1.000000e+00, %3112 ]
  %3211 = add i32 %55, 208
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = lshr i32 %3213, 22
  %3215 = shl nuw nsw i32 %3214, 5
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, 64
  %3220 = icmp eq i32 %3219, 0
  br i1 %3220, label %3254, label %3221

; <label>:3221                                    ; preds = %3206
  %3222 = add i32 %55, 404
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = add i32 %3224, 0
  %3226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %3228, 131072
  %3230 = icmp eq i32 %3229, 0
  %3231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3226, %dx.types.Handle %102, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.ResRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.ResRet.f32 %3231, 2
  %3235 = fmul fast float %584, %3232
  %3236 = fmul fast float %585, %3233
  %3237 = fmul fast float %586, %3234
  br i1 %3230, label %3244, label %3238

; <label>:3238                                    ; preds = %3221
  %3239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.f32 %3239, 0
  %3241 = fmul fast float %3240, %3235
  %3242 = fmul fast float %3240, %3236
  %3243 = fmul fast float %3240, %3237
  br label %3244

; <label>:3244                                    ; preds = %3238, %3221
  %3245 = phi float [ %3241, %3238 ], [ %3235, %3221 ]
  %3246 = phi float [ %3242, %3238 ], [ %3236, %3221 ]
  %3247 = phi float [ %3243, %3238 ], [ %3237, %3221 ]
  %3248 = fmul fast float %3245, %3216
  %3249 = select i1 %252, float %3248, float %3245
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3249, float %3246, float %3247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = select i1 %252, float 0.000000e+00, float %3245
  %3252 = select i1 %252, float %3250, float %3246
  %3253 = select i1 %252, float 0.000000e+00, float %3247
  br label %3254

; <label>:3254                                    ; preds = %3244, %3206
  %3255 = phi float [ %3251, %3244 ], [ 0.000000e+00, %3206 ]
  %3256 = phi float [ %3252, %3244 ], [ 0.000000e+00, %3206 ]
  %3257 = phi float [ %3253, %3244 ], [ 0.000000e+00, %3206 ]
  %3258 = add i32 %55, 144
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = lshr i32 %3260, 8
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fmul fast float %3265, %3266
  %3268 = fadd fast float %3267, %3262
  %3269 = fmul fast float %3268, 0x3F70101020000000
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  br i1 %2726, label %3271, label %3279

; <label>:3271                                    ; preds = %3254
  %3272 = fsub fast float 1.000000e+00, %2907
  %3273 = fmul fast float %3272, %2715
  %3274 = fmul fast float %3272, %2716
  %3275 = fmul fast float %3272, %2717
  %3276 = fmul fast float %3272, %2718
  %3277 = fmul fast float %3272, %2719
  %3278 = fmul fast float %3272, %2720
  br label %3279

; <label>:3279                                    ; preds = %3271, %3254
  %3280 = phi float [ %3273, %3271 ], [ %2715, %3254 ]
  %3281 = phi float [ %3274, %3271 ], [ %2716, %3254 ]
  %3282 = phi float [ %3275, %3271 ], [ %2717, %3254 ]
  %3283 = phi float [ %3276, %3271 ], [ %2718, %3254 ]
  %3284 = phi float [ %3277, %3271 ], [ %2719, %3254 ]
  %3285 = phi float [ %3278, %3271 ], [ %2720, %3254 ]
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %3287, 3
  %3289 = icmp eq i32 %3288, 3
  br i1 %3289, label %3368, label %3290

; <label>:3290                                    ; preds = %3279
  %3291 = and i32 %3287, 16
  %3292 = icmp ne i32 %3291, 0
  %3293 = select i1 %3292, float %2907, float 0.000000e+00
  %3294 = icmp eq i32 %3288, 0
  br i1 %3294, label %3295, label %3323

; <label>:3295                                    ; preds = %3290
  %3296 = and i32 %3287, 64
  %3297 = icmp ne i32 %3296, 0
  %3298 = select i1 %3297, float %2907, float 0.000000e+00
  %3299 = fsub fast float %3127, %3280
  %3300 = fsub fast float %3128, %3281
  %3301 = fsub fast float %3129, %3282
  %3302 = fmul fast float %3293, %3299
  %3303 = fmul fast float %3293, %3300
  %3304 = fmul fast float %3293, %3301
  %3305 = fadd fast float %3302, %3280
  %3306 = fadd fast float %3303, %3281
  %3307 = fadd fast float %3304, %3282
  %3308 = fsub fast float %3113, %2721
  %3309 = fmul fast float %3293, %3308
  %3310 = fadd fast float %3309, %2721
  %3311 = fsub fast float %3255, %3283
  %3312 = fsub fast float %3256, %3284
  %3313 = fsub fast float %3257, %3285
  %3314 = fmul fast float %3298, %3311
  %3315 = fmul fast float %3298, %3312
  %3316 = fmul fast float %3298, %3313
  %3317 = fadd fast float %3314, %3283
  %3318 = fadd fast float %3315, %3284
  %3319 = fadd fast float %3316, %3285
  %3320 = fsub fast float %3270, %2724
  %3321 = fmul fast float %3293, %3320
  %3322 = fadd fast float %3321, %2724
  br label %3368

; <label>:3323                                    ; preds = %3290
  %3324 = icmp eq i32 %3288, 1
  br i1 %3324, label %3325, label %3338

; <label>:3325                                    ; preds = %3323
  %3326 = fadd fast float %3127, -1.000000e+00
  %3327 = fadd fast float %3128, -1.000000e+00
  %3328 = fadd fast float %3129, -1.000000e+00
  %3329 = fmul fast float %3293, %3326
  %3330 = fmul fast float %3293, %3327
  %3331 = fmul fast float %3293, %3328
  %3332 = fadd fast float %3329, 1.000000e+00
  %3333 = fadd fast float %3330, 1.000000e+00
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fmul fast float %3332, %3280
  %3336 = fmul fast float %3333, %3281
  %3337 = fmul fast float %3334, %3282
  br label %3368

; <label>:3338                                    ; preds = %3323
  %3339 = icmp eq i32 %3288, 2
  br i1 %3339, label %3340, label %3368

; <label>:3340                                    ; preds = %3338
  %3341 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3342 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3343 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fadd fast float %3342, -5.000000e-01
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fmul fast float %3344, %3293
  %3348 = fmul fast float %3345, %3293
  %3349 = fmul fast float %3346, %3293
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = fadd fast float %3348, 5.000000e-01
  %3352 = fadd fast float %3349, 5.000000e-01
  %3353 = fmul fast float %3350, 2.000000e+00
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = fmul fast float %3354, %3280
  %3356 = fadd fast float %3355, %3353
  %3357 = fmul fast float %3356, %3280
  %3358 = fmul fast float %3351, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3281
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3281
  %3363 = fmul fast float %3352, 2.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %3282
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3282
  br label %3368

; <label>:3368                                    ; preds = %3340, %3338, %3325, %3295, %3279
  %3369 = phi float [ %3280, %3279 ], [ %3357, %3340 ], [ %3280, %3338 ], [ %3335, %3325 ], [ %3305, %3295 ]
  %3370 = phi float [ %3281, %3279 ], [ %3362, %3340 ], [ %3281, %3338 ], [ %3336, %3325 ], [ %3306, %3295 ]
  %3371 = phi float [ %3282, %3279 ], [ %3367, %3340 ], [ %3282, %3338 ], [ %3337, %3325 ], [ %3307, %3295 ]
  %3372 = phi float [ %3283, %3279 ], [ %3283, %3340 ], [ %3283, %3338 ], [ %3283, %3325 ], [ %3317, %3295 ]
  %3373 = phi float [ %3284, %3279 ], [ %3284, %3340 ], [ %3284, %3338 ], [ %3284, %3325 ], [ %3318, %3295 ]
  %3374 = phi float [ %3285, %3279 ], [ %3285, %3340 ], [ %3285, %3338 ], [ %3285, %3325 ], [ %3319, %3295 ]
  %3375 = phi float [ %2721, %3279 ], [ %2721, %3340 ], [ %2721, %3338 ], [ %2721, %3325 ], [ %3310, %3295 ]
  %3376 = phi float [ %2724, %3279 ], [ %2724, %3340 ], [ %2724, %3338 ], [ %2724, %3325 ], [ %3322, %3295 ]
  %3377 = and i32 %3287, 12
  %3378 = icmp eq i32 %3377, 12
  br i1 %3378, label %3451, label %3379

; <label>:3379                                    ; preds = %3368
  %3380 = and i32 %3287, 2097184
  %3381 = icmp eq i32 %3380, 2097184
  %3382 = select i1 %3381, float %2907, float 0.000000e+00
  %3383 = and i32 %3287, 4194336
  %3384 = icmp eq i32 %3383, 4194336
  %3385 = select i1 %3384, float %2907, float 0.000000e+00
  %3386 = and i32 %3287, 8388640
  %3387 = icmp eq i32 %3386, 8388640
  %3388 = select i1 %3387, float %2907, float 0.000000e+00
  %3389 = icmp eq i32 %3377, 0
  br i1 %3389, label %3390, label %3403

; <label>:3390                                    ; preds = %3379
  %3391 = fsub fast float %3208, %2713
  %3392 = fsub fast float %3209, %2714
  %3393 = fmul fast float %3382, %3391
  %3394 = fmul fast float %3382, %3392
  %3395 = fadd fast float %3393, %2713
  %3396 = fadd fast float %3394, %2714
  %3397 = fsub fast float %3210, %2723
  %3398 = fmul fast float %3385, %3397
  %3399 = fadd fast float %3398, %2723
  %3400 = fsub fast float %3207, %2722
  %3401 = fmul fast float %3388, %3400
  %3402 = fadd fast float %3401, %2722
  br label %3451

; <label>:3403                                    ; preds = %3379
  %3404 = icmp eq i32 %3377, 4
  br i1 %3404, label %3405, label %3437

; <label>:3405                                    ; preds = %3403
  %3406 = fmul fast float %3382, %3208
  %3407 = fmul fast float %3382, %3209
  %3408 = fadd fast float %3406, %2713
  %3409 = fadd fast float %3407, %2714
  %3410 = call float @dx.op.binary.f32(i32 36, float %2723, float %3210)  ; FMin(a,b)
  %3411 = fsub fast float %3410, %2723
  %3412 = fmul fast float %3411, %3385
  %3413 = fadd fast float %3412, %2723
  %3414 = fadd fast float %3207, %2722
  %3415 = fmul fast float %3414, 0x3FF337FAE0000000
  %3416 = fmul fast float %2722, %2722
  %3417 = fmul fast float %3207, %3207
  %3418 = fadd fast float %3417, %3416
  %3419 = fmul fast float %3418, 0x3FE5152B00000000
  %3420 = fmul fast float %2722, 0xBFCC1F85E0000000
  %3421 = fmul fast float %3420, %3207
  %3422 = fadd fast float %3421, 0xBFE1363700000000
  %3423 = fadd fast float %3422, %3415
  %3424 = fsub fast float %3423, %3419
  %3425 = fmul fast float %3414, 0x3FBA6F0D00000000
  %3426 = fmul fast float %3418, 0x3FD0432880000000
  %3427 = fmul fast float %2722, 0xBFEF110800000000
  %3428 = fmul fast float %3427, %3207
  %3429 = fadd fast float %3428, 1.000000e+00
  %3430 = fsub fast float %3429, %3425
  %3431 = fadd fast float %3430, %3426
  %3432 = fdiv fast float %3424, %3431
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3434 = fsub fast float %3433, %2722
  %3435 = fmul fast float %3434, %3388
  %3436 = fadd fast float %3435, %2722
  br label %3451

; <label>:3437                                    ; preds = %3403
  %3438 = icmp eq i32 %3377, 8
  br i1 %3438, label %3439, label %3451

; <label>:3439                                    ; preds = %3437
  %3440 = fmul fast float %3382, %3208
  %3441 = fmul fast float %3382, %3209
  %3442 = fadd fast float %3440, %2713
  %3443 = fadd fast float %3441, %2714
  %3444 = call float @dx.op.binary.f32(i32 36, float %2723, float %3210)  ; FMin(a,b)
  %3445 = fsub fast float %3444, %2723
  %3446 = fmul fast float %3445, %3385
  %3447 = fadd fast float %3446, %2723
  %3448 = fsub fast float %3207, %2722
  %3449 = fmul fast float %3388, %3448
  %3450 = fadd fast float %3449, %2722
  br label %3451

; <label>:3451                                    ; preds = %3439, %3437, %3405, %3390, %3368, %2906, %2725, %2712
  %3452 = phi float [ %2713, %3368 ], [ %2713, %2906 ], [ %2713, %2712 ], [ %2713, %2725 ], [ %3395, %3390 ], [ %3408, %3405 ], [ %2713, %3437 ], [ %3442, %3439 ]
  %3453 = phi float [ %2714, %3368 ], [ %2714, %2906 ], [ %2714, %2712 ], [ %2714, %2725 ], [ %3396, %3390 ], [ %3409, %3405 ], [ %2714, %3437 ], [ %3443, %3439 ]
  %3454 = phi float [ %3369, %3368 ], [ %2715, %2906 ], [ %2715, %2712 ], [ %2715, %2725 ], [ %3369, %3390 ], [ %3369, %3405 ], [ %3369, %3437 ], [ %3369, %3439 ]
  %3455 = phi float [ %3370, %3368 ], [ %2716, %2906 ], [ %2716, %2712 ], [ %2716, %2725 ], [ %3370, %3390 ], [ %3370, %3405 ], [ %3370, %3437 ], [ %3370, %3439 ]
  %3456 = phi float [ %3371, %3368 ], [ %2717, %2906 ], [ %2717, %2712 ], [ %2717, %2725 ], [ %3371, %3390 ], [ %3371, %3405 ], [ %3371, %3437 ], [ %3371, %3439 ]
  %3457 = phi float [ %3372, %3368 ], [ %2718, %2906 ], [ %2718, %2712 ], [ %2718, %2725 ], [ %3372, %3390 ], [ %3372, %3405 ], [ %3372, %3437 ], [ %3372, %3439 ]
  %3458 = phi float [ %3373, %3368 ], [ %2719, %2906 ], [ %2719, %2712 ], [ %2719, %2725 ], [ %3373, %3390 ], [ %3373, %3405 ], [ %3373, %3437 ], [ %3373, %3439 ]
  %3459 = phi float [ %3374, %3368 ], [ %2720, %2906 ], [ %2720, %2712 ], [ %2720, %2725 ], [ %3374, %3390 ], [ %3374, %3405 ], [ %3374, %3437 ], [ %3374, %3439 ]
  %3460 = phi float [ %3375, %3368 ], [ %2721, %2906 ], [ %2721, %2712 ], [ %2721, %2725 ], [ %3375, %3390 ], [ %3375, %3405 ], [ %3375, %3437 ], [ %3375, %3439 ]
  %3461 = phi float [ %2722, %3368 ], [ %2722, %2906 ], [ %2722, %2712 ], [ %2722, %2725 ], [ %3402, %3390 ], [ %3436, %3405 ], [ %2722, %3437 ], [ %3450, %3439 ]
  %3462 = phi float [ %2723, %3368 ], [ %2723, %2906 ], [ %2723, %2712 ], [ %2723, %2725 ], [ %3399, %3390 ], [ %3413, %3405 ], [ %2723, %3437 ], [ %3447, %3439 ]
  %3463 = phi float [ %3376, %3368 ], [ %2724, %2906 ], [ %2724, %2712 ], [ %2724, %2725 ], [ %3376, %3390 ], [ %3376, %3405 ], [ %3376, %3437 ], [ %3376, %3439 ]
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 0
  %3466 = call float @dx.op.dot2.f32(i32 54, float %3452, float %3453, float %3452, float %3453)  ; Dot2(ax,ay,bx,by)
  %3467 = fmul fast float %3466, 0x3FE3333340000000
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3468, float %3452, float %3453, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 25, float %3469)  ; Rsqrt(value)
  %3471 = fmul fast float %3470, %3452
  %3472 = fmul fast float %3470, %3453
  %3473 = fmul fast float %3468, %3470
  %3474 = fmul fast float %3473, %113
  %3475 = fmul fast float %3473, %114
  %3476 = fmul fast float %3473, %115
  %3477 = fmul fast float %3471, %81
  %3478 = fmul fast float %3471, %82
  %3479 = fmul fast float %3471, %83
  %3480 = fadd fast float %3474, %3477
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fmul fast float %125, %3472
  %3484 = fmul fast float %126, %3472
  %3485 = fmul fast float %127, %3472
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3486, float %3487, float %3488, float %3486, float %3487, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3486, %3490
  %3492 = fmul fast float %3487, %3490
  %3493 = fmul fast float %3488, %3490
  %3494 = icmp eq i32 %57, 65535
  br i1 %3494, label %4009, label %3495

; <label>:3495                                    ; preds = %3451
  %3496 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3497 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3498 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3499 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3500 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3501 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3502 = fadd fast float %3496, %58
  %3503 = fadd fast float %3497, %59
  %3504 = fadd fast float %3498, %60
  %3505 = fadd fast float %3499, %58
  %3506 = fadd fast float %3500, %59
  %3507 = fadd fast float %3501, %60
  %3508 = mul i32 %57, 48
  %3509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3513 = add i32 %3508, 16
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = add i32 %3508, 32
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3524 = bitcast float %3523 to i32
  %3525 = fmul fast float %3510, %58
  %3526 = fmul fast float %3511, %59
  %3527 = fmul fast float %3512, %60
  %3528 = fsub fast float %3525, %3515
  %3529 = fsub fast float %3526, %3516
  %3530 = fsub fast float %3527, %3517
  %3531 = call float @dx.op.unary.f32(i32 7, float %3528)  ; Saturate(value)
  %3532 = call float @dx.op.unary.f32(i32 7, float %3529)  ; Saturate(value)
  %3533 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3534 = fmul fast float %3531, %3520
  %3535 = fmul fast float %3532, %3521
  %3536 = fmul fast float %3533, %3522
  %3537 = fadd fast float %3520, -1.000000e+00
  %3538 = fadd fast float %3521, -1.000000e+00
  %3539 = fadd fast float %3522, -1.000000e+00
  %3540 = call float @dx.op.unary.f32(i32 27, float %3534)  ; Round_ni(value)
  %3541 = call float @dx.op.unary.f32(i32 27, float %3535)  ; Round_ni(value)
  %3542 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3543 = call float @dx.op.binary.f32(i32 36, float %3540, float %3537)  ; FMin(a,b)
  %3544 = call float @dx.op.binary.f32(i32 36, float %3541, float %3538)  ; FMin(a,b)
  %3545 = call float @dx.op.binary.f32(i32 36, float %3542, float %3539)  ; FMin(a,b)
  %3546 = fmul fast float %3545, %3521
  %3547 = fadd fast float %3546, %3544
  %3548 = fmul fast float %3547, %3520
  %3549 = fadd fast float %3548, %3543
  %3550 = fptosi float %3549 to i32
  %3551 = add nsw i32 %3550, %3524
  %3552 = shl nsw i32 %3551, 2
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = lshr i32 %3554, 16
  %3556 = icmp eq i32 %3555, 0
  br i1 %3556, label %3978, label %3557

; <label>:3557                                    ; preds = %3495
  br label %3558

; <label>:3558                                    ; preds = %3679, %3557
  %3559 = phi i32 [ %3581, %3679 ], [ %3555, %3557 ]
  %3560 = phi float [ %3680, %3679 ], [ 0.000000e+00, %3557 ]
  %3561 = phi float [ %3681, %3679 ], [ %3465, %3557 ]
  %3562 = phi float [ %3682, %3679 ], [ %3463, %3557 ]
  %3563 = phi float [ %3683, %3679 ], [ 0.000000e+00, %3557 ]
  %3564 = phi float [ %3684, %3679 ], [ 0.000000e+00, %3557 ]
  %3565 = phi float [ %3685, %3679 ], [ %3457, %3557 ]
  %3566 = phi float [ %3686, %3679 ], [ %3458, %3557 ]
  %3567 = phi float [ %3687, %3679 ], [ %3459, %3557 ]
  %3568 = phi float [ %3688, %3679 ], [ %3491, %3557 ]
  %3569 = phi float [ %3689, %3679 ], [ %3492, %3557 ]
  %3570 = phi float [ %3690, %3679 ], [ %3493, %3557 ]
  %3571 = phi float [ %3691, %3679 ], [ %3462, %3557 ]
  %3572 = phi float [ %3692, %3679 ], [ %3461, %3557 ]
  %3573 = phi float [ %3693, %3679 ], [ 0.000000e+00, %3557 ]
  %3574 = phi float [ %3694, %3679 ], [ %3460, %3557 ]
  %3575 = phi float [ %3695, %3679 ], [ %3454, %3557 ]
  %3576 = phi float [ %3696, %3679 ], [ %3455, %3557 ]
  %3577 = phi float [ %3697, %3679 ], [ %3456, %3557 ]
  %3578 = shl nuw nsw i32 %3559, 2
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = lshr i32 %3580, 16
  %3582 = shl i32 %3580, 8
  %3583 = and i32 %3582, 16776960
  %3584 = or i32 %3583, 48
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = or i32 %3583, 64
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.i32 %3590, 1
  %3593 = or i32 %3583, 80
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3597 = or i32 %3583, 96
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = or i32 %3583, 112
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3606 = or i32 %3583, 128
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = or i32 %3583, 144
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3583, 160
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = or i32 %3583, 192
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = or i32 %3583, 208
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = or i32 %3583, 248
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3640 = or i32 %3583, 16
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = or i32 %3583, 32
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = call float @dx.op.dot4.f32(i32 56, float %3649, float %3650, float %3651, float %3652, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3654 = call float @dx.op.unary.f32(i32 27, float %3639)  ; Round_ni(value)
  %3655 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3656 = call float @dx.op.unary.f32(i32 27, float %3646)  ; Round_ni(value)
  %3657 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3658 = call float @dx.op.unary.f32(i32 6, float %3653)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 27, float %3658)  ; Round_ni(value)
  %3660 = fadd fast float %3657, %3655
  %3661 = fadd fast float %3660, %3659
  %3662 = fcmp fast oeq float %3661, 0.000000e+00
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3502, float %3503, float %3504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3502, float %3503, float %3504, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3635, float %3636, float %3637, float %3638, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3505, float %3506, float %3507, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = fsub fast float %3663, %3639
  %3668 = fsub fast float %3665, %3639
  %3669 = fsub fast float %3664, %3646
  %3670 = fsub fast float %3666, %3646
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3674 = fadd fast float %3673, %3671
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3677 = fcmp fast ogt float %3675, %3676
  %3678 = and i1 %3662, %3677
  br i1 %3678, label %3699, label %3679

; <label>:3679                                    ; preds = %3964, %3782, %3699, %3558
  %3680 = phi float [ %3560, %3699 ], [ %3785, %3782 ], [ %3785, %3964 ], [ %3560, %3558 ]
  %3681 = phi float [ %3561, %3699 ], [ %3561, %3782 ], [ %3939, %3964 ], [ %3561, %3558 ]
  %3682 = phi float [ %3562, %3699 ], [ %3562, %3782 ], [ %3937, %3964 ], [ %3562, %3558 ]
  %3683 = phi float [ %3563, %3699 ], [ %3563, %3782 ], [ %3909, %3964 ], [ %3563, %3558 ]
  %3684 = phi float [ %3564, %3699 ], [ %3564, %3782 ], [ %3907, %3964 ], [ %3564, %3558 ]
  %3685 = phi float [ %3565, %3699 ], [ %3565, %3782 ], [ %3974, %3964 ], [ %3565, %3558 ]
  %3686 = phi float [ %3566, %3699 ], [ %3566, %3782 ], [ %3975, %3964 ], [ %3566, %3558 ]
  %3687 = phi float [ %3567, %3699 ], [ %3567, %3782 ], [ %3976, %3964 ], [ %3567, %3558 ]
  %3688 = phi float [ %3568, %3699 ], [ %3568, %3782 ], [ %3888, %3964 ], [ %3568, %3558 ]
  %3689 = phi float [ %3569, %3699 ], [ %3569, %3782 ], [ %3889, %3964 ], [ %3569, %3558 ]
  %3690 = phi float [ %3570, %3699 ], [ %3570, %3782 ], [ %3890, %3964 ], [ %3570, %3558 ]
  %3691 = phi float [ %3571, %3699 ], [ %3571, %3782 ], [ %3917, %3964 ], [ %3571, %3558 ]
  %3692 = phi float [ %3572, %3699 ], [ %3572, %3782 ], [ %3914, %3964 ], [ %3572, %3558 ]
  %3693 = phi float [ %3573, %3699 ], [ %3573, %3782 ], [ %3911, %3964 ], [ %3573, %3558 ]
  %3694 = phi float [ %3574, %3699 ], [ %3574, %3782 ], [ %3905, %3964 ], [ %3574, %3558 ]
  %3695 = phi float [ %3575, %3699 ], [ %3575, %3782 ], [ %3900, %3964 ], [ %3575, %3558 ]
  %3696 = phi float [ %3576, %3699 ], [ %3576, %3782 ], [ %3901, %3964 ], [ %3576, %3558 ]
  %3697 = phi float [ %3577, %3699 ], [ %3577, %3782 ], [ %3902, %3964 ], [ %3577, %3558 ]
  %3698 = icmp eq i32 %3581, 0
  br i1 %3698, label %3977, label %3558

; <label>:3699                                    ; preds = %3558
  %3700 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3701 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3702 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3706 = extractvalue %dx.types.ResRet.i32 %3590, 3
  %3707 = extractvalue %dx.types.ResRet.i32 %3590, 2
  %3708 = bitcast float %3700 to i32
  %3709 = add i32 %3706, 0
  %3710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3710, %dx.types.Handle %3711, float %3639, float %3646, float undef, float undef, i32 0, i32 0, i32 undef, float %3667, float %3669, float undef, float %3668, float %3670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = fmul fast float %3713, %3705
  %3715 = fadd fast float %3714, %3704
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = fmul fast float %3639, %3599
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3646, float %3717)  ; FMad(a,b,c)
  %3719 = fadd fast float %3718, %3703
  %3720 = fmul fast float %3639, %3601
  %3721 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3646, float %3720)  ; FMad(a,b,c)
  %3722 = fadd fast float %3721, %3702
  %3723 = fmul fast float %3667, %3599
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3669, float %3723)  ; FMad(a,b,c)
  %3725 = fmul fast float %3667, %3601
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3669, float %3725)  ; FMad(a,b,c)
  %3727 = fmul fast float %3668, %3599
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3670, float %3727)  ; FMad(a,b,c)
  %3729 = fmul fast float %3668, %3601
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3670, float %3729)  ; FMad(a,b,c)
  %3731 = add i32 %3707, 0
  %3732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3731, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3732, %dx.types.Handle %3711, float %3719, float %3722, float undef, float undef, i32 0, i32 0, i32 undef, float %3724, float %3726, float undef, float %3728, float %3730, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = and i32 %3708, 1024
  %3736 = icmp ne i32 %3735, 0
  %3737 = fcmp fast ogt float %3734, 0x3FE0101020000000
  %3738 = uitofp i1 %3737 to float
  %3739 = select i1 %3736, float %3738, float %3734
  %3740 = and i32 %3708, 8192
  %3741 = icmp ne i32 %3740, 0
  %3742 = select i1 %3741, float %3701, float 1.000000e+00
  %3743 = fmul fast float %3639, 2.000000e+00
  %3744 = fadd fast float %3743, -1.000000e+00
  %3745 = call float @dx.op.unary.f32(i32 6, float %3744)  ; FAbs(value)
  %3746 = fmul fast float %3745, %3632
  %3747 = fsub fast float %3746, %3632
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fmul fast float %3646, 2.000000e+00
  %3750 = fadd fast float %3749, -1.000000e+00
  %3751 = call float @dx.op.unary.f32(i32 6, float %3750)  ; FAbs(value)
  %3752 = fmul fast float %3751, %3633
  %3753 = fsub fast float %3752, %3633
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = fmul fast float %3658, %3595
  %3756 = fsub fast float %3755, %3595
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = fmul fast float %3716, %3742
  %3759 = fmul fast float %3758, %3713
  %3760 = fmul fast float %3759, %3748
  %3761 = fmul fast float %3760, %3739
  %3762 = fmul fast float %3761, %3754
  %3763 = fmul fast float %3762, %3757
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3767 = fsub fast float %3675, %3766
  %3768 = fmul fast float %3767, %3765
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fmul fast float %3763, %3596
  %3771 = fadd fast float %3763, %3596
  %3772 = fmul fast float %3771, %3605
  %3773 = fsub fast float %3772, %3605
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = and i32 %3708, 128
  %3776 = icmp ne i32 %3775, 0
  %3777 = select i1 %3776, float %3774, float %3770
  %3778 = fmul fast float %3777, %3769
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = fcmp fast ugt float %3778, %3780
  br i1 %3781, label %3782, label %3679

; <label>:3782                                    ; preds = %3699
  %3783 = select i1 %3741, float %3778, float 0.000000e+00
  %3784 = fadd fast float %3783, %3560
  %3785 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  br i1 %3741, label %3679, label %3786

; <label>:3786                                    ; preds = %3782
  %3787 = and i32 %3708, 4
  %3788 = and i32 %3708, 8
  %3789 = add i32 %3591, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3792 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3790, %dx.types.Handle %3791, float %3719, float %3722, float undef, float undef, i32 0, i32 0, i32 undef, float %3724, float %3726, float undef, float %3728, float %3730, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3792, 3
  %3797 = bitcast float %3617 to i32
  %3798 = and i32 %3797, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = lshr i32 %3797, 8
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = fmul fast float %3796, %3799
  %3804 = fadd fast float %3803, %3802
  %3805 = fmul fast float %3804, 0x3F70101000000000
  %3806 = add i32 %3592, 0
  %3807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3807, %dx.types.Handle %3791, float %3719, float %3722, float undef, float undef, i32 0, i32 0, i32 undef, float %3724, float %3726, float undef, float %3728, float %3730, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3813 = bitcast float %3611 to i32
  %3814 = and i32 %3813, 255
  %3815 = uitofp i32 %3814 to float
  %3816 = lshr i32 %3813, 8
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = lshr i32 %3813, 16
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = fmul fast float %3821, 0x3F70101000000000
  %3823 = fmul fast float %3809, %3815
  %3824 = fadd fast float %3823, %3818
  %3825 = fmul fast float %3824, 0x3F70101000000000
  %3826 = fadd fast float %3810, -5.000000e-01
  %3827 = fadd fast float %3812, -5.000000e-01
  %3828 = fmul fast float %3826, %3822
  %3829 = fmul fast float %3827, %3822
  %3830 = fadd fast float %3828, 5.000000e-01
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fmul fast float %3793, %3620
  %3833 = fmul fast float %3794, %3621
  %3834 = fmul fast float %3795, %3622
  %3835 = fmul fast float %3830, 2.000000e+00
  %3836 = fadd fast float %3835, -1.000000e+00
  %3837 = fmul fast float %3831, 2.000000e+00
  %3838 = fadd fast float %3837, -1.000000e+00
  %3839 = fadd fast float %3836, %3838
  %3840 = fmul fast float %3839, 5.000000e-01
  %3841 = fsub fast float %3836, %3838
  %3842 = fmul fast float %3841, 5.000000e-01
  %3843 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3844 = fsub fast float 1.000000e+00, %3843
  %3845 = call float @dx.op.unary.f32(i32 6, float %3842)  ; FAbs(value)
  %3846 = fsub fast float %3844, %3845
  %3847 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3842, float %3846, float %3840, float %3842, float %3846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3848 = call float @dx.op.unary.f32(i32 25, float %3847)  ; Rsqrt(value)
  %3849 = fmul fast float %3840, %3848
  %3850 = fmul fast float %3842, %3848
  %3851 = fmul fast float %3848, %3846
  %3852 = fmul fast float %3851, %3586
  %3853 = fmul fast float %3851, %3587
  %3854 = fmul fast float %3851, %3588
  %3855 = fmul fast float %3849, %3608
  %3856 = fmul fast float %3849, %3609
  %3857 = fmul fast float %3849, %3610
  %3858 = fadd fast float %3855, %3852
  %3859 = fadd fast float %3856, %3853
  %3860 = fadd fast float %3857, %3854
  %3861 = fmul fast float %3850, %3614
  %3862 = fmul fast float %3850, %3615
  %3863 = fmul fast float %3850, %3616
  %3864 = fadd fast float %3858, %3861
  %3865 = fadd fast float %3859, %3862
  %3866 = fadd fast float %3860, %3863
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3864, float %3865, float %3866, float %3864, float %3865, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.unary.f32(i32 25, float %3867)  ; Rsqrt(value)
  %3869 = fmul fast float %3864, %3868
  %3870 = fmul fast float %3865, %3868
  %3871 = fmul fast float %3866, %3868
  %3872 = icmp ne i32 %3788, 0
  %3873 = select i1 %3872, float 1.000000e+00, float 0.000000e+00
  %3874 = fmul fast float %3778, %3873
  %3875 = and i32 %3708, 1
  %3876 = icmp eq i32 %3875, 0
  br i1 %3876, label %3877, label %3881

; <label>:3877                                    ; preds = %3786
  %3878 = fsub fast float %3869, %3568
  %3879 = fsub fast float %3870, %3569
  %3880 = fsub fast float %3871, %3570
  br label %3881

; <label>:3881                                    ; preds = %3877, %3786
  %3882 = phi float [ %3878, %3877 ], [ %3869, %3786 ]
  %3883 = phi float [ %3879, %3877 ], [ %3870, %3786 ]
  %3884 = phi float [ %3880, %3877 ], [ %3871, %3786 ]
  %3885 = fmul float %3884, %3874
  %3886 = fmul float %3883, %3874
  %3887 = fmul float %3882, %3874
  %3888 = fadd fast float %3887, %3568
  %3889 = fadd fast float %3886, %3569
  %3890 = fadd fast float %3885, %3570
  %3891 = icmp ne i32 %3787, 0
  %3892 = select i1 %3891, float 1.000000e+00, float 0.000000e+00
  %3893 = fmul fast float %3778, %3892
  %3894 = fsub fast float %3832, %3575
  %3895 = fsub fast float %3833, %3576
  %3896 = fsub fast float %3834, %3577
  %3897 = fmul fast float %3894, %3893
  %3898 = fmul fast float %3895, %3893
  %3899 = fmul fast float %3896, %3893
  %3900 = fadd fast float %3897, %3575
  %3901 = fadd fast float %3898, %3576
  %3902 = fadd fast float %3899, %3577
  %3903 = fsub fast float %3805, %3574
  %3904 = fmul fast float %3903, %3893
  %3905 = fadd fast float %3904, %3574
  %3906 = fmul fast float %3893, %3564
  %3907 = fsub fast float %3564, %3906
  %3908 = fmul fast float %3893, %3563
  %3909 = fsub fast float %3563, %3908
  %3910 = fadd fast float %3778, %3573
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = fsub fast float %3825, %3572
  %3913 = fmul fast float %3912, %3874
  %3914 = fadd fast float %3913, %3572
  %3915 = fsub fast float %3811, %3571
  %3916 = fmul fast float %3915, %3874
  %3917 = fadd fast float %3916, %3571
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3833, float %3834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = fmul fast float %3921, %3918
  %3923 = fadd fast float %3922, %3920
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = bitcast float %3623 to i32
  %3926 = and i32 %3925, 65535
  %3927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3926)  ; LegacyF16ToF32(value)
  %3928 = lshr i32 %3925, 16
  %3929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3928)  ; LegacyF16ToF32(value)
  %3930 = fcmp fast oge float %3927, 0.000000e+00
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = select i1 %3930, float %3927, float %3932
  %3934 = fadd fast float %3933, %3929
  %3935 = fsub fast float %3924, %3562
  %3936 = fmul fast float %3935, %3778
  %3937 = fadd fast float %3936, %3562
  %3938 = fmul fast float %3934, %3778
  %3939 = call float @dx.op.binary.f32(i32 35, float %3561, float %3938)  ; FMax(a,b)
  %3940 = and i32 %3708, 16
  %3941 = icmp eq i32 %3940, 0
  br i1 %3941, label %3964, label %3942

; <label>:3942                                    ; preds = %3881
  %3943 = bitcast float %3629 to i32
  %3944 = add i32 %3626, 0
  %3945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3945, %dx.types.Handle %3791, float %3719, float %3722, float undef, float undef, i32 0, i32 0, i32 undef, float %3724, float %3726, float undef, float %3728, float %3730, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = and i32 %3943, 65535
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fmul fast float %3947, %3620
  %3953 = fmul fast float %3948, %3621
  %3954 = fmul fast float %3949, %3622
  %3955 = and i32 %3708, 16384
  %3956 = icmp ne i32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = select i1 %3956, float %3958, float 1.000000e+00
  %3960 = fmul fast float %3959, %3951
  %3961 = fmul fast float %3952, %3960
  %3962 = fmul fast float %3953, %3960
  %3963 = fmul fast float %3954, %3960
  br label %3964

; <label>:3964                                    ; preds = %3942, %3881
  %3965 = phi float [ %3961, %3942 ], [ 0.000000e+00, %3881 ]
  %3966 = phi float [ %3962, %3942 ], [ 0.000000e+00, %3881 ]
  %3967 = phi float [ %3963, %3942 ], [ 0.000000e+00, %3881 ]
  %3968 = fsub fast float %3965, %3565
  %3969 = fsub fast float %3966, %3566
  %3970 = fsub fast float %3967, %3567
  %3971 = fmul fast float %3968, %3778
  %3972 = fmul fast float %3969, %3778
  %3973 = fmul fast float %3970, %3778
  %3974 = fadd fast float %3971, %3565
  %3975 = fadd fast float %3972, %3566
  %3976 = fadd fast float %3973, %3567
  br label %3679

; <label>:3977                                    ; preds = %3679
  br label %3978

; <label>:3978                                    ; preds = %3977, %3495
  %3979 = phi float [ 0.000000e+00, %3495 ], [ %3680, %3977 ]
  %3980 = phi float [ %3465, %3495 ], [ %3681, %3977 ]
  %3981 = phi float [ %3463, %3495 ], [ %3682, %3977 ]
  %3982 = phi float [ 0.000000e+00, %3495 ], [ %3683, %3977 ]
  %3983 = phi float [ 0.000000e+00, %3495 ], [ %3684, %3977 ]
  %3984 = phi float [ %3457, %3495 ], [ %3685, %3977 ]
  %3985 = phi float [ %3458, %3495 ], [ %3686, %3977 ]
  %3986 = phi float [ %3459, %3495 ], [ %3687, %3977 ]
  %3987 = phi float [ %3491, %3495 ], [ %3688, %3977 ]
  %3988 = phi float [ %3492, %3495 ], [ %3689, %3977 ]
  %3989 = phi float [ %3493, %3495 ], [ %3690, %3977 ]
  %3990 = phi float [ %3462, %3495 ], [ %3691, %3977 ]
  %3991 = phi float [ %3461, %3495 ], [ %3692, %3977 ]
  %3992 = phi float [ 0.000000e+00, %3495 ], [ %3693, %3977 ]
  %3993 = phi float [ %3460, %3495 ], [ %3694, %3977 ]
  %3994 = phi float [ %3454, %3495 ], [ %3695, %3977 ]
  %3995 = phi float [ %3455, %3495 ], [ %3696, %3977 ]
  %3996 = phi float [ %3456, %3495 ], [ %3697, %3977 ]
  %3997 = call float @dx.op.dot3.f32(i32 55, float %3987, float %3988, float %3989, float %3987, float %3988, float %3989)  ; Dot3(ax,ay,az,bx,by,bz)
  %3998 = call float @dx.op.unary.f32(i32 25, float %3997)  ; Rsqrt(value)
  %3999 = fmul fast float %3998, %3987
  %4000 = fmul fast float %3998, %3988
  %4001 = fmul fast float %3998, %3989
  %4002 = fadd fast float %3992, %1243
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float %3999, float %4000, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %4005, %3999
  %4007 = fmul fast float %4005, %4000
  %4008 = fmul fast float %4005, %4001
  br label %4009

; <label>:4009                                    ; preds = %3978, %3451
  %4010 = phi float [ %4006, %3978 ], [ %3491, %3451 ]
  %4011 = phi float [ %4007, %3978 ], [ %3492, %3451 ]
  %4012 = phi float [ %4008, %3978 ], [ %3493, %3451 ]
  %4013 = phi float [ %3994, %3978 ], [ %3454, %3451 ]
  %4014 = phi float [ %3995, %3978 ], [ %3455, %3451 ]
  %4015 = phi float [ %3996, %3978 ], [ %3456, %3451 ]
  %4016 = phi float [ %3984, %3978 ], [ %3457, %3451 ]
  %4017 = phi float [ %3985, %3978 ], [ %3458, %3451 ]
  %4018 = phi float [ %3986, %3978 ], [ %3459, %3451 ]
  %4019 = phi float [ %3993, %3978 ], [ %3460, %3451 ]
  %4020 = phi float [ %4003, %3978 ], [ %1243, %3451 ]
  %4021 = phi float [ %3991, %3978 ], [ %3461, %3451 ]
  %4022 = phi float [ %3990, %3978 ], [ %3462, %3451 ]
  %4023 = phi float [ %3983, %3978 ], [ 0.000000e+00, %3451 ]
  %4024 = phi float [ %3982, %3978 ], [ 0.000000e+00, %3451 ]
  %4025 = phi float [ %3979, %3978 ], [ 0.000000e+00, %3451 ]
  %4026 = phi float [ %3980, %3978 ], [ %3465, %3451 ]
  %4027 = phi float [ %3981, %3978 ], [ %3463, %3451 ]
  %4028 = fadd fast float %4019, 0xBFB99999A0000000
  %4029 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4030 = fmul fast float %4029, 0x3FF1C71C80000000
  %4031 = call float @dx.op.binary.f32(i32 36, float %4019, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4032 = fsub fast float 1.000000e+00, %4030
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fmul fast float %4033, %4013
  %4035 = fmul fast float %4033, %4014
  %4036 = fmul fast float %4033, %4015
  %4037 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = fmul fast float %4030, %4013
  %4041 = fmul fast float %4030, %4014
  %4042 = fmul fast float %4030, %4015
  %4043 = fadd fast float %4040, %4031
  %4044 = fadd fast float %4041, %4031
  %4045 = fadd fast float %4042, %4031
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.i32 %4050, 3
  %4052 = and i32 %4051, 8
  %4053 = icmp ne i32 %4052, 0
  %4054 = call float @dx.op.binary.f32(i32 35, float %4037, float %4013)  ; FMax(a,b)
  %4055 = call float @dx.op.binary.f32(i32 35, float %4038, float %4013)  ; FMax(a,b)
  %4056 = call float @dx.op.binary.f32(i32 35, float %4039, float %4013)  ; FMax(a,b)
  %4057 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4038, float %4039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = select i1 %252, float %4013, float %4037
  %4059 = select i1 %252, float %4057, float %4038
  %4060 = select i1 %252, float 1.000000e+00, float %4039
  %4061 = select i1 %4053, float %4054, float %4058
  %4062 = select i1 %4053, float %4055, float %4059
  %4063 = select i1 %4053, float %4056, float %4060
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4068 = fadd fast float %4065, %193
  %4069 = fadd fast float %4066, %194
  %4070 = fadd fast float %4067, %195
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = fsub fast float %4068, %4072
  %4075 = fsub fast float %4069, %4073
  %4076 = fmul fast float %4074, %4074
  %4077 = fmul fast float %4075, %4075
  %4078 = fadd fast float %4076, %4077
  %4079 = call float @dx.op.unary.f32(i32 24, float %4078)  ; Sqrt(value)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4081 = fcmp fast olt float %4079, %4080
  br i1 %4081, label %4082, label %4149

; <label>:4082                                    ; preds = %4009
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4090 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4093 = extractvalue %dx.types.CBufRet.f32 %4085, 3
  %4094 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4095 = fadd fast float %4092, %4068
  %4096 = fadd fast float %4093, %4069
  %4097 = fadd fast float %4094, %4070
  %4098 = fmul fast float %4095, %4084
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4086, float %4098)  ; FMad(a,b,c)
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4088, float %4099)  ; FMad(a,b,c)
  %4101 = fmul fast float %4095, %4089
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4090, float %4101)  ; FMad(a,b,c)
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4091, float %4102)  ; FMad(a,b,c)
  %4104 = fsub fast float %4100, %4092
  %4105 = fsub fast float %4103, %4093
  %4106 = fsub fast float %4104, %4072
  %4107 = fadd fast float %4106, %4080
  %4108 = fsub fast float %4105, %4073
  %4109 = fadd fast float %4108, %4080
  %4110 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4111 = fmul fast float %4107, %4110
  %4112 = fmul fast float %4109, %4110
  %4113 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4115 = fsub fast float 1.000000e+00, %4113
  %4116 = fsub fast float 1.000000e+00, %4114
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4115, float %4116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = fcmp fast ugt float %4118, 0.000000e+00
  br i1 %4119, label %4120, label %4423

; <label>:4120                                    ; preds = %4082
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4123 = fmul fast float %4122, %4118
  %4124 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4125 = fadd fast float %4124, %4123
  %4126 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4127 = fadd fast float %4125, %4094
  %4128 = fmul fast float %4100, %4088
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4091, float %4128)  ; FMad(a,b,c)
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %4127, float %4126, float %4129)  ; FMad(a,b,c)
  %4131 = fsub fast float %4130, %4094
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4134 = fsub fast float %4131, %4133
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4115, float %4116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4115, float %4116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = fadd fast float %4140, %4136
  %4144 = fmul fast float %4143, 0x3F847AE140000000
  %4145 = fadd fast float %4141, %4137
  %4146 = fmul fast float %4145, 0x3F847AE140000000
  %4147 = fadd fast float %4142, %4138
  %4148 = fmul fast float %4147, 0x3F847AE140000000
  br label %4423

; <label>:4149                                    ; preds = %4009
  %4150 = and i32 %231, 1
  %4151 = icmp eq i32 %4150, 0
  br i1 %4151, label %4423, label %4152

; <label>:4152                                    ; preds = %4149
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4163 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4164 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4165 = fadd fast float %4162, %4068
  %4166 = fadd fast float %4163, %4069
  %4167 = fadd fast float %4164, %4070
  %4168 = fmul fast float %4165, %4154
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4156, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = fmul fast float %4165, %4159
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4161, float %4172)  ; FMad(a,b,c)
  %4174 = fsub fast float %4170, %4162
  %4175 = fsub fast float %4173, %4163
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.i32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.i32 %4183, 1
  %4186 = udiv i32 %4185, %4184
  %4187 = fsub fast float %4174, %4177
  %4188 = fsub fast float %4175, %4178
  %4189 = call float @dx.op.binary.f32(i32 35, float %4187, float 0.000000e+00)  ; FMax(a,b)
  %4190 = call float @dx.op.binary.f32(i32 35, float %4188, float 0.000000e+00)  ; FMax(a,b)
  %4191 = call float @dx.op.binary.f32(i32 36, float %4189, float %4179)  ; FMin(a,b)
  %4192 = call float @dx.op.binary.f32(i32 36, float %4190, float %4180)  ; FMin(a,b)
  %4193 = add i32 %4184, -1
  %4194 = add i32 %4186, -1
  %4195 = fmul fast float %4191, %4182
  %4196 = fmul fast float %4192, %4182
  %4197 = fptoui float %4195 to i32
  %4198 = fptoui float %4196 to i32
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4197, i32 %4193)  ; UMin(a,b)
  %4200 = call i32 @dx.op.binary.i32(i32 40, i32 %4198, i32 %4194)  ; UMin(a,b)
  %4201 = mul i32 %4200, %4184
  %4202 = add i32 %4201, %4199
  %4203 = shl i32 %4202, 2
  %4204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.i32 %4204, 0
  %4206 = icmp eq i32 %4205, -1
  br i1 %4206, label %4423, label %4207

; <label>:4207                                    ; preds = %4152
  %4208 = mul i32 %4205, 148
  %4209 = add i32 %4208, 4
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = add i32 %4208, 8
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = add i32 %4208, 36
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = add i32 %4208, 60
  %4219 = add i32 %4208, 92
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = add i32 %4208, 116
  %4223 = fsub fast float %4174, %4211
  %4224 = fsub fast float %4175, %4214
  %4225 = fmul fast float %4182, %4223
  %4226 = fmul fast float %4182, %4224
  %4227 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4228 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4229 = fsub fast float 1.000000e+00, %4228
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 2
  %4232 = call float @dx.op.unary.f32(i32 83, float %4227)  ; DerivCoarseX(value)
  %4233 = call float @dx.op.unary.f32(i32 83, float %4229)  ; DerivCoarseX(value)
  %4234 = call float @dx.op.unary.f32(i32 84, float %4227)  ; DerivCoarseY(value)
  %4235 = call float @dx.op.unary.f32(i32 84, float %4229)  ; DerivCoarseY(value)
  %4236 = fmul fast float %4232, %4231
  %4237 = fmul fast float %4233, %4231
  %4238 = fmul fast float %4234, %4231
  %4239 = fmul fast float %4235, %4231
  %4240 = call float @dx.op.dot2.f32(i32 54, float %4238, float %4239, float %4238, float %4239)  ; Dot2(ax,ay,bx,by)
  %4241 = call float @dx.op.dot2.f32(i32 54, float %4236, float %4237, float %4236, float %4237)  ; Dot2(ax,ay,bx,by)
  %4242 = call float @dx.op.binary.f32(i32 35, float %4241, float %4240)  ; FMax(a,b)
  %4243 = call float @dx.op.unary.f32(i32 23, float %4242)  ; Log(value)
  %4244 = fmul fast float %4243, 5.000000e-01
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4247 = fadd fast float %4246, %4244
  %4248 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4251 = fadd fast float %4250, %4248
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4254 = fadd fast float %4251, %4253
  %4255 = add i32 %4221, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4256, i32 0)  ; GetDimensions(handle,mipLevel)
  %4258 = extractvalue %dx.types.Dimensions %4257, 0
  %4259 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4258)  ; FirstbitLo(value)
  %4260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.i32 %4260, 1
  %4262 = sub nsw i32 %4261, %4259
  %4263 = sitofp i32 %4262 to float
  %4264 = fsub fast float %4254, %4263
  %4265 = call float @dx.op.binary.f32(i32 35, float %4264, float 0.000000e+00)  ; FMax(a,b)
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4256, %dx.types.Handle %47, float %4227, float %4229, float %4217, float undef, i32 0, i32 0, i32 undef, float %4265)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = fcmp ule float %4267, 0x3FE0101020000000
  %4269 = extractvalue %dx.types.CBufRet.i32 %4260, 0
  %4270 = and i32 %4269, 128
  %4271 = icmp ne i32 %4270, 0
  %4272 = and i1 %4268, %4271
  br i1 %4272, label %4423, label %4273

; <label>:4273                                    ; preds = %4207
  %4274 = add i32 %4208, 20
  %4275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4274, i32 undef)  ; BufferLoad(srv,index,wot)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = add i32 %4208, 24
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4208, 40
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = add i32 %4208, 96
  %4284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.i32 %4284, 0
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4288 = fmul fast float %4287, %4227
  %4289 = fmul fast float %4287, %4229
  %4290 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4291 = fadd fast float %4288, %4290
  %4292 = fadd fast float %4289, %4290
  %4293 = add i32 %4285, 0
  %4294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4293, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4294, i32 0)  ; GetDimensions(handle,mipLevel)
  %4296 = extractvalue %dx.types.Dimensions %4295, 0
  %4297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4296)  ; FirstbitLo(value)
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 1
  %4300 = sub nsw i32 %4299, %4297
  %4301 = sitofp i32 %4300 to float
  %4302 = fsub fast float %4251, %4301
  %4303 = call float @dx.op.binary.f32(i32 35, float %4302, float 0.000000e+00)  ; FMax(a,b)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4294, %dx.types.Handle %47, float %4291, float %4292, float %4282, float undef, i32 0, i32 0, i32 undef, float %4303)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fmul fast float %4305, %4276
  %4307 = fadd fast float %4306, %4279
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4316 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4317 = fadd fast float %4313, %4174
  %4318 = fadd fast float %4315, %4175
  %4319 = fadd fast float %4307, %4316
  %4320 = fmul fast float %4317, %4309
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4310, float %4320)  ; FMad(a,b,c)
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4311, float %4321)  ; FMad(a,b,c)
  %4323 = fsub fast float %4322, %4316
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4326 = fsub fast float %4323, %4325
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4329 = call i32 @dx.op.binary.i32(i32 40, i32 %4205, i32 %4328)  ; UMin(a,b)
  %4330 = mul i32 %4329, 36
  %4331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.i32 %4331, 0
  %4333 = add i32 %4330, 4
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %4227
  %4337 = fmul fast float %4335, %4229
  %4338 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4339 = fadd fast float %4336, %4338
  %4340 = fadd fast float %4337, %4338
  %4341 = icmp eq i32 %4332, 0
  br i1 %4341, label %4410, label %4342

; <label>:4342                                    ; preds = %4273
  br label %4343

; <label>:4343                                    ; preds = %4400, %4342
  %4344 = phi float [ %4401, %4400 ], [ 0.000000e+00, %4342 ]
  %4345 = phi float [ %4402, %4400 ], [ 0.000000e+00, %4342 ]
  %4346 = phi float [ %4403, %4400 ], [ 0.000000e+00, %4342 ]
  %4347 = phi float [ %4404, %4400 ], [ 0.000000e+00, %4342 ]
  %4348 = phi float [ %4405, %4400 ], [ 0.000000e+00, %4342 ]
  %4349 = phi float [ %4406, %4400 ], [ 0.000000e+00, %4342 ]
  %4350 = phi i32 [ %4407, %4400 ], [ 0, %4342 ]
  %4351 = shl i32 %4350, 2
  %4352 = add i32 %4218, %4351
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = add i32 %4222, %4351
  %4356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.i32 %4356, 0
  %4358 = add i32 %4357, 0
  %4359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4359, i32 0)  ; GetDimensions(handle,mipLevel)
  %4361 = extractvalue %dx.types.Dimensions %4360, 0
  %4362 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4361)  ; FirstbitLo(value)
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 1
  %4365 = sub nsw i32 %4364, %4362
  %4366 = sitofp i32 %4365 to float
  %4367 = fsub fast float %4251, %4366
  %4368 = call float @dx.op.binary.f32(i32 35, float %4367, float 0.000000e+00)  ; FMax(a,b)
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4359, %dx.types.Handle %47, float %4339, float %4340, float %4354, float undef, i32 0, i32 0, i32 undef, float %4368)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = fcmp fast ogt float %4370, 0.000000e+00
  br i1 %4371, label %4372, label %4400

; <label>:4372                                    ; preds = %4343
  %4373 = add i32 %4333, %4351
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = and i32 %4375, 32767
  %4377 = mul nuw nsw i32 %4376, 928
  %4378 = add nuw nsw i32 %4377, 48
  %4379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = add nuw nsw i32 %4377, 60
  %4384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = fmul fast float %4380, %4370
  %4389 = fmul fast float %4381, %4370
  %4390 = fmul fast float %4382, %4370
  %4391 = fadd fast float %4388, %4344
  %4392 = fadd fast float %4389, %4345
  %4393 = fadd fast float %4390, %4346
  %4394 = fmul fast float %4385, %4370
  %4395 = fmul fast float %4386, %4370
  %4396 = fmul fast float %4387, %4370
  %4397 = fadd fast float %4394, %4347
  %4398 = fadd fast float %4395, %4348
  %4399 = fadd fast float %4396, %4349
  br label %4400

; <label>:4400                                    ; preds = %4372, %4343
  %4401 = phi float [ %4391, %4372 ], [ %4344, %4343 ]
  %4402 = phi float [ %4392, %4372 ], [ %4345, %4343 ]
  %4403 = phi float [ %4393, %4372 ], [ %4346, %4343 ]
  %4404 = phi float [ %4397, %4372 ], [ %4347, %4343 ]
  %4405 = phi float [ %4398, %4372 ], [ %4348, %4343 ]
  %4406 = phi float [ %4399, %4372 ], [ %4349, %4343 ]
  %4407 = add nuw i32 %4350, 1
  %4408 = icmp eq i32 %4407, %4332
  br i1 %4408, label %4409, label %4343

; <label>:4409                                    ; preds = %4400
  br label %4410

; <label>:4410                                    ; preds = %4409, %4273
  %4411 = phi float [ 0.000000e+00, %4273 ], [ %4401, %4409 ]
  %4412 = phi float [ 0.000000e+00, %4273 ], [ %4402, %4409 ]
  %4413 = phi float [ 0.000000e+00, %4273 ], [ %4403, %4409 ]
  %4414 = phi float [ 0.000000e+00, %4273 ], [ %4404, %4409 ]
  %4415 = phi float [ 0.000000e+00, %4273 ], [ %4405, %4409 ]
  %4416 = phi float [ 0.000000e+00, %4273 ], [ %4406, %4409 ]
  %4417 = fadd fast float %4414, %4411
  %4418 = fmul fast float %4417, 0x3F847AE140000000
  %4419 = fadd fast float %4415, %4412
  %4420 = fmul fast float %4419, 0x3F847AE140000000
  %4421 = fadd fast float %4416, %4413
  %4422 = fmul fast float %4421, 0x3F847AE140000000
  br label %4423

; <label>:4423                                    ; preds = %4410, %4207, %4152, %4149, %4120, %4082
  %4424 = phi float [ %4134, %4120 ], [ -1.310720e+05, %4082 ], [ %4326, %4410 ], [ -1.310720e+05, %4152 ], [ -1.310720e+05, %4207 ], [ -1.310720e+05, %4149 ]
  %4425 = phi float [ %4144, %4120 ], [ 0.000000e+00, %4082 ], [ %4418, %4410 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4207 ], [ 0.000000e+00, %4149 ]
  %4426 = phi float [ %4146, %4120 ], [ 0.000000e+00, %4082 ], [ %4420, %4410 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4207 ], [ 0.000000e+00, %4149 ]
  %4427 = phi float [ %4148, %4120 ], [ 0.000000e+00, %4082 ], [ %4422, %4410 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4207 ], [ 0.000000e+00, %4149 ]
  %4428 = phi i1 [ true, %4120 ], [ false, %4082 ], [ true, %4410 ], [ false, %4152 ], [ false, %4207 ], [ false, %4149 ]
  %4429 = and i32 %231, 3
  %4430 = icmp eq i32 %4429, 1
  %4431 = select i1 %4430, float 1.000000e+00, float 0.000000e+00
  %4432 = fsub fast float %4424, %195
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = select i1 %4428, float %4433, float 1.000000e+00
  %4435 = fmul fast float %4434, %4431
  %4436 = icmp eq i32 %4429, 3
  %4437 = select i1 %4436, float 1.000000e+00, float %4435
  %4438 = call float @dx.op.binary.f32(i32 35, float %4025, float %4437)  ; FMax(a,b)
  %4439 = fcmp fast olt float %4437, 1.000000e+00
  %4440 = fcmp uge float %71, 0.000000e+00
  %4441 = and i1 %4440, %4439
  br i1 %4441, label %4442, label %4452

; <label>:4442                                    ; preds = %4423
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.ResRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.ResRet.f32 %4443, 2
  %4447 = fadd fast float %4444, %4438
  %4448 = fcmp ule float %70, 0.000000e+00
  %4449 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = select i1 %4448, float %4449, float 1.000000e+00
  %4451 = fmul fast float %4450, %4446
  br label %4452

; <label>:4452                                    ; preds = %4442, %4423
  %4453 = phi float [ %4447, %4442 ], [ %4438, %4423 ]
  %4454 = phi float [ %4445, %4442 ], [ 0.000000e+00, %4423 ]
  %4455 = phi float [ %4451, %4442 ], [ 0.000000e+00, %4423 ]
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = fcmp fast une float %4457, 0.000000e+00
  %4460 = fcmp fast une float %4458, 0.000000e+00
  %4461 = or i1 %4459, %4460
  br i1 %4461, label %4462, label %5021

; <label>:4462                                    ; preds = %4452
  br i1 %4459, label %4463, label %4736

; <label>:4463                                    ; preds = %4462
  %4464 = call float @dx.op.unary.f32(i32 23, float %4022)  ; Log(value)
  %4465 = fmul fast float %4464, 4.000000e+00
  %4466 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = fmul fast float %4468, %58
  %4470 = fmul fast float %4468, %59
  %4471 = fmul fast float %4468, %60
  %4472 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4473 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4474 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4475 = call float @dx.op.unary.f32(i32 23, float %4472)  ; Log(value)
  %4476 = call float @dx.op.unary.f32(i32 23, float %4473)  ; Log(value)
  %4477 = call float @dx.op.unary.f32(i32 23, float %4474)  ; Log(value)
  %4478 = fmul fast float %4475, 4.000000e+00
  %4479 = fmul fast float %4476, 4.000000e+00
  %4480 = fmul fast float %4477, 4.000000e+00
  %4481 = call float @dx.op.unary.f32(i32 21, float %4478)  ; Exp(value)
  %4482 = call float @dx.op.unary.f32(i32 21, float %4479)  ; Exp(value)
  %4483 = call float @dx.op.unary.f32(i32 21, float %4480)  ; Exp(value)
  %4484 = fadd fast float %4482, %4481
  %4485 = fadd fast float %4484, %4483
  %4486 = fdiv fast float 1.000000e+00, %4485
  %4487 = fmul fast float %4486, %4481
  %4488 = fcmp fast ogt float %67, 0.000000e+00
  %4489 = fcmp fast ogt float %68, 0.000000e+00
  %4490 = fcmp fast ogt float %69, 0.000000e+00
  %4491 = fcmp fast olt float %67, 0.000000e+00
  %4492 = fcmp fast olt float %68, 0.000000e+00
  %4493 = fcmp fast olt float %69, 0.000000e+00
  %4494 = zext i1 %4488 to i32
  %4495 = zext i1 %4489 to i32
  %4496 = zext i1 %4490 to i32
  %4497 = zext i1 %4491 to i32
  %4498 = zext i1 %4492 to i32
  %4499 = zext i1 %4493 to i32
  %4500 = sub nsw i32 %4494, %4497
  %4501 = sub nsw i32 %4495, %4498
  %4502 = sub nsw i32 %4496, %4499
  %4503 = call float @dx.op.unary.f32(i32 83, float %4469)  ; DerivCoarseX(value)
  %4504 = call float @dx.op.unary.f32(i32 83, float %4470)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 83, float %4471)  ; DerivCoarseX(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %4469)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %4470)  ; DerivCoarseY(value)
  %4508 = call float @dx.op.unary.f32(i32 84, float %4471)  ; DerivCoarseY(value)
  %4509 = fcmp fast ole float %263, %4487
  %4510 = fmul fast float %4486, %4484
  %4511 = fcmp fast ole float %263, %4510
  %4512 = select i1 %4511, float %4471, float %4469
  %4513 = select i1 %4511, float %4469, float %4470
  %4514 = select i1 %4509, float %4470, float %4512
  %4515 = select i1 %4509, float %4471, float %4513
  %4516 = select i1 %4511, float %4505, float %4503
  %4517 = select i1 %4511, float %4503, float %4504
  %4518 = select i1 %4509, float %4504, float %4516
  %4519 = select i1 %4509, float %4505, float %4517
  %4520 = select i1 %4511, float %4508, float %4506
  %4521 = select i1 %4511, float %4506, float %4507
  %4522 = select i1 %4509, float %4507, float %4520
  %4523 = select i1 %4509, float %4508, float %4521
  %4524 = call float @dx.op.unary.f32(i32 27, float %4514)  ; Round_ni(value)
  %4525 = call float @dx.op.unary.f32(i32 27, float %4515)  ; Round_ni(value)
  %4526 = fptosi float %4524 to i32
  %4527 = fptosi float %4525 to i32
  %4528 = xor i32 %4527, %4526
  %4529 = sitofp i32 %4528 to float
  %4530 = fptosi float %4529 to i32
  %4531 = sitofp i32 %4530 to float
  %4532 = fmul fast float %4531, 0x3FE3C6EF40000000
  %4533 = frem fast float %4524, 2.560000e+02
  %4534 = frem fast float %4525, 2.560000e+02
  %4535 = fptoui float %4533 to i32
  %4536 = fptoui float %4534 to i32
  %4537 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4535, i32 %4536, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = fadd fast float %4538, %4532
  %4542 = fadd fast float %4539, %4532
  %4543 = fadd fast float %4540, %4532
  %4544 = call float @dx.op.unary.f32(i32 22, float %4541)  ; Frc(value)
  %4545 = call float @dx.op.unary.f32(i32 22, float %4542)  ; Frc(value)
  %4546 = call float @dx.op.unary.f32(i32 22, float %4543)  ; Frc(value)
  %4547 = fmul fast float %4546, 0x401921FB60000000
  %4548 = call float @dx.op.unary.f32(i32 13, float %4547)  ; Sin(value)
  %4549 = call float @dx.op.unary.f32(i32 12, float %4547)  ; Cos(value)
  %4550 = fsub fast float -0.000000e+00, %4549
  %4551 = fmul fast float %4549, %4514
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4515, float %4551)  ; FMad(a,b,c)
  %4553 = fmul fast float %4548, %4514
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4515, float %4553)  ; FMad(a,b,c)
  %4555 = fadd fast float %4552, %4544
  %4556 = fadd fast float %4554, %4545
  %4557 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4558 = bitcast float %4557 to i32
  %4559 = icmp eq i32 %4558, 0
  br i1 %4559, label %4598, label %4560

; <label>:4560                                    ; preds = %4463
  %4561 = add i32 %4558, 0
  %4562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4562, %dx.types.Handle %103, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4568 = fsub fast float 1.000000e+00, %4457
  %4569 = call float @dx.op.binary.f32(i32 35, float %4568, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4570 = bitcast float %4457 to i32
  %4571 = sitofp i32 %4570 to float
  %4572 = fadd fast float %4571, 0xC1CFBF8940000000
  %4573 = fmul fast float %4567, %4572
  %4574 = fadd fast float %4573, 0x41CFBF8940000000
  %4575 = fptosi float %4574 to i32
  %4576 = bitcast i32 %4575 to float
  %4577 = bitcast float %4569 to i32
  %4578 = sitofp i32 %4577 to float
  %4579 = fadd fast float %4578, 0xC1CFBF8940000000
  %4580 = fmul fast float %4579, %4567
  %4581 = fadd fast float %4580, 0x41CFBF8940000000
  %4582 = fptosi float %4581 to i32
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4576, %4566
  %4585 = fmul fast float %4583, %4566
  %4586 = fsub fast float %4569, %4584
  %4587 = fadd fast float %4585, %4569
  %4588 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4590 = fsub fast float %4564, %4588
  %4591 = fsub fast float %4589, %4588
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = fmul fast float %4594, %4590
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fcmp fast olt float %4596, 0x3F70101020000000
  br i1 %4597, label %4736, label %4598

; <label>:4598                                    ; preds = %4560, %4463
  %4599 = phi float [ %4596, %4560 ], [ %4457, %4463 ]
  %4600 = fmul fast float %4599, %4466
  %4601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.i32 %4601, 1
  %4603 = extractvalue %dx.types.CBufRet.i32 %4601, 0
  %4604 = add i32 %4603, 0
  %4605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4605, %dx.types.Handle %102, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = and i32 %4602, 255
  %4612 = uitofp i32 %4611 to float
  %4613 = lshr i32 %4602, 8
  %4614 = and i32 %4613, 255
  %4615 = uitofp i32 %4614 to float
  %4616 = fmul fast float %4610, %4612
  %4617 = fadd fast float %4616, %4615
  %4618 = fmul fast float %4617, 0x3F70101000000000
  %4619 = fadd fast float %4618, 0xBFB99999A0000000
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fmul fast float %4620, 0x3FF1C71C80000000
  %4622 = call float @dx.op.binary.f32(i32 36, float %4618, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4623 = fsub fast float 1.000000e+00, %4621
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4624, %4607
  %4626 = fmul fast float %4624, %4608
  %4627 = fmul fast float %4624, %4609
  %4628 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4631 = fmul fast float %4621, %4607
  %4632 = fmul fast float %4621, %4608
  %4633 = fmul fast float %4621, %4609
  %4634 = fadd fast float %4631, %4622
  %4635 = fadd fast float %4632, %4622
  %4636 = fadd fast float %4633, %4622
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.i32 %4640, 3
  %4642 = extractvalue %dx.types.CBufRet.i32 %4640, 2
  %4643 = add i32 %4642, 0
  %4644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4644, %dx.types.Handle %102, float %4555, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4518, float %4519, float undef, float %4522, float %4523, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = extractvalue %dx.types.ResRet.f32 %4645, 3
  %4650 = and i32 %4641, 255
  %4651 = uitofp i32 %4650 to float
  %4652 = lshr i32 %4641, 8
  %4653 = and i32 %4652, 255
  %4654 = uitofp i32 %4653 to float
  %4655 = lshr i32 %4641, 16
  %4656 = and i32 %4655, 255
  %4657 = uitofp i32 %4656 to float
  %4658 = fmul fast float %4657, 0x3F70101000000000
  %4659 = fmul fast float %4646, %4651
  %4660 = fadd fast float %4659, %4654
  %4661 = fmul fast float %4660, 0x3F70101000000000
  %4662 = fadd fast float %4647, -5.000000e-01
  %4663 = fadd fast float %4649, -5.000000e-01
  %4664 = fmul fast float %4662, %4658
  %4665 = fmul fast float %4663, %4658
  %4666 = fadd fast float %4664, 5.000000e-01
  %4667 = fadd fast float %4665, 5.000000e-01
  %4668 = fmul fast float %4666, 2.000000e+00
  %4669 = fadd fast float %4668, -1.000000e+00
  %4670 = fmul fast float %4667, 2.000000e+00
  %4671 = fadd fast float %4670, -1.000000e+00
  %4672 = fadd fast float %4669, %4671
  %4673 = fmul fast float %4672, 5.000000e-01
  %4674 = fsub fast float %4669, %4671
  %4675 = fmul fast float %4674, 5.000000e-01
  %4676 = call float @dx.op.unary.f32(i32 6, float %4673)  ; FAbs(value)
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = call float @dx.op.unary.f32(i32 6, float %4675)  ; FAbs(value)
  %4679 = fsub fast float %4677, %4678
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4675, float %4679, float %4673, float %4675, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4673, %4681
  %4683 = fmul fast float %4675, %4681
  %4684 = select i1 %4511, i32 %4501, i32 %4502
  %4685 = select i1 %4509, i32 %4500, i32 %4684
  %4686 = sitofp i32 %4685 to float
  %4687 = fmul fast float %4679, %4686
  %4688 = fmul fast float %4687, %4681
  %4689 = select i1 %4511, float %4688, float %4683
  %4690 = select i1 %4511, float %4683, float %4688
  %4691 = select i1 %4509, float %4688, float %4682
  %4692 = select i1 %4509, float %4683, float %4689
  %4693 = select i1 %4509, float %4682, float %4690
  %4694 = fsub fast float %4628, %4061
  %4695 = fsub fast float %4629, %4062
  %4696 = fsub fast float %4630, %4063
  %4697 = fmul fast float %4694, %4600
  %4698 = fmul fast float %4695, %4600
  %4699 = fmul fast float %4696, %4600
  %4700 = fadd fast float %4697, %4061
  %4701 = fadd fast float %4698, %4062
  %4702 = fadd fast float %4699, %4063
  %4703 = fsub fast float %4637, %4046
  %4704 = fsub fast float %4638, %4047
  %4705 = fsub fast float %4639, %4048
  %4706 = fmul fast float %4703, %4600
  %4707 = fmul fast float %4704, %4600
  %4708 = fmul fast float %4705, %4600
  %4709 = fadd fast float %4706, %4046
  %4710 = fadd fast float %4707, %4047
  %4711 = fadd fast float %4708, %4048
  %4712 = fadd fast float %4691, %4010
  %4713 = fadd fast float %4692, %4011
  %4714 = fadd fast float %4693, %4012
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4713, float %4714, float %4712, float %4713, float %4714)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 25, float %4715)  ; Rsqrt(value)
  %4717 = fmul fast float %4712, %4716
  %4718 = fmul fast float %4713, %4716
  %4719 = fmul fast float %4714, %4716
  %4720 = fsub fast float %4717, %4010
  %4721 = fsub fast float %4718, %4011
  %4722 = fsub fast float %4719, %4012
  %4723 = fmul fast float %4720, %4600
  %4724 = fmul fast float %4721, %4600
  %4725 = fmul fast float %4722, %4600
  %4726 = fadd fast float %4723, %4010
  %4727 = fadd fast float %4724, %4011
  %4728 = fadd fast float %4725, %4012
  %4729 = call float @dx.op.binary.f32(i32 36, float %4022, float %4648)  ; FMin(a,b)
  %4730 = fsub fast float %4729, %4022
  %4731 = fmul fast float %4730, %4600
  %4732 = fadd fast float %4731, %4022
  %4733 = fsub fast float %4661, %4049
  %4734 = fmul fast float %4733, %4600
  %4735 = fadd fast float %4734, %4049
  br label %4736

; <label>:4736                                    ; preds = %4598, %4560, %4462
  %4737 = phi float [ %4700, %4598 ], [ %4061, %4560 ], [ %4061, %4462 ]
  %4738 = phi float [ %4701, %4598 ], [ %4062, %4560 ], [ %4062, %4462 ]
  %4739 = phi float [ %4702, %4598 ], [ %4063, %4560 ], [ %4063, %4462 ]
  %4740 = phi float [ %4709, %4598 ], [ %4046, %4560 ], [ %4046, %4462 ]
  %4741 = phi float [ %4710, %4598 ], [ %4047, %4560 ], [ %4047, %4462 ]
  %4742 = phi float [ %4711, %4598 ], [ %4048, %4560 ], [ %4048, %4462 ]
  %4743 = phi float [ %4726, %4598 ], [ %4010, %4560 ], [ %4010, %4462 ]
  %4744 = phi float [ %4727, %4598 ], [ %4011, %4560 ], [ %4011, %4462 ]
  %4745 = phi float [ %4728, %4598 ], [ %4012, %4560 ], [ %4012, %4462 ]
  %4746 = phi float [ %4735, %4598 ], [ %4049, %4560 ], [ %4049, %4462 ]
  %4747 = phi float [ %4732, %4598 ], [ %4022, %4560 ], [ %4022, %4462 ]
  br i1 %4460, label %4748, label %5021

; <label>:4748                                    ; preds = %4736
  %4749 = call float @dx.op.unary.f32(i32 23, float %4747)  ; Log(value)
  %4750 = fmul fast float %4749, 4.000000e+00
  %4751 = call float @dx.op.unary.f32(i32 21, float %4750)  ; Exp(value)
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = fmul fast float %4753, %58
  %4755 = fmul fast float %4753, %59
  %4756 = fmul fast float %4753, %60
  %4757 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4758 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4759 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4760 = call float @dx.op.unary.f32(i32 23, float %4757)  ; Log(value)
  %4761 = call float @dx.op.unary.f32(i32 23, float %4758)  ; Log(value)
  %4762 = call float @dx.op.unary.f32(i32 23, float %4759)  ; Log(value)
  %4763 = fmul fast float %4760, 4.000000e+00
  %4764 = fmul fast float %4761, 4.000000e+00
  %4765 = fmul fast float %4762, 4.000000e+00
  %4766 = call float @dx.op.unary.f32(i32 21, float %4763)  ; Exp(value)
  %4767 = call float @dx.op.unary.f32(i32 21, float %4764)  ; Exp(value)
  %4768 = call float @dx.op.unary.f32(i32 21, float %4765)  ; Exp(value)
  %4769 = fadd fast float %4767, %4766
  %4770 = fadd fast float %4769, %4768
  %4771 = fdiv fast float 1.000000e+00, %4770
  %4772 = fmul fast float %4771, %4766
  %4773 = fcmp fast ogt float %67, 0.000000e+00
  %4774 = fcmp fast ogt float %68, 0.000000e+00
  %4775 = fcmp fast ogt float %69, 0.000000e+00
  %4776 = fcmp fast olt float %67, 0.000000e+00
  %4777 = fcmp fast olt float %68, 0.000000e+00
  %4778 = fcmp fast olt float %69, 0.000000e+00
  %4779 = zext i1 %4773 to i32
  %4780 = zext i1 %4774 to i32
  %4781 = zext i1 %4775 to i32
  %4782 = zext i1 %4776 to i32
  %4783 = zext i1 %4777 to i32
  %4784 = zext i1 %4778 to i32
  %4785 = sub nsw i32 %4779, %4782
  %4786 = sub nsw i32 %4780, %4783
  %4787 = sub nsw i32 %4781, %4784
  %4788 = call float @dx.op.unary.f32(i32 83, float %4754)  ; DerivCoarseX(value)
  %4789 = call float @dx.op.unary.f32(i32 83, float %4755)  ; DerivCoarseX(value)
  %4790 = call float @dx.op.unary.f32(i32 83, float %4756)  ; DerivCoarseX(value)
  %4791 = call float @dx.op.unary.f32(i32 84, float %4754)  ; DerivCoarseY(value)
  %4792 = call float @dx.op.unary.f32(i32 84, float %4755)  ; DerivCoarseY(value)
  %4793 = call float @dx.op.unary.f32(i32 84, float %4756)  ; DerivCoarseY(value)
  %4794 = fcmp fast ole float %263, %4772
  %4795 = fmul fast float %4771, %4769
  %4796 = fcmp fast ole float %263, %4795
  %4797 = select i1 %4796, float %4756, float %4754
  %4798 = select i1 %4796, float %4754, float %4755
  %4799 = select i1 %4794, float %4755, float %4797
  %4800 = select i1 %4794, float %4756, float %4798
  %4801 = select i1 %4796, float %4790, float %4788
  %4802 = select i1 %4796, float %4788, float %4789
  %4803 = select i1 %4794, float %4789, float %4801
  %4804 = select i1 %4794, float %4790, float %4802
  %4805 = select i1 %4796, float %4793, float %4791
  %4806 = select i1 %4796, float %4791, float %4792
  %4807 = select i1 %4794, float %4792, float %4805
  %4808 = select i1 %4794, float %4793, float %4806
  %4809 = call float @dx.op.unary.f32(i32 27, float %4799)  ; Round_ni(value)
  %4810 = call float @dx.op.unary.f32(i32 27, float %4800)  ; Round_ni(value)
  %4811 = fptosi float %4809 to i32
  %4812 = fptosi float %4810 to i32
  %4813 = xor i32 %4812, %4811
  %4814 = sitofp i32 %4813 to float
  %4815 = fptosi float %4814 to i32
  %4816 = sitofp i32 %4815 to float
  %4817 = fmul fast float %4816, 0x3FE3C6EF40000000
  %4818 = frem fast float %4809, 2.560000e+02
  %4819 = frem fast float %4810, 2.560000e+02
  %4820 = fptoui float %4818 to i32
  %4821 = fptoui float %4819 to i32
  %4822 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4820, i32 %4821, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.ResRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.ResRet.f32 %4822, 2
  %4826 = fadd fast float %4823, %4817
  %4827 = fadd fast float %4824, %4817
  %4828 = fadd fast float %4825, %4817
  %4829 = call float @dx.op.unary.f32(i32 22, float %4826)  ; Frc(value)
  %4830 = call float @dx.op.unary.f32(i32 22, float %4827)  ; Frc(value)
  %4831 = call float @dx.op.unary.f32(i32 22, float %4828)  ; Frc(value)
  %4832 = fmul fast float %4831, 0x401921FB60000000
  %4833 = call float @dx.op.unary.f32(i32 13, float %4832)  ; Sin(value)
  %4834 = call float @dx.op.unary.f32(i32 12, float %4832)  ; Cos(value)
  %4835 = fsub fast float -0.000000e+00, %4834
  %4836 = fmul fast float %4834, %4799
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %4833, float %4800, float %4836)  ; FMad(a,b,c)
  %4838 = fmul fast float %4833, %4799
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4800, float %4838)  ; FMad(a,b,c)
  %4840 = fadd fast float %4837, %4829
  %4841 = fadd fast float %4839, %4830
  %4842 = extractvalue %dx.types.CBufRet.f32 %4752, 3
  %4843 = bitcast float %4842 to i32
  %4844 = icmp eq i32 %4843, 0
  br i1 %4844, label %4883, label %4845

; <label>:4845                                    ; preds = %4748
  %4846 = add i32 %4843, 0
  %4847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4848 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4847, %dx.types.Handle %103, float %4840, float %4841, float undef, float undef, i32 0, i32 0, i32 undef, float %4803, float %4804, float undef, float %4807, float %4808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 0
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4853 = fsub fast float 1.000000e+00, %4458
  %4854 = call float @dx.op.binary.f32(i32 35, float %4853, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4855 = bitcast float %4458 to i32
  %4856 = sitofp i32 %4855 to float
  %4857 = fadd fast float %4856, 0xC1CFBF8940000000
  %4858 = fmul fast float %4852, %4857
  %4859 = fadd fast float %4858, 0x41CFBF8940000000
  %4860 = fptosi float %4859 to i32
  %4861 = bitcast i32 %4860 to float
  %4862 = bitcast float %4854 to i32
  %4863 = sitofp i32 %4862 to float
  %4864 = fadd fast float %4863, 0xC1CFBF8940000000
  %4865 = fmul fast float %4864, %4852
  %4866 = fadd fast float %4865, 0x41CFBF8940000000
  %4867 = fptosi float %4866 to i32
  %4868 = bitcast i32 %4867 to float
  %4869 = fmul fast float %4861, %4851
  %4870 = fmul fast float %4868, %4851
  %4871 = fsub fast float %4854, %4869
  %4872 = fadd fast float %4870, %4854
  %4873 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4874 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4875 = fsub fast float %4849, %4873
  %4876 = fsub fast float %4874, %4873
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4879, %4875
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fcmp fast olt float %4881, 0x3F70101020000000
  br i1 %4882, label %5021, label %4883

; <label>:4883                                    ; preds = %4845, %4748
  %4884 = phi float [ %4881, %4845 ], [ %4458, %4748 ]
  %4885 = fmul fast float %4884, %4751
  %4886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.i32 %4886, 1
  %4888 = extractvalue %dx.types.CBufRet.i32 %4886, 0
  %4889 = add i32 %4888, 0
  %4890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4890, %dx.types.Handle %102, float %4840, float %4841, float undef, float undef, i32 0, i32 0, i32 undef, float %4803, float %4804, float undef, float %4807, float %4808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.ResRet.f32 %4891, 3
  %4896 = and i32 %4887, 255
  %4897 = uitofp i32 %4896 to float
  %4898 = lshr i32 %4887, 8
  %4899 = and i32 %4898, 255
  %4900 = uitofp i32 %4899 to float
  %4901 = fmul fast float %4895, %4897
  %4902 = fadd fast float %4901, %4900
  %4903 = fmul fast float %4902, 0x3F70101000000000
  %4904 = fadd fast float %4903, 0xBFB99999A0000000
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = fmul fast float %4905, 0x3FF1C71C80000000
  %4907 = call float @dx.op.binary.f32(i32 36, float %4903, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4908 = fsub fast float 1.000000e+00, %4906
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, %4892
  %4911 = fmul fast float %4909, %4893
  %4912 = fmul fast float %4909, %4894
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = fmul fast float %4906, %4892
  %4917 = fmul fast float %4906, %4893
  %4918 = fmul fast float %4906, %4894
  %4919 = fadd fast float %4916, %4907
  %4920 = fadd fast float %4917, %4907
  %4921 = fadd fast float %4918, %4907
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.i32 %4925, 3
  %4927 = extractvalue %dx.types.CBufRet.i32 %4925, 2
  %4928 = add i32 %4927, 0
  %4929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4929, %dx.types.Handle %102, float %4840, float %4841, float undef, float undef, i32 0, i32 0, i32 undef, float %4803, float %4804, float undef, float %4807, float %4808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = extractvalue %dx.types.ResRet.f32 %4930, 3
  %4935 = and i32 %4926, 255
  %4936 = uitofp i32 %4935 to float
  %4937 = lshr i32 %4926, 8
  %4938 = and i32 %4937, 255
  %4939 = uitofp i32 %4938 to float
  %4940 = lshr i32 %4926, 16
  %4941 = and i32 %4940, 255
  %4942 = uitofp i32 %4941 to float
  %4943 = fmul fast float %4942, 0x3F70101000000000
  %4944 = fmul fast float %4931, %4936
  %4945 = fadd fast float %4944, %4939
  %4946 = fmul fast float %4945, 0x3F70101000000000
  %4947 = fadd fast float %4932, -5.000000e-01
  %4948 = fadd fast float %4934, -5.000000e-01
  %4949 = fmul fast float %4947, %4943
  %4950 = fmul fast float %4948, %4943
  %4951 = fadd fast float %4949, 5.000000e-01
  %4952 = fadd fast float %4950, 5.000000e-01
  %4953 = fmul fast float %4951, 2.000000e+00
  %4954 = fadd fast float %4953, -1.000000e+00
  %4955 = fmul fast float %4952, 2.000000e+00
  %4956 = fadd fast float %4955, -1.000000e+00
  %4957 = fadd fast float %4954, %4956
  %4958 = fmul fast float %4957, 5.000000e-01
  %4959 = fsub fast float %4954, %4956
  %4960 = fmul fast float %4959, 5.000000e-01
  %4961 = call float @dx.op.unary.f32(i32 6, float %4958)  ; FAbs(value)
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4964 = fsub fast float %4962, %4963
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4960, float %4964, float %4958, float %4960, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.unary.f32(i32 25, float %4965)  ; Rsqrt(value)
  %4967 = fmul fast float %4958, %4966
  %4968 = fmul fast float %4960, %4966
  %4969 = select i1 %4796, i32 %4786, i32 %4787
  %4970 = select i1 %4794, i32 %4785, i32 %4969
  %4971 = sitofp i32 %4970 to float
  %4972 = fmul fast float %4964, %4971
  %4973 = fmul fast float %4972, %4966
  %4974 = select i1 %4796, float %4973, float %4968
  %4975 = select i1 %4796, float %4968, float %4973
  %4976 = select i1 %4794, float %4973, float %4967
  %4977 = select i1 %4794, float %4968, float %4974
  %4978 = select i1 %4794, float %4967, float %4975
  %4979 = fsub fast float %4913, %4737
  %4980 = fsub fast float %4914, %4738
  %4981 = fsub fast float %4915, %4739
  %4982 = fmul fast float %4979, %4885
  %4983 = fmul fast float %4980, %4885
  %4984 = fmul fast float %4981, %4885
  %4985 = fadd fast float %4982, %4737
  %4986 = fadd fast float %4983, %4738
  %4987 = fadd fast float %4984, %4739
  %4988 = fsub fast float %4922, %4740
  %4989 = fsub fast float %4923, %4741
  %4990 = fsub fast float %4924, %4742
  %4991 = fmul fast float %4988, %4885
  %4992 = fmul fast float %4989, %4885
  %4993 = fmul fast float %4990, %4885
  %4994 = fadd fast float %4991, %4740
  %4995 = fadd fast float %4992, %4741
  %4996 = fadd fast float %4993, %4742
  %4997 = fadd fast float %4976, %4743
  %4998 = fadd fast float %4977, %4744
  %4999 = fadd fast float %4978, %4745
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = call float @dx.op.unary.f32(i32 25, float %5000)  ; Rsqrt(value)
  %5002 = fmul fast float %4997, %5001
  %5003 = fmul fast float %4998, %5001
  %5004 = fmul fast float %4999, %5001
  %5005 = fsub fast float %5002, %4743
  %5006 = fsub fast float %5003, %4744
  %5007 = fsub fast float %5004, %4745
  %5008 = fmul fast float %5005, %4885
  %5009 = fmul fast float %5006, %4885
  %5010 = fmul fast float %5007, %4885
  %5011 = fadd fast float %5008, %4743
  %5012 = fadd fast float %5009, %4744
  %5013 = fadd fast float %5010, %4745
  %5014 = call float @dx.op.binary.f32(i32 36, float %4747, float %4933)  ; FMin(a,b)
  %5015 = fsub fast float %5014, %4747
  %5016 = fmul fast float %5015, %4885
  %5017 = fadd fast float %5016, %4747
  %5018 = fsub fast float %4946, %4746
  %5019 = fmul fast float %5018, %4885
  %5020 = fadd fast float %5019, %4746
  br label %5021

; <label>:5021                                    ; preds = %4883, %4845, %4736, %4452
  %5022 = phi float [ %4985, %4883 ], [ %4737, %4845 ], [ %4737, %4736 ], [ %4061, %4452 ]
  %5023 = phi float [ %4986, %4883 ], [ %4738, %4845 ], [ %4738, %4736 ], [ %4062, %4452 ]
  %5024 = phi float [ %4987, %4883 ], [ %4739, %4845 ], [ %4739, %4736 ], [ %4063, %4452 ]
  %5025 = phi float [ %4994, %4883 ], [ %4740, %4845 ], [ %4740, %4736 ], [ %4046, %4452 ]
  %5026 = phi float [ %4995, %4883 ], [ %4741, %4845 ], [ %4741, %4736 ], [ %4047, %4452 ]
  %5027 = phi float [ %4996, %4883 ], [ %4742, %4845 ], [ %4742, %4736 ], [ %4048, %4452 ]
  %5028 = phi float [ %5011, %4883 ], [ %4743, %4845 ], [ %4743, %4736 ], [ %4010, %4452 ]
  %5029 = phi float [ %5012, %4883 ], [ %4744, %4845 ], [ %4744, %4736 ], [ %4011, %4452 ]
  %5030 = phi float [ %5013, %4883 ], [ %4745, %4845 ], [ %4745, %4736 ], [ %4012, %4452 ]
  %5031 = phi float [ %5020, %4883 ], [ %4746, %4845 ], [ %4746, %4736 ], [ %4049, %4452 ]
  %5032 = phi float [ %5017, %4883 ], [ %4747, %4845 ], [ %4747, %4736 ], [ %4022, %4452 ]
  %5033 = fcmp fast une float %4456, 0.000000e+00
  br i1 %5033, label %5034, label %5203

; <label>:5034                                    ; preds = %5021
  %5035 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %193, %5036
  %5038 = fsub fast float -0.000000e+00, %5037
  %5039 = fmul fast float %194, %5036
  %5040 = fsub fast float -0.000000e+00, %5039
  %5041 = fmul fast float %195, %5036
  %5042 = fsub fast float -0.000000e+00, %5041
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5040, float %5042, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = fmul fast float %4456, 2.500000e+00
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %4456, 0x4013FFFFE0000000
  %5047 = fadd fast float %5046, 0xBFFFFFFFE0000000
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %4456, 0x4004000020000000
  %5050 = fadd fast float %5049, 0xBFF8000040000000
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fmul fast float %4028, 1.000000e+01
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, 2.000000e+00
  %5055 = fsub fast float 3.000000e+00, %5054
  %5056 = fmul fast float %5053, %5053
  %5057 = fmul fast float %5056, %5055
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = fsub fast float 0x3FE3333340000000, %5031
  %5060 = fmul fast float %5059, 0x400AAAAAA0000000
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fmul fast float %5058, %5061
  %5063 = fmul fast float %5022, 0x3FEA2B8620000000
  %5064 = fmul fast float %5023, 0x3FEA2B8620000000
  %5065 = fmul fast float %5024, 0x3FEA2B8620000000
  %5066 = fadd fast float %5063, 0x3FC81DFBA0000000
  %5067 = fmul fast float %5066, %5022
  %5068 = fadd fast float %5067, 0x3F910E6020000000
  %5069 = fadd fast float %5064, 0x3FC81DFBA0000000
  %5070 = fmul fast float %5069, %5023
  %5071 = fadd fast float %5070, 0x3F910E6020000000
  %5072 = fadd fast float %5065, 0x3FC81DFBA0000000
  %5073 = fmul fast float %5072, %5024
  %5074 = fadd fast float %5073, 0x3F910E6020000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = fsub fast float %5075, %5022
  %5079 = fsub fast float %5076, %5023
  %5080 = fsub fast float %5077, %5024
  %5081 = fmul fast float %5078, %5045
  %5082 = fmul fast float %5081, %5062
  %5083 = fmul fast float %5079, %5045
  %5084 = fmul fast float %5083, %5062
  %5085 = fmul fast float %5080, %5045
  %5086 = fmul fast float %5085, %5062
  %5087 = fadd fast float %5082, %5022
  %5088 = fadd fast float %5084, %5023
  %5089 = fadd fast float %5086, %5024
  %5090 = fmul fast float %5032, %5032
  %5091 = fmul fast float %5090, %5090
  %5092 = fadd fast float %5048, 1.000000e+00
  %5093 = fsub fast float %5092, %5062
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fsub fast float 1.000000e+00, %5091
  %5098 = call float @dx.op.binary.f32(i32 36, float %5094, float %5097)  ; FMin(a,b)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5100 = call float @dx.op.binary.f32(i32 35, float %5098, float %5099)  ; FMax(a,b)
  %5101 = fadd fast float %5096, 0xBFE4CCCCC0000000
  %5102 = fmul fast float %5101, 0x4006DB6DA0000000
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %5103, 2.000000e+00
  %5105 = fsub fast float 3.000000e+00, %5104
  %5106 = bitcast float %5025 to i32
  %5107 = ashr i32 %5106, 1
  %5108 = add nsw i32 %5107, 532487669
  %5109 = bitcast i32 %5108 to float
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = bitcast float %5110 to i32
  %5112 = sub nsw i32 2129859010, %5111
  %5113 = bitcast i32 %5112 to float
  %5114 = fmul fast float %5113, 2.000000e+00
  %5115 = bitcast float %5026 to i32
  %5116 = ashr i32 %5115, 1
  %5117 = add nsw i32 %5116, 532487669
  %5118 = bitcast i32 %5117 to float
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = bitcast float %5119 to i32
  %5121 = sub nsw i32 2129859010, %5120
  %5122 = bitcast i32 %5121 to float
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = bitcast float %5027 to i32
  %5125 = ashr i32 %5124, 1
  %5126 = add nsw i32 %5125, 532487669
  %5127 = bitcast i32 %5126 to float
  %5128 = fsub fast float 1.000000e+00, %5127
  %5129 = bitcast float %5128 to i32
  %5130 = sub nsw i32 2129859010, %5129
  %5131 = bitcast i32 %5130 to float
  %5132 = fmul fast float %5131, 2.000000e+00
  %5133 = fsub fast float 0x4002A9FBE0000000, %5114
  %5134 = fadd fast float %5114, 0x3FD54FDF00000000
  %5135 = bitcast float %5134 to i32
  %5136 = sub nsw i32 2129859010, %5135
  %5137 = bitcast i32 %5136 to float
  %5138 = fmul fast float %5137, %5133
  %5139 = fmul fast float %5138, %5138
  %5140 = fsub fast float 0x4002A9FBE0000000, %5123
  %5141 = fadd fast float %5123, 0x3FD54FDF00000000
  %5142 = bitcast float %5141 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %5144, %5140
  %5146 = fmul fast float %5145, %5145
  %5147 = fsub fast float 0x4002A9FBE0000000, %5132
  %5148 = fadd fast float %5132, 0x3FD54FDF00000000
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5151, %5147
  %5153 = fmul fast float %5152, %5152
  %5154 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5139)  ; FMax(a,b)
  %5155 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5146)  ; FMax(a,b)
  %5156 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5153)  ; FMax(a,b)
  %5157 = fsub fast float 1.000000e+00, %5043
  %5158 = fadd fast float %5157, %5058
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = fsub fast float 1.000000e+00, %4437
  %5161 = fmul fast float %5100, %5160
  %5162 = fmul fast float %5103, %5103
  %5163 = fmul fast float %5162, %5161
  %5164 = fmul fast float %5163, %5105
  %5165 = fmul fast float %5160, 0xBFE99999A0000000
  %5166 = fmul fast float %5165, %5045
  %5167 = fmul fast float %5166, %5062
  %5168 = fadd fast float %5167, 1.000000e+00
  %5169 = fadd fast float %5031, -1.000000e+00
  %5170 = fmul fast float %5168, %5169
  %5171 = fadd fast float %5170, 1.000000e+00
  %5172 = fsub fast float %5154, %5025
  %5173 = fsub fast float %5155, %5026
  %5174 = fsub fast float %5156, %5027
  %5175 = fmul fast float %5164, %5172
  %5176 = fmul fast float %5164, %5173
  %5177 = fmul fast float %5164, %5174
  %5178 = fadd fast float %5175, %5025
  %5179 = fadd fast float %5176, %5026
  %5180 = fadd fast float %5177, %5027
  %5181 = fsub fast float %113, %5028
  %5182 = fsub fast float %114, %5029
  %5183 = fsub fast float %115, %5030
  %5184 = fmul fast float %5164, %5181
  %5185 = fmul fast float %5164, %5182
  %5186 = fmul fast float %5164, %5183
  %5187 = fadd fast float %5184, %5028
  %5188 = fadd fast float %5185, %5029
  %5189 = fadd fast float %5186, %5030
  %5190 = fmul fast float %5164, %5159
  %5191 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5192 = fsub fast float 1.000000e+00, %5191
  %5193 = fmul fast float %5190, %5192
  %5194 = fadd fast float %5193, %5191
  %5195 = fsub fast float 1.000000e+00, %5032
  %5196 = fmul fast float %5164, %5195
  %5197 = fadd fast float %5196, %5032
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5187, float %5188, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.unary.f32(i32 25, float %5198)  ; Rsqrt(value)
  %5200 = fmul fast float %5187, %5199
  %5201 = fmul fast float %5188, %5199
  %5202 = fmul fast float %5189, %5199
  br label %5203

; <label>:5203                                    ; preds = %5034, %5021
  %5204 = phi float [ %5087, %5034 ], [ %5022, %5021 ]
  %5205 = phi float [ %5088, %5034 ], [ %5023, %5021 ]
  %5206 = phi float [ %5089, %5034 ], [ %5024, %5021 ]
  %5207 = phi float [ %5178, %5034 ], [ %5025, %5021 ]
  %5208 = phi float [ %5179, %5034 ], [ %5026, %5021 ]
  %5209 = phi float [ %5180, %5034 ], [ %5027, %5021 ]
  %5210 = phi float [ %5200, %5034 ], [ %5028, %5021 ]
  %5211 = phi float [ %5201, %5034 ], [ %5029, %5021 ]
  %5212 = phi float [ %5202, %5034 ], [ %5030, %5021 ]
  %5213 = phi float [ %5194, %5034 ], [ %5031, %5021 ]
  %5214 = phi float [ %5197, %5034 ], [ %5032, %5021 ]
  %5215 = icmp eq i32 %56, 0
  br i1 %5215, label %5246, label %5216

; <label>:5216                                    ; preds = %5203
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5220 = fmul fast float %5218, %106
  %5221 = fmul fast float %5219, %107
  %5222 = fmul fast float %5220, 1.024000e+03
  %5223 = fmul fast float %5221, 1.024000e+03
  %5224 = fadd fast float %5222, -5.120000e+02
  %5225 = fadd fast float %5223, -5.120000e+02
  %5226 = fmul fast float %5220, 0x4081BEDF00000000
  %5227 = fadd fast float %5226, 0xC071BEDF00000000
  %5228 = call float @dx.op.unary.f32(i32 22, float %5227)  ; Frc(value)
  %5229 = fmul fast float %5224, %5228
  %5230 = fadd fast float %5229, %5225
  %5231 = fmul fast float %5221, 0x4073BEBE20000000
  %5232 = fadd fast float %5231, 0xC063BEBE20000000
  %5233 = call float @dx.op.unary.f32(i32 22, float %5232)  ; Frc(value)
  %5234 = fmul fast float %5225, %5233
  %5235 = fadd fast float %5234, %5224
  %5236 = fmul fast float %5230, %5235
  %5237 = call float @dx.op.unary.f32(i32 22, float %5236)  ; Frc(value)
  %5238 = add i32 %306, 12
  %5239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.i32 %5239, 0
  %5241 = and i32 %5240, 255
  %5242 = uitofp i32 %5241 to float
  %5243 = fmul fast float %5242, 0x3F70101020000000
  %5244 = fcmp fast olt float %5237, %5243
  br i1 %5244, label %5245, label %5246

; <label>:5245                                    ; preds = %5216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5246

; <label>:5246                                    ; preds = %5245, %5216, %5203
  %5247 = fsub fast float -0.000000e+00, %195
  %5248 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.unary.f32(i32 25, float %5248)  ; Rsqrt(value)
  %5250 = fmul fast float %5249, %193
  %5251 = fmul fast float %5249, %194
  %5252 = fmul fast float %5249, %195
  %5253 = fsub fast float -0.000000e+00, %5250
  %5254 = fsub fast float -0.000000e+00, %5251
  %5255 = fsub fast float -0.000000e+00, %5252
  %5256 = select i1 %252, float 0.000000e+00, float %5209
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5253, float %5254, float %5255)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fmul fast float %5259, 2.000000e+00
  %5261 = fmul fast float %5260, %5210
  %5262 = fmul fast float %5260, %5211
  %5263 = fmul fast float %5260, %5212
  %5264 = fsub fast float %5250, %5261
  %5265 = fsub fast float %5251, %5262
  %5266 = fsub fast float %5252, %5263
  %5267 = call float @dx.op.binary.f32(i32 36, float %5214, float 1.000000e+00)  ; FMin(a,b)
  %5268 = fsub fast float 1.000000e+00, %5214
  %5269 = bitcast float %5268 to i32
  %5270 = sub nsw i32 2129859010, %5269
  %5271 = bitcast i32 %5270 to float
  %5272 = fsub fast float 1.000000e+00, %77
  %5273 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.binary.f32(i32 35, float %5273, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5275 = fdiv fast float %5272, %5274
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5278 = fmul fast float %5277, 5.000000e-01
  %5279 = fadd fast float %5278, 5.000000e-01
  %5280 = fmul fast float %5279, %77
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %5282, %5275
  %5284 = fadd fast float %5280, %5283
  %5285 = fsub fast float 5.000000e-01, %5278
  %5286 = fmul fast float %5285, %5204
  %5287 = fmul fast float %5285, %5205
  %5288 = fmul fast float %5285, %5206
  %5289 = fadd fast float %5284, %5286
  %5290 = fadd fast float %5284, %5287
  %5291 = fadd fast float %5284, %5288
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5293, 5.000000e-01
  %5295 = fadd fast float %5294, 5.000000e-01
  %5296 = fmul fast float %5295, %77
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5298, %5275
  %5300 = fadd fast float %5296, %5299
  %5301 = fsub fast float 5.000000e-01, %5294
  %5302 = fmul fast float %5301, %5204
  %5303 = fmul fast float %5301, %5205
  %5304 = fmul fast float %5301, %5206
  %5305 = fadd fast float %5300, %5302
  %5306 = fadd fast float %5300, %5303
  %5307 = fadd fast float %5300, %5304
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = call float @dx.op.binary.f32(i32 36, float %5204, float %5309)  ; FMin(a,b)
  %5311 = fsub fast float 1.000000e+00, %5267
  %5312 = fmul fast float %5310, %5311
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = bitcast float %5313 to i32
  %5315 = sub nsw i32 2129859010, %5314
  %5316 = bitcast i32 %5315 to float
  %5317 = call float @dx.op.binary.f32(i32 36, float %5205, float %5309)  ; FMin(a,b)
  %5318 = fmul fast float %5317, %5311
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = bitcast float %5319 to i32
  %5321 = sub nsw i32 2129859010, %5320
  %5322 = bitcast i32 %5321 to float
  %5323 = call float @dx.op.binary.f32(i32 36, float %5206, float %5309)  ; FMin(a,b)
  %5324 = fmul fast float %5323, %5311
  %5325 = fsub fast float 1.000000e+00, %5324
  %5326 = bitcast float %5325 to i32
  %5327 = sub nsw i32 2129859010, %5326
  %5328 = bitcast i32 %5327 to float
  %5329 = fmul fast float %5267, %78
  %5330 = fmul fast float %5329, %5289
  %5331 = fmul fast float %5330, %5316
  %5332 = fmul fast float %5267, %79
  %5333 = fmul fast float %5332, %5290
  %5334 = fmul fast float %5333, %5322
  %5335 = fmul fast float %5267, %80
  %5336 = fmul fast float %5335, %5291
  %5337 = fmul fast float %5336, %5328
  %5338 = call float @dx.op.binary.f32(i32 36, float %5207, float %5309)  ; FMin(a,b)
  %5339 = fmul fast float %5338, %5311
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = call float @dx.op.binary.f32(i32 36, float %5208, float %5309)  ; FMin(a,b)
  %5345 = fmul fast float %5344, %5311
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = bitcast float %5346 to i32
  %5348 = sub nsw i32 2129859010, %5347
  %5349 = bitcast i32 %5348 to float
  %5350 = call float @dx.op.binary.f32(i32 36, float %5256, float %5309)  ; FMin(a,b)
  %5351 = fmul fast float %5350, %5311
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5329, %5305
  %5357 = fmul fast float %5356, %5343
  %5358 = fmul fast float %5332, %5306
  %5359 = fmul fast float %5358, %5349
  %5360 = fmul fast float %5335, %5307
  %5361 = fmul fast float %5360, %5355
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5334, float %5337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = select i1 %252, float 0.000000e+00, float %5331
  %5364 = select i1 %252, float %5362, float %5334
  %5365 = select i1 %252, float 0.000000e+00, float %5337
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5357, float %5359, float %5361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = select i1 %252, float 0.000000e+00, float %5357
  %5368 = select i1 %252, float %5366, float %5359
  %5369 = select i1 %252, float 0.000000e+00, float %5361
  %5370 = fmul fast float %5258, 9.843750e-01
  %5371 = fmul fast float %5213, 9.843750e-01
  %5372 = fadd fast float %5370, 7.812500e-03
  %5373 = fadd fast float %5371, 7.812500e-03
  %5374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5372, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 3
  %5377 = fmul fast float %5375, %5207
  %5378 = fmul fast float %5375, %5208
  %5379 = fmul fast float %5375, %5256
  %5380 = fadd fast float %5377, %5376
  %5381 = fadd fast float %5378, %5376
  %5382 = fadd fast float %5379, %5376
  %5383 = fcmp fast ogt float %4023, 0.000000e+00
  br i1 %5383, label %5384, label %5410

; <label>:5384                                    ; preds = %5246
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4023, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fadd fast float %5387, -5.000000e-01
  %5391 = fadd fast float %5388, -5.000000e-01
  %5392 = fsub fast float 1.000000e+00, %5207
  %5393 = fsub fast float 1.000000e+00, %5208
  %5394 = fsub fast float 1.000000e+00, %5256
  %5395 = fmul fast float %5207, 4.000000e+00
  %5396 = fmul fast float %5395, %5392
  %5397 = fmul fast float %5396, %5389
  %5398 = fmul fast float %5208, 4.000000e+00
  %5399 = fmul fast float %5398, %5393
  %5400 = fmul fast float %5399, %5390
  %5401 = fmul fast float %5256, 4.000000e+00
  %5402 = fmul fast float %5401, %5394
  %5403 = fmul fast float %5402, %5391
  %5404 = fadd fast float %5397, %5380
  %5405 = fadd fast float %5400, %5381
  %5406 = fadd fast float %5403, %5382
  %5407 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5408 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  br label %5410

; <label>:5410                                    ; preds = %5384, %5246
  %5411 = phi float [ %5407, %5384 ], [ %5380, %5246 ]
  %5412 = phi float [ %5408, %5384 ], [ %5381, %5246 ]
  %5413 = phi float [ %5409, %5384 ], [ %5382, %5246 ]
  %5414 = call float @dx.op.binary.f32(i32 35, float %5412, float %5413)  ; FMax(a,b)
  %5415 = call float @dx.op.binary.f32(i32 35, float %5411, float %5414)  ; FMax(a,b)
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = fmul fast float %5416, %5363
  %5418 = fmul fast float %5416, %5364
  %5419 = fmul fast float %5416, %5365
  %5420 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = fcmp fast ogt float %5420, 0x3E7FF19E20000000
  %5422 = fdiv fast float 1.000000e+00, %5420
  %5423 = select i1 %5421, float %5422, float 0.000000e+00
  %5424 = fmul fast float %5423, %5204
  %5425 = fmul fast float %5423, %5205
  %5426 = fmul fast float %5423, %5206
  %5427 = fadd fast float %5424, -1.000000e+00
  %5428 = fadd fast float %5425, -1.000000e+00
  %5429 = fadd fast float %5426, -1.000000e+00
  %5430 = fmul fast float %5427, 5.000000e-01
  %5431 = fmul fast float %5428, 5.000000e-01
  %5432 = fmul fast float %5429, 5.000000e-01
  %5433 = fadd fast float %5430, 1.000000e+00
  %5434 = fadd fast float %5431, 1.000000e+00
  %5435 = fadd fast float %5432, 1.000000e+00
  %5436 = fmul fast float %5411, %5367
  %5437 = fmul fast float %5412, %5368
  %5438 = fmul fast float %5413, %5369
  %5439 = fsub fast float 1.000000e+00, %5258
  %5440 = bitcast float %5439 to i32
  %5441 = sitofp i32 %5440 to float
  %5442 = fmul fast float %5441, 5.000000e+00
  %5443 = fadd fast float %5442, 0xC1EFBF8940000000
  %5444 = fptosi float %5443 to i32
  %5445 = bitcast i32 %5444 to float
  %5446 = fmul fast float %5445, %4024
  %5447 = fmul fast float %5363, %5446
  %5448 = fmul fast float %5447, %5416
  %5449 = fmul fast float %5448, %5433
  %5450 = fmul fast float %5364, %5446
  %5451 = fmul fast float %5450, %5416
  %5452 = fmul fast float %5451, %5434
  %5453 = fmul fast float %5365, %5446
  %5454 = fmul fast float %5453, %5416
  %5455 = fmul fast float %5454, %5435
  %5456 = fmul fast float %5417, %4020
  %5457 = fmul fast float %5418, %4020
  %5458 = fmul fast float %5419, %4020
  %5459 = fadd fast float %5436, %4016
  %5460 = fadd fast float %5459, %5449
  %5461 = fmul fast float %5460, %4020
  %5462 = fadd fast float %5437, %4017
  %5463 = fadd fast float %5462, %5452
  %5464 = fmul fast float %5463, %4020
  %5465 = fadd fast float %5438, %4018
  %5466 = fadd fast float %5465, %5455
  %5467 = fmul fast float %5466, %4020
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 3
  %5470 = fcmp fast oeq float %5469, 0.000000e+00
  br i1 %5470, label %6555, label %5471

; <label>:5471                                    ; preds = %5410
  %5472 = extractvalue %dx.types.CBufRet.f32 %5468, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5468, 1
  %5474 = extractvalue %dx.types.CBufRet.f32 %5468, 2
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = select i1 %252, float %5480, float %5476
  %5484 = select i1 %252, float %5482, float %5477
  %5485 = select i1 %252, float %5481, float %5478
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5488 = fmul fast float %5487, %113
  %5489 = fmul fast float %5487, %114
  %5490 = fmul fast float %5487, %115
  %5491 = fadd fast float %5488, %193
  %5492 = fadd fast float %5489, %194
  %5493 = fadd fast float %5490, %195
  %5494 = fcmp fast olt float %5469, 0.000000e+00
  br i1 %5494, label %6134, label %5495

; <label>:5495                                    ; preds = %5471
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = extractvalue %dx.types.CBufRet.f32 %5501, 3
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5510 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5511 = fmul fast float %5497, %5491
  %5512 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5498, float %5511)  ; FMad(a,b,c)
  %5513 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5499, float %5512)  ; FMad(a,b,c)
  %5514 = fadd fast float %5513, %5500
  %5515 = fmul fast float %5502, %5491
  %5516 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5503, float %5515)  ; FMad(a,b,c)
  %5517 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5504, float %5516)  ; FMad(a,b,c)
  %5518 = fadd fast float %5517, %5505
  %5519 = fmul fast float %5507, %5491
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5508, float %5519)  ; FMad(a,b,c)
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5509, float %5520)  ; FMad(a,b,c)
  %5522 = fadd fast float %5521, %5510
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = fcmp fast une float %5524, 0.000000e+00
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 3
  %5530 = fmul fast float %5529, %5514
  %5531 = fmul fast float %5529, %5518
  %5532 = fadd fast float %5530, %5527
  %5533 = fadd fast float %5531, %5528
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.CBufRet.f32 %5534, 3
  %5538 = fmul fast float %5537, %5514
  %5539 = fmul fast float %5537, %5518
  %5540 = fadd fast float %5538, %5535
  %5541 = fadd fast float %5539, %5536
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5544 = fsub fast float %5543, %5522
  %5545 = extractvalue %dx.types.CBufRet.f32 %5542, 2
  %5546 = fmul fast float %5544, %5545
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  br i1 %5525, label %5609, label %5549

; <label>:5549                                    ; preds = %5495
  %5550 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5553 = fadd fast float %5552, %5550
  %5554 = fcmp fast ogt float %5553, 0.000000e+00
  br i1 %5554, label %5555, label %5579

; <label>:5555                                    ; preds = %5549
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5559 = fsub fast float %5540, %5557
  %5560 = fsub fast float %5541, %5558
  %5561 = fcmp fast olt float %5559, 0.000000e+00
  %5562 = fcmp fast olt float %5560, 0.000000e+00
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5567 = extractvalue %dx.types.CBufRet.f32 %5563, 3
  %5568 = select i1 %5561, float %5564, float %5566
  %5569 = select i1 %5562, float %5565, float %5567
  %5570 = fmul fast float %5568, %5559
  %5571 = fmul fast float %5569, %5560
  %5572 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5575 = call float @dx.op.binary.f32(i32 35, float %5572, float %5573)  ; FMax(a,b)
  %5576 = fsub fast float %5574, %5575
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = fmul fast float %5577, %5548
  br label %5579

; <label>:5579                                    ; preds = %5555, %5549
  %5580 = phi float [ %5578, %5555 ], [ 0.000000e+00, %5549 ]
  %5581 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5583 = fadd fast float %5582, %5581
  %5584 = fcmp fast ogt float %5583, 0.000000e+00
  br i1 %5584, label %5585, label %5609

; <label>:5585                                    ; preds = %5579
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5588 = extractvalue %dx.types.CBufRet.f32 %5586, 1
  %5589 = fsub fast float %5532, %5587
  %5590 = fsub fast float %5533, %5588
  %5591 = fcmp fast olt float %5589, 0.000000e+00
  %5592 = fcmp fast olt float %5590, 0.000000e+00
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.CBufRet.f32 %5593, 3
  %5598 = select i1 %5591, float %5594, float %5596
  %5599 = select i1 %5592, float %5595, float %5597
  %5600 = fmul fast float %5598, %5589
  %5601 = fmul fast float %5599, %5590
  %5602 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5603 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5605 = call float @dx.op.binary.f32(i32 35, float %5602, float %5603)  ; FMax(a,b)
  %5606 = fsub fast float %5604, %5605
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %5607, %5548
  br label %5609

; <label>:5609                                    ; preds = %5585, %5579, %5495
  %5610 = phi float [ 0.000000e+00, %5495 ], [ %5608, %5585 ], [ 0.000000e+00, %5579 ]
  %5611 = phi float [ 0.000000e+00, %5495 ], [ %5580, %5585 ], [ %5580, %5579 ]
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 1
  %5618 = fsub fast float %5514, %5616
  %5619 = fsub fast float %5518, %5617
  %5620 = fcmp fast olt float %5618, 0.000000e+00
  %5621 = fcmp fast olt float %5619, 0.000000e+00
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5627 = select i1 %5620, float %5623, float %5625
  %5628 = select i1 %5621, float %5624, float %5626
  %5629 = fmul fast float %5627, %5618
  %5630 = fmul fast float %5628, %5619
  %5631 = call float @dx.op.unary.f32(i32 6, float %5629)  ; FAbs(value)
  %5632 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5634 = call float @dx.op.binary.f32(i32 35, float %5631, float %5632)  ; FMax(a,b)
  %5635 = fsub fast float %5633, %5634
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call float @dx.op.binary.f32(i32 36, float %5636, float %5614)  ; FMin(a,b)
  %5638 = fmul fast float %5637, %5548
  %5639 = fsub fast float %5610, %5638
  %5640 = fsub fast float %5611, %5610
  %5641 = fsub fast float %5640, %5638
  %5642 = call float @dx.op.binary.f32(i32 35, float %5610, float %5611)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5638, float %5642)  ; FMax(a,b)
  %5644 = fcmp fast olt float %5643, 1.000000e+00
  br i1 %5644, label %5645, label %6043, !dx.controlflow.hints !97

; <label>:5645                                    ; preds = %5609
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = fcmp fast une float %5647, 0.000000e+00
  br i1 %5648, label %5649, label %6043, !dx.controlflow.hints !98

; <label>:5649                                    ; preds = %5645
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5654 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5659 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5665 = fmul fast float %5651, %5491
  %5666 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5652, float %5665)  ; FMad(a,b,c)
  %5667 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5653, float %5666)  ; FMad(a,b,c)
  %5668 = fadd fast float %5667, %5654
  %5669 = fmul fast float %5656, %5491
  %5670 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5657, float %5669)  ; FMad(a,b,c)
  %5671 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5658, float %5670)  ; FMad(a,b,c)
  %5672 = fadd fast float %5671, %5659
  %5673 = fmul fast float %5661, %5491
  %5674 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5662, float %5673)  ; FMad(a,b,c)
  %5675 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5663, float %5674)  ; FMad(a,b,c)
  %5676 = fadd fast float %5675, %5664
  %5677 = fcmp fast oge float %5668, 1.000000e+00
  %5678 = fcmp fast oge float %5672, 1.000000e+00
  %5679 = or i1 %5677, %5678
  %5680 = fcmp fast olt float %5668, 0.000000e+00
  %5681 = fcmp fast olt float %5672, 0.000000e+00
  %5682 = or i1 %5680, %5681
  %5683 = or i1 %5679, %5682
  br i1 %5683, label %6043, label %5684, !dx.controlflow.hints !99

; <label>:5684                                    ; preds = %5649
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.i32 %5689, 2
  %5691 = uitofp i32 %5690 to float
  %5692 = extractvalue %dx.types.CBufRet.i32 %5689, 3
  %5693 = uitofp i32 %5692 to float
  %5694 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5695 = fmul fast float %5694, 2.000000e+00
  %5696 = fsub fast float %5668, %5686
  %5697 = fsub fast float %5672, %5687
  %5698 = fmul fast float %5695, %5696
  %5699 = fmul fast float %5695, %5697
  %5700 = fdiv fast float 1.000000e+00, %5474
  %5701 = fmul fast float %5699, %5700
  %5702 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5703 = fmul fast float %5688, %5493
  %5704 = fmul fast float %5703, %5695
  %5705 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5706 = call float @dx.op.unary.f32(i32 6, float %5698)  ; FAbs(value)
  %5707 = call float @dx.op.binary.f32(i32 35, float %5705, float %5702)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 35, float %5706, float %5707)  ; FMax(a,b)
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = call float @dx.op.unary.f32(i32 23, float %5709)  ; Log(value)
  %5711 = call float @dx.op.binary.f32(i32 35, float %5710, float %5691)  ; FMax(a,b)
  %5712 = call float @dx.op.unary.f32(i32 22, float %5711)  ; Frc(value)
  %5713 = fadd fast float %5712, 0xBFEA666660000000
  %5714 = fmul fast float %5713, 8.000000e+00
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = call float @dx.op.unary.f32(i32 27, float %5711)  ; Round_ni(value)
  %5717 = fadd fast float %5716, %5715
  %5718 = call float @dx.op.binary.f32(i32 36, float %5717, float %5693)  ; FMin(a,b)
  %5719 = call float @dx.op.unary.f32(i32 27, float %5718)  ; Round_ni(value)
  %5720 = fsub fast float -0.000000e+00, %5719
  %5721 = call float @dx.op.unary.f32(i32 21, float %5720)  ; Exp(value)
  %5722 = fmul fast float %5721, %5695
  %5723 = fmul fast float %5722, %5668
  %5724 = fmul fast float %5722, %5672
  %5725 = fmul fast float %5723, 2.500000e-01
  %5726 = fmul fast float %5724, 2.500000e-01
  %5727 = fadd fast float %5725, 5.000000e-01
  %5728 = fadd fast float %5726, 5.000000e-01
  %5729 = fsub fast float %5693, %5691
  %5730 = fptoui float %5729 to i32
  %5731 = add i32 %5730, 320
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5731)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = fcmp fast une float %5718, %5693
  %5736 = fsub fast float %5668, %5733
  %5737 = fsub fast float %5672, %5734
  %5738 = call float @dx.op.unary.f32(i32 6, float %5736)  ; FAbs(value)
  %5739 = call float @dx.op.unary.f32(i32 6, float %5737)  ; FAbs(value)
  %5740 = fmul fast float %5738, %5722
  %5741 = fmul fast float %5739, %5722
  %5742 = fcmp fast olt float %5740, 1.000000e+00
  %5743 = fcmp fast olt float %5741, 1.000000e+00
  %5744 = and i1 %5742, %5743
  %5745 = or i1 %5735, %5744
  br i1 %5745, label %5746, label %6043, !dx.controlflow.hints !100

; <label>:5746                                    ; preds = %5684
  %5747 = fmul fast float %5724, 5.000000e-01
  %5748 = fmul fast float %5723, 5.000000e-01
  %5749 = fadd fast float %5747, 5.000000e-01
  %5750 = fadd fast float %5748, 5.000000e-01
  %5751 = sitofp i32 %5690 to float
  %5752 = fsub fast float %5718, %5751
  %5753 = call float @dx.op.unary.f32(i32 27, float %5752)  ; Round_ni(value)
  %5754 = call float @dx.op.unary.f32(i32 22, float %5718)  ; Frc(value)
  %5755 = call float @dx.op.unary.f32(i32 22, float %5750)  ; Frc(value)
  %5756 = call float @dx.op.unary.f32(i32 22, float %5749)  ; Frc(value)
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5755, float %5756, float %5753, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = extractvalue %dx.types.ResRet.f32 %5757, 3
  %5762 = fcmp fast ogt float %5754, 0.000000e+00
  br i1 %5762, label %5763, label %5784, !dx.controlflow.hints !101

; <label>:5763                                    ; preds = %5746
  %5764 = fadd fast float %5753, 1.000000e+00
  %5765 = call float @dx.op.unary.f32(i32 22, float %5727)  ; Frc(value)
  %5766 = call float @dx.op.unary.f32(i32 22, float %5728)  ; Frc(value)
  %5767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5765, float %5766, float %5764, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5768 = extractvalue %dx.types.ResRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.ResRet.f32 %5767, 1
  %5770 = extractvalue %dx.types.ResRet.f32 %5767, 2
  %5771 = extractvalue %dx.types.ResRet.f32 %5767, 3
  %5772 = fsub fast float %5768, %5758
  %5773 = fsub fast float %5769, %5759
  %5774 = fsub fast float %5770, %5760
  %5775 = fsub fast float %5771, %5761
  %5776 = fmul fast float %5772, %5754
  %5777 = fmul fast float %5773, %5754
  %5778 = fmul fast float %5774, %5754
  %5779 = fmul fast float %5775, %5754
  %5780 = fadd fast float %5776, %5758
  %5781 = fadd fast float %5777, %5759
  %5782 = fadd fast float %5778, %5760
  %5783 = fadd fast float %5779, %5761
  br label %5784

; <label>:5784                                    ; preds = %5763, %5746
  %5785 = phi float [ %5780, %5763 ], [ %5758, %5746 ]
  %5786 = phi float [ %5781, %5763 ], [ %5759, %5746 ]
  %5787 = phi float [ %5782, %5763 ], [ %5760, %5746 ]
  %5788 = phi float [ %5783, %5763 ], [ %5761, %5746 ]
  %5789 = fadd fast float %5785, -5.000000e-01
  %5790 = fadd fast float %5787, -5.000000e-01
  %5791 = fmul fast float %5789, 0xBFD5555560000000
  %5792 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5790, float %5791)  ; FMad(a,b,c)
  %5793 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5786, float 0.000000e+00)  ; FMad(a,b,c)
  %5794 = fadd fast float %5793, %5788
  %5795 = fmul fast float %5789, -7.500000e-01
  %5796 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5790, float %5795)  ; FMad(a,b,c)
  %5797 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5786, float 0.000000e+00)  ; FMad(a,b,c)
  %5798 = fadd fast float %5797, %5788
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5805 = extractvalue %dx.types.CBufRet.f32 %5801, 3
  %5806 = fsub fast float %5802, %5792
  %5807 = fsub fast float %5803, %5794
  %5808 = fsub fast float %5804, %5796
  %5809 = fsub fast float %5805, %5798
  %5810 = fmul fast float %5806, %5800
  %5811 = fmul fast float %5807, %5800
  %5812 = fmul fast float %5808, %5800
  %5813 = fmul fast float %5809, %5800
  %5814 = fadd fast float %5810, %5792
  %5815 = fadd fast float %5811, %5794
  %5816 = fadd fast float %5812, %5796
  %5817 = fadd fast float %5813, %5798
  %5818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5819 = extractvalue %dx.types.ResRet.i32 %5818, 0
  %5820 = and i32 %5819, 536870911
  %5821 = uitofp i32 %5820 to float
  %5822 = fmul fast float %5821, %5668
  %5823 = fmul fast float %5821, %5672
  %5824 = fptoui float %5822 to i32
  %5825 = fptoui float %5823 to i32
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = and i32 %5827, 31
  %5829 = lshr i32 %5824, %5828
  %5830 = lshr i32 %5825, %5828
  %5831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.i32 %5831, 0
  %5833 = and i32 %5832, 31
  %5834 = shl i32 1, %5833
  %5835 = call i32 @dx.op.binary.i32(i32 40, i32 %5834, i32 4)  ; UMin(a,b)
  %5836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5837 = extractvalue %dx.types.ResRet.i32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.i32 %5836, 1
  %5839 = icmp eq i32 %5835, 0
  br i1 %5839, label %5881, label %5840

; <label>:5840                                    ; preds = %5784
  br label %5841

; <label>:5841                                    ; preds = %5869, %5840
  %5842 = phi i32 [ %5872, %5869 ], [ 0, %5840 ]
  %5843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.i32 %5843, 0
  %5845 = lshr i32 %5844, 16
  %5846 = and i32 %5845, 31
  %5847 = shl i32 %5830, %5846
  %5848 = add i32 %5847, %5829
  %5849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.i32 %5849, 0
  %5851 = and i32 %5850, 31
  %5852 = shl i32 %5848, %5851
  %5853 = add i32 %5852, %5842
  %5854 = shl i32 %5853, 2
  %5855 = add i32 %5854, 32
  %5856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5855, i32 undef)  ; BufferLoad(srv,index,wot)
  %5857 = extractvalue %dx.types.ResRet.i32 %5856, 0
  %5858 = icmp slt i32 %5857, 0
  %5859 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5842
  %5860 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5842
  %5861 = bitcast float* %5859 to i32*
  %5862 = bitcast float* %5860 to i32*
  br i1 %5858, label %5863, label %5869

; <label>:5863                                    ; preds = %5841
  %5864 = and i32 %5857, 1073741823
  %5865 = add nuw nsw i32 %5864, 20
  %5866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5865, i32 undef)  ; BufferLoad(srv,index,wot)
  %5867 = extractvalue %dx.types.ResRet.i32 %5866, 0
  %5868 = extractvalue %dx.types.ResRet.i32 %5866, 1
  br label %5869

; <label>:5869                                    ; preds = %5863, %5841
  %5870 = phi i32 [ %5867, %5863 ], [ %5837, %5841 ]
  %5871 = phi i32 [ %5868, %5863 ], [ %5838, %5841 ]
  store i32 %5870, i32* %5861, align 4
  store i32 %5871, i32* %5862, align 4
  %5872 = add nuw i32 %5842, 1
  %5873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.i32 %5873, 2
  %5875 = icmp eq i32 %5874, 0
  %5876 = icmp ugt i32 %5857, -1073741825
  %5877 = and i1 %5876, %5875
  %5878 = icmp ult i32 %5872, %5835
  %5879 = and i1 %5877, %5878
  br i1 %5879, label %5841, label %5880

; <label>:5880                                    ; preds = %5869
  br label %5881

; <label>:5881                                    ; preds = %5880, %5784
  %5882 = phi i32 [ 0, %5784 ], [ %5872, %5880 ]
  %5883 = extractvalue %dx.types.CBufRet.f32 %5646, 2
  %5884 = fptoui float %5883 to i32
  %5885 = icmp eq i32 %5884, 0
  br i1 %5885, label %5937, label %5886

; <label>:5886                                    ; preds = %5881
  br label %5887

; <label>:5887                                    ; preds = %5932, %5886
  %5888 = phi i32 [ %5933, %5932 ], [ %5882, %5886 ]
  %5889 = phi i32 [ %5934, %5932 ], [ 0, %5886 ]
  %5890 = lshr i32 %5889, 2
  %5891 = and i32 %5889, 3
  %5892 = add nuw nsw i32 %5890, 83
  %5893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5892)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.i32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.i32 %5893, 1
  %5896 = extractvalue %dx.types.CBufRet.i32 %5893, 2
  %5897 = extractvalue %dx.types.CBufRet.i32 %5893, 3
  %5898 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5894, i32* %5898, align 4
  %5899 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5895, i32* %5899, align 4
  %5900 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5896, i32* %5900, align 4
  %5901 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5897, i32* %5901, align 4
  %5902 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5891
  %5903 = load i32, i32* %5902, align 4, !tbaa !102, !noalias !106
  %5904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.i32 %5904, 0
  %5906 = lshr i32 %5905, 16
  %5907 = and i32 %5906, 31
  %5908 = shl i32 %5830, %5907
  %5909 = add i32 %5908, %5829
  %5910 = shl i32 %5909, 2
  %5911 = add i32 %5910, %5903
  %5912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5911, i32 undef)  ; BufferLoad(srv,index,wot)
  %5913 = extractvalue %dx.types.ResRet.i32 %5912, 0
  %5914 = icmp eq i32 %5913, 0
  br i1 %5914, label %5932, label %5915

; <label>:5915                                    ; preds = %5887
  %5916 = icmp slt i32 %5913, 0
  %5917 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5888
  %5918 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5888
  %5919 = bitcast float* %5917 to i32*
  %5920 = bitcast float* %5918 to i32*
  br i1 %5916, label %5921, label %5928

; <label>:5921                                    ; preds = %5915
  %5922 = and i32 %5913, 1073741823
  %5923 = add i32 %5903, 20
  %5924 = add i32 %5923, %5922
  %5925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.i32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.i32 %5925, 1
  br label %5928

; <label>:5928                                    ; preds = %5921, %5915
  %5929 = phi i32 [ %5926, %5921 ], [ %5837, %5915 ]
  %5930 = phi i32 [ %5927, %5921 ], [ %5838, %5915 ]
  store i32 %5929, i32* %5919, align 4
  store i32 %5930, i32* %5920, align 4
  %5931 = add i32 %5888, 1
  br label %5932

; <label>:5932                                    ; preds = %5928, %5887
  %5933 = phi i32 [ %5888, %5887 ], [ %5931, %5928 ]
  %5934 = add nuw i32 %5889, 1
  %5935 = icmp eq i32 %5934, %5884
  br i1 %5935, label %5936, label %5887

; <label>:5936                                    ; preds = %5932
  br label %5937

; <label>:5937                                    ; preds = %5936, %5881
  %5938 = phi i32 [ %5882, %5881 ], [ %5933, %5936 ]
  %5939 = icmp eq i32 %5938, 1
  %5940 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %5941 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %5939, label %5942, label %5945

; <label>:5942                                    ; preds = %5937
  %5943 = load float, float* %5940, align 4
  %5944 = load float, float* %5941, align 4
  br label %5972

; <label>:5945                                    ; preds = %5937
  %5946 = load float, float* %5940, align 4
  %5947 = load float, float* %5941, align 4
  %5948 = fdiv fast float 1.000000e+00, %5947
  %5949 = fsub fast float %5946, %5948
  %5950 = icmp ugt i32 %5938, 1
  br i1 %5950, label %5951, label %5967

; <label>:5951                                    ; preds = %5945
  br label %5952

; <label>:5952                                    ; preds = %5952, %5951
  %5953 = phi float [ %5962, %5952 ], [ %5949, %5951 ]
  %5954 = phi float [ %5963, %5952 ], [ %5946, %5951 ]
  %5955 = phi i32 [ %5964, %5952 ], [ 1, %5951 ]
  %5956 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5955
  %5957 = load float, float* %5956, align 4
  %5958 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5955
  %5959 = load float, float* %5958, align 4
  %5960 = fdiv fast float 1.000000e+00, %5959
  %5961 = fsub fast float %5957, %5960
  %5962 = call float @dx.op.binary.f32(i32 36, float %5953, float %5961)  ; FMin(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5954, float %5957)  ; FMax(a,b)
  %5964 = add nuw i32 %5955, 1
  %5965 = icmp eq i32 %5964, %5938
  br i1 %5965, label %5966, label %5952

; <label>:5966                                    ; preds = %5952
  br label %5967

; <label>:5967                                    ; preds = %5966, %5945
  %5968 = phi float [ %5949, %5945 ], [ %5962, %5966 ]
  %5969 = phi float [ %5946, %5945 ], [ %5963, %5966 ]
  %5970 = fsub fast float %5969, %5968
  %5971 = fdiv fast float 1.000000e+00, %5970
  br label %5972

; <label>:5972                                    ; preds = %5967, %5942
  %5973 = phi float [ %5943, %5942 ], [ %5969, %5967 ]
  %5974 = phi float [ %5944, %5942 ], [ %5971, %5967 ]
  %5975 = fadd fast float %5676, %5973
  %5976 = fmul fast float %5975, %5974
  %5977 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  %5978 = fmul fast float %5977, 2.000000e+00
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = fmul fast float %5814, %5814
  %5981 = fsub fast float %5815, %5980
  %5982 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5981)  ; FMax(a,b)
  %5983 = fdiv fast float 1.000000e+00, %5982
  %5984 = fmul fast float %5815, %5814
  %5985 = fsub fast float %5816, %5984
  %5986 = fsub fast float %5979, %5814
  %5987 = fmul fast float %5979, %5979
  %5988 = fsub fast float %5987, %5815
  %5989 = fmul fast float %5983, %5985
  %5990 = fmul fast float %5989, %5986
  %5991 = fsub fast float %5988, %5990
  %5992 = fmul fast float %5815, %5815
  %5993 = fsub fast float %5817, %5992
  %5994 = fmul fast float %5985, %5985
  %5995 = fmul fast float %5994, %5983
  %5996 = fsub fast float %5993, %5995
  %5997 = fdiv fast float %5991, %5996
  %5998 = fmul fast float %5997, %5985
  %5999 = fsub fast float %5986, %5998
  %6000 = fmul fast float %5999, %5983
  %6001 = fmul fast float %6000, %5814
  %6002 = fsub fast float 1.000000e+00, %6001
  %6003 = fmul fast float %5997, %5815
  %6004 = fsub fast float %6002, %6003
  %6005 = fmul fast float %6000, %6000
  %6006 = fmul fast float %5997, 4.000000e+00
  %6007 = fmul fast float %6006, %6004
  %6008 = fsub fast float %6005, %6007
  %6009 = call float @dx.op.unary.f32(i32 24, float %6008)  ; Sqrt(value)
  %6010 = fcmp fast oge float %6000, 0.000000e+00
  %6011 = fsub fast float -0.000000e+00, %6009
  %6012 = select i1 %6010, float %6011, float %6009
  %6013 = fsub fast float %6012, %6000
  %6014 = fdiv fast float %6013, %5997
  %6015 = fdiv fast float %6004, %6013
  %6016 = fmul fast float %6014, 5.000000e-01
  %6017 = fmul fast float %6015, 2.000000e+00
  %6018 = select i1 %6010, float %6016, float %6017
  %6019 = select i1 %6010, float %6017, float %6016
  %6020 = call float @dx.op.binary.f32(i32 35, float %6018, float %6019)  ; FMax(a,b)
  %6021 = call float @dx.op.binary.f32(i32 36, float %6018, float %6019)  ; FMin(a,b)
  %6022 = fcmp fast ogt float %5979, %6020
  %6023 = fsub fast float %5979, %6021
  %6024 = fsub fast float %5979, %6020
  %6025 = fsub fast float %6020, %6021
  %6026 = select i1 %6022, float %6024, float %6025
  %6027 = fmul float %6023, %6026
  %6028 = select i1 %6022, float %6021, float %5979
  %6029 = fcmp fast ogt float %5979, %6021
  %6030 = fmul fast float %6028, %6020
  %6031 = fadd fast float %6028, %6020
  %6032 = fmul fast float %6031, %5814
  %6033 = fadd fast float %6030, %5815
  %6034 = fsub fast float %6033, %6032
  %6035 = fdiv fast float %6034, %6027
  %6036 = select i1 %6029, float %6035, float 0.000000e+00
  %6037 = fsub fast float 1.000000e+00, %6036
  %6038 = select i1 %6022, float %6037, float %6036
  %6039 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6040 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %6041 = fmul fast float %6040, %6039
  %6042 = fsub fast float 1.000000e+00, %6041
  br label %6043

; <label>:6043                                    ; preds = %5972, %5684, %5649, %5645, %5609
  %6044 = phi float [ 1.000000e+00, %5609 ], [ %6042, %5972 ], [ 1.000000e+00, %5649 ], [ 1.000000e+00, %5684 ], [ 1.000000e+00, %5645 ]
  %6045 = fcmp fast ogt float %5641, 0.000000e+00
  br i1 %6045, label %6046, label %6054, !dx.controlflow.hints !115

; <label>:6046                                    ; preds = %6043
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6049 = fadd fast float %6048, %5522
  %6050 = call float @dx.op.binary.f32(i32 35, float %6049, float 0.000000e+00)  ; FMax(a,b)
  %6051 = fadd fast float %6050, 0x3F10000000000000
  %6052 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5540, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float %6051)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6053 = extractvalue %dx.types.ResRet.f32 %6052, 0
  br label %6054

; <label>:6054                                    ; preds = %6046, %6043
  %6055 = phi float [ %6053, %6046 ], [ 1.000000e+00, %6043 ]
  %6056 = fcmp fast ogt float %5639, 0.000000e+00
  br i1 %6056, label %6057, label %6065, !dx.controlflow.hints !116

; <label>:6057                                    ; preds = %6054
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6060 = fadd fast float %6059, %5522
  %6061 = call float @dx.op.binary.f32(i32 35, float %6060, float 0.000000e+00)  ; FMax(a,b)
  %6062 = fadd fast float %6061, 0x3F10000000000000
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5532, float %5533, float undef, float undef, i32 0, i32 0, i32 undef, float %6062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  br label %6065

; <label>:6065                                    ; preds = %6057, %6054
  %6066 = phi float [ %6064, %6057 ], [ 1.000000e+00, %6054 ]
  %6067 = fcmp fast ogt float %5638, 0.000000e+00
  br i1 %6067, label %6068, label %6080, !dx.controlflow.hints !117

; <label>:6068                                    ; preds = %6065
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = fadd fast float %6070, %5522
  %6072 = call float @dx.op.binary.f32(i32 35, float %6071, float 0.000000e+00)  ; FMax(a,b)
  %6073 = fadd fast float %6072, 0x3F10000000000000
  br i1 %5525, label %6074, label %6077, !dx.controlflow.hints !118

; <label>:6074                                    ; preds = %6068
  %6075 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5514, float %5518, float undef, float undef, i32 0, i32 0, i32 undef, float %6073)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6076 = extractvalue %dx.types.ResRet.f32 %6075, 0
  br label %6080

; <label>:6077                                    ; preds = %6068
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5514, float %5518, float undef, float undef, i32 0, i32 0, i32 undef, float %6073)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  br label %6080

; <label>:6080                                    ; preds = %6077, %6074, %6065
  %6081 = phi float [ %6076, %6074 ], [ %6079, %6077 ], [ 1.000000e+00, %6065 ]
  %6082 = fsub fast float %6055, %6044
  %6083 = fmul fast float %6082, %5611
  %6084 = fadd fast float %6083, %6044
  %6085 = fsub fast float %6066, %6084
  %6086 = fmul fast float %6085, %5610
  %6087 = fadd fast float %6086, %6084
  %6088 = fsub fast float %6081, %6087
  %6089 = fmul fast float %6088, %5638
  %6090 = fadd fast float %6089, %6087
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6093 = fcmp fast ogt float %6092, 0.000000e+00
  br i1 %6093, label %6094, label %6134, !dx.controlflow.hints !119

; <label>:6094                                    ; preds = %6080
  %6095 = fcmp fast ugt float %6092, 0.000000e+00
  br i1 %6095, label %6096, label %6131

; <label>:6096                                    ; preds = %6094
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6107 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6113 = fadd fast float %6110, %5491
  %6114 = fadd fast float %6111, %5492
  %6115 = fadd fast float %6112, %5493
  %6116 = fmul fast float %6113, %6098
  %6117 = call float @dx.op.tertiary.f32(i32 46, float %6099, float %6114, float %6116)  ; FMad(a,b,c)
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %6100, float %6115, float %6117)  ; FMad(a,b,c)
  %6119 = fadd fast float %6118, %6101
  %6120 = fmul fast float %6113, %6103
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6114, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6115, float %6121)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6106
  %6124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6119, float %6123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6125 = extractvalue %dx.types.ResRet.f32 %6124, 0
  %6126 = fmul fast float %6125, %6108
  %6127 = fadd fast float %6126, %6107
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = fmul fast float %6128, %6092
  %6130 = fsub fast float 1.000000e+00, %6129
  br label %6131

; <label>:6131                                    ; preds = %6096, %6094
  %6132 = phi float [ %6130, %6096 ], [ 1.000000e+00, %6094 ]
  %6133 = fmul fast float %6132, %6090
  br label %6134

; <label>:6134                                    ; preds = %6131, %6080, %5471
  %6135 = phi float [ 1.000000e+00, %5471 ], [ %6133, %6131 ], [ %6090, %6080 ]
  %6136 = call float @dx.op.binary.f32(i32 36, float %6135, float %6135)  ; FMin(a,b)
  %6137 = call float @dx.op.binary.f32(i32 36, float %6135, float %6136)  ; FMin(a,b)
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6139, label %6299, !dx.controlflow.hints !120

; <label>:6139                                    ; preds = %6134
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6144 = extractvalue %dx.types.CBufRet.f32 %6140, 3
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.CBufRet.f32 %6145, 3
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6155 = fmul fast float %6141, %5491
  %6156 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %6142, float %6155)  ; FMad(a,b,c)
  %6157 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %6143, float %6156)  ; FMad(a,b,c)
  %6158 = fadd fast float %6157, %6144
  %6159 = fmul fast float %6146, %5491
  %6160 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %6147, float %6159)  ; FMad(a,b,c)
  %6161 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %6148, float %6160)  ; FMad(a,b,c)
  %6162 = fadd fast float %6161, %6149
  %6163 = fmul fast float %6151, %5491
  %6164 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %6152, float %6163)  ; FMad(a,b,c)
  %6165 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %6153, float %6164)  ; FMad(a,b,c)
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6170 = fmul fast float %6169, %6158
  %6171 = fmul fast float %6169, %6162
  %6172 = fadd fast float %6170, %6167
  %6173 = fadd fast float %6171, %6168
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = fsub fast float %6172, %6175
  %6178 = fsub fast float %6173, %6176
  %6179 = fcmp fast olt float %6177, 0.000000e+00
  %6180 = fcmp fast olt float %6178, 0.000000e+00
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = select i1 %6179, float %6182, float %6184
  %6187 = select i1 %6180, float %6183, float %6185
  %6188 = fmul fast float %6186, %6177
  %6189 = fmul fast float %6187, %6178
  %6190 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6192 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %6193 = call float @dx.op.binary.f32(i32 35, float %6190, float %6191)  ; FMax(a,b)
  %6194 = fsub fast float %6192, %6193
  %6195 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6196 = fcmp fast ogt float %6195, 0.000000e+00
  br i1 %6196, label %6197, label %6238, !dx.controlflow.hints !121

; <label>:6197                                    ; preds = %6139
  %6198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6172, float %6173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6200 = fcmp fast ogt float %6199, 0.000000e+00
  br i1 %6200, label %6201, label %6233

; <label>:6201                                    ; preds = %6197
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6172, float %6173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.ResRet.f32 %6202, 3
  %6207 = fsub fast float 1.000000e+00, %6154
  %6208 = fsub fast float %6207, %6165
  %6209 = fmul fast float %6208, 0x400921FB60000000
  %6210 = fadd fast float %6209, 0x3FF921FB60000000
  %6211 = call float @dx.op.unary.f32(i32 13, float %6210)  ; Sin(value)
  %6212 = fadd fast float %6211, -1.000000e+00
  %6213 = fmul fast float %6212, 0x3FD45F3060000000
  %6214 = fmul fast float %6208, 0x401921FB60000000
  %6215 = fadd fast float %6214, 0x400921FB60000000
  %6216 = call float @dx.op.unary.f32(i32 13, float %6215)  ; Sin(value)
  %6217 = fadd fast float %6216, 0x3E7777A5C0000000
  %6218 = fmul fast float %6217, 0x3FC45F3060000000
  %6219 = fmul fast float %6208, 0x4022D97C80000000
  %6220 = fadd fast float %6219, 0x4012D97C80000000
  %6221 = call float @dx.op.unary.f32(i32 13, float %6220)  ; Sin(value)
  %6222 = fadd fast float %6221, 1.000000e+00
  %6223 = fmul fast float %6222, 0x3FBB2995E0000000
  %6224 = fmul fast float %6208, 0x402921FB60000000
  %6225 = fadd fast float %6224, 0x401921FB60000000
  %6226 = call float @dx.op.unary.f32(i32 13, float %6225)  ; Sin(value)
  %6227 = fadd fast float %6226, 0xBE8777A5C0000000
  %6228 = fmul fast float %6227, 0x3FB45F3060000000
  %6229 = call float @dx.op.dot4.f32(i32 56, float %6203, float %6204, float %6205, float %6206, float %6213, float %6218, float %6223, float %6228)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6230 = fmul fast float %6229, 0xBFF7154760000000
  %6231 = call float @dx.op.unary.f32(i32 21, float %6230)  ; Exp(value)
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  br label %6233

; <label>:6233                                    ; preds = %6201, %6197
  %6234 = phi float [ %6232, %6201 ], [ 1.000000e+00, %6197 ]
  %6235 = fadd fast float %6234, -1.000000e+00
  %6236 = fmul fast float %6235, %6195
  %6237 = fadd fast float %6236, 1.000000e+00
  br label %6238

; <label>:6238                                    ; preds = %6233, %6139
  %6239 = phi float [ %6237, %6233 ], [ 1.000000e+00, %6139 ]
  %6240 = fmul fast float %6239, %6135
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = fadd fast float %6242, %193
  %6246 = fadd fast float %6243, %194
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6249 = fsub fast float -0.000000e+00, %6245
  %6250 = fsub fast float -0.000000e+00, %6246
  %6251 = fsub fast float %5247, %6244
  %6252 = fadd fast float %6251, %6248
  %6253 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6249, float %6250, float %6252)  ; Dot3(ax,ay,az,bx,by,bz)
  %6254 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = fdiv fast float 1.000000e+00, %6254
  %6256 = fmul fast float %6255, %6253
  %6257 = fmul fast float %5472, %6256
  %6258 = fmul fast float %5473, %6256
  %6259 = fadd fast float %6257, %6245
  %6260 = fadd fast float %6258, %6246
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = fsub fast float %6259, %6262
  %6265 = fsub fast float %6260, %6263
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6269 = fmul fast float %6264, %6267
  %6270 = fmul fast float %6265, %6268
  %6271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.i32 %6271, 3
  %6273 = icmp eq i32 %6272, 0
  br i1 %6273, label %6279, label %6274

; <label>:6274                                    ; preds = %6238
  %6275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6269, float %6270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.ResRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.ResRet.f32 %6275, 2
  br label %6284

; <label>:6279                                    ; preds = %6238
  %6280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6269, float %6270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6281 = extractvalue %dx.types.ResRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.ResRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.ResRet.f32 %6280, 2
  br label %6284

; <label>:6284                                    ; preds = %6279, %6274
  %6285 = phi float [ %6276, %6274 ], [ %6281, %6279 ]
  %6286 = phi float [ %6277, %6274 ], [ %6282, %6279 ]
  %6287 = phi float [ %6278, %6274 ], [ %6283, %6279 ]
  %6288 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6289 = fmul fast float %6288, %6285
  %6290 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6291 = fsub fast float %6256, %6290
  %6292 = fsub fast float %6291, %6289
  %6293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6292)  ; FMax(a,b)
  %6294 = fmul fast float %6293, %6286
  %6295 = call float @dx.op.binary.f32(i32 36, float %6287, float %6294)  ; FMin(a,b)
  %6296 = fmul fast float %6295, 0xBFF7154760000000
  %6297 = call float @dx.op.unary.f32(i32 21, float %6296)  ; Exp(value)
  %6298 = fmul fast float %6240, %6297
  br label %6299

; <label>:6299                                    ; preds = %6284, %6134
  %6300 = phi float [ %6298, %6284 ], [ %6135, %6134 ]
  %6301 = call float @dx.op.binary.f32(i32 36, float %6300, float %6300)  ; FMin(a,b)
  %6302 = call float @dx.op.binary.f32(i32 36, float %6300, float %6301)  ; FMin(a,b)
  %6303 = fcmp fast ogt float %6302, 0.000000e+00
  br i1 %6303, label %6304, label %6555, !dx.controlflow.hints !122

; <label>:6304                                    ; preds = %6299
  %6305 = fmul fast float %6300, %5483
  %6306 = fmul fast float %6300, %5484
  %6307 = fmul fast float %6300, %5485
  %6308 = fsub fast float %195, %4424
  %6309 = fcmp fast ogt float %6308, 0.000000e+00
  %6310 = fmul fast float %5472, 5.120000e+02
  %6311 = fmul fast float %5473, 5.120000e+02
  %6312 = fmul fast float %5474, 5.120000e+02
  %6313 = fadd fast float %6312, %195
  %6314 = fsub fast float %4424, %6313
  %6315 = fmul fast float %6314, 2.000000e+00
  %6316 = fadd fast float %6315, %6313
  %6317 = select i1 %6309, float %6316, float %6313
  %6318 = fsub fast float %6317, %195
  %6319 = call float @dx.op.dot3.f32(i32 55, float %6310, float %6311, float %6318, float %6310, float %6311, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = call float @dx.op.unary.f32(i32 25, float %6319)  ; Rsqrt(value)
  %6321 = fmul fast float %6320, %6310
  %6322 = fmul fast float %6320, %6311
  %6323 = fmul fast float %6320, %6318
  %6324 = fsub fast float %4424, %195
  %6325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6321, float %6322, float %6323)  ; Dot3(ax,ay,az,bx,by,bz)
  %6327 = fdiv fast float 1.000000e+00, %6326
  %6328 = fmul fast float %6327, %6325
  %6329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6308, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6330 = fcmp fast ogt float %6329, 0.000000e+00
  %6331 = fcmp fast olt float %6329, 0.000000e+00
  %6332 = zext i1 %6330 to i32
  %6333 = zext i1 %6331 to i32
  %6334 = sub nsw i32 %6332, %6333
  %6335 = sitofp i32 %6334 to float
  %6336 = fsub fast float %6317, %4424
  %6337 = call float @dx.op.dot3.f32(i32 55, float %6310, float %6311, float %6336, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = fcmp fast ogt float %6337, 0.000000e+00
  %6339 = fcmp fast olt float %6337, 0.000000e+00
  %6340 = zext i1 %6338 to i32
  %6341 = zext i1 %6339 to i32
  %6342 = sub nsw i32 %6340, %6341
  %6343 = sitofp i32 %6342 to float
  %6344 = fcmp fast une float %6335, %6343
  br i1 %6344, label %6345, label %6355

; <label>:6345                                    ; preds = %6304
  %6346 = fmul fast float %6328, %6323
  %6347 = fmul fast float %6328, %6322
  %6348 = fmul fast float %6328, %6321
  %6349 = fmul fast float %6348, %6348
  %6350 = fmul fast float %6347, %6347
  %6351 = fadd fast float %6349, %6350
  %6352 = fmul fast float %6346, %6346
  %6353 = fadd fast float %6351, %6352
  %6354 = call float @dx.op.unary.f32(i32 24, float %6353)  ; Sqrt(value)
  br label %6365

; <label>:6355                                    ; preds = %6304
  %6356 = icmp slt i32 %6334, 0
  br i1 %6356, label %6357, label %6365

; <label>:6357                                    ; preds = %6355
  %6358 = fsub fast float %195, %6317
  %6359 = fmul fast float %6310, %6310
  %6360 = fmul fast float %6311, %6311
  %6361 = fadd fast float %6359, %6360
  %6362 = fmul fast float %6358, %6358
  %6363 = fadd fast float %6361, %6362
  %6364 = call float @dx.op.unary.f32(i32 24, float %6363)  ; Sqrt(value)
  br label %6365

; <label>:6365                                    ; preds = %6357, %6355, %6345
  %6366 = phi float [ %6354, %6345 ], [ %6364, %6357 ], [ 0.000000e+00, %6355 ]
  %6367 = fsub fast float -0.000000e+00, %6366
  %6368 = select i1 %6309, float -0.000000e+00, float %6367
  %6369 = fmul fast float %4425, 0x3FF7154760000000
  %6370 = fmul fast float %6369, %6368
  %6371 = fmul fast float %4426, 0x3FF7154760000000
  %6372 = fmul fast float %6371, %6368
  %6373 = fmul fast float %4427, 0x3FF7154760000000
  %6374 = fmul fast float %6373, %6368
  %6375 = call float @dx.op.unary.f32(i32 21, float %6370)  ; Exp(value)
  %6376 = call float @dx.op.unary.f32(i32 21, float %6372)  ; Exp(value)
  %6377 = call float @dx.op.unary.f32(i32 21, float %6374)  ; Exp(value)
  %6378 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6379 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6381 = fmul fast float %6305, %6378
  %6382 = fmul fast float %6306, %6379
  %6383 = fmul fast float %6307, %6380
  %6384 = fsub fast float %5472, %5250
  %6385 = fsub fast float %5473, %5251
  %6386 = fsub fast float %5474, %5252
  %6387 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6386, float %6384, float %6385, float %6386)  ; Dot3(ax,ay,az,bx,by,bz)
  %6388 = call float @dx.op.unary.f32(i32 25, float %6387)  ; Rsqrt(value)
  %6389 = fmul fast float %6388, %6384
  %6390 = fmul fast float %6388, %6385
  %6391 = fmul fast float %6388, %6386
  %6392 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6393 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %6389, float %6390, float %6391)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6395 = fmul fast float %6394, %6394
  %6396 = fmul fast float %6395, %5271
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6398 = fmul fast float %6397, %6394
  %6399 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %6389, float %6390, float %6391)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = fmul fast float %6399, %6399
  %6401 = call float @dx.op.unary.f32(i32 6, float %6392)  ; FAbs(value)
  %6402 = fsub fast float 1.000000e+00, %5213
  %6403 = call float @dx.op.binary.f32(i32 35, float %6402, float 0x3F847AE140000000)  ; FMax(a,b)
  %6404 = fmul fast float %6403, %6403
  %6405 = fmul fast float %6404, %6404
  %6406 = fsub fast float 1.000000e+00, %6405
  %6407 = fmul fast float %5258, %5258
  %6408 = fmul fast float %6407, %6406
  %6409 = fadd fast float %6408, %6405
  %6410 = bitcast float %6409 to i32
  %6411 = ashr i32 %6410, 1
  %6412 = add nsw i32 %6411, 532487669
  %6413 = bitcast i32 %6412 to float
  %6414 = fadd fast float %6413, %5258
  %6415 = fmul fast float %6405, %6400
  %6416 = fsub fast float 1.000000e+00, %6400
  %6417 = fadd fast float %6416, %6415
  %6418 = fmul fast float %6401, %6401
  %6419 = fmul fast float %6418, %6406
  %6420 = fadd fast float %6419, %6405
  %6421 = bitcast float %6420 to i32
  %6422 = ashr i32 %6421, 1
  %6423 = add nsw i32 %6422, 532487669
  %6424 = bitcast i32 %6423 to float
  %6425 = fadd fast float %6424, %6401
  %6426 = fmul fast float %6417, %6417
  %6427 = fmul fast float %6426, %6414
  %6428 = fmul fast float %6427, %6425
  %6429 = fdiv fast float 0x3FF0A00000000000, %6428
  %6430 = fmul fast float %6429, %6405
  %6431 = call float @dx.op.unary.f32(i32 6, float %6393)  ; FAbs(value)
  %6432 = fsub fast float 1.000000e+00, %6431
  %6433 = bitcast float %6432 to i32
  %6434 = sitofp i32 %6433 to float
  %6435 = fmul fast float %6434, 5.000000e+00
  %6436 = fadd fast float %6435, 0xC1EFBF8940000000
  %6437 = fptosi float %6436 to i32
  %6438 = bitcast i32 %6437 to float
  %6439 = fsub fast float 1.000000e+00, %5207
  %6440 = fsub fast float 1.000000e+00, %5208
  %6441 = fsub fast float 1.000000e+00, %5256
  %6442 = fmul fast float %6438, %6439
  %6443 = fmul fast float %6438, %6440
  %6444 = fmul fast float %6438, %6441
  %6445 = fadd fast float %6442, %5207
  %6446 = fadd fast float %6443, %5208
  %6447 = fadd fast float %6444, %5256
  br i1 %5383, label %6448, label %6471

; <label>:6448                                    ; preds = %6365
  %6449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4023, float %6431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.ResRet.f32 %6449, 2
  %6453 = fadd fast float %6450, -5.000000e-01
  %6454 = fadd fast float %6451, -5.000000e-01
  %6455 = fadd fast float %6452, -5.000000e-01
  %6456 = fmul fast float %5207, 4.000000e+00
  %6457 = fmul fast float %6456, %6439
  %6458 = fmul fast float %6457, %6453
  %6459 = fmul fast float %5208, 4.000000e+00
  %6460 = fmul fast float %6459, %6440
  %6461 = fmul fast float %6460, %6454
  %6462 = fmul fast float %5256, 4.000000e+00
  %6463 = fmul fast float %6462, %6441
  %6464 = fmul fast float %6463, %6455
  %6465 = fadd fast float %6458, %6445
  %6466 = fadd fast float %6461, %6446
  %6467 = fadd fast float %6464, %6447
  %6468 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6469 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6470 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  br label %6471

; <label>:6471                                    ; preds = %6448, %6365
  %6472 = phi float [ %6468, %6448 ], [ %6445, %6365 ]
  %6473 = phi float [ %6469, %6448 ], [ %6446, %6365 ]
  %6474 = phi float [ %6470, %6448 ], [ %6447, %6365 ]
  %6475 = fmul fast float %6392, 9.843750e-01
  %6476 = fadd fast float %6475, 7.812500e-03
  %6477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6476, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 2
  %6479 = extractvalue %dx.types.ResRet.f32 %6477, 3
  %6480 = fmul fast float %6478, %5207
  %6481 = fmul fast float %6478, %5208
  %6482 = fmul fast float %6478, %5256
  %6483 = fadd fast float %6480, %6479
  %6484 = fadd fast float %6481, %6479
  %6485 = fadd fast float %6482, %6479
  br i1 %5383, label %6486, label %6509

; <label>:6486                                    ; preds = %6471
  %6487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4023, float %6392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.ResRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.ResRet.f32 %6487, 2
  %6491 = fadd fast float %6488, -5.000000e-01
  %6492 = fadd fast float %6489, -5.000000e-01
  %6493 = fadd fast float %6490, -5.000000e-01
  %6494 = fmul fast float %5207, 4.000000e+00
  %6495 = fmul fast float %6494, %6439
  %6496 = fmul fast float %6495, %6491
  %6497 = fmul fast float %5208, 4.000000e+00
  %6498 = fmul fast float %6497, %6440
  %6499 = fmul fast float %6498, %6492
  %6500 = fmul fast float %5256, 4.000000e+00
  %6501 = fmul fast float %6500, %6441
  %6502 = fmul fast float %6501, %6493
  %6503 = fadd fast float %6496, %6483
  %6504 = fadd fast float %6499, %6484
  %6505 = fadd fast float %6502, %6485
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6507 = call float @dx.op.unary.f32(i32 7, float %6504)  ; Saturate(value)
  %6508 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  br label %6509

; <label>:6509                                    ; preds = %6486, %6471
  %6510 = phi float [ %6506, %6486 ], [ %6483, %6471 ]
  %6511 = phi float [ %6507, %6486 ], [ %6484, %6471 ]
  %6512 = phi float [ %6508, %6486 ], [ %6485, %6471 ]
  %6513 = call float @dx.op.binary.f32(i32 35, float %6511, float %6512)  ; FMax(a,b)
  %6514 = call float @dx.op.binary.f32(i32 35, float %6510, float %6513)  ; FMax(a,b)
  %6515 = fsub fast float 1.000000e+00, %6514
  %6516 = fmul fast float %6472, %6430
  %6517 = fmul fast float %6473, %6430
  %6518 = fmul fast float %6474, %6430
  %6519 = fsub fast float 1.000000e+00, %6393
  %6520 = bitcast float %6519 to i32
  %6521 = sitofp i32 %6520 to float
  %6522 = fmul fast float %6521, 5.000000e+00
  %6523 = fadd fast float %6522, 0xC1EFBF8940000000
  %6524 = fptosi float %6523 to i32
  %6525 = bitcast i32 %6524 to float
  %6526 = fmul fast float %6525, %4024
  %6527 = fmul fast float %6515, %6526
  %6528 = fmul fast float %6527, %5433
  %6529 = fmul fast float %6527, %5434
  %6530 = fmul fast float %6527, %5435
  %6531 = fadd fast float %6528, %6516
  %6532 = fadd fast float %6529, %6517
  %6533 = fadd fast float %6530, %6518
  %6534 = fmul fast float %6398, %6381
  %6535 = fmul fast float %6534, %6515
  %6536 = fmul fast float %6398, %6382
  %6537 = fmul fast float %6536, %6515
  %6538 = fmul fast float %6398, %6383
  %6539 = fmul fast float %6538, %6515
  %6540 = fmul fast float %6534, %6531
  %6541 = fmul fast float %6536, %6532
  %6542 = fmul fast float %6538, %6533
  %6543 = fadd fast float %6535, %5417
  %6544 = fmul fast float %6543, %4020
  %6545 = fadd fast float %6537, %5418
  %6546 = fmul fast float %6545, %4020
  %6547 = fadd fast float %6539, %5419
  %6548 = fmul fast float %6547, %4020
  %6549 = fadd fast float %6540, %5460
  %6550 = fmul fast float %6549, %4020
  %6551 = fadd fast float %6541, %5463
  %6552 = fmul fast float %6551, %4020
  %6553 = fadd fast float %6542, %5466
  %6554 = fmul fast float %6553, %4020
  br label %6555

; <label>:6555                                    ; preds = %6509, %6299, %5410
  %6556 = phi float [ %5461, %5410 ], [ %5461, %6299 ], [ %6550, %6509 ]
  %6557 = phi float [ %5464, %5410 ], [ %5464, %6299 ], [ %6552, %6509 ]
  %6558 = phi float [ %5467, %5410 ], [ %5467, %6299 ], [ %6554, %6509 ]
  %6559 = phi float [ %5456, %5410 ], [ %5456, %6299 ], [ %6544, %6509 ]
  %6560 = phi float [ %5457, %5410 ], [ %5457, %6299 ], [ %6546, %6509 ]
  %6561 = phi float [ %5458, %5410 ], [ %5458, %6299 ], [ %6548, %6509 ]
  %6562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.i32 %6562, 0
  %6564 = icmp eq i32 %6563, 0
  br i1 %6564, label %7185, label %6565

; <label>:6565                                    ; preds = %6555
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 3
  %6569 = fmul fast float %6567, %106
  %6570 = fmul fast float %6568, %107
  %6571 = fptoui float %6569 to i32
  %6572 = fptoui float %6570 to i32
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6576 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6577 = fadd fast float %97, -4.000000e+00
  %6578 = call float @dx.op.binary.f32(i32 35, float %6577, float 0.000000e+00)  ; FMax(a,b)
  %6579 = fadd fast float %6578, %6574
  %6580 = fmul fast float %6579, %6575
  %6581 = call float @dx.op.unary.f32(i32 23, float %6580)  ; Log(value)
  %6582 = fmul fast float %6581, %6576
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 2
  %6585 = fmul fast float %6582, %6584
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.i32 %6587, 1
  %6589 = add i32 %6588, -1
  %6590 = uitofp i32 %6588 to float
  %6591 = fmul fast float %6590, %6586
  %6592 = fptoui float %6591 to i32
  %6593 = call i32 @dx.op.binary.i32(i32 40, i32 %6592, i32 %6589)  ; UMin(a,b)
  %6594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.i32 %6594, 2
  %6596 = extractvalue %dx.types.CBufRet.i32 %6594, 3
  %6597 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6572, i32 %6595, i32 %6571)  ; UMad(a,b,c)
  %6598 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6593, i32 %6596, i32 %6597)  ; UMad(a,b,c)
  %6599 = add nsw i32 %6563, -1
  %6600 = call i32 @dx.op.binary.i32(i32 37, i32 %6599, i32 0)  ; IMax(a,b)
  %6601 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6602 = fptoui float %6601 to i32
  %6603 = lshr i32 %6602, 5
  %6604 = call i32 @dx.op.binary.i32(i32 40, i32 %6603, i32 8191)  ; UMin(a,b)
  %6605 = shl i32 %6604, 2
  %6606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6605, i32 undef)  ; BufferLoad(srv,index,wot)
  %6607 = extractvalue %dx.types.ResRet.i32 %6606, 0
  %6608 = lshr i32 %6607, 16
  %6609 = and i32 %6607, 65535
  %6610 = lshr i32 %6607, 21
  %6611 = lshr i32 %6609, 5
  %6612 = call i32 @dx.op.binary.i32(i32 40, i32 %6611, i32 %6600)  ; UMin(a,b)
  %6613 = icmp ugt i32 %6610, %6612
  br i1 %6613, label %7185, label %6614

; <label>:6614                                    ; preds = %6565
  br label %6615

; <label>:6615                                    ; preds = %7175, %6614
  %6616 = phi i32 [ %7182, %7175 ], [ %6610, %6614 ]
  %6617 = phi float [ %7176, %7175 ], [ %6556, %6614 ]
  %6618 = phi float [ %7177, %7175 ], [ %6557, %6614 ]
  %6619 = phi float [ %7178, %7175 ], [ %6558, %6614 ]
  %6620 = phi float [ %7179, %7175 ], [ %6559, %6614 ]
  %6621 = phi float [ %7180, %7175 ], [ %6560, %6614 ]
  %6622 = phi float [ %7181, %7175 ], [ %6561, %6614 ]
  %6623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.i32 %6623, 0
  %6625 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6598, i32 %6624, i32 %6616)  ; UMad(a,b,c)
  %6626 = shl i32 %6625, 2
  %6627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6626, i32 undef)  ; BufferLoad(srv,index,wot)
  %6628 = extractvalue %dx.types.ResRet.i32 %6627, 0
  %6629 = shl i32 %6616, 5
  %6630 = sub nsw i32 %6608, %6629
  %6631 = call i32 @dx.op.binary.i32(i32 37, i32 %6630, i32 0)  ; IMax(a,b)
  %6632 = call i32 @dx.op.binary.i32(i32 38, i32 %6631, i32 31)  ; IMin(a,b)
  %6633 = sub nsw i32 1, %6608
  %6634 = add nsw i32 %6633, %6609
  %6635 = call i32 @dx.op.binary.i32(i32 37, i32 %6634, i32 0)  ; IMax(a,b)
  %6636 = call i32 @dx.op.binary.i32(i32 38, i32 %6635, i32 32)  ; IMin(a,b)
  %6637 = and i32 %6636, 31
  %6638 = shl i32 -1, %6637
  %6639 = xor i32 %6638, -1
  %6640 = and i32 %6632, 31
  %6641 = shl i32 %6639, %6640
  %6642 = icmp eq i32 %6636, 32
  %6643 = select i1 %6642, i32 -1, i32 %6641
  %6644 = and i32 %6643, %6628
  %6645 = icmp eq i32 %6644, 0
  br i1 %6645, label %7175, label %6646

; <label>:6646                                    ; preds = %6615
  br label %6647

; <label>:6647                                    ; preds = %6781, %6646
  %6648 = phi i32 [ %6659, %6781 ], [ %6644, %6646 ]
  %6649 = phi float [ %6782, %6781 ], [ %6617, %6646 ]
  %6650 = phi float [ %6783, %6781 ], [ %6618, %6646 ]
  %6651 = phi float [ %6784, %6781 ], [ %6619, %6646 ]
  %6652 = phi float [ %6785, %6781 ], [ %6620, %6646 ]
  %6653 = phi float [ %6786, %6781 ], [ %6621, %6646 ]
  %6654 = phi float [ %6787, %6781 ], [ %6622, %6646 ]
  %6655 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6648)  ; FirstbitLo(value)
  %6656 = add i32 %6655, %6629
  %6657 = and i32 %6655, 31
  %6658 = shl i32 1, %6657
  %6659 = xor i32 %6658, %6648
  %6660 = mul i32 %6656, 112
  %6661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6660, i32 undef)  ; BufferLoad(srv,index,wot)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = or i32 %6660, 12
  %6666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6665, i32 undef)  ; BufferLoad(srv,index,wot)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = add i32 %6660, 16
  %6669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6668, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = add i32 %6660, 28
  %6674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6673, i32 undef)  ; BufferLoad(srv,index,wot)
  %6675 = extractvalue %dx.types.ResRet.i32 %6674, 0
  %6676 = add i32 %6660, 44
  %6677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6676, i32 undef)  ; BufferLoad(srv,index,wot)
  %6678 = extractvalue %dx.types.ResRet.f32 %6677, 0
  %6679 = add i32 %6660, 48
  %6680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6679, i32 undef)  ; BufferLoad(srv,index,wot)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.ResRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.ResRet.f32 %6680, 2
  %6684 = extractvalue %dx.types.ResRet.f32 %6680, 3
  %6685 = add i32 %6660, 64
  %6686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6685, i32 undef)  ; BufferLoad(srv,index,wot)
  %6687 = extractvalue %dx.types.ResRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.ResRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.ResRet.f32 %6686, 2
  %6690 = extractvalue %dx.types.ResRet.f32 %6686, 3
  %6691 = add i32 %6660, 80
  %6692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6691, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 1
  %6694 = extractvalue %dx.types.ResRet.f32 %6692, 2
  %6695 = add i32 %6660, 92
  %6696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6695, i32 undef)  ; BufferLoad(srv,index,wot)
  %6697 = extractvalue %dx.types.ResRet.i32 %6696, 0
  %6698 = call float @dx.op.dot3.f32(i32 55, float %6662, float %6663, float %6664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = select i1 %252, float %6693, float %6662
  %6700 = select i1 %252, float %6698, float %6663
  %6701 = select i1 %252, float %6694, float %6664
  %6702 = and i32 %6697, 65535
  %6703 = uitofp i32 %6702 to float
  %6704 = lshr i32 %6697, 16
  %6705 = uitofp i32 %6704 to float
  %6706 = and i32 %6675, 65535
  %6707 = and i32 %6675, 50331648
  %6708 = icmp eq i32 %6707, 33554432
  %6709 = fsub fast float %6681, %193
  %6710 = fsub fast float %6682, %194
  %6711 = fsub fast float %6683, %195
  %6712 = call float @dx.op.dot3.f32(i32 55, float %6709, float %6710, float %6711, float %6709, float %6710, float %6711)  ; Dot3(ax,ay,az,bx,by,bz)
  %6713 = call float @dx.op.unary.f32(i32 24, float %6712)  ; Sqrt(value)
  %6714 = fdiv fast float 1.000000e+00, %6713
  %6715 = fmul fast float %6714, %6709
  %6716 = fmul fast float %6714, %6710
  %6717 = fmul fast float %6714, %6711
  %6718 = fadd fast float %6713, %6667
  %6719 = fdiv fast float 1.000000e+00, %6718
  %6720 = fmul float %6678, %6719
  %6721 = fmul float %6720, %6720
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  br i1 %6708, label %6723, label %6744

; <label>:6723                                    ; preds = %6647
  %6724 = fmul fast float %6689, %6670
  %6725 = fmul fast float %6689, %6671
  %6726 = fmul fast float %6689, %6672
  %6727 = fadd fast float %6709, %6724
  %6728 = fadd fast float %6710, %6725
  %6729 = fadd fast float %6711, %6726
  %6730 = call float @dx.op.dot3.f32(i32 55, float %6727, float %6728, float %6729, float %6727, float %6728, float %6729)  ; Dot3(ax,ay,az,bx,by,bz)
  %6731 = call float @dx.op.unary.f32(i32 25, float %6730)  ; Rsqrt(value)
  %6732 = fmul fast float %6731, %6727
  %6733 = fmul fast float %6731, %6728
  %6734 = fmul fast float %6731, %6729
  %6735 = fsub fast float %193, %6681
  %6736 = fsub fast float %194, %6682
  %6737 = fsub fast float %195, %6683
  %6738 = fsub fast float -0.000000e+00, %6735
  %6739 = fsub fast float -0.000000e+00, %6736
  %6740 = fsub fast float -0.000000e+00, %6737
  %6741 = call float @dx.op.dot3.f32(i32 55, float %6738, float %6739, float %6740, float %6670, float %6671, float %6672)  ; Dot3(ax,ay,az,bx,by,bz)
  %6742 = fcmp fast ogt float %6741, 0.000000e+00
  %6743 = uitofp i1 %6742 to float
  br label %6744

; <label>:6744                                    ; preds = %6723, %6647
  %6745 = phi float [ %6743, %6723 ], [ 1.000000e+00, %6647 ]
  %6746 = phi float [ %6732, %6723 ], [ %6715, %6647 ]
  %6747 = phi float [ %6733, %6723 ], [ %6716, %6647 ]
  %6748 = phi float [ %6734, %6723 ], [ %6717, %6647 ]
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6670, float %6671, float %6672, float %6746, float %6747, float %6748)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = fmul fast float %6749, %6749
  %6751 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6752, 5.000000e-01
  %6754 = fcmp fast ogt float %6749, 0.000000e+00
  %6755 = fsub fast float 1.000000e+00, %6753
  %6756 = select i1 %6754, float %6753, float %6755
  %6757 = fmul fast float %6756, %6705
  %6758 = fadd fast float %6757, %6703
  %6759 = fmul fast float %6758, 0x3EF0001000000000
  %6760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6759, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6761 = extractvalue %dx.types.ResRet.f32 %6760, 0
  %6762 = fmul fast float %6749, %6687
  %6763 = fadd fast float %6762, %6688
  %6764 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6765 = select i1 %6708, float 1.000000e+00, float %6764
  %6766 = select i1 %6708, float %6764, float 1.000000e+00
  %6767 = fmul fast float %6713, %6684
  %6768 = fsub fast float 1.000000e+00, %6767
  %6769 = fmul fast float %6768, %6690
  %6770 = call float @dx.op.unary.f32(i32 7, float %6769)  ; Saturate(value)
  %6771 = fmul fast float %6770, %6766
  %6772 = fmul fast float %6771, 2.000000e+00
  %6773 = fsub fast float 3.000000e+00, %6772
  %6774 = fmul fast float %6761, %6745
  %6775 = fmul fast float %6771, %6771
  %6776 = fmul fast float %6775, %6774
  %6777 = fmul fast float %6776, %6773
  %6778 = call float @dx.op.binary.f32(i32 36, float %6777, float %6777)  ; FMin(a,b)
  %6779 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6780 = fcmp fast ogt float %6779, 0.000000e+00
  br i1 %6780, label %6789, label %6781, !dx.controlflow.hints !123

; <label>:6781                                    ; preds = %7131, %6889, %6744
  %6782 = phi float [ %6649, %6889 ], [ %6649, %6744 ], [ %7171, %7131 ]
  %6783 = phi float [ %6650, %6889 ], [ %6650, %6744 ], [ %7172, %7131 ]
  %6784 = phi float [ %6651, %6889 ], [ %6651, %6744 ], [ %7173, %7131 ]
  %6785 = phi float [ %6652, %6889 ], [ %6652, %6744 ], [ %7165, %7131 ]
  %6786 = phi float [ %6653, %6889 ], [ %6653, %6744 ], [ %7166, %7131 ]
  %6787 = phi float [ %6654, %6889 ], [ %6654, %6744 ], [ %7167, %7131 ]
  %6788 = icmp eq i32 %6648, %6658
  br i1 %6788, label %7174, label %6647

; <label>:6789                                    ; preds = %6744
  %6790 = icmp eq i32 %6706, 255
  br i1 %6790, label %6889, label %6791, !dx.controlflow.hints !124

; <label>:6791                                    ; preds = %6789
  %6792 = mul nuw nsw i32 %6706, 176
  %6793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6792, i32 undef)  ; BufferLoad(srv,index,wot)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.ResRet.f32 %6793, 3
  %6798 = add nuw nsw i32 %6792, 16
  %6799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6798, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.ResRet.f32 %6799, 1
  %6802 = add nuw nsw i32 %6792, 32
  %6803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6802, i32 undef)  ; BufferLoad(srv,index,wot)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = add nuw nsw i32 %6792, 48
  %6808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6807, i32 undef)  ; BufferLoad(srv,index,wot)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = extractvalue %dx.types.ResRet.f32 %6808, 1
  %6811 = extractvalue %dx.types.ResRet.f32 %6808, 2
  %6812 = extractvalue %dx.types.ResRet.f32 %6808, 3
  %6813 = add nuw nsw i32 %6792, 64
  %6814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6813, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.ResRet.f32 %6814, 3
  %6819 = add nuw nsw i32 %6792, 80
  %6820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6819, i32 undef)  ; BufferLoad(srv,index,wot)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = extractvalue %dx.types.ResRet.f32 %6820, 1
  %6823 = extractvalue %dx.types.ResRet.f32 %6820, 2
  %6824 = extractvalue %dx.types.ResRet.f32 %6820, 3
  %6825 = add nuw nsw i32 %6792, 96
  %6826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6825, i32 undef)  ; BufferLoad(srv,index,wot)
  %6827 = extractvalue %dx.types.ResRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.ResRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.ResRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.ResRet.f32 %6826, 3
  %6831 = bitcast float %6801 to i32
  %6832 = fmul fast float %6806, %113
  %6833 = fmul fast float %6806, %114
  %6834 = fmul fast float %6806, %115
  %6835 = fadd fast float %6832, %193
  %6836 = fadd fast float %6833, %194
  %6837 = fadd fast float %6834, %195
  %6838 = fmul fast float %6835, %6809
  %6839 = call float @dx.op.tertiary.f32(i32 46, float %6836, float %6815, float %6838)  ; FMad(a,b,c)
  %6840 = call float @dx.op.tertiary.f32(i32 46, float %6837, float %6821, float %6839)  ; FMad(a,b,c)
  %6841 = fadd fast float %6840, %6827
  %6842 = fmul fast float %6835, %6810
  %6843 = call float @dx.op.tertiary.f32(i32 46, float %6836, float %6816, float %6842)  ; FMad(a,b,c)
  %6844 = call float @dx.op.tertiary.f32(i32 46, float %6837, float %6822, float %6843)  ; FMad(a,b,c)
  %6845 = fadd fast float %6844, %6828
  %6846 = fmul fast float %6835, %6811
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %6836, float %6817, float %6846)  ; FMad(a,b,c)
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6837, float %6823, float %6847)  ; FMad(a,b,c)
  %6849 = fadd fast float %6848, %6829
  %6850 = fmul fast float %6835, %6812
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %6836, float %6818, float %6850)  ; FMad(a,b,c)
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6837, float %6824, float %6851)  ; FMad(a,b,c)
  %6853 = fadd fast float %6852, %6830
  %6854 = fdiv fast float %6841, %6853
  %6855 = fdiv fast float %6845, %6853
  %6856 = fdiv fast float %6849, %6853
  %6857 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6856)  ; FMax(a,b)
  %6858 = fmul fast float %263, 0x401921FB60000000
  %6859 = call float @dx.op.unary.f32(i32 13, float %6858)  ; Sin(value)
  %6860 = call float @dx.op.unary.f32(i32 12, float %6858)  ; Cos(value)
  %6861 = fsub fast float -0.000000e+00, %6859
  %6862 = fmul fast float %6796, 5.000000e-01
  %6863 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6864 = call float @dx.op.unary.f32(i32 22, float %6863)  ; Frc(value)
  %6865 = fmul fast float %6864, 0x404A7DD040000000
  %6866 = call float @dx.op.unary.f32(i32 22, float %6865)  ; Frc(value)
  %6867 = fmul fast float %6866, %6805
  %6868 = fadd fast float %6867, %6862
  %6869 = call float @dx.op.tertiary.f32(i32 46, float %6868, float %6861, float 0.000000e+00)  ; FMad(a,b,c)
  %6870 = call float @dx.op.tertiary.f32(i32 46, float %6868, float %6860, float 0.000000e+00)  ; FMad(a,b,c)
  %6871 = fadd fast float %6869, %6854
  %6872 = fadd fast float %6870, %6855
  %6873 = fmul fast float %6871, %6800
  %6874 = fmul fast float %6872, %6800
  %6875 = call float @dx.op.binary.f32(i32 35, float %6873, float %6796)  ; FMax(a,b)
  %6876 = call float @dx.op.binary.f32(i32 35, float %6874, float %6796)  ; FMax(a,b)
  %6877 = call float @dx.op.binary.f32(i32 36, float %6875, float %6797)  ; FMin(a,b)
  %6878 = call float @dx.op.binary.f32(i32 36, float %6876, float %6797)  ; FMin(a,b)
  %6879 = fadd fast float %6877, %6794
  %6880 = fadd fast float %6878, %6795
  %6881 = uitofp i32 %6831 to float
  %6882 = fadd fast float %6857, %6804
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6879, float %6880, float %6881, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = fadd fast float %6884, -1.000000e+00
  %6886 = fmul fast float %6885, %6765
  %6887 = fadd fast float %6886, 1.000000e+00
  %6888 = fmul fast float %6887, %6777
  br label %6889

; <label>:6889                                    ; preds = %6791, %6789
  %6890 = phi float [ %6888, %6791 ], [ %6777, %6789 ]
  %6891 = call float @dx.op.binary.f32(i32 36, float %6890, float %6890)  ; FMin(a,b)
  %6892 = call float @dx.op.binary.f32(i32 36, float %6890, float %6891)  ; FMin(a,b)
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  br i1 %6893, label %6894, label %6781, !dx.controlflow.hints !125

; <label>:6894                                    ; preds = %6889
  %6895 = fmul fast float %6890, %6699
  %6896 = fmul fast float %6890, %6700
  %6897 = fmul fast float %6890, %6701
  %6898 = fsub fast float %6683, %4424
  %6899 = fcmp fast ogt float %6898, 0.000000e+00
  %6900 = fsub fast float %195, %4424
  %6901 = fcmp fast ogt float %6900, 0.000000e+00
  %6902 = xor i1 %6901, %6899
  %6903 = fsub fast float %4424, %6683
  %6904 = fmul fast float %6903, 2.000000e+00
  %6905 = fadd fast float %6904, %6683
  %6906 = select i1 %6902, float %6683, float %6905
  %6907 = fsub fast float %6906, %195
  %6908 = call float @dx.op.dot3.f32(i32 55, float %6709, float %6710, float %6907, float %6709, float %6710, float %6907)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = call float @dx.op.unary.f32(i32 25, float %6908)  ; Rsqrt(value)
  %6910 = fmul fast float %6909, %6709
  %6911 = fmul fast float %6909, %6710
  %6912 = fmul fast float %6909, %6907
  %6913 = fsub fast float %4424, %195
  %6914 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6913)  ; Dot3(ax,ay,az,bx,by,bz)
  %6915 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6910, float %6911, float %6912)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = fdiv fast float 1.000000e+00, %6915
  %6917 = fmul fast float %6916, %6914
  %6918 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6900, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = fcmp fast ogt float %6918, 0.000000e+00
  %6920 = fcmp fast olt float %6918, 0.000000e+00
  %6921 = zext i1 %6919 to i32
  %6922 = zext i1 %6920 to i32
  %6923 = sub nsw i32 %6921, %6922
  %6924 = sitofp i32 %6923 to float
  %6925 = fsub fast float %6906, %4424
  %6926 = call float @dx.op.dot3.f32(i32 55, float %6709, float %6710, float %6925, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6927 = fcmp fast ogt float %6926, 0.000000e+00
  %6928 = fcmp fast olt float %6926, 0.000000e+00
  %6929 = zext i1 %6927 to i32
  %6930 = zext i1 %6928 to i32
  %6931 = sub nsw i32 %6929, %6930
  %6932 = sitofp i32 %6931 to float
  %6933 = fcmp fast une float %6924, %6932
  br i1 %6933, label %6934, label %6944

; <label>:6934                                    ; preds = %6894
  %6935 = fmul fast float %6917, %6912
  %6936 = fmul fast float %6917, %6911
  %6937 = fmul fast float %6917, %6910
  %6938 = fmul fast float %6937, %6937
  %6939 = fmul fast float %6936, %6936
  %6940 = fadd fast float %6938, %6939
  %6941 = fmul fast float %6935, %6935
  %6942 = fadd fast float %6940, %6941
  %6943 = call float @dx.op.unary.f32(i32 24, float %6942)  ; Sqrt(value)
  br label %6956

; <label>:6944                                    ; preds = %6894
  %6945 = icmp slt i32 %6923, 0
  br i1 %6945, label %6946, label %6956

; <label>:6946                                    ; preds = %6944
  %6947 = fsub fast float %193, %6681
  %6948 = fsub fast float %194, %6682
  %6949 = fsub fast float %195, %6906
  %6950 = fmul fast float %6947, %6947
  %6951 = fmul fast float %6948, %6948
  %6952 = fadd fast float %6950, %6951
  %6953 = fmul fast float %6949, %6949
  %6954 = fadd fast float %6952, %6953
  %6955 = call float @dx.op.unary.f32(i32 24, float %6954)  ; Sqrt(value)
  br label %6956

; <label>:6956                                    ; preds = %6946, %6944, %6934
  %6957 = phi float [ %6943, %6934 ], [ %6955, %6946 ], [ 0.000000e+00, %6944 ]
  %6958 = and i1 %6901, %6899
  %6959 = fsub fast float -0.000000e+00, %6957
  %6960 = select i1 %6958, float -0.000000e+00, float %6959
  %6961 = fmul fast float %4425, 0x3FF7154760000000
  %6962 = fmul fast float %6961, %6960
  %6963 = fmul fast float %4426, 0x3FF7154760000000
  %6964 = fmul fast float %6963, %6960
  %6965 = fmul fast float %4427, 0x3FF7154760000000
  %6966 = fmul fast float %6965, %6960
  %6967 = call float @dx.op.unary.f32(i32 21, float %6962)  ; Exp(value)
  %6968 = call float @dx.op.unary.f32(i32 21, float %6964)  ; Exp(value)
  %6969 = call float @dx.op.unary.f32(i32 21, float %6966)  ; Exp(value)
  %6970 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6971 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6972 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6973 = fmul fast float %6895, %6970
  %6974 = fmul fast float %6896, %6971
  %6975 = fmul fast float %6897, %6972
  %6976 = fsub fast float %6715, %5250
  %6977 = fsub fast float %6716, %5251
  %6978 = fsub fast float %6717, %5252
  %6979 = call float @dx.op.dot3.f32(i32 55, float %6976, float %6977, float %6978, float %6976, float %6977, float %6978)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = call float @dx.op.unary.f32(i32 25, float %6979)  ; Rsqrt(value)
  %6981 = fmul fast float %6980, %6976
  %6982 = fmul fast float %6980, %6977
  %6983 = fmul fast float %6980, %6978
  %6984 = call float @dx.op.dot3.f32(i32 55, float %6715, float %6716, float %6717, float %5210, float %5211, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6985 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %6981, float %6982, float %6983)  ; Dot3(ax,ay,az,bx,by,bz)
  %6986 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6987 = fmul fast float %6986, %6722
  %6988 = fmul fast float %6986, %6986
  %6989 = fmul fast float %6988, %5271
  %6990 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6991 = fmul fast float %6987, %6990
  %6992 = bitcast float %6712 to i32
  %6993 = ashr i32 %6992, 1
  %6994 = sub nsw i32 1597463007, %6993
  %6995 = bitcast i32 %6994 to float
  %6996 = fmul fast float %6995, %6709
  %6997 = fmul fast float %6995, %6710
  %6998 = fmul fast float %6995, %6711
  %6999 = fsub fast float %6996, %5250
  %7000 = fsub fast float %6997, %5251
  %7001 = fsub fast float %6998, %5252
  %7002 = call float @dx.op.dot3.f32(i32 55, float %6999, float %7000, float %7001, float %6999, float %7000, float %7001)  ; Dot3(ax,ay,az,bx,by,bz)
  %7003 = call float @dx.op.unary.f32(i32 25, float %7002)  ; Rsqrt(value)
  %7004 = fmul fast float %6999, %7003
  %7005 = fmul fast float %7000, %7003
  %7006 = fmul fast float %7001, %7003
  %7007 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %7004, float %7005, float %7006)  ; Dot3(ax,ay,az,bx,by,bz)
  %7008 = fmul fast float %7007, %7007
  %7009 = call float @dx.op.unary.f32(i32 6, float %6984)  ; FAbs(value)
  %7010 = fsub fast float 1.000000e+00, %5213
  %7011 = call float @dx.op.binary.f32(i32 35, float %7010, float 0x3F847AE140000000)  ; FMax(a,b)
  %7012 = fmul fast float %7011, %7011
  %7013 = fmul fast float %7012, %7012
  %7014 = fsub fast float 1.000000e+00, %7013
  %7015 = fmul fast float %5258, %5258
  %7016 = fmul fast float %7015, %7014
  %7017 = fadd fast float %7016, %7013
  %7018 = bitcast float %7017 to i32
  %7019 = ashr i32 %7018, 1
  %7020 = add nsw i32 %7019, 532487669
  %7021 = bitcast i32 %7020 to float
  %7022 = fadd fast float %7021, %5258
  %7023 = fmul fast float %7013, %7008
  %7024 = fsub fast float 1.000000e+00, %7008
  %7025 = fadd fast float %7024, %7023
  %7026 = fmul fast float %7009, %7009
  %7027 = fmul fast float %7026, %7014
  %7028 = fadd fast float %7027, %7013
  %7029 = bitcast float %7028 to i32
  %7030 = ashr i32 %7029, 1
  %7031 = add nsw i32 %7030, 532487669
  %7032 = bitcast i32 %7031 to float
  %7033 = fadd fast float %7032, %7009
  %7034 = fmul fast float %7025, %7025
  %7035 = fmul fast float %7034, %7022
  %7036 = fmul fast float %7035, %7033
  %7037 = fdiv fast float 1.000000e+00, %7036
  %7038 = bitcast float %7013 to i32
  %7039 = sitofp i32 %7038 to float
  %7040 = fmul fast float %7039, 0x3FE7F73180000000
  %7041 = fadd fast float %7040, 0x41AFE27C40000000
  %7042 = fptosi float %7041 to i32
  %7043 = bitcast i32 %7042 to float
  %7044 = fmul fast float %6678, 0x3FD80E9D60000000
  %7045 = fmul fast float %7044, %6995
  %7046 = fadd fast float %7043, %7045
  %7047 = bitcast float %7046 to i32
  %7048 = sub nsw i32 2129859010, %7047
  %7049 = bitcast i32 %7048 to float
  %7050 = fmul fast float %7013, %7037
  %7051 = fmul fast float %7050, %7043
  %7052 = fmul fast float %7051, %7049
  %7053 = call float @dx.op.unary.f32(i32 6, float %6985)  ; FAbs(value)
  %7054 = fsub fast float 1.000000e+00, %7053
  %7055 = bitcast float %7054 to i32
  %7056 = sitofp i32 %7055 to float
  %7057 = fmul fast float %7056, 5.000000e+00
  %7058 = fadd fast float %7057, 0xC1EFBF8940000000
  %7059 = fptosi float %7058 to i32
  %7060 = bitcast i32 %7059 to float
  %7061 = fsub fast float 1.000000e+00, %5207
  %7062 = fsub fast float 1.000000e+00, %5208
  %7063 = fsub fast float 1.000000e+00, %5256
  %7064 = fmul fast float %7060, %7061
  %7065 = fmul fast float %7060, %7062
  %7066 = fmul fast float %7060, %7063
  %7067 = fadd fast float %7064, %5207
  %7068 = fadd fast float %7065, %5208
  %7069 = fadd fast float %7066, %5256
  br i1 %5383, label %7070, label %7093

; <label>:7070                                    ; preds = %6956
  %7071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4023, float %7053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.ResRet.f32 %7071, 2
  %7075 = fadd fast float %7072, -5.000000e-01
  %7076 = fadd fast float %7073, -5.000000e-01
  %7077 = fadd fast float %7074, -5.000000e-01
  %7078 = fmul fast float %5207, 4.000000e+00
  %7079 = fmul fast float %7078, %7061
  %7080 = fmul fast float %7079, %7075
  %7081 = fmul fast float %5208, 4.000000e+00
  %7082 = fmul fast float %7081, %7062
  %7083 = fmul fast float %7082, %7076
  %7084 = fmul fast float %5256, 4.000000e+00
  %7085 = fmul fast float %7084, %7063
  %7086 = fmul fast float %7085, %7077
  %7087 = fadd fast float %7080, %7067
  %7088 = fadd fast float %7083, %7068
  %7089 = fadd fast float %7086, %7069
  %7090 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7091 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7092 = call float @dx.op.unary.f32(i32 7, float %7089)  ; Saturate(value)
  br label %7093

; <label>:7093                                    ; preds = %7070, %6956
  %7094 = phi float [ %7090, %7070 ], [ %7067, %6956 ]
  %7095 = phi float [ %7091, %7070 ], [ %7068, %6956 ]
  %7096 = phi float [ %7092, %7070 ], [ %7069, %6956 ]
  %7097 = fmul fast float %6984, 9.843750e-01
  %7098 = fadd fast float %7097, 7.812500e-03
  %7099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7098, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7100 = extractvalue %dx.types.ResRet.f32 %7099, 2
  %7101 = extractvalue %dx.types.ResRet.f32 %7099, 3
  %7102 = fmul fast float %7100, %5207
  %7103 = fmul fast float %7100, %5208
  %7104 = fmul fast float %7100, %5256
  %7105 = fadd fast float %7102, %7101
  %7106 = fadd fast float %7103, %7101
  %7107 = fadd fast float %7104, %7101
  br i1 %5383, label %7108, label %7131

; <label>:7108                                    ; preds = %7093
  %7109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4023, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = fadd fast float %7110, -5.000000e-01
  %7114 = fadd fast float %7111, -5.000000e-01
  %7115 = fadd fast float %7112, -5.000000e-01
  %7116 = fmul fast float %5207, 4.000000e+00
  %7117 = fmul fast float %7116, %7061
  %7118 = fmul fast float %7117, %7113
  %7119 = fmul fast float %5208, 4.000000e+00
  %7120 = fmul fast float %7119, %7062
  %7121 = fmul fast float %7120, %7114
  %7122 = fmul fast float %5256, 4.000000e+00
  %7123 = fmul fast float %7122, %7063
  %7124 = fmul fast float %7123, %7115
  %7125 = fadd fast float %7118, %7105
  %7126 = fadd fast float %7121, %7106
  %7127 = fadd fast float %7124, %7107
  %7128 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7130 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  br label %7131

; <label>:7131                                    ; preds = %7108, %7093
  %7132 = phi float [ %7128, %7108 ], [ %7105, %7093 ]
  %7133 = phi float [ %7129, %7108 ], [ %7106, %7093 ]
  %7134 = phi float [ %7130, %7108 ], [ %7107, %7093 ]
  %7135 = call float @dx.op.binary.f32(i32 35, float %7133, float %7134)  ; FMax(a,b)
  %7136 = call float @dx.op.binary.f32(i32 35, float %7132, float %7135)  ; FMax(a,b)
  %7137 = fsub fast float 1.000000e+00, %7136
  %7138 = fmul fast float %7094, %7052
  %7139 = fmul fast float %7095, %7052
  %7140 = fmul fast float %7096, %7052
  %7141 = fsub fast float 1.000000e+00, %6985
  %7142 = bitcast float %7141 to i32
  %7143 = sitofp i32 %7142 to float
  %7144 = fmul fast float %7143, 5.000000e+00
  %7145 = fadd fast float %7144, 0xC1EFBF8940000000
  %7146 = fptosi float %7145 to i32
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %7147, %4024
  %7149 = fmul fast float %7137, %7148
  %7150 = fmul fast float %7149, %5433
  %7151 = fmul fast float %7149, %5434
  %7152 = fmul fast float %7149, %5435
  %7153 = fadd fast float %7150, %7138
  %7154 = fadd fast float %7151, %7139
  %7155 = fadd fast float %7152, %7140
  %7156 = fmul fast float %6973, %4020
  %7157 = fmul fast float %7156, %6991
  %7158 = fmul fast float %7157, %7137
  %7159 = fmul fast float %6974, %4020
  %7160 = fmul fast float %7159, %6991
  %7161 = fmul fast float %7160, %7137
  %7162 = fmul fast float %6975, %4020
  %7163 = fmul fast float %7162, %6991
  %7164 = fmul fast float %7163, %7137
  %7165 = fadd fast float %7158, %6652
  %7166 = fadd fast float %7161, %6653
  %7167 = fadd fast float %7164, %6654
  %7168 = fmul fast float %7157, %7153
  %7169 = fmul fast float %7160, %7154
  %7170 = fmul fast float %7163, %7155
  %7171 = fadd fast float %7168, %6649
  %7172 = fadd fast float %7169, %6650
  %7173 = fadd fast float %7170, %6651
  br label %6781

; <label>:7174                                    ; preds = %6781
  br label %7175

; <label>:7175                                    ; preds = %7174, %6615
  %7176 = phi float [ %6617, %6615 ], [ %6782, %7174 ]
  %7177 = phi float [ %6618, %6615 ], [ %6783, %7174 ]
  %7178 = phi float [ %6619, %6615 ], [ %6784, %7174 ]
  %7179 = phi float [ %6620, %6615 ], [ %6785, %7174 ]
  %7180 = phi float [ %6621, %6615 ], [ %6786, %7174 ]
  %7181 = phi float [ %6622, %6615 ], [ %6787, %7174 ]
  %7182 = add i32 %6616, 1
  %7183 = icmp ugt i32 %7182, %6612
  br i1 %7183, label %7184, label %6615

; <label>:7184                                    ; preds = %7175
  br label %7185

; <label>:7185                                    ; preds = %7184, %6565, %6555
  %7186 = phi float [ %6556, %6555 ], [ %6556, %6565 ], [ %7176, %7184 ]
  %7187 = phi float [ %6557, %6555 ], [ %6557, %6565 ], [ %7177, %7184 ]
  %7188 = phi float [ %6558, %6555 ], [ %6558, %6565 ], [ %7178, %7184 ]
  %7189 = phi float [ %6559, %6555 ], [ %6559, %6565 ], [ %7179, %7184 ]
  %7190 = phi float [ %6560, %6555 ], [ %6560, %6565 ], [ %7180, %7184 ]
  %7191 = phi float [ %6561, %6555 ], [ %6561, %6565 ], [ %7181, %7184 ]
  %7192 = fmul fast float %4020, %4020
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7193, float %7193, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = fsub fast float 1.000000e+00, %7194
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 0
  %7198 = fmul fast float %7197, %5439
  %7199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7200 = extractvalue %dx.types.CBufRet.f32 %7199, 3
  %7201 = fsub fast float 1.000000e+00, %4027
  %7202 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7203 = fadd fast float %7191, %4026
  %7204 = fmul fast float %7203, %4027
  %7205 = fmul fast float %7202, %7200
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 3
  %7208 = fmul fast float %7189, %5204
  %7209 = fmul fast float %7190, %5205
  %7210 = fmul fast float %7191, %5206
  %7211 = fcmp fast ogt float %97, %215
  %7212 = and i1 %7211, %4430
  %7213 = or i1 %4436, %7212
  %7214 = icmp eq i32 %4429, 2
  %7215 = fcmp fast ole float %97, %215
  %7216 = and i1 %7215, %7214
  %7217 = or i1 %7216, %7213
  br i1 %7212, label %7218, label %7475

; <label>:7218                                    ; preds = %7185
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 3
  %7222 = fmul fast float %7220, %106
  %7223 = fmul fast float %7221, %107
  %7224 = call float @dx.op.unary.f32(i32 7, float %7222)  ; Saturate(value)
  %7225 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7226 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7224, float %7225, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.ResRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.ResRet.f32 %7226, 2
  %7230 = extractvalue %dx.types.ResRet.f32 %7226, 3
  %7231 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7224, float %7225, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7232 = extractvalue %dx.types.ResRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.ResRet.f32 %7231, 1
  %7234 = extractvalue %dx.types.ResRet.f32 %7231, 2
  %7235 = extractvalue %dx.types.ResRet.f32 %7231, 3
  %7236 = call float @dx.op.binary.f32(i32 35, float %7228, float %7229)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 35, float %7227, float %7236)  ; FMax(a,b)
  %7238 = call float @dx.op.binary.f32(i32 35, float %7237, float %7230)  ; FMax(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7233, float %7234)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 36, float %7232, float %7239)  ; FMin(a,b)
  %7241 = call float @dx.op.binary.f32(i32 36, float %7240, float %7235)  ; FMin(a,b)
  %7242 = fmul fast float %7238, 2.550000e+02
  %7243 = fadd fast float %7242, 0x3F70101020000000
  %7244 = fptoui float %7243 to i32
  %7245 = fmul fast float %7241, 2.550000e+02
  %7246 = fadd fast float %7245, 0x3F70101020000000
  %7247 = fptoui float %7246 to i32
  %7248 = icmp ult i32 %7244, %7247
  br i1 %7248, label %7249, label %7417

; <label>:7249                                    ; preds = %7218
  %7250 = fcmp fast ogt float %96, 9.843750e-01
  %7251 = fadd fast float %97, -4.000000e+00
  %7252 = select i1 %7250, float -4.000000e+00, float %7251
  %7253 = call float @dx.op.binary.f32(i32 35, float %7252, float 0.000000e+00)  ; FMax(a,b)
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7256 = fadd fast float %7255, %7253
  %7257 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7258 = fmul fast float %7256, %7257
  %7259 = call float @dx.op.unary.f32(i32 23, float %7258)  ; Log(value)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7254, 3
  %7261 = fmul fast float %7260, %7259
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7264 = fmul fast float %7261, %7263
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7266 = uitofp i32 %7244 to float
  %7267 = uitofp i32 %7247 to float
  %7268 = fadd fast float %7266, 5.000000e-01
  %7269 = fadd fast float %7267, 5.000000e-01
  %7270 = fmul fast float %7263, %7268
  %7271 = fmul fast float %7263, %7269
  %7272 = fadd fast float %7270, 0x3F0FFB4800000000
  %7273 = fadd fast float %7271, 0xBF0FFB4800000000
  %7274 = call float @dx.op.binary.f32(i32 35, float %7265, float %7272)  ; FMax(a,b)
  %7275 = call float @dx.op.binary.f32(i32 36, float %7274, float %7273)  ; FMin(a,b)
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7279 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7280 = fmul fast float %7277, %7275
  %7281 = fadd fast float %7279, %7280
  %7282 = fadd fast float %7279, %7278
  %7283 = fsub fast float %7277, %7278
  %7284 = fadd fast float %7283, %7279
  %7285 = call float @dx.op.binary.f32(i32 35, float %7281, float %7282)  ; FMax(a,b)
  %7286 = call float @dx.op.binary.f32(i32 36, float %7285, float %7284)  ; FMin(a,b)
  %7287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7224, float %7225, float %7286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.ResRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.ResRet.f32 %7287, 2
  %7291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.i32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.i32 %7291, 1
  %7294 = uitofp i32 %7292 to float
  %7295 = uitofp i32 %7293 to float
  %7296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.CBufRet.f32 %7296, 1
  %7299 = fmul fast float %7294, %7224
  %7300 = fmul fast float %7295, %7225
  %7301 = fadd fast float %7299, -5.000000e-01
  %7302 = fadd fast float %7300, -5.000000e-01
  %7303 = call float @dx.op.unary.f32(i32 22, float %7301)  ; Frc(value)
  %7304 = call float @dx.op.unary.f32(i32 22, float %7302)  ; Frc(value)
  %7305 = fmul fast float %7303, %7303
  %7306 = fmul fast float %7305, %7303
  %7307 = fsub fast float 3.000000e+00, %7303
  %7308 = fmul fast float %7305, %7307
  %7309 = fmul fast float %7303, 3.000000e+00
  %7310 = fmul fast float %7306, 3.000000e+00
  %7311 = fmul fast float %7305, 6.000000e+00
  %7312 = fsub fast float %7310, %7311
  %7313 = fadd fast float %7312, 4.000000e+00
  %7314 = fmul fast float %7313, 0x3FC5555560000000
  %7315 = fmul fast float %7306, -3.000000e+00
  %7316 = fadd fast float %7305, %7303
  %7317 = fmul fast float %7316, 3.000000e+00
  %7318 = fadd fast float %7315, 1.000000e+00
  %7319 = fadd fast float %7318, %7317
  %7320 = fmul fast float %7306, 0x3FC5555560000000
  %7321 = fmul fast float %7304, %7304
  %7322 = fmul fast float %7321, %7304
  %7323 = fsub fast float 3.000000e+00, %7304
  %7324 = fmul fast float %7321, %7323
  %7325 = fmul fast float %7304, 3.000000e+00
  %7326 = fmul fast float %7322, 3.000000e+00
  %7327 = fmul fast float %7321, 6.000000e+00
  %7328 = fsub fast float %7326, %7327
  %7329 = fadd fast float %7328, 4.000000e+00
  %7330 = fmul fast float %7329, 0x3FC5555560000000
  %7331 = fmul fast float %7322, -3.000000e+00
  %7332 = fadd fast float %7321, %7304
  %7333 = fmul fast float %7332, 3.000000e+00
  %7334 = fadd fast float %7331, 1.000000e+00
  %7335 = fadd fast float %7334, %7333
  %7336 = fmul fast float %7322, 0x3FC5555560000000
  %7337 = fadd fast float %7303, 1.000000e+00
  %7338 = fsub fast float 1.000000e+00, %7309
  %7339 = fadd fast float %7338, %7308
  %7340 = fadd fast float %7339, %7313
  %7341 = fmul fast float %7340, 0x3FC5555560000000
  %7342 = fdiv fast float %7314, %7341
  %7343 = fsub fast float %7337, %7342
  %7344 = fsub fast float 1.000000e+00, %7303
  %7345 = fadd fast float %7319, %7306
  %7346 = fmul fast float %7345, 0x3FC5555560000000
  %7347 = fdiv fast float %7320, %7346
  %7348 = fadd fast float %7344, %7347
  %7349 = fadd fast float %7304, 1.000000e+00
  %7350 = fsub fast float 1.000000e+00, %7325
  %7351 = fadd fast float %7350, %7324
  %7352 = fadd fast float %7351, %7329
  %7353 = fmul fast float %7352, 0x3FC5555560000000
  %7354 = fdiv fast float %7330, %7353
  %7355 = fsub fast float %7349, %7354
  %7356 = fsub fast float 1.000000e+00, %7304
  %7357 = fadd fast float %7335, %7322
  %7358 = fmul fast float %7357, 0x3FC5555560000000
  %7359 = fdiv fast float %7336, %7358
  %7360 = fadd fast float %7359, %7356
  %7361 = fmul fast float %7343, %7297
  %7362 = fsub fast float %7224, %7361
  %7363 = fmul fast float %7348, %7297
  %7364 = fadd fast float %7363, %7224
  %7365 = fmul fast float %7360, %7298
  %7366 = fadd fast float %7365, %7225
  %7367 = fmul fast float %7355, %7298
  %7368 = fsub fast float %7225, %7367
  %7369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7362, float %7368, float %7286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7370 = extractvalue %dx.types.ResRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.ResRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.ResRet.f32 %7369, 2
  %7373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7364, float %7368, float %7286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7362, float %7366, float %7286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.ResRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.ResRet.f32 %7377, 2
  %7381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7364, float %7366, float %7286, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.ResRet.f32 %7381, 1
  %7384 = extractvalue %dx.types.ResRet.f32 %7381, 2
  %7385 = fsub fast float %7378, %7370
  %7386 = fsub fast float %7379, %7371
  %7387 = fsub fast float %7380, %7372
  %7388 = fmul fast float %7385, %7358
  %7389 = fmul fast float %7386, %7358
  %7390 = fmul fast float %7387, %7358
  %7391 = fadd fast float %7388, %7370
  %7392 = fadd fast float %7389, %7371
  %7393 = fadd fast float %7390, %7372
  %7394 = fsub fast float %7382, %7374
  %7395 = fsub fast float %7383, %7375
  %7396 = fsub fast float %7384, %7376
  %7397 = fmul fast float %7394, %7358
  %7398 = fmul fast float %7395, %7358
  %7399 = fmul fast float %7396, %7358
  %7400 = fsub fast float %7374, %7391
  %7401 = fadd fast float %7400, %7397
  %7402 = fsub fast float %7375, %7392
  %7403 = fadd fast float %7402, %7398
  %7404 = fsub fast float %7376, %7393
  %7405 = fadd fast float %7404, %7399
  %7406 = fmul fast float %7401, %7346
  %7407 = fmul fast float %7403, %7346
  %7408 = fmul fast float %7405, %7346
  %7409 = fadd fast float %7406, %7391
  %7410 = fadd fast float %7407, %7392
  %7411 = fadd fast float %7408, %7393
  %7412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7412, 1
  %7414 = fmul fast float %7409, %7413
  %7415 = fmul fast float %7410, %7413
  %7416 = fmul fast float %7411, %7413
  br label %7417

; <label>:7417                                    ; preds = %7249, %7218
  %7418 = phi float [ %7288, %7249 ], [ 1.000000e+00, %7218 ]
  %7419 = phi float [ %7289, %7249 ], [ 1.000000e+00, %7218 ]
  %7420 = phi float [ %7290, %7249 ], [ 1.000000e+00, %7218 ]
  %7421 = phi float [ %7414, %7249 ], [ 0.000000e+00, %7218 ]
  %7422 = phi float [ %7415, %7249 ], [ 0.000000e+00, %7218 ]
  %7423 = phi float [ %7416, %7249 ], [ 0.000000e+00, %7218 ]
  %7424 = fmul fast float %7421, %7195
  %7425 = fmul fast float %7422, %7195
  %7426 = fmul fast float %7423, %7195
  %7427 = call float @dx.op.dot3.f32(i32 55, float %7418, float %7419, float %7420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7428 = call float @dx.op.dot3.f32(i32 55, float %7424, float %7425, float %7426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7429 = select i1 %252, float %7427, float %7418
  %7430 = select i1 %252, float %7427, float %7419
  %7431 = select i1 %252, float 1.000000e+00, float %7420
  %7432 = select i1 %252, float %7428, float %7424
  %7433 = select i1 %252, float 0.000000e+00, float %7425
  %7434 = select i1 %252, float 0.000000e+00, float %7426
  %7435 = fmul fast float %7429, %7208
  %7436 = fmul fast float %7430, %7209
  %7437 = fmul fast float %7431, %7210
  %7438 = fadd fast float %7435, %7432
  %7439 = fadd fast float %7436, %7433
  %7440 = fadd fast float %7434, %7437
  %7441 = fmul fast float %7429, %7186
  %7442 = fmul fast float %7430, %7187
  %7443 = fmul fast float %7431, %7188
  %7444 = fmul fast float %142, %7220
  %7445 = fmul fast float %144, %7221
  %7446 = fsub fast float 1.000000e+00, %7444
  %7447 = fsub fast float 1.000000e+00, %7445
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7450 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7451 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7452 = fmul fast float %7446, %7449
  %7453 = fmul fast float %7446, %7450
  %7454 = fmul fast float %7446, %7451
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = fmul fast float %7447, %7456
  %7460 = fmul fast float %7447, %7457
  %7461 = fmul fast float %7447, %7458
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7466 = fadd fast float %7459, %7463
  %7467 = fadd fast float %7466, %7452
  %7468 = fadd fast float %7460, %7464
  %7469 = fadd fast float %7468, %7453
  %7470 = fadd fast float %7461, %7465
  %7471 = fadd fast float %7470, %7454
  %7472 = fmul fast float %7467, %215
  %7473 = fmul fast float %7469, %215
  %7474 = fmul fast float %7471, %215
  br label %7475

; <label>:7475                                    ; preds = %7417, %7185
  %7476 = phi float [ %7472, %7417 ], [ %193, %7185 ]
  %7477 = phi float [ %7473, %7417 ], [ %194, %7185 ]
  %7478 = phi float [ %7474, %7417 ], [ %195, %7185 ]
  %7479 = phi float [ %215, %7417 ], [ %97, %7185 ]
  %7480 = phi float [ %7438, %7417 ], [ %7208, %7185 ]
  %7481 = phi float [ %7439, %7417 ], [ %7209, %7185 ]
  %7482 = phi float [ %7440, %7417 ], [ %7210, %7185 ]
  %7483 = phi float [ %7441, %7417 ], [ %7186, %7185 ]
  %7484 = phi float [ %7442, %7417 ], [ %7187, %7185 ]
  %7485 = phi float [ %7443, %7417 ], [ %7188, %7185 ]
  %7486 = phi float [ %7418, %7417 ], [ 1.000000e+00, %7185 ]
  br i1 %7217, label %8641, label %7487

; <label>:7487                                    ; preds = %7475
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7490 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %7491 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %7492 = extractvalue %dx.types.CBufRet.f32 %7488, 3
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7497 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7498, 3
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7507 = extractvalue %dx.types.CBufRet.f32 %7503, 3
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 3
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7513 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7514 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7515 = fcmp fast olt float %7514, -5.000000e-01
  %7516 = call float @dx.op.dot3.f32(i32 55, float %7476, float %7477, float %7478, float %7476, float %7477, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = call float @dx.op.unary.f32(i32 25, float %7516)  ; Rsqrt(value)
  %7518 = fmul fast float %7517, %7516
  %7519 = fmul fast float %7517, %7476
  %7520 = fmul fast float %7517, %7477
  %7521 = fmul fast float %7517, %7478
  %7522 = fadd fast float %7518, %7492
  %7523 = call float @dx.op.dot3.f32(i32 55, float %7519, float %7520, float %7521, float %7489, float %7490, float %7491)  ; Dot3(ax,ay,az,bx,by,bz)
  %7524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.i32 %7524, 1
  %7526 = and i32 %7525, 1
  %7527 = icmp ne i32 %7526, 0
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 2
  %7530 = fcmp fast ogt float %7529, 0.000000e+00
  %7531 = and i1 %7527, %7530
  br i1 %7531, label %7532, label %7938, !dx.controlflow.hints !126

; <label>:7532                                    ; preds = %7487
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 3
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7539 = fsub fast float %7536, %7538
  %7540 = and i32 %7525, 2
  %7541 = extractvalue %dx.types.CBufRet.i32 %7524, 0
  %7542 = call i32 @dx.op.binary.i32(i32 40, i32 %7541, i32 3)  ; UMin(a,b)
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 0
  %7545 = extractvalue %dx.types.CBufRet.f32 %7543, 1
  %7546 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7547 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7548 = fsub fast float %7544, %7546
  %7549 = fsub fast float %7545, %7547
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 0
  %7552 = fcmp fast ogt float %7551, 0.000000e+00
  %7553 = fsub fast float -0.000000e+00, %7548
  %7554 = fsub fast float -0.000000e+00, %7549
  %7555 = call float @dx.op.dot2.f32(i32 54, float %7519, float %7520, float %7519, float %7520)  ; Dot2(ax,ay,bx,by)
  %7556 = call float @dx.op.dot2.f32(i32 54, float %7519, float %7520, float %7553, float %7554)  ; Dot2(ax,ay,bx,by)
  %7557 = fmul fast float %7556, 2.000000e+00
  %7558 = call float @dx.op.dot2.f32(i32 54, float %7553, float %7554, float %7553, float %7554)  ; Dot2(ax,ay,bx,by)
  %7559 = fmul fast float %7551, %7551
  %7560 = fsub fast float %7558, %7559
  %7561 = fmul fast float %7557, %7557
  %7562 = fmul fast float %7555, 4.000000e+00
  %7563 = fmul fast float %7562, %7560
  %7564 = fsub fast float %7561, %7563
  %7565 = fcmp fast ogt float %7564, 0.000000e+00
  br i1 %7565, label %7566, label %7581

; <label>:7566                                    ; preds = %7532
  %7567 = fcmp fast ogt float %7557, 0.000000e+00
  %7568 = call float @dx.op.unary.f32(i32 24, float %7564)  ; Sqrt(value)
  %7569 = fsub fast float -0.000000e+00, %7568
  %7570 = select i1 %7567, float %7568, float %7569
  %7571 = fadd fast float %7570, %7557
  %7572 = fmul float %7571, -5.000000e-01
  %7573 = fdiv fast float %7572, %7555
  %7574 = call float @dx.op.binary.f32(i32 35, float %7573, float 0.000000e+00)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 36, float %7518, float %7574)  ; FMin(a,b)
  %7576 = fdiv fast float %7560, %7572
  %7577 = call float @dx.op.binary.f32(i32 35, float %7576, float 0.000000e+00)  ; FMax(a,b)
  %7578 = call float @dx.op.binary.f32(i32 36, float %7518, float %7577)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7575, float %7578)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 35, float %7575, float %7578)  ; FMax(a,b)
  br label %7581

; <label>:7581                                    ; preds = %7566, %7532
  %7582 = phi float [ %7580, %7566 ], [ -1.000000e+00, %7532 ]
  %7583 = phi float [ %7579, %7566 ], [ -1.000000e+00, %7532 ]
  %7584 = phi i1 [ true, %7566 ], [ false, %7532 ]
  %7585 = and i1 %7552, %7584
  br i1 %7585, label %7586, label %7588

; <label>:7586                                    ; preds = %7581
  %7587 = fcmp fast oeq float %7583, %7582
  br i1 %7587, label %7891, label %7589

; <label>:7588                                    ; preds = %7581
  br i1 %7552, label %7891, label %7589

; <label>:7589                                    ; preds = %7588, %7586
  %7590 = phi float [ %7518, %7588 ], [ %7582, %7586 ]
  %7591 = phi float [ 0.000000e+00, %7588 ], [ %7583, %7586 ]
  %7592 = icmp ne i32 %7540, 0
  %7593 = fmul fast float %7590, %7521
  %7594 = fadd fast float %7593, %7534
  %7595 = fmul fast float %7594, %7590
  %7596 = select i1 %7592, float 0.000000e+00, float %7595
  %7597 = fcmp fast oeq float %7521, 0.000000e+00
  %7598 = fdiv fast float %7539, %7521
  %7599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7598)  ; FMax(a,b)
  %7600 = select i1 %7597, float %7590, float %7599
  %7601 = call float @dx.op.binary.f32(i32 36, float %7590, float %7600)  ; FMin(a,b)
  %7602 = fcmp fast ogt float %7521, 0.000000e+00
  %7603 = fcmp fast olt float %7539, 0.000000e+00
  br i1 %7602, label %7604, label %7661

; <label>:7604                                    ; preds = %7589
  %7605 = icmp eq i32 %7540, 0
  br i1 %7603, label %7606, label %7650

; <label>:7606                                    ; preds = %7604
  %7607 = select i1 %7605, float %7590, float 0.000000e+00
  %7608 = fsub fast float -0.000000e+00, %7607
  %7609 = call float @dx.op.unary.f32(i32 6, float %7608)  ; FAbs(value)
  %7610 = fmul fast float %7607, %7521
  %7611 = fadd fast float %7610, %7534
  %7612 = fmul fast float %7609, %7611
  %7613 = fsub fast float %7596, %7612
  %7614 = fsub fast float %7590, %7609
  %7615 = select i1 %7605, float %7614, float 0.000000e+00
  %7616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7617 = extractvalue %dx.types.CBufRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.CBufRet.f32 %7616, 2
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7624 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7627 = call float @dx.op.binary.f32(i32 36, float %7613, float %7626)  ; FMin(a,b)
  %7628 = fmul fast float %7624, %7615
  %7629 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7630 = fsub fast float %7621, %7617
  %7631 = fsub fast float %7622, %7618
  %7632 = fsub fast float %7623, %7619
  %7633 = fmul fast float %7629, %7630
  %7634 = fmul fast float %7629, %7631
  %7635 = fmul fast float %7629, %7632
  %7636 = fadd fast float %7633, %7617
  %7637 = fadd fast float %7634, %7618
  %7638 = fadd fast float %7635, %7619
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.CBufRet.f32 %7639, 1
  %7642 = fadd fast float %7641, %7640
  %7643 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7639, 2
  %7645 = extractvalue %dx.types.CBufRet.f32 %7639, 3
  %7646 = fadd fast float %7645, %7644
  %7647 = call float @dx.op.unary.f32(i32 7, float %7646)  ; Saturate(value)
  %7648 = fmul fast float %7643, %7627
  %7649 = fmul fast float %7648, %7647
  br label %7891

; <label>:7650                                    ; preds = %7604
  br i1 %7605, label %7651, label %7672

; <label>:7651                                    ; preds = %7650
  %7652 = call float @dx.op.binary.f32(i32 36, float %7601, float %7591)  ; FMin(a,b)
  %7653 = fsub fast float %7601, %7652
  %7654 = fsub fast float %7653, %7590
  %7655 = call float @dx.op.unary.f32(i32 6, float %7654)  ; FAbs(value)
  %7656 = fadd fast float %7653, %7590
  %7657 = fmul fast float %7656, %7521
  %7658 = fadd fast float %7657, %7534
  %7659 = fmul fast float %7658, %7655
  %7660 = fsub fast float %7596, %7659
  br label %7672

; <label>:7661                                    ; preds = %7589
  br i1 %7603, label %7662, label %7672

; <label>:7662                                    ; preds = %7661
  %7663 = call float @dx.op.binary.f32(i32 35, float %7591, float %7601)  ; FMax(a,b)
  %7664 = icmp eq i32 %7540, 0
  %7665 = select i1 %7664, float %7601, float 0.000000e+00
  %7666 = fsub fast float -0.000000e+00, %7665
  %7667 = call float @dx.op.unary.f32(i32 6, float %7666)  ; FAbs(value)
  %7668 = fmul fast float %7665, %7521
  %7669 = fadd fast float %7668, %7534
  %7670 = fmul fast float %7667, %7669
  %7671 = fsub fast float %7596, %7670
  br label %7672

; <label>:7672                                    ; preds = %7662, %7661, %7651, %7650
  %7673 = phi float [ %7591, %7650 ], [ %7591, %7651 ], [ %7663, %7662 ], [ %7591, %7661 ]
  %7674 = phi float [ 0.000000e+00, %7650 ], [ %7655, %7651 ], [ %7667, %7662 ], [ 0.000000e+00, %7661 ]
  %7675 = phi float [ %7596, %7650 ], [ %7660, %7651 ], [ %7671, %7662 ], [ %7596, %7661 ]
  %7676 = phi float [ %7601, %7650 ], [ %7601, %7651 ], [ %7590, %7662 ], [ %7590, %7661 ]
  %7677 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7677, align 4, !tbaa !127, !noalias !129
  %7678 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7678, align 4, !tbaa !127, !noalias !129
  %7679 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7679, align 4, !tbaa !127, !noalias !129
  %7680 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7680, align 4, !tbaa !127, !noalias !129
  %7681 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7681, align 4, !tbaa !127, !noalias !129
  %7682 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7682, align 4, !tbaa !127, !noalias !129
  %7683 = icmp sgt i32 %7542, 0
  br i1 %7683, label %7684, label %7745

; <label>:7684                                    ; preds = %7672
  br label %7685

; <label>:7685                                    ; preds = %7734, %7684
  %7686 = phi i32 [ %7735, %7734 ], [ 0, %7684 ]
  %7687 = phi i32 [ %7736, %7734 ], [ 0, %7684 ]
  %7688 = add nuw i32 %7687, 171
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7688)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = fsub fast float %7690, %7693
  %7696 = fsub fast float %7691, %7694
  %7697 = extractvalue %dx.types.CBufRet.f32 %7689, 2
  %7698 = fsub fast float -0.000000e+00, %7695
  %7699 = fsub fast float -0.000000e+00, %7696
  %7700 = call float @dx.op.dot2.f32(i32 54, float %7519, float %7520, float %7698, float %7699)  ; Dot2(ax,ay,bx,by)
  %7701 = fmul fast float %7700, 2.000000e+00
  %7702 = call float @dx.op.dot2.f32(i32 54, float %7698, float %7699, float %7698, float %7699)  ; Dot2(ax,ay,bx,by)
  %7703 = fmul fast float %7697, %7697
  %7704 = fsub fast float %7702, %7703
  %7705 = fmul fast float %7701, %7701
  %7706 = fmul fast float %7562, %7704
  %7707 = fsub fast float %7705, %7706
  %7708 = fcmp fast ogt float %7707, 0.000000e+00
  br i1 %7708, label %7709, label %7724

; <label>:7709                                    ; preds = %7685
  %7710 = fcmp fast ogt float %7701, 0.000000e+00
  %7711 = call float @dx.op.unary.f32(i32 24, float %7707)  ; Sqrt(value)
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = select i1 %7710, float %7711, float %7712
  %7714 = fadd fast float %7713, %7701
  %7715 = fmul float %7714, -5.000000e-01
  %7716 = fdiv fast float %7715, %7555
  %7717 = call float @dx.op.binary.f32(i32 35, float %7716, float 0.000000e+00)  ; FMax(a,b)
  %7718 = call float @dx.op.binary.f32(i32 36, float %7590, float %7717)  ; FMin(a,b)
  %7719 = fdiv fast float %7704, %7715
  %7720 = call float @dx.op.binary.f32(i32 35, float %7719, float 0.000000e+00)  ; FMax(a,b)
  %7721 = call float @dx.op.binary.f32(i32 36, float %7590, float %7720)  ; FMin(a,b)
  %7722 = call float @dx.op.binary.f32(i32 36, float %7718, float %7721)  ; FMin(a,b)
  %7723 = call float @dx.op.binary.f32(i32 35, float %7718, float %7721)  ; FMax(a,b)
  br label %7724

; <label>:7724                                    ; preds = %7709, %7685
  %7725 = phi float [ %7723, %7709 ], [ -1.000000e+00, %7685 ]
  %7726 = phi float [ %7722, %7709 ], [ -1.000000e+00, %7685 ]
  %7727 = phi i1 [ true, %7709 ], [ false, %7685 ]
  br i1 %7727, label %7728, label %7734

; <label>:7728                                    ; preds = %7724
  %7729 = call float @dx.op.binary.f32(i32 35, float %7673, float %7726)  ; FMax(a,b)
  %7730 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7687
  store float %7729, float* %7730, align 4, !tbaa !127, !noalias !129
  %7731 = call float @dx.op.binary.f32(i32 35, float %7673, float %7725)  ; FMax(a,b)
  %7732 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7687
  store float %7731, float* %7732, align 4, !tbaa !127, !noalias !129
  %7733 = add nsw i32 %7686, 1
  br label %7734

; <label>:7734                                    ; preds = %7728, %7724
  %7735 = phi i32 [ %7733, %7728 ], [ %7686, %7724 ]
  %7736 = add nuw nsw i32 %7687, 1
  %7737 = icmp eq i32 %7736, %7542
  br i1 %7737, label %7738, label %7685

; <label>:7738                                    ; preds = %7734
  %7739 = load float, float* %7679, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7740 = load float, float* %7678, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  %7741 = load float, float* %7677, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  %7742 = load float, float* %7682, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7743 = load float, float* %7681, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  %7744 = load float, float* %7680, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  br label %7745

; <label>:7745                                    ; preds = %7738, %7672
  %7746 = phi float [ -1.000000e+00, %7672 ], [ %7744, %7738 ]
  %7747 = phi float [ -1.000000e+00, %7672 ], [ %7743, %7738 ]
  %7748 = phi float [ -1.000000e+00, %7672 ], [ %7742, %7738 ]
  %7749 = phi float [ -1.000000e+00, %7672 ], [ %7741, %7738 ]
  %7750 = phi float [ -1.000000e+00, %7672 ], [ %7740, %7738 ]
  %7751 = phi float [ -1.000000e+00, %7672 ], [ %7739, %7738 ]
  %7752 = phi i32 [ 0, %7672 ], [ %7735, %7738 ]
  %7753 = call float @dx.op.binary.f32(i32 36, float %7750, float %7751)  ; FMin(a,b)
  %7754 = call float @dx.op.binary.f32(i32 36, float %7749, float %7753)  ; FMin(a,b)
  %7755 = call float @dx.op.binary.f32(i32 35, float %7749, float %7750)  ; FMax(a,b)
  %7756 = call float @dx.op.binary.f32(i32 36, float %7755, float %7751)  ; FMin(a,b)
  %7757 = call float @dx.op.binary.f32(i32 36, float %7749, float %7750)  ; FMin(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7757, float %7756)  ; FMax(a,b)
  %7759 = call float @dx.op.binary.f32(i32 35, float %7750, float %7751)  ; FMax(a,b)
  %7760 = call float @dx.op.binary.f32(i32 35, float %7749, float %7759)  ; FMax(a,b)
  store float %7754, float* %7677, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  store float %7758, float* %7678, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  store float %7760, float* %7679, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7761 = call float @dx.op.binary.f32(i32 36, float %7747, float %7748)  ; FMin(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7746, float %7761)  ; FMin(a,b)
  %7763 = call float @dx.op.binary.f32(i32 35, float %7746, float %7747)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7763, float %7748)  ; FMin(a,b)
  %7765 = call float @dx.op.binary.f32(i32 36, float %7746, float %7747)  ; FMin(a,b)
  %7766 = call float @dx.op.binary.f32(i32 35, float %7765, float %7764)  ; FMax(a,b)
  %7767 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7768 = call float @dx.op.binary.f32(i32 35, float %7746, float %7767)  ; FMax(a,b)
  store float %7762, float* %7680, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  store float %7766, float* %7681, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  store float %7768, float* %7682, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7769 = sub nsw i32 3, %7752
  %7770 = icmp sgt i32 %7769, 2
  br i1 %7770, label %7771, label %7809

; <label>:7771                                    ; preds = %7745
  %7772 = icmp eq i32 %7540, 0
  %7773 = fsub fast float %7590, %7674
  %7774 = select i1 %7772, float %7773, float %7674
  %7775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.CBufRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.CBufRet.f32 %7775, 2
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7786 = call float @dx.op.binary.f32(i32 36, float %7675, float %7785)  ; FMin(a,b)
  %7787 = fmul fast float %7783, %7774
  %7788 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7789 = fsub fast float %7780, %7776
  %7790 = fsub fast float %7781, %7777
  %7791 = fsub fast float %7782, %7778
  %7792 = fmul fast float %7788, %7789
  %7793 = fmul fast float %7788, %7790
  %7794 = fmul fast float %7788, %7791
  %7795 = fadd fast float %7792, %7776
  %7796 = fadd fast float %7793, %7777
  %7797 = fadd fast float %7794, %7778
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.CBufRet.f32 %7798, 1
  %7801 = fadd fast float %7800, %7799
  %7802 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  %7803 = extractvalue %dx.types.CBufRet.f32 %7798, 2
  %7804 = extractvalue %dx.types.CBufRet.f32 %7798, 3
  %7805 = fadd fast float %7804, %7803
  %7806 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  %7807 = fmul fast float %7802, %7786
  %7808 = fmul fast float %7807, %7806
  br label %7891

; <label>:7809                                    ; preds = %7745
  %7810 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7769
  %7811 = load float, float* %7810, align 4, !tbaa !127, !noalias !129
  %7812 = fcmp fast olt float %7811, %7676
  %7813 = icmp sgt i32 %7752, 0
  %7814 = and i1 %7813, %7812
  br i1 %7814, label %7815, label %7852

; <label>:7815                                    ; preds = %7809
  br label %7816

; <label>:7816                                    ; preds = %7845, %7815
  %7817 = phi float [ %7846, %7845 ], [ %7674, %7815 ]
  %7818 = phi float [ %7847, %7845 ], [ %7675, %7815 ]
  %7819 = phi float [ %7827, %7845 ], [ %7811, %7815 ]
  %7820 = phi i32 [ %7824, %7845 ], [ %7769, %7815 ]
  %7821 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7820
  %7822 = load float, float* %7821, align 4, !tbaa !127, !noalias !129
  %7823 = icmp slt i32 %7820, 2
  %7824 = add nsw i32 %7820, 1
  %7825 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7824
  %7826 = load float, float* %7825, align 4, !tbaa !127, !noalias !129
  %7827 = select i1 %7823, float %7826, float %7590
  %7828 = call float @dx.op.binary.f32(i32 36, float %7827, float %7822)  ; FMin(a,b)
  %7829 = call float @dx.op.binary.f32(i32 36, float %7676, float %7828)  ; FMin(a,b)
  %7830 = icmp eq i32 %7540, 0
  %7831 = fadd fast float %7829, %7819
  %7832 = fmul fast float %7831, %7521
  %7833 = fadd fast float %7832, %7534
  br i1 %7830, label %7839, label %7834

; <label>:7834                                    ; preds = %7816
  %7835 = fsub fast float %7829, %7819
  %7836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7835)  ; FMax(a,b)
  %7837 = fmul fast float %7836, %7833
  %7838 = fadd fast float %7837, %7818
  br label %7845

; <label>:7839                                    ; preds = %7816
  %7840 = fsub fast float %7819, %7829
  %7841 = call float @dx.op.unary.f32(i32 6, float %7840)  ; FAbs(value)
  %7842 = fadd fast float %7841, %7817
  %7843 = fmul fast float %7841, %7833
  %7844 = fsub fast float %7818, %7843
  br label %7845

; <label>:7845                                    ; preds = %7839, %7834
  %7846 = phi float [ %7836, %7834 ], [ %7842, %7839 ]
  %7847 = phi float [ %7838, %7834 ], [ %7844, %7839 ]
  %7848 = fcmp fast olt float %7827, %7676
  %7849 = icmp slt i32 %7824, 3
  %7850 = and i1 %7849, %7848
  br i1 %7850, label %7816, label %7851

; <label>:7851                                    ; preds = %7845
  br label %7852

; <label>:7852                                    ; preds = %7851, %7809
  %7853 = phi float [ %7674, %7809 ], [ %7846, %7851 ]
  %7854 = phi float [ %7675, %7809 ], [ %7847, %7851 ]
  %7855 = fsub fast float %7590, %7853
  %7856 = select i1 %7592, float %7853, float %7855
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.CBufRet.f32 %7861, 2
  %7865 = extractvalue %dx.types.CBufRet.f32 %7861, 3
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 3
  %7868 = call float @dx.op.binary.f32(i32 36, float %7854, float %7867)  ; FMin(a,b)
  %7869 = fmul fast float %7865, %7856
  %7870 = call float @dx.op.unary.f32(i32 7, float %7869)  ; Saturate(value)
  %7871 = fsub fast float %7862, %7858
  %7872 = fsub fast float %7863, %7859
  %7873 = fsub fast float %7864, %7860
  %7874 = fmul fast float %7870, %7871
  %7875 = fmul fast float %7870, %7872
  %7876 = fmul fast float %7870, %7873
  %7877 = fadd fast float %7874, %7858
  %7878 = fadd fast float %7875, %7859
  %7879 = fadd fast float %7876, %7860
  %7880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7881 = extractvalue %dx.types.CBufRet.f32 %7880, 0
  %7882 = extractvalue %dx.types.CBufRet.f32 %7880, 1
  %7883 = fadd fast float %7882, %7881
  %7884 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7880, 2
  %7886 = extractvalue %dx.types.CBufRet.f32 %7880, 3
  %7887 = fadd fast float %7886, %7885
  %7888 = call float @dx.op.unary.f32(i32 7, float %7887)  ; Saturate(value)
  %7889 = fmul fast float %7884, %7868
  %7890 = fmul fast float %7889, %7888
  br label %7891

; <label>:7891                                    ; preds = %7852, %7771, %7606, %7588, %7586
  %7892 = phi float [ %7615, %7606 ], [ %7774, %7771 ], [ %7856, %7852 ], [ 0.000000e+00, %7586 ], [ 0.000000e+00, %7588 ]
  %7893 = phi float [ %7649, %7606 ], [ %7808, %7771 ], [ %7890, %7852 ], [ 0.000000e+00, %7586 ], [ 0.000000e+00, %7588 ]
  %7894 = phi float [ %7636, %7606 ], [ %7795, %7771 ], [ %7877, %7852 ], [ 0.000000e+00, %7586 ], [ 0.000000e+00, %7588 ]
  %7895 = phi float [ %7637, %7606 ], [ %7796, %7771 ], [ %7878, %7852 ], [ 0.000000e+00, %7586 ], [ 0.000000e+00, %7588 ]
  %7896 = phi float [ %7638, %7606 ], [ %7797, %7771 ], [ %7879, %7852 ], [ 0.000000e+00, %7586 ], [ 0.000000e+00, %7588 ]
  %7897 = fmul fast float %7529, %7893
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7900 = fsub fast float %7536, %7899
  %7901 = fcmp fast olt float %7897, -2.000000e+01
  %7902 = call float @dx.op.unary.f32(i32 21, float %7897)  ; Exp(value)
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 3
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 2
  %7908 = fmul fast float %7905, %7900
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fsub fast float 1.000000e+00, %7909
  %7911 = fmul fast float %7521, 5.000000e-01
  %7912 = fadd fast float %7911, 5.000000e-01
  %7913 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7914 = fsub fast float 1.000000e+00, %7913
  %7915 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7910)  ; FMax(a,b)
  %7916 = fdiv fast float %7914, %7915
  %7917 = fsub fast float %7900, %7478
  %7918 = call float @dx.op.unary.f32(i32 6, float %7917)  ; FAbs(value)
  %7919 = fmul fast float %7918, %7904
  %7920 = call float @dx.op.unary.f32(i32 7, float %7916)  ; Saturate(value)
  %7921 = fsub fast float 1.000000e+00, %7919
  %7922 = fmul fast float %7921, %7920
  %7923 = fadd fast float %7922, %7919
  %7924 = fmul fast float %7907, %7900
  %7925 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7926 = fsub fast float 1.000000e+00, %7923
  %7927 = fmul fast float %7926, %7925
  %7928 = fadd fast float %7927, %7923
  %7929 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7930 = fadd fast float %7902, -1.000000e+00
  %7931 = select i1 %7901, float -1.000000e+00, float %7930
  %7932 = fmul fast float %7929, %7931
  %7933 = fadd fast float %7932, 1.000000e+00
  %7934 = fsub fast float -0.000000e+00, %7932
  %7935 = fmul fast float %7894, %7934
  %7936 = fmul fast float %7895, %7934
  %7937 = fmul fast float %7896, %7934
  br label %7938

; <label>:7938                                    ; preds = %7891, %7487
  %7939 = phi float [ %7892, %7891 ], [ 0.000000e+00, %7487 ]
  %7940 = phi float [ %7933, %7891 ], [ 1.000000e+00, %7487 ]
  %7941 = phi float [ %7935, %7891 ], [ 0.000000e+00, %7487 ]
  %7942 = phi float [ %7936, %7891 ], [ 0.000000e+00, %7487 ]
  %7943 = phi float [ %7937, %7891 ], [ 0.000000e+00, %7487 ]
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 1
  %7946 = fsub fast float 1.000000e+00, %7940
  %7947 = fmul fast float %7946, %7522
  %7948 = fmul fast float %7947, %7945
  %7949 = fsub fast float %7522, %7948
  br i1 %7515, label %7950, label %7979, !dx.controlflow.hints !165

; <label>:7950                                    ; preds = %7938
  %7951 = fmul fast float %7523, %7512
  %7952 = fadd fast float %7951, %7513
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fmul fast float %7494, %7949
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = fmul fast float %7495, %7949
  %7957 = fsub fast float -0.000000e+00, %7956
  %7958 = call float @dx.op.unary.f32(i32 21, float %7955)  ; Exp(value)
  %7959 = call float @dx.op.unary.f32(i32 21, float %7957)  ; Exp(value)
  %7960 = call float @dx.op.binary.f32(i32 35, float %7502, float %7958)  ; FMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %7502, float %7959)  ; FMax(a,b)
  %7962 = fsub fast float %7961, %7960
  %7963 = fmul fast float %7962, %7953
  %7964 = fadd fast float %7963, %7960
  %7965 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7966 = fsub fast float %7499, %7504
  %7967 = fsub fast float %7500, %7505
  %7968 = fsub fast float %7501, %7506
  %7969 = fmul fast float %7953, %7966
  %7970 = fmul fast float %7953, %7967
  %7971 = fmul fast float %7953, %7968
  %7972 = fadd fast float %7969, %7504
  %7973 = fadd fast float %7970, %7505
  %7974 = fadd fast float %7971, %7506
  %7975 = fsub fast float 1.000000e+00, %7965
  %7976 = fmul fast float %7975, %7972
  %7977 = fmul fast float %7975, %7973
  %7978 = fmul fast float %7975, %7974
  br label %8038

; <label>:7979                                    ; preds = %7938
  %7980 = fmul fast float %7949, %7511
  %7981 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  %7982 = fsub fast float 2.000000e+00, %7981
  %7983 = fmul fast float %7981, 9.921875e-01
  %7984 = fmul fast float %7983, %7982
  %7985 = fadd fast float %7984, 3.906250e-03
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7985, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = fsub fast float %7981, %7987
  %7989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7988)  ; FMax(a,b)
  %7990 = fmul fast float %7497, %7478
  %7991 = call float @dx.op.unary.f32(i32 6, float %7990)  ; FAbs(value)
  %7992 = fcmp fast ogt float %7991, 0x3EB0C6F7A0000000
  br i1 %7992, label %7993, label %7999, !dx.controlflow.hints !166

; <label>:7993                                    ; preds = %7979
  %7994 = fmul fast float %7990, 0xBFF7154760000000
  %7995 = call float @dx.op.unary.f32(i32 21, float %7994)  ; Exp(value)
  %7996 = fsub fast float 1.000000e+00, %7995
  %7997 = fdiv fast float %7996, %7990
  %7998 = fmul fast float %7997, %7507
  br label %7999

; <label>:7999                                    ; preds = %7993, %7979
  %8000 = phi float [ %7998, %7993 ], [ %7507, %7979 ]
  %8001 = fadd fast float %8000, %7509
  %8002 = fmul fast float %8001, %7989
  %8003 = fmul fast float %7494, %8002
  %8004 = fsub fast float -0.000000e+00, %8003
  %8005 = fmul fast float %7495, %8002
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = fmul fast float %7496, %8002
  %8008 = fsub fast float -0.000000e+00, %8007
  %8009 = call float @dx.op.unary.f32(i32 21, float %8004)  ; Exp(value)
  %8010 = call float @dx.op.unary.f32(i32 21, float %8006)  ; Exp(value)
  %8011 = call float @dx.op.unary.f32(i32 21, float %8008)  ; Exp(value)
  %8012 = fmul fast float %7523, %7523
  %8013 = fadd fast float %8012, 1.000000e+00
  %8014 = fmul fast float %8013, 0x3FAE8EC8A0000000
  %8015 = fmul fast float %8014, %7504
  %8016 = fmul fast float %8014, %7505
  %8017 = fmul fast float %8014, %7506
  %8018 = fmul fast float %7523, %7502
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %7502, %7502
  %8021 = fsub fast float 1.000000e+00, %8020
  %8022 = fmul fast float %8021, 0x3FB45F3060000000
  %8023 = fmul fast float %8019, %8019
  %8024 = fdiv fast float 1.000000e+00, %8023
  %8025 = fmul fast float %8022, %8024
  %8026 = fmul fast float %8025, %7499
  %8027 = fmul fast float %8025, %7500
  %8028 = fmul fast float %8025, %7501
  %8029 = fadd fast float %8026, %8015
  %8030 = fadd fast float %8027, %8016
  %8031 = fadd fast float %8028, %8017
  %8032 = fsub fast float 1.000000e+00, %8009
  %8033 = fsub fast float 1.000000e+00, %8010
  %8034 = fsub fast float 1.000000e+00, %8011
  %8035 = fmul fast float %8029, %8032
  %8036 = fmul fast float %8030, %8033
  %8037 = fmul fast float %8031, %8034
  br label %8038

; <label>:8038                                    ; preds = %7999, %7950
  %8039 = phi float [ %7976, %7950 ], [ %8035, %7999 ]
  %8040 = phi float [ %7977, %7950 ], [ %8036, %7999 ]
  %8041 = phi float [ %7978, %7950 ], [ %8037, %7999 ]
  %8042 = phi float [ %7965, %7950 ], [ %8009, %7999 ]
  %8043 = phi float [ %7965, %7950 ], [ %8010, %7999 ]
  %8044 = phi float [ %7965, %7950 ], [ %8011, %7999 ]
  br i1 %7531, label %8045, label %8243, !dx.controlflow.hints !167

; <label>:8045                                    ; preds = %8038
  %8046 = extractvalue %dx.types.CBufRet.f32 %7944, 0
  %8047 = fmul fast float %8046, %7946
  %8048 = fsub fast float %7941, %8039
  %8049 = fsub fast float %7942, %8040
  %8050 = fsub fast float %7943, %8041
  %8051 = fmul fast float %8047, %8048
  %8052 = fmul fast float %8047, %8049
  %8053 = fmul fast float %8047, %8050
  %8054 = fadd fast float %8051, %8039
  %8055 = fadd fast float %8052, %8040
  %8056 = fadd fast float %8053, %8041
  %8057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8042)  ; FMax(a,b)
  %8058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8043)  ; FMax(a,b)
  %8059 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8044)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7940)  ; FMax(a,b)
  %8061 = call float @dx.op.binary.f32(i32 35, float %7939, float %7949)  ; FMax(a,b)
  %8062 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8061)  ; FMax(a,b)
  %8063 = fdiv fast float %7939, %8062
  %8064 = call float @dx.op.unary.f32(i32 7, float %8063)  ; Saturate(value)
  %8065 = fdiv fast float %7949, %8062
  %8066 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8067 = fcmp fast une float %8060, 1.000000e+00
  br i1 %8067, label %8068, label %8081, !dx.controlflow.hints !168

; <label>:8068                                    ; preds = %8045
  %8069 = call float @dx.op.unary.f32(i32 23, float %8060)  ; Log(value)
  %8070 = fmul fast float %8069, 0x3FE62E4300000000
  %8071 = fmul fast float %7941, %8070
  %8072 = fsub fast float -0.000000e+00, %8071
  %8073 = fmul fast float %7942, %8070
  %8074 = fsub fast float -0.000000e+00, %8073
  %8075 = fmul fast float %7943, %8070
  %8076 = fsub fast float -0.000000e+00, %8075
  %8077 = fsub fast float 1.000000e+00, %8060
  %8078 = fdiv fast float %8072, %8077
  %8079 = fdiv fast float %8074, %8077
  %8080 = fdiv fast float %8076, %8077
  br label %8081

; <label>:8081                                    ; preds = %8068, %8045
  %8082 = phi float [ %8078, %8068 ], [ %7941, %8045 ]
  %8083 = phi float [ %8079, %8068 ], [ %7942, %8045 ]
  %8084 = phi float [ %8080, %8068 ], [ %7943, %8045 ]
  %8085 = phi float [ %8070, %8068 ], [ 0.000000e+00, %8045 ]
  %8086 = fcmp fast une float %8057, 1.000000e+00
  br i1 %8086, label %8087, label %8094, !dx.controlflow.hints !169

; <label>:8087                                    ; preds = %8081
  %8088 = call float @dx.op.unary.f32(i32 23, float %8057)  ; Log(value)
  %8089 = fmul fast float %8088, 0x3FE62E4300000000
  %8090 = fmul fast float %8054, %8089
  %8091 = fsub fast float -0.000000e+00, %8090
  %8092 = fsub fast float 1.000000e+00, %8057
  %8093 = fdiv fast float %8091, %8092
  br label %8094

; <label>:8094                                    ; preds = %8087, %8081
  %8095 = phi float [ %8093, %8087 ], [ %8054, %8081 ]
  %8096 = phi float [ %8089, %8087 ], [ 0.000000e+00, %8081 ]
  %8097 = fcmp fast une float %8058, 1.000000e+00
  br i1 %8097, label %8098, label %8105, !dx.controlflow.hints !169

; <label>:8098                                    ; preds = %8094
  %8099 = call float @dx.op.unary.f32(i32 23, float %8058)  ; Log(value)
  %8100 = fmul fast float %8099, 0x3FE62E4300000000
  %8101 = fmul fast float %8055, %8100
  %8102 = fsub fast float -0.000000e+00, %8101
  %8103 = fsub fast float 1.000000e+00, %8058
  %8104 = fdiv fast float %8102, %8103
  br label %8105

; <label>:8105                                    ; preds = %8098, %8094
  %8106 = phi float [ %8104, %8098 ], [ %8055, %8094 ]
  %8107 = phi float [ %8100, %8098 ], [ 0.000000e+00, %8094 ]
  %8108 = fcmp fast une float %8059, 1.000000e+00
  br i1 %8108, label %8109, label %8116, !dx.controlflow.hints !169

; <label>:8109                                    ; preds = %8105
  %8110 = call float @dx.op.unary.f32(i32 23, float %8059)  ; Log(value)
  %8111 = fmul fast float %8110, 0x3FE62E4300000000
  %8112 = fmul fast float %8056, %8111
  %8113 = fsub fast float -0.000000e+00, %8112
  %8114 = fsub fast float 1.000000e+00, %8059
  %8115 = fdiv fast float %8113, %8114
  br label %8116

; <label>:8116                                    ; preds = %8109, %8105
  %8117 = phi float [ %8115, %8109 ], [ %8056, %8105 ]
  %8118 = phi float [ %8111, %8109 ], [ 0.000000e+00, %8105 ]
  %8119 = fmul fast float %8082, %8066
  %8120 = fmul fast float %8083, %8066
  %8121 = fmul fast float %8084, %8066
  %8122 = fmul fast float %8085, %8066
  %8123 = fmul fast float %8095, %8064
  %8124 = fmul fast float %8106, %8064
  %8125 = fmul fast float %8117, %8064
  %8126 = fmul fast float %8096, %8064
  %8127 = fmul fast float %8107, %8064
  %8128 = fmul fast float %8118, %8064
  %8129 = fadd fast float %8123, %8119
  %8130 = fadd fast float %8124, %8120
  %8131 = fadd fast float %8125, %8121
  %8132 = fadd fast float %8126, %8122
  %8133 = fadd fast float %8127, %8122
  %8134 = fadd fast float %8128, %8122
  %8135 = fcmp fast une float %8132, 0.000000e+00
  br i1 %8135, label %8136, label %8143, !dx.controlflow.hints !170

; <label>:8136                                    ; preds = %8116
  %8137 = fmul fast float %8132, 0x3FF7154760000000
  %8138 = call float @dx.op.unary.f32(i32 21, float %8137)  ; Exp(value)
  %8139 = fsub fast float 1.000000e+00, %8138
  %8140 = fmul fast float %8129, %8139
  %8141 = fsub fast float -0.000000e+00, %8140
  %8142 = fdiv fast float %8141, %8132
  br label %8143

; <label>:8143                                    ; preds = %8136, %8116
  %8144 = phi float [ %8138, %8136 ], [ 1.000000e+00, %8116 ]
  %8145 = phi float [ %8142, %8136 ], [ %8129, %8116 ]
  %8146 = fcmp fast une float %8133, 0.000000e+00
  br i1 %8146, label %8147, label %8154, !dx.controlflow.hints !170

; <label>:8147                                    ; preds = %8143
  %8148 = fmul fast float %8133, 0x3FF7154760000000
  %8149 = call float @dx.op.unary.f32(i32 21, float %8148)  ; Exp(value)
  %8150 = fsub fast float 1.000000e+00, %8149
  %8151 = fmul fast float %8130, %8150
  %8152 = fsub fast float -0.000000e+00, %8151
  %8153 = fdiv fast float %8152, %8133
  br label %8154

; <label>:8154                                    ; preds = %8147, %8143
  %8155 = phi float [ %8149, %8147 ], [ 1.000000e+00, %8143 ]
  %8156 = phi float [ %8153, %8147 ], [ %8130, %8143 ]
  %8157 = fcmp fast une float %8134, 0.000000e+00
  br i1 %8157, label %8158, label %8165, !dx.controlflow.hints !170

; <label>:8158                                    ; preds = %8154
  %8159 = fmul fast float %8134, 0x3FF7154760000000
  %8160 = call float @dx.op.unary.f32(i32 21, float %8159)  ; Exp(value)
  %8161 = fsub fast float 1.000000e+00, %8160
  %8162 = fmul fast float %8131, %8161
  %8163 = fsub fast float -0.000000e+00, %8162
  %8164 = fdiv fast float %8163, %8134
  br label %8165

; <label>:8165                                    ; preds = %8158, %8154
  %8166 = phi float [ %8160, %8158 ], [ 1.000000e+00, %8154 ]
  %8167 = phi float [ %8164, %8158 ], [ %8131, %8154 ]
  %8168 = fcmp fast ogt float %8064, %8066
  br i1 %8168, label %8169, label %8189

; <label>:8169                                    ; preds = %8165
  %8170 = fsub fast float 1.000000e+00, %8066
  %8171 = fmul fast float %8082, %8170
  %8172 = fmul fast float %8083, %8170
  %8173 = fmul fast float %8084, %8170
  %8174 = fmul fast float %8085, %8170
  %8175 = fcmp fast une float %8174, 0.000000e+00
  br i1 %8175, label %8176, label %8227, !dx.controlflow.hints !171

; <label>:8176                                    ; preds = %8169
  %8177 = fmul fast float %8174, 0x3FF7154760000000
  %8178 = call float @dx.op.unary.f32(i32 21, float %8177)  ; Exp(value)
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = fmul fast float %8171, %8179
  %8181 = fsub fast float -0.000000e+00, %8180
  %8182 = fmul fast float %8172, %8179
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = fmul fast float %8173, %8179
  %8185 = fsub fast float -0.000000e+00, %8184
  %8186 = fdiv fast float %8181, %8174
  %8187 = fdiv fast float %8183, %8174
  %8188 = fdiv fast float %8185, %8174
  br label %8227

; <label>:8189                                    ; preds = %8165
  %8190 = fsub fast float 1.000000e+00, %8064
  %8191 = fmul fast float %8095, %8190
  %8192 = fmul fast float %8106, %8190
  %8193 = fmul fast float %8117, %8190
  %8194 = fmul fast float %8096, %8190
  %8195 = fmul fast float %8107, %8190
  %8196 = fmul fast float %8118, %8190
  %8197 = fcmp fast une float %8194, 0.000000e+00
  br i1 %8197, label %8198, label %8205, !dx.controlflow.hints !170

; <label>:8198                                    ; preds = %8189
  %8199 = fmul fast float %8194, 0x3FF7154760000000
  %8200 = call float @dx.op.unary.f32(i32 21, float %8199)  ; Exp(value)
  %8201 = fsub fast float 1.000000e+00, %8200
  %8202 = fmul fast float %8191, %8201
  %8203 = fsub fast float -0.000000e+00, %8202
  %8204 = fdiv fast float %8203, %8194
  br label %8205

; <label>:8205                                    ; preds = %8198, %8189
  %8206 = phi float [ %8204, %8198 ], [ %8191, %8189 ]
  %8207 = phi float [ %8200, %8198 ], [ 1.000000e+00, %8189 ]
  %8208 = fcmp fast une float %8195, 0.000000e+00
  br i1 %8208, label %8209, label %8216, !dx.controlflow.hints !170

; <label>:8209                                    ; preds = %8205
  %8210 = fmul fast float %8195, 0x3FF7154760000000
  %8211 = call float @dx.op.unary.f32(i32 21, float %8210)  ; Exp(value)
  %8212 = fsub fast float 1.000000e+00, %8211
  %8213 = fmul fast float %8192, %8212
  %8214 = fsub fast float -0.000000e+00, %8213
  %8215 = fdiv fast float %8214, %8195
  br label %8216

; <label>:8216                                    ; preds = %8209, %8205
  %8217 = phi float [ %8215, %8209 ], [ %8192, %8205 ]
  %8218 = phi float [ %8211, %8209 ], [ 1.000000e+00, %8205 ]
  %8219 = fcmp fast une float %8196, 0.000000e+00
  br i1 %8219, label %8220, label %8227, !dx.controlflow.hints !170

; <label>:8220                                    ; preds = %8216
  %8221 = fmul fast float %8196, 0x3FF7154760000000
  %8222 = call float @dx.op.unary.f32(i32 21, float %8221)  ; Exp(value)
  %8223 = fsub fast float 1.000000e+00, %8222
  %8224 = fmul fast float %8193, %8223
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = fdiv fast float %8225, %8196
  br label %8227

; <label>:8227                                    ; preds = %8220, %8216, %8176, %8169
  %8228 = phi float [ %8226, %8220 ], [ %8188, %8176 ], [ %8173, %8169 ], [ %8193, %8216 ]
  %8229 = phi float [ %8217, %8220 ], [ %8187, %8176 ], [ %8172, %8169 ], [ %8217, %8216 ]
  %8230 = phi float [ %8206, %8220 ], [ %8186, %8176 ], [ %8171, %8169 ], [ %8206, %8216 ]
  %8231 = phi float [ %8222, %8220 ], [ %8178, %8176 ], [ 1.000000e+00, %8169 ], [ 1.000000e+00, %8216 ]
  %8232 = phi float [ %8218, %8220 ], [ %8178, %8176 ], [ 1.000000e+00, %8169 ], [ %8218, %8216 ]
  %8233 = phi float [ %8207, %8220 ], [ %8178, %8176 ], [ 1.000000e+00, %8169 ], [ %8207, %8216 ]
  %8234 = fmul fast float %8233, %8145
  %8235 = fmul fast float %8232, %8156
  %8236 = fmul fast float %8231, %8167
  %8237 = fadd fast float %8234, %8230
  %8238 = fadd fast float %8235, %8229
  %8239 = fadd fast float %8236, %8228
  %8240 = fmul fast float %8233, %8144
  %8241 = fmul fast float %8232, %8155
  %8242 = fmul fast float %8231, %8166
  br label %8243

; <label>:8243                                    ; preds = %8227, %8038
  %8244 = phi float [ %8242, %8227 ], [ %8044, %8038 ]
  %8245 = phi float [ %8241, %8227 ], [ %8043, %8038 ]
  %8246 = phi float [ %8240, %8227 ], [ %8042, %8038 ]
  %8247 = phi float [ %8239, %8227 ], [ %8041, %8038 ]
  %8248 = phi float [ %8238, %8227 ], [ %8040, %8038 ]
  %8249 = phi float [ %8237, %8227 ], [ %8039, %8038 ]
  %8250 = fmul fast float %8249, %7195
  %8251 = fmul fast float %8248, %7195
  %8252 = fmul fast float %8247, %7195
  %8253 = fmul fast float %8246, %7486
  %8254 = call float @dx.op.dot3.f32(i32 55, float %8246, float %8245, float %8244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8255 = call float @dx.op.dot3.f32(i32 55, float %8250, float %8251, float %8252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8256 = select i1 %252, float %8254, float %8246
  %8257 = select i1 %252, float %8254, float %8245
  %8258 = select i1 %252, float 1.000000e+00, float %8244
  %8259 = select i1 %252, float %8255, float %8250
  %8260 = select i1 %252, float 0.000000e+00, float %8251
  %8261 = select i1 %252, float 0.000000e+00, float %8252
  %8262 = fmul fast float %8256, %7480
  %8263 = fmul fast float %8257, %7481
  %8264 = fmul fast float %8258, %7482
  %8265 = fadd fast float %8262, %8259
  %8266 = fadd fast float %8263, %8260
  %8267 = fadd fast float %8261, %8264
  %8268 = fmul fast float %8256, %7483
  %8269 = fmul fast float %8257, %7484
  %8270 = fmul fast float %8258, %7485
  %8271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.i32 %8271, 0
  %8273 = icmp eq i32 %8272, 0
  br i1 %8273, label %8641, label %8274, !dx.controlflow.hints !172

; <label>:8274                                    ; preds = %8243
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8278 = fmul fast float %8276, %106
  %8279 = fmul fast float %8277, %107
  %8280 = fmul fast float %8278, 2.000000e+00
  %8281 = fmul fast float %8279, 2.000000e+00
  %8282 = fsub fast float 1.000000e+00, %8280
  %8283 = fsub fast float 1.000000e+00, %8281
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8288 = fmul fast float %8282, %8285
  %8289 = fmul fast float %8282, %8286
  %8290 = fmul fast float %8282, %8287
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8294 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8295 = fmul fast float %8283, %8292
  %8296 = fmul fast float %8283, %8293
  %8297 = fmul fast float %8283, %8294
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 0
  %8300 = extractvalue %dx.types.CBufRet.f32 %8298, 1
  %8301 = extractvalue %dx.types.CBufRet.f32 %8298, 2
  %8302 = fadd fast float %8295, %8299
  %8303 = fadd fast float %8302, %8288
  %8304 = fadd fast float %8296, %8300
  %8305 = fadd fast float %8304, %8289
  %8306 = fadd fast float %8297, %8301
  %8307 = fadd fast float %8306, %8290
  %8308 = fmul fast float %8303, %7479
  %8309 = fmul fast float %8305, %7479
  %8310 = fmul fast float %8307, %7479
  %8311 = fmul fast float %8308, %8308
  %8312 = fmul fast float %8309, %8309
  %8313 = fadd fast float %8311, %8312
  %8314 = fmul fast float %8310, %8310
  %8315 = fadd fast float %8313, %8314
  %8316 = call float @dx.op.unary.f32(i32 24, float %8315)  ; Sqrt(value)
  %8317 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %8318 = fsub fast float %8316, %8317
  %8319 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %8320 = fmul fast float %8318, %8319
  %8321 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8322 = fadd fast float %8321, -5.000000e-01
  %8323 = fmul fast float %8322, 2.000000e+00
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8326 = call float @dx.op.binary.f32(i32 36, float %8325, float %8323)  ; FMin(a,b)
  %8327 = fsub fast float -0.000000e+00, %8325
  %8328 = fcmp fast ogt float %8326, %8327
  br i1 %8328, label %8329, label %8641, !dx.controlflow.hints !173

; <label>:8329                                    ; preds = %8274
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8332 = fcmp fast ogt float %8331, 0.000000e+00
  br i1 %8332, label %8333, label %8408, !dx.controlflow.hints !174

; <label>:8333                                    ; preds = %8329
  %8334 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8335 = extractvalue %dx.types.Dimensions %8334, 0
  %8336 = sitofp i32 %8335 to float
  %8337 = extractvalue %dx.types.Dimensions %8334, 1
  %8338 = sitofp i32 %8337 to float
  %8339 = fmul fast float %8278, %8336
  %8340 = fmul fast float %8279, %8338
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8343 = fsub fast float -0.000000e+00, %8342
  %8344 = fptoui float %8343 to i32
  %8345 = fptoui float %8339 to i32
  %8346 = fptoui float %8340 to i32
  %8347 = and i32 %8344, 31
  %8348 = lshr i32 %8345, %8347
  %8349 = lshr i32 %8346, %8347
  %8350 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8344, i32 %8348, i32 %8349, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8351 = extractvalue %dx.types.ResRet.f32 %8350, 0
  %8352 = fcmp fast olt float %8351, -1.000000e+00
  %8353 = fcmp fast ogt float %8351, -1.000000e+00
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8356 = select i1 %8353, float %8355, float 1.000000e+00
  %8357 = fadd fast float %8351, 1.000000e+00
  %8358 = fmul fast float %8356, %8357
  %8359 = call float @dx.op.unary.f32(i32 6, float %8358)  ; FAbs(value)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8354, 3
  %8361 = fcmp fast oge float %8359, %8360
  %8362 = select i1 %8361, float 0x4197782600000000, float %8359
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8367 = select i1 %8352, float %8364, float %8285
  %8368 = select i1 %8352, float %8365, float %8286
  %8369 = select i1 %8352, float %8366, float %8287
  %8370 = fmul fast float %8367, %8282
  %8371 = fmul fast float %8368, %8282
  %8372 = fmul fast float %8369, %8282
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8377 = select i1 %8352, float %8374, float %8292
  %8378 = select i1 %8352, float %8375, float %8293
  %8379 = select i1 %8352, float %8376, float %8294
  %8380 = fmul fast float %8377, %8283
  %8381 = fmul fast float %8378, %8283
  %8382 = fmul fast float %8379, %8283
  %8383 = fadd fast float %8380, %8370
  %8384 = fadd fast float %8381, %8371
  %8385 = fadd fast float %8382, %8372
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.CBufRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.CBufRet.f32 %8386, 2
  %8390 = select i1 %8352, float %8387, float %8299
  %8391 = select i1 %8352, float %8388, float %8300
  %8392 = select i1 %8352, float %8389, float %8301
  %8393 = fadd fast float %8383, %8390
  %8394 = fadd fast float %8384, %8391
  %8395 = fadd fast float %8385, %8392
  %8396 = fmul fast float %8393, %8362
  %8397 = fmul fast float %8394, %8362
  %8398 = fmul fast float %8395, %8362
  %8399 = fmul fast float %8396, %8396
  %8400 = fmul fast float %8397, %8397
  %8401 = fadd fast float %8399, %8400
  %8402 = fmul fast float %8398, %8398
  %8403 = fadd fast float %8401, %8402
  %8404 = call float @dx.op.unary.f32(i32 24, float %8403)  ; Sqrt(value)
  %8405 = fsub fast float %8404, %8317
  %8406 = fmul fast float %8405, %8319
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  br label %8408

; <label>:8408                                    ; preds = %8333, %8329
  %8409 = phi float [ %8407, %8333 ], [ 1.000000e+00, %8329 ]
  %8410 = fmul fast float %8326, 5.000000e-01
  %8411 = fadd fast float %8410, 5.000000e-01
  %8412 = call float @dx.op.unary.f32(i32 22, float %8411)  ; Frc(value)
  %8413 = call float @dx.op.unary.f32(i32 27, float %8412)  ; Round_ni(value)
  %8414 = call float @dx.op.unary.f32(i32 22, float %8412)  ; Frc(value)
  %8415 = fmul fast float %8414, 2.000000e+00
  %8416 = fadd fast float %8415, -1.000000e+00
  %8417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8278, float %8279, float %8413, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8418 = extractvalue %dx.types.ResRet.f32 %8417, 0
  %8419 = extractvalue %dx.types.ResRet.f32 %8417, 1
  %8420 = extractvalue %dx.types.ResRet.f32 %8417, 2
  %8421 = extractvalue %dx.types.ResRet.f32 %8417, 3
  %8422 = fadd fast float %8418, -5.000000e-01
  %8423 = fadd fast float %8420, -5.000000e-01
  %8424 = fmul fast float %8422, 0xBFD5555560000000
  %8425 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8423, float %8424)  ; FMad(a,b,c)
  %8426 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8419, float 0.000000e+00)  ; FMad(a,b,c)
  %8427 = fadd fast float %8426, %8421
  %8428 = fmul fast float %8422, -7.500000e-01
  %8429 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8423, float %8428)  ; FMad(a,b,c)
  %8430 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8419, float 0.000000e+00)  ; FMad(a,b,c)
  %8431 = fadd fast float %8430, %8421
  %8432 = call float @dx.op.binary.f32(i32 35, float %8425, float -1.000000e+00)  ; FMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8427, float -1.000000e+00)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 35, float %8429, float -1.000000e+00)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 35, float %8431, float -1.000000e+00)  ; FMax(a,b)
  %8436 = call float @dx.op.binary.f32(i32 36, float %8432, float 1.000000e+00)  ; FMin(a,b)
  %8437 = call float @dx.op.binary.f32(i32 36, float %8433, float 1.000000e+00)  ; FMin(a,b)
  %8438 = call float @dx.op.binary.f32(i32 36, float %8434, float 1.000000e+00)  ; FMin(a,b)
  %8439 = call float @dx.op.binary.f32(i32 36, float %8435, float 1.000000e+00)  ; FMin(a,b)
  %8440 = fcmp fast olt float %8436, 0x3FEFFF8020000000
  br i1 %8440, label %8441, label %8556, !dx.controlflow.hints !175

; <label>:8441                                    ; preds = %8408
  %8442 = extractvalue %dx.types.CBufRet.f32 %8324, 3
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8445 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8446 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8447 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8448 = fsub fast float %8444, %8436
  %8449 = fsub fast float %8445, %8437
  %8450 = fsub fast float %8446, %8438
  %8451 = fsub fast float %8447, %8439
  %8452 = fmul fast float %8448, %8442
  %8453 = fmul fast float %8449, %8442
  %8454 = fmul fast float %8450, %8442
  %8455 = fmul fast float %8451, %8442
  %8456 = fadd fast float %8452, %8436
  %8457 = fadd fast float %8453, %8437
  %8458 = fsub fast float -0.000000e+00, %8457
  %8459 = fadd fast float %8454, %8438
  %8460 = fadd fast float %8455, %8439
  %8461 = fmul fast float %8456, %8456
  %8462 = fsub fast float %8457, %8461
  %8463 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8462)  ; FMax(a,b)
  %8464 = fdiv fast float 1.000000e+00, %8463
  %8465 = fmul fast float %8457, %8456
  %8466 = fsub fast float %8459, %8465
  %8467 = fsub fast float %8416, %8456
  %8468 = fmul fast float %8416, %8416
  %8469 = fsub fast float %8468, %8457
  %8470 = fmul fast float %8467, %8464
  %8471 = fmul fast float %8470, %8466
  %8472 = fsub fast float %8469, %8471
  %8473 = fmul fast float %8457, %8457
  %8474 = fsub fast float %8460, %8473
  %8475 = fmul fast float %8466, %8466
  %8476 = fmul fast float %8475, %8464
  %8477 = fsub fast float %8474, %8476
  %8478 = fdiv fast float %8472, %8477
  %8479 = fmul fast float %8466, %8478
  %8480 = fsub fast float %8467, %8479
  %8481 = fmul fast float %8480, %8464
  %8482 = fmul fast float %8481, %8456
  %8483 = fsub fast float 1.000000e+00, %8482
  %8484 = fmul fast float %8457, %8478
  %8485 = fsub fast float %8483, %8484
  %8486 = fmul fast float %8481, %8481
  %8487 = fmul fast float %8478, 4.000000e+00
  %8488 = fmul fast float %8487, %8485
  %8489 = fsub fast float %8486, %8488
  %8490 = call float @dx.op.unary.f32(i32 24, float %8489)  ; Sqrt(value)
  %8491 = fcmp fast oge float %8481, 0.000000e+00
  %8492 = fsub fast float -0.000000e+00, %8490
  %8493 = select i1 %8491, float %8492, float %8490
  %8494 = fsub fast float %8493, %8481
  %8495 = fdiv fast float %8494, %8478
  %8496 = fdiv fast float %8485, %8494
  %8497 = fmul fast float %8495, 5.000000e-01
  %8498 = fmul fast float %8496, 2.000000e+00
  %8499 = select i1 %8491, float %8497, float %8498
  %8500 = select i1 %8491, float %8498, float %8497
  %8501 = call float @dx.op.binary.f32(i32 35, float %8499, float %8500)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 36, float %8499, float %8500)  ; FMin(a,b)
  %8503 = fcmp fast ogt float %8416, %8502
  br i1 %8503, label %8504, label %8514

; <label>:8504                                    ; preds = %8441
  %8505 = fsub fast float %8416, %8502
  %8506 = fsub fast float %8501, %8502
  %8507 = fmul fast float %8505, %8506
  %8508 = fmul fast float %8501, %8416
  %8509 = fadd fast float %8501, %8416
  %8510 = fmul fast float %8509, %8456
  %8511 = fadd fast float %8508, %8457
  %8512 = fsub fast float %8511, %8510
  %8513 = fdiv fast float %8512, %8507
  br label %8514

; <label>:8514                                    ; preds = %8504, %8441
  %8515 = phi float [ %8513, %8504 ], [ 0.000000e+00, %8441 ]
  %8516 = fcmp fast ogt float %8416, %8501
  %8517 = fsub fast float %8416, %8501
  br i1 %8516, label %8518, label %8528

; <label>:8518                                    ; preds = %8514
  %8519 = fsub fast float %8501, %8502
  %8520 = fmul fast float %8519, %8517
  %8521 = fmul fast float %8502, %8416
  %8522 = fadd fast float %8502, %8416
  %8523 = fmul fast float %8522, %8456
  %8524 = fsub fast float %8458, %8521
  %8525 = fadd fast float %8524, %8523
  %8526 = fdiv fast float %8525, %8520
  %8527 = fadd fast float %8526, %8515
  br label %8528

; <label>:8528                                    ; preds = %8518, %8514
  %8529 = phi float [ %8527, %8518 ], [ %8515, %8514 ]
  %8530 = fsub fast float %8416, %8502
  %8531 = fmul fast float %8530, %8517
  %8532 = fmul fast float %8502, %8501
  %8533 = fadd fast float %8502, %8501
  %8534 = fmul fast float %8533, %8456
  %8535 = fadd fast float %8532, %8457
  %8536 = fsub fast float %8535, %8534
  %8537 = fdiv fast float %8536, %8531
  %8538 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8539 = fcmp fast oeq float %7207, 0.000000e+00
  %8540 = extractvalue %dx.types.CBufRet.f32 %8324, 0
  %8541 = fcmp fast oeq float %8540, 0.000000e+00
  %8542 = or i1 %8539, %8541
  %8543 = fmul fast float %8540, 2.000000e+00
  %8544 = fadd fast float %8325, %8326
  %8545 = fdiv fast float %8544, %8543
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = fmul fast float %8546, 2.000000e+00
  %8548 = fsub fast float 3.000000e+00, %8547
  %8549 = fmul fast float %8546, %8546
  %8550 = fmul fast float %8549, %8548
  %8551 = select i1 %8542, float 1.000000e+00, float %8550
  %8552 = fmul fast float %8537, %7207
  %8553 = fadd fast float %8538, %8552
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = fmul fast float %8551, %8554
  br label %8556

; <label>:8556                                    ; preds = %8528, %8408
  %8557 = phi float [ %8555, %8528 ], [ 0.000000e+00, %8408 ]
  %8558 = fsub fast float 1.000000e+00, %8557
  %8559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8278, float %8279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8560 = extractvalue %dx.types.ResRet.f32 %8559, 0
  %8561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.i32 %8561, 2
  %8563 = icmp eq i32 %8562, 0
  br i1 %8563, label %8569, label %8564

; <label>:8564                                    ; preds = %8556
  %8565 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  %8566 = fadd fast float %8560, -1.000000e+00
  %8567 = fmul fast float %8565, %8566
  %8568 = fadd fast float %8567, 1.000000e+00
  br label %8569

; <label>:8569                                    ; preds = %8564, %8556
  %8570 = phi float [ %8568, %8564 ], [ %8558, %8556 ]
  br i1 %8332, label %8571, label %8589

; <label>:8571                                    ; preds = %8569
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 1
  %8574 = fsub fast float %8409, %8573
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fsub fast float %8409, %8331
  %8577 = call float @dx.op.unary.f32(i32 7, float %8576)  ; Saturate(value)
  %8578 = fsub fast float %8575, %8577
  %8579 = fsub fast float %8411, %8577
  %8580 = fdiv fast float %8579, %8578
  %8581 = call float @dx.op.unary.f32(i32 7, float %8580)  ; Saturate(value)
  %8582 = fmul fast float %8581, 2.000000e+00
  %8583 = fsub fast float 3.000000e+00, %8582
  %8584 = fsub fast float %8560, %8570
  %8585 = fmul fast float %8581, %8581
  %8586 = fmul fast float %8585, %8584
  %8587 = fmul fast float %8586, %8583
  %8588 = fadd fast float %8587, %8570
  br label %8589

; <label>:8589                                    ; preds = %8571, %8569
  %8590 = phi float [ %8588, %8571 ], [ %8570, %8569 ]
  %8591 = call float @dx.op.binary.f32(i32 35, float %8560, float %8590)  ; FMax(a,b)
  %8592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.i32 %8592, 2
  %8594 = and i32 %8593, 1
  %8595 = icmp eq i32 %8594, 0
  %8596 = fcmp fast une float %8591, 1.000000e+00
  %8597 = and i1 %8596, %8595
  br i1 %8597, label %8598, label %8617

; <label>:8598                                    ; preds = %8589
  %8599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8278, float %8279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8600 = extractvalue %dx.types.ResRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.ResRet.f32 %8599, 1
  %8602 = extractvalue %dx.types.ResRet.f32 %8599, 2
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 1
  %8605 = fmul fast float %8604, %8600
  %8606 = fmul fast float %8604, %8601
  %8607 = fmul fast float %8604, %8602
  %8608 = fcmp fast ogt float %8560, 0x3FEFFF2E40000000
  %8609 = fsub fast float 1.000000e+00, %8591
  %8610 = fsub fast float 1.000000e+00, %8560
  %8611 = fdiv fast float %8609, %8610
  %8612 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8613 = select i1 %8608, float 0.000000e+00, float %8612
  %8614 = fmul fast float %8605, %8613
  %8615 = fmul fast float %8606, %8613
  %8616 = fmul fast float %8607, %8613
  br label %8617

; <label>:8617                                    ; preds = %8598, %8589
  %8618 = phi float [ 0.000000e+00, %8589 ], [ %8614, %8598 ]
  %8619 = phi float [ 0.000000e+00, %8589 ], [ %8615, %8598 ]
  %8620 = phi float [ 0.000000e+00, %8589 ], [ %8616, %8598 ]
  %8621 = fmul fast float %8618, %7195
  %8622 = fmul fast float %8619, %7195
  %8623 = fmul fast float %8620, %7195
  %8624 = fmul fast float %8591, %8253
  %8625 = call float @dx.op.dot3.f32(i32 55, float %8591, float %8591, float %8591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8626 = call float @dx.op.dot3.f32(i32 55, float %8621, float %8622, float %8623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8627 = select i1 %252, float %8625, float %8591
  %8628 = select i1 %252, float 1.000000e+00, float %8591
  %8629 = select i1 %252, float %8626, float %8621
  %8630 = select i1 %252, float 0.000000e+00, float %8622
  %8631 = select i1 %252, float 0.000000e+00, float %8623
  %8632 = fmul fast float %8627, %8265
  %8633 = fmul fast float %8627, %8266
  %8634 = fmul fast float %8628, %8267
  %8635 = fadd fast float %8632, %8629
  %8636 = fadd fast float %8633, %8630
  %8637 = fadd fast float %8631, %8634
  %8638 = fmul fast float %8627, %8268
  %8639 = fmul fast float %8627, %8269
  %8640 = fmul fast float %8628, %8270
  br label %8641

; <label>:8641                                    ; preds = %8617, %8274, %8243, %7475
  %8642 = phi float [ %7480, %7475 ], [ %8265, %8243 ], [ %8635, %8617 ], [ %8265, %8274 ]
  %8643 = phi float [ %7481, %7475 ], [ %8266, %8243 ], [ %8636, %8617 ], [ %8266, %8274 ]
  %8644 = phi float [ %7482, %7475 ], [ %8267, %8243 ], [ %8637, %8617 ], [ %8267, %8274 ]
  %8645 = phi float [ %7483, %7475 ], [ %8268, %8243 ], [ %8638, %8617 ], [ %8268, %8274 ]
  %8646 = phi float [ %7484, %7475 ], [ %8269, %8243 ], [ %8639, %8617 ], [ %8269, %8274 ]
  %8647 = phi float [ %7485, %7475 ], [ %8270, %8243 ], [ %8640, %8617 ], [ %8270, %8274 ]
  %8648 = phi float [ %7486, %7475 ], [ %8253, %8243 ], [ %8624, %8617 ], [ %8253, %8274 ]
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8649, 3
  %8652 = fmul fast float %8650, %106
  %8653 = fmul fast float %8651, %107
  %8654 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8655 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8656 = select i1 %7217, i32 2, i32 0
  %8657 = or i32 %8656, 1
  %8658 = uitofp i32 %8657 to float
  %8659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8654, float %8655, float %8658, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8660 = extractvalue %dx.types.ResRet.f32 %8659, 0
  %8661 = extractvalue %dx.types.ResRet.f32 %8659, 1
  %8662 = extractvalue %dx.types.ResRet.f32 %8659, 2
  %8663 = extractvalue %dx.types.ResRet.f32 %8659, 3
  %8664 = add nuw nsw i32 %8656, 2
  %8665 = uitofp i32 %8664 to float
  %8666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8654, float %8655, float %8665, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8667 = extractvalue %dx.types.ResRet.f32 %8666, 0
  %8668 = extractvalue %dx.types.ResRet.f32 %8666, 1
  %8669 = extractvalue %dx.types.ResRet.f32 %8666, 2
  %8670 = extractvalue %dx.types.ResRet.f32 %8666, 3
  %8671 = call float @dx.op.binary.f32(i32 35, float %8661, float %8662)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 35, float %8660, float %8671)  ; FMax(a,b)
  %8673 = call float @dx.op.binary.f32(i32 35, float %8672, float %8663)  ; FMax(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8668, float %8669)  ; FMin(a,b)
  %8675 = call float @dx.op.binary.f32(i32 36, float %8667, float %8674)  ; FMin(a,b)
  %8676 = call float @dx.op.binary.f32(i32 36, float %8675, float %8670)  ; FMin(a,b)
  %8677 = fmul fast float %8673, 2.550000e+02
  %8678 = fadd fast float %8677, 0x3F70101020000000
  %8679 = fptoui float %8678 to i32
  %8680 = fmul fast float %8676, 2.550000e+02
  %8681 = fadd fast float %8680, 0x3F70101020000000
  %8682 = fptoui float %8681 to i32
  %8683 = icmp ult i32 %8679, %8682
  br i1 %8683, label %8684, label %8853

; <label>:8684                                    ; preds = %8641
  %8685 = fcmp fast ogt float %96, 9.843750e-01
  %8686 = fadd fast float %7479, -4.000000e+00
  %8687 = select i1 %8685, float -4.000000e+00, float %8686
  %8688 = call float @dx.op.binary.f32(i32 35, float %8687, float 0.000000e+00)  ; FMax(a,b)
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8691 = fadd fast float %8690, %8688
  %8692 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8693 = fmul fast float %8691, %8692
  %8694 = call float @dx.op.unary.f32(i32 23, float %8693)  ; Log(value)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8689, 3
  %8696 = fmul fast float %8695, %8694
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8699 = fmul fast float %8696, %8698
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = uitofp i32 %8679 to float
  %8702 = uitofp i32 %8682 to float
  %8703 = fadd fast float %8701, 5.000000e-01
  %8704 = fadd fast float %8702, 5.000000e-01
  %8705 = fmul fast float %8698, %8703
  %8706 = fmul fast float %8698, %8704
  %8707 = fadd fast float %8705, 0x3F0FFB4800000000
  %8708 = fadd fast float %8706, 0xBF0FFB4800000000
  %8709 = call float @dx.op.binary.f32(i32 35, float %8700, float %8707)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 36, float %8709, float %8708)  ; FMin(a,b)
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8713 = extractvalue %dx.types.CBufRet.f32 %8711, 2
  %8714 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8715 = select i1 %7217, float %8714, float 0.000000e+00
  %8716 = fmul fast float %8712, %8710
  %8717 = fadd fast float %8715, %8716
  %8718 = fadd fast float %8715, %8713
  %8719 = fsub fast float %8712, %8713
  %8720 = fadd fast float %8719, %8715
  %8721 = call float @dx.op.binary.f32(i32 35, float %8717, float %8718)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8721, float %8720)  ; FMin(a,b)
  %8723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8654, float %8655, float %8722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.ResRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.ResRet.f32 %8723, 2
  %8727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.i32 %8727, 0
  %8729 = extractvalue %dx.types.CBufRet.i32 %8727, 1
  %8730 = uitofp i32 %8728 to float
  %8731 = uitofp i32 %8729 to float
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 0
  %8734 = extractvalue %dx.types.CBufRet.f32 %8732, 1
  %8735 = fmul fast float %8730, %8654
  %8736 = fmul fast float %8731, %8655
  %8737 = fadd fast float %8735, -5.000000e-01
  %8738 = fadd fast float %8736, -5.000000e-01
  %8739 = call float @dx.op.unary.f32(i32 22, float %8737)  ; Frc(value)
  %8740 = call float @dx.op.unary.f32(i32 22, float %8738)  ; Frc(value)
  %8741 = fmul fast float %8739, %8739
  %8742 = fmul fast float %8741, %8739
  %8743 = fsub fast float 3.000000e+00, %8739
  %8744 = fmul fast float %8741, %8743
  %8745 = fmul fast float %8739, 3.000000e+00
  %8746 = fmul fast float %8742, 3.000000e+00
  %8747 = fmul fast float %8741, 6.000000e+00
  %8748 = fsub fast float %8746, %8747
  %8749 = fadd fast float %8748, 4.000000e+00
  %8750 = fmul fast float %8749, 0x3FC5555560000000
  %8751 = fmul fast float %8742, -3.000000e+00
  %8752 = fadd fast float %8741, %8739
  %8753 = fmul fast float %8752, 3.000000e+00
  %8754 = fadd fast float %8751, 1.000000e+00
  %8755 = fadd fast float %8754, %8753
  %8756 = fmul fast float %8742, 0x3FC5555560000000
  %8757 = fmul fast float %8740, %8740
  %8758 = fmul fast float %8757, %8740
  %8759 = fsub fast float 3.000000e+00, %8740
  %8760 = fmul fast float %8757, %8759
  %8761 = fmul fast float %8740, 3.000000e+00
  %8762 = fmul fast float %8758, 3.000000e+00
  %8763 = fmul fast float %8757, 6.000000e+00
  %8764 = fsub fast float %8762, %8763
  %8765 = fadd fast float %8764, 4.000000e+00
  %8766 = fmul fast float %8765, 0x3FC5555560000000
  %8767 = fmul fast float %8758, -3.000000e+00
  %8768 = fadd fast float %8757, %8740
  %8769 = fmul fast float %8768, 3.000000e+00
  %8770 = fadd fast float %8767, 1.000000e+00
  %8771 = fadd fast float %8770, %8769
  %8772 = fmul fast float %8758, 0x3FC5555560000000
  %8773 = fadd fast float %8739, 1.000000e+00
  %8774 = fsub fast float 1.000000e+00, %8745
  %8775 = fadd fast float %8774, %8744
  %8776 = fadd fast float %8775, %8749
  %8777 = fmul fast float %8776, 0x3FC5555560000000
  %8778 = fdiv fast float %8750, %8777
  %8779 = fsub fast float %8773, %8778
  %8780 = fsub fast float 1.000000e+00, %8739
  %8781 = fadd fast float %8755, %8742
  %8782 = fmul fast float %8781, 0x3FC5555560000000
  %8783 = fdiv fast float %8756, %8782
  %8784 = fadd fast float %8780, %8783
  %8785 = fadd fast float %8740, 1.000000e+00
  %8786 = fsub fast float 1.000000e+00, %8761
  %8787 = fadd fast float %8786, %8760
  %8788 = fadd fast float %8787, %8765
  %8789 = fmul fast float %8788, 0x3FC5555560000000
  %8790 = fdiv fast float %8766, %8789
  %8791 = fsub fast float %8785, %8790
  %8792 = fsub fast float 1.000000e+00, %8740
  %8793 = fadd fast float %8771, %8758
  %8794 = fmul fast float %8793, 0x3FC5555560000000
  %8795 = fdiv fast float %8772, %8794
  %8796 = fadd fast float %8795, %8792
  %8797 = fmul fast float %8779, %8733
  %8798 = fsub fast float %8654, %8797
  %8799 = fmul fast float %8784, %8733
  %8800 = fadd fast float %8799, %8654
  %8801 = fmul fast float %8796, %8734
  %8802 = fadd fast float %8801, %8655
  %8803 = fmul fast float %8791, %8734
  %8804 = fsub fast float %8655, %8803
  %8805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8798, float %8804, float %8722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8806 = extractvalue %dx.types.ResRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.ResRet.f32 %8805, 1
  %8808 = extractvalue %dx.types.ResRet.f32 %8805, 2
  %8809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8800, float %8804, float %8722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8810 = extractvalue %dx.types.ResRet.f32 %8809, 0
  %8811 = extractvalue %dx.types.ResRet.f32 %8809, 1
  %8812 = extractvalue %dx.types.ResRet.f32 %8809, 2
  %8813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8798, float %8802, float %8722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8814 = extractvalue %dx.types.ResRet.f32 %8813, 0
  %8815 = extractvalue %dx.types.ResRet.f32 %8813, 1
  %8816 = extractvalue %dx.types.ResRet.f32 %8813, 2
  %8817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8800, float %8802, float %8722, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8818 = extractvalue %dx.types.ResRet.f32 %8817, 0
  %8819 = extractvalue %dx.types.ResRet.f32 %8817, 1
  %8820 = extractvalue %dx.types.ResRet.f32 %8817, 2
  %8821 = fsub fast float %8814, %8806
  %8822 = fsub fast float %8815, %8807
  %8823 = fsub fast float %8816, %8808
  %8824 = fmul fast float %8821, %8794
  %8825 = fmul fast float %8822, %8794
  %8826 = fmul fast float %8823, %8794
  %8827 = fadd fast float %8824, %8806
  %8828 = fadd fast float %8825, %8807
  %8829 = fadd fast float %8826, %8808
  %8830 = fsub fast float %8818, %8810
  %8831 = fsub fast float %8819, %8811
  %8832 = fsub fast float %8820, %8812
  %8833 = fmul fast float %8830, %8794
  %8834 = fmul fast float %8831, %8794
  %8835 = fmul fast float %8832, %8794
  %8836 = fsub fast float %8810, %8827
  %8837 = fadd fast float %8836, %8833
  %8838 = fsub fast float %8811, %8828
  %8839 = fadd fast float %8838, %8834
  %8840 = fsub fast float %8812, %8829
  %8841 = fadd fast float %8840, %8835
  %8842 = fmul fast float %8837, %8782
  %8843 = fmul fast float %8839, %8782
  %8844 = fmul fast float %8841, %8782
  %8845 = fadd fast float %8842, %8827
  %8846 = fadd fast float %8843, %8828
  %8847 = fadd fast float %8844, %8829
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 1
  %8850 = fmul fast float %8845, %8849
  %8851 = fmul fast float %8846, %8849
  %8852 = fmul fast float %8847, %8849
  br label %8853

; <label>:8853                                    ; preds = %8684, %8641
  %8854 = phi float [ %8724, %8684 ], [ 1.000000e+00, %8641 ]
  %8855 = phi float [ %8725, %8684 ], [ 1.000000e+00, %8641 ]
  %8856 = phi float [ %8726, %8684 ], [ 1.000000e+00, %8641 ]
  %8857 = phi float [ %8850, %8684 ], [ 0.000000e+00, %8641 ]
  %8858 = phi float [ %8851, %8684 ], [ 0.000000e+00, %8641 ]
  %8859 = phi float [ %8852, %8684 ], [ 0.000000e+00, %8641 ]
  %8860 = fmul fast float %8857, %7195
  %8861 = fmul fast float %8858, %7195
  %8862 = fmul fast float %8859, %7195
  %8863 = fmul fast float %8854, %8648
  %8864 = call float @dx.op.dot3.f32(i32 55, float %8854, float %8855, float %8856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8865 = call float @dx.op.dot3.f32(i32 55, float %8860, float %8861, float %8862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8866 = select i1 %252, float %8864, float %8854
  %8867 = select i1 %252, float %8864, float %8855
  %8868 = select i1 %252, float 1.000000e+00, float %8856
  %8869 = select i1 %252, float %8865, float %8860
  %8870 = select i1 %252, float 0.000000e+00, float %8861
  %8871 = select i1 %252, float 0.000000e+00, float %8862
  %8872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.i32 %8872, 3
  %8874 = and i32 %8873, 3
  %8875 = icmp ne i32 %8874, 0
  %8876 = and i32 %8873, 4
  %8877 = icmp ne i32 %8876, 0
  %8878 = and i1 %8875, %8877
  %8879 = and i1 %252, %8878
  br i1 %8879, label %8880, label %8886

; <label>:8880                                    ; preds = %8853
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8883 = fadd fast float %8863, -1.000000e+00
  %8884 = fmul fast float %8882, %8883
  %8885 = fadd fast float %8884, 1.000000e+00
  br label %8886

; <label>:8886                                    ; preds = %8880, %8853
  %8887 = phi float [ %8885, %8880 ], [ %8863, %8853 ]
  %8888 = fadd fast float %8645, %8642
  %8889 = fmul fast float %8866, %8888
  %8890 = fadd fast float %8889, %8869
  %8891 = fadd fast float %8646, %8643
  %8892 = fmul fast float %8867, %8891
  %8893 = fadd fast float %8892, %8870
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  br i1 %252, label %8896, label %8919

; <label>:8896                                    ; preds = %8886
  %8897 = fadd fast float %8890, %8893
  %8898 = fmul fast float %8895, %8897
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 3
  %8901 = extractvalue %dx.types.CBufRet.f32 %7199, 1
  %8902 = fsub fast float %7204, %7198
  %8903 = fadd fast float %8902, %7205
  %8904 = fsub fast float %8903, %8901
  %8905 = extractvalue %dx.types.CBufRet.f32 %7199, 2
  %8906 = fmul fast float %8904, %8905
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8908 = fsub fast float %8907, %8900
  %8909 = fmul fast float %8908, %8887
  %8910 = fadd fast float %8909, %8900
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 0
  %8913 = fsub fast float %8910, %8912
  %8914 = fmul fast float %8913, 1.000000e+01
  %8915 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8916 = fmul fast float %8915, %7194
  %8917 = fadd fast float %8916, %7195
  %8918 = fmul fast float %8917, %8910
  br label %8943

; <label>:8919                                    ; preds = %8886
  %8920 = fadd fast float %8647, %8644
  %8921 = fmul fast float %8868, %8920
  %8922 = fadd fast float %8921, %8871
  %8923 = fmul fast float %8895, %8890
  %8924 = fmul fast float %8895, %8893
  %8925 = fmul fast float %8895, %8922
  %8926 = call float @dx.op.binary.f32(i32 35, float %8924, float %8925)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 35, float %8923, float %8926)  ; FMax(a,b)
  %8928 = call float @dx.op.binary.f32(i32 35, float %8927, float %7195)  ; FMax(a,b)
  %8929 = fcmp fast ugt float %8928, 0x3F10000000000000
  br i1 %8929, label %8931, label %8930

; <label>:8930                                    ; preds = %8919
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8931

; <label>:8931                                    ; preds = %8930, %8919
  %8932 = add i32 %55, 356
  %8933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8932, i32 undef)  ; BufferLoad(srv,index,wot)
  %8934 = extractvalue %dx.types.ResRet.i32 %8933, 0
  %8935 = and i32 %8934, 32
  %8936 = icmp eq i32 %8935, 0
  br i1 %8936, label %8943, label %8937

; <label>:8937                                    ; preds = %8931
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = fmul fast float %8939, 0x3FE99999A0000000
  %8941 = fadd fast float %8939, %8923
  %8942 = fadd fast float %8940, %8925
  br label %8943

; <label>:8943                                    ; preds = %8937, %8931, %8896
  %8944 = phi float [ %8898, %8896 ], [ %8941, %8937 ], [ %8923, %8931 ]
  %8945 = phi float [ %8918, %8896 ], [ %8924, %8937 ], [ %8924, %8931 ]
  %8946 = phi float [ %8917, %8896 ], [ %8942, %8937 ], [ %8925, %8931 ]
  %8947 = phi float [ %8917, %8896 ], [ %7195, %8937 ], [ %7195, %8931 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8944, float 3.225500e+04)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 36, float %8945, float 3.225500e+04)  ; FMin(a,b)
  %8950 = call float @dx.op.binary.f32(i32 36, float %8946, float 3.225500e+04)  ; FMin(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8947, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !96}
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
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
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

