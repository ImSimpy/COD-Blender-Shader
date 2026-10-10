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
;
; shader hash: 2648ef8cfd36d12405e247d0c08fdd88
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %3554 = icmp ne i32 %59, 65535
  %3555 = add i32 %56, 496
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = add i32 %3557, 0
  %3559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3559, %dx.types.Handle %47, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = fcmp fast ogt float %3561, 0.000000e+00
  %3563 = and i1 %3554, %3562
  br i1 %3563, label %3564, label %4082

; <label>:3564                                    ; preds = %3466
  %3565 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3566 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3567 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3568 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3569 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3570 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3571 = fadd fast float %3565, %60
  %3572 = fadd fast float %3566, %61
  %3573 = fadd fast float %3567, %62
  %3574 = fadd fast float %3568, %60
  %3575 = fadd fast float %3569, %61
  %3576 = fadd fast float %3570, %62
  %3577 = mul i32 %59, 48
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = add i32 %3577, 16
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = add i32 %3577, 32
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = extractvalue %dx.types.ResRet.f32 %3588, 3
  %3593 = bitcast float %3592 to i32
  %3594 = fmul fast float %3579, %60
  %3595 = fmul fast float %3580, %61
  %3596 = fmul fast float %3581, %62
  %3597 = fsub fast float %3594, %3584
  %3598 = fsub fast float %3595, %3585
  %3599 = fsub fast float %3596, %3586
  %3600 = call float @dx.op.unary.f32(i32 7, float %3597)  ; Saturate(value)
  %3601 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3602 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3603 = fmul fast float %3600, %3589
  %3604 = fmul fast float %3601, %3590
  %3605 = fmul fast float %3602, %3591
  %3606 = fadd fast float %3589, -1.000000e+00
  %3607 = fadd fast float %3590, -1.000000e+00
  %3608 = fadd fast float %3591, -1.000000e+00
  %3609 = call float @dx.op.unary.f32(i32 27, float %3603)  ; Round_ni(value)
  %3610 = call float @dx.op.unary.f32(i32 27, float %3604)  ; Round_ni(value)
  %3611 = call float @dx.op.unary.f32(i32 27, float %3605)  ; Round_ni(value)
  %3612 = call float @dx.op.binary.f32(i32 36, float %3609, float %3606)  ; FMin(a,b)
  %3613 = call float @dx.op.binary.f32(i32 36, float %3610, float %3607)  ; FMin(a,b)
  %3614 = call float @dx.op.binary.f32(i32 36, float %3611, float %3608)  ; FMin(a,b)
  %3615 = fmul fast float %3614, %3590
  %3616 = fadd fast float %3615, %3613
  %3617 = fmul fast float %3616, %3589
  %3618 = fadd fast float %3617, %3612
  %3619 = fptosi float %3618 to i32
  %3620 = add nsw i32 %3619, %3593
  %3621 = shl nsw i32 %3620, 2
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = lshr i32 %3623, 16
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %4050, label %3626

; <label>:3626                                    ; preds = %3564
  br label %3627

; <label>:3627                                    ; preds = %3749, %3626
  %3628 = phi i32 [ %3651, %3749 ], [ %3624, %3626 ]
  %3629 = phi float [ %3750, %3749 ], [ 0.000000e+00, %3626 ]
  %3630 = phi float [ %3751, %3749 ], [ %1258, %3626 ]
  %3631 = phi float [ %3752, %3749 ], [ %3499, %3626 ]
  %3632 = phi float [ %3753, %3749 ], [ %3478, %3626 ]
  %3633 = phi float [ %3754, %3749 ], [ 0.000000e+00, %3626 ]
  %3634 = phi float [ %3755, %3749 ], [ 0.000000e+00, %3626 ]
  %3635 = phi float [ %3756, %3749 ], [ %3521, %3626 ]
  %3636 = phi float [ %3757, %3749 ], [ %3523, %3626 ]
  %3637 = phi float [ %3758, %3749 ], [ %3525, %3626 ]
  %3638 = phi float [ %3759, %3749 ], [ %3551, %3626 ]
  %3639 = phi float [ %3760, %3749 ], [ %3552, %3626 ]
  %3640 = phi float [ %3761, %3749 ], [ %3553, %3626 ]
  %3641 = phi float [ %3762, %3749 ], [ %3477, %3626 ]
  %3642 = phi float [ %3763, %3749 ], [ %3476, %3626 ]
  %3643 = phi float [ %3764, %3749 ], [ 0.000000e+00, %3626 ]
  %3644 = phi float [ %3765, %3749 ], [ %3475, %3626 ]
  %3645 = phi float [ %3766, %3749 ], [ %3506, %3626 ]
  %3646 = phi float [ %3767, %3749 ], [ %3507, %3626 ]
  %3647 = phi float [ %3768, %3749 ], [ %3508, %3626 ]
  %3648 = shl nuw nsw i32 %3628, 2
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = lshr i32 %3650, 16
  %3652 = shl i32 %3650, 8
  %3653 = and i32 %3652, 16776960
  %3654 = or i32 %3653, 48
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = or i32 %3653, 64
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.i32 %3660, 1
  %3663 = or i32 %3653, 80
  %3664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3667 = or i32 %3653, 96
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3673 = or i32 %3653, 112
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3676 = or i32 %3653, 128
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = or i32 %3653, 144
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = or i32 %3653, 160
  %3689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3693 = extractvalue %dx.types.ResRet.f32 %3689, 3
  %3694 = or i32 %3653, 192
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = or i32 %3653, 208
  %3698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = or i32 %3653, 248
  %3701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = extractvalue %dx.types.ResRet.f32 %3701, 1
  %3704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3704, 3
  %3709 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3710 = or i32 %3653, 16
  %3711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3711, 2
  %3715 = extractvalue %dx.types.ResRet.f32 %3711, 3
  %3716 = call float @dx.op.dot4.f32(i32 56, float %3712, float %3713, float %3714, float %3715, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3717 = or i32 %3653, 32
  %3718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.f32 %3718, 0
  %3720 = extractvalue %dx.types.ResRet.f32 %3718, 1
  %3721 = extractvalue %dx.types.ResRet.f32 %3718, 2
  %3722 = extractvalue %dx.types.ResRet.f32 %3718, 3
  %3723 = call float @dx.op.dot4.f32(i32 56, float %3719, float %3720, float %3721, float %3722, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3709)  ; Round_ni(value)
  %3725 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %3726 = call float @dx.op.unary.f32(i32 27, float %3716)  ; Round_ni(value)
  %3727 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3728 = call float @dx.op.unary.f32(i32 6, float %3723)  ; FAbs(value)
  %3729 = call float @dx.op.unary.f32(i32 27, float %3728)  ; Round_ni(value)
  %3730 = fadd fast float %3727, %3725
  %3731 = fadd fast float %3730, %3729
  %3732 = fcmp fast oeq float %3731, 0.000000e+00
  %3733 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %3571, float %3572, float %3573, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3734 = call float @dx.op.dot4.f32(i32 56, float %3712, float %3713, float %3714, float %3715, float %3571, float %3572, float %3573, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3735 = call float @dx.op.dot4.f32(i32 56, float %3705, float %3706, float %3707, float %3708, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3736 = call float @dx.op.dot4.f32(i32 56, float %3712, float %3713, float %3714, float %3715, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3737 = fsub fast float %3733, %3709
  %3738 = fsub fast float %3735, %3709
  %3739 = fsub fast float %3734, %3716
  %3740 = fsub fast float %3736, %3716
  %3741 = call float @dx.op.dot3.f32(i32 55, float %3656, float %3657, float %3658, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3744 = fadd fast float %3743, %3741
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3747 = fcmp fast ogt float %3745, %3746
  %3748 = and i1 %3732, %3747
  br i1 %3748, label %3770, label %3749

; <label>:3749                                    ; preds = %4036, %3853, %3770, %3627
  %3750 = phi float [ %3629, %3770 ], [ %3856, %3853 ], [ %3856, %4036 ], [ %3629, %3627 ]
  %3751 = phi float [ %3630, %3770 ], [ %3630, %3853 ], [ %4011, %4036 ], [ %3630, %3627 ]
  %3752 = phi float [ %3631, %3770 ], [ %3631, %3853 ], [ %4010, %4036 ], [ %3631, %3627 ]
  %3753 = phi float [ %3632, %3770 ], [ %3632, %3853 ], [ %4008, %4036 ], [ %3632, %3627 ]
  %3754 = phi float [ %3633, %3770 ], [ %3633, %3853 ], [ %3980, %4036 ], [ %3633, %3627 ]
  %3755 = phi float [ %3634, %3770 ], [ %3634, %3853 ], [ %3978, %4036 ], [ %3634, %3627 ]
  %3756 = phi float [ %3635, %3770 ], [ %3635, %3853 ], [ %4046, %4036 ], [ %3635, %3627 ]
  %3757 = phi float [ %3636, %3770 ], [ %3636, %3853 ], [ %4047, %4036 ], [ %3636, %3627 ]
  %3758 = phi float [ %3637, %3770 ], [ %3637, %3853 ], [ %4048, %4036 ], [ %3637, %3627 ]
  %3759 = phi float [ %3638, %3770 ], [ %3638, %3853 ], [ %3959, %4036 ], [ %3638, %3627 ]
  %3760 = phi float [ %3639, %3770 ], [ %3639, %3853 ], [ %3960, %4036 ], [ %3639, %3627 ]
  %3761 = phi float [ %3640, %3770 ], [ %3640, %3853 ], [ %3961, %4036 ], [ %3640, %3627 ]
  %3762 = phi float [ %3641, %3770 ], [ %3641, %3853 ], [ %3988, %4036 ], [ %3641, %3627 ]
  %3763 = phi float [ %3642, %3770 ], [ %3642, %3853 ], [ %3985, %4036 ], [ %3642, %3627 ]
  %3764 = phi float [ %3643, %3770 ], [ %3643, %3853 ], [ %3982, %4036 ], [ %3643, %3627 ]
  %3765 = phi float [ %3644, %3770 ], [ %3644, %3853 ], [ %3976, %4036 ], [ %3644, %3627 ]
  %3766 = phi float [ %3645, %3770 ], [ %3645, %3853 ], [ %3971, %4036 ], [ %3645, %3627 ]
  %3767 = phi float [ %3646, %3770 ], [ %3646, %3853 ], [ %3972, %4036 ], [ %3646, %3627 ]
  %3768 = phi float [ %3647, %3770 ], [ %3647, %3853 ], [ %3973, %4036 ], [ %3647, %3627 ]
  %3769 = icmp eq i32 %3651, 0
  br i1 %3769, label %4049, label %3627

; <label>:3770                                    ; preds = %3627
  %3771 = extractvalue %dx.types.ResRet.f32 %3655, 3
  %3772 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3773 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3777 = extractvalue %dx.types.ResRet.i32 %3660, 3
  %3778 = extractvalue %dx.types.ResRet.i32 %3660, 2
  %3779 = bitcast float %3771 to i32
  %3780 = add i32 %3777, 0
  %3781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3781, %dx.types.Handle %3782, float %3709, float %3716, float undef, float undef, i32 0, i32 0, i32 undef, float %3737, float %3739, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = fmul fast float %3784, %3776
  %3786 = fadd fast float %3785, %3775
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3709, %3669
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3716, float %3788)  ; FMad(a,b,c)
  %3790 = fadd fast float %3789, %3774
  %3791 = fmul fast float %3709, %3671
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3716, float %3791)  ; FMad(a,b,c)
  %3793 = fadd fast float %3792, %3773
  %3794 = fmul fast float %3737, %3669
  %3795 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3739, float %3794)  ; FMad(a,b,c)
  %3796 = fmul fast float %3737, %3671
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3739, float %3796)  ; FMad(a,b,c)
  %3798 = fmul fast float %3738, %3669
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3740, float %3798)  ; FMad(a,b,c)
  %3800 = fmul fast float %3738, %3671
  %3801 = call float @dx.op.tertiary.f32(i32 46, float %3672, float %3740, float %3800)  ; FMad(a,b,c)
  %3802 = add i32 %3778, 0
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3803, %dx.types.Handle %3782, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = and i32 %3779, 1024
  %3807 = icmp ne i32 %3806, 0
  %3808 = fcmp fast ogt float %3805, 0x3FE0101020000000
  %3809 = uitofp i1 %3808 to float
  %3810 = select i1 %3807, float %3809, float %3805
  %3811 = and i32 %3779, 8192
  %3812 = icmp ne i32 %3811, 0
  %3813 = select i1 %3812, float %3772, float 1.000000e+00
  %3814 = fmul fast float %3709, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3817 = fmul fast float %3816, %3702
  %3818 = fsub fast float %3817, %3702
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fmul fast float %3716, 2.000000e+00
  %3821 = fadd fast float %3820, -1.000000e+00
  %3822 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3823 = fmul fast float %3822, %3703
  %3824 = fsub fast float %3823, %3703
  %3825 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3826 = fmul fast float %3728, %3665
  %3827 = fsub fast float %3826, %3665
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = fmul fast float %3787, %3813
  %3830 = fmul fast float %3829, %3784
  %3831 = fmul fast float %3830, %3819
  %3832 = fmul fast float %3831, %3810
  %3833 = fmul fast float %3832, %3825
  %3834 = fmul fast float %3833, %3828
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3838 = fsub fast float %3745, %3837
  %3839 = fmul fast float %3838, %3836
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = fmul fast float %3834, %3666
  %3842 = fadd fast float %3834, %3666
  %3843 = fmul fast float %3842, %3675
  %3844 = fsub fast float %3843, %3675
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = and i32 %3779, 128
  %3847 = icmp ne i32 %3846, 0
  %3848 = select i1 %3847, float %3845, float %3841
  %3849 = fmul fast float %3848, %3840
  %3850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3851 = extractvalue %dx.types.CBufRet.f32 %3850, 0
  %3852 = fcmp fast ugt float %3849, %3851
  br i1 %3852, label %3853, label %3749

; <label>:3853                                    ; preds = %3770
  %3854 = select i1 %3812, float %3849, float 0.000000e+00
  %3855 = fadd fast float %3854, %3629
  %3856 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  br i1 %3812, label %3749, label %3857

; <label>:3857                                    ; preds = %3853
  %3858 = and i32 %3779, 4
  %3859 = and i32 %3779, 8
  %3860 = add i32 %3661, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3860, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3861, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = bitcast float %3687 to i32
  %3869 = and i32 %3868, 255
  %3870 = uitofp i32 %3869 to float
  %3871 = lshr i32 %3868, 8
  %3872 = and i32 %3871, 255
  %3873 = uitofp i32 %3872 to float
  %3874 = fmul fast float %3867, %3870
  %3875 = fadd fast float %3874, %3873
  %3876 = fmul fast float %3875, 0x3F70101000000000
  %3877 = add i32 %3662, 0
  %3878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3877, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3879 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3878, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = bitcast float %3681 to i32
  %3885 = and i32 %3884, 255
  %3886 = uitofp i32 %3885 to float
  %3887 = lshr i32 %3884, 8
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = lshr i32 %3884, 16
  %3891 = and i32 %3890, 255
  %3892 = uitofp i32 %3891 to float
  %3893 = fmul fast float %3892, 0x3F70101000000000
  %3894 = fmul fast float %3880, %3886
  %3895 = fadd fast float %3894, %3889
  %3896 = fmul fast float %3895, 0x3F70101000000000
  %3897 = fadd fast float %3881, -5.000000e-01
  %3898 = fadd fast float %3883, -5.000000e-01
  %3899 = fmul fast float %3897, %3893
  %3900 = fmul fast float %3898, %3893
  %3901 = fadd fast float %3899, 5.000000e-01
  %3902 = fadd fast float %3900, 5.000000e-01
  %3903 = fmul fast float %3864, %3690
  %3904 = fmul fast float %3865, %3691
  %3905 = fmul fast float %3866, %3692
  %3906 = fmul fast float %3901, 2.000000e+00
  %3907 = fadd fast float %3906, -1.000000e+00
  %3908 = fmul fast float %3902, 2.000000e+00
  %3909 = fadd fast float %3908, -1.000000e+00
  %3910 = fadd fast float %3907, %3909
  %3911 = fmul fast float %3910, 5.000000e-01
  %3912 = fsub fast float %3907, %3909
  %3913 = fmul fast float %3912, 5.000000e-01
  %3914 = call float @dx.op.unary.f32(i32 6, float %3911)  ; FAbs(value)
  %3915 = fsub fast float 1.000000e+00, %3914
  %3916 = call float @dx.op.unary.f32(i32 6, float %3913)  ; FAbs(value)
  %3917 = fsub fast float %3915, %3916
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3913, float %3917, float %3911, float %3913, float %3917)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = call float @dx.op.unary.f32(i32 25, float %3918)  ; Rsqrt(value)
  %3920 = fmul fast float %3911, %3919
  %3921 = fmul fast float %3913, %3919
  %3922 = fmul fast float %3919, %3917
  %3923 = fmul fast float %3922, %3656
  %3924 = fmul fast float %3922, %3657
  %3925 = fmul fast float %3922, %3658
  %3926 = fmul fast float %3920, %3678
  %3927 = fmul fast float %3920, %3679
  %3928 = fmul fast float %3920, %3680
  %3929 = fadd fast float %3926, %3923
  %3930 = fadd fast float %3927, %3924
  %3931 = fadd fast float %3928, %3925
  %3932 = fmul fast float %3921, %3684
  %3933 = fmul fast float %3921, %3685
  %3934 = fmul fast float %3921, %3686
  %3935 = fadd fast float %3929, %3932
  %3936 = fadd fast float %3930, %3933
  %3937 = fadd fast float %3931, %3934
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3935, float %3936, float %3937, float %3935, float %3936, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.unary.f32(i32 25, float %3938)  ; Rsqrt(value)
  %3940 = fmul fast float %3935, %3939
  %3941 = fmul fast float %3936, %3939
  %3942 = fmul fast float %3937, %3939
  %3943 = icmp ne i32 %3859, 0
  %3944 = select i1 %3943, float 1.000000e+00, float 0.000000e+00
  %3945 = fmul fast float %3849, %3944
  %3946 = and i32 %3779, 1
  %3947 = icmp eq i32 %3946, 0
  br i1 %3947, label %3948, label %3952

; <label>:3948                                    ; preds = %3857
  %3949 = fsub fast float %3940, %3638
  %3950 = fsub fast float %3941, %3639
  %3951 = fsub fast float %3942, %3640
  br label %3952

; <label>:3952                                    ; preds = %3948, %3857
  %3953 = phi float [ %3949, %3948 ], [ %3940, %3857 ]
  %3954 = phi float [ %3950, %3948 ], [ %3941, %3857 ]
  %3955 = phi float [ %3951, %3948 ], [ %3942, %3857 ]
  %3956 = fmul float %3955, %3945
  %3957 = fmul float %3954, %3945
  %3958 = fmul float %3953, %3945
  %3959 = fadd fast float %3958, %3638
  %3960 = fadd fast float %3957, %3639
  %3961 = fadd fast float %3956, %3640
  %3962 = icmp ne i32 %3858, 0
  %3963 = select i1 %3962, float 1.000000e+00, float 0.000000e+00
  %3964 = fmul fast float %3849, %3963
  %3965 = fsub fast float %3903, %3645
  %3966 = fsub fast float %3904, %3646
  %3967 = fsub fast float %3905, %3647
  %3968 = fmul fast float %3965, %3964
  %3969 = fmul fast float %3966, %3964
  %3970 = fmul fast float %3967, %3964
  %3971 = fadd fast float %3968, %3645
  %3972 = fadd fast float %3969, %3646
  %3973 = fadd fast float %3970, %3647
  %3974 = fsub fast float %3876, %3644
  %3975 = fmul fast float %3974, %3964
  %3976 = fadd fast float %3975, %3644
  %3977 = fmul fast float %3964, %3634
  %3978 = fsub fast float %3634, %3977
  %3979 = fmul fast float %3964, %3633
  %3980 = fsub fast float %3633, %3979
  %3981 = fadd fast float %3849, %3643
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fsub fast float %3896, %3642
  %3984 = fmul fast float %3983, %3945
  %3985 = fadd fast float %3984, %3642
  %3986 = fsub fast float %3882, %3641
  %3987 = fmul fast float %3986, %3945
  %3988 = fadd fast float %3987, %3641
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3993 = fmul fast float %3992, %3989
  %3994 = fadd fast float %3993, %3991
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = bitcast float %3693 to i32
  %3997 = and i32 %3996, 65535
  %3998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3997)  ; LegacyF16ToF32(value)
  %3999 = lshr i32 %3996, 16
  %4000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3999)  ; LegacyF16ToF32(value)
  %4001 = fcmp fast oge float %3998, 0.000000e+00
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = select i1 %4001, float %3998, float %4003
  %4005 = fadd fast float %4004, %4000
  %4006 = fsub fast float %3995, %3632
  %4007 = fmul fast float %4006, %3849
  %4008 = fadd fast float %4007, %3632
  %4009 = fmul fast float %4005, %3849
  %4010 = call float @dx.op.binary.f32(i32 35, float %3631, float %4009)  ; FMax(a,b)
  %4011 = call float @dx.op.binary.f32(i32 35, float %3630, float %3849)  ; FMax(a,b)
  %4012 = and i32 %3779, 16
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4036, label %4014

; <label>:4014                                    ; preds = %3952
  %4015 = bitcast float %3699 to i32
  %4016 = add i32 %3696, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %3862, float %3790, float %3793, float undef, float undef, i32 0, i32 0, i32 undef, float %3795, float %3797, float undef, float %3799, float %3801, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.ResRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.ResRet.f32 %4018, 2
  %4022 = and i32 %4015, 65535
  %4023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4022)  ; LegacyF16ToF32(value)
  %4024 = fmul fast float %4019, %3690
  %4025 = fmul fast float %4020, %3691
  %4026 = fmul fast float %4021, %3692
  %4027 = and i32 %3779, 16384
  %4028 = icmp ne i32 %4027, 0
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = select i1 %4028, float %4030, float 1.000000e+00
  %4032 = fmul fast float %4031, %4023
  %4033 = fmul fast float %4024, %4032
  %4034 = fmul fast float %4025, %4032
  %4035 = fmul fast float %4026, %4032
  br label %4036

; <label>:4036                                    ; preds = %4014, %3952
  %4037 = phi float [ %4033, %4014 ], [ 0.000000e+00, %3952 ]
  %4038 = phi float [ %4034, %4014 ], [ 0.000000e+00, %3952 ]
  %4039 = phi float [ %4035, %4014 ], [ 0.000000e+00, %3952 ]
  %4040 = fsub fast float %4037, %3635
  %4041 = fsub fast float %4038, %3636
  %4042 = fsub fast float %4039, %3637
  %4043 = fmul fast float %4040, %3849
  %4044 = fmul fast float %4041, %3849
  %4045 = fmul fast float %4042, %3849
  %4046 = fadd fast float %4043, %3635
  %4047 = fadd fast float %4044, %3636
  %4048 = fadd fast float %4045, %3637
  br label %3749

; <label>:4049                                    ; preds = %3749
  br label %4050

; <label>:4050                                    ; preds = %4049, %3564
  %4051 = phi float [ 0.000000e+00, %3564 ], [ %3750, %4049 ]
  %4052 = phi float [ %1258, %3564 ], [ %3751, %4049 ]
  %4053 = phi float [ %3499, %3564 ], [ %3752, %4049 ]
  %4054 = phi float [ %3478, %3564 ], [ %3753, %4049 ]
  %4055 = phi float [ 0.000000e+00, %3564 ], [ %3754, %4049 ]
  %4056 = phi float [ 0.000000e+00, %3564 ], [ %3755, %4049 ]
  %4057 = phi float [ %3521, %3564 ], [ %3756, %4049 ]
  %4058 = phi float [ %3523, %3564 ], [ %3757, %4049 ]
  %4059 = phi float [ %3525, %3564 ], [ %3758, %4049 ]
  %4060 = phi float [ %3551, %3564 ], [ %3759, %4049 ]
  %4061 = phi float [ %3552, %3564 ], [ %3760, %4049 ]
  %4062 = phi float [ %3553, %3564 ], [ %3761, %4049 ]
  %4063 = phi float [ %3477, %3564 ], [ %3762, %4049 ]
  %4064 = phi float [ %3476, %3564 ], [ %3763, %4049 ]
  %4065 = phi float [ 0.000000e+00, %3564 ], [ %3764, %4049 ]
  %4066 = phi float [ %3475, %3564 ], [ %3765, %4049 ]
  %4067 = phi float [ %3506, %3564 ], [ %3766, %4049 ]
  %4068 = phi float [ %3507, %3564 ], [ %3767, %4049 ]
  %4069 = phi float [ %3508, %3564 ], [ %3768, %4049 ]
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %4060, float %4061, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4071, %4060
  %4073 = fmul fast float %4071, %4061
  %4074 = fmul fast float %4071, %4062
  %4075 = fadd fast float %4065, %1258
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4078 = call float @dx.op.unary.f32(i32 25, float %4077)  ; Rsqrt(value)
  %4079 = fmul fast float %4078, %4072
  %4080 = fmul fast float %4078, %4073
  %4081 = fmul fast float %4078, %4074
  br label %4082

; <label>:4082                                    ; preds = %4050, %3466
  %4083 = phi float [ %4079, %4050 ], [ %3551, %3466 ]
  %4084 = phi float [ %4080, %4050 ], [ %3552, %3466 ]
  %4085 = phi float [ %4081, %4050 ], [ %3553, %3466 ]
  %4086 = phi float [ %4067, %4050 ], [ %3506, %3466 ]
  %4087 = phi float [ %4068, %4050 ], [ %3507, %3466 ]
  %4088 = phi float [ %4069, %4050 ], [ %3508, %3466 ]
  %4089 = phi float [ %4057, %4050 ], [ %3521, %3466 ]
  %4090 = phi float [ %4058, %4050 ], [ %3523, %3466 ]
  %4091 = phi float [ %4059, %4050 ], [ %3525, %3466 ]
  %4092 = phi float [ %4066, %4050 ], [ %3475, %3466 ]
  %4093 = phi float [ %4076, %4050 ], [ %1258, %3466 ]
  %4094 = phi float [ %4064, %4050 ], [ %3476, %3466 ]
  %4095 = phi float [ %4063, %4050 ], [ %3477, %3466 ]
  %4096 = phi float [ %4056, %4050 ], [ 0.000000e+00, %3466 ]
  %4097 = phi float [ %4055, %4050 ], [ 0.000000e+00, %3466 ]
  %4098 = phi float [ %4051, %4050 ], [ 0.000000e+00, %3466 ]
  %4099 = phi float [ %4053, %4050 ], [ %3499, %3466 ]
  %4100 = phi float [ %4052, %4050 ], [ %1258, %3466 ]
  %4101 = phi float [ %4054, %4050 ], [ %3478, %3466 ]
  %4102 = fadd fast float %4092, 0xBFB99999A0000000
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4104 = fmul fast float %4103, 0x3FF1C71C80000000
  %4105 = call float @dx.op.binary.f32(i32 36, float %4092, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4106 = fsub fast float 1.000000e+00, %4104
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fmul fast float %4107, %4086
  %4109 = fmul fast float %4107, %4087
  %4110 = fmul fast float %4107, %4088
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = fmul fast float %4104, %4086
  %4115 = fmul fast float %4104, %4087
  %4116 = fmul fast float %4104, %4088
  %4117 = fadd fast float %4114, %4105
  %4118 = fadd fast float %4115, %4105
  %4119 = fadd fast float %4116, %4105
  %4120 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.i32 %4124, 3
  %4126 = and i32 %4125, 8
  %4127 = icmp ne i32 %4126, 0
  %4128 = call float @dx.op.binary.f32(i32 35, float %4111, float %4086)  ; FMax(a,b)
  %4129 = call float @dx.op.binary.f32(i32 35, float %4112, float %4086)  ; FMax(a,b)
  %4130 = call float @dx.op.binary.f32(i32 35, float %4113, float %4086)  ; FMax(a,b)
  %4131 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = select i1 %267, float %4086, float %4111
  %4133 = select i1 %267, float %4131, float %4112
  %4134 = select i1 %267, float 1.000000e+00, float %4113
  %4135 = select i1 %4127, float %4128, float %4132
  %4136 = select i1 %4127, float %4129, float %4133
  %4137 = select i1 %4127, float %4130, float %4134
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = fadd fast float %4139, %195
  %4143 = fadd fast float %4140, %196
  %4144 = fadd fast float %4141, %197
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4148 = fsub fast float %4142, %4146
  %4149 = fsub fast float %4143, %4147
  %4150 = fmul fast float %4148, %4148
  %4151 = fmul fast float %4149, %4149
  %4152 = fadd fast float %4150, %4151
  %4153 = call float @dx.op.unary.f32(i32 24, float %4152)  ; Sqrt(value)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4155 = fcmp fast olt float %4153, %4154
  br i1 %4155, label %4156, label %4223

; <label>:4156                                    ; preds = %4082
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4165 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4167 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4168 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4169 = fadd fast float %4166, %4142
  %4170 = fadd fast float %4167, %4143
  %4171 = fadd fast float %4168, %4144
  %4172 = fmul fast float %4169, %4158
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4160, float %4172)  ; FMad(a,b,c)
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4162, float %4173)  ; FMad(a,b,c)
  %4175 = fmul fast float %4169, %4163
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4164, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4165, float %4176)  ; FMad(a,b,c)
  %4178 = fsub fast float %4174, %4166
  %4179 = fsub fast float %4177, %4167
  %4180 = fsub fast float %4178, %4146
  %4181 = fadd fast float %4180, %4154
  %4182 = fsub fast float %4179, %4147
  %4183 = fadd fast float %4182, %4154
  %4184 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4185 = fmul fast float %4181, %4184
  %4186 = fmul fast float %4183, %4184
  %4187 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4188 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4189 = fsub fast float 1.000000e+00, %4187
  %4190 = fsub fast float 1.000000e+00, %4188
  %4191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4189, float %4190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = fcmp fast ugt float %4192, 0.000000e+00
  br i1 %4193, label %4194, label %4497

; <label>:4194                                    ; preds = %4156
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4197 = fmul fast float %4196, %4192
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4199 = fadd fast float %4198, %4197
  %4200 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4201 = fadd fast float %4199, %4168
  %4202 = fmul fast float %4174, %4162
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4165, float %4202)  ; FMad(a,b,c)
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4200, float %4203)  ; FMad(a,b,c)
  %4205 = fsub fast float %4204, %4168
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4208 = fsub fast float %4205, %4207
  %4209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4189, float %4190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4189, float %4190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = fadd fast float %4214, %4210
  %4218 = fmul fast float %4217, 0x3F847AE140000000
  %4219 = fadd fast float %4215, %4211
  %4220 = fmul fast float %4219, 0x3F847AE140000000
  %4221 = fadd fast float %4216, %4212
  %4222 = fmul fast float %4221, 0x3F847AE140000000
  br label %4497

; <label>:4223                                    ; preds = %4082
  %4224 = and i32 %246, 1
  %4225 = icmp eq i32 %4224, 0
  br i1 %4225, label %4497, label %4226

; <label>:4226                                    ; preds = %4223
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4234 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4235 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4236 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4237 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4238 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4239 = fadd fast float %4236, %4142
  %4240 = fadd fast float %4237, %4143
  %4241 = fadd fast float %4238, %4144
  %4242 = fmul fast float %4239, %4228
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4230, float %4242)  ; FMad(a,b,c)
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4241, float %4232, float %4243)  ; FMad(a,b,c)
  %4245 = fmul fast float %4239, %4233
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4234, float %4245)  ; FMad(a,b,c)
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4241, float %4235, float %4246)  ; FMad(a,b,c)
  %4248 = fsub fast float %4244, %4236
  %4249 = fsub fast float %4247, %4237
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.CBufRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.CBufRet.f32 %4250, 2
  %4254 = extractvalue %dx.types.CBufRet.f32 %4250, 3
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 0
  %4259 = extractvalue %dx.types.CBufRet.i32 %4257, 1
  %4260 = udiv i32 %4259, %4258
  %4261 = fsub fast float %4248, %4251
  %4262 = fsub fast float %4249, %4252
  %4263 = call float @dx.op.binary.f32(i32 35, float %4261, float 0.000000e+00)  ; FMax(a,b)
  %4264 = call float @dx.op.binary.f32(i32 35, float %4262, float 0.000000e+00)  ; FMax(a,b)
  %4265 = call float @dx.op.binary.f32(i32 36, float %4263, float %4253)  ; FMin(a,b)
  %4266 = call float @dx.op.binary.f32(i32 36, float %4264, float %4254)  ; FMin(a,b)
  %4267 = add i32 %4258, -1
  %4268 = add i32 %4260, -1
  %4269 = fmul fast float %4265, %4256
  %4270 = fmul fast float %4266, %4256
  %4271 = fptoui float %4269 to i32
  %4272 = fptoui float %4270 to i32
  %4273 = call i32 @dx.op.binary.i32(i32 40, i32 %4271, i32 %4267)  ; UMin(a,b)
  %4274 = call i32 @dx.op.binary.i32(i32 40, i32 %4272, i32 %4268)  ; UMin(a,b)
  %4275 = mul i32 %4274, %4258
  %4276 = add i32 %4275, %4273
  %4277 = shl i32 %4276, 2
  %4278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.i32 %4278, 0
  %4280 = icmp eq i32 %4279, -1
  br i1 %4280, label %4497, label %4281

; <label>:4281                                    ; preds = %4226
  %4282 = mul i32 %4279, 148
  %4283 = add i32 %4282, 4
  %4284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = add i32 %4282, 8
  %4287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = add i32 %4282, 36
  %4290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4289, i32 undef)  ; BufferLoad(srv,index,wot)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = add i32 %4282, 60
  %4293 = add i32 %4282, 92
  %4294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.i32 %4294, 0
  %4296 = add i32 %4282, 116
  %4297 = fsub fast float %4248, %4285
  %4298 = fsub fast float %4249, %4288
  %4299 = fmul fast float %4256, %4297
  %4300 = fmul fast float %4256, %4298
  %4301 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4303 = fsub fast float 1.000000e+00, %4302
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4306 = call float @dx.op.unary.f32(i32 83, float %4301)  ; DerivCoarseX(value)
  %4307 = call float @dx.op.unary.f32(i32 83, float %4303)  ; DerivCoarseX(value)
  %4308 = call float @dx.op.unary.f32(i32 84, float %4301)  ; DerivCoarseY(value)
  %4309 = call float @dx.op.unary.f32(i32 84, float %4303)  ; DerivCoarseY(value)
  %4310 = fmul fast float %4306, %4305
  %4311 = fmul fast float %4307, %4305
  %4312 = fmul fast float %4308, %4305
  %4313 = fmul fast float %4309, %4305
  %4314 = call float @dx.op.dot2.f32(i32 54, float %4312, float %4313, float %4312, float %4313)  ; Dot2(ax,ay,bx,by)
  %4315 = call float @dx.op.dot2.f32(i32 54, float %4310, float %4311, float %4310, float %4311)  ; Dot2(ax,ay,bx,by)
  %4316 = call float @dx.op.binary.f32(i32 35, float %4315, float %4314)  ; FMax(a,b)
  %4317 = call float @dx.op.unary.f32(i32 23, float %4316)  ; Log(value)
  %4318 = fmul fast float %4317, 5.000000e-01
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4321 = fadd fast float %4320, %4318
  %4322 = call float @dx.op.binary.f32(i32 35, float %4321, float 0.000000e+00)  ; FMax(a,b)
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4325 = fadd fast float %4324, %4322
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4328 = fadd fast float %4325, %4327
  %4329 = add i32 %4295, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4330, i32 0)  ; GetDimensions(handle,mipLevel)
  %4332 = extractvalue %dx.types.Dimensions %4331, 0
  %4333 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4332)  ; FirstbitLo(value)
  %4334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.i32 %4334, 1
  %4336 = sub nsw i32 %4335, %4333
  %4337 = sitofp i32 %4336 to float
  %4338 = fsub fast float %4328, %4337
  %4339 = call float @dx.op.binary.f32(i32 35, float %4338, float 0.000000e+00)  ; FMax(a,b)
  %4340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4330, %dx.types.Handle %48, float %4301, float %4303, float %4291, float undef, i32 0, i32 0, i32 undef, float %4339)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4341 = extractvalue %dx.types.ResRet.f32 %4340, 0
  %4342 = fcmp ule float %4341, 0x3FE0101020000000
  %4343 = extractvalue %dx.types.CBufRet.i32 %4334, 0
  %4344 = and i32 %4343, 128
  %4345 = icmp ne i32 %4344, 0
  %4346 = and i1 %4342, %4345
  br i1 %4346, label %4497, label %4347

