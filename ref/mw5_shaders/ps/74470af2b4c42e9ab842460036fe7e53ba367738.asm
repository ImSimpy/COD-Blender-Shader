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
; shader hash: dbbe7525b7fa46940ee6b3f8cfaf134f
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
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
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
  %1251 = phi float [ 0.000000e+00, %699 ], [ %1232, %1231 ]
  %1252 = phi float [ 0.000000e+00, %699 ], [ %1233, %1231 ]
  %1253 = phi float [ 0.000000e+00, %699 ], [ %1234, %1231 ]
  %1254 = phi float [ 0.000000e+00, %699 ], [ %1104, %1231 ]
  %1255 = phi float [ 0.000000e+00, %699 ], [ %1105, %1231 ]
  %1256 = phi float [ 0.000000e+00, %699 ], [ %1106, %1231 ]
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
  %1810 = fmul fast float %1809, %1254
  %1811 = fmul fast float %1809, %1255
  %1812 = fmul fast float %1809, %1256
  %1813 = fmul fast float %1809, %1251
  %1814 = fmul fast float %1809, %1252
  %1815 = fmul fast float %1809, %1253
  br label %1816

; <label>:1816                                    ; preds = %1808, %1791
  %1817 = phi float [ %1813, %1808 ], [ %1251, %1791 ]
  %1818 = phi float [ %1814, %1808 ], [ %1252, %1791 ]
  %1819 = phi float [ %1815, %1808 ], [ %1253, %1791 ]
  %1820 = phi float [ %1810, %1808 ], [ %1254, %1791 ]
  %1821 = phi float [ %1811, %1808 ], [ %1255, %1791 ]
  %1822 = phi float [ %1812, %1808 ], [ %1256, %1791 ]
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
  %1836 = fsub fast float %1664, %1820
  %1837 = fsub fast float %1665, %1821
  %1838 = fsub fast float %1666, %1822
  %1839 = fmul fast float %1830, %1836
  %1840 = fmul fast float %1830, %1837
  %1841 = fmul fast float %1830, %1838
  %1842 = fadd fast float %1839, %1820
  %1843 = fadd fast float %1840, %1821
  %1844 = fadd fast float %1841, %1822
  %1845 = fsub fast float %1650, %1257
  %1846 = fmul fast float %1830, %1845
  %1847 = fadd fast float %1846, %1257
  %1848 = fsub fast float %1792, %1817
  %1849 = fsub fast float %1793, %1818
  %1850 = fsub fast float %1794, %1819
  %1851 = fmul fast float %1835, %1848
  %1852 = fmul fast float %1835, %1849
  %1853 = fmul fast float %1835, %1850
  %1854 = fadd fast float %1851, %1817
  %1855 = fadd fast float %1852, %1818
  %1856 = fadd fast float %1853, %1819
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
  %1872 = fmul fast float %1869, %1820
  %1873 = fmul fast float %1870, %1821
  %1874 = fmul fast float %1871, %1822
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
  %1892 = fmul fast float %1891, %1820
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1820
  %1895 = fmul fast float %1888, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1821
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1821
  %1900 = fmul fast float %1889, 2.000000e+00
  %1901 = fsub fast float 1.000000e+00, %1900
  %1902 = fmul fast float %1901, %1822
  %1903 = fadd fast float %1902, %1900
  %1904 = fmul fast float %1903, %1822
  br label %1905

; <label>:1905                                    ; preds = %1877, %1875, %1862, %1832, %1816
  %1906 = phi float [ %1817, %1816 ], [ %1817, %1877 ], [ %1817, %1875 ], [ %1817, %1862 ], [ %1854, %1832 ]
  %1907 = phi float [ %1818, %1816 ], [ %1818, %1877 ], [ %1818, %1875 ], [ %1818, %1862 ], [ %1855, %1832 ]
  %1908 = phi float [ %1819, %1816 ], [ %1819, %1877 ], [ %1819, %1875 ], [ %1819, %1862 ], [ %1856, %1832 ]
  %1909 = phi float [ %1820, %1816 ], [ %1894, %1877 ], [ %1820, %1875 ], [ %1872, %1862 ], [ %1842, %1832 ]
  %1910 = phi float [ %1821, %1816 ], [ %1899, %1877 ], [ %1821, %1875 ], [ %1873, %1862 ], [ %1843, %1832 ]
  %1911 = phi float [ %1822, %1816 ], [ %1904, %1877 ], [ %1822, %1875 ], [ %1874, %1862 ], [ %1844, %1832 ]
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
  %2549 = fmul fast float %2548, %1994
  %2550 = fmul fast float %2548, %1995
  %2551 = fmul fast float %2548, %1996
  %2552 = fmul fast float %2548, %1991
  %2553 = fmul fast float %2548, %1992
  %2554 = fmul fast float %2548, %1993
  br label %2555

; <label>:2555                                    ; preds = %2547, %2530
  %2556 = phi float [ %2552, %2547 ], [ %1991, %2530 ]
  %2557 = phi float [ %2553, %2547 ], [ %1992, %2530 ]
  %2558 = phi float [ %2554, %2547 ], [ %1993, %2530 ]
  %2559 = phi float [ %2549, %2547 ], [ %1994, %2530 ]
  %2560 = phi float [ %2550, %2547 ], [ %1995, %2530 ]
  %2561 = phi float [ %2551, %2547 ], [ %1996, %2530 ]
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
  %2575 = fsub fast float %2403, %2559
  %2576 = fsub fast float %2404, %2560
  %2577 = fsub fast float %2405, %2561
  %2578 = fmul fast float %2569, %2575
  %2579 = fmul fast float %2569, %2576
  %2580 = fmul fast float %2569, %2577
  %2581 = fadd fast float %2578, %2559
  %2582 = fadd fast float %2579, %2560
  %2583 = fadd fast float %2580, %2561
  %2584 = fsub fast float %2389, %1997
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1997
  %2587 = fsub fast float %2531, %2556
  %2588 = fsub fast float %2532, %2557
  %2589 = fsub fast float %2533, %2558
  %2590 = fmul fast float %2574, %2587
  %2591 = fmul fast float %2574, %2588
  %2592 = fmul fast float %2574, %2589
  %2593 = fadd fast float %2590, %2556
  %2594 = fadd fast float %2591, %2557
  %2595 = fadd fast float %2592, %2558
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
  %2611 = fmul fast float %2608, %2559
  %2612 = fmul fast float %2609, %2560
  %2613 = fmul fast float %2610, %2561
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
  %2631 = fmul fast float %2630, %2559
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2559
  %2634 = fmul fast float %2627, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2560
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2560
  %2639 = fmul fast float %2628, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2561
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2561
  br label %2644

; <label>:2644                                    ; preds = %2616, %2614, %2601, %2571, %2555
  %2645 = phi float [ %2556, %2555 ], [ %2556, %2616 ], [ %2556, %2614 ], [ %2556, %2601 ], [ %2593, %2571 ]
  %2646 = phi float [ %2557, %2555 ], [ %2557, %2616 ], [ %2557, %2614 ], [ %2557, %2601 ], [ %2594, %2571 ]
  %2647 = phi float [ %2558, %2555 ], [ %2558, %2616 ], [ %2558, %2614 ], [ %2558, %2601 ], [ %2595, %2571 ]
  %2648 = phi float [ %2559, %2555 ], [ %2633, %2616 ], [ %2559, %2614 ], [ %2611, %2601 ], [ %2581, %2571 ]
  %2649 = phi float [ %2560, %2555 ], [ %2638, %2616 ], [ %2560, %2614 ], [ %2612, %2601 ], [ %2582, %2571 ]
  %2650 = phi float [ %2561, %2555 ], [ %2643, %2616 ], [ %2561, %2614 ], [ %2613, %2601 ], [ %2583, %2571 ]
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
  %3288 = fmul fast float %3287, %2733
  %3289 = fmul fast float %3287, %2734
  %3290 = fmul fast float %3287, %2735
  %3291 = fmul fast float %3287, %2730
  %3292 = fmul fast float %3287, %2731
  %3293 = fmul fast float %3287, %2732
  br label %3294

; <label>:3294                                    ; preds = %3286, %3269
  %3295 = phi float [ %3291, %3286 ], [ %2730, %3269 ]
  %3296 = phi float [ %3292, %3286 ], [ %2731, %3269 ]
  %3297 = phi float [ %3293, %3286 ], [ %2732, %3269 ]
  %3298 = phi float [ %3288, %3286 ], [ %2733, %3269 ]
  %3299 = phi float [ %3289, %3286 ], [ %2734, %3269 ]
  %3300 = phi float [ %3290, %3286 ], [ %2735, %3269 ]
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
  %3314 = fsub fast float %3142, %3298
  %3315 = fsub fast float %3143, %3299
  %3316 = fsub fast float %3144, %3300
  %3317 = fmul fast float %3308, %3314
  %3318 = fmul fast float %3308, %3315
  %3319 = fmul fast float %3308, %3316
  %3320 = fadd fast float %3317, %3298
  %3321 = fadd fast float %3318, %3299
  %3322 = fadd fast float %3319, %3300
  %3323 = fsub fast float %3128, %2736
  %3324 = fmul fast float %3308, %3323
  %3325 = fadd fast float %3324, %2736
  %3326 = fsub fast float %3270, %3295
  %3327 = fsub fast float %3271, %3296
  %3328 = fsub fast float %3272, %3297
  %3329 = fmul fast float %3313, %3326
  %3330 = fmul fast float %3313, %3327
  %3331 = fmul fast float %3313, %3328
  %3332 = fadd fast float %3329, %3295
  %3333 = fadd fast float %3330, %3296
  %3334 = fadd fast float %3331, %3297
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
  %3350 = fmul fast float %3347, %3298
  %3351 = fmul fast float %3348, %3299
  %3352 = fmul fast float %3349, %3300
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
  %3370 = fmul fast float %3369, %3298
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3298
  %3373 = fmul fast float %3366, 2.000000e+00
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3374, %3299
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3299
  %3378 = fmul fast float %3367, 2.000000e+00
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3379, %3300
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3300
  br label %3383

; <label>:3383                                    ; preds = %3355, %3353, %3340, %3310, %3294
  %3384 = phi float [ %3295, %3294 ], [ %3295, %3355 ], [ %3295, %3353 ], [ %3295, %3340 ], [ %3332, %3310 ]
  %3385 = phi float [ %3296, %3294 ], [ %3296, %3355 ], [ %3296, %3353 ], [ %3296, %3340 ], [ %3333, %3310 ]
  %3386 = phi float [ %3297, %3294 ], [ %3297, %3355 ], [ %3297, %3353 ], [ %3297, %3340 ], [ %3334, %3310 ]
  %3387 = phi float [ %3298, %3294 ], [ %3372, %3355 ], [ %3298, %3353 ], [ %3350, %3340 ], [ %3320, %3310 ]
  %3388 = phi float [ %3299, %3294 ], [ %3377, %3355 ], [ %3299, %3353 ], [ %3351, %3340 ], [ %3321, %3310 ]
  %3389 = phi float [ %3300, %3294 ], [ %3382, %3355 ], [ %3300, %3353 ], [ %3352, %3340 ], [ %3322, %3310 ]
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
  %3506 = fmul fast float %3501, %3472
  %3507 = fmul fast float %3503, %3473
  %3508 = fmul fast float %3505, %3474
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
  %3520 = fmul fast float %3511, %3469
  %3521 = fmul fast float %3520, %3519
  %3522 = fmul fast float %3514, %3470
  %3523 = fmul fast float %3522, %3519
  %3524 = fmul fast float %3517, %3471
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
  br i1 %3554, label %4069, label %3555

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
  br i1 %3616, label %4038, label %3617

; <label>:3617                                    ; preds = %3555
  br label %3618

; <label>:3618                                    ; preds = %3739, %3617
  %3619 = phi i32 [ %3641, %3739 ], [ %3615, %3617 ]
  %3620 = phi float [ %3740, %3739 ], [ 0.000000e+00, %3617 ]
  %3621 = phi float [ %3741, %3739 ], [ %3499, %3617 ]
  %3622 = phi float [ %3742, %3739 ], [ %3478, %3617 ]
  %3623 = phi float [ %3743, %3739 ], [ 0.000000e+00, %3617 ]
  %3624 = phi float [ %3744, %3739 ], [ 0.000000e+00, %3617 ]
  %3625 = phi float [ %3745, %3739 ], [ %3521, %3617 ]
  %3626 = phi float [ %3746, %3739 ], [ %3523, %3617 ]
  %3627 = phi float [ %3747, %3739 ], [ %3525, %3617 ]
  %3628 = phi float [ %3748, %3739 ], [ %3551, %3617 ]
  %3629 = phi float [ %3749, %3739 ], [ %3552, %3617 ]
  %3630 = phi float [ %3750, %3739 ], [ %3553, %3617 ]
  %3631 = phi float [ %3751, %3739 ], [ %3477, %3617 ]
  %3632 = phi float [ %3752, %3739 ], [ %3476, %3617 ]
  %3633 = phi float [ %3753, %3739 ], [ 0.000000e+00, %3617 ]
  %3634 = phi float [ %3754, %3739 ], [ %3475, %3617 ]
  %3635 = phi float [ %3755, %3739 ], [ %3506, %3617 ]
  %3636 = phi float [ %3756, %3739 ], [ %3507, %3617 ]
  %3637 = phi float [ %3757, %3739 ], [ %3508, %3617 ]
  %3638 = shl nuw nsw i32 %3619, 2
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = lshr i32 %3640, 16
  %3642 = shl i32 %3640, 8
  %3643 = and i32 %3642, 16776960
  %3644 = or i32 %3643, 48
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = or i32 %3643, 64
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.i32 %3650, 1
  %3653 = or i32 %3643, 80
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3657 = or i32 %3643, 96
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = or i32 %3643, 112
  %3664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3666 = or i32 %3643, 128
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3672 = or i32 %3643, 144
  %3673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.ResRet.f32 %3673, 3
  %3678 = or i32 %3643, 160
  %3679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.ResRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3679, 2
  %3683 = extractvalue %dx.types.ResRet.f32 %3679, 3
  %3684 = or i32 %3643, 192
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = or i32 %3643, 208
  %3688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = or i32 %3643, 248
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3697 = extractvalue %dx.types.ResRet.f32 %3694, 2
  %3698 = extractvalue %dx.types.ResRet.f32 %3694, 3
  %3699 = call float @dx.op.dot4.f32(i32 56, float %3695, float %3696, float %3697, float %3698, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3700 = or i32 %3643, 16
  %3701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = extractvalue %dx.types.ResRet.f32 %3701, 1
  %3704 = extractvalue %dx.types.ResRet.f32 %3701, 2
  %3705 = extractvalue %dx.types.ResRet.f32 %3701, 3
  %3706 = call float @dx.op.dot4.f32(i32 56, float %3702, float %3703, float %3704, float %3705, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3707 = or i32 %3643, 32
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = call float @dx.op.dot4.f32(i32 56, float %3709, float %3710, float %3711, float %3712, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3714 = call float @dx.op.unary.f32(i32 27, float %3699)  ; Round_ni(value)
  %3715 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3716 = call float @dx.op.unary.f32(i32 27, float %3706)  ; Round_ni(value)
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = call float @dx.op.unary.f32(i32 6, float %3713)  ; FAbs(value)
  %3719 = call float @dx.op.unary.f32(i32 27, float %3718)  ; Round_ni(value)
  %3720 = fadd fast float %3717, %3715
  %3721 = fadd fast float %3720, %3719
  %3722 = fcmp fast oeq float %3721, 0.000000e+00
  %3723 = call float @dx.op.dot4.f32(i32 56, float %3695, float %3696, float %3697, float %3698, float %3562, float %3563, float %3564, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3724 = call float @dx.op.dot4.f32(i32 56, float %3702, float %3703, float %3704, float %3705, float %3562, float %3563, float %3564, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3725 = call float @dx.op.dot4.f32(i32 56, float %3695, float %3696, float %3697, float %3698, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3726 = call float @dx.op.dot4.f32(i32 56, float %3702, float %3703, float %3704, float %3705, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3727 = fsub fast float %3723, %3699
  %3728 = fsub fast float %3725, %3699
  %3729 = fsub fast float %3724, %3706
  %3730 = fsub fast float %3726, %3706
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3646, float %3647, float %3648, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3733 = extractvalue %dx.types.CBufRet.f32 %3732, 2
  %3734 = fadd fast float %3733, %3731
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3732, 0
  %3737 = fcmp fast ogt float %3735, %3736
  %3738 = and i1 %3722, %3737
  br i1 %3738, label %3759, label %3739

; <label>:3739                                    ; preds = %4024, %3842, %3759, %3618
  %3740 = phi float [ %3620, %3759 ], [ %3845, %3842 ], [ %3845, %4024 ], [ %3620, %3618 ]
  %3741 = phi float [ %3621, %3759 ], [ %3621, %3842 ], [ %3999, %4024 ], [ %3621, %3618 ]
  %3742 = phi float [ %3622, %3759 ], [ %3622, %3842 ], [ %3997, %4024 ], [ %3622, %3618 ]
  %3743 = phi float [ %3623, %3759 ], [ %3623, %3842 ], [ %3969, %4024 ], [ %3623, %3618 ]
  %3744 = phi float [ %3624, %3759 ], [ %3624, %3842 ], [ %3967, %4024 ], [ %3624, %3618 ]
  %3745 = phi float [ %3625, %3759 ], [ %3625, %3842 ], [ %4034, %4024 ], [ %3625, %3618 ]
  %3746 = phi float [ %3626, %3759 ], [ %3626, %3842 ], [ %4035, %4024 ], [ %3626, %3618 ]
  %3747 = phi float [ %3627, %3759 ], [ %3627, %3842 ], [ %4036, %4024 ], [ %3627, %3618 ]
  %3748 = phi float [ %3628, %3759 ], [ %3628, %3842 ], [ %3948, %4024 ], [ %3628, %3618 ]
  %3749 = phi float [ %3629, %3759 ], [ %3629, %3842 ], [ %3949, %4024 ], [ %3629, %3618 ]
  %3750 = phi float [ %3630, %3759 ], [ %3630, %3842 ], [ %3950, %4024 ], [ %3630, %3618 ]
  %3751 = phi float [ %3631, %3759 ], [ %3631, %3842 ], [ %3977, %4024 ], [ %3631, %3618 ]
  %3752 = phi float [ %3632, %3759 ], [ %3632, %3842 ], [ %3974, %4024 ], [ %3632, %3618 ]
  %3753 = phi float [ %3633, %3759 ], [ %3633, %3842 ], [ %3971, %4024 ], [ %3633, %3618 ]
  %3754 = phi float [ %3634, %3759 ], [ %3634, %3842 ], [ %3965, %4024 ], [ %3634, %3618 ]
  %3755 = phi float [ %3635, %3759 ], [ %3635, %3842 ], [ %3960, %4024 ], [ %3635, %3618 ]
  %3756 = phi float [ %3636, %3759 ], [ %3636, %3842 ], [ %3961, %4024 ], [ %3636, %3618 ]
  %3757 = phi float [ %3637, %3759 ], [ %3637, %3842 ], [ %3962, %4024 ], [ %3637, %3618 ]
  %3758 = icmp eq i32 %3641, 0
  br i1 %3758, label %4037, label %3618

; <label>:3759                                    ; preds = %3618
  %3760 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3761 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3762 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3763 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3766 = extractvalue %dx.types.ResRet.i32 %3650, 3
  %3767 = extractvalue %dx.types.ResRet.i32 %3650, 2
  %3768 = bitcast float %3760 to i32
  %3769 = add i32 %3766, 0
  %3770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3770, %dx.types.Handle %3771, float %3699, float %3706, float undef, float undef, i32 0, i32 0, i32 undef, float %3727, float %3729, float undef, float %3728, float %3730, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = fmul fast float %3773, %3765
  %3775 = fadd fast float %3774, %3764
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3699, %3659
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3706, float %3777)  ; FMad(a,b,c)
  %3779 = fadd fast float %3778, %3763
  %3780 = fmul fast float %3699, %3661
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3706, float %3780)  ; FMad(a,b,c)
  %3782 = fadd fast float %3781, %3762
  %3783 = fmul fast float %3727, %3659
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3729, float %3783)  ; FMad(a,b,c)
  %3785 = fmul fast float %3727, %3661
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3729, float %3785)  ; FMad(a,b,c)
  %3787 = fmul fast float %3728, %3659
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3730, float %3787)  ; FMad(a,b,c)
  %3789 = fmul fast float %3728, %3661
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3730, float %3789)  ; FMad(a,b,c)
  %3791 = add i32 %3767, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3791, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3792, %dx.types.Handle %3771, float %3779, float %3782, float undef, float undef, i32 0, i32 0, i32 undef, float %3784, float %3786, float undef, float %3788, float %3790, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = and i32 %3768, 1024
  %3796 = icmp ne i32 %3795, 0
  %3797 = fcmp fast ogt float %3794, 0x3FE0101020000000
  %3798 = uitofp i1 %3797 to float
  %3799 = select i1 %3796, float %3798, float %3794
  %3800 = and i32 %3768, 8192
  %3801 = icmp ne i32 %3800, 0
  %3802 = select i1 %3801, float %3761, float 1.000000e+00
  %3803 = fmul fast float %3699, 2.000000e+00
  %3804 = fadd fast float %3803, -1.000000e+00
  %3805 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3806 = fmul fast float %3805, %3692
  %3807 = fsub fast float %3806, %3692
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = fmul fast float %3706, 2.000000e+00
  %3810 = fadd fast float %3809, -1.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3812 = fmul fast float %3811, %3693
  %3813 = fsub fast float %3812, %3693
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fmul fast float %3718, %3655
  %3816 = fsub fast float %3815, %3655
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = fmul fast float %3776, %3802
  %3819 = fmul fast float %3818, %3773
  %3820 = fmul fast float %3819, %3808
  %3821 = fmul fast float %3820, %3799
  %3822 = fmul fast float %3821, %3814
  %3823 = fmul fast float %3822, %3817
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 1
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3827 = fsub fast float %3735, %3826
  %3828 = fmul fast float %3827, %3825
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3823, %3656
  %3831 = fadd fast float %3823, %3656
  %3832 = fmul fast float %3831, %3665
  %3833 = fsub fast float %3832, %3665
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3835 = and i32 %3768, 128
  %3836 = icmp ne i32 %3835, 0
  %3837 = select i1 %3836, float %3834, float %3830
  %3838 = fmul fast float %3837, %3829
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = fcmp fast ugt float %3838, %3840
  br i1 %3841, label %3842, label %3739

; <label>:3842                                    ; preds = %3759
  %3843 = select i1 %3801, float %3838, float 0.000000e+00
  %3844 = fadd fast float %3843, %3620
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  br i1 %3801, label %3739, label %3846

; <label>:3846                                    ; preds = %3842
  %3847 = and i32 %3768, 4
  %3848 = and i32 %3768, 8
  %3849 = add i32 %3651, 0
  %3850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3849, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3852 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3850, %dx.types.Handle %3851, float %3779, float %3782, float undef, float undef, i32 0, i32 0, i32 undef, float %3784, float %3786, float undef, float %3788, float %3790, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = bitcast float %3677 to i32
  %3858 = and i32 %3857, 255
  %3859 = uitofp i32 %3858 to float
  %3860 = lshr i32 %3857, 8
  %3861 = and i32 %3860, 255
  %3862 = uitofp i32 %3861 to float
  %3863 = fmul fast float %3856, %3859
  %3864 = fadd fast float %3863, %3862
  %3865 = fmul fast float %3864, 0x3F70101000000000
  %3866 = add i32 %3652, 0
  %3867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3866, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3868 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3867, %dx.types.Handle %3851, float %3779, float %3782, float undef, float undef, i32 0, i32 0, i32 undef, float %3784, float %3786, float undef, float %3788, float %3790, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.f32 %3868, 3
  %3873 = bitcast float %3671 to i32
  %3874 = and i32 %3873, 255
  %3875 = uitofp i32 %3874 to float
  %3876 = lshr i32 %3873, 8
  %3877 = and i32 %3876, 255
  %3878 = uitofp i32 %3877 to float
  %3879 = lshr i32 %3873, 16
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = fmul fast float %3881, 0x3F70101000000000
  %3883 = fmul fast float %3869, %3875
  %3884 = fadd fast float %3883, %3878
  %3885 = fmul fast float %3884, 0x3F70101000000000
  %3886 = fadd fast float %3870, -5.000000e-01
  %3887 = fadd fast float %3872, -5.000000e-01
  %3888 = fmul fast float %3886, %3882
  %3889 = fmul fast float %3887, %3882
  %3890 = fadd fast float %3888, 5.000000e-01
  %3891 = fadd fast float %3889, 5.000000e-01
  %3892 = fmul fast float %3853, %3680
  %3893 = fmul fast float %3854, %3681
  %3894 = fmul fast float %3855, %3682
  %3895 = fmul fast float %3890, 2.000000e+00
  %3896 = fadd fast float %3895, -1.000000e+00
  %3897 = fmul fast float %3891, 2.000000e+00
  %3898 = fadd fast float %3897, -1.000000e+00
  %3899 = fadd fast float %3896, %3898
  %3900 = fmul fast float %3899, 5.000000e-01
  %3901 = fsub fast float %3896, %3898
  %3902 = fmul fast float %3901, 5.000000e-01
  %3903 = call float @dx.op.unary.f32(i32 6, float %3900)  ; FAbs(value)
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = call float @dx.op.unary.f32(i32 6, float %3902)  ; FAbs(value)
  %3906 = fsub fast float %3904, %3905
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3902, float %3906, float %3900, float %3902, float %3906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call float @dx.op.unary.f32(i32 25, float %3907)  ; Rsqrt(value)
  %3909 = fmul fast float %3900, %3908
  %3910 = fmul fast float %3902, %3908
  %3911 = fmul fast float %3908, %3906
  %3912 = fmul fast float %3911, %3646
  %3913 = fmul fast float %3911, %3647
  %3914 = fmul fast float %3911, %3648
  %3915 = fmul fast float %3909, %3668
  %3916 = fmul fast float %3909, %3669
  %3917 = fmul fast float %3909, %3670
  %3918 = fadd fast float %3915, %3912
  %3919 = fadd fast float %3916, %3913
  %3920 = fadd fast float %3917, %3914
  %3921 = fmul fast float %3910, %3674
  %3922 = fmul fast float %3910, %3675
  %3923 = fmul fast float %3910, %3676
  %3924 = fadd fast float %3918, %3921
  %3925 = fadd fast float %3919, %3922
  %3926 = fadd fast float %3920, %3923
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3925, float %3926, float %3924, float %3925, float %3926)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = call float @dx.op.unary.f32(i32 25, float %3927)  ; Rsqrt(value)
  %3929 = fmul fast float %3924, %3928
  %3930 = fmul fast float %3925, %3928
  %3931 = fmul fast float %3926, %3928
  %3932 = icmp ne i32 %3848, 0
  %3933 = select i1 %3932, float 1.000000e+00, float 0.000000e+00
  %3934 = fmul fast float %3838, %3933
  %3935 = and i32 %3768, 1
  %3936 = icmp eq i32 %3935, 0
  br i1 %3936, label %3937, label %3941

; <label>:3937                                    ; preds = %3846
  %3938 = fsub fast float %3929, %3628
  %3939 = fsub fast float %3930, %3629
  %3940 = fsub fast float %3931, %3630
  br label %3941

; <label>:3941                                    ; preds = %3937, %3846
  %3942 = phi float [ %3938, %3937 ], [ %3929, %3846 ]
  %3943 = phi float [ %3939, %3937 ], [ %3930, %3846 ]
  %3944 = phi float [ %3940, %3937 ], [ %3931, %3846 ]
  %3945 = fmul float %3944, %3934
  %3946 = fmul float %3943, %3934
  %3947 = fmul float %3942, %3934
  %3948 = fadd fast float %3947, %3628
  %3949 = fadd fast float %3946, %3629
  %3950 = fadd fast float %3945, %3630
  %3951 = icmp ne i32 %3847, 0
  %3952 = select i1 %3951, float 1.000000e+00, float 0.000000e+00
  %3953 = fmul fast float %3838, %3952
  %3954 = fsub fast float %3892, %3635
  %3955 = fsub fast float %3893, %3636
  %3956 = fsub fast float %3894, %3637
  %3957 = fmul fast float %3954, %3953
  %3958 = fmul fast float %3955, %3953
  %3959 = fmul fast float %3956, %3953
  %3960 = fadd fast float %3957, %3635
  %3961 = fadd fast float %3958, %3636
  %3962 = fadd fast float %3959, %3637
  %3963 = fsub fast float %3865, %3634
  %3964 = fmul fast float %3963, %3953
  %3965 = fadd fast float %3964, %3634
  %3966 = fmul fast float %3953, %3624
  %3967 = fsub fast float %3624, %3966
  %3968 = fmul fast float %3953, %3623
  %3969 = fsub fast float %3623, %3968
  %3970 = fadd fast float %3838, %3633
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fsub fast float %3885, %3632
  %3973 = fmul fast float %3972, %3934
  %3974 = fadd fast float %3973, %3632
  %3975 = fsub fast float %3871, %3631
  %3976 = fmul fast float %3975, %3934
  %3977 = fadd fast float %3976, %3631
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3982 = fmul fast float %3981, %3978
  %3983 = fadd fast float %3982, %3980
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = bitcast float %3683 to i32
  %3986 = and i32 %3985, 65535
  %3987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3986)  ; LegacyF16ToF32(value)
  %3988 = lshr i32 %3985, 16
  %3989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3988)  ; LegacyF16ToF32(value)
  %3990 = fcmp fast oge float %3987, 0.000000e+00
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = select i1 %3990, float %3987, float %3992
  %3994 = fadd fast float %3993, %3989
  %3995 = fsub fast float %3984, %3622
  %3996 = fmul fast float %3995, %3838
  %3997 = fadd fast float %3996, %3622
  %3998 = fmul fast float %3994, %3838
  %3999 = call float @dx.op.binary.f32(i32 35, float %3621, float %3998)  ; FMax(a,b)
  %4000 = and i32 %3768, 16
  %4001 = icmp eq i32 %4000, 0
  br i1 %4001, label %4024, label %4002

; <label>:4002                                    ; preds = %3941
  %4003 = bitcast float %3689 to i32
  %4004 = add i32 %3686, 0
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4004, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4005, %dx.types.Handle %3851, float %3779, float %3782, float undef, float undef, i32 0, i32 0, i32 undef, float %3784, float %3786, float undef, float %3788, float %3790, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = and i32 %4003, 65535
  %4011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4010)  ; LegacyF16ToF32(value)
  %4012 = fmul fast float %4007, %3680
  %4013 = fmul fast float %4008, %3681
  %4014 = fmul fast float %4009, %3682
  %4015 = and i32 %3768, 16384
  %4016 = icmp ne i32 %4015, 0
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = select i1 %4016, float %4018, float 1.000000e+00
  %4020 = fmul fast float %4019, %4011
  %4021 = fmul fast float %4012, %4020
  %4022 = fmul fast float %4013, %4020
  %4023 = fmul fast float %4014, %4020
  br label %4024

; <label>:4024                                    ; preds = %4002, %3941
  %4025 = phi float [ %4021, %4002 ], [ 0.000000e+00, %3941 ]
  %4026 = phi float [ %4022, %4002 ], [ 0.000000e+00, %3941 ]
  %4027 = phi float [ %4023, %4002 ], [ 0.000000e+00, %3941 ]
  %4028 = fsub fast float %4025, %3625
  %4029 = fsub fast float %4026, %3626
  %4030 = fsub fast float %4027, %3627
  %4031 = fmul fast float %4028, %3838
  %4032 = fmul fast float %4029, %3838
  %4033 = fmul fast float %4030, %3838
  %4034 = fadd fast float %4031, %3625
  %4035 = fadd fast float %4032, %3626
  %4036 = fadd fast float %4033, %3627
  br label %3739

; <label>:4037                                    ; preds = %3739
  br label %4038

; <label>:4038                                    ; preds = %4037, %3555
  %4039 = phi float [ 0.000000e+00, %3555 ], [ %3740, %4037 ]
  %4040 = phi float [ %3499, %3555 ], [ %3741, %4037 ]
  %4041 = phi float [ %3478, %3555 ], [ %3742, %4037 ]
  %4042 = phi float [ 0.000000e+00, %3555 ], [ %3743, %4037 ]
  %4043 = phi float [ 0.000000e+00, %3555 ], [ %3744, %4037 ]
  %4044 = phi float [ %3521, %3555 ], [ %3745, %4037 ]
  %4045 = phi float [ %3523, %3555 ], [ %3746, %4037 ]
  %4046 = phi float [ %3525, %3555 ], [ %3747, %4037 ]
  %4047 = phi float [ %3551, %3555 ], [ %3748, %4037 ]
  %4048 = phi float [ %3552, %3555 ], [ %3749, %4037 ]
  %4049 = phi float [ %3553, %3555 ], [ %3750, %4037 ]
  %4050 = phi float [ %3477, %3555 ], [ %3751, %4037 ]
  %4051 = phi float [ %3476, %3555 ], [ %3752, %4037 ]
  %4052 = phi float [ 0.000000e+00, %3555 ], [ %3753, %4037 ]
  %4053 = phi float [ %3475, %3555 ], [ %3754, %4037 ]
  %4054 = phi float [ %3506, %3555 ], [ %3755, %4037 ]
  %4055 = phi float [ %3507, %3555 ], [ %3756, %4037 ]
  %4056 = phi float [ %3508, %3555 ], [ %3757, %4037 ]
  %4057 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = call float @dx.op.unary.f32(i32 25, float %4057)  ; Rsqrt(value)
  %4059 = fmul fast float %4058, %4047
  %4060 = fmul fast float %4058, %4048
  %4061 = fmul fast float %4058, %4049
  %4062 = fadd fast float %4052, %1258
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4059, float %4060, float %4061, float %4059, float %4060, float %4061)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4065, %4059
  %4067 = fmul fast float %4065, %4060
  %4068 = fmul fast float %4065, %4061
  br label %4069

