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
; shader hash: e2d8fb47bcfa3b0919b94685e19db3fd
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
  %659 = add i32 %56, 604
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
  br i1 %715, label %1279, label %716

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
  %820 = add i32 %56, 552
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
  %872 = add i32 %56, 536
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
  %896 = add i32 %56, 488
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
  %919 = add i32 %56, 572
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
  %1117 = add i32 %56, 504
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
  %1201 = add i32 %56, 520
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
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 26624
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1264, label %1241

; <label>:1241                                    ; preds = %1233
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 16384
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1264, label %1246

; <label>:1246                                    ; preds = %1241
  %1247 = and i32 %1243, 1048576
  %1248 = icmp ne i32 %1247, 0
  %1249 = add i32 %56, 588
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1253, %dx.types.Handle %107, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = add i32 %56, 96
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 24
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1255, 0x3F70101020000000
  %1262 = select i1 %1248, float 0x3F70101020000000, float %1261
  %1263 = fmul fast float %1262, %1260
  br label %1264

; <label>:1264                                    ; preds = %1246, %1241, %1233
  %1265 = phi float [ %1263, %1246 ], [ 0.000000e+00, %1241 ], [ 0.000000e+00, %1233 ]
  %1266 = add i32 %56, 96
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = lshr i32 %1268, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1275 = fmul fast float %1273, %1274
  %1276 = fadd fast float %1275, %1270
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  br label %1279

; <label>:1279                                    ; preds = %1264, %701
  %1280 = phi float [ 0.000000e+00, %701 ], [ %1187, %1264 ]
  %1281 = phi float [ 0.000000e+00, %701 ], [ %1188, %1264 ]
  %1282 = phi float [ 0.000000e+00, %701 ], [ %1106, %1264 ]
  %1283 = phi float [ 0.000000e+00, %701 ], [ %1107, %1264 ]
  %1284 = phi float [ 0.000000e+00, %701 ], [ %1108, %1264 ]
  %1285 = phi float [ 0.000000e+00, %701 ], [ %1234, %1264 ]
  %1286 = phi float [ 0.000000e+00, %701 ], [ %1235, %1264 ]
  %1287 = phi float [ 0.000000e+00, %701 ], [ %1236, %1264 ]
  %1288 = phi float [ 0.000000e+00, %701 ], [ %1092, %1264 ]
  %1289 = phi float [ 0.000000e+00, %701 ], [ %888, %1264 ]
  %1290 = phi float [ 0.000000e+00, %701 ], [ %1186, %1264 ]
  %1291 = phi float [ 0.000000e+00, %701 ], [ %1189, %1264 ]
  %1292 = phi float [ 0.000000e+00, %701 ], [ %1265, %1264 ]
  %1293 = phi float [ 0.000000e+00, %701 ], [ %1278, %1264 ]
  br i1 %649, label %2059, label %1294

; <label>:1294                                    ; preds = %1279
  %1295 = icmp ult i32 %707, 2
  %1296 = add i32 %56, 40
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = add i32 %56, 44
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = or i32 %1301, %1298
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %2059, label %1304

; <label>:1304                                    ; preds = %1294
  %1305 = and i32 %1298, 262144
  %1306 = icmp ne i32 %1305, 0
  %1307 = select i1 %1306, float %64, float 1.000000e+00
  %1308 = select i1 %1306, float %65, float 0.000000e+00
  %1309 = select i1 %1306, float %66, float 0.000000e+00
  %1310 = select i1 %1306, float %67, float 1.000000e+00
  %1311 = select i1 %1306, float %68, float %92
  %1312 = select i1 %1306, float %69, float %93
  %1313 = add i32 %56, 300
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 16
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = fmul fast float %1317, 0x3F50624DE0000000
  %1319 = add i32 %56, 104
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = lshr i32 %1321, 16
  %1323 = and i32 %1322, 255
  %1324 = lshr i32 %1321, 24
  %1325 = add i32 %56, 308
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = lshr i32 %1327, 16
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = add i32 %56, 48
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = lshr i32 %1334, 22
  %1336 = shl nuw nsw i32 %1335, 5
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = shl i32 %1334, 4
  %1339 = and i32 %1338, 32752
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = lshr i32 %1334, 7
  %1342 = and i32 %1341, 32752
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1346 = fmul fast float %1345, 1.000000e+03
  %1347 = fmul fast float %1346, %428
  %1348 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1349 = fadd fast float %1348, %416
  %1350 = fmul fast float %1346, %430
  %1351 = call float @dx.op.unary.f32(i32 22, float %1350)  ; Frc(value)
  %1352 = fadd fast float %1351, %417
  %1353 = fmul fast float %1318, %1346
  %1354 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1355 = fmul fast float %1354, 0x401921FB60000000
  %1356 = fadd fast float %1355, %1337
  %1357 = call float @dx.op.unary.f32(i32 13, float %1356)  ; Sin(value)
  %1358 = call float @dx.op.unary.f32(i32 12, float %1356)  ; Cos(value)
  %1359 = fsub fast float -0.000000e+00, %1357
  %1360 = fadd fast float %1311, -5.000000e-01
  %1361 = fadd fast float %1312, -5.000000e-01
  %1362 = fmul fast float %1329, %1360
  %1363 = fmul fast float %1331, %1361
  %1364 = fadd fast float %1362, 5.000000e-01
  %1365 = fadd fast float %1363, 5.000000e-01
  %1366 = fmul fast float %1340, %1364
  %1367 = fmul fast float %1343, %1365
  %1368 = fmul fast float %1358, %1366
  %1369 = call float @dx.op.tertiary.f32(i32 46, float %1359, float %1367, float %1368)  ; FMad(a,b,c)
  %1370 = fmul fast float %1357, %1366
  %1371 = call float @dx.op.tertiary.f32(i32 46, float %1358, float %1367, float %1370)  ; FMad(a,b,c)
  %1372 = fadd fast float %1349, %1369
  %1373 = fadd fast float %1352, %1371
  %1374 = icmp ugt i32 %1323, 1
  %1375 = icmp ugt i32 %1321, 33554431
  %1376 = or i1 %1375, %1374
  br i1 %1376, label %1377, label %1402

; <label>:1377                                    ; preds = %1304
  %1378 = add i32 %56, 244
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = lshr i32 %1380, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = fmul fast float %1345, %1382
  %1384 = call float @dx.op.unary.f32(i32 22, float %1383)  ; Frc(value)
  %1385 = mul nuw nsw i32 %1323, %1324
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1384, %1386
  %1388 = call float @dx.op.unary.f32(i32 27, float %1387)  ; Round_ni(value)
  %1389 = fptoui float %1388 to i32
  %1390 = urem i32 %1389, %1323
  %1391 = udiv i32 %1389, %1324
  %1392 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1393 = call float @dx.op.unary.f32(i32 22, float %1373)  ; Frc(value)
  %1394 = uitofp i32 %1390 to float
  %1395 = uitofp i32 %1391 to float
  %1396 = fadd fast float %1392, %1394
  %1397 = fadd fast float %1393, %1395
  %1398 = uitofp i32 %1323 to float
  %1399 = uitofp i32 %1324 to float
  %1400 = fdiv fast float %1396, %1398
  %1401 = fdiv fast float %1397, %1399
  br label %1402

; <label>:1402                                    ; preds = %1377, %1304
  %1403 = phi float [ %1400, %1377 ], [ %1372, %1304 ]
  %1404 = phi float [ %1401, %1377 ], [ %1373, %1304 ]
  %1405 = and i32 %1298, 256
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1453, label %1407

; <label>:1407                                    ; preds = %1402
  %1408 = add i32 %56, 556
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = add i32 %1410, 0
  %1412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1412, %dx.types.Handle %107, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = add i32 %56, 116
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = shl i32 %1417, 4
  %1419 = and i32 %1418, 32752
  %1420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1419)  ; LegacyF16ToF32(value)
  %1421 = lshr i32 %1417, 7
  %1422 = and i32 %1421, 32752
  %1423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1422)  ; LegacyF16ToF32(value)
  %1424 = fsub fast float 1.000000e+00, %704
  %1425 = call float @dx.op.binary.f32(i32 35, float %1424, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1426 = bitcast float %704 to i32
  %1427 = sitofp i32 %1426 to float
  %1428 = fadd fast float %1427, 0xC1CFBF8940000000
  %1429 = fmul fast float %1423, %1428
  %1430 = fadd fast float %1429, 0x41CFBF8940000000
  %1431 = fptosi float %1430 to i32
  %1432 = bitcast i32 %1431 to float
  %1433 = bitcast float %1425 to i32
  %1434 = sitofp i32 %1433 to float
  %1435 = fadd fast float %1434, 0xC1CFBF8940000000
  %1436 = fmul fast float %1435, %1423
  %1437 = fadd fast float %1436, 0x41CFBF8940000000
  %1438 = fptosi float %1437 to i32
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1432, %1420
  %1441 = fmul fast float %1439, %1420
  %1442 = fsub fast float %1425, %1440
  %1443 = fadd fast float %1441, %1425
  %1444 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1445 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1446 = fsub fast float %1414, %1444
  %1447 = fsub fast float %1445, %1444
  %1448 = bitcast float %1447 to i32
  %1449 = sub nsw i32 2129859010, %1448
  %1450 = bitcast i32 %1449 to float
  %1451 = fmul fast float %1450, %1446
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  br label %1453

; <label>:1453                                    ; preds = %1407, %1402
  %1454 = phi float [ %1452, %1407 ], [ %704, %1402 ]
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 128
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1475, label %1459

; <label>:1459                                    ; preds = %1453
  %1460 = add i32 %56, 540
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %107, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 524288
  %1470 = icmp ne i32 %1469, 0
  %1471 = fcmp fast ogt float %1466, 0x3FE0101020000000
  %1472 = select i1 %1471, float 1.000000e+00, float 0.000000e+00
  %1473 = select i1 %1470, float %1472, float %1466
  %1474 = fmul fast float %1473, %1454
  br label %1475

; <label>:1475                                    ; preds = %1459, %1453
  %1476 = phi float [ %1474, %1459 ], [ %1454, %1453 ]
  %1477 = fcmp fast ult float %1476, 0x3F70101020000000
  br i1 %1477, label %2059, label %1478

; <label>:1478                                    ; preds = %1475
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 16
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1681, label %1483

; <label>:1483                                    ; preds = %1478
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %56, 492
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = add i32 %1488, 0
  %1490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1490, %dx.types.Handle %106, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = extractvalue %dx.types.ResRet.f32 %1491, 3
  %1496 = and i32 %1485, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = lshr i32 %1485, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1495, %1497
  %1502 = fadd fast float %1501, %1500
  %1503 = fmul fast float %1502, 0x3F70101000000000
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 512
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1516, label %1508

; <label>:1508                                    ; preds = %1483
  %1509 = add i32 %56, 576
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %107, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  br label %1516

; <label>:1516                                    ; preds = %1508, %1483
  %1517 = phi float [ %1515, %1508 ], [ 1.000000e+00, %1483 ]
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 33554432
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1628, label %1522

; <label>:1522                                    ; preds = %1516
  %1523 = add i32 %56, 240
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 65535
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = lshr i32 %1525, 16
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = add i32 %56, 244
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 65535
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = lshr i32 %1536, 24
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = and i32 %1536, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1541, 0x3F70101020000000
  %1543 = lshr i32 %1536, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = lshr i32 %1536, 16
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = add i32 %56, 236
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = lshr i32 %1553, 24
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = and i32 %1553, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1553, 8
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = lshr i32 %1553, 16
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = bitcast float %1492 to i32
  %1569 = ashr i32 %1568, 1
  %1570 = sub nsw i32 1597463174, %1569
  %1571 = bitcast i32 %1570 to float
  %1572 = fmul fast float %1492, 5.000000e-01
  %1573 = fmul fast float %1571, %1571
  %1574 = fmul fast float %1573, %1572
  %1575 = fsub fast float 1.500000e+00, %1574
  %1576 = fmul fast float %1571, %1492
  %1577 = fmul fast float %1576, %1575
  %1578 = bitcast float %1493 to i32
  %1579 = ashr i32 %1578, 1
  %1580 = sub nsw i32 1597463174, %1579
  %1581 = bitcast i32 %1580 to float
  %1582 = fmul fast float %1493, 5.000000e-01
  %1583 = fmul fast float %1581, %1581
  %1584 = fmul fast float %1583, %1582
  %1585 = fsub fast float 1.500000e+00, %1584
  %1586 = fmul fast float %1581, %1493
  %1587 = fmul fast float %1586, %1585
  %1588 = bitcast float %1494 to i32
  %1589 = ashr i32 %1588, 1
  %1590 = sub nsw i32 1597463174, %1589
  %1591 = bitcast i32 %1590 to float
  %1592 = fmul fast float %1494, 5.000000e-01
  %1593 = fmul fast float %1591, %1591
  %1594 = fmul fast float %1593, %1592
  %1595 = fsub fast float 1.500000e+00, %1594
  %1596 = fmul fast float %1591, %1494
  %1597 = fmul fast float %1596, %1595
  %1598 = fsub fast float %1577, %1559
  %1599 = fsub fast float %1587, %1563
  %1600 = fsub fast float %1597, %1567
  %1601 = fmul fast float %1598, %1527
  %1602 = fmul fast float %1599, %1529
  %1603 = fmul fast float %1600, %1534
  %1604 = fadd fast float %1601, %1542
  %1605 = fadd fast float %1602, %1546
  %1606 = fadd fast float %1603, %1550
  %1607 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1609 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1610 = fmul fast float %1607, %1607
  %1611 = fmul fast float %1608, %1608
  %1612 = fmul fast float %1609, %1609
  %1613 = fsub fast float %1610, %1492
  %1614 = fsub fast float %1611, %1493
  %1615 = fsub fast float %1612, %1494
  %1616 = fmul fast float %1613, %1517
  %1617 = fmul fast float %1614, %1517
  %1618 = fmul fast float %1615, %1517
  %1619 = fadd fast float %1616, %1492
  %1620 = fadd fast float %1617, %1493
  %1621 = fadd fast float %1618, %1494
  %1622 = fadd fast float %1539, %1503
  %1623 = fsub fast float %1622, %1556
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1625 = fsub fast float %1624, %1503
  %1626 = fmul fast float %1625, %1517
  %1627 = fadd fast float %1626, %1503
  br label %1681

; <label>:1628                                    ; preds = %1516
  %1629 = and i32 %1519, 134217728
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1665, label %1631

; <label>:1631                                    ; preds = %1628
  %1632 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1634 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1635 = fadd fast float %1632, -5.000000e-01
  %1636 = fadd fast float %1633, -5.000000e-01
  %1637 = fadd fast float %1634, -5.000000e-01
  %1638 = fmul fast float %1635, %1517
  %1639 = fmul fast float %1636, %1517
  %1640 = fmul fast float %1637, %1517
  %1641 = fadd fast float %1638, 5.000000e-01
  %1642 = fadd fast float %1639, 5.000000e-01
  %1643 = fadd fast float %1640, 5.000000e-01
  %1644 = call float @dx.op.unary.f32(i32 24, float %1492)  ; Sqrt(value)
  %1645 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1647 = fmul fast float %1641, 2.000000e+00
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = fmul fast float %1648, %1644
  %1650 = fadd fast float %1649, %1647
  %1651 = fmul fast float %1650, %1644
  %1652 = fmul fast float %1642, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1645
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1645
  %1657 = fmul fast float %1643, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1646
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1646
  %1662 = fmul fast float %1651, %1651
  %1663 = fmul fast float %1656, %1656
  %1664 = fmul fast float %1661, %1661
  br label %1681

; <label>:1665                                    ; preds = %1628
  %1666 = fmul fast float %404, %404
  %1667 = fmul fast float %405, %405
  %1668 = fmul fast float %406, %406
  %1669 = fadd fast float %1666, -1.000000e+00
  %1670 = fadd fast float %1667, -1.000000e+00
  %1671 = fadd fast float %1668, -1.000000e+00
  %1672 = fmul fast float %1517, %1669
  %1673 = fmul fast float %1517, %1670
  %1674 = fmul fast float %1517, %1671
  %1675 = fadd fast float %1672, 1.000000e+00
  %1676 = fadd fast float %1673, 1.000000e+00
  %1677 = fadd fast float %1674, 1.000000e+00
  %1678 = fmul fast float %1675, %1492
  %1679 = fmul fast float %1676, %1493
  %1680 = fmul fast float %1677, %1494
  br label %1681

; <label>:1681                                    ; preds = %1665, %1631, %1522, %1478
  %1682 = phi float [ %1627, %1522 ], [ %1503, %1631 ], [ %1503, %1665 ], [ 0x3FA23C0BE0000000, %1478 ]
  %1683 = phi float [ %1619, %1522 ], [ %1662, %1631 ], [ %1678, %1665 ], [ 1.000000e+00, %1478 ]
  %1684 = phi float [ %1620, %1522 ], [ %1663, %1631 ], [ %1679, %1665 ], [ 1.000000e+00, %1478 ]
  %1685 = phi float [ %1621, %1522 ], [ %1664, %1631 ], [ %1680, %1665 ], [ 1.000000e+00, %1478 ]
  %1686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.i32 %1686, 1
  %1688 = and i32 %1687, 1
  %1689 = icmp ne i32 %1688, 0
  %1690 = add i32 %56, 356
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 32
  %1694 = icmp ne i32 %1693, 0
  %1695 = and i1 %1689, %1694
  %1696 = select i1 %1695, float 1.000000e+00, float %1683
  %1697 = select i1 %1695, float 0x3FD3333340000000, float %1684
  %1698 = select i1 %1695, float 0x3FD3333340000000, float %1685
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = and i32 %1700, 32
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1775, label %1703

; <label>:1703                                    ; preds = %1681
  %1704 = add i32 %56, 108
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = add i32 %56, 508
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = add i32 %1709, 0
  %1711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1711, %dx.types.Handle %106, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = extractvalue %dx.types.ResRet.f32 %1712, 3
  %1717 = and i32 %1706, 255
  %1718 = uitofp i32 %1717 to float
  %1719 = lshr i32 %1706, 8
  %1720 = and i32 %1719, 255
  %1721 = uitofp i32 %1720 to float
  %1722 = lshr i32 %1706, 16
  %1723 = and i32 %1722, 255
  %1724 = uitofp i32 %1723 to float
  %1725 = fmul fast float %1724, 0x3F70101000000000
  %1726 = fmul fast float %1713, %1718
  %1727 = fadd fast float %1726, %1721
  %1728 = fmul fast float %1727, 0x3F70101000000000
  %1729 = fadd fast float %1714, -5.000000e-01
  %1730 = fadd fast float %1716, -5.000000e-01
  %1731 = fmul fast float %1729, %1725
  %1732 = fmul fast float %1730, %1725
  %1733 = fadd fast float %1731, 5.000000e-01
  %1734 = fadd fast float %1732, 5.000000e-01
  %1735 = fmul fast float %1733, 2.000000e+00
  %1736 = fadd fast float %1735, -1.000000e+00
  %1737 = fmul fast float %1734, 2.000000e+00
  %1738 = fadd fast float %1737, -1.000000e+00
  %1739 = fadd fast float %1736, %1738
  %1740 = fmul fast float %1739, 5.000000e-01
  %1741 = fsub fast float %1736, %1738
  %1742 = fmul fast float %1741, 5.000000e-01
  %1743 = call float @dx.op.unary.f32(i32 6, float %1740)  ; FAbs(value)
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = call float @dx.op.unary.f32(i32 6, float %1742)  ; FAbs(value)
  %1746 = fsub fast float %1744, %1745
  %1747 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1742, float %1746, float %1740, float %1742, float %1746)  ; Dot3(ax,ay,az,bx,by,bz)
  %1748 = call float @dx.op.unary.f32(i32 25, float %1747)  ; Rsqrt(value)
  %1749 = fmul fast float %1740, %1748
  %1750 = fmul fast float %1742, %1748
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 67108864
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1771, label %1755

; <label>:1755                                    ; preds = %1703
  %1756 = add i32 %56, 296
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 65535
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 65535
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = lshr i32 %1758, 16
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = fsub fast float %1728, %1766
  %1768 = fmul fast float %1767, %1760
  %1769 = fadd fast float %1768, %1764
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  br label %1771

; <label>:1771                                    ; preds = %1755, %1703
  %1772 = phi float [ %1770, %1755 ], [ %1728, %1703 ]
  %1773 = call float @dx.op.dot2.f32(i32 54, float %1749, float %1750, float %1307, float %1308)  ; Dot2(ax,ay,bx,by)
  %1774 = call float @dx.op.dot2.f32(i32 54, float %1749, float %1750, float %1309, float %1310)  ; Dot2(ax,ay,bx,by)
  br label %1775

; <label>:1775                                    ; preds = %1771, %1681
  %1776 = phi float [ %1772, %1771 ], [ 0x3FD6666660000000, %1681 ]
  %1777 = phi float [ %1773, %1771 ], [ 0.000000e+00, %1681 ]
  %1778 = phi float [ %1774, %1771 ], [ 0.000000e+00, %1681 ]
  %1779 = phi float [ %1715, %1771 ], [ 1.000000e+00, %1681 ]
  %1780 = add i32 %56, 176
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = lshr i32 %1782, 22
  %1784 = shl nuw nsw i32 %1783, 5
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = and i32 %1787, 64
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1823, label %1790

; <label>:1790                                    ; preds = %1775
  %1791 = add i32 %56, 524
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = add i32 %1793, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 131072
  %1799 = icmp eq i32 %1798, 0
  %1800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1795, %dx.types.Handle %106, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.ResRet.f32 %1800, 2
  %1804 = fmul fast float %387, %1801
  %1805 = fmul fast float %388, %1802
  %1806 = fmul fast float %389, %1803
  br i1 %1799, label %1813, label %1807

; <label>:1807                                    ; preds = %1790
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 0
  %1810 = fmul fast float %1809, %1804
  %1811 = fmul fast float %1809, %1805
  %1812 = fmul fast float %1809, %1806
  br label %1813

; <label>:1813                                    ; preds = %1807, %1790
  %1814 = phi float [ %1810, %1807 ], [ %1804, %1790 ]
  %1815 = phi float [ %1811, %1807 ], [ %1805, %1790 ]
  %1816 = phi float [ %1812, %1807 ], [ %1806, %1790 ]
  %1817 = fmul fast float %1814, %1785
  %1818 = select i1 %269, float %1817, float %1814
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1815, float %1816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = select i1 %269, float 0.000000e+00, float %1814
  %1821 = select i1 %269, float %1819, float %1815
  %1822 = select i1 %269, float 0.000000e+00, float %1816
  br label %1823

; <label>:1823                                    ; preds = %1813, %1775
  %1824 = phi float [ %1820, %1813 ], [ 0.000000e+00, %1775 ]
  %1825 = phi float [ %1821, %1813 ], [ 0.000000e+00, %1775 ]
  %1826 = phi float [ %1822, %1813 ], [ 0.000000e+00, %1775 ]
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 26624
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1854, label %1831

; <label>:1831                                    ; preds = %1823
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 16384
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1854, label %1836

; <label>:1836                                    ; preds = %1831
  %1837 = and i32 %1833, 1048576
  %1838 = icmp ne i32 %1837, 0
  %1839 = add i32 %56, 592
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = add i32 %1841, 0
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1843, %dx.types.Handle %107, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = add i32 %56, 112
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 24
  %1850 = uitofp i32 %1849 to float
  %1851 = fmul fast float %1845, 0x3F70101020000000
  %1852 = select i1 %1838, float 0x3F70101020000000, float %1851
  %1853 = fmul fast float %1852, %1850
  br label %1854

; <label>:1854                                    ; preds = %1836, %1831, %1823
  %1855 = phi float [ %1853, %1836 ], [ 0.000000e+00, %1831 ], [ 0.000000e+00, %1823 ]
  %1856 = add i32 %56, 112
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 255
  %1860 = uitofp i32 %1859 to float
  %1861 = lshr i32 %1858, 8
  %1862 = and i32 %1861, 255
  %1863 = uitofp i32 %1862 to float
  %1864 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1865 = fmul fast float %1863, %1864
  %1866 = fadd fast float %1865, %1860
  %1867 = fmul fast float %1866, 0x3F70101020000000
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  br i1 %1295, label %1869, label %1877

; <label>:1869                                    ; preds = %1854
  %1870 = fsub fast float 1.000000e+00, %1476
  %1871 = fmul fast float %1870, %1282
  %1872 = fmul fast float %1870, %1283
  %1873 = fmul fast float %1870, %1284
  %1874 = fmul fast float %1870, %1285
  %1875 = fmul fast float %1870, %1286
  %1876 = fmul fast float %1870, %1287
  br label %1877

; <label>:1877                                    ; preds = %1869, %1854
  %1878 = phi float [ %1871, %1869 ], [ %1282, %1854 ]
  %1879 = phi float [ %1872, %1869 ], [ %1283, %1854 ]
  %1880 = phi float [ %1873, %1869 ], [ %1284, %1854 ]
  %1881 = phi float [ %1874, %1869 ], [ %1285, %1854 ]
  %1882 = phi float [ %1875, %1869 ], [ %1286, %1854 ]
  %1883 = phi float [ %1876, %1869 ], [ %1287, %1854 ]
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 3
  %1887 = icmp eq i32 %1886, 3
  br i1 %1887, label %1966, label %1888

; <label>:1888                                    ; preds = %1877
  %1889 = and i32 %1885, 16
  %1890 = icmp ne i32 %1889, 0
  %1891 = select i1 %1890, float %1476, float 0.000000e+00
  %1892 = icmp eq i32 %1886, 0
  br i1 %1892, label %1893, label %1921

; <label>:1893                                    ; preds = %1888
  %1894 = and i32 %1885, 64
  %1895 = icmp ne i32 %1894, 0
  %1896 = select i1 %1895, float %1476, float 0.000000e+00
  %1897 = fsub fast float %1696, %1878
  %1898 = fsub fast float %1697, %1879
  %1899 = fsub fast float %1698, %1880
  %1900 = fmul fast float %1891, %1897
  %1901 = fmul fast float %1891, %1898
  %1902 = fmul fast float %1891, %1899
  %1903 = fadd fast float %1900, %1878
  %1904 = fadd fast float %1901, %1879
  %1905 = fadd fast float %1902, %1880
  %1906 = fsub fast float %1682, %1288
  %1907 = fmul fast float %1891, %1906
  %1908 = fadd fast float %1907, %1288
  %1909 = fsub fast float %1824, %1881
  %1910 = fsub fast float %1825, %1882
  %1911 = fsub fast float %1826, %1883
  %1912 = fmul fast float %1896, %1909
  %1913 = fmul fast float %1896, %1910
  %1914 = fmul fast float %1896, %1911
  %1915 = fadd fast float %1912, %1881
  %1916 = fadd fast float %1913, %1882
  %1917 = fadd fast float %1914, %1883
  %1918 = fsub fast float %1868, %1293
  %1919 = fmul fast float %1891, %1918
  %1920 = fadd fast float %1919, %1293
  br label %1966

; <label>:1921                                    ; preds = %1888
  %1922 = icmp eq i32 %1886, 1
  br i1 %1922, label %1923, label %1936

; <label>:1923                                    ; preds = %1921
  %1924 = fadd fast float %1696, -1.000000e+00
  %1925 = fadd fast float %1697, -1.000000e+00
  %1926 = fadd fast float %1698, -1.000000e+00
  %1927 = fmul fast float %1891, %1924
  %1928 = fmul fast float %1891, %1925
  %1929 = fmul fast float %1891, %1926
  %1930 = fadd fast float %1927, 1.000000e+00
  %1931 = fadd fast float %1928, 1.000000e+00
  %1932 = fadd fast float %1929, 1.000000e+00
  %1933 = fmul fast float %1930, %1878
  %1934 = fmul fast float %1931, %1879
  %1935 = fmul fast float %1932, %1880
  br label %1966

; <label>:1936                                    ; preds = %1921
  %1937 = icmp eq i32 %1886, 2
  br i1 %1937, label %1938, label %1966

; <label>:1938                                    ; preds = %1936
  %1939 = call float @dx.op.unary.f32(i32 24, float %1696)  ; Sqrt(value)
  %1940 = call float @dx.op.unary.f32(i32 24, float %1697)  ; Sqrt(value)
  %1941 = call float @dx.op.unary.f32(i32 24, float %1698)  ; Sqrt(value)
  %1942 = fadd fast float %1939, -5.000000e-01
  %1943 = fadd fast float %1940, -5.000000e-01
  %1944 = fadd fast float %1941, -5.000000e-01
  %1945 = fmul fast float %1942, %1891
  %1946 = fmul fast float %1943, %1891
  %1947 = fmul fast float %1944, %1891
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fmul fast float %1948, 2.000000e+00
  %1952 = fsub fast float 1.000000e+00, %1951
  %1953 = fmul fast float %1952, %1878
  %1954 = fadd fast float %1953, %1951
  %1955 = fmul fast float %1954, %1878
  %1956 = fmul fast float %1949, 2.000000e+00
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = fmul fast float %1957, %1879
  %1959 = fadd fast float %1958, %1956
  %1960 = fmul fast float %1959, %1879
  %1961 = fmul fast float %1950, 2.000000e+00
  %1962 = fsub fast float 1.000000e+00, %1961
  %1963 = fmul fast float %1962, %1880
  %1964 = fadd fast float %1963, %1961
  %1965 = fmul fast float %1964, %1880
  br label %1966

; <label>:1966                                    ; preds = %1938, %1936, %1923, %1893, %1877
  %1967 = phi float [ %1878, %1877 ], [ %1955, %1938 ], [ %1878, %1936 ], [ %1933, %1923 ], [ %1903, %1893 ]
  %1968 = phi float [ %1879, %1877 ], [ %1960, %1938 ], [ %1879, %1936 ], [ %1934, %1923 ], [ %1904, %1893 ]
  %1969 = phi float [ %1880, %1877 ], [ %1965, %1938 ], [ %1880, %1936 ], [ %1935, %1923 ], [ %1905, %1893 ]
  %1970 = phi float [ %1881, %1877 ], [ %1881, %1938 ], [ %1881, %1936 ], [ %1881, %1923 ], [ %1915, %1893 ]
  %1971 = phi float [ %1882, %1877 ], [ %1882, %1938 ], [ %1882, %1936 ], [ %1882, %1923 ], [ %1916, %1893 ]
  %1972 = phi float [ %1883, %1877 ], [ %1883, %1938 ], [ %1883, %1936 ], [ %1883, %1923 ], [ %1917, %1893 ]
  %1973 = phi float [ %1288, %1877 ], [ %1288, %1938 ], [ %1288, %1936 ], [ %1288, %1923 ], [ %1908, %1893 ]
  %1974 = phi float [ %1293, %1877 ], [ %1293, %1938 ], [ %1293, %1936 ], [ %1293, %1923 ], [ %1920, %1893 ]
  %1975 = and i32 %1885, 12
  %1976 = icmp eq i32 %1975, 12
  br i1 %1976, label %2059, label %1977

; <label>:1977                                    ; preds = %1966
  %1978 = and i32 %1885, 2097184
  %1979 = icmp eq i32 %1978, 2097184
  %1980 = select i1 %1979, float %1476, float 0.000000e+00
  %1981 = and i32 %1885, 4194336
  %1982 = icmp eq i32 %1981, 4194336
  %1983 = select i1 %1982, float %1476, float 0.000000e+00
  %1984 = and i32 %1885, 8388640
  %1985 = icmp eq i32 %1984, 8388640
  %1986 = select i1 %1985, float %1476, float 0.000000e+00
  %1987 = and i32 %1885, 16384
  %1988 = icmp ne i32 %1987, 0
  %1989 = select i1 %1988, float %1476, float 0.000000e+00
  %1990 = icmp eq i32 %1975, 0
  br i1 %1990, label %1991, label %2007

; <label>:1991                                    ; preds = %1977
  %1992 = fsub fast float %1777, %1280
  %1993 = fsub fast float %1778, %1281
  %1994 = fmul fast float %1980, %1992
  %1995 = fmul fast float %1980, %1993
  %1996 = fadd fast float %1994, %1280
  %1997 = fadd fast float %1995, %1281
  %1998 = fsub fast float %1779, %1291
  %1999 = fmul fast float %1983, %1998
  %2000 = fadd fast float %1999, %1291
  %2001 = fsub fast float %1776, %1290
  %2002 = fmul fast float %1986, %2001
  %2003 = fadd fast float %2002, %1290
  %2004 = fsub fast float %1855, %1292
  %2005 = fmul fast float %1989, %2004
  %2006 = fadd fast float %2005, %1292
  br label %2059

; <label>:2007                                    ; preds = %1977
  %2008 = icmp eq i32 %1975, 4
  br i1 %2008, label %2009, label %2043

; <label>:2009                                    ; preds = %2007
  %2010 = fmul fast float %1980, %1777
  %2011 = fmul fast float %1980, %1778
  %2012 = fadd fast float %2010, %1280
  %2013 = fadd fast float %2011, %1281
  %2014 = call float @dx.op.binary.f32(i32 36, float %1291, float %1779)  ; FMin(a,b)
  %2015 = fsub fast float %2014, %1291
  %2016 = fmul fast float %2015, %1983
  %2017 = fadd fast float %2016, %1291
  %2018 = fadd fast float %1776, %1290
  %2019 = fmul fast float %2018, 0x3FF337FAE0000000
  %2020 = fmul fast float %1290, %1290
  %2021 = fmul fast float %1776, %1776
  %2022 = fadd fast float %2021, %2020
  %2023 = fmul fast float %2022, 0x3FE5152B00000000
  %2024 = fmul fast float %1290, 0xBFCC1F85E0000000
  %2025 = fmul fast float %2024, %1776
  %2026 = fadd fast float %2025, 0xBFE1363700000000
  %2027 = fadd fast float %2026, %2019
  %2028 = fsub fast float %2027, %2023
  %2029 = fmul fast float %2018, 0x3FBA6F0D00000000
  %2030 = fmul fast float %2022, 0x3FD0432880000000
  %2031 = fmul fast float %1290, 0xBFEF110800000000
  %2032 = fmul fast float %2031, %1776
  %2033 = fadd fast float %2032, 1.000000e+00
  %2034 = fsub fast float %2033, %2029
  %2035 = fadd fast float %2034, %2030
  %2036 = fdiv fast float %2028, %2035
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fsub fast float %2037, %1290
  %2039 = fmul fast float %2038, %1986
  %2040 = fadd fast float %2039, %1290
  %2041 = fmul fast float %1989, %1855
  %2042 = fadd fast float %2041, %1292
  br label %2059

; <label>:2043                                    ; preds = %2007
  %2044 = icmp eq i32 %1975, 8
  br i1 %2044, label %2045, label %2059

; <label>:2045                                    ; preds = %2043
  %2046 = fmul fast float %1980, %1777
  %2047 = fmul fast float %1980, %1778
  %2048 = fadd fast float %2046, %1280
  %2049 = fadd fast float %2047, %1281
  %2050 = call float @dx.op.binary.f32(i32 36, float %1291, float %1779)  ; FMin(a,b)
  %2051 = fsub fast float %2050, %1291
  %2052 = fmul fast float %2051, %1983
  %2053 = fadd fast float %2052, %1291
  %2054 = fsub fast float %1776, %1290
  %2055 = fmul fast float %1986, %2054
  %2056 = fadd fast float %2055, %1290
  %2057 = fmul fast float %1989, %1855
  %2058 = fadd fast float %2057, %1292
  br label %2059

; <label>:2059                                    ; preds = %2045, %2043, %2009, %1991, %1966, %1475, %1294, %1279
  %2060 = phi float [ %1280, %1966 ], [ %1280, %1475 ], [ %1280, %1279 ], [ %2048, %2045 ], [ %1280, %2043 ], [ %2012, %2009 ], [ %1996, %1991 ], [ %1280, %1294 ]
  %2061 = phi float [ %1281, %1966 ], [ %1281, %1475 ], [ %1281, %1279 ], [ %2049, %2045 ], [ %1281, %2043 ], [ %2013, %2009 ], [ %1997, %1991 ], [ %1281, %1294 ]
  %2062 = phi float [ %1967, %1966 ], [ %1282, %1475 ], [ %1282, %1279 ], [ %1967, %2045 ], [ %1967, %2043 ], [ %1967, %2009 ], [ %1967, %1991 ], [ %1282, %1294 ]
  %2063 = phi float [ %1968, %1966 ], [ %1283, %1475 ], [ %1283, %1279 ], [ %1968, %2045 ], [ %1968, %2043 ], [ %1968, %2009 ], [ %1968, %1991 ], [ %1283, %1294 ]
  %2064 = phi float [ %1969, %1966 ], [ %1284, %1475 ], [ %1284, %1279 ], [ %1969, %2045 ], [ %1969, %2043 ], [ %1969, %2009 ], [ %1969, %1991 ], [ %1284, %1294 ]
  %2065 = phi float [ %1970, %1966 ], [ %1285, %1475 ], [ %1285, %1279 ], [ %1970, %2045 ], [ %1970, %2043 ], [ %1970, %2009 ], [ %1970, %1991 ], [ %1285, %1294 ]
  %2066 = phi float [ %1971, %1966 ], [ %1286, %1475 ], [ %1286, %1279 ], [ %1971, %2045 ], [ %1971, %2043 ], [ %1971, %2009 ], [ %1971, %1991 ], [ %1286, %1294 ]
  %2067 = phi float [ %1972, %1966 ], [ %1287, %1475 ], [ %1287, %1279 ], [ %1972, %2045 ], [ %1972, %2043 ], [ %1972, %2009 ], [ %1972, %1991 ], [ %1287, %1294 ]
  %2068 = phi float [ %1973, %1966 ], [ %1288, %1475 ], [ %1288, %1279 ], [ %1973, %2045 ], [ %1973, %2043 ], [ %1973, %2009 ], [ %1973, %1991 ], [ %1288, %1294 ]
  %2069 = phi float [ %1290, %1966 ], [ %1290, %1475 ], [ %1290, %1279 ], [ %2056, %2045 ], [ %1290, %2043 ], [ %2040, %2009 ], [ %2003, %1991 ], [ %1290, %1294 ]
  %2070 = phi float [ %1291, %1966 ], [ %1291, %1475 ], [ %1291, %1279 ], [ %2053, %2045 ], [ %1291, %2043 ], [ %2017, %2009 ], [ %2000, %1991 ], [ %1291, %1294 ]
  %2071 = phi float [ %1292, %1966 ], [ %1292, %1475 ], [ %1292, %1279 ], [ %2058, %2045 ], [ %1292, %2043 ], [ %2042, %2009 ], [ %2006, %1991 ], [ %1292, %1294 ]
  %2072 = phi float [ %1974, %1966 ], [ %1293, %1475 ], [ %1293, %1279 ], [ %1974, %2045 ], [ %1974, %2043 ], [ %1974, %2009 ], [ %1974, %1991 ], [ %1293, %1294 ]
  br i1 %651, label %2838, label %2073

; <label>:2073                                    ; preds = %2059
  %2074 = icmp ult i32 %707, 3
  %2075 = add i32 %56, 56
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %56, 60
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = or i32 %2080, %2077
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2838, label %2083

; <label>:2083                                    ; preds = %2073
  %2084 = and i32 %2077, 262144
  %2085 = icmp ne i32 %2084, 0
  %2086 = select i1 %2085, float %64, float 1.000000e+00
  %2087 = select i1 %2085, float %65, float 0.000000e+00
  %2088 = select i1 %2085, float %66, float 0.000000e+00
  %2089 = select i1 %2085, float %67, float 1.000000e+00
  %2090 = select i1 %2085, float %68, float %92
  %2091 = select i1 %2085, float %69, float %93
  %2092 = add i32 %56, 316
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 16
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = fmul fast float %2096, 0x3F50624DE0000000
  %2098 = add i32 %56, 120
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = lshr i32 %2100, 16
  %2102 = and i32 %2101, 255
  %2103 = lshr i32 %2100, 24
  %2104 = add i32 %56, 324
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2106, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = add i32 %56, 64
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 22
  %2115 = shl nuw nsw i32 %2114, 5
  %2116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2115)  ; LegacyF16ToF32(value)
  %2117 = shl i32 %2113, 4
  %2118 = and i32 %2117, 32752
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = lshr i32 %2113, 7
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 3
  %2125 = fmul fast float %2124, 1.000000e+03
  %2126 = fmul fast float %2125, %535
  %2127 = call float @dx.op.unary.f32(i32 22, float %2126)  ; Frc(value)
  %2128 = fadd fast float %2127, %523
  %2129 = fmul fast float %2125, %537
  %2130 = call float @dx.op.unary.f32(i32 22, float %2129)  ; Frc(value)
  %2131 = fadd fast float %2130, %524
  %2132 = fmul fast float %2097, %2125
  %2133 = call float @dx.op.unary.f32(i32 22, float %2132)  ; Frc(value)
  %2134 = fmul fast float %2133, 0x401921FB60000000
  %2135 = fadd fast float %2134, %2116
  %2136 = call float @dx.op.unary.f32(i32 13, float %2135)  ; Sin(value)
  %2137 = call float @dx.op.unary.f32(i32 12, float %2135)  ; Cos(value)
  %2138 = fsub fast float -0.000000e+00, %2136
  %2139 = fadd fast float %2090, -5.000000e-01
  %2140 = fadd fast float %2091, -5.000000e-01
  %2141 = fmul fast float %2108, %2139
  %2142 = fmul fast float %2110, %2140
  %2143 = fadd fast float %2141, 5.000000e-01
  %2144 = fadd fast float %2142, 5.000000e-01
  %2145 = fmul fast float %2119, %2143
  %2146 = fmul fast float %2122, %2144
  %2147 = fmul fast float %2137, %2145
  %2148 = call float @dx.op.tertiary.f32(i32 46, float %2138, float %2146, float %2147)  ; FMad(a,b,c)
  %2149 = fmul fast float %2136, %2145
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2137, float %2146, float %2149)  ; FMad(a,b,c)
  %2151 = fadd fast float %2128, %2148
  %2152 = fadd fast float %2131, %2150
  %2153 = icmp ugt i32 %2102, 1
  %2154 = icmp ugt i32 %2100, 33554431
  %2155 = or i1 %2154, %2153
  br i1 %2155, label %2156, label %2181

; <label>:2156                                    ; preds = %2083
  %2157 = add i32 %56, 260
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = lshr i32 %2159, 16
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = fmul fast float %2124, %2161
  %2163 = call float @dx.op.unary.f32(i32 22, float %2162)  ; Frc(value)
  %2164 = mul nuw nsw i32 %2102, %2103
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2163, %2165
  %2167 = call float @dx.op.unary.f32(i32 27, float %2166)  ; Round_ni(value)
  %2168 = fptoui float %2167 to i32
  %2169 = urem i32 %2168, %2102
  %2170 = udiv i32 %2168, %2103
  %2171 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2172 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2173 = uitofp i32 %2169 to float
  %2174 = uitofp i32 %2170 to float
  %2175 = fadd fast float %2171, %2173
  %2176 = fadd fast float %2172, %2174
  %2177 = uitofp i32 %2102 to float
  %2178 = uitofp i32 %2103 to float
  %2179 = fdiv fast float %2175, %2177
  %2180 = fdiv fast float %2176, %2178
  br label %2181

; <label>:2181                                    ; preds = %2156, %2083
  %2182 = phi float [ %2179, %2156 ], [ %2151, %2083 ]
  %2183 = phi float [ %2180, %2156 ], [ %2152, %2083 ]
  %2184 = and i32 %2077, 256
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2232, label %2186

; <label>:2186                                    ; preds = %2181
  %2187 = add i32 %56, 560
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %2189, 0
  %2191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2191, %dx.types.Handle %107, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = add i32 %56, 132
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = shl i32 %2196, 4
  %2198 = and i32 %2197, 32752
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = lshr i32 %2196, 7
  %2201 = and i32 %2200, 32752
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = fsub fast float 1.000000e+00, %703
  %2204 = call float @dx.op.binary.f32(i32 35, float %2203, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2205 = bitcast float %703 to i32
  %2206 = sitofp i32 %2205 to float
  %2207 = fadd fast float %2206, 0xC1CFBF8940000000
  %2208 = fmul fast float %2202, %2207
  %2209 = fadd fast float %2208, 0x41CFBF8940000000
  %2210 = fptosi float %2209 to i32
  %2211 = bitcast i32 %2210 to float
  %2212 = bitcast float %2204 to i32
  %2213 = sitofp i32 %2212 to float
  %2214 = fadd fast float %2213, 0xC1CFBF8940000000
  %2215 = fmul fast float %2214, %2202
  %2216 = fadd fast float %2215, 0x41CFBF8940000000
  %2217 = fptosi float %2216 to i32
  %2218 = bitcast i32 %2217 to float
  %2219 = fmul fast float %2211, %2199
  %2220 = fmul fast float %2218, %2199
  %2221 = fsub fast float %2204, %2219
  %2222 = fadd fast float %2220, %2204
  %2223 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2225 = fsub fast float %2193, %2223
  %2226 = fsub fast float %2224, %2223
  %2227 = bitcast float %2226 to i32
  %2228 = sub nsw i32 2129859010, %2227
  %2229 = bitcast i32 %2228 to float
  %2230 = fmul fast float %2229, %2225
  %2231 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  br label %2232

; <label>:2232                                    ; preds = %2186, %2181
  %2233 = phi float [ %2231, %2186 ], [ %703, %2181 ]
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = and i32 %2235, 128
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %2254, label %2238

; <label>:2238                                    ; preds = %2232
  %2239 = add i32 %56, 544
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %2241, 0
  %2243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2243, %dx.types.Handle %107, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 524288
  %2249 = icmp ne i32 %2248, 0
  %2250 = fcmp fast ogt float %2245, 0x3FE0101020000000
  %2251 = select i1 %2250, float 1.000000e+00, float 0.000000e+00
  %2252 = select i1 %2249, float %2251, float %2245
  %2253 = fmul fast float %2252, %2233
  br label %2254

; <label>:2254                                    ; preds = %2238, %2232
  %2255 = phi float [ %2253, %2238 ], [ %2233, %2232 ]
  %2256 = fcmp fast ult float %2255, 0x3F70101020000000
  br i1 %2256, label %2838, label %2257

; <label>:2257                                    ; preds = %2254
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 16
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2460, label %2262

; <label>:2262                                    ; preds = %2257
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %56, 496
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %106, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.ResRet.f32 %2270, 1
  %2273 = extractvalue %dx.types.ResRet.f32 %2270, 2
  %2274 = extractvalue %dx.types.ResRet.f32 %2270, 3
  %2275 = and i32 %2264, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = lshr i32 %2264, 8
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2274, %2276
  %2281 = fadd fast float %2280, %2279
  %2282 = fmul fast float %2281, 0x3F70101000000000
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 512
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2295, label %2287

; <label>:2287                                    ; preds = %2262
  %2288 = add i32 %56, 580
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %107, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  br label %2295

; <label>:2295                                    ; preds = %2287, %2262
  %2296 = phi float [ %2294, %2287 ], [ 1.000000e+00, %2262 ]
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 33554432
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2407, label %2301

; <label>:2301                                    ; preds = %2295
  %2302 = add i32 %56, 256
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 65535
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = lshr i32 %2304, 16
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = add i32 %56, 260
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 65535
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = lshr i32 %2315, 24
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = and i32 %2315, 255
  %2320 = uitofp i32 %2319 to float
  %2321 = fmul fast float %2320, 0x3F70101020000000
  %2322 = lshr i32 %2315, 8
  %2323 = and i32 %2322, 255
  %2324 = uitofp i32 %2323 to float
  %2325 = fmul fast float %2324, 0x3F70101020000000
  %2326 = lshr i32 %2315, 16
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = fmul fast float %2328, 0x3F70101020000000
  %2330 = add i32 %56, 252
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 24
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2334, 0x3F70101020000000
  %2336 = and i32 %2332, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2337, 0x3F70101020000000
  %2339 = lshr i32 %2332, 8
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = fmul fast float %2341, 0x3F70101020000000
  %2343 = lshr i32 %2332, 16
  %2344 = and i32 %2343, 255
  %2345 = uitofp i32 %2344 to float
  %2346 = fmul fast float %2345, 0x3F70101020000000
  %2347 = bitcast float %2271 to i32
  %2348 = ashr i32 %2347, 1
  %2349 = sub nsw i32 1597463174, %2348
  %2350 = bitcast i32 %2349 to float
  %2351 = fmul fast float %2271, 5.000000e-01
  %2352 = fmul fast float %2350, %2350
  %2353 = fmul fast float %2352, %2351
  %2354 = fsub fast float 1.500000e+00, %2353
  %2355 = fmul fast float %2350, %2271
  %2356 = fmul fast float %2355, %2354
  %2357 = bitcast float %2272 to i32
  %2358 = ashr i32 %2357, 1
  %2359 = sub nsw i32 1597463174, %2358
  %2360 = bitcast i32 %2359 to float
  %2361 = fmul fast float %2272, 5.000000e-01
  %2362 = fmul fast float %2360, %2360
  %2363 = fmul fast float %2362, %2361
  %2364 = fsub fast float 1.500000e+00, %2363
  %2365 = fmul fast float %2360, %2272
  %2366 = fmul fast float %2365, %2364
  %2367 = bitcast float %2273 to i32
  %2368 = ashr i32 %2367, 1
  %2369 = sub nsw i32 1597463174, %2368
  %2370 = bitcast i32 %2369 to float
  %2371 = fmul fast float %2273, 5.000000e-01
  %2372 = fmul fast float %2370, %2370
  %2373 = fmul fast float %2372, %2371
  %2374 = fsub fast float 1.500000e+00, %2373
  %2375 = fmul fast float %2370, %2273
  %2376 = fmul fast float %2375, %2374
  %2377 = fsub fast float %2356, %2338
  %2378 = fsub fast float %2366, %2342
  %2379 = fsub fast float %2376, %2346
  %2380 = fmul fast float %2377, %2306
  %2381 = fmul fast float %2378, %2308
  %2382 = fmul fast float %2379, %2313
  %2383 = fadd fast float %2380, %2321
  %2384 = fadd fast float %2381, %2325
  %2385 = fadd fast float %2382, %2329
  %2386 = call float @dx.op.unary.f32(i32 7, float %2383)  ; Saturate(value)
  %2387 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2388 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2389 = fmul fast float %2386, %2386
  %2390 = fmul fast float %2387, %2387
  %2391 = fmul fast float %2388, %2388
  %2392 = fsub fast float %2389, %2271
  %2393 = fsub fast float %2390, %2272
  %2394 = fsub fast float %2391, %2273
  %2395 = fmul fast float %2392, %2296
  %2396 = fmul fast float %2393, %2296
  %2397 = fmul fast float %2394, %2296
  %2398 = fadd fast float %2395, %2271
  %2399 = fadd fast float %2396, %2272
  %2400 = fadd fast float %2397, %2273
  %2401 = fadd fast float %2318, %2282
  %2402 = fsub fast float %2401, %2335
  %2403 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2404 = fsub fast float %2403, %2282
  %2405 = fmul fast float %2404, %2296
  %2406 = fadd fast float %2405, %2282
  br label %2460

; <label>:2407                                    ; preds = %2295
  %2408 = and i32 %2298, 134217728
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2444, label %2410

; <label>:2410                                    ; preds = %2407
  %2411 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2412 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2413 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2414 = fadd fast float %2411, -5.000000e-01
  %2415 = fadd fast float %2412, -5.000000e-01
  %2416 = fadd fast float %2413, -5.000000e-01
  %2417 = fmul fast float %2414, %2296
  %2418 = fmul fast float %2415, %2296
  %2419 = fmul fast float %2416, %2296
  %2420 = fadd fast float %2417, 5.000000e-01
  %2421 = fadd fast float %2418, 5.000000e-01
  %2422 = fadd fast float %2419, 5.000000e-01
  %2423 = call float @dx.op.unary.f32(i32 24, float %2271)  ; Sqrt(value)
  %2424 = call float @dx.op.unary.f32(i32 24, float %2272)  ; Sqrt(value)
  %2425 = call float @dx.op.unary.f32(i32 24, float %2273)  ; Sqrt(value)
  %2426 = fmul fast float %2420, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2423
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2423
  %2431 = fmul fast float %2421, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2424
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2424
  %2436 = fmul fast float %2422, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2425
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2425
  %2441 = fmul fast float %2430, %2430
  %2442 = fmul fast float %2435, %2435
  %2443 = fmul fast float %2440, %2440
  br label %2460

; <label>:2444                                    ; preds = %2407
  %2445 = fmul fast float %511, %511
  %2446 = fmul fast float %512, %512
  %2447 = fmul fast float %513, %513
  %2448 = fadd fast float %2445, -1.000000e+00
  %2449 = fadd fast float %2446, -1.000000e+00
  %2450 = fadd fast float %2447, -1.000000e+00
  %2451 = fmul fast float %2296, %2448
  %2452 = fmul fast float %2296, %2449
  %2453 = fmul fast float %2296, %2450
  %2454 = fadd fast float %2451, 1.000000e+00
  %2455 = fadd fast float %2452, 1.000000e+00
  %2456 = fadd fast float %2453, 1.000000e+00
  %2457 = fmul fast float %2454, %2271
  %2458 = fmul fast float %2455, %2272
  %2459 = fmul fast float %2456, %2273
  br label %2460

; <label>:2460                                    ; preds = %2444, %2410, %2301, %2257
  %2461 = phi float [ %2406, %2301 ], [ %2282, %2410 ], [ %2282, %2444 ], [ 0x3FA23C0BE0000000, %2257 ]
  %2462 = phi float [ %2398, %2301 ], [ %2441, %2410 ], [ %2457, %2444 ], [ 1.000000e+00, %2257 ]
  %2463 = phi float [ %2399, %2301 ], [ %2442, %2410 ], [ %2458, %2444 ], [ 1.000000e+00, %2257 ]
  %2464 = phi float [ %2400, %2301 ], [ %2443, %2410 ], [ %2459, %2444 ], [ 1.000000e+00, %2257 ]
  %2465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.i32 %2465, 1
  %2467 = and i32 %2466, 1
  %2468 = icmp ne i32 %2467, 0
  %2469 = add i32 %56, 356
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 32
  %2473 = icmp ne i32 %2472, 0
  %2474 = and i1 %2468, %2473
  %2475 = select i1 %2474, float 1.000000e+00, float %2462
  %2476 = select i1 %2474, float 0x3FD3333340000000, float %2463
  %2477 = select i1 %2474, float 0x3FD3333340000000, float %2464
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 32
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2554, label %2482

; <label>:2482                                    ; preds = %2460
  %2483 = add i32 %56, 124
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %56, 512
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2490, %dx.types.Handle %106, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = extractvalue %dx.types.ResRet.f32 %2491, 3
  %2496 = and i32 %2485, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = lshr i32 %2485, 8
  %2499 = and i32 %2498, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = lshr i32 %2485, 16
  %2502 = and i32 %2501, 255
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2503, 0x3F70101000000000
  %2505 = fmul fast float %2492, %2497
  %2506 = fadd fast float %2505, %2500
  %2507 = fmul fast float %2506, 0x3F70101000000000
  %2508 = fadd fast float %2493, -5.000000e-01
  %2509 = fadd fast float %2495, -5.000000e-01
  %2510 = fmul fast float %2508, %2504
  %2511 = fmul fast float %2509, %2504
  %2512 = fadd fast float %2510, 5.000000e-01
  %2513 = fadd fast float %2511, 5.000000e-01
  %2514 = fmul fast float %2512, 2.000000e+00
  %2515 = fadd fast float %2514, -1.000000e+00
  %2516 = fmul fast float %2513, 2.000000e+00
  %2517 = fadd fast float %2516, -1.000000e+00
  %2518 = fadd fast float %2515, %2517
  %2519 = fmul fast float %2518, 5.000000e-01
  %2520 = fsub fast float %2515, %2517
  %2521 = fmul fast float %2520, 5.000000e-01
  %2522 = call float @dx.op.unary.f32(i32 6, float %2519)  ; FAbs(value)
  %2523 = fsub fast float 1.000000e+00, %2522
  %2524 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2525 = fsub fast float %2523, %2524
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2519, float %2521, float %2525, float %2519, float %2521, float %2525)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = call float @dx.op.unary.f32(i32 25, float %2526)  ; Rsqrt(value)
  %2528 = fmul fast float %2519, %2527
  %2529 = fmul fast float %2521, %2527
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 67108864
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2550, label %2534

; <label>:2534                                    ; preds = %2482
  %2535 = add i32 %56, 312
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 65535
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 65535
  %2543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2542)  ; LegacyF16ToF32(value)
  %2544 = lshr i32 %2537, 16
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = fsub fast float %2507, %2545
  %2547 = fmul fast float %2546, %2539
  %2548 = fadd fast float %2547, %2543
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  br label %2550

; <label>:2550                                    ; preds = %2534, %2482
  %2551 = phi float [ %2549, %2534 ], [ %2507, %2482 ]
  %2552 = call float @dx.op.dot2.f32(i32 54, float %2528, float %2529, float %2086, float %2087)  ; Dot2(ax,ay,bx,by)
  %2553 = call float @dx.op.dot2.f32(i32 54, float %2528, float %2529, float %2088, float %2089)  ; Dot2(ax,ay,bx,by)
  br label %2554

; <label>:2554                                    ; preds = %2550, %2460
  %2555 = phi float [ %2551, %2550 ], [ 0x3FD6666660000000, %2460 ]
  %2556 = phi float [ %2552, %2550 ], [ 0.000000e+00, %2460 ]
  %2557 = phi float [ %2553, %2550 ], [ 0.000000e+00, %2460 ]
  %2558 = phi float [ %2494, %2550 ], [ 1.000000e+00, %2460 ]
  %2559 = add i32 %56, 192
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = lshr i32 %2561, 22
  %2563 = shl nuw nsw i32 %2562, 5
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 64
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2602, label %2569

; <label>:2569                                    ; preds = %2554
  %2570 = add i32 %56, 528
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 131072
  %2578 = icmp eq i32 %2577, 0
  %2579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %106, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2580 = extractvalue %dx.types.ResRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.ResRet.f32 %2579, 1
  %2582 = extractvalue %dx.types.ResRet.f32 %2579, 2
  %2583 = fmul fast float %494, %2580
  %2584 = fmul fast float %495, %2581
  %2585 = fmul fast float %496, %2582
  br i1 %2578, label %2592, label %2586

; <label>:2586                                    ; preds = %2569
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = fmul fast float %2588, %2583
  %2590 = fmul fast float %2588, %2584
  %2591 = fmul fast float %2588, %2585
  br label %2592

; <label>:2592                                    ; preds = %2586, %2569
  %2593 = phi float [ %2589, %2586 ], [ %2583, %2569 ]
  %2594 = phi float [ %2590, %2586 ], [ %2584, %2569 ]
  %2595 = phi float [ %2591, %2586 ], [ %2585, %2569 ]
  %2596 = fmul fast float %2593, %2564
  %2597 = select i1 %269, float %2596, float %2593
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2594, float %2595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = select i1 %269, float 0.000000e+00, float %2593
  %2600 = select i1 %269, float %2598, float %2594
  %2601 = select i1 %269, float 0.000000e+00, float %2595
  br label %2602

; <label>:2602                                    ; preds = %2592, %2554
  %2603 = phi float [ %2599, %2592 ], [ 0.000000e+00, %2554 ]
  %2604 = phi float [ %2600, %2592 ], [ 0.000000e+00, %2554 ]
  %2605 = phi float [ %2601, %2592 ], [ 0.000000e+00, %2554 ]
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 26624
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2633, label %2610

; <label>:2610                                    ; preds = %2602
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 16384
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2633, label %2615

; <label>:2615                                    ; preds = %2610
  %2616 = and i32 %2612, 1048576
  %2617 = icmp ne i32 %2616, 0
  %2618 = add i32 %56, 596
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %107, float %2182, float %2183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = add i32 %56, 128
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = lshr i32 %2627, 24
  %2629 = uitofp i32 %2628 to float
  %2630 = fmul fast float %2624, 0x3F70101020000000
  %2631 = select i1 %2617, float 0x3F70101020000000, float %2630
  %2632 = fmul fast float %2631, %2629
  br label %2633

; <label>:2633                                    ; preds = %2615, %2610, %2602
  %2634 = phi float [ %2632, %2615 ], [ 0.000000e+00, %2610 ], [ 0.000000e+00, %2602 ]
  %2635 = add i32 %56, 128
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = lshr i32 %2637, 8
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2644 = fmul fast float %2642, %2643
  %2645 = fadd fast float %2644, %2639
  %2646 = fmul fast float %2645, 0x3F70101020000000
  %2647 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  br i1 %2074, label %2648, label %2656

; <label>:2648                                    ; preds = %2633
  %2649 = fsub fast float 1.000000e+00, %2255
  %2650 = fmul fast float %2649, %2062
  %2651 = fmul fast float %2649, %2063
  %2652 = fmul fast float %2649, %2064
  %2653 = fmul fast float %2649, %2065
  %2654 = fmul fast float %2649, %2066
  %2655 = fmul fast float %2649, %2067
  br label %2656

; <label>:2656                                    ; preds = %2648, %2633
  %2657 = phi float [ %2650, %2648 ], [ %2062, %2633 ]
  %2658 = phi float [ %2651, %2648 ], [ %2063, %2633 ]
  %2659 = phi float [ %2652, %2648 ], [ %2064, %2633 ]
  %2660 = phi float [ %2653, %2648 ], [ %2065, %2633 ]
  %2661 = phi float [ %2654, %2648 ], [ %2066, %2633 ]
  %2662 = phi float [ %2655, %2648 ], [ %2067, %2633 ]
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 3
  %2666 = icmp eq i32 %2665, 3
  br i1 %2666, label %2745, label %2667

; <label>:2667                                    ; preds = %2656
  %2668 = and i32 %2664, 16
  %2669 = icmp ne i32 %2668, 0
  %2670 = select i1 %2669, float %2255, float 0.000000e+00
  %2671 = icmp eq i32 %2665, 0
  br i1 %2671, label %2672, label %2700

; <label>:2672                                    ; preds = %2667
  %2673 = and i32 %2664, 64
  %2674 = icmp ne i32 %2673, 0
  %2675 = select i1 %2674, float %2255, float 0.000000e+00
  %2676 = fsub fast float %2475, %2657
  %2677 = fsub fast float %2476, %2658
  %2678 = fsub fast float %2477, %2659
  %2679 = fmul fast float %2670, %2676
  %2680 = fmul fast float %2670, %2677
  %2681 = fmul fast float %2670, %2678
  %2682 = fadd fast float %2679, %2657
  %2683 = fadd fast float %2680, %2658
  %2684 = fadd fast float %2681, %2659
  %2685 = fsub fast float %2461, %2068
  %2686 = fmul fast float %2670, %2685
  %2687 = fadd fast float %2686, %2068
  %2688 = fsub fast float %2603, %2660
  %2689 = fsub fast float %2604, %2661
  %2690 = fsub fast float %2605, %2662
  %2691 = fmul fast float %2675, %2688
  %2692 = fmul fast float %2675, %2689
  %2693 = fmul fast float %2675, %2690
  %2694 = fadd fast float %2691, %2660
  %2695 = fadd fast float %2692, %2661
  %2696 = fadd fast float %2693, %2662
  %2697 = fsub fast float %2647, %2072
  %2698 = fmul fast float %2670, %2697
  %2699 = fadd fast float %2698, %2072
  br label %2745

; <label>:2700                                    ; preds = %2667
  %2701 = icmp eq i32 %2665, 1
  br i1 %2701, label %2702, label %2715

; <label>:2702                                    ; preds = %2700
  %2703 = fadd fast float %2475, -1.000000e+00
  %2704 = fadd fast float %2476, -1.000000e+00
  %2705 = fadd fast float %2477, -1.000000e+00
  %2706 = fmul fast float %2670, %2703
  %2707 = fmul fast float %2670, %2704
  %2708 = fmul fast float %2670, %2705
  %2709 = fadd fast float %2706, 1.000000e+00
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fmul fast float %2709, %2657
  %2713 = fmul fast float %2710, %2658
  %2714 = fmul fast float %2711, %2659
  br label %2745

; <label>:2715                                    ; preds = %2700
  %2716 = icmp eq i32 %2665, 2
  br i1 %2716, label %2717, label %2745

; <label>:2717                                    ; preds = %2715
  %2718 = call float @dx.op.unary.f32(i32 24, float %2475)  ; Sqrt(value)
  %2719 = call float @dx.op.unary.f32(i32 24, float %2476)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %2477)  ; Sqrt(value)
  %2721 = fadd fast float %2718, -5.000000e-01
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fmul fast float %2721, %2670
  %2725 = fmul fast float %2722, %2670
  %2726 = fmul fast float %2723, %2670
  %2727 = fadd fast float %2724, 5.000000e-01
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fmul fast float %2727, 2.000000e+00
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fmul fast float %2731, %2657
  %2733 = fadd fast float %2732, %2730
  %2734 = fmul fast float %2733, %2657
  %2735 = fmul fast float %2728, 2.000000e+00
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = fmul fast float %2736, %2658
  %2738 = fadd fast float %2737, %2735
  %2739 = fmul fast float %2738, %2658
  %2740 = fmul fast float %2729, 2.000000e+00
  %2741 = fsub fast float 1.000000e+00, %2740
  %2742 = fmul fast float %2741, %2659
  %2743 = fadd fast float %2742, %2740
  %2744 = fmul fast float %2743, %2659
  br label %2745

; <label>:2745                                    ; preds = %2717, %2715, %2702, %2672, %2656
  %2746 = phi float [ %2657, %2656 ], [ %2734, %2717 ], [ %2657, %2715 ], [ %2712, %2702 ], [ %2682, %2672 ]
  %2747 = phi float [ %2658, %2656 ], [ %2739, %2717 ], [ %2658, %2715 ], [ %2713, %2702 ], [ %2683, %2672 ]
  %2748 = phi float [ %2659, %2656 ], [ %2744, %2717 ], [ %2659, %2715 ], [ %2714, %2702 ], [ %2684, %2672 ]
  %2749 = phi float [ %2660, %2656 ], [ %2660, %2717 ], [ %2660, %2715 ], [ %2660, %2702 ], [ %2694, %2672 ]
  %2750 = phi float [ %2661, %2656 ], [ %2661, %2717 ], [ %2661, %2715 ], [ %2661, %2702 ], [ %2695, %2672 ]
  %2751 = phi float [ %2662, %2656 ], [ %2662, %2717 ], [ %2662, %2715 ], [ %2662, %2702 ], [ %2696, %2672 ]
  %2752 = phi float [ %2068, %2656 ], [ %2068, %2717 ], [ %2068, %2715 ], [ %2068, %2702 ], [ %2687, %2672 ]
  %2753 = phi float [ %2072, %2656 ], [ %2072, %2717 ], [ %2072, %2715 ], [ %2072, %2702 ], [ %2699, %2672 ]
  %2754 = and i32 %2664, 12
  %2755 = icmp eq i32 %2754, 12
  br i1 %2755, label %2838, label %2756

; <label>:2756                                    ; preds = %2745
  %2757 = and i32 %2664, 2097184
  %2758 = icmp eq i32 %2757, 2097184
  %2759 = select i1 %2758, float %2255, float 0.000000e+00
  %2760 = and i32 %2664, 4194336
  %2761 = icmp eq i32 %2760, 4194336
  %2762 = select i1 %2761, float %2255, float 0.000000e+00
  %2763 = and i32 %2664, 8388640
  %2764 = icmp eq i32 %2763, 8388640
  %2765 = select i1 %2764, float %2255, float 0.000000e+00
  %2766 = and i32 %2664, 16384
  %2767 = icmp ne i32 %2766, 0
  %2768 = select i1 %2767, float %2255, float 0.000000e+00
  %2769 = icmp eq i32 %2754, 0
  br i1 %2769, label %2770, label %2786

; <label>:2770                                    ; preds = %2756
  %2771 = fsub fast float %2556, %2060
  %2772 = fsub fast float %2557, %2061
  %2773 = fmul fast float %2759, %2771
  %2774 = fmul fast float %2759, %2772
  %2775 = fadd fast float %2773, %2060
  %2776 = fadd fast float %2774, %2061
  %2777 = fsub fast float %2558, %2070
  %2778 = fmul fast float %2762, %2777
  %2779 = fadd fast float %2778, %2070
  %2780 = fsub fast float %2555, %2069
  %2781 = fmul fast float %2765, %2780
  %2782 = fadd fast float %2781, %2069
  %2783 = fsub fast float %2634, %2071
  %2784 = fmul fast float %2768, %2783
  %2785 = fadd fast float %2784, %2071
  br label %2838

; <label>:2786                                    ; preds = %2756
  %2787 = icmp eq i32 %2754, 4
  br i1 %2787, label %2788, label %2822

; <label>:2788                                    ; preds = %2786
  %2789 = fmul fast float %2759, %2556
  %2790 = fmul fast float %2759, %2557
  %2791 = fadd fast float %2789, %2060
  %2792 = fadd fast float %2790, %2061
  %2793 = call float @dx.op.binary.f32(i32 36, float %2070, float %2558)  ; FMin(a,b)
  %2794 = fsub fast float %2793, %2070
  %2795 = fmul fast float %2794, %2762
  %2796 = fadd fast float %2795, %2070
  %2797 = fadd fast float %2555, %2069
  %2798 = fmul fast float %2797, 0x3FF337FAE0000000
  %2799 = fmul fast float %2069, %2069
  %2800 = fmul fast float %2555, %2555
  %2801 = fadd fast float %2800, %2799
  %2802 = fmul fast float %2801, 0x3FE5152B00000000
  %2803 = fmul fast float %2069, 0xBFCC1F85E0000000
  %2804 = fmul fast float %2803, %2555
  %2805 = fadd fast float %2804, 0xBFE1363700000000
  %2806 = fadd fast float %2805, %2798
  %2807 = fsub fast float %2806, %2802
  %2808 = fmul fast float %2797, 0x3FBA6F0D00000000
  %2809 = fmul fast float %2801, 0x3FD0432880000000
  %2810 = fmul fast float %2069, 0xBFEF110800000000
  %2811 = fmul fast float %2810, %2555
  %2812 = fadd fast float %2811, 1.000000e+00
  %2813 = fsub fast float %2812, %2808
  %2814 = fadd fast float %2813, %2809
  %2815 = fdiv fast float %2807, %2814
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2817 = fsub fast float %2816, %2069
  %2818 = fmul fast float %2817, %2765
  %2819 = fadd fast float %2818, %2069
  %2820 = fmul fast float %2768, %2634
  %2821 = fadd fast float %2820, %2071
  br label %2838

; <label>:2822                                    ; preds = %2786
  %2823 = icmp eq i32 %2754, 8
  br i1 %2823, label %2824, label %2838

; <label>:2824                                    ; preds = %2822
  %2825 = fmul fast float %2759, %2556
  %2826 = fmul fast float %2759, %2557
  %2827 = fadd fast float %2825, %2060
  %2828 = fadd fast float %2826, %2061
  %2829 = call float @dx.op.binary.f32(i32 36, float %2070, float %2558)  ; FMin(a,b)
  %2830 = fsub fast float %2829, %2070
  %2831 = fmul fast float %2830, %2762
  %2832 = fadd fast float %2831, %2070
  %2833 = fsub fast float %2555, %2069
  %2834 = fmul fast float %2765, %2833
  %2835 = fadd fast float %2834, %2069
  %2836 = fmul fast float %2768, %2634
  %2837 = fadd fast float %2836, %2071
  br label %2838

; <label>:2838                                    ; preds = %2824, %2822, %2788, %2770, %2745, %2254, %2073, %2059
  %2839 = phi float [ %2060, %2745 ], [ %2060, %2254 ], [ %2060, %2059 ], [ %2827, %2824 ], [ %2060, %2822 ], [ %2791, %2788 ], [ %2775, %2770 ], [ %2060, %2073 ]
  %2840 = phi float [ %2061, %2745 ], [ %2061, %2254 ], [ %2061, %2059 ], [ %2828, %2824 ], [ %2061, %2822 ], [ %2792, %2788 ], [ %2776, %2770 ], [ %2061, %2073 ]
  %2841 = phi float [ %2746, %2745 ], [ %2062, %2254 ], [ %2062, %2059 ], [ %2746, %2824 ], [ %2746, %2822 ], [ %2746, %2788 ], [ %2746, %2770 ], [ %2062, %2073 ]
  %2842 = phi float [ %2747, %2745 ], [ %2063, %2254 ], [ %2063, %2059 ], [ %2747, %2824 ], [ %2747, %2822 ], [ %2747, %2788 ], [ %2747, %2770 ], [ %2063, %2073 ]
  %2843 = phi float [ %2748, %2745 ], [ %2064, %2254 ], [ %2064, %2059 ], [ %2748, %2824 ], [ %2748, %2822 ], [ %2748, %2788 ], [ %2748, %2770 ], [ %2064, %2073 ]
  %2844 = phi float [ %2749, %2745 ], [ %2065, %2254 ], [ %2065, %2059 ], [ %2749, %2824 ], [ %2749, %2822 ], [ %2749, %2788 ], [ %2749, %2770 ], [ %2065, %2073 ]
  %2845 = phi float [ %2750, %2745 ], [ %2066, %2254 ], [ %2066, %2059 ], [ %2750, %2824 ], [ %2750, %2822 ], [ %2750, %2788 ], [ %2750, %2770 ], [ %2066, %2073 ]
  %2846 = phi float [ %2751, %2745 ], [ %2067, %2254 ], [ %2067, %2059 ], [ %2751, %2824 ], [ %2751, %2822 ], [ %2751, %2788 ], [ %2751, %2770 ], [ %2067, %2073 ]
  %2847 = phi float [ %2752, %2745 ], [ %2068, %2254 ], [ %2068, %2059 ], [ %2752, %2824 ], [ %2752, %2822 ], [ %2752, %2788 ], [ %2752, %2770 ], [ %2068, %2073 ]
  %2848 = phi float [ %2069, %2745 ], [ %2069, %2254 ], [ %2069, %2059 ], [ %2835, %2824 ], [ %2069, %2822 ], [ %2819, %2788 ], [ %2782, %2770 ], [ %2069, %2073 ]
  %2849 = phi float [ %2070, %2745 ], [ %2070, %2254 ], [ %2070, %2059 ], [ %2832, %2824 ], [ %2070, %2822 ], [ %2796, %2788 ], [ %2779, %2770 ], [ %2070, %2073 ]
  %2850 = phi float [ %2071, %2745 ], [ %2071, %2254 ], [ %2071, %2059 ], [ %2837, %2824 ], [ %2071, %2822 ], [ %2821, %2788 ], [ %2785, %2770 ], [ %2071, %2073 ]
  %2851 = phi float [ %2753, %2745 ], [ %2072, %2254 ], [ %2072, %2059 ], [ %2753, %2824 ], [ %2753, %2822 ], [ %2753, %2788 ], [ %2753, %2770 ], [ %2072, %2073 ]
  br i1 %653, label %3617, label %2852

; <label>:2852                                    ; preds = %2838
  %2853 = icmp ult i32 %707, 4
  %2854 = add i32 %56, 72
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %56, 76
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = or i32 %2859, %2856
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %3617, label %2862

; <label>:2862                                    ; preds = %2852
  %2863 = and i32 %2856, 262144
  %2864 = icmp ne i32 %2863, 0
  %2865 = select i1 %2864, float %64, float 1.000000e+00
  %2866 = select i1 %2864, float %65, float 0.000000e+00
  %2867 = select i1 %2864, float %66, float 0.000000e+00
  %2868 = select i1 %2864, float %67, float 1.000000e+00
  %2869 = select i1 %2864, float %68, float %92
  %2870 = select i1 %2864, float %69, float %93
  %2871 = add i32 %56, 332
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = lshr i32 %2873, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = fmul fast float %2875, 0x3F50624DE0000000
  %2877 = add i32 %56, 136
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = lshr i32 %2879, 16
  %2881 = and i32 %2880, 255
  %2882 = lshr i32 %2879, 24
  %2883 = add i32 %56, 340
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = lshr i32 %2885, 16
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = add i32 %56, 80
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = lshr i32 %2892, 22
  %2894 = shl nuw nsw i32 %2893, 5
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = shl i32 %2892, 4
  %2897 = and i32 %2896, 32752
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = lshr i32 %2892, 7
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2902, 3
  %2904 = fmul fast float %2903, 1.000000e+03
  %2905 = fmul fast float %2904, %642
  %2906 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2907 = fadd fast float %2906, %630
  %2908 = fmul fast float %2904, %644
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = fadd fast float %2909, %631
  %2911 = fmul fast float %2876, %2904
  %2912 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2913 = fmul fast float %2912, 0x401921FB60000000
  %2914 = fadd fast float %2913, %2895
  %2915 = call float @dx.op.unary.f32(i32 13, float %2914)  ; Sin(value)
  %2916 = call float @dx.op.unary.f32(i32 12, float %2914)  ; Cos(value)
  %2917 = fsub fast float -0.000000e+00, %2915
  %2918 = fadd fast float %2869, -5.000000e-01
  %2919 = fadd fast float %2870, -5.000000e-01
  %2920 = fmul fast float %2887, %2918
  %2921 = fmul fast float %2889, %2919
  %2922 = fadd fast float %2920, 5.000000e-01
  %2923 = fadd fast float %2921, 5.000000e-01
  %2924 = fmul fast float %2898, %2922
  %2925 = fmul fast float %2901, %2923
  %2926 = fmul fast float %2916, %2924
  %2927 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2925, float %2926)  ; FMad(a,b,c)
  %2928 = fmul fast float %2915, %2924
  %2929 = call float @dx.op.tertiary.f32(i32 46, float %2916, float %2925, float %2928)  ; FMad(a,b,c)
  %2930 = fadd fast float %2907, %2927
  %2931 = fadd fast float %2910, %2929
  %2932 = icmp ugt i32 %2881, 1
  %2933 = icmp ugt i32 %2879, 33554431
  %2934 = or i1 %2933, %2932
  br i1 %2934, label %2935, label %2960

; <label>:2935                                    ; preds = %2862
  %2936 = add i32 %56, 276
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = lshr i32 %2938, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = fmul fast float %2903, %2940
  %2942 = call float @dx.op.unary.f32(i32 22, float %2941)  ; Frc(value)
  %2943 = mul nuw nsw i32 %2881, %2882
  %2944 = uitofp i32 %2943 to float
  %2945 = fmul fast float %2942, %2944
  %2946 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2947 = fptoui float %2946 to i32
  %2948 = urem i32 %2947, %2881
  %2949 = udiv i32 %2947, %2882
  %2950 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2951 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2952 = uitofp i32 %2948 to float
  %2953 = uitofp i32 %2949 to float
  %2954 = fadd fast float %2950, %2952
  %2955 = fadd fast float %2951, %2953
  %2956 = uitofp i32 %2881 to float
  %2957 = uitofp i32 %2882 to float
  %2958 = fdiv fast float %2954, %2956
  %2959 = fdiv fast float %2955, %2957
  br label %2960

; <label>:2960                                    ; preds = %2935, %2862
  %2961 = phi float [ %2958, %2935 ], [ %2930, %2862 ]
  %2962 = phi float [ %2959, %2935 ], [ %2931, %2862 ]
  %2963 = and i32 %2856, 256
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %3011, label %2965

; <label>:2965                                    ; preds = %2960
  %2966 = add i32 %56, 564
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = add i32 %2968, 0
  %2970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2970, %dx.types.Handle %107, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = add i32 %56, 148
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = shl i32 %2975, 4
  %2977 = and i32 %2976, 32752
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = lshr i32 %2975, 7
  %2980 = and i32 %2979, 32752
  %2981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2980)  ; LegacyF16ToF32(value)
  %2982 = fsub fast float 1.000000e+00, %702
  %2983 = call float @dx.op.binary.f32(i32 35, float %2982, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2984 = bitcast float %702 to i32
  %2985 = sitofp i32 %2984 to float
  %2986 = fadd fast float %2985, 0xC1CFBF8940000000
  %2987 = fmul fast float %2981, %2986
  %2988 = fadd fast float %2987, 0x41CFBF8940000000
  %2989 = fptosi float %2988 to i32
  %2990 = bitcast i32 %2989 to float
  %2991 = bitcast float %2983 to i32
  %2992 = sitofp i32 %2991 to float
  %2993 = fadd fast float %2992, 0xC1CFBF8940000000
  %2994 = fmul fast float %2993, %2981
  %2995 = fadd fast float %2994, 0x41CFBF8940000000
  %2996 = fptosi float %2995 to i32
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2990, %2978
  %2999 = fmul fast float %2997, %2978
  %3000 = fsub fast float %2983, %2998
  %3001 = fadd fast float %2999, %2983
  %3002 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  %3003 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3004 = fsub fast float %2972, %3002
  %3005 = fsub fast float %3003, %3002
  %3006 = bitcast float %3005 to i32
  %3007 = sub nsw i32 2129859010, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %3008, %3004
  %3010 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  br label %3011

; <label>:3011                                    ; preds = %2965, %2960
  %3012 = phi float [ %3010, %2965 ], [ %702, %2960 ]
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 128
  %3016 = icmp eq i32 %3015, 0
  br i1 %3016, label %3033, label %3017

; <label>:3017                                    ; preds = %3011
  %3018 = add i32 %56, 548
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %107, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 524288
  %3028 = icmp ne i32 %3027, 0
  %3029 = fcmp fast ogt float %3024, 0x3FE0101020000000
  %3030 = select i1 %3029, float 1.000000e+00, float 0.000000e+00
  %3031 = select i1 %3028, float %3030, float %3024
  %3032 = fmul fast float %3031, %3012
  br label %3033

; <label>:3033                                    ; preds = %3017, %3011
  %3034 = phi float [ %3032, %3017 ], [ %3012, %3011 ]
  %3035 = fcmp fast ult float %3034, 0x3F70101020000000
  br i1 %3035, label %3617, label %3036

; <label>:3036                                    ; preds = %3033
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 16
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3239, label %3041

; <label>:3041                                    ; preds = %3036
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = add i32 %56, 500
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3048, %dx.types.Handle %106, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = extractvalue %dx.types.ResRet.f32 %3049, 3
  %3054 = and i32 %3043, 255
  %3055 = uitofp i32 %3054 to float
  %3056 = lshr i32 %3043, 8
  %3057 = and i32 %3056, 255
  %3058 = uitofp i32 %3057 to float
  %3059 = fmul fast float %3053, %3055
  %3060 = fadd fast float %3059, %3058
  %3061 = fmul fast float %3060, 0x3F70101000000000
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 512
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3074, label %3066

; <label>:3066                                    ; preds = %3041
  %3067 = add i32 %56, 584
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3071, %dx.types.Handle %107, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  br label %3074

; <label>:3074                                    ; preds = %3066, %3041
  %3075 = phi float [ %3073, %3066 ], [ 1.000000e+00, %3041 ]
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 33554432
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3186, label %3080

; <label>:3080                                    ; preds = %3074
  %3081 = add i32 %56, 272
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = and i32 %3083, 65535
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = lshr i32 %3083, 16
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = add i32 %56, 276
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 65535
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = lshr i32 %3094, 24
  %3096 = uitofp i32 %3095 to float
  %3097 = fmul fast float %3096, 0x3F70101020000000
  %3098 = and i32 %3094, 255
  %3099 = uitofp i32 %3098 to float
  %3100 = fmul fast float %3099, 0x3F70101020000000
  %3101 = lshr i32 %3094, 8
  %3102 = and i32 %3101, 255
  %3103 = uitofp i32 %3102 to float
  %3104 = fmul fast float %3103, 0x3F70101020000000
  %3105 = lshr i32 %3094, 16
  %3106 = and i32 %3105, 255
  %3107 = uitofp i32 %3106 to float
  %3108 = fmul fast float %3107, 0x3F70101020000000
  %3109 = add i32 %56, 268
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = lshr i32 %3111, 24
  %3113 = uitofp i32 %3112 to float
  %3114 = fmul fast float %3113, 0x3F70101020000000
  %3115 = and i32 %3111, 255
  %3116 = uitofp i32 %3115 to float
  %3117 = fmul fast float %3116, 0x3F70101020000000
  %3118 = lshr i32 %3111, 8
  %3119 = and i32 %3118, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = fmul fast float %3120, 0x3F70101020000000
  %3122 = lshr i32 %3111, 16
  %3123 = and i32 %3122, 255
  %3124 = uitofp i32 %3123 to float
  %3125 = fmul fast float %3124, 0x3F70101020000000
  %3126 = bitcast float %3050 to i32
  %3127 = ashr i32 %3126, 1
  %3128 = sub nsw i32 1597463174, %3127
  %3129 = bitcast i32 %3128 to float
  %3130 = fmul fast float %3050, 5.000000e-01
  %3131 = fmul fast float %3129, %3129
  %3132 = fmul fast float %3131, %3130
  %3133 = fsub fast float 1.500000e+00, %3132
  %3134 = fmul fast float %3129, %3050
  %3135 = fmul fast float %3134, %3133
  %3136 = bitcast float %3051 to i32
  %3137 = ashr i32 %3136, 1
  %3138 = sub nsw i32 1597463174, %3137
  %3139 = bitcast i32 %3138 to float
  %3140 = fmul fast float %3051, 5.000000e-01
  %3141 = fmul fast float %3139, %3139
  %3142 = fmul fast float %3141, %3140
  %3143 = fsub fast float 1.500000e+00, %3142
  %3144 = fmul fast float %3139, %3051
  %3145 = fmul fast float %3144, %3143
  %3146 = bitcast float %3052 to i32
  %3147 = ashr i32 %3146, 1
  %3148 = sub nsw i32 1597463174, %3147
  %3149 = bitcast i32 %3148 to float
  %3150 = fmul fast float %3052, 5.000000e-01
  %3151 = fmul fast float %3149, %3149
  %3152 = fmul fast float %3151, %3150
  %3153 = fsub fast float 1.500000e+00, %3152
  %3154 = fmul fast float %3149, %3052
  %3155 = fmul fast float %3154, %3153
  %3156 = fsub fast float %3135, %3117
  %3157 = fsub fast float %3145, %3121
  %3158 = fsub fast float %3155, %3125
  %3159 = fmul fast float %3156, %3085
  %3160 = fmul fast float %3157, %3087
  %3161 = fmul fast float %3158, %3092
  %3162 = fadd fast float %3159, %3100
  %3163 = fadd fast float %3160, %3104
  %3164 = fadd fast float %3161, %3108
  %3165 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3166 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  %3167 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3168 = fmul fast float %3165, %3165
  %3169 = fmul fast float %3166, %3166
  %3170 = fmul fast float %3167, %3167
  %3171 = fsub fast float %3168, %3050
  %3172 = fsub fast float %3169, %3051
  %3173 = fsub fast float %3170, %3052
  %3174 = fmul fast float %3171, %3075
  %3175 = fmul fast float %3172, %3075
  %3176 = fmul fast float %3173, %3075
  %3177 = fadd fast float %3174, %3050
  %3178 = fadd fast float %3175, %3051
  %3179 = fadd fast float %3176, %3052
  %3180 = fadd fast float %3097, %3061
  %3181 = fsub fast float %3180, %3114
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = fsub fast float %3182, %3061
  %3184 = fmul fast float %3183, %3075
  %3185 = fadd fast float %3184, %3061
  br label %3239

; <label>:3186                                    ; preds = %3074
  %3187 = and i32 %3077, 134217728
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3223, label %3189

; <label>:3189                                    ; preds = %3186
  %3190 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3191 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3192 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3193 = fadd fast float %3190, -5.000000e-01
  %3194 = fadd fast float %3191, -5.000000e-01
  %3195 = fadd fast float %3192, -5.000000e-01
  %3196 = fmul fast float %3193, %3075
  %3197 = fmul fast float %3194, %3075
  %3198 = fmul fast float %3195, %3075
  %3199 = fadd fast float %3196, 5.000000e-01
  %3200 = fadd fast float %3197, 5.000000e-01
  %3201 = fadd fast float %3198, 5.000000e-01
  %3202 = call float @dx.op.unary.f32(i32 24, float %3050)  ; Sqrt(value)
  %3203 = call float @dx.op.unary.f32(i32 24, float %3051)  ; Sqrt(value)
  %3204 = call float @dx.op.unary.f32(i32 24, float %3052)  ; Sqrt(value)
  %3205 = fmul fast float %3199, 2.000000e+00
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3206, %3202
  %3208 = fadd fast float %3207, %3205
  %3209 = fmul fast float %3208, %3202
  %3210 = fmul fast float %3200, 2.000000e+00
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = fmul fast float %3211, %3203
  %3213 = fadd fast float %3212, %3210
  %3214 = fmul fast float %3213, %3203
  %3215 = fmul fast float %3201, 2.000000e+00
  %3216 = fsub fast float 1.000000e+00, %3215
  %3217 = fmul fast float %3216, %3204
  %3218 = fadd fast float %3217, %3215
  %3219 = fmul fast float %3218, %3204
  %3220 = fmul fast float %3209, %3209
  %3221 = fmul fast float %3214, %3214
  %3222 = fmul fast float %3219, %3219
  br label %3239

; <label>:3223                                    ; preds = %3186
  %3224 = fmul fast float %618, %618
  %3225 = fmul fast float %619, %619
  %3226 = fmul fast float %620, %620
  %3227 = fadd fast float %3224, -1.000000e+00
  %3228 = fadd fast float %3225, -1.000000e+00
  %3229 = fadd fast float %3226, -1.000000e+00
  %3230 = fmul fast float %3075, %3227
  %3231 = fmul fast float %3075, %3228
  %3232 = fmul fast float %3075, %3229
  %3233 = fadd fast float %3230, 1.000000e+00
  %3234 = fadd fast float %3231, 1.000000e+00
  %3235 = fadd fast float %3232, 1.000000e+00
  %3236 = fmul fast float %3233, %3050
  %3237 = fmul fast float %3234, %3051
  %3238 = fmul fast float %3235, %3052
  br label %3239

; <label>:3239                                    ; preds = %3223, %3189, %3080, %3036
  %3240 = phi float [ %3185, %3080 ], [ %3061, %3189 ], [ %3061, %3223 ], [ 0x3FA23C0BE0000000, %3036 ]
  %3241 = phi float [ %3177, %3080 ], [ %3220, %3189 ], [ %3236, %3223 ], [ 1.000000e+00, %3036 ]
  %3242 = phi float [ %3178, %3080 ], [ %3221, %3189 ], [ %3237, %3223 ], [ 1.000000e+00, %3036 ]
  %3243 = phi float [ %3179, %3080 ], [ %3222, %3189 ], [ %3238, %3223 ], [ 1.000000e+00, %3036 ]
  %3244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.i32 %3244, 1
  %3246 = and i32 %3245, 1
  %3247 = icmp ne i32 %3246, 0
  %3248 = add i32 %56, 356
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, 32
  %3252 = icmp ne i32 %3251, 0
  %3253 = and i1 %3247, %3252
  %3254 = select i1 %3253, float 1.000000e+00, float %3241
  %3255 = select i1 %3253, float 0x3FD3333340000000, float %3242
  %3256 = select i1 %3253, float 0x3FD3333340000000, float %3243
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = and i32 %3258, 32
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3333, label %3261

; <label>:3261                                    ; preds = %3239
  %3262 = add i32 %56, 140
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %56, 516
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = add i32 %3267, 0
  %3269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3269, %dx.types.Handle %106, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3274 = extractvalue %dx.types.ResRet.f32 %3270, 3
  %3275 = and i32 %3264, 255
  %3276 = uitofp i32 %3275 to float
  %3277 = lshr i32 %3264, 8
  %3278 = and i32 %3277, 255
  %3279 = uitofp i32 %3278 to float
  %3280 = lshr i32 %3264, 16
  %3281 = and i32 %3280, 255
  %3282 = uitofp i32 %3281 to float
  %3283 = fmul fast float %3282, 0x3F70101000000000
  %3284 = fmul fast float %3271, %3276
  %3285 = fadd fast float %3284, %3279
  %3286 = fmul fast float %3285, 0x3F70101000000000
  %3287 = fadd fast float %3272, -5.000000e-01
  %3288 = fadd fast float %3274, -5.000000e-01
  %3289 = fmul fast float %3287, %3283
  %3290 = fmul fast float %3288, %3283
  %3291 = fadd fast float %3289, 5.000000e-01
  %3292 = fadd fast float %3290, 5.000000e-01
  %3293 = fmul fast float %3291, 2.000000e+00
  %3294 = fadd fast float %3293, -1.000000e+00
  %3295 = fmul fast float %3292, 2.000000e+00
  %3296 = fadd fast float %3295, -1.000000e+00
  %3297 = fadd fast float %3294, %3296
  %3298 = fmul fast float %3297, 5.000000e-01
  %3299 = fsub fast float %3294, %3296
  %3300 = fmul fast float %3299, 5.000000e-01
  %3301 = call float @dx.op.unary.f32(i32 6, float %3298)  ; FAbs(value)
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = call float @dx.op.unary.f32(i32 6, float %3300)  ; FAbs(value)
  %3304 = fsub fast float %3302, %3303
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3298, float %3300, float %3304, float %3298, float %3300, float %3304)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = call float @dx.op.unary.f32(i32 25, float %3305)  ; Rsqrt(value)
  %3307 = fmul fast float %3298, %3306
  %3308 = fmul fast float %3300, %3306
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 67108864
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3329, label %3313

; <label>:3313                                    ; preds = %3261
  %3314 = add i32 %56, 328
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 65535
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 65535
  %3322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3321)  ; LegacyF16ToF32(value)
  %3323 = lshr i32 %3316, 16
  %3324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3323)  ; LegacyF16ToF32(value)
  %3325 = fsub fast float %3286, %3324
  %3326 = fmul fast float %3325, %3318
  %3327 = fadd fast float %3326, %3322
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  br label %3329

; <label>:3329                                    ; preds = %3313, %3261
  %3330 = phi float [ %3328, %3313 ], [ %3286, %3261 ]
  %3331 = call float @dx.op.dot2.f32(i32 54, float %3307, float %3308, float %2865, float %2866)  ; Dot2(ax,ay,bx,by)
  %3332 = call float @dx.op.dot2.f32(i32 54, float %3307, float %3308, float %2867, float %2868)  ; Dot2(ax,ay,bx,by)
  br label %3333

; <label>:3333                                    ; preds = %3329, %3239
  %3334 = phi float [ %3330, %3329 ], [ 0x3FD6666660000000, %3239 ]
  %3335 = phi float [ %3331, %3329 ], [ 0.000000e+00, %3239 ]
  %3336 = phi float [ %3332, %3329 ], [ 0.000000e+00, %3239 ]
  %3337 = phi float [ %3273, %3329 ], [ 1.000000e+00, %3239 ]
  %3338 = add i32 %56, 208
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = lshr i32 %3340, 22
  %3342 = shl nuw nsw i32 %3341, 5
  %3343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3342)  ; LegacyF16ToF32(value)
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 64
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3381, label %3348

; <label>:3348                                    ; preds = %3333
  %3349 = add i32 %56, 532
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = add i32 %3351, 0
  %3353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 131072
  %3357 = icmp eq i32 %3356, 0
  %3358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3353, %dx.types.Handle %106, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3362 = fmul fast float %601, %3359
  %3363 = fmul fast float %602, %3360
  %3364 = fmul fast float %603, %3361
  br i1 %3357, label %3371, label %3365

; <label>:3365                                    ; preds = %3348
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 0
  %3368 = fmul fast float %3367, %3362
  %3369 = fmul fast float %3367, %3363
  %3370 = fmul fast float %3367, %3364
  br label %3371

; <label>:3371                                    ; preds = %3365, %3348
  %3372 = phi float [ %3368, %3365 ], [ %3362, %3348 ]
  %3373 = phi float [ %3369, %3365 ], [ %3363, %3348 ]
  %3374 = phi float [ %3370, %3365 ], [ %3364, %3348 ]
  %3375 = fmul fast float %3372, %3343
  %3376 = select i1 %269, float %3375, float %3372
  %3377 = call float @dx.op.dot3.f32(i32 55, float %3376, float %3373, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3378 = select i1 %269, float 0.000000e+00, float %3372
  %3379 = select i1 %269, float %3377, float %3373
  %3380 = select i1 %269, float 0.000000e+00, float %3374
  br label %3381

; <label>:3381                                    ; preds = %3371, %3333
  %3382 = phi float [ %3378, %3371 ], [ 0.000000e+00, %3333 ]
  %3383 = phi float [ %3379, %3371 ], [ 0.000000e+00, %3333 ]
  %3384 = phi float [ %3380, %3371 ], [ 0.000000e+00, %3333 ]
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 26624
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3412, label %3389

; <label>:3389                                    ; preds = %3381
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = and i32 %3391, 16384
  %3393 = icmp eq i32 %3392, 0
  br i1 %3393, label %3412, label %3394

; <label>:3394                                    ; preds = %3389
  %3395 = and i32 %3391, 1048576
  %3396 = icmp ne i32 %3395, 0
  %3397 = add i32 %56, 600
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = add i32 %3399, 0
  %3401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3401, %dx.types.Handle %107, float %2961, float %2962, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = add i32 %56, 144
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = lshr i32 %3406, 24
  %3408 = uitofp i32 %3407 to float
  %3409 = fmul fast float %3403, 0x3F70101020000000
  %3410 = select i1 %3396, float 0x3F70101020000000, float %3409
  %3411 = fmul fast float %3410, %3408
  br label %3412

; <label>:3412                                    ; preds = %3394, %3389, %3381
  %3413 = phi float [ %3411, %3394 ], [ 0.000000e+00, %3389 ], [ 0.000000e+00, %3381 ]
  %3414 = add i32 %56, 144
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 255
  %3418 = uitofp i32 %3417 to float
  %3419 = lshr i32 %3416, 8
  %3420 = and i32 %3419, 255
  %3421 = uitofp i32 %3420 to float
  %3422 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3255, float %3256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = fmul fast float %3421, %3422
  %3424 = fadd fast float %3423, %3418
  %3425 = fmul fast float %3424, 0x3F70101020000000
  %3426 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  br i1 %2853, label %3427, label %3435

; <label>:3427                                    ; preds = %3412
  %3428 = fsub fast float 1.000000e+00, %3034
  %3429 = fmul fast float %3428, %2841
  %3430 = fmul fast float %3428, %2842
  %3431 = fmul fast float %3428, %2843
  %3432 = fmul fast float %3428, %2844
  %3433 = fmul fast float %3428, %2845
  %3434 = fmul fast float %3428, %2846
  br label %3435

; <label>:3435                                    ; preds = %3427, %3412
  %3436 = phi float [ %3429, %3427 ], [ %2841, %3412 ]
  %3437 = phi float [ %3430, %3427 ], [ %2842, %3412 ]
  %3438 = phi float [ %3431, %3427 ], [ %2843, %3412 ]
  %3439 = phi float [ %3432, %3427 ], [ %2844, %3412 ]
  %3440 = phi float [ %3433, %3427 ], [ %2845, %3412 ]
  %3441 = phi float [ %3434, %3427 ], [ %2846, %3412 ]
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 3
  %3445 = icmp eq i32 %3444, 3
  br i1 %3445, label %3524, label %3446

; <label>:3446                                    ; preds = %3435
  %3447 = and i32 %3443, 16
  %3448 = icmp ne i32 %3447, 0
  %3449 = select i1 %3448, float %3034, float 0.000000e+00
  %3450 = icmp eq i32 %3444, 0
  br i1 %3450, label %3451, label %3479

; <label>:3451                                    ; preds = %3446
  %3452 = and i32 %3443, 64
  %3453 = icmp ne i32 %3452, 0
  %3454 = select i1 %3453, float %3034, float 0.000000e+00
  %3455 = fsub fast float %3254, %3436
  %3456 = fsub fast float %3255, %3437
  %3457 = fsub fast float %3256, %3438
  %3458 = fmul fast float %3449, %3455
  %3459 = fmul fast float %3449, %3456
  %3460 = fmul fast float %3449, %3457
  %3461 = fadd fast float %3458, %3436
  %3462 = fadd fast float %3459, %3437
  %3463 = fadd fast float %3460, %3438
  %3464 = fsub fast float %3240, %2847
  %3465 = fmul fast float %3449, %3464
  %3466 = fadd fast float %3465, %2847
  %3467 = fsub fast float %3382, %3439
  %3468 = fsub fast float %3383, %3440
  %3469 = fsub fast float %3384, %3441
  %3470 = fmul fast float %3454, %3467
  %3471 = fmul fast float %3454, %3468
  %3472 = fmul fast float %3454, %3469
  %3473 = fadd fast float %3470, %3439
  %3474 = fadd fast float %3471, %3440
  %3475 = fadd fast float %3472, %3441
  %3476 = fsub fast float %3426, %2851
  %3477 = fmul fast float %3449, %3476
  %3478 = fadd fast float %3477, %2851
  br label %3524

; <label>:3479                                    ; preds = %3446
  %3480 = icmp eq i32 %3444, 1
  br i1 %3480, label %3481, label %3494

; <label>:3481                                    ; preds = %3479
  %3482 = fadd fast float %3254, -1.000000e+00
  %3483 = fadd fast float %3255, -1.000000e+00
  %3484 = fadd fast float %3256, -1.000000e+00
  %3485 = fmul fast float %3449, %3482
  %3486 = fmul fast float %3449, %3483
  %3487 = fmul fast float %3449, %3484
  %3488 = fadd fast float %3485, 1.000000e+00
  %3489 = fadd fast float %3486, 1.000000e+00
  %3490 = fadd fast float %3487, 1.000000e+00
  %3491 = fmul fast float %3488, %3436
  %3492 = fmul fast float %3489, %3437
  %3493 = fmul fast float %3490, %3438
  br label %3524

; <label>:3494                                    ; preds = %3479
  %3495 = icmp eq i32 %3444, 2
  br i1 %3495, label %3496, label %3524

; <label>:3496                                    ; preds = %3494
  %3497 = call float @dx.op.unary.f32(i32 24, float %3254)  ; Sqrt(value)
  %3498 = call float @dx.op.unary.f32(i32 24, float %3255)  ; Sqrt(value)
  %3499 = call float @dx.op.unary.f32(i32 24, float %3256)  ; Sqrt(value)
  %3500 = fadd fast float %3497, -5.000000e-01
  %3501 = fadd fast float %3498, -5.000000e-01
  %3502 = fadd fast float %3499, -5.000000e-01
  %3503 = fmul fast float %3500, %3449
  %3504 = fmul fast float %3501, %3449
  %3505 = fmul fast float %3502, %3449
  %3506 = fadd fast float %3503, 5.000000e-01
  %3507 = fadd fast float %3504, 5.000000e-01
  %3508 = fadd fast float %3505, 5.000000e-01
  %3509 = fmul fast float %3506, 2.000000e+00
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = fmul fast float %3510, %3436
  %3512 = fadd fast float %3511, %3509
  %3513 = fmul fast float %3512, %3436
  %3514 = fmul fast float %3507, 2.000000e+00
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = fmul fast float %3515, %3437
  %3517 = fadd fast float %3516, %3514
  %3518 = fmul fast float %3517, %3437
  %3519 = fmul fast float %3508, 2.000000e+00
  %3520 = fsub fast float 1.000000e+00, %3519
  %3521 = fmul fast float %3520, %3438
  %3522 = fadd fast float %3521, %3519
  %3523 = fmul fast float %3522, %3438
  br label %3524

; <label>:3524                                    ; preds = %3496, %3494, %3481, %3451, %3435
  %3525 = phi float [ %3436, %3435 ], [ %3513, %3496 ], [ %3436, %3494 ], [ %3491, %3481 ], [ %3461, %3451 ]
  %3526 = phi float [ %3437, %3435 ], [ %3518, %3496 ], [ %3437, %3494 ], [ %3492, %3481 ], [ %3462, %3451 ]
  %3527 = phi float [ %3438, %3435 ], [ %3523, %3496 ], [ %3438, %3494 ], [ %3493, %3481 ], [ %3463, %3451 ]
  %3528 = phi float [ %3439, %3435 ], [ %3439, %3496 ], [ %3439, %3494 ], [ %3439, %3481 ], [ %3473, %3451 ]
  %3529 = phi float [ %3440, %3435 ], [ %3440, %3496 ], [ %3440, %3494 ], [ %3440, %3481 ], [ %3474, %3451 ]
  %3530 = phi float [ %3441, %3435 ], [ %3441, %3496 ], [ %3441, %3494 ], [ %3441, %3481 ], [ %3475, %3451 ]
  %3531 = phi float [ %2847, %3435 ], [ %2847, %3496 ], [ %2847, %3494 ], [ %2847, %3481 ], [ %3466, %3451 ]
  %3532 = phi float [ %2851, %3435 ], [ %2851, %3496 ], [ %2851, %3494 ], [ %2851, %3481 ], [ %3478, %3451 ]
  %3533 = and i32 %3443, 12
  %3534 = icmp eq i32 %3533, 12
  br i1 %3534, label %3617, label %3535

; <label>:3535                                    ; preds = %3524
  %3536 = and i32 %3443, 2097184
  %3537 = icmp eq i32 %3536, 2097184
  %3538 = select i1 %3537, float %3034, float 0.000000e+00
  %3539 = and i32 %3443, 4194336
  %3540 = icmp eq i32 %3539, 4194336
  %3541 = select i1 %3540, float %3034, float 0.000000e+00
  %3542 = and i32 %3443, 8388640
  %3543 = icmp eq i32 %3542, 8388640
  %3544 = select i1 %3543, float %3034, float 0.000000e+00
  %3545 = and i32 %3443, 16384
  %3546 = icmp ne i32 %3545, 0
  %3547 = select i1 %3546, float %3034, float 0.000000e+00
  %3548 = icmp eq i32 %3533, 0
  br i1 %3548, label %3549, label %3565

; <label>:3549                                    ; preds = %3535
  %3550 = fsub fast float %3335, %2839
  %3551 = fsub fast float %3336, %2840
  %3552 = fmul fast float %3538, %3550
  %3553 = fmul fast float %3538, %3551
  %3554 = fadd fast float %3552, %2839
  %3555 = fadd fast float %3553, %2840
  %3556 = fsub fast float %3337, %2849
  %3557 = fmul fast float %3541, %3556
  %3558 = fadd fast float %3557, %2849
  %3559 = fsub fast float %3334, %2848
  %3560 = fmul fast float %3544, %3559
  %3561 = fadd fast float %3560, %2848
  %3562 = fsub fast float %3413, %2850
  %3563 = fmul fast float %3547, %3562
  %3564 = fadd fast float %3563, %2850
  br label %3617

; <label>:3565                                    ; preds = %3535
  %3566 = icmp eq i32 %3533, 4
  br i1 %3566, label %3567, label %3601

; <label>:3567                                    ; preds = %3565
  %3568 = fmul fast float %3538, %3335
  %3569 = fmul fast float %3538, %3336
  %3570 = fadd fast float %3568, %2839
  %3571 = fadd fast float %3569, %2840
  %3572 = call float @dx.op.binary.f32(i32 36, float %2849, float %3337)  ; FMin(a,b)
  %3573 = fsub fast float %3572, %2849
  %3574 = fmul fast float %3573, %3541
  %3575 = fadd fast float %3574, %2849
  %3576 = fadd fast float %3334, %2848
  %3577 = fmul fast float %3576, 0x3FF337FAE0000000
  %3578 = fmul fast float %2848, %2848
  %3579 = fmul fast float %3334, %3334
  %3580 = fadd fast float %3579, %3578
  %3581 = fmul fast float %3580, 0x3FE5152B00000000
  %3582 = fmul fast float %2848, 0xBFCC1F85E0000000
  %3583 = fmul fast float %3582, %3334
  %3584 = fadd fast float %3583, 0xBFE1363700000000
  %3585 = fadd fast float %3584, %3577
  %3586 = fsub fast float %3585, %3581
  %3587 = fmul fast float %3576, 0x3FBA6F0D00000000
  %3588 = fmul fast float %3580, 0x3FD0432880000000
  %3589 = fmul fast float %2848, 0xBFEF110800000000
  %3590 = fmul fast float %3589, %3334
  %3591 = fadd fast float %3590, 1.000000e+00
  %3592 = fsub fast float %3591, %3587
  %3593 = fadd fast float %3592, %3588
  %3594 = fdiv fast float %3586, %3593
  %3595 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3596 = fsub fast float %3595, %2848
  %3597 = fmul fast float %3596, %3544
  %3598 = fadd fast float %3597, %2848
  %3599 = fmul fast float %3547, %3413
  %3600 = fadd fast float %3599, %2850
  br label %3617

; <label>:3601                                    ; preds = %3565
  %3602 = icmp eq i32 %3533, 8
  br i1 %3602, label %3603, label %3617

; <label>:3603                                    ; preds = %3601
  %3604 = fmul fast float %3538, %3335
  %3605 = fmul fast float %3538, %3336
  %3606 = fadd fast float %3604, %2839
  %3607 = fadd fast float %3605, %2840
  %3608 = call float @dx.op.binary.f32(i32 36, float %2849, float %3337)  ; FMin(a,b)
  %3609 = fsub fast float %3608, %2849
  %3610 = fmul fast float %3609, %3541
  %3611 = fadd fast float %3610, %2849
  %3612 = fsub fast float %3334, %2848
  %3613 = fmul fast float %3544, %3612
  %3614 = fadd fast float %3613, %2848
  %3615 = fmul fast float %3547, %3413
  %3616 = fadd fast float %3615, %2850
  br label %3617

; <label>:3617                                    ; preds = %3603, %3601, %3567, %3549, %3524, %3033, %2852, %2838
  %3618 = phi float [ %2839, %3524 ], [ %2839, %3033 ], [ %2839, %2838 ], [ %2839, %2852 ], [ %3554, %3549 ], [ %3570, %3567 ], [ %2839, %3601 ], [ %3606, %3603 ]
  %3619 = phi float [ %2840, %3524 ], [ %2840, %3033 ], [ %2840, %2838 ], [ %2840, %2852 ], [ %3555, %3549 ], [ %3571, %3567 ], [ %2840, %3601 ], [ %3607, %3603 ]
  %3620 = phi float [ %3525, %3524 ], [ %2841, %3033 ], [ %2841, %2838 ], [ %2841, %2852 ], [ %3525, %3549 ], [ %3525, %3567 ], [ %3525, %3601 ], [ %3525, %3603 ]
  %3621 = phi float [ %3526, %3524 ], [ %2842, %3033 ], [ %2842, %2838 ], [ %2842, %2852 ], [ %3526, %3549 ], [ %3526, %3567 ], [ %3526, %3601 ], [ %3526, %3603 ]
  %3622 = phi float [ %3527, %3524 ], [ %2843, %3033 ], [ %2843, %2838 ], [ %2843, %2852 ], [ %3527, %3549 ], [ %3527, %3567 ], [ %3527, %3601 ], [ %3527, %3603 ]
  %3623 = phi float [ %3528, %3524 ], [ %2844, %3033 ], [ %2844, %2838 ], [ %2844, %2852 ], [ %3528, %3549 ], [ %3528, %3567 ], [ %3528, %3601 ], [ %3528, %3603 ]
  %3624 = phi float [ %3529, %3524 ], [ %2845, %3033 ], [ %2845, %2838 ], [ %2845, %2852 ], [ %3529, %3549 ], [ %3529, %3567 ], [ %3529, %3601 ], [ %3529, %3603 ]
  %3625 = phi float [ %3530, %3524 ], [ %2846, %3033 ], [ %2846, %2838 ], [ %2846, %2852 ], [ %3530, %3549 ], [ %3530, %3567 ], [ %3530, %3601 ], [ %3530, %3603 ]
  %3626 = phi float [ %3531, %3524 ], [ %2847, %3033 ], [ %2847, %2838 ], [ %2847, %2852 ], [ %3531, %3549 ], [ %3531, %3567 ], [ %3531, %3601 ], [ %3531, %3603 ]
  %3627 = phi float [ %2848, %3524 ], [ %2848, %3033 ], [ %2848, %2838 ], [ %2848, %2852 ], [ %3561, %3549 ], [ %3598, %3567 ], [ %2848, %3601 ], [ %3614, %3603 ]
  %3628 = phi float [ %2849, %3524 ], [ %2849, %3033 ], [ %2849, %2838 ], [ %2849, %2852 ], [ %3558, %3549 ], [ %3575, %3567 ], [ %2849, %3601 ], [ %3611, %3603 ]
  %3629 = phi float [ %2850, %3524 ], [ %2850, %3033 ], [ %2850, %2838 ], [ %2850, %2852 ], [ %3564, %3549 ], [ %3600, %3567 ], [ %2850, %3601 ], [ %3616, %3603 ]
  %3630 = phi float [ %3532, %3524 ], [ %2851, %3033 ], [ %2851, %2838 ], [ %2851, %2852 ], [ %3532, %3549 ], [ %3532, %3567 ], [ %3532, %3601 ], [ %3532, %3603 ]
  %3631 = add i32 %56, 440
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.i32 %3632, 1
  %3635 = bitcast i32 %3633 to float
  %3636 = bitcast i32 %3634 to float
  %3637 = fcmp fast oge float %3635, 0.000000e+00
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3640 = select i1 %3637, float %3635, float %3639
  %3641 = fadd fast float %3640, %211
  %3642 = fmul fast float %3636, %212
  %3643 = add i32 %56, 568
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = add i32 %3645, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3647, %dx.types.Handle %107, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = fmul fast float %3642, %3649
  %3651 = fadd fast float %3641, %3650
  %3652 = and i32 %203, 65535
  %3653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3652)  ; LegacyF16ToF32(value)
  %3654 = lshr i32 %203, 16
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = and i32 %204, 65535
  %3657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3656)  ; LegacyF16ToF32(value)
  %3658 = fmul fast float %3653, %3620
  %3659 = fmul fast float %3655, %3621
  %3660 = fmul fast float %3657, %3622
  %3661 = shl i32 %205, 4
  %3662 = and i32 %3661, 32752
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = lshr i32 %205, 7
  %3665 = and i32 %3664, 32752
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = lshr i32 %205, 22
  %3668 = shl nuw nsw i32 %3667, 5
  %3669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3668)  ; LegacyF16ToF32(value)
  %3670 = and i32 %206, 65535
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = fmul fast float %3663, %3623
  %3673 = fmul fast float %3672, %3671
  %3674 = fmul fast float %3666, %3624
  %3675 = fmul fast float %3674, %3671
  %3676 = fmul fast float %3669, %3625
  %3677 = fmul fast float %3676, %3671
  %3678 = call float @dx.op.dot2.f32(i32 54, float %3618, float %3619, float %3618, float %3619)  ; Dot2(ax,ay,bx,by)
  %3679 = fmul fast float %3678, 0x3FE3333340000000
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3618, float %3619, float %3680, float %3618, float %3619, float %3680)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 25, float %3681)  ; Rsqrt(value)
  %3683 = fmul fast float %3682, %3618
  %3684 = fmul fast float %3682, %3619
  %3685 = fmul fast float %3680, %3682
  %3686 = fmul fast float %3685, %117
  %3687 = fmul fast float %3685, %118
  %3688 = fmul fast float %3685, %119
  %3689 = fmul fast float %3683, %85
  %3690 = fmul fast float %3683, %86
  %3691 = fmul fast float %3683, %87
  %3692 = fadd fast float %3686, %3689
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = fmul fast float %129, %3684
  %3696 = fmul fast float %130, %3684
  %3697 = fmul fast float %131, %3684
  %3698 = fadd fast float %3692, %3695
  %3699 = fadd fast float %3693, %3696
  %3700 = fadd fast float %3694, %3697
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3698, float %3699, float %3700, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3698, %3702
  %3704 = fmul fast float %3699, %3702
  %3705 = fmul fast float %3700, %3702
  %3706 = icmp eq i32 %59, 65535
  br i1 %3706, label %4225, label %3707

; <label>:3707                                    ; preds = %3617
  %3708 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3709 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3710 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3711 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3712 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3713 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3714 = fadd fast float %3708, %60
  %3715 = fadd fast float %3709, %61
  %3716 = fadd fast float %3710, %62
  %3717 = fadd fast float %3711, %60
  %3718 = fadd fast float %3712, %61
  %3719 = fadd fast float %3713, %62
  %3720 = mul i32 %59, 48
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = add i32 %3720, 16
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3730 = add i32 %3720, 32
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = bitcast float %3735 to i32
  %3737 = fmul fast float %3722, %60
  %3738 = fmul fast float %3723, %61
  %3739 = fmul fast float %3724, %62
  %3740 = fsub fast float %3737, %3727
  %3741 = fsub fast float %3738, %3728
  %3742 = fsub fast float %3739, %3729
  %3743 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3744 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = fmul fast float %3743, %3732
  %3747 = fmul fast float %3744, %3733
  %3748 = fmul fast float %3745, %3734
  %3749 = fadd fast float %3732, -1.000000e+00
  %3750 = fadd fast float %3733, -1.000000e+00
  %3751 = fadd fast float %3734, -1.000000e+00
  %3752 = call float @dx.op.unary.f32(i32 27, float %3746)  ; Round_ni(value)
  %3753 = call float @dx.op.unary.f32(i32 27, float %3747)  ; Round_ni(value)
  %3754 = call float @dx.op.unary.f32(i32 27, float %3748)  ; Round_ni(value)
  %3755 = call float @dx.op.binary.f32(i32 36, float %3752, float %3749)  ; FMin(a,b)
  %3756 = call float @dx.op.binary.f32(i32 36, float %3753, float %3750)  ; FMin(a,b)
  %3757 = call float @dx.op.binary.f32(i32 36, float %3754, float %3751)  ; FMin(a,b)
  %3758 = fmul fast float %3757, %3733
  %3759 = fadd fast float %3758, %3756
  %3760 = fmul fast float %3759, %3732
  %3761 = fadd fast float %3760, %3755
  %3762 = fptosi float %3761 to i32
  %3763 = add nsw i32 %3762, %3736
  %3764 = shl nsw i32 %3763, 2
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = lshr i32 %3766, 16
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %4193, label %3769

; <label>:3769                                    ; preds = %3707
  br label %3770

; <label>:3770                                    ; preds = %3892, %3769
  %3771 = phi i32 [ %3794, %3892 ], [ %3767, %3769 ]
  %3772 = phi float [ %3893, %3892 ], [ 0.000000e+00, %3769 ]
  %3773 = phi float [ %3894, %3892 ], [ %1289, %3769 ]
  %3774 = phi float [ %3895, %3892 ], [ %3651, %3769 ]
  %3775 = phi float [ %3896, %3892 ], [ %3630, %3769 ]
  %3776 = phi float [ %3897, %3892 ], [ %3629, %3769 ]
  %3777 = phi float [ %3898, %3892 ], [ 0.000000e+00, %3769 ]
  %3778 = phi float [ %3899, %3892 ], [ %3673, %3769 ]
  %3779 = phi float [ %3900, %3892 ], [ %3675, %3769 ]
  %3780 = phi float [ %3901, %3892 ], [ %3677, %3769 ]
  %3781 = phi float [ %3902, %3892 ], [ %3703, %3769 ]
  %3782 = phi float [ %3903, %3892 ], [ %3704, %3769 ]
  %3783 = phi float [ %3904, %3892 ], [ %3705, %3769 ]
  %3784 = phi float [ %3905, %3892 ], [ %3628, %3769 ]
  %3785 = phi float [ %3906, %3892 ], [ %3627, %3769 ]
  %3786 = phi float [ %3907, %3892 ], [ 0.000000e+00, %3769 ]
  %3787 = phi float [ %3908, %3892 ], [ %3626, %3769 ]
  %3788 = phi float [ %3909, %3892 ], [ %3658, %3769 ]
  %3789 = phi float [ %3910, %3892 ], [ %3659, %3769 ]
  %3790 = phi float [ %3911, %3892 ], [ %3660, %3769 ]
  %3791 = shl nuw nsw i32 %3771, 2
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = lshr i32 %3793, 16
  %3795 = shl i32 %3793, 8
  %3796 = and i32 %3795, 16776960
  %3797 = or i32 %3796, 48
  %3798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = or i32 %3796, 64
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.i32 %3803, 1
  %3806 = or i32 %3796, 80
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3810 = or i32 %3796, 96
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = or i32 %3796, 112
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3819 = or i32 %3796, 128
  %3820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.ResRet.f32 %3820, 2
  %3824 = extractvalue %dx.types.ResRet.f32 %3820, 3
  %3825 = or i32 %3796, 144
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = or i32 %3796, 160
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = or i32 %3796, 192
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = or i32 %3796, 208
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = or i32 %3796, 248
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3853 = or i32 %3796, 16
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = call float @dx.op.dot4.f32(i32 56, float %3855, float %3856, float %3857, float %3858, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3860 = or i32 %3796, 32
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = extractvalue %dx.types.ResRet.f32 %3861, 3
  %3866 = call float @dx.op.dot4.f32(i32 56, float %3862, float %3863, float %3864, float %3865, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3867 = call float @dx.op.unary.f32(i32 27, float %3852)  ; Round_ni(value)
  %3868 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3869 = call float @dx.op.unary.f32(i32 27, float %3859)  ; Round_ni(value)
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3872 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3873 = fadd fast float %3870, %3868
  %3874 = fadd fast float %3873, %3872
  %3875 = fcmp fast oeq float %3874, 0.000000e+00
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %3714, float %3715, float %3716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3855, float %3856, float %3857, float %3858, float %3714, float %3715, float %3716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3848, float %3849, float %3850, float %3851, float %3717, float %3718, float %3719, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.dot4.f32(i32 56, float %3855, float %3856, float %3857, float %3858, float %3717, float %3718, float %3719, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3880 = fsub fast float %3876, %3852
  %3881 = fsub fast float %3878, %3852
  %3882 = fsub fast float %3877, %3859
  %3883 = fsub fast float %3879, %3859
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3887 = fadd fast float %3886, %3884
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3890 = fcmp fast ogt float %3888, %3889
  %3891 = and i1 %3875, %3890
  br i1 %3891, label %3913, label %3892

; <label>:3892                                    ; preds = %4179, %3996, %3913, %3770
  %3893 = phi float [ %3772, %3913 ], [ %3999, %3996 ], [ %3999, %4179 ], [ %3772, %3770 ]
  %3894 = phi float [ %3773, %3913 ], [ %3773, %3996 ], [ %4154, %4179 ], [ %3773, %3770 ]
  %3895 = phi float [ %3774, %3913 ], [ %3774, %3996 ], [ %4153, %4179 ], [ %3774, %3770 ]
  %3896 = phi float [ %3775, %3913 ], [ %3775, %3996 ], [ %4151, %4179 ], [ %3775, %3770 ]
  %3897 = phi float [ %3776, %3913 ], [ %3776, %3996 ], [ %4123, %4179 ], [ %3776, %3770 ]
  %3898 = phi float [ %3777, %3913 ], [ %3777, %3996 ], [ %4121, %4179 ], [ %3777, %3770 ]
  %3899 = phi float [ %3778, %3913 ], [ %3778, %3996 ], [ %4189, %4179 ], [ %3778, %3770 ]
  %3900 = phi float [ %3779, %3913 ], [ %3779, %3996 ], [ %4190, %4179 ], [ %3779, %3770 ]
  %3901 = phi float [ %3780, %3913 ], [ %3780, %3996 ], [ %4191, %4179 ], [ %3780, %3770 ]
  %3902 = phi float [ %3781, %3913 ], [ %3781, %3996 ], [ %4102, %4179 ], [ %3781, %3770 ]
  %3903 = phi float [ %3782, %3913 ], [ %3782, %3996 ], [ %4103, %4179 ], [ %3782, %3770 ]
  %3904 = phi float [ %3783, %3913 ], [ %3783, %3996 ], [ %4104, %4179 ], [ %3783, %3770 ]
  %3905 = phi float [ %3784, %3913 ], [ %3784, %3996 ], [ %4131, %4179 ], [ %3784, %3770 ]
  %3906 = phi float [ %3785, %3913 ], [ %3785, %3996 ], [ %4128, %4179 ], [ %3785, %3770 ]
  %3907 = phi float [ %3786, %3913 ], [ %3786, %3996 ], [ %4125, %4179 ], [ %3786, %3770 ]
  %3908 = phi float [ %3787, %3913 ], [ %3787, %3996 ], [ %4119, %4179 ], [ %3787, %3770 ]
  %3909 = phi float [ %3788, %3913 ], [ %3788, %3996 ], [ %4114, %4179 ], [ %3788, %3770 ]
  %3910 = phi float [ %3789, %3913 ], [ %3789, %3996 ], [ %4115, %4179 ], [ %3789, %3770 ]
  %3911 = phi float [ %3790, %3913 ], [ %3790, %3996 ], [ %4116, %4179 ], [ %3790, %3770 ]
  %3912 = icmp eq i32 %3794, 0
  br i1 %3912, label %4192, label %3770

; <label>:3913                                    ; preds = %3770
  %3914 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3915 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3916 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3920 = extractvalue %dx.types.ResRet.i32 %3803, 3
  %3921 = extractvalue %dx.types.ResRet.i32 %3803, 2
  %3922 = bitcast float %3914 to i32
  %3923 = add i32 %3920, 0
  %3924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3923, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3926 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3924, %dx.types.Handle %3925, float %3852, float %3859, float undef, float undef, i32 0, i32 0, i32 undef, float %3880, float %3882, float undef, float %3881, float %3883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = fmul fast float %3927, %3919
  %3929 = fadd fast float %3928, %3918
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fmul fast float %3852, %3812
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3859, float %3931)  ; FMad(a,b,c)
  %3933 = fadd fast float %3932, %3917
  %3934 = fmul fast float %3852, %3814
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3859, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3916
  %3937 = fmul fast float %3880, %3812
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3882, float %3937)  ; FMad(a,b,c)
  %3939 = fmul fast float %3880, %3814
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3882, float %3939)  ; FMad(a,b,c)
  %3941 = fmul fast float %3881, %3812
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3883, float %3941)  ; FMad(a,b,c)
  %3943 = fmul fast float %3881, %3814
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3883, float %3943)  ; FMad(a,b,c)
  %3945 = add i32 %3921, 0
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3946, %dx.types.Handle %3925, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = and i32 %3922, 1024
  %3950 = icmp ne i32 %3949, 0
  %3951 = fcmp fast ogt float %3948, 0x3FE0101020000000
  %3952 = uitofp i1 %3951 to float
  %3953 = select i1 %3950, float %3952, float %3948
  %3954 = and i32 %3922, 8192
  %3955 = icmp ne i32 %3954, 0
  %3956 = select i1 %3955, float %3915, float 1.000000e+00
  %3957 = fmul fast float %3852, 2.000000e+00
  %3958 = fadd fast float %3957, -1.000000e+00
  %3959 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3960 = fmul fast float %3959, %3845
  %3961 = fsub fast float %3960, %3845
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3859, 2.000000e+00
  %3964 = fadd fast float %3963, -1.000000e+00
  %3965 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3966 = fmul fast float %3965, %3846
  %3967 = fsub fast float %3966, %3846
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = fmul fast float %3871, %3808
  %3970 = fsub fast float %3969, %3808
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fmul fast float %3930, %3956
  %3973 = fmul fast float %3972, %3927
  %3974 = fmul fast float %3973, %3962
  %3975 = fmul fast float %3974, %3953
  %3976 = fmul fast float %3975, %3968
  %3977 = fmul fast float %3976, %3971
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3981 = fsub fast float %3888, %3980
  %3982 = fmul fast float %3981, %3979
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3977, %3809
  %3985 = fadd fast float %3977, %3809
  %3986 = fmul fast float %3985, %3818
  %3987 = fsub fast float %3986, %3818
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = and i32 %3922, 128
  %3990 = icmp ne i32 %3989, 0
  %3991 = select i1 %3990, float %3988, float %3984
  %3992 = fmul fast float %3991, %3983
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = fcmp fast ugt float %3992, %3994
  br i1 %3995, label %3996, label %3892

; <label>:3996                                    ; preds = %3913
  %3997 = select i1 %3955, float %3992, float 0.000000e+00
  %3998 = fadd fast float %3997, %3772
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  br i1 %3955, label %3892, label %4000

; <label>:4000                                    ; preds = %3996
  %4001 = and i32 %3922, 4
  %4002 = and i32 %3922, 8
  %4003 = add i32 %3804, 0
  %4004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4003, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4004, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4011 = bitcast float %3830 to i32
  %4012 = and i32 %4011, 255
  %4013 = uitofp i32 %4012 to float
  %4014 = lshr i32 %4011, 8
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = fmul fast float %4010, %4013
  %4018 = fadd fast float %4017, %4016
  %4019 = fmul fast float %4018, 0x3F70101000000000
  %4020 = add i32 %3805, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4021, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.ResRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.ResRet.f32 %4022, 2
  %4026 = extractvalue %dx.types.ResRet.f32 %4022, 3
  %4027 = bitcast float %3824 to i32
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = lshr i32 %4027, 8
  %4031 = and i32 %4030, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = lshr i32 %4027, 16
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = fmul fast float %4035, 0x3F70101000000000
  %4037 = fmul fast float %4023, %4029
  %4038 = fadd fast float %4037, %4032
  %4039 = fmul fast float %4038, 0x3F70101000000000
  %4040 = fadd fast float %4024, -5.000000e-01
  %4041 = fadd fast float %4026, -5.000000e-01
  %4042 = fmul fast float %4040, %4036
  %4043 = fmul fast float %4041, %4036
  %4044 = fadd fast float %4042, 5.000000e-01
  %4045 = fadd fast float %4043, 5.000000e-01
  %4046 = fmul fast float %4007, %3833
  %4047 = fmul fast float %4008, %3834
  %4048 = fmul fast float %4009, %3835
  %4049 = fmul fast float %4044, 2.000000e+00
  %4050 = fadd fast float %4049, -1.000000e+00
  %4051 = fmul fast float %4045, 2.000000e+00
  %4052 = fadd fast float %4051, -1.000000e+00
  %4053 = fadd fast float %4050, %4052
  %4054 = fmul fast float %4053, 5.000000e-01
  %4055 = fsub fast float %4050, %4052
  %4056 = fmul fast float %4055, 5.000000e-01
  %4057 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4058 = fsub fast float 1.000000e+00, %4057
  %4059 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4060 = fsub fast float %4058, %4059
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4056, float %4060, float %4054, float %4056, float %4060)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = call float @dx.op.unary.f32(i32 25, float %4061)  ; Rsqrt(value)
  %4063 = fmul fast float %4054, %4062
  %4064 = fmul fast float %4056, %4062
  %4065 = fmul fast float %4062, %4060
  %4066 = fmul fast float %4065, %3799
  %4067 = fmul fast float %4065, %3800
  %4068 = fmul fast float %4065, %3801
  %4069 = fmul fast float %4063, %3821
  %4070 = fmul fast float %4063, %3822
  %4071 = fmul fast float %4063, %3823
  %4072 = fadd fast float %4069, %4066
  %4073 = fadd fast float %4070, %4067
  %4074 = fadd fast float %4071, %4068
  %4075 = fmul fast float %4064, %3827
  %4076 = fmul fast float %4064, %3828
  %4077 = fmul fast float %4064, %3829
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = fadd fast float %4074, %4077
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4079, float %4080, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 25, float %4081)  ; Rsqrt(value)
  %4083 = fmul fast float %4078, %4082
  %4084 = fmul fast float %4079, %4082
  %4085 = fmul fast float %4080, %4082
  %4086 = icmp ne i32 %4002, 0
  %4087 = select i1 %4086, float 1.000000e+00, float 0.000000e+00
  %4088 = fmul fast float %3992, %4087
  %4089 = and i32 %3922, 1
  %4090 = icmp eq i32 %4089, 0
  br i1 %4090, label %4091, label %4095

; <label>:4091                                    ; preds = %4000
  %4092 = fsub fast float %4083, %3781
  %4093 = fsub fast float %4084, %3782
  %4094 = fsub fast float %4085, %3783
  br label %4095

; <label>:4095                                    ; preds = %4091, %4000
  %4096 = phi float [ %4092, %4091 ], [ %4083, %4000 ]
  %4097 = phi float [ %4093, %4091 ], [ %4084, %4000 ]
  %4098 = phi float [ %4094, %4091 ], [ %4085, %4000 ]
  %4099 = fmul float %4098, %4088
  %4100 = fmul float %4097, %4088
  %4101 = fmul float %4096, %4088
  %4102 = fadd fast float %4101, %3781
  %4103 = fadd fast float %4100, %3782
  %4104 = fadd fast float %4099, %3783
  %4105 = icmp ne i32 %4001, 0
  %4106 = select i1 %4105, float 1.000000e+00, float 0.000000e+00
  %4107 = fmul fast float %3992, %4106
  %4108 = fsub fast float %4046, %3788
  %4109 = fsub fast float %4047, %3789
  %4110 = fsub fast float %4048, %3790
  %4111 = fmul fast float %4108, %4107
  %4112 = fmul fast float %4109, %4107
  %4113 = fmul fast float %4110, %4107
  %4114 = fadd fast float %4111, %3788
  %4115 = fadd fast float %4112, %3789
  %4116 = fadd fast float %4113, %3790
  %4117 = fsub fast float %4019, %3787
  %4118 = fmul fast float %4117, %4107
  %4119 = fadd fast float %4118, %3787
  %4120 = fmul fast float %4107, %3777
  %4121 = fsub fast float %3777, %4120
  %4122 = fmul fast float %4107, %3776
  %4123 = fsub fast float %3776, %4122
  %4124 = fadd fast float %3992, %3786
  %4125 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4126 = fsub fast float %4039, %3785
  %4127 = fmul fast float %4126, %4088
  %4128 = fadd fast float %4127, %3785
  %4129 = fsub fast float %4025, %3784
  %4130 = fmul fast float %4129, %4088
  %4131 = fadd fast float %4130, %3784
  %4132 = call float @dx.op.dot3.f32(i32 55, float %4046, float %4047, float %4048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = fmul fast float %4135, %4132
  %4137 = fadd fast float %4136, %4134
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = bitcast float %3836 to i32
  %4140 = and i32 %4139, 65535
  %4141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4140)  ; LegacyF16ToF32(value)
  %4142 = lshr i32 %4139, 16
  %4143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4142)  ; LegacyF16ToF32(value)
  %4144 = fcmp fast oge float %4141, 0.000000e+00
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = select i1 %4144, float %4141, float %4146
  %4148 = fadd fast float %4147, %4143
  %4149 = fsub fast float %4138, %3775
  %4150 = fmul fast float %4149, %3992
  %4151 = fadd fast float %4150, %3775
  %4152 = fmul fast float %4148, %3992
  %4153 = call float @dx.op.binary.f32(i32 35, float %3774, float %4152)  ; FMax(a,b)
  %4154 = call float @dx.op.binary.f32(i32 35, float %3773, float %3992)  ; FMax(a,b)
  %4155 = and i32 %3922, 16
  %4156 = icmp eq i32 %4155, 0
  br i1 %4156, label %4179, label %4157

; <label>:4157                                    ; preds = %4095
  %4158 = bitcast float %3842 to i32
  %4159 = add i32 %3839, 0
  %4160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4159, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4160, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = and i32 %4158, 65535
  %4166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4165)  ; LegacyF16ToF32(value)
  %4167 = fmul fast float %4162, %3833
  %4168 = fmul fast float %4163, %3834
  %4169 = fmul fast float %4164, %3835
  %4170 = and i32 %3922, 16384
  %4171 = icmp ne i32 %4170, 0
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = select i1 %4171, float %4173, float 1.000000e+00
  %4175 = fmul fast float %4174, %4166
  %4176 = fmul fast float %4167, %4175
  %4177 = fmul fast float %4168, %4175
  %4178 = fmul fast float %4169, %4175
  br label %4179

; <label>:4179                                    ; preds = %4157, %4095
  %4180 = phi float [ %4176, %4157 ], [ 0.000000e+00, %4095 ]
  %4181 = phi float [ %4177, %4157 ], [ 0.000000e+00, %4095 ]
  %4182 = phi float [ %4178, %4157 ], [ 0.000000e+00, %4095 ]
  %4183 = fsub fast float %4180, %3778
  %4184 = fsub fast float %4181, %3779
  %4185 = fsub fast float %4182, %3780
  %4186 = fmul fast float %4183, %3992
  %4187 = fmul fast float %4184, %3992
  %4188 = fmul fast float %4185, %3992
  %4189 = fadd fast float %4186, %3778
  %4190 = fadd fast float %4187, %3779
  %4191 = fadd fast float %4188, %3780
  br label %3892

; <label>:4192                                    ; preds = %3892
  br label %4193

; <label>:4193                                    ; preds = %4192, %3707
  %4194 = phi float [ 0.000000e+00, %3707 ], [ %3893, %4192 ]
  %4195 = phi float [ %1289, %3707 ], [ %3894, %4192 ]
  %4196 = phi float [ %3651, %3707 ], [ %3895, %4192 ]
  %4197 = phi float [ %3630, %3707 ], [ %3896, %4192 ]
  %4198 = phi float [ %3629, %3707 ], [ %3897, %4192 ]
  %4199 = phi float [ 0.000000e+00, %3707 ], [ %3898, %4192 ]
  %4200 = phi float [ %3673, %3707 ], [ %3899, %4192 ]
  %4201 = phi float [ %3675, %3707 ], [ %3900, %4192 ]
  %4202 = phi float [ %3677, %3707 ], [ %3901, %4192 ]
  %4203 = phi float [ %3703, %3707 ], [ %3902, %4192 ]
  %4204 = phi float [ %3704, %3707 ], [ %3903, %4192 ]
  %4205 = phi float [ %3705, %3707 ], [ %3904, %4192 ]
  %4206 = phi float [ %3628, %3707 ], [ %3905, %4192 ]
  %4207 = phi float [ %3627, %3707 ], [ %3906, %4192 ]
  %4208 = phi float [ 0.000000e+00, %3707 ], [ %3907, %4192 ]
  %4209 = phi float [ %3626, %3707 ], [ %3908, %4192 ]
  %4210 = phi float [ %3658, %3707 ], [ %3909, %4192 ]
  %4211 = phi float [ %3659, %3707 ], [ %3910, %4192 ]
  %4212 = phi float [ %3660, %3707 ], [ %3911, %4192 ]
  %4213 = call float @dx.op.dot3.f32(i32 55, float %4203, float %4204, float %4205, float %4203, float %4204, float %4205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4214 = call float @dx.op.unary.f32(i32 25, float %4213)  ; Rsqrt(value)
  %4215 = fmul fast float %4214, %4203
  %4216 = fmul fast float %4214, %4204
  %4217 = fmul fast float %4214, %4205
  %4218 = fadd fast float %4208, %1289
  %4219 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4220 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %4215, float %4216, float %4217)  ; Dot3(ax,ay,az,bx,by,bz)
  %4221 = call float @dx.op.unary.f32(i32 25, float %4220)  ; Rsqrt(value)
  %4222 = fmul fast float %4221, %4215
  %4223 = fmul fast float %4221, %4216
  %4224 = fmul fast float %4221, %4217
  br label %4225

; <label>:4225                                    ; preds = %4193, %3617
  %4226 = phi float [ %4222, %4193 ], [ %3703, %3617 ]
  %4227 = phi float [ %4223, %4193 ], [ %3704, %3617 ]
  %4228 = phi float [ %4224, %4193 ], [ %3705, %3617 ]
  %4229 = phi float [ %4210, %4193 ], [ %3658, %3617 ]
  %4230 = phi float [ %4211, %4193 ], [ %3659, %3617 ]
  %4231 = phi float [ %4212, %4193 ], [ %3660, %3617 ]
  %4232 = phi float [ %4200, %4193 ], [ %3673, %3617 ]
  %4233 = phi float [ %4201, %4193 ], [ %3675, %3617 ]
  %4234 = phi float [ %4202, %4193 ], [ %3677, %3617 ]
  %4235 = phi float [ %4209, %4193 ], [ %3626, %3617 ]
  %4236 = phi float [ %4219, %4193 ], [ %1289, %3617 ]
  %4237 = phi float [ %4207, %4193 ], [ %3627, %3617 ]
  %4238 = phi float [ %4206, %4193 ], [ %3628, %3617 ]
  %4239 = phi float [ %4199, %4193 ], [ 0.000000e+00, %3617 ]
  %4240 = phi float [ %4198, %4193 ], [ %3629, %3617 ]
  %4241 = phi float [ %4194, %4193 ], [ 0.000000e+00, %3617 ]
  %4242 = phi float [ %4196, %4193 ], [ %3651, %3617 ]
  %4243 = phi float [ %4195, %4193 ], [ %1289, %3617 ]
  %4244 = phi float [ %4197, %4193 ], [ %3630, %3617 ]
  %4245 = fadd fast float %4235, 0xBFB99999A0000000
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fmul fast float %4246, 0x3FF1C71C80000000
  %4248 = call float @dx.op.binary.f32(i32 36, float %4235, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4249 = fsub fast float 1.000000e+00, %4247
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = fmul fast float %4250, %4229
  %4252 = fmul fast float %4250, %4230
  %4253 = fmul fast float %4250, %4231
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4257 = fmul fast float %4247, %4229
  %4258 = fmul fast float %4247, %4230
  %4259 = fmul fast float %4247, %4231
  %4260 = fadd fast float %4257, %4248
  %4261 = fadd fast float %4258, %4248
  %4262 = fadd fast float %4259, %4248
  %4263 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 3
  %4269 = and i32 %4268, 8
  %4270 = icmp ne i32 %4269, 0
  %4271 = call float @dx.op.binary.f32(i32 35, float %4254, float %4229)  ; FMax(a,b)
  %4272 = call float @dx.op.binary.f32(i32 35, float %4255, float %4229)  ; FMax(a,b)
  %4273 = call float @dx.op.binary.f32(i32 35, float %4256, float %4229)  ; FMax(a,b)
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4254, float %4255, float %4256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = select i1 %269, float %4229, float %4254
  %4276 = select i1 %269, float %4274, float %4255
  %4277 = select i1 %269, float 1.000000e+00, float %4256
  %4278 = select i1 %4270, float %4271, float %4275
  %4279 = select i1 %4270, float %4272, float %4276
  %4280 = select i1 %4270, float %4273, float %4277
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4285 = fadd fast float %4282, %197
  %4286 = fadd fast float %4283, %198
  %4287 = fadd fast float %4284, %199
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4291 = fsub fast float %4285, %4289
  %4292 = fsub fast float %4286, %4290
  %4293 = fmul fast float %4291, %4291
  %4294 = fmul fast float %4292, %4292
  %4295 = fadd fast float %4293, %4294
  %4296 = call float @dx.op.unary.f32(i32 24, float %4295)  ; Sqrt(value)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4298 = fcmp fast olt float %4296, %4297
  br i1 %4298, label %4299, label %4366

; <label>:4299                                    ; preds = %4225
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4310 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4311 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4312 = fadd fast float %4309, %4285
  %4313 = fadd fast float %4310, %4286
  %4314 = fadd fast float %4311, %4287
  %4315 = fmul fast float %4312, %4301
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4303, float %4315)  ; FMad(a,b,c)
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4305, float %4316)  ; FMad(a,b,c)
  %4318 = fmul fast float %4312, %4306
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4307, float %4318)  ; FMad(a,b,c)
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4308, float %4319)  ; FMad(a,b,c)
  %4321 = fsub fast float %4317, %4309
  %4322 = fsub fast float %4320, %4310
  %4323 = fsub fast float %4321, %4289
  %4324 = fadd fast float %4323, %4297
  %4325 = fsub fast float %4322, %4290
  %4326 = fadd fast float %4325, %4297
  %4327 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4328 = fmul fast float %4324, %4327
  %4329 = fmul fast float %4326, %4327
  %4330 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4332 = fsub fast float 1.000000e+00, %4330
  %4333 = fsub fast float 1.000000e+00, %4331
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fcmp fast ugt float %4335, 0.000000e+00
  br i1 %4336, label %4337, label %4640

; <label>:4337                                    ; preds = %4299
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4340 = fmul fast float %4339, %4335
  %4341 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4342 = fadd fast float %4341, %4340
  %4343 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4344 = fadd fast float %4342, %4311
  %4345 = fmul fast float %4317, %4305
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4308, float %4345)  ; FMad(a,b,c)
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4344, float %4343, float %4346)  ; FMad(a,b,c)
  %4348 = fsub fast float %4347, %4311
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4351 = fsub fast float %4348, %4350
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4332, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4353
  %4361 = fmul fast float %4360, 0x3F847AE140000000
  %4362 = fadd fast float %4358, %4354
  %4363 = fmul fast float %4362, 0x3F847AE140000000
  %4364 = fadd fast float %4359, %4355
  %4365 = fmul fast float %4364, 0x3F847AE140000000
  br label %4640

; <label>:4366                                    ; preds = %4225
  %4367 = and i32 %248, 1
  %4368 = icmp eq i32 %4367, 0
  br i1 %4368, label %4640, label %4369

; <label>:4369                                    ; preds = %4366
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4380 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4381 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4382 = fadd fast float %4379, %4285
  %4383 = fadd fast float %4380, %4286
  %4384 = fadd fast float %4381, %4287
  %4385 = fmul fast float %4382, %4371
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4373, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4375, float %4386)  ; FMad(a,b,c)
  %4388 = fmul fast float %4382, %4376
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4377, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = fsub fast float %4387, %4379
  %4392 = fsub fast float %4390, %4380
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.i32 %4400, 0
  %4402 = extractvalue %dx.types.CBufRet.i32 %4400, 1
  %4403 = udiv i32 %4402, %4401
  %4404 = fsub fast float %4391, %4394
  %4405 = fsub fast float %4392, %4395
  %4406 = call float @dx.op.binary.f32(i32 35, float %4404, float 0.000000e+00)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float %4405, float 0.000000e+00)  ; FMax(a,b)
  %4408 = call float @dx.op.binary.f32(i32 36, float %4406, float %4396)  ; FMin(a,b)
  %4409 = call float @dx.op.binary.f32(i32 36, float %4407, float %4397)  ; FMin(a,b)
  %4410 = add i32 %4401, -1
  %4411 = add i32 %4403, -1
  %4412 = fmul fast float %4408, %4399
  %4413 = fmul fast float %4409, %4399
  %4414 = fptoui float %4412 to i32
  %4415 = fptoui float %4413 to i32
  %4416 = call i32 @dx.op.binary.i32(i32 40, i32 %4414, i32 %4410)  ; UMin(a,b)
  %4417 = call i32 @dx.op.binary.i32(i32 40, i32 %4415, i32 %4411)  ; UMin(a,b)
  %4418 = mul i32 %4417, %4401
  %4419 = add i32 %4418, %4416
  %4420 = shl i32 %4419, 2
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = icmp eq i32 %4422, -1
  br i1 %4423, label %4640, label %4424

; <label>:4424                                    ; preds = %4369
  %4425 = mul i32 %4422, 148
  %4426 = add i32 %4425, 4
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4425, 8
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4425, 36
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4425, 60
  %4436 = add i32 %4425, 92
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = add i32 %4425, 116
  %4440 = fsub fast float %4391, %4428
  %4441 = fsub fast float %4392, %4431
  %4442 = fmul fast float %4399, %4440
  %4443 = fmul fast float %4399, %4441
  %4444 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4449 = call float @dx.op.unary.f32(i32 83, float %4444)  ; DerivCoarseX(value)
  %4450 = call float @dx.op.unary.f32(i32 83, float %4446)  ; DerivCoarseX(value)
  %4451 = call float @dx.op.unary.f32(i32 84, float %4444)  ; DerivCoarseY(value)
  %4452 = call float @dx.op.unary.f32(i32 84, float %4446)  ; DerivCoarseY(value)
  %4453 = fmul fast float %4449, %4448
  %4454 = fmul fast float %4450, %4448
  %4455 = fmul fast float %4451, %4448
  %4456 = fmul fast float %4452, %4448
  %4457 = call float @dx.op.dot2.f32(i32 54, float %4455, float %4456, float %4455, float %4456)  ; Dot2(ax,ay,bx,by)
  %4458 = call float @dx.op.dot2.f32(i32 54, float %4453, float %4454, float %4453, float %4454)  ; Dot2(ax,ay,bx,by)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float %4457)  ; FMax(a,b)
  %4460 = call float @dx.op.unary.f32(i32 23, float %4459)  ; Log(value)
  %4461 = fmul fast float %4460, 5.000000e-01
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4464 = fadd fast float %4463, %4461
  %4465 = call float @dx.op.binary.f32(i32 35, float %4464, float 0.000000e+00)  ; FMax(a,b)
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = fadd fast float %4467, %4465
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = fadd fast float %4468, %4470
  %4472 = add i32 %4438, 0
  %4473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4474 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4473, i32 0)  ; GetDimensions(handle,mipLevel)
  %4475 = extractvalue %dx.types.Dimensions %4474, 0
  %4476 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4475)  ; FirstbitLo(value)
  %4477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.i32 %4477, 1
  %4479 = sub nsw i32 %4478, %4476
  %4480 = sitofp i32 %4479 to float
  %4481 = fsub fast float %4471, %4480
  %4482 = call float @dx.op.binary.f32(i32 35, float %4481, float 0.000000e+00)  ; FMax(a,b)
  %4483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4473, %dx.types.Handle %48, float %4444, float %4446, float %4434, float undef, i32 0, i32 0, i32 undef, float %4482)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = fcmp ule float %4484, 0x3FE0101020000000
  %4486 = extractvalue %dx.types.CBufRet.i32 %4477, 0
  %4487 = and i32 %4486, 128
  %4488 = icmp ne i32 %4487, 0
  %4489 = and i1 %4485, %4488
  br i1 %4489, label %4640, label %4490

; <label>:4490                                    ; preds = %4424
  %4491 = add i32 %4425, 20
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4425, 24
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4425, 40
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4425, 96
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 2
  %4505 = fmul fast float %4504, %4444
  %4506 = fmul fast float %4504, %4446
  %4507 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4508 = fadd fast float %4505, %4507
  %4509 = fadd fast float %4506, %4507
  %4510 = add i32 %4502, 0
  %4511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4510, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4512 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4511, i32 0)  ; GetDimensions(handle,mipLevel)
  %4513 = extractvalue %dx.types.Dimensions %4512, 0
  %4514 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4513)  ; FirstbitLo(value)
  %4515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.i32 %4515, 1
  %4517 = sub nsw i32 %4516, %4514
  %4518 = sitofp i32 %4517 to float
  %4519 = fsub fast float %4468, %4518
  %4520 = call float @dx.op.binary.f32(i32 35, float %4519, float 0.000000e+00)  ; FMax(a,b)
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4511, %dx.types.Handle %48, float %4508, float %4509, float %4499, float undef, i32 0, i32 0, i32 undef, float %4520)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = fmul fast float %4522, %4493
  %4524 = fadd fast float %4523, %4496
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4533 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4534 = fadd fast float %4530, %4391
  %4535 = fadd fast float %4532, %4392
  %4536 = fadd fast float %4524, %4533
  %4537 = fmul fast float %4534, %4526
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4527, float %4537)  ; FMad(a,b,c)
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4528, float %4538)  ; FMad(a,b,c)
  %4540 = fsub fast float %4539, %4533
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 2
  %4543 = fsub fast float %4540, %4542
  %4544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.i32 %4544, 0
  %4546 = call i32 @dx.op.binary.i32(i32 40, i32 %4422, i32 %4545)  ; UMin(a,b)
  %4547 = mul i32 %4546, 36
  %4548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.i32 %4548, 0
  %4550 = add i32 %4547, 4
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = fmul fast float %4552, %4444
  %4554 = fmul fast float %4552, %4446
  %4555 = extractvalue %dx.types.CBufRet.f32 %4551, 1
  %4556 = fadd fast float %4553, %4555
  %4557 = fadd fast float %4554, %4555
  %4558 = icmp eq i32 %4549, 0
  br i1 %4558, label %4627, label %4559

; <label>:4559                                    ; preds = %4490
  br label %4560

; <label>:4560                                    ; preds = %4617, %4559
  %4561 = phi float [ %4618, %4617 ], [ 0.000000e+00, %4559 ]
  %4562 = phi float [ %4619, %4617 ], [ 0.000000e+00, %4559 ]
  %4563 = phi float [ %4620, %4617 ], [ 0.000000e+00, %4559 ]
  %4564 = phi float [ %4621, %4617 ], [ 0.000000e+00, %4559 ]
  %4565 = phi float [ %4622, %4617 ], [ 0.000000e+00, %4559 ]
  %4566 = phi float [ %4623, %4617 ], [ 0.000000e+00, %4559 ]
  %4567 = phi i32 [ %4624, %4617 ], [ 0, %4559 ]
  %4568 = shl i32 %4567, 2
  %4569 = add i32 %4435, %4568
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = add i32 %4439, %4568
  %4573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.i32 %4573, 0
  %4575 = add i32 %4574, 0
  %4576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4575, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4577 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4576, i32 0)  ; GetDimensions(handle,mipLevel)
  %4578 = extractvalue %dx.types.Dimensions %4577, 0
  %4579 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4578)  ; FirstbitLo(value)
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 1
  %4582 = sub nsw i32 %4581, %4579
  %4583 = sitofp i32 %4582 to float
  %4584 = fsub fast float %4468, %4583
  %4585 = call float @dx.op.binary.f32(i32 35, float %4584, float 0.000000e+00)  ; FMax(a,b)
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4576, %dx.types.Handle %48, float %4556, float %4557, float %4571, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = fcmp fast ogt float %4587, 0.000000e+00
  br i1 %4588, label %4589, label %4617

; <label>:4589                                    ; preds = %4560
  %4590 = add i32 %4550, %4568
  %4591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.i32 %4591, 0
  %4593 = and i32 %4592, 32767
  %4594 = mul nuw nsw i32 %4593, 928
  %4595 = add nuw nsw i32 %4594, 48
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = add nuw nsw i32 %4594, 60
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = fmul fast float %4597, %4587
  %4606 = fmul fast float %4598, %4587
  %4607 = fmul fast float %4599, %4587
  %4608 = fadd fast float %4605, %4561
  %4609 = fadd fast float %4606, %4562
  %4610 = fadd fast float %4607, %4563
  %4611 = fmul fast float %4602, %4587
  %4612 = fmul fast float %4603, %4587
  %4613 = fmul fast float %4604, %4587
  %4614 = fadd fast float %4611, %4564
  %4615 = fadd fast float %4612, %4565
  %4616 = fadd fast float %4613, %4566
  br label %4617

; <label>:4617                                    ; preds = %4589, %4560
  %4618 = phi float [ %4608, %4589 ], [ %4561, %4560 ]
  %4619 = phi float [ %4609, %4589 ], [ %4562, %4560 ]
  %4620 = phi float [ %4610, %4589 ], [ %4563, %4560 ]
  %4621 = phi float [ %4614, %4589 ], [ %4564, %4560 ]
  %4622 = phi float [ %4615, %4589 ], [ %4565, %4560 ]
  %4623 = phi float [ %4616, %4589 ], [ %4566, %4560 ]
  %4624 = add nuw i32 %4567, 1
  %4625 = icmp eq i32 %4624, %4549
  br i1 %4625, label %4626, label %4560

; <label>:4626                                    ; preds = %4617
  br label %4627

; <label>:4627                                    ; preds = %4626, %4490
  %4628 = phi float [ 0.000000e+00, %4490 ], [ %4618, %4626 ]
  %4629 = phi float [ 0.000000e+00, %4490 ], [ %4619, %4626 ]
  %4630 = phi float [ 0.000000e+00, %4490 ], [ %4620, %4626 ]
  %4631 = phi float [ 0.000000e+00, %4490 ], [ %4621, %4626 ]
  %4632 = phi float [ 0.000000e+00, %4490 ], [ %4622, %4626 ]
  %4633 = phi float [ 0.000000e+00, %4490 ], [ %4623, %4626 ]
  %4634 = fadd fast float %4631, %4628
  %4635 = fmul fast float %4634, 0x3F847AE140000000
  %4636 = fadd fast float %4632, %4629
  %4637 = fmul fast float %4636, 0x3F847AE140000000
  %4638 = fadd fast float %4633, %4630
  %4639 = fmul fast float %4638, 0x3F847AE140000000
  br label %4640

; <label>:4640                                    ; preds = %4627, %4424, %4369, %4366, %4337, %4299
  %4641 = phi float [ %4351, %4337 ], [ -1.310720e+05, %4299 ], [ %4543, %4627 ], [ -1.310720e+05, %4369 ], [ -1.310720e+05, %4424 ], [ -1.310720e+05, %4366 ]
  %4642 = phi float [ %4361, %4337 ], [ 0.000000e+00, %4299 ], [ %4635, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4643 = phi float [ %4363, %4337 ], [ 0.000000e+00, %4299 ], [ %4637, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4644 = phi float [ %4365, %4337 ], [ 0.000000e+00, %4299 ], [ %4639, %4627 ], [ 0.000000e+00, %4369 ], [ 0.000000e+00, %4424 ], [ 0.000000e+00, %4366 ]
  %4645 = phi i1 [ true, %4337 ], [ false, %4299 ], [ true, %4627 ], [ false, %4369 ], [ false, %4424 ], [ false, %4366 ]
  %4646 = and i32 %248, 3
  %4647 = icmp eq i32 %4646, 1
  %4648 = select i1 %4647, float 1.000000e+00, float 0.000000e+00
  %4649 = fsub fast float %4641, %199
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = select i1 %4645, float %4650, float 1.000000e+00
  %4652 = fmul fast float %4651, %4648
  %4653 = icmp eq i32 %4646, 3
  %4654 = select i1 %4653, float 1.000000e+00, float %4652
  %4655 = call float @dx.op.binary.f32(i32 35, float %4241, float %4654)  ; FMax(a,b)
  %4656 = fcmp fast olt float %4654, 1.000000e+00
  %4657 = fcmp uge float %74, 0.000000e+00
  %4658 = and i1 %4657, %4656
  br i1 %4658, label %4659, label %4669

; <label>:4659                                    ; preds = %4640
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.ResRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4660, 2
  %4664 = fadd fast float %4661, %4655
  %4665 = fcmp ule float %73, 0.000000e+00
  %4666 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = select i1 %4665, float %4666, float 1.000000e+00
  %4668 = fmul fast float %4667, %4663
  br label %4669

; <label>:4669                                    ; preds = %4659, %4640
  %4670 = phi float [ %4664, %4659 ], [ %4655, %4640 ]
  %4671 = phi float [ %4662, %4659 ], [ 0.000000e+00, %4640 ]
  %4672 = phi float [ %4668, %4659 ], [ 0.000000e+00, %4640 ]
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = fcmp fast une float %4674, 0.000000e+00
  %4677 = fcmp fast une float %4675, 0.000000e+00
  %4678 = or i1 %4676, %4677
  br i1 %4678, label %4679, label %5238

; <label>:4679                                    ; preds = %4669
  br i1 %4676, label %4680, label %4953

; <label>:4680                                    ; preds = %4679
  %4681 = call float @dx.op.unary.f32(i32 23, float %4238)  ; Log(value)
  %4682 = fmul fast float %4681, 4.000000e+00
  %4683 = call float @dx.op.unary.f32(i32 21, float %4682)  ; Exp(value)
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = fmul fast float %4685, %60
  %4687 = fmul fast float %4685, %61
  %4688 = fmul fast float %4685, %62
  %4689 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4690 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4691 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4692 = call float @dx.op.unary.f32(i32 23, float %4689)  ; Log(value)
  %4693 = call float @dx.op.unary.f32(i32 23, float %4690)  ; Log(value)
  %4694 = call float @dx.op.unary.f32(i32 23, float %4691)  ; Log(value)
  %4695 = fmul fast float %4692, 4.000000e+00
  %4696 = fmul fast float %4693, 4.000000e+00
  %4697 = fmul fast float %4694, 4.000000e+00
  %4698 = call float @dx.op.unary.f32(i32 21, float %4695)  ; Exp(value)
  %4699 = call float @dx.op.unary.f32(i32 21, float %4696)  ; Exp(value)
  %4700 = call float @dx.op.unary.f32(i32 21, float %4697)  ; Exp(value)
  %4701 = fadd fast float %4699, %4698
  %4702 = fadd fast float %4701, %4700
  %4703 = fdiv fast float 1.000000e+00, %4702
  %4704 = fmul fast float %4703, %4698
  %4705 = fcmp fast ogt float %70, 0.000000e+00
  %4706 = fcmp fast ogt float %71, 0.000000e+00
  %4707 = fcmp fast ogt float %72, 0.000000e+00
  %4708 = fcmp fast olt float %70, 0.000000e+00
  %4709 = fcmp fast olt float %71, 0.000000e+00
  %4710 = fcmp fast olt float %72, 0.000000e+00
  %4711 = zext i1 %4705 to i32
  %4712 = zext i1 %4706 to i32
  %4713 = zext i1 %4707 to i32
  %4714 = zext i1 %4708 to i32
  %4715 = zext i1 %4709 to i32
  %4716 = zext i1 %4710 to i32
  %4717 = sub nsw i32 %4711, %4714
  %4718 = sub nsw i32 %4712, %4715
  %4719 = sub nsw i32 %4713, %4716
  %4720 = call float @dx.op.unary.f32(i32 83, float %4686)  ; DerivCoarseX(value)
  %4721 = call float @dx.op.unary.f32(i32 83, float %4687)  ; DerivCoarseX(value)
  %4722 = call float @dx.op.unary.f32(i32 83, float %4688)  ; DerivCoarseX(value)
  %4723 = call float @dx.op.unary.f32(i32 84, float %4686)  ; DerivCoarseY(value)
  %4724 = call float @dx.op.unary.f32(i32 84, float %4687)  ; DerivCoarseY(value)
  %4725 = call float @dx.op.unary.f32(i32 84, float %4688)  ; DerivCoarseY(value)
  %4726 = fcmp fast ole float %280, %4704
  %4727 = fmul fast float %4703, %4701
  %4728 = fcmp fast ole float %280, %4727
  %4729 = select i1 %4728, float %4688, float %4686
  %4730 = select i1 %4728, float %4686, float %4687
  %4731 = select i1 %4726, float %4687, float %4729
  %4732 = select i1 %4726, float %4688, float %4730
  %4733 = select i1 %4728, float %4722, float %4720
  %4734 = select i1 %4728, float %4720, float %4721
  %4735 = select i1 %4726, float %4721, float %4733
  %4736 = select i1 %4726, float %4722, float %4734
  %4737 = select i1 %4728, float %4725, float %4723
  %4738 = select i1 %4728, float %4723, float %4724
  %4739 = select i1 %4726, float %4724, float %4737
  %4740 = select i1 %4726, float %4725, float %4738
  %4741 = call float @dx.op.unary.f32(i32 27, float %4731)  ; Round_ni(value)
  %4742 = call float @dx.op.unary.f32(i32 27, float %4732)  ; Round_ni(value)
  %4743 = fptosi float %4741 to i32
  %4744 = fptosi float %4742 to i32
  %4745 = xor i32 %4744, %4743
  %4746 = sitofp i32 %4745 to float
  %4747 = fptosi float %4746 to i32
  %4748 = sitofp i32 %4747 to float
  %4749 = fmul fast float %4748, 0x3FE3C6EF40000000
  %4750 = frem fast float %4741, 2.560000e+02
  %4751 = frem fast float %4742, 2.560000e+02
  %4752 = fptoui float %4750 to i32
  %4753 = fptoui float %4751 to i32
  %4754 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4752, i32 %4753, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  %4758 = fadd fast float %4755, %4749
  %4759 = fadd fast float %4756, %4749
  %4760 = fadd fast float %4757, %4749
  %4761 = call float @dx.op.unary.f32(i32 22, float %4758)  ; Frc(value)
  %4762 = call float @dx.op.unary.f32(i32 22, float %4759)  ; Frc(value)
  %4763 = call float @dx.op.unary.f32(i32 22, float %4760)  ; Frc(value)
  %4764 = fmul fast float %4763, 0x401921FB60000000
  %4765 = call float @dx.op.unary.f32(i32 13, float %4764)  ; Sin(value)
  %4766 = call float @dx.op.unary.f32(i32 12, float %4764)  ; Cos(value)
  %4767 = fsub fast float -0.000000e+00, %4766
  %4768 = fmul fast float %4766, %4731
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4732, float %4768)  ; FMad(a,b,c)
  %4770 = fmul fast float %4765, %4731
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4767, float %4732, float %4770)  ; FMad(a,b,c)
  %4772 = fadd fast float %4769, %4761
  %4773 = fadd fast float %4771, %4762
  %4774 = extractvalue %dx.types.CBufRet.f32 %4684, 3
  %4775 = bitcast float %4774 to i32
  %4776 = icmp eq i32 %4775, 0
  br i1 %4776, label %4815, label %4777

; <label>:4777                                    ; preds = %4680
  %4778 = add i32 %4775, 0
  %4779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4779, %dx.types.Handle %107, float %4772, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float %4735, float %4736, float undef, float %4739, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4785 = fsub fast float 1.000000e+00, %4674
  %4786 = call float @dx.op.binary.f32(i32 35, float %4785, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4787 = bitcast float %4674 to i32
  %4788 = sitofp i32 %4787 to float
  %4789 = fadd fast float %4788, 0xC1CFBF8940000000
  %4790 = fmul fast float %4784, %4789
  %4791 = fadd fast float %4790, 0x41CFBF8940000000
  %4792 = fptosi float %4791 to i32
  %4793 = bitcast i32 %4792 to float
  %4794 = bitcast float %4786 to i32
  %4795 = sitofp i32 %4794 to float
  %4796 = fadd fast float %4795, 0xC1CFBF8940000000
  %4797 = fmul fast float %4796, %4784
  %4798 = fadd fast float %4797, 0x41CFBF8940000000
  %4799 = fptosi float %4798 to i32
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4793, %4783
  %4802 = fmul fast float %4800, %4783
  %4803 = fsub fast float %4786, %4801
  %4804 = fadd fast float %4802, %4786
  %4805 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4807 = fsub fast float %4781, %4805
  %4808 = fsub fast float %4806, %4805
  %4809 = bitcast float %4808 to i32
  %4810 = sub nsw i32 2129859010, %4809
  %4811 = bitcast i32 %4810 to float
  %4812 = fmul fast float %4811, %4807
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fcmp fast olt float %4813, 0x3F70101020000000
  br i1 %4814, label %4953, label %4815

; <label>:4815                                    ; preds = %4777, %4680
  %4816 = phi float [ %4813, %4777 ], [ %4674, %4680 ]
  %4817 = fmul fast float %4816, %4683
  %4818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.i32 %4818, 1
  %4820 = extractvalue %dx.types.CBufRet.i32 %4818, 0
  %4821 = add i32 %4820, 0
  %4822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4822, %dx.types.Handle %106, float %4772, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float %4735, float %4736, float undef, float %4739, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = extractvalue %dx.types.ResRet.f32 %4823, 3
  %4828 = and i32 %4819, 255
  %4829 = uitofp i32 %4828 to float
  %4830 = lshr i32 %4819, 8
  %4831 = and i32 %4830, 255
  %4832 = uitofp i32 %4831 to float
  %4833 = fmul fast float %4827, %4829
  %4834 = fadd fast float %4833, %4832
  %4835 = fmul fast float %4834, 0x3F70101000000000
  %4836 = fadd fast float %4835, 0xBFB99999A0000000
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = fmul fast float %4837, 0x3FF1C71C80000000
  %4839 = call float @dx.op.binary.f32(i32 36, float %4835, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4840 = fsub fast float 1.000000e+00, %4838
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, %4824
  %4843 = fmul fast float %4841, %4825
  %4844 = fmul fast float %4841, %4826
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = fmul fast float %4838, %4824
  %4849 = fmul fast float %4838, %4825
  %4850 = fmul fast float %4838, %4826
  %4851 = fadd fast float %4848, %4839
  %4852 = fadd fast float %4849, %4839
  %4853 = fadd fast float %4850, %4839
  %4854 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.i32 %4857, 3
  %4859 = extractvalue %dx.types.CBufRet.i32 %4857, 2
  %4860 = add i32 %4859, 0
  %4861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4861, %dx.types.Handle %106, float %4772, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float %4735, float %4736, float undef, float %4739, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = extractvalue %dx.types.ResRet.f32 %4862, 3
  %4867 = and i32 %4858, 255
  %4868 = uitofp i32 %4867 to float
  %4869 = lshr i32 %4858, 8
  %4870 = and i32 %4869, 255
  %4871 = uitofp i32 %4870 to float
  %4872 = lshr i32 %4858, 16
  %4873 = and i32 %4872, 255
  %4874 = uitofp i32 %4873 to float
  %4875 = fmul fast float %4874, 0x3F70101000000000
  %4876 = fmul fast float %4863, %4868
  %4877 = fadd fast float %4876, %4871
  %4878 = fmul fast float %4877, 0x3F70101000000000
  %4879 = fadd fast float %4864, -5.000000e-01
  %4880 = fadd fast float %4866, -5.000000e-01
  %4881 = fmul fast float %4879, %4875
  %4882 = fmul fast float %4880, %4875
  %4883 = fadd fast float %4881, 5.000000e-01
  %4884 = fadd fast float %4882, 5.000000e-01
  %4885 = fmul fast float %4883, 2.000000e+00
  %4886 = fadd fast float %4885, -1.000000e+00
  %4887 = fmul fast float %4884, 2.000000e+00
  %4888 = fadd fast float %4887, -1.000000e+00
  %4889 = fadd fast float %4886, %4888
  %4890 = fmul fast float %4889, 5.000000e-01
  %4891 = fsub fast float %4886, %4888
  %4892 = fmul fast float %4891, 5.000000e-01
  %4893 = call float @dx.op.unary.f32(i32 6, float %4890)  ; FAbs(value)
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = call float @dx.op.unary.f32(i32 6, float %4892)  ; FAbs(value)
  %4896 = fsub fast float %4894, %4895
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4892, float %4896, float %4890, float %4892, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.unary.f32(i32 25, float %4897)  ; Rsqrt(value)
  %4899 = fmul fast float %4890, %4898
  %4900 = fmul fast float %4892, %4898
  %4901 = select i1 %4728, i32 %4718, i32 %4719
  %4902 = select i1 %4726, i32 %4717, i32 %4901
  %4903 = sitofp i32 %4902 to float
  %4904 = fmul fast float %4896, %4903
  %4905 = fmul fast float %4904, %4898
  %4906 = select i1 %4728, float %4905, float %4900
  %4907 = select i1 %4728, float %4900, float %4905
  %4908 = select i1 %4726, float %4905, float %4899
  %4909 = select i1 %4726, float %4900, float %4906
  %4910 = select i1 %4726, float %4899, float %4907
  %4911 = fsub fast float %4845, %4278
  %4912 = fsub fast float %4846, %4279
  %4913 = fsub fast float %4847, %4280
  %4914 = fmul fast float %4911, %4817
  %4915 = fmul fast float %4912, %4817
  %4916 = fmul fast float %4913, %4817
  %4917 = fadd fast float %4914, %4278
  %4918 = fadd fast float %4915, %4279
  %4919 = fadd fast float %4916, %4280
  %4920 = fsub fast float %4854, %4263
  %4921 = fsub fast float %4855, %4264
  %4922 = fsub fast float %4856, %4265
  %4923 = fmul fast float %4920, %4817
  %4924 = fmul fast float %4921, %4817
  %4925 = fmul fast float %4922, %4817
  %4926 = fadd fast float %4923, %4263
  %4927 = fadd fast float %4924, %4264
  %4928 = fadd fast float %4925, %4265
  %4929 = fadd fast float %4908, %4226
  %4930 = fadd fast float %4909, %4227
  %4931 = fadd fast float %4910, %4228
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4929, float %4930, float %4931)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 25, float %4932)  ; Rsqrt(value)
  %4934 = fmul fast float %4929, %4933
  %4935 = fmul fast float %4930, %4933
  %4936 = fmul fast float %4931, %4933
  %4937 = fsub fast float %4934, %4226
  %4938 = fsub fast float %4935, %4227
  %4939 = fsub fast float %4936, %4228
  %4940 = fmul fast float %4937, %4817
  %4941 = fmul fast float %4938, %4817
  %4942 = fmul fast float %4939, %4817
  %4943 = fadd fast float %4940, %4226
  %4944 = fadd fast float %4941, %4227
  %4945 = fadd fast float %4942, %4228
  %4946 = call float @dx.op.binary.f32(i32 36, float %4238, float %4865)  ; FMin(a,b)
  %4947 = fsub fast float %4946, %4238
  %4948 = fmul fast float %4947, %4817
  %4949 = fadd fast float %4948, %4238
  %4950 = fsub fast float %4878, %4266
  %4951 = fmul fast float %4950, %4817
  %4952 = fadd fast float %4951, %4266
  br label %4953

; <label>:4953                                    ; preds = %4815, %4777, %4679
  %4954 = phi float [ %4917, %4815 ], [ %4278, %4777 ], [ %4278, %4679 ]
  %4955 = phi float [ %4918, %4815 ], [ %4279, %4777 ], [ %4279, %4679 ]
  %4956 = phi float [ %4919, %4815 ], [ %4280, %4777 ], [ %4280, %4679 ]
  %4957 = phi float [ %4926, %4815 ], [ %4263, %4777 ], [ %4263, %4679 ]
  %4958 = phi float [ %4927, %4815 ], [ %4264, %4777 ], [ %4264, %4679 ]
  %4959 = phi float [ %4928, %4815 ], [ %4265, %4777 ], [ %4265, %4679 ]
  %4960 = phi float [ %4943, %4815 ], [ %4226, %4777 ], [ %4226, %4679 ]
  %4961 = phi float [ %4944, %4815 ], [ %4227, %4777 ], [ %4227, %4679 ]
  %4962 = phi float [ %4945, %4815 ], [ %4228, %4777 ], [ %4228, %4679 ]
  %4963 = phi float [ %4952, %4815 ], [ %4266, %4777 ], [ %4266, %4679 ]
  %4964 = phi float [ %4949, %4815 ], [ %4238, %4777 ], [ %4238, %4679 ]
  br i1 %4677, label %4965, label %5238

; <label>:4965                                    ; preds = %4953
  %4966 = call float @dx.op.unary.f32(i32 23, float %4964)  ; Log(value)
  %4967 = fmul fast float %4966, 4.000000e+00
  %4968 = call float @dx.op.unary.f32(i32 21, float %4967)  ; Exp(value)
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = fmul fast float %4970, %60
  %4972 = fmul fast float %4970, %61
  %4973 = fmul fast float %4970, %62
  %4974 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4975 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4976 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4977 = call float @dx.op.unary.f32(i32 23, float %4974)  ; Log(value)
  %4978 = call float @dx.op.unary.f32(i32 23, float %4975)  ; Log(value)
  %4979 = call float @dx.op.unary.f32(i32 23, float %4976)  ; Log(value)
  %4980 = fmul fast float %4977, 4.000000e+00
  %4981 = fmul fast float %4978, 4.000000e+00
  %4982 = fmul fast float %4979, 4.000000e+00
  %4983 = call float @dx.op.unary.f32(i32 21, float %4980)  ; Exp(value)
  %4984 = call float @dx.op.unary.f32(i32 21, float %4981)  ; Exp(value)
  %4985 = call float @dx.op.unary.f32(i32 21, float %4982)  ; Exp(value)
  %4986 = fadd fast float %4984, %4983
  %4987 = fadd fast float %4986, %4985
  %4988 = fdiv fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4988, %4983
  %4990 = fcmp fast ogt float %70, 0.000000e+00
  %4991 = fcmp fast ogt float %71, 0.000000e+00
  %4992 = fcmp fast ogt float %72, 0.000000e+00
  %4993 = fcmp fast olt float %70, 0.000000e+00
  %4994 = fcmp fast olt float %71, 0.000000e+00
  %4995 = fcmp fast olt float %72, 0.000000e+00
  %4996 = zext i1 %4990 to i32
  %4997 = zext i1 %4991 to i32
  %4998 = zext i1 %4992 to i32
  %4999 = zext i1 %4993 to i32
  %5000 = zext i1 %4994 to i32
  %5001 = zext i1 %4995 to i32
  %5002 = sub nsw i32 %4996, %4999
  %5003 = sub nsw i32 %4997, %5000
  %5004 = sub nsw i32 %4998, %5001
  %5005 = call float @dx.op.unary.f32(i32 83, float %4971)  ; DerivCoarseX(value)
  %5006 = call float @dx.op.unary.f32(i32 83, float %4972)  ; DerivCoarseX(value)
  %5007 = call float @dx.op.unary.f32(i32 83, float %4973)  ; DerivCoarseX(value)
  %5008 = call float @dx.op.unary.f32(i32 84, float %4971)  ; DerivCoarseY(value)
  %5009 = call float @dx.op.unary.f32(i32 84, float %4972)  ; DerivCoarseY(value)
  %5010 = call float @dx.op.unary.f32(i32 84, float %4973)  ; DerivCoarseY(value)
  %5011 = fcmp fast ole float %280, %4989
  %5012 = fmul fast float %4988, %4986
  %5013 = fcmp fast ole float %280, %5012
  %5014 = select i1 %5013, float %4973, float %4971
  %5015 = select i1 %5013, float %4971, float %4972
  %5016 = select i1 %5011, float %4972, float %5014
  %5017 = select i1 %5011, float %4973, float %5015
  %5018 = select i1 %5013, float %5007, float %5005
  %5019 = select i1 %5013, float %5005, float %5006
  %5020 = select i1 %5011, float %5006, float %5018
  %5021 = select i1 %5011, float %5007, float %5019
  %5022 = select i1 %5013, float %5010, float %5008
  %5023 = select i1 %5013, float %5008, float %5009
  %5024 = select i1 %5011, float %5009, float %5022
  %5025 = select i1 %5011, float %5010, float %5023
  %5026 = call float @dx.op.unary.f32(i32 27, float %5016)  ; Round_ni(value)
  %5027 = call float @dx.op.unary.f32(i32 27, float %5017)  ; Round_ni(value)
  %5028 = fptosi float %5026 to i32
  %5029 = fptosi float %5027 to i32
  %5030 = xor i32 %5029, %5028
  %5031 = sitofp i32 %5030 to float
  %5032 = fptosi float %5031 to i32
  %5033 = sitofp i32 %5032 to float
  %5034 = fmul fast float %5033, 0x3FE3C6EF40000000
  %5035 = frem fast float %5026, 2.560000e+02
  %5036 = frem fast float %5027, 2.560000e+02
  %5037 = fptoui float %5035 to i32
  %5038 = fptoui float %5036 to i32
  %5039 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5037, i32 %5038, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.ResRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.ResRet.f32 %5039, 2
  %5043 = fadd fast float %5040, %5034
  %5044 = fadd fast float %5041, %5034
  %5045 = fadd fast float %5042, %5034
  %5046 = call float @dx.op.unary.f32(i32 22, float %5043)  ; Frc(value)
  %5047 = call float @dx.op.unary.f32(i32 22, float %5044)  ; Frc(value)
  %5048 = call float @dx.op.unary.f32(i32 22, float %5045)  ; Frc(value)
  %5049 = fmul fast float %5048, 0x401921FB60000000
  %5050 = call float @dx.op.unary.f32(i32 13, float %5049)  ; Sin(value)
  %5051 = call float @dx.op.unary.f32(i32 12, float %5049)  ; Cos(value)
  %5052 = fsub fast float -0.000000e+00, %5051
  %5053 = fmul fast float %5051, %5016
  %5054 = call float @dx.op.tertiary.f32(i32 46, float %5050, float %5017, float %5053)  ; FMad(a,b,c)
  %5055 = fmul fast float %5050, %5016
  %5056 = call float @dx.op.tertiary.f32(i32 46, float %5052, float %5017, float %5055)  ; FMad(a,b,c)
  %5057 = fadd fast float %5054, %5046
  %5058 = fadd fast float %5056, %5047
  %5059 = extractvalue %dx.types.CBufRet.f32 %4969, 3
  %5060 = bitcast float %5059 to i32
  %5061 = icmp eq i32 %5060, 0
  br i1 %5061, label %5100, label %5062

; <label>:5062                                    ; preds = %4965
  %5063 = add i32 %5060, 0
  %5064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5064, %dx.types.Handle %107, float %5057, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float %5020, float %5021, float undef, float %5024, float %5025, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 0
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5070 = fsub fast float 1.000000e+00, %4675
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5072 = bitcast float %4675 to i32
  %5073 = sitofp i32 %5072 to float
  %5074 = fadd fast float %5073, 0xC1CFBF8940000000
  %5075 = fmul fast float %5069, %5074
  %5076 = fadd fast float %5075, 0x41CFBF8940000000
  %5077 = fptosi float %5076 to i32
  %5078 = bitcast i32 %5077 to float
  %5079 = bitcast float %5071 to i32
  %5080 = sitofp i32 %5079 to float
  %5081 = fadd fast float %5080, 0xC1CFBF8940000000
  %5082 = fmul fast float %5081, %5069
  %5083 = fadd fast float %5082, 0x41CFBF8940000000
  %5084 = fptosi float %5083 to i32
  %5085 = bitcast i32 %5084 to float
  %5086 = fmul fast float %5078, %5068
  %5087 = fmul fast float %5085, %5068
  %5088 = fsub fast float %5071, %5086
  %5089 = fadd fast float %5087, %5071
  %5090 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5092 = fsub fast float %5066, %5090
  %5093 = fsub fast float %5091, %5090
  %5094 = bitcast float %5093 to i32
  %5095 = sub nsw i32 2129859010, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %5092
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fcmp fast olt float %5098, 0x3F70101020000000
  br i1 %5099, label %5238, label %5100

; <label>:5100                                    ; preds = %5062, %4965
  %5101 = phi float [ %5098, %5062 ], [ %4675, %4965 ]
  %5102 = fmul fast float %5101, %4968
  %5103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.i32 %5103, 1
  %5105 = extractvalue %dx.types.CBufRet.i32 %5103, 0
  %5106 = add i32 %5105, 0
  %5107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5107, %dx.types.Handle %106, float %5057, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float %5020, float %5021, float undef, float %5024, float %5025, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5112 = extractvalue %dx.types.ResRet.f32 %5108, 3
  %5113 = and i32 %5104, 255
  %5114 = uitofp i32 %5113 to float
  %5115 = lshr i32 %5104, 8
  %5116 = and i32 %5115, 255
  %5117 = uitofp i32 %5116 to float
  %5118 = fmul fast float %5112, %5114
  %5119 = fadd fast float %5118, %5117
  %5120 = fmul fast float %5119, 0x3F70101000000000
  %5121 = fadd fast float %5120, 0xBFB99999A0000000
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 0x3FF1C71C80000000
  %5124 = call float @dx.op.binary.f32(i32 36, float %5120, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5125 = fsub fast float 1.000000e+00, %5123
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fmul fast float %5126, %5109
  %5128 = fmul fast float %5126, %5110
  %5129 = fmul fast float %5126, %5111
  %5130 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = fmul fast float %5123, %5109
  %5134 = fmul fast float %5123, %5110
  %5135 = fmul fast float %5123, %5111
  %5136 = fadd fast float %5133, %5124
  %5137 = fadd fast float %5134, %5124
  %5138 = fadd fast float %5135, %5124
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 3
  %5144 = extractvalue %dx.types.CBufRet.i32 %5142, 2
  %5145 = add i32 %5144, 0
  %5146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5146, %dx.types.Handle %106, float %5057, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float %5020, float %5021, float undef, float %5024, float %5025, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5148 = extractvalue %dx.types.ResRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.ResRet.f32 %5147, 1
  %5150 = extractvalue %dx.types.ResRet.f32 %5147, 2
  %5151 = extractvalue %dx.types.ResRet.f32 %5147, 3
  %5152 = and i32 %5143, 255
  %5153 = uitofp i32 %5152 to float
  %5154 = lshr i32 %5143, 8
  %5155 = and i32 %5154, 255
  %5156 = uitofp i32 %5155 to float
  %5157 = lshr i32 %5143, 16
  %5158 = and i32 %5157, 255
  %5159 = uitofp i32 %5158 to float
  %5160 = fmul fast float %5159, 0x3F70101000000000
  %5161 = fmul fast float %5148, %5153
  %5162 = fadd fast float %5161, %5156
  %5163 = fmul fast float %5162, 0x3F70101000000000
  %5164 = fadd fast float %5149, -5.000000e-01
  %5165 = fadd fast float %5151, -5.000000e-01
  %5166 = fmul fast float %5164, %5160
  %5167 = fmul fast float %5165, %5160
  %5168 = fadd fast float %5166, 5.000000e-01
  %5169 = fadd fast float %5167, 5.000000e-01
  %5170 = fmul fast float %5168, 2.000000e+00
  %5171 = fadd fast float %5170, -1.000000e+00
  %5172 = fmul fast float %5169, 2.000000e+00
  %5173 = fadd fast float %5172, -1.000000e+00
  %5174 = fadd fast float %5171, %5173
  %5175 = fmul fast float %5174, 5.000000e-01
  %5176 = fsub fast float %5171, %5173
  %5177 = fmul fast float %5176, 5.000000e-01
  %5178 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = call float @dx.op.unary.f32(i32 6, float %5177)  ; FAbs(value)
  %5181 = fsub fast float %5179, %5180
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5177, float %5181, float %5175, float %5177, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.unary.f32(i32 25, float %5182)  ; Rsqrt(value)
  %5184 = fmul fast float %5175, %5183
  %5185 = fmul fast float %5177, %5183
  %5186 = select i1 %5013, i32 %5003, i32 %5004
  %5187 = select i1 %5011, i32 %5002, i32 %5186
  %5188 = sitofp i32 %5187 to float
  %5189 = fmul fast float %5181, %5188
  %5190 = fmul fast float %5189, %5183
  %5191 = select i1 %5013, float %5190, float %5185
  %5192 = select i1 %5013, float %5185, float %5190
  %5193 = select i1 %5011, float %5190, float %5184
  %5194 = select i1 %5011, float %5185, float %5191
  %5195 = select i1 %5011, float %5184, float %5192
  %5196 = fsub fast float %5130, %4954
  %5197 = fsub fast float %5131, %4955
  %5198 = fsub fast float %5132, %4956
  %5199 = fmul fast float %5196, %5102
  %5200 = fmul fast float %5197, %5102
  %5201 = fmul fast float %5198, %5102
  %5202 = fadd fast float %5199, %4954
  %5203 = fadd fast float %5200, %4955
  %5204 = fadd fast float %5201, %4956
  %5205 = fsub fast float %5139, %4957
  %5206 = fsub fast float %5140, %4958
  %5207 = fsub fast float %5141, %4959
  %5208 = fmul fast float %5205, %5102
  %5209 = fmul fast float %5206, %5102
  %5210 = fmul fast float %5207, %5102
  %5211 = fadd fast float %5208, %4957
  %5212 = fadd fast float %5209, %4958
  %5213 = fadd fast float %5210, %4959
  %5214 = fadd fast float %5193, %4960
  %5215 = fadd fast float %5194, %4961
  %5216 = fadd fast float %5195, %4962
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float %5214, float %5215, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  %5219 = fmul fast float %5214, %5218
  %5220 = fmul fast float %5215, %5218
  %5221 = fmul fast float %5216, %5218
  %5222 = fsub fast float %5219, %4960
  %5223 = fsub fast float %5220, %4961
  %5224 = fsub fast float %5221, %4962
  %5225 = fmul fast float %5222, %5102
  %5226 = fmul fast float %5223, %5102
  %5227 = fmul fast float %5224, %5102
  %5228 = fadd fast float %5225, %4960
  %5229 = fadd fast float %5226, %4961
  %5230 = fadd fast float %5227, %4962
  %5231 = call float @dx.op.binary.f32(i32 36, float %4964, float %5150)  ; FMin(a,b)
  %5232 = fsub fast float %5231, %4964
  %5233 = fmul fast float %5232, %5102
  %5234 = fadd fast float %5233, %4964
  %5235 = fsub fast float %5163, %4963
  %5236 = fmul fast float %5235, %5102
  %5237 = fadd fast float %5236, %4963
  br label %5238

; <label>:5238                                    ; preds = %5100, %5062, %4953, %4669
  %5239 = phi float [ %5202, %5100 ], [ %4954, %5062 ], [ %4954, %4953 ], [ %4278, %4669 ]
  %5240 = phi float [ %5203, %5100 ], [ %4955, %5062 ], [ %4955, %4953 ], [ %4279, %4669 ]
  %5241 = phi float [ %5204, %5100 ], [ %4956, %5062 ], [ %4956, %4953 ], [ %4280, %4669 ]
  %5242 = phi float [ %5211, %5100 ], [ %4957, %5062 ], [ %4957, %4953 ], [ %4263, %4669 ]
  %5243 = phi float [ %5212, %5100 ], [ %4958, %5062 ], [ %4958, %4953 ], [ %4264, %4669 ]
  %5244 = phi float [ %5213, %5100 ], [ %4959, %5062 ], [ %4959, %4953 ], [ %4265, %4669 ]
  %5245 = phi float [ %5228, %5100 ], [ %4960, %5062 ], [ %4960, %4953 ], [ %4226, %4669 ]
  %5246 = phi float [ %5229, %5100 ], [ %4961, %5062 ], [ %4961, %4953 ], [ %4227, %4669 ]
  %5247 = phi float [ %5230, %5100 ], [ %4962, %5062 ], [ %4962, %4953 ], [ %4228, %4669 ]
  %5248 = phi float [ %5237, %5100 ], [ %4963, %5062 ], [ %4963, %4953 ], [ %4266, %4669 ]
  %5249 = phi float [ %5234, %5100 ], [ %4964, %5062 ], [ %4964, %4953 ], [ %4238, %4669 ]
  %5250 = fcmp fast une float %4673, 0.000000e+00
  br i1 %5250, label %5251, label %5420

; <label>:5251                                    ; preds = %5238
  %5252 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 25, float %5252)  ; Rsqrt(value)
  %5254 = fmul fast float %197, %5253
  %5255 = fsub fast float -0.000000e+00, %5254
  %5256 = fmul fast float %198, %5253
  %5257 = fsub fast float -0.000000e+00, %5256
  %5258 = fmul fast float %199, %5253
  %5259 = fsub fast float -0.000000e+00, %5258
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5257, float %5259, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = fmul fast float %4673, 2.500000e+00
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fmul fast float %4673, 0x4013FFFFE0000000
  %5264 = fadd fast float %5263, 0xBFFFFFFFE0000000
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fmul fast float %4673, 0x4004000020000000
  %5267 = fadd fast float %5266, 0xBFF8000040000000
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %4245, 1.000000e+01
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5270, 2.000000e+00
  %5272 = fsub fast float 3.000000e+00, %5271
  %5273 = fmul fast float %5270, %5270
  %5274 = fmul fast float %5273, %5272
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = fsub fast float 0x3FE3333340000000, %5248
  %5277 = fmul fast float %5276, 0x400AAAAAA0000000
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = fmul fast float %5275, %5278
  %5280 = fmul fast float %5239, 0x3FEA2B8620000000
  %5281 = fmul fast float %5240, 0x3FEA2B8620000000
  %5282 = fmul fast float %5241, 0x3FEA2B8620000000
  %5283 = fadd fast float %5280, 0x3FC81DFBA0000000
  %5284 = fmul fast float %5283, %5239
  %5285 = fadd fast float %5284, 0x3F910E6020000000
  %5286 = fadd fast float %5281, 0x3FC81DFBA0000000
  %5287 = fmul fast float %5286, %5240
  %5288 = fadd fast float %5287, 0x3F910E6020000000
  %5289 = fadd fast float %5282, 0x3FC81DFBA0000000
  %5290 = fmul fast float %5289, %5241
  %5291 = fadd fast float %5290, 0x3F910E6020000000
  %5292 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = fsub fast float %5292, %5239
  %5296 = fsub fast float %5293, %5240
  %5297 = fsub fast float %5294, %5241
  %5298 = fmul fast float %5295, %5262
  %5299 = fmul fast float %5298, %5279
  %5300 = fmul fast float %5296, %5262
  %5301 = fmul fast float %5300, %5279
  %5302 = fmul fast float %5297, %5262
  %5303 = fmul fast float %5302, %5279
  %5304 = fadd fast float %5299, %5239
  %5305 = fadd fast float %5301, %5240
  %5306 = fadd fast float %5303, %5241
  %5307 = fmul fast float %5249, %5249
  %5308 = fmul fast float %5307, %5307
  %5309 = fadd fast float %5265, 1.000000e+00
  %5310 = fsub fast float %5309, %5279
  %5311 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5312 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5308
  %5315 = call float @dx.op.binary.f32(i32 36, float %5311, float %5314)  ; FMin(a,b)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5315, float %5316)  ; FMax(a,b)
  %5318 = fadd fast float %5313, 0xBFE4CCCCC0000000
  %5319 = fmul fast float %5318, 0x4006DB6DA0000000
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = fsub fast float 3.000000e+00, %5321
  %5323 = bitcast float %5242 to i32
  %5324 = ashr i32 %5323, 1
  %5325 = add nsw i32 %5324, 532487669
  %5326 = bitcast i32 %5325 to float
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, 2.000000e+00
  %5332 = bitcast float %5243 to i32
  %5333 = ashr i32 %5332, 1
  %5334 = add nsw i32 %5333, 532487669
  %5335 = bitcast i32 %5334 to float
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, 2.000000e+00
  %5341 = bitcast float %5244 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fsub fast float 0x4002A9FBE0000000, %5331
  %5351 = fadd fast float %5331, 0x3FD54FDF00000000
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, %5350
  %5356 = fmul fast float %5355, %5355
  %5357 = fsub fast float 0x4002A9FBE0000000, %5340
  %5358 = fadd fast float %5340, 0x3FD54FDF00000000
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5362, %5362
  %5364 = fsub fast float 0x4002A9FBE0000000, %5349
  %5365 = fadd fast float %5349, 0x3FD54FDF00000000
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5369, %5369
  %5371 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5356)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5363)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5370)  ; FMax(a,b)
  %5374 = fsub fast float 1.000000e+00, %5260
  %5375 = fadd fast float %5374, %5275
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fsub fast float 1.000000e+00, %4654
  %5378 = fmul fast float %5317, %5377
  %5379 = fmul fast float %5320, %5320
  %5380 = fmul fast float %5379, %5378
  %5381 = fmul fast float %5380, %5322
  %5382 = fmul fast float %5377, 0xBFE99999A0000000
  %5383 = fmul fast float %5382, %5262
  %5384 = fmul fast float %5383, %5279
  %5385 = fadd fast float %5384, 1.000000e+00
  %5386 = fadd fast float %5248, -1.000000e+00
  %5387 = fmul fast float %5385, %5386
  %5388 = fadd fast float %5387, 1.000000e+00
  %5389 = fsub fast float %5371, %5242
  %5390 = fsub fast float %5372, %5243
  %5391 = fsub fast float %5373, %5244
  %5392 = fmul fast float %5381, %5389
  %5393 = fmul fast float %5381, %5390
  %5394 = fmul fast float %5381, %5391
  %5395 = fadd fast float %5392, %5242
  %5396 = fadd fast float %5393, %5243
  %5397 = fadd fast float %5394, %5244
  %5398 = fsub fast float %117, %5245
  %5399 = fsub fast float %118, %5246
  %5400 = fsub fast float %119, %5247
  %5401 = fmul fast float %5381, %5398
  %5402 = fmul fast float %5381, %5399
  %5403 = fmul fast float %5381, %5400
  %5404 = fadd fast float %5401, %5245
  %5405 = fadd fast float %5402, %5246
  %5406 = fadd fast float %5403, %5247
  %5407 = fmul fast float %5381, %5376
  %5408 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5407, %5409
  %5411 = fadd fast float %5410, %5408
  %5412 = fsub fast float 1.000000e+00, %5249
  %5413 = fmul fast float %5381, %5412
  %5414 = fadd fast float %5413, %5249
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.unary.f32(i32 25, float %5415)  ; Rsqrt(value)
  %5417 = fmul fast float %5404, %5416
  %5418 = fmul fast float %5405, %5416
  %5419 = fmul fast float %5406, %5416
  br label %5420

; <label>:5420                                    ; preds = %5251, %5238
  %5421 = phi float [ %5304, %5251 ], [ %5239, %5238 ]
  %5422 = phi float [ %5305, %5251 ], [ %5240, %5238 ]
  %5423 = phi float [ %5306, %5251 ], [ %5241, %5238 ]
  %5424 = phi float [ %5395, %5251 ], [ %5242, %5238 ]
  %5425 = phi float [ %5396, %5251 ], [ %5243, %5238 ]
  %5426 = phi float [ %5397, %5251 ], [ %5244, %5238 ]
  %5427 = phi float [ %5417, %5251 ], [ %5245, %5238 ]
  %5428 = phi float [ %5418, %5251 ], [ %5246, %5238 ]
  %5429 = phi float [ %5419, %5251 ], [ %5247, %5238 ]
  %5430 = phi float [ %5411, %5251 ], [ %5248, %5238 ]
  %5431 = phi float [ %5414, %5251 ], [ %5249, %5238 ]
  %5432 = icmp eq i32 %58, 0
  br i1 %5432, label %5463, label %5433

; <label>:5433                                    ; preds = %5420
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5436 = extractvalue %dx.types.CBufRet.f32 %5434, 3
  %5437 = fmul fast float %5435, %110
  %5438 = fmul fast float %5436, %111
  %5439 = fmul fast float %5437, 1.024000e+03
  %5440 = fmul fast float %5438, 1.024000e+03
  %5441 = fadd fast float %5439, -5.120000e+02
  %5442 = fadd fast float %5440, -5.120000e+02
  %5443 = fmul fast float %5437, 0x4081BEDF00000000
  %5444 = fadd fast float %5443, 0xC071BEDF00000000
  %5445 = call float @dx.op.unary.f32(i32 22, float %5444)  ; Frc(value)
  %5446 = fmul fast float %5441, %5445
  %5447 = fadd fast float %5446, %5442
  %5448 = fmul fast float %5438, 0x4073BEBE20000000
  %5449 = fadd fast float %5448, 0xC063BEBE20000000
  %5450 = call float @dx.op.unary.f32(i32 22, float %5449)  ; Frc(value)
  %5451 = fmul fast float %5442, %5450
  %5452 = fadd fast float %5451, %5441
  %5453 = fmul fast float %5447, %5452
  %5454 = call float @dx.op.unary.f32(i32 22, float %5453)  ; Frc(value)
  %5455 = add i32 %323, 12
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = and i32 %5457, 255
  %5459 = uitofp i32 %5458 to float
  %5460 = fmul fast float %5459, 0x3F70101020000000
  %5461 = fcmp fast olt float %5454, %5460
  br i1 %5461, label %5462, label %5463

; <label>:5462                                    ; preds = %5433
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5463

; <label>:5463                                    ; preds = %5462, %5433, %5420
  %5464 = fsub fast float -0.000000e+00, %199
  %5465 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 25, float %5465)  ; Rsqrt(value)
  %5467 = fmul fast float %5466, %197
  %5468 = fmul fast float %5466, %198
  %5469 = fmul fast float %5466, %199
  %5470 = fsub fast float -0.000000e+00, %5467
  %5471 = fsub fast float -0.000000e+00, %5468
  %5472 = fsub fast float -0.000000e+00, %5469
  %5473 = select i1 %269, float 0.000000e+00, float %5426
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fmul fast float %5476, 2.000000e+00
  %5478 = fmul fast float %5477, %5427
  %5479 = fmul fast float %5477, %5428
  %5480 = fmul fast float %5477, %5429
  %5481 = fsub fast float %5467, %5478
  %5482 = fsub fast float %5468, %5479
  %5483 = fsub fast float %5469, %5480
  %5484 = call float @dx.op.binary.f32(i32 36, float %5431, float 1.000000e+00)  ; FMin(a,b)
  %5485 = fsub fast float 1.000000e+00, %5431
  %5486 = bitcast float %5485 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = fsub fast float 1.000000e+00, %81
  %5490 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5490, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5492 = fdiv fast float %5489, %5491
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %5494, 5.000000e-01
  %5496 = fadd fast float %5495, 5.000000e-01
  %5497 = fmul fast float %5496, %81
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %5499, %5492
  %5501 = fadd fast float %5497, %5500
  %5502 = fsub fast float 5.000000e-01, %5495
  %5503 = fmul fast float %5502, %5421
  %5504 = fmul fast float %5502, %5422
  %5505 = fmul fast float %5502, %5423
  %5506 = fadd fast float %5501, %5503
  %5507 = fadd fast float %5501, %5504
  %5508 = fadd fast float %5501, %5505
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5510, 5.000000e-01
  %5512 = fadd fast float %5511, 5.000000e-01
  %5513 = fmul fast float %5512, %81
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fmul fast float %5515, %5492
  %5517 = fadd fast float %5513, %5516
  %5518 = fsub fast float 5.000000e-01, %5511
  %5519 = fmul fast float %5518, %5421
  %5520 = fmul fast float %5518, %5422
  %5521 = fmul fast float %5518, %5423
  %5522 = fadd fast float %5517, %5519
  %5523 = fadd fast float %5517, %5520
  %5524 = fadd fast float %5517, %5521
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = call float @dx.op.binary.f32(i32 36, float %5421, float %5526)  ; FMin(a,b)
  %5528 = fsub fast float 1.000000e+00, %5484
  %5529 = fmul fast float %5527, %5528
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = call float @dx.op.binary.f32(i32 36, float %5422, float %5526)  ; FMin(a,b)
  %5535 = fmul fast float %5534, %5528
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = call float @dx.op.binary.f32(i32 36, float %5423, float %5526)  ; FMin(a,b)
  %5541 = fmul fast float %5540, %5528
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = bitcast float %5542 to i32
  %5544 = sub nsw i32 2129859010, %5543
  %5545 = bitcast i32 %5544 to float
  %5546 = fmul fast float %5484, %82
  %5547 = fmul fast float %5546, %5506
  %5548 = fmul fast float %5547, %5533
  %5549 = fmul fast float %5484, %83
  %5550 = fmul fast float %5549, %5507
  %5551 = fmul fast float %5550, %5539
  %5552 = fmul fast float %5484, %84
  %5553 = fmul fast float %5552, %5508
  %5554 = fmul fast float %5553, %5545
  %5555 = call float @dx.op.binary.f32(i32 36, float %5424, float %5526)  ; FMin(a,b)
  %5556 = fmul fast float %5555, %5528
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = bitcast float %5557 to i32
  %5559 = sub nsw i32 2129859010, %5558
  %5560 = bitcast i32 %5559 to float
  %5561 = call float @dx.op.binary.f32(i32 36, float %5425, float %5526)  ; FMin(a,b)
  %5562 = fmul fast float %5561, %5528
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = bitcast float %5563 to i32
  %5565 = sub nsw i32 2129859010, %5564
  %5566 = bitcast i32 %5565 to float
  %5567 = call float @dx.op.binary.f32(i32 36, float %5473, float %5526)  ; FMin(a,b)
  %5568 = fmul fast float %5567, %5528
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = bitcast float %5569 to i32
  %5571 = sub nsw i32 2129859010, %5570
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5546, %5522
  %5574 = fmul fast float %5573, %5560
  %5575 = fmul fast float %5549, %5523
  %5576 = fmul fast float %5575, %5566
  %5577 = fmul fast float %5552, %5524
  %5578 = fmul fast float %5577, %5572
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5551, float %5554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = select i1 %269, float 0.000000e+00, float %5548
  %5581 = select i1 %269, float %5579, float %5551
  %5582 = select i1 %269, float 0.000000e+00, float %5554
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5576, float %5578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = select i1 %269, float 0.000000e+00, float %5574
  %5585 = select i1 %269, float %5583, float %5576
  %5586 = select i1 %269, float 0.000000e+00, float %5578
  %5587 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %5588 = fmul fast float %5587, %5580
  %5589 = fmul fast float %5587, %5581
  %5590 = fmul fast float %5582, %5587
  %5591 = fmul fast float %5475, 9.843750e-01
  %5592 = fmul fast float %5430, 9.843750e-01
  %5593 = fadd fast float %5591, 7.812500e-03
  %5594 = fadd fast float %5592, 7.812500e-03
  %5595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5593, float %5594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 2
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 3
  %5598 = fmul fast float %5596, %5424
  %5599 = fmul fast float %5596, %5425
  %5600 = fmul fast float %5596, %5473
  %5601 = fadd fast float %5598, %5597
  %5602 = fadd fast float %5599, %5597
  %5603 = fadd fast float %5600, %5597
  %5604 = fcmp fast ogt float %4239, 0.000000e+00
  br i1 %5604, label %5605, label %5631

; <label>:5605                                    ; preds = %5463
  %5606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4239, float %5475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.ResRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.ResRet.f32 %5606, 2
  %5610 = fadd fast float %5607, -5.000000e-01
  %5611 = fadd fast float %5608, -5.000000e-01
  %5612 = fadd fast float %5609, -5.000000e-01
  %5613 = fsub fast float 1.000000e+00, %5424
  %5614 = fsub fast float 1.000000e+00, %5425
  %5615 = fsub fast float 1.000000e+00, %5473
  %5616 = fmul fast float %5424, 4.000000e+00
  %5617 = fmul fast float %5616, %5613
  %5618 = fmul fast float %5617, %5610
  %5619 = fmul fast float %5425, 4.000000e+00
  %5620 = fmul fast float %5619, %5614
  %5621 = fmul fast float %5620, %5611
  %5622 = fmul fast float %5473, 4.000000e+00
  %5623 = fmul fast float %5622, %5615
  %5624 = fmul fast float %5623, %5612
  %5625 = fadd fast float %5618, %5601
  %5626 = fadd fast float %5621, %5602
  %5627 = fadd fast float %5624, %5603
  %5628 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  br label %5631

; <label>:5631                                    ; preds = %5605, %5463
  %5632 = phi float [ %5628, %5605 ], [ %5601, %5463 ]
  %5633 = phi float [ %5629, %5605 ], [ %5602, %5463 ]
  %5634 = phi float [ %5630, %5605 ], [ %5603, %5463 ]
  %5635 = call float @dx.op.binary.f32(i32 35, float %5633, float %5634)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5632, float %5635)  ; FMax(a,b)
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = fmul fast float %197, %197
  %5639 = fmul fast float %198, %198
  %5640 = fadd fast float %5639, %5638
  %5641 = fmul fast float %199, %199
  %5642 = fadd fast float %5640, %5641
  %5643 = call float @dx.op.unary.f32(i32 24, float %5642)  ; Sqrt(value)
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5646 = fsub fast float %5643, %5645
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5648 = fmul fast float %5646, %5647
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.i32 %5652, 0
  %5654 = and i32 %5653, 4194304
  %5655 = icmp ne i32 %5654, 0
  %5656 = and i32 %5653, 8388608
  %5657 = icmp ne i32 %5656, 0
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = select i1 %5655, float %5659, float %5664
  %5669 = select i1 %5655, float %5660, float %5665
  %5670 = select i1 %5655, float %5661, float %5666
  %5671 = select i1 %5655, float %5662, float %5667
  %5672 = select i1 %5657, float 0.000000e+00, float %5671
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = select i1 %5655, float %5674, float %5675
  %5677 = select i1 %5657, float 0.000000e+00, float %5676
  %5678 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5680 = select i1 %5655, float %5678, float %5679
  %5681 = select i1 %5657, float 0.000000e+00, float %5680
  %5682 = fmul fast float %5649, %63
  %5683 = fmul fast float %5682, %5650
  %5684 = fmul fast float %5683, %5677
  %5685 = fmul fast float %5682, %5651
  %5686 = fmul fast float %5685, %5681
  %5687 = fadd fast float %5686, 1.000000e+00
  %5688 = fmul fast float %5637, %5588
  %5689 = fmul fast float %5688, %5687
  %5690 = fmul fast float %5637, %5589
  %5691 = fmul fast float %5690, %5687
  %5692 = fmul fast float %5637, %5590
  %5693 = fmul fast float %5692, %5687
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = fcmp fast ogt float %5694, 0x3E7FF19E20000000
  %5696 = fdiv fast float 1.000000e+00, %5694
  %5697 = select i1 %5695, float %5696, float 0.000000e+00
  %5698 = fmul fast float %5697, %5421
  %5699 = fmul fast float %5697, %5422
  %5700 = fmul fast float %5697, %5423
  %5701 = fadd fast float %5698, -1.000000e+00
  %5702 = fadd fast float %5699, -1.000000e+00
  %5703 = fadd fast float %5700, -1.000000e+00
  %5704 = fmul fast float %5701, 5.000000e-01
  %5705 = fmul fast float %5702, 5.000000e-01
  %5706 = fmul fast float %5703, 5.000000e-01
  %5707 = fadd fast float %5704, 1.000000e+00
  %5708 = fadd fast float %5705, 1.000000e+00
  %5709 = fadd fast float %5706, 1.000000e+00
  %5710 = fadd fast float %5684, %4240
  %5711 = fsub fast float %5668, %5707
  %5712 = fsub fast float %5669, %5708
  %5713 = fsub fast float %5670, %5709
  %5714 = fmul fast float %5711, %5672
  %5715 = fmul fast float %5712, %5672
  %5716 = fmul fast float %5713, %5672
  %5717 = fadd fast float %5714, %5707
  %5718 = fadd fast float %5715, %5708
  %5719 = fadd fast float %5716, %5709
  %5720 = fmul fast float %5632, %5584
  %5721 = fmul fast float %5633, %5585
  %5722 = fmul fast float %5634, %5586
  %5723 = fsub fast float 1.000000e+00, %5475
  %5724 = bitcast float %5723 to i32
  %5725 = sitofp i32 %5724 to float
  %5726 = fmul fast float %5725, 5.000000e+00
  %5727 = fadd fast float %5726, 0xC1EFBF8940000000
  %5728 = fptosi float %5727 to i32
  %5729 = bitcast i32 %5728 to float
  %5730 = fmul fast float %5710, %5729
  %5731 = fmul fast float %5688, %5730
  %5732 = fmul fast float %5731, %5717
  %5733 = fmul fast float %5690, %5730
  %5734 = fmul fast float %5733, %5718
  %5735 = fmul fast float %5692, %5730
  %5736 = fmul fast float %5735, %5719
  %5737 = fmul fast float %5689, %4236
  %5738 = fmul fast float %5691, %4236
  %5739 = fmul fast float %5693, %4236
  %5740 = fadd fast float %5720, %4232
  %5741 = fadd fast float %5740, %5732
  %5742 = fmul fast float %5741, %4236
  %5743 = fadd fast float %5721, %4233
  %5744 = fadd fast float %5743, %5734
  %5745 = fmul fast float %5744, %4236
  %5746 = fadd fast float %5722, %4234
  %5747 = fadd fast float %5746, %5736
  %5748 = fmul fast float %5747, %4236
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5751 = fcmp fast oeq float %5750, 0.000000e+00
  br i1 %5751, label %6836, label %5752

; <label>:5752                                    ; preds = %5631
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = select i1 %269, float %5761, float %5757
  %5765 = select i1 %269, float %5763, float %5758
  %5766 = select i1 %269, float %5762, float %5759
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5769 = fmul fast float %5768, %117
  %5770 = fmul fast float %5768, %118
  %5771 = fmul fast float %5768, %119
  %5772 = fadd fast float %5769, %197
  %5773 = fadd fast float %5770, %198
  %5774 = fadd fast float %5771, %199
  %5775 = fcmp fast olt float %5750, 0.000000e+00
  br i1 %5775, label %6415, label %5776

; <label>:5776                                    ; preds = %5752
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = fmul fast float %5778, %5772
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5779, float %5792)  ; FMad(a,b,c)
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5780, float %5793)  ; FMad(a,b,c)
  %5795 = fadd fast float %5794, %5781
  %5796 = fmul fast float %5783, %5772
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5784, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5785, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5786
  %5800 = fmul fast float %5788, %5772
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5789, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5790, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5791
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = fcmp fast une float %5805, 0.000000e+00
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5811 = fmul fast float %5810, %5795
  %5812 = fmul fast float %5810, %5799
  %5813 = fadd fast float %5811, %5808
  %5814 = fadd fast float %5812, %5809
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5819 = fmul fast float %5818, %5795
  %5820 = fmul fast float %5818, %5799
  %5821 = fadd fast float %5819, %5816
  %5822 = fadd fast float %5820, %5817
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5825 = fsub fast float %5824, %5803
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = fmul fast float %5825, %5826
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  br i1 %5806, label %5890, label %5830

; <label>:5830                                    ; preds = %5776
  %5831 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5834 = fadd fast float %5833, %5831
  %5835 = fcmp fast ogt float %5834, 0.000000e+00
  br i1 %5835, label %5836, label %5860

; <label>:5836                                    ; preds = %5830
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = fsub fast float %5821, %5838
  %5841 = fsub fast float %5822, %5839
  %5842 = fcmp fast olt float %5840, 0.000000e+00
  %5843 = fcmp fast olt float %5841, 0.000000e+00
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5848 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5849 = select i1 %5842, float %5845, float %5847
  %5850 = select i1 %5843, float %5846, float %5848
  %5851 = fmul fast float %5849, %5840
  %5852 = fmul fast float %5850, %5841
  %5853 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %5854 = call float @dx.op.unary.f32(i32 6, float %5852)  ; FAbs(value)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5856 = call float @dx.op.binary.f32(i32 35, float %5853, float %5854)  ; FMax(a,b)
  %5857 = fsub fast float %5855, %5856
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fmul fast float %5858, %5829
  br label %5860

; <label>:5860                                    ; preds = %5836, %5830
  %5861 = phi float [ %5859, %5836 ], [ 0.000000e+00, %5830 ]
  %5862 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5863 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5864 = fadd fast float %5863, %5862
  %5865 = fcmp fast ogt float %5864, 0.000000e+00
  br i1 %5865, label %5866, label %5890

; <label>:5866                                    ; preds = %5860
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5870 = fsub fast float %5813, %5868
  %5871 = fsub fast float %5814, %5869
  %5872 = fcmp fast olt float %5870, 0.000000e+00
  %5873 = fcmp fast olt float %5871, 0.000000e+00
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5879 = select i1 %5872, float %5875, float %5877
  %5880 = select i1 %5873, float %5876, float %5878
  %5881 = fmul fast float %5879, %5870
  %5882 = fmul fast float %5880, %5871
  %5883 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5884 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5886 = call float @dx.op.binary.f32(i32 35, float %5883, float %5884)  ; FMax(a,b)
  %5887 = fsub fast float %5885, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5888, %5829
  br label %5890

; <label>:5890                                    ; preds = %5866, %5860, %5776
  %5891 = phi float [ 0.000000e+00, %5776 ], [ %5889, %5866 ], [ 0.000000e+00, %5860 ]
  %5892 = phi float [ 0.000000e+00, %5776 ], [ %5861, %5866 ], [ %5861, %5860 ]
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = fsub fast float %5795, %5897
  %5900 = fsub fast float %5799, %5898
  %5901 = fcmp fast olt float %5899, 0.000000e+00
  %5902 = fcmp fast olt float %5900, 0.000000e+00
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5907 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %5908 = select i1 %5901, float %5904, float %5906
  %5909 = select i1 %5902, float %5905, float %5907
  %5910 = fmul fast float %5908, %5899
  %5911 = fmul fast float %5909, %5900
  %5912 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5913 = call float @dx.op.unary.f32(i32 6, float %5911)  ; FAbs(value)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5915 = call float @dx.op.binary.f32(i32 35, float %5912, float %5913)  ; FMax(a,b)
  %5916 = fsub fast float %5914, %5915
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = call float @dx.op.binary.f32(i32 36, float %5917, float %5895)  ; FMin(a,b)
  %5919 = fmul fast float %5918, %5829
  %5920 = fsub fast float %5891, %5919
  %5921 = fsub fast float %5892, %5891
  %5922 = fsub fast float %5921, %5919
  %5923 = call float @dx.op.binary.f32(i32 35, float %5891, float %5892)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5919, float %5923)  ; FMax(a,b)
  %5925 = fcmp fast olt float %5924, 1.000000e+00
  br i1 %5925, label %5926, label %6324, !dx.controlflow.hints !98

; <label>:5926                                    ; preds = %5890
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = fcmp fast une float %5928, 0.000000e+00
  br i1 %5929, label %5930, label %6324, !dx.controlflow.hints !99

; <label>:5930                                    ; preds = %5926
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5935 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5946 = fmul fast float %5932, %5772
  %5947 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5933, float %5946)  ; FMad(a,b,c)
  %5948 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5934, float %5947)  ; FMad(a,b,c)
  %5949 = fadd fast float %5948, %5935
  %5950 = fmul fast float %5937, %5772
  %5951 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5938, float %5950)  ; FMad(a,b,c)
  %5952 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5939, float %5951)  ; FMad(a,b,c)
  %5953 = fadd fast float %5952, %5940
  %5954 = fmul fast float %5942, %5772
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5943, float %5954)  ; FMad(a,b,c)
  %5956 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5944, float %5955)  ; FMad(a,b,c)
  %5957 = fadd fast float %5956, %5945
  %5958 = fcmp fast oge float %5949, 1.000000e+00
  %5959 = fcmp fast oge float %5953, 1.000000e+00
  %5960 = or i1 %5958, %5959
  %5961 = fcmp fast olt float %5949, 0.000000e+00
  %5962 = fcmp fast olt float %5953, 0.000000e+00
  %5963 = or i1 %5961, %5962
  %5964 = or i1 %5960, %5963
  br i1 %5964, label %6324, label %5965, !dx.controlflow.hints !100

; <label>:5965                                    ; preds = %5930
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.i32 %5970, 2
  %5972 = uitofp i32 %5971 to float
  %5973 = extractvalue %dx.types.CBufRet.i32 %5970, 3
  %5974 = uitofp i32 %5973 to float
  %5975 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5976 = fmul fast float %5975, 2.000000e+00
  %5977 = fsub fast float %5949, %5967
  %5978 = fsub fast float %5953, %5968
  %5979 = fmul fast float %5976, %5977
  %5980 = fmul fast float %5976, %5978
  %5981 = fdiv fast float 1.000000e+00, %5755
  %5982 = fmul fast float %5980, %5981
  %5983 = call float @dx.op.unary.f32(i32 6, float %5982)  ; FAbs(value)
  %5984 = fmul fast float %5969, %5774
  %5985 = fmul fast float %5984, %5976
  %5986 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %5987 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5986, float %5983)  ; FMax(a,b)
  %5989 = call float @dx.op.binary.f32(i32 35, float %5987, float %5988)  ; FMax(a,b)
  %5990 = fmul fast float %5989, 2.000000e+00
  %5991 = call float @dx.op.unary.f32(i32 23, float %5990)  ; Log(value)
  %5992 = call float @dx.op.binary.f32(i32 35, float %5991, float %5972)  ; FMax(a,b)
  %5993 = call float @dx.op.unary.f32(i32 22, float %5992)  ; Frc(value)
  %5994 = fadd fast float %5993, 0xBFEA666660000000
  %5995 = fmul fast float %5994, 8.000000e+00
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 27, float %5992)  ; Round_ni(value)
  %5998 = fadd fast float %5997, %5996
  %5999 = call float @dx.op.binary.f32(i32 36, float %5998, float %5974)  ; FMin(a,b)
  %6000 = call float @dx.op.unary.f32(i32 27, float %5999)  ; Round_ni(value)
  %6001 = fsub fast float -0.000000e+00, %6000
  %6002 = call float @dx.op.unary.f32(i32 21, float %6001)  ; Exp(value)
  %6003 = fmul fast float %6002, %5976
  %6004 = fmul fast float %6003, %5949
  %6005 = fmul fast float %6003, %5953
  %6006 = fmul fast float %6004, 2.500000e-01
  %6007 = fmul fast float %6005, 2.500000e-01
  %6008 = fadd fast float %6006, 5.000000e-01
  %6009 = fadd fast float %6007, 5.000000e-01
  %6010 = fsub fast float %5974, %5972
  %6011 = fptoui float %6010 to i32
  %6012 = add i32 %6011, 320
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6012)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.CBufRet.f32 %6013, 1
  %6016 = fcmp fast une float %5999, %5974
  %6017 = fsub fast float %5949, %6014
  %6018 = fsub fast float %5953, %6015
  %6019 = call float @dx.op.unary.f32(i32 6, float %6017)  ; FAbs(value)
  %6020 = call float @dx.op.unary.f32(i32 6, float %6018)  ; FAbs(value)
  %6021 = fmul fast float %6019, %6003
  %6022 = fmul fast float %6020, %6003
  %6023 = fcmp fast olt float %6021, 1.000000e+00
  %6024 = fcmp fast olt float %6022, 1.000000e+00
  %6025 = and i1 %6023, %6024
  %6026 = or i1 %6016, %6025
  br i1 %6026, label %6027, label %6324, !dx.controlflow.hints !101

; <label>:6027                                    ; preds = %5965
  %6028 = fmul fast float %6005, 5.000000e-01
  %6029 = fmul fast float %6004, 5.000000e-01
  %6030 = fadd fast float %6028, 5.000000e-01
  %6031 = fadd fast float %6029, 5.000000e-01
  %6032 = sitofp i32 %5971 to float
  %6033 = fsub fast float %5999, %6032
  %6034 = call float @dx.op.unary.f32(i32 27, float %6033)  ; Round_ni(value)
  %6035 = call float @dx.op.unary.f32(i32 22, float %5999)  ; Frc(value)
  %6036 = call float @dx.op.unary.f32(i32 22, float %6031)  ; Frc(value)
  %6037 = call float @dx.op.unary.f32(i32 22, float %6030)  ; Frc(value)
  %6038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6036, float %6037, float %6034, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6039 = extractvalue %dx.types.ResRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.ResRet.f32 %6038, 1
  %6041 = extractvalue %dx.types.ResRet.f32 %6038, 2
  %6042 = extractvalue %dx.types.ResRet.f32 %6038, 3
  %6043 = fcmp fast ogt float %6035, 0.000000e+00
  br i1 %6043, label %6044, label %6065, !dx.controlflow.hints !102

; <label>:6044                                    ; preds = %6027
  %6045 = fadd fast float %6034, 1.000000e+00
  %6046 = call float @dx.op.unary.f32(i32 22, float %6008)  ; Frc(value)
  %6047 = call float @dx.op.unary.f32(i32 22, float %6009)  ; Frc(value)
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6046, float %6047, float %6045, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.ResRet.f32 %6048, 3
  %6053 = fsub fast float %6049, %6039
  %6054 = fsub fast float %6050, %6040
  %6055 = fsub fast float %6051, %6041
  %6056 = fsub fast float %6052, %6042
  %6057 = fmul fast float %6053, %6035
  %6058 = fmul fast float %6054, %6035
  %6059 = fmul fast float %6055, %6035
  %6060 = fmul fast float %6056, %6035
  %6061 = fadd fast float %6057, %6039
  %6062 = fadd fast float %6058, %6040
  %6063 = fadd fast float %6059, %6041
  %6064 = fadd fast float %6060, %6042
  br label %6065

; <label>:6065                                    ; preds = %6044, %6027
  %6066 = phi float [ %6061, %6044 ], [ %6039, %6027 ]
  %6067 = phi float [ %6062, %6044 ], [ %6040, %6027 ]
  %6068 = phi float [ %6063, %6044 ], [ %6041, %6027 ]
  %6069 = phi float [ %6064, %6044 ], [ %6042, %6027 ]
  %6070 = fadd fast float %6066, -5.000000e-01
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fmul fast float %6070, 0xBFD5555560000000
  %6073 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6071, float %6072)  ; FMad(a,b,c)
  %6074 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6067, float 0.000000e+00)  ; FMad(a,b,c)
  %6075 = fadd fast float %6074, %6069
  %6076 = fmul fast float %6070, -7.500000e-01
  %6077 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6071, float %6076)  ; FMad(a,b,c)
  %6078 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6067, float 0.000000e+00)  ; FMad(a,b,c)
  %6079 = fadd fast float %6078, %6069
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6087 = fsub fast float %6083, %6073
  %6088 = fsub fast float %6084, %6075
  %6089 = fsub fast float %6085, %6077
  %6090 = fsub fast float %6086, %6079
  %6091 = fmul fast float %6087, %6081
  %6092 = fmul fast float %6088, %6081
  %6093 = fmul fast float %6089, %6081
  %6094 = fmul fast float %6090, %6081
  %6095 = fadd fast float %6091, %6073
  %6096 = fadd fast float %6092, %6075
  %6097 = fadd fast float %6093, %6077
  %6098 = fadd fast float %6094, %6079
  %6099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6100 = extractvalue %dx.types.ResRet.i32 %6099, 0
  %6101 = and i32 %6100, 536870911
  %6102 = uitofp i32 %6101 to float
  %6103 = fmul fast float %6102, %5949
  %6104 = fmul fast float %6102, %5953
  %6105 = fptoui float %6103 to i32
  %6106 = fptoui float %6104 to i32
  %6107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.i32 %6107, 0
  %6109 = and i32 %6108, 31
  %6110 = lshr i32 %6105, %6109
  %6111 = lshr i32 %6106, %6109
  %6112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.i32 %6112, 0
  %6114 = and i32 %6113, 31
  %6115 = shl i32 1, %6114
  %6116 = call i32 @dx.op.binary.i32(i32 40, i32 %6115, i32 4)  ; UMin(a,b)
  %6117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.i32 %6117, 0
  %6119 = extractvalue %dx.types.ResRet.i32 %6117, 1
  %6120 = icmp eq i32 %6116, 0
  br i1 %6120, label %6162, label %6121

; <label>:6121                                    ; preds = %6065
  br label %6122

; <label>:6122                                    ; preds = %6150, %6121
  %6123 = phi i32 [ %6153, %6150 ], [ 0, %6121 ]
  %6124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6125 = extractvalue %dx.types.ResRet.i32 %6124, 0
  %6126 = lshr i32 %6125, 16
  %6127 = and i32 %6126, 31
  %6128 = shl i32 %6111, %6127
  %6129 = add i32 %6128, %6110
  %6130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.i32 %6130, 0
  %6132 = and i32 %6131, 31
  %6133 = shl i32 %6129, %6132
  %6134 = add i32 %6133, %6123
  %6135 = shl i32 %6134, 2
  %6136 = add i32 %6135, 32
  %6137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6136, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.i32 %6137, 0
  %6139 = icmp slt i32 %6138, 0
  %6140 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6123
  %6141 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6123
  %6142 = bitcast float* %6140 to i32*
  %6143 = bitcast float* %6141 to i32*
  br i1 %6139, label %6144, label %6150

; <label>:6144                                    ; preds = %6122
  %6145 = and i32 %6138, 1073741823
  %6146 = add nuw nsw i32 %6145, 20
  %6147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6146, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.i32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.i32 %6147, 1
  br label %6150

; <label>:6150                                    ; preds = %6144, %6122
  %6151 = phi i32 [ %6148, %6144 ], [ %6118, %6122 ]
  %6152 = phi i32 [ %6149, %6144 ], [ %6119, %6122 ]
  store i32 %6151, i32* %6142, align 4
  store i32 %6152, i32* %6143, align 4
  %6153 = add nuw i32 %6123, 1
  %6154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.i32 %6154, 2
  %6156 = icmp eq i32 %6155, 0
  %6157 = icmp ugt i32 %6138, -1073741825
  %6158 = and i1 %6157, %6156
  %6159 = icmp ult i32 %6153, %6116
  %6160 = and i1 %6158, %6159
  br i1 %6160, label %6122, label %6161

; <label>:6161                                    ; preds = %6150
  br label %6162

; <label>:6162                                    ; preds = %6161, %6065
  %6163 = phi i32 [ 0, %6065 ], [ %6153, %6161 ]
  %6164 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %6165 = fptoui float %6164 to i32
  %6166 = icmp eq i32 %6165, 0
  br i1 %6166, label %6218, label %6167

; <label>:6167                                    ; preds = %6162
  br label %6168

; <label>:6168                                    ; preds = %6213, %6167
  %6169 = phi i32 [ %6214, %6213 ], [ %6163, %6167 ]
  %6170 = phi i32 [ %6215, %6213 ], [ 0, %6167 ]
  %6171 = lshr i32 %6170, 2
  %6172 = and i32 %6170, 3
  %6173 = add nuw nsw i32 %6171, 83
  %6174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6173)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.i32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.i32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.i32 %6174, 2
  %6178 = extractvalue %dx.types.CBufRet.i32 %6174, 3
  %6179 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6175, i32* %6179, align 4
  %6180 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6176, i32* %6180, align 4
  %6181 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6177, i32* %6181, align 4
  %6182 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6178, i32* %6182, align 4
  %6183 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6172
  %6184 = load i32, i32* %6183, align 4, !tbaa !103, !noalias !107
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = lshr i32 %6186, 16
  %6188 = and i32 %6187, 31
  %6189 = shl i32 %6111, %6188
  %6190 = add i32 %6189, %6110
  %6191 = shl i32 %6190, 2
  %6192 = add i32 %6191, %6184
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6192, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = icmp eq i32 %6194, 0
  br i1 %6195, label %6213, label %6196

; <label>:6196                                    ; preds = %6168
  %6197 = icmp slt i32 %6194, 0
  %6198 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6169
  %6199 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6169
  %6200 = bitcast float* %6198 to i32*
  %6201 = bitcast float* %6199 to i32*
  br i1 %6197, label %6202, label %6209

; <label>:6202                                    ; preds = %6196
  %6203 = and i32 %6194, 1073741823
  %6204 = add i32 %6184, 20
  %6205 = add i32 %6204, %6203
  %6206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.i32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.i32 %6206, 1
  br label %6209

; <label>:6209                                    ; preds = %6202, %6196
  %6210 = phi i32 [ %6207, %6202 ], [ %6118, %6196 ]
  %6211 = phi i32 [ %6208, %6202 ], [ %6119, %6196 ]
  store i32 %6210, i32* %6200, align 4
  store i32 %6211, i32* %6201, align 4
  %6212 = add i32 %6169, 1
  br label %6213

; <label>:6213                                    ; preds = %6209, %6168
  %6214 = phi i32 [ %6169, %6168 ], [ %6212, %6209 ]
  %6215 = add nuw i32 %6170, 1
  %6216 = icmp eq i32 %6215, %6165
  br i1 %6216, label %6217, label %6168

; <label>:6217                                    ; preds = %6213
  br label %6218

; <label>:6218                                    ; preds = %6217, %6162
  %6219 = phi i32 [ %6163, %6162 ], [ %6214, %6217 ]
  %6220 = icmp eq i32 %6219, 1
  %6221 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6222 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6220, label %6223, label %6226

; <label>:6223                                    ; preds = %6218
  %6224 = load float, float* %6221, align 4
  %6225 = load float, float* %6222, align 4
  br label %6253

; <label>:6226                                    ; preds = %6218
  %6227 = load float, float* %6221, align 4
  %6228 = load float, float* %6222, align 4
  %6229 = fdiv fast float 1.000000e+00, %6228
  %6230 = fsub fast float %6227, %6229
  %6231 = icmp ugt i32 %6219, 1
  br i1 %6231, label %6232, label %6248

; <label>:6232                                    ; preds = %6226
  br label %6233

; <label>:6233                                    ; preds = %6233, %6232
  %6234 = phi float [ %6243, %6233 ], [ %6230, %6232 ]
  %6235 = phi float [ %6244, %6233 ], [ %6227, %6232 ]
  %6236 = phi i32 [ %6245, %6233 ], [ 1, %6232 ]
  %6237 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6236
  %6238 = load float, float* %6237, align 4
  %6239 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6236
  %6240 = load float, float* %6239, align 4
  %6241 = fdiv fast float 1.000000e+00, %6240
  %6242 = fsub fast float %6238, %6241
  %6243 = call float @dx.op.binary.f32(i32 36, float %6234, float %6242)  ; FMin(a,b)
  %6244 = call float @dx.op.binary.f32(i32 35, float %6235, float %6238)  ; FMax(a,b)
  %6245 = add nuw i32 %6236, 1
  %6246 = icmp eq i32 %6245, %6219
  br i1 %6246, label %6247, label %6233

; <label>:6247                                    ; preds = %6233
  br label %6248

; <label>:6248                                    ; preds = %6247, %6226
  %6249 = phi float [ %6230, %6226 ], [ %6243, %6247 ]
  %6250 = phi float [ %6227, %6226 ], [ %6244, %6247 ]
  %6251 = fsub fast float %6250, %6249
  %6252 = fdiv fast float 1.000000e+00, %6251
  br label %6253

; <label>:6253                                    ; preds = %6248, %6223
  %6254 = phi float [ %6224, %6223 ], [ %6250, %6248 ]
  %6255 = phi float [ %6225, %6223 ], [ %6252, %6248 ]
  %6256 = fadd fast float %5957, %6254
  %6257 = fmul fast float %6256, %6255
  %6258 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6259 = fmul fast float %6258, 2.000000e+00
  %6260 = fsub fast float 1.000000e+00, %6259
  %6261 = fmul fast float %6095, %6095
  %6262 = fsub fast float %6096, %6261
  %6263 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6262)  ; FMax(a,b)
  %6264 = fdiv fast float 1.000000e+00, %6263
  %6265 = fmul fast float %6096, %6095
  %6266 = fsub fast float %6097, %6265
  %6267 = fsub fast float %6260, %6095
  %6268 = fmul fast float %6260, %6260
  %6269 = fsub fast float %6268, %6096
  %6270 = fmul fast float %6264, %6266
  %6271 = fmul fast float %6270, %6267
  %6272 = fsub fast float %6269, %6271
  %6273 = fmul fast float %6096, %6096
  %6274 = fsub fast float %6098, %6273
  %6275 = fmul fast float %6266, %6266
  %6276 = fmul fast float %6275, %6264
  %6277 = fsub fast float %6274, %6276
  %6278 = fdiv fast float %6272, %6277
  %6279 = fmul fast float %6278, %6266
  %6280 = fsub fast float %6267, %6279
  %6281 = fmul fast float %6280, %6264
  %6282 = fmul fast float %6281, %6095
  %6283 = fsub fast float 1.000000e+00, %6282
  %6284 = fmul fast float %6278, %6096
  %6285 = fsub fast float %6283, %6284
  %6286 = fmul fast float %6281, %6281
  %6287 = fmul fast float %6278, 4.000000e+00
  %6288 = fmul fast float %6287, %6285
  %6289 = fsub fast float %6286, %6288
  %6290 = call float @dx.op.unary.f32(i32 24, float %6289)  ; Sqrt(value)
  %6291 = fcmp fast oge float %6281, 0.000000e+00
  %6292 = fsub fast float -0.000000e+00, %6290
  %6293 = select i1 %6291, float %6292, float %6290
  %6294 = fsub fast float %6293, %6281
  %6295 = fdiv fast float %6294, %6278
  %6296 = fdiv fast float %6285, %6294
  %6297 = fmul fast float %6295, 5.000000e-01
  %6298 = fmul fast float %6296, 2.000000e+00
  %6299 = select i1 %6291, float %6297, float %6298
  %6300 = select i1 %6291, float %6298, float %6297
  %6301 = call float @dx.op.binary.f32(i32 35, float %6299, float %6300)  ; FMax(a,b)
  %6302 = call float @dx.op.binary.f32(i32 36, float %6299, float %6300)  ; FMin(a,b)
  %6303 = fcmp fast ogt float %6260, %6301
  %6304 = fsub fast float %6260, %6302
  %6305 = fsub fast float %6260, %6301
  %6306 = fsub fast float %6301, %6302
  %6307 = select i1 %6303, float %6305, float %6306
  %6308 = fmul float %6304, %6307
  %6309 = select i1 %6303, float %6302, float %6260
  %6310 = fcmp fast ogt float %6260, %6302
  %6311 = fmul fast float %6309, %6301
  %6312 = fadd fast float %6309, %6301
  %6313 = fmul fast float %6312, %6095
  %6314 = fadd fast float %6311, %6096
  %6315 = fsub fast float %6314, %6313
  %6316 = fdiv fast float %6315, %6308
  %6317 = select i1 %6310, float %6316, float 0.000000e+00
  %6318 = fsub fast float 1.000000e+00, %6317
  %6319 = select i1 %6303, float %6318, float %6317
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6322 = fmul fast float %6321, %6320
  %6323 = fsub fast float 1.000000e+00, %6322
  br label %6324

; <label>:6324                                    ; preds = %6253, %5965, %5930, %5926, %5890
  %6325 = phi float [ 1.000000e+00, %5890 ], [ %6323, %6253 ], [ 1.000000e+00, %5930 ], [ 1.000000e+00, %5965 ], [ 1.000000e+00, %5926 ]
  %6326 = fcmp fast ogt float %5922, 0.000000e+00
  br i1 %6326, label %6327, label %6335, !dx.controlflow.hints !116

; <label>:6327                                    ; preds = %6324
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 2
  %6330 = fadd fast float %6329, %5803
  %6331 = call float @dx.op.binary.f32(i32 35, float %6330, float 0.000000e+00)  ; FMax(a,b)
  %6332 = fadd fast float %6331, 0x3F10000000000000
  %6333 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5821, float %5822, float undef, float undef, i32 0, i32 0, i32 undef, float %6332)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  br label %6335

; <label>:6335                                    ; preds = %6327, %6324
  %6336 = phi float [ %6334, %6327 ], [ 1.000000e+00, %6324 ]
  %6337 = fcmp fast ogt float %5920, 0.000000e+00
  br i1 %6337, label %6338, label %6346, !dx.controlflow.hints !117

; <label>:6338                                    ; preds = %6335
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6341 = fadd fast float %6340, %5803
  %6342 = call float @dx.op.binary.f32(i32 35, float %6341, float 0.000000e+00)  ; FMax(a,b)
  %6343 = fadd fast float %6342, 0x3F10000000000000
  %6344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5813, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float %6343)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 0
  br label %6346

; <label>:6346                                    ; preds = %6338, %6335
  %6347 = phi float [ %6345, %6338 ], [ 1.000000e+00, %6335 ]
  %6348 = fcmp fast ogt float %5919, 0.000000e+00
  br i1 %6348, label %6349, label %6361, !dx.controlflow.hints !118

; <label>:6349                                    ; preds = %6346
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = fadd fast float %6351, %5803
  %6353 = call float @dx.op.binary.f32(i32 35, float %6352, float 0.000000e+00)  ; FMax(a,b)
  %6354 = fadd fast float %6353, 0x3F10000000000000
  br i1 %5806, label %6355, label %6358, !dx.controlflow.hints !119

; <label>:6355                                    ; preds = %6349
  %6356 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5795, float %5799, float undef, float undef, i32 0, i32 0, i32 undef, float %6354)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6357 = extractvalue %dx.types.ResRet.f32 %6356, 0
  br label %6361

; <label>:6358                                    ; preds = %6349
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5795, float %5799, float undef, float undef, i32 0, i32 0, i32 undef, float %6354)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  br label %6361

; <label>:6361                                    ; preds = %6358, %6355, %6346
  %6362 = phi float [ %6357, %6355 ], [ %6360, %6358 ], [ 1.000000e+00, %6346 ]
  %6363 = fsub fast float %6336, %6325
  %6364 = fmul fast float %6363, %5892
  %6365 = fadd fast float %6364, %6325
  %6366 = fsub fast float %6347, %6365
  %6367 = fmul fast float %6366, %5891
  %6368 = fadd fast float %6367, %6365
  %6369 = fsub fast float %6362, %6368
  %6370 = fmul fast float %6369, %5919
  %6371 = fadd fast float %6370, %6368
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6374 = fcmp fast ogt float %6373, 0.000000e+00
  br i1 %6374, label %6375, label %6415, !dx.controlflow.hints !120

; <label>:6375                                    ; preds = %6361
  %6376 = fcmp fast ugt float %6373, 0.000000e+00
  br i1 %6376, label %6377, label %6412

; <label>:6377                                    ; preds = %6375
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6388 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.CBufRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.CBufRet.f32 %6390, 2
  %6394 = fadd fast float %6391, %5772
  %6395 = fadd fast float %6392, %5773
  %6396 = fadd fast float %6393, %5774
  %6397 = fmul fast float %6394, %6379
  %6398 = call float @dx.op.tertiary.f32(i32 46, float %6380, float %6395, float %6397)  ; FMad(a,b,c)
  %6399 = call float @dx.op.tertiary.f32(i32 46, float %6381, float %6396, float %6398)  ; FMad(a,b,c)
  %6400 = fadd fast float %6399, %6382
  %6401 = fmul fast float %6394, %6384
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %6385, float %6395, float %6401)  ; FMad(a,b,c)
  %6403 = call float @dx.op.tertiary.f32(i32 46, float %6386, float %6396, float %6402)  ; FMad(a,b,c)
  %6404 = fadd fast float %6403, %6387
  %6405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6400, float %6404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = fmul fast float %6406, %6389
  %6408 = fadd fast float %6407, %6388
  %6409 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  %6410 = fmul fast float %6409, %6373
  %6411 = fsub fast float 1.000000e+00, %6410
  br label %6412

; <label>:6412                                    ; preds = %6377, %6375
  %6413 = phi float [ %6411, %6377 ], [ 1.000000e+00, %6375 ]
  %6414 = fmul fast float %6413, %6371
  br label %6415

; <label>:6415                                    ; preds = %6412, %6361, %5752
  %6416 = phi float [ 1.000000e+00, %5752 ], [ %6414, %6412 ], [ %6371, %6361 ]
  %6417 = call float @dx.op.binary.f32(i32 36, float %6416, float %6416)  ; FMin(a,b)
  %6418 = call float @dx.op.binary.f32(i32 36, float %6416, float %6417)  ; FMin(a,b)
  %6419 = fcmp fast ogt float %6418, 0.000000e+00
  br i1 %6419, label %6420, label %6580, !dx.controlflow.hints !121

; <label>:6420                                    ; preds = %6415
  %6421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6421, 0
  %6423 = extractvalue %dx.types.CBufRet.f32 %6421, 1
  %6424 = extractvalue %dx.types.CBufRet.f32 %6421, 2
  %6425 = extractvalue %dx.types.CBufRet.f32 %6421, 3
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.CBufRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6430 = extractvalue %dx.types.CBufRet.f32 %6426, 3
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = fmul fast float %6422, %5772
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %6423, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %6424, float %6437)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6425
  %6440 = fmul fast float %6427, %5772
  %6441 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %6428, float %6440)  ; FMad(a,b,c)
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %6429, float %6441)  ; FMad(a,b,c)
  %6443 = fadd fast float %6442, %6430
  %6444 = fmul fast float %6432, %5772
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %6433, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %6434, float %6445)  ; FMad(a,b,c)
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6447, 3
  %6451 = fmul fast float %6450, %6439
  %6452 = fmul fast float %6450, %6443
  %6453 = fadd fast float %6451, %6448
  %6454 = fadd fast float %6452, %6449
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6458 = fsub fast float %6453, %6456
  %6459 = fsub fast float %6454, %6457
  %6460 = fcmp fast olt float %6458, 0.000000e+00
  %6461 = fcmp fast olt float %6459, 0.000000e+00
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6462, 2
  %6466 = extractvalue %dx.types.CBufRet.f32 %6462, 3
  %6467 = select i1 %6460, float %6463, float %6465
  %6468 = select i1 %6461, float %6464, float %6466
  %6469 = fmul fast float %6467, %6458
  %6470 = fmul fast float %6468, %6459
  %6471 = call float @dx.op.unary.f32(i32 6, float %6469)  ; FAbs(value)
  %6472 = call float @dx.op.unary.f32(i32 6, float %6470)  ; FAbs(value)
  %6473 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %6474 = call float @dx.op.binary.f32(i32 35, float %6471, float %6472)  ; FMax(a,b)
  %6475 = fsub fast float %6473, %6474
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %6477, label %6478, label %6519, !dx.controlflow.hints !122

; <label>:6478                                    ; preds = %6420
  %6479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6453, float %6454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6481 = fcmp fast ogt float %6480, 0.000000e+00
  br i1 %6481, label %6482, label %6514

; <label>:6482                                    ; preds = %6478
  %6483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6453, float %6454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.ResRet.f32 %6483, 3
  %6488 = fsub fast float 1.000000e+00, %6435
  %6489 = fsub fast float %6488, %6446
  %6490 = fmul fast float %6489, 0x400921FB60000000
  %6491 = fadd fast float %6490, 0x3FF921FB60000000
  %6492 = call float @dx.op.unary.f32(i32 13, float %6491)  ; Sin(value)
  %6493 = fadd fast float %6492, -1.000000e+00
  %6494 = fmul fast float %6493, 0x3FD45F3060000000
  %6495 = fmul fast float %6489, 0x401921FB60000000
  %6496 = fadd fast float %6495, 0x400921FB60000000
  %6497 = call float @dx.op.unary.f32(i32 13, float %6496)  ; Sin(value)
  %6498 = fadd fast float %6497, 0x3E7777A5C0000000
  %6499 = fmul fast float %6498, 0x3FC45F3060000000
  %6500 = fmul fast float %6489, 0x4022D97C80000000
  %6501 = fadd fast float %6500, 0x4012D97C80000000
  %6502 = call float @dx.op.unary.f32(i32 13, float %6501)  ; Sin(value)
  %6503 = fadd fast float %6502, 1.000000e+00
  %6504 = fmul fast float %6503, 0x3FBB2995E0000000
  %6505 = fmul fast float %6489, 0x402921FB60000000
  %6506 = fadd fast float %6505, 0x401921FB60000000
  %6507 = call float @dx.op.unary.f32(i32 13, float %6506)  ; Sin(value)
  %6508 = fadd fast float %6507, 0xBE8777A5C0000000
  %6509 = fmul fast float %6508, 0x3FB45F3060000000
  %6510 = call float @dx.op.dot4.f32(i32 56, float %6484, float %6485, float %6486, float %6487, float %6494, float %6499, float %6504, float %6509)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6511 = fmul fast float %6510, 0xBFF7154760000000
  %6512 = call float @dx.op.unary.f32(i32 21, float %6511)  ; Exp(value)
  %6513 = call float @dx.op.unary.f32(i32 7, float %6512)  ; Saturate(value)
  br label %6514

; <label>:6514                                    ; preds = %6482, %6478
  %6515 = phi float [ %6513, %6482 ], [ 1.000000e+00, %6478 ]
  %6516 = fadd fast float %6515, -1.000000e+00
  %6517 = fmul fast float %6516, %6476
  %6518 = fadd fast float %6517, 1.000000e+00
  br label %6519

; <label>:6519                                    ; preds = %6514, %6420
  %6520 = phi float [ %6518, %6514 ], [ 1.000000e+00, %6420 ]
  %6521 = fmul fast float %6520, %6416
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.CBufRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.CBufRet.f32 %6522, 2
  %6526 = fadd fast float %6523, %197
  %6527 = fadd fast float %6524, %198
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6530 = fsub fast float -0.000000e+00, %6526
  %6531 = fsub fast float -0.000000e+00, %6527
  %6532 = fsub fast float %5464, %6525
  %6533 = fadd fast float %6532, %6529
  %6534 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6530, float %6531, float %6533)  ; Dot3(ax,ay,az,bx,by,bz)
  %6535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %6536 = fdiv fast float 1.000000e+00, %6535
  %6537 = fmul fast float %6536, %6534
  %6538 = fmul fast float %5753, %6537
  %6539 = fmul fast float %5754, %6537
  %6540 = fadd fast float %6538, %6526
  %6541 = fadd fast float %6539, %6527
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = fsub fast float %6540, %6543
  %6546 = fsub fast float %6541, %6544
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6550 = fmul fast float %6545, %6548
  %6551 = fmul fast float %6546, %6549
  %6552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.i32 %6552, 3
  %6554 = icmp eq i32 %6553, 0
  br i1 %6554, label %6560, label %6555

; <label>:6555                                    ; preds = %6519
  %6556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6550, float %6551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6557 = extractvalue %dx.types.ResRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.ResRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.ResRet.f32 %6556, 2
  br label %6565

; <label>:6560                                    ; preds = %6519
  %6561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6550, float %6551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6562 = extractvalue %dx.types.ResRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.ResRet.f32 %6561, 1
  %6564 = extractvalue %dx.types.ResRet.f32 %6561, 2
  br label %6565

; <label>:6565                                    ; preds = %6560, %6555
  %6566 = phi float [ %6557, %6555 ], [ %6562, %6560 ]
  %6567 = phi float [ %6558, %6555 ], [ %6563, %6560 ]
  %6568 = phi float [ %6559, %6555 ], [ %6564, %6560 ]
  %6569 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6570 = fmul fast float %6569, %6566
  %6571 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6572 = fsub fast float %6537, %6571
  %6573 = fsub fast float %6572, %6570
  %6574 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6573)  ; FMax(a,b)
  %6575 = fmul fast float %6574, %6567
  %6576 = call float @dx.op.binary.f32(i32 36, float %6568, float %6575)  ; FMin(a,b)
  %6577 = fmul fast float %6576, 0xBFF7154760000000
  %6578 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6579 = fmul fast float %6521, %6578
  br label %6580

; <label>:6580                                    ; preds = %6565, %6415
  %6581 = phi float [ %6579, %6565 ], [ %6416, %6415 ]
  %6582 = call float @dx.op.binary.f32(i32 36, float %6581, float %6581)  ; FMin(a,b)
  %6583 = call float @dx.op.binary.f32(i32 36, float %6581, float %6582)  ; FMin(a,b)
  %6584 = fcmp fast ogt float %6583, 0.000000e+00
  br i1 %6584, label %6585, label %6836, !dx.controlflow.hints !123

; <label>:6585                                    ; preds = %6580
  %6586 = fmul fast float %6581, %5764
  %6587 = fmul fast float %6581, %5765
  %6588 = fmul fast float %6581, %5766
  %6589 = fsub fast float %199, %4641
  %6590 = fcmp fast ogt float %6589, 0.000000e+00
  %6591 = fmul fast float %5753, 5.120000e+02
  %6592 = fmul fast float %5754, 5.120000e+02
  %6593 = fmul fast float %5755, 5.120000e+02
  %6594 = fadd fast float %6593, %199
  %6595 = fsub fast float %4641, %6594
  %6596 = fmul fast float %6595, 2.000000e+00
  %6597 = fadd fast float %6596, %6594
  %6598 = select i1 %6590, float %6597, float %6594
  %6599 = fsub fast float %6598, %199
  %6600 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6599, float %6591, float %6592, float %6599)  ; Dot3(ax,ay,az,bx,by,bz)
  %6601 = call float @dx.op.unary.f32(i32 25, float %6600)  ; Rsqrt(value)
  %6602 = fmul fast float %6601, %6591
  %6603 = fmul fast float %6601, %6592
  %6604 = fmul fast float %6601, %6599
  %6605 = fsub fast float %4641, %199
  %6606 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6607 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6602, float %6603, float %6604)  ; Dot3(ax,ay,az,bx,by,bz)
  %6608 = fdiv fast float 1.000000e+00, %6607
  %6609 = fmul fast float %6608, %6606
  %6610 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6589, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6611 = fcmp fast ogt float %6610, 0.000000e+00
  %6612 = fcmp fast olt float %6610, 0.000000e+00
  %6613 = zext i1 %6611 to i32
  %6614 = zext i1 %6612 to i32
  %6615 = sub nsw i32 %6613, %6614
  %6616 = sitofp i32 %6615 to float
  %6617 = fsub fast float %6598, %4641
  %6618 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6617, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6619 = fcmp fast ogt float %6618, 0.000000e+00
  %6620 = fcmp fast olt float %6618, 0.000000e+00
  %6621 = zext i1 %6619 to i32
  %6622 = zext i1 %6620 to i32
  %6623 = sub nsw i32 %6621, %6622
  %6624 = sitofp i32 %6623 to float
  %6625 = fcmp fast une float %6616, %6624
  br i1 %6625, label %6626, label %6636

; <label>:6626                                    ; preds = %6585
  %6627 = fmul fast float %6609, %6604
  %6628 = fmul fast float %6609, %6603
  %6629 = fmul fast float %6609, %6602
  %6630 = fmul fast float %6629, %6629
  %6631 = fmul fast float %6628, %6628
  %6632 = fadd fast float %6630, %6631
  %6633 = fmul fast float %6627, %6627
  %6634 = fadd fast float %6632, %6633
  %6635 = call float @dx.op.unary.f32(i32 24, float %6634)  ; Sqrt(value)
  br label %6646

; <label>:6636                                    ; preds = %6585
  %6637 = icmp slt i32 %6615, 0
  br i1 %6637, label %6638, label %6646

; <label>:6638                                    ; preds = %6636
  %6639 = fsub fast float %199, %6598
  %6640 = fmul fast float %6591, %6591
  %6641 = fmul fast float %6592, %6592
  %6642 = fadd fast float %6640, %6641
  %6643 = fmul fast float %6639, %6639
  %6644 = fadd fast float %6642, %6643
  %6645 = call float @dx.op.unary.f32(i32 24, float %6644)  ; Sqrt(value)
  br label %6646

; <label>:6646                                    ; preds = %6638, %6636, %6626
  %6647 = phi float [ %6635, %6626 ], [ %6645, %6638 ], [ 0.000000e+00, %6636 ]
  %6648 = fsub fast float -0.000000e+00, %6647
  %6649 = select i1 %6590, float -0.000000e+00, float %6648
  %6650 = fmul fast float %4642, 0x3FF7154760000000
  %6651 = fmul fast float %6650, %6649
  %6652 = fmul fast float %4643, 0x3FF7154760000000
  %6653 = fmul fast float %6652, %6649
  %6654 = fmul fast float %4644, 0x3FF7154760000000
  %6655 = fmul fast float %6654, %6649
  %6656 = call float @dx.op.unary.f32(i32 21, float %6651)  ; Exp(value)
  %6657 = call float @dx.op.unary.f32(i32 21, float %6653)  ; Exp(value)
  %6658 = call float @dx.op.unary.f32(i32 21, float %6655)  ; Exp(value)
  %6659 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6660 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  %6661 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6662 = fmul fast float %6586, %6659
  %6663 = fmul fast float %6587, %6660
  %6664 = fmul fast float %6588, %6661
  %6665 = fsub fast float %5753, %5467
  %6666 = fsub fast float %5754, %5468
  %6667 = fsub fast float %5755, %5469
  %6668 = call float @dx.op.dot3.f32(i32 55, float %6665, float %6666, float %6667, float %6665, float %6666, float %6667)  ; Dot3(ax,ay,az,bx,by,bz)
  %6669 = call float @dx.op.unary.f32(i32 25, float %6668)  ; Rsqrt(value)
  %6670 = fmul fast float %6669, %6665
  %6671 = fmul fast float %6669, %6666
  %6672 = fmul fast float %6669, %6667
  %6673 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %6674 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %6670, float %6671, float %6672)  ; Dot3(ax,ay,az,bx,by,bz)
  %6675 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6676 = fmul fast float %6675, %6675
  %6677 = fmul fast float %6676, %5488
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = fmul fast float %6678, %6675
  %6680 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %6670, float %6671, float %6672)  ; Dot3(ax,ay,az,bx,by,bz)
  %6681 = fmul fast float %6680, %6680
  %6682 = call float @dx.op.unary.f32(i32 6, float %6673)  ; FAbs(value)
  %6683 = fsub fast float 1.000000e+00, %5430
  %6684 = call float @dx.op.binary.f32(i32 35, float %6683, float 0x3F847AE140000000)  ; FMax(a,b)
  %6685 = fmul fast float %6684, %6684
  %6686 = fmul fast float %6685, %6685
  %6687 = fsub fast float 1.000000e+00, %6686
  %6688 = fmul fast float %5475, %5475
  %6689 = fmul fast float %6688, %6687
  %6690 = fadd fast float %6689, %6686
  %6691 = bitcast float %6690 to i32
  %6692 = ashr i32 %6691, 1
  %6693 = add nsw i32 %6692, 532487669
  %6694 = bitcast i32 %6693 to float
  %6695 = fadd fast float %6694, %5475
  %6696 = fmul fast float %6686, %6681
  %6697 = fsub fast float 1.000000e+00, %6681
  %6698 = fadd fast float %6697, %6696
  %6699 = fmul fast float %6682, %6682
  %6700 = fmul fast float %6699, %6687
  %6701 = fadd fast float %6700, %6686
  %6702 = bitcast float %6701 to i32
  %6703 = ashr i32 %6702, 1
  %6704 = add nsw i32 %6703, 532487669
  %6705 = bitcast i32 %6704 to float
  %6706 = fadd fast float %6705, %6682
  %6707 = fmul fast float %6698, %6698
  %6708 = fmul fast float %6707, %6695
  %6709 = fmul fast float %6708, %6706
  %6710 = fdiv fast float 0x3FF0A00000000000, %6709
  %6711 = fmul fast float %6710, %6686
  %6712 = call float @dx.op.unary.f32(i32 6, float %6674)  ; FAbs(value)
  %6713 = fsub fast float 1.000000e+00, %6712
  %6714 = bitcast float %6713 to i32
  %6715 = sitofp i32 %6714 to float
  %6716 = fmul fast float %6715, 5.000000e+00
  %6717 = fadd fast float %6716, 0xC1EFBF8940000000
  %6718 = fptosi float %6717 to i32
  %6719 = bitcast i32 %6718 to float
  %6720 = fsub fast float 1.000000e+00, %5424
  %6721 = fsub fast float 1.000000e+00, %5425
  %6722 = fsub fast float 1.000000e+00, %5473
  %6723 = fmul fast float %6719, %6720
  %6724 = fmul fast float %6719, %6721
  %6725 = fmul fast float %6719, %6722
  %6726 = fadd fast float %6723, %5424
  %6727 = fadd fast float %6724, %5425
  %6728 = fadd fast float %6725, %5473
  br i1 %5604, label %6729, label %6752

; <label>:6729                                    ; preds = %6646
  %6730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4239, float %6712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6731 = extractvalue %dx.types.ResRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.ResRet.f32 %6730, 1
  %6733 = extractvalue %dx.types.ResRet.f32 %6730, 2
  %6734 = fadd fast float %6731, -5.000000e-01
  %6735 = fadd fast float %6732, -5.000000e-01
  %6736 = fadd fast float %6733, -5.000000e-01
  %6737 = fmul fast float %5424, 4.000000e+00
  %6738 = fmul fast float %6737, %6720
  %6739 = fmul fast float %6738, %6734
  %6740 = fmul fast float %5425, 4.000000e+00
  %6741 = fmul fast float %6740, %6721
  %6742 = fmul fast float %6741, %6735
  %6743 = fmul fast float %5473, 4.000000e+00
  %6744 = fmul fast float %6743, %6722
  %6745 = fmul fast float %6744, %6736
  %6746 = fadd fast float %6739, %6726
  %6747 = fadd fast float %6742, %6727
  %6748 = fadd fast float %6745, %6728
  %6749 = call float @dx.op.unary.f32(i32 7, float %6746)  ; Saturate(value)
  %6750 = call float @dx.op.unary.f32(i32 7, float %6747)  ; Saturate(value)
  %6751 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  br label %6752

; <label>:6752                                    ; preds = %6729, %6646
  %6753 = phi float [ %6749, %6729 ], [ %6726, %6646 ]
  %6754 = phi float [ %6750, %6729 ], [ %6727, %6646 ]
  %6755 = phi float [ %6751, %6729 ], [ %6728, %6646 ]
  %6756 = fmul fast float %6673, 9.843750e-01
  %6757 = fadd fast float %6756, 7.812500e-03
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6757, float %5594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 2
  %6760 = extractvalue %dx.types.ResRet.f32 %6758, 3
  %6761 = fmul fast float %6759, %5424
  %6762 = fmul fast float %6759, %5425
  %6763 = fmul fast float %6759, %5473
  %6764 = fadd fast float %6761, %6760
  %6765 = fadd fast float %6762, %6760
  %6766 = fadd fast float %6763, %6760
  br i1 %5604, label %6767, label %6790

; <label>:6767                                    ; preds = %6752
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4239, float %6673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = fadd fast float %6769, -5.000000e-01
  %6773 = fadd fast float %6770, -5.000000e-01
  %6774 = fadd fast float %6771, -5.000000e-01
  %6775 = fmul fast float %5424, 4.000000e+00
  %6776 = fmul fast float %6775, %6720
  %6777 = fmul fast float %6776, %6772
  %6778 = fmul fast float %5425, 4.000000e+00
  %6779 = fmul fast float %6778, %6721
  %6780 = fmul fast float %6779, %6773
  %6781 = fmul fast float %5473, 4.000000e+00
  %6782 = fmul fast float %6781, %6722
  %6783 = fmul fast float %6782, %6774
  %6784 = fadd fast float %6777, %6764
  %6785 = fadd fast float %6780, %6765
  %6786 = fadd fast float %6783, %6766
  %6787 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6788 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6789 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  br label %6790

; <label>:6790                                    ; preds = %6767, %6752
  %6791 = phi float [ %6787, %6767 ], [ %6764, %6752 ]
  %6792 = phi float [ %6788, %6767 ], [ %6765, %6752 ]
  %6793 = phi float [ %6789, %6767 ], [ %6766, %6752 ]
  %6794 = call float @dx.op.binary.f32(i32 35, float %6792, float %6793)  ; FMax(a,b)
  %6795 = call float @dx.op.binary.f32(i32 35, float %6791, float %6794)  ; FMax(a,b)
  %6796 = fsub fast float 1.000000e+00, %6795
  %6797 = fmul fast float %6753, %6711
  %6798 = fmul fast float %6754, %6711
  %6799 = fmul fast float %6755, %6711
  %6800 = fsub fast float 1.000000e+00, %6674
  %6801 = bitcast float %6800 to i32
  %6802 = sitofp i32 %6801 to float
  %6803 = fmul fast float %6802, 5.000000e+00
  %6804 = fadd fast float %6803, 0xC1EFBF8940000000
  %6805 = fptosi float %6804 to i32
  %6806 = bitcast i32 %6805 to float
  %6807 = fmul fast float %6806, %4240
  %6808 = fmul fast float %6796, %6807
  %6809 = fmul fast float %6808, %5707
  %6810 = fmul fast float %6808, %5708
  %6811 = fmul fast float %6808, %5709
  %6812 = fadd fast float %6809, %6797
  %6813 = fadd fast float %6810, %6798
  %6814 = fadd fast float %6811, %6799
  %6815 = fmul fast float %6679, %6662
  %6816 = fmul fast float %6815, %6796
  %6817 = fmul fast float %6679, %6663
  %6818 = fmul fast float %6817, %6796
  %6819 = fmul fast float %6679, %6664
  %6820 = fmul fast float %6819, %6796
  %6821 = fmul fast float %6815, %6812
  %6822 = fmul fast float %6817, %6813
  %6823 = fmul fast float %6819, %6814
  %6824 = fadd fast float %6816, %5689
  %6825 = fmul fast float %6824, %4236
  %6826 = fadd fast float %6818, %5691
  %6827 = fmul fast float %6826, %4236
  %6828 = fadd fast float %6820, %5693
  %6829 = fmul fast float %6828, %4236
  %6830 = fadd fast float %6821, %5741
  %6831 = fmul fast float %6830, %4236
  %6832 = fadd fast float %6822, %5744
  %6833 = fmul fast float %6832, %4236
  %6834 = fadd fast float %6823, %5747
  %6835 = fmul fast float %6834, %4236
  br label %6836

; <label>:6836                                    ; preds = %6790, %6580, %5631
  %6837 = phi float [ %5742, %5631 ], [ %5742, %6580 ], [ %6831, %6790 ]
  %6838 = phi float [ %5745, %5631 ], [ %5745, %6580 ], [ %6833, %6790 ]
  %6839 = phi float [ %5748, %5631 ], [ %5748, %6580 ], [ %6835, %6790 ]
  %6840 = phi float [ %5737, %5631 ], [ %5737, %6580 ], [ %6825, %6790 ]
  %6841 = phi float [ %5738, %5631 ], [ %5738, %6580 ], [ %6827, %6790 ]
  %6842 = phi float [ %5739, %5631 ], [ %5739, %6580 ], [ %6829, %6790 ]
  %6843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.i32 %6843, 0
  %6845 = icmp eq i32 %6844, 0
  br i1 %6845, label %7466, label %6846

; <label>:6846                                    ; preds = %6836
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 2
  %6849 = extractvalue %dx.types.CBufRet.f32 %6847, 3
  %6850 = fmul fast float %6848, %110
  %6851 = fmul fast float %6849, %111
  %6852 = fptoui float %6850 to i32
  %6853 = fptoui float %6851 to i32
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 0
  %6856 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6854, 3
  %6858 = fadd fast float %101, -4.000000e+00
  %6859 = call float @dx.op.binary.f32(i32 35, float %6858, float 0.000000e+00)  ; FMax(a,b)
  %6860 = fadd fast float %6859, %6855
  %6861 = fmul fast float %6860, %6856
  %6862 = call float @dx.op.unary.f32(i32 23, float %6861)  ; Log(value)
  %6863 = fmul fast float %6862, %6857
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6866 = fmul fast float %6863, %6865
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.i32 %6868, 1
  %6870 = add i32 %6869, -1
  %6871 = uitofp i32 %6869 to float
  %6872 = fmul fast float %6871, %6867
  %6873 = fptoui float %6872 to i32
  %6874 = call i32 @dx.op.binary.i32(i32 40, i32 %6873, i32 %6870)  ; UMin(a,b)
  %6875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.i32 %6875, 2
  %6877 = extractvalue %dx.types.CBufRet.i32 %6875, 3
  %6878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6853, i32 %6876, i32 %6852)  ; UMad(a,b,c)
  %6879 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6874, i32 %6877, i32 %6878)  ; UMad(a,b,c)
  %6880 = add nsw i32 %6844, -1
  %6881 = call i32 @dx.op.binary.i32(i32 37, i32 %6880, i32 0)  ; IMax(a,b)
  %6882 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %6883 = fptoui float %6882 to i32
  %6884 = lshr i32 %6883, 5
  %6885 = call i32 @dx.op.binary.i32(i32 40, i32 %6884, i32 8191)  ; UMin(a,b)
  %6886 = shl i32 %6885, 2
  %6887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6886, i32 undef)  ; BufferLoad(srv,index,wot)
  %6888 = extractvalue %dx.types.ResRet.i32 %6887, 0
  %6889 = lshr i32 %6888, 16
  %6890 = and i32 %6888, 65535
  %6891 = lshr i32 %6888, 21
  %6892 = lshr i32 %6890, 5
  %6893 = call i32 @dx.op.binary.i32(i32 40, i32 %6892, i32 %6881)  ; UMin(a,b)
  %6894 = icmp ugt i32 %6891, %6893
  br i1 %6894, label %7466, label %6895

; <label>:6895                                    ; preds = %6846
  br label %6896

; <label>:6896                                    ; preds = %7456, %6895
  %6897 = phi i32 [ %7463, %7456 ], [ %6891, %6895 ]
  %6898 = phi float [ %7457, %7456 ], [ %6837, %6895 ]
  %6899 = phi float [ %7458, %7456 ], [ %6838, %6895 ]
  %6900 = phi float [ %7459, %7456 ], [ %6839, %6895 ]
  %6901 = phi float [ %7460, %7456 ], [ %6840, %6895 ]
  %6902 = phi float [ %7461, %7456 ], [ %6841, %6895 ]
  %6903 = phi float [ %7462, %7456 ], [ %6842, %6895 ]
  %6904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.i32 %6904, 0
  %6906 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6879, i32 %6905, i32 %6897)  ; UMad(a,b,c)
  %6907 = shl i32 %6906, 2
  %6908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6907, i32 undef)  ; BufferLoad(srv,index,wot)
  %6909 = extractvalue %dx.types.ResRet.i32 %6908, 0
  %6910 = shl i32 %6897, 5
  %6911 = sub nsw i32 %6889, %6910
  %6912 = call i32 @dx.op.binary.i32(i32 37, i32 %6911, i32 0)  ; IMax(a,b)
  %6913 = call i32 @dx.op.binary.i32(i32 38, i32 %6912, i32 31)  ; IMin(a,b)
  %6914 = sub nsw i32 1, %6889
  %6915 = add nsw i32 %6914, %6890
  %6916 = call i32 @dx.op.binary.i32(i32 37, i32 %6915, i32 0)  ; IMax(a,b)
  %6917 = call i32 @dx.op.binary.i32(i32 38, i32 %6916, i32 32)  ; IMin(a,b)
  %6918 = and i32 %6917, 31
  %6919 = shl i32 -1, %6918
  %6920 = xor i32 %6919, -1
  %6921 = and i32 %6913, 31
  %6922 = shl i32 %6920, %6921
  %6923 = icmp eq i32 %6917, 32
  %6924 = select i1 %6923, i32 -1, i32 %6922
  %6925 = and i32 %6924, %6909
  %6926 = icmp eq i32 %6925, 0
  br i1 %6926, label %7456, label %6927

; <label>:6927                                    ; preds = %6896
  br label %6928

; <label>:6928                                    ; preds = %7062, %6927
  %6929 = phi i32 [ %6940, %7062 ], [ %6925, %6927 ]
  %6930 = phi float [ %7063, %7062 ], [ %6898, %6927 ]
  %6931 = phi float [ %7064, %7062 ], [ %6899, %6927 ]
  %6932 = phi float [ %7065, %7062 ], [ %6900, %6927 ]
  %6933 = phi float [ %7066, %7062 ], [ %6901, %6927 ]
  %6934 = phi float [ %7067, %7062 ], [ %6902, %6927 ]
  %6935 = phi float [ %7068, %7062 ], [ %6903, %6927 ]
  %6936 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6929)  ; FirstbitLo(value)
  %6937 = add i32 %6936, %6910
  %6938 = and i32 %6936, 31
  %6939 = shl i32 1, %6938
  %6940 = xor i32 %6939, %6929
  %6941 = mul i32 %6937, 112
  %6942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6941, i32 undef)  ; BufferLoad(srv,index,wot)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 1
  %6945 = extractvalue %dx.types.ResRet.f32 %6942, 2
  %6946 = or i32 %6941, 12
  %6947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6946, i32 undef)  ; BufferLoad(srv,index,wot)
  %6948 = extractvalue %dx.types.ResRet.f32 %6947, 0
  %6949 = add i32 %6941, 16
  %6950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6949, i32 undef)  ; BufferLoad(srv,index,wot)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6950, 2
  %6954 = add i32 %6941, 28
  %6955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6956 = extractvalue %dx.types.ResRet.i32 %6955, 0
  %6957 = add i32 %6941, 44
  %6958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6957, i32 undef)  ; BufferLoad(srv,index,wot)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = add i32 %6941, 48
  %6961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6960, i32 undef)  ; BufferLoad(srv,index,wot)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = extractvalue %dx.types.ResRet.f32 %6961, 1
  %6964 = extractvalue %dx.types.ResRet.f32 %6961, 2
  %6965 = extractvalue %dx.types.ResRet.f32 %6961, 3
  %6966 = add i32 %6941, 64
  %6967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6966, i32 undef)  ; BufferLoad(srv,index,wot)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = extractvalue %dx.types.ResRet.f32 %6967, 3
  %6972 = add i32 %6941, 80
  %6973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6972, i32 undef)  ; BufferLoad(srv,index,wot)
  %6974 = extractvalue %dx.types.ResRet.f32 %6973, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6973, 2
  %6976 = add i32 %6941, 92
  %6977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6976, i32 undef)  ; BufferLoad(srv,index,wot)
  %6978 = extractvalue %dx.types.ResRet.i32 %6977, 0
  %6979 = call float @dx.op.dot3.f32(i32 55, float %6943, float %6944, float %6945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = select i1 %269, float %6974, float %6943
  %6981 = select i1 %269, float %6979, float %6944
  %6982 = select i1 %269, float %6975, float %6945
  %6983 = and i32 %6978, 65535
  %6984 = uitofp i32 %6983 to float
  %6985 = lshr i32 %6978, 16
  %6986 = uitofp i32 %6985 to float
  %6987 = and i32 %6956, 65535
  %6988 = and i32 %6956, 50331648
  %6989 = icmp eq i32 %6988, 33554432
  %6990 = fsub fast float %6962, %197
  %6991 = fsub fast float %6963, %198
  %6992 = fsub fast float %6964, %199
  %6993 = call float @dx.op.dot3.f32(i32 55, float %6990, float %6991, float %6992, float %6990, float %6991, float %6992)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = call float @dx.op.unary.f32(i32 24, float %6993)  ; Sqrt(value)
  %6995 = fdiv fast float 1.000000e+00, %6994
  %6996 = fmul fast float %6995, %6990
  %6997 = fmul fast float %6995, %6991
  %6998 = fmul fast float %6995, %6992
  %6999 = fadd fast float %6994, %6948
  %7000 = fdiv fast float 1.000000e+00, %6999
  %7001 = fmul float %6959, %7000
  %7002 = fmul float %7001, %7001
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  br i1 %6989, label %7004, label %7025

; <label>:7004                                    ; preds = %6928
  %7005 = fmul fast float %6970, %6951
  %7006 = fmul fast float %6970, %6952
  %7007 = fmul fast float %6970, %6953
  %7008 = fadd fast float %6990, %7005
  %7009 = fadd fast float %6991, %7006
  %7010 = fadd fast float %6992, %7007
  %7011 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7009, float %7010, float %7008, float %7009, float %7010)  ; Dot3(ax,ay,az,bx,by,bz)
  %7012 = call float @dx.op.unary.f32(i32 25, float %7011)  ; Rsqrt(value)
  %7013 = fmul fast float %7012, %7008
  %7014 = fmul fast float %7012, %7009
  %7015 = fmul fast float %7012, %7010
  %7016 = fsub fast float %197, %6962
  %7017 = fsub fast float %198, %6963
  %7018 = fsub fast float %199, %6964
  %7019 = fsub fast float -0.000000e+00, %7016
  %7020 = fsub fast float -0.000000e+00, %7017
  %7021 = fsub fast float -0.000000e+00, %7018
  %7022 = call float @dx.op.dot3.f32(i32 55, float %7019, float %7020, float %7021, float %6951, float %6952, float %6953)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = fcmp fast ogt float %7022, 0.000000e+00
  %7024 = uitofp i1 %7023 to float
  br label %7025

; <label>:7025                                    ; preds = %7004, %6928
  %7026 = phi float [ %7024, %7004 ], [ 1.000000e+00, %6928 ]
  %7027 = phi float [ %7013, %7004 ], [ %6996, %6928 ]
  %7028 = phi float [ %7014, %7004 ], [ %6997, %6928 ]
  %7029 = phi float [ %7015, %7004 ], [ %6998, %6928 ]
  %7030 = call float @dx.op.dot3.f32(i32 55, float %6951, float %6952, float %6953, float %7027, float %7028, float %7029)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fmul fast float %7030, %7030
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fsub fast float 1.000000e+00, %7032
  %7034 = fmul fast float %7033, 5.000000e-01
  %7035 = fcmp fast ogt float %7030, 0.000000e+00
  %7036 = fsub fast float 1.000000e+00, %7034
  %7037 = select i1 %7035, float %7034, float %7036
  %7038 = fmul fast float %7037, %6986
  %7039 = fadd fast float %7038, %6984
  %7040 = fmul fast float %7039, 0x3EF0001000000000
  %7041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7040, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7042 = extractvalue %dx.types.ResRet.f32 %7041, 0
  %7043 = fmul fast float %7030, %6968
  %7044 = fadd fast float %7043, %6969
  %7045 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7046 = select i1 %6989, float 1.000000e+00, float %7045
  %7047 = select i1 %6989, float %7045, float 1.000000e+00
  %7048 = fmul fast float %6994, %6965
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %7049, %6971
  %7051 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  %7052 = fmul fast float %7051, %7047
  %7053 = fmul fast float %7052, 2.000000e+00
  %7054 = fsub fast float 3.000000e+00, %7053
  %7055 = fmul fast float %7042, %7026
  %7056 = fmul fast float %7052, %7052
  %7057 = fmul fast float %7056, %7055
  %7058 = fmul fast float %7057, %7054
  %7059 = call float @dx.op.binary.f32(i32 36, float %7058, float %7058)  ; FMin(a,b)
  %7060 = call float @dx.op.binary.f32(i32 36, float %7058, float %7059)  ; FMin(a,b)
  %7061 = fcmp fast ogt float %7060, 0.000000e+00
  br i1 %7061, label %7070, label %7062, !dx.controlflow.hints !124

; <label>:7062                                    ; preds = %7412, %7170, %7025
  %7063 = phi float [ %6930, %7170 ], [ %6930, %7025 ], [ %7452, %7412 ]
  %7064 = phi float [ %6931, %7170 ], [ %6931, %7025 ], [ %7453, %7412 ]
  %7065 = phi float [ %6932, %7170 ], [ %6932, %7025 ], [ %7454, %7412 ]
  %7066 = phi float [ %6933, %7170 ], [ %6933, %7025 ], [ %7446, %7412 ]
  %7067 = phi float [ %6934, %7170 ], [ %6934, %7025 ], [ %7447, %7412 ]
  %7068 = phi float [ %6935, %7170 ], [ %6935, %7025 ], [ %7448, %7412 ]
  %7069 = icmp eq i32 %6929, %6939
  br i1 %7069, label %7455, label %6928

; <label>:7070                                    ; preds = %7025
  %7071 = icmp eq i32 %6987, 255
  br i1 %7071, label %7170, label %7072, !dx.controlflow.hints !125

; <label>:7072                                    ; preds = %7070
  %7073 = mul nuw nsw i32 %6987, 176
  %7074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7073, i32 undef)  ; BufferLoad(srv,index,wot)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.ResRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.ResRet.f32 %7074, 3
  %7079 = add nuw nsw i32 %7073, 16
  %7080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7079, i32 undef)  ; BufferLoad(srv,index,wot)
  %7081 = extractvalue %dx.types.ResRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.ResRet.f32 %7080, 1
  %7083 = add nuw nsw i32 %7073, 32
  %7084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7083, i32 undef)  ; BufferLoad(srv,index,wot)
  %7085 = extractvalue %dx.types.ResRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.ResRet.f32 %7084, 1
  %7087 = extractvalue %dx.types.ResRet.f32 %7084, 2
  %7088 = add nuw nsw i32 %7073, 48
  %7089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7088, i32 undef)  ; BufferLoad(srv,index,wot)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = extractvalue %dx.types.ResRet.f32 %7089, 3
  %7094 = add nuw nsw i32 %7073, 64
  %7095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7094, i32 undef)  ; BufferLoad(srv,index,wot)
  %7096 = extractvalue %dx.types.ResRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.ResRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.ResRet.f32 %7095, 2
  %7099 = extractvalue %dx.types.ResRet.f32 %7095, 3
  %7100 = add nuw nsw i32 %7073, 80
  %7101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7100, i32 undef)  ; BufferLoad(srv,index,wot)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.ResRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.ResRet.f32 %7101, 2
  %7105 = extractvalue %dx.types.ResRet.f32 %7101, 3
  %7106 = add nuw nsw i32 %7073, 96
  %7107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7106, i32 undef)  ; BufferLoad(srv,index,wot)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.ResRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.ResRet.f32 %7107, 2
  %7111 = extractvalue %dx.types.ResRet.f32 %7107, 3
  %7112 = bitcast float %7082 to i32
  %7113 = fmul fast float %7087, %117
  %7114 = fmul fast float %7087, %118
  %7115 = fmul fast float %7087, %119
  %7116 = fadd fast float %7113, %197
  %7117 = fadd fast float %7114, %198
  %7118 = fadd fast float %7115, %199
  %7119 = fmul fast float %7116, %7090
  %7120 = call float @dx.op.tertiary.f32(i32 46, float %7117, float %7096, float %7119)  ; FMad(a,b,c)
  %7121 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7102, float %7120)  ; FMad(a,b,c)
  %7122 = fadd fast float %7121, %7108
  %7123 = fmul fast float %7116, %7091
  %7124 = call float @dx.op.tertiary.f32(i32 46, float %7117, float %7097, float %7123)  ; FMad(a,b,c)
  %7125 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7103, float %7124)  ; FMad(a,b,c)
  %7126 = fadd fast float %7125, %7109
  %7127 = fmul fast float %7116, %7092
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %7117, float %7098, float %7127)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7104, float %7128)  ; FMad(a,b,c)
  %7130 = fadd fast float %7129, %7110
  %7131 = fmul fast float %7116, %7093
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %7117, float %7099, float %7131)  ; FMad(a,b,c)
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %7118, float %7105, float %7132)  ; FMad(a,b,c)
  %7134 = fadd fast float %7133, %7111
  %7135 = fdiv fast float %7122, %7134
  %7136 = fdiv fast float %7126, %7134
  %7137 = fdiv fast float %7130, %7134
  %7138 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7137)  ; FMax(a,b)
  %7139 = fmul fast float %280, 0x401921FB60000000
  %7140 = call float @dx.op.unary.f32(i32 13, float %7139)  ; Sin(value)
  %7141 = call float @dx.op.unary.f32(i32 12, float %7139)  ; Cos(value)
  %7142 = fsub fast float -0.000000e+00, %7140
  %7143 = fmul fast float %7077, 5.000000e-01
  %7144 = call float @dx.op.dot2.f32(i32 54, float %280, float %280, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7145 = call float @dx.op.unary.f32(i32 22, float %7144)  ; Frc(value)
  %7146 = fmul fast float %7145, 0x404A7DD040000000
  %7147 = call float @dx.op.unary.f32(i32 22, float %7146)  ; Frc(value)
  %7148 = fmul fast float %7147, %7086
  %7149 = fadd fast float %7148, %7143
  %7150 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7142, float 0.000000e+00)  ; FMad(a,b,c)
  %7151 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7141, float 0.000000e+00)  ; FMad(a,b,c)
  %7152 = fadd fast float %7150, %7135
  %7153 = fadd fast float %7151, %7136
  %7154 = fmul fast float %7152, %7081
  %7155 = fmul fast float %7153, %7081
  %7156 = call float @dx.op.binary.f32(i32 35, float %7154, float %7077)  ; FMax(a,b)
  %7157 = call float @dx.op.binary.f32(i32 35, float %7155, float %7077)  ; FMax(a,b)
  %7158 = call float @dx.op.binary.f32(i32 36, float %7156, float %7078)  ; FMin(a,b)
  %7159 = call float @dx.op.binary.f32(i32 36, float %7157, float %7078)  ; FMin(a,b)
  %7160 = fadd fast float %7158, %7075
  %7161 = fadd fast float %7159, %7076
  %7162 = uitofp i32 %7112 to float
  %7163 = fadd fast float %7138, %7085
  %7164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7160, float %7161, float %7162, float undef, i32 0, i32 0, i32 undef, float %7163)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 0
  %7166 = fadd fast float %7165, -1.000000e+00
  %7167 = fmul fast float %7166, %7046
  %7168 = fadd fast float %7167, 1.000000e+00
  %7169 = fmul fast float %7168, %7058
  br label %7170

; <label>:7170                                    ; preds = %7072, %7070
  %7171 = phi float [ %7169, %7072 ], [ %7058, %7070 ]
  %7172 = call float @dx.op.binary.f32(i32 36, float %7171, float %7171)  ; FMin(a,b)
  %7173 = call float @dx.op.binary.f32(i32 36, float %7171, float %7172)  ; FMin(a,b)
  %7174 = fcmp fast ogt float %7173, 0.000000e+00
  br i1 %7174, label %7175, label %7062, !dx.controlflow.hints !126

; <label>:7175                                    ; preds = %7170
  %7176 = fmul fast float %7171, %6980
  %7177 = fmul fast float %7171, %6981
  %7178 = fmul fast float %7171, %6982
  %7179 = fsub fast float %6964, %4641
  %7180 = fcmp fast ogt float %7179, 0.000000e+00
  %7181 = fsub fast float %199, %4641
  %7182 = fcmp fast ogt float %7181, 0.000000e+00
  %7183 = xor i1 %7182, %7180
  %7184 = fsub fast float %4641, %6964
  %7185 = fmul fast float %7184, 2.000000e+00
  %7186 = fadd fast float %7185, %6964
  %7187 = select i1 %7183, float %6964, float %7186
  %7188 = fsub fast float %7187, %199
  %7189 = call float @dx.op.dot3.f32(i32 55, float %6990, float %6991, float %7188, float %6990, float %6991, float %7188)  ; Dot3(ax,ay,az,bx,by,bz)
  %7190 = call float @dx.op.unary.f32(i32 25, float %7189)  ; Rsqrt(value)
  %7191 = fmul fast float %7190, %6990
  %7192 = fmul fast float %7190, %6991
  %7193 = fmul fast float %7190, %7188
  %7194 = fsub fast float %4641, %199
  %7195 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7194)  ; Dot3(ax,ay,az,bx,by,bz)
  %7196 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7191, float %7192, float %7193)  ; Dot3(ax,ay,az,bx,by,bz)
  %7197 = fdiv fast float 1.000000e+00, %7196
  %7198 = fmul fast float %7197, %7195
  %7199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7181, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = fcmp fast ogt float %7199, 0.000000e+00
  %7201 = fcmp fast olt float %7199, 0.000000e+00
  %7202 = zext i1 %7200 to i32
  %7203 = zext i1 %7201 to i32
  %7204 = sub nsw i32 %7202, %7203
  %7205 = sitofp i32 %7204 to float
  %7206 = fsub fast float %7187, %4641
  %7207 = call float @dx.op.dot3.f32(i32 55, float %6990, float %6991, float %7206, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = fcmp fast olt float %7207, 0.000000e+00
  %7210 = zext i1 %7208 to i32
  %7211 = zext i1 %7209 to i32
  %7212 = sub nsw i32 %7210, %7211
  %7213 = sitofp i32 %7212 to float
  %7214 = fcmp fast une float %7205, %7213
  br i1 %7214, label %7215, label %7225

; <label>:7215                                    ; preds = %7175
  %7216 = fmul fast float %7198, %7193
  %7217 = fmul fast float %7198, %7192
  %7218 = fmul fast float %7198, %7191
  %7219 = fmul fast float %7218, %7218
  %7220 = fmul fast float %7217, %7217
  %7221 = fadd fast float %7219, %7220
  %7222 = fmul fast float %7216, %7216
  %7223 = fadd fast float %7221, %7222
  %7224 = call float @dx.op.unary.f32(i32 24, float %7223)  ; Sqrt(value)
  br label %7237

; <label>:7225                                    ; preds = %7175
  %7226 = icmp slt i32 %7204, 0
  br i1 %7226, label %7227, label %7237

; <label>:7227                                    ; preds = %7225
  %7228 = fsub fast float %197, %6962
  %7229 = fsub fast float %198, %6963
  %7230 = fsub fast float %199, %7187
  %7231 = fmul fast float %7228, %7228
  %7232 = fmul fast float %7229, %7229
  %7233 = fadd fast float %7231, %7232
  %7234 = fmul fast float %7230, %7230
  %7235 = fadd fast float %7233, %7234
  %7236 = call float @dx.op.unary.f32(i32 24, float %7235)  ; Sqrt(value)
  br label %7237

; <label>:7237                                    ; preds = %7227, %7225, %7215
  %7238 = phi float [ %7224, %7215 ], [ %7236, %7227 ], [ 0.000000e+00, %7225 ]
  %7239 = and i1 %7182, %7180
  %7240 = fsub fast float -0.000000e+00, %7238
  %7241 = select i1 %7239, float -0.000000e+00, float %7240
  %7242 = fmul fast float %4642, 0x3FF7154760000000
  %7243 = fmul fast float %7242, %7241
  %7244 = fmul fast float %4643, 0x3FF7154760000000
  %7245 = fmul fast float %7244, %7241
  %7246 = fmul fast float %4644, 0x3FF7154760000000
  %7247 = fmul fast float %7246, %7241
  %7248 = call float @dx.op.unary.f32(i32 21, float %7243)  ; Exp(value)
  %7249 = call float @dx.op.unary.f32(i32 21, float %7245)  ; Exp(value)
  %7250 = call float @dx.op.unary.f32(i32 21, float %7247)  ; Exp(value)
  %7251 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7252 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7254 = fmul fast float %7176, %7251
  %7255 = fmul fast float %7177, %7252
  %7256 = fmul fast float %7178, %7253
  %7257 = fsub fast float %6996, %5467
  %7258 = fsub fast float %6997, %5468
  %7259 = fsub fast float %6998, %5469
  %7260 = call float @dx.op.dot3.f32(i32 55, float %7257, float %7258, float %7259, float %7257, float %7258, float %7259)  ; Dot3(ax,ay,az,bx,by,bz)
  %7261 = call float @dx.op.unary.f32(i32 25, float %7260)  ; Rsqrt(value)
  %7262 = fmul fast float %7261, %7257
  %7263 = fmul fast float %7261, %7258
  %7264 = fmul fast float %7261, %7259
  %7265 = call float @dx.op.dot3.f32(i32 55, float %6996, float %6997, float %6998, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %7266 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %7262, float %7263, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7267 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7268 = fmul fast float %7267, %7003
  %7269 = fmul fast float %7267, %7267
  %7270 = fmul fast float %7269, %5488
  %7271 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7272 = fmul fast float %7268, %7271
  %7273 = bitcast float %6993 to i32
  %7274 = ashr i32 %7273, 1
  %7275 = sub nsw i32 1597463007, %7274
  %7276 = bitcast i32 %7275 to float
  %7277 = fmul fast float %7276, %6990
  %7278 = fmul fast float %7276, %6991
  %7279 = fmul fast float %7276, %6992
  %7280 = fsub fast float %7277, %5467
  %7281 = fsub fast float %7278, %5468
  %7282 = fsub fast float %7279, %5469
  %7283 = call float @dx.op.dot3.f32(i32 55, float %7280, float %7281, float %7282, float %7280, float %7281, float %7282)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = call float @dx.op.unary.f32(i32 25, float %7283)  ; Rsqrt(value)
  %7285 = fmul fast float %7280, %7284
  %7286 = fmul fast float %7281, %7284
  %7287 = fmul fast float %7282, %7284
  %7288 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %7285, float %7286, float %7287)  ; Dot3(ax,ay,az,bx,by,bz)
  %7289 = fmul fast float %7288, %7288
  %7290 = call float @dx.op.unary.f32(i32 6, float %7265)  ; FAbs(value)
  %7291 = fsub fast float 1.000000e+00, %5430
  %7292 = call float @dx.op.binary.f32(i32 35, float %7291, float 0x3F847AE140000000)  ; FMax(a,b)
  %7293 = fmul fast float %7292, %7292
  %7294 = fmul fast float %7293, %7293
  %7295 = fsub fast float 1.000000e+00, %7294
  %7296 = fmul fast float %5475, %5475
  %7297 = fmul fast float %7296, %7295
  %7298 = fadd fast float %7297, %7294
  %7299 = bitcast float %7298 to i32
  %7300 = ashr i32 %7299, 1
  %7301 = add nsw i32 %7300, 532487669
  %7302 = bitcast i32 %7301 to float
  %7303 = fadd fast float %7302, %5475
  %7304 = fmul fast float %7294, %7289
  %7305 = fsub fast float 1.000000e+00, %7289
  %7306 = fadd fast float %7305, %7304
  %7307 = fmul fast float %7290, %7290
  %7308 = fmul fast float %7307, %7295
  %7309 = fadd fast float %7308, %7294
  %7310 = bitcast float %7309 to i32
  %7311 = ashr i32 %7310, 1
  %7312 = add nsw i32 %7311, 532487669
  %7313 = bitcast i32 %7312 to float
  %7314 = fadd fast float %7313, %7290
  %7315 = fmul fast float %7306, %7306
  %7316 = fmul fast float %7315, %7303
  %7317 = fmul fast float %7316, %7314
  %7318 = fdiv fast float 1.000000e+00, %7317
  %7319 = bitcast float %7294 to i32
  %7320 = sitofp i32 %7319 to float
  %7321 = fmul fast float %7320, 0x3FE7F73180000000
  %7322 = fadd fast float %7321, 0x41AFE27C40000000
  %7323 = fptosi float %7322 to i32
  %7324 = bitcast i32 %7323 to float
  %7325 = fmul fast float %6959, 0x3FD80E9D60000000
  %7326 = fmul fast float %7325, %7276
  %7327 = fadd fast float %7324, %7326
  %7328 = bitcast float %7327 to i32
  %7329 = sub nsw i32 2129859010, %7328
  %7330 = bitcast i32 %7329 to float
  %7331 = fmul fast float %7294, %7318
  %7332 = fmul fast float %7331, %7324
  %7333 = fmul fast float %7332, %7330
  %7334 = call float @dx.op.unary.f32(i32 6, float %7266)  ; FAbs(value)
  %7335 = fsub fast float 1.000000e+00, %7334
  %7336 = bitcast float %7335 to i32
  %7337 = sitofp i32 %7336 to float
  %7338 = fmul fast float %7337, 5.000000e+00
  %7339 = fadd fast float %7338, 0xC1EFBF8940000000
  %7340 = fptosi float %7339 to i32
  %7341 = bitcast i32 %7340 to float
  %7342 = fsub fast float 1.000000e+00, %5424
  %7343 = fsub fast float 1.000000e+00, %5425
  %7344 = fsub fast float 1.000000e+00, %5473
  %7345 = fmul fast float %7341, %7342
  %7346 = fmul fast float %7341, %7343
  %7347 = fmul fast float %7341, %7344
  %7348 = fadd fast float %7345, %5424
  %7349 = fadd fast float %7346, %5425
  %7350 = fadd fast float %7347, %5473
  br i1 %5604, label %7351, label %7374

; <label>:7351                                    ; preds = %7237
  %7352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4239, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = fadd fast float %7353, -5.000000e-01
  %7357 = fadd fast float %7354, -5.000000e-01
  %7358 = fadd fast float %7355, -5.000000e-01
  %7359 = fmul fast float %5424, 4.000000e+00
  %7360 = fmul fast float %7359, %7342
  %7361 = fmul fast float %7360, %7356
  %7362 = fmul fast float %5425, 4.000000e+00
  %7363 = fmul fast float %7362, %7343
  %7364 = fmul fast float %7363, %7357
  %7365 = fmul fast float %5473, 4.000000e+00
  %7366 = fmul fast float %7365, %7344
  %7367 = fmul fast float %7366, %7358
  %7368 = fadd fast float %7361, %7348
  %7369 = fadd fast float %7364, %7349
  %7370 = fadd fast float %7367, %7350
  %7371 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7372 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7373 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  br label %7374

; <label>:7374                                    ; preds = %7351, %7237
  %7375 = phi float [ %7371, %7351 ], [ %7348, %7237 ]
  %7376 = phi float [ %7372, %7351 ], [ %7349, %7237 ]
  %7377 = phi float [ %7373, %7351 ], [ %7350, %7237 ]
  %7378 = fmul fast float %7265, 9.843750e-01
  %7379 = fadd fast float %7378, 7.812500e-03
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7379, float %5594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 2
  %7382 = extractvalue %dx.types.ResRet.f32 %7380, 3
  %7383 = fmul fast float %7381, %5424
  %7384 = fmul fast float %7381, %5425
  %7385 = fmul fast float %7381, %5473
  %7386 = fadd fast float %7383, %7382
  %7387 = fadd fast float %7384, %7382
  %7388 = fadd fast float %7385, %7382
  br i1 %5604, label %7389, label %7412

; <label>:7389                                    ; preds = %7374
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4239, float %7265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7394 = fadd fast float %7391, -5.000000e-01
  %7395 = fadd fast float %7392, -5.000000e-01
  %7396 = fadd fast float %7393, -5.000000e-01
  %7397 = fmul fast float %5424, 4.000000e+00
  %7398 = fmul fast float %7397, %7342
  %7399 = fmul fast float %7398, %7394
  %7400 = fmul fast float %5425, 4.000000e+00
  %7401 = fmul fast float %7400, %7343
  %7402 = fmul fast float %7401, %7395
  %7403 = fmul fast float %5473, 4.000000e+00
  %7404 = fmul fast float %7403, %7344
  %7405 = fmul fast float %7404, %7396
  %7406 = fadd fast float %7399, %7386
  %7407 = fadd fast float %7402, %7387
  %7408 = fadd fast float %7405, %7388
  %7409 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  %7410 = call float @dx.op.unary.f32(i32 7, float %7407)  ; Saturate(value)
  %7411 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  br label %7412

; <label>:7412                                    ; preds = %7389, %7374
  %7413 = phi float [ %7409, %7389 ], [ %7386, %7374 ]
  %7414 = phi float [ %7410, %7389 ], [ %7387, %7374 ]
  %7415 = phi float [ %7411, %7389 ], [ %7388, %7374 ]
  %7416 = call float @dx.op.binary.f32(i32 35, float %7414, float %7415)  ; FMax(a,b)
  %7417 = call float @dx.op.binary.f32(i32 35, float %7413, float %7416)  ; FMax(a,b)
  %7418 = fsub fast float 1.000000e+00, %7417
  %7419 = fmul fast float %7375, %7333
  %7420 = fmul fast float %7376, %7333
  %7421 = fmul fast float %7377, %7333
  %7422 = fsub fast float 1.000000e+00, %7266
  %7423 = bitcast float %7422 to i32
  %7424 = sitofp i32 %7423 to float
  %7425 = fmul fast float %7424, 5.000000e+00
  %7426 = fadd fast float %7425, 0xC1EFBF8940000000
  %7427 = fptosi float %7426 to i32
  %7428 = bitcast i32 %7427 to float
  %7429 = fmul fast float %7428, %4240
  %7430 = fmul fast float %7418, %7429
  %7431 = fmul fast float %7430, %5707
  %7432 = fmul fast float %7430, %5708
  %7433 = fmul fast float %7430, %5709
  %7434 = fadd fast float %7431, %7419
  %7435 = fadd fast float %7432, %7420
  %7436 = fadd fast float %7433, %7421
  %7437 = fmul fast float %7254, %4236
  %7438 = fmul fast float %7437, %7272
  %7439 = fmul fast float %7438, %7418
  %7440 = fmul fast float %7255, %4236
  %7441 = fmul fast float %7440, %7272
  %7442 = fmul fast float %7441, %7418
  %7443 = fmul fast float %7256, %4236
  %7444 = fmul fast float %7443, %7272
  %7445 = fmul fast float %7444, %7418
  %7446 = fadd fast float %7439, %6933
  %7447 = fadd fast float %7442, %6934
  %7448 = fadd fast float %7445, %6935
  %7449 = fmul fast float %7438, %7434
  %7450 = fmul fast float %7441, %7435
  %7451 = fmul fast float %7444, %7436
  %7452 = fadd fast float %7449, %6930
  %7453 = fadd fast float %7450, %6931
  %7454 = fadd fast float %7451, %6932
  br label %7062

; <label>:7455                                    ; preds = %7062
  br label %7456

; <label>:7456                                    ; preds = %7455, %6896
  %7457 = phi float [ %6898, %6896 ], [ %7063, %7455 ]
  %7458 = phi float [ %6899, %6896 ], [ %7064, %7455 ]
  %7459 = phi float [ %6900, %6896 ], [ %7065, %7455 ]
  %7460 = phi float [ %6901, %6896 ], [ %7066, %7455 ]
  %7461 = phi float [ %6902, %6896 ], [ %7067, %7455 ]
  %7462 = phi float [ %6903, %6896 ], [ %7068, %7455 ]
  %7463 = add i32 %6897, 1
  %7464 = icmp ugt i32 %7463, %6893
  br i1 %7464, label %7465, label %6896

; <label>:7465                                    ; preds = %7456
  br label %7466

; <label>:7466                                    ; preds = %7465, %6846, %6836
  %7467 = phi float [ %6837, %6836 ], [ %6837, %6846 ], [ %7457, %7465 ]
  %7468 = phi float [ %6838, %6836 ], [ %6838, %6846 ], [ %7458, %7465 ]
  %7469 = phi float [ %6839, %6836 ], [ %6839, %6846 ], [ %7459, %7465 ]
  %7470 = phi float [ %6840, %6836 ], [ %6840, %6846 ], [ %7460, %7465 ]
  %7471 = phi float [ %6841, %6836 ], [ %6841, %6846 ], [ %7461, %7465 ]
  %7472 = phi float [ %6842, %6836 ], [ %6842, %6846 ], [ %7462, %7465 ]
  %7473 = fmul fast float %4236, %4236
  %7474 = fsub fast float 1.000000e+00, %7473
  %7475 = call float @dx.op.dot3.f32(i32 55, float %7474, float %7474, float %7474, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7476 = fsub fast float 1.000000e+00, %7475
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 0
  %7479 = fmul fast float %7478, %5723
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 3
  %7482 = fsub fast float 1.000000e+00, %4244
  %7483 = call float @dx.op.unary.f32(i32 7, float %7482)  ; Saturate(value)
  %7484 = fadd fast float %7472, %4242
  %7485 = fmul fast float %7484, %4244
  %7486 = fmul fast float %7483, %7481
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 3
  %7489 = fmul fast float %7470, %5421
  %7490 = fmul fast float %7471, %5422
  %7491 = fmul fast float %7472, %5423
  %7492 = fcmp fast ogt float %101, %232
  %7493 = and i1 %7492, %4647
  %7494 = or i1 %4653, %7493
  %7495 = icmp eq i32 %4646, 2
  %7496 = fcmp fast ole float %101, %232
  %7497 = and i1 %7496, %7495
  %7498 = or i1 %7497, %7494
  br i1 %7493, label %7499, label %7756

; <label>:7499                                    ; preds = %7466
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7500, 3
  %7503 = fmul fast float %7501, %110
  %7504 = fmul fast float %7502, %111
  %7505 = call float @dx.op.unary.f32(i32 7, float %7503)  ; Saturate(value)
  %7506 = call float @dx.op.unary.f32(i32 7, float %7504)  ; Saturate(value)
  %7507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7505, float %7506, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.ResRet.f32 %7507, 3
  %7512 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7505, float %7506, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = extractvalue %dx.types.ResRet.f32 %7512, 3
  %7517 = call float @dx.op.binary.f32(i32 35, float %7509, float %7510)  ; FMax(a,b)
  %7518 = call float @dx.op.binary.f32(i32 35, float %7508, float %7517)  ; FMax(a,b)
  %7519 = call float @dx.op.binary.f32(i32 35, float %7518, float %7511)  ; FMax(a,b)
  %7520 = call float @dx.op.binary.f32(i32 36, float %7514, float %7515)  ; FMin(a,b)
  %7521 = call float @dx.op.binary.f32(i32 36, float %7513, float %7520)  ; FMin(a,b)
  %7522 = call float @dx.op.binary.f32(i32 36, float %7521, float %7516)  ; FMin(a,b)
  %7523 = fmul fast float %7519, 2.550000e+02
  %7524 = fadd fast float %7523, 0x3F70101020000000
  %7525 = fptoui float %7524 to i32
  %7526 = fmul fast float %7522, 2.550000e+02
  %7527 = fadd fast float %7526, 0x3F70101020000000
  %7528 = fptoui float %7527 to i32
  %7529 = icmp ult i32 %7525, %7528
  br i1 %7529, label %7530, label %7698

; <label>:7530                                    ; preds = %7499
  %7531 = fcmp fast ogt float %100, 9.843750e-01
  %7532 = fadd fast float %101, -4.000000e+00
  %7533 = select i1 %7531, float -4.000000e+00, float %7532
  %7534 = call float @dx.op.binary.f32(i32 35, float %7533, float 0.000000e+00)  ; FMax(a,b)
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = fadd fast float %7536, %7534
  %7538 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7539 = fmul fast float %7537, %7538
  %7540 = call float @dx.op.unary.f32(i32 23, float %7539)  ; Log(value)
  %7541 = extractvalue %dx.types.CBufRet.f32 %7535, 3
  %7542 = fmul fast float %7541, %7540
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 2
  %7545 = fmul fast float %7542, %7544
  %7546 = call float @dx.op.unary.f32(i32 7, float %7545)  ; Saturate(value)
  %7547 = uitofp i32 %7525 to float
  %7548 = uitofp i32 %7528 to float
  %7549 = fadd fast float %7547, 5.000000e-01
  %7550 = fadd fast float %7548, 5.000000e-01
  %7551 = fmul fast float %7544, %7549
  %7552 = fmul fast float %7544, %7550
  %7553 = fadd fast float %7551, 0x3F0FFB4800000000
  %7554 = fadd fast float %7552, 0xBF0FFB4800000000
  %7555 = call float @dx.op.binary.f32(i32 35, float %7546, float %7553)  ; FMax(a,b)
  %7556 = call float @dx.op.binary.f32(i32 36, float %7555, float %7554)  ; FMin(a,b)
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7560 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7561 = fmul fast float %7558, %7556
  %7562 = fadd fast float %7560, %7561
  %7563 = fadd fast float %7560, %7559
  %7564 = fsub fast float %7558, %7559
  %7565 = fadd fast float %7564, %7560
  %7566 = call float @dx.op.binary.f32(i32 35, float %7562, float %7563)  ; FMax(a,b)
  %7567 = call float @dx.op.binary.f32(i32 36, float %7566, float %7565)  ; FMin(a,b)
  %7568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7505, float %7506, float %7567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7569 = extractvalue %dx.types.ResRet.f32 %7568, 0
  %7570 = extractvalue %dx.types.ResRet.f32 %7568, 1
  %7571 = extractvalue %dx.types.ResRet.f32 %7568, 2
  %7572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.i32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.i32 %7572, 1
  %7575 = uitofp i32 %7573 to float
  %7576 = uitofp i32 %7574 to float
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 1
  %7580 = fmul fast float %7575, %7505
  %7581 = fmul fast float %7576, %7506
  %7582 = fadd fast float %7580, -5.000000e-01
  %7583 = fadd fast float %7581, -5.000000e-01
  %7584 = call float @dx.op.unary.f32(i32 22, float %7582)  ; Frc(value)
  %7585 = call float @dx.op.unary.f32(i32 22, float %7583)  ; Frc(value)
  %7586 = fmul fast float %7584, %7584
  %7587 = fmul fast float %7586, %7584
  %7588 = fsub fast float 3.000000e+00, %7584
  %7589 = fmul fast float %7586, %7588
  %7590 = fmul fast float %7584, 3.000000e+00
  %7591 = fmul fast float %7587, 3.000000e+00
  %7592 = fmul fast float %7586, 6.000000e+00
  %7593 = fsub fast float %7591, %7592
  %7594 = fadd fast float %7593, 4.000000e+00
  %7595 = fmul fast float %7594, 0x3FC5555560000000
  %7596 = fmul fast float %7587, -3.000000e+00
  %7597 = fadd fast float %7586, %7584
  %7598 = fmul fast float %7597, 3.000000e+00
  %7599 = fadd fast float %7596, 1.000000e+00
  %7600 = fadd fast float %7599, %7598
  %7601 = fmul fast float %7587, 0x3FC5555560000000
  %7602 = fmul fast float %7585, %7585
  %7603 = fmul fast float %7602, %7585
  %7604 = fsub fast float 3.000000e+00, %7585
  %7605 = fmul fast float %7602, %7604
  %7606 = fmul fast float %7585, 3.000000e+00
  %7607 = fmul fast float %7603, 3.000000e+00
  %7608 = fmul fast float %7602, 6.000000e+00
  %7609 = fsub fast float %7607, %7608
  %7610 = fadd fast float %7609, 4.000000e+00
  %7611 = fmul fast float %7610, 0x3FC5555560000000
  %7612 = fmul fast float %7603, -3.000000e+00
  %7613 = fadd fast float %7602, %7585
  %7614 = fmul fast float %7613, 3.000000e+00
  %7615 = fadd fast float %7612, 1.000000e+00
  %7616 = fadd fast float %7615, %7614
  %7617 = fmul fast float %7603, 0x3FC5555560000000
  %7618 = fadd fast float %7584, 1.000000e+00
  %7619 = fsub fast float 1.000000e+00, %7590
  %7620 = fadd fast float %7619, %7589
  %7621 = fadd fast float %7620, %7594
  %7622 = fmul fast float %7621, 0x3FC5555560000000
  %7623 = fdiv fast float %7595, %7622
  %7624 = fsub fast float %7618, %7623
  %7625 = fsub fast float 1.000000e+00, %7584
  %7626 = fadd fast float %7600, %7587
  %7627 = fmul fast float %7626, 0x3FC5555560000000
  %7628 = fdiv fast float %7601, %7627
  %7629 = fadd fast float %7625, %7628
  %7630 = fadd fast float %7585, 1.000000e+00
  %7631 = fsub fast float 1.000000e+00, %7606
  %7632 = fadd fast float %7631, %7605
  %7633 = fadd fast float %7632, %7610
  %7634 = fmul fast float %7633, 0x3FC5555560000000
  %7635 = fdiv fast float %7611, %7634
  %7636 = fsub fast float %7630, %7635
  %7637 = fsub fast float 1.000000e+00, %7585
  %7638 = fadd fast float %7616, %7603
  %7639 = fmul fast float %7638, 0x3FC5555560000000
  %7640 = fdiv fast float %7617, %7639
  %7641 = fadd fast float %7640, %7637
  %7642 = fmul fast float %7624, %7578
  %7643 = fsub fast float %7505, %7642
  %7644 = fmul fast float %7629, %7578
  %7645 = fadd fast float %7644, %7505
  %7646 = fmul fast float %7641, %7579
  %7647 = fadd fast float %7646, %7506
  %7648 = fmul fast float %7636, %7579
  %7649 = fsub fast float %7506, %7648
  %7650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7643, float %7649, float %7567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7645, float %7649, float %7567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.ResRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.ResRet.f32 %7654, 2
  %7658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7643, float %7647, float %7567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7645, float %7647, float %7567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.ResRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.ResRet.f32 %7662, 2
  %7666 = fsub fast float %7659, %7651
  %7667 = fsub fast float %7660, %7652
  %7668 = fsub fast float %7661, %7653
  %7669 = fmul fast float %7666, %7639
  %7670 = fmul fast float %7667, %7639
  %7671 = fmul fast float %7668, %7639
  %7672 = fadd fast float %7669, %7651
  %7673 = fadd fast float %7670, %7652
  %7674 = fadd fast float %7671, %7653
  %7675 = fsub fast float %7663, %7655
  %7676 = fsub fast float %7664, %7656
  %7677 = fsub fast float %7665, %7657
  %7678 = fmul fast float %7675, %7639
  %7679 = fmul fast float %7676, %7639
  %7680 = fmul fast float %7677, %7639
  %7681 = fsub fast float %7655, %7672
  %7682 = fadd fast float %7681, %7678
  %7683 = fsub fast float %7656, %7673
  %7684 = fadd fast float %7683, %7679
  %7685 = fsub fast float %7657, %7674
  %7686 = fadd fast float %7685, %7680
  %7687 = fmul fast float %7682, %7627
  %7688 = fmul fast float %7684, %7627
  %7689 = fmul fast float %7686, %7627
  %7690 = fadd fast float %7687, %7672
  %7691 = fadd fast float %7688, %7673
  %7692 = fadd fast float %7689, %7674
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7695 = fmul fast float %7690, %7694
  %7696 = fmul fast float %7691, %7694
  %7697 = fmul fast float %7692, %7694
  br label %7698

; <label>:7698                                    ; preds = %7530, %7499
  %7699 = phi float [ %7569, %7530 ], [ 1.000000e+00, %7499 ]
  %7700 = phi float [ %7570, %7530 ], [ 1.000000e+00, %7499 ]
  %7701 = phi float [ %7571, %7530 ], [ 1.000000e+00, %7499 ]
  %7702 = phi float [ %7695, %7530 ], [ 0.000000e+00, %7499 ]
  %7703 = phi float [ %7696, %7530 ], [ 0.000000e+00, %7499 ]
  %7704 = phi float [ %7697, %7530 ], [ 0.000000e+00, %7499 ]
  %7705 = fmul fast float %7702, %7476
  %7706 = fmul fast float %7703, %7476
  %7707 = fmul fast float %7704, %7476
  %7708 = call float @dx.op.dot3.f32(i32 55, float %7699, float %7700, float %7701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7709 = call float @dx.op.dot3.f32(i32 55, float %7705, float %7706, float %7707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7710 = select i1 %269, float %7708, float %7699
  %7711 = select i1 %269, float %7708, float %7700
  %7712 = select i1 %269, float 1.000000e+00, float %7701
  %7713 = select i1 %269, float %7709, float %7705
  %7714 = select i1 %269, float 0.000000e+00, float %7706
  %7715 = select i1 %269, float 0.000000e+00, float %7707
  %7716 = fmul fast float %7710, %7489
  %7717 = fmul fast float %7711, %7490
  %7718 = fmul fast float %7712, %7491
  %7719 = fadd fast float %7716, %7713
  %7720 = fadd fast float %7717, %7714
  %7721 = fadd fast float %7715, %7718
  %7722 = fmul fast float %7710, %7467
  %7723 = fmul fast float %7711, %7468
  %7724 = fmul fast float %7712, %7469
  %7725 = fmul fast float %146, %7501
  %7726 = fmul fast float %148, %7502
  %7727 = fsub fast float 1.000000e+00, %7725
  %7728 = fsub fast float 1.000000e+00, %7726
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.CBufRet.f32 %7729, 1
  %7732 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7733 = fmul fast float %7727, %7730
  %7734 = fmul fast float %7727, %7731
  %7735 = fmul fast float %7727, %7732
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = fmul fast float %7728, %7737
  %7741 = fmul fast float %7728, %7738
  %7742 = fmul fast float %7728, %7739
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7746 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7747 = fadd fast float %7740, %7744
  %7748 = fadd fast float %7747, %7733
  %7749 = fadd fast float %7741, %7745
  %7750 = fadd fast float %7749, %7734
  %7751 = fadd fast float %7742, %7746
  %7752 = fadd fast float %7751, %7735
  %7753 = fmul fast float %7748, %232
  %7754 = fmul fast float %7750, %232
  %7755 = fmul fast float %7752, %232
  br label %7756

; <label>:7756                                    ; preds = %7698, %7466
  %7757 = phi float [ %7753, %7698 ], [ %197, %7466 ]
  %7758 = phi float [ %7754, %7698 ], [ %198, %7466 ]
  %7759 = phi float [ %7755, %7698 ], [ %199, %7466 ]
  %7760 = phi float [ %232, %7698 ], [ %101, %7466 ]
  %7761 = phi float [ %7719, %7698 ], [ %7489, %7466 ]
  %7762 = phi float [ %7720, %7698 ], [ %7490, %7466 ]
  %7763 = phi float [ %7721, %7698 ], [ %7491, %7466 ]
  %7764 = phi float [ %7722, %7698 ], [ %7467, %7466 ]
  %7765 = phi float [ %7723, %7698 ], [ %7468, %7466 ]
  %7766 = phi float [ %7724, %7698 ], [ %7469, %7466 ]
  %7767 = phi float [ %7699, %7698 ], [ 1.000000e+00, %7466 ]
  br i1 %7498, label %8922, label %7768

; <label>:7768                                    ; preds = %7756
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.CBufRet.f32 %7769, 3
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.CBufRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 3
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 3
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7795 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7796 = fcmp fast olt float %7795, -5.000000e-01
  %7797 = call float @dx.op.dot3.f32(i32 55, float %7757, float %7758, float %7759, float %7757, float %7758, float %7759)  ; Dot3(ax,ay,az,bx,by,bz)
  %7798 = call float @dx.op.unary.f32(i32 25, float %7797)  ; Rsqrt(value)
  %7799 = fmul fast float %7798, %7797
  %7800 = fmul fast float %7798, %7757
  %7801 = fmul fast float %7798, %7758
  %7802 = fmul fast float %7798, %7759
  %7803 = fadd fast float %7799, %7773
  %7804 = call float @dx.op.dot3.f32(i32 55, float %7800, float %7801, float %7802, float %7770, float %7771, float %7772)  ; Dot3(ax,ay,az,bx,by,bz)
  %7805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.i32 %7805, 1
  %7807 = and i32 %7806, 1
  %7808 = icmp ne i32 %7807, 0
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7811 = fcmp fast ogt float %7810, 0.000000e+00
  %7812 = and i1 %7808, %7811
  br i1 %7812, label %7813, label %8219, !dx.controlflow.hints !127

; <label>:7813                                    ; preds = %7768
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 3
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7820 = fsub fast float %7817, %7819
  %7821 = and i32 %7806, 2
  %7822 = extractvalue %dx.types.CBufRet.i32 %7805, 0
  %7823 = call i32 @dx.op.binary.i32(i32 40, i32 %7822, i32 3)  ; UMin(a,b)
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.CBufRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7818, 1
  %7829 = fsub fast float %7825, %7827
  %7830 = fsub fast float %7826, %7828
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 0
  %7833 = fcmp fast ogt float %7832, 0.000000e+00
  %7834 = fsub fast float -0.000000e+00, %7829
  %7835 = fsub fast float -0.000000e+00, %7830
  %7836 = call float @dx.op.dot2.f32(i32 54, float %7800, float %7801, float %7800, float %7801)  ; Dot2(ax,ay,bx,by)
  %7837 = call float @dx.op.dot2.f32(i32 54, float %7800, float %7801, float %7834, float %7835)  ; Dot2(ax,ay,bx,by)
  %7838 = fmul fast float %7837, 2.000000e+00
  %7839 = call float @dx.op.dot2.f32(i32 54, float %7834, float %7835, float %7834, float %7835)  ; Dot2(ax,ay,bx,by)
  %7840 = fmul fast float %7832, %7832
  %7841 = fsub fast float %7839, %7840
  %7842 = fmul fast float %7838, %7838
  %7843 = fmul fast float %7836, 4.000000e+00
  %7844 = fmul fast float %7843, %7841
  %7845 = fsub fast float %7842, %7844
  %7846 = fcmp fast ogt float %7845, 0.000000e+00
  br i1 %7846, label %7847, label %7862

; <label>:7847                                    ; preds = %7813
  %7848 = fcmp fast ogt float %7838, 0.000000e+00
  %7849 = call float @dx.op.unary.f32(i32 24, float %7845)  ; Sqrt(value)
  %7850 = fsub fast float -0.000000e+00, %7849
  %7851 = select i1 %7848, float %7849, float %7850
  %7852 = fadd fast float %7851, %7838
  %7853 = fmul float %7852, -5.000000e-01
  %7854 = fdiv fast float %7853, %7836
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float 0.000000e+00)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7799, float %7855)  ; FMin(a,b)
  %7857 = fdiv fast float %7841, %7853
  %7858 = call float @dx.op.binary.f32(i32 35, float %7857, float 0.000000e+00)  ; FMax(a,b)
  %7859 = call float @dx.op.binary.f32(i32 36, float %7799, float %7858)  ; FMin(a,b)
  %7860 = call float @dx.op.binary.f32(i32 36, float %7856, float %7859)  ; FMin(a,b)
  %7861 = call float @dx.op.binary.f32(i32 35, float %7856, float %7859)  ; FMax(a,b)
  br label %7862

; <label>:7862                                    ; preds = %7847, %7813
  %7863 = phi float [ %7861, %7847 ], [ -1.000000e+00, %7813 ]
  %7864 = phi float [ %7860, %7847 ], [ -1.000000e+00, %7813 ]
  %7865 = phi i1 [ true, %7847 ], [ false, %7813 ]
  %7866 = and i1 %7833, %7865
  br i1 %7866, label %7867, label %7869

; <label>:7867                                    ; preds = %7862
  %7868 = fcmp fast oeq float %7864, %7863
  br i1 %7868, label %8172, label %7870

; <label>:7869                                    ; preds = %7862
  br i1 %7833, label %8172, label %7870

; <label>:7870                                    ; preds = %7869, %7867
  %7871 = phi float [ %7799, %7869 ], [ %7863, %7867 ]
  %7872 = phi float [ 0.000000e+00, %7869 ], [ %7864, %7867 ]
  %7873 = icmp ne i32 %7821, 0
  %7874 = fmul fast float %7871, %7802
  %7875 = fadd fast float %7874, %7815
  %7876 = fmul fast float %7875, %7871
  %7877 = select i1 %7873, float 0.000000e+00, float %7876
  %7878 = fcmp fast oeq float %7802, 0.000000e+00
  %7879 = fdiv fast float %7820, %7802
  %7880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7879)  ; FMax(a,b)
  %7881 = select i1 %7878, float %7871, float %7880
  %7882 = call float @dx.op.binary.f32(i32 36, float %7871, float %7881)  ; FMin(a,b)
  %7883 = fcmp fast ogt float %7802, 0.000000e+00
  %7884 = fcmp fast olt float %7820, 0.000000e+00
  br i1 %7883, label %7885, label %7942

; <label>:7885                                    ; preds = %7870
  %7886 = icmp eq i32 %7821, 0
  br i1 %7884, label %7887, label %7931

; <label>:7887                                    ; preds = %7885
  %7888 = select i1 %7886, float %7871, float 0.000000e+00
  %7889 = fsub fast float -0.000000e+00, %7888
  %7890 = call float @dx.op.unary.f32(i32 6, float %7889)  ; FAbs(value)
  %7891 = fmul fast float %7888, %7802
  %7892 = fadd fast float %7891, %7815
  %7893 = fmul fast float %7890, %7892
  %7894 = fsub fast float %7877, %7893
  %7895 = fsub fast float %7871, %7890
  %7896 = select i1 %7886, float %7895, float 0.000000e+00
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7905 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 3
  %7908 = call float @dx.op.binary.f32(i32 36, float %7894, float %7907)  ; FMin(a,b)
  %7909 = fmul fast float %7905, %7896
  %7910 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  %7911 = fsub fast float %7902, %7898
  %7912 = fsub fast float %7903, %7899
  %7913 = fsub fast float %7904, %7900
  %7914 = fmul fast float %7910, %7911
  %7915 = fmul fast float %7910, %7912
  %7916 = fmul fast float %7910, %7913
  %7917 = fadd fast float %7914, %7898
  %7918 = fadd fast float %7915, %7899
  %7919 = fadd fast float %7916, %7900
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.CBufRet.f32 %7920, 1
  %7923 = fadd fast float %7922, %7921
  %7924 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7926 = extractvalue %dx.types.CBufRet.f32 %7920, 3
  %7927 = fadd fast float %7926, %7925
  %7928 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7929 = fmul fast float %7924, %7908
  %7930 = fmul fast float %7929, %7928
  br label %8172

; <label>:7931                                    ; preds = %7885
  br i1 %7886, label %7932, label %7953

; <label>:7932                                    ; preds = %7931
  %7933 = call float @dx.op.binary.f32(i32 36, float %7882, float %7872)  ; FMin(a,b)
  %7934 = fsub fast float %7882, %7933
  %7935 = fsub fast float %7934, %7871
  %7936 = call float @dx.op.unary.f32(i32 6, float %7935)  ; FAbs(value)
  %7937 = fadd fast float %7934, %7871
  %7938 = fmul fast float %7937, %7802
  %7939 = fadd fast float %7938, %7815
  %7940 = fmul fast float %7939, %7936
  %7941 = fsub fast float %7877, %7940
  br label %7953

; <label>:7942                                    ; preds = %7870
  br i1 %7884, label %7943, label %7953

; <label>:7943                                    ; preds = %7942
  %7944 = call float @dx.op.binary.f32(i32 35, float %7872, float %7882)  ; FMax(a,b)
  %7945 = icmp eq i32 %7821, 0
  %7946 = select i1 %7945, float %7882, float 0.000000e+00
  %7947 = fsub fast float -0.000000e+00, %7946
  %7948 = call float @dx.op.unary.f32(i32 6, float %7947)  ; FAbs(value)
  %7949 = fmul fast float %7946, %7802
  %7950 = fadd fast float %7949, %7815
  %7951 = fmul fast float %7948, %7950
  %7952 = fsub fast float %7877, %7951
  br label %7953

; <label>:7953                                    ; preds = %7943, %7942, %7932, %7931
  %7954 = phi float [ %7872, %7931 ], [ %7872, %7932 ], [ %7944, %7943 ], [ %7872, %7942 ]
  %7955 = phi float [ 0.000000e+00, %7931 ], [ %7936, %7932 ], [ %7948, %7943 ], [ 0.000000e+00, %7942 ]
  %7956 = phi float [ %7877, %7931 ], [ %7941, %7932 ], [ %7952, %7943 ], [ %7877, %7942 ]
  %7957 = phi float [ %7882, %7931 ], [ %7882, %7932 ], [ %7871, %7943 ], [ %7871, %7942 ]
  %7958 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %7958, align 4, !tbaa !128, !noalias !130
  %7959 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %7959, align 4, !tbaa !128, !noalias !130
  %7960 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %7960, align 4, !tbaa !128, !noalias !130
  %7961 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %7961, align 4, !tbaa !128, !noalias !130
  %7962 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %7962, align 4, !tbaa !128, !noalias !130
  %7963 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %7963, align 4, !tbaa !128, !noalias !130
  %7964 = icmp sgt i32 %7823, 0
  br i1 %7964, label %7965, label %8026

; <label>:7965                                    ; preds = %7953
  br label %7966

; <label>:7966                                    ; preds = %8015, %7965
  %7967 = phi i32 [ %8016, %8015 ], [ 0, %7965 ]
  %7968 = phi i32 [ %8017, %8015 ], [ 0, %7965 ]
  %7969 = add nuw i32 %7968, 171
  %7970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7969)  ; CBufferLoadLegacy(handle,regIndex)
  %7971 = extractvalue %dx.types.CBufRet.f32 %7970, 0
  %7972 = extractvalue %dx.types.CBufRet.f32 %7970, 1
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7976 = fsub fast float %7971, %7974
  %7977 = fsub fast float %7972, %7975
  %7978 = extractvalue %dx.types.CBufRet.f32 %7970, 2
  %7979 = fsub fast float -0.000000e+00, %7976
  %7980 = fsub fast float -0.000000e+00, %7977
  %7981 = call float @dx.op.dot2.f32(i32 54, float %7800, float %7801, float %7979, float %7980)  ; Dot2(ax,ay,bx,by)
  %7982 = fmul fast float %7981, 2.000000e+00
  %7983 = call float @dx.op.dot2.f32(i32 54, float %7979, float %7980, float %7979, float %7980)  ; Dot2(ax,ay,bx,by)
  %7984 = fmul fast float %7978, %7978
  %7985 = fsub fast float %7983, %7984
  %7986 = fmul fast float %7982, %7982
  %7987 = fmul fast float %7843, %7985
  %7988 = fsub fast float %7986, %7987
  %7989 = fcmp fast ogt float %7988, 0.000000e+00
  br i1 %7989, label %7990, label %8005

; <label>:7990                                    ; preds = %7966
  %7991 = fcmp fast ogt float %7982, 0.000000e+00
  %7992 = call float @dx.op.unary.f32(i32 24, float %7988)  ; Sqrt(value)
  %7993 = fsub fast float -0.000000e+00, %7992
  %7994 = select i1 %7991, float %7992, float %7993
  %7995 = fadd fast float %7994, %7982
  %7996 = fmul float %7995, -5.000000e-01
  %7997 = fdiv fast float %7996, %7836
  %7998 = call float @dx.op.binary.f32(i32 35, float %7997, float 0.000000e+00)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7871, float %7998)  ; FMin(a,b)
  %8000 = fdiv fast float %7985, %7996
  %8001 = call float @dx.op.binary.f32(i32 35, float %8000, float 0.000000e+00)  ; FMax(a,b)
  %8002 = call float @dx.op.binary.f32(i32 36, float %7871, float %8001)  ; FMin(a,b)
  %8003 = call float @dx.op.binary.f32(i32 36, float %7999, float %8002)  ; FMin(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %7999, float %8002)  ; FMax(a,b)
  br label %8005

; <label>:8005                                    ; preds = %7990, %7966
  %8006 = phi float [ %8004, %7990 ], [ -1.000000e+00, %7966 ]
  %8007 = phi float [ %8003, %7990 ], [ -1.000000e+00, %7966 ]
  %8008 = phi i1 [ true, %7990 ], [ false, %7966 ]
  br i1 %8008, label %8009, label %8015

; <label>:8009                                    ; preds = %8005
  %8010 = call float @dx.op.binary.f32(i32 35, float %7954, float %8007)  ; FMax(a,b)
  %8011 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %7968
  store float %8010, float* %8011, align 4, !tbaa !128, !noalias !130
  %8012 = call float @dx.op.binary.f32(i32 35, float %7954, float %8006)  ; FMax(a,b)
  %8013 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %7968
  store float %8012, float* %8013, align 4, !tbaa !128, !noalias !130
  %8014 = add nsw i32 %7967, 1
  br label %8015

; <label>:8015                                    ; preds = %8009, %8005
  %8016 = phi i32 [ %8014, %8009 ], [ %7967, %8005 ]
  %8017 = add nuw nsw i32 %7968, 1
  %8018 = icmp eq i32 %8017, %7823
  br i1 %8018, label %8019, label %7966

; <label>:8019                                    ; preds = %8015
  %8020 = load float, float* %7960, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8021 = load float, float* %7959, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %8022 = load float, float* %7958, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %8023 = load float, float* %7963, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8024 = load float, float* %7962, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %8025 = load float, float* %7961, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %8026

; <label>:8026                                    ; preds = %8019, %7953
  %8027 = phi float [ -1.000000e+00, %7953 ], [ %8025, %8019 ]
  %8028 = phi float [ -1.000000e+00, %7953 ], [ %8024, %8019 ]
  %8029 = phi float [ -1.000000e+00, %7953 ], [ %8023, %8019 ]
  %8030 = phi float [ -1.000000e+00, %7953 ], [ %8022, %8019 ]
  %8031 = phi float [ -1.000000e+00, %7953 ], [ %8021, %8019 ]
  %8032 = phi float [ -1.000000e+00, %7953 ], [ %8020, %8019 ]
  %8033 = phi i32 [ 0, %7953 ], [ %8016, %8019 ]
  %8034 = call float @dx.op.binary.f32(i32 36, float %8031, float %8032)  ; FMin(a,b)
  %8035 = call float @dx.op.binary.f32(i32 36, float %8030, float %8034)  ; FMin(a,b)
  %8036 = call float @dx.op.binary.f32(i32 35, float %8030, float %8031)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %8036, float %8032)  ; FMin(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8030, float %8031)  ; FMin(a,b)
  %8039 = call float @dx.op.binary.f32(i32 35, float %8038, float %8037)  ; FMax(a,b)
  %8040 = call float @dx.op.binary.f32(i32 35, float %8031, float %8032)  ; FMax(a,b)
  %8041 = call float @dx.op.binary.f32(i32 35, float %8030, float %8040)  ; FMax(a,b)
  store float %8035, float* %7958, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %8039, float* %7959, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %8041, float* %7960, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8042 = call float @dx.op.binary.f32(i32 36, float %8028, float %8029)  ; FMin(a,b)
  %8043 = call float @dx.op.binary.f32(i32 36, float %8027, float %8042)  ; FMin(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8027, float %8028)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 36, float %8044, float %8029)  ; FMin(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8027, float %8028)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 35, float %8046, float %8045)  ; FMax(a,b)
  %8048 = call float @dx.op.binary.f32(i32 35, float %8028, float %8029)  ; FMax(a,b)
  %8049 = call float @dx.op.binary.f32(i32 35, float %8027, float %8048)  ; FMax(a,b)
  store float %8043, float* %7961, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %8047, float* %7962, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %8049, float* %7963, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8050 = sub nsw i32 3, %8033
  %8051 = icmp sgt i32 %8050, 2
  br i1 %8051, label %8052, label %8090

; <label>:8052                                    ; preds = %8026
  %8053 = icmp eq i32 %7821, 0
  %8054 = fsub fast float %7871, %7955
  %8055 = select i1 %8053, float %8054, float %7955
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.CBufRet.f32 %8060, 2
  %8064 = extractvalue %dx.types.CBufRet.f32 %8060, 3
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 3
  %8067 = call float @dx.op.binary.f32(i32 36, float %7956, float %8066)  ; FMin(a,b)
  %8068 = fmul fast float %8064, %8055
  %8069 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8070 = fsub fast float %8061, %8057
  %8071 = fsub fast float %8062, %8058
  %8072 = fsub fast float %8063, %8059
  %8073 = fmul fast float %8069, %8070
  %8074 = fmul fast float %8069, %8071
  %8075 = fmul fast float %8069, %8072
  %8076 = fadd fast float %8073, %8057
  %8077 = fadd fast float %8074, %8058
  %8078 = fadd fast float %8075, %8059
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = fadd fast float %8081, %8080
  %8083 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8085 = extractvalue %dx.types.CBufRet.f32 %8079, 3
  %8086 = fadd fast float %8085, %8084
  %8087 = call float @dx.op.unary.f32(i32 7, float %8086)  ; Saturate(value)
  %8088 = fmul fast float %8083, %8067
  %8089 = fmul fast float %8088, %8087
  br label %8172

; <label>:8090                                    ; preds = %8026
  %8091 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8050
  %8092 = load float, float* %8091, align 4, !tbaa !128, !noalias !130
  %8093 = fcmp fast olt float %8092, %7957
  %8094 = icmp sgt i32 %8033, 0
  %8095 = and i1 %8094, %8093
  br i1 %8095, label %8096, label %8133

; <label>:8096                                    ; preds = %8090
  br label %8097

; <label>:8097                                    ; preds = %8126, %8096
  %8098 = phi float [ %8127, %8126 ], [ %7955, %8096 ]
  %8099 = phi float [ %8128, %8126 ], [ %7956, %8096 ]
  %8100 = phi float [ %8108, %8126 ], [ %8092, %8096 ]
  %8101 = phi i32 [ %8105, %8126 ], [ %8050, %8096 ]
  %8102 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8101
  %8103 = load float, float* %8102, align 4, !tbaa !128, !noalias !130
  %8104 = icmp slt i32 %8101, 2
  %8105 = add nsw i32 %8101, 1
  %8106 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8105
  %8107 = load float, float* %8106, align 4, !tbaa !128, !noalias !130
  %8108 = select i1 %8104, float %8107, float %7871
  %8109 = call float @dx.op.binary.f32(i32 36, float %8108, float %8103)  ; FMin(a,b)
  %8110 = call float @dx.op.binary.f32(i32 36, float %7957, float %8109)  ; FMin(a,b)
  %8111 = icmp eq i32 %7821, 0
  %8112 = fadd fast float %8110, %8100
  %8113 = fmul fast float %8112, %7802
  %8114 = fadd fast float %8113, %7815
  br i1 %8111, label %8120, label %8115

; <label>:8115                                    ; preds = %8097
  %8116 = fsub fast float %8110, %8100
  %8117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8116)  ; FMax(a,b)
  %8118 = fmul fast float %8117, %8114
  %8119 = fadd fast float %8118, %8099
  br label %8126

; <label>:8120                                    ; preds = %8097
  %8121 = fsub fast float %8100, %8110
  %8122 = call float @dx.op.unary.f32(i32 6, float %8121)  ; FAbs(value)
  %8123 = fadd fast float %8122, %8098
  %8124 = fmul fast float %8122, %8114
  %8125 = fsub fast float %8099, %8124
  br label %8126

; <label>:8126                                    ; preds = %8120, %8115
  %8127 = phi float [ %8117, %8115 ], [ %8123, %8120 ]
  %8128 = phi float [ %8119, %8115 ], [ %8125, %8120 ]
  %8129 = fcmp fast olt float %8108, %7957
  %8130 = icmp slt i32 %8105, 3
  %8131 = and i1 %8130, %8129
  br i1 %8131, label %8097, label %8132

; <label>:8132                                    ; preds = %8126
  br label %8133

; <label>:8133                                    ; preds = %8132, %8090
  %8134 = phi float [ %7955, %8090 ], [ %8127, %8132 ]
  %8135 = phi float [ %7956, %8090 ], [ %8128, %8132 ]
  %8136 = fsub fast float %7871, %8134
  %8137 = select i1 %7873, float %8134, float %8136
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.CBufRet.f32 %8142, 1
  %8145 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8146 = extractvalue %dx.types.CBufRet.f32 %8142, 3
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = call float @dx.op.binary.f32(i32 36, float %8135, float %8148)  ; FMin(a,b)
  %8150 = fmul fast float %8146, %8137
  %8151 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  %8152 = fsub fast float %8143, %8139
  %8153 = fsub fast float %8144, %8140
  %8154 = fsub fast float %8145, %8141
  %8155 = fmul fast float %8151, %8152
  %8156 = fmul fast float %8151, %8153
  %8157 = fmul fast float %8151, %8154
  %8158 = fadd fast float %8155, %8139
  %8159 = fadd fast float %8156, %8140
  %8160 = fadd fast float %8157, %8141
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8164 = fadd fast float %8163, %8162
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8167 = extractvalue %dx.types.CBufRet.f32 %8161, 3
  %8168 = fadd fast float %8167, %8166
  %8169 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8170 = fmul fast float %8165, %8149
  %8171 = fmul fast float %8170, %8169
  br label %8172

; <label>:8172                                    ; preds = %8133, %8052, %7887, %7869, %7867
  %8173 = phi float [ %7896, %7887 ], [ %8055, %8052 ], [ %8137, %8133 ], [ 0.000000e+00, %7867 ], [ 0.000000e+00, %7869 ]
  %8174 = phi float [ %7930, %7887 ], [ %8089, %8052 ], [ %8171, %8133 ], [ 0.000000e+00, %7867 ], [ 0.000000e+00, %7869 ]
  %8175 = phi float [ %7917, %7887 ], [ %8076, %8052 ], [ %8158, %8133 ], [ 0.000000e+00, %7867 ], [ 0.000000e+00, %7869 ]
  %8176 = phi float [ %7918, %7887 ], [ %8077, %8052 ], [ %8159, %8133 ], [ 0.000000e+00, %7867 ], [ 0.000000e+00, %7869 ]
  %8177 = phi float [ %7919, %7887 ], [ %8078, %8052 ], [ %8160, %8133 ], [ 0.000000e+00, %7867 ], [ 0.000000e+00, %7869 ]
  %8178 = fmul fast float %7810, %8174
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8181 = fsub fast float %7817, %8180
  %8182 = fcmp fast olt float %8178, -2.000000e+01
  %8183 = call float @dx.op.unary.f32(i32 21, float %8178)  ; Exp(value)
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 2
  %8186 = extractvalue %dx.types.CBufRet.f32 %8184, 3
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8189 = fmul fast float %8186, %8181
  %8190 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8191 = fsub fast float 1.000000e+00, %8190
  %8192 = fmul fast float %7802, 5.000000e-01
  %8193 = fadd fast float %8192, 5.000000e-01
  %8194 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8195 = fsub fast float 1.000000e+00, %8194
  %8196 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8191)  ; FMax(a,b)
  %8197 = fdiv fast float %8195, %8196
  %8198 = fsub fast float %8181, %7759
  %8199 = call float @dx.op.unary.f32(i32 6, float %8198)  ; FAbs(value)
  %8200 = fmul fast float %8199, %8185
  %8201 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8202 = fsub fast float 1.000000e+00, %8200
  %8203 = fmul fast float %8202, %8201
  %8204 = fadd fast float %8203, %8200
  %8205 = fmul fast float %8188, %8181
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = fsub fast float 1.000000e+00, %8204
  %8208 = fmul fast float %8207, %8206
  %8209 = fadd fast float %8208, %8204
  %8210 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8211 = fadd fast float %8183, -1.000000e+00
  %8212 = select i1 %8182, float -1.000000e+00, float %8211
  %8213 = fmul fast float %8210, %8212
  %8214 = fadd fast float %8213, 1.000000e+00
  %8215 = fsub fast float -0.000000e+00, %8213
  %8216 = fmul fast float %8175, %8215
  %8217 = fmul fast float %8176, %8215
  %8218 = fmul fast float %8177, %8215
  br label %8219

; <label>:8219                                    ; preds = %8172, %7768
  %8220 = phi float [ %8173, %8172 ], [ 0.000000e+00, %7768 ]
  %8221 = phi float [ %8214, %8172 ], [ 1.000000e+00, %7768 ]
  %8222 = phi float [ %8216, %8172 ], [ 0.000000e+00, %7768 ]
  %8223 = phi float [ %8217, %8172 ], [ 0.000000e+00, %7768 ]
  %8224 = phi float [ %8218, %8172 ], [ 0.000000e+00, %7768 ]
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8227 = fsub fast float 1.000000e+00, %8221
  %8228 = fmul fast float %8227, %7803
  %8229 = fmul fast float %8228, %8226
  %8230 = fsub fast float %7803, %8229
  br i1 %7796, label %8231, label %8260, !dx.controlflow.hints !166

; <label>:8231                                    ; preds = %8219
  %8232 = fmul fast float %7804, %7793
  %8233 = fadd fast float %8232, %7794
  %8234 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8235 = fmul fast float %7775, %8230
  %8236 = fsub fast float -0.000000e+00, %8235
  %8237 = fmul fast float %7776, %8230
  %8238 = fsub fast float -0.000000e+00, %8237
  %8239 = call float @dx.op.unary.f32(i32 21, float %8236)  ; Exp(value)
  %8240 = call float @dx.op.unary.f32(i32 21, float %8238)  ; Exp(value)
  %8241 = call float @dx.op.binary.f32(i32 35, float %7783, float %8239)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 35, float %7783, float %8240)  ; FMax(a,b)
  %8243 = fsub fast float %8242, %8241
  %8244 = fmul fast float %8243, %8234
  %8245 = fadd fast float %8244, %8241
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = fsub fast float %7780, %7785
  %8248 = fsub fast float %7781, %7786
  %8249 = fsub fast float %7782, %7787
  %8250 = fmul fast float %8234, %8247
  %8251 = fmul fast float %8234, %8248
  %8252 = fmul fast float %8234, %8249
  %8253 = fadd fast float %8250, %7785
  %8254 = fadd fast float %8251, %7786
  %8255 = fadd fast float %8252, %7787
  %8256 = fsub fast float 1.000000e+00, %8246
  %8257 = fmul fast float %8256, %8253
  %8258 = fmul fast float %8256, %8254
  %8259 = fmul fast float %8256, %8255
  br label %8319

; <label>:8260                                    ; preds = %8219
  %8261 = fmul fast float %8230, %7792
  %8262 = call float @dx.op.unary.f32(i32 7, float %8261)  ; Saturate(value)
  %8263 = fsub fast float 2.000000e+00, %8262
  %8264 = fmul fast float %8262, 9.921875e-01
  %8265 = fmul fast float %8264, %8263
  %8266 = fadd fast float %8265, 3.906250e-03
  %8267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8266, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8268 = extractvalue %dx.types.ResRet.f32 %8267, 0
  %8269 = fsub fast float %8262, %8268
  %8270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8269)  ; FMax(a,b)
  %8271 = fmul fast float %7778, %7759
  %8272 = call float @dx.op.unary.f32(i32 6, float %8271)  ; FAbs(value)
  %8273 = fcmp fast ogt float %8272, 0x3EB0C6F7A0000000
  br i1 %8273, label %8274, label %8280, !dx.controlflow.hints !167

; <label>:8274                                    ; preds = %8260
  %8275 = fmul fast float %8271, 0xBFF7154760000000
  %8276 = call float @dx.op.unary.f32(i32 21, float %8275)  ; Exp(value)
  %8277 = fsub fast float 1.000000e+00, %8276
  %8278 = fdiv fast float %8277, %8271
  %8279 = fmul fast float %8278, %7788
  br label %8280

; <label>:8280                                    ; preds = %8274, %8260
  %8281 = phi float [ %8279, %8274 ], [ %7788, %8260 ]
  %8282 = fadd fast float %8281, %7790
  %8283 = fmul fast float %8282, %8270
  %8284 = fmul fast float %7775, %8283
  %8285 = fsub fast float -0.000000e+00, %8284
  %8286 = fmul fast float %7776, %8283
  %8287 = fsub fast float -0.000000e+00, %8286
  %8288 = fmul fast float %7777, %8283
  %8289 = fsub fast float -0.000000e+00, %8288
  %8290 = call float @dx.op.unary.f32(i32 21, float %8285)  ; Exp(value)
  %8291 = call float @dx.op.unary.f32(i32 21, float %8287)  ; Exp(value)
  %8292 = call float @dx.op.unary.f32(i32 21, float %8289)  ; Exp(value)
  %8293 = fmul fast float %7804, %7804
  %8294 = fadd fast float %8293, 1.000000e+00
  %8295 = fmul fast float %8294, 0x3FAE8EC8A0000000
  %8296 = fmul fast float %8295, %7785
  %8297 = fmul fast float %8295, %7786
  %8298 = fmul fast float %8295, %7787
  %8299 = fmul fast float %7804, %7783
  %8300 = fsub fast float 1.000000e+00, %8299
  %8301 = fmul fast float %7783, %7783
  %8302 = fsub fast float 1.000000e+00, %8301
  %8303 = fmul fast float %8302, 0x3FB45F3060000000
  %8304 = fmul fast float %8300, %8300
  %8305 = fdiv fast float 1.000000e+00, %8304
  %8306 = fmul fast float %8303, %8305
  %8307 = fmul fast float %8306, %7780
  %8308 = fmul fast float %8306, %7781
  %8309 = fmul fast float %8306, %7782
  %8310 = fadd fast float %8307, %8296
  %8311 = fadd fast float %8308, %8297
  %8312 = fadd fast float %8309, %8298
  %8313 = fsub fast float 1.000000e+00, %8290
  %8314 = fsub fast float 1.000000e+00, %8291
  %8315 = fsub fast float 1.000000e+00, %8292
  %8316 = fmul fast float %8310, %8313
  %8317 = fmul fast float %8311, %8314
  %8318 = fmul fast float %8312, %8315
  br label %8319

; <label>:8319                                    ; preds = %8280, %8231
  %8320 = phi float [ %8257, %8231 ], [ %8316, %8280 ]
  %8321 = phi float [ %8258, %8231 ], [ %8317, %8280 ]
  %8322 = phi float [ %8259, %8231 ], [ %8318, %8280 ]
  %8323 = phi float [ %8246, %8231 ], [ %8290, %8280 ]
  %8324 = phi float [ %8246, %8231 ], [ %8291, %8280 ]
  %8325 = phi float [ %8246, %8231 ], [ %8292, %8280 ]
  br i1 %7812, label %8326, label %8524, !dx.controlflow.hints !168

; <label>:8326                                    ; preds = %8319
  %8327 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8328 = fmul fast float %8327, %8227
  %8329 = fsub fast float %8222, %8320
  %8330 = fsub fast float %8223, %8321
  %8331 = fsub fast float %8224, %8322
  %8332 = fmul fast float %8328, %8329
  %8333 = fmul fast float %8328, %8330
  %8334 = fmul fast float %8328, %8331
  %8335 = fadd fast float %8332, %8320
  %8336 = fadd fast float %8333, %8321
  %8337 = fadd fast float %8334, %8322
  %8338 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8323)  ; FMax(a,b)
  %8339 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8324)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8325)  ; FMax(a,b)
  %8341 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8221)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 35, float %8220, float %8230)  ; FMax(a,b)
  %8343 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8342)  ; FMax(a,b)
  %8344 = fdiv fast float %8220, %8343
  %8345 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8346 = fdiv fast float %8230, %8343
  %8347 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8348 = fcmp fast une float %8341, 1.000000e+00
  br i1 %8348, label %8349, label %8362, !dx.controlflow.hints !169

; <label>:8349                                    ; preds = %8326
  %8350 = call float @dx.op.unary.f32(i32 23, float %8341)  ; Log(value)
  %8351 = fmul fast float %8350, 0x3FE62E4300000000
  %8352 = fmul fast float %8222, %8351
  %8353 = fsub fast float -0.000000e+00, %8352
  %8354 = fmul fast float %8223, %8351
  %8355 = fsub fast float -0.000000e+00, %8354
  %8356 = fmul fast float %8224, %8351
  %8357 = fsub fast float -0.000000e+00, %8356
  %8358 = fsub fast float 1.000000e+00, %8341
  %8359 = fdiv fast float %8353, %8358
  %8360 = fdiv fast float %8355, %8358
  %8361 = fdiv fast float %8357, %8358
  br label %8362

; <label>:8362                                    ; preds = %8349, %8326
  %8363 = phi float [ %8359, %8349 ], [ %8222, %8326 ]
  %8364 = phi float [ %8360, %8349 ], [ %8223, %8326 ]
  %8365 = phi float [ %8361, %8349 ], [ %8224, %8326 ]
  %8366 = phi float [ %8351, %8349 ], [ 0.000000e+00, %8326 ]
  %8367 = fcmp fast une float %8338, 1.000000e+00
  br i1 %8367, label %8368, label %8375, !dx.controlflow.hints !170

; <label>:8368                                    ; preds = %8362
  %8369 = call float @dx.op.unary.f32(i32 23, float %8338)  ; Log(value)
  %8370 = fmul fast float %8369, 0x3FE62E4300000000
  %8371 = fmul fast float %8335, %8370
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = fsub fast float 1.000000e+00, %8338
  %8374 = fdiv fast float %8372, %8373
  br label %8375

; <label>:8375                                    ; preds = %8368, %8362
  %8376 = phi float [ %8374, %8368 ], [ %8335, %8362 ]
  %8377 = phi float [ %8370, %8368 ], [ 0.000000e+00, %8362 ]
  %8378 = fcmp fast une float %8339, 1.000000e+00
  br i1 %8378, label %8379, label %8386, !dx.controlflow.hints !170

; <label>:8379                                    ; preds = %8375
  %8380 = call float @dx.op.unary.f32(i32 23, float %8339)  ; Log(value)
  %8381 = fmul fast float %8380, 0x3FE62E4300000000
  %8382 = fmul fast float %8336, %8381
  %8383 = fsub fast float -0.000000e+00, %8382
  %8384 = fsub fast float 1.000000e+00, %8339
  %8385 = fdiv fast float %8383, %8384
  br label %8386

; <label>:8386                                    ; preds = %8379, %8375
  %8387 = phi float [ %8385, %8379 ], [ %8336, %8375 ]
  %8388 = phi float [ %8381, %8379 ], [ 0.000000e+00, %8375 ]
  %8389 = fcmp fast une float %8340, 1.000000e+00
  br i1 %8389, label %8390, label %8397, !dx.controlflow.hints !170

; <label>:8390                                    ; preds = %8386
  %8391 = call float @dx.op.unary.f32(i32 23, float %8340)  ; Log(value)
  %8392 = fmul fast float %8391, 0x3FE62E4300000000
  %8393 = fmul fast float %8337, %8392
  %8394 = fsub fast float -0.000000e+00, %8393
  %8395 = fsub fast float 1.000000e+00, %8340
  %8396 = fdiv fast float %8394, %8395
  br label %8397

; <label>:8397                                    ; preds = %8390, %8386
  %8398 = phi float [ %8396, %8390 ], [ %8337, %8386 ]
  %8399 = phi float [ %8392, %8390 ], [ 0.000000e+00, %8386 ]
  %8400 = fmul fast float %8363, %8347
  %8401 = fmul fast float %8364, %8347
  %8402 = fmul fast float %8365, %8347
  %8403 = fmul fast float %8366, %8347
  %8404 = fmul fast float %8376, %8345
  %8405 = fmul fast float %8387, %8345
  %8406 = fmul fast float %8398, %8345
  %8407 = fmul fast float %8377, %8345
  %8408 = fmul fast float %8388, %8345
  %8409 = fmul fast float %8399, %8345
  %8410 = fadd fast float %8404, %8400
  %8411 = fadd fast float %8405, %8401
  %8412 = fadd fast float %8406, %8402
  %8413 = fadd fast float %8407, %8403
  %8414 = fadd fast float %8408, %8403
  %8415 = fadd fast float %8409, %8403
  %8416 = fcmp fast une float %8413, 0.000000e+00
  br i1 %8416, label %8417, label %8424, !dx.controlflow.hints !171

; <label>:8417                                    ; preds = %8397
  %8418 = fmul fast float %8413, 0x3FF7154760000000
  %8419 = call float @dx.op.unary.f32(i32 21, float %8418)  ; Exp(value)
  %8420 = fsub fast float 1.000000e+00, %8419
  %8421 = fmul fast float %8410, %8420
  %8422 = fsub fast float -0.000000e+00, %8421
  %8423 = fdiv fast float %8422, %8413
  br label %8424

; <label>:8424                                    ; preds = %8417, %8397
  %8425 = phi float [ %8419, %8417 ], [ 1.000000e+00, %8397 ]
  %8426 = phi float [ %8423, %8417 ], [ %8410, %8397 ]
  %8427 = fcmp fast une float %8414, 0.000000e+00
  br i1 %8427, label %8428, label %8435, !dx.controlflow.hints !171

; <label>:8428                                    ; preds = %8424
  %8429 = fmul fast float %8414, 0x3FF7154760000000
  %8430 = call float @dx.op.unary.f32(i32 21, float %8429)  ; Exp(value)
  %8431 = fsub fast float 1.000000e+00, %8430
  %8432 = fmul fast float %8411, %8431
  %8433 = fsub fast float -0.000000e+00, %8432
  %8434 = fdiv fast float %8433, %8414
  br label %8435

; <label>:8435                                    ; preds = %8428, %8424
  %8436 = phi float [ %8430, %8428 ], [ 1.000000e+00, %8424 ]
  %8437 = phi float [ %8434, %8428 ], [ %8411, %8424 ]
  %8438 = fcmp fast une float %8415, 0.000000e+00
  br i1 %8438, label %8439, label %8446, !dx.controlflow.hints !171

; <label>:8439                                    ; preds = %8435
  %8440 = fmul fast float %8415, 0x3FF7154760000000
  %8441 = call float @dx.op.unary.f32(i32 21, float %8440)  ; Exp(value)
  %8442 = fsub fast float 1.000000e+00, %8441
  %8443 = fmul fast float %8412, %8442
  %8444 = fsub fast float -0.000000e+00, %8443
  %8445 = fdiv fast float %8444, %8415
  br label %8446

; <label>:8446                                    ; preds = %8439, %8435
  %8447 = phi float [ %8441, %8439 ], [ 1.000000e+00, %8435 ]
  %8448 = phi float [ %8445, %8439 ], [ %8412, %8435 ]
  %8449 = fcmp fast ogt float %8345, %8347
  br i1 %8449, label %8450, label %8470

; <label>:8450                                    ; preds = %8446
  %8451 = fsub fast float 1.000000e+00, %8347
  %8452 = fmul fast float %8363, %8451
  %8453 = fmul fast float %8364, %8451
  %8454 = fmul fast float %8365, %8451
  %8455 = fmul fast float %8366, %8451
  %8456 = fcmp fast une float %8455, 0.000000e+00
  br i1 %8456, label %8457, label %8508, !dx.controlflow.hints !172

; <label>:8457                                    ; preds = %8450
  %8458 = fmul fast float %8455, 0x3FF7154760000000
  %8459 = call float @dx.op.unary.f32(i32 21, float %8458)  ; Exp(value)
  %8460 = fsub fast float 1.000000e+00, %8459
  %8461 = fmul fast float %8452, %8460
  %8462 = fsub fast float -0.000000e+00, %8461
  %8463 = fmul fast float %8453, %8460
  %8464 = fsub fast float -0.000000e+00, %8463
  %8465 = fmul fast float %8454, %8460
  %8466 = fsub fast float -0.000000e+00, %8465
  %8467 = fdiv fast float %8462, %8455
  %8468 = fdiv fast float %8464, %8455
  %8469 = fdiv fast float %8466, %8455
  br label %8508

; <label>:8470                                    ; preds = %8446
  %8471 = fsub fast float 1.000000e+00, %8345
  %8472 = fmul fast float %8376, %8471
  %8473 = fmul fast float %8387, %8471
  %8474 = fmul fast float %8398, %8471
  %8475 = fmul fast float %8377, %8471
  %8476 = fmul fast float %8388, %8471
  %8477 = fmul fast float %8399, %8471
  %8478 = fcmp fast une float %8475, 0.000000e+00
  br i1 %8478, label %8479, label %8486, !dx.controlflow.hints !171

; <label>:8479                                    ; preds = %8470
  %8480 = fmul fast float %8475, 0x3FF7154760000000
  %8481 = call float @dx.op.unary.f32(i32 21, float %8480)  ; Exp(value)
  %8482 = fsub fast float 1.000000e+00, %8481
  %8483 = fmul fast float %8472, %8482
  %8484 = fsub fast float -0.000000e+00, %8483
  %8485 = fdiv fast float %8484, %8475
  br label %8486

; <label>:8486                                    ; preds = %8479, %8470
  %8487 = phi float [ %8485, %8479 ], [ %8472, %8470 ]
  %8488 = phi float [ %8481, %8479 ], [ 1.000000e+00, %8470 ]
  %8489 = fcmp fast une float %8476, 0.000000e+00
  br i1 %8489, label %8490, label %8497, !dx.controlflow.hints !171

; <label>:8490                                    ; preds = %8486
  %8491 = fmul fast float %8476, 0x3FF7154760000000
  %8492 = call float @dx.op.unary.f32(i32 21, float %8491)  ; Exp(value)
  %8493 = fsub fast float 1.000000e+00, %8492
  %8494 = fmul fast float %8473, %8493
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fdiv fast float %8495, %8476
  br label %8497

; <label>:8497                                    ; preds = %8490, %8486
  %8498 = phi float [ %8496, %8490 ], [ %8473, %8486 ]
  %8499 = phi float [ %8492, %8490 ], [ 1.000000e+00, %8486 ]
  %8500 = fcmp fast une float %8477, 0.000000e+00
  br i1 %8500, label %8501, label %8508, !dx.controlflow.hints !171

; <label>:8501                                    ; preds = %8497
  %8502 = fmul fast float %8477, 0x3FF7154760000000
  %8503 = call float @dx.op.unary.f32(i32 21, float %8502)  ; Exp(value)
  %8504 = fsub fast float 1.000000e+00, %8503
  %8505 = fmul fast float %8474, %8504
  %8506 = fsub fast float -0.000000e+00, %8505
  %8507 = fdiv fast float %8506, %8477
  br label %8508

; <label>:8508                                    ; preds = %8501, %8497, %8457, %8450
  %8509 = phi float [ %8507, %8501 ], [ %8469, %8457 ], [ %8454, %8450 ], [ %8474, %8497 ]
  %8510 = phi float [ %8498, %8501 ], [ %8468, %8457 ], [ %8453, %8450 ], [ %8498, %8497 ]
  %8511 = phi float [ %8487, %8501 ], [ %8467, %8457 ], [ %8452, %8450 ], [ %8487, %8497 ]
  %8512 = phi float [ %8503, %8501 ], [ %8459, %8457 ], [ 1.000000e+00, %8450 ], [ 1.000000e+00, %8497 ]
  %8513 = phi float [ %8499, %8501 ], [ %8459, %8457 ], [ 1.000000e+00, %8450 ], [ %8499, %8497 ]
  %8514 = phi float [ %8488, %8501 ], [ %8459, %8457 ], [ 1.000000e+00, %8450 ], [ %8488, %8497 ]
  %8515 = fmul fast float %8514, %8426
  %8516 = fmul fast float %8513, %8437
  %8517 = fmul fast float %8512, %8448
  %8518 = fadd fast float %8515, %8511
  %8519 = fadd fast float %8516, %8510
  %8520 = fadd fast float %8517, %8509
  %8521 = fmul fast float %8514, %8425
  %8522 = fmul fast float %8513, %8436
  %8523 = fmul fast float %8512, %8447
  br label %8524

; <label>:8524                                    ; preds = %8508, %8319
  %8525 = phi float [ %8523, %8508 ], [ %8325, %8319 ]
  %8526 = phi float [ %8522, %8508 ], [ %8324, %8319 ]
  %8527 = phi float [ %8521, %8508 ], [ %8323, %8319 ]
  %8528 = phi float [ %8520, %8508 ], [ %8322, %8319 ]
  %8529 = phi float [ %8519, %8508 ], [ %8321, %8319 ]
  %8530 = phi float [ %8518, %8508 ], [ %8320, %8319 ]
  %8531 = fmul fast float %8530, %7476
  %8532 = fmul fast float %8529, %7476
  %8533 = fmul fast float %8528, %7476
  %8534 = fmul fast float %8527, %7767
  %8535 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8526, float %8525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8536 = call float @dx.op.dot3.f32(i32 55, float %8531, float %8532, float %8533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8537 = select i1 %269, float %8535, float %8527
  %8538 = select i1 %269, float %8535, float %8526
  %8539 = select i1 %269, float 1.000000e+00, float %8525
  %8540 = select i1 %269, float %8536, float %8531
  %8541 = select i1 %269, float 0.000000e+00, float %8532
  %8542 = select i1 %269, float 0.000000e+00, float %8533
  %8543 = fmul fast float %8537, %7761
  %8544 = fmul fast float %8538, %7762
  %8545 = fmul fast float %8539, %7763
  %8546 = fadd fast float %8543, %8540
  %8547 = fadd fast float %8544, %8541
  %8548 = fadd fast float %8542, %8545
  %8549 = fmul fast float %8537, %7764
  %8550 = fmul fast float %8538, %7765
  %8551 = fmul fast float %8539, %7766
  %8552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.i32 %8552, 0
  %8554 = icmp eq i32 %8553, 0
  br i1 %8554, label %8922, label %8555, !dx.controlflow.hints !173

; <label>:8555                                    ; preds = %8524
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8558 = extractvalue %dx.types.CBufRet.f32 %8556, 3
  %8559 = fmul fast float %8557, %110
  %8560 = fmul fast float %8558, %111
  %8561 = fmul fast float %8559, 2.000000e+00
  %8562 = fmul fast float %8560, 2.000000e+00
  %8563 = fsub fast float 1.000000e+00, %8561
  %8564 = fsub fast float 1.000000e+00, %8562
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8568 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8569 = fmul fast float %8563, %8566
  %8570 = fmul fast float %8563, %8567
  %8571 = fmul fast float %8563, %8568
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.CBufRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.CBufRet.f32 %8572, 2
  %8576 = fmul fast float %8564, %8573
  %8577 = fmul fast float %8564, %8574
  %8578 = fmul fast float %8564, %8575
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 0
  %8581 = extractvalue %dx.types.CBufRet.f32 %8579, 1
  %8582 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8583 = fadd fast float %8576, %8580
  %8584 = fadd fast float %8583, %8569
  %8585 = fadd fast float %8577, %8581
  %8586 = fadd fast float %8585, %8570
  %8587 = fadd fast float %8578, %8582
  %8588 = fadd fast float %8587, %8571
  %8589 = fmul fast float %8584, %7760
  %8590 = fmul fast float %8586, %7760
  %8591 = fmul fast float %8588, %7760
  %8592 = fmul fast float %8589, %8589
  %8593 = fmul fast float %8590, %8590
  %8594 = fadd fast float %8592, %8593
  %8595 = fmul fast float %8591, %8591
  %8596 = fadd fast float %8594, %8595
  %8597 = call float @dx.op.unary.f32(i32 24, float %8596)  ; Sqrt(value)
  %8598 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %8599 = fsub fast float %8597, %8598
  %8600 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %8601 = fmul fast float %8599, %8600
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fadd fast float %8602, -5.000000e-01
  %8604 = fmul fast float %8603, 2.000000e+00
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 2
  %8607 = call float @dx.op.binary.f32(i32 36, float %8606, float %8604)  ; FMin(a,b)
  %8608 = fsub fast float -0.000000e+00, %8606
  %8609 = fcmp fast ogt float %8607, %8608
  br i1 %8609, label %8610, label %8922, !dx.controlflow.hints !174

; <label>:8610                                    ; preds = %8555
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8613 = fcmp fast ogt float %8612, 0.000000e+00
  br i1 %8613, label %8614, label %8689, !dx.controlflow.hints !175

; <label>:8614                                    ; preds = %8610
  %8615 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8616 = extractvalue %dx.types.Dimensions %8615, 0
  %8617 = sitofp i32 %8616 to float
  %8618 = extractvalue %dx.types.Dimensions %8615, 1
  %8619 = sitofp i32 %8618 to float
  %8620 = fmul fast float %8559, %8617
  %8621 = fmul fast float %8560, %8619
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = fptoui float %8624 to i32
  %8626 = fptoui float %8620 to i32
  %8627 = fptoui float %8621 to i32
  %8628 = and i32 %8625, 31
  %8629 = lshr i32 %8626, %8628
  %8630 = lshr i32 %8627, %8628
  %8631 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8625, i32 %8629, i32 %8630, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8632 = extractvalue %dx.types.ResRet.f32 %8631, 0
  %8633 = fcmp fast olt float %8632, -1.000000e+00
  %8634 = fcmp fast ogt float %8632, -1.000000e+00
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 1
  %8637 = select i1 %8634, float %8636, float 1.000000e+00
  %8638 = fadd fast float %8632, 1.000000e+00
  %8639 = fmul fast float %8637, %8638
  %8640 = call float @dx.op.unary.f32(i32 6, float %8639)  ; FAbs(value)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8635, 3
  %8642 = fcmp fast oge float %8640, %8641
  %8643 = select i1 %8642, float 0x4197782600000000, float %8640
  %8644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.CBufRet.f32 %8644, 1
  %8647 = extractvalue %dx.types.CBufRet.f32 %8644, 2
  %8648 = select i1 %8633, float %8645, float %8566
  %8649 = select i1 %8633, float %8646, float %8567
  %8650 = select i1 %8633, float %8647, float %8568
  %8651 = fmul fast float %8648, %8563
  %8652 = fmul fast float %8649, %8563
  %8653 = fmul fast float %8650, %8563
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.CBufRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8658 = select i1 %8633, float %8655, float %8573
  %8659 = select i1 %8633, float %8656, float %8574
  %8660 = select i1 %8633, float %8657, float %8575
  %8661 = fmul fast float %8658, %8564
  %8662 = fmul fast float %8659, %8564
  %8663 = fmul fast float %8660, %8564
  %8664 = fadd fast float %8661, %8651
  %8665 = fadd fast float %8662, %8652
  %8666 = fadd fast float %8663, %8653
  %8667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8667, 0
  %8669 = extractvalue %dx.types.CBufRet.f32 %8667, 1
  %8670 = extractvalue %dx.types.CBufRet.f32 %8667, 2
  %8671 = select i1 %8633, float %8668, float %8580
  %8672 = select i1 %8633, float %8669, float %8581
  %8673 = select i1 %8633, float %8670, float %8582
  %8674 = fadd fast float %8664, %8671
  %8675 = fadd fast float %8665, %8672
  %8676 = fadd fast float %8666, %8673
  %8677 = fmul fast float %8674, %8643
  %8678 = fmul fast float %8675, %8643
  %8679 = fmul fast float %8676, %8643
  %8680 = fmul fast float %8677, %8677
  %8681 = fmul fast float %8678, %8678
  %8682 = fadd fast float %8680, %8681
  %8683 = fmul fast float %8679, %8679
  %8684 = fadd fast float %8682, %8683
  %8685 = call float @dx.op.unary.f32(i32 24, float %8684)  ; Sqrt(value)
  %8686 = fsub fast float %8685, %8598
  %8687 = fmul fast float %8686, %8600
  %8688 = call float @dx.op.unary.f32(i32 7, float %8687)  ; Saturate(value)
  br label %8689

; <label>:8689                                    ; preds = %8614, %8610
  %8690 = phi float [ %8688, %8614 ], [ 1.000000e+00, %8610 ]
  %8691 = fmul fast float %8607, 5.000000e-01
  %8692 = fadd fast float %8691, 5.000000e-01
  %8693 = call float @dx.op.unary.f32(i32 22, float %8692)  ; Frc(value)
  %8694 = call float @dx.op.unary.f32(i32 27, float %8693)  ; Round_ni(value)
  %8695 = call float @dx.op.unary.f32(i32 22, float %8693)  ; Frc(value)
  %8696 = fmul fast float %8695, 2.000000e+00
  %8697 = fadd fast float %8696, -1.000000e+00
  %8698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8559, float %8560, float %8694, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8699 = extractvalue %dx.types.ResRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.ResRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.ResRet.f32 %8698, 2
  %8702 = extractvalue %dx.types.ResRet.f32 %8698, 3
  %8703 = fadd fast float %8699, -5.000000e-01
  %8704 = fadd fast float %8701, -5.000000e-01
  %8705 = fmul fast float %8703, 0xBFD5555560000000
  %8706 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8704, float %8705)  ; FMad(a,b,c)
  %8707 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8700, float 0.000000e+00)  ; FMad(a,b,c)
  %8708 = fadd fast float %8707, %8702
  %8709 = fmul fast float %8703, -7.500000e-01
  %8710 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8704, float %8709)  ; FMad(a,b,c)
  %8711 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8700, float 0.000000e+00)  ; FMad(a,b,c)
  %8712 = fadd fast float %8711, %8702
  %8713 = call float @dx.op.binary.f32(i32 35, float %8706, float -1.000000e+00)  ; FMax(a,b)
  %8714 = call float @dx.op.binary.f32(i32 35, float %8708, float -1.000000e+00)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8710, float -1.000000e+00)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 35, float %8712, float -1.000000e+00)  ; FMax(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8713, float 1.000000e+00)  ; FMin(a,b)
  %8718 = call float @dx.op.binary.f32(i32 36, float %8714, float 1.000000e+00)  ; FMin(a,b)
  %8719 = call float @dx.op.binary.f32(i32 36, float %8715, float 1.000000e+00)  ; FMin(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8716, float 1.000000e+00)  ; FMin(a,b)
  %8721 = fcmp fast olt float %8717, 0x3FEFFF8020000000
  br i1 %8721, label %8722, label %8837, !dx.controlflow.hints !176

; <label>:8722                                    ; preds = %8689
  %8723 = extractvalue %dx.types.CBufRet.f32 %8605, 3
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8728 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8729 = fsub fast float %8725, %8717
  %8730 = fsub fast float %8726, %8718
  %8731 = fsub fast float %8727, %8719
  %8732 = fsub fast float %8728, %8720
  %8733 = fmul fast float %8729, %8723
  %8734 = fmul fast float %8730, %8723
  %8735 = fmul fast float %8731, %8723
  %8736 = fmul fast float %8732, %8723
  %8737 = fadd fast float %8733, %8717
  %8738 = fadd fast float %8734, %8718
  %8739 = fsub fast float -0.000000e+00, %8738
  %8740 = fadd fast float %8735, %8719
  %8741 = fadd fast float %8736, %8720
  %8742 = fmul fast float %8737, %8737
  %8743 = fsub fast float %8738, %8742
  %8744 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8743)  ; FMax(a,b)
  %8745 = fdiv fast float 1.000000e+00, %8744
  %8746 = fmul fast float %8738, %8737
  %8747 = fsub fast float %8740, %8746
  %8748 = fsub fast float %8697, %8737
  %8749 = fmul fast float %8697, %8697
  %8750 = fsub fast float %8749, %8738
  %8751 = fmul fast float %8748, %8745
  %8752 = fmul fast float %8751, %8747
  %8753 = fsub fast float %8750, %8752
  %8754 = fmul fast float %8738, %8738
  %8755 = fsub fast float %8741, %8754
  %8756 = fmul fast float %8747, %8747
  %8757 = fmul fast float %8756, %8745
  %8758 = fsub fast float %8755, %8757
  %8759 = fdiv fast float %8753, %8758
  %8760 = fmul fast float %8747, %8759
  %8761 = fsub fast float %8748, %8760
  %8762 = fmul fast float %8761, %8745
  %8763 = fmul fast float %8762, %8737
  %8764 = fsub fast float 1.000000e+00, %8763
  %8765 = fmul fast float %8738, %8759
  %8766 = fsub fast float %8764, %8765
  %8767 = fmul fast float %8762, %8762
  %8768 = fmul fast float %8759, 4.000000e+00
  %8769 = fmul fast float %8768, %8766
  %8770 = fsub fast float %8767, %8769
  %8771 = call float @dx.op.unary.f32(i32 24, float %8770)  ; Sqrt(value)
  %8772 = fcmp fast oge float %8762, 0.000000e+00
  %8773 = fsub fast float -0.000000e+00, %8771
  %8774 = select i1 %8772, float %8773, float %8771
  %8775 = fsub fast float %8774, %8762
  %8776 = fdiv fast float %8775, %8759
  %8777 = fdiv fast float %8766, %8775
  %8778 = fmul fast float %8776, 5.000000e-01
  %8779 = fmul fast float %8777, 2.000000e+00
  %8780 = select i1 %8772, float %8778, float %8779
  %8781 = select i1 %8772, float %8779, float %8778
  %8782 = call float @dx.op.binary.f32(i32 35, float %8780, float %8781)  ; FMax(a,b)
  %8783 = call float @dx.op.binary.f32(i32 36, float %8780, float %8781)  ; FMin(a,b)
  %8784 = fcmp fast ogt float %8697, %8783
  br i1 %8784, label %8785, label %8795

; <label>:8785                                    ; preds = %8722
  %8786 = fsub fast float %8697, %8783
  %8787 = fsub fast float %8782, %8783
  %8788 = fmul fast float %8786, %8787
  %8789 = fmul fast float %8782, %8697
  %8790 = fadd fast float %8782, %8697
  %8791 = fmul fast float %8790, %8737
  %8792 = fadd fast float %8789, %8738
  %8793 = fsub fast float %8792, %8791
  %8794 = fdiv fast float %8793, %8788
  br label %8795

; <label>:8795                                    ; preds = %8785, %8722
  %8796 = phi float [ %8794, %8785 ], [ 0.000000e+00, %8722 ]
  %8797 = fcmp fast ogt float %8697, %8782
  %8798 = fsub fast float %8697, %8782
  br i1 %8797, label %8799, label %8809

; <label>:8799                                    ; preds = %8795
  %8800 = fsub fast float %8782, %8783
  %8801 = fmul fast float %8800, %8798
  %8802 = fmul fast float %8783, %8697
  %8803 = fadd fast float %8783, %8697
  %8804 = fmul fast float %8803, %8737
  %8805 = fsub fast float %8739, %8802
  %8806 = fadd fast float %8805, %8804
  %8807 = fdiv fast float %8806, %8801
  %8808 = fadd fast float %8807, %8796
  br label %8809

; <label>:8809                                    ; preds = %8799, %8795
  %8810 = phi float [ %8808, %8799 ], [ %8796, %8795 ]
  %8811 = fsub fast float %8697, %8783
  %8812 = fmul fast float %8811, %8798
  %8813 = fmul fast float %8783, %8782
  %8814 = fadd fast float %8783, %8782
  %8815 = fmul fast float %8814, %8737
  %8816 = fadd fast float %8813, %8738
  %8817 = fsub fast float %8816, %8815
  %8818 = fdiv fast float %8817, %8812
  %8819 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  %8820 = fcmp fast oeq float %7488, 0.000000e+00
  %8821 = extractvalue %dx.types.CBufRet.f32 %8605, 0
  %8822 = fcmp fast oeq float %8821, 0.000000e+00
  %8823 = or i1 %8820, %8822
  %8824 = fmul fast float %8821, 2.000000e+00
  %8825 = fadd fast float %8606, %8607
  %8826 = fdiv fast float %8825, %8824
  %8827 = call float @dx.op.unary.f32(i32 7, float %8826)  ; Saturate(value)
  %8828 = fmul fast float %8827, 2.000000e+00
  %8829 = fsub fast float 3.000000e+00, %8828
  %8830 = fmul fast float %8827, %8827
  %8831 = fmul fast float %8830, %8829
  %8832 = select i1 %8823, float 1.000000e+00, float %8831
  %8833 = fmul fast float %8818, %7488
  %8834 = fadd fast float %8819, %8833
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fmul fast float %8832, %8835
  br label %8837

; <label>:8837                                    ; preds = %8809, %8689
  %8838 = phi float [ %8836, %8809 ], [ 0.000000e+00, %8689 ]
  %8839 = fsub fast float 1.000000e+00, %8838
  %8840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8559, float %8560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8841 = extractvalue %dx.types.ResRet.f32 %8840, 0
  %8842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.i32 %8842, 2
  %8844 = icmp eq i32 %8843, 0
  br i1 %8844, label %8850, label %8845

; <label>:8845                                    ; preds = %8837
  %8846 = call float @dx.op.unary.f32(i32 7, float %8838)  ; Saturate(value)
  %8847 = fadd fast float %8841, -1.000000e+00
  %8848 = fmul fast float %8846, %8847
  %8849 = fadd fast float %8848, 1.000000e+00
  br label %8850

; <label>:8850                                    ; preds = %8845, %8837
  %8851 = phi float [ %8849, %8845 ], [ %8839, %8837 ]
  br i1 %8613, label %8852, label %8870

; <label>:8852                                    ; preds = %8850
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 1
  %8855 = fsub fast float %8690, %8854
  %8856 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8857 = fsub fast float %8690, %8612
  %8858 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8859 = fsub fast float %8856, %8858
  %8860 = fsub fast float %8692, %8858
  %8861 = fdiv fast float %8860, %8859
  %8862 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8863 = fmul fast float %8862, 2.000000e+00
  %8864 = fsub fast float 3.000000e+00, %8863
  %8865 = fsub fast float %8841, %8851
  %8866 = fmul fast float %8862, %8862
  %8867 = fmul fast float %8866, %8865
  %8868 = fmul fast float %8867, %8864
  %8869 = fadd fast float %8868, %8851
  br label %8870

; <label>:8870                                    ; preds = %8852, %8850
  %8871 = phi float [ %8869, %8852 ], [ %8851, %8850 ]
  %8872 = call float @dx.op.binary.f32(i32 35, float %8841, float %8871)  ; FMax(a,b)
  %8873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.i32 %8873, 2
  %8875 = and i32 %8874, 1
  %8876 = icmp eq i32 %8875, 0
  %8877 = fcmp fast une float %8872, 1.000000e+00
  %8878 = and i1 %8877, %8876
  br i1 %8878, label %8879, label %8898

; <label>:8879                                    ; preds = %8870
  %8880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8559, float %8560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8881 = extractvalue %dx.types.ResRet.f32 %8880, 0
  %8882 = extractvalue %dx.types.ResRet.f32 %8880, 1
  %8883 = extractvalue %dx.types.ResRet.f32 %8880, 2
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 1
  %8886 = fmul fast float %8885, %8881
  %8887 = fmul fast float %8885, %8882
  %8888 = fmul fast float %8885, %8883
  %8889 = fcmp fast ogt float %8841, 0x3FEFFF2E40000000
  %8890 = fsub fast float 1.000000e+00, %8872
  %8891 = fsub fast float 1.000000e+00, %8841
  %8892 = fdiv fast float %8890, %8891
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = select i1 %8889, float 0.000000e+00, float %8893
  %8895 = fmul fast float %8886, %8894
  %8896 = fmul fast float %8887, %8894
  %8897 = fmul fast float %8888, %8894
  br label %8898

; <label>:8898                                    ; preds = %8879, %8870
  %8899 = phi float [ 0.000000e+00, %8870 ], [ %8895, %8879 ]
  %8900 = phi float [ 0.000000e+00, %8870 ], [ %8896, %8879 ]
  %8901 = phi float [ 0.000000e+00, %8870 ], [ %8897, %8879 ]
  %8902 = fmul fast float %8899, %7476
  %8903 = fmul fast float %8900, %7476
  %8904 = fmul fast float %8901, %7476
  %8905 = fmul fast float %8872, %8534
  %8906 = call float @dx.op.dot3.f32(i32 55, float %8872, float %8872, float %8872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8907 = call float @dx.op.dot3.f32(i32 55, float %8902, float %8903, float %8904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8908 = select i1 %269, float %8906, float %8872
  %8909 = select i1 %269, float 1.000000e+00, float %8872
  %8910 = select i1 %269, float %8907, float %8902
  %8911 = select i1 %269, float 0.000000e+00, float %8903
  %8912 = select i1 %269, float 0.000000e+00, float %8904
  %8913 = fmul fast float %8908, %8546
  %8914 = fmul fast float %8908, %8547
  %8915 = fmul fast float %8909, %8548
  %8916 = fadd fast float %8913, %8910
  %8917 = fadd fast float %8914, %8911
  %8918 = fadd fast float %8912, %8915
  %8919 = fmul fast float %8908, %8549
  %8920 = fmul fast float %8908, %8550
  %8921 = fmul fast float %8909, %8551
  br label %8922

; <label>:8922                                    ; preds = %8898, %8555, %8524, %7756
  %8923 = phi float [ %7761, %7756 ], [ %8546, %8524 ], [ %8916, %8898 ], [ %8546, %8555 ]
  %8924 = phi float [ %7762, %7756 ], [ %8547, %8524 ], [ %8917, %8898 ], [ %8547, %8555 ]
  %8925 = phi float [ %7763, %7756 ], [ %8548, %8524 ], [ %8918, %8898 ], [ %8548, %8555 ]
  %8926 = phi float [ %7764, %7756 ], [ %8549, %8524 ], [ %8919, %8898 ], [ %8549, %8555 ]
  %8927 = phi float [ %7765, %7756 ], [ %8550, %8524 ], [ %8920, %8898 ], [ %8550, %8555 ]
  %8928 = phi float [ %7766, %7756 ], [ %8551, %8524 ], [ %8921, %8898 ], [ %8551, %8555 ]
  %8929 = phi float [ %7767, %7756 ], [ %8534, %8524 ], [ %8905, %8898 ], [ %8534, %8555 ]
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8932 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8933 = fmul fast float %8931, %110
  %8934 = fmul fast float %8932, %111
  %8935 = call float @dx.op.unary.f32(i32 7, float %8933)  ; Saturate(value)
  %8936 = call float @dx.op.unary.f32(i32 7, float %8934)  ; Saturate(value)
  %8937 = select i1 %7498, i32 2, i32 0
  %8938 = or i32 %8937, 1
  %8939 = uitofp i32 %8938 to float
  %8940 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8935, float %8936, float %8939, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = extractvalue %dx.types.ResRet.f32 %8940, 3
  %8945 = add nuw nsw i32 %8937, 2
  %8946 = uitofp i32 %8945 to float
  %8947 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8935, float %8936, float %8946, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8948 = extractvalue %dx.types.ResRet.f32 %8947, 0
  %8949 = extractvalue %dx.types.ResRet.f32 %8947, 1
  %8950 = extractvalue %dx.types.ResRet.f32 %8947, 2
  %8951 = extractvalue %dx.types.ResRet.f32 %8947, 3
  %8952 = call float @dx.op.binary.f32(i32 35, float %8942, float %8943)  ; FMax(a,b)
  %8953 = call float @dx.op.binary.f32(i32 35, float %8941, float %8952)  ; FMax(a,b)
  %8954 = call float @dx.op.binary.f32(i32 35, float %8953, float %8944)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 36, float %8949, float %8950)  ; FMin(a,b)
  %8956 = call float @dx.op.binary.f32(i32 36, float %8948, float %8955)  ; FMin(a,b)
  %8957 = call float @dx.op.binary.f32(i32 36, float %8956, float %8951)  ; FMin(a,b)
  %8958 = fmul fast float %8954, 2.550000e+02
  %8959 = fadd fast float %8958, 0x3F70101020000000
  %8960 = fptoui float %8959 to i32
  %8961 = fmul fast float %8957, 2.550000e+02
  %8962 = fadd fast float %8961, 0x3F70101020000000
  %8963 = fptoui float %8962 to i32
  %8964 = icmp ult i32 %8960, %8963
  br i1 %8964, label %8965, label %9134

; <label>:8965                                    ; preds = %8922
  %8966 = fcmp fast ogt float %100, 9.843750e-01
  %8967 = fadd fast float %7760, -4.000000e+00
  %8968 = select i1 %8966, float -4.000000e+00, float %8967
  %8969 = call float @dx.op.binary.f32(i32 35, float %8968, float 0.000000e+00)  ; FMax(a,b)
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = fadd fast float %8971, %8969
  %8973 = extractvalue %dx.types.CBufRet.f32 %8970, 2
  %8974 = fmul fast float %8972, %8973
  %8975 = call float @dx.op.unary.f32(i32 23, float %8974)  ; Log(value)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8977 = fmul fast float %8976, %8975
  %8978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8978, 2
  %8980 = fmul fast float %8977, %8979
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = uitofp i32 %8960 to float
  %8983 = uitofp i32 %8963 to float
  %8984 = fadd fast float %8982, 5.000000e-01
  %8985 = fadd fast float %8983, 5.000000e-01
  %8986 = fmul fast float %8979, %8984
  %8987 = fmul fast float %8979, %8985
  %8988 = fadd fast float %8986, 0x3F0FFB4800000000
  %8989 = fadd fast float %8987, 0xBF0FFB4800000000
  %8990 = call float @dx.op.binary.f32(i32 35, float %8981, float %8988)  ; FMax(a,b)
  %8991 = call float @dx.op.binary.f32(i32 36, float %8990, float %8989)  ; FMin(a,b)
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 1
  %8994 = extractvalue %dx.types.CBufRet.f32 %8992, 2
  %8995 = extractvalue %dx.types.CBufRet.f32 %8992, 0
  %8996 = select i1 %7498, float %8995, float 0.000000e+00
  %8997 = fmul fast float %8993, %8991
  %8998 = fadd fast float %8996, %8997
  %8999 = fadd fast float %8996, %8994
  %9000 = fsub fast float %8993, %8994
  %9001 = fadd fast float %9000, %8996
  %9002 = call float @dx.op.binary.f32(i32 35, float %8998, float %8999)  ; FMax(a,b)
  %9003 = call float @dx.op.binary.f32(i32 36, float %9002, float %9001)  ; FMin(a,b)
  %9004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8935, float %8936, float %9003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9005 = extractvalue %dx.types.ResRet.f32 %9004, 0
  %9006 = extractvalue %dx.types.ResRet.f32 %9004, 1
  %9007 = extractvalue %dx.types.ResRet.f32 %9004, 2
  %9008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.i32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.i32 %9008, 1
  %9011 = uitofp i32 %9009 to float
  %9012 = uitofp i32 %9010 to float
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = fmul fast float %9011, %8935
  %9017 = fmul fast float %9012, %8936
  %9018 = fadd fast float %9016, -5.000000e-01
  %9019 = fadd fast float %9017, -5.000000e-01
  %9020 = call float @dx.op.unary.f32(i32 22, float %9018)  ; Frc(value)
  %9021 = call float @dx.op.unary.f32(i32 22, float %9019)  ; Frc(value)
  %9022 = fmul fast float %9020, %9020
  %9023 = fmul fast float %9022, %9020
  %9024 = fsub fast float 3.000000e+00, %9020
  %9025 = fmul fast float %9022, %9024
  %9026 = fmul fast float %9020, 3.000000e+00
  %9027 = fmul fast float %9023, 3.000000e+00
  %9028 = fmul fast float %9022, 6.000000e+00
  %9029 = fsub fast float %9027, %9028
  %9030 = fadd fast float %9029, 4.000000e+00
  %9031 = fmul fast float %9030, 0x3FC5555560000000
  %9032 = fmul fast float %9023, -3.000000e+00
  %9033 = fadd fast float %9022, %9020
  %9034 = fmul fast float %9033, 3.000000e+00
  %9035 = fadd fast float %9032, 1.000000e+00
  %9036 = fadd fast float %9035, %9034
  %9037 = fmul fast float %9023, 0x3FC5555560000000
  %9038 = fmul fast float %9021, %9021
  %9039 = fmul fast float %9038, %9021
  %9040 = fsub fast float 3.000000e+00, %9021
  %9041 = fmul fast float %9038, %9040
  %9042 = fmul fast float %9021, 3.000000e+00
  %9043 = fmul fast float %9039, 3.000000e+00
  %9044 = fmul fast float %9038, 6.000000e+00
  %9045 = fsub fast float %9043, %9044
  %9046 = fadd fast float %9045, 4.000000e+00
  %9047 = fmul fast float %9046, 0x3FC5555560000000
  %9048 = fmul fast float %9039, -3.000000e+00
  %9049 = fadd fast float %9038, %9021
  %9050 = fmul fast float %9049, 3.000000e+00
  %9051 = fadd fast float %9048, 1.000000e+00
  %9052 = fadd fast float %9051, %9050
  %9053 = fmul fast float %9039, 0x3FC5555560000000
  %9054 = fadd fast float %9020, 1.000000e+00
  %9055 = fsub fast float 1.000000e+00, %9026
  %9056 = fadd fast float %9055, %9025
  %9057 = fadd fast float %9056, %9030
  %9058 = fmul fast float %9057, 0x3FC5555560000000
  %9059 = fdiv fast float %9031, %9058
  %9060 = fsub fast float %9054, %9059
  %9061 = fsub fast float 1.000000e+00, %9020
  %9062 = fadd fast float %9036, %9023
  %9063 = fmul fast float %9062, 0x3FC5555560000000
  %9064 = fdiv fast float %9037, %9063
  %9065 = fadd fast float %9061, %9064
  %9066 = fadd fast float %9021, 1.000000e+00
  %9067 = fsub fast float 1.000000e+00, %9042
  %9068 = fadd fast float %9067, %9041
  %9069 = fadd fast float %9068, %9046
  %9070 = fmul fast float %9069, 0x3FC5555560000000
  %9071 = fdiv fast float %9047, %9070
  %9072 = fsub fast float %9066, %9071
  %9073 = fsub fast float 1.000000e+00, %9021
  %9074 = fadd fast float %9052, %9039
  %9075 = fmul fast float %9074, 0x3FC5555560000000
  %9076 = fdiv fast float %9053, %9075
  %9077 = fadd fast float %9076, %9073
  %9078 = fmul fast float %9060, %9014
  %9079 = fsub fast float %8935, %9078
  %9080 = fmul fast float %9065, %9014
  %9081 = fadd fast float %9080, %8935
  %9082 = fmul fast float %9077, %9015
  %9083 = fadd fast float %9082, %8936
  %9084 = fmul fast float %9072, %9015
  %9085 = fsub fast float %8936, %9084
  %9086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9079, float %9085, float %9003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9087 = extractvalue %dx.types.ResRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.ResRet.f32 %9086, 1
  %9089 = extractvalue %dx.types.ResRet.f32 %9086, 2
  %9090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9081, float %9085, float %9003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9091 = extractvalue %dx.types.ResRet.f32 %9090, 0
  %9092 = extractvalue %dx.types.ResRet.f32 %9090, 1
  %9093 = extractvalue %dx.types.ResRet.f32 %9090, 2
  %9094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9079, float %9083, float %9003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9095 = extractvalue %dx.types.ResRet.f32 %9094, 0
  %9096 = extractvalue %dx.types.ResRet.f32 %9094, 1
  %9097 = extractvalue %dx.types.ResRet.f32 %9094, 2
  %9098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9081, float %9083, float %9003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9099 = extractvalue %dx.types.ResRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.ResRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.ResRet.f32 %9098, 2
  %9102 = fsub fast float %9095, %9087
  %9103 = fsub fast float %9096, %9088
  %9104 = fsub fast float %9097, %9089
  %9105 = fmul fast float %9102, %9075
  %9106 = fmul fast float %9103, %9075
  %9107 = fmul fast float %9104, %9075
  %9108 = fadd fast float %9105, %9087
  %9109 = fadd fast float %9106, %9088
  %9110 = fadd fast float %9107, %9089
  %9111 = fsub fast float %9099, %9091
  %9112 = fsub fast float %9100, %9092
  %9113 = fsub fast float %9101, %9093
  %9114 = fmul fast float %9111, %9075
  %9115 = fmul fast float %9112, %9075
  %9116 = fmul fast float %9113, %9075
  %9117 = fsub fast float %9091, %9108
  %9118 = fadd fast float %9117, %9114
  %9119 = fsub fast float %9092, %9109
  %9120 = fadd fast float %9119, %9115
  %9121 = fsub fast float %9093, %9110
  %9122 = fadd fast float %9121, %9116
  %9123 = fmul fast float %9118, %9063
  %9124 = fmul fast float %9120, %9063
  %9125 = fmul fast float %9122, %9063
  %9126 = fadd fast float %9123, %9108
  %9127 = fadd fast float %9124, %9109
  %9128 = fadd fast float %9125, %9110
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9131 = fmul fast float %9126, %9130
  %9132 = fmul fast float %9127, %9130
  %9133 = fmul fast float %9128, %9130
  br label %9134

; <label>:9134                                    ; preds = %8965, %8922
  %9135 = phi float [ %9005, %8965 ], [ 1.000000e+00, %8922 ]
  %9136 = phi float [ %9006, %8965 ], [ 1.000000e+00, %8922 ]
  %9137 = phi float [ %9007, %8965 ], [ 1.000000e+00, %8922 ]
  %9138 = phi float [ %9131, %8965 ], [ 0.000000e+00, %8922 ]
  %9139 = phi float [ %9132, %8965 ], [ 0.000000e+00, %8922 ]
  %9140 = phi float [ %9133, %8965 ], [ 0.000000e+00, %8922 ]
  %9141 = fmul fast float %9138, %7476
  %9142 = fmul fast float %9139, %7476
  %9143 = fmul fast float %9140, %7476
  %9144 = fmul fast float %9135, %8929
  %9145 = call float @dx.op.dot3.f32(i32 55, float %9135, float %9136, float %9137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9146 = call float @dx.op.dot3.f32(i32 55, float %9141, float %9142, float %9143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9147 = select i1 %269, float %9145, float %9135
  %9148 = select i1 %269, float %9145, float %9136
  %9149 = select i1 %269, float 1.000000e+00, float %9137
  %9150 = select i1 %269, float %9146, float %9141
  %9151 = select i1 %269, float 0.000000e+00, float %9142
  %9152 = select i1 %269, float 0.000000e+00, float %9143
  %9153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.i32 %9153, 3
  %9155 = and i32 %9154, 3
  %9156 = icmp ne i32 %9155, 0
  %9157 = and i32 %9154, 4
  %9158 = icmp ne i32 %9157, 0
  %9159 = and i1 %9156, %9158
  %9160 = and i1 %269, %9159
  br i1 %9160, label %9161, label %9167

; <label>:9161                                    ; preds = %9134
  %9162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.f32 %9162, 1
  %9164 = fadd fast float %9144, -1.000000e+00
  %9165 = fmul fast float %9163, %9164
  %9166 = fadd fast float %9165, 1.000000e+00
  br label %9167

; <label>:9167                                    ; preds = %9161, %9134
  %9168 = phi float [ %9166, %9161 ], [ %9144, %9134 ]
  %9169 = fadd fast float %8926, %8923
  %9170 = fmul fast float %9147, %9169
  %9171 = fadd fast float %9170, %9150
  %9172 = fadd fast float %8927, %8924
  %9173 = fmul fast float %9148, %9172
  %9174 = fadd fast float %9173, %9151
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 0
  br i1 %269, label %9177, label %9201

; <label>:9177                                    ; preds = %9167
  %9178 = fadd fast float %9171, %9174
  %9179 = fmul fast float %9176, %9178
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 3
  %9182 = extractvalue %dx.types.CBufRet.f32 %7480, 1
  %9183 = fsub fast float %7485, %7479
  %9184 = fadd fast float %9183, %7486
  %9185 = fsub fast float %9184, %9182
  %9186 = extractvalue %dx.types.CBufRet.f32 %7480, 2
  %9187 = fmul fast float %9185, %9186
  %9188 = call float @dx.op.unary.f32(i32 7, float %9187)  ; Saturate(value)
  %9189 = fsub fast float %9188, %9181
  %9190 = fmul fast float %9189, %9168
  %9191 = fadd fast float %9190, %9181
  %9192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9193 = extractvalue %dx.types.CBufRet.f32 %9192, 0
  %9194 = fsub fast float %9191, %9193
  %9195 = fmul fast float %9194, 1.000000e+01
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = fsub fast float %4243, %7476
  %9198 = fmul fast float %9196, %9197
  %9199 = fadd fast float %9198, %7476
  %9200 = fmul fast float %9199, %9191
  br label %9225

; <label>:9201                                    ; preds = %9167
  %9202 = fadd fast float %8928, %8925
  %9203 = fmul fast float %9149, %9202
  %9204 = fadd fast float %9203, %9152
  %9205 = fmul fast float %9176, %9171
  %9206 = fmul fast float %9176, %9174
  %9207 = fmul fast float %9176, %9204
  %9208 = call float @dx.op.binary.f32(i32 35, float %9206, float %9207)  ; FMax(a,b)
  %9209 = call float @dx.op.binary.f32(i32 35, float %9205, float %9208)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float %9209, float %7476)  ; FMax(a,b)
  %9211 = fcmp fast ugt float %9210, 0x3F10000000000000
  br i1 %9211, label %9213, label %9212

; <label>:9212                                    ; preds = %9201
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9213

; <label>:9213                                    ; preds = %9212, %9201
  %9214 = add i32 %56, 356
  %9215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9214, i32 undef)  ; BufferLoad(srv,index,wot)
  %9216 = extractvalue %dx.types.ResRet.i32 %9215, 0
  %9217 = and i32 %9216, 32
  %9218 = icmp eq i32 %9217, 0
  br i1 %9218, label %9225, label %9219

; <label>:9219                                    ; preds = %9213
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = fmul fast float %9221, 0x3FE99999A0000000
  %9223 = fadd fast float %9221, %9205
  %9224 = fadd fast float %9222, %9207
  br label %9225

; <label>:9225                                    ; preds = %9219, %9213, %9177
  %9226 = phi float [ %9179, %9177 ], [ %9223, %9219 ], [ %9205, %9213 ]
  %9227 = phi float [ %9200, %9177 ], [ %9206, %9219 ], [ %9206, %9213 ]
  %9228 = phi float [ %9199, %9177 ], [ %9224, %9219 ], [ %9207, %9213 ]
  %9229 = phi float [ %9199, %9177 ], [ %7476, %9219 ], [ %7476, %9213 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9230 = call float @dx.op.binary.f32(i32 36, float %9226, float 3.225500e+04)  ; FMin(a,b)
  %9231 = call float @dx.op.binary.f32(i32 36, float %9227, float 3.225500e+04)  ; FMin(a,b)
  %9232 = call float @dx.op.binary.f32(i32 36, float %9228, float 3.225500e+04)  ; FMin(a,b)
  %9233 = call float @dx.op.binary.f32(i32 36, float %9229, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9230)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9231)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9232)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9233)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