; <label>:4347                                    ; preds = %4281
  %4348 = add i32 %4282, 20
  %4349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = add i32 %4282, 24
  %4352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = add i32 %4282, 40
  %4355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = add i32 %4282, 96
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 2
  %4362 = fmul fast float %4361, %4301
  %4363 = fmul fast float %4361, %4303
  %4364 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4365 = fadd fast float %4362, %4364
  %4366 = fadd fast float %4363, %4364
  %4367 = add i32 %4359, 0
  %4368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4367, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4369 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4368, i32 0)  ; GetDimensions(handle,mipLevel)
  %4370 = extractvalue %dx.types.Dimensions %4369, 0
  %4371 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4370)  ; FirstbitLo(value)
  %4372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.i32 %4372, 1
  %4374 = sub nsw i32 %4373, %4371
  %4375 = sitofp i32 %4374 to float
  %4376 = fsub fast float %4325, %4375
  %4377 = call float @dx.op.binary.f32(i32 35, float %4376, float 0.000000e+00)  ; FMax(a,b)
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4368, %dx.types.Handle %48, float %4365, float %4366, float %4356, float undef, i32 0, i32 0, i32 undef, float %4377)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = fmul fast float %4379, %4350
  %4381 = fadd fast float %4380, %4353
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4390 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4391 = fadd fast float %4387, %4248
  %4392 = fadd fast float %4389, %4249
  %4393 = fadd fast float %4381, %4390
  %4394 = fmul fast float %4391, %4383
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4384, float %4394)  ; FMad(a,b,c)
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4385, float %4395)  ; FMad(a,b,c)
  %4397 = fsub fast float %4396, %4390
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4400 = fsub fast float %4397, %4399
  %4401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.i32 %4401, 0
  %4403 = call i32 @dx.op.binary.i32(i32 40, i32 %4279, i32 %4402)  ; UMin(a,b)
  %4404 = mul i32 %4403, 36
  %4405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.i32 %4405, 0
  %4407 = add i32 %4404, 4
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 0
  %4410 = fmul fast float %4409, %4301
  %4411 = fmul fast float %4409, %4303
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 1
  %4413 = fadd fast float %4410, %4412
  %4414 = fadd fast float %4411, %4412
  %4415 = icmp eq i32 %4406, 0
  br i1 %4415, label %4484, label %4416

; <label>:4416                                    ; preds = %4347
  br label %4417

; <label>:4417                                    ; preds = %4474, %4416
  %4418 = phi float [ %4475, %4474 ], [ 0.000000e+00, %4416 ]
  %4419 = phi float [ %4476, %4474 ], [ 0.000000e+00, %4416 ]
  %4420 = phi float [ %4477, %4474 ], [ 0.000000e+00, %4416 ]
  %4421 = phi float [ %4478, %4474 ], [ 0.000000e+00, %4416 ]
  %4422 = phi float [ %4479, %4474 ], [ 0.000000e+00, %4416 ]
  %4423 = phi float [ %4480, %4474 ], [ 0.000000e+00, %4416 ]
  %4424 = phi i32 [ %4481, %4474 ], [ 0, %4416 ]
  %4425 = shl i32 %4424, 2
  %4426 = add i32 %4292, %4425
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4296, %4425
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = add i32 %4431, 0
  %4433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4432, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4434 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4433, i32 0)  ; GetDimensions(handle,mipLevel)
  %4435 = extractvalue %dx.types.Dimensions %4434, 0
  %4436 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4435)  ; FirstbitLo(value)
  %4437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.i32 %4437, 1
  %4439 = sub nsw i32 %4438, %4436
  %4440 = sitofp i32 %4439 to float
  %4441 = fsub fast float %4325, %4440
  %4442 = call float @dx.op.binary.f32(i32 35, float %4441, float 0.000000e+00)  ; FMax(a,b)
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4433, %dx.types.Handle %48, float %4413, float %4414, float %4428, float undef, i32 0, i32 0, i32 undef, float %4442)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = fcmp fast ogt float %4444, 0.000000e+00
  br i1 %4445, label %4446, label %4474

; <label>:4446                                    ; preds = %4417
  %4447 = add i32 %4407, %4425
  %4448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.i32 %4448, 0
  %4450 = and i32 %4449, 32767
  %4451 = mul nuw nsw i32 %4450, 928
  %4452 = add nuw nsw i32 %4451, 48
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = add nuw nsw i32 %4451, 60
  %4458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = fmul fast float %4454, %4444
  %4463 = fmul fast float %4455, %4444
  %4464 = fmul fast float %4456, %4444
  %4465 = fadd fast float %4462, %4418
  %4466 = fadd fast float %4463, %4419
  %4467 = fadd fast float %4464, %4420
  %4468 = fmul fast float %4459, %4444
  %4469 = fmul fast float %4460, %4444
  %4470 = fmul fast float %4461, %4444
  %4471 = fadd fast float %4468, %4421
  %4472 = fadd fast float %4469, %4422
  %4473 = fadd fast float %4470, %4423
  br label %4474

; <label>:4474                                    ; preds = %4446, %4417
  %4475 = phi float [ %4465, %4446 ], [ %4418, %4417 ]
  %4476 = phi float [ %4466, %4446 ], [ %4419, %4417 ]
  %4477 = phi float [ %4467, %4446 ], [ %4420, %4417 ]
  %4478 = phi float [ %4471, %4446 ], [ %4421, %4417 ]
  %4479 = phi float [ %4472, %4446 ], [ %4422, %4417 ]
  %4480 = phi float [ %4473, %4446 ], [ %4423, %4417 ]
  %4481 = add nuw i32 %4424, 1
  %4482 = icmp eq i32 %4481, %4406
  br i1 %4482, label %4483, label %4417

; <label>:4483                                    ; preds = %4474
  br label %4484

; <label>:4484                                    ; preds = %4483, %4347
  %4485 = phi float [ 0.000000e+00, %4347 ], [ %4475, %4483 ]
  %4486 = phi float [ 0.000000e+00, %4347 ], [ %4476, %4483 ]
  %4487 = phi float [ 0.000000e+00, %4347 ], [ %4477, %4483 ]
  %4488 = phi float [ 0.000000e+00, %4347 ], [ %4478, %4483 ]
  %4489 = phi float [ 0.000000e+00, %4347 ], [ %4479, %4483 ]
  %4490 = phi float [ 0.000000e+00, %4347 ], [ %4480, %4483 ]
  %4491 = fadd fast float %4488, %4485
  %4492 = fmul fast float %4491, 0x3F847AE140000000
  %4493 = fadd fast float %4489, %4486
  %4494 = fmul fast float %4493, 0x3F847AE140000000
  %4495 = fadd fast float %4490, %4487
  %4496 = fmul fast float %4495, 0x3F847AE140000000
  br label %4497

; <label>:4497                                    ; preds = %4484, %4281, %4226, %4223, %4194, %4156
  %4498 = phi float [ %4208, %4194 ], [ -1.310720e+05, %4156 ], [ %4400, %4484 ], [ -1.310720e+05, %4226 ], [ -1.310720e+05, %4281 ], [ -1.310720e+05, %4223 ]
  %4499 = phi float [ %4218, %4194 ], [ 0.000000e+00, %4156 ], [ %4492, %4484 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4281 ], [ 0.000000e+00, %4223 ]
  %4500 = phi float [ %4220, %4194 ], [ 0.000000e+00, %4156 ], [ %4494, %4484 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4281 ], [ 0.000000e+00, %4223 ]
  %4501 = phi float [ %4222, %4194 ], [ 0.000000e+00, %4156 ], [ %4496, %4484 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4281 ], [ 0.000000e+00, %4223 ]
  %4502 = phi i1 [ true, %4194 ], [ false, %4156 ], [ true, %4484 ], [ false, %4226 ], [ false, %4281 ], [ false, %4223 ]
  %4503 = and i32 %246, 3
  %4504 = icmp eq i32 %4503, 1
  %4505 = select i1 %4504, float 1.000000e+00, float 0.000000e+00
  %4506 = fsub fast float %4498, %197
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = select i1 %4502, float %4507, float 1.000000e+00
  %4509 = fmul fast float %4508, %4505
  %4510 = icmp eq i32 %4503, 3
  %4511 = select i1 %4510, float 1.000000e+00, float %4509
  %4512 = call float @dx.op.binary.f32(i32 35, float %4098, float %4511)  ; FMax(a,b)
  %4513 = fcmp fast olt float %4511, 1.000000e+00
  %4514 = fcmp uge float %73, 0.000000e+00
  %4515 = and i1 %4514, %4513
  br i1 %4515, label %4516, label %4526

; <label>:4516                                    ; preds = %4497
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = fadd fast float %4518, %4512
  %4522 = fcmp ule float %72, 0.000000e+00
  %4523 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = select i1 %4522, float %4523, float 1.000000e+00
  %4525 = fmul fast float %4524, %4520
  br label %4526

; <label>:4526                                    ; preds = %4516, %4497
  %4527 = phi float [ %4521, %4516 ], [ %4512, %4497 ]
  %4528 = phi float [ %4519, %4516 ], [ 0.000000e+00, %4497 ]
  %4529 = phi float [ %4525, %4516 ], [ 0.000000e+00, %4497 ]
  %4530 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4533 = fcmp fast une float %4531, 0.000000e+00
  %4534 = fcmp fast une float %4532, 0.000000e+00
  %4535 = or i1 %4533, %4534
  br i1 %4535, label %4536, label %5095

; <label>:4536                                    ; preds = %4526
  br i1 %4533, label %4537, label %4810

; <label>:4537                                    ; preds = %4536
  %4538 = call float @dx.op.unary.f32(i32 23, float %4095)  ; Log(value)
  %4539 = fmul fast float %4538, 4.000000e+00
  %4540 = call float @dx.op.unary.f32(i32 21, float %4539)  ; Exp(value)
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = fmul fast float %4542, %60
  %4544 = fmul fast float %4542, %61
  %4545 = fmul fast float %4542, %62
  %4546 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4547 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4548 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4549 = call float @dx.op.unary.f32(i32 23, float %4546)  ; Log(value)
  %4550 = call float @dx.op.unary.f32(i32 23, float %4547)  ; Log(value)
  %4551 = call float @dx.op.unary.f32(i32 23, float %4548)  ; Log(value)
  %4552 = fmul fast float %4549, 4.000000e+00
  %4553 = fmul fast float %4550, 4.000000e+00
  %4554 = fmul fast float %4551, 4.000000e+00
  %4555 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4556 = call float @dx.op.unary.f32(i32 21, float %4553)  ; Exp(value)
  %4557 = call float @dx.op.unary.f32(i32 21, float %4554)  ; Exp(value)
  %4558 = fadd fast float %4556, %4555
  %4559 = fadd fast float %4558, %4557
  %4560 = fdiv fast float 1.000000e+00, %4559
  %4561 = fmul fast float %4560, %4555
  %4562 = fcmp fast ogt float %69, 0.000000e+00
  %4563 = fcmp fast ogt float %70, 0.000000e+00
  %4564 = fcmp fast ogt float %71, 0.000000e+00
  %4565 = fcmp fast olt float %69, 0.000000e+00
  %4566 = fcmp fast olt float %70, 0.000000e+00
  %4567 = fcmp fast olt float %71, 0.000000e+00
  %4568 = zext i1 %4562 to i32
  %4569 = zext i1 %4563 to i32
  %4570 = zext i1 %4564 to i32
  %4571 = zext i1 %4565 to i32
  %4572 = zext i1 %4566 to i32
  %4573 = zext i1 %4567 to i32
  %4574 = sub nsw i32 %4568, %4571
  %4575 = sub nsw i32 %4569, %4572
  %4576 = sub nsw i32 %4570, %4573
  %4577 = call float @dx.op.unary.f32(i32 83, float %4543)  ; DerivCoarseX(value)
  %4578 = call float @dx.op.unary.f32(i32 83, float %4544)  ; DerivCoarseX(value)
  %4579 = call float @dx.op.unary.f32(i32 83, float %4545)  ; DerivCoarseX(value)
  %4580 = call float @dx.op.unary.f32(i32 84, float %4543)  ; DerivCoarseY(value)
  %4581 = call float @dx.op.unary.f32(i32 84, float %4544)  ; DerivCoarseY(value)
  %4582 = call float @dx.op.unary.f32(i32 84, float %4545)  ; DerivCoarseY(value)
  %4583 = fcmp fast ole float %278, %4561
  %4584 = fmul fast float %4560, %4558
  %4585 = fcmp fast ole float %278, %4584
  %4586 = select i1 %4585, float %4545, float %4543
  %4587 = select i1 %4585, float %4543, float %4544
  %4588 = select i1 %4583, float %4544, float %4586
  %4589 = select i1 %4583, float %4545, float %4587
  %4590 = select i1 %4585, float %4579, float %4577
  %4591 = select i1 %4585, float %4577, float %4578
  %4592 = select i1 %4583, float %4578, float %4590
  %4593 = select i1 %4583, float %4579, float %4591
  %4594 = select i1 %4585, float %4582, float %4580
  %4595 = select i1 %4585, float %4580, float %4581
  %4596 = select i1 %4583, float %4581, float %4594
  %4597 = select i1 %4583, float %4582, float %4595
  %4598 = call float @dx.op.unary.f32(i32 27, float %4588)  ; Round_ni(value)
  %4599 = call float @dx.op.unary.f32(i32 27, float %4589)  ; Round_ni(value)
  %4600 = fptosi float %4598 to i32
  %4601 = fptosi float %4599 to i32
  %4602 = xor i32 %4601, %4600
  %4603 = sitofp i32 %4602 to float
  %4604 = fptosi float %4603 to i32
  %4605 = sitofp i32 %4604 to float
  %4606 = fmul fast float %4605, 0x3FE3C6EF40000000
  %4607 = frem fast float %4598, 2.560000e+02
  %4608 = frem fast float %4599, 2.560000e+02
  %4609 = fptoui float %4607 to i32
  %4610 = fptoui float %4608 to i32
  %4611 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4609, i32 %4610, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = fadd fast float %4612, %4606
  %4616 = fadd fast float %4613, %4606
  %4617 = fadd fast float %4614, %4606
  %4618 = call float @dx.op.unary.f32(i32 22, float %4615)  ; Frc(value)
  %4619 = call float @dx.op.unary.f32(i32 22, float %4616)  ; Frc(value)
  %4620 = call float @dx.op.unary.f32(i32 22, float %4617)  ; Frc(value)
  %4621 = fmul fast float %4620, 0x401921FB60000000
  %4622 = call float @dx.op.unary.f32(i32 13, float %4621)  ; Sin(value)
  %4623 = call float @dx.op.unary.f32(i32 12, float %4621)  ; Cos(value)
  %4624 = fsub fast float -0.000000e+00, %4623
  %4625 = fmul fast float %4623, %4588
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %4622, float %4589, float %4625)  ; FMad(a,b,c)
  %4627 = fmul fast float %4622, %4588
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %4624, float %4589, float %4627)  ; FMad(a,b,c)
  %4629 = fadd fast float %4626, %4618
  %4630 = fadd fast float %4628, %4619
  %4631 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4632 = bitcast float %4631 to i32
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4672, label %4634

; <label>:4634                                    ; preds = %4537
  %4635 = add i32 %4632, 0
  %4636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4636, %dx.types.Handle %105, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4642 = fsub fast float 1.000000e+00, %4531
  %4643 = call float @dx.op.binary.f32(i32 35, float %4642, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4644 = bitcast float %4531 to i32
  %4645 = sitofp i32 %4644 to float
  %4646 = fadd fast float %4645, 0xC1CFBF8940000000
  %4647 = fmul fast float %4641, %4646
  %4648 = fadd fast float %4647, 0x41CFBF8940000000
  %4649 = fptosi float %4648 to i32
  %4650 = bitcast i32 %4649 to float
  %4651 = bitcast float %4643 to i32
  %4652 = sitofp i32 %4651 to float
  %4653 = fadd fast float %4652, 0xC1CFBF8940000000
  %4654 = fmul fast float %4653, %4641
  %4655 = fadd fast float %4654, 0x41CFBF8940000000
  %4656 = fptosi float %4655 to i32
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4650, %4640
  %4659 = fmul fast float %4657, %4640
  %4660 = fsub fast float %4643, %4658
  %4661 = fadd fast float %4659, %4643
  %4662 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4664 = fsub fast float %4638, %4662
  %4665 = fsub fast float %4663, %4662
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, %4664
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fcmp fast olt float %4670, 0x3F70101020000000
  br i1 %4671, label %4810, label %4672

; <label>:4672                                    ; preds = %4634, %4537
  %4673 = phi float [ %4670, %4634 ], [ %4531, %4537 ]
  %4674 = fmul fast float %4673, %4540
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 1
  %4677 = extractvalue %dx.types.CBufRet.i32 %4675, 0
  %4678 = add i32 %4677, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4679, %dx.types.Handle %104, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = extractvalue %dx.types.ResRet.f32 %4680, 3
  %4685 = and i32 %4676, 255
  %4686 = uitofp i32 %4685 to float
  %4687 = lshr i32 %4676, 8
  %4688 = and i32 %4687, 255
  %4689 = uitofp i32 %4688 to float
  %4690 = fmul fast float %4684, %4686
  %4691 = fadd fast float %4690, %4689
  %4692 = fmul fast float %4691, 0x3F70101000000000
  %4693 = fadd fast float %4692, 0xBFB99999A0000000
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4694, 0x3FF1C71C80000000
  %4696 = call float @dx.op.binary.f32(i32 36, float %4692, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4697 = fsub fast float 1.000000e+00, %4695
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, %4681
  %4700 = fmul fast float %4698, %4682
  %4701 = fmul fast float %4698, %4683
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = fmul fast float %4695, %4681
  %4706 = fmul fast float %4695, %4682
  %4707 = fmul fast float %4695, %4683
  %4708 = fadd fast float %4705, %4696
  %4709 = fadd fast float %4706, %4696
  %4710 = fadd fast float %4707, %4696
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.i32 %4714, 3
  %4716 = extractvalue %dx.types.CBufRet.i32 %4714, 2
  %4717 = add i32 %4716, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4718, %dx.types.Handle %104, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = extractvalue %dx.types.ResRet.f32 %4719, 3
  %4724 = and i32 %4715, 255
  %4725 = uitofp i32 %4724 to float
  %4726 = lshr i32 %4715, 8
  %4727 = and i32 %4726, 255
  %4728 = uitofp i32 %4727 to float
  %4729 = lshr i32 %4715, 16
  %4730 = and i32 %4729, 255
  %4731 = uitofp i32 %4730 to float
  %4732 = fmul fast float %4731, 0x3F70101000000000
  %4733 = fmul fast float %4720, %4725
  %4734 = fadd fast float %4733, %4728
  %4735 = fmul fast float %4734, 0x3F70101000000000
  %4736 = fadd fast float %4721, -5.000000e-01
  %4737 = fadd fast float %4723, -5.000000e-01
  %4738 = fmul fast float %4736, %4732
  %4739 = fmul fast float %4737, %4732
  %4740 = fadd fast float %4738, 5.000000e-01
  %4741 = fadd fast float %4739, 5.000000e-01
  %4742 = fmul fast float %4740, 2.000000e+00
  %4743 = fadd fast float %4742, -1.000000e+00
  %4744 = fmul fast float %4741, 2.000000e+00
  %4745 = fadd fast float %4744, -1.000000e+00
  %4746 = fadd fast float %4743, %4745
  %4747 = fmul fast float %4746, 5.000000e-01
  %4748 = fsub fast float %4743, %4745
  %4749 = fmul fast float %4748, 5.000000e-01
  %4750 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = call float @dx.op.unary.f32(i32 6, float %4749)  ; FAbs(value)
  %4753 = fsub fast float %4751, %4752
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4749, float %4753, float %4747, float %4749, float %4753)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.unary.f32(i32 25, float %4754)  ; Rsqrt(value)
  %4756 = fmul fast float %4747, %4755
  %4757 = fmul fast float %4749, %4755
  %4758 = select i1 %4585, i32 %4575, i32 %4576
  %4759 = select i1 %4583, i32 %4574, i32 %4758
  %4760 = sitofp i32 %4759 to float
  %4761 = fmul fast float %4753, %4760
  %4762 = fmul fast float %4761, %4755
  %4763 = select i1 %4585, float %4762, float %4757
  %4764 = select i1 %4585, float %4757, float %4762
  %4765 = select i1 %4583, float %4762, float %4756
  %4766 = select i1 %4583, float %4757, float %4763
  %4767 = select i1 %4583, float %4756, float %4764
  %4768 = fsub fast float %4702, %4135
  %4769 = fsub fast float %4703, %4136
  %4770 = fsub fast float %4704, %4137
  %4771 = fmul fast float %4768, %4674
  %4772 = fmul fast float %4769, %4674
  %4773 = fmul fast float %4770, %4674
  %4774 = fadd fast float %4771, %4135
  %4775 = fadd fast float %4772, %4136
  %4776 = fadd fast float %4773, %4137
  %4777 = fsub fast float %4711, %4120
  %4778 = fsub fast float %4712, %4121
  %4779 = fsub fast float %4713, %4122
  %4780 = fmul fast float %4777, %4674
  %4781 = fmul fast float %4778, %4674
  %4782 = fmul fast float %4779, %4674
  %4783 = fadd fast float %4780, %4120
  %4784 = fadd fast float %4781, %4121
  %4785 = fadd fast float %4782, %4122
  %4786 = fadd fast float %4765, %4083
  %4787 = fadd fast float %4766, %4084
  %4788 = fadd fast float %4767, %4085
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %4786, float %4787, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = call float @dx.op.unary.f32(i32 25, float %4789)  ; Rsqrt(value)
  %4791 = fmul fast float %4786, %4790
  %4792 = fmul fast float %4787, %4790
  %4793 = fmul fast float %4788, %4790
  %4794 = fsub fast float %4791, %4083
  %4795 = fsub fast float %4792, %4084
  %4796 = fsub fast float %4793, %4085
  %4797 = fmul fast float %4794, %4674
  %4798 = fmul fast float %4795, %4674
  %4799 = fmul fast float %4796, %4674
  %4800 = fadd fast float %4797, %4083
  %4801 = fadd fast float %4798, %4084
  %4802 = fadd fast float %4799, %4085
  %4803 = call float @dx.op.binary.f32(i32 36, float %4095, float %4722)  ; FMin(a,b)
  %4804 = fsub fast float %4803, %4095
  %4805 = fmul fast float %4804, %4674
  %4806 = fadd fast float %4805, %4095
  %4807 = fsub fast float %4735, %4123
  %4808 = fmul fast float %4807, %4674
  %4809 = fadd fast float %4808, %4123
  br label %4810

; <label>:4810                                    ; preds = %4672, %4634, %4536
  %4811 = phi float [ %4800, %4672 ], [ %4083, %4634 ], [ %4083, %4536 ]
  %4812 = phi float [ %4801, %4672 ], [ %4084, %4634 ], [ %4084, %4536 ]
  %4813 = phi float [ %4802, %4672 ], [ %4085, %4634 ], [ %4085, %4536 ]
  %4814 = phi float [ %4774, %4672 ], [ %4135, %4634 ], [ %4135, %4536 ]
  %4815 = phi float [ %4775, %4672 ], [ %4136, %4634 ], [ %4136, %4536 ]
  %4816 = phi float [ %4776, %4672 ], [ %4137, %4634 ], [ %4137, %4536 ]
  %4817 = phi float [ %4783, %4672 ], [ %4120, %4634 ], [ %4120, %4536 ]
  %4818 = phi float [ %4784, %4672 ], [ %4121, %4634 ], [ %4121, %4536 ]
  %4819 = phi float [ %4785, %4672 ], [ %4122, %4634 ], [ %4122, %4536 ]
  %4820 = phi float [ %4809, %4672 ], [ %4123, %4634 ], [ %4123, %4536 ]
  %4821 = phi float [ %4806, %4672 ], [ %4095, %4634 ], [ %4095, %4536 ]
  br i1 %4534, label %4822, label %5095

; <label>:4822                                    ; preds = %4810
  %4823 = call float @dx.op.unary.f32(i32 23, float %4821)  ; Log(value)
  %4824 = fmul fast float %4823, 4.000000e+00
  %4825 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = fmul fast float %4827, %60
  %4829 = fmul fast float %4827, %61
  %4830 = fmul fast float %4827, %62
  %4831 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4832 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4833 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4834 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4835 = call float @dx.op.unary.f32(i32 23, float %4832)  ; Log(value)
  %4836 = call float @dx.op.unary.f32(i32 23, float %4833)  ; Log(value)
  %4837 = fmul fast float %4834, 4.000000e+00
  %4838 = fmul fast float %4835, 4.000000e+00
  %4839 = fmul fast float %4836, 4.000000e+00
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = fadd fast float %4841, %4840
  %4844 = fadd fast float %4843, %4842
  %4845 = fdiv fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4845, %4840
  %4847 = fcmp fast ogt float %69, 0.000000e+00
  %4848 = fcmp fast ogt float %70, 0.000000e+00
  %4849 = fcmp fast ogt float %71, 0.000000e+00
  %4850 = fcmp fast olt float %69, 0.000000e+00
  %4851 = fcmp fast olt float %70, 0.000000e+00
  %4852 = fcmp fast olt float %71, 0.000000e+00
  %4853 = zext i1 %4847 to i32
  %4854 = zext i1 %4848 to i32
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = zext i1 %4851 to i32
  %4858 = zext i1 %4852 to i32
  %4859 = sub nsw i32 %4853, %4856
  %4860 = sub nsw i32 %4854, %4857
  %4861 = sub nsw i32 %4855, %4858
  %4862 = call float @dx.op.unary.f32(i32 83, float %4828)  ; DerivCoarseX(value)
  %4863 = call float @dx.op.unary.f32(i32 83, float %4829)  ; DerivCoarseX(value)
  %4864 = call float @dx.op.unary.f32(i32 83, float %4830)  ; DerivCoarseX(value)
  %4865 = call float @dx.op.unary.f32(i32 84, float %4828)  ; DerivCoarseY(value)
  %4866 = call float @dx.op.unary.f32(i32 84, float %4829)  ; DerivCoarseY(value)
  %4867 = call float @dx.op.unary.f32(i32 84, float %4830)  ; DerivCoarseY(value)
  %4868 = fcmp fast ole float %278, %4846
  %4869 = fmul fast float %4845, %4843
  %4870 = fcmp fast ole float %278, %4869
  %4871 = select i1 %4870, float %4830, float %4828
  %4872 = select i1 %4870, float %4828, float %4829
  %4873 = select i1 %4868, float %4829, float %4871
  %4874 = select i1 %4868, float %4830, float %4872
  %4875 = select i1 %4870, float %4864, float %4862
  %4876 = select i1 %4870, float %4862, float %4863
  %4877 = select i1 %4868, float %4863, float %4875
  %4878 = select i1 %4868, float %4864, float %4876
  %4879 = select i1 %4870, float %4867, float %4865
  %4880 = select i1 %4870, float %4865, float %4866
  %4881 = select i1 %4868, float %4866, float %4879
  %4882 = select i1 %4868, float %4867, float %4880
  %4883 = call float @dx.op.unary.f32(i32 27, float %4873)  ; Round_ni(value)
  %4884 = call float @dx.op.unary.f32(i32 27, float %4874)  ; Round_ni(value)
  %4885 = fptosi float %4883 to i32
  %4886 = fptosi float %4884 to i32
  %4887 = xor i32 %4886, %4885
  %4888 = sitofp i32 %4887 to float
  %4889 = fptosi float %4888 to i32
  %4890 = sitofp i32 %4889 to float
  %4891 = fmul fast float %4890, 0x3FE3C6EF40000000
  %4892 = frem fast float %4883, 2.560000e+02
  %4893 = frem fast float %4884, 2.560000e+02
  %4894 = fptoui float %4892 to i32
  %4895 = fptoui float %4893 to i32
  %4896 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4894, i32 %4895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = fadd fast float %4897, %4891
  %4901 = fadd fast float %4898, %4891
  %4902 = fadd fast float %4899, %4891
  %4903 = call float @dx.op.unary.f32(i32 22, float %4900)  ; Frc(value)
  %4904 = call float @dx.op.unary.f32(i32 22, float %4901)  ; Frc(value)
  %4905 = call float @dx.op.unary.f32(i32 22, float %4902)  ; Frc(value)
  %4906 = fmul fast float %4905, 0x401921FB60000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = call float @dx.op.unary.f32(i32 12, float %4906)  ; Cos(value)
  %4909 = fsub fast float -0.000000e+00, %4908
  %4910 = fmul fast float %4908, %4873
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4874, float %4910)  ; FMad(a,b,c)
  %4912 = fmul fast float %4907, %4873
  %4913 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4874, float %4912)  ; FMad(a,b,c)
  %4914 = fadd fast float %4911, %4903
  %4915 = fadd fast float %4913, %4904
  %4916 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4917 = bitcast float %4916 to i32
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %4957, label %4919