; <label>:4069                                    ; preds = %4038, %3466
  %4070 = phi float [ %4066, %4038 ], [ %3551, %3466 ]
  %4071 = phi float [ %4067, %4038 ], [ %3552, %3466 ]
  %4072 = phi float [ %4068, %4038 ], [ %3553, %3466 ]
  %4073 = phi float [ %4054, %4038 ], [ %3506, %3466 ]
  %4074 = phi float [ %4055, %4038 ], [ %3507, %3466 ]
  %4075 = phi float [ %4056, %4038 ], [ %3508, %3466 ]
  %4076 = phi float [ %4044, %4038 ], [ %3521, %3466 ]
  %4077 = phi float [ %4045, %4038 ], [ %3523, %3466 ]
  %4078 = phi float [ %4046, %4038 ], [ %3525, %3466 ]
  %4079 = phi float [ %4053, %4038 ], [ %3475, %3466 ]
  %4080 = phi float [ %4063, %4038 ], [ %1258, %3466 ]
  %4081 = phi float [ %4051, %4038 ], [ %3476, %3466 ]
  %4082 = phi float [ %4050, %4038 ], [ %3477, %3466 ]
  %4083 = phi float [ %4043, %4038 ], [ 0.000000e+00, %3466 ]
  %4084 = phi float [ %4042, %4038 ], [ 0.000000e+00, %3466 ]
  %4085 = phi float [ %4039, %4038 ], [ 0.000000e+00, %3466 ]
  %4086 = phi float [ %4040, %4038 ], [ %3499, %3466 ]
  %4087 = phi float [ %4041, %4038 ], [ %3478, %3466 ]
  %4088 = fadd fast float %4079, 0xBFB99999A0000000
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = fmul fast float %4089, 0x3FF1C71C80000000
  %4091 = call float @dx.op.binary.f32(i32 36, float %4079, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4092 = fsub fast float 1.000000e+00, %4090
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4094 = fmul fast float %4093, %4073
  %4095 = fmul fast float %4093, %4074
  %4096 = fmul fast float %4093, %4075
  %4097 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4099 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4100 = fmul fast float %4090, %4073
  %4101 = fmul fast float %4090, %4074
  %4102 = fmul fast float %4090, %4075
  %4103 = fadd fast float %4100, %4091
  %4104 = fadd fast float %4101, %4091
  %4105 = fadd fast float %4102, %4091
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.i32 %4110, 3
  %4112 = and i32 %4111, 8
  %4113 = icmp ne i32 %4112, 0
  %4114 = call float @dx.op.binary.f32(i32 35, float %4097, float %4073)  ; FMax(a,b)
  %4115 = call float @dx.op.binary.f32(i32 35, float %4098, float %4073)  ; FMax(a,b)
  %4116 = call float @dx.op.binary.f32(i32 35, float %4099, float %4073)  ; FMax(a,b)
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4097, float %4098, float %4099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = select i1 %267, float %4073, float %4097
  %4119 = select i1 %267, float %4117, float %4098
  %4120 = select i1 %267, float 1.000000e+00, float %4099
  %4121 = select i1 %4113, float %4114, float %4118
  %4122 = select i1 %4113, float %4115, float %4119
  %4123 = select i1 %4113, float %4116, float %4120
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4128 = fadd fast float %4125, %195
  %4129 = fadd fast float %4126, %196
  %4130 = fadd fast float %4127, %197
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = fsub fast float %4128, %4132
  %4135 = fsub fast float %4129, %4133
  %4136 = fmul fast float %4134, %4134
  %4137 = fmul fast float %4135, %4135
  %4138 = fadd fast float %4136, %4137
  %4139 = call float @dx.op.unary.f32(i32 24, float %4138)  ; Sqrt(value)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4141 = fcmp fast olt float %4139, %4140
  br i1 %4141, label %4142, label %4209

; <label>:4142                                    ; preds = %4069
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4150 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4151 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4153 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4154 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4155 = fadd fast float %4152, %4128
  %4156 = fadd fast float %4153, %4129
  %4157 = fadd fast float %4154, %4130
  %4158 = fmul fast float %4155, %4144
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4146, float %4158)  ; FMad(a,b,c)
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4148, float %4159)  ; FMad(a,b,c)
  %4161 = fmul fast float %4155, %4149
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4150, float %4161)  ; FMad(a,b,c)
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4151, float %4162)  ; FMad(a,b,c)
  %4164 = fsub fast float %4160, %4152
  %4165 = fsub fast float %4163, %4153
  %4166 = fsub fast float %4164, %4132
  %4167 = fadd fast float %4166, %4140
  %4168 = fsub fast float %4165, %4133
  %4169 = fadd fast float %4168, %4140
  %4170 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4171 = fmul fast float %4167, %4170
  %4172 = fmul fast float %4169, %4170
  %4173 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4174 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4175 = fsub fast float 1.000000e+00, %4173
  %4176 = fsub fast float 1.000000e+00, %4174
  %4177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = fcmp fast ugt float %4178, 0.000000e+00
  br i1 %4179, label %4180, label %4483

; <label>:4180                                    ; preds = %4142
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4183 = fmul fast float %4182, %4178
  %4184 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4185 = fadd fast float %4184, %4183
  %4186 = extractvalue %dx.types.CBufRet.f32 %4147, 2
  %4187 = fadd fast float %4185, %4154
  %4188 = fmul fast float %4160, %4148
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4151, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4186, float %4189)  ; FMad(a,b,c)
  %4191 = fsub fast float %4190, %4154
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4194 = fsub fast float %4191, %4193
  %4195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4175, float %4176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = fadd fast float %4200, %4196
  %4204 = fmul fast float %4203, 0x3F847AE140000000
  %4205 = fadd fast float %4201, %4197
  %4206 = fmul fast float %4205, 0x3F847AE140000000
  %4207 = fadd fast float %4202, %4198
  %4208 = fmul fast float %4207, 0x3F847AE140000000
  br label %4483

; <label>:4209                                    ; preds = %4069
  %4210 = and i32 %246, 1
  %4211 = icmp eq i32 %4210, 0
  br i1 %4211, label %4483, label %4212

; <label>:4212                                    ; preds = %4209
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 0
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %4220 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4221 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4223 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4224 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4225 = fadd fast float %4222, %4128
  %4226 = fadd fast float %4223, %4129
  %4227 = fadd fast float %4224, %4130
  %4228 = fmul fast float %4225, %4214
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4216, float %4228)  ; FMad(a,b,c)
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4218, float %4229)  ; FMad(a,b,c)
  %4231 = fmul fast float %4225, %4219
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4220, float %4231)  ; FMad(a,b,c)
  %4233 = call float @dx.op.tertiary.f32(i32 46, float %4227, float %4221, float %4232)  ; FMad(a,b,c)
  %4234 = fsub fast float %4230, %4222
  %4235 = fsub fast float %4233, %4223
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.CBufRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4246 = udiv i32 %4245, %4244
  %4247 = fsub fast float %4234, %4237
  %4248 = fsub fast float %4235, %4238
  %4249 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4248, float 0.000000e+00)  ; FMax(a,b)
  %4251 = call float @dx.op.binary.f32(i32 36, float %4249, float %4239)  ; FMin(a,b)
  %4252 = call float @dx.op.binary.f32(i32 36, float %4250, float %4240)  ; FMin(a,b)
  %4253 = add i32 %4244, -1
  %4254 = add i32 %4246, -1
  %4255 = fmul fast float %4251, %4242
  %4256 = fmul fast float %4252, %4242
  %4257 = fptoui float %4255 to i32
  %4258 = fptoui float %4256 to i32
  %4259 = call i32 @dx.op.binary.i32(i32 40, i32 %4257, i32 %4253)  ; UMin(a,b)
  %4260 = call i32 @dx.op.binary.i32(i32 40, i32 %4258, i32 %4254)  ; UMin(a,b)
  %4261 = mul i32 %4260, %4244
  %4262 = add i32 %4261, %4259
  %4263 = shl i32 %4262, 2
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = icmp eq i32 %4265, -1
  br i1 %4266, label %4483, label %4267

; <label>:4267                                    ; preds = %4212
  %4268 = mul i32 %4265, 148
  %4269 = add i32 %4268, 4
  %4270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = add i32 %4268, 8
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = add i32 %4268, 36
  %4276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = add i32 %4268, 60
  %4279 = add i32 %4268, 92
  %4280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.i32 %4280, 0
  %4282 = add i32 %4268, 116
  %4283 = fsub fast float %4234, %4271
  %4284 = fsub fast float %4235, %4274
  %4285 = fmul fast float %4242, %4283
  %4286 = fmul fast float %4242, %4284
  %4287 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4289 = fsub fast float 1.000000e+00, %4288
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4292 = call float @dx.op.unary.f32(i32 83, float %4287)  ; DerivCoarseX(value)
  %4293 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4294 = call float @dx.op.unary.f32(i32 84, float %4287)  ; DerivCoarseY(value)
  %4295 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4296 = fmul fast float %4292, %4291
  %4297 = fmul fast float %4293, %4291
  %4298 = fmul fast float %4294, %4291
  %4299 = fmul fast float %4295, %4291
  %4300 = call float @dx.op.dot2.f32(i32 54, float %4298, float %4299, float %4298, float %4299)  ; Dot2(ax,ay,bx,by)
  %4301 = call float @dx.op.dot2.f32(i32 54, float %4296, float %4297, float %4296, float %4297)  ; Dot2(ax,ay,bx,by)
  %4302 = call float @dx.op.binary.f32(i32 35, float %4301, float %4300)  ; FMax(a,b)
  %4303 = call float @dx.op.unary.f32(i32 23, float %4302)  ; Log(value)
  %4304 = fmul fast float %4303, 5.000000e-01
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4307 = fadd fast float %4306, %4304
  %4308 = call float @dx.op.binary.f32(i32 35, float %4307, float 0.000000e+00)  ; FMax(a,b)
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4311 = fadd fast float %4310, %4308
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4314 = fadd fast float %4311, %4313
  %4315 = add i32 %4281, 0
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4315, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4316, i32 0)  ; GetDimensions(handle,mipLevel)
  %4318 = extractvalue %dx.types.Dimensions %4317, 0
  %4319 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4318)  ; FirstbitLo(value)
  %4320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.i32 %4320, 1
  %4322 = sub nsw i32 %4321, %4319
  %4323 = sitofp i32 %4322 to float
  %4324 = fsub fast float %4314, %4323
  %4325 = call float @dx.op.binary.f32(i32 35, float %4324, float 0.000000e+00)  ; FMax(a,b)
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4316, %dx.types.Handle %48, float %4287, float %4289, float %4277, float undef, i32 0, i32 0, i32 undef, float %4325)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = fcmp ule float %4327, 0x3FE0101020000000
  %4329 = extractvalue %dx.types.CBufRet.i32 %4320, 0
  %4330 = and i32 %4329, 128
  %4331 = icmp ne i32 %4330, 0
  %4332 = and i1 %4328, %4331
  br i1 %4332, label %4483, label %4333

; <label>:4333                                    ; preds = %4267
  %4334 = add i32 %4268, 20
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = add i32 %4268, 24
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4268, 40
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = add i32 %4268, 96
  %4344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.i32 %4344, 0
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 2
  %4348 = fmul fast float %4347, %4287
  %4349 = fmul fast float %4347, %4289
  %4350 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4351 = fadd fast float %4348, %4350
  %4352 = fadd fast float %4349, %4350
  %4353 = add i32 %4345, 0
  %4354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4353, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4355 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4354, i32 0)  ; GetDimensions(handle,mipLevel)
  %4356 = extractvalue %dx.types.Dimensions %4355, 0
  %4357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4356)  ; FirstbitLo(value)
  %4358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.i32 %4358, 1
  %4360 = sub nsw i32 %4359, %4357
  %4361 = sitofp i32 %4360 to float
  %4362 = fsub fast float %4311, %4361
  %4363 = call float @dx.op.binary.f32(i32 35, float %4362, float 0.000000e+00)  ; FMax(a,b)
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4354, %dx.types.Handle %48, float %4351, float %4352, float %4342, float undef, i32 0, i32 0, i32 undef, float %4363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = fmul fast float %4365, %4336
  %4367 = fadd fast float %4366, %4339
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.CBufRet.f32 %4368, 2
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = extractvalue %dx.types.CBufRet.f32 %4368, 3
  %4377 = fadd fast float %4373, %4234
  %4378 = fadd fast float %4375, %4235
  %4379 = fadd fast float %4367, %4376
  %4380 = fmul fast float %4377, %4369
  %4381 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4370, float %4380)  ; FMad(a,b,c)
  %4382 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4371, float %4381)  ; FMad(a,b,c)
  %4383 = fsub fast float %4382, %4376
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4386 = fsub fast float %4383, %4385
  %4387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.i32 %4387, 0
  %4389 = call i32 @dx.op.binary.i32(i32 40, i32 %4265, i32 %4388)  ; UMin(a,b)
  %4390 = mul i32 %4389, 36
  %4391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.i32 %4391, 0
  %4393 = add i32 %4390, 4
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = fmul fast float %4395, %4287
  %4397 = fmul fast float %4395, %4289
  %4398 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4399 = fadd fast float %4396, %4398
  %4400 = fadd fast float %4397, %4398
  %4401 = icmp eq i32 %4392, 0
  br i1 %4401, label %4470, label %4402

; <label>:4402                                    ; preds = %4333
  br label %4403

; <label>:4403                                    ; preds = %4460, %4402
  %4404 = phi float [ %4461, %4460 ], [ 0.000000e+00, %4402 ]
  %4405 = phi float [ %4462, %4460 ], [ 0.000000e+00, %4402 ]
  %4406 = phi float [ %4463, %4460 ], [ 0.000000e+00, %4402 ]
  %4407 = phi float [ %4464, %4460 ], [ 0.000000e+00, %4402 ]
  %4408 = phi float [ %4465, %4460 ], [ 0.000000e+00, %4402 ]
  %4409 = phi float [ %4466, %4460 ], [ 0.000000e+00, %4402 ]
  %4410 = phi i32 [ %4467, %4460 ], [ 0, %4402 ]
  %4411 = shl i32 %4410, 2
  %4412 = add i32 %4278, %4411
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = add i32 %4282, %4411
  %4416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.i32 %4416, 0
  %4418 = add i32 %4417, 0
  %4419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4419, i32 0)  ; GetDimensions(handle,mipLevel)
  %4421 = extractvalue %dx.types.Dimensions %4420, 0
  %4422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4421)  ; FirstbitLo(value)
  %4423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.i32 %4423, 1
  %4425 = sub nsw i32 %4424, %4422
  %4426 = sitofp i32 %4425 to float
  %4427 = fsub fast float %4311, %4426
  %4428 = call float @dx.op.binary.f32(i32 35, float %4427, float 0.000000e+00)  ; FMax(a,b)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4419, %dx.types.Handle %48, float %4399, float %4400, float %4414, float undef, i32 0, i32 0, i32 undef, float %4428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fcmp fast ogt float %4430, 0.000000e+00
  br i1 %4431, label %4432, label %4460

; <label>:4432                                    ; preds = %4403
  %4433 = add i32 %4393, %4411
  %4434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.i32 %4434, 0
  %4436 = and i32 %4435, 32767
  %4437 = mul nuw nsw i32 %4436, 928
  %4438 = add nuw nsw i32 %4437, 48
  %4439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.ResRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.ResRet.f32 %4439, 2
  %4443 = add nuw nsw i32 %4437, 60
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.ResRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4444, 2
  %4448 = fmul fast float %4440, %4430
  %4449 = fmul fast float %4441, %4430
  %4450 = fmul fast float %4442, %4430
  %4451 = fadd fast float %4448, %4404
  %4452 = fadd fast float %4449, %4405
  %4453 = fadd fast float %4450, %4406
  %4454 = fmul fast float %4445, %4430
  %4455 = fmul fast float %4446, %4430
  %4456 = fmul fast float %4447, %4430
  %4457 = fadd fast float %4454, %4407
  %4458 = fadd fast float %4455, %4408
  %4459 = fadd fast float %4456, %4409
  br label %4460

; <label>:4460                                    ; preds = %4432, %4403
  %4461 = phi float [ %4451, %4432 ], [ %4404, %4403 ]
  %4462 = phi float [ %4452, %4432 ], [ %4405, %4403 ]
  %4463 = phi float [ %4453, %4432 ], [ %4406, %4403 ]
  %4464 = phi float [ %4457, %4432 ], [ %4407, %4403 ]
  %4465 = phi float [ %4458, %4432 ], [ %4408, %4403 ]
  %4466 = phi float [ %4459, %4432 ], [ %4409, %4403 ]
  %4467 = add nuw i32 %4410, 1
  %4468 = icmp eq i32 %4467, %4392
  br i1 %4468, label %4469, label %4403

; <label>:4469                                    ; preds = %4460
  br label %4470

; <label>:4470                                    ; preds = %4469, %4333
  %4471 = phi float [ 0.000000e+00, %4333 ], [ %4461, %4469 ]
  %4472 = phi float [ 0.000000e+00, %4333 ], [ %4462, %4469 ]
  %4473 = phi float [ 0.000000e+00, %4333 ], [ %4463, %4469 ]
  %4474 = phi float [ 0.000000e+00, %4333 ], [ %4464, %4469 ]
  %4475 = phi float [ 0.000000e+00, %4333 ], [ %4465, %4469 ]
  %4476 = phi float [ 0.000000e+00, %4333 ], [ %4466, %4469 ]
  %4477 = fadd fast float %4474, %4471
  %4478 = fmul fast float %4477, 0x3F847AE140000000
  %4479 = fadd fast float %4475, %4472
  %4480 = fmul fast float %4479, 0x3F847AE140000000
  %4481 = fadd fast float %4476, %4473
  %4482 = fmul fast float %4481, 0x3F847AE140000000
  br label %4483

; <label>:4483                                    ; preds = %4470, %4267, %4212, %4209, %4180, %4142
  %4484 = phi float [ %4194, %4180 ], [ -1.310720e+05, %4142 ], [ %4386, %4470 ], [ -1.310720e+05, %4212 ], [ -1.310720e+05, %4267 ], [ -1.310720e+05, %4209 ]
  %4485 = phi float [ %4204, %4180 ], [ 0.000000e+00, %4142 ], [ %4478, %4470 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4209 ]
  %4486 = phi float [ %4206, %4180 ], [ 0.000000e+00, %4142 ], [ %4480, %4470 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4209 ]
  %4487 = phi float [ %4208, %4180 ], [ 0.000000e+00, %4142 ], [ %4482, %4470 ], [ 0.000000e+00, %4212 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4209 ]
  %4488 = phi i1 [ true, %4180 ], [ false, %4142 ], [ true, %4470 ], [ false, %4212 ], [ false, %4267 ], [ false, %4209 ]
  %4489 = and i32 %246, 3
  %4490 = icmp eq i32 %4489, 1
  %4491 = select i1 %4490, float 1.000000e+00, float 0.000000e+00
  %4492 = fsub fast float %4484, %197
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = select i1 %4488, float %4493, float 1.000000e+00
  %4495 = fmul fast float %4494, %4491
  %4496 = icmp eq i32 %4489, 3
  %4497 = select i1 %4496, float 1.000000e+00, float %4495
  %4498 = call float @dx.op.binary.f32(i32 35, float %4085, float %4497)  ; FMax(a,b)
  %4499 = fcmp fast olt float %4497, 1.000000e+00
  %4500 = fcmp uge float %73, 0.000000e+00
  %4501 = and i1 %4500, %4499
  br i1 %4501, label %4502, label %4512

; <label>:4502                                    ; preds = %4483
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = fadd fast float %4504, %4498
  %4508 = fcmp ule float %72, 0.000000e+00
  %4509 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = select i1 %4508, float %4509, float 1.000000e+00
  %4511 = fmul fast float %4510, %4506
  br label %4512

; <label>:4512                                    ; preds = %4502, %4483
  %4513 = phi float [ %4507, %4502 ], [ %4498, %4483 ]
  %4514 = phi float [ %4505, %4502 ], [ 0.000000e+00, %4483 ]
  %4515 = phi float [ %4511, %4502 ], [ 0.000000e+00, %4483 ]
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = fcmp fast une float %4517, 0.000000e+00
  %4520 = fcmp fast une float %4518, 0.000000e+00
  %4521 = or i1 %4519, %4520
  br i1 %4521, label %4522, label %5081

; <label>:4522                                    ; preds = %4512
  br i1 %4519, label %4523, label %4796

; <label>:4523                                    ; preds = %4522
  %4524 = call float @dx.op.unary.f32(i32 23, float %4082)  ; Log(value)
  %4525 = fmul fast float %4524, 4.000000e+00
  %4526 = call float @dx.op.unary.f32(i32 21, float %4525)  ; Exp(value)
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = fmul fast float %4528, %60
  %4530 = fmul fast float %4528, %61
  %4531 = fmul fast float %4528, %62
  %4532 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4533 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4534 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4535 = call float @dx.op.unary.f32(i32 23, float %4532)  ; Log(value)
  %4536 = call float @dx.op.unary.f32(i32 23, float %4533)  ; Log(value)
  %4537 = call float @dx.op.unary.f32(i32 23, float %4534)  ; Log(value)
  %4538 = fmul fast float %4535, 4.000000e+00
  %4539 = fmul fast float %4536, 4.000000e+00
  %4540 = fmul fast float %4537, 4.000000e+00
  %4541 = call float @dx.op.unary.f32(i32 21, float %4538)  ; Exp(value)
  %4542 = call float @dx.op.unary.f32(i32 21, float %4539)  ; Exp(value)
  %4543 = call float @dx.op.unary.f32(i32 21, float %4540)  ; Exp(value)
  %4544 = fadd fast float %4542, %4541
  %4545 = fadd fast float %4544, %4543
  %4546 = fdiv fast float 1.000000e+00, %4545
  %4547 = fmul fast float %4546, %4541
  %4548 = fcmp fast ogt float %69, 0.000000e+00
  %4549 = fcmp fast ogt float %70, 0.000000e+00
  %4550 = fcmp fast ogt float %71, 0.000000e+00
  %4551 = fcmp fast olt float %69, 0.000000e+00
  %4552 = fcmp fast olt float %70, 0.000000e+00
  %4553 = fcmp fast olt float %71, 0.000000e+00
  %4554 = zext i1 %4548 to i32
  %4555 = zext i1 %4549 to i32
  %4556 = zext i1 %4550 to i32
  %4557 = zext i1 %4551 to i32
  %4558 = zext i1 %4552 to i32
  %4559 = zext i1 %4553 to i32
  %4560 = sub nsw i32 %4554, %4557
  %4561 = sub nsw i32 %4555, %4558
  %4562 = sub nsw i32 %4556, %4559
  %4563 = call float @dx.op.unary.f32(i32 83, float %4529)  ; DerivCoarseX(value)
  %4564 = call float @dx.op.unary.f32(i32 83, float %4530)  ; DerivCoarseX(value)
  %4565 = call float @dx.op.unary.f32(i32 83, float %4531)  ; DerivCoarseX(value)
  %4566 = call float @dx.op.unary.f32(i32 84, float %4529)  ; DerivCoarseY(value)
  %4567 = call float @dx.op.unary.f32(i32 84, float %4530)  ; DerivCoarseY(value)
  %4568 = call float @dx.op.unary.f32(i32 84, float %4531)  ; DerivCoarseY(value)
  %4569 = fcmp fast ole float %278, %4547
  %4570 = fmul fast float %4546, %4544
  %4571 = fcmp fast ole float %278, %4570
  %4572 = select i1 %4571, float %4531, float %4529
  %4573 = select i1 %4571, float %4529, float %4530
  %4574 = select i1 %4569, float %4530, float %4572
  %4575 = select i1 %4569, float %4531, float %4573
  %4576 = select i1 %4571, float %4565, float %4563
  %4577 = select i1 %4571, float %4563, float %4564
  %4578 = select i1 %4569, float %4564, float %4576
  %4579 = select i1 %4569, float %4565, float %4577
  %4580 = select i1 %4571, float %4568, float %4566
  %4581 = select i1 %4571, float %4566, float %4567
  %4582 = select i1 %4569, float %4567, float %4580
  %4583 = select i1 %4569, float %4568, float %4581
  %4584 = call float @dx.op.unary.f32(i32 27, float %4574)  ; Round_ni(value)
  %4585 = call float @dx.op.unary.f32(i32 27, float %4575)  ; Round_ni(value)
  %4586 = fptosi float %4584 to i32
  %4587 = fptosi float %4585 to i32
  %4588 = xor i32 %4587, %4586
  %4589 = sitofp i32 %4588 to float
  %4590 = fptosi float %4589 to i32
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, 0x3FE3C6EF40000000
  %4593 = frem fast float %4584, 2.560000e+02
  %4594 = frem fast float %4585, 2.560000e+02
  %4595 = fptoui float %4593 to i32
  %4596 = fptoui float %4594 to i32
  %4597 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4595, i32 %4596, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = fadd fast float %4598, %4592
  %4602 = fadd fast float %4599, %4592
  %4603 = fadd fast float %4600, %4592
  %4604 = call float @dx.op.unary.f32(i32 22, float %4601)  ; Frc(value)
  %4605 = call float @dx.op.unary.f32(i32 22, float %4602)  ; Frc(value)
  %4606 = call float @dx.op.unary.f32(i32 22, float %4603)  ; Frc(value)
  %4607 = fmul fast float %4606, 0x401921FB60000000
  %4608 = call float @dx.op.unary.f32(i32 13, float %4607)  ; Sin(value)
  %4609 = call float @dx.op.unary.f32(i32 12, float %4607)  ; Cos(value)
  %4610 = fsub fast float -0.000000e+00, %4609
  %4611 = fmul fast float %4609, %4574
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4575, float %4611)  ; FMad(a,b,c)
  %4613 = fmul fast float %4608, %4574
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4575, float %4613)  ; FMad(a,b,c)
  %4615 = fadd fast float %4612, %4604
  %4616 = fadd fast float %4614, %4605
  %4617 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4618 = bitcast float %4617 to i32
  %4619 = icmp eq i32 %4618, 0
  br i1 %4619, label %4658, label %4620

; <label>:4620                                    ; preds = %4523
  %4621 = add i32 %4618, 0
  %4622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4623 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4622, %dx.types.Handle %105, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4628 = fsub fast float 1.000000e+00, %4517
  %4629 = call float @dx.op.binary.f32(i32 35, float %4628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4630 = bitcast float %4517 to i32
  %4631 = sitofp i32 %4630 to float
  %4632 = fadd fast float %4631, 0xC1CFBF8940000000
  %4633 = fmul fast float %4627, %4632
  %4634 = fadd fast float %4633, 0x41CFBF8940000000
  %4635 = fptosi float %4634 to i32
  %4636 = bitcast i32 %4635 to float
  %4637 = bitcast float %4629 to i32
  %4638 = sitofp i32 %4637 to float
  %4639 = fadd fast float %4638, 0xC1CFBF8940000000
  %4640 = fmul fast float %4639, %4627
  %4641 = fadd fast float %4640, 0x41CFBF8940000000
  %4642 = fptosi float %4641 to i32
  %4643 = bitcast i32 %4642 to float
  %4644 = fmul fast float %4636, %4626
  %4645 = fmul fast float %4643, %4626
  %4646 = fsub fast float %4629, %4644
  %4647 = fadd fast float %4645, %4629
  %4648 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4650 = fsub fast float %4624, %4648
  %4651 = fsub fast float %4649, %4648
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, %4650
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fcmp fast olt float %4656, 0x3F70101020000000
  br i1 %4657, label %4796, label %4658

; <label>:4658                                    ; preds = %4620, %4523
  %4659 = phi float [ %4656, %4620 ], [ %4517, %4523 ]
  %4660 = fmul fast float %4659, %4526
  %4661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.i32 %4661, 1
  %4663 = extractvalue %dx.types.CBufRet.i32 %4661, 0
  %4664 = add i32 %4663, 0
  %4665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4665, %dx.types.Handle %104, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.ResRet.f32 %4666, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4666, 2
  %4670 = extractvalue %dx.types.ResRet.f32 %4666, 3
  %4671 = and i32 %4662, 255
  %4672 = uitofp i32 %4671 to float
  %4673 = lshr i32 %4662, 8
  %4674 = and i32 %4673, 255
  %4675 = uitofp i32 %4674 to float
  %4676 = fmul fast float %4670, %4672
  %4677 = fadd fast float %4676, %4675
  %4678 = fmul fast float %4677, 0x3F70101000000000
  %4679 = fadd fast float %4678, 0xBFB99999A0000000
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fmul fast float %4680, 0x3FF1C71C80000000
  %4682 = call float @dx.op.binary.f32(i32 36, float %4678, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4683 = fsub fast float 1.000000e+00, %4681
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, %4667
  %4686 = fmul fast float %4684, %4668
  %4687 = fmul fast float %4684, %4669
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = fmul fast float %4681, %4667
  %4692 = fmul fast float %4681, %4668
  %4693 = fmul fast float %4681, %4669
  %4694 = fadd fast float %4691, %4682
  %4695 = fadd fast float %4692, %4682
  %4696 = fadd fast float %4693, %4682
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.i32 %4700, 3
  %4702 = extractvalue %dx.types.CBufRet.i32 %4700, 2
  %4703 = add i32 %4702, 0
  %4704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4704, %dx.types.Handle %104, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4709 = extractvalue %dx.types.ResRet.f32 %4705, 3
  %4710 = and i32 %4701, 255
  %4711 = uitofp i32 %4710 to float
  %4712 = lshr i32 %4701, 8
  %4713 = and i32 %4712, 255
  %4714 = uitofp i32 %4713 to float
  %4715 = lshr i32 %4701, 16
  %4716 = and i32 %4715, 255
  %4717 = uitofp i32 %4716 to float
  %4718 = fmul fast float %4717, 0x3F70101000000000
  %4719 = fmul fast float %4706, %4711
  %4720 = fadd fast float %4719, %4714
  %4721 = fmul fast float %4720, 0x3F70101000000000
  %4722 = fadd fast float %4707, -5.000000e-01
  %4723 = fadd fast float %4709, -5.000000e-01
  %4724 = fmul fast float %4722, %4718
  %4725 = fmul fast float %4723, %4718
  %4726 = fadd fast float %4724, 5.000000e-01
  %4727 = fadd fast float %4725, 5.000000e-01
  %4728 = fmul fast float %4726, 2.000000e+00
  %4729 = fadd fast float %4728, -1.000000e+00
  %4730 = fmul fast float %4727, 2.000000e+00
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = fadd fast float %4729, %4731
  %4733 = fmul fast float %4732, 5.000000e-01
  %4734 = fsub fast float %4729, %4731
  %4735 = fmul fast float %4734, 5.000000e-01
  %4736 = call float @dx.op.unary.f32(i32 6, float %4733)  ; FAbs(value)
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4739 = fsub fast float %4737, %4738
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4735, float %4739, float %4733, float %4735, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4733, %4741
  %4743 = fmul fast float %4735, %4741
  %4744 = select i1 %4571, i32 %4561, i32 %4562
  %4745 = select i1 %4569, i32 %4560, i32 %4744
  %4746 = sitofp i32 %4745 to float
  %4747 = fmul fast float %4739, %4746
  %4748 = fmul fast float %4747, %4741
  %4749 = select i1 %4571, float %4748, float %4743
  %4750 = select i1 %4571, float %4743, float %4748
  %4751 = select i1 %4569, float %4748, float %4742
  %4752 = select i1 %4569, float %4743, float %4749
  %4753 = select i1 %4569, float %4742, float %4750
  %4754 = fsub fast float %4688, %4121
  %4755 = fsub fast float %4689, %4122
  %4756 = fsub fast float %4690, %4123
  %4757 = fmul fast float %4754, %4660
  %4758 = fmul fast float %4755, %4660
  %4759 = fmul fast float %4756, %4660
  %4760 = fadd fast float %4757, %4121
  %4761 = fadd fast float %4758, %4122
  %4762 = fadd fast float %4759, %4123
  %4763 = fsub fast float %4697, %4106
  %4764 = fsub fast float %4698, %4107
  %4765 = fsub fast float %4699, %4108
  %4766 = fmul fast float %4763, %4660
  %4767 = fmul fast float %4764, %4660
  %4768 = fmul fast float %4765, %4660
  %4769 = fadd fast float %4766, %4106
  %4770 = fadd fast float %4767, %4107
  %4771 = fadd fast float %4768, %4108
  %4772 = fadd fast float %4751, %4070
  %4773 = fadd fast float %4752, %4071
  %4774 = fadd fast float %4753, %4072
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4773, float %4774, float %4772, float %4773, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  %4777 = fmul fast float %4772, %4776
  %4778 = fmul fast float %4773, %4776
  %4779 = fmul fast float %4774, %4776
  %4780 = fsub fast float %4777, %4070
  %4781 = fsub fast float %4778, %4071
  %4782 = fsub fast float %4779, %4072
  %4783 = fmul fast float %4780, %4660
  %4784 = fmul fast float %4781, %4660
  %4785 = fmul fast float %4782, %4660
  %4786 = fadd fast float %4783, %4070
  %4787 = fadd fast float %4784, %4071
  %4788 = fadd fast float %4785, %4072
  %4789 = call float @dx.op.binary.f32(i32 36, float %4082, float %4708)  ; FMin(a,b)
  %4790 = fsub fast float %4789, %4082
  %4791 = fmul fast float %4790, %4660
  %4792 = fadd fast float %4791, %4082
  %4793 = fsub fast float %4721, %4109
  %4794 = fmul fast float %4793, %4660
  %4795 = fadd fast float %4794, %4109
  br label %4796

; <label>:4796                                    ; preds = %4658, %4620, %4522
  %4797 = phi float [ %4786, %4658 ], [ %4070, %4620 ], [ %4070, %4522 ]
  %4798 = phi float [ %4787, %4658 ], [ %4071, %4620 ], [ %4071, %4522 ]
  %4799 = phi float [ %4788, %4658 ], [ %4072, %4620 ], [ %4072, %4522 ]
  %4800 = phi float [ %4760, %4658 ], [ %4121, %4620 ], [ %4121, %4522 ]
  %4801 = phi float [ %4761, %4658 ], [ %4122, %4620 ], [ %4122, %4522 ]
  %4802 = phi float [ %4762, %4658 ], [ %4123, %4620 ], [ %4123, %4522 ]
  %4803 = phi float [ %4769, %4658 ], [ %4106, %4620 ], [ %4106, %4522 ]
  %4804 = phi float [ %4770, %4658 ], [ %4107, %4620 ], [ %4107, %4522 ]
  %4805 = phi float [ %4771, %4658 ], [ %4108, %4620 ], [ %4108, %4522 ]
  %4806 = phi float [ %4795, %4658 ], [ %4109, %4620 ], [ %4109, %4522 ]
  %4807 = phi float [ %4792, %4658 ], [ %4082, %4620 ], [ %4082, %4522 ]
  br i1 %4520, label %4808, label %5081

; <label>:4808                                    ; preds = %4796
  %4809 = call float @dx.op.unary.f32(i32 23, float %4807)  ; Log(value)
  %4810 = fmul fast float %4809, 4.000000e+00
  %4811 = call float @dx.op.unary.f32(i32 21, float %4810)  ; Exp(value)
  %4812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.f32 %4812, 0
  %4814 = fmul fast float %4813, %60
  %4815 = fmul fast float %4813, %61
  %4816 = fmul fast float %4813, %62
  %4817 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4818 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4819 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4820 = call float @dx.op.unary.f32(i32 23, float %4817)  ; Log(value)
  %4821 = call float @dx.op.unary.f32(i32 23, float %4818)  ; Log(value)
  %4822 = call float @dx.op.unary.f32(i32 23, float %4819)  ; Log(value)
  %4823 = fmul fast float %4820, 4.000000e+00
  %4824 = fmul fast float %4821, 4.000000e+00
  %4825 = fmul fast float %4822, 4.000000e+00
  %4826 = call float @dx.op.unary.f32(i32 21, float %4823)  ; Exp(value)
  %4827 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4828 = call float @dx.op.unary.f32(i32 21, float %4825)  ; Exp(value)
  %4829 = fadd fast float %4827, %4826
  %4830 = fadd fast float %4829, %4828
  %4831 = fdiv fast float 1.000000e+00, %4830
  %4832 = fmul fast float %4831, %4826
  %4833 = fcmp fast ogt float %69, 0.000000e+00
  %4834 = fcmp fast ogt float %70, 0.000000e+00
  %4835 = fcmp fast ogt float %71, 0.000000e+00
  %4836 = fcmp fast olt float %69, 0.000000e+00
  %4837 = fcmp fast olt float %70, 0.000000e+00
  %4838 = fcmp fast olt float %71, 0.000000e+00
  %4839 = zext i1 %4833 to i32
  %4840 = zext i1 %4834 to i32
  %4841 = zext i1 %4835 to i32
  %4842 = zext i1 %4836 to i32
  %4843 = zext i1 %4837 to i32
  %4844 = zext i1 %4838 to i32
  %4845 = sub nsw i32 %4839, %4842
  %4846 = sub nsw i32 %4840, %4843
  %4847 = sub nsw i32 %4841, %4844
  %4848 = call float @dx.op.unary.f32(i32 83, float %4814)  ; DerivCoarseX(value)
  %4849 = call float @dx.op.unary.f32(i32 83, float %4815)  ; DerivCoarseX(value)
  %4850 = call float @dx.op.unary.f32(i32 83, float %4816)  ; DerivCoarseX(value)
  %4851 = call float @dx.op.unary.f32(i32 84, float %4814)  ; DerivCoarseY(value)
  %4852 = call float @dx.op.unary.f32(i32 84, float %4815)  ; DerivCoarseY(value)
  %4853 = call float @dx.op.unary.f32(i32 84, float %4816)  ; DerivCoarseY(value)
  %4854 = fcmp fast ole float %278, %4832
  %4855 = fmul fast float %4831, %4829
  %4856 = fcmp fast ole float %278, %4855
  %4857 = select i1 %4856, float %4816, float %4814
  %4858 = select i1 %4856, float %4814, float %4815
  %4859 = select i1 %4854, float %4815, float %4857
  %4860 = select i1 %4854, float %4816, float %4858
  %4861 = select i1 %4856, float %4850, float %4848
  %4862 = select i1 %4856, float %4848, float %4849
  %4863 = select i1 %4854, float %4849, float %4861
  %4864 = select i1 %4854, float %4850, float %4862
  %4865 = select i1 %4856, float %4853, float %4851
  %4866 = select i1 %4856, float %4851, float %4852
  %4867 = select i1 %4854, float %4852, float %4865
  %4868 = select i1 %4854, float %4853, float %4866
  %4869 = call float @dx.op.unary.f32(i32 27, float %4859)  ; Round_ni(value)
  %4870 = call float @dx.op.unary.f32(i32 27, float %4860)  ; Round_ni(value)
  %4871 = fptosi float %4869 to i32
  %4872 = fptosi float %4870 to i32
  %4873 = xor i32 %4872, %4871
  %4874 = sitofp i32 %4873 to float
  %4875 = fptosi float %4874 to i32
  %4876 = sitofp i32 %4875 to float
  %4877 = fmul fast float %4876, 0x3FE3C6EF40000000
  %4878 = frem fast float %4869, 2.560000e+02
  %4879 = frem fast float %4870, 2.560000e+02
  %4880 = fptoui float %4878 to i32
  %4881 = fptoui float %4879 to i32
  %4882 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4880, i32 %4881, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = fadd fast float %4883, %4877
  %4887 = fadd fast float %4884, %4877
  %4888 = fadd fast float %4885, %4877
  %4889 = call float @dx.op.unary.f32(i32 22, float %4886)  ; Frc(value)
  %4890 = call float @dx.op.unary.f32(i32 22, float %4887)  ; Frc(value)
  %4891 = call float @dx.op.unary.f32(i32 22, float %4888)  ; Frc(value)
  %4892 = fmul fast float %4891, 0x401921FB60000000
  %4893 = call float @dx.op.unary.f32(i32 13, float %4892)  ; Sin(value)
  %4894 = call float @dx.op.unary.f32(i32 12, float %4892)  ; Cos(value)
  %4895 = fsub fast float -0.000000e+00, %4894
  %4896 = fmul fast float %4894, %4859
  %4897 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4860, float %4896)  ; FMad(a,b,c)
  %4898 = fmul fast float %4893, %4859
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4860, float %4898)  ; FMad(a,b,c)
  %4900 = fadd fast float %4897, %4889
  %4901 = fadd fast float %4899, %4890
  %4902 = extractvalue %dx.types.CBufRet.f32 %4812, 3
  %4903 = bitcast float %4902 to i32
  %4904 = icmp eq i32 %4903, 0
  br i1 %4904, label %4943, label %4905