; <label>:4919                                    ; preds = %4822
  %4920 = add i32 %4917, 0
  %4921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4921, %dx.types.Handle %105, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4927 = fsub fast float 1.000000e+00, %4532
  %4928 = call float @dx.op.binary.f32(i32 35, float %4927, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4929 = bitcast float %4532 to i32
  %4930 = sitofp i32 %4929 to float
  %4931 = fadd fast float %4930, 0xC1CFBF8940000000
  %4932 = fmul fast float %4926, %4931
  %4933 = fadd fast float %4932, 0x41CFBF8940000000
  %4934 = fptosi float %4933 to i32
  %4935 = bitcast i32 %4934 to float
  %4936 = bitcast float %4928 to i32
  %4937 = sitofp i32 %4936 to float
  %4938 = fadd fast float %4937, 0xC1CFBF8940000000
  %4939 = fmul fast float %4938, %4926
  %4940 = fadd fast float %4939, 0x41CFBF8940000000
  %4941 = fptosi float %4940 to i32
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4935, %4925
  %4944 = fmul fast float %4942, %4925
  %4945 = fsub fast float %4928, %4943
  %4946 = fadd fast float %4944, %4928
  %4947 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4949 = fsub fast float %4923, %4947
  %4950 = fsub fast float %4948, %4947
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4949
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fcmp fast olt float %4955, 0x3F70101020000000
  br i1 %4956, label %5095, label %4957

; <label>:4957                                    ; preds = %4919, %4822
  %4958 = phi float [ %4955, %4919 ], [ %4532, %4822 ]
  %4959 = fmul fast float %4958, %4825
  %4960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.i32 %4960, 1
  %4962 = extractvalue %dx.types.CBufRet.i32 %4960, 0
  %4963 = add i32 %4962, 0
  %4964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4964, %dx.types.Handle %104, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4966 = extractvalue %dx.types.ResRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.ResRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.ResRet.f32 %4965, 2
  %4969 = extractvalue %dx.types.ResRet.f32 %4965, 3
  %4970 = and i32 %4961, 255
  %4971 = uitofp i32 %4970 to float
  %4972 = lshr i32 %4961, 8
  %4973 = and i32 %4972, 255
  %4974 = uitofp i32 %4973 to float
  %4975 = fmul fast float %4969, %4971
  %4976 = fadd fast float %4975, %4974
  %4977 = fmul fast float %4976, 0x3F70101000000000
  %4978 = fadd fast float %4977, 0xBFB99999A0000000
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, 0x3FF1C71C80000000
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4982 = fsub fast float 1.000000e+00, %4980
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fmul fast float %4983, %4966
  %4985 = fmul fast float %4983, %4967
  %4986 = fmul fast float %4983, %4968
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = fmul fast float %4980, %4966
  %4991 = fmul fast float %4980, %4967
  %4992 = fmul fast float %4980, %4968
  %4993 = fadd fast float %4990, %4981
  %4994 = fadd fast float %4991, %4981
  %4995 = fadd fast float %4992, %4981
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.i32 %4999, 3
  %5001 = extractvalue %dx.types.CBufRet.i32 %4999, 2
  %5002 = add i32 %5001, 0
  %5003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5004 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5003, %dx.types.Handle %104, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5005 = extractvalue %dx.types.ResRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.ResRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.ResRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.ResRet.f32 %5004, 3
  %5009 = and i32 %5000, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = lshr i32 %5000, 8
  %5012 = and i32 %5011, 255
  %5013 = uitofp i32 %5012 to float
  %5014 = lshr i32 %5000, 16
  %5015 = and i32 %5014, 255
  %5016 = uitofp i32 %5015 to float
  %5017 = fmul fast float %5016, 0x3F70101000000000
  %5018 = fmul fast float %5005, %5010
  %5019 = fadd fast float %5018, %5013
  %5020 = fmul fast float %5019, 0x3F70101000000000
  %5021 = fadd fast float %5006, -5.000000e-01
  %5022 = fadd fast float %5008, -5.000000e-01
  %5023 = fmul fast float %5021, %5017
  %5024 = fmul fast float %5022, %5017
  %5025 = fadd fast float %5023, 5.000000e-01
  %5026 = fadd fast float %5024, 5.000000e-01
  %5027 = fmul fast float %5025, 2.000000e+00
  %5028 = fadd fast float %5027, -1.000000e+00
  %5029 = fmul fast float %5026, 2.000000e+00
  %5030 = fadd fast float %5029, -1.000000e+00
  %5031 = fadd fast float %5028, %5030
  %5032 = fmul fast float %5031, 5.000000e-01
  %5033 = fsub fast float %5028, %5030
  %5034 = fmul fast float %5033, 5.000000e-01
  %5035 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5038 = fsub fast float %5036, %5037
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5034, float %5038, float %5032, float %5034, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5032, %5040
  %5042 = fmul fast float %5034, %5040
  %5043 = select i1 %4870, i32 %4860, i32 %4861
  %5044 = select i1 %4868, i32 %4859, i32 %5043
  %5045 = sitofp i32 %5044 to float
  %5046 = fmul fast float %5038, %5045
  %5047 = fmul fast float %5046, %5040
  %5048 = select i1 %4870, float %5047, float %5042
  %5049 = select i1 %4870, float %5042, float %5047
  %5050 = select i1 %4868, float %5047, float %5041
  %5051 = select i1 %4868, float %5042, float %5048
  %5052 = select i1 %4868, float %5041, float %5049
  %5053 = fsub fast float %4987, %4814
  %5054 = fsub fast float %4988, %4815
  %5055 = fsub fast float %4989, %4816
  %5056 = fmul fast float %5053, %4959
  %5057 = fmul fast float %5054, %4959
  %5058 = fmul fast float %5055, %4959
  %5059 = fadd fast float %5056, %4814
  %5060 = fadd fast float %5057, %4815
  %5061 = fadd fast float %5058, %4816
  %5062 = fsub fast float %4996, %4817
  %5063 = fsub fast float %4997, %4818
  %5064 = fsub fast float %4998, %4819
  %5065 = fmul fast float %5062, %4959
  %5066 = fmul fast float %5063, %4959
  %5067 = fmul fast float %5064, %4959
  %5068 = fadd fast float %5065, %4817
  %5069 = fadd fast float %5066, %4818
  %5070 = fadd fast float %5067, %4819
  %5071 = fadd fast float %5050, %4811
  %5072 = fadd fast float %5051, %4812
  %5073 = fadd fast float %5052, %4813
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5071, %5075
  %5077 = fmul fast float %5072, %5075
  %5078 = fmul fast float %5073, %5075
  %5079 = fsub fast float %5076, %4811
  %5080 = fsub fast float %5077, %4812
  %5081 = fsub fast float %5078, %4813
  %5082 = fmul fast float %5079, %4959
  %5083 = fmul fast float %5080, %4959
  %5084 = fmul fast float %5081, %4959
  %5085 = fadd fast float %5082, %4811
  %5086 = fadd fast float %5083, %4812
  %5087 = fadd fast float %5084, %4813
  %5088 = call float @dx.op.binary.f32(i32 36, float %4821, float %5007)  ; FMin(a,b)
  %5089 = fsub fast float %5088, %4821
  %5090 = fmul fast float %5089, %4959
  %5091 = fadd fast float %5090, %4821
  %5092 = fsub fast float %5020, %4820
  %5093 = fmul fast float %5092, %4959
  %5094 = fadd fast float %5093, %4820
  br label %5095

; <label>:5095                                    ; preds = %4957, %4919, %4810, %4526
  %5096 = phi float [ %5085, %4957 ], [ %4811, %4919 ], [ %4811, %4810 ], [ %4083, %4526 ]
  %5097 = phi float [ %5086, %4957 ], [ %4812, %4919 ], [ %4812, %4810 ], [ %4084, %4526 ]
  %5098 = phi float [ %5087, %4957 ], [ %4813, %4919 ], [ %4813, %4810 ], [ %4085, %4526 ]
  %5099 = phi float [ %5059, %4957 ], [ %4814, %4919 ], [ %4814, %4810 ], [ %4135, %4526 ]
  %5100 = phi float [ %5060, %4957 ], [ %4815, %4919 ], [ %4815, %4810 ], [ %4136, %4526 ]
  %5101 = phi float [ %5061, %4957 ], [ %4816, %4919 ], [ %4816, %4810 ], [ %4137, %4526 ]
  %5102 = phi float [ %5068, %4957 ], [ %4817, %4919 ], [ %4817, %4810 ], [ %4120, %4526 ]
  %5103 = phi float [ %5069, %4957 ], [ %4818, %4919 ], [ %4818, %4810 ], [ %4121, %4526 ]
  %5104 = phi float [ %5070, %4957 ], [ %4819, %4919 ], [ %4819, %4810 ], [ %4122, %4526 ]
  %5105 = phi float [ %5094, %4957 ], [ %4820, %4919 ], [ %4820, %4810 ], [ %4123, %4526 ]
  %5106 = phi float [ %5091, %4957 ], [ %4821, %4919 ], [ %4821, %4810 ], [ %4095, %4526 ]
  %5107 = fcmp fast une float %4530, 0.000000e+00
  br i1 %5107, label %5108, label %5277

; <label>:5108                                    ; preds = %5095
  %5109 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = call float @dx.op.unary.f32(i32 25, float %5109)  ; Rsqrt(value)
  %5111 = fmul fast float %195, %5110
  %5112 = fsub fast float -0.000000e+00, %5111
  %5113 = fmul fast float %196, %5110
  %5114 = fsub fast float -0.000000e+00, %5113
  %5115 = fmul fast float %197, %5110
  %5116 = fsub fast float -0.000000e+00, %5115
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5114, float %5116, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = fmul fast float %4530, 2.500000e+00
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %4530, 0x4013FFFFE0000000
  %5121 = fadd fast float %5120, 0xBFFFFFFFE0000000
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %4530, 0x4004000020000000
  %5124 = fadd fast float %5123, 0xBFF8000040000000
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %4102, 1.000000e+01
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5127, 2.000000e+00
  %5129 = fsub fast float 3.000000e+00, %5128
  %5130 = fmul fast float %5127, %5127
  %5131 = fmul fast float %5130, %5129
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = fsub fast float 0x3FE3333340000000, %5105
  %5134 = fmul fast float %5133, 0x400AAAAAA0000000
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5132, %5135
  %5137 = fmul fast float %5099, 0x3FEA2B8620000000
  %5138 = fmul fast float %5100, 0x3FEA2B8620000000
  %5139 = fmul fast float %5101, 0x3FEA2B8620000000
  %5140 = fadd fast float %5137, 0x3FC81DFBA0000000
  %5141 = fmul fast float %5140, %5099
  %5142 = fadd fast float %5141, 0x3F910E6020000000
  %5143 = fadd fast float %5138, 0x3FC81DFBA0000000
  %5144 = fmul fast float %5143, %5100
  %5145 = fadd fast float %5144, 0x3F910E6020000000
  %5146 = fadd fast float %5139, 0x3FC81DFBA0000000
  %5147 = fmul fast float %5146, %5101
  %5148 = fadd fast float %5147, 0x3F910E6020000000
  %5149 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = fsub fast float %5149, %5099
  %5153 = fsub fast float %5150, %5100
  %5154 = fsub fast float %5151, %5101
  %5155 = fmul fast float %5152, %5119
  %5156 = fmul fast float %5155, %5136
  %5157 = fmul fast float %5153, %5119
  %5158 = fmul fast float %5157, %5136
  %5159 = fmul fast float %5154, %5119
  %5160 = fmul fast float %5159, %5136
  %5161 = fadd fast float %5156, %5099
  %5162 = fadd fast float %5158, %5100
  %5163 = fadd fast float %5160, %5101
  %5164 = fmul fast float %5106, %5106
  %5165 = fmul fast float %5164, %5164
  %5166 = fadd fast float %5122, 1.000000e+00
  %5167 = fsub fast float %5166, %5136
  %5168 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5169 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5180 = bitcast float %5102 to i32
  %5181 = ashr i32 %5180, 1
  %5182 = add nsw i32 %5181, 532487669
  %5183 = bitcast i32 %5182 to float
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = bitcast float %5184 to i32
  %5186 = sub nsw i32 2129859010, %5185
  %5187 = bitcast i32 %5186 to float
  %5188 = fmul fast float %5187, 2.000000e+00
  %5189 = bitcast float %5103 to i32
  %5190 = ashr i32 %5189, 1
  %5191 = add nsw i32 %5190, 532487669
  %5192 = bitcast i32 %5191 to float
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, 2.000000e+00
  %5198 = bitcast float %5104 to i32
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
  %5234 = fsub fast float 1.000000e+00, %4511
  %5235 = fmul fast float %5174, %5234
  %5236 = fmul fast float %5177, %5177
  %5237 = fmul fast float %5236, %5235
  %5238 = fmul fast float %5237, %5179
  %5239 = fmul fast float %5234, 0xBFE99999A0000000
  %5240 = fmul fast float %5239, %5119
  %5241 = fmul fast float %5240, %5136
  %5242 = fadd fast float %5241, 1.000000e+00
  %5243 = fadd fast float %5105, -1.000000e+00
  %5244 = fmul fast float %5242, %5243
  %5245 = fadd fast float %5244, 1.000000e+00
  %5246 = fsub fast float %5228, %5102
  %5247 = fsub fast float %5229, %5103
  %5248 = fsub fast float %5230, %5104
  %5249 = fmul fast float %5238, %5246
  %5250 = fmul fast float %5238, %5247
  %5251 = fmul fast float %5238, %5248
  %5252 = fadd fast float %5249, %5102
  %5253 = fadd fast float %5250, %5103
  %5254 = fadd fast float %5251, %5104
  %5255 = fsub fast float %115, %5096
  %5256 = fsub fast float %116, %5097
  %5257 = fsub fast float %117, %5098
  %5258 = fmul fast float %5238, %5255
  %5259 = fmul fast float %5238, %5256
  %5260 = fmul fast float %5238, %5257
  %5261 = fadd fast float %5258, %5096
  %5262 = fadd fast float %5259, %5097
  %5263 = fadd fast float %5260, %5098
  %5264 = fmul fast float %5238, %5233
  %5265 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5264, %5266
  %5268 = fadd fast float %5267, %5265
  %5269 = fsub fast float 1.000000e+00, %5106
  %5270 = fmul fast float %5238, %5269
  %5271 = fadd fast float %5270, %5106
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 25, float %5272)  ; Rsqrt(value)
  %5274 = fmul fast float %5261, %5273
  %5275 = fmul fast float %5262, %5273
  %5276 = fmul fast float %5263, %5273
  br label %5277

; <label>:5277                                    ; preds = %5108, %5095
  %5278 = phi float [ %5274, %5108 ], [ %5096, %5095 ]
  %5279 = phi float [ %5275, %5108 ], [ %5097, %5095 ]
  %5280 = phi float [ %5276, %5108 ], [ %5098, %5095 ]
  %5281 = phi float [ %5161, %5108 ], [ %5099, %5095 ]
  %5282 = phi float [ %5162, %5108 ], [ %5100, %5095 ]
  %5283 = phi float [ %5163, %5108 ], [ %5101, %5095 ]
  %5284 = phi float [ %5252, %5108 ], [ %5102, %5095 ]
  %5285 = phi float [ %5253, %5108 ], [ %5103, %5095 ]
  %5286 = phi float [ %5254, %5108 ], [ %5104, %5095 ]
  %5287 = phi float [ %5268, %5108 ], [ %5105, %5095 ]
  %5288 = phi float [ %5271, %5108 ], [ %5106, %5095 ]
  %5289 = icmp eq i32 %58, 0
  br i1 %5289, label %5320, label %5290

; <label>:5290                                    ; preds = %5277
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5294 = fmul fast float %5292, %108
  %5295 = fmul fast float %5293, %109
  %5296 = fmul fast float %5294, 1.024000e+03
  %5297 = fmul fast float %5295, 1.024000e+03
  %5298 = fadd fast float %5296, -5.120000e+02
  %5299 = fadd fast float %5297, -5.120000e+02
  %5300 = fmul fast float %5294, 0x4081BEDF00000000
  %5301 = fadd fast float %5300, 0xC071BEDF00000000
  %5302 = call float @dx.op.unary.f32(i32 22, float %5301)  ; Frc(value)
  %5303 = fmul fast float %5298, %5302
  %5304 = fadd fast float %5303, %5299
  %5305 = fmul fast float %5295, 0x4073BEBE20000000
  %5306 = fadd fast float %5305, 0xC063BEBE20000000
  %5307 = call float @dx.op.unary.f32(i32 22, float %5306)  ; Frc(value)
  %5308 = fmul fast float %5299, %5307
  %5309 = fadd fast float %5308, %5298
  %5310 = fmul fast float %5304, %5309
  %5311 = call float @dx.op.unary.f32(i32 22, float %5310)  ; Frc(value)
  %5312 = add i32 %321, 12
  %5313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.i32 %5313, 0
  %5315 = and i32 %5314, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = fmul fast float %5316, 0x3F70101020000000
  %5318 = fcmp fast olt float %5311, %5317
  br i1 %5318, label %5319, label %5320

; <label>:5319                                    ; preds = %5290
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5320

; <label>:5320                                    ; preds = %5319, %5290, %5277
  %5321 = fsub fast float -0.000000e+00, %197
  %5322 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = call float @dx.op.unary.f32(i32 25, float %5322)  ; Rsqrt(value)
  %5324 = fmul fast float %5323, %195
  %5325 = fmul fast float %5323, %196
  %5326 = fmul fast float %5323, %197
  %5327 = fsub fast float -0.000000e+00, %5324
  %5328 = fsub fast float -0.000000e+00, %5325
  %5329 = fsub fast float -0.000000e+00, %5326
  %5330 = select i1 %267, float 0.000000e+00, float %5286
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = fmul fast float %5333, 2.000000e+00
  %5335 = fmul fast float %5334, %5278
  %5336 = fmul fast float %5334, %5279
  %5337 = fmul fast float %5334, %5280
  %5338 = fsub fast float %5324, %5335
  %5339 = fsub fast float %5325, %5336
  %5340 = fsub fast float %5326, %5337
  %5341 = call float @dx.op.binary.f32(i32 36, float %5288, float 1.000000e+00)  ; FMin(a,b)
  %5342 = fsub fast float 1.000000e+00, %5288
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fsub fast float 1.000000e+00, %79
  %5347 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5349 = fdiv fast float %5346, %5348
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fmul fast float %5351, 5.000000e-01
  %5353 = fadd fast float %5352, 5.000000e-01
  %5354 = fmul fast float %5353, %79
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = fmul fast float %5356, %5349
  %5358 = fadd fast float %5354, %5357
  %5359 = fsub fast float 5.000000e-01, %5352
  %5360 = fmul fast float %5359, %5281
  %5361 = fmul fast float %5359, %5282
  %5362 = fmul fast float %5359, %5283
  %5363 = fadd fast float %5358, %5360
  %5364 = fadd fast float %5358, %5361
  %5365 = fadd fast float %5358, %5362
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5367, 5.000000e-01
  %5369 = fadd fast float %5368, 5.000000e-01
  %5370 = fmul fast float %5369, %79
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5338, float %5339, float %5340, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = fmul fast float %5372, %5349
  %5374 = fadd fast float %5370, %5373
  %5375 = fsub fast float 5.000000e-01, %5368
  %5376 = fmul fast float %5375, %5281
  %5377 = fmul fast float %5375, %5282
  %5378 = fmul fast float %5375, %5283
  %5379 = fadd fast float %5374, %5376
  %5380 = fadd fast float %5374, %5377
  %5381 = fadd fast float %5374, %5378
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = call float @dx.op.binary.f32(i32 36, float %5281, float %5383)  ; FMin(a,b)
  %5385 = fsub fast float 1.000000e+00, %5341
  %5386 = fmul fast float %5384, %5385
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = call float @dx.op.binary.f32(i32 36, float %5282, float %5383)  ; FMin(a,b)
  %5392 = fmul fast float %5391, %5385
  %5393 = fsub fast float 1.000000e+00, %5392
  %5394 = bitcast float %5393 to i32
  %5395 = sub nsw i32 2129859010, %5394
  %5396 = bitcast i32 %5395 to float
  %5397 = call float @dx.op.binary.f32(i32 36, float %5283, float %5383)  ; FMin(a,b)
  %5398 = fmul fast float %5397, %5385
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = bitcast float %5399 to i32
  %5401 = sub nsw i32 2129859010, %5400
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5341, %80
  %5404 = fmul fast float %5403, %5363
  %5405 = fmul fast float %5404, %5390
  %5406 = fmul fast float %5341, %81
  %5407 = fmul fast float %5406, %5364
  %5408 = fmul fast float %5407, %5396
  %5409 = fmul fast float %5341, %82
  %5410 = fmul fast float %5409, %5365
  %5411 = fmul fast float %5410, %5402
  %5412 = call float @dx.op.binary.f32(i32 36, float %5284, float %5383)  ; FMin(a,b)
  %5413 = fmul fast float %5412, %5385
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = bitcast float %5414 to i32
  %5416 = sub nsw i32 2129859010, %5415
  %5417 = bitcast i32 %5416 to float
  %5418 = call float @dx.op.binary.f32(i32 36, float %5285, float %5383)  ; FMin(a,b)
  %5419 = fmul fast float %5418, %5385
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = bitcast float %5420 to i32
  %5422 = sub nsw i32 2129859010, %5421
  %5423 = bitcast i32 %5422 to float
  %5424 = call float @dx.op.binary.f32(i32 36, float %5330, float %5383)  ; FMin(a,b)
  %5425 = fmul fast float %5424, %5385
  %5426 = fsub fast float 1.000000e+00, %5425
  %5427 = bitcast float %5426 to i32
  %5428 = sub nsw i32 2129859010, %5427
  %5429 = bitcast i32 %5428 to float
  %5430 = fmul fast float %5403, %5379
  %5431 = fmul fast float %5430, %5417
  %5432 = fmul fast float %5406, %5380
  %5433 = fmul fast float %5432, %5423
  %5434 = fmul fast float %5409, %5381
  %5435 = fmul fast float %5434, %5429
  %5436 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5408, float %5411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = select i1 %267, float 0.000000e+00, float %5405
  %5438 = select i1 %267, float %5436, float %5408
  %5439 = select i1 %267, float 0.000000e+00, float %5411
  %5440 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5433, float %5435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = select i1 %267, float 0.000000e+00, float %5431
  %5442 = select i1 %267, float %5440, float %5433
  %5443 = select i1 %267, float 0.000000e+00, float %5435
  %5444 = fmul fast float %5332, 9.843750e-01
  %5445 = fmul fast float %5287, 9.843750e-01
  %5446 = fadd fast float %5444, 7.812500e-03
  %5447 = fadd fast float %5445, 7.812500e-03
  %5448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5446, float %5447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 2
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 3
  %5451 = fmul fast float %5449, %5284
  %5452 = fmul fast float %5449, %5285
  %5453 = fmul fast float %5449, %5330
  %5454 = fadd fast float %5451, %5450
  %5455 = fadd fast float %5452, %5450
  %5456 = fadd fast float %5453, %5450
  %5457 = fcmp fast ogt float %4096, 0.000000e+00
  br i1 %5457, label %5458, label %5484

; <label>:5458                                    ; preds = %5320
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4096, float %5332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fadd fast float %5460, -5.000000e-01
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fsub fast float 1.000000e+00, %5284
  %5467 = fsub fast float 1.000000e+00, %5285
  %5468 = fsub fast float 1.000000e+00, %5330
  %5469 = fmul fast float %5284, 4.000000e+00
  %5470 = fmul fast float %5469, %5466
  %5471 = fmul fast float %5470, %5463
  %5472 = fmul fast float %5285, 4.000000e+00
  %5473 = fmul fast float %5472, %5467
  %5474 = fmul fast float %5473, %5464
  %5475 = fmul fast float %5330, 4.000000e+00
  %5476 = fmul fast float %5475, %5468
  %5477 = fmul fast float %5476, %5465
  %5478 = fadd fast float %5471, %5454
  %5479 = fadd fast float %5474, %5455
  %5480 = fadd fast float %5477, %5456
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  br label %5484

; <label>:5484                                    ; preds = %5458, %5320
  %5485 = phi float [ %5481, %5458 ], [ %5454, %5320 ]
  %5486 = phi float [ %5482, %5458 ], [ %5455, %5320 ]
  %5487 = phi float [ %5483, %5458 ], [ %5456, %5320 ]
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5485, float %5488)  ; FMax(a,b)
  %5490 = fsub fast float 1.000000e+00, %5489
  %5491 = fmul fast float %5490, %5437
  %5492 = fmul fast float %5490, %5438
  %5493 = fmul fast float %5490, %5439
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fcmp fast ogt float %5494, 0x3E7FF19E20000000
  %5496 = fdiv fast float 1.000000e+00, %5494
  %5497 = select i1 %5495, float %5496, float 0.000000e+00
  %5498 = fmul fast float %5497, %5281
  %5499 = fmul fast float %5497, %5282
  %5500 = fmul fast float %5497, %5283
  %5501 = fadd fast float %5498, -1.000000e+00
  %5502 = fadd fast float %5499, -1.000000e+00
  %5503 = fadd fast float %5500, -1.000000e+00
  %5504 = fmul fast float %5501, 5.000000e-01
  %5505 = fmul fast float %5502, 5.000000e-01
  %5506 = fmul fast float %5503, 5.000000e-01
  %5507 = fadd fast float %5504, 1.000000e+00
  %5508 = fadd fast float %5505, 1.000000e+00
  %5509 = fadd fast float %5506, 1.000000e+00
  %5510 = fmul fast float %5485, %5441
  %5511 = fmul fast float %5486, %5442
  %5512 = fmul fast float %5487, %5443
  %5513 = fsub fast float 1.000000e+00, %5332
  %5514 = bitcast float %5513 to i32
  %5515 = sitofp i32 %5514 to float
  %5516 = fmul fast float %5515, 5.000000e+00
  %5517 = fadd fast float %5516, 0xC1EFBF8940000000
  %5518 = fptosi float %5517 to i32
  %5519 = bitcast i32 %5518 to float
  %5520 = fmul fast float %5519, %4097
  %5521 = fmul fast float %5437, %5520
  %5522 = fmul fast float %5521, %5490
  %5523 = fmul fast float %5522, %5507
  %5524 = fmul fast float %5438, %5520
  %5525 = fmul fast float %5524, %5490
  %5526 = fmul fast float %5525, %5508
  %5527 = fmul fast float %5439, %5520
  %5528 = fmul fast float %5527, %5490
  %5529 = fmul fast float %5528, %5509
  %5530 = fmul fast float %5491, %4093
  %5531 = fmul fast float %5492, %4093
  %5532 = fmul fast float %5493, %4093
  %5533 = fadd fast float %5510, %4089
  %5534 = fadd fast float %5533, %5523
  %5535 = fmul fast float %5534, %4093
  %5536 = fadd fast float %5511, %4090
  %5537 = fadd fast float %5536, %5526
  %5538 = fmul fast float %5537, %4093
  %5539 = fadd fast float %5512, %4091
  %5540 = fadd fast float %5539, %5529
  %5541 = fmul fast float %5540, %4093
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 3
  %5544 = fcmp fast oeq float %5543, 0.000000e+00
  br i1 %5544, label %6629, label %5545

; <label>:5545                                    ; preds = %5484
  %5546 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5547 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5548 = extractvalue %dx.types.CBufRet.f32 %5542, 2
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %5552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = select i1 %267, float %5554, float %5550
  %5558 = select i1 %267, float %5556, float %5551
  %5559 = select i1 %267, float %5555, float %5552
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5562 = fmul fast float %5561, %115
  %5563 = fmul fast float %5561, %116
  %5564 = fmul fast float %5561, %117
  %5565 = fadd fast float %5562, %195
  %5566 = fadd fast float %5563, %196
  %5567 = fadd fast float %5564, %197
  %5568 = fcmp fast olt float %5543, 0.000000e+00
  br i1 %5568, label %6208, label %5569

; <label>:5569                                    ; preds = %5545
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.CBufRet.f32 %5570, 1
  %5573 = extractvalue %dx.types.CBufRet.f32 %5570, 2
  %5574 = extractvalue %dx.types.CBufRet.f32 %5570, 3
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.CBufRet.f32 %5575, 2
  %5579 = extractvalue %dx.types.CBufRet.f32 %5575, 3
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.CBufRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5580, 2
  %5584 = extractvalue %dx.types.CBufRet.f32 %5580, 3
  %5585 = fmul fast float %5571, %5565
  %5586 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5572, float %5585)  ; FMad(a,b,c)
  %5587 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5573, float %5586)  ; FMad(a,b,c)
  %5588 = fadd fast float %5587, %5574
  %5589 = fmul fast float %5576, %5565
  %5590 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5577, float %5589)  ; FMad(a,b,c)
  %5591 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5578, float %5590)  ; FMad(a,b,c)
  %5592 = fadd fast float %5591, %5579
  %5593 = fmul fast float %5581, %5565
  %5594 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5582, float %5593)  ; FMad(a,b,c)
  %5595 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5583, float %5594)  ; FMad(a,b,c)
  %5596 = fadd fast float %5595, %5584
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5599 = fcmp fast une float %5598, 0.000000e+00
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5604 = fmul fast float %5603, %5588
  %5605 = fmul fast float %5603, %5592
  %5606 = fadd fast float %5604, %5601
  %5607 = fadd fast float %5605, %5602
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5612 = fmul fast float %5611, %5588
  %5613 = fmul fast float %5611, %5592
  %5614 = fadd fast float %5612, %5609
  %5615 = fadd fast float %5613, %5610
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5618 = fsub fast float %5617, %5596
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = fmul fast float %5618, %5619
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  br i1 %5599, label %5683, label %5623

; <label>:5623                                    ; preds = %5569
  %5624 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5627 = fadd fast float %5626, %5624
  %5628 = fcmp fast ogt float %5627, 0.000000e+00
  br i1 %5628, label %5629, label %5653

; <label>:5629                                    ; preds = %5623
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5633 = fsub fast float %5614, %5631
  %5634 = fsub fast float %5615, %5632
  %5635 = fcmp fast olt float %5633, 0.000000e+00
  %5636 = fcmp fast olt float %5634, 0.000000e+00
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5640 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5641 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5642 = select i1 %5635, float %5638, float %5640
  %5643 = select i1 %5636, float %5639, float %5641
  %5644 = fmul fast float %5642, %5633
  %5645 = fmul fast float %5643, %5634
  %5646 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5649 = call float @dx.op.binary.f32(i32 35, float %5646, float %5647)  ; FMax(a,b)
  %5650 = fsub fast float %5648, %5649
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, %5622
  br label %5653

; <label>:5653                                    ; preds = %5629, %5623
  %5654 = phi float [ %5652, %5629 ], [ 0.000000e+00, %5623 ]
  %5655 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5657 = fadd fast float %5656, %5655
  %5658 = fcmp fast ogt float %5657, 0.000000e+00
  br i1 %5658, label %5659, label %5683

; <label>:5659                                    ; preds = %5653
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = fsub fast float %5606, %5661
  %5664 = fsub fast float %5607, %5662
  %5665 = fcmp fast olt float %5663, 0.000000e+00
  %5666 = fcmp fast olt float %5664, 0.000000e+00
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5678 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5679 = call float @dx.op.binary.f32(i32 35, float %5676, float %5677)  ; FMax(a,b)
  %5680 = fsub fast float %5678, %5679
  %5681 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5682 = fmul fast float %5681, %5622
  br label %5683

; <label>:5683                                    ; preds = %5659, %5653, %5569
  %5684 = phi float [ 0.000000e+00, %5569 ], [ %5682, %5659 ], [ 0.000000e+00, %5653 ]
  %5685 = phi float [ 0.000000e+00, %5569 ], [ %5654, %5659 ], [ %5654, %5653 ]
  %5686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.f32 %5686, 1
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.CBufRet.f32 %5689, 1
  %5692 = fsub fast float %5588, %5690
  %5693 = fsub fast float %5592, %5691
  %5694 = fcmp fast olt float %5692, 0.000000e+00
  %5695 = fcmp fast olt float %5693, 0.000000e+00
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 0
  %5698 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5699 = extractvalue %dx.types.CBufRet.f32 %5696, 2
  %5700 = extractvalue %dx.types.CBufRet.f32 %5696, 3
  %5701 = select i1 %5694, float %5697, float %5699
  %5702 = select i1 %5695, float %5698, float %5700
  %5703 = fmul fast float %5701, %5692
  %5704 = fmul fast float %5702, %5693
  %5705 = call float @dx.op.unary.f32(i32 6, float %5703)  ; FAbs(value)
  %5706 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5708 = call float @dx.op.binary.f32(i32 35, float %5705, float %5706)  ; FMax(a,b)
  %5709 = fsub fast float %5707, %5708
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = call float @dx.op.binary.f32(i32 36, float %5710, float %5688)  ; FMin(a,b)
  %5712 = fmul fast float %5711, %5622
  %5713 = fsub fast float %5684, %5712
  %5714 = fsub fast float %5685, %5684
  %5715 = fsub fast float %5714, %5712
  %5716 = call float @dx.op.binary.f32(i32 35, float %5684, float %5685)  ; FMax(a,b)
  %5717 = call float @dx.op.binary.f32(i32 35, float %5712, float %5716)  ; FMax(a,b)
  %5718 = fcmp fast olt float %5717, 1.000000e+00
  br i1 %5718, label %5719, label %6117, !dx.controlflow.hints !97

; <label>:5719                                    ; preds = %5683
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = fcmp fast une float %5721, 0.000000e+00
  br i1 %5722, label %5723, label %6117, !dx.controlflow.hints !98

; <label>:5723                                    ; preds = %5719
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5728 = extractvalue %dx.types.CBufRet.f32 %5724, 3
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.CBufRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.CBufRet.f32 %5729, 2
  %5733 = extractvalue %dx.types.CBufRet.f32 %5729, 3
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5738 = extractvalue %dx.types.CBufRet.f32 %5734, 3
  %5739 = fmul fast float %5725, %5565
  %5740 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5726, float %5739)  ; FMad(a,b,c)
  %5741 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5727, float %5740)  ; FMad(a,b,c)
  %5742 = fadd fast float %5741, %5728
  %5743 = fmul fast float %5730, %5565
  %5744 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5731, float %5743)  ; FMad(a,b,c)
  %5745 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5732, float %5744)  ; FMad(a,b,c)
  %5746 = fadd fast float %5745, %5733
  %5747 = fmul fast float %5735, %5565
  %5748 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %5736, float %5747)  ; FMad(a,b,c)
  %5749 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %5737, float %5748)  ; FMad(a,b,c)
  %5750 = fadd fast float %5749, %5738
  %5751 = fcmp fast oge float %5742, 1.000000e+00
  %5752 = fcmp fast oge float %5746, 1.000000e+00
  %5753 = or i1 %5751, %5752
  %5754 = fcmp fast olt float %5742, 0.000000e+00
  %5755 = fcmp fast olt float %5746, 0.000000e+00
  %5756 = or i1 %5754, %5755
  %5757 = or i1 %5753, %5756
  br i1 %5757, label %6117, label %5758, !dx.controlflow.hints !99

; <label>:5758                                    ; preds = %5723
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.i32 %5763, 2
  %5765 = uitofp i32 %5764 to float
  %5766 = extractvalue %dx.types.CBufRet.i32 %5763, 3
  %5767 = uitofp i32 %5766 to float
  %5768 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5769 = fmul fast float %5768, 2.000000e+00
  %5770 = fsub fast float %5742, %5760
  %5771 = fsub fast float %5746, %5761
  %5772 = fmul fast float %5769, %5770
  %5773 = fmul fast float %5769, %5771
  %5774 = fdiv fast float 1.000000e+00, %5548
  %5775 = fmul fast float %5773, %5774
  %5776 = call float @dx.op.unary.f32(i32 6, float %5775)  ; FAbs(value)
  %5777 = fmul fast float %5762, %5567
  %5778 = fmul fast float %5777, %5769
  %5779 = call float @dx.op.unary.f32(i32 6, float %5778)  ; FAbs(value)
  %5780 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5781 = call float @dx.op.binary.f32(i32 35, float %5779, float %5776)  ; FMax(a,b)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5780, float %5781)  ; FMax(a,b)
  %5783 = fmul fast float %5782, 2.000000e+00
  %5784 = call float @dx.op.unary.f32(i32 23, float %5783)  ; Log(value)
  %5785 = call float @dx.op.binary.f32(i32 35, float %5784, float %5765)  ; FMax(a,b)
  %5786 = call float @dx.op.unary.f32(i32 22, float %5785)  ; Frc(value)
  %5787 = fadd fast float %5786, 0xBFEA666660000000
  %5788 = fmul fast float %5787, 8.000000e+00
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = call float @dx.op.unary.f32(i32 27, float %5785)  ; Round_ni(value)
  %5791 = fadd fast float %5790, %5789
  %5792 = call float @dx.op.binary.f32(i32 36, float %5791, float %5767)  ; FMin(a,b)
  %5793 = call float @dx.op.unary.f32(i32 27, float %5792)  ; Round_ni(value)
  %5794 = fsub fast float -0.000000e+00, %5793
  %5795 = call float @dx.op.unary.f32(i32 21, float %5794)  ; Exp(value)
  %5796 = fmul fast float %5795, %5769
  %5797 = fmul fast float %5796, %5742
  %5798 = fmul fast float %5796, %5746
  %5799 = fmul fast float %5797, 2.500000e-01
  %5800 = fmul fast float %5798, 2.500000e-01
  %5801 = fadd fast float %5799, 5.000000e-01
  %5802 = fadd fast float %5800, 5.000000e-01
  %5803 = fsub fast float %5767, %5765
  %5804 = fptoui float %5803 to i32
  %5805 = add i32 %5804, 320
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5805)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = fcmp fast une float %5792, %5767
  %5810 = fsub fast float %5742, %5807
  %5811 = fsub fast float %5746, %5808
  %5812 = call float @dx.op.unary.f32(i32 6, float %5810)  ; FAbs(value)
  %5813 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5814 = fmul fast float %5812, %5796
  %5815 = fmul fast float %5813, %5796
  %5816 = fcmp fast olt float %5814, 1.000000e+00
  %5817 = fcmp fast olt float %5815, 1.000000e+00
  %5818 = and i1 %5816, %5817
  %5819 = or i1 %5809, %5818
  br i1 %5819, label %5820, label %6117, !dx.controlflow.hints !100

; <label>:5820                                    ; preds = %5758
  %5821 = fmul fast float %5798, 5.000000e-01
  %5822 = fmul fast float %5797, 5.000000e-01
  %5823 = fadd fast float %5821, 5.000000e-01
  %5824 = fadd fast float %5822, 5.000000e-01
  %5825 = sitofp i32 %5764 to float
  %5826 = fsub fast float %5792, %5825
  %5827 = call float @dx.op.unary.f32(i32 27, float %5826)  ; Round_ni(value)
  %5828 = call float @dx.op.unary.f32(i32 22, float %5792)  ; Frc(value)
  %5829 = call float @dx.op.unary.f32(i32 22, float %5824)  ; Frc(value)
  %5830 = call float @dx.op.unary.f32(i32 22, float %5823)  ; Frc(value)
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5829, float %5830, float %5827, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = fcmp fast ogt float %5828, 0.000000e+00
  br i1 %5836, label %5837, label %5858, !dx.controlflow.hints !101

; <label>:5837                                    ; preds = %5820
  %5838 = fadd fast float %5827, 1.000000e+00
  %5839 = call float @dx.op.unary.f32(i32 22, float %5801)  ; Frc(value)
  %5840 = call float @dx.op.unary.f32(i32 22, float %5802)  ; Frc(value)
  %5841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5839, float %5840, float %5838, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5842 = extractvalue %dx.types.ResRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.ResRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.ResRet.f32 %5841, 2
  %5845 = extractvalue %dx.types.ResRet.f32 %5841, 3
  %5846 = fsub fast float %5842, %5832
  %5847 = fsub fast float %5843, %5833
  %5848 = fsub fast float %5844, %5834
  %5849 = fsub fast float %5845, %5835
  %5850 = fmul fast float %5846, %5828
  %5851 = fmul fast float %5847, %5828
  %5852 = fmul fast float %5848, %5828
  %5853 = fmul fast float %5849, %5828
  %5854 = fadd fast float %5850, %5832
  %5855 = fadd fast float %5851, %5833
  %5856 = fadd fast float %5852, %5834
  %5857 = fadd fast float %5853, %5835
  br label %5858

; <label>:5858                                    ; preds = %5837, %5820
  %5859 = phi float [ %5854, %5837 ], [ %5832, %5820 ]
  %5860 = phi float [ %5855, %5837 ], [ %5833, %5820 ]
  %5861 = phi float [ %5856, %5837 ], [ %5834, %5820 ]
  %5862 = phi float [ %5857, %5837 ], [ %5835, %5820 ]
  %5863 = fadd fast float %5859, -5.000000e-01
  %5864 = fadd fast float %5861, -5.000000e-01
  %5865 = fmul fast float %5863, 0xBFD5555560000000
  %5866 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5864, float %5865)  ; FMad(a,b,c)
  %5867 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5860, float 0.000000e+00)  ; FMad(a,b,c)
  %5868 = fadd fast float %5867, %5862
  %5869 = fmul fast float %5863, -7.500000e-01
  %5870 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5864, float %5869)  ; FMad(a,b,c)
  %5871 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5860, float 0.000000e+00)  ; FMad(a,b,c)
  %5872 = fadd fast float %5871, %5862
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5879 = extractvalue %dx.types.CBufRet.f32 %5875, 3
  %5880 = fsub fast float %5876, %5866
  %5881 = fsub fast float %5877, %5868
  %5882 = fsub fast float %5878, %5870
  %5883 = fsub fast float %5879, %5872
  %5884 = fmul fast float %5880, %5874
  %5885 = fmul fast float %5881, %5874
  %5886 = fmul fast float %5882, %5874
  %5887 = fmul fast float %5883, %5874
  %5888 = fadd fast float %5884, %5866
  %5889 = fadd fast float %5885, %5868
  %5890 = fadd fast float %5886, %5870
  %5891 = fadd fast float %5887, %5872
  %5892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5893 = extractvalue %dx.types.ResRet.i32 %5892, 0
  %5894 = and i32 %5893, 536870911
  %5895 = uitofp i32 %5894 to float
  %5896 = fmul fast float %5895, %5742
  %5897 = fmul fast float %5895, %5746
  %5898 = fptoui float %5896 to i32
  %5899 = fptoui float %5897 to i32
  %5900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.i32 %5900, 0
  %5902 = and i32 %5901, 31
  %5903 = lshr i32 %5898, %5902
  %5904 = lshr i32 %5899, %5902
  %5905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5906 = extractvalue %dx.types.ResRet.i32 %5905, 0
  %5907 = and i32 %5906, 31
  %5908 = shl i32 1, %5907
  %5909 = call i32 @dx.op.binary.i32(i32 40, i32 %5908, i32 4)  ; UMin(a,b)
  %5910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5911 = extractvalue %dx.types.ResRet.i32 %5910, 0
  %5912 = extractvalue %dx.types.ResRet.i32 %5910, 1
  %5913 = icmp eq i32 %5909, 0
  br i1 %5913, label %5955, label %5914

; <label>:5914                                    ; preds = %5858
  br label %5915

; <label>:5915                                    ; preds = %5943, %5914
  %5916 = phi i32 [ %5946, %5943 ], [ 0, %5914 ]
  %5917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.i32 %5917, 0
  %5919 = lshr i32 %5918, 16
  %5920 = and i32 %5919, 31
  %5921 = shl i32 %5904, %5920
  %5922 = add i32 %5921, %5903
  %5923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.i32 %5923, 0
  %5925 = and i32 %5924, 31
  %5926 = shl i32 %5922, %5925
  %5927 = add i32 %5926, %5916
  %5928 = shl i32 %5927, 2
  %5929 = add i32 %5928, 32
  %5930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.i32 %5930, 0
  %5932 = icmp slt i32 %5931, 0
  %5933 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5916
  %5934 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5916
  %5935 = bitcast float* %5933 to i32*
  %5936 = bitcast float* %5934 to i32*
  br i1 %5932, label %5937, label %5943

; <label>:5937                                    ; preds = %5915
  %5938 = and i32 %5931, 1073741823
  %5939 = add nuw nsw i32 %5938, 20
  %5940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.i32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.i32 %5940, 1
  br label %5943

; <label>:5943                                    ; preds = %5937, %5915
  %5944 = phi i32 [ %5941, %5937 ], [ %5911, %5915 ]
  %5945 = phi i32 [ %5942, %5937 ], [ %5912, %5915 ]
  store i32 %5944, i32* %5935, align 4
  store i32 %5945, i32* %5936, align 4
  %5946 = add nuw i32 %5916, 1
  %5947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.i32 %5947, 2
  %5949 = icmp eq i32 %5948, 0
  %5950 = icmp ugt i32 %5931, -1073741825
  %5951 = and i1 %5950, %5949
  %5952 = icmp ult i32 %5946, %5909
  %5953 = and i1 %5951, %5952
  br i1 %5953, label %5915, label %5954

; <label>:5954                                    ; preds = %5943
  br label %5955

; <label>:5955                                    ; preds = %5954, %5858
  %5956 = phi i32 [ 0, %5858 ], [ %5946, %5954 ]
  %5957 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5958 = fptoui float %5957 to i32
  %5959 = icmp eq i32 %5958, 0
  br i1 %5959, label %6011, label %5960

; <label>:5960                                    ; preds = %5955
  br label %5961

; <label>:5961                                    ; preds = %6006, %5960
  %5962 = phi i32 [ %6007, %6006 ], [ %5956, %5960 ]
  %5963 = phi i32 [ %6008, %6006 ], [ 0, %5960 ]
  %5964 = lshr i32 %5963, 2
  %5965 = and i32 %5963, 3
  %5966 = add nuw nsw i32 %5964, 83
  %5967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %5966)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.i32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.i32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.i32 %5967, 2
  %5971 = extractvalue %dx.types.CBufRet.i32 %5967, 3
  %5972 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %5968, i32* %5972, align 4
  %5973 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %5969, i32* %5973, align 4
  %5974 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %5970, i32* %5974, align 4
  %5975 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %5971, i32* %5975, align 4
  %5976 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5965
  %5977 = load i32, i32* %5976, align 4, !tbaa !102, !noalias !106
  %5978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5979 = extractvalue %dx.types.ResRet.i32 %5978, 0
  %5980 = lshr i32 %5979, 16
  %5981 = and i32 %5980, 31
  %5982 = shl i32 %5904, %5981
  %5983 = add i32 %5982, %5903
  %5984 = shl i32 %5983, 2
  %5985 = add i32 %5984, %5977
  %5986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5985, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.i32 %5986, 0
  %5988 = icmp eq i32 %5987, 0
  br i1 %5988, label %6006, label %5989

; <label>:5989                                    ; preds = %5961
  %5990 = icmp slt i32 %5987, 0
  %5991 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %5962
  %5992 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %5962
  %5993 = bitcast float* %5991 to i32*
  %5994 = bitcast float* %5992 to i32*
  br i1 %5990, label %5995, label %6002

; <label>:5995                                    ; preds = %5989
  %5996 = and i32 %5987, 1073741823
  %5997 = add i32 %5977, 20
  %5998 = add i32 %5997, %5996
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5998, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.i32 %5999, 1
  br label %6002

; <label>:6002                                    ; preds = %5995, %5989
  %6003 = phi i32 [ %6000, %5995 ], [ %5911, %5989 ]
  %6004 = phi i32 [ %6001, %5995 ], [ %5912, %5989 ]
  store i32 %6003, i32* %5993, align 4
  store i32 %6004, i32* %5994, align 4
  %6005 = add i32 %5962, 1
  br label %6006

; <label>:6006                                    ; preds = %6002, %5961
  %6007 = phi i32 [ %5962, %5961 ], [ %6005, %6002 ]
  %6008 = add nuw i32 %5963, 1
  %6009 = icmp eq i32 %6008, %5958
  br i1 %6009, label %6010, label %5961

; <label>:6010                                    ; preds = %6006
  br label %6011

; <label>:6011                                    ; preds = %6010, %5955
  %6012 = phi i32 [ %5956, %5955 ], [ %6007, %6010 ]
  %6013 = icmp eq i32 %6012, 1
  %6014 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6015 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6013, label %6016, label %6019

; <label>:6016                                    ; preds = %6011
  %6017 = load float, float* %6014, align 4
  %6018 = load float, float* %6015, align 4
  br label %6046

; <label>:6019                                    ; preds = %6011
  %6020 = load float, float* %6014, align 4
  %6021 = load float, float* %6015, align 4
  %6022 = fdiv fast float 1.000000e+00, %6021
  %6023 = fsub fast float %6020, %6022
  %6024 = icmp ugt i32 %6012, 1
  br i1 %6024, label %6025, label %6041

; <label>:6025                                    ; preds = %6019
  br label %6026

; <label>:6026                                    ; preds = %6026, %6025
  %6027 = phi float [ %6036, %6026 ], [ %6023, %6025 ]
  %6028 = phi float [ %6037, %6026 ], [ %6020, %6025 ]
  %6029 = phi i32 [ %6038, %6026 ], [ 1, %6025 ]
  %6030 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6029
  %6031 = load float, float* %6030, align 4
  %6032 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6029
  %6033 = load float, float* %6032, align 4
  %6034 = fdiv fast float 1.000000e+00, %6033
  %6035 = fsub fast float %6031, %6034
  %6036 = call float @dx.op.binary.f32(i32 36, float %6027, float %6035)  ; FMin(a,b)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6028, float %6031)  ; FMax(a,b)
  %6038 = add nuw i32 %6029, 1
  %6039 = icmp eq i32 %6038, %6012
  br i1 %6039, label %6040, label %6026

; <label>:6040                                    ; preds = %6026
  br label %6041

; <label>:6041                                    ; preds = %6040, %6019
  %6042 = phi float [ %6023, %6019 ], [ %6036, %6040 ]
  %6043 = phi float [ %6020, %6019 ], [ %6037, %6040 ]
  %6044 = fsub fast float %6043, %6042
  %6045 = fdiv fast float 1.000000e+00, %6044
  br label %6046

; <label>:6046                                    ; preds = %6041, %6016
  %6047 = phi float [ %6017, %6016 ], [ %6043, %6041 ]
  %6048 = phi float [ %6018, %6016 ], [ %6045, %6041 ]
  %6049 = fadd fast float %5750, %6047
  %6050 = fmul fast float %6049, %6048
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6052 = fmul fast float %6051, 2.000000e+00
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = fmul fast float %5888, %5888
  %6055 = fsub fast float %5889, %6054
  %6056 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6055)  ; FMax(a,b)
  %6057 = fdiv fast float 1.000000e+00, %6056
  %6058 = fmul fast float %5889, %5888
  %6059 = fsub fast float %5890, %6058
  %6060 = fsub fast float %6053, %5888
  %6061 = fmul fast float %6053, %6053
  %6062 = fsub fast float %6061, %5889
  %6063 = fmul fast float %6057, %6059
  %6064 = fmul fast float %6063, %6060
  %6065 = fsub fast float %6062, %6064
  %6066 = fmul fast float %5889, %5889
  %6067 = fsub fast float %5891, %6066
  %6068 = fmul fast float %6059, %6059
  %6069 = fmul fast float %6068, %6057
  %6070 = fsub fast float %6067, %6069
  %6071 = fdiv fast float %6065, %6070
  %6072 = fmul fast float %6071, %6059
  %6073 = fsub fast float %6060, %6072
  %6074 = fmul fast float %6073, %6057
  %6075 = fmul fast float %6074, %5888
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = fmul fast float %6071, %5889
  %6078 = fsub fast float %6076, %6077
  %6079 = fmul fast float %6074, %6074
  %6080 = fmul fast float %6071, 4.000000e+00
  %6081 = fmul fast float %6080, %6078
  %6082 = fsub fast float %6079, %6081
  %6083 = call float @dx.op.unary.f32(i32 24, float %6082)  ; Sqrt(value)
  %6084 = fcmp fast oge float %6074, 0.000000e+00
  %6085 = fsub fast float -0.000000e+00, %6083
  %6086 = select i1 %6084, float %6085, float %6083
  %6087 = fsub fast float %6086, %6074
  %6088 = fdiv fast float %6087, %6071
  %6089 = fdiv fast float %6078, %6087
  %6090 = fmul fast float %6088, 5.000000e-01
  %6091 = fmul fast float %6089, 2.000000e+00
  %6092 = select i1 %6084, float %6090, float %6091
  %6093 = select i1 %6084, float %6091, float %6090
  %6094 = call float @dx.op.binary.f32(i32 35, float %6092, float %6093)  ; FMax(a,b)
  %6095 = call float @dx.op.binary.f32(i32 36, float %6092, float %6093)  ; FMin(a,b)
  %6096 = fcmp fast ogt float %6053, %6094
  %6097 = fsub fast float %6053, %6095
  %6098 = fsub fast float %6053, %6094
  %6099 = fsub fast float %6094, %6095
  %6100 = select i1 %6096, float %6098, float %6099
  %6101 = fmul float %6097, %6100
  %6102 = select i1 %6096, float %6095, float %6053
  %6103 = fcmp fast ogt float %6053, %6095
  %6104 = fmul fast float %6102, %6094
  %6105 = fadd fast float %6102, %6094
  %6106 = fmul fast float %6105, %5888
  %6107 = fadd fast float %6104, %5889
  %6108 = fsub fast float %6107, %6106
  %6109 = fdiv fast float %6108, %6101
  %6110 = select i1 %6103, float %6109, float 0.000000e+00
  %6111 = fsub fast float 1.000000e+00, %6110
  %6112 = select i1 %6096, float %6111, float %6110
  %6113 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6114 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %6115 = fmul fast float %6114, %6113
  %6116 = fsub fast float 1.000000e+00, %6115
  br label %6117

; <label>:6117                                    ; preds = %6046, %5758, %5723, %5719, %5683
  %6118 = phi float [ 1.000000e+00, %5683 ], [ %6116, %6046 ], [ 1.000000e+00, %5723 ], [ 1.000000e+00, %5758 ], [ 1.000000e+00, %5719 ]
  %6119 = fcmp fast ogt float %5715, 0.000000e+00
  br i1 %6119, label %6120, label %6128, !dx.controlflow.hints !115

; <label>:6120                                    ; preds = %6117
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6123 = fadd fast float %6122, %5596
  %6124 = call float @dx.op.binary.f32(i32 35, float %6123, float 0.000000e+00)  ; FMax(a,b)
  %6125 = fadd fast float %6124, 0x3F10000000000000
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5614, float %5615, float undef, float undef, i32 0, i32 0, i32 undef, float %6125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  br label %6128

; <label>:6128                                    ; preds = %6120, %6117
  %6129 = phi float [ %6127, %6120 ], [ 1.000000e+00, %6117 ]
  %6130 = fcmp fast ogt float %5713, 0.000000e+00
  br i1 %6130, label %6131, label %6139, !dx.controlflow.hints !116

; <label>:6131                                    ; preds = %6128
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6134 = fadd fast float %6133, %5596
  %6135 = call float @dx.op.binary.f32(i32 35, float %6134, float 0.000000e+00)  ; FMax(a,b)
  %6136 = fadd fast float %6135, 0x3F10000000000000
  %6137 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5606, float %5607, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  br label %6139

; <label>:6139                                    ; preds = %6131, %6128
  %6140 = phi float [ %6138, %6131 ], [ 1.000000e+00, %6128 ]
  %6141 = fcmp fast ogt float %5712, 0.000000e+00
  br i1 %6141, label %6142, label %6154, !dx.controlflow.hints !117

; <label>:6142                                    ; preds = %6139
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = fadd fast float %6144, %5596
  %6146 = call float @dx.op.binary.f32(i32 35, float %6145, float 0.000000e+00)  ; FMax(a,b)
  %6147 = fadd fast float %6146, 0x3F10000000000000
  br i1 %5599, label %6148, label %6151, !dx.controlflow.hints !118

; <label>:6148                                    ; preds = %6142
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5588, float %5592, float undef, float undef, i32 0, i32 0, i32 undef, float %6147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  br label %6154

; <label>:6151                                    ; preds = %6142
  %6152 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5588, float %5592, float undef, float undef, i32 0, i32 0, i32 undef, float %6147)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  br label %6154

; <label>:6154                                    ; preds = %6151, %6148, %6139
  %6155 = phi float [ %6150, %6148 ], [ %6153, %6151 ], [ 1.000000e+00, %6139 ]
  %6156 = fsub fast float %6129, %6118
  %6157 = fmul fast float %6156, %5685
  %6158 = fadd fast float %6157, %6118
  %6159 = fsub fast float %6140, %6158
  %6160 = fmul fast float %6159, %5684
  %6161 = fadd fast float %6160, %6158
  %6162 = fsub fast float %6155, %6161
  %6163 = fmul fast float %6162, %5712
  %6164 = fadd fast float %6163, %6161
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6167 = fcmp fast ogt float %6166, 0.000000e+00
  br i1 %6167, label %6168, label %6208, !dx.controlflow.hints !119

; <label>:6168                                    ; preds = %6154
  %6169 = fcmp fast ugt float %6166, 0.000000e+00
  br i1 %6169, label %6170, label %6205

; <label>:6170                                    ; preds = %6168
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = fadd fast float %6184, %5565
  %6188 = fadd fast float %6185, %5566
  %6189 = fadd fast float %6186, %5567
  %6190 = fmul fast float %6187, %6172
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6173, float %6188, float %6190)  ; FMad(a,b,c)
  %6192 = call float @dx.op.tertiary.f32(i32 46, float %6174, float %6189, float %6191)  ; FMad(a,b,c)
  %6193 = fadd fast float %6192, %6175
  %6194 = fmul fast float %6187, %6177
  %6195 = call float @dx.op.tertiary.f32(i32 46, float %6178, float %6188, float %6194)  ; FMad(a,b,c)
  %6196 = call float @dx.op.tertiary.f32(i32 46, float %6179, float %6189, float %6195)  ; FMad(a,b,c)
  %6197 = fadd fast float %6196, %6180
  %6198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6193, float %6197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = fmul fast float %6199, %6182
  %6201 = fadd fast float %6200, %6181
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = fmul fast float %6202, %6166
  %6204 = fsub fast float 1.000000e+00, %6203
  br label %6205

; <label>:6205                                    ; preds = %6170, %6168
  %6206 = phi float [ %6204, %6170 ], [ 1.000000e+00, %6168 ]
  %6207 = fmul fast float %6206, %6164
  br label %6208

; <label>:6208                                    ; preds = %6205, %6154, %5545
  %6209 = phi float [ 1.000000e+00, %5545 ], [ %6207, %6205 ], [ %6164, %6154 ]
  %6210 = call float @dx.op.binary.f32(i32 36, float %6209, float %6209)  ; FMin(a,b)
  %6211 = call float @dx.op.binary.f32(i32 36, float %6209, float %6210)  ; FMin(a,b)
  %6212 = fcmp fast ogt float %6211, 0.000000e+00
  br i1 %6212, label %6213, label %6373, !dx.controlflow.hints !120

; <label>:6213                                    ; preds = %6208
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.CBufRet.f32 %6214, 1
  %6217 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6218 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6223 = extractvalue %dx.types.CBufRet.f32 %6219, 3
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = fmul fast float %6215, %5565
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %6216, float %6229)  ; FMad(a,b,c)
  %6231 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %6217, float %6230)  ; FMad(a,b,c)
  %6232 = fadd fast float %6231, %6218
  %6233 = fmul fast float %6220, %5565
  %6234 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %6221, float %6233)  ; FMad(a,b,c)
  %6235 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %6222, float %6234)  ; FMad(a,b,c)
  %6236 = fadd fast float %6235, %6223
  %6237 = fmul fast float %6225, %5565
  %6238 = call float @dx.op.tertiary.f32(i32 46, float %5566, float %6226, float %6237)  ; FMad(a,b,c)
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %5567, float %6227, float %6238)  ; FMad(a,b,c)
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.CBufRet.f32 %6240, 3
  %6244 = fmul fast float %6243, %6232
  %6245 = fmul fast float %6243, %6236
  %6246 = fadd fast float %6244, %6241
  %6247 = fadd fast float %6245, %6242
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = fsub fast float %6246, %6249
  %6252 = fsub fast float %6247, %6250
  %6253 = fcmp fast olt float %6251, 0.000000e+00
  %6254 = fcmp fast olt float %6252, 0.000000e+00
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.CBufRet.f32 %6255, 3
  %6260 = select i1 %6253, float %6256, float %6258
  %6261 = select i1 %6254, float %6257, float %6259
  %6262 = fmul fast float %6260, %6251
  %6263 = fmul fast float %6261, %6252
  %6264 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6265 = call float @dx.op.unary.f32(i32 6, float %6263)  ; FAbs(value)
  %6266 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %6267 = call float @dx.op.binary.f32(i32 35, float %6264, float %6265)  ; FMax(a,b)
  %6268 = fsub fast float %6266, %6267
  %6269 = call float @dx.op.unary.f32(i32 7, float %6268)  ; Saturate(value)
  %6270 = fcmp fast ogt float %6269, 0.000000e+00
  br i1 %6270, label %6271, label %6312, !dx.controlflow.hints !121

; <label>:6271                                    ; preds = %6213
  %6272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6246, float %6247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  br i1 %6274, label %6275, label %6307

; <label>:6275                                    ; preds = %6271
  %6276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6246, float %6247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.ResRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.ResRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.ResRet.f32 %6276, 3
  %6281 = fsub fast float 1.000000e+00, %6228
  %6282 = fsub fast float %6281, %6239
  %6283 = fmul fast float %6282, 0x400921FB60000000
  %6284 = fadd fast float %6283, 0x3FF921FB60000000
  %6285 = call float @dx.op.unary.f32(i32 13, float %6284)  ; Sin(value)
  %6286 = fadd fast float %6285, -1.000000e+00
  %6287 = fmul fast float %6286, 0x3FD45F3060000000
  %6288 = fmul fast float %6282, 0x401921FB60000000
  %6289 = fadd fast float %6288, 0x400921FB60000000
  %6290 = call float @dx.op.unary.f32(i32 13, float %6289)  ; Sin(value)
  %6291 = fadd fast float %6290, 0x3E7777A5C0000000
  %6292 = fmul fast float %6291, 0x3FC45F3060000000
  %6293 = fmul fast float %6282, 0x4022D97C80000000
  %6294 = fadd fast float %6293, 0x4012D97C80000000
  %6295 = call float @dx.op.unary.f32(i32 13, float %6294)  ; Sin(value)
  %6296 = fadd fast float %6295, 1.000000e+00
  %6297 = fmul fast float %6296, 0x3FBB2995E0000000
  %6298 = fmul fast float %6282, 0x402921FB60000000
  %6299 = fadd fast float %6298, 0x401921FB60000000
  %6300 = call float @dx.op.unary.f32(i32 13, float %6299)  ; Sin(value)
  %6301 = fadd fast float %6300, 0xBE8777A5C0000000
  %6302 = fmul fast float %6301, 0x3FB45F3060000000
  %6303 = call float @dx.op.dot4.f32(i32 56, float %6277, float %6278, float %6279, float %6280, float %6287, float %6292, float %6297, float %6302)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6304 = fmul fast float %6303, 0xBFF7154760000000
  %6305 = call float @dx.op.unary.f32(i32 21, float %6304)  ; Exp(value)
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  br label %6307

; <label>:6307                                    ; preds = %6275, %6271
  %6308 = phi float [ %6306, %6275 ], [ 1.000000e+00, %6271 ]
  %6309 = fadd fast float %6308, -1.000000e+00
  %6310 = fmul fast float %6309, %6269
  %6311 = fadd fast float %6310, 1.000000e+00
  br label %6312

; <label>:6312                                    ; preds = %6307, %6213
  %6313 = phi float [ %6311, %6307 ], [ 1.000000e+00, %6213 ]
  %6314 = fmul fast float %6313, %6209
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6319 = fadd fast float %6316, %195
  %6320 = fadd fast float %6317, %196
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6323 = fsub fast float -0.000000e+00, %6319
  %6324 = fsub fast float -0.000000e+00, %6320
  %6325 = fsub fast float %5321, %6318
  %6326 = fadd fast float %6325, %6322
  %6327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6323, float %6324, float %6326)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5546, float %5547, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %6329 = fdiv fast float 1.000000e+00, %6328
  %6330 = fmul fast float %6329, %6327
  %6331 = fmul fast float %5546, %6330
  %6332 = fmul fast float %5547, %6330
  %6333 = fadd fast float %6331, %6319
  %6334 = fadd fast float %6332, %6320
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = fsub fast float %6333, %6336
  %6339 = fsub fast float %6334, %6337
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 3
  %6343 = fmul fast float %6338, %6341
  %6344 = fmul fast float %6339, %6342
  %6345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.i32 %6345, 3
  %6347 = icmp eq i32 %6346, 0
  br i1 %6347, label %6353, label %6348

; <label>:6348                                    ; preds = %6312
  %6349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6343, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6350 = extractvalue %dx.types.ResRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.ResRet.f32 %6349, 1
  %6352 = extractvalue %dx.types.ResRet.f32 %6349, 2
  br label %6358

; <label>:6353                                    ; preds = %6312
  %6354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6343, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.ResRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.ResRet.f32 %6354, 2
  br label %6358

; <label>:6358                                    ; preds = %6353, %6348
  %6359 = phi float [ %6350, %6348 ], [ %6355, %6353 ]
  %6360 = phi float [ %6351, %6348 ], [ %6356, %6353 ]
  %6361 = phi float [ %6352, %6348 ], [ %6357, %6353 ]
  %6362 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6363 = fmul fast float %6362, %6359
  %6364 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6365 = fsub fast float %6330, %6364
  %6366 = fsub fast float %6365, %6363
  %6367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6366)  ; FMax(a,b)
  %6368 = fmul fast float %6367, %6360
  %6369 = call float @dx.op.binary.f32(i32 36, float %6361, float %6368)  ; FMin(a,b)
  %6370 = fmul fast float %6369, 0xBFF7154760000000
  %6371 = call float @dx.op.unary.f32(i32 21, float %6370)  ; Exp(value)
  %6372 = fmul fast float %6314, %6371
  br label %6373

; <label>:6373                                    ; preds = %6358, %6208
  %6374 = phi float [ %6372, %6358 ], [ %6209, %6208 ]
  %6375 = call float @dx.op.binary.f32(i32 36, float %6374, float %6374)  ; FMin(a,b)
  %6376 = call float @dx.op.binary.f32(i32 36, float %6374, float %6375)  ; FMin(a,b)
  %6377 = fcmp fast ogt float %6376, 0.000000e+00
  br i1 %6377, label %6378, label %6629, !dx.controlflow.hints !122

; <label>:6378                                    ; preds = %6373
  %6379 = fmul fast float %6374, %5557
  %6380 = fmul fast float %6374, %5558
  %6381 = fmul fast float %6374, %5559
  %6382 = fsub fast float %197, %4498
  %6383 = fcmp fast ogt float %6382, 0.000000e+00
  %6384 = fmul fast float %5546, 5.120000e+02
  %6385 = fmul fast float %5547, 5.120000e+02
  %6386 = fmul fast float %5548, 5.120000e+02
  %6387 = fadd fast float %6386, %197
  %6388 = fsub fast float %4498, %6387
  %6389 = fmul fast float %6388, 2.000000e+00
  %6390 = fadd fast float %6389, %6387
  %6391 = select i1 %6383, float %6390, float %6387
  %6392 = fsub fast float %6391, %197
  %6393 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6392, float %6384, float %6385, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = call float @dx.op.unary.f32(i32 25, float %6393)  ; Rsqrt(value)
  %6395 = fmul fast float %6394, %6384
  %6396 = fmul fast float %6394, %6385
  %6397 = fmul fast float %6394, %6392
  %6398 = fsub fast float %4498, %197
  %6399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6398)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6395, float %6396, float %6397)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = fdiv fast float 1.000000e+00, %6400
  %6402 = fmul fast float %6401, %6399
  %6403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6382, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6404 = fcmp fast ogt float %6403, 0.000000e+00
  %6405 = fcmp fast olt float %6403, 0.000000e+00
  %6406 = zext i1 %6404 to i32
  %6407 = zext i1 %6405 to i32
  %6408 = sub nsw i32 %6406, %6407
  %6409 = sitofp i32 %6408 to float
  %6410 = fsub fast float %6391, %4498
  %6411 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6410, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6412 = fcmp fast ogt float %6411, 0.000000e+00
  %6413 = fcmp fast olt float %6411, 0.000000e+00
  %6414 = zext i1 %6412 to i32
  %6415 = zext i1 %6413 to i32
  %6416 = sub nsw i32 %6414, %6415
  %6417 = sitofp i32 %6416 to float
  %6418 = fcmp fast une float %6409, %6417
  br i1 %6418, label %6419, label %6429

; <label>:6419                                    ; preds = %6378
  %6420 = fmul fast float %6402, %6397
  %6421 = fmul fast float %6402, %6396
  %6422 = fmul fast float %6402, %6395
  %6423 = fmul fast float %6422, %6422
  %6424 = fmul fast float %6421, %6421
  %6425 = fadd fast float %6423, %6424
  %6426 = fmul fast float %6420, %6420
  %6427 = fadd fast float %6425, %6426
  %6428 = call float @dx.op.unary.f32(i32 24, float %6427)  ; Sqrt(value)
  br label %6439

; <label>:6429                                    ; preds = %6378
  %6430 = icmp slt i32 %6408, 0
  br i1 %6430, label %6431, label %6439

; <label>:6431                                    ; preds = %6429
  %6432 = fsub fast float %197, %6391
  %6433 = fmul fast float %6384, %6384
  %6434 = fmul fast float %6385, %6385
  %6435 = fadd fast float %6433, %6434
  %6436 = fmul fast float %6432, %6432
  %6437 = fadd fast float %6435, %6436
  %6438 = call float @dx.op.unary.f32(i32 24, float %6437)  ; Sqrt(value)
  br label %6439

; <label>:6439                                    ; preds = %6431, %6429, %6419
  %6440 = phi float [ %6428, %6419 ], [ %6438, %6431 ], [ 0.000000e+00, %6429 ]
  %6441 = fsub fast float -0.000000e+00, %6440
  %6442 = select i1 %6383, float -0.000000e+00, float %6441
  %6443 = fmul fast float %4499, 0x3FF7154760000000
  %6444 = fmul fast float %6443, %6442
  %6445 = fmul fast float %4500, 0x3FF7154760000000
  %6446 = fmul fast float %6445, %6442
  %6447 = fmul fast float %4501, 0x3FF7154760000000
  %6448 = fmul fast float %6447, %6442
  %6449 = call float @dx.op.unary.f32(i32 21, float %6444)  ; Exp(value)
  %6450 = call float @dx.op.unary.f32(i32 21, float %6446)  ; Exp(value)
  %6451 = call float @dx.op.unary.f32(i32 21, float %6448)  ; Exp(value)
  %6452 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  %6453 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6454 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6455 = fmul fast float %6379, %6452
  %6456 = fmul fast float %6380, %6453
  %6457 = fmul fast float %6381, %6454
  %6458 = fsub fast float %5546, %5324
  %6459 = fsub fast float %5547, %5325
  %6460 = fsub fast float %5548, %5326
  %6461 = call float @dx.op.dot3.f32(i32 55, float %6458, float %6459, float %6460, float %6458, float %6459, float %6460)  ; Dot3(ax,ay,az,bx,by,bz)
  %6462 = call float @dx.op.unary.f32(i32 25, float %6461)  ; Rsqrt(value)
  %6463 = fmul fast float %6462, %6458
  %6464 = fmul fast float %6462, %6459
  %6465 = fmul fast float %6462, %6460
  %6466 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5548, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6469 = fmul fast float %6468, %6468
  %6470 = fmul fast float %6469, %5345
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = fmul fast float %6471, %6468
  %6473 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6474 = fmul fast float %6473, %6473
  %6475 = call float @dx.op.unary.f32(i32 6, float %6466)  ; FAbs(value)
  %6476 = fsub fast float 1.000000e+00, %5287
  %6477 = call float @dx.op.binary.f32(i32 35, float %6476, float 0x3F847AE140000000)  ; FMax(a,b)
  %6478 = fmul fast float %6477, %6477
  %6479 = fmul fast float %6478, %6478
  %6480 = fsub fast float 1.000000e+00, %6479
  %6481 = fmul fast float %5332, %5332
  %6482 = fmul fast float %6481, %6480
  %6483 = fadd fast float %6482, %6479
  %6484 = bitcast float %6483 to i32
  %6485 = ashr i32 %6484, 1
  %6486 = add nsw i32 %6485, 532487669
  %6487 = bitcast i32 %6486 to float
  %6488 = fadd fast float %6487, %5332
  %6489 = fmul fast float %6479, %6474
  %6490 = fsub fast float 1.000000e+00, %6474
  %6491 = fadd fast float %6490, %6489
  %6492 = fmul fast float %6475, %6475
  %6493 = fmul fast float %6492, %6480
  %6494 = fadd fast float %6493, %6479
  %6495 = bitcast float %6494 to i32
  %6496 = ashr i32 %6495, 1
  %6497 = add nsw i32 %6496, 532487669
  %6498 = bitcast i32 %6497 to float
  %6499 = fadd fast float %6498, %6475
  %6500 = fmul fast float %6491, %6491
  %6501 = fmul fast float %6500, %6488
  %6502 = fmul fast float %6501, %6499
  %6503 = fdiv fast float 0x3FF0A00000000000, %6502
  %6504 = fmul fast float %6503, %6479
  %6505 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6506 = fsub fast float 1.000000e+00, %6505
  %6507 = bitcast float %6506 to i32
  %6508 = sitofp i32 %6507 to float
  %6509 = fmul fast float %6508, 5.000000e+00
  %6510 = fadd fast float %6509, 0xC1EFBF8940000000
  %6511 = fptosi float %6510 to i32
  %6512 = bitcast i32 %6511 to float
  %6513 = fsub fast float 1.000000e+00, %5284
  %6514 = fsub fast float 1.000000e+00, %5285
  %6515 = fsub fast float 1.000000e+00, %5330
  %6516 = fmul fast float %6512, %6513
  %6517 = fmul fast float %6512, %6514
  %6518 = fmul fast float %6512, %6515
  %6519 = fadd fast float %6516, %5284
  %6520 = fadd fast float %6517, %5285
  %6521 = fadd fast float %6518, %5330
  br i1 %5457, label %6522, label %6545

; <label>:6522                                    ; preds = %6439
  %6523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4096, float %6505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6524 = extractvalue %dx.types.ResRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.ResRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.ResRet.f32 %6523, 2
  %6527 = fadd fast float %6524, -5.000000e-01
  %6528 = fadd fast float %6525, -5.000000e-01
  %6529 = fadd fast float %6526, -5.000000e-01
  %6530 = fmul fast float %5284, 4.000000e+00
  %6531 = fmul fast float %6530, %6513
  %6532 = fmul fast float %6531, %6527
  %6533 = fmul fast float %5285, 4.000000e+00
  %6534 = fmul fast float %6533, %6514
  %6535 = fmul fast float %6534, %6528
  %6536 = fmul fast float %5330, 4.000000e+00
  %6537 = fmul fast float %6536, %6515
  %6538 = fmul fast float %6537, %6529
  %6539 = fadd fast float %6532, %6519
  %6540 = fadd fast float %6535, %6520
  %6541 = fadd fast float %6538, %6521
  %6542 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  %6543 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6544 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  br label %6545