; <label>:4905                                    ; preds = %4808
  %4906 = add i32 %4903, 0
  %4907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4908 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4907, %dx.types.Handle %105, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4909 = extractvalue %dx.types.ResRet.f32 %4908, 0
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4913 = fsub fast float 1.000000e+00, %4518
  %4914 = call float @dx.op.binary.f32(i32 35, float %4913, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4915 = bitcast float %4518 to i32
  %4916 = sitofp i32 %4915 to float
  %4917 = fadd fast float %4916, 0xC1CFBF8940000000
  %4918 = fmul fast float %4912, %4917
  %4919 = fadd fast float %4918, 0x41CFBF8940000000
  %4920 = fptosi float %4919 to i32
  %4921 = bitcast i32 %4920 to float
  %4922 = bitcast float %4914 to i32
  %4923 = sitofp i32 %4922 to float
  %4924 = fadd fast float %4923, 0xC1CFBF8940000000
  %4925 = fmul fast float %4924, %4912
  %4926 = fadd fast float %4925, 0x41CFBF8940000000
  %4927 = fptosi float %4926 to i32
  %4928 = bitcast i32 %4927 to float
  %4929 = fmul fast float %4921, %4911
  %4930 = fmul fast float %4928, %4911
  %4931 = fsub fast float %4914, %4929
  %4932 = fadd fast float %4930, %4914
  %4933 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4935 = fsub fast float %4909, %4933
  %4936 = fsub fast float %4934, %4933
  %4937 = bitcast float %4936 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = fmul fast float %4939, %4935
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fcmp fast olt float %4941, 0x3F70101020000000
  br i1 %4942, label %5081, label %4943

; <label>:4943                                    ; preds = %4905, %4808
  %4944 = phi float [ %4941, %4905 ], [ %4518, %4808 ]
  %4945 = fmul fast float %4944, %4811
  %4946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.i32 %4946, 1
  %4948 = extractvalue %dx.types.CBufRet.i32 %4946, 0
  %4949 = add i32 %4948, 0
  %4950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4951 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4950, %dx.types.Handle %104, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.ResRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.ResRet.f32 %4951, 2
  %4955 = extractvalue %dx.types.ResRet.f32 %4951, 3
  %4956 = and i32 %4947, 255
  %4957 = uitofp i32 %4956 to float
  %4958 = lshr i32 %4947, 8
  %4959 = and i32 %4958, 255
  %4960 = uitofp i32 %4959 to float
  %4961 = fmul fast float %4955, %4957
  %4962 = fadd fast float %4961, %4960
  %4963 = fmul fast float %4962, 0x3F70101000000000
  %4964 = fadd fast float %4963, 0xBFB99999A0000000
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = fmul fast float %4965, 0x3FF1C71C80000000
  %4967 = call float @dx.op.binary.f32(i32 36, float %4963, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4968 = fsub fast float 1.000000e+00, %4966
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, %4952
  %4971 = fmul fast float %4969, %4953
  %4972 = fmul fast float %4969, %4954
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = fmul fast float %4966, %4952
  %4977 = fmul fast float %4966, %4953
  %4978 = fmul fast float %4966, %4954
  %4979 = fadd fast float %4976, %4967
  %4980 = fadd fast float %4977, %4967
  %4981 = fadd fast float %4978, %4967
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 3
  %4987 = extractvalue %dx.types.CBufRet.i32 %4985, 2
  %4988 = add i32 %4987, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %104, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4990, 3
  %4995 = and i32 %4986, 255
  %4996 = uitofp i32 %4995 to float
  %4997 = lshr i32 %4986, 8
  %4998 = and i32 %4997, 255
  %4999 = uitofp i32 %4998 to float
  %5000 = lshr i32 %4986, 16
  %5001 = and i32 %5000, 255
  %5002 = uitofp i32 %5001 to float
  %5003 = fmul fast float %5002, 0x3F70101000000000
  %5004 = fmul fast float %4991, %4996
  %5005 = fadd fast float %5004, %4999
  %5006 = fmul fast float %5005, 0x3F70101000000000
  %5007 = fadd fast float %4992, -5.000000e-01
  %5008 = fadd fast float %4994, -5.000000e-01
  %5009 = fmul fast float %5007, %5003
  %5010 = fmul fast float %5008, %5003
  %5011 = fadd fast float %5009, 5.000000e-01
  %5012 = fadd fast float %5010, 5.000000e-01
  %5013 = fmul fast float %5011, 2.000000e+00
  %5014 = fadd fast float %5013, -1.000000e+00
  %5015 = fmul fast float %5012, 2.000000e+00
  %5016 = fadd fast float %5015, -1.000000e+00
  %5017 = fadd fast float %5014, %5016
  %5018 = fmul fast float %5017, 5.000000e-01
  %5019 = fsub fast float %5014, %5016
  %5020 = fmul fast float %5019, 5.000000e-01
  %5021 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5024 = fsub fast float %5022, %5023
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5020, float %5024, float %5018, float %5020, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 25, float %5025)  ; Rsqrt(value)
  %5027 = fmul fast float %5018, %5026
  %5028 = fmul fast float %5020, %5026
  %5029 = select i1 %4856, i32 %4846, i32 %4847
  %5030 = select i1 %4854, i32 %4845, i32 %5029
  %5031 = sitofp i32 %5030 to float
  %5032 = fmul fast float %5024, %5031
  %5033 = fmul fast float %5032, %5026
  %5034 = select i1 %4856, float %5033, float %5028
  %5035 = select i1 %4856, float %5028, float %5033
  %5036 = select i1 %4854, float %5033, float %5027
  %5037 = select i1 %4854, float %5028, float %5034
  %5038 = select i1 %4854, float %5027, float %5035
  %5039 = fsub fast float %4973, %4800
  %5040 = fsub fast float %4974, %4801
  %5041 = fsub fast float %4975, %4802
  %5042 = fmul fast float %5039, %4945
  %5043 = fmul fast float %5040, %4945
  %5044 = fmul fast float %5041, %4945
  %5045 = fadd fast float %5042, %4800
  %5046 = fadd fast float %5043, %4801
  %5047 = fadd fast float %5044, %4802
  %5048 = fsub fast float %4982, %4803
  %5049 = fsub fast float %4983, %4804
  %5050 = fsub fast float %4984, %4805
  %5051 = fmul fast float %5048, %4945
  %5052 = fmul fast float %5049, %4945
  %5053 = fmul fast float %5050, %4945
  %5054 = fadd fast float %5051, %4803
  %5055 = fadd fast float %5052, %4804
  %5056 = fadd fast float %5053, %4805
  %5057 = fadd fast float %5036, %4797
  %5058 = fadd fast float %5037, %4798
  %5059 = fadd fast float %5038, %4799
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 25, float %5060)  ; Rsqrt(value)
  %5062 = fmul fast float %5057, %5061
  %5063 = fmul fast float %5058, %5061
  %5064 = fmul fast float %5059, %5061
  %5065 = fsub fast float %5062, %4797
  %5066 = fsub fast float %5063, %4798
  %5067 = fsub fast float %5064, %4799
  %5068 = fmul fast float %5065, %4945
  %5069 = fmul fast float %5066, %4945
  %5070 = fmul fast float %5067, %4945
  %5071 = fadd fast float %5068, %4797
  %5072 = fadd fast float %5069, %4798
  %5073 = fadd fast float %5070, %4799
  %5074 = call float @dx.op.binary.f32(i32 36, float %4807, float %4993)  ; FMin(a,b)
  %5075 = fsub fast float %5074, %4807
  %5076 = fmul fast float %5075, %4945
  %5077 = fadd fast float %5076, %4807
  %5078 = fsub fast float %5006, %4806
  %5079 = fmul fast float %5078, %4945
  %5080 = fadd fast float %5079, %4806
  br label %5081

; <label>:5081                                    ; preds = %4943, %4905, %4796, %4512
  %5082 = phi float [ %5071, %4943 ], [ %4797, %4905 ], [ %4797, %4796 ], [ %4070, %4512 ]
  %5083 = phi float [ %5072, %4943 ], [ %4798, %4905 ], [ %4798, %4796 ], [ %4071, %4512 ]
  %5084 = phi float [ %5073, %4943 ], [ %4799, %4905 ], [ %4799, %4796 ], [ %4072, %4512 ]
  %5085 = phi float [ %5045, %4943 ], [ %4800, %4905 ], [ %4800, %4796 ], [ %4121, %4512 ]
  %5086 = phi float [ %5046, %4943 ], [ %4801, %4905 ], [ %4801, %4796 ], [ %4122, %4512 ]
  %5087 = phi float [ %5047, %4943 ], [ %4802, %4905 ], [ %4802, %4796 ], [ %4123, %4512 ]
  %5088 = phi float [ %5054, %4943 ], [ %4803, %4905 ], [ %4803, %4796 ], [ %4106, %4512 ]
  %5089 = phi float [ %5055, %4943 ], [ %4804, %4905 ], [ %4804, %4796 ], [ %4107, %4512 ]
  %5090 = phi float [ %5056, %4943 ], [ %4805, %4905 ], [ %4805, %4796 ], [ %4108, %4512 ]
  %5091 = phi float [ %5080, %4943 ], [ %4806, %4905 ], [ %4806, %4796 ], [ %4109, %4512 ]
  %5092 = phi float [ %5077, %4943 ], [ %4807, %4905 ], [ %4807, %4796 ], [ %4082, %4512 ]
  %5093 = fcmp fast une float %4516, 0.000000e+00
  br i1 %5093, label %5094, label %5263

; <label>:5094                                    ; preds = %5081
  %5095 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 25, float %5095)  ; Rsqrt(value)
  %5097 = fmul fast float %195, %5096
  %5098 = fsub fast float -0.000000e+00, %5097
  %5099 = fmul fast float %196, %5096
  %5100 = fsub fast float -0.000000e+00, %5099
  %5101 = fmul fast float %197, %5096
  %5102 = fsub fast float -0.000000e+00, %5101
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5100, float %5102, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = fmul fast float %4516, 2.500000e+00
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %4516, 0x4013FFFFE0000000
  %5107 = fadd fast float %5106, 0xBFFFFFFFE0000000
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %4516, 0x4004000020000000
  %5110 = fadd fast float %5109, 0xBFF8000040000000
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %4088, 1.000000e+01
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %5113, 2.000000e+00
  %5115 = fsub fast float 3.000000e+00, %5114
  %5116 = fmul fast float %5113, %5113
  %5117 = fmul fast float %5116, %5115
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = fsub fast float 0x3FE3333340000000, %5091
  %5120 = fmul fast float %5119, 0x400AAAAAA0000000
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5118, %5121
  %5123 = fmul fast float %5085, 0x3FEA2B8620000000
  %5124 = fmul fast float %5086, 0x3FEA2B8620000000
  %5125 = fmul fast float %5087, 0x3FEA2B8620000000
  %5126 = fadd fast float %5123, 0x3FC81DFBA0000000
  %5127 = fmul fast float %5126, %5085
  %5128 = fadd fast float %5127, 0x3F910E6020000000
  %5129 = fadd fast float %5124, 0x3FC81DFBA0000000
  %5130 = fmul fast float %5129, %5086
  %5131 = fadd fast float %5130, 0x3F910E6020000000
  %5132 = fadd fast float %5125, 0x3FC81DFBA0000000
  %5133 = fmul fast float %5132, %5087
  %5134 = fadd fast float %5133, 0x3F910E6020000000
  %5135 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = fsub fast float %5135, %5085
  %5139 = fsub fast float %5136, %5086
  %5140 = fsub fast float %5137, %5087
  %5141 = fmul fast float %5138, %5105
  %5142 = fmul fast float %5141, %5122
  %5143 = fmul fast float %5139, %5105
  %5144 = fmul fast float %5143, %5122
  %5145 = fmul fast float %5140, %5105
  %5146 = fmul fast float %5145, %5122
  %5147 = fadd fast float %5142, %5085
  %5148 = fadd fast float %5144, %5086
  %5149 = fadd fast float %5146, %5087
  %5150 = fmul fast float %5092, %5092
  %5151 = fmul fast float %5150, %5150
  %5152 = fadd fast float %5108, 1.000000e+00
  %5153 = fsub fast float %5152, %5122
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = fsub fast float 1.000000e+00, %5151
  %5158 = call float @dx.op.binary.f32(i32 36, float %5154, float %5157)  ; FMin(a,b)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5158, float %5159)  ; FMax(a,b)
  %5161 = fadd fast float %5156, 0xBFE4CCCCC0000000
  %5162 = fmul fast float %5161, 0x4006DB6DA0000000
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fmul fast float %5163, 2.000000e+00
  %5165 = fsub fast float 3.000000e+00, %5164
  %5166 = bitcast float %5088 to i32
  %5167 = ashr i32 %5166, 1
  %5168 = add nsw i32 %5167, 532487669
  %5169 = bitcast i32 %5168 to float
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = bitcast float %5170 to i32
  %5172 = sub nsw i32 2129859010, %5171
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %5173, 2.000000e+00
  %5175 = bitcast float %5089 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = bitcast float %5090 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = fsub fast float 0x4002A9FBE0000000, %5174
  %5194 = fadd fast float %5174, 0x3FD54FDF00000000
  %5195 = bitcast float %5194 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = fmul fast float %5197, %5193
  %5199 = fmul fast float %5198, %5198
  %5200 = fsub fast float 0x4002A9FBE0000000, %5183
  %5201 = fadd fast float %5183, 0x3FD54FDF00000000
  %5202 = bitcast float %5201 to i32
  %5203 = sub nsw i32 2129859010, %5202
  %5204 = bitcast i32 %5203 to float
  %5205 = fmul fast float %5204, %5200
  %5206 = fmul fast float %5205, %5205
  %5207 = fsub fast float 0x4002A9FBE0000000, %5192
  %5208 = fadd fast float %5192, 0x3FD54FDF00000000
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = fmul fast float %5211, %5207
  %5213 = fmul fast float %5212, %5212
  %5214 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5199)  ; FMax(a,b)
  %5215 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5206)  ; FMax(a,b)
  %5216 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5213)  ; FMax(a,b)
  %5217 = fsub fast float 1.000000e+00, %5103
  %5218 = fadd fast float %5217, %5118
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fsub fast float 1.000000e+00, %4497
  %5221 = fmul fast float %5160, %5220
  %5222 = fmul fast float %5163, %5163
  %5223 = fmul fast float %5222, %5221
  %5224 = fmul fast float %5223, %5165
  %5225 = fmul fast float %5220, 0xBFE99999A0000000
  %5226 = fmul fast float %5225, %5105
  %5227 = fmul fast float %5226, %5122
  %5228 = fadd fast float %5227, 1.000000e+00
  %5229 = fadd fast float %5091, -1.000000e+00
  %5230 = fmul fast float %5228, %5229
  %5231 = fadd fast float %5230, 1.000000e+00
  %5232 = fsub fast float %5214, %5088
  %5233 = fsub fast float %5215, %5089
  %5234 = fsub fast float %5216, %5090
  %5235 = fmul fast float %5224, %5232
  %5236 = fmul fast float %5224, %5233
  %5237 = fmul fast float %5224, %5234
  %5238 = fadd fast float %5235, %5088
  %5239 = fadd fast float %5236, %5089
  %5240 = fadd fast float %5237, %5090
  %5241 = fsub fast float %115, %5082
  %5242 = fsub fast float %116, %5083
  %5243 = fsub fast float %117, %5084
  %5244 = fmul fast float %5224, %5241
  %5245 = fmul fast float %5224, %5242
  %5246 = fmul fast float %5224, %5243
  %5247 = fadd fast float %5244, %5082
  %5248 = fadd fast float %5245, %5083
  %5249 = fadd fast float %5246, %5084
  %5250 = fmul fast float %5224, %5219
  %5251 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = fmul fast float %5250, %5252
  %5254 = fadd fast float %5253, %5251
  %5255 = fsub fast float 1.000000e+00, %5092
  %5256 = fmul fast float %5224, %5255
  %5257 = fadd fast float %5256, %5092
  %5258 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = call float @dx.op.unary.f32(i32 25, float %5258)  ; Rsqrt(value)
  %5260 = fmul fast float %5247, %5259
  %5261 = fmul fast float %5248, %5259
  %5262 = fmul fast float %5249, %5259
  br label %5263

; <label>:5263                                    ; preds = %5094, %5081
  %5264 = phi float [ %5260, %5094 ], [ %5082, %5081 ]
  %5265 = phi float [ %5261, %5094 ], [ %5083, %5081 ]
  %5266 = phi float [ %5262, %5094 ], [ %5084, %5081 ]
  %5267 = phi float [ %5147, %5094 ], [ %5085, %5081 ]
  %5268 = phi float [ %5148, %5094 ], [ %5086, %5081 ]
  %5269 = phi float [ %5149, %5094 ], [ %5087, %5081 ]
  %5270 = phi float [ %5238, %5094 ], [ %5088, %5081 ]
  %5271 = phi float [ %5239, %5094 ], [ %5089, %5081 ]
  %5272 = phi float [ %5240, %5094 ], [ %5090, %5081 ]
  %5273 = phi float [ %5254, %5094 ], [ %5091, %5081 ]
  %5274 = phi float [ %5257, %5094 ], [ %5092, %5081 ]
  %5275 = icmp eq i32 %58, 0
  br i1 %5275, label %5306, label %5276

; <label>:5276                                    ; preds = %5263
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 2
  %5279 = extractvalue %dx.types.CBufRet.f32 %5277, 3
  %5280 = fmul fast float %5278, %108
  %5281 = fmul fast float %5279, %109
  %5282 = fmul fast float %5280, 1.024000e+03
  %5283 = fmul fast float %5281, 1.024000e+03
  %5284 = fadd fast float %5282, -5.120000e+02
  %5285 = fadd fast float %5283, -5.120000e+02
  %5286 = fmul fast float %5280, 0x4081BEDF00000000
  %5287 = fadd fast float %5286, 0xC071BEDF00000000
  %5288 = call float @dx.op.unary.f32(i32 22, float %5287)  ; Frc(value)
  %5289 = fmul fast float %5284, %5288
  %5290 = fadd fast float %5289, %5285
  %5291 = fmul fast float %5281, 0x4073BEBE20000000
  %5292 = fadd fast float %5291, 0xC063BEBE20000000
  %5293 = call float @dx.op.unary.f32(i32 22, float %5292)  ; Frc(value)
  %5294 = fmul fast float %5285, %5293
  %5295 = fadd fast float %5294, %5284
  %5296 = fmul fast float %5290, %5295
  %5297 = call float @dx.op.unary.f32(i32 22, float %5296)  ; Frc(value)
  %5298 = add i32 %321, 12
  %5299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.i32 %5299, 0
  %5301 = and i32 %5300, 255
  %5302 = uitofp i32 %5301 to float
  %5303 = fmul fast float %5302, 0x3F70101020000000
  %5304 = fcmp fast olt float %5297, %5303
  br i1 %5304, label %5305, label %5306

; <label>:5305                                    ; preds = %5276
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5306

; <label>:5306                                    ; preds = %5305, %5276, %5263
  %5307 = fsub fast float -0.000000e+00, %197
  %5308 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5309, %195
  %5311 = fmul fast float %5309, %196
  %5312 = fmul fast float %5309, %197
  %5313 = fsub fast float -0.000000e+00, %5310
  %5314 = fsub fast float -0.000000e+00, %5311
  %5315 = fsub fast float -0.000000e+00, %5312
  %5316 = select i1 %267, float 0.000000e+00, float %5272
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float %5264, float %5265, float %5266)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = fmul fast float %5319, 2.000000e+00
  %5321 = fmul fast float %5320, %5264
  %5322 = fmul fast float %5320, %5265
  %5323 = fmul fast float %5320, %5266
  %5324 = fsub fast float %5310, %5321
  %5325 = fsub fast float %5311, %5322
  %5326 = fsub fast float %5312, %5323
  %5327 = call float @dx.op.binary.f32(i32 36, float %5274, float 1.000000e+00)  ; FMin(a,b)
  %5328 = fsub fast float 1.000000e+00, %5274
  %5329 = bitcast float %5328 to i32
  %5330 = sub nsw i32 2129859010, %5329
  %5331 = bitcast i32 %5330 to float
  %5332 = fsub fast float 1.000000e+00, %79
  %5333 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.binary.f32(i32 35, float %5333, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5335 = fdiv fast float %5332, %5334
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fmul fast float %5337, 5.000000e-01
  %5339 = fadd fast float %5338, 5.000000e-01
  %5340 = fmul fast float %5339, %79
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, %5335
  %5344 = fadd fast float %5340, %5343
  %5345 = fsub fast float 5.000000e-01, %5338
  %5346 = fmul fast float %5345, %5267
  %5347 = fmul fast float %5345, %5268
  %5348 = fmul fast float %5345, %5269
  %5349 = fadd fast float %5344, %5346
  %5350 = fadd fast float %5344, %5347
  %5351 = fadd fast float %5344, %5348
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fmul fast float %5353, 5.000000e-01
  %5355 = fadd fast float %5354, 5.000000e-01
  %5356 = fmul fast float %5355, %79
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, %5335
  %5360 = fadd fast float %5356, %5359
  %5361 = fsub fast float 5.000000e-01, %5354
  %5362 = fmul fast float %5361, %5267
  %5363 = fmul fast float %5361, %5268
  %5364 = fmul fast float %5361, %5269
  %5365 = fadd fast float %5360, %5362
  %5366 = fadd fast float %5360, %5363
  %5367 = fadd fast float %5360, %5364
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = call float @dx.op.binary.f32(i32 36, float %5267, float %5369)  ; FMin(a,b)
  %5371 = fsub fast float 1.000000e+00, %5327
  %5372 = fmul fast float %5370, %5371
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = call float @dx.op.binary.f32(i32 36, float %5268, float %5369)  ; FMin(a,b)
  %5378 = fmul fast float %5377, %5371
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = bitcast float %5379 to i32
  %5381 = sub nsw i32 2129859010, %5380
  %5382 = bitcast i32 %5381 to float
  %5383 = call float @dx.op.binary.f32(i32 36, float %5269, float %5369)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5371
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = bitcast float %5385 to i32
  %5387 = sub nsw i32 2129859010, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = fmul fast float %5327, %80
  %5390 = fmul fast float %5389, %5349
  %5391 = fmul fast float %5390, %5376
  %5392 = fmul fast float %5327, %81
  %5393 = fmul fast float %5392, %5350
  %5394 = fmul fast float %5393, %5382
  %5395 = fmul fast float %5327, %82
  %5396 = fmul fast float %5395, %5351
  %5397 = fmul fast float %5396, %5388
  %5398 = call float @dx.op.binary.f32(i32 36, float %5270, float %5369)  ; FMin(a,b)
  %5399 = fmul fast float %5398, %5371
  %5400 = fsub fast float 1.000000e+00, %5399
  %5401 = bitcast float %5400 to i32
  %5402 = sub nsw i32 2129859010, %5401
  %5403 = bitcast i32 %5402 to float
  %5404 = call float @dx.op.binary.f32(i32 36, float %5271, float %5369)  ; FMin(a,b)
  %5405 = fmul fast float %5404, %5371
  %5406 = fsub fast float 1.000000e+00, %5405
  %5407 = bitcast float %5406 to i32
  %5408 = sub nsw i32 2129859010, %5407
  %5409 = bitcast i32 %5408 to float
  %5410 = call float @dx.op.binary.f32(i32 36, float %5316, float %5369)  ; FMin(a,b)
  %5411 = fmul fast float %5410, %5371
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = bitcast float %5412 to i32
  %5414 = sub nsw i32 2129859010, %5413
  %5415 = bitcast i32 %5414 to float
  %5416 = fmul fast float %5389, %5365
  %5417 = fmul fast float %5416, %5403
  %5418 = fmul fast float %5392, %5366
  %5419 = fmul fast float %5418, %5409
  %5420 = fmul fast float %5395, %5367
  %5421 = fmul fast float %5420, %5415
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5394, float %5397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = select i1 %267, float 0.000000e+00, float %5391
  %5424 = select i1 %267, float %5422, float %5394
  %5425 = select i1 %267, float 0.000000e+00, float %5397
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5419, float %5421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = select i1 %267, float 0.000000e+00, float %5417
  %5428 = select i1 %267, float %5426, float %5419
  %5429 = select i1 %267, float 0.000000e+00, float %5421
  %5430 = fmul fast float %5318, 9.843750e-01
  %5431 = fmul fast float %5273, 9.843750e-01
  %5432 = fadd fast float %5430, 7.812500e-03
  %5433 = fadd fast float %5431, 7.812500e-03
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5432, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 3
  %5437 = fmul fast float %5435, %5270
  %5438 = fmul fast float %5435, %5271
  %5439 = fmul fast float %5435, %5316
  %5440 = fadd fast float %5437, %5436
  %5441 = fadd fast float %5438, %5436
  %5442 = fadd fast float %5439, %5436
  %5443 = fcmp fast ogt float %4083, 0.000000e+00
  br i1 %5443, label %5444, label %5470

; <label>:5444                                    ; preds = %5306
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4083, float %5318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = fadd fast float %5446, -5.000000e-01
  %5450 = fadd fast float %5447, -5.000000e-01
  %5451 = fadd fast float %5448, -5.000000e-01
  %5452 = fsub fast float 1.000000e+00, %5270
  %5453 = fsub fast float 1.000000e+00, %5271
  %5454 = fsub fast float 1.000000e+00, %5316
  %5455 = fmul fast float %5270, 4.000000e+00
  %5456 = fmul fast float %5455, %5452
  %5457 = fmul fast float %5456, %5449
  %5458 = fmul fast float %5271, 4.000000e+00
  %5459 = fmul fast float %5458, %5453
  %5460 = fmul fast float %5459, %5450
  %5461 = fmul fast float %5316, 4.000000e+00
  %5462 = fmul fast float %5461, %5454
  %5463 = fmul fast float %5462, %5451
  %5464 = fadd fast float %5457, %5440
  %5465 = fadd fast float %5460, %5441
  %5466 = fadd fast float %5463, %5442
  %5467 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  br label %5470

; <label>:5470                                    ; preds = %5444, %5306
  %5471 = phi float [ %5467, %5444 ], [ %5440, %5306 ]
  %5472 = phi float [ %5468, %5444 ], [ %5441, %5306 ]
  %5473 = phi float [ %5469, %5444 ], [ %5442, %5306 ]
  %5474 = call float @dx.op.binary.f32(i32 35, float %5472, float %5473)  ; FMax(a,b)
  %5475 = call float @dx.op.binary.f32(i32 35, float %5471, float %5474)  ; FMax(a,b)
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fmul fast float %5476, %5423
  %5478 = fmul fast float %5476, %5424
  %5479 = fmul fast float %5476, %5425
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = fcmp fast ogt float %5480, 0x3E7FF19E20000000
  %5482 = fdiv fast float 1.000000e+00, %5480
  %5483 = select i1 %5481, float %5482, float 0.000000e+00
  %5484 = fmul fast float %5483, %5267
  %5485 = fmul fast float %5483, %5268
  %5486 = fmul fast float %5483, %5269
  %5487 = fadd fast float %5484, -1.000000e+00
  %5488 = fadd fast float %5485, -1.000000e+00
  %5489 = fadd fast float %5486, -1.000000e+00
  %5490 = fmul fast float %5487, 5.000000e-01
  %5491 = fmul fast float %5488, 5.000000e-01
  %5492 = fmul fast float %5489, 5.000000e-01
  %5493 = fadd fast float %5490, 1.000000e+00
  %5494 = fadd fast float %5491, 1.000000e+00
  %5495 = fadd fast float %5492, 1.000000e+00
  %5496 = fmul fast float %5471, %5427
  %5497 = fmul fast float %5472, %5428
  %5498 = fmul fast float %5473, %5429
  %5499 = fsub fast float 1.000000e+00, %5318
  %5500 = bitcast float %5499 to i32
  %5501 = sitofp i32 %5500 to float
  %5502 = fmul fast float %5501, 5.000000e+00
  %5503 = fadd fast float %5502, 0xC1EFBF8940000000
  %5504 = fptosi float %5503 to i32
  %5505 = bitcast i32 %5504 to float
  %5506 = fmul fast float %5505, %4084
  %5507 = fmul fast float %5423, %5506
  %5508 = fmul fast float %5507, %5476
  %5509 = fmul fast float %5508, %5493
  %5510 = fmul fast float %5424, %5506
  %5511 = fmul fast float %5510, %5476
  %5512 = fmul fast float %5511, %5494
  %5513 = fmul fast float %5425, %5506
  %5514 = fmul fast float %5513, %5476
  %5515 = fmul fast float %5514, %5495
  %5516 = fmul fast float %5477, %4080
  %5517 = fmul fast float %5478, %4080
  %5518 = fmul fast float %5479, %4080
  %5519 = fadd fast float %5496, %4076
  %5520 = fadd fast float %5519, %5509
  %5521 = fmul fast float %5520, %4080
  %5522 = fadd fast float %5497, %4077
  %5523 = fadd fast float %5522, %5512
  %5524 = fmul fast float %5523, %4080
  %5525 = fadd fast float %5498, %4078
  %5526 = fadd fast float %5525, %5515
  %5527 = fmul fast float %5526, %4080
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5530 = fcmp fast oeq float %5529, 0.000000e+00
  br i1 %5530, label %6615, label %5531

; <label>:5531                                    ; preds = %5470
  %5532 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5533 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5534 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %5538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = select i1 %267, float %5540, float %5536
  %5544 = select i1 %267, float %5542, float %5537
  %5545 = select i1 %267, float %5541, float %5538
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5548 = fmul fast float %5547, %115
  %5549 = fmul fast float %5547, %116
  %5550 = fmul fast float %5547, %117
  %5551 = fadd fast float %5548, %195
  %5552 = fadd fast float %5549, %196
  %5553 = fadd fast float %5550, %197
  %5554 = fcmp fast olt float %5529, 0.000000e+00
  br i1 %5554, label %6194, label %5555

; <label>:5555                                    ; preds = %5531
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5560 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5566, 3
  %5571 = fmul fast float %5557, %5551
  %5572 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5558, float %5571)  ; FMad(a,b,c)
  %5573 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5559, float %5572)  ; FMad(a,b,c)
  %5574 = fadd fast float %5573, %5560
  %5575 = fmul fast float %5562, %5551
  %5576 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5563, float %5575)  ; FMad(a,b,c)
  %5577 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5564, float %5576)  ; FMad(a,b,c)
  %5578 = fadd fast float %5577, %5565
  %5579 = fmul fast float %5567, %5551
  %5580 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5568, float %5579)  ; FMad(a,b,c)
  %5581 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5569, float %5580)  ; FMad(a,b,c)
  %5582 = fadd fast float %5581, %5570
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = fcmp fast une float %5584, 0.000000e+00
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5588 = extractvalue %dx.types.CBufRet.f32 %5586, 1
  %5589 = extractvalue %dx.types.CBufRet.f32 %5586, 3
  %5590 = fmul fast float %5589, %5574
  %5591 = fmul fast float %5589, %5578
  %5592 = fadd fast float %5590, %5587
  %5593 = fadd fast float %5591, %5588
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.CBufRet.f32 %5594, 1
  %5597 = extractvalue %dx.types.CBufRet.f32 %5594, 3
  %5598 = fmul fast float %5597, %5574
  %5599 = fmul fast float %5597, %5578
  %5600 = fadd fast float %5598, %5595
  %5601 = fadd fast float %5599, %5596
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 1
  %5604 = fsub fast float %5603, %5582
  %5605 = extractvalue %dx.types.CBufRet.f32 %5602, 2
  %5606 = fmul fast float %5604, %5605
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  br i1 %5585, label %5669, label %5609

; <label>:5609                                    ; preds = %5555
  %5610 = extractvalue %dx.types.CBufRet.f32 %5594, 2
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5613 = fadd fast float %5612, %5610
  %5614 = fcmp fast ogt float %5613, 0.000000e+00
  br i1 %5614, label %5615, label %5639

; <label>:5615                                    ; preds = %5609
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = fsub fast float %5600, %5617
  %5620 = fsub fast float %5601, %5618
  %5621 = fcmp fast olt float %5619, 0.000000e+00
  %5622 = fcmp fast olt float %5620, 0.000000e+00
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5628 = select i1 %5621, float %5624, float %5626
  %5629 = select i1 %5622, float %5625, float %5627
  %5630 = fmul fast float %5628, %5619
  %5631 = fmul fast float %5629, %5620
  %5632 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5635 = call float @dx.op.binary.f32(i32 35, float %5632, float %5633)  ; FMax(a,b)
  %5636 = fsub fast float %5634, %5635
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = fmul fast float %5637, %5608
  br label %5639

; <label>:5639                                    ; preds = %5615, %5609
  %5640 = phi float [ %5638, %5615 ], [ 0.000000e+00, %5609 ]
  %5641 = extractvalue %dx.types.CBufRet.f32 %5586, 2
  %5642 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5643 = fadd fast float %5642, %5641
  %5644 = fcmp fast ogt float %5643, 0.000000e+00
  br i1 %5644, label %5645, label %5669

; <label>:5645                                    ; preds = %5639
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5649 = fsub fast float %5592, %5647
  %5650 = fsub fast float %5593, %5648
  %5651 = fcmp fast olt float %5649, 0.000000e+00
  %5652 = fcmp fast olt float %5650, 0.000000e+00
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5653, 3
  %5658 = select i1 %5651, float %5654, float %5656
  %5659 = select i1 %5652, float %5655, float %5657
  %5660 = fmul fast float %5658, %5649
  %5661 = fmul fast float %5659, %5650
  %5662 = call float @dx.op.unary.f32(i32 6, float %5660)  ; FAbs(value)
  %5663 = call float @dx.op.unary.f32(i32 6, float %5661)  ; FAbs(value)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5665 = call float @dx.op.binary.f32(i32 35, float %5662, float %5663)  ; FMax(a,b)
  %5666 = fsub fast float %5664, %5665
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, %5608
  br label %5669

; <label>:5669                                    ; preds = %5645, %5639, %5555
  %5670 = phi float [ 0.000000e+00, %5555 ], [ %5668, %5645 ], [ 0.000000e+00, %5639 ]
  %5671 = phi float [ 0.000000e+00, %5555 ], [ %5640, %5645 ], [ %5640, %5639 ]
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 1
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5678 = fsub fast float %5574, %5676
  %5679 = fsub fast float %5578, %5677
  %5680 = fcmp fast olt float %5678, 0.000000e+00
  %5681 = fcmp fast olt float %5679, 0.000000e+00
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5686 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5687 = select i1 %5680, float %5683, float %5685
  %5688 = select i1 %5681, float %5684, float %5686
  %5689 = fmul fast float %5687, %5678
  %5690 = fmul fast float %5688, %5679
  %5691 = call float @dx.op.unary.f32(i32 6, float %5689)  ; FAbs(value)
  %5692 = call float @dx.op.unary.f32(i32 6, float %5690)  ; FAbs(value)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5694 = call float @dx.op.binary.f32(i32 35, float %5691, float %5692)  ; FMax(a,b)
  %5695 = fsub fast float %5693, %5694
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = call float @dx.op.binary.f32(i32 36, float %5696, float %5674)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5608
  %5699 = fsub fast float %5670, %5698
  %5700 = fsub fast float %5671, %5670
  %5701 = fsub fast float %5700, %5698
  %5702 = call float @dx.op.binary.f32(i32 35, float %5670, float %5671)  ; FMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5698, float %5702)  ; FMax(a,b)
  %5704 = fcmp fast olt float %5703, 1.000000e+00
  br i1 %5704, label %5705, label %6103, !dx.controlflow.hints !99

; <label>:5705                                    ; preds = %5669
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = fcmp fast une float %5707, 0.000000e+00
  br i1 %5708, label %5709, label %6103, !dx.controlflow.hints !100

; <label>:5709                                    ; preds = %5705
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5714 = extractvalue %dx.types.CBufRet.f32 %5710, 3
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5723 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5724 = extractvalue %dx.types.CBufRet.f32 %5720, 3
  %5725 = fmul fast float %5711, %5551
  %5726 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5712, float %5725)  ; FMad(a,b,c)
  %5727 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5713, float %5726)  ; FMad(a,b,c)
  %5728 = fadd fast float %5727, %5714
  %5729 = fmul fast float %5716, %5551
  %5730 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5717, float %5729)  ; FMad(a,b,c)
  %5731 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5718, float %5730)  ; FMad(a,b,c)
  %5732 = fadd fast float %5731, %5719
  %5733 = fmul fast float %5721, %5551
  %5734 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %5722, float %5733)  ; FMad(a,b,c)
  %5735 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5723, float %5734)  ; FMad(a,b,c)
  %5736 = fadd fast float %5735, %5724
  %5737 = fcmp fast oge float %5728, 1.000000e+00
  %5738 = fcmp fast oge float %5732, 1.000000e+00
  %5739 = or i1 %5737, %5738
  %5740 = fcmp fast olt float %5728, 0.000000e+00
  %5741 = fcmp fast olt float %5732, 0.000000e+00
  %5742 = or i1 %5740, %5741
  %5743 = or i1 %5739, %5742
  br i1 %5743, label %6103, label %5744, !dx.controlflow.hints !101

; <label>:5744                                    ; preds = %5709
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.i32 %5749, 2
  %5751 = uitofp i32 %5750 to float
  %5752 = extractvalue %dx.types.CBufRet.i32 %5749, 3
  %5753 = uitofp i32 %5752 to float
  %5754 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5755 = fmul fast float %5754, 2.000000e+00
  %5756 = fsub fast float %5728, %5746
  %5757 = fsub fast float %5732, %5747
  %5758 = fmul fast float %5755, %5756
  %5759 = fmul fast float %5755, %5757
  %5760 = fdiv fast float 1.000000e+00, %5534
  %5761 = fmul fast float %5759, %5760
  %5762 = call float @dx.op.unary.f32(i32 6, float %5761)  ; FAbs(value)
  %5763 = fmul fast float %5748, %5553
  %5764 = fmul fast float %5763, %5755
  %5765 = call float @dx.op.unary.f32(i32 6, float %5764)  ; FAbs(value)
  %5766 = call float @dx.op.unary.f32(i32 6, float %5758)  ; FAbs(value)
  %5767 = call float @dx.op.binary.f32(i32 35, float %5765, float %5762)  ; FMax(a,b)
  %5768 = call float @dx.op.binary.f32(i32 35, float %5766, float %5767)  ; FMax(a,b)
  %5769 = fmul fast float %5768, 2.000000e+00
  %5770 = call float @dx.op.unary.f32(i32 23, float %5769)  ; Log(value)
  %5771 = call float @dx.op.binary.f32(i32 35, float %5770, float %5751)  ; FMax(a,b)
  %5772 = call float @dx.op.unary.f32(i32 22, float %5771)  ; Frc(value)
  %5773 = fadd fast float %5772, 0xBFEA666660000000
  %5774 = fmul fast float %5773, 8.000000e+00
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = call float @dx.op.unary.f32(i32 27, float %5771)  ; Round_ni(value)
  %5777 = fadd fast float %5776, %5775
  %5778 = call float @dx.op.binary.f32(i32 36, float %5777, float %5753)  ; FMin(a,b)
  %5779 = call float @dx.op.unary.f32(i32 27, float %5778)  ; Round_ni(value)
  %5780 = fsub fast float -0.000000e+00, %5779
  %5781 = call float @dx.op.unary.f32(i32 21, float %5780)  ; Exp(value)
  %5782 = fmul fast float %5781, %5755
  %5783 = fmul fast float %5782, %5728
  %5784 = fmul fast float %5782, %5732
  %5785 = fmul fast float %5783, 2.500000e-01
  %5786 = fmul fast float %5784, 2.500000e-01
  %5787 = fadd fast float %5785, 5.000000e-01
  %5788 = fadd fast float %5786, 5.000000e-01
  %5789 = fsub fast float %5753, %5751
  %5790 = fptoui float %5789 to i32
  %5791 = add i32 %5790, 320
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5791)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = fcmp fast une float %5778, %5753
  %5796 = fsub fast float %5728, %5793
  %5797 = fsub fast float %5732, %5794
  %5798 = call float @dx.op.unary.f32(i32 6, float %5796)  ; FAbs(value)
  %5799 = call float @dx.op.unary.f32(i32 6, float %5797)  ; FAbs(value)
  %5800 = fmul fast float %5798, %5782
  %5801 = fmul fast float %5799, %5782
  %5802 = fcmp fast olt float %5800, 1.000000e+00
  %5803 = fcmp fast olt float %5801, 1.000000e+00
  %5804 = and i1 %5802, %5803
  %5805 = or i1 %5795, %5804
  br i1 %5805, label %5806, label %6103, !dx.controlflow.hints !102

; <label>:5806                                    ; preds = %5744
  %5807 = fmul fast float %5784, 5.000000e-01
  %5808 = fmul fast float %5783, 5.000000e-01
  %5809 = fadd fast float %5807, 5.000000e-01
  %5810 = fadd fast float %5808, 5.000000e-01
  %5811 = sitofp i32 %5750 to float
  %5812 = fsub fast float %5778, %5811
  %5813 = call float @dx.op.unary.f32(i32 27, float %5812)  ; Round_ni(value)
  %5814 = call float @dx.op.unary.f32(i32 22, float %5778)  ; Frc(value)
  %5815 = call float @dx.op.unary.f32(i32 22, float %5810)  ; Frc(value)
  %5816 = call float @dx.op.unary.f32(i32 22, float %5809)  ; Frc(value)
  %5817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5815, float %5816, float %5813, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.ResRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.ResRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.ResRet.f32 %5817, 3
  %5822 = fcmp fast ogt float %5814, 0.000000e+00
  br i1 %5822, label %5823, label %5844, !dx.controlflow.hints !103

; <label>:5823                                    ; preds = %5806
  %5824 = fadd fast float %5813, 1.000000e+00
  %5825 = call float @dx.op.unary.f32(i32 22, float %5787)  ; Frc(value)
  %5826 = call float @dx.op.unary.f32(i32 22, float %5788)  ; Frc(value)
  %5827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5825, float %5826, float %5824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.ResRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.ResRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.ResRet.f32 %5827, 3
  %5832 = fsub fast float %5828, %5818
  %5833 = fsub fast float %5829, %5819
  %5834 = fsub fast float %5830, %5820
  %5835 = fsub fast float %5831, %5821
  %5836 = fmul fast float %5832, %5814
  %5837 = fmul fast float %5833, %5814
  %5838 = fmul fast float %5834, %5814
  %5839 = fmul fast float %5835, %5814
  %5840 = fadd fast float %5836, %5818
  %5841 = fadd fast float %5837, %5819
  %5842 = fadd fast float %5838, %5820
  %5843 = fadd fast float %5839, %5821
  br label %5844

; <label>:5844                                    ; preds = %5823, %5806
  %5845 = phi float [ %5840, %5823 ], [ %5818, %5806 ]
  %5846 = phi float [ %5841, %5823 ], [ %5819, %5806 ]
  %5847 = phi float [ %5842, %5823 ], [ %5820, %5806 ]
  %5848 = phi float [ %5843, %5823 ], [ %5821, %5806 ]
  %5849 = fadd fast float %5845, -5.000000e-01
  %5850 = fadd fast float %5847, -5.000000e-01
  %5851 = fmul fast float %5849, 0xBFD5555560000000
  %5852 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5850, float %5851)  ; FMad(a,b,c)
  %5853 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5846, float 0.000000e+00)  ; FMad(a,b,c)
  %5854 = fadd fast float %5853, %5848
  %5855 = fmul fast float %5849, -7.500000e-01
  %5856 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5850, float %5855)  ; FMad(a,b,c)
  %5857 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5846, float 0.000000e+00)  ; FMad(a,b,c)
  %5858 = fadd fast float %5857, %5848
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5866 = fsub fast float %5862, %5852
  %5867 = fsub fast float %5863, %5854
  %5868 = fsub fast float %5864, %5856
  %5869 = fsub fast float %5865, %5858
  %5870 = fmul fast float %5866, %5860
  %5871 = fmul fast float %5867, %5860
  %5872 = fmul fast float %5868, %5860
  %5873 = fmul fast float %5869, %5860
  %5874 = fadd fast float %5870, %5852
  %5875 = fadd fast float %5871, %5854
  %5876 = fadd fast float %5872, %5856
  %5877 = fadd fast float %5873, %5858
  %5878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5879 = extractvalue %dx.types.ResRet.i32 %5878, 0
  %5880 = and i32 %5879, 536870911
  %5881 = uitofp i32 %5880 to float
  %5882 = fmul fast float %5881, %5728
  %5883 = fmul fast float %5881, %5732
  %5884 = fptoui float %5882 to i32
  %5885 = fptoui float %5883 to i32
  %5886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5887 = extractvalue %dx.types.ResRet.i32 %5886, 0
  %5888 = and i32 %5887, 31
  %5889 = lshr i32 %5884, %5888
  %5890 = lshr i32 %5885, %5888
  %5891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.i32 %5891, 0
  %5893 = and i32 %5892, 31
  %5894 = shl i32 1, %5893
  %5895 = call i32 @dx.op.binary.i32(i32 40, i32 %5894, i32 4)  ; UMin(a,b)
  %5896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.i32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.i32 %5896, 1
  %5899 = icmp eq i32 %5895, 0
  br i1 %5899, label %5941, label %5900

; <label>:5900                                    ; preds = %5844
  br label %5901

; <label>:5901                                    ; preds = %5929, %5900
  %5902 = phi i32 [ %5932, %5929 ], [ 0, %5900 ]
  %5903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.i32 %5903, 0
  %5905 = lshr i32 %5904, 16
  %5906 = and i32 %5905, 31
  %5907 = shl i32 %5890, %5906
  %5908 = add i32 %5907, %5889
  %5909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.i32 %5909, 0
  %5911 = and i32 %5910, 31
  %5912 = shl i32 %5908, %5911
  %5913 = add i32 %5912, %5902
  %5914 = shl i32 %5913, 2
  %5915 = add i32 %5914, 32
  %5916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.i32 %5916, 0
  %5918 = icmp slt i32 %5917, 0
  %5919 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5902
  %5920 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5902
  %5921 = bitcast float* %5919 to i32*
  %5922 = bitcast float* %5920 to i32*
  br i1 %5918, label %5923, label %5929

; <label>:5923                                    ; preds = %5901
  %5924 = and i32 %5917, 1073741823
  %5925 = add nuw nsw i32 %5924, 20
  %5926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.i32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.i32 %5926, 1
  br label %5929

; <label>:5929                                    ; preds = %5923, %5901
  %5930 = phi i32 [ %5927, %5923 ], [ %5897, %5901 ]
  %5931 = phi i32 [ %5928, %5923 ], [ %5898, %5901 ]
  store i32 %5930, i32* %5921, align 4
  store i32 %5931, i32* %5922, align 4
  %5932 = add nuw i32 %5902, 1
  %5933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.i32 %5933, 2
  %5935 = icmp eq i32 %5934, 0
  %5936 = icmp ugt i32 %5917, -1073741825
  %5937 = and i1 %5936, %5935
  %5938 = icmp ult i32 %5932, %5895
  %5939 = and i1 %5937, %5938
  br i1 %5939, label %5901, label %5940

; <label>:5940                                    ; preds = %5929
  br label %5941

; <label>:5941                                    ; preds = %5940, %5844
  %5942 = phi i32 [ 0, %5844 ], [ %5932, %5940 ]
  %5943 = extractvalue %dx.types.CBufRet.f32 %5706, 2
  %5944 = fptoui float %5943 to i32
  %5945 = icmp eq i32 %5944, 0
  br i1 %5945, label %5997, label %5946

; <label>:5946                                    ; preds = %5941
  br label %5947

; <label>:5947                                    ; preds = %5992, %5946
  %5948 = phi i32 [ %5993, %5992 ], [ %5942, %5946 ]
  %5949 = phi i32 [ %5994, %5992 ], [ 0, %5946 ]
  %5950 = lshr i32 %5949, 2
  %5951 = and i32 %5949, 3
  %5952 = add nuw nsw i32 %5950, 83
  %5953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %5952)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.i32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.i32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.i32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.i32 %5953, 3
  %5958 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %5954, i32* %5958, align 4
  %5959 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %5955, i32* %5959, align 4
  %5960 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %5956, i32* %5960, align 4
  %5961 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %5957, i32* %5961, align 4
  %5962 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5951
  %5963 = load i32, i32* %5962, align 4, !tbaa !104, !noalias !108
  %5964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5965 = extractvalue %dx.types.ResRet.i32 %5964, 0
  %5966 = lshr i32 %5965, 16
  %5967 = and i32 %5966, 31
  %5968 = shl i32 %5890, %5967
  %5969 = add i32 %5968, %5889
  %5970 = shl i32 %5969, 2
  %5971 = add i32 %5970, %5963
  %5972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5971, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.i32 %5972, 0
  %5974 = icmp eq i32 %5973, 0
  br i1 %5974, label %5992, label %5975

; <label>:5975                                    ; preds = %5947
  %5976 = icmp slt i32 %5973, 0
  %5977 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5948
  %5978 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5948
  %5979 = bitcast float* %5977 to i32*
  %5980 = bitcast float* %5978 to i32*
  br i1 %5976, label %5981, label %5988

; <label>:5981                                    ; preds = %5975
  %5982 = and i32 %5973, 1073741823
  %5983 = add i32 %5963, 20
  %5984 = add i32 %5983, %5982
  %5985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.i32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.i32 %5985, 1
  br label %5988

; <label>:5988                                    ; preds = %5981, %5975
  %5989 = phi i32 [ %5986, %5981 ], [ %5897, %5975 ]
  %5990 = phi i32 [ %5987, %5981 ], [ %5898, %5975 ]
  store i32 %5989, i32* %5979, align 4
  store i32 %5990, i32* %5980, align 4
  %5991 = add i32 %5948, 1
  br label %5992

; <label>:5992                                    ; preds = %5988, %5947
  %5993 = phi i32 [ %5948, %5947 ], [ %5991, %5988 ]
  %5994 = add nuw i32 %5949, 1
  %5995 = icmp eq i32 %5994, %5944
  br i1 %5995, label %5996, label %5947

; <label>:5996                                    ; preds = %5992
  br label %5997

; <label>:5997                                    ; preds = %5996, %5941
  %5998 = phi i32 [ %5942, %5941 ], [ %5993, %5996 ]
  %5999 = icmp eq i32 %5998, 1
  %6000 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6001 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %5999, label %6002, label %6005

; <label>:6002                                    ; preds = %5997
  %6003 = load float, float* %6000, align 4
  %6004 = load float, float* %6001, align 4
  br label %6032

; <label>:6005                                    ; preds = %5997
  %6006 = load float, float* %6000, align 4
  %6007 = load float, float* %6001, align 4
  %6008 = fdiv fast float 1.000000e+00, %6007
  %6009 = fsub fast float %6006, %6008
  %6010 = icmp ugt i32 %5998, 1
  br i1 %6010, label %6011, label %6027

; <label>:6011                                    ; preds = %6005
  br label %6012

; <label>:6012                                    ; preds = %6012, %6011
  %6013 = phi float [ %6022, %6012 ], [ %6009, %6011 ]
  %6014 = phi float [ %6023, %6012 ], [ %6006, %6011 ]
  %6015 = phi i32 [ %6024, %6012 ], [ 1, %6011 ]
  %6016 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6015
  %6017 = load float, float* %6016, align 4
  %6018 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6015
  %6019 = load float, float* %6018, align 4
  %6020 = fdiv fast float 1.000000e+00, %6019
  %6021 = fsub fast float %6017, %6020
  %6022 = call float @dx.op.binary.f32(i32 36, float %6013, float %6021)  ; FMin(a,b)
  %6023 = call float @dx.op.binary.f32(i32 35, float %6014, float %6017)  ; FMax(a,b)
  %6024 = add nuw i32 %6015, 1
  %6025 = icmp eq i32 %6024, %5998
  br i1 %6025, label %6026, label %6012

; <label>:6026                                    ; preds = %6012
  br label %6027

; <label>:6027                                    ; preds = %6026, %6005
  %6028 = phi float [ %6009, %6005 ], [ %6022, %6026 ]
  %6029 = phi float [ %6006, %6005 ], [ %6023, %6026 ]
  %6030 = fsub fast float %6029, %6028
  %6031 = fdiv fast float 1.000000e+00, %6030
  br label %6032

; <label>:6032                                    ; preds = %6027, %6002
  %6033 = phi float [ %6003, %6002 ], [ %6029, %6027 ]
  %6034 = phi float [ %6004, %6002 ], [ %6031, %6027 ]
  %6035 = fadd fast float %5736, %6033
  %6036 = fmul fast float %6035, %6034
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6038 = fmul fast float %6037, 2.000000e+00
  %6039 = fsub fast float 1.000000e+00, %6038
  %6040 = fmul fast float %5874, %5874
  %6041 = fsub fast float %5875, %6040
  %6042 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6041)  ; FMax(a,b)
  %6043 = fdiv fast float 1.000000e+00, %6042
  %6044 = fmul fast float %5875, %5874
  %6045 = fsub fast float %5876, %6044
  %6046 = fsub fast float %6039, %5874
  %6047 = fmul fast float %6039, %6039
  %6048 = fsub fast float %6047, %5875
  %6049 = fmul fast float %6043, %6045
  %6050 = fmul fast float %6049, %6046
  %6051 = fsub fast float %6048, %6050
  %6052 = fmul fast float %5875, %5875
  %6053 = fsub fast float %5877, %6052
  %6054 = fmul fast float %6045, %6045
  %6055 = fmul fast float %6054, %6043
  %6056 = fsub fast float %6053, %6055
  %6057 = fdiv fast float %6051, %6056
  %6058 = fmul fast float %6057, %6045
  %6059 = fsub fast float %6046, %6058
  %6060 = fmul fast float %6059, %6043
  %6061 = fmul fast float %6060, %5874
  %6062 = fsub fast float 1.000000e+00, %6061
  %6063 = fmul fast float %6057, %5875
  %6064 = fsub fast float %6062, %6063
  %6065 = fmul fast float %6060, %6060
  %6066 = fmul fast float %6057, 4.000000e+00
  %6067 = fmul fast float %6066, %6064
  %6068 = fsub fast float %6065, %6067
  %6069 = call float @dx.op.unary.f32(i32 24, float %6068)  ; Sqrt(value)
  %6070 = fcmp fast oge float %6060, 0.000000e+00
  %6071 = fsub fast float -0.000000e+00, %6069
  %6072 = select i1 %6070, float %6071, float %6069
  %6073 = fsub fast float %6072, %6060
  %6074 = fdiv fast float %6073, %6057
  %6075 = fdiv fast float %6064, %6073
  %6076 = fmul fast float %6074, 5.000000e-01
  %6077 = fmul fast float %6075, 2.000000e+00
  %6078 = select i1 %6070, float %6076, float %6077
  %6079 = select i1 %6070, float %6077, float %6076
  %6080 = call float @dx.op.binary.f32(i32 35, float %6078, float %6079)  ; FMax(a,b)
  %6081 = call float @dx.op.binary.f32(i32 36, float %6078, float %6079)  ; FMin(a,b)
  %6082 = fcmp fast ogt float %6039, %6080
  %6083 = fsub fast float %6039, %6081
  %6084 = fsub fast float %6039, %6080
  %6085 = fsub fast float %6080, %6081
  %6086 = select i1 %6082, float %6084, float %6085
  %6087 = fmul float %6083, %6086
  %6088 = select i1 %6082, float %6081, float %6039
  %6089 = fcmp fast ogt float %6039, %6081
  %6090 = fmul fast float %6088, %6080
  %6091 = fadd fast float %6088, %6080
  %6092 = fmul fast float %6091, %5874
  %6093 = fadd fast float %6090, %5875
  %6094 = fsub fast float %6093, %6092
  %6095 = fdiv fast float %6094, %6087
  %6096 = select i1 %6089, float %6095, float 0.000000e+00
  %6097 = fsub fast float 1.000000e+00, %6096
  %6098 = select i1 %6082, float %6097, float %6096
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6100 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %6101 = fmul fast float %6100, %6099
  %6102 = fsub fast float 1.000000e+00, %6101
  br label %6103

; <label>:6103                                    ; preds = %6032, %5744, %5709, %5705, %5669
  %6104 = phi float [ 1.000000e+00, %5669 ], [ %6102, %6032 ], [ 1.000000e+00, %5709 ], [ 1.000000e+00, %5744 ], [ 1.000000e+00, %5705 ]
  %6105 = fcmp fast ogt float %5701, 0.000000e+00
  br i1 %6105, label %6106, label %6114, !dx.controlflow.hints !117

; <label>:6106                                    ; preds = %6103
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6109 = fadd fast float %6108, %5582
  %6110 = call float @dx.op.binary.f32(i32 35, float %6109, float 0.000000e+00)  ; FMax(a,b)
  %6111 = fadd fast float %6110, 0x3F10000000000000
  %6112 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5600, float %5601, float undef, float undef, i32 0, i32 0, i32 undef, float %6111)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  br label %6114

; <label>:6114                                    ; preds = %6106, %6103
  %6115 = phi float [ %6113, %6106 ], [ 1.000000e+00, %6103 ]
  %6116 = fcmp fast ogt float %5699, 0.000000e+00
  br i1 %6116, label %6117, label %6125, !dx.controlflow.hints !118

; <label>:6117                                    ; preds = %6114
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6120 = fadd fast float %6119, %5582
  %6121 = call float @dx.op.binary.f32(i32 35, float %6120, float 0.000000e+00)  ; FMax(a,b)
  %6122 = fadd fast float %6121, 0x3F10000000000000
  %6123 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5592, float %5593, float undef, float undef, i32 0, i32 0, i32 undef, float %6122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  br label %6125

; <label>:6125                                    ; preds = %6117, %6114
  %6126 = phi float [ %6124, %6117 ], [ 1.000000e+00, %6114 ]
  %6127 = fcmp fast ogt float %5698, 0.000000e+00
  br i1 %6127, label %6128, label %6140, !dx.controlflow.hints !119

; <label>:6128                                    ; preds = %6125
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = fadd fast float %6130, %5582
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = fadd fast float %6132, 0x3F10000000000000
  br i1 %5585, label %6134, label %6137, !dx.controlflow.hints !120

; <label>:6134                                    ; preds = %6128
  %6135 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5574, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float %6133)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  br label %6140

; <label>:6137                                    ; preds = %6128
  %6138 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5574, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float %6133)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  br label %6140

; <label>:6140                                    ; preds = %6137, %6134, %6125
  %6141 = phi float [ %6136, %6134 ], [ %6139, %6137 ], [ 1.000000e+00, %6125 ]
  %6142 = fsub fast float %6115, %6104
  %6143 = fmul fast float %6142, %5671
  %6144 = fadd fast float %6143, %6104
  %6145 = fsub fast float %6126, %6144
  %6146 = fmul fast float %6145, %5670
  %6147 = fadd fast float %6146, %6144
  %6148 = fsub fast float %6141, %6147
  %6149 = fmul fast float %6148, %5698
  %6150 = fadd fast float %6149, %6147
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6153 = fcmp fast ogt float %6152, 0.000000e+00
  br i1 %6153, label %6154, label %6194, !dx.controlflow.hints !121

; <label>:6154                                    ; preds = %6140
  %6155 = fcmp fast ugt float %6152, 0.000000e+00
  br i1 %6155, label %6156, label %6191

; <label>:6156                                    ; preds = %6154
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6167 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6173 = fadd fast float %6170, %5551
  %6174 = fadd fast float %6171, %5552
  %6175 = fadd fast float %6172, %5553
  %6176 = fmul fast float %6173, %6158
  %6177 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6174, float %6176)  ; FMad(a,b,c)
  %6178 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6175, float %6177)  ; FMad(a,b,c)
  %6179 = fadd fast float %6178, %6161
  %6180 = fmul fast float %6173, %6163
  %6181 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6174, float %6180)  ; FMad(a,b,c)
  %6182 = call float @dx.op.tertiary.f32(i32 46, float %6165, float %6175, float %6181)  ; FMad(a,b,c)
  %6183 = fadd fast float %6182, %6166
  %6184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6179, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = fmul fast float %6185, %6168
  %6187 = fadd fast float %6186, %6167
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = fmul fast float %6188, %6152
  %6190 = fsub fast float 1.000000e+00, %6189
  br label %6191

; <label>:6191                                    ; preds = %6156, %6154
  %6192 = phi float [ %6190, %6156 ], [ 1.000000e+00, %6154 ]
  %6193 = fmul fast float %6192, %6150
  br label %6194

; <label>:6194                                    ; preds = %6191, %6140, %5531
  %6195 = phi float [ 1.000000e+00, %5531 ], [ %6193, %6191 ], [ %6150, %6140 ]
  %6196 = call float @dx.op.binary.f32(i32 36, float %6195, float %6195)  ; FMin(a,b)
  %6197 = call float @dx.op.binary.f32(i32 36, float %6195, float %6196)  ; FMin(a,b)
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  br i1 %6198, label %6199, label %6359, !dx.controlflow.hints !122

; <label>:6199                                    ; preds = %6194
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6200, 2
  %6204 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = fmul fast float %6201, %5551
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %6202, float %6215)  ; FMad(a,b,c)
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %6203, float %6216)  ; FMad(a,b,c)
  %6218 = fadd fast float %6217, %6204
  %6219 = fmul fast float %6206, %5551
  %6220 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %6207, float %6219)  ; FMad(a,b,c)
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %6208, float %6220)  ; FMad(a,b,c)
  %6222 = fadd fast float %6221, %6209
  %6223 = fmul fast float %6211, %5551
  %6224 = call float @dx.op.tertiary.f32(i32 46, float %5552, float %6212, float %6223)  ; FMad(a,b,c)
  %6225 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %6213, float %6224)  ; FMad(a,b,c)
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6230 = fmul fast float %6229, %6218
  %6231 = fmul fast float %6229, %6222
  %6232 = fadd fast float %6230, %6227
  %6233 = fadd fast float %6231, %6228
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = fsub fast float %6232, %6235
  %6238 = fsub fast float %6233, %6236
  %6239 = fcmp fast olt float %6237, 0.000000e+00
  %6240 = fcmp fast olt float %6238, 0.000000e+00
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = select i1 %6239, float %6242, float %6244
  %6247 = select i1 %6240, float %6243, float %6245
  %6248 = fmul fast float %6246, %6237
  %6249 = fmul fast float %6247, %6238
  %6250 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6251 = call float @dx.op.unary.f32(i32 6, float %6249)  ; FAbs(value)
  %6252 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %6253 = call float @dx.op.binary.f32(i32 35, float %6250, float %6251)  ; FMax(a,b)
  %6254 = fsub fast float %6252, %6253
  %6255 = call float @dx.op.unary.f32(i32 7, float %6254)  ; Saturate(value)
  %6256 = fcmp fast ogt float %6255, 0.000000e+00
  br i1 %6256, label %6257, label %6298, !dx.controlflow.hints !123

; <label>:6257                                    ; preds = %6199
  %6258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6232, float %6233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6260 = fcmp fast ogt float %6259, 0.000000e+00
  br i1 %6260, label %6261, label %6293

; <label>:6261                                    ; preds = %6257
  %6262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6232, float %6233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.ResRet.f32 %6262, 3
  %6267 = fsub fast float 1.000000e+00, %6214
  %6268 = fsub fast float %6267, %6225
  %6269 = fmul fast float %6268, 0x400921FB60000000
  %6270 = fadd fast float %6269, 0x3FF921FB60000000
  %6271 = call float @dx.op.unary.f32(i32 13, float %6270)  ; Sin(value)
  %6272 = fadd fast float %6271, -1.000000e+00
  %6273 = fmul fast float %6272, 0x3FD45F3060000000
  %6274 = fmul fast float %6268, 0x401921FB60000000
  %6275 = fadd fast float %6274, 0x400921FB60000000
  %6276 = call float @dx.op.unary.f32(i32 13, float %6275)  ; Sin(value)
  %6277 = fadd fast float %6276, 0x3E7777A5C0000000
  %6278 = fmul fast float %6277, 0x3FC45F3060000000
  %6279 = fmul fast float %6268, 0x4022D97C80000000
  %6280 = fadd fast float %6279, 0x4012D97C80000000
  %6281 = call float @dx.op.unary.f32(i32 13, float %6280)  ; Sin(value)
  %6282 = fadd fast float %6281, 1.000000e+00
  %6283 = fmul fast float %6282, 0x3FBB2995E0000000
  %6284 = fmul fast float %6268, 0x402921FB60000000
  %6285 = fadd fast float %6284, 0x401921FB60000000
  %6286 = call float @dx.op.unary.f32(i32 13, float %6285)  ; Sin(value)
  %6287 = fadd fast float %6286, 0xBE8777A5C0000000
  %6288 = fmul fast float %6287, 0x3FB45F3060000000
  %6289 = call float @dx.op.dot4.f32(i32 56, float %6263, float %6264, float %6265, float %6266, float %6273, float %6278, float %6283, float %6288)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6290 = fmul fast float %6289, 0xBFF7154760000000
  %6291 = call float @dx.op.unary.f32(i32 21, float %6290)  ; Exp(value)
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  br label %6293

; <label>:6293                                    ; preds = %6261, %6257
  %6294 = phi float [ %6292, %6261 ], [ 1.000000e+00, %6257 ]
  %6295 = fadd fast float %6294, -1.000000e+00
  %6296 = fmul fast float %6295, %6255
  %6297 = fadd fast float %6296, 1.000000e+00
  br label %6298

; <label>:6298                                    ; preds = %6293, %6199
  %6299 = phi float [ %6297, %6293 ], [ 1.000000e+00, %6199 ]
  %6300 = fmul fast float %6299, %6195
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6305 = fadd fast float %6302, %195
  %6306 = fadd fast float %6303, %196
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6309 = fsub fast float -0.000000e+00, %6305
  %6310 = fsub fast float -0.000000e+00, %6306
  %6311 = fsub fast float %5307, %6304
  %6312 = fadd fast float %6311, %6308
  %6313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6309, float %6310, float %6312)  ; Dot3(ax,ay,az,bx,by,bz)
  %6314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5532, float %5533, float %5534)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = fdiv fast float 1.000000e+00, %6314
  %6316 = fmul fast float %6315, %6313
  %6317 = fmul fast float %5532, %6316
  %6318 = fmul fast float %5533, %6316
  %6319 = fadd fast float %6317, %6305
  %6320 = fadd fast float %6318, %6306
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = fsub fast float %6319, %6322
  %6325 = fsub fast float %6320, %6323
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6329 = fmul fast float %6324, %6327
  %6330 = fmul fast float %6325, %6328
  %6331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.i32 %6331, 3
  %6333 = icmp eq i32 %6332, 0
  br i1 %6333, label %6339, label %6334

; <label>:6334                                    ; preds = %6298
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6329, float %6330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.ResRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.ResRet.f32 %6335, 2
  br label %6344

; <label>:6339                                    ; preds = %6298
  %6340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6329, float %6330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.ResRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.ResRet.f32 %6340, 2
  br label %6344

; <label>:6344                                    ; preds = %6339, %6334
  %6345 = phi float [ %6336, %6334 ], [ %6341, %6339 ]
  %6346 = phi float [ %6337, %6334 ], [ %6342, %6339 ]
  %6347 = phi float [ %6338, %6334 ], [ %6343, %6339 ]
  %6348 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6349 = fmul fast float %6348, %6345
  %6350 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6351 = fsub fast float %6316, %6350
  %6352 = fsub fast float %6351, %6349
  %6353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6352)  ; FMax(a,b)
  %6354 = fmul fast float %6353, %6346
  %6355 = call float @dx.op.binary.f32(i32 36, float %6347, float %6354)  ; FMin(a,b)
  %6356 = fmul fast float %6355, 0xBFF7154760000000
  %6357 = call float @dx.op.unary.f32(i32 21, float %6356)  ; Exp(value)
  %6358 = fmul fast float %6300, %6357
  br label %6359

; <label>:6359                                    ; preds = %6344, %6194
  %6360 = phi float [ %6358, %6344 ], [ %6195, %6194 ]
  %6361 = call float @dx.op.binary.f32(i32 36, float %6360, float %6360)  ; FMin(a,b)
  %6362 = call float @dx.op.binary.f32(i32 36, float %6360, float %6361)  ; FMin(a,b)
  %6363 = fcmp fast ogt float %6362, 0.000000e+00
  br i1 %6363, label %6364, label %6615, !dx.controlflow.hints !124