; <label>:6545                                    ; preds = %6522, %6439
  %6546 = phi float [ %6542, %6522 ], [ %6519, %6439 ]
  %6547 = phi float [ %6543, %6522 ], [ %6520, %6439 ]
  %6548 = phi float [ %6544, %6522 ], [ %6521, %6439 ]
  %6549 = fmul fast float %6466, 9.843750e-01
  %6550 = fadd fast float %6549, 7.812500e-03
  %6551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6550, float %5447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6552 = extractvalue %dx.types.ResRet.f32 %6551, 2
  %6553 = extractvalue %dx.types.ResRet.f32 %6551, 3
  %6554 = fmul fast float %6552, %5284
  %6555 = fmul fast float %6552, %5285
  %6556 = fmul fast float %6552, %5330
  %6557 = fadd fast float %6554, %6553
  %6558 = fadd fast float %6555, %6553
  %6559 = fadd fast float %6556, %6553
  br i1 %5457, label %6560, label %6583

; <label>:6560                                    ; preds = %6545
  %6561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4096, float %6466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6562 = extractvalue %dx.types.ResRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.ResRet.f32 %6561, 1
  %6564 = extractvalue %dx.types.ResRet.f32 %6561, 2
  %6565 = fadd fast float %6562, -5.000000e-01
  %6566 = fadd fast float %6563, -5.000000e-01
  %6567 = fadd fast float %6564, -5.000000e-01
  %6568 = fmul fast float %5284, 4.000000e+00
  %6569 = fmul fast float %6568, %6513
  %6570 = fmul fast float %6569, %6565
  %6571 = fmul fast float %5285, 4.000000e+00
  %6572 = fmul fast float %6571, %6514
  %6573 = fmul fast float %6572, %6566
  %6574 = fmul fast float %5330, 4.000000e+00
  %6575 = fmul fast float %6574, %6515
  %6576 = fmul fast float %6575, %6567
  %6577 = fadd fast float %6570, %6557
  %6578 = fadd fast float %6573, %6558
  %6579 = fadd fast float %6576, %6559
  %6580 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6581 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6582 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  br label %6583

; <label>:6583                                    ; preds = %6560, %6545
  %6584 = phi float [ %6580, %6560 ], [ %6557, %6545 ]
  %6585 = phi float [ %6581, %6560 ], [ %6558, %6545 ]
  %6586 = phi float [ %6582, %6560 ], [ %6559, %6545 ]
  %6587 = call float @dx.op.binary.f32(i32 35, float %6585, float %6586)  ; FMax(a,b)
  %6588 = call float @dx.op.binary.f32(i32 35, float %6584, float %6587)  ; FMax(a,b)
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6546, %6504
  %6591 = fmul fast float %6547, %6504
  %6592 = fmul fast float %6548, %6504
  %6593 = fsub fast float 1.000000e+00, %6467
  %6594 = bitcast float %6593 to i32
  %6595 = sitofp i32 %6594 to float
  %6596 = fmul fast float %6595, 5.000000e+00
  %6597 = fadd fast float %6596, 0xC1EFBF8940000000
  %6598 = fptosi float %6597 to i32
  %6599 = bitcast i32 %6598 to float
  %6600 = fmul fast float %6599, %4097
  %6601 = fmul fast float %6589, %6600
  %6602 = fmul fast float %6601, %5507
  %6603 = fmul fast float %6601, %5508
  %6604 = fmul fast float %6601, %5509
  %6605 = fadd fast float %6602, %6590
  %6606 = fadd fast float %6603, %6591
  %6607 = fadd fast float %6604, %6592
  %6608 = fmul fast float %6472, %6455
  %6609 = fmul fast float %6608, %6589
  %6610 = fmul fast float %6472, %6456
  %6611 = fmul fast float %6610, %6589
  %6612 = fmul fast float %6472, %6457
  %6613 = fmul fast float %6612, %6589
  %6614 = fmul fast float %6608, %6605
  %6615 = fmul fast float %6610, %6606
  %6616 = fmul fast float %6612, %6607
  %6617 = fadd fast float %6609, %5491
  %6618 = fmul fast float %6617, %4093
  %6619 = fadd fast float %6611, %5492
  %6620 = fmul fast float %6619, %4093
  %6621 = fadd fast float %6613, %5493
  %6622 = fmul fast float %6621, %4093
  %6623 = fadd fast float %6614, %5534
  %6624 = fmul fast float %6623, %4093
  %6625 = fadd fast float %6615, %5537
  %6626 = fmul fast float %6625, %4093
  %6627 = fadd fast float %6616, %5540
  %6628 = fmul fast float %6627, %4093
  br label %6629

; <label>:6629                                    ; preds = %6583, %6373, %5484
  %6630 = phi float [ %5535, %5484 ], [ %5535, %6373 ], [ %6624, %6583 ]
  %6631 = phi float [ %5538, %5484 ], [ %5538, %6373 ], [ %6626, %6583 ]
  %6632 = phi float [ %5541, %5484 ], [ %5541, %6373 ], [ %6628, %6583 ]
  %6633 = phi float [ %5530, %5484 ], [ %5530, %6373 ], [ %6618, %6583 ]
  %6634 = phi float [ %5531, %5484 ], [ %5531, %6373 ], [ %6620, %6583 ]
  %6635 = phi float [ %5532, %5484 ], [ %5532, %6373 ], [ %6622, %6583 ]
  %6636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.i32 %6636, 0
  %6638 = icmp eq i32 %6637, 0
  br i1 %6638, label %7259, label %6639

; <label>:6639                                    ; preds = %6629
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 3
  %6643 = fmul fast float %6641, %108
  %6644 = fmul fast float %6642, %109
  %6645 = fptoui float %6643 to i32
  %6646 = fptoui float %6644 to i32
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6651 = fadd fast float %99, -4.000000e+00
  %6652 = call float @dx.op.binary.f32(i32 35, float %6651, float 0.000000e+00)  ; FMax(a,b)
  %6653 = fadd fast float %6652, %6648
  %6654 = fmul fast float %6653, %6649
  %6655 = call float @dx.op.unary.f32(i32 23, float %6654)  ; Log(value)
  %6656 = fmul fast float %6655, %6650
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6659 = fmul fast float %6656, %6658
  %6660 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.i32 %6661, 1
  %6663 = add i32 %6662, -1
  %6664 = uitofp i32 %6662 to float
  %6665 = fmul fast float %6664, %6660
  %6666 = fptoui float %6665 to i32
  %6667 = call i32 @dx.op.binary.i32(i32 40, i32 %6666, i32 %6663)  ; UMin(a,b)
  %6668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.i32 %6668, 2
  %6670 = extractvalue %dx.types.CBufRet.i32 %6668, 3
  %6671 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6646, i32 %6669, i32 %6645)  ; UMad(a,b,c)
  %6672 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6667, i32 %6670, i32 %6671)  ; UMad(a,b,c)
  %6673 = add nsw i32 %6637, -1
  %6674 = call i32 @dx.op.binary.i32(i32 37, i32 %6673, i32 0)  ; IMax(a,b)
  %6675 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6676 = fptoui float %6675 to i32
  %6677 = lshr i32 %6676, 5
  %6678 = call i32 @dx.op.binary.i32(i32 40, i32 %6677, i32 8191)  ; UMin(a,b)
  %6679 = shl i32 %6678, 2
  %6680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6679, i32 undef)  ; BufferLoad(srv,index,wot)
  %6681 = extractvalue %dx.types.ResRet.i32 %6680, 0
  %6682 = lshr i32 %6681, 16
  %6683 = and i32 %6681, 65535
  %6684 = lshr i32 %6681, 21
  %6685 = lshr i32 %6683, 5
  %6686 = call i32 @dx.op.binary.i32(i32 40, i32 %6685, i32 %6674)  ; UMin(a,b)
  %6687 = icmp ugt i32 %6684, %6686
  br i1 %6687, label %7259, label %6688

; <label>:6688                                    ; preds = %6639
  br label %6689

; <label>:6689                                    ; preds = %7249, %6688
  %6690 = phi i32 [ %7256, %7249 ], [ %6684, %6688 ]
  %6691 = phi float [ %7250, %7249 ], [ %6630, %6688 ]
  %6692 = phi float [ %7251, %7249 ], [ %6631, %6688 ]
  %6693 = phi float [ %7252, %7249 ], [ %6632, %6688 ]
  %6694 = phi float [ %7253, %7249 ], [ %6633, %6688 ]
  %6695 = phi float [ %7254, %7249 ], [ %6634, %6688 ]
  %6696 = phi float [ %7255, %7249 ], [ %6635, %6688 ]
  %6697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.i32 %6697, 0
  %6699 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6672, i32 %6698, i32 %6690)  ; UMad(a,b,c)
  %6700 = shl i32 %6699, 2
  %6701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6700, i32 undef)  ; BufferLoad(srv,index,wot)
  %6702 = extractvalue %dx.types.ResRet.i32 %6701, 0
  %6703 = shl i32 %6690, 5
  %6704 = sub nsw i32 %6682, %6703
  %6705 = call i32 @dx.op.binary.i32(i32 37, i32 %6704, i32 0)  ; IMax(a,b)
  %6706 = call i32 @dx.op.binary.i32(i32 38, i32 %6705, i32 31)  ; IMin(a,b)
  %6707 = sub nsw i32 1, %6682
  %6708 = add nsw i32 %6707, %6683
  %6709 = call i32 @dx.op.binary.i32(i32 37, i32 %6708, i32 0)  ; IMax(a,b)
  %6710 = call i32 @dx.op.binary.i32(i32 38, i32 %6709, i32 32)  ; IMin(a,b)
  %6711 = and i32 %6710, 31
  %6712 = shl i32 -1, %6711
  %6713 = xor i32 %6712, -1
  %6714 = and i32 %6706, 31
  %6715 = shl i32 %6713, %6714
  %6716 = icmp eq i32 %6710, 32
  %6717 = select i1 %6716, i32 -1, i32 %6715
  %6718 = and i32 %6717, %6702
  %6719 = icmp eq i32 %6718, 0
  br i1 %6719, label %7249, label %6720

; <label>:6720                                    ; preds = %6689
  br label %6721

; <label>:6721                                    ; preds = %6855, %6720
  %6722 = phi i32 [ %6733, %6855 ], [ %6718, %6720 ]
  %6723 = phi float [ %6856, %6855 ], [ %6691, %6720 ]
  %6724 = phi float [ %6857, %6855 ], [ %6692, %6720 ]
  %6725 = phi float [ %6858, %6855 ], [ %6693, %6720 ]
  %6726 = phi float [ %6859, %6855 ], [ %6694, %6720 ]
  %6727 = phi float [ %6860, %6855 ], [ %6695, %6720 ]
  %6728 = phi float [ %6861, %6855 ], [ %6696, %6720 ]
  %6729 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6722)  ; FirstbitLo(value)
  %6730 = add i32 %6729, %6703
  %6731 = and i32 %6729, 31
  %6732 = shl i32 1, %6731
  %6733 = xor i32 %6732, %6722
  %6734 = mul i32 %6730, 112
  %6735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6734, i32 undef)  ; BufferLoad(srv,index,wot)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.ResRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.ResRet.f32 %6735, 2
  %6739 = or i32 %6734, 12
  %6740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6739, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 0
  %6742 = add i32 %6734, 16
  %6743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6742, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = add i32 %6734, 28
  %6748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6747, i32 undef)  ; BufferLoad(srv,index,wot)
  %6749 = extractvalue %dx.types.ResRet.i32 %6748, 0
  %6750 = add i32 %6734, 44
  %6751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6750, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = add i32 %6734, 48
  %6754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6753, i32 undef)  ; BufferLoad(srv,index,wot)
  %6755 = extractvalue %dx.types.ResRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.ResRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.ResRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.ResRet.f32 %6754, 3
  %6759 = add i32 %6734, 64
  %6760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6759, i32 undef)  ; BufferLoad(srv,index,wot)
  %6761 = extractvalue %dx.types.ResRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.ResRet.f32 %6760, 1
  %6763 = extractvalue %dx.types.ResRet.f32 %6760, 2
  %6764 = extractvalue %dx.types.ResRet.f32 %6760, 3
  %6765 = add i32 %6734, 80
  %6766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6765, i32 undef)  ; BufferLoad(srv,index,wot)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 1
  %6768 = extractvalue %dx.types.ResRet.f32 %6766, 2
  %6769 = add i32 %6734, 92
  %6770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6769, i32 undef)  ; BufferLoad(srv,index,wot)
  %6771 = extractvalue %dx.types.ResRet.i32 %6770, 0
  %6772 = call float @dx.op.dot3.f32(i32 55, float %6736, float %6737, float %6738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6773 = select i1 %267, float %6767, float %6736
  %6774 = select i1 %267, float %6772, float %6737
  %6775 = select i1 %267, float %6768, float %6738
  %6776 = and i32 %6771, 65535
  %6777 = uitofp i32 %6776 to float
  %6778 = lshr i32 %6771, 16
  %6779 = uitofp i32 %6778 to float
  %6780 = and i32 %6749, 65535
  %6781 = and i32 %6749, 50331648
  %6782 = icmp eq i32 %6781, 33554432
  %6783 = fsub fast float %6755, %195
  %6784 = fsub fast float %6756, %196
  %6785 = fsub fast float %6757, %197
  %6786 = call float @dx.op.dot3.f32(i32 55, float %6783, float %6784, float %6785, float %6783, float %6784, float %6785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = call float @dx.op.unary.f32(i32 24, float %6786)  ; Sqrt(value)
  %6788 = fdiv fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6788, %6783
  %6790 = fmul fast float %6788, %6784
  %6791 = fmul fast float %6788, %6785
  %6792 = fadd fast float %6787, %6741
  %6793 = fdiv fast float 1.000000e+00, %6792
  %6794 = fmul float %6752, %6793
  %6795 = fmul float %6794, %6794
  %6796 = call float @dx.op.unary.f32(i32 7, float %6795)  ; Saturate(value)
  br i1 %6782, label %6797, label %6818

; <label>:6797                                    ; preds = %6721
  %6798 = fmul fast float %6763, %6744
  %6799 = fmul fast float %6763, %6745
  %6800 = fmul fast float %6763, %6746
  %6801 = fadd fast float %6783, %6798
  %6802 = fadd fast float %6784, %6799
  %6803 = fadd fast float %6785, %6800
  %6804 = call float @dx.op.dot3.f32(i32 55, float %6801, float %6802, float %6803, float %6801, float %6802, float %6803)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = call float @dx.op.unary.f32(i32 25, float %6804)  ; Rsqrt(value)
  %6806 = fmul fast float %6805, %6801
  %6807 = fmul fast float %6805, %6802
  %6808 = fmul fast float %6805, %6803
  %6809 = fsub fast float %195, %6755
  %6810 = fsub fast float %196, %6756
  %6811 = fsub fast float %197, %6757
  %6812 = fsub fast float -0.000000e+00, %6809
  %6813 = fsub fast float -0.000000e+00, %6810
  %6814 = fsub fast float -0.000000e+00, %6811
  %6815 = call float @dx.op.dot3.f32(i32 55, float %6812, float %6813, float %6814, float %6744, float %6745, float %6746)  ; Dot3(ax,ay,az,bx,by,bz)
  %6816 = fcmp fast ogt float %6815, 0.000000e+00
  %6817 = uitofp i1 %6816 to float
  br label %6818

; <label>:6818                                    ; preds = %6797, %6721
  %6819 = phi float [ %6817, %6797 ], [ 1.000000e+00, %6721 ]
  %6820 = phi float [ %6806, %6797 ], [ %6789, %6721 ]
  %6821 = phi float [ %6807, %6797 ], [ %6790, %6721 ]
  %6822 = phi float [ %6808, %6797 ], [ %6791, %6721 ]
  %6823 = call float @dx.op.dot3.f32(i32 55, float %6744, float %6745, float %6746, float %6820, float %6821, float %6822)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fmul fast float %6823, %6823
  %6825 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6826 = fsub fast float 1.000000e+00, %6825
  %6827 = fmul fast float %6826, 5.000000e-01
  %6828 = fcmp fast ogt float %6823, 0.000000e+00
  %6829 = fsub fast float 1.000000e+00, %6827
  %6830 = select i1 %6828, float %6827, float %6829
  %6831 = fmul fast float %6830, %6779
  %6832 = fadd fast float %6831, %6777
  %6833 = fmul fast float %6832, 0x3EF0001000000000
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6833, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = fmul fast float %6823, %6761
  %6837 = fadd fast float %6836, %6762
  %6838 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6839 = select i1 %6782, float 1.000000e+00, float %6838
  %6840 = select i1 %6782, float %6838, float 1.000000e+00
  %6841 = fmul fast float %6787, %6758
  %6842 = fsub fast float 1.000000e+00, %6841
  %6843 = fmul fast float %6842, %6764
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = fmul fast float %6844, %6840
  %6846 = fmul fast float %6845, 2.000000e+00
  %6847 = fsub fast float 3.000000e+00, %6846
  %6848 = fmul fast float %6835, %6819
  %6849 = fmul fast float %6845, %6845
  %6850 = fmul fast float %6849, %6848
  %6851 = fmul fast float %6850, %6847
  %6852 = call float @dx.op.binary.f32(i32 36, float %6851, float %6851)  ; FMin(a,b)
  %6853 = call float @dx.op.binary.f32(i32 36, float %6851, float %6852)  ; FMin(a,b)
  %6854 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %6854, label %6863, label %6855, !dx.controlflow.hints !123

; <label>:6855                                    ; preds = %7205, %6963, %6818
  %6856 = phi float [ %6723, %6963 ], [ %6723, %6818 ], [ %7245, %7205 ]
  %6857 = phi float [ %6724, %6963 ], [ %6724, %6818 ], [ %7246, %7205 ]
  %6858 = phi float [ %6725, %6963 ], [ %6725, %6818 ], [ %7247, %7205 ]
  %6859 = phi float [ %6726, %6963 ], [ %6726, %6818 ], [ %7239, %7205 ]
  %6860 = phi float [ %6727, %6963 ], [ %6727, %6818 ], [ %7240, %7205 ]
  %6861 = phi float [ %6728, %6963 ], [ %6728, %6818 ], [ %7241, %7205 ]
  %6862 = icmp eq i32 %6722, %6732
  br i1 %6862, label %7248, label %6721

; <label>:6863                                    ; preds = %6818
  %6864 = icmp eq i32 %6780, 255
  br i1 %6864, label %6963, label %6865, !dx.controlflow.hints !124

; <label>:6865                                    ; preds = %6863
  %6866 = mul nuw nsw i32 %6780, 176
  %6867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6866, i32 undef)  ; BufferLoad(srv,index,wot)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = add nuw nsw i32 %6866, 16
  %6873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6872, i32 undef)  ; BufferLoad(srv,index,wot)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.ResRet.f32 %6873, 1
  %6876 = add nuw nsw i32 %6866, 32
  %6877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6876, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.ResRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.ResRet.f32 %6877, 2
  %6881 = add nuw nsw i32 %6866, 48
  %6882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6881, i32 undef)  ; BufferLoad(srv,index,wot)
  %6883 = extractvalue %dx.types.ResRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.ResRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.ResRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.ResRet.f32 %6882, 3
  %6887 = add nuw nsw i32 %6866, 64
  %6888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6887, i32 undef)  ; BufferLoad(srv,index,wot)
  %6889 = extractvalue %dx.types.ResRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.ResRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.ResRet.f32 %6888, 2
  %6892 = extractvalue %dx.types.ResRet.f32 %6888, 3
  %6893 = add nuw nsw i32 %6866, 80
  %6894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6893, i32 undef)  ; BufferLoad(srv,index,wot)
  %6895 = extractvalue %dx.types.ResRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.ResRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.ResRet.f32 %6894, 2
  %6898 = extractvalue %dx.types.ResRet.f32 %6894, 3
  %6899 = add nuw nsw i32 %6866, 96
  %6900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6899, i32 undef)  ; BufferLoad(srv,index,wot)
  %6901 = extractvalue %dx.types.ResRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.ResRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.ResRet.f32 %6900, 2
  %6904 = extractvalue %dx.types.ResRet.f32 %6900, 3
  %6905 = bitcast float %6875 to i32
  %6906 = fmul fast float %6880, %115
  %6907 = fmul fast float %6880, %116
  %6908 = fmul fast float %6880, %117
  %6909 = fadd fast float %6906, %195
  %6910 = fadd fast float %6907, %196
  %6911 = fadd fast float %6908, %197
  %6912 = fmul fast float %6909, %6883
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %6910, float %6889, float %6912)  ; FMad(a,b,c)
  %6914 = call float @dx.op.tertiary.f32(i32 46, float %6911, float %6895, float %6913)  ; FMad(a,b,c)
  %6915 = fadd fast float %6914, %6901
  %6916 = fmul fast float %6909, %6884
  %6917 = call float @dx.op.tertiary.f32(i32 46, float %6910, float %6890, float %6916)  ; FMad(a,b,c)
  %6918 = call float @dx.op.tertiary.f32(i32 46, float %6911, float %6896, float %6917)  ; FMad(a,b,c)
  %6919 = fadd fast float %6918, %6902
  %6920 = fmul fast float %6909, %6885
  %6921 = call float @dx.op.tertiary.f32(i32 46, float %6910, float %6891, float %6920)  ; FMad(a,b,c)
  %6922 = call float @dx.op.tertiary.f32(i32 46, float %6911, float %6897, float %6921)  ; FMad(a,b,c)
  %6923 = fadd fast float %6922, %6903
  %6924 = fmul fast float %6909, %6886
  %6925 = call float @dx.op.tertiary.f32(i32 46, float %6910, float %6892, float %6924)  ; FMad(a,b,c)
  %6926 = call float @dx.op.tertiary.f32(i32 46, float %6911, float %6898, float %6925)  ; FMad(a,b,c)
  %6927 = fadd fast float %6926, %6904
  %6928 = fdiv fast float %6915, %6927
  %6929 = fdiv fast float %6919, %6927
  %6930 = fdiv fast float %6923, %6927
  %6931 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6930)  ; FMax(a,b)
  %6932 = fmul fast float %278, 0x401921FB60000000
  %6933 = call float @dx.op.unary.f32(i32 13, float %6932)  ; Sin(value)
  %6934 = call float @dx.op.unary.f32(i32 12, float %6932)  ; Cos(value)
  %6935 = fsub fast float -0.000000e+00, %6933
  %6936 = fmul fast float %6870, 5.000000e-01
  %6937 = call float @dx.op.dot2.f32(i32 54, float %278, float %278, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6938 = call float @dx.op.unary.f32(i32 22, float %6937)  ; Frc(value)
  %6939 = fmul fast float %6938, 0x404A7DD040000000
  %6940 = call float @dx.op.unary.f32(i32 22, float %6939)  ; Frc(value)
  %6941 = fmul fast float %6940, %6879
  %6942 = fadd fast float %6941, %6936
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6942, float %6935, float 0.000000e+00)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6942, float %6934, float 0.000000e+00)  ; FMad(a,b,c)
  %6945 = fadd fast float %6943, %6928
  %6946 = fadd fast float %6944, %6929
  %6947 = fmul fast float %6945, %6874
  %6948 = fmul fast float %6946, %6874
  %6949 = call float @dx.op.binary.f32(i32 35, float %6947, float %6870)  ; FMax(a,b)
  %6950 = call float @dx.op.binary.f32(i32 35, float %6948, float %6870)  ; FMax(a,b)
  %6951 = call float @dx.op.binary.f32(i32 36, float %6949, float %6871)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6950, float %6871)  ; FMin(a,b)
  %6953 = fadd fast float %6951, %6868
  %6954 = fadd fast float %6952, %6869
  %6955 = uitofp i32 %6905 to float
  %6956 = fadd fast float %6931, %6878
  %6957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %6953, float %6954, float %6955, float undef, i32 0, i32 0, i32 undef, float %6956)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6958 = extractvalue %dx.types.ResRet.f32 %6957, 0
  %6959 = fadd fast float %6958, -1.000000e+00
  %6960 = fmul fast float %6959, %6839
  %6961 = fadd fast float %6960, 1.000000e+00
  %6962 = fmul fast float %6961, %6851
  br label %6963

; <label>:6963                                    ; preds = %6865, %6863
  %6964 = phi float [ %6962, %6865 ], [ %6851, %6863 ]
  %6965 = call float @dx.op.binary.f32(i32 36, float %6964, float %6964)  ; FMin(a,b)
  %6966 = call float @dx.op.binary.f32(i32 36, float %6964, float %6965)  ; FMin(a,b)
  %6967 = fcmp fast ogt float %6966, 0.000000e+00
  br i1 %6967, label %6968, label %6855, !dx.controlflow.hints !125

; <label>:6968                                    ; preds = %6963
  %6969 = fmul fast float %6964, %6773
  %6970 = fmul fast float %6964, %6774
  %6971 = fmul fast float %6964, %6775
  %6972 = fsub fast float %6757, %4498
  %6973 = fcmp fast ogt float %6972, 0.000000e+00
  %6974 = fsub fast float %197, %4498
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  %6976 = xor i1 %6975, %6973
  %6977 = fsub fast float %4498, %6757
  %6978 = fmul fast float %6977, 2.000000e+00
  %6979 = fadd fast float %6978, %6757
  %6980 = select i1 %6976, float %6757, float %6979
  %6981 = fsub fast float %6980, %197
  %6982 = call float @dx.op.dot3.f32(i32 55, float %6783, float %6784, float %6981, float %6783, float %6784, float %6981)  ; Dot3(ax,ay,az,bx,by,bz)
  %6983 = call float @dx.op.unary.f32(i32 25, float %6982)  ; Rsqrt(value)
  %6984 = fmul fast float %6983, %6783
  %6985 = fmul fast float %6983, %6784
  %6986 = fmul fast float %6983, %6981
  %6987 = fsub fast float %4498, %197
  %6988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6987)  ; Dot3(ax,ay,az,bx,by,bz)
  %6989 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6984, float %6985, float %6986)  ; Dot3(ax,ay,az,bx,by,bz)
  %6990 = fdiv fast float 1.000000e+00, %6989
  %6991 = fmul fast float %6990, %6988
  %6992 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6974, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6993 = fcmp fast ogt float %6992, 0.000000e+00
  %6994 = fcmp fast olt float %6992, 0.000000e+00
  %6995 = zext i1 %6993 to i32
  %6996 = zext i1 %6994 to i32
  %6997 = sub nsw i32 %6995, %6996
  %6998 = sitofp i32 %6997 to float
  %6999 = fsub fast float %6980, %4498
  %7000 = call float @dx.op.dot3.f32(i32 55, float %6783, float %6784, float %6999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = fcmp fast ogt float %7000, 0.000000e+00
  %7002 = fcmp fast olt float %7000, 0.000000e+00
  %7003 = zext i1 %7001 to i32
  %7004 = zext i1 %7002 to i32
  %7005 = sub nsw i32 %7003, %7004
  %7006 = sitofp i32 %7005 to float
  %7007 = fcmp fast une float %6998, %7006
  br i1 %7007, label %7008, label %7018

; <label>:7008                                    ; preds = %6968
  %7009 = fmul fast float %6991, %6986
  %7010 = fmul fast float %6991, %6985
  %7011 = fmul fast float %6991, %6984
  %7012 = fmul fast float %7011, %7011
  %7013 = fmul fast float %7010, %7010
  %7014 = fadd fast float %7012, %7013
  %7015 = fmul fast float %7009, %7009
  %7016 = fadd fast float %7014, %7015
  %7017 = call float @dx.op.unary.f32(i32 24, float %7016)  ; Sqrt(value)
  br label %7030

; <label>:7018                                    ; preds = %6968
  %7019 = icmp slt i32 %6997, 0
  br i1 %7019, label %7020, label %7030

; <label>:7020                                    ; preds = %7018
  %7021 = fsub fast float %195, %6755
  %7022 = fsub fast float %196, %6756
  %7023 = fsub fast float %197, %6980
  %7024 = fmul fast float %7021, %7021
  %7025 = fmul fast float %7022, %7022
  %7026 = fadd fast float %7024, %7025
  %7027 = fmul fast float %7023, %7023
  %7028 = fadd fast float %7026, %7027
  %7029 = call float @dx.op.unary.f32(i32 24, float %7028)  ; Sqrt(value)
  br label %7030

; <label>:7030                                    ; preds = %7020, %7018, %7008
  %7031 = phi float [ %7017, %7008 ], [ %7029, %7020 ], [ 0.000000e+00, %7018 ]
  %7032 = and i1 %6975, %6973
  %7033 = fsub fast float -0.000000e+00, %7031
  %7034 = select i1 %7032, float -0.000000e+00, float %7033
  %7035 = fmul fast float %4499, 0x3FF7154760000000
  %7036 = fmul fast float %7035, %7034
  %7037 = fmul fast float %4500, 0x3FF7154760000000
  %7038 = fmul fast float %7037, %7034
  %7039 = fmul fast float %4501, 0x3FF7154760000000
  %7040 = fmul fast float %7039, %7034
  %7041 = call float @dx.op.unary.f32(i32 21, float %7036)  ; Exp(value)
  %7042 = call float @dx.op.unary.f32(i32 21, float %7038)  ; Exp(value)
  %7043 = call float @dx.op.unary.f32(i32 21, float %7040)  ; Exp(value)
  %7044 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7045 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7046 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7047 = fmul fast float %6969, %7044
  %7048 = fmul fast float %6970, %7045
  %7049 = fmul fast float %6971, %7046
  %7050 = fsub fast float %6789, %5324
  %7051 = fsub fast float %6790, %5325
  %7052 = fsub fast float %6791, %5326
  %7053 = call float @dx.op.dot3.f32(i32 55, float %7050, float %7051, float %7052, float %7050, float %7051, float %7052)  ; Dot3(ax,ay,az,bx,by,bz)
  %7054 = call float @dx.op.unary.f32(i32 25, float %7053)  ; Rsqrt(value)
  %7055 = fmul fast float %7054, %7050
  %7056 = fmul fast float %7054, %7051
  %7057 = fmul fast float %7054, %7052
  %7058 = call float @dx.op.dot3.f32(i32 55, float %6789, float %6790, float %6791, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %7059 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float %7055, float %7056, float %7057)  ; Dot3(ax,ay,az,bx,by,bz)
  %7060 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7061 = fmul fast float %7060, %6796
  %7062 = fmul fast float %7060, %7060
  %7063 = fmul fast float %7062, %5345
  %7064 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7065 = fmul fast float %7061, %7064
  %7066 = bitcast float %6786 to i32
  %7067 = ashr i32 %7066, 1
  %7068 = sub nsw i32 1597463007, %7067
  %7069 = bitcast i32 %7068 to float
  %7070 = fmul fast float %7069, %6783
  %7071 = fmul fast float %7069, %6784
  %7072 = fmul fast float %7069, %6785
  %7073 = fsub fast float %7070, %5324
  %7074 = fsub fast float %7071, %5325
  %7075 = fsub fast float %7072, %5326
  %7076 = call float @dx.op.dot3.f32(i32 55, float %7073, float %7074, float %7075, float %7073, float %7074, float %7075)  ; Dot3(ax,ay,az,bx,by,bz)
  %7077 = call float @dx.op.unary.f32(i32 25, float %7076)  ; Rsqrt(value)
  %7078 = fmul fast float %7073, %7077
  %7079 = fmul fast float %7074, %7077
  %7080 = fmul fast float %7075, %7077
  %7081 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %7078, float %7079, float %7080)  ; Dot3(ax,ay,az,bx,by,bz)
  %7082 = fmul fast float %7081, %7081
  %7083 = call float @dx.op.unary.f32(i32 6, float %7058)  ; FAbs(value)
  %7084 = fsub fast float 1.000000e+00, %5287
  %7085 = call float @dx.op.binary.f32(i32 35, float %7084, float 0x3F847AE140000000)  ; FMax(a,b)
  %7086 = fmul fast float %7085, %7085
  %7087 = fmul fast float %7086, %7086
  %7088 = fsub fast float 1.000000e+00, %7087
  %7089 = fmul fast float %5332, %5332
  %7090 = fmul fast float %7089, %7088
  %7091 = fadd fast float %7090, %7087
  %7092 = bitcast float %7091 to i32
  %7093 = ashr i32 %7092, 1
  %7094 = add nsw i32 %7093, 532487669
  %7095 = bitcast i32 %7094 to float
  %7096 = fadd fast float %7095, %5332
  %7097 = fmul fast float %7087, %7082
  %7098 = fsub fast float 1.000000e+00, %7082
  %7099 = fadd fast float %7098, %7097
  %7100 = fmul fast float %7083, %7083
  %7101 = fmul fast float %7100, %7088
  %7102 = fadd fast float %7101, %7087
  %7103 = bitcast float %7102 to i32
  %7104 = ashr i32 %7103, 1
  %7105 = add nsw i32 %7104, 532487669
  %7106 = bitcast i32 %7105 to float
  %7107 = fadd fast float %7106, %7083
  %7108 = fmul fast float %7099, %7099
  %7109 = fmul fast float %7108, %7096
  %7110 = fmul fast float %7109, %7107
  %7111 = fdiv fast float 1.000000e+00, %7110
  %7112 = bitcast float %7087 to i32
  %7113 = sitofp i32 %7112 to float
  %7114 = fmul fast float %7113, 0x3FE7F73180000000
  %7115 = fadd fast float %7114, 0x41AFE27C40000000
  %7116 = fptosi float %7115 to i32
  %7117 = bitcast i32 %7116 to float
  %7118 = fmul fast float %6752, 0x3FD80E9D60000000
  %7119 = fmul fast float %7118, %7069
  %7120 = fadd fast float %7117, %7119
  %7121 = bitcast float %7120 to i32
  %7122 = sub nsw i32 2129859010, %7121
  %7123 = bitcast i32 %7122 to float
  %7124 = fmul fast float %7087, %7111
  %7125 = fmul fast float %7124, %7117
  %7126 = fmul fast float %7125, %7123
  %7127 = call float @dx.op.unary.f32(i32 6, float %7059)  ; FAbs(value)
  %7128 = fsub fast float 1.000000e+00, %7127
  %7129 = bitcast float %7128 to i32
  %7130 = sitofp i32 %7129 to float
  %7131 = fmul fast float %7130, 5.000000e+00
  %7132 = fadd fast float %7131, 0xC1EFBF8940000000
  %7133 = fptosi float %7132 to i32
  %7134 = bitcast i32 %7133 to float
  %7135 = fsub fast float 1.000000e+00, %5284
  %7136 = fsub fast float 1.000000e+00, %5285
  %7137 = fsub fast float 1.000000e+00, %5330
  %7138 = fmul fast float %7134, %7135
  %7139 = fmul fast float %7134, %7136
  %7140 = fmul fast float %7134, %7137
  %7141 = fadd fast float %7138, %5284
  %7142 = fadd fast float %7139, %5285
  %7143 = fadd fast float %7140, %5330
  br i1 %5457, label %7144, label %7167