; <label>:6364                                    ; preds = %6359
  %6365 = fmul fast float %6360, %5543
  %6366 = fmul fast float %6360, %5544
  %6367 = fmul fast float %6360, %5545
  %6368 = fsub fast float %197, %4484
  %6369 = fcmp fast ogt float %6368, 0.000000e+00
  %6370 = fmul fast float %5532, 5.120000e+02
  %6371 = fmul fast float %5533, 5.120000e+02
  %6372 = fmul fast float %5534, 5.120000e+02
  %6373 = fadd fast float %6372, %197
  %6374 = fsub fast float %4484, %6373
  %6375 = fmul fast float %6374, 2.000000e+00
  %6376 = fadd fast float %6375, %6373
  %6377 = select i1 %6369, float %6376, float %6373
  %6378 = fsub fast float %6377, %197
  %6379 = call float @dx.op.dot3.f32(i32 55, float %6370, float %6371, float %6378, float %6370, float %6371, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = call float @dx.op.unary.f32(i32 25, float %6379)  ; Rsqrt(value)
  %6381 = fmul fast float %6380, %6370
  %6382 = fmul fast float %6380, %6371
  %6383 = fmul fast float %6380, %6378
  %6384 = fsub fast float %4484, %197
  %6385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6384)  ; Dot3(ax,ay,az,bx,by,bz)
  %6386 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6381, float %6382, float %6383)  ; Dot3(ax,ay,az,bx,by,bz)
  %6387 = fdiv fast float 1.000000e+00, %6386
  %6388 = fmul fast float %6387, %6385
  %6389 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6368, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = fcmp fast ogt float %6389, 0.000000e+00
  %6391 = fcmp fast olt float %6389, 0.000000e+00
  %6392 = zext i1 %6390 to i32
  %6393 = zext i1 %6391 to i32
  %6394 = sub nsw i32 %6392, %6393
  %6395 = sitofp i32 %6394 to float
  %6396 = fsub fast float %6377, %4484
  %6397 = call float @dx.op.dot3.f32(i32 55, float %6370, float %6371, float %6396, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = fcmp fast ogt float %6397, 0.000000e+00
  %6399 = fcmp fast olt float %6397, 0.000000e+00
  %6400 = zext i1 %6398 to i32
  %6401 = zext i1 %6399 to i32
  %6402 = sub nsw i32 %6400, %6401
  %6403 = sitofp i32 %6402 to float
  %6404 = fcmp fast une float %6395, %6403
  br i1 %6404, label %6405, label %6415

; <label>:6405                                    ; preds = %6364
  %6406 = fmul fast float %6388, %6383
  %6407 = fmul fast float %6388, %6382
  %6408 = fmul fast float %6388, %6381
  %6409 = fmul fast float %6408, %6408
  %6410 = fmul fast float %6407, %6407
  %6411 = fadd fast float %6409, %6410
  %6412 = fmul fast float %6406, %6406
  %6413 = fadd fast float %6411, %6412
  %6414 = call float @dx.op.unary.f32(i32 24, float %6413)  ; Sqrt(value)
  br label %6425

; <label>:6415                                    ; preds = %6364
  %6416 = icmp slt i32 %6394, 0
  br i1 %6416, label %6417, label %6425

; <label>:6417                                    ; preds = %6415
  %6418 = fsub fast float %197, %6377
  %6419 = fmul fast float %6370, %6370
  %6420 = fmul fast float %6371, %6371
  %6421 = fadd fast float %6419, %6420
  %6422 = fmul fast float %6418, %6418
  %6423 = fadd fast float %6421, %6422
  %6424 = call float @dx.op.unary.f32(i32 24, float %6423)  ; Sqrt(value)
  br label %6425

; <label>:6425                                    ; preds = %6417, %6415, %6405
  %6426 = phi float [ %6414, %6405 ], [ %6424, %6417 ], [ 0.000000e+00, %6415 ]
  %6427 = fsub fast float -0.000000e+00, %6426
  %6428 = select i1 %6369, float -0.000000e+00, float %6427
  %6429 = fmul fast float %4485, 0x3FF7154760000000
  %6430 = fmul fast float %6429, %6428
  %6431 = fmul fast float %4486, 0x3FF7154760000000
  %6432 = fmul fast float %6431, %6428
  %6433 = fmul fast float %4487, 0x3FF7154760000000
  %6434 = fmul fast float %6433, %6428
  %6435 = call float @dx.op.unary.f32(i32 21, float %6430)  ; Exp(value)
  %6436 = call float @dx.op.unary.f32(i32 21, float %6432)  ; Exp(value)
  %6437 = call float @dx.op.unary.f32(i32 21, float %6434)  ; Exp(value)
  %6438 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  %6439 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6440 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6441 = fmul fast float %6365, %6438
  %6442 = fmul fast float %6366, %6439
  %6443 = fmul fast float %6367, %6440
  %6444 = fsub fast float %5532, %5310
  %6445 = fsub fast float %5533, %5311
  %6446 = fsub fast float %5534, %5312
  %6447 = call float @dx.op.dot3.f32(i32 55, float %6444, float %6445, float %6446, float %6444, float %6445, float %6446)  ; Dot3(ax,ay,az,bx,by,bz)
  %6448 = call float @dx.op.unary.f32(i32 25, float %6447)  ; Rsqrt(value)
  %6449 = fmul fast float %6448, %6444
  %6450 = fmul fast float %6448, %6445
  %6451 = fmul fast float %6448, %6446
  %6452 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5264, float %5265, float %5266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6454 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6455 = fmul fast float %6454, %6454
  %6456 = fmul fast float %6455, %5331
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = fmul fast float %6457, %6454
  %6459 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = fmul fast float %6459, %6459
  %6461 = call float @dx.op.unary.f32(i32 6, float %6452)  ; FAbs(value)
  %6462 = fsub fast float 1.000000e+00, %5273
  %6463 = call float @dx.op.binary.f32(i32 35, float %6462, float 0x3F847AE140000000)  ; FMax(a,b)
  %6464 = fmul fast float %6463, %6463
  %6465 = fmul fast float %6464, %6464
  %6466 = fsub fast float 1.000000e+00, %6465
  %6467 = fmul fast float %5318, %5318
  %6468 = fmul fast float %6467, %6466
  %6469 = fadd fast float %6468, %6465
  %6470 = bitcast float %6469 to i32
  %6471 = ashr i32 %6470, 1
  %6472 = add nsw i32 %6471, 532487669
  %6473 = bitcast i32 %6472 to float
  %6474 = fadd fast float %6473, %5318
  %6475 = fmul fast float %6465, %6460
  %6476 = fsub fast float 1.000000e+00, %6460
  %6477 = fadd fast float %6476, %6475
  %6478 = fmul fast float %6461, %6461
  %6479 = fmul fast float %6478, %6466
  %6480 = fadd fast float %6479, %6465
  %6481 = bitcast float %6480 to i32
  %6482 = ashr i32 %6481, 1
  %6483 = add nsw i32 %6482, 532487669
  %6484 = bitcast i32 %6483 to float
  %6485 = fadd fast float %6484, %6461
  %6486 = fmul fast float %6477, %6477
  %6487 = fmul fast float %6486, %6474
  %6488 = fmul fast float %6487, %6485
  %6489 = fdiv fast float 0x3FF0A00000000000, %6488
  %6490 = fmul fast float %6489, %6465
  %6491 = call float @dx.op.unary.f32(i32 6, float %6453)  ; FAbs(value)
  %6492 = fsub fast float 1.000000e+00, %6491
  %6493 = bitcast float %6492 to i32
  %6494 = sitofp i32 %6493 to float
  %6495 = fmul fast float %6494, 5.000000e+00
  %6496 = fadd fast float %6495, 0xC1EFBF8940000000
  %6497 = fptosi float %6496 to i32
  %6498 = bitcast i32 %6497 to float
  %6499 = fsub fast float 1.000000e+00, %5270
  %6500 = fsub fast float 1.000000e+00, %5271
  %6501 = fsub fast float 1.000000e+00, %5316
  %6502 = fmul fast float %6498, %6499
  %6503 = fmul fast float %6498, %6500
  %6504 = fmul fast float %6498, %6501
  %6505 = fadd fast float %6502, %5270
  %6506 = fadd fast float %6503, %5271
  %6507 = fadd fast float %6504, %5316
  br i1 %5443, label %6508, label %6531

; <label>:6508                                    ; preds = %6425
  %6509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4083, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = fadd fast float %6510, -5.000000e-01
  %6514 = fadd fast float %6511, -5.000000e-01
  %6515 = fadd fast float %6512, -5.000000e-01
  %6516 = fmul fast float %5270, 4.000000e+00
  %6517 = fmul fast float %6516, %6499
  %6518 = fmul fast float %6517, %6513
  %6519 = fmul fast float %5271, 4.000000e+00
  %6520 = fmul fast float %6519, %6500
  %6521 = fmul fast float %6520, %6514
  %6522 = fmul fast float %5316, 4.000000e+00
  %6523 = fmul fast float %6522, %6501
  %6524 = fmul fast float %6523, %6515
  %6525 = fadd fast float %6518, %6505
  %6526 = fadd fast float %6521, %6506
  %6527 = fadd fast float %6524, %6507
  %6528 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6529 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6530 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  br label %6531

; <label>:6531                                    ; preds = %6508, %6425
  %6532 = phi float [ %6528, %6508 ], [ %6505, %6425 ]
  %6533 = phi float [ %6529, %6508 ], [ %6506, %6425 ]
  %6534 = phi float [ %6530, %6508 ], [ %6507, %6425 ]
  %6535 = fmul fast float %6452, 9.843750e-01
  %6536 = fadd fast float %6535, 7.812500e-03
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6536, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 2
  %6539 = extractvalue %dx.types.ResRet.f32 %6537, 3
  %6540 = fmul fast float %6538, %5270
  %6541 = fmul fast float %6538, %5271
  %6542 = fmul fast float %6538, %5316
  %6543 = fadd fast float %6540, %6539
  %6544 = fadd fast float %6541, %6539
  %6545 = fadd fast float %6542, %6539
  br i1 %5443, label %6546, label %6569

; <label>:6546                                    ; preds = %6531
  %6547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4083, float %6452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6548 = extractvalue %dx.types.ResRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.ResRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.ResRet.f32 %6547, 2
  %6551 = fadd fast float %6548, -5.000000e-01
  %6552 = fadd fast float %6549, -5.000000e-01
  %6553 = fadd fast float %6550, -5.000000e-01
  %6554 = fmul fast float %5270, 4.000000e+00
  %6555 = fmul fast float %6554, %6499
  %6556 = fmul fast float %6555, %6551
  %6557 = fmul fast float %5271, 4.000000e+00
  %6558 = fmul fast float %6557, %6500
  %6559 = fmul fast float %6558, %6552
  %6560 = fmul fast float %5316, 4.000000e+00
  %6561 = fmul fast float %6560, %6501
  %6562 = fmul fast float %6561, %6553
  %6563 = fadd fast float %6556, %6543
  %6564 = fadd fast float %6559, %6544
  %6565 = fadd fast float %6562, %6545
  %6566 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6567 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6568 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  br label %6569

; <label>:6569                                    ; preds = %6546, %6531
  %6570 = phi float [ %6566, %6546 ], [ %6543, %6531 ]
  %6571 = phi float [ %6567, %6546 ], [ %6544, %6531 ]
  %6572 = phi float [ %6568, %6546 ], [ %6545, %6531 ]
  %6573 = call float @dx.op.binary.f32(i32 35, float %6571, float %6572)  ; FMax(a,b)
  %6574 = call float @dx.op.binary.f32(i32 35, float %6570, float %6573)  ; FMax(a,b)
  %6575 = fsub fast float 1.000000e+00, %6574
  %6576 = fmul fast float %6532, %6490
  %6577 = fmul fast float %6533, %6490
  %6578 = fmul fast float %6534, %6490
  %6579 = fsub fast float 1.000000e+00, %6453
  %6580 = bitcast float %6579 to i32
  %6581 = sitofp i32 %6580 to float
  %6582 = fmul fast float %6581, 5.000000e+00
  %6583 = fadd fast float %6582, 0xC1EFBF8940000000
  %6584 = fptosi float %6583 to i32
  %6585 = bitcast i32 %6584 to float
  %6586 = fmul fast float %6585, %4084
  %6587 = fmul fast float %6575, %6586
  %6588 = fmul fast float %6587, %5493
  %6589 = fmul fast float %6587, %5494
  %6590 = fmul fast float %6587, %5495
  %6591 = fadd fast float %6588, %6576
  %6592 = fadd fast float %6589, %6577
  %6593 = fadd fast float %6590, %6578
  %6594 = fmul fast float %6458, %6441
  %6595 = fmul fast float %6594, %6575
  %6596 = fmul fast float %6458, %6442
  %6597 = fmul fast float %6596, %6575
  %6598 = fmul fast float %6458, %6443
  %6599 = fmul fast float %6598, %6575
  %6600 = fmul fast float %6594, %6591
  %6601 = fmul fast float %6596, %6592
  %6602 = fmul fast float %6598, %6593
  %6603 = fadd fast float %6595, %5477
  %6604 = fmul fast float %6603, %4080
  %6605 = fadd fast float %6597, %5478
  %6606 = fmul fast float %6605, %4080
  %6607 = fadd fast float %6599, %5479
  %6608 = fmul fast float %6607, %4080
  %6609 = fadd fast float %6600, %5520
  %6610 = fmul fast float %6609, %4080
  %6611 = fadd fast float %6601, %5523
  %6612 = fmul fast float %6611, %4080
  %6613 = fadd fast float %6602, %5526
  %6614 = fmul fast float %6613, %4080
  br label %6615

; <label>:6615                                    ; preds = %6569, %6359, %5470
  %6616 = phi float [ %5521, %5470 ], [ %5521, %6359 ], [ %6610, %6569 ]
  %6617 = phi float [ %5524, %5470 ], [ %5524, %6359 ], [ %6612, %6569 ]
  %6618 = phi float [ %5527, %5470 ], [ %5527, %6359 ], [ %6614, %6569 ]
  %6619 = phi float [ %5516, %5470 ], [ %5516, %6359 ], [ %6604, %6569 ]
  %6620 = phi float [ %5517, %5470 ], [ %5517, %6359 ], [ %6606, %6569 ]
  %6621 = phi float [ %5518, %5470 ], [ %5518, %6359 ], [ %6608, %6569 ]
  %6622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.i32 %6622, 0
  %6624 = icmp eq i32 %6623, 0
  br i1 %6624, label %7245, label %6625

; <label>:6625                                    ; preds = %6615
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 3
  %6629 = fmul fast float %6627, %108
  %6630 = fmul fast float %6628, %109
  %6631 = fptoui float %6629 to i32
  %6632 = fptoui float %6630 to i32
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6637 = fadd fast float %99, -4.000000e+00
  %6638 = call float @dx.op.binary.f32(i32 35, float %6637, float 0.000000e+00)  ; FMax(a,b)
  %6639 = fadd fast float %6638, %6634
  %6640 = fmul fast float %6639, %6635
  %6641 = call float @dx.op.unary.f32(i32 23, float %6640)  ; Log(value)
  %6642 = fmul fast float %6641, %6636
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 2
  %6645 = fmul fast float %6642, %6644
  %6646 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.i32 %6647, 1
  %6649 = add i32 %6648, -1
  %6650 = uitofp i32 %6648 to float
  %6651 = fmul fast float %6650, %6646
  %6652 = fptoui float %6651 to i32
  %6653 = call i32 @dx.op.binary.i32(i32 40, i32 %6652, i32 %6649)  ; UMin(a,b)
  %6654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.i32 %6654, 2
  %6656 = extractvalue %dx.types.CBufRet.i32 %6654, 3
  %6657 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6632, i32 %6655, i32 %6631)  ; UMad(a,b,c)
  %6658 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6653, i32 %6656, i32 %6657)  ; UMad(a,b,c)
  %6659 = add nsw i32 %6623, -1
  %6660 = call i32 @dx.op.binary.i32(i32 37, i32 %6659, i32 0)  ; IMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6662 = fptoui float %6661 to i32
  %6663 = lshr i32 %6662, 5
  %6664 = call i32 @dx.op.binary.i32(i32 40, i32 %6663, i32 8191)  ; UMin(a,b)
  %6665 = shl i32 %6664, 2
  %6666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6665, i32 undef)  ; BufferLoad(srv,index,wot)
  %6667 = extractvalue %dx.types.ResRet.i32 %6666, 0
  %6668 = lshr i32 %6667, 16
  %6669 = and i32 %6667, 65535
  %6670 = lshr i32 %6667, 21
  %6671 = lshr i32 %6669, 5
  %6672 = call i32 @dx.op.binary.i32(i32 40, i32 %6671, i32 %6660)  ; UMin(a,b)
  %6673 = icmp ugt i32 %6670, %6672
  br i1 %6673, label %7245, label %6674

; <label>:6674                                    ; preds = %6625
  br label %6675

; <label>:6675                                    ; preds = %7235, %6674
  %6676 = phi i32 [ %7242, %7235 ], [ %6670, %6674 ]
  %6677 = phi float [ %7236, %7235 ], [ %6616, %6674 ]
  %6678 = phi float [ %7237, %7235 ], [ %6617, %6674 ]
  %6679 = phi float [ %7238, %7235 ], [ %6618, %6674 ]
  %6680 = phi float [ %7239, %7235 ], [ %6619, %6674 ]
  %6681 = phi float [ %7240, %7235 ], [ %6620, %6674 ]
  %6682 = phi float [ %7241, %7235 ], [ %6621, %6674 ]
  %6683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.i32 %6683, 0
  %6685 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6658, i32 %6684, i32 %6676)  ; UMad(a,b,c)
  %6686 = shl i32 %6685, 2
  %6687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6686, i32 undef)  ; BufferLoad(srv,index,wot)
  %6688 = extractvalue %dx.types.ResRet.i32 %6687, 0
  %6689 = shl i32 %6676, 5
  %6690 = sub nsw i32 %6668, %6689
  %6691 = call i32 @dx.op.binary.i32(i32 37, i32 %6690, i32 0)  ; IMax(a,b)
  %6692 = call i32 @dx.op.binary.i32(i32 38, i32 %6691, i32 31)  ; IMin(a,b)
  %6693 = sub nsw i32 1, %6668
  %6694 = add nsw i32 %6693, %6669
  %6695 = call i32 @dx.op.binary.i32(i32 37, i32 %6694, i32 0)  ; IMax(a,b)
  %6696 = call i32 @dx.op.binary.i32(i32 38, i32 %6695, i32 32)  ; IMin(a,b)
  %6697 = and i32 %6696, 31
  %6698 = shl i32 -1, %6697
  %6699 = xor i32 %6698, -1
  %6700 = and i32 %6692, 31
  %6701 = shl i32 %6699, %6700
  %6702 = icmp eq i32 %6696, 32
  %6703 = select i1 %6702, i32 -1, i32 %6701
  %6704 = and i32 %6703, %6688
  %6705 = icmp eq i32 %6704, 0
  br i1 %6705, label %7235, label %6706

; <label>:6706                                    ; preds = %6675
  br label %6707

; <label>:6707                                    ; preds = %6841, %6706
  %6708 = phi i32 [ %6719, %6841 ], [ %6704, %6706 ]
  %6709 = phi float [ %6842, %6841 ], [ %6677, %6706 ]
  %6710 = phi float [ %6843, %6841 ], [ %6678, %6706 ]
  %6711 = phi float [ %6844, %6841 ], [ %6679, %6706 ]
  %6712 = phi float [ %6845, %6841 ], [ %6680, %6706 ]
  %6713 = phi float [ %6846, %6841 ], [ %6681, %6706 ]
  %6714 = phi float [ %6847, %6841 ], [ %6682, %6706 ]
  %6715 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6708)  ; FirstbitLo(value)
  %6716 = add i32 %6715, %6689
  %6717 = and i32 %6715, 31
  %6718 = shl i32 1, %6717
  %6719 = xor i32 %6718, %6708
  %6720 = mul i32 %6716, 112
  %6721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6720, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.ResRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.ResRet.f32 %6721, 2
  %6725 = or i32 %6720, 12
  %6726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6725, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  %6728 = add i32 %6720, 16
  %6729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6728, i32 undef)  ; BufferLoad(srv,index,wot)
  %6730 = extractvalue %dx.types.ResRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.ResRet.f32 %6729, 1
  %6732 = extractvalue %dx.types.ResRet.f32 %6729, 2
  %6733 = add i32 %6720, 28
  %6734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6733, i32 undef)  ; BufferLoad(srv,index,wot)
  %6735 = extractvalue %dx.types.ResRet.i32 %6734, 0
  %6736 = add i32 %6720, 44
  %6737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6736, i32 undef)  ; BufferLoad(srv,index,wot)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = add i32 %6720, 48
  %6740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6739, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.ResRet.f32 %6740, 2
  %6744 = extractvalue %dx.types.ResRet.f32 %6740, 3
  %6745 = add i32 %6720, 64
  %6746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6745, i32 undef)  ; BufferLoad(srv,index,wot)
  %6747 = extractvalue %dx.types.ResRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.ResRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.ResRet.f32 %6746, 2
  %6750 = extractvalue %dx.types.ResRet.f32 %6746, 3
  %6751 = add i32 %6720, 80
  %6752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6751, i32 undef)  ; BufferLoad(srv,index,wot)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6752, 2
  %6755 = add i32 %6720, 92
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6755, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = call float @dx.op.dot3.f32(i32 55, float %6722, float %6723, float %6724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6759 = select i1 %267, float %6753, float %6722
  %6760 = select i1 %267, float %6758, float %6723
  %6761 = select i1 %267, float %6754, float %6724
  %6762 = and i32 %6757, 65535
  %6763 = uitofp i32 %6762 to float
  %6764 = lshr i32 %6757, 16
  %6765 = uitofp i32 %6764 to float
  %6766 = and i32 %6735, 65535
  %6767 = and i32 %6735, 50331648
  %6768 = icmp eq i32 %6767, 33554432
  %6769 = fsub fast float %6741, %195
  %6770 = fsub fast float %6742, %196
  %6771 = fsub fast float %6743, %197
  %6772 = call float @dx.op.dot3.f32(i32 55, float %6769, float %6770, float %6771, float %6769, float %6770, float %6771)  ; Dot3(ax,ay,az,bx,by,bz)
  %6773 = call float @dx.op.unary.f32(i32 24, float %6772)  ; Sqrt(value)
  %6774 = fdiv fast float 1.000000e+00, %6773
  %6775 = fmul fast float %6774, %6769
  %6776 = fmul fast float %6774, %6770
  %6777 = fmul fast float %6774, %6771
  %6778 = fadd fast float %6773, %6727
  %6779 = fdiv fast float 1.000000e+00, %6778
  %6780 = fmul float %6738, %6779
  %6781 = fmul float %6780, %6780
  %6782 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  br i1 %6768, label %6783, label %6804

; <label>:6783                                    ; preds = %6707
  %6784 = fmul fast float %6749, %6730
  %6785 = fmul fast float %6749, %6731
  %6786 = fmul fast float %6749, %6732
  %6787 = fadd fast float %6769, %6784
  %6788 = fadd fast float %6770, %6785
  %6789 = fadd fast float %6771, %6786
  %6790 = call float @dx.op.dot3.f32(i32 55, float %6787, float %6788, float %6789, float %6787, float %6788, float %6789)  ; Dot3(ax,ay,az,bx,by,bz)
  %6791 = call float @dx.op.unary.f32(i32 25, float %6790)  ; Rsqrt(value)
  %6792 = fmul fast float %6791, %6787
  %6793 = fmul fast float %6791, %6788
  %6794 = fmul fast float %6791, %6789
  %6795 = fsub fast float %195, %6741
  %6796 = fsub fast float %196, %6742
  %6797 = fsub fast float %197, %6743
  %6798 = fsub fast float -0.000000e+00, %6795
  %6799 = fsub fast float -0.000000e+00, %6796
  %6800 = fsub fast float -0.000000e+00, %6797
  %6801 = call float @dx.op.dot3.f32(i32 55, float %6798, float %6799, float %6800, float %6730, float %6731, float %6732)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = fcmp fast ogt float %6801, 0.000000e+00
  %6803 = uitofp i1 %6802 to float
  br label %6804

; <label>:6804                                    ; preds = %6783, %6707
  %6805 = phi float [ %6803, %6783 ], [ 1.000000e+00, %6707 ]
  %6806 = phi float [ %6792, %6783 ], [ %6775, %6707 ]
  %6807 = phi float [ %6793, %6783 ], [ %6776, %6707 ]
  %6808 = phi float [ %6794, %6783 ], [ %6777, %6707 ]
  %6809 = call float @dx.op.dot3.f32(i32 55, float %6730, float %6731, float %6732, float %6806, float %6807, float %6808)  ; Dot3(ax,ay,az,bx,by,bz)
  %6810 = fmul fast float %6809, %6809
  %6811 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  %6812 = fsub fast float 1.000000e+00, %6811
  %6813 = fmul fast float %6812, 5.000000e-01
  %6814 = fcmp fast ogt float %6809, 0.000000e+00
  %6815 = fsub fast float 1.000000e+00, %6813
  %6816 = select i1 %6814, float %6813, float %6815
  %6817 = fmul fast float %6816, %6765
  %6818 = fadd fast float %6817, %6763
  %6819 = fmul fast float %6818, 0x3EF0001000000000
  %6820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6819, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = fmul fast float %6809, %6747
  %6823 = fadd fast float %6822, %6748
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = select i1 %6768, float 1.000000e+00, float %6824
  %6826 = select i1 %6768, float %6824, float 1.000000e+00
  %6827 = fmul fast float %6773, %6744
  %6828 = fsub fast float 1.000000e+00, %6827
  %6829 = fmul fast float %6828, %6750
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = fmul fast float %6830, %6826
  %6832 = fmul fast float %6831, 2.000000e+00
  %6833 = fsub fast float 3.000000e+00, %6832
  %6834 = fmul fast float %6821, %6805
  %6835 = fmul fast float %6831, %6831
  %6836 = fmul fast float %6835, %6834
  %6837 = fmul fast float %6836, %6833
  %6838 = call float @dx.op.binary.f32(i32 36, float %6837, float %6837)  ; FMin(a,b)
  %6839 = call float @dx.op.binary.f32(i32 36, float %6837, float %6838)  ; FMin(a,b)
  %6840 = fcmp fast ogt float %6839, 0.000000e+00
  br i1 %6840, label %6849, label %6841, !dx.controlflow.hints !125

; <label>:6841                                    ; preds = %7191, %6949, %6804
  %6842 = phi float [ %6709, %6949 ], [ %6709, %6804 ], [ %7231, %7191 ]
  %6843 = phi float [ %6710, %6949 ], [ %6710, %6804 ], [ %7232, %7191 ]
  %6844 = phi float [ %6711, %6949 ], [ %6711, %6804 ], [ %7233, %7191 ]
  %6845 = phi float [ %6712, %6949 ], [ %6712, %6804 ], [ %7225, %7191 ]
  %6846 = phi float [ %6713, %6949 ], [ %6713, %6804 ], [ %7226, %7191 ]
  %6847 = phi float [ %6714, %6949 ], [ %6714, %6804 ], [ %7227, %7191 ]
  %6848 = icmp eq i32 %6708, %6718
  br i1 %6848, label %7234, label %6707

; <label>:6849                                    ; preds = %6804
  %6850 = icmp eq i32 %6766, 255
  br i1 %6850, label %6949, label %6851, !dx.controlflow.hints !126

; <label>:6851                                    ; preds = %6849
  %6852 = mul nuw nsw i32 %6766, 176
  %6853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6852, i32 undef)  ; BufferLoad(srv,index,wot)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.ResRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.ResRet.f32 %6853, 2
  %6857 = extractvalue %dx.types.ResRet.f32 %6853, 3
  %6858 = add nuw nsw i32 %6852, 16
  %6859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6858, i32 undef)  ; BufferLoad(srv,index,wot)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.ResRet.f32 %6859, 1
  %6862 = add nuw nsw i32 %6852, 32
  %6863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6862, i32 undef)  ; BufferLoad(srv,index,wot)
  %6864 = extractvalue %dx.types.ResRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.ResRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.ResRet.f32 %6863, 2
  %6867 = add nuw nsw i32 %6852, 48
  %6868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6867, i32 undef)  ; BufferLoad(srv,index,wot)
  %6869 = extractvalue %dx.types.ResRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.ResRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.ResRet.f32 %6868, 2
  %6872 = extractvalue %dx.types.ResRet.f32 %6868, 3
  %6873 = add nuw nsw i32 %6852, 64
  %6874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6873, i32 undef)  ; BufferLoad(srv,index,wot)
  %6875 = extractvalue %dx.types.ResRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.ResRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.ResRet.f32 %6874, 2
  %6878 = extractvalue %dx.types.ResRet.f32 %6874, 3
  %6879 = add nuw nsw i32 %6852, 80
  %6880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6879, i32 undef)  ; BufferLoad(srv,index,wot)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.ResRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.ResRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.ResRet.f32 %6880, 3
  %6885 = add nuw nsw i32 %6852, 96
  %6886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6885, i32 undef)  ; BufferLoad(srv,index,wot)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.ResRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.ResRet.f32 %6886, 2
  %6890 = extractvalue %dx.types.ResRet.f32 %6886, 3
  %6891 = bitcast float %6861 to i32
  %6892 = fmul fast float %6866, %115
  %6893 = fmul fast float %6866, %116
  %6894 = fmul fast float %6866, %117
  %6895 = fadd fast float %6892, %195
  %6896 = fadd fast float %6893, %196
  %6897 = fadd fast float %6894, %197
  %6898 = fmul fast float %6895, %6869
  %6899 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6875, float %6898)  ; FMad(a,b,c)
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6897, float %6881, float %6899)  ; FMad(a,b,c)
  %6901 = fadd fast float %6900, %6887
  %6902 = fmul fast float %6895, %6870
  %6903 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6876, float %6902)  ; FMad(a,b,c)
  %6904 = call float @dx.op.tertiary.f32(i32 46, float %6897, float %6882, float %6903)  ; FMad(a,b,c)
  %6905 = fadd fast float %6904, %6888
  %6906 = fmul fast float %6895, %6871
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6877, float %6906)  ; FMad(a,b,c)
  %6908 = call float @dx.op.tertiary.f32(i32 46, float %6897, float %6883, float %6907)  ; FMad(a,b,c)
  %6909 = fadd fast float %6908, %6889
  %6910 = fmul fast float %6895, %6872
  %6911 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6878, float %6910)  ; FMad(a,b,c)
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %6897, float %6884, float %6911)  ; FMad(a,b,c)
  %6913 = fadd fast float %6912, %6890
  %6914 = fdiv fast float %6901, %6913
  %6915 = fdiv fast float %6905, %6913
  %6916 = fdiv fast float %6909, %6913
  %6917 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6916)  ; FMax(a,b)
  %6918 = fmul fast float %278, 0x401921FB60000000
  %6919 = call float @dx.op.unary.f32(i32 13, float %6918)  ; Sin(value)
  %6920 = call float @dx.op.unary.f32(i32 12, float %6918)  ; Cos(value)
  %6921 = fsub fast float -0.000000e+00, %6919
  %6922 = fmul fast float %6856, 5.000000e-01
  %6923 = call float @dx.op.dot2.f32(i32 54, float %278, float %278, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6924 = call float @dx.op.unary.f32(i32 22, float %6923)  ; Frc(value)
  %6925 = fmul fast float %6924, 0x404A7DD040000000
  %6926 = call float @dx.op.unary.f32(i32 22, float %6925)  ; Frc(value)
  %6927 = fmul fast float %6926, %6865
  %6928 = fadd fast float %6927, %6922
  %6929 = call float @dx.op.tertiary.f32(i32 46, float %6928, float %6921, float 0.000000e+00)  ; FMad(a,b,c)
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %6928, float %6920, float 0.000000e+00)  ; FMad(a,b,c)
  %6931 = fadd fast float %6929, %6914
  %6932 = fadd fast float %6930, %6915
  %6933 = fmul fast float %6931, %6860
  %6934 = fmul fast float %6932, %6860
  %6935 = call float @dx.op.binary.f32(i32 35, float %6933, float %6856)  ; FMax(a,b)
  %6936 = call float @dx.op.binary.f32(i32 35, float %6934, float %6856)  ; FMax(a,b)
  %6937 = call float @dx.op.binary.f32(i32 36, float %6935, float %6857)  ; FMin(a,b)
  %6938 = call float @dx.op.binary.f32(i32 36, float %6936, float %6857)  ; FMin(a,b)
  %6939 = fadd fast float %6937, %6854
  %6940 = fadd fast float %6938, %6855
  %6941 = uitofp i32 %6891 to float
  %6942 = fadd fast float %6917, %6864
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %6939, float %6940, float %6941, float undef, i32 0, i32 0, i32 undef, float %6942)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = fadd fast float %6944, -1.000000e+00
  %6946 = fmul fast float %6945, %6825
  %6947 = fadd fast float %6946, 1.000000e+00
  %6948 = fmul fast float %6947, %6837
  br label %6949

; <label>:6949                                    ; preds = %6851, %6849
  %6950 = phi float [ %6948, %6851 ], [ %6837, %6849 ]
  %6951 = call float @dx.op.binary.f32(i32 36, float %6950, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6950, float %6951)  ; FMin(a,b)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  br i1 %6953, label %6954, label %6841, !dx.controlflow.hints !127

; <label>:6954                                    ; preds = %6949
  %6955 = fmul fast float %6950, %6759
  %6956 = fmul fast float %6950, %6760
  %6957 = fmul fast float %6950, %6761
  %6958 = fsub fast float %6743, %4484
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  %6960 = fsub fast float %197, %4484
  %6961 = fcmp fast ogt float %6960, 0.000000e+00
  %6962 = xor i1 %6961, %6959
  %6963 = fsub fast float %4484, %6743
  %6964 = fmul fast float %6963, 2.000000e+00
  %6965 = fadd fast float %6964, %6743
  %6966 = select i1 %6962, float %6743, float %6965
  %6967 = fsub fast float %6966, %197
  %6968 = call float @dx.op.dot3.f32(i32 55, float %6769, float %6770, float %6967, float %6769, float %6770, float %6967)  ; Dot3(ax,ay,az,bx,by,bz)
  %6969 = call float @dx.op.unary.f32(i32 25, float %6968)  ; Rsqrt(value)
  %6970 = fmul fast float %6969, %6769
  %6971 = fmul fast float %6969, %6770
  %6972 = fmul fast float %6969, %6967
  %6973 = fsub fast float %4484, %197
  %6974 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6975 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6970, float %6971, float %6972)  ; Dot3(ax,ay,az,bx,by,bz)
  %6976 = fdiv fast float 1.000000e+00, %6975
  %6977 = fmul fast float %6976, %6974
  %6978 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6960, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6979 = fcmp fast ogt float %6978, 0.000000e+00
  %6980 = fcmp fast olt float %6978, 0.000000e+00
  %6981 = zext i1 %6979 to i32
  %6982 = zext i1 %6980 to i32
  %6983 = sub nsw i32 %6981, %6982
  %6984 = sitofp i32 %6983 to float
  %6985 = fsub fast float %6966, %4484
  %6986 = call float @dx.op.dot3.f32(i32 55, float %6769, float %6770, float %6985, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = fcmp fast ogt float %6986, 0.000000e+00
  %6988 = fcmp fast olt float %6986, 0.000000e+00
  %6989 = zext i1 %6987 to i32
  %6990 = zext i1 %6988 to i32
  %6991 = sub nsw i32 %6989, %6990
  %6992 = sitofp i32 %6991 to float
  %6993 = fcmp fast une float %6984, %6992
  br i1 %6993, label %6994, label %7004

; <label>:6994                                    ; preds = %6954
  %6995 = fmul fast float %6977, %6972
  %6996 = fmul fast float %6977, %6971
  %6997 = fmul fast float %6977, %6970
  %6998 = fmul fast float %6997, %6997
  %6999 = fmul fast float %6996, %6996
  %7000 = fadd fast float %6998, %6999
  %7001 = fmul fast float %6995, %6995
  %7002 = fadd fast float %7000, %7001
  %7003 = call float @dx.op.unary.f32(i32 24, float %7002)  ; Sqrt(value)
  br label %7016

; <label>:7004                                    ; preds = %6954
  %7005 = icmp slt i32 %6983, 0
  br i1 %7005, label %7006, label %7016

; <label>:7006                                    ; preds = %7004
  %7007 = fsub fast float %195, %6741
  %7008 = fsub fast float %196, %6742
  %7009 = fsub fast float %197, %6966
  %7010 = fmul fast float %7007, %7007
  %7011 = fmul fast float %7008, %7008
  %7012 = fadd fast float %7010, %7011
  %7013 = fmul fast float %7009, %7009
  %7014 = fadd fast float %7012, %7013
  %7015 = call float @dx.op.unary.f32(i32 24, float %7014)  ; Sqrt(value)
  br label %7016

; <label>:7016                                    ; preds = %7006, %7004, %6994
  %7017 = phi float [ %7003, %6994 ], [ %7015, %7006 ], [ 0.000000e+00, %7004 ]
  %7018 = and i1 %6961, %6959
  %7019 = fsub fast float -0.000000e+00, %7017
  %7020 = select i1 %7018, float -0.000000e+00, float %7019
  %7021 = fmul fast float %4485, 0x3FF7154760000000
  %7022 = fmul fast float %7021, %7020
  %7023 = fmul fast float %4486, 0x3FF7154760000000
  %7024 = fmul fast float %7023, %7020
  %7025 = fmul fast float %4487, 0x3FF7154760000000
  %7026 = fmul fast float %7025, %7020
  %7027 = call float @dx.op.unary.f32(i32 21, float %7022)  ; Exp(value)
  %7028 = call float @dx.op.unary.f32(i32 21, float %7024)  ; Exp(value)
  %7029 = call float @dx.op.unary.f32(i32 21, float %7026)  ; Exp(value)
  %7030 = call float @dx.op.unary.f32(i32 7, float %7027)  ; Saturate(value)
  %7031 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  %7032 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7033 = fmul fast float %6955, %7030
  %7034 = fmul fast float %6956, %7031
  %7035 = fmul fast float %6957, %7032
  %7036 = fsub fast float %6775, %5310
  %7037 = fsub fast float %6776, %5311
  %7038 = fsub fast float %6777, %5312
  %7039 = call float @dx.op.dot3.f32(i32 55, float %7036, float %7037, float %7038, float %7036, float %7037, float %7038)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = call float @dx.op.unary.f32(i32 25, float %7039)  ; Rsqrt(value)
  %7041 = fmul fast float %7040, %7036
  %7042 = fmul fast float %7040, %7037
  %7043 = fmul fast float %7040, %7038
  %7044 = call float @dx.op.dot3.f32(i32 55, float %6775, float %6776, float %6777, float %5264, float %5265, float %5266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7045 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %7041, float %7042, float %7043)  ; Dot3(ax,ay,az,bx,by,bz)
  %7046 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7047 = fmul fast float %7046, %6782
  %7048 = fmul fast float %7046, %7046
  %7049 = fmul fast float %7048, %5331
  %7050 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7051 = fmul fast float %7047, %7050
  %7052 = bitcast float %6772 to i32
  %7053 = ashr i32 %7052, 1
  %7054 = sub nsw i32 1597463007, %7053
  %7055 = bitcast i32 %7054 to float
  %7056 = fmul fast float %7055, %6769
  %7057 = fmul fast float %7055, %6770
  %7058 = fmul fast float %7055, %6771
  %7059 = fsub fast float %7056, %5310
  %7060 = fsub fast float %7057, %5311
  %7061 = fsub fast float %7058, %5312
  %7062 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float %7059, float %7060, float %7061)  ; Dot3(ax,ay,az,bx,by,bz)
  %7063 = call float @dx.op.unary.f32(i32 25, float %7062)  ; Rsqrt(value)
  %7064 = fmul fast float %7059, %7063
  %7065 = fmul fast float %7060, %7063
  %7066 = fmul fast float %7061, %7063
  %7067 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %7064, float %7065, float %7066)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = fmul fast float %7067, %7067
  %7069 = call float @dx.op.unary.f32(i32 6, float %7044)  ; FAbs(value)
  %7070 = fsub fast float 1.000000e+00, %5273
  %7071 = call float @dx.op.binary.f32(i32 35, float %7070, float 0x3F847AE140000000)  ; FMax(a,b)
  %7072 = fmul fast float %7071, %7071
  %7073 = fmul fast float %7072, %7072
  %7074 = fsub fast float 1.000000e+00, %7073
  %7075 = fmul fast float %5318, %5318
  %7076 = fmul fast float %7075, %7074
  %7077 = fadd fast float %7076, %7073
  %7078 = bitcast float %7077 to i32
  %7079 = ashr i32 %7078, 1
  %7080 = add nsw i32 %7079, 532487669
  %7081 = bitcast i32 %7080 to float
  %7082 = fadd fast float %7081, %5318
  %7083 = fmul fast float %7073, %7068
  %7084 = fsub fast float 1.000000e+00, %7068
  %7085 = fadd fast float %7084, %7083
  %7086 = fmul fast float %7069, %7069
  %7087 = fmul fast float %7086, %7074
  %7088 = fadd fast float %7087, %7073
  %7089 = bitcast float %7088 to i32
  %7090 = ashr i32 %7089, 1
  %7091 = add nsw i32 %7090, 532487669
  %7092 = bitcast i32 %7091 to float
  %7093 = fadd fast float %7092, %7069
  %7094 = fmul fast float %7085, %7085
  %7095 = fmul fast float %7094, %7082
  %7096 = fmul fast float %7095, %7093
  %7097 = fdiv fast float 1.000000e+00, %7096
  %7098 = bitcast float %7073 to i32
  %7099 = sitofp i32 %7098 to float
  %7100 = fmul fast float %7099, 0x3FE7F73180000000
  %7101 = fadd fast float %7100, 0x41AFE27C40000000
  %7102 = fptosi float %7101 to i32
  %7103 = bitcast i32 %7102 to float
  %7104 = fmul fast float %6738, 0x3FD80E9D60000000
  %7105 = fmul fast float %7104, %7055
  %7106 = fadd fast float %7103, %7105
  %7107 = bitcast float %7106 to i32
  %7108 = sub nsw i32 2129859010, %7107
  %7109 = bitcast i32 %7108 to float
  %7110 = fmul fast float %7073, %7097
  %7111 = fmul fast float %7110, %7103
  %7112 = fmul fast float %7111, %7109
  %7113 = call float @dx.op.unary.f32(i32 6, float %7045)  ; FAbs(value)
  %7114 = fsub fast float 1.000000e+00, %7113
  %7115 = bitcast float %7114 to i32
  %7116 = sitofp i32 %7115 to float
  %7117 = fmul fast float %7116, 5.000000e+00
  %7118 = fadd fast float %7117, 0xC1EFBF8940000000
  %7119 = fptosi float %7118 to i32
  %7120 = bitcast i32 %7119 to float
  %7121 = fsub fast float 1.000000e+00, %5270
  %7122 = fsub fast float 1.000000e+00, %5271
  %7123 = fsub fast float 1.000000e+00, %5316
  %7124 = fmul fast float %7120, %7121
  %7125 = fmul fast float %7120, %7122
  %7126 = fmul fast float %7120, %7123
  %7127 = fadd fast float %7124, %5270
  %7128 = fadd fast float %7125, %5271
  %7129 = fadd fast float %7126, %5316
  br i1 %5443, label %7130, label %7153