; <label>:7144                                    ; preds = %7030
  %7145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4096, float %7127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7146 = extractvalue %dx.types.ResRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.ResRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.ResRet.f32 %7145, 2
  %7149 = fadd fast float %7146, -5.000000e-01
  %7150 = fadd fast float %7147, -5.000000e-01
  %7151 = fadd fast float %7148, -5.000000e-01
  %7152 = fmul fast float %5284, 4.000000e+00
  %7153 = fmul fast float %7152, %7135
  %7154 = fmul fast float %7153, %7149
  %7155 = fmul fast float %5285, 4.000000e+00
  %7156 = fmul fast float %7155, %7136
  %7157 = fmul fast float %7156, %7150
  %7158 = fmul fast float %5330, 4.000000e+00
  %7159 = fmul fast float %7158, %7137
  %7160 = fmul fast float %7159, %7151
  %7161 = fadd fast float %7154, %7141
  %7162 = fadd fast float %7157, %7142
  %7163 = fadd fast float %7160, %7143
  %7164 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7165 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  br label %7167

; <label>:7167                                    ; preds = %7144, %7030
  %7168 = phi float [ %7164, %7144 ], [ %7141, %7030 ]
  %7169 = phi float [ %7165, %7144 ], [ %7142, %7030 ]
  %7170 = phi float [ %7166, %7144 ], [ %7143, %7030 ]
  %7171 = fmul fast float %7058, 9.843750e-01
  %7172 = fadd fast float %7171, 7.812500e-03
  %7173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7172, float %5447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 2
  %7175 = extractvalue %dx.types.ResRet.f32 %7173, 3
  %7176 = fmul fast float %7174, %5284
  %7177 = fmul fast float %7174, %5285
  %7178 = fmul fast float %7174, %5330
  %7179 = fadd fast float %7176, %7175
  %7180 = fadd fast float %7177, %7175
  %7181 = fadd fast float %7178, %7175
  br i1 %5457, label %7182, label %7205

; <label>:7182                                    ; preds = %7167
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4096, float %7058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.ResRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.ResRet.f32 %7183, 2
  %7187 = fadd fast float %7184, -5.000000e-01
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fadd fast float %7186, -5.000000e-01
  %7190 = fmul fast float %5284, 4.000000e+00
  %7191 = fmul fast float %7190, %7135
  %7192 = fmul fast float %7191, %7187
  %7193 = fmul fast float %5285, 4.000000e+00
  %7194 = fmul fast float %7193, %7136
  %7195 = fmul fast float %7194, %7188
  %7196 = fmul fast float %5330, 4.000000e+00
  %7197 = fmul fast float %7196, %7137
  %7198 = fmul fast float %7197, %7189
  %7199 = fadd fast float %7192, %7179
  %7200 = fadd fast float %7195, %7180
  %7201 = fadd fast float %7198, %7181
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  br label %7205

; <label>:7205                                    ; preds = %7182, %7167
  %7206 = phi float [ %7202, %7182 ], [ %7179, %7167 ]
  %7207 = phi float [ %7203, %7182 ], [ %7180, %7167 ]
  %7208 = phi float [ %7204, %7182 ], [ %7181, %7167 ]
  %7209 = call float @dx.op.binary.f32(i32 35, float %7207, float %7208)  ; FMax(a,b)
  %7210 = call float @dx.op.binary.f32(i32 35, float %7206, float %7209)  ; FMax(a,b)
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7168, %7126
  %7213 = fmul fast float %7169, %7126
  %7214 = fmul fast float %7170, %7126
  %7215 = fsub fast float 1.000000e+00, %7059
  %7216 = bitcast float %7215 to i32
  %7217 = sitofp i32 %7216 to float
  %7218 = fmul fast float %7217, 5.000000e+00
  %7219 = fadd fast float %7218, 0xC1EFBF8940000000
  %7220 = fptosi float %7219 to i32
  %7221 = bitcast i32 %7220 to float
  %7222 = fmul fast float %7221, %4097
  %7223 = fmul fast float %7211, %7222
  %7224 = fmul fast float %7223, %5507
  %7225 = fmul fast float %7223, %5508
  %7226 = fmul fast float %7223, %5509
  %7227 = fadd fast float %7224, %7212
  %7228 = fadd fast float %7225, %7213
  %7229 = fadd fast float %7226, %7214
  %7230 = fmul fast float %7047, %4093
  %7231 = fmul fast float %7230, %7065
  %7232 = fmul fast float %7231, %7211
  %7233 = fmul fast float %7048, %4093
  %7234 = fmul fast float %7233, %7065
  %7235 = fmul fast float %7234, %7211
  %7236 = fmul fast float %7049, %4093
  %7237 = fmul fast float %7236, %7065
  %7238 = fmul fast float %7237, %7211
  %7239 = fadd fast float %7232, %6726
  %7240 = fadd fast float %7235, %6727
  %7241 = fadd fast float %7238, %6728
  %7242 = fmul fast float %7231, %7227
  %7243 = fmul fast float %7234, %7228
  %7244 = fmul fast float %7237, %7229
  %7245 = fadd fast float %7242, %6723
  %7246 = fadd fast float %7243, %6724
  %7247 = fadd fast float %7244, %6725
  br label %6855

; <label>:7248                                    ; preds = %6855
  br label %7249

; <label>:7249                                    ; preds = %7248, %6689
  %7250 = phi float [ %6691, %6689 ], [ %6856, %7248 ]
  %7251 = phi float [ %6692, %6689 ], [ %6857, %7248 ]
  %7252 = phi float [ %6693, %6689 ], [ %6858, %7248 ]
  %7253 = phi float [ %6694, %6689 ], [ %6859, %7248 ]
  %7254 = phi float [ %6695, %6689 ], [ %6860, %7248 ]
  %7255 = phi float [ %6696, %6689 ], [ %6861, %7248 ]
  %7256 = add i32 %6690, 1
  %7257 = icmp ugt i32 %7256, %6686
  br i1 %7257, label %7258, label %6689

; <label>:7258                                    ; preds = %7249
  br label %7259

; <label>:7259                                    ; preds = %7258, %6639, %6629
  %7260 = phi float [ %6630, %6629 ], [ %6630, %6639 ], [ %7250, %7258 ]
  %7261 = phi float [ %6631, %6629 ], [ %6631, %6639 ], [ %7251, %7258 ]
  %7262 = phi float [ %6632, %6629 ], [ %6632, %6639 ], [ %7252, %7258 ]
  %7263 = phi float [ %6633, %6629 ], [ %6633, %6639 ], [ %7253, %7258 ]
  %7264 = phi float [ %6634, %6629 ], [ %6634, %6639 ], [ %7254, %7258 ]
  %7265 = phi float [ %6635, %6629 ], [ %6635, %6639 ], [ %7255, %7258 ]
  %7266 = fmul fast float %4093, %4093
  %7267 = fsub fast float 1.000000e+00, %7266
  %7268 = call float @dx.op.dot3.f32(i32 55, float %7267, float %7267, float %7267, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = fsub fast float 1.000000e+00, %7268
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = fmul fast float %7271, %5513
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 3
  %7275 = fsub fast float 1.000000e+00, %4101
  %7276 = call float @dx.op.unary.f32(i32 7, float %7275)  ; Saturate(value)
  %7277 = fadd fast float %7265, %4099
  %7278 = fmul fast float %7277, %4101
  %7279 = fmul fast float %7276, %7274
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7282 = fmul fast float %7263, %5281
  %7283 = fmul fast float %7264, %5282
  %7284 = fmul fast float %7265, %5283
  %7285 = fcmp fast ogt float %99, %230
  %7286 = and i1 %7285, %4504
  %7287 = or i1 %4510, %7286
  %7288 = icmp eq i32 %4503, 2
  %7289 = fcmp fast ole float %99, %230
  %7290 = and i1 %7289, %7288
  %7291 = or i1 %7290, %7287
  br i1 %7286, label %7292, label %7549

; <label>:7292                                    ; preds = %7259
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7295 = extractvalue %dx.types.CBufRet.f32 %7293, 3
  %7296 = fmul fast float %7294, %108
  %7297 = fmul fast float %7295, %109
  %7298 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7299 = call float @dx.op.unary.f32(i32 7, float %7297)  ; Saturate(value)
  %7300 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7298, float %7299, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.ResRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.ResRet.f32 %7300, 2
  %7304 = extractvalue %dx.types.ResRet.f32 %7300, 3
  %7305 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7298, float %7299, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.ResRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.ResRet.f32 %7305, 3
  %7310 = call float @dx.op.binary.f32(i32 35, float %7302, float %7303)  ; FMax(a,b)
  %7311 = call float @dx.op.binary.f32(i32 35, float %7301, float %7310)  ; FMax(a,b)
  %7312 = call float @dx.op.binary.f32(i32 35, float %7311, float %7304)  ; FMax(a,b)
  %7313 = call float @dx.op.binary.f32(i32 36, float %7307, float %7308)  ; FMin(a,b)
  %7314 = call float @dx.op.binary.f32(i32 36, float %7306, float %7313)  ; FMin(a,b)
  %7315 = call float @dx.op.binary.f32(i32 36, float %7314, float %7309)  ; FMin(a,b)
  %7316 = fmul fast float %7312, 2.550000e+02
  %7317 = fadd fast float %7316, 0x3F70101020000000
  %7318 = fptoui float %7317 to i32
  %7319 = fmul fast float %7315, 2.550000e+02
  %7320 = fadd fast float %7319, 0x3F70101020000000
  %7321 = fptoui float %7320 to i32
  %7322 = icmp ult i32 %7318, %7321
  br i1 %7322, label %7323, label %7491

; <label>:7323                                    ; preds = %7292
  %7324 = fcmp fast ogt float %98, 9.843750e-01
  %7325 = fadd fast float %99, -4.000000e+00
  %7326 = select i1 %7324, float -4.000000e+00, float %7325
  %7327 = call float @dx.op.binary.f32(i32 35, float %7326, float 0.000000e+00)  ; FMax(a,b)
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = fadd fast float %7329, %7327
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = fmul fast float %7330, %7331
  %7333 = call float @dx.op.unary.f32(i32 23, float %7332)  ; Log(value)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7335 = fmul fast float %7334, %7333
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7338 = fmul fast float %7335, %7337
  %7339 = call float @dx.op.unary.f32(i32 7, float %7338)  ; Saturate(value)
  %7340 = uitofp i32 %7318 to float
  %7341 = uitofp i32 %7321 to float
  %7342 = fadd fast float %7340, 5.000000e-01
  %7343 = fadd fast float %7341, 5.000000e-01
  %7344 = fmul fast float %7337, %7342
  %7345 = fmul fast float %7337, %7343
  %7346 = fadd fast float %7344, 0x3F0FFB4800000000
  %7347 = fadd fast float %7345, 0xBF0FFB4800000000
  %7348 = call float @dx.op.binary.f32(i32 35, float %7339, float %7346)  ; FMax(a,b)
  %7349 = call float @dx.op.binary.f32(i32 36, float %7348, float %7347)  ; FMin(a,b)
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7353 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7354 = fmul fast float %7351, %7349
  %7355 = fadd fast float %7353, %7354
  %7356 = fadd fast float %7353, %7352
  %7357 = fsub fast float %7351, %7352
  %7358 = fadd fast float %7357, %7353
  %7359 = call float @dx.op.binary.f32(i32 35, float %7355, float %7356)  ; FMax(a,b)
  %7360 = call float @dx.op.binary.f32(i32 36, float %7359, float %7358)  ; FMin(a,b)
  %7361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7298, float %7299, float %7360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7362 = extractvalue %dx.types.ResRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.ResRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.ResRet.f32 %7361, 2
  %7365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.i32 %7365, 0
  %7367 = extractvalue %dx.types.CBufRet.i32 %7365, 1
  %7368 = uitofp i32 %7366 to float
  %7369 = uitofp i32 %7367 to float
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = fmul fast float %7368, %7298
  %7374 = fmul fast float %7369, %7299
  %7375 = fadd fast float %7373, -5.000000e-01
  %7376 = fadd fast float %7374, -5.000000e-01
  %7377 = call float @dx.op.unary.f32(i32 22, float %7375)  ; Frc(value)
  %7378 = call float @dx.op.unary.f32(i32 22, float %7376)  ; Frc(value)
  %7379 = fmul fast float %7377, %7377
  %7380 = fmul fast float %7379, %7377
  %7381 = fsub fast float 3.000000e+00, %7377
  %7382 = fmul fast float %7379, %7381
  %7383 = fmul fast float %7377, 3.000000e+00
  %7384 = fmul fast float %7380, 3.000000e+00
  %7385 = fmul fast float %7379, 6.000000e+00
  %7386 = fsub fast float %7384, %7385
  %7387 = fadd fast float %7386, 4.000000e+00
  %7388 = fmul fast float %7387, 0x3FC5555560000000
  %7389 = fmul fast float %7380, -3.000000e+00
  %7390 = fadd fast float %7379, %7377
  %7391 = fmul fast float %7390, 3.000000e+00
  %7392 = fadd fast float %7389, 1.000000e+00
  %7393 = fadd fast float %7392, %7391
  %7394 = fmul fast float %7380, 0x3FC5555560000000
  %7395 = fmul fast float %7378, %7378
  %7396 = fmul fast float %7395, %7378
  %7397 = fsub fast float 3.000000e+00, %7378
  %7398 = fmul fast float %7395, %7397
  %7399 = fmul fast float %7378, 3.000000e+00
  %7400 = fmul fast float %7396, 3.000000e+00
  %7401 = fmul fast float %7395, 6.000000e+00
  %7402 = fsub fast float %7400, %7401
  %7403 = fadd fast float %7402, 4.000000e+00
  %7404 = fmul fast float %7403, 0x3FC5555560000000
  %7405 = fmul fast float %7396, -3.000000e+00
  %7406 = fadd fast float %7395, %7378
  %7407 = fmul fast float %7406, 3.000000e+00
  %7408 = fadd fast float %7405, 1.000000e+00
  %7409 = fadd fast float %7408, %7407
  %7410 = fmul fast float %7396, 0x3FC5555560000000
  %7411 = fadd fast float %7377, 1.000000e+00
  %7412 = fsub fast float 1.000000e+00, %7383
  %7413 = fadd fast float %7412, %7382
  %7414 = fadd fast float %7413, %7387
  %7415 = fmul fast float %7414, 0x3FC5555560000000
  %7416 = fdiv fast float %7388, %7415
  %7417 = fsub fast float %7411, %7416
  %7418 = fsub fast float 1.000000e+00, %7377
  %7419 = fadd fast float %7393, %7380
  %7420 = fmul fast float %7419, 0x3FC5555560000000
  %7421 = fdiv fast float %7394, %7420
  %7422 = fadd fast float %7418, %7421
  %7423 = fadd fast float %7378, 1.000000e+00
  %7424 = fsub fast float 1.000000e+00, %7399
  %7425 = fadd fast float %7424, %7398
  %7426 = fadd fast float %7425, %7403
  %7427 = fmul fast float %7426, 0x3FC5555560000000
  %7428 = fdiv fast float %7404, %7427
  %7429 = fsub fast float %7423, %7428
  %7430 = fsub fast float 1.000000e+00, %7378
  %7431 = fadd fast float %7409, %7396
  %7432 = fmul fast float %7431, 0x3FC5555560000000
  %7433 = fdiv fast float %7410, %7432
  %7434 = fadd fast float %7433, %7430
  %7435 = fmul fast float %7417, %7371
  %7436 = fsub fast float %7298, %7435
  %7437 = fmul fast float %7422, %7371
  %7438 = fadd fast float %7437, %7298
  %7439 = fmul fast float %7434, %7372
  %7440 = fadd fast float %7439, %7299
  %7441 = fmul fast float %7429, %7372
  %7442 = fsub fast float %7299, %7441
  %7443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7436, float %7442, float %7360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7444 = extractvalue %dx.types.ResRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.ResRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.ResRet.f32 %7443, 2
  %7447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7438, float %7442, float %7360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7436, float %7440, float %7360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.ResRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.ResRet.f32 %7451, 2
  %7455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7438, float %7440, float %7360, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.ResRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.ResRet.f32 %7455, 2
  %7459 = fsub fast float %7452, %7444
  %7460 = fsub fast float %7453, %7445
  %7461 = fsub fast float %7454, %7446
  %7462 = fmul fast float %7459, %7432
  %7463 = fmul fast float %7460, %7432
  %7464 = fmul fast float %7461, %7432
  %7465 = fadd fast float %7462, %7444
  %7466 = fadd fast float %7463, %7445
  %7467 = fadd fast float %7464, %7446
  %7468 = fsub fast float %7456, %7448
  %7469 = fsub fast float %7457, %7449
  %7470 = fsub fast float %7458, %7450
  %7471 = fmul fast float %7468, %7432
  %7472 = fmul fast float %7469, %7432
  %7473 = fmul fast float %7470, %7432
  %7474 = fsub fast float %7448, %7465
  %7475 = fadd fast float %7474, %7471
  %7476 = fsub fast float %7449, %7466
  %7477 = fadd fast float %7476, %7472
  %7478 = fsub fast float %7450, %7467
  %7479 = fadd fast float %7478, %7473
  %7480 = fmul fast float %7475, %7420
  %7481 = fmul fast float %7477, %7420
  %7482 = fmul fast float %7479, %7420
  %7483 = fadd fast float %7480, %7465
  %7484 = fadd fast float %7481, %7466
  %7485 = fadd fast float %7482, %7467
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7488 = fmul fast float %7483, %7487
  %7489 = fmul fast float %7484, %7487
  %7490 = fmul fast float %7485, %7487
  br label %7491

; <label>:7491                                    ; preds = %7323, %7292
  %7492 = phi float [ %7362, %7323 ], [ 1.000000e+00, %7292 ]
  %7493 = phi float [ %7363, %7323 ], [ 1.000000e+00, %7292 ]
  %7494 = phi float [ %7364, %7323 ], [ 1.000000e+00, %7292 ]
  %7495 = phi float [ %7488, %7323 ], [ 0.000000e+00, %7292 ]
  %7496 = phi float [ %7489, %7323 ], [ 0.000000e+00, %7292 ]
  %7497 = phi float [ %7490, %7323 ], [ 0.000000e+00, %7292 ]
  %7498 = fmul fast float %7495, %7269
  %7499 = fmul fast float %7496, %7269
  %7500 = fmul fast float %7497, %7269
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7492, float %7493, float %7494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = call float @dx.op.dot3.f32(i32 55, float %7498, float %7499, float %7500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7503 = select i1 %267, float %7501, float %7492
  %7504 = select i1 %267, float %7501, float %7493
  %7505 = select i1 %267, float 1.000000e+00, float %7494
  %7506 = select i1 %267, float %7502, float %7498
  %7507 = select i1 %267, float 0.000000e+00, float %7499
  %7508 = select i1 %267, float 0.000000e+00, float %7500
  %7509 = fmul fast float %7503, %7282
  %7510 = fmul fast float %7504, %7283
  %7511 = fmul fast float %7505, %7284
  %7512 = fadd fast float %7509, %7506
  %7513 = fadd fast float %7510, %7507
  %7514 = fadd fast float %7508, %7511
  %7515 = fmul fast float %7503, %7260
  %7516 = fmul fast float %7504, %7261
  %7517 = fmul fast float %7505, %7262
  %7518 = fmul fast float %144, %7294
  %7519 = fmul fast float %146, %7295
  %7520 = fsub fast float 1.000000e+00, %7518
  %7521 = fsub fast float 1.000000e+00, %7519
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.CBufRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %7526 = fmul fast float %7520, %7523
  %7527 = fmul fast float %7520, %7524
  %7528 = fmul fast float %7520, %7525
  %7529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.CBufRet.f32 %7529, 1
  %7532 = extractvalue %dx.types.CBufRet.f32 %7529, 2
  %7533 = fmul fast float %7521, %7530
  %7534 = fmul fast float %7521, %7531
  %7535 = fmul fast float %7521, %7532
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 0
  %7538 = extractvalue %dx.types.CBufRet.f32 %7536, 1
  %7539 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7540 = fadd fast float %7533, %7537
  %7541 = fadd fast float %7540, %7526
  %7542 = fadd fast float %7534, %7538
  %7543 = fadd fast float %7542, %7527
  %7544 = fadd fast float %7535, %7539
  %7545 = fadd fast float %7544, %7528
  %7546 = fmul fast float %7541, %230
  %7547 = fmul fast float %7543, %230
  %7548 = fmul fast float %7545, %230
  br label %7549

; <label>:7549                                    ; preds = %7491, %7259
  %7550 = phi float [ %7546, %7491 ], [ %195, %7259 ]
  %7551 = phi float [ %7547, %7491 ], [ %196, %7259 ]
  %7552 = phi float [ %7548, %7491 ], [ %197, %7259 ]
  %7553 = phi float [ %230, %7491 ], [ %99, %7259 ]
  %7554 = phi float [ %7512, %7491 ], [ %7282, %7259 ]
  %7555 = phi float [ %7513, %7491 ], [ %7283, %7259 ]
  %7556 = phi float [ %7514, %7491 ], [ %7284, %7259 ]
  %7557 = phi float [ %7515, %7491 ], [ %7260, %7259 ]
  %7558 = phi float [ %7516, %7491 ], [ %7261, %7259 ]
  %7559 = phi float [ %7517, %7491 ], [ %7262, %7259 ]
  %7560 = phi float [ %7492, %7491 ], [ 1.000000e+00, %7259 ]
  br i1 %7291, label %8715, label %7561

; <label>:7561                                    ; preds = %7549
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7564 = extractvalue %dx.types.CBufRet.f32 %7562, 1
  %7565 = extractvalue %dx.types.CBufRet.f32 %7562, 2
  %7566 = extractvalue %dx.types.CBufRet.f32 %7562, 3
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7571 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7581 = extractvalue %dx.types.CBufRet.f32 %7577, 3
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 3
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 3
  %7586 = extractvalue %dx.types.CBufRet.f32 %7584, 0
  %7587 = extractvalue %dx.types.CBufRet.f32 %7584, 1
  %7588 = extractvalue %dx.types.CBufRet.f32 %7584, 2
  %7589 = fcmp fast olt float %7588, -5.000000e-01
  %7590 = call float @dx.op.dot3.f32(i32 55, float %7550, float %7551, float %7552, float %7550, float %7551, float %7552)  ; Dot3(ax,ay,az,bx,by,bz)
  %7591 = call float @dx.op.unary.f32(i32 25, float %7590)  ; Rsqrt(value)
  %7592 = fmul fast float %7591, %7590
  %7593 = fmul fast float %7591, %7550
  %7594 = fmul fast float %7591, %7551
  %7595 = fmul fast float %7591, %7552
  %7596 = fadd fast float %7592, %7566
  %7597 = call float @dx.op.dot3.f32(i32 55, float %7593, float %7594, float %7595, float %7563, float %7564, float %7565)  ; Dot3(ax,ay,az,bx,by,bz)
  %7598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.i32 %7598, 1
  %7600 = and i32 %7599, 1
  %7601 = icmp ne i32 %7600, 0
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %7604 = fcmp fast ogt float %7603, 0.000000e+00
  %7605 = and i1 %7601, %7604
  br i1 %7605, label %7606, label %8012, !dx.controlflow.hints !126

; <label>:7606                                    ; preds = %7561
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 2
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7613 = fsub fast float %7610, %7612
  %7614 = and i32 %7599, 2
  %7615 = extractvalue %dx.types.CBufRet.i32 %7598, 0
  %7616 = call i32 @dx.op.binary.i32(i32 40, i32 %7615, i32 3)  ; UMin(a,b)
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7621 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7622 = fsub fast float %7618, %7620
  %7623 = fsub fast float %7619, %7621
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 0
  %7626 = fcmp fast ogt float %7625, 0.000000e+00
  %7627 = fsub fast float -0.000000e+00, %7622
  %7628 = fsub fast float -0.000000e+00, %7623
  %7629 = call float @dx.op.dot2.f32(i32 54, float %7593, float %7594, float %7593, float %7594)  ; Dot2(ax,ay,bx,by)
  %7630 = call float @dx.op.dot2.f32(i32 54, float %7593, float %7594, float %7627, float %7628)  ; Dot2(ax,ay,bx,by)
  %7631 = fmul fast float %7630, 2.000000e+00
  %7632 = call float @dx.op.dot2.f32(i32 54, float %7627, float %7628, float %7627, float %7628)  ; Dot2(ax,ay,bx,by)
  %7633 = fmul fast float %7625, %7625
  %7634 = fsub fast float %7632, %7633
  %7635 = fmul fast float %7631, %7631
  %7636 = fmul fast float %7629, 4.000000e+00
  %7637 = fmul fast float %7636, %7634
  %7638 = fsub fast float %7635, %7637
  %7639 = fcmp fast ogt float %7638, 0.000000e+00
  br i1 %7639, label %7640, label %7655

; <label>:7640                                    ; preds = %7606
  %7641 = fcmp fast ogt float %7631, 0.000000e+00
  %7642 = call float @dx.op.unary.f32(i32 24, float %7638)  ; Sqrt(value)
  %7643 = fsub fast float -0.000000e+00, %7642
  %7644 = select i1 %7641, float %7642, float %7643
  %7645 = fadd fast float %7644, %7631
  %7646 = fmul float %7645, -5.000000e-01
  %7647 = fdiv fast float %7646, %7629
  %7648 = call float @dx.op.binary.f32(i32 35, float %7647, float 0.000000e+00)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 36, float %7592, float %7648)  ; FMin(a,b)
  %7650 = fdiv fast float %7634, %7646
  %7651 = call float @dx.op.binary.f32(i32 35, float %7650, float 0.000000e+00)  ; FMax(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7592, float %7651)  ; FMin(a,b)
  %7653 = call float @dx.op.binary.f32(i32 36, float %7649, float %7652)  ; FMin(a,b)
  %7654 = call float @dx.op.binary.f32(i32 35, float %7649, float %7652)  ; FMax(a,b)
  br label %7655

; <label>:7655                                    ; preds = %7640, %7606
  %7656 = phi float [ %7654, %7640 ], [ -1.000000e+00, %7606 ]
  %7657 = phi float [ %7653, %7640 ], [ -1.000000e+00, %7606 ]
  %7658 = phi i1 [ true, %7640 ], [ false, %7606 ]
  %7659 = and i1 %7626, %7658
  br i1 %7659, label %7660, label %7662

; <label>:7660                                    ; preds = %7655
  %7661 = fcmp fast oeq float %7657, %7656
  br i1 %7661, label %7965, label %7663

; <label>:7662                                    ; preds = %7655
  br i1 %7626, label %7965, label %7663

; <label>:7663                                    ; preds = %7662, %7660
  %7664 = phi float [ %7592, %7662 ], [ %7656, %7660 ]
  %7665 = phi float [ 0.000000e+00, %7662 ], [ %7657, %7660 ]
  %7666 = icmp ne i32 %7614, 0
  %7667 = fmul fast float %7664, %7595
  %7668 = fadd fast float %7667, %7608
  %7669 = fmul fast float %7668, %7664
  %7670 = select i1 %7666, float 0.000000e+00, float %7669
  %7671 = fcmp fast oeq float %7595, 0.000000e+00
  %7672 = fdiv fast float %7613, %7595
  %7673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7672)  ; FMax(a,b)
  %7674 = select i1 %7671, float %7664, float %7673
  %7675 = call float @dx.op.binary.f32(i32 36, float %7664, float %7674)  ; FMin(a,b)
  %7676 = fcmp fast ogt float %7595, 0.000000e+00
  %7677 = fcmp fast olt float %7613, 0.000000e+00
  br i1 %7676, label %7678, label %7735

; <label>:7678                                    ; preds = %7663
  %7679 = icmp eq i32 %7614, 0
  br i1 %7677, label %7680, label %7724

; <label>:7680                                    ; preds = %7678
  %7681 = select i1 %7679, float %7664, float 0.000000e+00
  %7682 = fsub fast float -0.000000e+00, %7681
  %7683 = call float @dx.op.unary.f32(i32 6, float %7682)  ; FAbs(value)
  %7684 = fmul fast float %7681, %7595
  %7685 = fadd fast float %7684, %7608
  %7686 = fmul fast float %7683, %7685
  %7687 = fsub fast float %7670, %7686
  %7688 = fsub fast float %7664, %7683
  %7689 = select i1 %7679, float %7688, float 0.000000e+00
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.CBufRet.f32 %7690, 2
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.CBufRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.CBufRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.CBufRet.f32 %7694, 3
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7701 = call float @dx.op.binary.f32(i32 36, float %7687, float %7700)  ; FMin(a,b)
  %7702 = fmul fast float %7698, %7689
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fsub fast float %7695, %7691
  %7705 = fsub fast float %7696, %7692
  %7706 = fsub fast float %7697, %7693
  %7707 = fmul fast float %7703, %7704
  %7708 = fmul fast float %7703, %7705
  %7709 = fmul fast float %7703, %7706
  %7710 = fadd fast float %7707, %7691
  %7711 = fadd fast float %7708, %7692
  %7712 = fadd fast float %7709, %7693
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7716 = fadd fast float %7715, %7714
  %7717 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7719 = extractvalue %dx.types.CBufRet.f32 %7713, 3
  %7720 = fadd fast float %7719, %7718
  %7721 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7722 = fmul fast float %7717, %7701
  %7723 = fmul fast float %7722, %7721
  br label %7965

; <label>:7724                                    ; preds = %7678
  br i1 %7679, label %7725, label %7746

; <label>:7725                                    ; preds = %7724
  %7726 = call float @dx.op.binary.f32(i32 36, float %7675, float %7665)  ; FMin(a,b)
  %7727 = fsub fast float %7675, %7726
  %7728 = fsub fast float %7727, %7664
  %7729 = call float @dx.op.unary.f32(i32 6, float %7728)  ; FAbs(value)
  %7730 = fadd fast float %7727, %7664
  %7731 = fmul fast float %7730, %7595
  %7732 = fadd fast float %7731, %7608
  %7733 = fmul fast float %7732, %7729
  %7734 = fsub fast float %7670, %7733
  br label %7746

; <label>:7735                                    ; preds = %7663
  br i1 %7677, label %7736, label %7746

; <label>:7736                                    ; preds = %7735
  %7737 = call float @dx.op.binary.f32(i32 35, float %7665, float %7675)  ; FMax(a,b)
  %7738 = icmp eq i32 %7614, 0
  %7739 = select i1 %7738, float %7675, float 0.000000e+00
  %7740 = fsub fast float -0.000000e+00, %7739
  %7741 = call float @dx.op.unary.f32(i32 6, float %7740)  ; FAbs(value)
  %7742 = fmul fast float %7739, %7595
  %7743 = fadd fast float %7742, %7608
  %7744 = fmul fast float %7741, %7743
  %7745 = fsub fast float %7670, %7744
  br label %7746

; <label>:7746                                    ; preds = %7736, %7735, %7725, %7724
  %7747 = phi float [ %7665, %7724 ], [ %7665, %7725 ], [ %7737, %7736 ], [ %7665, %7735 ]
  %7748 = phi float [ 0.000000e+00, %7724 ], [ %7729, %7725 ], [ %7741, %7736 ], [ 0.000000e+00, %7735 ]
  %7749 = phi float [ %7670, %7724 ], [ %7734, %7725 ], [ %7745, %7736 ], [ %7670, %7735 ]
  %7750 = phi float [ %7675, %7724 ], [ %7675, %7725 ], [ %7664, %7736 ], [ %7664, %7735 ]
  %7751 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %7751, align 4, !tbaa !127, !noalias !129
  %7752 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %7752, align 4, !tbaa !127, !noalias !129
  %7753 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %7753, align 4, !tbaa !127, !noalias !129
  %7754 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %7754, align 4, !tbaa !127, !noalias !129
  %7755 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %7755, align 4, !tbaa !127, !noalias !129
  %7756 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %7756, align 4, !tbaa !127, !noalias !129
  %7757 = icmp sgt i32 %7616, 0
  br i1 %7757, label %7758, label %7819

; <label>:7758                                    ; preds = %7746
  br label %7759

; <label>:7759                                    ; preds = %7808, %7758
  %7760 = phi i32 [ %7809, %7808 ], [ 0, %7758 ]
  %7761 = phi i32 [ %7810, %7808 ], [ 0, %7758 ]
  %7762 = add nuw i32 %7761, 171
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7762)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 0
  %7765 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7769 = fsub fast float %7764, %7767
  %7770 = fsub fast float %7765, %7768
  %7771 = extractvalue %dx.types.CBufRet.f32 %7763, 2
  %7772 = fsub fast float -0.000000e+00, %7769
  %7773 = fsub fast float -0.000000e+00, %7770
  %7774 = call float @dx.op.dot2.f32(i32 54, float %7593, float %7594, float %7772, float %7773)  ; Dot2(ax,ay,bx,by)
  %7775 = fmul fast float %7774, 2.000000e+00
  %7776 = call float @dx.op.dot2.f32(i32 54, float %7772, float %7773, float %7772, float %7773)  ; Dot2(ax,ay,bx,by)
  %7777 = fmul fast float %7771, %7771
  %7778 = fsub fast float %7776, %7777
  %7779 = fmul fast float %7775, %7775
  %7780 = fmul fast float %7636, %7778
  %7781 = fsub fast float %7779, %7780
  %7782 = fcmp fast ogt float %7781, 0.000000e+00
  br i1 %7782, label %7783, label %7798

; <label>:7783                                    ; preds = %7759
  %7784 = fcmp fast ogt float %7775, 0.000000e+00
  %7785 = call float @dx.op.unary.f32(i32 24, float %7781)  ; Sqrt(value)
  %7786 = fsub fast float -0.000000e+00, %7785
  %7787 = select i1 %7784, float %7785, float %7786
  %7788 = fadd fast float %7787, %7775
  %7789 = fmul float %7788, -5.000000e-01
  %7790 = fdiv fast float %7789, %7629
  %7791 = call float @dx.op.binary.f32(i32 35, float %7790, float 0.000000e+00)  ; FMax(a,b)
  %7792 = call float @dx.op.binary.f32(i32 36, float %7664, float %7791)  ; FMin(a,b)
  %7793 = fdiv fast float %7778, %7789
  %7794 = call float @dx.op.binary.f32(i32 35, float %7793, float 0.000000e+00)  ; FMax(a,b)
  %7795 = call float @dx.op.binary.f32(i32 36, float %7664, float %7794)  ; FMin(a,b)
  %7796 = call float @dx.op.binary.f32(i32 36, float %7792, float %7795)  ; FMin(a,b)
  %7797 = call float @dx.op.binary.f32(i32 35, float %7792, float %7795)  ; FMax(a,b)
  br label %7798

; <label>:7798                                    ; preds = %7783, %7759
  %7799 = phi float [ %7797, %7783 ], [ -1.000000e+00, %7759 ]
  %7800 = phi float [ %7796, %7783 ], [ -1.000000e+00, %7759 ]
  %7801 = phi i1 [ true, %7783 ], [ false, %7759 ]
  br i1 %7801, label %7802, label %7808

; <label>:7802                                    ; preds = %7798
  %7803 = call float @dx.op.binary.f32(i32 35, float %7747, float %7800)  ; FMax(a,b)
  %7804 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7761
  store float %7803, float* %7804, align 4, !tbaa !127, !noalias !129
  %7805 = call float @dx.op.binary.f32(i32 35, float %7747, float %7799)  ; FMax(a,b)
  %7806 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7761
  store float %7805, float* %7806, align 4, !tbaa !127, !noalias !129
  %7807 = add nsw i32 %7760, 1
  br label %7808