; <label>:7130                                    ; preds = %7016
  %7131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4083, float %7113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7132 = extractvalue %dx.types.ResRet.f32 %7131, 0
  %7133 = extractvalue %dx.types.ResRet.f32 %7131, 1
  %7134 = extractvalue %dx.types.ResRet.f32 %7131, 2
  %7135 = fadd fast float %7132, -5.000000e-01
  %7136 = fadd fast float %7133, -5.000000e-01
  %7137 = fadd fast float %7134, -5.000000e-01
  %7138 = fmul fast float %5270, 4.000000e+00
  %7139 = fmul fast float %7138, %7121
  %7140 = fmul fast float %7139, %7135
  %7141 = fmul fast float %5271, 4.000000e+00
  %7142 = fmul fast float %7141, %7122
  %7143 = fmul fast float %7142, %7136
  %7144 = fmul fast float %5316, 4.000000e+00
  %7145 = fmul fast float %7144, %7123
  %7146 = fmul fast float %7145, %7137
  %7147 = fadd fast float %7140, %7127
  %7148 = fadd fast float %7143, %7128
  %7149 = fadd fast float %7146, %7129
  %7150 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7151 = call float @dx.op.unary.f32(i32 7, float %7148)  ; Saturate(value)
  %7152 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  br label %7153

; <label>:7153                                    ; preds = %7130, %7016
  %7154 = phi float [ %7150, %7130 ], [ %7127, %7016 ]
  %7155 = phi float [ %7151, %7130 ], [ %7128, %7016 ]
  %7156 = phi float [ %7152, %7130 ], [ %7129, %7016 ]
  %7157 = fmul fast float %7044, 9.843750e-01
  %7158 = fadd fast float %7157, 7.812500e-03
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7158, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 2
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 3
  %7162 = fmul fast float %7160, %5270
  %7163 = fmul fast float %7160, %5271
  %7164 = fmul fast float %7160, %5316
  %7165 = fadd fast float %7162, %7161
  %7166 = fadd fast float %7163, %7161
  %7167 = fadd fast float %7164, %7161
  br i1 %5443, label %7168, label %7191

; <label>:7168                                    ; preds = %7153
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4083, float %7044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.ResRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.ResRet.f32 %7169, 2
  %7173 = fadd fast float %7170, -5.000000e-01
  %7174 = fadd fast float %7171, -5.000000e-01
  %7175 = fadd fast float %7172, -5.000000e-01
  %7176 = fmul fast float %5270, 4.000000e+00
  %7177 = fmul fast float %7176, %7121
  %7178 = fmul fast float %7177, %7173
  %7179 = fmul fast float %5271, 4.000000e+00
  %7180 = fmul fast float %7179, %7122
  %7181 = fmul fast float %7180, %7174
  %7182 = fmul fast float %5316, 4.000000e+00
  %7183 = fmul fast float %7182, %7123
  %7184 = fmul fast float %7183, %7175
  %7185 = fadd fast float %7178, %7165
  %7186 = fadd fast float %7181, %7166
  %7187 = fadd fast float %7184, %7167
  %7188 = call float @dx.op.unary.f32(i32 7, float %7185)  ; Saturate(value)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7190 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  br label %7191

; <label>:7191                                    ; preds = %7168, %7153
  %7192 = phi float [ %7188, %7168 ], [ %7165, %7153 ]
  %7193 = phi float [ %7189, %7168 ], [ %7166, %7153 ]
  %7194 = phi float [ %7190, %7168 ], [ %7167, %7153 ]
  %7195 = call float @dx.op.binary.f32(i32 35, float %7193, float %7194)  ; FMax(a,b)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7192, float %7195)  ; FMax(a,b)
  %7197 = fsub fast float 1.000000e+00, %7196
  %7198 = fmul fast float %7154, %7112
  %7199 = fmul fast float %7155, %7112
  %7200 = fmul fast float %7156, %7112
  %7201 = fsub fast float 1.000000e+00, %7045
  %7202 = bitcast float %7201 to i32
  %7203 = sitofp i32 %7202 to float
  %7204 = fmul fast float %7203, 5.000000e+00
  %7205 = fadd fast float %7204, 0xC1EFBF8940000000
  %7206 = fptosi float %7205 to i32
  %7207 = bitcast i32 %7206 to float
  %7208 = fmul fast float %7207, %4084
  %7209 = fmul fast float %7197, %7208
  %7210 = fmul fast float %7209, %5493
  %7211 = fmul fast float %7209, %5494
  %7212 = fmul fast float %7209, %5495
  %7213 = fadd fast float %7210, %7198
  %7214 = fadd fast float %7211, %7199
  %7215 = fadd fast float %7212, %7200
  %7216 = fmul fast float %7033, %4080
  %7217 = fmul fast float %7216, %7051
  %7218 = fmul fast float %7217, %7197
  %7219 = fmul fast float %7034, %4080
  %7220 = fmul fast float %7219, %7051
  %7221 = fmul fast float %7220, %7197
  %7222 = fmul fast float %7035, %4080
  %7223 = fmul fast float %7222, %7051
  %7224 = fmul fast float %7223, %7197
  %7225 = fadd fast float %7218, %6712
  %7226 = fadd fast float %7221, %6713
  %7227 = fadd fast float %7224, %6714
  %7228 = fmul fast float %7217, %7213
  %7229 = fmul fast float %7220, %7214
  %7230 = fmul fast float %7223, %7215
  %7231 = fadd fast float %7228, %6709
  %7232 = fadd fast float %7229, %6710
  %7233 = fadd fast float %7230, %6711
  br label %6841

; <label>:7234                                    ; preds = %6841
  br label %7235

; <label>:7235                                    ; preds = %7234, %6675
  %7236 = phi float [ %6677, %6675 ], [ %6842, %7234 ]
  %7237 = phi float [ %6678, %6675 ], [ %6843, %7234 ]
  %7238 = phi float [ %6679, %6675 ], [ %6844, %7234 ]
  %7239 = phi float [ %6680, %6675 ], [ %6845, %7234 ]
  %7240 = phi float [ %6681, %6675 ], [ %6846, %7234 ]
  %7241 = phi float [ %6682, %6675 ], [ %6847, %7234 ]
  %7242 = add i32 %6676, 1
  %7243 = icmp ugt i32 %7242, %6672
  br i1 %7243, label %7244, label %6675

; <label>:7244                                    ; preds = %7235
  br label %7245

; <label>:7245                                    ; preds = %7244, %6625, %6615
  %7246 = phi float [ %6616, %6615 ], [ %6616, %6625 ], [ %7236, %7244 ]
  %7247 = phi float [ %6617, %6615 ], [ %6617, %6625 ], [ %7237, %7244 ]
  %7248 = phi float [ %6618, %6615 ], [ %6618, %6625 ], [ %7238, %7244 ]
  %7249 = phi float [ %6619, %6615 ], [ %6619, %6625 ], [ %7239, %7244 ]
  %7250 = phi float [ %6620, %6615 ], [ %6620, %6625 ], [ %7240, %7244 ]
  %7251 = phi float [ %6621, %6615 ], [ %6621, %6625 ], [ %7241, %7244 ]
  %7252 = fmul fast float %4080, %4080
  %7253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7253, 0
  %7255 = fmul fast float %7254, %5499
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 3
  %7258 = fsub fast float 1.000000e+00, %4087
  %7259 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  %7260 = fadd fast float %7251, %4086
  %7261 = fmul fast float %7260, %4087
  %7262 = fmul fast float %7259, %7257
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 3
  %7265 = fmul fast float %7249, %5267
  %7266 = fmul fast float %7250, %5268
  %7267 = fmul fast float %7251, %5269
  %7268 = fcmp fast ogt float %99, %230
  %7269 = and i1 %7268, %4490
  %7270 = or i1 %4496, %7269
  %7271 = icmp eq i32 %4489, 2
  %7272 = fcmp fast ole float %99, %230
  %7273 = and i1 %7272, %7271
  %7274 = or i1 %7273, %7270
  br i1 %7269, label %7275, label %7532

; <label>:7275                                    ; preds = %7245
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7279 = fmul fast float %7277, %108
  %7280 = fmul fast float %7278, %109
  %7281 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7281, float %7282, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.ResRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.ResRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.ResRet.f32 %7283, 3
  %7288 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7281, float %7282, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  %7292 = extractvalue %dx.types.ResRet.f32 %7288, 3
  %7293 = call float @dx.op.binary.f32(i32 35, float %7285, float %7286)  ; FMax(a,b)
  %7294 = call float @dx.op.binary.f32(i32 35, float %7284, float %7293)  ; FMax(a,b)
  %7295 = call float @dx.op.binary.f32(i32 35, float %7294, float %7287)  ; FMax(a,b)
  %7296 = call float @dx.op.binary.f32(i32 36, float %7290, float %7291)  ; FMin(a,b)
  %7297 = call float @dx.op.binary.f32(i32 36, float %7289, float %7296)  ; FMin(a,b)
  %7298 = call float @dx.op.binary.f32(i32 36, float %7297, float %7292)  ; FMin(a,b)
  %7299 = fmul fast float %7295, 2.550000e+02
  %7300 = fadd fast float %7299, 0x3F70101020000000
  %7301 = fptoui float %7300 to i32
  %7302 = fmul fast float %7298, 2.550000e+02
  %7303 = fadd fast float %7302, 0x3F70101020000000
  %7304 = fptoui float %7303 to i32
  %7305 = icmp ult i32 %7301, %7304
  br i1 %7305, label %7306, label %7474

; <label>:7306                                    ; preds = %7275
  %7307 = fcmp fast ogt float %98, 9.843750e-01
  %7308 = fadd fast float %99, -4.000000e+00
  %7309 = select i1 %7307, float -4.000000e+00, float %7308
  %7310 = call float @dx.op.binary.f32(i32 35, float %7309, float 0.000000e+00)  ; FMax(a,b)
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7313 = fadd fast float %7312, %7310
  %7314 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7315 = fmul fast float %7313, %7314
  %7316 = call float @dx.op.unary.f32(i32 23, float %7315)  ; Log(value)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7311, 3
  %7318 = fmul fast float %7317, %7316
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7321 = fmul fast float %7318, %7320
  %7322 = call float @dx.op.unary.f32(i32 7, float %7321)  ; Saturate(value)
  %7323 = uitofp i32 %7301 to float
  %7324 = uitofp i32 %7304 to float
  %7325 = fadd fast float %7323, 5.000000e-01
  %7326 = fadd fast float %7324, 5.000000e-01
  %7327 = fmul fast float %7320, %7325
  %7328 = fmul fast float %7320, %7326
  %7329 = fadd fast float %7327, 0x3F0FFB4800000000
  %7330 = fadd fast float %7328, 0xBF0FFB4800000000
  %7331 = call float @dx.op.binary.f32(i32 35, float %7322, float %7329)  ; FMax(a,b)
  %7332 = call float @dx.op.binary.f32(i32 36, float %7331, float %7330)  ; FMin(a,b)
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7337 = fmul fast float %7334, %7332
  %7338 = fadd fast float %7336, %7337
  %7339 = fadd fast float %7336, %7335
  %7340 = fsub fast float %7334, %7335
  %7341 = fadd fast float %7340, %7336
  %7342 = call float @dx.op.binary.f32(i32 35, float %7338, float %7339)  ; FMax(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7342, float %7341)  ; FMin(a,b)
  %7344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7281, float %7282, float %7343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7345 = extractvalue %dx.types.ResRet.f32 %7344, 0
  %7346 = extractvalue %dx.types.ResRet.f32 %7344, 1
  %7347 = extractvalue %dx.types.ResRet.f32 %7344, 2
  %7348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.i32 %7348, 0
  %7350 = extractvalue %dx.types.CBufRet.i32 %7348, 1
  %7351 = uitofp i32 %7349 to float
  %7352 = uitofp i32 %7350 to float
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7355 = extractvalue %dx.types.CBufRet.f32 %7353, 1
  %7356 = fmul fast float %7351, %7281
  %7357 = fmul fast float %7352, %7282
  %7358 = fadd fast float %7356, -5.000000e-01
  %7359 = fadd fast float %7357, -5.000000e-01
  %7360 = call float @dx.op.unary.f32(i32 22, float %7358)  ; Frc(value)
  %7361 = call float @dx.op.unary.f32(i32 22, float %7359)  ; Frc(value)
  %7362 = fmul fast float %7360, %7360
  %7363 = fmul fast float %7362, %7360
  %7364 = fsub fast float 3.000000e+00, %7360
  %7365 = fmul fast float %7362, %7364
  %7366 = fmul fast float %7360, 3.000000e+00
  %7367 = fmul fast float %7363, 3.000000e+00
  %7368 = fmul fast float %7362, 6.000000e+00
  %7369 = fsub fast float %7367, %7368
  %7370 = fadd fast float %7369, 4.000000e+00
  %7371 = fmul fast float %7370, 0x3FC5555560000000
  %7372 = fmul fast float %7363, -3.000000e+00
  %7373 = fadd fast float %7362, %7360
  %7374 = fmul fast float %7373, 3.000000e+00
  %7375 = fadd fast float %7372, 1.000000e+00
  %7376 = fadd fast float %7375, %7374
  %7377 = fmul fast float %7363, 0x3FC5555560000000
  %7378 = fmul fast float %7361, %7361
  %7379 = fmul fast float %7378, %7361
  %7380 = fsub fast float 3.000000e+00, %7361
  %7381 = fmul fast float %7378, %7380
  %7382 = fmul fast float %7361, 3.000000e+00
  %7383 = fmul fast float %7379, 3.000000e+00
  %7384 = fmul fast float %7378, 6.000000e+00
  %7385 = fsub fast float %7383, %7384
  %7386 = fadd fast float %7385, 4.000000e+00
  %7387 = fmul fast float %7386, 0x3FC5555560000000
  %7388 = fmul fast float %7379, -3.000000e+00
  %7389 = fadd fast float %7378, %7361
  %7390 = fmul fast float %7389, 3.000000e+00
  %7391 = fadd fast float %7388, 1.000000e+00
  %7392 = fadd fast float %7391, %7390
  %7393 = fmul fast float %7379, 0x3FC5555560000000
  %7394 = fadd fast float %7360, 1.000000e+00
  %7395 = fsub fast float 1.000000e+00, %7366
  %7396 = fadd fast float %7395, %7365
  %7397 = fadd fast float %7396, %7370
  %7398 = fmul fast float %7397, 0x3FC5555560000000
  %7399 = fdiv fast float %7371, %7398
  %7400 = fsub fast float %7394, %7399
  %7401 = fsub fast float 1.000000e+00, %7360
  %7402 = fadd fast float %7376, %7363
  %7403 = fmul fast float %7402, 0x3FC5555560000000
  %7404 = fdiv fast float %7377, %7403
  %7405 = fadd fast float %7401, %7404
  %7406 = fadd fast float %7361, 1.000000e+00
  %7407 = fsub fast float 1.000000e+00, %7382
  %7408 = fadd fast float %7407, %7381
  %7409 = fadd fast float %7408, %7386
  %7410 = fmul fast float %7409, 0x3FC5555560000000
  %7411 = fdiv fast float %7387, %7410
  %7412 = fsub fast float %7406, %7411
  %7413 = fsub fast float 1.000000e+00, %7361
  %7414 = fadd fast float %7392, %7379
  %7415 = fmul fast float %7414, 0x3FC5555560000000
  %7416 = fdiv fast float %7393, %7415
  %7417 = fadd fast float %7416, %7413
  %7418 = fmul fast float %7400, %7354
  %7419 = fsub fast float %7281, %7418
  %7420 = fmul fast float %7405, %7354
  %7421 = fadd fast float %7420, %7281
  %7422 = fmul fast float %7417, %7355
  %7423 = fadd fast float %7422, %7282
  %7424 = fmul fast float %7412, %7355
  %7425 = fsub fast float %7282, %7424
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7419, float %7425, float %7343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.ResRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.ResRet.f32 %7426, 2
  %7430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7421, float %7425, float %7343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7431 = extractvalue %dx.types.ResRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.ResRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.ResRet.f32 %7430, 2
  %7434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7419, float %7423, float %7343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.ResRet.f32 %7434, 1
  %7437 = extractvalue %dx.types.ResRet.f32 %7434, 2
  %7438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7421, float %7423, float %7343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.ResRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.ResRet.f32 %7438, 2
  %7442 = fsub fast float %7435, %7427
  %7443 = fsub fast float %7436, %7428
  %7444 = fsub fast float %7437, %7429
  %7445 = fmul fast float %7442, %7415
  %7446 = fmul fast float %7443, %7415
  %7447 = fmul fast float %7444, %7415
  %7448 = fadd fast float %7445, %7427
  %7449 = fadd fast float %7446, %7428
  %7450 = fadd fast float %7447, %7429
  %7451 = fsub fast float %7439, %7431
  %7452 = fsub fast float %7440, %7432
  %7453 = fsub fast float %7441, %7433
  %7454 = fmul fast float %7451, %7415
  %7455 = fmul fast float %7452, %7415
  %7456 = fmul fast float %7453, %7415
  %7457 = fsub fast float %7431, %7448
  %7458 = fadd fast float %7457, %7454
  %7459 = fsub fast float %7432, %7449
  %7460 = fadd fast float %7459, %7455
  %7461 = fsub fast float %7433, %7450
  %7462 = fadd fast float %7461, %7456
  %7463 = fmul fast float %7458, %7403
  %7464 = fmul fast float %7460, %7403
  %7465 = fmul fast float %7462, %7403
  %7466 = fadd fast float %7463, %7448
  %7467 = fadd fast float %7464, %7449
  %7468 = fadd fast float %7465, %7450
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7471 = fmul fast float %7466, %7470
  %7472 = fmul fast float %7467, %7470
  %7473 = fmul fast float %7468, %7470
  br label %7474

; <label>:7474                                    ; preds = %7306, %7275
  %7475 = phi float [ %7345, %7306 ], [ 1.000000e+00, %7275 ]
  %7476 = phi float [ %7346, %7306 ], [ 1.000000e+00, %7275 ]
  %7477 = phi float [ %7347, %7306 ], [ 1.000000e+00, %7275 ]
  %7478 = phi float [ %7471, %7306 ], [ 0.000000e+00, %7275 ]
  %7479 = phi float [ %7472, %7306 ], [ 0.000000e+00, %7275 ]
  %7480 = phi float [ %7473, %7306 ], [ 0.000000e+00, %7275 ]
  %7481 = fmul fast float %7478, %7252
  %7482 = fmul fast float %7479, %7252
  %7483 = fmul fast float %7480, %7252
  %7484 = call float @dx.op.dot3.f32(i32 55, float %7475, float %7476, float %7477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7485 = call float @dx.op.dot3.f32(i32 55, float %7481, float %7482, float %7483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7486 = select i1 %267, float %7484, float %7475
  %7487 = select i1 %267, float %7484, float %7476
  %7488 = select i1 %267, float 1.000000e+00, float %7477
  %7489 = select i1 %267, float %7485, float %7481
  %7490 = select i1 %267, float 0.000000e+00, float %7482
  %7491 = select i1 %267, float 0.000000e+00, float %7483
  %7492 = fmul fast float %7486, %7265
  %7493 = fmul fast float %7487, %7266
  %7494 = fmul fast float %7488, %7267
  %7495 = fadd fast float %7492, %7489
  %7496 = fadd fast float %7493, %7490
  %7497 = fadd fast float %7491, %7494
  %7498 = fmul fast float %7486, %7246
  %7499 = fmul fast float %7487, %7247
  %7500 = fmul fast float %7488, %7248
  %7501 = fmul fast float %144, %7277
  %7502 = fmul fast float %146, %7278
  %7503 = fsub fast float 1.000000e+00, %7501
  %7504 = fsub fast float 1.000000e+00, %7502
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7507 = extractvalue %dx.types.CBufRet.f32 %7505, 1
  %7508 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7509 = fmul fast float %7503, %7506
  %7510 = fmul fast float %7503, %7507
  %7511 = fmul fast float %7503, %7508
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.CBufRet.f32 %7512, 2
  %7516 = fmul fast float %7504, %7513
  %7517 = fmul fast float %7504, %7514
  %7518 = fmul fast float %7504, %7515
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7523 = fadd fast float %7516, %7520
  %7524 = fadd fast float %7523, %7509
  %7525 = fadd fast float %7517, %7521
  %7526 = fadd fast float %7525, %7510
  %7527 = fadd fast float %7518, %7522
  %7528 = fadd fast float %7527, %7511
  %7529 = fmul fast float %7524, %230
  %7530 = fmul fast float %7526, %230
  %7531 = fmul fast float %7528, %230
  br label %7532

; <label>:7532                                    ; preds = %7474, %7245
  %7533 = phi float [ %7529, %7474 ], [ %195, %7245 ]
  %7534 = phi float [ %7530, %7474 ], [ %196, %7245 ]
  %7535 = phi float [ %7531, %7474 ], [ %197, %7245 ]
  %7536 = phi float [ %230, %7474 ], [ %99, %7245 ]
  %7537 = phi float [ %7495, %7474 ], [ %7265, %7245 ]
  %7538 = phi float [ %7496, %7474 ], [ %7266, %7245 ]
  %7539 = phi float [ %7497, %7474 ], [ %7267, %7245 ]
  %7540 = phi float [ %7498, %7474 ], [ %7246, %7245 ]
  %7541 = phi float [ %7499, %7474 ], [ %7247, %7245 ]
  %7542 = phi float [ %7500, %7474 ], [ %7248, %7245 ]
  %7543 = phi float [ %7475, %7474 ], [ 1.000000e+00, %7245 ]
  br i1 %7274, label %8698, label %7544

; <label>:7544                                    ; preds = %7532
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.CBufRet.f32 %7545, 1
  %7548 = extractvalue %dx.types.CBufRet.f32 %7545, 2
  %7549 = extractvalue %dx.types.CBufRet.f32 %7545, 3
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.CBufRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.CBufRet.f32 %7550, 2
  %7554 = extractvalue %dx.types.CBufRet.f32 %7550, 3
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.CBufRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.CBufRet.f32 %7555, 2
  %7559 = extractvalue %dx.types.CBufRet.f32 %7555, 3
  %7560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.f32 %7560, 0
  %7562 = extractvalue %dx.types.CBufRet.f32 %7560, 1
  %7563 = extractvalue %dx.types.CBufRet.f32 %7560, 2
  %7564 = extractvalue %dx.types.CBufRet.f32 %7560, 3
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 3
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7571 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7572 = fcmp fast olt float %7571, -5.000000e-01
  %7573 = call float @dx.op.dot3.f32(i32 55, float %7533, float %7534, float %7535, float %7533, float %7534, float %7535)  ; Dot3(ax,ay,az,bx,by,bz)
  %7574 = call float @dx.op.unary.f32(i32 25, float %7573)  ; Rsqrt(value)
  %7575 = fmul fast float %7574, %7573
  %7576 = fmul fast float %7574, %7533
  %7577 = fmul fast float %7574, %7534
  %7578 = fmul fast float %7574, %7535
  %7579 = fadd fast float %7575, %7549
  %7580 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7578, float %7546, float %7547, float %7548)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.i32 %7581, 1
  %7583 = and i32 %7582, 1
  %7584 = icmp ne i32 %7583, 0
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 2
  %7587 = fcmp fast ogt float %7586, 0.000000e+00
  %7588 = and i1 %7584, %7587
  br i1 %7588, label %7589, label %7995, !dx.controlflow.hints !128

; <label>:7589                                    ; preds = %7544
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 3
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7596 = fsub fast float %7593, %7595
  %7597 = and i32 %7582, 2
  %7598 = extractvalue %dx.types.CBufRet.i32 %7581, 0
  %7599 = call i32 @dx.op.binary.i32(i32 40, i32 %7598, i32 3)  ; UMin(a,b)
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 0
  %7602 = extractvalue %dx.types.CBufRet.f32 %7600, 1
  %7603 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7604 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7605 = fsub fast float %7601, %7603
  %7606 = fsub fast float %7602, %7604
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = fcmp fast ogt float %7608, 0.000000e+00
  %7610 = fsub fast float -0.000000e+00, %7605
  %7611 = fsub fast float -0.000000e+00, %7606
  %7612 = call float @dx.op.dot2.f32(i32 54, float %7576, float %7577, float %7576, float %7577)  ; Dot2(ax,ay,bx,by)
  %7613 = call float @dx.op.dot2.f32(i32 54, float %7576, float %7577, float %7610, float %7611)  ; Dot2(ax,ay,bx,by)
  %7614 = fmul fast float %7613, 2.000000e+00
  %7615 = call float @dx.op.dot2.f32(i32 54, float %7610, float %7611, float %7610, float %7611)  ; Dot2(ax,ay,bx,by)
  %7616 = fmul fast float %7608, %7608
  %7617 = fsub fast float %7615, %7616
  %7618 = fmul fast float %7614, %7614
  %7619 = fmul fast float %7612, 4.000000e+00
  %7620 = fmul fast float %7619, %7617
  %7621 = fsub fast float %7618, %7620
  %7622 = fcmp fast ogt float %7621, 0.000000e+00
  br i1 %7622, label %7623, label %7638

; <label>:7623                                    ; preds = %7589
  %7624 = fcmp fast ogt float %7614, 0.000000e+00
  %7625 = call float @dx.op.unary.f32(i32 24, float %7621)  ; Sqrt(value)
  %7626 = fsub fast float -0.000000e+00, %7625
  %7627 = select i1 %7624, float %7625, float %7626
  %7628 = fadd fast float %7627, %7614
  %7629 = fmul float %7628, -5.000000e-01
  %7630 = fdiv fast float %7629, %7612
  %7631 = call float @dx.op.binary.f32(i32 35, float %7630, float 0.000000e+00)  ; FMax(a,b)
  %7632 = call float @dx.op.binary.f32(i32 36, float %7575, float %7631)  ; FMin(a,b)
  %7633 = fdiv fast float %7617, %7629
  %7634 = call float @dx.op.binary.f32(i32 35, float %7633, float 0.000000e+00)  ; FMax(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7575, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7632, float %7635)  ; FMin(a,b)
  %7637 = call float @dx.op.binary.f32(i32 35, float %7632, float %7635)  ; FMax(a,b)
  br label %7638

; <label>:7638                                    ; preds = %7623, %7589
  %7639 = phi float [ %7637, %7623 ], [ -1.000000e+00, %7589 ]
  %7640 = phi float [ %7636, %7623 ], [ -1.000000e+00, %7589 ]
  %7641 = phi i1 [ true, %7623 ], [ false, %7589 ]
  %7642 = and i1 %7609, %7641
  br i1 %7642, label %7643, label %7645

; <label>:7643                                    ; preds = %7638
  %7644 = fcmp fast oeq float %7640, %7639
  br i1 %7644, label %7948, label %7646

; <label>:7645                                    ; preds = %7638
  br i1 %7609, label %7948, label %7646

; <label>:7646                                    ; preds = %7645, %7643
  %7647 = phi float [ %7575, %7645 ], [ %7639, %7643 ]
  %7648 = phi float [ 0.000000e+00, %7645 ], [ %7640, %7643 ]
  %7649 = icmp ne i32 %7597, 0
  %7650 = fmul fast float %7647, %7578
  %7651 = fadd fast float %7650, %7591
  %7652 = fmul fast float %7651, %7647
  %7653 = select i1 %7649, float 0.000000e+00, float %7652
  %7654 = fcmp fast oeq float %7578, 0.000000e+00
  %7655 = fdiv fast float %7596, %7578
  %7656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7655)  ; FMax(a,b)
  %7657 = select i1 %7654, float %7647, float %7656
  %7658 = call float @dx.op.binary.f32(i32 36, float %7647, float %7657)  ; FMin(a,b)
  %7659 = fcmp fast ogt float %7578, 0.000000e+00
  %7660 = fcmp fast olt float %7596, 0.000000e+00
  br i1 %7659, label %7661, label %7718

; <label>:7661                                    ; preds = %7646
  %7662 = icmp eq i32 %7597, 0
  br i1 %7660, label %7663, label %7707

; <label>:7663                                    ; preds = %7661
  %7664 = select i1 %7662, float %7647, float 0.000000e+00
  %7665 = fsub fast float -0.000000e+00, %7664
  %7666 = call float @dx.op.unary.f32(i32 6, float %7665)  ; FAbs(value)
  %7667 = fmul fast float %7664, %7578
  %7668 = fadd fast float %7667, %7591
  %7669 = fmul fast float %7666, %7668
  %7670 = fsub fast float %7653, %7669
  %7671 = fsub fast float %7647, %7666
  %7672 = select i1 %7662, float %7671, float 0.000000e+00
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 3
  %7684 = call float @dx.op.binary.f32(i32 36, float %7670, float %7683)  ; FMin(a,b)
  %7685 = fmul fast float %7681, %7672
  %7686 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7687 = fsub fast float %7678, %7674
  %7688 = fsub fast float %7679, %7675
  %7689 = fsub fast float %7680, %7676
  %7690 = fmul fast float %7686, %7687
  %7691 = fmul fast float %7686, %7688
  %7692 = fmul fast float %7686, %7689
  %7693 = fadd fast float %7690, %7674
  %7694 = fadd fast float %7691, %7675
  %7695 = fadd fast float %7692, %7676
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = fadd fast float %7698, %7697
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7702 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7703 = fadd fast float %7702, %7701
  %7704 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7705 = fmul fast float %7700, %7684
  %7706 = fmul fast float %7705, %7704
  br label %7948

; <label>:7707                                    ; preds = %7661
  br i1 %7662, label %7708, label %7729

; <label>:7708                                    ; preds = %7707
  %7709 = call float @dx.op.binary.f32(i32 36, float %7658, float %7648)  ; FMin(a,b)
  %7710 = fsub fast float %7658, %7709
  %7711 = fsub fast float %7710, %7647
  %7712 = call float @dx.op.unary.f32(i32 6, float %7711)  ; FAbs(value)
  %7713 = fadd fast float %7710, %7647
  %7714 = fmul fast float %7713, %7578
  %7715 = fadd fast float %7714, %7591
  %7716 = fmul fast float %7715, %7712
  %7717 = fsub fast float %7653, %7716
  br label %7729

; <label>:7718                                    ; preds = %7646
  br i1 %7660, label %7719, label %7729

; <label>:7719                                    ; preds = %7718
  %7720 = call float @dx.op.binary.f32(i32 35, float %7648, float %7658)  ; FMax(a,b)
  %7721 = icmp eq i32 %7597, 0
  %7722 = select i1 %7721, float %7658, float 0.000000e+00
  %7723 = fsub fast float -0.000000e+00, %7722
  %7724 = call float @dx.op.unary.f32(i32 6, float %7723)  ; FAbs(value)
  %7725 = fmul fast float %7722, %7578
  %7726 = fadd fast float %7725, %7591
  %7727 = fmul fast float %7724, %7726
  %7728 = fsub fast float %7653, %7727
  br label %7729

; <label>:7729                                    ; preds = %7719, %7718, %7708, %7707
  %7730 = phi float [ %7648, %7707 ], [ %7648, %7708 ], [ %7720, %7719 ], [ %7648, %7718 ]
  %7731 = phi float [ 0.000000e+00, %7707 ], [ %7712, %7708 ], [ %7724, %7719 ], [ 0.000000e+00, %7718 ]
  %7732 = phi float [ %7653, %7707 ], [ %7717, %7708 ], [ %7728, %7719 ], [ %7653, %7718 ]
  %7733 = phi float [ %7658, %7707 ], [ %7658, %7708 ], [ %7647, %7719 ], [ %7647, %7718 ]
  %7734 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %7734, align 4, !tbaa !129, !noalias !131
  %7735 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %7735, align 4, !tbaa !129, !noalias !131
  %7736 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %7736, align 4, !tbaa !129, !noalias !131
  %7737 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %7737, align 4, !tbaa !129, !noalias !131
  %7738 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %7738, align 4, !tbaa !129, !noalias !131
  %7739 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %7739, align 4, !tbaa !129, !noalias !131
  %7740 = icmp sgt i32 %7599, 0
  br i1 %7740, label %7741, label %7802

; <label>:7741                                    ; preds = %7729
  br label %7742

; <label>:7742                                    ; preds = %7791, %7741
  %7743 = phi i32 [ %7792, %7791 ], [ 0, %7741 ]
  %7744 = phi i32 [ %7793, %7791 ], [ 0, %7741 ]
  %7745 = add nuw i32 %7744, 171
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7745)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.CBufRet.f32 %7746, 1
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7752 = fsub fast float %7747, %7750
  %7753 = fsub fast float %7748, %7751
  %7754 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7755 = fsub fast float -0.000000e+00, %7752
  %7756 = fsub fast float -0.000000e+00, %7753
  %7757 = call float @dx.op.dot2.f32(i32 54, float %7576, float %7577, float %7755, float %7756)  ; Dot2(ax,ay,bx,by)
  %7758 = fmul fast float %7757, 2.000000e+00
  %7759 = call float @dx.op.dot2.f32(i32 54, float %7755, float %7756, float %7755, float %7756)  ; Dot2(ax,ay,bx,by)
  %7760 = fmul fast float %7754, %7754
  %7761 = fsub fast float %7759, %7760
  %7762 = fmul fast float %7758, %7758
  %7763 = fmul fast float %7619, %7761
  %7764 = fsub fast float %7762, %7763
  %7765 = fcmp fast ogt float %7764, 0.000000e+00
  br i1 %7765, label %7766, label %7781

; <label>:7766                                    ; preds = %7742
  %7767 = fcmp fast ogt float %7758, 0.000000e+00
  %7768 = call float @dx.op.unary.f32(i32 24, float %7764)  ; Sqrt(value)
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = select i1 %7767, float %7768, float %7769
  %7771 = fadd fast float %7770, %7758
  %7772 = fmul float %7771, -5.000000e-01
  %7773 = fdiv fast float %7772, %7612
  %7774 = call float @dx.op.binary.f32(i32 35, float %7773, float 0.000000e+00)  ; FMax(a,b)
  %7775 = call float @dx.op.binary.f32(i32 36, float %7647, float %7774)  ; FMin(a,b)
  %7776 = fdiv fast float %7761, %7772
  %7777 = call float @dx.op.binary.f32(i32 35, float %7776, float 0.000000e+00)  ; FMax(a,b)
  %7778 = call float @dx.op.binary.f32(i32 36, float %7647, float %7777)  ; FMin(a,b)
  %7779 = call float @dx.op.binary.f32(i32 36, float %7775, float %7778)  ; FMin(a,b)
  %7780 = call float @dx.op.binary.f32(i32 35, float %7775, float %7778)  ; FMax(a,b)
  br label %7781

; <label>:7781                                    ; preds = %7766, %7742
  %7782 = phi float [ %7780, %7766 ], [ -1.000000e+00, %7742 ]
  %7783 = phi float [ %7779, %7766 ], [ -1.000000e+00, %7742 ]
  %7784 = phi i1 [ true, %7766 ], [ false, %7742 ]
  br i1 %7784, label %7785, label %7791

; <label>:7785                                    ; preds = %7781
  %7786 = call float @dx.op.binary.f32(i32 35, float %7730, float %7783)  ; FMax(a,b)
  %7787 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7744
  store float %7786, float* %7787, align 4, !tbaa !129, !noalias !131
  %7788 = call float @dx.op.binary.f32(i32 35, float %7730, float %7782)  ; FMax(a,b)
  %7789 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7744
  store float %7788, float* %7789, align 4, !tbaa !129, !noalias !131
  %7790 = add nsw i32 %7743, 1
  br label %7791

; <label>:7791                                    ; preds = %7785, %7781
  %7792 = phi i32 [ %7790, %7785 ], [ %7743, %7781 ]
  %7793 = add nuw nsw i32 %7744, 1
  %7794 = icmp eq i32 %7793, %7599
  br i1 %7794, label %7795, label %7742

; <label>:7795                                    ; preds = %7791
  %7796 = load float, float* %7736, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7797 = load float, float* %7735, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %7798 = load float, float* %7734, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %7799 = load float, float* %7739, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7800 = load float, float* %7738, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %7801 = load float, float* %7737, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %7802

; <label>:7802                                    ; preds = %7795, %7729
  %7803 = phi float [ -1.000000e+00, %7729 ], [ %7801, %7795 ]
  %7804 = phi float [ -1.000000e+00, %7729 ], [ %7800, %7795 ]
  %7805 = phi float [ -1.000000e+00, %7729 ], [ %7799, %7795 ]
  %7806 = phi float [ -1.000000e+00, %7729 ], [ %7798, %7795 ]
  %7807 = phi float [ -1.000000e+00, %7729 ], [ %7797, %7795 ]
  %7808 = phi float [ -1.000000e+00, %7729 ], [ %7796, %7795 ]
  %7809 = phi i32 [ 0, %7729 ], [ %7792, %7795 ]
  %7810 = call float @dx.op.binary.f32(i32 36, float %7807, float %7808)  ; FMin(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7806, float %7810)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 35, float %7806, float %7807)  ; FMax(a,b)
  %7813 = call float @dx.op.binary.f32(i32 36, float %7812, float %7808)  ; FMin(a,b)
  %7814 = call float @dx.op.binary.f32(i32 36, float %7806, float %7807)  ; FMin(a,b)
  %7815 = call float @dx.op.binary.f32(i32 35, float %7814, float %7813)  ; FMax(a,b)
  %7816 = call float @dx.op.binary.f32(i32 35, float %7807, float %7808)  ; FMax(a,b)
  %7817 = call float @dx.op.binary.f32(i32 35, float %7806, float %7816)  ; FMax(a,b)
  store float %7811, float* %7734, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %7815, float* %7735, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %7817, float* %7736, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7818 = call float @dx.op.binary.f32(i32 36, float %7804, float %7805)  ; FMin(a,b)
  %7819 = call float @dx.op.binary.f32(i32 36, float %7803, float %7818)  ; FMin(a,b)
  %7820 = call float @dx.op.binary.f32(i32 35, float %7803, float %7804)  ; FMax(a,b)
  %7821 = call float @dx.op.binary.f32(i32 36, float %7820, float %7805)  ; FMin(a,b)
  %7822 = call float @dx.op.binary.f32(i32 36, float %7803, float %7804)  ; FMin(a,b)
  %7823 = call float @dx.op.binary.f32(i32 35, float %7822, float %7821)  ; FMax(a,b)
  %7824 = call float @dx.op.binary.f32(i32 35, float %7804, float %7805)  ; FMax(a,b)
  %7825 = call float @dx.op.binary.f32(i32 35, float %7803, float %7824)  ; FMax(a,b)
  store float %7819, float* %7737, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %7823, float* %7738, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %7825, float* %7739, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7826 = sub nsw i32 3, %7809
  %7827 = icmp sgt i32 %7826, 2
  br i1 %7827, label %7828, label %7866

; <label>:7828                                    ; preds = %7802
  %7829 = icmp eq i32 %7597, 0
  %7830 = fsub fast float %7647, %7731
  %7831 = select i1 %7829, float %7830, float %7731
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7840 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 3
  %7843 = call float @dx.op.binary.f32(i32 36, float %7732, float %7842)  ; FMin(a,b)
  %7844 = fmul fast float %7840, %7831
  %7845 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7846 = fsub fast float %7837, %7833
  %7847 = fsub fast float %7838, %7834
  %7848 = fsub fast float %7839, %7835
  %7849 = fmul fast float %7845, %7846
  %7850 = fmul fast float %7845, %7847
  %7851 = fmul fast float %7845, %7848
  %7852 = fadd fast float %7849, %7833
  %7853 = fadd fast float %7850, %7834
  %7854 = fadd fast float %7851, %7835
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = fadd fast float %7857, %7856
  %7859 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7862 = fadd fast float %7861, %7860
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fmul fast float %7859, %7843
  %7865 = fmul fast float %7864, %7863
  br label %7948

; <label>:7866                                    ; preds = %7802
  %7867 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7826
  %7868 = load float, float* %7867, align 4, !tbaa !129, !noalias !131
  %7869 = fcmp fast olt float %7868, %7733
  %7870 = icmp sgt i32 %7809, 0
  %7871 = and i1 %7870, %7869
  br i1 %7871, label %7872, label %7909

; <label>:7872                                    ; preds = %7866
  br label %7873

; <label>:7873                                    ; preds = %7902, %7872
  %7874 = phi float [ %7903, %7902 ], [ %7731, %7872 ]
  %7875 = phi float [ %7904, %7902 ], [ %7732, %7872 ]
  %7876 = phi float [ %7884, %7902 ], [ %7868, %7872 ]
  %7877 = phi i32 [ %7881, %7902 ], [ %7826, %7872 ]
  %7878 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7877
  %7879 = load float, float* %7878, align 4, !tbaa !129, !noalias !131
  %7880 = icmp slt i32 %7877, 2
  %7881 = add nsw i32 %7877, 1
  %7882 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7881
  %7883 = load float, float* %7882, align 4, !tbaa !129, !noalias !131
  %7884 = select i1 %7880, float %7883, float %7647
  %7885 = call float @dx.op.binary.f32(i32 36, float %7884, float %7879)  ; FMin(a,b)
  %7886 = call float @dx.op.binary.f32(i32 36, float %7733, float %7885)  ; FMin(a,b)
  %7887 = icmp eq i32 %7597, 0
  %7888 = fadd fast float %7886, %7876
  %7889 = fmul fast float %7888, %7578
  %7890 = fadd fast float %7889, %7591
  br i1 %7887, label %7896, label %7891

; <label>:7891                                    ; preds = %7873
  %7892 = fsub fast float %7886, %7876
  %7893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7892)  ; FMax(a,b)
  %7894 = fmul fast float %7893, %7890
  %7895 = fadd fast float %7894, %7875
  br label %7902

; <label>:7896                                    ; preds = %7873
  %7897 = fsub fast float %7876, %7886
  %7898 = call float @dx.op.unary.f32(i32 6, float %7897)  ; FAbs(value)
  %7899 = fadd fast float %7898, %7874
  %7900 = fmul fast float %7898, %7890
  %7901 = fsub fast float %7875, %7900
  br label %7902

; <label>:7902                                    ; preds = %7896, %7891
  %7903 = phi float [ %7893, %7891 ], [ %7899, %7896 ]
  %7904 = phi float [ %7895, %7891 ], [ %7901, %7896 ]
  %7905 = fcmp fast olt float %7884, %7733
  %7906 = icmp slt i32 %7881, 3
  %7907 = and i1 %7906, %7905
  br i1 %7907, label %7873, label %7908

; <label>:7908                                    ; preds = %7902
  br label %7909

; <label>:7909                                    ; preds = %7908, %7866
  %7910 = phi float [ %7731, %7866 ], [ %7903, %7908 ]
  %7911 = phi float [ %7732, %7866 ], [ %7904, %7908 ]
  %7912 = fsub fast float %7647, %7910
  %7913 = select i1 %7649, float %7910, float %7912
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7921 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7922 = extractvalue %dx.types.CBufRet.f32 %7918, 3
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7925 = call float @dx.op.binary.f32(i32 36, float %7911, float %7924)  ; FMin(a,b)
  %7926 = fmul fast float %7922, %7913
  %7927 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7928 = fsub fast float %7919, %7915
  %7929 = fsub fast float %7920, %7916
  %7930 = fsub fast float %7921, %7917
  %7931 = fmul fast float %7927, %7928
  %7932 = fmul fast float %7927, %7929
  %7933 = fmul fast float %7927, %7930
  %7934 = fadd fast float %7931, %7915
  %7935 = fadd fast float %7932, %7916
  %7936 = fadd fast float %7933, %7917
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.CBufRet.f32 %7937, 1
  %7940 = fadd fast float %7939, %7938
  %7941 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7937, 2
  %7943 = extractvalue %dx.types.CBufRet.f32 %7937, 3
  %7944 = fadd fast float %7943, %7942
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fmul fast float %7941, %7925
  %7947 = fmul fast float %7946, %7945
  br label %7948

; <label>:7948                                    ; preds = %7909, %7828, %7663, %7645, %7643
  %7949 = phi float [ %7672, %7663 ], [ %7831, %7828 ], [ %7913, %7909 ], [ 0.000000e+00, %7643 ], [ 0.000000e+00, %7645 ]
  %7950 = phi float [ %7706, %7663 ], [ %7865, %7828 ], [ %7947, %7909 ], [ 0.000000e+00, %7643 ], [ 0.000000e+00, %7645 ]
  %7951 = phi float [ %7693, %7663 ], [ %7852, %7828 ], [ %7934, %7909 ], [ 0.000000e+00, %7643 ], [ 0.000000e+00, %7645 ]
  %7952 = phi float [ %7694, %7663 ], [ %7853, %7828 ], [ %7935, %7909 ], [ 0.000000e+00, %7643 ], [ 0.000000e+00, %7645 ]
  %7953 = phi float [ %7695, %7663 ], [ %7854, %7828 ], [ %7936, %7909 ], [ 0.000000e+00, %7643 ], [ 0.000000e+00, %7645 ]
  %7954 = fmul fast float %7586, %7950
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7957 = fsub fast float %7593, %7956
  %7958 = fcmp fast olt float %7954, -2.000000e+01
  %7959 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 2
  %7965 = fmul fast float %7962, %7957
  %7966 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7967 = fsub fast float 1.000000e+00, %7966
  %7968 = fmul fast float %7578, 5.000000e-01
  %7969 = fadd fast float %7968, 5.000000e-01
  %7970 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7971 = fsub fast float 1.000000e+00, %7970
  %7972 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7967)  ; FMax(a,b)
  %7973 = fdiv fast float %7971, %7972
  %7974 = fsub fast float %7957, %7535
  %7975 = call float @dx.op.unary.f32(i32 6, float %7974)  ; FAbs(value)
  %7976 = fmul fast float %7975, %7961
  %7977 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7978 = fsub fast float 1.000000e+00, %7976
  %7979 = fmul fast float %7978, %7977
  %7980 = fadd fast float %7979, %7976
  %7981 = fmul fast float %7964, %7957
  %7982 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7983 = fsub fast float 1.000000e+00, %7980
  %7984 = fmul fast float %7983, %7982
  %7985 = fadd fast float %7984, %7980
  %7986 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7987 = fadd fast float %7959, -1.000000e+00
  %7988 = select i1 %7958, float -1.000000e+00, float %7987
  %7989 = fmul fast float %7986, %7988
  %7990 = fadd fast float %7989, 1.000000e+00
  %7991 = fsub fast float -0.000000e+00, %7989
  %7992 = fmul fast float %7951, %7991
  %7993 = fmul fast float %7952, %7991
  %7994 = fmul fast float %7953, %7991
  br label %7995

; <label>:7995                                    ; preds = %7948, %7544
  %7996 = phi float [ %7949, %7948 ], [ 0.000000e+00, %7544 ]
  %7997 = phi float [ %7990, %7948 ], [ 1.000000e+00, %7544 ]
  %7998 = phi float [ %7992, %7948 ], [ 0.000000e+00, %7544 ]
  %7999 = phi float [ %7993, %7948 ], [ 0.000000e+00, %7544 ]
  %8000 = phi float [ %7994, %7948 ], [ 0.000000e+00, %7544 ]
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8003 = fsub fast float 1.000000e+00, %7997
  %8004 = fmul fast float %8003, %7579
  %8005 = fmul fast float %8004, %8002
  %8006 = fsub fast float %7579, %8005
  br i1 %7572, label %8007, label %8036, !dx.controlflow.hints !167

; <label>:8007                                    ; preds = %7995
  %8008 = fmul fast float %7580, %7569
  %8009 = fadd fast float %8008, %7570
  %8010 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  %8011 = fmul fast float %7551, %8006
  %8012 = fsub fast float -0.000000e+00, %8011
  %8013 = fmul fast float %7552, %8006
  %8014 = fsub fast float -0.000000e+00, %8013
  %8015 = call float @dx.op.unary.f32(i32 21, float %8012)  ; Exp(value)
  %8016 = call float @dx.op.unary.f32(i32 21, float %8014)  ; Exp(value)
  %8017 = call float @dx.op.binary.f32(i32 35, float %7559, float %8015)  ; FMax(a,b)
  %8018 = call float @dx.op.binary.f32(i32 35, float %7559, float %8016)  ; FMax(a,b)
  %8019 = fsub fast float %8018, %8017
  %8020 = fmul fast float %8019, %8010
  %8021 = fadd fast float %8020, %8017
  %8022 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8023 = fsub fast float %7556, %7561
  %8024 = fsub fast float %7557, %7562
  %8025 = fsub fast float %7558, %7563
  %8026 = fmul fast float %8010, %8023
  %8027 = fmul fast float %8010, %8024
  %8028 = fmul fast float %8010, %8025
  %8029 = fadd fast float %8026, %7561
  %8030 = fadd fast float %8027, %7562
  %8031 = fadd fast float %8028, %7563
  %8032 = fsub fast float 1.000000e+00, %8022
  %8033 = fmul fast float %8032, %8029
  %8034 = fmul fast float %8032, %8030
  %8035 = fmul fast float %8032, %8031
  br label %8095

; <label>:8036                                    ; preds = %7995
  %8037 = fmul fast float %8006, %7568
  %8038 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8039 = fsub fast float 2.000000e+00, %8038
  %8040 = fmul fast float %8038, 9.921875e-01
  %8041 = fmul fast float %8040, %8039
  %8042 = fadd fast float %8041, 3.906250e-03
  %8043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8042, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = fsub fast float %8038, %8044
  %8046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8045)  ; FMax(a,b)
  %8047 = fmul fast float %7554, %7535
  %8048 = call float @dx.op.unary.f32(i32 6, float %8047)  ; FAbs(value)
  %8049 = fcmp fast ogt float %8048, 0x3EB0C6F7A0000000
  br i1 %8049, label %8050, label %8056, !dx.controlflow.hints !168

; <label>:8050                                    ; preds = %8036
  %8051 = fmul fast float %8047, 0xBFF7154760000000
  %8052 = call float @dx.op.unary.f32(i32 21, float %8051)  ; Exp(value)
  %8053 = fsub fast float 1.000000e+00, %8052
  %8054 = fdiv fast float %8053, %8047
  %8055 = fmul fast float %8054, %7564
  br label %8056

; <label>:8056                                    ; preds = %8050, %8036
  %8057 = phi float [ %8055, %8050 ], [ %7564, %8036 ]
  %8058 = fadd fast float %8057, %7566
  %8059 = fmul fast float %8058, %8046
  %8060 = fmul fast float %7551, %8059
  %8061 = fsub fast float -0.000000e+00, %8060
  %8062 = fmul fast float %7552, %8059
  %8063 = fsub fast float -0.000000e+00, %8062
  %8064 = fmul fast float %7553, %8059
  %8065 = fsub fast float -0.000000e+00, %8064
  %8066 = call float @dx.op.unary.f32(i32 21, float %8061)  ; Exp(value)
  %8067 = call float @dx.op.unary.f32(i32 21, float %8063)  ; Exp(value)
  %8068 = call float @dx.op.unary.f32(i32 21, float %8065)  ; Exp(value)
  %8069 = fmul fast float %7580, %7580
  %8070 = fadd fast float %8069, 1.000000e+00
  %8071 = fmul fast float %8070, 0x3FAE8EC8A0000000
  %8072 = fmul fast float %8071, %7561
  %8073 = fmul fast float %8071, %7562
  %8074 = fmul fast float %8071, %7563
  %8075 = fmul fast float %7580, %7559
  %8076 = fsub fast float 1.000000e+00, %8075
  %8077 = fmul fast float %7559, %7559
  %8078 = fsub fast float 1.000000e+00, %8077
  %8079 = fmul fast float %8078, 0x3FB45F3060000000
  %8080 = fmul fast float %8076, %8076
  %8081 = fdiv fast float 1.000000e+00, %8080
  %8082 = fmul fast float %8079, %8081
  %8083 = fmul fast float %8082, %7556
  %8084 = fmul fast float %8082, %7557
  %8085 = fmul fast float %8082, %7558
  %8086 = fadd fast float %8083, %8072
  %8087 = fadd fast float %8084, %8073
  %8088 = fadd fast float %8085, %8074
  %8089 = fsub fast float 1.000000e+00, %8066
  %8090 = fsub fast float 1.000000e+00, %8067
  %8091 = fsub fast float 1.000000e+00, %8068
  %8092 = fmul fast float %8086, %8089
  %8093 = fmul fast float %8087, %8090
  %8094 = fmul fast float %8088, %8091
  br label %8095

; <label>:8095                                    ; preds = %8056, %8007
  %8096 = phi float [ %8033, %8007 ], [ %8092, %8056 ]
  %8097 = phi float [ %8034, %8007 ], [ %8093, %8056 ]
  %8098 = phi float [ %8035, %8007 ], [ %8094, %8056 ]
  %8099 = phi float [ %8022, %8007 ], [ %8066, %8056 ]
  %8100 = phi float [ %8022, %8007 ], [ %8067, %8056 ]
  %8101 = phi float [ %8022, %8007 ], [ %8068, %8056 ]
  br i1 %7588, label %8102, label %8300, !dx.controlflow.hints !169

; <label>:8102                                    ; preds = %8095
  %8103 = extractvalue %dx.types.CBufRet.f32 %8001, 0
  %8104 = fmul fast float %8103, %8003
  %8105 = fsub fast float %7998, %8096
  %8106 = fsub fast float %7999, %8097
  %8107 = fsub fast float %8000, %8098
  %8108 = fmul fast float %8104, %8105
  %8109 = fmul fast float %8104, %8106
  %8110 = fmul fast float %8104, %8107
  %8111 = fadd fast float %8108, %8096
  %8112 = fadd fast float %8109, %8097
  %8113 = fadd fast float %8110, %8098
  %8114 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8099)  ; FMax(a,b)
  %8115 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8100)  ; FMax(a,b)
  %8116 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8101)  ; FMax(a,b)
  %8117 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7997)  ; FMax(a,b)
  %8118 = call float @dx.op.binary.f32(i32 35, float %7996, float %8006)  ; FMax(a,b)
  %8119 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8118)  ; FMax(a,b)
  %8120 = fdiv fast float %7996, %8119
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = fdiv fast float %8006, %8119
  %8123 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8124 = fcmp fast une float %8117, 1.000000e+00
  br i1 %8124, label %8125, label %8138, !dx.controlflow.hints !170

; <label>:8125                                    ; preds = %8102
  %8126 = call float @dx.op.unary.f32(i32 23, float %8117)  ; Log(value)
  %8127 = fmul fast float %8126, 0x3FE62E4300000000
  %8128 = fmul fast float %7998, %8127
  %8129 = fsub fast float -0.000000e+00, %8128
  %8130 = fmul fast float %7999, %8127
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = fmul fast float %8000, %8127
  %8133 = fsub fast float -0.000000e+00, %8132
  %8134 = fsub fast float 1.000000e+00, %8117
  %8135 = fdiv fast float %8129, %8134
  %8136 = fdiv fast float %8131, %8134
  %8137 = fdiv fast float %8133, %8134
  br label %8138

; <label>:8138                                    ; preds = %8125, %8102
  %8139 = phi float [ %8135, %8125 ], [ %7998, %8102 ]
  %8140 = phi float [ %8136, %8125 ], [ %7999, %8102 ]
  %8141 = phi float [ %8137, %8125 ], [ %8000, %8102 ]
  %8142 = phi float [ %8127, %8125 ], [ 0.000000e+00, %8102 ]
  %8143 = fcmp fast une float %8114, 1.000000e+00
  br i1 %8143, label %8144, label %8151, !dx.controlflow.hints !171

; <label>:8144                                    ; preds = %8138
  %8145 = call float @dx.op.unary.f32(i32 23, float %8114)  ; Log(value)
  %8146 = fmul fast float %8145, 0x3FE62E4300000000
  %8147 = fmul fast float %8111, %8146
  %8148 = fsub fast float -0.000000e+00, %8147
  %8149 = fsub fast float 1.000000e+00, %8114
  %8150 = fdiv fast float %8148, %8149
  br label %8151

; <label>:8151                                    ; preds = %8144, %8138
  %8152 = phi float [ %8150, %8144 ], [ %8111, %8138 ]
  %8153 = phi float [ %8146, %8144 ], [ 0.000000e+00, %8138 ]
  %8154 = fcmp fast une float %8115, 1.000000e+00
  br i1 %8154, label %8155, label %8162, !dx.controlflow.hints !171

; <label>:8155                                    ; preds = %8151
  %8156 = call float @dx.op.unary.f32(i32 23, float %8115)  ; Log(value)
  %8157 = fmul fast float %8156, 0x3FE62E4300000000
  %8158 = fmul fast float %8112, %8157
  %8159 = fsub fast float -0.000000e+00, %8158
  %8160 = fsub fast float 1.000000e+00, %8115
  %8161 = fdiv fast float %8159, %8160
  br label %8162

; <label>:8162                                    ; preds = %8155, %8151
  %8163 = phi float [ %8161, %8155 ], [ %8112, %8151 ]
  %8164 = phi float [ %8157, %8155 ], [ 0.000000e+00, %8151 ]
  %8165 = fcmp fast une float %8116, 1.000000e+00
  br i1 %8165, label %8166, label %8173, !dx.controlflow.hints !171

; <label>:8166                                    ; preds = %8162
  %8167 = call float @dx.op.unary.f32(i32 23, float %8116)  ; Log(value)
  %8168 = fmul fast float %8167, 0x3FE62E4300000000
  %8169 = fmul fast float %8113, %8168
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = fsub fast float 1.000000e+00, %8116
  %8172 = fdiv fast float %8170, %8171
  br label %8173

; <label>:8173                                    ; preds = %8166, %8162
  %8174 = phi float [ %8172, %8166 ], [ %8113, %8162 ]
  %8175 = phi float [ %8168, %8166 ], [ 0.000000e+00, %8162 ]
  %8176 = fmul fast float %8139, %8123
  %8177 = fmul fast float %8140, %8123
  %8178 = fmul fast float %8141, %8123
  %8179 = fmul fast float %8142, %8123
  %8180 = fmul fast float %8152, %8121
  %8181 = fmul fast float %8163, %8121
  %8182 = fmul fast float %8174, %8121
  %8183 = fmul fast float %8153, %8121
  %8184 = fmul fast float %8164, %8121
  %8185 = fmul fast float %8175, %8121
  %8186 = fadd fast float %8180, %8176
  %8187 = fadd fast float %8181, %8177
  %8188 = fadd fast float %8182, %8178
  %8189 = fadd fast float %8183, %8179
  %8190 = fadd fast float %8184, %8179
  %8191 = fadd fast float %8185, %8179
  %8192 = fcmp fast une float %8189, 0.000000e+00
  br i1 %8192, label %8193, label %8200, !dx.controlflow.hints !172

; <label>:8193                                    ; preds = %8173
  %8194 = fmul fast float %8189, 0x3FF7154760000000
  %8195 = call float @dx.op.unary.f32(i32 21, float %8194)  ; Exp(value)
  %8196 = fsub fast float 1.000000e+00, %8195
  %8197 = fmul fast float %8186, %8196
  %8198 = fsub fast float -0.000000e+00, %8197
  %8199 = fdiv fast float %8198, %8189
  br label %8200

; <label>:8200                                    ; preds = %8193, %8173
  %8201 = phi float [ %8195, %8193 ], [ 1.000000e+00, %8173 ]
  %8202 = phi float [ %8199, %8193 ], [ %8186, %8173 ]
  %8203 = fcmp fast une float %8190, 0.000000e+00
  br i1 %8203, label %8204, label %8211, !dx.controlflow.hints !172

; <label>:8204                                    ; preds = %8200
  %8205 = fmul fast float %8190, 0x3FF7154760000000
  %8206 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8207 = fsub fast float 1.000000e+00, %8206
  %8208 = fmul fast float %8187, %8207
  %8209 = fsub fast float -0.000000e+00, %8208
  %8210 = fdiv fast float %8209, %8190
  br label %8211

; <label>:8211                                    ; preds = %8204, %8200
  %8212 = phi float [ %8206, %8204 ], [ 1.000000e+00, %8200 ]
  %8213 = phi float [ %8210, %8204 ], [ %8187, %8200 ]
  %8214 = fcmp fast une float %8191, 0.000000e+00
  br i1 %8214, label %8215, label %8222, !dx.controlflow.hints !172

; <label>:8215                                    ; preds = %8211
  %8216 = fmul fast float %8191, 0x3FF7154760000000
  %8217 = call float @dx.op.unary.f32(i32 21, float %8216)  ; Exp(value)
  %8218 = fsub fast float 1.000000e+00, %8217
  %8219 = fmul fast float %8188, %8218
  %8220 = fsub fast float -0.000000e+00, %8219
  %8221 = fdiv fast float %8220, %8191
  br label %8222

; <label>:8222                                    ; preds = %8215, %8211
  %8223 = phi float [ %8217, %8215 ], [ 1.000000e+00, %8211 ]
  %8224 = phi float [ %8221, %8215 ], [ %8188, %8211 ]
  %8225 = fcmp fast ogt float %8121, %8123
  br i1 %8225, label %8226, label %8246

; <label>:8226                                    ; preds = %8222
  %8227 = fsub fast float 1.000000e+00, %8123
  %8228 = fmul fast float %8139, %8227
  %8229 = fmul fast float %8140, %8227
  %8230 = fmul fast float %8141, %8227
  %8231 = fmul fast float %8142, %8227
  %8232 = fcmp fast une float %8231, 0.000000e+00
  br i1 %8232, label %8233, label %8284, !dx.controlflow.hints !173

; <label>:8233                                    ; preds = %8226
  %8234 = fmul fast float %8231, 0x3FF7154760000000
  %8235 = call float @dx.op.unary.f32(i32 21, float %8234)  ; Exp(value)
  %8236 = fsub fast float 1.000000e+00, %8235
  %8237 = fmul fast float %8228, %8236
  %8238 = fsub fast float -0.000000e+00, %8237
  %8239 = fmul fast float %8229, %8236
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fmul fast float %8230, %8236
  %8242 = fsub fast float -0.000000e+00, %8241
  %8243 = fdiv fast float %8238, %8231
  %8244 = fdiv fast float %8240, %8231
  %8245 = fdiv fast float %8242, %8231
  br label %8284

; <label>:8246                                    ; preds = %8222
  %8247 = fsub fast float 1.000000e+00, %8121
  %8248 = fmul fast float %8152, %8247
  %8249 = fmul fast float %8163, %8247
  %8250 = fmul fast float %8174, %8247
  %8251 = fmul fast float %8153, %8247
  %8252 = fmul fast float %8164, %8247
  %8253 = fmul fast float %8175, %8247
  %8254 = fcmp fast une float %8251, 0.000000e+00
  br i1 %8254, label %8255, label %8262, !dx.controlflow.hints !172

; <label>:8255                                    ; preds = %8246
  %8256 = fmul fast float %8251, 0x3FF7154760000000
  %8257 = call float @dx.op.unary.f32(i32 21, float %8256)  ; Exp(value)
  %8258 = fsub fast float 1.000000e+00, %8257
  %8259 = fmul fast float %8248, %8258
  %8260 = fsub fast float -0.000000e+00, %8259
  %8261 = fdiv fast float %8260, %8251
  br label %8262

; <label>:8262                                    ; preds = %8255, %8246
  %8263 = phi float [ %8261, %8255 ], [ %8248, %8246 ]
  %8264 = phi float [ %8257, %8255 ], [ 1.000000e+00, %8246 ]
  %8265 = fcmp fast une float %8252, 0.000000e+00
  br i1 %8265, label %8266, label %8273, !dx.controlflow.hints !172

; <label>:8266                                    ; preds = %8262
  %8267 = fmul fast float %8252, 0x3FF7154760000000
  %8268 = call float @dx.op.unary.f32(i32 21, float %8267)  ; Exp(value)
  %8269 = fsub fast float 1.000000e+00, %8268
  %8270 = fmul fast float %8249, %8269
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = fdiv fast float %8271, %8252
  br label %8273

; <label>:8273                                    ; preds = %8266, %8262
  %8274 = phi float [ %8272, %8266 ], [ %8249, %8262 ]
  %8275 = phi float [ %8268, %8266 ], [ 1.000000e+00, %8262 ]
  %8276 = fcmp fast une float %8253, 0.000000e+00
  br i1 %8276, label %8277, label %8284, !dx.controlflow.hints !172

; <label>:8277                                    ; preds = %8273
  %8278 = fmul fast float %8253, 0x3FF7154760000000
  %8279 = call float @dx.op.unary.f32(i32 21, float %8278)  ; Exp(value)
  %8280 = fsub fast float 1.000000e+00, %8279
  %8281 = fmul fast float %8250, %8280
  %8282 = fsub fast float -0.000000e+00, %8281
  %8283 = fdiv fast float %8282, %8253
  br label %8284

; <label>:8284                                    ; preds = %8277, %8273, %8233, %8226
  %8285 = phi float [ %8283, %8277 ], [ %8245, %8233 ], [ %8230, %8226 ], [ %8250, %8273 ]
  %8286 = phi float [ %8274, %8277 ], [ %8244, %8233 ], [ %8229, %8226 ], [ %8274, %8273 ]
  %8287 = phi float [ %8263, %8277 ], [ %8243, %8233 ], [ %8228, %8226 ], [ %8263, %8273 ]
  %8288 = phi float [ %8279, %8277 ], [ %8235, %8233 ], [ 1.000000e+00, %8226 ], [ 1.000000e+00, %8273 ]
  %8289 = phi float [ %8275, %8277 ], [ %8235, %8233 ], [ 1.000000e+00, %8226 ], [ %8275, %8273 ]
  %8290 = phi float [ %8264, %8277 ], [ %8235, %8233 ], [ 1.000000e+00, %8226 ], [ %8264, %8273 ]
  %8291 = fmul fast float %8290, %8202
  %8292 = fmul fast float %8289, %8213
  %8293 = fmul fast float %8288, %8224
  %8294 = fadd fast float %8291, %8287
  %8295 = fadd fast float %8292, %8286
  %8296 = fadd fast float %8293, %8285
  %8297 = fmul fast float %8290, %8201
  %8298 = fmul fast float %8289, %8212
  %8299 = fmul fast float %8288, %8223
  br label %8300