; <label>:7808                                    ; preds = %7802, %7798
  %7809 = phi i32 [ %7807, %7802 ], [ %7760, %7798 ]
  %7810 = add nuw nsw i32 %7761, 1
  %7811 = icmp eq i32 %7810, %7616
  br i1 %7811, label %7812, label %7759

; <label>:7812                                    ; preds = %7808
  %7813 = load float, float* %7753, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7814 = load float, float* %7752, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  %7815 = load float, float* %7751, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  %7816 = load float, float* %7756, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7817 = load float, float* %7755, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  %7818 = load float, float* %7754, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  br label %7819

; <label>:7819                                    ; preds = %7812, %7746
  %7820 = phi float [ -1.000000e+00, %7746 ], [ %7818, %7812 ]
  %7821 = phi float [ -1.000000e+00, %7746 ], [ %7817, %7812 ]
  %7822 = phi float [ -1.000000e+00, %7746 ], [ %7816, %7812 ]
  %7823 = phi float [ -1.000000e+00, %7746 ], [ %7815, %7812 ]
  %7824 = phi float [ -1.000000e+00, %7746 ], [ %7814, %7812 ]
  %7825 = phi float [ -1.000000e+00, %7746 ], [ %7813, %7812 ]
  %7826 = phi i32 [ 0, %7746 ], [ %7809, %7812 ]
  %7827 = call float @dx.op.binary.f32(i32 36, float %7824, float %7825)  ; FMin(a,b)
  %7828 = call float @dx.op.binary.f32(i32 36, float %7823, float %7827)  ; FMin(a,b)
  %7829 = call float @dx.op.binary.f32(i32 35, float %7823, float %7824)  ; FMax(a,b)
  %7830 = call float @dx.op.binary.f32(i32 36, float %7829, float %7825)  ; FMin(a,b)
  %7831 = call float @dx.op.binary.f32(i32 36, float %7823, float %7824)  ; FMin(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float %7831, float %7830)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7824, float %7825)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 35, float %7823, float %7833)  ; FMax(a,b)
  store float %7828, float* %7751, align 4, !tbaa !127, !alias.scope !153, !noalias !154
  store float %7832, float* %7752, align 4, !tbaa !127, !alias.scope !151, !noalias !152
  store float %7834, float* %7753, align 4, !tbaa !127, !alias.scope !145, !noalias !148
  %7835 = call float @dx.op.binary.f32(i32 36, float %7821, float %7822)  ; FMin(a,b)
  %7836 = call float @dx.op.binary.f32(i32 36, float %7820, float %7835)  ; FMin(a,b)
  %7837 = call float @dx.op.binary.f32(i32 35, float %7820, float %7821)  ; FMax(a,b)
  %7838 = call float @dx.op.binary.f32(i32 36, float %7837, float %7822)  ; FMin(a,b)
  %7839 = call float @dx.op.binary.f32(i32 36, float %7820, float %7821)  ; FMin(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float %7838)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 35, float %7821, float %7822)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7820, float %7841)  ; FMax(a,b)
  store float %7836, float* %7754, align 4, !tbaa !127, !alias.scope !163, !noalias !164
  store float %7840, float* %7755, align 4, !tbaa !127, !alias.scope !161, !noalias !162
  store float %7842, float* %7756, align 4, !tbaa !127, !alias.scope !155, !noalias !158
  %7843 = sub nsw i32 3, %7826
  %7844 = icmp sgt i32 %7843, 2
  br i1 %7844, label %7845, label %7883

; <label>:7845                                    ; preds = %7819
  %7846 = icmp eq i32 %7614, 0
  %7847 = fsub fast float %7664, %7748
  %7848 = select i1 %7846, float %7847, float %7748
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.CBufRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.CBufRet.f32 %7849, 2
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7853, 3
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 3
  %7860 = call float @dx.op.binary.f32(i32 36, float %7749, float %7859)  ; FMin(a,b)
  %7861 = fmul fast float %7857, %7848
  %7862 = call float @dx.op.unary.f32(i32 7, float %7861)  ; Saturate(value)
  %7863 = fsub fast float %7854, %7850
  %7864 = fsub fast float %7855, %7851
  %7865 = fsub fast float %7856, %7852
  %7866 = fmul fast float %7862, %7863
  %7867 = fmul fast float %7862, %7864
  %7868 = fmul fast float %7862, %7865
  %7869 = fadd fast float %7866, %7850
  %7870 = fadd fast float %7867, %7851
  %7871 = fadd fast float %7868, %7852
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 0
  %7874 = extractvalue %dx.types.CBufRet.f32 %7872, 1
  %7875 = fadd fast float %7874, %7873
  %7876 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7872, 2
  %7878 = extractvalue %dx.types.CBufRet.f32 %7872, 3
  %7879 = fadd fast float %7878, %7877
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fmul fast float %7876, %7860
  %7882 = fmul fast float %7881, %7880
  br label %7965

; <label>:7883                                    ; preds = %7819
  %7884 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7843
  %7885 = load float, float* %7884, align 4, !tbaa !127, !noalias !129
  %7886 = fcmp fast olt float %7885, %7750
  %7887 = icmp sgt i32 %7826, 0
  %7888 = and i1 %7887, %7886
  br i1 %7888, label %7889, label %7926

; <label>:7889                                    ; preds = %7883
  br label %7890

; <label>:7890                                    ; preds = %7919, %7889
  %7891 = phi float [ %7920, %7919 ], [ %7748, %7889 ]
  %7892 = phi float [ %7921, %7919 ], [ %7749, %7889 ]
  %7893 = phi float [ %7901, %7919 ], [ %7885, %7889 ]
  %7894 = phi i32 [ %7898, %7919 ], [ %7843, %7889 ]
  %7895 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %7894
  %7896 = load float, float* %7895, align 4, !tbaa !127, !noalias !129
  %7897 = icmp slt i32 %7894, 2
  %7898 = add nsw i32 %7894, 1
  %7899 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7898
  %7900 = load float, float* %7899, align 4, !tbaa !127, !noalias !129
  %7901 = select i1 %7897, float %7900, float %7664
  %7902 = call float @dx.op.binary.f32(i32 36, float %7901, float %7896)  ; FMin(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7750, float %7902)  ; FMin(a,b)
  %7904 = icmp eq i32 %7614, 0
  %7905 = fadd fast float %7903, %7893
  %7906 = fmul fast float %7905, %7595
  %7907 = fadd fast float %7906, %7608
  br i1 %7904, label %7913, label %7908

; <label>:7908                                    ; preds = %7890
  %7909 = fsub fast float %7903, %7893
  %7910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7909)  ; FMax(a,b)
  %7911 = fmul fast float %7910, %7907
  %7912 = fadd fast float %7911, %7892
  br label %7919

; <label>:7913                                    ; preds = %7890
  %7914 = fsub fast float %7893, %7903
  %7915 = call float @dx.op.unary.f32(i32 6, float %7914)  ; FAbs(value)
  %7916 = fadd fast float %7915, %7891
  %7917 = fmul fast float %7915, %7907
  %7918 = fsub fast float %7892, %7917
  br label %7919

; <label>:7919                                    ; preds = %7913, %7908
  %7920 = phi float [ %7910, %7908 ], [ %7916, %7913 ]
  %7921 = phi float [ %7912, %7908 ], [ %7918, %7913 ]
  %7922 = fcmp fast olt float %7901, %7750
  %7923 = icmp slt i32 %7898, 3
  %7924 = and i1 %7923, %7922
  br i1 %7924, label %7890, label %7925

; <label>:7925                                    ; preds = %7919
  br label %7926

; <label>:7926                                    ; preds = %7925, %7883
  %7927 = phi float [ %7748, %7883 ], [ %7920, %7925 ]
  %7928 = phi float [ %7749, %7883 ], [ %7921, %7925 ]
  %7929 = fsub fast float %7664, %7927
  %7930 = select i1 %7666, float %7927, float %7929
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.CBufRet.f32 %7931, 2
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 0
  %7937 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7938 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7939 = extractvalue %dx.types.CBufRet.f32 %7935, 3
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 3
  %7942 = call float @dx.op.binary.f32(i32 36, float %7928, float %7941)  ; FMin(a,b)
  %7943 = fmul fast float %7939, %7930
  %7944 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7945 = fsub fast float %7936, %7932
  %7946 = fsub fast float %7937, %7933
  %7947 = fsub fast float %7938, %7934
  %7948 = fmul fast float %7944, %7945
  %7949 = fmul fast float %7944, %7946
  %7950 = fmul fast float %7944, %7947
  %7951 = fadd fast float %7948, %7932
  %7952 = fadd fast float %7949, %7933
  %7953 = fadd fast float %7950, %7934
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = fadd fast float %7956, %7955
  %7958 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7960 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7961 = fadd fast float %7960, %7959
  %7962 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7963 = fmul fast float %7958, %7942
  %7964 = fmul fast float %7963, %7962
  br label %7965

; <label>:7965                                    ; preds = %7926, %7845, %7680, %7662, %7660
  %7966 = phi float [ %7689, %7680 ], [ %7848, %7845 ], [ %7930, %7926 ], [ 0.000000e+00, %7660 ], [ 0.000000e+00, %7662 ]
  %7967 = phi float [ %7723, %7680 ], [ %7882, %7845 ], [ %7964, %7926 ], [ 0.000000e+00, %7660 ], [ 0.000000e+00, %7662 ]
  %7968 = phi float [ %7710, %7680 ], [ %7869, %7845 ], [ %7951, %7926 ], [ 0.000000e+00, %7660 ], [ 0.000000e+00, %7662 ]
  %7969 = phi float [ %7711, %7680 ], [ %7870, %7845 ], [ %7952, %7926 ], [ 0.000000e+00, %7660 ], [ 0.000000e+00, %7662 ]
  %7970 = phi float [ %7712, %7680 ], [ %7871, %7845 ], [ %7953, %7926 ], [ 0.000000e+00, %7660 ], [ 0.000000e+00, %7662 ]
  %7971 = fmul fast float %7603, %7967
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7974 = fsub fast float %7610, %7973
  %7975 = fcmp fast olt float %7971, -2.000000e+01
  %7976 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7979 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7981 = extractvalue %dx.types.CBufRet.f32 %7980, 2
  %7982 = fmul fast float %7979, %7974
  %7983 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7984 = fsub fast float 1.000000e+00, %7983
  %7985 = fmul fast float %7595, 5.000000e-01
  %7986 = fadd fast float %7985, 5.000000e-01
  %7987 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7984)  ; FMax(a,b)
  %7990 = fdiv fast float %7988, %7989
  %7991 = fsub fast float %7974, %7552
  %7992 = call float @dx.op.unary.f32(i32 6, float %7991)  ; FAbs(value)
  %7993 = fmul fast float %7992, %7978
  %7994 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7995 = fsub fast float 1.000000e+00, %7993
  %7996 = fmul fast float %7995, %7994
  %7997 = fadd fast float %7996, %7993
  %7998 = fmul fast float %7981, %7974
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fsub fast float 1.000000e+00, %7997
  %8001 = fmul fast float %8000, %7999
  %8002 = fadd fast float %8001, %7997
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8004 = fadd fast float %7976, -1.000000e+00
  %8005 = select i1 %7975, float -1.000000e+00, float %8004
  %8006 = fmul fast float %8003, %8005
  %8007 = fadd fast float %8006, 1.000000e+00
  %8008 = fsub fast float -0.000000e+00, %8006
  %8009 = fmul fast float %7968, %8008
  %8010 = fmul fast float %7969, %8008
  %8011 = fmul fast float %7970, %8008
  br label %8012

; <label>:8012                                    ; preds = %7965, %7561
  %8013 = phi float [ %7966, %7965 ], [ 0.000000e+00, %7561 ]
  %8014 = phi float [ %8007, %7965 ], [ 1.000000e+00, %7561 ]
  %8015 = phi float [ %8009, %7965 ], [ 0.000000e+00, %7561 ]
  %8016 = phi float [ %8010, %7965 ], [ 0.000000e+00, %7561 ]
  %8017 = phi float [ %8011, %7965 ], [ 0.000000e+00, %7561 ]
  %8018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8019 = extractvalue %dx.types.CBufRet.f32 %8018, 1
  %8020 = fsub fast float 1.000000e+00, %8014
  %8021 = fmul fast float %8020, %7596
  %8022 = fmul fast float %8021, %8019
  %8023 = fsub fast float %7596, %8022
  br i1 %7589, label %8024, label %8053, !dx.controlflow.hints !165

; <label>:8024                                    ; preds = %8012
  %8025 = fmul fast float %7597, %7586
  %8026 = fadd fast float %8025, %7587
  %8027 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  %8028 = fmul fast float %7568, %8023
  %8029 = fsub fast float -0.000000e+00, %8028
  %8030 = fmul fast float %7569, %8023
  %8031 = fsub fast float -0.000000e+00, %8030
  %8032 = call float @dx.op.unary.f32(i32 21, float %8029)  ; Exp(value)
  %8033 = call float @dx.op.unary.f32(i32 21, float %8031)  ; Exp(value)
  %8034 = call float @dx.op.binary.f32(i32 35, float %7576, float %8032)  ; FMax(a,b)
  %8035 = call float @dx.op.binary.f32(i32 35, float %7576, float %8033)  ; FMax(a,b)
  %8036 = fsub fast float %8035, %8034
  %8037 = fmul fast float %8036, %8027
  %8038 = fadd fast float %8037, %8034
  %8039 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8040 = fsub fast float %7573, %7578
  %8041 = fsub fast float %7574, %7579
  %8042 = fsub fast float %7575, %7580
  %8043 = fmul fast float %8027, %8040
  %8044 = fmul fast float %8027, %8041
  %8045 = fmul fast float %8027, %8042
  %8046 = fadd fast float %8043, %7578
  %8047 = fadd fast float %8044, %7579
  %8048 = fadd fast float %8045, %7580
  %8049 = fsub fast float 1.000000e+00, %8039
  %8050 = fmul fast float %8049, %8046
  %8051 = fmul fast float %8049, %8047
  %8052 = fmul fast float %8049, %8048
  br label %8112

; <label>:8053                                    ; preds = %8012
  %8054 = fmul fast float %8023, %7585
  %8055 = call float @dx.op.unary.f32(i32 7, float %8054)  ; Saturate(value)
  %8056 = fsub fast float 2.000000e+00, %8055
  %8057 = fmul fast float %8055, 9.921875e-01
  %8058 = fmul fast float %8057, %8056
  %8059 = fadd fast float %8058, 3.906250e-03
  %8060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8059, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8061 = extractvalue %dx.types.ResRet.f32 %8060, 0
  %8062 = fsub fast float %8055, %8061
  %8063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8062)  ; FMax(a,b)
  %8064 = fmul fast float %7571, %7552
  %8065 = call float @dx.op.unary.f32(i32 6, float %8064)  ; FAbs(value)
  %8066 = fcmp fast ogt float %8065, 0x3EB0C6F7A0000000
  br i1 %8066, label %8067, label %8073, !dx.controlflow.hints !166

; <label>:8067                                    ; preds = %8053
  %8068 = fmul fast float %8064, 0xBFF7154760000000
  %8069 = call float @dx.op.unary.f32(i32 21, float %8068)  ; Exp(value)
  %8070 = fsub fast float 1.000000e+00, %8069
  %8071 = fdiv fast float %8070, %8064
  %8072 = fmul fast float %8071, %7581
  br label %8073

; <label>:8073                                    ; preds = %8067, %8053
  %8074 = phi float [ %8072, %8067 ], [ %7581, %8053 ]
  %8075 = fadd fast float %8074, %7583
  %8076 = fmul fast float %8075, %8063
  %8077 = fmul fast float %7568, %8076
  %8078 = fsub fast float -0.000000e+00, %8077
  %8079 = fmul fast float %7569, %8076
  %8080 = fsub fast float -0.000000e+00, %8079
  %8081 = fmul fast float %7570, %8076
  %8082 = fsub fast float -0.000000e+00, %8081
  %8083 = call float @dx.op.unary.f32(i32 21, float %8078)  ; Exp(value)
  %8084 = call float @dx.op.unary.f32(i32 21, float %8080)  ; Exp(value)
  %8085 = call float @dx.op.unary.f32(i32 21, float %8082)  ; Exp(value)
  %8086 = fmul fast float %7597, %7597
  %8087 = fadd fast float %8086, 1.000000e+00
  %8088 = fmul fast float %8087, 0x3FAE8EC8A0000000
  %8089 = fmul fast float %8088, %7578
  %8090 = fmul fast float %8088, %7579
  %8091 = fmul fast float %8088, %7580
  %8092 = fmul fast float %7597, %7576
  %8093 = fsub fast float 1.000000e+00, %8092
  %8094 = fmul fast float %7576, %7576
  %8095 = fsub fast float 1.000000e+00, %8094
  %8096 = fmul fast float %8095, 0x3FB45F3060000000
  %8097 = fmul fast float %8093, %8093
  %8098 = fdiv fast float 1.000000e+00, %8097
  %8099 = fmul fast float %8096, %8098
  %8100 = fmul fast float %8099, %7573
  %8101 = fmul fast float %8099, %7574
  %8102 = fmul fast float %8099, %7575
  %8103 = fadd fast float %8100, %8089
  %8104 = fadd fast float %8101, %8090
  %8105 = fadd fast float %8102, %8091
  %8106 = fsub fast float 1.000000e+00, %8083
  %8107 = fsub fast float 1.000000e+00, %8084
  %8108 = fsub fast float 1.000000e+00, %8085
  %8109 = fmul fast float %8103, %8106
  %8110 = fmul fast float %8104, %8107
  %8111 = fmul fast float %8105, %8108
  br label %8112

; <label>:8112                                    ; preds = %8073, %8024
  %8113 = phi float [ %8050, %8024 ], [ %8109, %8073 ]
  %8114 = phi float [ %8051, %8024 ], [ %8110, %8073 ]
  %8115 = phi float [ %8052, %8024 ], [ %8111, %8073 ]
  %8116 = phi float [ %8039, %8024 ], [ %8083, %8073 ]
  %8117 = phi float [ %8039, %8024 ], [ %8084, %8073 ]
  %8118 = phi float [ %8039, %8024 ], [ %8085, %8073 ]
  br i1 %7605, label %8119, label %8317, !dx.controlflow.hints !167

; <label>:8119                                    ; preds = %8112
  %8120 = extractvalue %dx.types.CBufRet.f32 %8018, 0
  %8121 = fmul fast float %8120, %8020
  %8122 = fsub fast float %8015, %8113
  %8123 = fsub fast float %8016, %8114
  %8124 = fsub fast float %8017, %8115
  %8125 = fmul fast float %8121, %8122
  %8126 = fmul fast float %8121, %8123
  %8127 = fmul fast float %8121, %8124
  %8128 = fadd fast float %8125, %8113
  %8129 = fadd fast float %8126, %8114
  %8130 = fadd fast float %8127, %8115
  %8131 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8116)  ; FMax(a,b)
  %8132 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8117)  ; FMax(a,b)
  %8133 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8118)  ; FMax(a,b)
  %8134 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8014)  ; FMax(a,b)
  %8135 = call float @dx.op.binary.f32(i32 35, float %8013, float %8023)  ; FMax(a,b)
  %8136 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8135)  ; FMax(a,b)
  %8137 = fdiv fast float %8013, %8136
  %8138 = call float @dx.op.unary.f32(i32 7, float %8137)  ; Saturate(value)
  %8139 = fdiv fast float %8023, %8136
  %8140 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8141 = fcmp fast une float %8134, 1.000000e+00
  br i1 %8141, label %8142, label %8155, !dx.controlflow.hints !168

; <label>:8142                                    ; preds = %8119
  %8143 = call float @dx.op.unary.f32(i32 23, float %8134)  ; Log(value)
  %8144 = fmul fast float %8143, 0x3FE62E4300000000
  %8145 = fmul fast float %8015, %8144
  %8146 = fsub fast float -0.000000e+00, %8145
  %8147 = fmul fast float %8016, %8144
  %8148 = fsub fast float -0.000000e+00, %8147
  %8149 = fmul fast float %8017, %8144
  %8150 = fsub fast float -0.000000e+00, %8149
  %8151 = fsub fast float 1.000000e+00, %8134
  %8152 = fdiv fast float %8146, %8151
  %8153 = fdiv fast float %8148, %8151
  %8154 = fdiv fast float %8150, %8151
  br label %8155

; <label>:8155                                    ; preds = %8142, %8119
  %8156 = phi float [ %8152, %8142 ], [ %8015, %8119 ]
  %8157 = phi float [ %8153, %8142 ], [ %8016, %8119 ]
  %8158 = phi float [ %8154, %8142 ], [ %8017, %8119 ]
  %8159 = phi float [ %8144, %8142 ], [ 0.000000e+00, %8119 ]
  %8160 = fcmp fast une float %8131, 1.000000e+00
  br i1 %8160, label %8161, label %8168, !dx.controlflow.hints !169

; <label>:8161                                    ; preds = %8155
  %8162 = call float @dx.op.unary.f32(i32 23, float %8131)  ; Log(value)
  %8163 = fmul fast float %8162, 0x3FE62E4300000000
  %8164 = fmul fast float %8128, %8163
  %8165 = fsub fast float -0.000000e+00, %8164
  %8166 = fsub fast float 1.000000e+00, %8131
  %8167 = fdiv fast float %8165, %8166
  br label %8168

; <label>:8168                                    ; preds = %8161, %8155
  %8169 = phi float [ %8167, %8161 ], [ %8128, %8155 ]
  %8170 = phi float [ %8163, %8161 ], [ 0.000000e+00, %8155 ]
  %8171 = fcmp fast une float %8132, 1.000000e+00
  br i1 %8171, label %8172, label %8179, !dx.controlflow.hints !169

; <label>:8172                                    ; preds = %8168
  %8173 = call float @dx.op.unary.f32(i32 23, float %8132)  ; Log(value)
  %8174 = fmul fast float %8173, 0x3FE62E4300000000
  %8175 = fmul fast float %8129, %8174
  %8176 = fsub fast float -0.000000e+00, %8175
  %8177 = fsub fast float 1.000000e+00, %8132
  %8178 = fdiv fast float %8176, %8177
  br label %8179

; <label>:8179                                    ; preds = %8172, %8168
  %8180 = phi float [ %8178, %8172 ], [ %8129, %8168 ]
  %8181 = phi float [ %8174, %8172 ], [ 0.000000e+00, %8168 ]
  %8182 = fcmp fast une float %8133, 1.000000e+00
  br i1 %8182, label %8183, label %8190, !dx.controlflow.hints !169

; <label>:8183                                    ; preds = %8179
  %8184 = call float @dx.op.unary.f32(i32 23, float %8133)  ; Log(value)
  %8185 = fmul fast float %8184, 0x3FE62E4300000000
  %8186 = fmul fast float %8130, %8185
  %8187 = fsub fast float -0.000000e+00, %8186
  %8188 = fsub fast float 1.000000e+00, %8133
  %8189 = fdiv fast float %8187, %8188
  br label %8190

; <label>:8190                                    ; preds = %8183, %8179
  %8191 = phi float [ %8189, %8183 ], [ %8130, %8179 ]
  %8192 = phi float [ %8185, %8183 ], [ 0.000000e+00, %8179 ]
  %8193 = fmul fast float %8156, %8140
  %8194 = fmul fast float %8157, %8140
  %8195 = fmul fast float %8158, %8140
  %8196 = fmul fast float %8159, %8140
  %8197 = fmul fast float %8169, %8138
  %8198 = fmul fast float %8180, %8138
  %8199 = fmul fast float %8191, %8138
  %8200 = fmul fast float %8170, %8138
  %8201 = fmul fast float %8181, %8138
  %8202 = fmul fast float %8192, %8138
  %8203 = fadd fast float %8197, %8193
  %8204 = fadd fast float %8198, %8194
  %8205 = fadd fast float %8199, %8195
  %8206 = fadd fast float %8200, %8196
  %8207 = fadd fast float %8201, %8196
  %8208 = fadd fast float %8202, %8196
  %8209 = fcmp fast une float %8206, 0.000000e+00
  br i1 %8209, label %8210, label %8217, !dx.controlflow.hints !170

; <label>:8210                                    ; preds = %8190
  %8211 = fmul fast float %8206, 0x3FF7154760000000
  %8212 = call float @dx.op.unary.f32(i32 21, float %8211)  ; Exp(value)
  %8213 = fsub fast float 1.000000e+00, %8212
  %8214 = fmul fast float %8203, %8213
  %8215 = fsub fast float -0.000000e+00, %8214
  %8216 = fdiv fast float %8215, %8206
  br label %8217

; <label>:8217                                    ; preds = %8210, %8190
  %8218 = phi float [ %8212, %8210 ], [ 1.000000e+00, %8190 ]
  %8219 = phi float [ %8216, %8210 ], [ %8203, %8190 ]
  %8220 = fcmp fast une float %8207, 0.000000e+00
  br i1 %8220, label %8221, label %8228, !dx.controlflow.hints !170

; <label>:8221                                    ; preds = %8217
  %8222 = fmul fast float %8207, 0x3FF7154760000000
  %8223 = call float @dx.op.unary.f32(i32 21, float %8222)  ; Exp(value)
  %8224 = fsub fast float 1.000000e+00, %8223
  %8225 = fmul fast float %8204, %8224
  %8226 = fsub fast float -0.000000e+00, %8225
  %8227 = fdiv fast float %8226, %8207
  br label %8228

; <label>:8228                                    ; preds = %8221, %8217
  %8229 = phi float [ %8223, %8221 ], [ 1.000000e+00, %8217 ]
  %8230 = phi float [ %8227, %8221 ], [ %8204, %8217 ]
  %8231 = fcmp fast une float %8208, 0.000000e+00
  br i1 %8231, label %8232, label %8239, !dx.controlflow.hints !170

; <label>:8232                                    ; preds = %8228
  %8233 = fmul fast float %8208, 0x3FF7154760000000
  %8234 = call float @dx.op.unary.f32(i32 21, float %8233)  ; Exp(value)
  %8235 = fsub fast float 1.000000e+00, %8234
  %8236 = fmul fast float %8205, %8235
  %8237 = fsub fast float -0.000000e+00, %8236
  %8238 = fdiv fast float %8237, %8208
  br label %8239

; <label>:8239                                    ; preds = %8232, %8228
  %8240 = phi float [ %8234, %8232 ], [ 1.000000e+00, %8228 ]
  %8241 = phi float [ %8238, %8232 ], [ %8205, %8228 ]
  %8242 = fcmp fast ogt float %8138, %8140
  br i1 %8242, label %8243, label %8263

; <label>:8243                                    ; preds = %8239
  %8244 = fsub fast float 1.000000e+00, %8140
  %8245 = fmul fast float %8156, %8244
  %8246 = fmul fast float %8157, %8244
  %8247 = fmul fast float %8158, %8244
  %8248 = fmul fast float %8159, %8244
  %8249 = fcmp fast une float %8248, 0.000000e+00
  br i1 %8249, label %8250, label %8301, !dx.controlflow.hints !171

; <label>:8250                                    ; preds = %8243
  %8251 = fmul fast float %8248, 0x3FF7154760000000
  %8252 = call float @dx.op.unary.f32(i32 21, float %8251)  ; Exp(value)
  %8253 = fsub fast float 1.000000e+00, %8252
  %8254 = fmul fast float %8245, %8253
  %8255 = fsub fast float -0.000000e+00, %8254
  %8256 = fmul fast float %8246, %8253
  %8257 = fsub fast float -0.000000e+00, %8256
  %8258 = fmul fast float %8247, %8253
  %8259 = fsub fast float -0.000000e+00, %8258
  %8260 = fdiv fast float %8255, %8248
  %8261 = fdiv fast float %8257, %8248
  %8262 = fdiv fast float %8259, %8248
  br label %8301

; <label>:8263                                    ; preds = %8239
  %8264 = fsub fast float 1.000000e+00, %8138
  %8265 = fmul fast float %8169, %8264
  %8266 = fmul fast float %8180, %8264
  %8267 = fmul fast float %8191, %8264
  %8268 = fmul fast float %8170, %8264
  %8269 = fmul fast float %8181, %8264
  %8270 = fmul fast float %8192, %8264
  %8271 = fcmp fast une float %8268, 0.000000e+00
  br i1 %8271, label %8272, label %8279, !dx.controlflow.hints !170

; <label>:8272                                    ; preds = %8263
  %8273 = fmul fast float %8268, 0x3FF7154760000000
  %8274 = call float @dx.op.unary.f32(i32 21, float %8273)  ; Exp(value)
  %8275 = fsub fast float 1.000000e+00, %8274
  %8276 = fmul fast float %8265, %8275
  %8277 = fsub fast float -0.000000e+00, %8276
  %8278 = fdiv fast float %8277, %8268
  br label %8279

; <label>:8279                                    ; preds = %8272, %8263
  %8280 = phi float [ %8278, %8272 ], [ %8265, %8263 ]
  %8281 = phi float [ %8274, %8272 ], [ 1.000000e+00, %8263 ]
  %8282 = fcmp fast une float %8269, 0.000000e+00
  br i1 %8282, label %8283, label %8290, !dx.controlflow.hints !170

; <label>:8283                                    ; preds = %8279
  %8284 = fmul fast float %8269, 0x3FF7154760000000
  %8285 = call float @dx.op.unary.f32(i32 21, float %8284)  ; Exp(value)
  %8286 = fsub fast float 1.000000e+00, %8285
  %8287 = fmul fast float %8266, %8286
  %8288 = fsub fast float -0.000000e+00, %8287
  %8289 = fdiv fast float %8288, %8269
  br label %8290

; <label>:8290                                    ; preds = %8283, %8279
  %8291 = phi float [ %8289, %8283 ], [ %8266, %8279 ]
  %8292 = phi float [ %8285, %8283 ], [ 1.000000e+00, %8279 ]
  %8293 = fcmp fast une float %8270, 0.000000e+00
  br i1 %8293, label %8294, label %8301, !dx.controlflow.hints !170

; <label>:8294                                    ; preds = %8290
  %8295 = fmul fast float %8270, 0x3FF7154760000000
  %8296 = call float @dx.op.unary.f32(i32 21, float %8295)  ; Exp(value)
  %8297 = fsub fast float 1.000000e+00, %8296
  %8298 = fmul fast float %8267, %8297
  %8299 = fsub fast float -0.000000e+00, %8298
  %8300 = fdiv fast float %8299, %8270
  br label %8301

; <label>:8301                                    ; preds = %8294, %8290, %8250, %8243
  %8302 = phi float [ %8300, %8294 ], [ %8262, %8250 ], [ %8247, %8243 ], [ %8267, %8290 ]
  %8303 = phi float [ %8291, %8294 ], [ %8261, %8250 ], [ %8246, %8243 ], [ %8291, %8290 ]
  %8304 = phi float [ %8280, %8294 ], [ %8260, %8250 ], [ %8245, %8243 ], [ %8280, %8290 ]
  %8305 = phi float [ %8296, %8294 ], [ %8252, %8250 ], [ 1.000000e+00, %8243 ], [ 1.000000e+00, %8290 ]
  %8306 = phi float [ %8292, %8294 ], [ %8252, %8250 ], [ 1.000000e+00, %8243 ], [ %8292, %8290 ]
  %8307 = phi float [ %8281, %8294 ], [ %8252, %8250 ], [ 1.000000e+00, %8243 ], [ %8281, %8290 ]
  %8308 = fmul fast float %8307, %8219
  %8309 = fmul fast float %8306, %8230
  %8310 = fmul fast float %8305, %8241
  %8311 = fadd fast float %8308, %8304
  %8312 = fadd fast float %8309, %8303
  %8313 = fadd fast float %8310, %8302
  %8314 = fmul fast float %8307, %8218
  %8315 = fmul fast float %8306, %8229
  %8316 = fmul fast float %8305, %8240
  br label %8317

; <label>:8317                                    ; preds = %8301, %8112
  %8318 = phi float [ %8316, %8301 ], [ %8118, %8112 ]
  %8319 = phi float [ %8315, %8301 ], [ %8117, %8112 ]
  %8320 = phi float [ %8314, %8301 ], [ %8116, %8112 ]
  %8321 = phi float [ %8313, %8301 ], [ %8115, %8112 ]
  %8322 = phi float [ %8312, %8301 ], [ %8114, %8112 ]
  %8323 = phi float [ %8311, %8301 ], [ %8113, %8112 ]
  %8324 = fmul fast float %8323, %7269
  %8325 = fmul fast float %8322, %7269
  %8326 = fmul fast float %8321, %7269
  %8327 = fmul fast float %8320, %7560
  %8328 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8319, float %8318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8329 = call float @dx.op.dot3.f32(i32 55, float %8324, float %8325, float %8326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8330 = select i1 %267, float %8328, float %8320
  %8331 = select i1 %267, float %8328, float %8319
  %8332 = select i1 %267, float 1.000000e+00, float %8318
  %8333 = select i1 %267, float %8329, float %8324
  %8334 = select i1 %267, float 0.000000e+00, float %8325
  %8335 = select i1 %267, float 0.000000e+00, float %8326
  %8336 = fmul fast float %8330, %7554
  %8337 = fmul fast float %8331, %7555
  %8338 = fmul fast float %8332, %7556
  %8339 = fadd fast float %8336, %8333
  %8340 = fadd fast float %8337, %8334
  %8341 = fadd fast float %8335, %8338
  %8342 = fmul fast float %8330, %7557
  %8343 = fmul fast float %8331, %7558
  %8344 = fmul fast float %8332, %7559
  %8345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.i32 %8345, 0
  %8347 = icmp eq i32 %8346, 0
  br i1 %8347, label %8715, label %8348, !dx.controlflow.hints !172

; <label>:8348                                    ; preds = %8317
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 3
  %8352 = fmul fast float %8350, %108
  %8353 = fmul fast float %8351, %109
  %8354 = fmul fast float %8352, 2.000000e+00
  %8355 = fmul fast float %8353, 2.000000e+00
  %8356 = fsub fast float 1.000000e+00, %8354
  %8357 = fsub fast float 1.000000e+00, %8355
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8362 = fmul fast float %8356, %8359
  %8363 = fmul fast float %8356, %8360
  %8364 = fmul fast float %8356, %8361
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 0
  %8367 = extractvalue %dx.types.CBufRet.f32 %8365, 1
  %8368 = extractvalue %dx.types.CBufRet.f32 %8365, 2
  %8369 = fmul fast float %8357, %8366
  %8370 = fmul fast float %8357, %8367
  %8371 = fmul fast float %8357, %8368
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 0
  %8374 = extractvalue %dx.types.CBufRet.f32 %8372, 1
  %8375 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8376 = fadd fast float %8369, %8373
  %8377 = fadd fast float %8376, %8362
  %8378 = fadd fast float %8370, %8374
  %8379 = fadd fast float %8378, %8363
  %8380 = fadd fast float %8371, %8375
  %8381 = fadd fast float %8380, %8364
  %8382 = fmul fast float %8377, %7553
  %8383 = fmul fast float %8379, %7553
  %8384 = fmul fast float %8381, %7553
  %8385 = fmul fast float %8382, %8382
  %8386 = fmul fast float %8383, %8383
  %8387 = fadd fast float %8385, %8386
  %8388 = fmul fast float %8384, %8384
  %8389 = fadd fast float %8387, %8388
  %8390 = call float @dx.op.unary.f32(i32 24, float %8389)  ; Sqrt(value)
  %8391 = extractvalue %dx.types.CBufRet.f32 %7280, 0
  %8392 = fsub fast float %8390, %8391
  %8393 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %8394 = fmul fast float %8392, %8393
  %8395 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8396 = fadd fast float %8395, -5.000000e-01
  %8397 = fmul fast float %8396, 2.000000e+00
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 2
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8397)  ; FMin(a,b)
  %8401 = fsub fast float -0.000000e+00, %8399
  %8402 = fcmp fast ogt float %8400, %8401
  br i1 %8402, label %8403, label %8715, !dx.controlflow.hints !173