; <label>:8300                                    ; preds = %8284, %8095
  %8301 = phi float [ %8299, %8284 ], [ %8101, %8095 ]
  %8302 = phi float [ %8298, %8284 ], [ %8100, %8095 ]
  %8303 = phi float [ %8297, %8284 ], [ %8099, %8095 ]
  %8304 = phi float [ %8296, %8284 ], [ %8098, %8095 ]
  %8305 = phi float [ %8295, %8284 ], [ %8097, %8095 ]
  %8306 = phi float [ %8294, %8284 ], [ %8096, %8095 ]
  %8307 = fmul fast float %8306, %7252
  %8308 = fmul fast float %8305, %7252
  %8309 = fmul fast float %8304, %7252
  %8310 = fmul fast float %8303, %7543
  %8311 = call float @dx.op.dot3.f32(i32 55, float %8303, float %8302, float %8301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8312 = call float @dx.op.dot3.f32(i32 55, float %8307, float %8308, float %8309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8313 = select i1 %267, float %8311, float %8303
  %8314 = select i1 %267, float %8311, float %8302
  %8315 = select i1 %267, float 1.000000e+00, float %8301
  %8316 = select i1 %267, float %8312, float %8307
  %8317 = select i1 %267, float 0.000000e+00, float %8308
  %8318 = select i1 %267, float 0.000000e+00, float %8309
  %8319 = fmul fast float %8313, %7537
  %8320 = fmul fast float %8314, %7538
  %8321 = fmul fast float %8315, %7539
  %8322 = fadd fast float %8319, %8316
  %8323 = fadd fast float %8320, %8317
  %8324 = fadd fast float %8318, %8321
  %8325 = fmul fast float %8313, %7540
  %8326 = fmul fast float %8314, %7541
  %8327 = fmul fast float %8315, %7542
  %8328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.i32 %8328, 0
  %8330 = icmp eq i32 %8329, 0
  br i1 %8330, label %8698, label %8331, !dx.controlflow.hints !174

; <label>:8331                                    ; preds = %8300
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8334 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8335 = fmul fast float %8333, %108
  %8336 = fmul fast float %8334, %109
  %8337 = fmul fast float %8335, 2.000000e+00
  %8338 = fmul fast float %8336, 2.000000e+00
  %8339 = fsub fast float 1.000000e+00, %8337
  %8340 = fsub fast float 1.000000e+00, %8338
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = fmul fast float %8339, %8342
  %8346 = fmul fast float %8339, %8343
  %8347 = fmul fast float %8339, %8344
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 0
  %8350 = extractvalue %dx.types.CBufRet.f32 %8348, 1
  %8351 = extractvalue %dx.types.CBufRet.f32 %8348, 2
  %8352 = fmul fast float %8340, %8349
  %8353 = fmul fast float %8340, %8350
  %8354 = fmul fast float %8340, %8351
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %8357 = extractvalue %dx.types.CBufRet.f32 %8355, 1
  %8358 = extractvalue %dx.types.CBufRet.f32 %8355, 2
  %8359 = fadd fast float %8352, %8356
  %8360 = fadd fast float %8359, %8345
  %8361 = fadd fast float %8353, %8357
  %8362 = fadd fast float %8361, %8346
  %8363 = fadd fast float %8354, %8358
  %8364 = fadd fast float %8363, %8347
  %8365 = fmul fast float %8360, %7536
  %8366 = fmul fast float %8362, %7536
  %8367 = fmul fast float %8364, %7536
  %8368 = fmul fast float %8365, %8365
  %8369 = fmul fast float %8366, %8366
  %8370 = fadd fast float %8368, %8369
  %8371 = fmul fast float %8367, %8367
  %8372 = fadd fast float %8370, %8371
  %8373 = call float @dx.op.unary.f32(i32 24, float %8372)  ; Sqrt(value)
  %8374 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %8375 = fsub fast float %8373, %8374
  %8376 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %8377 = fmul fast float %8375, %8376
  %8378 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8379 = fadd fast float %8378, -5.000000e-01
  %8380 = fmul fast float %8379, 2.000000e+00
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8383 = call float @dx.op.binary.f32(i32 36, float %8382, float %8380)  ; FMin(a,b)
  %8384 = fsub fast float -0.000000e+00, %8382
  %8385 = fcmp fast ogt float %8383, %8384
  br i1 %8385, label %8386, label %8698, !dx.controlflow.hints !175

; <label>:8386                                    ; preds = %8331
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 3
  %8389 = fcmp fast ogt float %8388, 0.000000e+00
  br i1 %8389, label %8390, label %8465, !dx.controlflow.hints !176

; <label>:8390                                    ; preds = %8386
  %8391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8392 = extractvalue %dx.types.Dimensions %8391, 0
  %8393 = sitofp i32 %8392 to float
  %8394 = extractvalue %dx.types.Dimensions %8391, 1
  %8395 = sitofp i32 %8394 to float
  %8396 = fmul fast float %8335, %8393
  %8397 = fmul fast float %8336, %8395
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 1
  %8400 = fsub fast float -0.000000e+00, %8399
  %8401 = fptoui float %8400 to i32
  %8402 = fptoui float %8396 to i32
  %8403 = fptoui float %8397 to i32
  %8404 = and i32 %8401, 31
  %8405 = lshr i32 %8402, %8404
  %8406 = lshr i32 %8403, %8404
  %8407 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8401, i32 %8405, i32 %8406, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = fcmp fast olt float %8408, -1.000000e+00
  %8410 = fcmp fast ogt float %8408, -1.000000e+00
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8413 = select i1 %8410, float %8412, float 1.000000e+00
  %8414 = fadd fast float %8408, 1.000000e+00
  %8415 = fmul fast float %8413, %8414
  %8416 = call float @dx.op.unary.f32(i32 6, float %8415)  ; FAbs(value)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8411, 3
  %8418 = fcmp fast oge float %8416, %8417
  %8419 = select i1 %8418, float 0x4197782600000000, float %8416
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 0
  %8422 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8423 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %8424 = select i1 %8409, float %8421, float %8342
  %8425 = select i1 %8409, float %8422, float %8343
  %8426 = select i1 %8409, float %8423, float %8344
  %8427 = fmul fast float %8424, %8339
  %8428 = fmul fast float %8425, %8339
  %8429 = fmul fast float %8426, %8339
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8433 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8434 = select i1 %8409, float %8431, float %8349
  %8435 = select i1 %8409, float %8432, float %8350
  %8436 = select i1 %8409, float %8433, float %8351
  %8437 = fmul fast float %8434, %8340
  %8438 = fmul fast float %8435, %8340
  %8439 = fmul fast float %8436, %8340
  %8440 = fadd fast float %8437, %8427
  %8441 = fadd fast float %8438, %8428
  %8442 = fadd fast float %8439, %8429
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8445 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8446 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8447 = select i1 %8409, float %8444, float %8356
  %8448 = select i1 %8409, float %8445, float %8357
  %8449 = select i1 %8409, float %8446, float %8358
  %8450 = fadd fast float %8440, %8447
  %8451 = fadd fast float %8441, %8448
  %8452 = fadd fast float %8442, %8449
  %8453 = fmul fast float %8450, %8419
  %8454 = fmul fast float %8451, %8419
  %8455 = fmul fast float %8452, %8419
  %8456 = fmul fast float %8453, %8453
  %8457 = fmul fast float %8454, %8454
  %8458 = fadd fast float %8456, %8457
  %8459 = fmul fast float %8455, %8455
  %8460 = fadd fast float %8458, %8459
  %8461 = call float @dx.op.unary.f32(i32 24, float %8460)  ; Sqrt(value)
  %8462 = fsub fast float %8461, %8374
  %8463 = fmul fast float %8462, %8376
  %8464 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  br label %8465

; <label>:8465                                    ; preds = %8390, %8386
  %8466 = phi float [ %8464, %8390 ], [ 1.000000e+00, %8386 ]
  %8467 = fmul fast float %8383, 5.000000e-01
  %8468 = fadd fast float %8467, 5.000000e-01
  %8469 = call float @dx.op.unary.f32(i32 22, float %8468)  ; Frc(value)
  %8470 = call float @dx.op.unary.f32(i32 27, float %8469)  ; Round_ni(value)
  %8471 = call float @dx.op.unary.f32(i32 22, float %8469)  ; Frc(value)
  %8472 = fmul fast float %8471, 2.000000e+00
  %8473 = fadd fast float %8472, -1.000000e+00
  %8474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8335, float %8336, float %8470, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8475 = extractvalue %dx.types.ResRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.ResRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.ResRet.f32 %8474, 2
  %8478 = extractvalue %dx.types.ResRet.f32 %8474, 3
  %8479 = fadd fast float %8475, -5.000000e-01
  %8480 = fadd fast float %8477, -5.000000e-01
  %8481 = fmul fast float %8479, 0xBFD5555560000000
  %8482 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8480, float %8481)  ; FMad(a,b,c)
  %8483 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8476, float 0.000000e+00)  ; FMad(a,b,c)
  %8484 = fadd fast float %8483, %8478
  %8485 = fmul fast float %8479, -7.500000e-01
  %8486 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8480, float %8485)  ; FMad(a,b,c)
  %8487 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8476, float 0.000000e+00)  ; FMad(a,b,c)
  %8488 = fadd fast float %8487, %8478
  %8489 = call float @dx.op.binary.f32(i32 35, float %8482, float -1.000000e+00)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8484, float -1.000000e+00)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8486, float -1.000000e+00)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8488, float -1.000000e+00)  ; FMax(a,b)
  %8493 = call float @dx.op.binary.f32(i32 36, float %8489, float 1.000000e+00)  ; FMin(a,b)
  %8494 = call float @dx.op.binary.f32(i32 36, float %8490, float 1.000000e+00)  ; FMin(a,b)
  %8495 = call float @dx.op.binary.f32(i32 36, float %8491, float 1.000000e+00)  ; FMin(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8492, float 1.000000e+00)  ; FMin(a,b)
  %8497 = fcmp fast olt float %8493, 0x3FEFFF8020000000
  br i1 %8497, label %8498, label %8613, !dx.controlflow.hints !177

; <label>:8498                                    ; preds = %8465
  %8499 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.CBufRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8504 = extractvalue %dx.types.CBufRet.f32 %8500, 3
  %8505 = fsub fast float %8501, %8493
  %8506 = fsub fast float %8502, %8494
  %8507 = fsub fast float %8503, %8495
  %8508 = fsub fast float %8504, %8496
  %8509 = fmul fast float %8505, %8499
  %8510 = fmul fast float %8506, %8499
  %8511 = fmul fast float %8507, %8499
  %8512 = fmul fast float %8508, %8499
  %8513 = fadd fast float %8509, %8493
  %8514 = fadd fast float %8510, %8494
  %8515 = fsub fast float -0.000000e+00, %8514
  %8516 = fadd fast float %8511, %8495
  %8517 = fadd fast float %8512, %8496
  %8518 = fmul fast float %8513, %8513
  %8519 = fsub fast float %8514, %8518
  %8520 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8519)  ; FMax(a,b)
  %8521 = fdiv fast float 1.000000e+00, %8520
  %8522 = fmul fast float %8514, %8513
  %8523 = fsub fast float %8516, %8522
  %8524 = fsub fast float %8473, %8513
  %8525 = fmul fast float %8473, %8473
  %8526 = fsub fast float %8525, %8514
  %8527 = fmul fast float %8524, %8521
  %8528 = fmul fast float %8527, %8523
  %8529 = fsub fast float %8526, %8528
  %8530 = fmul fast float %8514, %8514
  %8531 = fsub fast float %8517, %8530
  %8532 = fmul fast float %8523, %8523
  %8533 = fmul fast float %8532, %8521
  %8534 = fsub fast float %8531, %8533
  %8535 = fdiv fast float %8529, %8534
  %8536 = fmul fast float %8523, %8535
  %8537 = fsub fast float %8524, %8536
  %8538 = fmul fast float %8537, %8521
  %8539 = fmul fast float %8538, %8513
  %8540 = fsub fast float 1.000000e+00, %8539
  %8541 = fmul fast float %8514, %8535
  %8542 = fsub fast float %8540, %8541
  %8543 = fmul fast float %8538, %8538
  %8544 = fmul fast float %8535, 4.000000e+00
  %8545 = fmul fast float %8544, %8542
  %8546 = fsub fast float %8543, %8545
  %8547 = call float @dx.op.unary.f32(i32 24, float %8546)  ; Sqrt(value)
  %8548 = fcmp fast oge float %8538, 0.000000e+00
  %8549 = fsub fast float -0.000000e+00, %8547
  %8550 = select i1 %8548, float %8549, float %8547
  %8551 = fsub fast float %8550, %8538
  %8552 = fdiv fast float %8551, %8535
  %8553 = fdiv fast float %8542, %8551
  %8554 = fmul fast float %8552, 5.000000e-01
  %8555 = fmul fast float %8553, 2.000000e+00
  %8556 = select i1 %8548, float %8554, float %8555
  %8557 = select i1 %8548, float %8555, float %8554
  %8558 = call float @dx.op.binary.f32(i32 35, float %8556, float %8557)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 36, float %8556, float %8557)  ; FMin(a,b)
  %8560 = fcmp fast ogt float %8473, %8559
  br i1 %8560, label %8561, label %8571

; <label>:8561                                    ; preds = %8498
  %8562 = fsub fast float %8473, %8559
  %8563 = fsub fast float %8558, %8559
  %8564 = fmul fast float %8562, %8563
  %8565 = fmul fast float %8558, %8473
  %8566 = fadd fast float %8558, %8473
  %8567 = fmul fast float %8566, %8513
  %8568 = fadd fast float %8565, %8514
  %8569 = fsub fast float %8568, %8567
  %8570 = fdiv fast float %8569, %8564
  br label %8571

; <label>:8571                                    ; preds = %8561, %8498
  %8572 = phi float [ %8570, %8561 ], [ 0.000000e+00, %8498 ]
  %8573 = fcmp fast ogt float %8473, %8558
  %8574 = fsub fast float %8473, %8558
  br i1 %8573, label %8575, label %8585

; <label>:8575                                    ; preds = %8571
  %8576 = fsub fast float %8558, %8559
  %8577 = fmul fast float %8576, %8574
  %8578 = fmul fast float %8559, %8473
  %8579 = fadd fast float %8559, %8473
  %8580 = fmul fast float %8579, %8513
  %8581 = fsub fast float %8515, %8578
  %8582 = fadd fast float %8581, %8580
  %8583 = fdiv fast float %8582, %8577
  %8584 = fadd fast float %8583, %8572
  br label %8585

; <label>:8585                                    ; preds = %8575, %8571
  %8586 = phi float [ %8584, %8575 ], [ %8572, %8571 ]
  %8587 = fsub fast float %8473, %8559
  %8588 = fmul fast float %8587, %8574
  %8589 = fmul fast float %8559, %8558
  %8590 = fadd fast float %8559, %8558
  %8591 = fmul fast float %8590, %8513
  %8592 = fadd fast float %8589, %8514
  %8593 = fsub fast float %8592, %8591
  %8594 = fdiv fast float %8593, %8588
  %8595 = call float @dx.op.unary.f32(i32 7, float %8586)  ; Saturate(value)
  %8596 = fcmp fast oeq float %7264, 0.000000e+00
  %8597 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %8598 = fcmp fast oeq float %8597, 0.000000e+00
  %8599 = or i1 %8596, %8598
  %8600 = fmul fast float %8597, 2.000000e+00
  %8601 = fadd fast float %8382, %8383
  %8602 = fdiv fast float %8601, %8600
  %8603 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8604 = fmul fast float %8603, 2.000000e+00
  %8605 = fsub fast float 3.000000e+00, %8604
  %8606 = fmul fast float %8603, %8603
  %8607 = fmul fast float %8606, %8605
  %8608 = select i1 %8599, float 1.000000e+00, float %8607
  %8609 = fmul fast float %8594, %7264
  %8610 = fadd fast float %8595, %8609
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fmul fast float %8608, %8611
  br label %8613

; <label>:8613                                    ; preds = %8585, %8465
  %8614 = phi float [ %8612, %8585 ], [ 0.000000e+00, %8465 ]
  %8615 = fsub fast float 1.000000e+00, %8614
  %8616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8335, float %8336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8617 = extractvalue %dx.types.ResRet.f32 %8616, 0
  %8618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.i32 %8618, 2
  %8620 = icmp eq i32 %8619, 0
  br i1 %8620, label %8626, label %8621

; <label>:8621                                    ; preds = %8613
  %8622 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8623 = fadd fast float %8617, -1.000000e+00
  %8624 = fmul fast float %8622, %8623
  %8625 = fadd fast float %8624, 1.000000e+00
  br label %8626

; <label>:8626                                    ; preds = %8621, %8613
  %8627 = phi float [ %8625, %8621 ], [ %8615, %8613 ]
  br i1 %8389, label %8628, label %8646

; <label>:8628                                    ; preds = %8626
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 1
  %8631 = fsub fast float %8466, %8630
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fsub fast float %8466, %8388
  %8634 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8635 = fsub fast float %8632, %8634
  %8636 = fsub fast float %8468, %8634
  %8637 = fdiv fast float %8636, %8635
  %8638 = call float @dx.op.unary.f32(i32 7, float %8637)  ; Saturate(value)
  %8639 = fmul fast float %8638, 2.000000e+00
  %8640 = fsub fast float 3.000000e+00, %8639
  %8641 = fsub fast float %8617, %8627
  %8642 = fmul fast float %8638, %8638
  %8643 = fmul fast float %8642, %8641
  %8644 = fmul fast float %8643, %8640
  %8645 = fadd fast float %8644, %8627
  br label %8646

; <label>:8646                                    ; preds = %8628, %8626
  %8647 = phi float [ %8645, %8628 ], [ %8627, %8626 ]
  %8648 = call float @dx.op.binary.f32(i32 35, float %8617, float %8647)  ; FMax(a,b)
  %8649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.i32 %8649, 2
  %8651 = and i32 %8650, 1
  %8652 = icmp eq i32 %8651, 0
  %8653 = fcmp fast une float %8648, 1.000000e+00
  %8654 = and i1 %8653, %8652
  br i1 %8654, label %8655, label %8674

; <label>:8655                                    ; preds = %8646
  %8656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8335, float %8336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8657 = extractvalue %dx.types.ResRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.ResRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.ResRet.f32 %8656, 2
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 1
  %8662 = fmul fast float %8661, %8657
  %8663 = fmul fast float %8661, %8658
  %8664 = fmul fast float %8661, %8659
  %8665 = fcmp fast ogt float %8617, 0x3FEFFF2E40000000
  %8666 = fsub fast float 1.000000e+00, %8648
  %8667 = fsub fast float 1.000000e+00, %8617
  %8668 = fdiv fast float %8666, %8667
  %8669 = call float @dx.op.unary.f32(i32 7, float %8668)  ; Saturate(value)
  %8670 = select i1 %8665, float 0.000000e+00, float %8669
  %8671 = fmul fast float %8662, %8670
  %8672 = fmul fast float %8663, %8670
  %8673 = fmul fast float %8664, %8670
  br label %8674

; <label>:8674                                    ; preds = %8655, %8646
  %8675 = phi float [ 0.000000e+00, %8646 ], [ %8671, %8655 ]
  %8676 = phi float [ 0.000000e+00, %8646 ], [ %8672, %8655 ]
  %8677 = phi float [ 0.000000e+00, %8646 ], [ %8673, %8655 ]
  %8678 = fmul fast float %8675, %7252
  %8679 = fmul fast float %8676, %7252
  %8680 = fmul fast float %8677, %7252
  %8681 = fmul fast float %8648, %8310
  %8682 = call float @dx.op.dot3.f32(i32 55, float %8648, float %8648, float %8648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8683 = call float @dx.op.dot3.f32(i32 55, float %8678, float %8679, float %8680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8684 = select i1 %267, float %8682, float %8648
  %8685 = select i1 %267, float 1.000000e+00, float %8648
  %8686 = select i1 %267, float %8683, float %8678
  %8687 = select i1 %267, float 0.000000e+00, float %8679
  %8688 = select i1 %267, float 0.000000e+00, float %8680
  %8689 = fmul fast float %8684, %8322
  %8690 = fmul fast float %8684, %8323
  %8691 = fmul fast float %8685, %8324
  %8692 = fadd fast float %8689, %8686
  %8693 = fadd fast float %8690, %8687
  %8694 = fadd fast float %8688, %8691
  %8695 = fmul fast float %8684, %8325
  %8696 = fmul fast float %8684, %8326
  %8697 = fmul fast float %8685, %8327
  br label %8698

; <label>:8698                                    ; preds = %8674, %8331, %8300, %7532
  %8699 = phi float [ %7537, %7532 ], [ %8322, %8300 ], [ %8692, %8674 ], [ %8322, %8331 ]
  %8700 = phi float [ %7538, %7532 ], [ %8323, %8300 ], [ %8693, %8674 ], [ %8323, %8331 ]
  %8701 = phi float [ %7539, %7532 ], [ %8324, %8300 ], [ %8694, %8674 ], [ %8324, %8331 ]
  %8702 = phi float [ %7540, %7532 ], [ %8325, %8300 ], [ %8695, %8674 ], [ %8325, %8331 ]
  %8703 = phi float [ %7541, %7532 ], [ %8326, %8300 ], [ %8696, %8674 ], [ %8326, %8331 ]
  %8704 = phi float [ %7542, %7532 ], [ %8327, %8300 ], [ %8697, %8674 ], [ %8327, %8331 ]
  %8705 = phi float [ %7543, %7532 ], [ %8310, %8300 ], [ %8681, %8674 ], [ %8310, %8331 ]
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 2
  %8708 = extractvalue %dx.types.CBufRet.f32 %8706, 3
  %8709 = fmul fast float %8707, %108
  %8710 = fmul fast float %8708, %109
  %8711 = call float @dx.op.unary.f32(i32 7, float %8709)  ; Saturate(value)
  %8712 = call float @dx.op.unary.f32(i32 7, float %8710)  ; Saturate(value)
  %8713 = select i1 %7274, i32 2, i32 0
  %8714 = or i32 %8713, 1
  %8715 = uitofp i32 %8714 to float
  %8716 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8711, float %8712, float %8715, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8717 = extractvalue %dx.types.ResRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.ResRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.ResRet.f32 %8716, 2
  %8720 = extractvalue %dx.types.ResRet.f32 %8716, 3
  %8721 = add nuw nsw i32 %8713, 2
  %8722 = uitofp i32 %8721 to float
  %8723 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8711, float %8712, float %8722, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.ResRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.ResRet.f32 %8723, 2
  %8727 = extractvalue %dx.types.ResRet.f32 %8723, 3
  %8728 = call float @dx.op.binary.f32(i32 35, float %8718, float %8719)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float %8717, float %8728)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8729, float %8720)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8725, float %8726)  ; FMin(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8724, float %8731)  ; FMin(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8732, float %8727)  ; FMin(a,b)
  %8734 = fmul fast float %8730, 2.550000e+02
  %8735 = fadd fast float %8734, 0x3F70101020000000
  %8736 = fptoui float %8735 to i32
  %8737 = fmul fast float %8733, 2.550000e+02
  %8738 = fadd fast float %8737, 0x3F70101020000000
  %8739 = fptoui float %8738 to i32
  %8740 = icmp ult i32 %8736, %8739
  br i1 %8740, label %8741, label %8910

; <label>:8741                                    ; preds = %8698
  %8742 = fcmp fast ogt float %98, 9.843750e-01
  %8743 = fadd fast float %7536, -4.000000e+00
  %8744 = select i1 %8742, float -4.000000e+00, float %8743
  %8745 = call float @dx.op.binary.f32(i32 35, float %8744, float 0.000000e+00)  ; FMax(a,b)
  %8746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8746, 0
  %8748 = fadd fast float %8747, %8745
  %8749 = extractvalue %dx.types.CBufRet.f32 %8746, 2
  %8750 = fmul fast float %8748, %8749
  %8751 = call float @dx.op.unary.f32(i32 23, float %8750)  ; Log(value)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8746, 3
  %8753 = fmul fast float %8752, %8751
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8756 = fmul fast float %8753, %8755
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = uitofp i32 %8736 to float
  %8759 = uitofp i32 %8739 to float
  %8760 = fadd fast float %8758, 5.000000e-01
  %8761 = fadd fast float %8759, 5.000000e-01
  %8762 = fmul fast float %8755, %8760
  %8763 = fmul fast float %8755, %8761
  %8764 = fadd fast float %8762, 0x3F0FFB4800000000
  %8765 = fadd fast float %8763, 0xBF0FFB4800000000
  %8766 = call float @dx.op.binary.f32(i32 35, float %8757, float %8764)  ; FMax(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8766, float %8765)  ; FMin(a,b)
  %8768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8769 = extractvalue %dx.types.CBufRet.f32 %8768, 1
  %8770 = extractvalue %dx.types.CBufRet.f32 %8768, 2
  %8771 = extractvalue %dx.types.CBufRet.f32 %8768, 0
  %8772 = select i1 %7274, float %8771, float 0.000000e+00
  %8773 = fmul fast float %8769, %8767
  %8774 = fadd fast float %8772, %8773
  %8775 = fadd fast float %8772, %8770
  %8776 = fsub fast float %8769, %8770
  %8777 = fadd fast float %8776, %8772
  %8778 = call float @dx.op.binary.f32(i32 35, float %8774, float %8775)  ; FMax(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8778, float %8777)  ; FMin(a,b)
  %8780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8711, float %8712, float %8779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8781 = extractvalue %dx.types.ResRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.ResRet.f32 %8780, 1
  %8783 = extractvalue %dx.types.ResRet.f32 %8780, 2
  %8784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.i32 %8784, 0
  %8786 = extractvalue %dx.types.CBufRet.i32 %8784, 1
  %8787 = uitofp i32 %8785 to float
  %8788 = uitofp i32 %8786 to float
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.CBufRet.f32 %8789, 1
  %8792 = fmul fast float %8787, %8711
  %8793 = fmul fast float %8788, %8712
  %8794 = fadd fast float %8792, -5.000000e-01
  %8795 = fadd fast float %8793, -5.000000e-01
  %8796 = call float @dx.op.unary.f32(i32 22, float %8794)  ; Frc(value)
  %8797 = call float @dx.op.unary.f32(i32 22, float %8795)  ; Frc(value)
  %8798 = fmul fast float %8796, %8796
  %8799 = fmul fast float %8798, %8796
  %8800 = fsub fast float 3.000000e+00, %8796
  %8801 = fmul fast float %8798, %8800
  %8802 = fmul fast float %8796, 3.000000e+00
  %8803 = fmul fast float %8799, 3.000000e+00
  %8804 = fmul fast float %8798, 6.000000e+00
  %8805 = fsub fast float %8803, %8804
  %8806 = fadd fast float %8805, 4.000000e+00
  %8807 = fmul fast float %8806, 0x3FC5555560000000
  %8808 = fmul fast float %8799, -3.000000e+00
  %8809 = fadd fast float %8798, %8796
  %8810 = fmul fast float %8809, 3.000000e+00
  %8811 = fadd fast float %8808, 1.000000e+00
  %8812 = fadd fast float %8811, %8810
  %8813 = fmul fast float %8799, 0x3FC5555560000000
  %8814 = fmul fast float %8797, %8797
  %8815 = fmul fast float %8814, %8797
  %8816 = fsub fast float 3.000000e+00, %8797
  %8817 = fmul fast float %8814, %8816
  %8818 = fmul fast float %8797, 3.000000e+00
  %8819 = fmul fast float %8815, 3.000000e+00
  %8820 = fmul fast float %8814, 6.000000e+00
  %8821 = fsub fast float %8819, %8820
  %8822 = fadd fast float %8821, 4.000000e+00
  %8823 = fmul fast float %8822, 0x3FC5555560000000
  %8824 = fmul fast float %8815, -3.000000e+00
  %8825 = fadd fast float %8814, %8797
  %8826 = fmul fast float %8825, 3.000000e+00
  %8827 = fadd fast float %8824, 1.000000e+00
  %8828 = fadd fast float %8827, %8826
  %8829 = fmul fast float %8815, 0x3FC5555560000000
  %8830 = fadd fast float %8796, 1.000000e+00
  %8831 = fsub fast float 1.000000e+00, %8802
  %8832 = fadd fast float %8831, %8801
  %8833 = fadd fast float %8832, %8806
  %8834 = fmul fast float %8833, 0x3FC5555560000000
  %8835 = fdiv fast float %8807, %8834
  %8836 = fsub fast float %8830, %8835
  %8837 = fsub fast float 1.000000e+00, %8796
  %8838 = fadd fast float %8812, %8799
  %8839 = fmul fast float %8838, 0x3FC5555560000000
  %8840 = fdiv fast float %8813, %8839
  %8841 = fadd fast float %8837, %8840
  %8842 = fadd fast float %8797, 1.000000e+00
  %8843 = fsub fast float 1.000000e+00, %8818
  %8844 = fadd fast float %8843, %8817
  %8845 = fadd fast float %8844, %8822
  %8846 = fmul fast float %8845, 0x3FC5555560000000
  %8847 = fdiv fast float %8823, %8846
  %8848 = fsub fast float %8842, %8847
  %8849 = fsub fast float 1.000000e+00, %8797
  %8850 = fadd fast float %8828, %8815
  %8851 = fmul fast float %8850, 0x3FC5555560000000
  %8852 = fdiv fast float %8829, %8851
  %8853 = fadd fast float %8852, %8849
  %8854 = fmul fast float %8836, %8790
  %8855 = fsub fast float %8711, %8854
  %8856 = fmul fast float %8841, %8790
  %8857 = fadd fast float %8856, %8711
  %8858 = fmul fast float %8853, %8791
  %8859 = fadd fast float %8858, %8712
  %8860 = fmul fast float %8848, %8791
  %8861 = fsub fast float %8712, %8860
  %8862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8855, float %8861, float %8779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8863 = extractvalue %dx.types.ResRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.ResRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.ResRet.f32 %8862, 2
  %8866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8857, float %8861, float %8779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8867 = extractvalue %dx.types.ResRet.f32 %8866, 0
  %8868 = extractvalue %dx.types.ResRet.f32 %8866, 1
  %8869 = extractvalue %dx.types.ResRet.f32 %8866, 2
  %8870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8855, float %8859, float %8779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8871 = extractvalue %dx.types.ResRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.ResRet.f32 %8870, 1
  %8873 = extractvalue %dx.types.ResRet.f32 %8870, 2
  %8874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8857, float %8859, float %8779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8875 = extractvalue %dx.types.ResRet.f32 %8874, 0
  %8876 = extractvalue %dx.types.ResRet.f32 %8874, 1
  %8877 = extractvalue %dx.types.ResRet.f32 %8874, 2
  %8878 = fsub fast float %8871, %8863
  %8879 = fsub fast float %8872, %8864
  %8880 = fsub fast float %8873, %8865
  %8881 = fmul fast float %8878, %8851
  %8882 = fmul fast float %8879, %8851
  %8883 = fmul fast float %8880, %8851
  %8884 = fadd fast float %8881, %8863
  %8885 = fadd fast float %8882, %8864
  %8886 = fadd fast float %8883, %8865
  %8887 = fsub fast float %8875, %8867
  %8888 = fsub fast float %8876, %8868
  %8889 = fsub fast float %8877, %8869
  %8890 = fmul fast float %8887, %8851
  %8891 = fmul fast float %8888, %8851
  %8892 = fmul fast float %8889, %8851
  %8893 = fsub fast float %8867, %8884
  %8894 = fadd fast float %8893, %8890
  %8895 = fsub fast float %8868, %8885
  %8896 = fadd fast float %8895, %8891
  %8897 = fsub fast float %8869, %8886
  %8898 = fadd fast float %8897, %8892
  %8899 = fmul fast float %8894, %8839
  %8900 = fmul fast float %8896, %8839
  %8901 = fmul fast float %8898, %8839
  %8902 = fadd fast float %8899, %8884
  %8903 = fadd fast float %8900, %8885
  %8904 = fadd fast float %8901, %8886
  %8905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8905, 1
  %8907 = fmul fast float %8902, %8906
  %8908 = fmul fast float %8903, %8906
  %8909 = fmul fast float %8904, %8906
  br label %8910

; <label>:8910                                    ; preds = %8741, %8698
  %8911 = phi float [ %8781, %8741 ], [ 1.000000e+00, %8698 ]
  %8912 = phi float [ %8782, %8741 ], [ 1.000000e+00, %8698 ]
  %8913 = phi float [ %8783, %8741 ], [ 1.000000e+00, %8698 ]
  %8914 = phi float [ %8907, %8741 ], [ 0.000000e+00, %8698 ]
  %8915 = phi float [ %8908, %8741 ], [ 0.000000e+00, %8698 ]
  %8916 = phi float [ %8909, %8741 ], [ 0.000000e+00, %8698 ]
  %8917 = fmul fast float %8914, %7252
  %8918 = fmul fast float %8915, %7252
  %8919 = fmul fast float %8916, %7252
  %8920 = fmul fast float %8911, %8705
  %8921 = call float @dx.op.dot3.f32(i32 55, float %8911, float %8912, float %8913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8922 = call float @dx.op.dot3.f32(i32 55, float %8917, float %8918, float %8919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8923 = select i1 %267, float %8921, float %8911
  %8924 = select i1 %267, float %8921, float %8912
  %8925 = select i1 %267, float 1.000000e+00, float %8913
  %8926 = select i1 %267, float %8922, float %8917
  %8927 = select i1 %267, float 0.000000e+00, float %8918
  %8928 = select i1 %267, float 0.000000e+00, float %8919
  %8929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.i32 %8929, 3
  %8931 = and i32 %8930, 3
  %8932 = icmp ne i32 %8931, 0
  %8933 = and i32 %8930, 4
  %8934 = icmp ne i32 %8933, 0
  %8935 = and i1 %8932, %8934
  %8936 = and i1 %267, %8935
  br i1 %8936, label %8937, label %8943

; <label>:8937                                    ; preds = %8910
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8940 = fadd fast float %8920, -1.000000e+00
  %8941 = fmul fast float %8939, %8940
  %8942 = fadd fast float %8941, 1.000000e+00
  br label %8943

; <label>:8943                                    ; preds = %8937, %8910
  %8944 = phi float [ %8942, %8937 ], [ %8920, %8910 ]
  %8945 = fadd fast float %8702, %8699
  %8946 = fmul fast float %8923, %8945
  %8947 = fadd fast float %8946, %8926
  %8948 = fadd fast float %8703, %8700
  %8949 = fmul fast float %8924, %8948
  %8950 = fadd fast float %8949, %8927
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  br i1 %267, label %8953, label %8968

; <label>:8953                                    ; preds = %8943
  %8954 = fadd fast float %8947, %8950
  %8955 = fmul fast float %8952, %8954
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 3
  %8958 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %8959 = fsub fast float %7261, %7255
  %8960 = fadd fast float %8959, %7262
  %8961 = fsub fast float %8960, %8958
  %8962 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %8963 = fmul fast float %8961, %8962
  %8964 = call float @dx.op.unary.f32(i32 7, float %8963)  ; Saturate(value)
  %8965 = fsub fast float %8964, %8957
  %8966 = fmul fast float %8965, %8944
  %8967 = fadd fast float %8966, %8957
  br label %8994

; <label>:8968                                    ; preds = %8943
  %8969 = fadd fast float %8704, %8701
  %8970 = fmul fast float %8925, %8969
  %8971 = fadd fast float %8970, %8928
  %8972 = fmul fast float %8952, %8947
  %8973 = fmul fast float %8952, %8950
  %8974 = fmul fast float %8952, %8971
  %8975 = call float @dx.op.binary.f32(i32 35, float %8973, float %8974)  ; FMax(a,b)
  %8976 = call float @dx.op.binary.f32(i32 35, float %8972, float %8975)  ; FMax(a,b)
  %8977 = call float @dx.op.binary.f32(i32 35, float %7252, float %7252)  ; FMax(a,b)
  %8978 = call float @dx.op.binary.f32(i32 35, float %7252, float %8977)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 35, float %8976, float %8978)  ; FMax(a,b)
  %8980 = fcmp fast ugt float %8979, 0x3F10000000000000
  br i1 %8980, label %8982, label %8981

; <label>:8981                                    ; preds = %8968
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8982

; <label>:8982                                    ; preds = %8981, %8968
  %8983 = add i32 %56, 356
  %8984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8983, i32 undef)  ; BufferLoad(srv,index,wot)
  %8985 = extractvalue %dx.types.ResRet.i32 %8984, 0
  %8986 = and i32 %8985, 32
  %8987 = icmp eq i32 %8986, 0
  br i1 %8987, label %8994, label %8988

; <label>:8988                                    ; preds = %8982
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 0
  %8991 = fmul fast float %8990, 0x3FE99999A0000000
  %8992 = fadd fast float %8990, %8972
  %8993 = fadd fast float %8991, %8974
  br label %8994

; <label>:8994                                    ; preds = %8988, %8982, %8953
  %8995 = phi float [ 1.000000e+00, %8953 ], [ %7252, %8988 ], [ %7252, %8982 ]
  %8996 = phi float [ %8955, %8953 ], [ %8992, %8988 ], [ %8972, %8982 ]
  %8997 = phi float [ %8967, %8953 ], [ %8973, %8988 ], [ %8973, %8982 ]
  %8998 = phi float [ 1.000000e+00, %8953 ], [ %8993, %8988 ], [ %8974, %8982 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8999 = call float @dx.op.binary.f32(i32 36, float %8996, float 3.225500e+04)  ; FMin(a,b)
  %9000 = call float @dx.op.binary.f32(i32 36, float %8997, float 3.225500e+04)  ; FMin(a,b)
  %9001 = call float @dx.op.binary.f32(i32 36, float %8998, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8999)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9000)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9002 = call float @dx.op.binary.f32(i32 36, float %7252, float 3.225500e+04)  ; FMin(a,b)
  %9003 = call float @dx.op.binary.f32(i32 36, float %8995, float 3.225500e+04)  ; FMin(a,b)
  %9004 = call float @dx.op.binary.f32(i32 36, float %8995, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9003)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9004)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[58 x i32] [i32 56, i32 8, i32 103, i32 103, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 7, i32 7, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