; <label>:8403                                    ; preds = %8348
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8406 = fcmp fast ogt float %8405, 0.000000e+00
  br i1 %8406, label %8407, label %8482, !dx.controlflow.hints !174

; <label>:8407                                    ; preds = %8403
  %8408 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8409 = extractvalue %dx.types.Dimensions %8408, 0
  %8410 = sitofp i32 %8409 to float
  %8411 = extractvalue %dx.types.Dimensions %8408, 1
  %8412 = sitofp i32 %8411 to float
  %8413 = fmul fast float %8352, %8410
  %8414 = fmul fast float %8353, %8412
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = fptoui float %8417 to i32
  %8419 = fptoui float %8413 to i32
  %8420 = fptoui float %8414 to i32
  %8421 = and i32 %8418, 31
  %8422 = lshr i32 %8419, %8421
  %8423 = lshr i32 %8420, %8421
  %8424 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8418, i32 %8422, i32 %8423, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8425 = extractvalue %dx.types.ResRet.f32 %8424, 0
  %8426 = fcmp fast olt float %8425, -1.000000e+00
  %8427 = fcmp fast ogt float %8425, -1.000000e+00
  %8428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8429 = extractvalue %dx.types.CBufRet.f32 %8428, 1
  %8430 = select i1 %8427, float %8429, float 1.000000e+00
  %8431 = fadd fast float %8425, 1.000000e+00
  %8432 = fmul fast float %8430, %8431
  %8433 = call float @dx.op.unary.f32(i32 6, float %8432)  ; FAbs(value)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8428, 3
  %8435 = fcmp fast oge float %8433, %8434
  %8436 = select i1 %8435, float 0x4197782600000000, float %8433
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = select i1 %8426, float %8438, float %8359
  %8442 = select i1 %8426, float %8439, float %8360
  %8443 = select i1 %8426, float %8440, float %8361
  %8444 = fmul fast float %8441, %8356
  %8445 = fmul fast float %8442, %8356
  %8446 = fmul fast float %8443, %8356
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = select i1 %8426, float %8448, float %8366
  %8452 = select i1 %8426, float %8449, float %8367
  %8453 = select i1 %8426, float %8450, float %8368
  %8454 = fmul fast float %8451, %8357
  %8455 = fmul fast float %8452, %8357
  %8456 = fmul fast float %8453, %8357
  %8457 = fadd fast float %8454, %8444
  %8458 = fadd fast float %8455, %8445
  %8459 = fadd fast float %8456, %8446
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8464 = select i1 %8426, float %8461, float %8373
  %8465 = select i1 %8426, float %8462, float %8374
  %8466 = select i1 %8426, float %8463, float %8375
  %8467 = fadd fast float %8457, %8464
  %8468 = fadd fast float %8458, %8465
  %8469 = fadd fast float %8459, %8466
  %8470 = fmul fast float %8467, %8436
  %8471 = fmul fast float %8468, %8436
  %8472 = fmul fast float %8469, %8436
  %8473 = fmul fast float %8470, %8470
  %8474 = fmul fast float %8471, %8471
  %8475 = fadd fast float %8473, %8474
  %8476 = fmul fast float %8472, %8472
  %8477 = fadd fast float %8475, %8476
  %8478 = call float @dx.op.unary.f32(i32 24, float %8477)  ; Sqrt(value)
  %8479 = fsub fast float %8478, %8391
  %8480 = fmul fast float %8479, %8393
  %8481 = call float @dx.op.unary.f32(i32 7, float %8480)  ; Saturate(value)
  br label %8482

; <label>:8482                                    ; preds = %8407, %8403
  %8483 = phi float [ %8481, %8407 ], [ 1.000000e+00, %8403 ]
  %8484 = fmul fast float %8400, 5.000000e-01
  %8485 = fadd fast float %8484, 5.000000e-01
  %8486 = call float @dx.op.unary.f32(i32 22, float %8485)  ; Frc(value)
  %8487 = call float @dx.op.unary.f32(i32 27, float %8486)  ; Round_ni(value)
  %8488 = call float @dx.op.unary.f32(i32 22, float %8486)  ; Frc(value)
  %8489 = fmul fast float %8488, 2.000000e+00
  %8490 = fadd fast float %8489, -1.000000e+00
  %8491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8352, float %8353, float %8487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8492 = extractvalue %dx.types.ResRet.f32 %8491, 0
  %8493 = extractvalue %dx.types.ResRet.f32 %8491, 1
  %8494 = extractvalue %dx.types.ResRet.f32 %8491, 2
  %8495 = extractvalue %dx.types.ResRet.f32 %8491, 3
  %8496 = fadd fast float %8492, -5.000000e-01
  %8497 = fadd fast float %8494, -5.000000e-01
  %8498 = fmul fast float %8496, 0xBFD5555560000000
  %8499 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8497, float %8498)  ; FMad(a,b,c)
  %8500 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8493, float 0.000000e+00)  ; FMad(a,b,c)
  %8501 = fadd fast float %8500, %8495
  %8502 = fmul fast float %8496, -7.500000e-01
  %8503 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8497, float %8502)  ; FMad(a,b,c)
  %8504 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8493, float 0.000000e+00)  ; FMad(a,b,c)
  %8505 = fadd fast float %8504, %8495
  %8506 = call float @dx.op.binary.f32(i32 35, float %8499, float -1.000000e+00)  ; FMax(a,b)
  %8507 = call float @dx.op.binary.f32(i32 35, float %8501, float -1.000000e+00)  ; FMax(a,b)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8503, float -1.000000e+00)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 35, float %8505, float -1.000000e+00)  ; FMax(a,b)
  %8510 = call float @dx.op.binary.f32(i32 36, float %8506, float 1.000000e+00)  ; FMin(a,b)
  %8511 = call float @dx.op.binary.f32(i32 36, float %8507, float 1.000000e+00)  ; FMin(a,b)
  %8512 = call float @dx.op.binary.f32(i32 36, float %8508, float 1.000000e+00)  ; FMin(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8509, float 1.000000e+00)  ; FMin(a,b)
  %8514 = fcmp fast olt float %8510, 0x3FEFFF8020000000
  br i1 %8514, label %8515, label %8630, !dx.controlflow.hints !175

; <label>:8515                                    ; preds = %8482
  %8516 = extractvalue %dx.types.CBufRet.f32 %8398, 3
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8521 = extractvalue %dx.types.CBufRet.f32 %8517, 3
  %8522 = fsub fast float %8518, %8510
  %8523 = fsub fast float %8519, %8511
  %8524 = fsub fast float %8520, %8512
  %8525 = fsub fast float %8521, %8513
  %8526 = fmul fast float %8522, %8516
  %8527 = fmul fast float %8523, %8516
  %8528 = fmul fast float %8524, %8516
  %8529 = fmul fast float %8525, %8516
  %8530 = fadd fast float %8526, %8510
  %8531 = fadd fast float %8527, %8511
  %8532 = fsub fast float -0.000000e+00, %8531
  %8533 = fadd fast float %8528, %8512
  %8534 = fadd fast float %8529, %8513
  %8535 = fmul fast float %8530, %8530
  %8536 = fsub fast float %8531, %8535
  %8537 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8536)  ; FMax(a,b)
  %8538 = fdiv fast float 1.000000e+00, %8537
  %8539 = fmul fast float %8531, %8530
  %8540 = fsub fast float %8533, %8539
  %8541 = fsub fast float %8490, %8530
  %8542 = fmul fast float %8490, %8490
  %8543 = fsub fast float %8542, %8531
  %8544 = fmul fast float %8541, %8538
  %8545 = fmul fast float %8544, %8540
  %8546 = fsub fast float %8543, %8545
  %8547 = fmul fast float %8531, %8531
  %8548 = fsub fast float %8534, %8547
  %8549 = fmul fast float %8540, %8540
  %8550 = fmul fast float %8549, %8538
  %8551 = fsub fast float %8548, %8550
  %8552 = fdiv fast float %8546, %8551
  %8553 = fmul fast float %8540, %8552
  %8554 = fsub fast float %8541, %8553
  %8555 = fmul fast float %8554, %8538
  %8556 = fmul fast float %8555, %8530
  %8557 = fsub fast float 1.000000e+00, %8556
  %8558 = fmul fast float %8531, %8552
  %8559 = fsub fast float %8557, %8558
  %8560 = fmul fast float %8555, %8555
  %8561 = fmul fast float %8552, 4.000000e+00
  %8562 = fmul fast float %8561, %8559
  %8563 = fsub fast float %8560, %8562
  %8564 = call float @dx.op.unary.f32(i32 24, float %8563)  ; Sqrt(value)
  %8565 = fcmp fast oge float %8555, 0.000000e+00
  %8566 = fsub fast float -0.000000e+00, %8564
  %8567 = select i1 %8565, float %8566, float %8564
  %8568 = fsub fast float %8567, %8555
  %8569 = fdiv fast float %8568, %8552
  %8570 = fdiv fast float %8559, %8568
  %8571 = fmul fast float %8569, 5.000000e-01
  %8572 = fmul fast float %8570, 2.000000e+00
  %8573 = select i1 %8565, float %8571, float %8572
  %8574 = select i1 %8565, float %8572, float %8571
  %8575 = call float @dx.op.binary.f32(i32 35, float %8573, float %8574)  ; FMax(a,b)
  %8576 = call float @dx.op.binary.f32(i32 36, float %8573, float %8574)  ; FMin(a,b)
  %8577 = fcmp fast ogt float %8490, %8576
  br i1 %8577, label %8578, label %8588

; <label>:8578                                    ; preds = %8515
  %8579 = fsub fast float %8490, %8576
  %8580 = fsub fast float %8575, %8576
  %8581 = fmul fast float %8579, %8580
  %8582 = fmul fast float %8575, %8490
  %8583 = fadd fast float %8575, %8490
  %8584 = fmul fast float %8583, %8530
  %8585 = fadd fast float %8582, %8531
  %8586 = fsub fast float %8585, %8584
  %8587 = fdiv fast float %8586, %8581
  br label %8588

; <label>:8588                                    ; preds = %8578, %8515
  %8589 = phi float [ %8587, %8578 ], [ 0.000000e+00, %8515 ]
  %8590 = fcmp fast ogt float %8490, %8575
  %8591 = fsub fast float %8490, %8575
  br i1 %8590, label %8592, label %8602

; <label>:8592                                    ; preds = %8588
  %8593 = fsub fast float %8575, %8576
  %8594 = fmul fast float %8593, %8591
  %8595 = fmul fast float %8576, %8490
  %8596 = fadd fast float %8576, %8490
  %8597 = fmul fast float %8596, %8530
  %8598 = fsub fast float %8532, %8595
  %8599 = fadd fast float %8598, %8597
  %8600 = fdiv fast float %8599, %8594
  %8601 = fadd fast float %8600, %8589
  br label %8602

; <label>:8602                                    ; preds = %8592, %8588
  %8603 = phi float [ %8601, %8592 ], [ %8589, %8588 ]
  %8604 = fsub fast float %8490, %8576
  %8605 = fmul fast float %8604, %8591
  %8606 = fmul fast float %8576, %8575
  %8607 = fadd fast float %8576, %8575
  %8608 = fmul fast float %8607, %8530
  %8609 = fadd fast float %8606, %8531
  %8610 = fsub fast float %8609, %8608
  %8611 = fdiv fast float %8610, %8605
  %8612 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8613 = fcmp fast oeq float %7281, 0.000000e+00
  %8614 = extractvalue %dx.types.CBufRet.f32 %8398, 0
  %8615 = fcmp fast oeq float %8614, 0.000000e+00
  %8616 = or i1 %8613, %8615
  %8617 = fmul fast float %8614, 2.000000e+00
  %8618 = fadd fast float %8399, %8400
  %8619 = fdiv fast float %8618, %8617
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = fmul fast float %8620, 2.000000e+00
  %8622 = fsub fast float 3.000000e+00, %8621
  %8623 = fmul fast float %8620, %8620
  %8624 = fmul fast float %8623, %8622
  %8625 = select i1 %8616, float 1.000000e+00, float %8624
  %8626 = fmul fast float %8611, %7281
  %8627 = fadd fast float %8612, %8626
  %8628 = call float @dx.op.unary.f32(i32 7, float %8627)  ; Saturate(value)
  %8629 = fmul fast float %8625, %8628
  br label %8630

; <label>:8630                                    ; preds = %8602, %8482
  %8631 = phi float [ %8629, %8602 ], [ 0.000000e+00, %8482 ]
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8352, float %8353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.i32 %8635, 2
  %8637 = icmp eq i32 %8636, 0
  br i1 %8637, label %8643, label %8638

; <label>:8638                                    ; preds = %8630
  %8639 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8640 = fadd fast float %8634, -1.000000e+00
  %8641 = fmul fast float %8639, %8640
  %8642 = fadd fast float %8641, 1.000000e+00
  br label %8643

; <label>:8643                                    ; preds = %8638, %8630
  %8644 = phi float [ %8642, %8638 ], [ %8632, %8630 ]
  br i1 %8406, label %8645, label %8663

; <label>:8645                                    ; preds = %8643
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8648 = fsub fast float %8483, %8647
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fsub fast float %8483, %8405
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = fsub fast float %8649, %8651
  %8653 = fsub fast float %8485, %8651
  %8654 = fdiv fast float %8653, %8652
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = fmul fast float %8655, 2.000000e+00
  %8657 = fsub fast float 3.000000e+00, %8656
  %8658 = fsub fast float %8634, %8644
  %8659 = fmul fast float %8655, %8655
  %8660 = fmul fast float %8659, %8658
  %8661 = fmul fast float %8660, %8657
  %8662 = fadd fast float %8661, %8644
  br label %8663

; <label>:8663                                    ; preds = %8645, %8643
  %8664 = phi float [ %8662, %8645 ], [ %8644, %8643 ]
  %8665 = call float @dx.op.binary.f32(i32 35, float %8634, float %8664)  ; FMax(a,b)
  %8666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.i32 %8666, 2
  %8668 = and i32 %8667, 1
  %8669 = icmp eq i32 %8668, 0
  %8670 = fcmp fast une float %8665, 1.000000e+00
  %8671 = and i1 %8670, %8669
  br i1 %8671, label %8672, label %8691

; <label>:8672                                    ; preds = %8663
  %8673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8352, float %8353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8674 = extractvalue %dx.types.ResRet.f32 %8673, 0
  %8675 = extractvalue %dx.types.ResRet.f32 %8673, 1
  %8676 = extractvalue %dx.types.ResRet.f32 %8673, 2
  %8677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8677, 1
  %8679 = fmul fast float %8678, %8674
  %8680 = fmul fast float %8678, %8675
  %8681 = fmul fast float %8678, %8676
  %8682 = fcmp fast ogt float %8634, 0x3FEFFF2E40000000
  %8683 = fsub fast float 1.000000e+00, %8665
  %8684 = fsub fast float 1.000000e+00, %8634
  %8685 = fdiv fast float %8683, %8684
  %8686 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8687 = select i1 %8682, float 0.000000e+00, float %8686
  %8688 = fmul fast float %8679, %8687
  %8689 = fmul fast float %8680, %8687
  %8690 = fmul fast float %8681, %8687
  br label %8691

; <label>:8691                                    ; preds = %8672, %8663
  %8692 = phi float [ 0.000000e+00, %8663 ], [ %8688, %8672 ]
  %8693 = phi float [ 0.000000e+00, %8663 ], [ %8689, %8672 ]
  %8694 = phi float [ 0.000000e+00, %8663 ], [ %8690, %8672 ]
  %8695 = fmul fast float %8692, %7269
  %8696 = fmul fast float %8693, %7269
  %8697 = fmul fast float %8694, %7269
  %8698 = fmul fast float %8665, %8327
  %8699 = call float @dx.op.dot3.f32(i32 55, float %8665, float %8665, float %8665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8700 = call float @dx.op.dot3.f32(i32 55, float %8695, float %8696, float %8697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8701 = select i1 %267, float %8699, float %8665
  %8702 = select i1 %267, float 1.000000e+00, float %8665
  %8703 = select i1 %267, float %8700, float %8695
  %8704 = select i1 %267, float 0.000000e+00, float %8696
  %8705 = select i1 %267, float 0.000000e+00, float %8697
  %8706 = fmul fast float %8701, %8339
  %8707 = fmul fast float %8701, %8340
  %8708 = fmul fast float %8702, %8341
  %8709 = fadd fast float %8706, %8703
  %8710 = fadd fast float %8707, %8704
  %8711 = fadd fast float %8705, %8708
  %8712 = fmul fast float %8701, %8342
  %8713 = fmul fast float %8701, %8343
  %8714 = fmul fast float %8702, %8344
  br label %8715

; <label>:8715                                    ; preds = %8691, %8348, %8317, %7549
  %8716 = phi float [ %7554, %7549 ], [ %8339, %8317 ], [ %8709, %8691 ], [ %8339, %8348 ]
  %8717 = phi float [ %7555, %7549 ], [ %8340, %8317 ], [ %8710, %8691 ], [ %8340, %8348 ]
  %8718 = phi float [ %7556, %7549 ], [ %8341, %8317 ], [ %8711, %8691 ], [ %8341, %8348 ]
  %8719 = phi float [ %7557, %7549 ], [ %8342, %8317 ], [ %8712, %8691 ], [ %8342, %8348 ]
  %8720 = phi float [ %7558, %7549 ], [ %8343, %8317 ], [ %8713, %8691 ], [ %8343, %8348 ]
  %8721 = phi float [ %7559, %7549 ], [ %8344, %8317 ], [ %8714, %8691 ], [ %8344, %8348 ]
  %8722 = phi float [ %7560, %7549 ], [ %8327, %8317 ], [ %8698, %8691 ], [ %8327, %8348 ]
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8725 = extractvalue %dx.types.CBufRet.f32 %8723, 3
  %8726 = fmul fast float %8724, %108
  %8727 = fmul fast float %8725, %109
  %8728 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8729 = call float @dx.op.unary.f32(i32 7, float %8727)  ; Saturate(value)
  %8730 = select i1 %7291, i32 2, i32 0
  %8731 = or i32 %8730, 1
  %8732 = uitofp i32 %8731 to float
  %8733 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8728, float %8729, float %8732, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8734 = extractvalue %dx.types.ResRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.ResRet.f32 %8733, 1
  %8736 = extractvalue %dx.types.ResRet.f32 %8733, 2
  %8737 = extractvalue %dx.types.ResRet.f32 %8733, 3
  %8738 = add nuw nsw i32 %8730, 2
  %8739 = uitofp i32 %8738 to float
  %8740 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8728, float %8729, float %8739, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8741 = extractvalue %dx.types.ResRet.f32 %8740, 0
  %8742 = extractvalue %dx.types.ResRet.f32 %8740, 1
  %8743 = extractvalue %dx.types.ResRet.f32 %8740, 2
  %8744 = extractvalue %dx.types.ResRet.f32 %8740, 3
  %8745 = call float @dx.op.binary.f32(i32 35, float %8735, float %8736)  ; FMax(a,b)
  %8746 = call float @dx.op.binary.f32(i32 35, float %8734, float %8745)  ; FMax(a,b)
  %8747 = call float @dx.op.binary.f32(i32 35, float %8746, float %8737)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8742, float %8743)  ; FMin(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8741, float %8748)  ; FMin(a,b)
  %8750 = call float @dx.op.binary.f32(i32 36, float %8749, float %8744)  ; FMin(a,b)
  %8751 = fmul fast float %8747, 2.550000e+02
  %8752 = fadd fast float %8751, 0x3F70101020000000
  %8753 = fptoui float %8752 to i32
  %8754 = fmul fast float %8750, 2.550000e+02
  %8755 = fadd fast float %8754, 0x3F70101020000000
  %8756 = fptoui float %8755 to i32
  %8757 = icmp ult i32 %8753, %8756
  br i1 %8757, label %8758, label %8927

; <label>:8758                                    ; preds = %8715
  %8759 = fcmp fast ogt float %98, 9.843750e-01
  %8760 = fadd fast float %7553, -4.000000e+00
  %8761 = select i1 %8759, float -4.000000e+00, float %8760
  %8762 = call float @dx.op.binary.f32(i32 35, float %8761, float 0.000000e+00)  ; FMax(a,b)
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 0
  %8765 = fadd fast float %8764, %8762
  %8766 = extractvalue %dx.types.CBufRet.f32 %8763, 2
  %8767 = fmul fast float %8765, %8766
  %8768 = call float @dx.op.unary.f32(i32 23, float %8767)  ; Log(value)
  %8769 = extractvalue %dx.types.CBufRet.f32 %8763, 3
  %8770 = fmul fast float %8769, %8768
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 2
  %8773 = fmul fast float %8770, %8772
  %8774 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8775 = uitofp i32 %8753 to float
  %8776 = uitofp i32 %8756 to float
  %8777 = fadd fast float %8775, 5.000000e-01
  %8778 = fadd fast float %8776, 5.000000e-01
  %8779 = fmul fast float %8772, %8777
  %8780 = fmul fast float %8772, %8778
  %8781 = fadd fast float %8779, 0x3F0FFB4800000000
  %8782 = fadd fast float %8780, 0xBF0FFB4800000000
  %8783 = call float @dx.op.binary.f32(i32 35, float %8774, float %8781)  ; FMax(a,b)
  %8784 = call float @dx.op.binary.f32(i32 36, float %8783, float %8782)  ; FMin(a,b)
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 1
  %8787 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8788 = extractvalue %dx.types.CBufRet.f32 %8785, 0
  %8789 = select i1 %7291, float %8788, float 0.000000e+00
  %8790 = fmul fast float %8786, %8784
  %8791 = fadd fast float %8789, %8790
  %8792 = fadd fast float %8789, %8787
  %8793 = fsub fast float %8786, %8787
  %8794 = fadd fast float %8793, %8789
  %8795 = call float @dx.op.binary.f32(i32 35, float %8791, float %8792)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 36, float %8795, float %8794)  ; FMin(a,b)
  %8797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8728, float %8729, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8798 = extractvalue %dx.types.ResRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.ResRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.ResRet.f32 %8797, 2
  %8801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.i32 %8801, 0
  %8803 = extractvalue %dx.types.CBufRet.i32 %8801, 1
  %8804 = uitofp i32 %8802 to float
  %8805 = uitofp i32 %8803 to float
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = fmul fast float %8804, %8728
  %8810 = fmul fast float %8805, %8729
  %8811 = fadd fast float %8809, -5.000000e-01
  %8812 = fadd fast float %8810, -5.000000e-01
  %8813 = call float @dx.op.unary.f32(i32 22, float %8811)  ; Frc(value)
  %8814 = call float @dx.op.unary.f32(i32 22, float %8812)  ; Frc(value)
  %8815 = fmul fast float %8813, %8813
  %8816 = fmul fast float %8815, %8813
  %8817 = fsub fast float 3.000000e+00, %8813
  %8818 = fmul fast float %8815, %8817
  %8819 = fmul fast float %8813, 3.000000e+00
  %8820 = fmul fast float %8816, 3.000000e+00
  %8821 = fmul fast float %8815, 6.000000e+00
  %8822 = fsub fast float %8820, %8821
  %8823 = fadd fast float %8822, 4.000000e+00
  %8824 = fmul fast float %8823, 0x3FC5555560000000
  %8825 = fmul fast float %8816, -3.000000e+00
  %8826 = fadd fast float %8815, %8813
  %8827 = fmul fast float %8826, 3.000000e+00
  %8828 = fadd fast float %8825, 1.000000e+00
  %8829 = fadd fast float %8828, %8827
  %8830 = fmul fast float %8816, 0x3FC5555560000000
  %8831 = fmul fast float %8814, %8814
  %8832 = fmul fast float %8831, %8814
  %8833 = fsub fast float 3.000000e+00, %8814
  %8834 = fmul fast float %8831, %8833
  %8835 = fmul fast float %8814, 3.000000e+00
  %8836 = fmul fast float %8832, 3.000000e+00
  %8837 = fmul fast float %8831, 6.000000e+00
  %8838 = fsub fast float %8836, %8837
  %8839 = fadd fast float %8838, 4.000000e+00
  %8840 = fmul fast float %8839, 0x3FC5555560000000
  %8841 = fmul fast float %8832, -3.000000e+00
  %8842 = fadd fast float %8831, %8814
  %8843 = fmul fast float %8842, 3.000000e+00
  %8844 = fadd fast float %8841, 1.000000e+00
  %8845 = fadd fast float %8844, %8843
  %8846 = fmul fast float %8832, 0x3FC5555560000000
  %8847 = fadd fast float %8813, 1.000000e+00
  %8848 = fsub fast float 1.000000e+00, %8819
  %8849 = fadd fast float %8848, %8818
  %8850 = fadd fast float %8849, %8823
  %8851 = fmul fast float %8850, 0x3FC5555560000000
  %8852 = fdiv fast float %8824, %8851
  %8853 = fsub fast float %8847, %8852
  %8854 = fsub fast float 1.000000e+00, %8813
  %8855 = fadd fast float %8829, %8816
  %8856 = fmul fast float %8855, 0x3FC5555560000000
  %8857 = fdiv fast float %8830, %8856
  %8858 = fadd fast float %8854, %8857
  %8859 = fadd fast float %8814, 1.000000e+00
  %8860 = fsub fast float 1.000000e+00, %8835
  %8861 = fadd fast float %8860, %8834
  %8862 = fadd fast float %8861, %8839
  %8863 = fmul fast float %8862, 0x3FC5555560000000
  %8864 = fdiv fast float %8840, %8863
  %8865 = fsub fast float %8859, %8864
  %8866 = fsub fast float 1.000000e+00, %8814
  %8867 = fadd fast float %8845, %8832
  %8868 = fmul fast float %8867, 0x3FC5555560000000
  %8869 = fdiv fast float %8846, %8868
  %8870 = fadd fast float %8869, %8866
  %8871 = fmul fast float %8853, %8807
  %8872 = fsub fast float %8728, %8871
  %8873 = fmul fast float %8858, %8807
  %8874 = fadd fast float %8873, %8728
  %8875 = fmul fast float %8870, %8808
  %8876 = fadd fast float %8875, %8729
  %8877 = fmul fast float %8865, %8808
  %8878 = fsub fast float %8729, %8877
  %8879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8872, float %8878, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8880 = extractvalue %dx.types.ResRet.f32 %8879, 0
  %8881 = extractvalue %dx.types.ResRet.f32 %8879, 1
  %8882 = extractvalue %dx.types.ResRet.f32 %8879, 2
  %8883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8874, float %8878, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8884 = extractvalue %dx.types.ResRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.ResRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.ResRet.f32 %8883, 2
  %8887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8872, float %8876, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8888 = extractvalue %dx.types.ResRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.ResRet.f32 %8887, 1
  %8890 = extractvalue %dx.types.ResRet.f32 %8887, 2
  %8891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8874, float %8876, float %8796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8892 = extractvalue %dx.types.ResRet.f32 %8891, 0
  %8893 = extractvalue %dx.types.ResRet.f32 %8891, 1
  %8894 = extractvalue %dx.types.ResRet.f32 %8891, 2
  %8895 = fsub fast float %8888, %8880
  %8896 = fsub fast float %8889, %8881
  %8897 = fsub fast float %8890, %8882
  %8898 = fmul fast float %8895, %8868
  %8899 = fmul fast float %8896, %8868
  %8900 = fmul fast float %8897, %8868
  %8901 = fadd fast float %8898, %8880
  %8902 = fadd fast float %8899, %8881
  %8903 = fadd fast float %8900, %8882
  %8904 = fsub fast float %8892, %8884
  %8905 = fsub fast float %8893, %8885
  %8906 = fsub fast float %8894, %8886
  %8907 = fmul fast float %8904, %8868
  %8908 = fmul fast float %8905, %8868
  %8909 = fmul fast float %8906, %8868
  %8910 = fsub fast float %8884, %8901
  %8911 = fadd fast float %8910, %8907
  %8912 = fsub fast float %8885, %8902
  %8913 = fadd fast float %8912, %8908
  %8914 = fsub fast float %8886, %8903
  %8915 = fadd fast float %8914, %8909
  %8916 = fmul fast float %8911, %8856
  %8917 = fmul fast float %8913, %8856
  %8918 = fmul fast float %8915, %8856
  %8919 = fadd fast float %8916, %8901
  %8920 = fadd fast float %8917, %8902
  %8921 = fadd fast float %8918, %8903
  %8922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8923 = extractvalue %dx.types.CBufRet.f32 %8922, 1
  %8924 = fmul fast float %8919, %8923
  %8925 = fmul fast float %8920, %8923
  %8926 = fmul fast float %8921, %8923
  br label %8927

; <label>:8927                                    ; preds = %8758, %8715
  %8928 = phi float [ %8798, %8758 ], [ 1.000000e+00, %8715 ]
  %8929 = phi float [ %8799, %8758 ], [ 1.000000e+00, %8715 ]
  %8930 = phi float [ %8800, %8758 ], [ 1.000000e+00, %8715 ]
  %8931 = phi float [ %8924, %8758 ], [ 0.000000e+00, %8715 ]
  %8932 = phi float [ %8925, %8758 ], [ 0.000000e+00, %8715 ]
  %8933 = phi float [ %8926, %8758 ], [ 0.000000e+00, %8715 ]
  %8934 = fmul fast float %8931, %7269
  %8935 = fmul fast float %8932, %7269
  %8936 = fmul fast float %8933, %7269
  %8937 = fmul fast float %8928, %8722
  %8938 = call float @dx.op.dot3.f32(i32 55, float %8928, float %8929, float %8930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8939 = call float @dx.op.dot3.f32(i32 55, float %8934, float %8935, float %8936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8940 = select i1 %267, float %8938, float %8928
  %8941 = select i1 %267, float %8938, float %8929
  %8942 = select i1 %267, float 1.000000e+00, float %8930
  %8943 = select i1 %267, float %8939, float %8934
  %8944 = select i1 %267, float 0.000000e+00, float %8935
  %8945 = select i1 %267, float 0.000000e+00, float %8936
  %8946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.i32 %8946, 3
  %8948 = and i32 %8947, 3
  %8949 = icmp ne i32 %8948, 0
  %8950 = and i32 %8947, 4
  %8951 = icmp ne i32 %8950, 0
  %8952 = and i1 %8949, %8951
  %8953 = and i1 %267, %8952
  br i1 %8953, label %8954, label %8960

; <label>:8954                                    ; preds = %8927
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 1
  %8957 = fadd fast float %8937, -1.000000e+00
  %8958 = fmul fast float %8956, %8957
  %8959 = fadd fast float %8958, 1.000000e+00
  br label %8960

; <label>:8960                                    ; preds = %8954, %8927
  %8961 = phi float [ %8959, %8954 ], [ %8937, %8927 ]
  %8962 = fadd fast float %8719, %8716
  %8963 = fmul fast float %8940, %8962
  %8964 = fadd fast float %8963, %8943
  %8965 = fadd fast float %8720, %8717
  %8966 = fmul fast float %8941, %8965
  %8967 = fadd fast float %8966, %8944
  %8968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8969 = extractvalue %dx.types.CBufRet.f32 %8968, 0
  br i1 %267, label %8970, label %8994

; <label>:8970                                    ; preds = %8960
  %8971 = fadd fast float %8964, %8967
  %8972 = fmul fast float %8969, %8971
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 3
  %8975 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %8976 = fsub fast float %7278, %7272
  %8977 = fadd fast float %8976, %7279
  %8978 = fsub fast float %8977, %8975
  %8979 = extractvalue %dx.types.CBufRet.f32 %7273, 2
  %8980 = fmul fast float %8978, %8979
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = fsub fast float %8981, %8974
  %8983 = fmul fast float %8982, %8961
  %8984 = fadd fast float %8983, %8974
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8987 = fsub fast float %8984, %8986
  %8988 = fmul fast float %8987, 1.000000e+01
  %8989 = call float @dx.op.unary.f32(i32 7, float %8988)  ; Saturate(value)
  %8990 = fsub fast float %4100, %7269
  %8991 = fmul fast float %8989, %8990
  %8992 = fadd fast float %8991, %7269
  %8993 = fmul fast float %8992, %8984
  br label %9018

; <label>:8994                                    ; preds = %8960
  %8995 = fadd fast float %8721, %8718
  %8996 = fmul fast float %8942, %8995
  %8997 = fadd fast float %8996, %8945
  %8998 = fmul fast float %8969, %8964
  %8999 = fmul fast float %8969, %8967
  %9000 = fmul fast float %8969, %8997
  %9001 = call float @dx.op.binary.f32(i32 35, float %8999, float %9000)  ; FMax(a,b)
  %9002 = call float @dx.op.binary.f32(i32 35, float %8998, float %9001)  ; FMax(a,b)
  %9003 = call float @dx.op.binary.f32(i32 35, float %9002, float %7269)  ; FMax(a,b)
  %9004 = fcmp fast ugt float %9003, 0x3F10000000000000
  br i1 %9004, label %9006, label %9005

; <label>:9005                                    ; preds = %8994
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9006

; <label>:9006                                    ; preds = %9005, %8994
  %9007 = add i32 %56, 356
  %9008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9007, i32 undef)  ; BufferLoad(srv,index,wot)
  %9009 = extractvalue %dx.types.ResRet.i32 %9008, 0
  %9010 = and i32 %9009, 32
  %9011 = icmp eq i32 %9010, 0
  br i1 %9011, label %9018, label %9012

; <label>:9012                                    ; preds = %9006
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = fmul fast float %9014, 0x3FE99999A0000000
  %9016 = fadd fast float %9014, %8998
  %9017 = fadd fast float %9015, %9000
  br label %9018

; <label>:9018                                    ; preds = %9012, %9006, %8970
  %9019 = phi float [ %8972, %8970 ], [ %9016, %9012 ], [ %8998, %9006 ]
  %9020 = phi float [ %8993, %8970 ], [ %8999, %9012 ], [ %8999, %9006 ]
  %9021 = phi float [ %8992, %8970 ], [ %9017, %9012 ], [ %9000, %9006 ]
  %9022 = phi float [ %8992, %8970 ], [ %7269, %9012 ], [ %7269, %9006 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9023 = call float @dx.op.binary.f32(i32 36, float %9019, float 3.225500e+04)  ; FMin(a,b)
  %9024 = call float @dx.op.binary.f32(i32 36, float %9020, float 3.225500e+04)  ; FMin(a,b)
  %9025 = call float @dx.op.binary.f32(i32 36, float %9021, float 3.225500e+04)  ; FMin(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %9022, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9023)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9024)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9026)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !96}
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
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
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

