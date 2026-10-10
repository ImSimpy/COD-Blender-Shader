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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint    yz 
; SV_IsFrontFace           0      w       13    FFACE    uint      w
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: fa743eb4ae51d1e23358e1c6afbe44c0
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56 }
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = alloca [12 x float], align 4
  %109 = alloca [12 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = alloca [3 x float], align 4
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fmul fast float %115, %104
  %117 = fmul fast float %115, %105
  %118 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %119 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = bitcast float %119 to i32
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 1597250115, %121
  %123 = bitcast i32 %122 to float
  %124 = fmul fast float %95, %118
  %125 = fmul fast float %124, %123
  %126 = fmul fast float %96, %118
  %127 = fmul fast float %126, %123
  %128 = fmul fast float %97, %118
  %129 = fmul fast float %128, %123
  %130 = fmul fast float %96, %93
  %131 = fmul fast float %97, %92
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %97, %91
  %134 = fmul fast float %95, %93
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %95, %92
  %137 = fmul fast float %96, %91
  %138 = fsub fast float %136, %137
  %139 = fmul fast float %132, %94
  %140 = fmul fast float %135, %94
  %141 = fmul fast float %138, %94
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = fcmp fast une float %143, 0.000000e+00
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %148 = fmul fast float %116, 2.000000e+00
  %149 = fmul fast float %148, %146
  %150 = fmul fast float %117, 2.000000e+00
  %151 = fmul fast float %150, %147
  %152 = fsub fast float 1.000000e+00, %149
  %153 = fsub fast float 1.000000e+00, %151
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = select i1 %144, float %155, float %159
  %163 = select i1 %144, float %156, float %160
  %164 = select i1 %144, float %157, float %161
  %165 = fmul fast float %162, %152
  %166 = fmul fast float %163, %152
  %167 = fmul fast float %164, %152
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = select i1 %144, float %169, float %173
  %177 = select i1 %144, float %170, float %174
  %178 = select i1 %144, float %171, float %175
  %179 = fmul fast float %176, %153
  %180 = fmul fast float %177, %153
  %181 = fmul fast float %178, %153
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = fadd fast float %181, %167
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = select i1 %144, float %186, float %190
  %194 = select i1 %144, float %187, float %191
  %195 = select i1 %144, float %188, float %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fadd fast float %184, %195
  %199 = fmul fast float %196, %107
  %200 = fmul fast float %197, %107
  %201 = fmul fast float %198, %107
  %202 = shl i32 %59, 5
  %203 = add i32 %202, 4194304
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = extractvalue %dx.types.ResRet.i32 %204, 2
  %208 = extractvalue %dx.types.ResRet.i32 %204, 3
  %209 = add i32 %202, 4194320
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = bitcast i32 %211 to float
  %214 = bitcast i32 %212 to float
  %215 = fmul fast float %116, 5.000000e-01
  %216 = fmul fast float %117, 5.000000e-01
  %217 = fptosi float %215 to i32
  %218 = fptosi float %216 to i32
  %219 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = lshr i32 %220, 18
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F4C00EBA0000000
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fadd fast float %224, -1.000000e+00
  %226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %227 = extractvalue %dx.types.Dimensions %226, 0
  %228 = sitofp i32 %227 to float
  %229 = extractvalue %dx.types.Dimensions %226, 1
  %230 = sitofp i32 %229 to float
  %231 = fcmp fast oge float %215, %228
  %232 = fcmp fast oge float %216, %230
  %233 = or i1 %231, %232
  %234 = select i1 %233, float 0x4197782600000000, float %225
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %238 = fmul fast float %236, %116
  %239 = fmul fast float %237, %117
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 114688
  %243 = icmp ne i32 %242, 0
  %244 = select i1 %243, float %238, float 0.000000e+00
  %245 = select i1 %243, float %239, float 0.000000e+00
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %244, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fmul fast float %247, 2.550000e+02
  %249 = fptoui float %248 to i32
  %250 = select i1 %243, i32 %249, i32 0
  %251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.i32 %251, 3
  %253 = and i32 %252, 3
  %254 = icmp ne i32 %253, 0
  %255 = and i32 %252, 4
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %254, %256
  br i1 %257, label %258, label %267

; <label>:258                                     ; preds = %0
  %259 = fmul fast float %147, %117
  %260 = fmul fast float %146, %116
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %260, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fsub fast float 1.000000e+00, %262
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fcmp fast olt float %263, %265
  br label %270

; <label>:267                                     ; preds = %0
  %268 = icmp eq i32 %255, 0
  %269 = and i1 %254, %268
  br label %270

; <label>:270                                     ; preds = %267, %258
  %271 = phi i1 [ %266, %258 ], [ %269, %267 ]
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %274 = fmul fast float %273, 0x3FE3C6EF40000000
  %275 = frem fast float %116, 2.560000e+02
  %276 = frem fast float %117, 2.560000e+02
  %277 = fptoui float %275 to i32
  %278 = fptoui float %276 to i32
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %277, i32 %278, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fadd fast float %280, %274
  %282 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %283 = add i32 %58, 156
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %58, 216
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %58, 36
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %58, 288
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = mul i32 %60, 100
  %326 = add i32 %325, 28
  %327 = add i32 %325, 40
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = add i32 %58, 172
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = shl i32 %332, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %332, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %332, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %58, 232
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %344, 8
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %344, 16
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = add i32 %58, 52
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %58, 304
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = and i32 %329, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %374, float %335
  %384 = select i1 %382, float %377, float %338
  %385 = select i1 %382, float %380, float %341
  %386 = add i32 %325, 44
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = fmul fast float %388, %383
  %390 = fmul fast float %388, %384
  %391 = fmul fast float %388, %385
  %392 = add i32 %325, 48
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = and i32 %329, 8
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %397, float %347
  %407 = select i1 %405, float %400, float %351
  %408 = select i1 %405, float %403, float %355
  %409 = add i32 %325, 52
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = and i32 %329, 2
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %413, float %360
  %419 = select i1 %417, float %415, float %362
  %420 = add i32 %325, 56
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = and i32 %329, 4
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = select i1 %428, float %426, float %369
  %432 = fmul float %431, 0x3F50624DE0000000
  %433 = add i32 %325, 60
  %434 = add i32 %325, 32
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %58, 188
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = shl i32 %439, 4
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %439, 7
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 22
  %447 = shl nuw nsw i32 %446, 5
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %58, 248
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = lshr i32 %451, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %451, 16
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = add i32 %58, 68
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %58, 320
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = shl i32 %478, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %478, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %478, 22
  %486 = shl nuw nsw i32 %485, 5
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = and i32 %436, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %481, float %442
  %491 = select i1 %489, float %484, float %445
  %492 = select i1 %489, float %487, float %448
  %493 = add i32 %325, 64
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fmul fast float %495, %490
  %497 = fmul fast float %495, %491
  %498 = fmul fast float %495, %492
  %499 = add i32 %325, 68
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = shl i32 %501, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %501, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 22
  %509 = shl nuw nsw i32 %508, 5
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = and i32 %436, 8
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %504, float %454
  %514 = select i1 %512, float %507, float %458
  %515 = select i1 %512, float %510, float %462
  %516 = add i32 %325, 72
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %518, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = and i32 %436, 2
  %524 = icmp ne i32 %523, 0
  %525 = select i1 %524, float %520, float %467
  %526 = select i1 %524, float %522, float %469
  %527 = add i32 %325, 76
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 65535
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %529, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = and i32 %436, 4
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = select i1 %535, float %533, float %476
  %539 = fmul float %538, 0x3F50624DE0000000
  %540 = add i32 %325, 80
  %541 = add i32 %325, 36
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %58, 204
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = shl i32 %546, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %546, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 22
  %554 = shl nuw nsw i32 %553, 5
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %58, 264
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %558, 8
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %558, 16
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = add i32 %58, 84
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %58, 336
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = shl i32 %585, 4
  %587 = and i32 %586, 32752
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %585, 7
  %590 = and i32 %589, 32752
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %585, 22
  %593 = shl nuw nsw i32 %592, 5
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %543, 1
  %596 = icmp ne i32 %595, 0
  %597 = select i1 %596, float %588, float %549
  %598 = select i1 %596, float %591, float %552
  %599 = select i1 %596, float %594, float %555
  %600 = add i32 %325, 84
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = fmul fast float %602, %597
  %604 = fmul fast float %602, %598
  %605 = fmul fast float %602, %599
  %606 = add i32 %325, 88
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = shl i32 %608, 4
  %610 = and i32 %609, 32752
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %608, 7
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %608, 22
  %616 = shl nuw nsw i32 %615, 5
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %543, 8
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %619, float %611, float %561
  %621 = select i1 %619, float %614, float %565
  %622 = select i1 %619, float %617, float %569
  %623 = add i32 %325, 92
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %625, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %543, 2
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %627, float %574
  %633 = select i1 %631, float %629, float %576
  %634 = add i32 %325, 96
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %636, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %543, 4
  %642 = icmp ne i32 %641, 0
  %643 = select i1 %642, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = select i1 %642, float %640, float %583
  %646 = fmul float %645, 0x3F50624DE0000000
  %647 = add i32 %58, 348
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 32
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %649, 64
  %653 = icmp eq i32 %652, 0
  %654 = and i32 %649, 128
  %655 = icmp eq i32 %654, 0
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 2
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %675, label %660

; <label>:660                                     ; preds = %270
  %661 = add i32 %58, 524
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %113, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = fmul fast float %670, %100
  %672 = fmul fast float %667, %101
  %673 = fmul fast float %668, %102
  %674 = fmul fast float %669, %103
  br label %675

; <label>:675                                     ; preds = %660, %270
  %676 = phi float [ %103, %270 ], [ %674, %660 ]
  %677 = phi float [ %102, %270 ], [ %673, %660 ]
  %678 = phi float [ %101, %270 ], [ %672, %660 ]
  %679 = phi float [ %100, %270 ], [ %671, %660 ]
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 2
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %703, label %684

; <label>:684                                     ; preds = %675
  %685 = add i32 %58, 44
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = select i1 %689, float %678, float 1.000000e+00
  %691 = add i32 %58, 60
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 1
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, float %677, float 1.000000e+00
  %697 = add i32 %58, 76
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 1
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %676, float 1.000000e+00
  br label %703

; <label>:703                                     ; preds = %684, %675
  %704 = phi float [ %676, %675 ], [ %702, %684 ]
  %705 = phi float [ %677, %675 ], [ %696, %684 ]
  %706 = phi float [ %678, %675 ], [ %690, %684 ]
  %707 = lshr i32 %681, 20
  %708 = and i32 %707, 3
  %709 = add nuw nsw i32 %708, 1
  %710 = add i32 %58, 24
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %58, 28
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = or i32 %715, %712
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %1281, label %718

; <label>:718                                     ; preds = %703
  %719 = and i32 %712, 262144
  %720 = icmp ne i32 %719, 0
  %721 = select i1 %720, float %66, float 1.000000e+00
  %722 = select i1 %720, float %67, float 0.000000e+00
  %723 = select i1 %720, float %68, float 0.000000e+00
  %724 = select i1 %720, float %69, float 1.000000e+00
  %725 = select i1 %720, float %70, float %98
  %726 = select i1 %720, float %71, float %99
  %727 = add i32 %58, 284
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = fmul fast float %731, 0x3F50624DE0000000
  %733 = add i32 %58, 88
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = lshr i32 %735, 16
  %737 = and i32 %736, 255
  %738 = lshr i32 %735, 24
  %739 = add i32 %58, 292
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %741, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = add i32 %58, 32
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = shl i32 %748, 4
  %753 = and i32 %752, 32752
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %748, 7
  %756 = and i32 %755, 32752
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = fmul fast float %759, 1.000000e+03
  %761 = fmul fast float %323, %760
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fadd fast float %762, %313
  %764 = fmul fast float %324, %760
  %765 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %766 = fadd fast float %765, %315
  %767 = fmul fast float %732, %760
  %768 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %769 = fmul fast float %768, 0x401921FB60000000
  %770 = fadd fast float %769, %751
  %771 = call float @dx.op.unary.f32(i32 13, float %770)  ; Sin(value)
  %772 = call float @dx.op.unary.f32(i32 12, float %770)  ; Cos(value)
  %773 = fsub fast float -0.000000e+00, %771
  %774 = fadd fast float %725, -5.000000e-01
  %775 = fadd fast float %726, -5.000000e-01
  %776 = fmul fast float %743, %774
  %777 = fmul fast float %745, %775
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fmul fast float %754, %778
  %781 = fmul fast float %757, %779
  %782 = fmul fast float %772, %780
  %783 = call float @dx.op.tertiary.f32(i32 46, float %773, float %781, float %782)  ; FMad(a,b,c)
  %784 = fmul fast float %771, %780
  %785 = call float @dx.op.tertiary.f32(i32 46, float %772, float %781, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %763, %783
  %787 = fadd fast float %766, %785
  %788 = icmp ugt i32 %737, 1
  %789 = icmp ugt i32 %735, 33554431
  %790 = or i1 %789, %788
  br i1 %790, label %791, label %816

; <label>:791                                     ; preds = %718
  %792 = add i32 %58, 228
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fmul fast float %759, %796
  %798 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %799 = mul nuw nsw i32 %737, %738
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %798, %800
  %802 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %803 = fptoui float %802 to i32
  %804 = urem i32 %803, %737
  %805 = udiv i32 %803, %738
  %806 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %807 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %808 = uitofp i32 %804 to float
  %809 = uitofp i32 %805 to float
  %810 = fadd fast float %806, %808
  %811 = fadd fast float %807, %809
  %812 = uitofp i32 %737 to float
  %813 = uitofp i32 %738 to float
  %814 = fdiv fast float %810, %812
  %815 = fdiv fast float %811, %813
  br label %816

; <label>:816                                     ; preds = %791, %718
  %817 = phi float [ %814, %791 ], [ %786, %718 ]
  %818 = phi float [ %815, %791 ], [ %787, %718 ]
  %819 = and i32 %712, 256
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %867, label %821

; <label>:821                                     ; preds = %816
  %822 = add i32 %58, 472
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = add i32 %58, 100
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = shl i32 %831, 4
  %833 = and i32 %832, 32752
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %831, 7
  %836 = and i32 %835, 32752
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fsub fast float 1.000000e+00, %679
  %839 = call float @dx.op.binary.f32(i32 35, float %838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %840 = bitcast float %679 to i32
  %841 = sitofp i32 %840 to float
  %842 = fadd fast float %841, 0xC1CFBF8940000000
  %843 = fmul fast float %837, %842
  %844 = fadd fast float %843, 0x41CFBF8940000000
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = bitcast float %839 to i32
  %848 = sitofp i32 %847 to float
  %849 = fadd fast float %848, 0xC1CFBF8940000000
  %850 = fmul fast float %849, %837
  %851 = fadd fast float %850, 0x41CFBF8940000000
  %852 = fptosi float %851 to i32
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %846, %834
  %855 = fmul fast float %853, %834
  %856 = fsub fast float %839, %854
  %857 = fadd fast float %855, %839
  %858 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %859 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %860 = fsub fast float %828, %858
  %861 = fsub fast float %859, %858
  %862 = bitcast float %861 to i32
  %863 = sub nsw i32 2129859010, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %864, %860
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  br label %867

; <label>:867                                     ; preds = %821, %816
  %868 = phi float [ %866, %821 ], [ %679, %816 ]
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 128
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %889, label %873

; <label>:873                                     ; preds = %867
  %874 = add i32 %58, 456
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 524288
  %884 = icmp ne i32 %883, 0
  %885 = fcmp fast ogt float %880, 0x3FE0101020000000
  %886 = select i1 %885, float 1.000000e+00, float 0.000000e+00
  %887 = select i1 %884, float %886, float %880
  %888 = fmul fast float %887, %868
  br label %889

; <label>:889                                     ; preds = %873, %867
  %890 = phi float [ %888, %873 ], [ %868, %867 ]
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 16
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %1093, label %895

; <label>:895                                     ; preds = %889
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %58, 408
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = add i32 %900, 0
  %902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %902, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = extractvalue %dx.types.ResRet.f32 %903, 3
  %908 = and i32 %897, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %897, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = fmul fast float %907, %909
  %914 = fadd fast float %913, %912
  %915 = fmul fast float %914, 0x3F70101000000000
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 512
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %928, label %920

; <label>:920                                     ; preds = %895
  %921 = add i32 %58, 492
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  br label %928

; <label>:928                                     ; preds = %920, %895
  %929 = phi float [ %927, %920 ], [ 1.000000e+00, %895 ]
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 33554432
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %1040, label %934

; <label>:934                                     ; preds = %928
  %935 = add i32 %58, 224
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %937, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = add i32 %58, 228
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 24
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = and i32 %948, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %948, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %948, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = add i32 %58, 220
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 24
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = and i32 %965, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = lshr i32 %965, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %965, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = bitcast float %904 to i32
  %981 = ashr i32 %980, 1
  %982 = sub nsw i32 1597463174, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %904, 5.000000e-01
  %985 = fmul fast float %983, %983
  %986 = fmul fast float %985, %984
  %987 = fsub fast float 1.500000e+00, %986
  %988 = fmul fast float %983, %904
  %989 = fmul fast float %988, %987
  %990 = bitcast float %905 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %905, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %905
  %999 = fmul fast float %998, %997
  %1000 = bitcast float %906 to i32
  %1001 = ashr i32 %1000, 1
  %1002 = sub nsw i32 1597463174, %1001
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %906, 5.000000e-01
  %1005 = fmul fast float %1003, %1003
  %1006 = fmul fast float %1005, %1004
  %1007 = fsub fast float 1.500000e+00, %1006
  %1008 = fmul fast float %1003, %906
  %1009 = fmul fast float %1008, %1007
  %1010 = fsub fast float %989, %971
  %1011 = fsub fast float %999, %975
  %1012 = fsub fast float %1009, %979
  %1013 = fmul fast float %1010, %939
  %1014 = fmul fast float %1011, %941
  %1015 = fmul fast float %1012, %946
  %1016 = fadd fast float %1013, %954
  %1017 = fadd fast float %1014, %958
  %1018 = fadd fast float %1015, %962
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1021 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1022 = fmul fast float %1019, %1019
  %1023 = fmul fast float %1020, %1020
  %1024 = fmul fast float %1021, %1021
  %1025 = fsub fast float %1022, %904
  %1026 = fsub fast float %1023, %905
  %1027 = fsub fast float %1024, %906
  %1028 = fmul fast float %1025, %929
  %1029 = fmul fast float %1026, %929
  %1030 = fmul fast float %1027, %929
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %1029, %905
  %1033 = fadd fast float %1030, %906
  %1034 = fadd fast float %951, %915
  %1035 = fsub fast float %1034, %968
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = fsub fast float %1036, %915
  %1038 = fmul fast float %1037, %929
  %1039 = fadd fast float %1038, %915
  br label %1093

; <label>:1040                                    ; preds = %928
  %1041 = and i32 %931, 134217728
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1077, label %1043

; <label>:1043                                    ; preds = %1040
  %1044 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1045 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1046 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fadd fast float %1045, -5.000000e-01
  %1049 = fadd fast float %1046, -5.000000e-01
  %1050 = fmul fast float %1047, %929
  %1051 = fmul fast float %1048, %929
  %1052 = fmul fast float %1049, %929
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %1058 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %1059 = fmul fast float %1053, 2.000000e+00
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1056
  %1062 = fadd fast float %1061, %1059
  %1063 = fmul fast float %1062, %1056
  %1064 = fmul fast float %1054, 2.000000e+00
  %1065 = fsub fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1057
  %1067 = fadd fast float %1066, %1064
  %1068 = fmul fast float %1067, %1057
  %1069 = fmul fast float %1055, 2.000000e+00
  %1070 = fsub fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1058
  %1072 = fadd fast float %1071, %1069
  %1073 = fmul fast float %1072, %1058
  %1074 = fmul fast float %1063, %1063
  %1075 = fmul fast float %1068, %1068
  %1076 = fmul fast float %1073, %1073
  br label %1093

; <label>:1077                                    ; preds = %1040
  %1078 = fmul fast float %300, %300
  %1079 = fmul fast float %304, %304
  %1080 = fmul fast float %308, %308
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fadd fast float %1079, -1.000000e+00
  %1083 = fadd fast float %1080, -1.000000e+00
  %1084 = fmul fast float %929, %1081
  %1085 = fmul fast float %929, %1082
  %1086 = fmul fast float %929, %1083
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fadd fast float %1085, 1.000000e+00
  %1089 = fadd fast float %1086, 1.000000e+00
  %1090 = fmul fast float %1087, %904
  %1091 = fmul fast float %1088, %905
  %1092 = fmul fast float %1089, %906
  br label %1093

; <label>:1093                                    ; preds = %1077, %1043, %934, %889
  %1094 = phi float [ %1039, %934 ], [ %915, %1043 ], [ %915, %1077 ], [ 0x3FA23C0BE0000000, %889 ]
  %1095 = phi float [ %1031, %934 ], [ %1074, %1043 ], [ %1090, %1077 ], [ 1.000000e+00, %889 ]
  %1096 = phi float [ %1032, %934 ], [ %1075, %1043 ], [ %1091, %1077 ], [ 1.000000e+00, %889 ]
  %1097 = phi float [ %1033, %934 ], [ %1076, %1043 ], [ %1092, %1077 ], [ 1.000000e+00, %889 ]
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 1
  %1100 = and i32 %1099, 1
  %1101 = icmp ne i32 %1100, 0
  %1102 = add i32 %58, 356
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 32
  %1106 = icmp ne i32 %1105, 0
  %1107 = and i1 %1101, %1106
  %1108 = select i1 %1107, float 1.000000e+00, float %1095
  %1109 = select i1 %1107, float 0x3FD3333340000000, float %1096
  %1110 = select i1 %1107, float 0x3FD3333340000000, float %1097
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 32
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1187, label %1115

; <label>:1115                                    ; preds = %1093
  %1116 = add i32 %58, 92
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %58, 424
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1121, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1123, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = and i32 %1118, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = lshr i32 %1118, 8
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = lshr i32 %1118, 16
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101000000000
  %1138 = fmul fast float %1125, %1130
  %1139 = fadd fast float %1138, %1133
  %1140 = fmul fast float %1139, 0x3F70101000000000
  %1141 = fadd fast float %1126, -5.000000e-01
  %1142 = fadd fast float %1128, -5.000000e-01
  %1143 = fmul fast float %1141, %1137
  %1144 = fmul fast float %1142, %1137
  %1145 = fadd fast float %1143, 5.000000e-01
  %1146 = fadd fast float %1144, 5.000000e-01
  %1147 = fmul fast float %1145, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fmul fast float %1146, 2.000000e+00
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = fadd fast float %1148, %1150
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = fsub fast float %1148, %1150
  %1154 = fmul fast float %1153, 5.000000e-01
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = fsub fast float %1156, %1157
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1154, float %1158, float %1152, float %1154, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.unary.f32(i32 25, float %1159)  ; Rsqrt(value)
  %1161 = fmul fast float %1152, %1160
  %1162 = fmul fast float %1154, %1160
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 67108864
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1183, label %1167

; <label>:1167                                    ; preds = %1115
  %1168 = add i32 %58, 280
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1170, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float %1140, %1178
  %1180 = fmul fast float %1179, %1172
  %1181 = fadd fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1167, %1115
  %1184 = phi float [ %1182, %1167 ], [ %1140, %1115 ]
  %1185 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  %1186 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %723, float %724)  ; Dot2(ax,ay,bx,by)
  br label %1187

; <label>:1187                                    ; preds = %1183, %1093
  %1188 = phi float [ %1184, %1183 ], [ 0x3FD6666660000000, %1093 ]
  %1189 = phi float [ %1185, %1183 ], [ 0.000000e+00, %1093 ]
  %1190 = phi float [ %1186, %1183 ], [ 0.000000e+00, %1093 ]
  %1191 = phi float [ %1127, %1183 ], [ 1.000000e+00, %1093 ]
  %1192 = add i32 %58, 160
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 22
  %1196 = shl nuw nsw i32 %1195, 5
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 64
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1235, label %1202

; <label>:1202                                    ; preds = %1187
  %1203 = add i32 %58, 440
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 131072
  %1211 = icmp eq i32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %112, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = fmul fast float %1213, %288
  %1217 = fmul fast float %1214, %291
  %1218 = fmul fast float %1215, %294
  br i1 %1211, label %1225, label %1219

; <label>:1219                                    ; preds = %1202
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fmul fast float %1221, %1216
  %1223 = fmul fast float %1221, %1217
  %1224 = fmul fast float %1221, %1218
  br label %1225

; <label>:1225                                    ; preds = %1219, %1202
  %1226 = phi float [ %1222, %1219 ], [ %1216, %1202 ]
  %1227 = phi float [ %1223, %1219 ], [ %1217, %1202 ]
  %1228 = phi float [ %1224, %1219 ], [ %1218, %1202 ]
  %1229 = fmul fast float %1226, %1197
  %1230 = select i1 %271, float %1229, float %1226
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1230, float %1227, float %1228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = select i1 %271, float 0.000000e+00, float %1226
  %1233 = select i1 %271, float %1231, float %1227
  %1234 = select i1 %271, float 0.000000e+00, float %1228
  br label %1235

; <label>:1235                                    ; preds = %1225, %1187
  %1236 = phi float [ %1232, %1225 ], [ 0.000000e+00, %1187 ]
  %1237 = phi float [ %1233, %1225 ], [ 0.000000e+00, %1187 ]
  %1238 = phi float [ %1234, %1225 ], [ 0.000000e+00, %1187 ]
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 26624
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1266, label %1243

; <label>:1243                                    ; preds = %1235
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 16384
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1266, label %1248

; <label>:1248                                    ; preds = %1243
  %1249 = and i32 %1245, 1048576
  %1250 = icmp ne i32 %1249, 0
  %1251 = add i32 %58, 508
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %113, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = add i32 %58, 96
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = lshr i32 %1260, 24
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1257, 0x3F70101020000000
  %1264 = select i1 %1250, float 0x3F70101020000000, float %1263
  %1265 = fmul fast float %1264, %1262
  br label %1266

; <label>:1266                                    ; preds = %1248, %1243, %1235
  %1267 = phi float [ %1265, %1248 ], [ 0.000000e+00, %1243 ], [ 0.000000e+00, %1235 ]
  %1268 = add i32 %58, 96
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = lshr i32 %1270, 8
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = fmul fast float %1275, %1276
  %1278 = fadd fast float %1277, %1272
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  br label %1281

; <label>:1281                                    ; preds = %1266, %703
  %1282 = phi float [ 0.000000e+00, %703 ], [ %1189, %1266 ]
  %1283 = phi float [ 0.000000e+00, %703 ], [ %1190, %1266 ]
  %1284 = phi float [ 0.000000e+00, %703 ], [ %1236, %1266 ]
  %1285 = phi float [ 0.000000e+00, %703 ], [ %1237, %1266 ]
  %1286 = phi float [ 0.000000e+00, %703 ], [ %1238, %1266 ]
  %1287 = phi float [ 0.000000e+00, %703 ], [ %1108, %1266 ]
  %1288 = phi float [ 0.000000e+00, %703 ], [ %1109, %1266 ]
  %1289 = phi float [ 0.000000e+00, %703 ], [ %1110, %1266 ]
  %1290 = phi float [ 0.000000e+00, %703 ], [ %1094, %1266 ]
  %1291 = phi float [ 0.000000e+00, %703 ], [ %890, %1266 ]
  %1292 = phi float [ 0.000000e+00, %703 ], [ %1188, %1266 ]
  %1293 = phi float [ 0.000000e+00, %703 ], [ %1191, %1266 ]
  %1294 = phi float [ 0.000000e+00, %703 ], [ %1267, %1266 ]
  %1295 = phi float [ 0.000000e+00, %703 ], [ %1280, %1266 ]
  br i1 %651, label %2061, label %1296

; <label>:1296                                    ; preds = %1281
  %1297 = icmp ult i32 %709, 2
  %1298 = add i32 %58, 40
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = add i32 %58, 44
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = or i32 %1303, %1300
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %2061, label %1306

; <label>:1306                                    ; preds = %1296
  %1307 = and i32 %1300, 262144
  %1308 = icmp ne i32 %1307, 0
  %1309 = select i1 %1308, float %66, float 1.000000e+00
  %1310 = select i1 %1308, float %67, float 0.000000e+00
  %1311 = select i1 %1308, float %68, float 0.000000e+00
  %1312 = select i1 %1308, float %69, float 1.000000e+00
  %1313 = select i1 %1308, float %70, float %98
  %1314 = select i1 %1308, float %71, float %99
  %1315 = add i32 %58, 300
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = lshr i32 %1317, 16
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = fmul fast float %1319, 0x3F50624DE0000000
  %1321 = add i32 %58, 104
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = lshr i32 %1323, 16
  %1325 = and i32 %1324, 255
  %1326 = lshr i32 %1323, 24
  %1327 = add i32 %58, 308
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 65535
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = lshr i32 %1329, 16
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = add i32 %58, 48
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 22
  %1338 = shl nuw nsw i32 %1337, 5
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = shl i32 %1336, 4
  %1341 = and i32 %1340, 32752
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = lshr i32 %1336, 7
  %1344 = and i32 %1343, 32752
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1348 = fmul fast float %1347, 1.000000e+03
  %1349 = fmul fast float %1348, %430
  %1350 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1351 = fadd fast float %1350, %418
  %1352 = fmul fast float %1348, %432
  %1353 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1354 = fadd fast float %1353, %419
  %1355 = fmul fast float %1320, %1348
  %1356 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1357 = fmul fast float %1356, 0x401921FB60000000
  %1358 = fadd fast float %1357, %1339
  %1359 = call float @dx.op.unary.f32(i32 13, float %1358)  ; Sin(value)
  %1360 = call float @dx.op.unary.f32(i32 12, float %1358)  ; Cos(value)
  %1361 = fsub fast float -0.000000e+00, %1359
  %1362 = fadd fast float %1313, -5.000000e-01
  %1363 = fadd fast float %1314, -5.000000e-01
  %1364 = fmul fast float %1331, %1362
  %1365 = fmul fast float %1333, %1363
  %1366 = fadd fast float %1364, 5.000000e-01
  %1367 = fadd fast float %1365, 5.000000e-01
  %1368 = fmul fast float %1342, %1366
  %1369 = fmul fast float %1345, %1367
  %1370 = fmul fast float %1360, %1368
  %1371 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1369, float %1370)  ; FMad(a,b,c)
  %1372 = fmul fast float %1359, %1368
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1369, float %1372)  ; FMad(a,b,c)
  %1374 = fadd fast float %1351, %1371
  %1375 = fadd fast float %1354, %1373
  %1376 = icmp ugt i32 %1325, 1
  %1377 = icmp ugt i32 %1323, 33554431
  %1378 = or i1 %1377, %1376
  br i1 %1378, label %1379, label %1404

; <label>:1379                                    ; preds = %1306
  %1380 = add i32 %58, 244
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = lshr i32 %1382, 16
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = fmul fast float %1347, %1384
  %1386 = call float @dx.op.unary.f32(i32 22, float %1385)  ; Frc(value)
  %1387 = mul nuw nsw i32 %1325, %1326
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1386, %1388
  %1390 = call float @dx.op.unary.f32(i32 27, float %1389)  ; Round_ni(value)
  %1391 = fptoui float %1390 to i32
  %1392 = urem i32 %1391, %1325
  %1393 = udiv i32 %1391, %1326
  %1394 = call float @dx.op.unary.f32(i32 22, float %1374)  ; Frc(value)
  %1395 = call float @dx.op.unary.f32(i32 22, float %1375)  ; Frc(value)
  %1396 = uitofp i32 %1392 to float
  %1397 = uitofp i32 %1393 to float
  %1398 = fadd fast float %1394, %1396
  %1399 = fadd fast float %1395, %1397
  %1400 = uitofp i32 %1325 to float
  %1401 = uitofp i32 %1326 to float
  %1402 = fdiv fast float %1398, %1400
  %1403 = fdiv fast float %1399, %1401
  br label %1404

; <label>:1404                                    ; preds = %1379, %1306
  %1405 = phi float [ %1402, %1379 ], [ %1374, %1306 ]
  %1406 = phi float [ %1403, %1379 ], [ %1375, %1306 ]
  %1407 = and i32 %1300, 256
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1455, label %1409

; <label>:1409                                    ; preds = %1404
  %1410 = add i32 %58, 476
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %113, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = add i32 %58, 116
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = shl i32 %1419, 4
  %1421 = and i32 %1420, 32752
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = lshr i32 %1419, 7
  %1424 = and i32 %1423, 32752
  %1425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1424)  ; LegacyF16ToF32(value)
  %1426 = fsub fast float 1.000000e+00, %706
  %1427 = call float @dx.op.binary.f32(i32 35, float %1426, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1428 = bitcast float %706 to i32
  %1429 = sitofp i32 %1428 to float
  %1430 = fadd fast float %1429, 0xC1CFBF8940000000
  %1431 = fmul fast float %1425, %1430
  %1432 = fadd fast float %1431, 0x41CFBF8940000000
  %1433 = fptosi float %1432 to i32
  %1434 = bitcast i32 %1433 to float
  %1435 = bitcast float %1427 to i32
  %1436 = sitofp i32 %1435 to float
  %1437 = fadd fast float %1436, 0xC1CFBF8940000000
  %1438 = fmul fast float %1437, %1425
  %1439 = fadd fast float %1438, 0x41CFBF8940000000
  %1440 = fptosi float %1439 to i32
  %1441 = bitcast i32 %1440 to float
  %1442 = fmul fast float %1434, %1422
  %1443 = fmul fast float %1441, %1422
  %1444 = fsub fast float %1427, %1442
  %1445 = fadd fast float %1443, %1427
  %1446 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1447 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1448 = fsub fast float %1416, %1446
  %1449 = fsub fast float %1447, %1446
  %1450 = bitcast float %1449 to i32
  %1451 = sub nsw i32 2129859010, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1452, %1448
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  br label %1455

; <label>:1455                                    ; preds = %1409, %1404
  %1456 = phi float [ %1454, %1409 ], [ %706, %1404 ]
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 128
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1477, label %1461

; <label>:1461                                    ; preds = %1455
  %1462 = add i32 %58, 460
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %113, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 524288
  %1472 = icmp ne i32 %1471, 0
  %1473 = fcmp fast ogt float %1468, 0x3FE0101020000000
  %1474 = select i1 %1473, float 1.000000e+00, float 0.000000e+00
  %1475 = select i1 %1472, float %1474, float %1468
  %1476 = fmul fast float %1475, %1456
  br label %1477

; <label>:1477                                    ; preds = %1461, %1455
  %1478 = phi float [ %1476, %1461 ], [ %1456, %1455 ]
  %1479 = fcmp fast ult float %1478, 0x3F70101020000000
  br i1 %1479, label %2061, label %1480

; <label>:1480                                    ; preds = %1477
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 16
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1683, label %1485

; <label>:1485                                    ; preds = %1480
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %58, 412
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1490, 0
  %1492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1492, %dx.types.Handle %112, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.f32 %1493, 2
  %1497 = extractvalue %dx.types.ResRet.f32 %1493, 3
  %1498 = and i32 %1487, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = lshr i32 %1487, 8
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1497, %1499
  %1504 = fadd fast float %1503, %1502
  %1505 = fmul fast float %1504, 0x3F70101000000000
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 512
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1518, label %1510

; <label>:1510                                    ; preds = %1485
  %1511 = add i32 %58, 496
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = add i32 %1513, 0
  %1515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1516 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1515, %dx.types.Handle %113, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  br label %1518

; <label>:1518                                    ; preds = %1510, %1485
  %1519 = phi float [ %1517, %1510 ], [ 1.000000e+00, %1485 ]
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 33554432
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1630, label %1524

; <label>:1524                                    ; preds = %1518
  %1525 = add i32 %58, 240
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 65535
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = lshr i32 %1527, 16
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = add i32 %58, 244
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 65535
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = lshr i32 %1538, 24
  %1540 = uitofp i32 %1539 to float
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = and i32 %1538, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = lshr i32 %1538, 8
  %1546 = and i32 %1545, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F70101020000000
  %1549 = lshr i32 %1538, 16
  %1550 = and i32 %1549, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = add i32 %58, 236
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = lshr i32 %1555, 24
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101020000000
  %1559 = and i32 %1555, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = fmul fast float %1560, 0x3F70101020000000
  %1562 = lshr i32 %1555, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = fmul fast float %1564, 0x3F70101020000000
  %1566 = lshr i32 %1555, 16
  %1567 = and i32 %1566, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = bitcast float %1494 to i32
  %1571 = ashr i32 %1570, 1
  %1572 = sub nsw i32 1597463174, %1571
  %1573 = bitcast i32 %1572 to float
  %1574 = fmul fast float %1494, 5.000000e-01
  %1575 = fmul fast float %1573, %1573
  %1576 = fmul fast float %1575, %1574
  %1577 = fsub fast float 1.500000e+00, %1576
  %1578 = fmul fast float %1573, %1494
  %1579 = fmul fast float %1578, %1577
  %1580 = bitcast float %1495 to i32
  %1581 = ashr i32 %1580, 1
  %1582 = sub nsw i32 1597463174, %1581
  %1583 = bitcast i32 %1582 to float
  %1584 = fmul fast float %1495, 5.000000e-01
  %1585 = fmul fast float %1583, %1583
  %1586 = fmul fast float %1585, %1584
  %1587 = fsub fast float 1.500000e+00, %1586
  %1588 = fmul fast float %1583, %1495
  %1589 = fmul fast float %1588, %1587
  %1590 = bitcast float %1496 to i32
  %1591 = ashr i32 %1590, 1
  %1592 = sub nsw i32 1597463174, %1591
  %1593 = bitcast i32 %1592 to float
  %1594 = fmul fast float %1496, 5.000000e-01
  %1595 = fmul fast float %1593, %1593
  %1596 = fmul fast float %1595, %1594
  %1597 = fsub fast float 1.500000e+00, %1596
  %1598 = fmul fast float %1593, %1496
  %1599 = fmul fast float %1598, %1597
  %1600 = fsub fast float %1579, %1561
  %1601 = fsub fast float %1589, %1565
  %1602 = fsub fast float %1599, %1569
  %1603 = fmul fast float %1600, %1529
  %1604 = fmul fast float %1601, %1531
  %1605 = fmul fast float %1602, %1536
  %1606 = fadd fast float %1603, %1544
  %1607 = fadd fast float %1604, %1548
  %1608 = fadd fast float %1605, %1552
  %1609 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1610 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1611 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1612 = fmul fast float %1609, %1609
  %1613 = fmul fast float %1610, %1610
  %1614 = fmul fast float %1611, %1611
  %1615 = fsub fast float %1612, %1494
  %1616 = fsub fast float %1613, %1495
  %1617 = fsub fast float %1614, %1496
  %1618 = fmul fast float %1615, %1519
  %1619 = fmul fast float %1616, %1519
  %1620 = fmul fast float %1617, %1519
  %1621 = fadd fast float %1618, %1494
  %1622 = fadd fast float %1619, %1495
  %1623 = fadd fast float %1620, %1496
  %1624 = fadd fast float %1541, %1505
  %1625 = fsub fast float %1624, %1558
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = fsub fast float %1626, %1505
  %1628 = fmul fast float %1627, %1519
  %1629 = fadd fast float %1628, %1505
  br label %1683

; <label>:1630                                    ; preds = %1518
  %1631 = and i32 %1521, 134217728
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1667, label %1633

; <label>:1633                                    ; preds = %1630
  %1634 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1635 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %1636 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %1637 = fadd fast float %1634, -5.000000e-01
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fmul fast float %1637, %1519
  %1641 = fmul fast float %1638, %1519
  %1642 = fmul fast float %1639, %1519
  %1643 = fadd fast float %1640, 5.000000e-01
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1647 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1648 = call float @dx.op.unary.f32(i32 24, float %1496)  ; Sqrt(value)
  %1649 = fmul fast float %1643, 2.000000e+00
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = fmul fast float %1650, %1646
  %1652 = fadd fast float %1651, %1649
  %1653 = fmul fast float %1652, %1646
  %1654 = fmul fast float %1644, 2.000000e+00
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = fmul fast float %1655, %1647
  %1657 = fadd fast float %1656, %1654
  %1658 = fmul fast float %1657, %1647
  %1659 = fmul fast float %1645, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1648
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1648
  %1664 = fmul fast float %1653, %1653
  %1665 = fmul fast float %1658, %1658
  %1666 = fmul fast float %1663, %1663
  br label %1683

; <label>:1667                                    ; preds = %1630
  %1668 = fmul fast float %406, %406
  %1669 = fmul fast float %407, %407
  %1670 = fmul fast float %408, %408
  %1671 = fadd fast float %1668, -1.000000e+00
  %1672 = fadd fast float %1669, -1.000000e+00
  %1673 = fadd fast float %1670, -1.000000e+00
  %1674 = fmul fast float %1519, %1671
  %1675 = fmul fast float %1519, %1672
  %1676 = fmul fast float %1519, %1673
  %1677 = fadd fast float %1674, 1.000000e+00
  %1678 = fadd fast float %1675, 1.000000e+00
  %1679 = fadd fast float %1676, 1.000000e+00
  %1680 = fmul fast float %1677, %1494
  %1681 = fmul fast float %1678, %1495
  %1682 = fmul fast float %1679, %1496
  br label %1683

; <label>:1683                                    ; preds = %1667, %1633, %1524, %1480
  %1684 = phi float [ %1629, %1524 ], [ %1505, %1633 ], [ %1505, %1667 ], [ 0x3FA23C0BE0000000, %1480 ]
  %1685 = phi float [ %1621, %1524 ], [ %1664, %1633 ], [ %1680, %1667 ], [ 1.000000e+00, %1480 ]
  %1686 = phi float [ %1622, %1524 ], [ %1665, %1633 ], [ %1681, %1667 ], [ 1.000000e+00, %1480 ]
  %1687 = phi float [ %1623, %1524 ], [ %1666, %1633 ], [ %1682, %1667 ], [ 1.000000e+00, %1480 ]
  %1688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.i32 %1688, 1
  %1690 = and i32 %1689, 1
  %1691 = icmp ne i32 %1690, 0
  %1692 = add i32 %58, 356
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 32
  %1696 = icmp ne i32 %1695, 0
  %1697 = and i1 %1691, %1696
  %1698 = select i1 %1697, float 1.000000e+00, float %1685
  %1699 = select i1 %1697, float 0x3FD3333340000000, float %1686
  %1700 = select i1 %1697, float 0x3FD3333340000000, float %1687
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 32
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1777, label %1705

; <label>:1705                                    ; preds = %1683
  %1706 = add i32 %58, 108
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = add i32 %58, 428
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = add i32 %1711, 0
  %1713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1713, %dx.types.Handle %112, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1715 = extractvalue %dx.types.ResRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.ResRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.ResRet.f32 %1714, 2
  %1718 = extractvalue %dx.types.ResRet.f32 %1714, 3
  %1719 = and i32 %1708, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = lshr i32 %1708, 8
  %1722 = and i32 %1721, 255
  %1723 = uitofp i32 %1722 to float
  %1724 = lshr i32 %1708, 16
  %1725 = and i32 %1724, 255
  %1726 = uitofp i32 %1725 to float
  %1727 = fmul fast float %1726, 0x3F70101000000000
  %1728 = fmul fast float %1715, %1720
  %1729 = fadd fast float %1728, %1723
  %1730 = fmul fast float %1729, 0x3F70101000000000
  %1731 = fadd fast float %1716, -5.000000e-01
  %1732 = fadd fast float %1718, -5.000000e-01
  %1733 = fmul fast float %1731, %1727
  %1734 = fmul fast float %1732, %1727
  %1735 = fadd fast float %1733, 5.000000e-01
  %1736 = fadd fast float %1734, 5.000000e-01
  %1737 = fmul fast float %1735, 2.000000e+00
  %1738 = fadd fast float %1737, -1.000000e+00
  %1739 = fmul fast float %1736, 2.000000e+00
  %1740 = fadd fast float %1739, -1.000000e+00
  %1741 = fadd fast float %1738, %1740
  %1742 = fmul fast float %1741, 5.000000e-01
  %1743 = fsub fast float %1738, %1740
  %1744 = fmul fast float %1743, 5.000000e-01
  %1745 = call float @dx.op.unary.f32(i32 6, float %1742)  ; FAbs(value)
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = call float @dx.op.unary.f32(i32 6, float %1744)  ; FAbs(value)
  %1748 = fsub fast float %1746, %1747
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1744, float %1748, float %1742, float %1744, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = call float @dx.op.unary.f32(i32 25, float %1749)  ; Rsqrt(value)
  %1751 = fmul fast float %1742, %1750
  %1752 = fmul fast float %1744, %1750
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 67108864
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %1773, label %1757

; <label>:1757                                    ; preds = %1705
  %1758 = add i32 %58, 296
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 65535
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = and i32 %1764, 65535
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = lshr i32 %1760, 16
  %1768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1767)  ; LegacyF16ToF32(value)
  %1769 = fsub fast float %1730, %1768
  %1770 = fmul fast float %1769, %1762
  %1771 = fadd fast float %1770, %1766
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  br label %1773

; <label>:1773                                    ; preds = %1757, %1705
  %1774 = phi float [ %1772, %1757 ], [ %1730, %1705 ]
  %1775 = call float @dx.op.dot2.f32(i32 54, float %1751, float %1752, float %1309, float %1310)  ; Dot2(ax,ay,bx,by)
  %1776 = call float @dx.op.dot2.f32(i32 54, float %1751, float %1752, float %1311, float %1312)  ; Dot2(ax,ay,bx,by)
  br label %1777

; <label>:1777                                    ; preds = %1773, %1683
  %1778 = phi float [ %1774, %1773 ], [ 0x3FD6666660000000, %1683 ]
  %1779 = phi float [ %1775, %1773 ], [ 0.000000e+00, %1683 ]
  %1780 = phi float [ %1776, %1773 ], [ 0.000000e+00, %1683 ]
  %1781 = phi float [ %1717, %1773 ], [ 1.000000e+00, %1683 ]
  %1782 = add i32 %58, 176
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = lshr i32 %1784, 22
  %1786 = shl nuw nsw i32 %1785, 5
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 64
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1825, label %1792

; <label>:1792                                    ; preds = %1777
  %1793 = add i32 %58, 444
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = add i32 %1795, 0
  %1797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = and i32 %1799, 131072
  %1801 = icmp eq i32 %1800, 0
  %1802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1797, %dx.types.Handle %112, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.ResRet.f32 %1802, 2
  %1806 = fmul fast float %389, %1803
  %1807 = fmul fast float %390, %1804
  %1808 = fmul fast float %391, %1805
  br i1 %1801, label %1815, label %1809

; <label>:1809                                    ; preds = %1792
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 0
  %1812 = fmul fast float %1811, %1806
  %1813 = fmul fast float %1811, %1807
  %1814 = fmul fast float %1811, %1808
  br label %1815

; <label>:1815                                    ; preds = %1809, %1792
  %1816 = phi float [ %1812, %1809 ], [ %1806, %1792 ]
  %1817 = phi float [ %1813, %1809 ], [ %1807, %1792 ]
  %1818 = phi float [ %1814, %1809 ], [ %1808, %1792 ]
  %1819 = fmul fast float %1816, %1787
  %1820 = select i1 %271, float %1819, float %1816
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1817, float %1818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = select i1 %271, float 0.000000e+00, float %1816
  %1823 = select i1 %271, float %1821, float %1817
  %1824 = select i1 %271, float 0.000000e+00, float %1818
  br label %1825

; <label>:1825                                    ; preds = %1815, %1777
  %1826 = phi float [ %1822, %1815 ], [ 0.000000e+00, %1777 ]
  %1827 = phi float [ %1823, %1815 ], [ 0.000000e+00, %1777 ]
  %1828 = phi float [ %1824, %1815 ], [ 0.000000e+00, %1777 ]
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 26624
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1856, label %1833

; <label>:1833                                    ; preds = %1825
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 16384
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1856, label %1838

; <label>:1838                                    ; preds = %1833
  %1839 = and i32 %1835, 1048576
  %1840 = icmp ne i32 %1839, 0
  %1841 = add i32 %58, 512
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = add i32 %1843, 0
  %1845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1845, %dx.types.Handle %113, float %1405, float %1406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = add i32 %58, 112
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = lshr i32 %1850, 24
  %1852 = uitofp i32 %1851 to float
  %1853 = fmul fast float %1847, 0x3F70101020000000
  %1854 = select i1 %1840, float 0x3F70101020000000, float %1853
  %1855 = fmul fast float %1854, %1852
  br label %1856

; <label>:1856                                    ; preds = %1838, %1833, %1825
  %1857 = phi float [ %1855, %1838 ], [ 0.000000e+00, %1833 ], [ 0.000000e+00, %1825 ]
  %1858 = add i32 %58, 112
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 255
  %1862 = uitofp i32 %1861 to float
  %1863 = lshr i32 %1860, 8
  %1864 = and i32 %1863, 255
  %1865 = uitofp i32 %1864 to float
  %1866 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1699, float %1700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1867 = fmul fast float %1865, %1866
  %1868 = fadd fast float %1867, %1862
  %1869 = fmul fast float %1868, 0x3F70101020000000
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  br i1 %1297, label %1871, label %1879

; <label>:1871                                    ; preds = %1856
  %1872 = fsub fast float 1.000000e+00, %1478
  %1873 = fmul fast float %1872, %1287
  %1874 = fmul fast float %1872, %1288
  %1875 = fmul fast float %1872, %1289
  %1876 = fmul fast float %1872, %1284
  %1877 = fmul fast float %1872, %1285
  %1878 = fmul fast float %1872, %1286
  br label %1879

; <label>:1879                                    ; preds = %1871, %1856
  %1880 = phi float [ %1876, %1871 ], [ %1284, %1856 ]
  %1881 = phi float [ %1877, %1871 ], [ %1285, %1856 ]
  %1882 = phi float [ %1878, %1871 ], [ %1286, %1856 ]
  %1883 = phi float [ %1873, %1871 ], [ %1287, %1856 ]
  %1884 = phi float [ %1874, %1871 ], [ %1288, %1856 ]
  %1885 = phi float [ %1875, %1871 ], [ %1289, %1856 ]
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 3
  %1889 = icmp eq i32 %1888, 3
  br i1 %1889, label %1968, label %1890

; <label>:1890                                    ; preds = %1879
  %1891 = and i32 %1887, 16
  %1892 = icmp ne i32 %1891, 0
  %1893 = select i1 %1892, float %1478, float 0.000000e+00
  %1894 = icmp eq i32 %1888, 0
  br i1 %1894, label %1895, label %1923

; <label>:1895                                    ; preds = %1890
  %1896 = and i32 %1887, 64
  %1897 = icmp ne i32 %1896, 0
  %1898 = select i1 %1897, float %1478, float 0.000000e+00
  %1899 = fsub fast float %1698, %1883
  %1900 = fsub fast float %1699, %1884
  %1901 = fsub fast float %1700, %1885
  %1902 = fmul fast float %1893, %1899
  %1903 = fmul fast float %1893, %1900
  %1904 = fmul fast float %1893, %1901
  %1905 = fadd fast float %1902, %1883
  %1906 = fadd fast float %1903, %1884
  %1907 = fadd fast float %1904, %1885
  %1908 = fsub fast float %1684, %1290
  %1909 = fmul fast float %1893, %1908
  %1910 = fadd fast float %1909, %1290
  %1911 = fsub fast float %1826, %1880
  %1912 = fsub fast float %1827, %1881
  %1913 = fsub fast float %1828, %1882
  %1914 = fmul fast float %1898, %1911
  %1915 = fmul fast float %1898, %1912
  %1916 = fmul fast float %1898, %1913
  %1917 = fadd fast float %1914, %1880
  %1918 = fadd fast float %1915, %1881
  %1919 = fadd fast float %1916, %1882
  %1920 = fsub fast float %1870, %1295
  %1921 = fmul fast float %1893, %1920
  %1922 = fadd fast float %1921, %1295
  br label %1968

; <label>:1923                                    ; preds = %1890
  %1924 = icmp eq i32 %1888, 1
  br i1 %1924, label %1925, label %1938

; <label>:1925                                    ; preds = %1923
  %1926 = fadd fast float %1698, -1.000000e+00
  %1927 = fadd fast float %1699, -1.000000e+00
  %1928 = fadd fast float %1700, -1.000000e+00
  %1929 = fmul fast float %1893, %1926
  %1930 = fmul fast float %1893, %1927
  %1931 = fmul fast float %1893, %1928
  %1932 = fadd fast float %1929, 1.000000e+00
  %1933 = fadd fast float %1930, 1.000000e+00
  %1934 = fadd fast float %1931, 1.000000e+00
  %1935 = fmul fast float %1932, %1883
  %1936 = fmul fast float %1933, %1884
  %1937 = fmul fast float %1934, %1885
  br label %1968

; <label>:1938                                    ; preds = %1923
  %1939 = icmp eq i32 %1888, 2
  br i1 %1939, label %1940, label %1968

; <label>:1940                                    ; preds = %1938
  %1941 = call float @dx.op.unary.f32(i32 24, float %1698)  ; Sqrt(value)
  %1942 = call float @dx.op.unary.f32(i32 24, float %1699)  ; Sqrt(value)
  %1943 = call float @dx.op.unary.f32(i32 24, float %1700)  ; Sqrt(value)
  %1944 = fadd fast float %1941, -5.000000e-01
  %1945 = fadd fast float %1942, -5.000000e-01
  %1946 = fadd fast float %1943, -5.000000e-01
  %1947 = fmul fast float %1944, %1893
  %1948 = fmul fast float %1945, %1893
  %1949 = fmul fast float %1946, %1893
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fadd fast float %1948, 5.000000e-01
  %1952 = fadd fast float %1949, 5.000000e-01
  %1953 = fmul fast float %1950, 2.000000e+00
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1954, %1883
  %1956 = fadd fast float %1955, %1953
  %1957 = fmul fast float %1956, %1883
  %1958 = fmul fast float %1951, 2.000000e+00
  %1959 = fsub fast float 1.000000e+00, %1958
  %1960 = fmul fast float %1959, %1884
  %1961 = fadd fast float %1960, %1958
  %1962 = fmul fast float %1961, %1884
  %1963 = fmul fast float %1952, 2.000000e+00
  %1964 = fsub fast float 1.000000e+00, %1963
  %1965 = fmul fast float %1964, %1885
  %1966 = fadd fast float %1965, %1963
  %1967 = fmul fast float %1966, %1885
  br label %1968

; <label>:1968                                    ; preds = %1940, %1938, %1925, %1895, %1879
  %1969 = phi float [ %1880, %1879 ], [ %1880, %1940 ], [ %1880, %1938 ], [ %1880, %1925 ], [ %1917, %1895 ]
  %1970 = phi float [ %1881, %1879 ], [ %1881, %1940 ], [ %1881, %1938 ], [ %1881, %1925 ], [ %1918, %1895 ]
  %1971 = phi float [ %1882, %1879 ], [ %1882, %1940 ], [ %1882, %1938 ], [ %1882, %1925 ], [ %1919, %1895 ]
  %1972 = phi float [ %1883, %1879 ], [ %1957, %1940 ], [ %1883, %1938 ], [ %1935, %1925 ], [ %1905, %1895 ]
  %1973 = phi float [ %1884, %1879 ], [ %1962, %1940 ], [ %1884, %1938 ], [ %1936, %1925 ], [ %1906, %1895 ]
  %1974 = phi float [ %1885, %1879 ], [ %1967, %1940 ], [ %1885, %1938 ], [ %1937, %1925 ], [ %1907, %1895 ]
  %1975 = phi float [ %1290, %1879 ], [ %1290, %1940 ], [ %1290, %1938 ], [ %1290, %1925 ], [ %1910, %1895 ]
  %1976 = phi float [ %1295, %1879 ], [ %1295, %1940 ], [ %1295, %1938 ], [ %1295, %1925 ], [ %1922, %1895 ]
  %1977 = and i32 %1887, 12
  %1978 = icmp eq i32 %1977, 12
  br i1 %1978, label %2061, label %1979

; <label>:1979                                    ; preds = %1968
  %1980 = and i32 %1887, 2097184
  %1981 = icmp eq i32 %1980, 2097184
  %1982 = select i1 %1981, float %1478, float 0.000000e+00
  %1983 = and i32 %1887, 4194336
  %1984 = icmp eq i32 %1983, 4194336
  %1985 = select i1 %1984, float %1478, float 0.000000e+00
  %1986 = and i32 %1887, 8388640
  %1987 = icmp eq i32 %1986, 8388640
  %1988 = select i1 %1987, float %1478, float 0.000000e+00
  %1989 = and i32 %1887, 16384
  %1990 = icmp ne i32 %1989, 0
  %1991 = select i1 %1990, float %1478, float 0.000000e+00
  %1992 = icmp eq i32 %1977, 0
  br i1 %1992, label %1993, label %2009

; <label>:1993                                    ; preds = %1979
  %1994 = fsub fast float %1779, %1282
  %1995 = fsub fast float %1780, %1283
  %1996 = fmul fast float %1982, %1994
  %1997 = fmul fast float %1982, %1995
  %1998 = fadd fast float %1996, %1282
  %1999 = fadd fast float %1997, %1283
  %2000 = fsub fast float %1781, %1293
  %2001 = fmul fast float %1985, %2000
  %2002 = fadd fast float %2001, %1293
  %2003 = fsub fast float %1778, %1292
  %2004 = fmul fast float %1988, %2003
  %2005 = fadd fast float %2004, %1292
  %2006 = fsub fast float %1857, %1294
  %2007 = fmul fast float %1991, %2006
  %2008 = fadd fast float %2007, %1294
  br label %2061

; <label>:2009                                    ; preds = %1979
  %2010 = icmp eq i32 %1977, 4
  br i1 %2010, label %2011, label %2045

; <label>:2011                                    ; preds = %2009
  %2012 = fmul fast float %1982, %1779
  %2013 = fmul fast float %1982, %1780
  %2014 = fadd fast float %2012, %1282
  %2015 = fadd fast float %2013, %1283
  %2016 = call float @dx.op.binary.f32(i32 36, float %1293, float %1781)  ; FMin(a,b)
  %2017 = fsub fast float %2016, %1293
  %2018 = fmul fast float %2017, %1985
  %2019 = fadd fast float %2018, %1293
  %2020 = fadd fast float %1778, %1292
  %2021 = fmul fast float %2020, 0x3FF337FAE0000000
  %2022 = fmul fast float %1292, %1292
  %2023 = fmul fast float %1778, %1778
  %2024 = fadd fast float %2023, %2022
  %2025 = fmul fast float %2024, 0x3FE5152B00000000
  %2026 = fmul fast float %1292, 0xBFCC1F85E0000000
  %2027 = fmul fast float %2026, %1778
  %2028 = fadd fast float %2027, 0xBFE1363700000000
  %2029 = fadd fast float %2028, %2021
  %2030 = fsub fast float %2029, %2025
  %2031 = fmul fast float %2020, 0x3FBA6F0D00000000
  %2032 = fmul fast float %2024, 0x3FD0432880000000
  %2033 = fmul fast float %1292, 0xBFEF110800000000
  %2034 = fmul fast float %2033, %1778
  %2035 = fadd fast float %2034, 1.000000e+00
  %2036 = fsub fast float %2035, %2031
  %2037 = fadd fast float %2036, %2032
  %2038 = fdiv fast float %2030, %2037
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fsub fast float %2039, %1292
  %2041 = fmul fast float %2040, %1988
  %2042 = fadd fast float %2041, %1292
  %2043 = fmul fast float %1991, %1857
  %2044 = fadd fast float %2043, %1294
  br label %2061

; <label>:2045                                    ; preds = %2009
  %2046 = icmp eq i32 %1977, 8
  br i1 %2046, label %2047, label %2061

; <label>:2047                                    ; preds = %2045
  %2048 = fmul fast float %1982, %1779
  %2049 = fmul fast float %1982, %1780
  %2050 = fadd fast float %2048, %1282
  %2051 = fadd fast float %2049, %1283
  %2052 = call float @dx.op.binary.f32(i32 36, float %1293, float %1781)  ; FMin(a,b)
  %2053 = fsub fast float %2052, %1293
  %2054 = fmul fast float %2053, %1985
  %2055 = fadd fast float %2054, %1293
  %2056 = fsub fast float %1778, %1292
  %2057 = fmul fast float %1988, %2056
  %2058 = fadd fast float %2057, %1292
  %2059 = fmul fast float %1991, %1857
  %2060 = fadd fast float %2059, %1294
  br label %2061

; <label>:2061                                    ; preds = %2047, %2045, %2011, %1993, %1968, %1477, %1296, %1281
  %2062 = phi float [ %1282, %1968 ], [ %1282, %1477 ], [ %1282, %1281 ], [ %2050, %2047 ], [ %1282, %2045 ], [ %2014, %2011 ], [ %1998, %1993 ], [ %1282, %1296 ]
  %2063 = phi float [ %1283, %1968 ], [ %1283, %1477 ], [ %1283, %1281 ], [ %2051, %2047 ], [ %1283, %2045 ], [ %2015, %2011 ], [ %1999, %1993 ], [ %1283, %1296 ]
  %2064 = phi float [ %1969, %1968 ], [ %1284, %1477 ], [ %1284, %1281 ], [ %1969, %2047 ], [ %1969, %2045 ], [ %1969, %2011 ], [ %1969, %1993 ], [ %1284, %1296 ]
  %2065 = phi float [ %1970, %1968 ], [ %1285, %1477 ], [ %1285, %1281 ], [ %1970, %2047 ], [ %1970, %2045 ], [ %1970, %2011 ], [ %1970, %1993 ], [ %1285, %1296 ]
  %2066 = phi float [ %1971, %1968 ], [ %1286, %1477 ], [ %1286, %1281 ], [ %1971, %2047 ], [ %1971, %2045 ], [ %1971, %2011 ], [ %1971, %1993 ], [ %1286, %1296 ]
  %2067 = phi float [ %1972, %1968 ], [ %1287, %1477 ], [ %1287, %1281 ], [ %1972, %2047 ], [ %1972, %2045 ], [ %1972, %2011 ], [ %1972, %1993 ], [ %1287, %1296 ]
  %2068 = phi float [ %1973, %1968 ], [ %1288, %1477 ], [ %1288, %1281 ], [ %1973, %2047 ], [ %1973, %2045 ], [ %1973, %2011 ], [ %1973, %1993 ], [ %1288, %1296 ]
  %2069 = phi float [ %1974, %1968 ], [ %1289, %1477 ], [ %1289, %1281 ], [ %1974, %2047 ], [ %1974, %2045 ], [ %1974, %2011 ], [ %1974, %1993 ], [ %1289, %1296 ]
  %2070 = phi float [ %1975, %1968 ], [ %1290, %1477 ], [ %1290, %1281 ], [ %1975, %2047 ], [ %1975, %2045 ], [ %1975, %2011 ], [ %1975, %1993 ], [ %1290, %1296 ]
  %2071 = phi float [ %1292, %1968 ], [ %1292, %1477 ], [ %1292, %1281 ], [ %2058, %2047 ], [ %1292, %2045 ], [ %2042, %2011 ], [ %2005, %1993 ], [ %1292, %1296 ]
  %2072 = phi float [ %1293, %1968 ], [ %1293, %1477 ], [ %1293, %1281 ], [ %2055, %2047 ], [ %1293, %2045 ], [ %2019, %2011 ], [ %2002, %1993 ], [ %1293, %1296 ]
  %2073 = phi float [ %1294, %1968 ], [ %1294, %1477 ], [ %1294, %1281 ], [ %2060, %2047 ], [ %1294, %2045 ], [ %2044, %2011 ], [ %2008, %1993 ], [ %1294, %1296 ]
  %2074 = phi float [ %1976, %1968 ], [ %1295, %1477 ], [ %1295, %1281 ], [ %1976, %2047 ], [ %1976, %2045 ], [ %1976, %2011 ], [ %1976, %1993 ], [ %1295, %1296 ]
  br i1 %653, label %2840, label %2075

; <label>:2075                                    ; preds = %2061
  %2076 = icmp ult i32 %709, 3
  %2077 = add i32 %58, 56
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = add i32 %58, 60
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = or i32 %2082, %2079
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2840, label %2085

; <label>:2085                                    ; preds = %2075
  %2086 = and i32 %2079, 262144
  %2087 = icmp ne i32 %2086, 0
  %2088 = select i1 %2087, float %66, float 1.000000e+00
  %2089 = select i1 %2087, float %67, float 0.000000e+00
  %2090 = select i1 %2087, float %68, float 0.000000e+00
  %2091 = select i1 %2087, float %69, float 1.000000e+00
  %2092 = select i1 %2087, float %70, float %98
  %2093 = select i1 %2087, float %71, float %99
  %2094 = add i32 %58, 316
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = lshr i32 %2096, 16
  %2098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2097)  ; LegacyF16ToF32(value)
  %2099 = fmul fast float %2098, 0x3F50624DE0000000
  %2100 = add i32 %58, 120
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = lshr i32 %2102, 16
  %2104 = and i32 %2103, 255
  %2105 = lshr i32 %2102, 24
  %2106 = add i32 %58, 324
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 65535
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = lshr i32 %2108, 16
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = add i32 %58, 64
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 22
  %2117 = shl nuw nsw i32 %2116, 5
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = shl i32 %2115, 4
  %2120 = and i32 %2119, 32752
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = lshr i32 %2115, 7
  %2123 = and i32 %2122, 32752
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2127 = fmul fast float %2126, 1.000000e+03
  %2128 = fmul fast float %2127, %537
  %2129 = call float @dx.op.unary.f32(i32 22, float %2128)  ; Frc(value)
  %2130 = fadd fast float %2129, %525
  %2131 = fmul fast float %2127, %539
  %2132 = call float @dx.op.unary.f32(i32 22, float %2131)  ; Frc(value)
  %2133 = fadd fast float %2132, %526
  %2134 = fmul fast float %2099, %2127
  %2135 = call float @dx.op.unary.f32(i32 22, float %2134)  ; Frc(value)
  %2136 = fmul fast float %2135, 0x401921FB60000000
  %2137 = fadd fast float %2136, %2118
  %2138 = call float @dx.op.unary.f32(i32 13, float %2137)  ; Sin(value)
  %2139 = call float @dx.op.unary.f32(i32 12, float %2137)  ; Cos(value)
  %2140 = fsub fast float -0.000000e+00, %2138
  %2141 = fadd fast float %2092, -5.000000e-01
  %2142 = fadd fast float %2093, -5.000000e-01
  %2143 = fmul fast float %2110, %2141
  %2144 = fmul fast float %2112, %2142
  %2145 = fadd fast float %2143, 5.000000e-01
  %2146 = fadd fast float %2144, 5.000000e-01
  %2147 = fmul fast float %2121, %2145
  %2148 = fmul fast float %2124, %2146
  %2149 = fmul fast float %2139, %2147
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2140, float %2148, float %2149)  ; FMad(a,b,c)
  %2151 = fmul fast float %2138, %2147
  %2152 = call float @dx.op.tertiary.f32(i32 46, float %2139, float %2148, float %2151)  ; FMad(a,b,c)
  %2153 = fadd fast float %2130, %2150
  %2154 = fadd fast float %2133, %2152
  %2155 = icmp ugt i32 %2104, 1
  %2156 = icmp ugt i32 %2102, 33554431
  %2157 = or i1 %2156, %2155
  br i1 %2157, label %2158, label %2183

; <label>:2158                                    ; preds = %2085
  %2159 = add i32 %58, 260
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = lshr i32 %2161, 16
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = fmul fast float %2126, %2163
  %2165 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2166 = mul nuw nsw i32 %2104, %2105
  %2167 = uitofp i32 %2166 to float
  %2168 = fmul fast float %2165, %2167
  %2169 = call float @dx.op.unary.f32(i32 27, float %2168)  ; Round_ni(value)
  %2170 = fptoui float %2169 to i32
  %2171 = urem i32 %2170, %2104
  %2172 = udiv i32 %2170, %2105
  %2173 = call float @dx.op.unary.f32(i32 22, float %2153)  ; Frc(value)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2154)  ; Frc(value)
  %2175 = uitofp i32 %2171 to float
  %2176 = uitofp i32 %2172 to float
  %2177 = fadd fast float %2173, %2175
  %2178 = fadd fast float %2174, %2176
  %2179 = uitofp i32 %2104 to float
  %2180 = uitofp i32 %2105 to float
  %2181 = fdiv fast float %2177, %2179
  %2182 = fdiv fast float %2178, %2180
  br label %2183

; <label>:2183                                    ; preds = %2158, %2085
  %2184 = phi float [ %2181, %2158 ], [ %2153, %2085 ]
  %2185 = phi float [ %2182, %2158 ], [ %2154, %2085 ]
  %2186 = and i32 %2079, 256
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2234, label %2188

; <label>:2188                                    ; preds = %2183
  %2189 = add i32 %58, 480
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %2191, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2193, %dx.types.Handle %113, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = add i32 %58, 132
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = shl i32 %2198, 4
  %2200 = and i32 %2199, 32752
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = lshr i32 %2198, 7
  %2203 = and i32 %2202, 32752
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = fsub fast float 1.000000e+00, %705
  %2206 = call float @dx.op.binary.f32(i32 35, float %2205, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2207 = bitcast float %705 to i32
  %2208 = sitofp i32 %2207 to float
  %2209 = fadd fast float %2208, 0xC1CFBF8940000000
  %2210 = fmul fast float %2204, %2209
  %2211 = fadd fast float %2210, 0x41CFBF8940000000
  %2212 = fptosi float %2211 to i32
  %2213 = bitcast i32 %2212 to float
  %2214 = bitcast float %2206 to i32
  %2215 = sitofp i32 %2214 to float
  %2216 = fadd fast float %2215, 0xC1CFBF8940000000
  %2217 = fmul fast float %2216, %2204
  %2218 = fadd fast float %2217, 0x41CFBF8940000000
  %2219 = fptosi float %2218 to i32
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2213, %2201
  %2222 = fmul fast float %2220, %2201
  %2223 = fsub fast float %2206, %2221
  %2224 = fadd fast float %2222, %2206
  %2225 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2226 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2227 = fsub fast float %2195, %2225
  %2228 = fsub fast float %2226, %2225
  %2229 = bitcast float %2228 to i32
  %2230 = sub nsw i32 2129859010, %2229
  %2231 = bitcast i32 %2230 to float
  %2232 = fmul fast float %2231, %2227
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  br label %2234

; <label>:2234                                    ; preds = %2188, %2183
  %2235 = phi float [ %2233, %2188 ], [ %705, %2183 ]
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 128
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2256, label %2240

; <label>:2240                                    ; preds = %2234
  %2241 = add i32 %58, 464
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = add i32 %2243, 0
  %2245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2245, %dx.types.Handle %113, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2247 = extractvalue %dx.types.ResRet.f32 %2246, 0
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 524288
  %2251 = icmp ne i32 %2250, 0
  %2252 = fcmp fast ogt float %2247, 0x3FE0101020000000
  %2253 = select i1 %2252, float 1.000000e+00, float 0.000000e+00
  %2254 = select i1 %2251, float %2253, float %2247
  %2255 = fmul fast float %2254, %2235
  br label %2256

; <label>:2256                                    ; preds = %2240, %2234
  %2257 = phi float [ %2255, %2240 ], [ %2235, %2234 ]
  %2258 = fcmp fast ult float %2257, 0x3F70101020000000
  br i1 %2258, label %2840, label %2259

; <label>:2259                                    ; preds = %2256
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 16
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2462, label %2264

; <label>:2264                                    ; preds = %2259
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %58, 416
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2269, 0
  %2271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2271, %dx.types.Handle %112, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = extractvalue %dx.types.ResRet.f32 %2272, 3
  %2277 = and i32 %2266, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2266, 8
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2276, %2278
  %2283 = fadd fast float %2282, %2281
  %2284 = fmul fast float %2283, 0x3F70101000000000
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 512
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2297, label %2289

; <label>:2289                                    ; preds = %2264
  %2290 = add i32 %58, 500
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = add i32 %2292, 0
  %2294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2294, %dx.types.Handle %113, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  br label %2297

; <label>:2297                                    ; preds = %2289, %2264
  %2298 = phi float [ %2296, %2289 ], [ 1.000000e+00, %2264 ]
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 33554432
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2409, label %2303

; <label>:2303                                    ; preds = %2297
  %2304 = add i32 %58, 256
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 65535
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = lshr i32 %2306, 16
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = add i32 %58, 260
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = lshr i32 %2317, 24
  %2319 = uitofp i32 %2318 to float
  %2320 = fmul fast float %2319, 0x3F70101020000000
  %2321 = and i32 %2317, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2322, 0x3F70101020000000
  %2324 = lshr i32 %2317, 8
  %2325 = and i32 %2324, 255
  %2326 = uitofp i32 %2325 to float
  %2327 = fmul fast float %2326, 0x3F70101020000000
  %2328 = lshr i32 %2317, 16
  %2329 = and i32 %2328, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = fmul fast float %2330, 0x3F70101020000000
  %2332 = add i32 %58, 252
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 24
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101020000000
  %2338 = and i32 %2334, 255
  %2339 = uitofp i32 %2338 to float
  %2340 = fmul fast float %2339, 0x3F70101020000000
  %2341 = lshr i32 %2334, 8
  %2342 = and i32 %2341, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = lshr i32 %2334, 16
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = bitcast float %2273 to i32
  %2350 = ashr i32 %2349, 1
  %2351 = sub nsw i32 1597463174, %2350
  %2352 = bitcast i32 %2351 to float
  %2353 = fmul fast float %2273, 5.000000e-01
  %2354 = fmul fast float %2352, %2352
  %2355 = fmul fast float %2354, %2353
  %2356 = fsub fast float 1.500000e+00, %2355
  %2357 = fmul fast float %2352, %2273
  %2358 = fmul fast float %2357, %2356
  %2359 = bitcast float %2274 to i32
  %2360 = ashr i32 %2359, 1
  %2361 = sub nsw i32 1597463174, %2360
  %2362 = bitcast i32 %2361 to float
  %2363 = fmul fast float %2274, 5.000000e-01
  %2364 = fmul fast float %2362, %2362
  %2365 = fmul fast float %2364, %2363
  %2366 = fsub fast float 1.500000e+00, %2365
  %2367 = fmul fast float %2362, %2274
  %2368 = fmul fast float %2367, %2366
  %2369 = bitcast float %2275 to i32
  %2370 = ashr i32 %2369, 1
  %2371 = sub nsw i32 1597463174, %2370
  %2372 = bitcast i32 %2371 to float
  %2373 = fmul fast float %2275, 5.000000e-01
  %2374 = fmul fast float %2372, %2372
  %2375 = fmul fast float %2374, %2373
  %2376 = fsub fast float 1.500000e+00, %2375
  %2377 = fmul fast float %2372, %2275
  %2378 = fmul fast float %2377, %2376
  %2379 = fsub fast float %2358, %2340
  %2380 = fsub fast float %2368, %2344
  %2381 = fsub fast float %2378, %2348
  %2382 = fmul fast float %2379, %2308
  %2383 = fmul fast float %2380, %2310
  %2384 = fmul fast float %2381, %2315
  %2385 = fadd fast float %2382, %2323
  %2386 = fadd fast float %2383, %2327
  %2387 = fadd fast float %2384, %2331
  %2388 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2389 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2390 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2391 = fmul fast float %2388, %2388
  %2392 = fmul fast float %2389, %2389
  %2393 = fmul fast float %2390, %2390
  %2394 = fsub fast float %2391, %2273
  %2395 = fsub fast float %2392, %2274
  %2396 = fsub fast float %2393, %2275
  %2397 = fmul fast float %2394, %2298
  %2398 = fmul fast float %2395, %2298
  %2399 = fmul fast float %2396, %2298
  %2400 = fadd fast float %2397, %2273
  %2401 = fadd fast float %2398, %2274
  %2402 = fadd fast float %2399, %2275
  %2403 = fadd fast float %2320, %2284
  %2404 = fsub fast float %2403, %2337
  %2405 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2406 = fsub fast float %2405, %2284
  %2407 = fmul fast float %2406, %2298
  %2408 = fadd fast float %2407, %2284
  br label %2462

; <label>:2409                                    ; preds = %2297
  %2410 = and i32 %2300, 134217728
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2446, label %2412

; <label>:2412                                    ; preds = %2409
  %2413 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2414 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %2415 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %2416 = fadd fast float %2413, -5.000000e-01
  %2417 = fadd fast float %2414, -5.000000e-01
  %2418 = fadd fast float %2415, -5.000000e-01
  %2419 = fmul fast float %2416, %2298
  %2420 = fmul fast float %2417, %2298
  %2421 = fmul fast float %2418, %2298
  %2422 = fadd fast float %2419, 5.000000e-01
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fadd fast float %2421, 5.000000e-01
  %2425 = call float @dx.op.unary.f32(i32 24, float %2273)  ; Sqrt(value)
  %2426 = call float @dx.op.unary.f32(i32 24, float %2274)  ; Sqrt(value)
  %2427 = call float @dx.op.unary.f32(i32 24, float %2275)  ; Sqrt(value)
  %2428 = fmul fast float %2422, 2.000000e+00
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = fmul fast float %2429, %2425
  %2431 = fadd fast float %2430, %2428
  %2432 = fmul fast float %2431, %2425
  %2433 = fmul fast float %2423, 2.000000e+00
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2434, %2426
  %2436 = fadd fast float %2435, %2433
  %2437 = fmul fast float %2436, %2426
  %2438 = fmul fast float %2424, 2.000000e+00
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2439, %2427
  %2441 = fadd fast float %2440, %2438
  %2442 = fmul fast float %2441, %2427
  %2443 = fmul fast float %2432, %2432
  %2444 = fmul fast float %2437, %2437
  %2445 = fmul fast float %2442, %2442
  br label %2462

; <label>:2446                                    ; preds = %2409
  %2447 = fmul fast float %513, %513
  %2448 = fmul fast float %514, %514
  %2449 = fmul fast float %515, %515
  %2450 = fadd fast float %2447, -1.000000e+00
  %2451 = fadd fast float %2448, -1.000000e+00
  %2452 = fadd fast float %2449, -1.000000e+00
  %2453 = fmul fast float %2298, %2450
  %2454 = fmul fast float %2298, %2451
  %2455 = fmul fast float %2298, %2452
  %2456 = fadd fast float %2453, 1.000000e+00
  %2457 = fadd fast float %2454, 1.000000e+00
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fmul fast float %2456, %2273
  %2460 = fmul fast float %2457, %2274
  %2461 = fmul fast float %2458, %2275
  br label %2462

; <label>:2462                                    ; preds = %2446, %2412, %2303, %2259
  %2463 = phi float [ %2408, %2303 ], [ %2284, %2412 ], [ %2284, %2446 ], [ 0x3FA23C0BE0000000, %2259 ]
  %2464 = phi float [ %2400, %2303 ], [ %2443, %2412 ], [ %2459, %2446 ], [ 1.000000e+00, %2259 ]
  %2465 = phi float [ %2401, %2303 ], [ %2444, %2412 ], [ %2460, %2446 ], [ 1.000000e+00, %2259 ]
  %2466 = phi float [ %2402, %2303 ], [ %2445, %2412 ], [ %2461, %2446 ], [ 1.000000e+00, %2259 ]
  %2467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.i32 %2467, 1
  %2469 = and i32 %2468, 1
  %2470 = icmp ne i32 %2469, 0
  %2471 = add i32 %58, 356
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 32
  %2475 = icmp ne i32 %2474, 0
  %2476 = and i1 %2470, %2475
  %2477 = select i1 %2476, float 1.000000e+00, float %2464
  %2478 = select i1 %2476, float 0x3FD3333340000000, float %2465
  %2479 = select i1 %2476, float 0x3FD3333340000000, float %2466
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 32
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2556, label %2484

; <label>:2484                                    ; preds = %2462
  %2485 = add i32 %58, 124
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = add i32 %58, 432
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = add i32 %2490, 0
  %2492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2492, %dx.types.Handle %112, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.ResRet.f32 %2493, 1
  %2496 = extractvalue %dx.types.ResRet.f32 %2493, 2
  %2497 = extractvalue %dx.types.ResRet.f32 %2493, 3
  %2498 = and i32 %2487, 255
  %2499 = uitofp i32 %2498 to float
  %2500 = lshr i32 %2487, 8
  %2501 = and i32 %2500, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = lshr i32 %2487, 16
  %2504 = and i32 %2503, 255
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2505, 0x3F70101000000000
  %2507 = fmul fast float %2494, %2499
  %2508 = fadd fast float %2507, %2502
  %2509 = fmul fast float %2508, 0x3F70101000000000
  %2510 = fadd fast float %2495, -5.000000e-01
  %2511 = fadd fast float %2497, -5.000000e-01
  %2512 = fmul fast float %2510, %2506
  %2513 = fmul fast float %2511, %2506
  %2514 = fadd fast float %2512, 5.000000e-01
  %2515 = fadd fast float %2513, 5.000000e-01
  %2516 = fmul fast float %2514, 2.000000e+00
  %2517 = fadd fast float %2516, -1.000000e+00
  %2518 = fmul fast float %2515, 2.000000e+00
  %2519 = fadd fast float %2518, -1.000000e+00
  %2520 = fadd fast float %2517, %2519
  %2521 = fmul fast float %2520, 5.000000e-01
  %2522 = fsub fast float %2517, %2519
  %2523 = fmul fast float %2522, 5.000000e-01
  %2524 = call float @dx.op.unary.f32(i32 6, float %2521)  ; FAbs(value)
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = call float @dx.op.unary.f32(i32 6, float %2523)  ; FAbs(value)
  %2527 = fsub fast float %2525, %2526
  %2528 = call float @dx.op.dot3.f32(i32 55, float %2521, float %2523, float %2527, float %2521, float %2523, float %2527)  ; Dot3(ax,ay,az,bx,by,bz)
  %2529 = call float @dx.op.unary.f32(i32 25, float %2528)  ; Rsqrt(value)
  %2530 = fmul fast float %2521, %2529
  %2531 = fmul fast float %2523, %2529
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 67108864
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2552, label %2536

; <label>:2536                                    ; preds = %2484
  %2537 = add i32 %58, 312
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 65535
  %2541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2540)  ; LegacyF16ToF32(value)
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 65535
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = lshr i32 %2539, 16
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = fsub fast float %2509, %2547
  %2549 = fmul fast float %2548, %2541
  %2550 = fadd fast float %2549, %2545
  %2551 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  br label %2552

; <label>:2552                                    ; preds = %2536, %2484
  %2553 = phi float [ %2551, %2536 ], [ %2509, %2484 ]
  %2554 = call float @dx.op.dot2.f32(i32 54, float %2530, float %2531, float %2088, float %2089)  ; Dot2(ax,ay,bx,by)
  %2555 = call float @dx.op.dot2.f32(i32 54, float %2530, float %2531, float %2090, float %2091)  ; Dot2(ax,ay,bx,by)
  br label %2556

; <label>:2556                                    ; preds = %2552, %2462
  %2557 = phi float [ %2553, %2552 ], [ 0x3FD6666660000000, %2462 ]
  %2558 = phi float [ %2554, %2552 ], [ 0.000000e+00, %2462 ]
  %2559 = phi float [ %2555, %2552 ], [ 0.000000e+00, %2462 ]
  %2560 = phi float [ %2496, %2552 ], [ 1.000000e+00, %2462 ]
  %2561 = add i32 %58, 192
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = lshr i32 %2563, 22
  %2565 = shl nuw nsw i32 %2564, 5
  %2566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2565)  ; LegacyF16ToF32(value)
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 64
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2604, label %2571

; <label>:2571                                    ; preds = %2556
  %2572 = add i32 %58, 448
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = add i32 %2574, 0
  %2576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 131072
  %2580 = icmp eq i32 %2579, 0
  %2581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2576, %dx.types.Handle %112, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.ResRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.ResRet.f32 %2581, 2
  %2585 = fmul fast float %496, %2582
  %2586 = fmul fast float %497, %2583
  %2587 = fmul fast float %498, %2584
  br i1 %2580, label %2594, label %2588

; <label>:2588                                    ; preds = %2571
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = fmul fast float %2590, %2585
  %2592 = fmul fast float %2590, %2586
  %2593 = fmul fast float %2590, %2587
  br label %2594

; <label>:2594                                    ; preds = %2588, %2571
  %2595 = phi float [ %2591, %2588 ], [ %2585, %2571 ]
  %2596 = phi float [ %2592, %2588 ], [ %2586, %2571 ]
  %2597 = phi float [ %2593, %2588 ], [ %2587, %2571 ]
  %2598 = fmul fast float %2595, %2566
  %2599 = select i1 %271, float %2598, float %2595
  %2600 = call float @dx.op.dot3.f32(i32 55, float %2599, float %2596, float %2597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2601 = select i1 %271, float 0.000000e+00, float %2595
  %2602 = select i1 %271, float %2600, float %2596
  %2603 = select i1 %271, float 0.000000e+00, float %2597
  br label %2604

; <label>:2604                                    ; preds = %2594, %2556
  %2605 = phi float [ %2601, %2594 ], [ 0.000000e+00, %2556 ]
  %2606 = phi float [ %2602, %2594 ], [ 0.000000e+00, %2556 ]
  %2607 = phi float [ %2603, %2594 ], [ 0.000000e+00, %2556 ]
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 26624
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2635, label %2612

; <label>:2612                                    ; preds = %2604
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 16384
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2635, label %2617

; <label>:2617                                    ; preds = %2612
  %2618 = and i32 %2614, 1048576
  %2619 = icmp ne i32 %2618, 0
  %2620 = add i32 %58, 516
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %2622, 0
  %2624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2624, %dx.types.Handle %113, float %2184, float %2185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = add i32 %58, 128
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = lshr i32 %2629, 24
  %2631 = uitofp i32 %2630 to float
  %2632 = fmul fast float %2626, 0x3F70101020000000
  %2633 = select i1 %2619, float 0x3F70101020000000, float %2632
  %2634 = fmul fast float %2633, %2631
  br label %2635

; <label>:2635                                    ; preds = %2617, %2612, %2604
  %2636 = phi float [ %2634, %2617 ], [ 0.000000e+00, %2612 ], [ 0.000000e+00, %2604 ]
  %2637 = add i32 %58, 128
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 255
  %2641 = uitofp i32 %2640 to float
  %2642 = lshr i32 %2639, 8
  %2643 = and i32 %2642, 255
  %2644 = uitofp i32 %2643 to float
  %2645 = call float @dx.op.dot3.f32(i32 55, float %2477, float %2478, float %2479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2646 = fmul fast float %2644, %2645
  %2647 = fadd fast float %2646, %2641
  %2648 = fmul fast float %2647, 0x3F70101020000000
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  br i1 %2076, label %2650, label %2658

; <label>:2650                                    ; preds = %2635
  %2651 = fsub fast float 1.000000e+00, %2257
  %2652 = fmul fast float %2651, %2067
  %2653 = fmul fast float %2651, %2068
  %2654 = fmul fast float %2651, %2069
  %2655 = fmul fast float %2651, %2064
  %2656 = fmul fast float %2651, %2065
  %2657 = fmul fast float %2651, %2066
  br label %2658

; <label>:2658                                    ; preds = %2650, %2635
  %2659 = phi float [ %2655, %2650 ], [ %2064, %2635 ]
  %2660 = phi float [ %2656, %2650 ], [ %2065, %2635 ]
  %2661 = phi float [ %2657, %2650 ], [ %2066, %2635 ]
  %2662 = phi float [ %2652, %2650 ], [ %2067, %2635 ]
  %2663 = phi float [ %2653, %2650 ], [ %2068, %2635 ]
  %2664 = phi float [ %2654, %2650 ], [ %2069, %2635 ]
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 3
  %2668 = icmp eq i32 %2667, 3
  br i1 %2668, label %2747, label %2669

; <label>:2669                                    ; preds = %2658
  %2670 = and i32 %2666, 16
  %2671 = icmp ne i32 %2670, 0
  %2672 = select i1 %2671, float %2257, float 0.000000e+00
  %2673 = icmp eq i32 %2667, 0
  br i1 %2673, label %2674, label %2702

; <label>:2674                                    ; preds = %2669
  %2675 = and i32 %2666, 64
  %2676 = icmp ne i32 %2675, 0
  %2677 = select i1 %2676, float %2257, float 0.000000e+00
  %2678 = fsub fast float %2477, %2662
  %2679 = fsub fast float %2478, %2663
  %2680 = fsub fast float %2479, %2664
  %2681 = fmul fast float %2672, %2678
  %2682 = fmul fast float %2672, %2679
  %2683 = fmul fast float %2672, %2680
  %2684 = fadd fast float %2681, %2662
  %2685 = fadd fast float %2682, %2663
  %2686 = fadd fast float %2683, %2664
  %2687 = fsub fast float %2463, %2070
  %2688 = fmul fast float %2672, %2687
  %2689 = fadd fast float %2688, %2070
  %2690 = fsub fast float %2605, %2659
  %2691 = fsub fast float %2606, %2660
  %2692 = fsub fast float %2607, %2661
  %2693 = fmul fast float %2677, %2690
  %2694 = fmul fast float %2677, %2691
  %2695 = fmul fast float %2677, %2692
  %2696 = fadd fast float %2693, %2659
  %2697 = fadd fast float %2694, %2660
  %2698 = fadd fast float %2695, %2661
  %2699 = fsub fast float %2649, %2074
  %2700 = fmul fast float %2672, %2699
  %2701 = fadd fast float %2700, %2074
  br label %2747

; <label>:2702                                    ; preds = %2669
  %2703 = icmp eq i32 %2667, 1
  br i1 %2703, label %2704, label %2717

; <label>:2704                                    ; preds = %2702
  %2705 = fadd fast float %2477, -1.000000e+00
  %2706 = fadd fast float %2478, -1.000000e+00
  %2707 = fadd fast float %2479, -1.000000e+00
  %2708 = fmul fast float %2672, %2705
  %2709 = fmul fast float %2672, %2706
  %2710 = fmul fast float %2672, %2707
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fadd fast float %2710, 1.000000e+00
  %2714 = fmul fast float %2711, %2662
  %2715 = fmul fast float %2712, %2663
  %2716 = fmul fast float %2713, %2664
  br label %2747

; <label>:2717                                    ; preds = %2702
  %2718 = icmp eq i32 %2667, 2
  br i1 %2718, label %2719, label %2747

; <label>:2719                                    ; preds = %2717
  %2720 = call float @dx.op.unary.f32(i32 24, float %2477)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %2478)  ; Sqrt(value)
  %2722 = call float @dx.op.unary.f32(i32 24, float %2479)  ; Sqrt(value)
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fadd fast float %2722, -5.000000e-01
  %2726 = fmul fast float %2723, %2672
  %2727 = fmul fast float %2724, %2672
  %2728 = fmul fast float %2725, %2672
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fadd fast float %2728, 5.000000e-01
  %2732 = fmul fast float %2729, 2.000000e+00
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2733, %2662
  %2735 = fadd fast float %2734, %2732
  %2736 = fmul fast float %2735, %2662
  %2737 = fmul fast float %2730, 2.000000e+00
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2738, %2663
  %2740 = fadd fast float %2739, %2737
  %2741 = fmul fast float %2740, %2663
  %2742 = fmul fast float %2731, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2664
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2664
  br label %2747

; <label>:2747                                    ; preds = %2719, %2717, %2704, %2674, %2658
  %2748 = phi float [ %2659, %2658 ], [ %2659, %2719 ], [ %2659, %2717 ], [ %2659, %2704 ], [ %2696, %2674 ]
  %2749 = phi float [ %2660, %2658 ], [ %2660, %2719 ], [ %2660, %2717 ], [ %2660, %2704 ], [ %2697, %2674 ]
  %2750 = phi float [ %2661, %2658 ], [ %2661, %2719 ], [ %2661, %2717 ], [ %2661, %2704 ], [ %2698, %2674 ]
  %2751 = phi float [ %2662, %2658 ], [ %2736, %2719 ], [ %2662, %2717 ], [ %2714, %2704 ], [ %2684, %2674 ]
  %2752 = phi float [ %2663, %2658 ], [ %2741, %2719 ], [ %2663, %2717 ], [ %2715, %2704 ], [ %2685, %2674 ]
  %2753 = phi float [ %2664, %2658 ], [ %2746, %2719 ], [ %2664, %2717 ], [ %2716, %2704 ], [ %2686, %2674 ]
  %2754 = phi float [ %2070, %2658 ], [ %2070, %2719 ], [ %2070, %2717 ], [ %2070, %2704 ], [ %2689, %2674 ]
  %2755 = phi float [ %2074, %2658 ], [ %2074, %2719 ], [ %2074, %2717 ], [ %2074, %2704 ], [ %2701, %2674 ]
  %2756 = and i32 %2666, 12
  %2757 = icmp eq i32 %2756, 12
  br i1 %2757, label %2840, label %2758

; <label>:2758                                    ; preds = %2747
  %2759 = and i32 %2666, 2097184
  %2760 = icmp eq i32 %2759, 2097184
  %2761 = select i1 %2760, float %2257, float 0.000000e+00
  %2762 = and i32 %2666, 4194336
  %2763 = icmp eq i32 %2762, 4194336
  %2764 = select i1 %2763, float %2257, float 0.000000e+00
  %2765 = and i32 %2666, 8388640
  %2766 = icmp eq i32 %2765, 8388640
  %2767 = select i1 %2766, float %2257, float 0.000000e+00
  %2768 = and i32 %2666, 16384
  %2769 = icmp ne i32 %2768, 0
  %2770 = select i1 %2769, float %2257, float 0.000000e+00
  %2771 = icmp eq i32 %2756, 0
  br i1 %2771, label %2772, label %2788

; <label>:2772                                    ; preds = %2758
  %2773 = fsub fast float %2558, %2062
  %2774 = fsub fast float %2559, %2063
  %2775 = fmul fast float %2761, %2773
  %2776 = fmul fast float %2761, %2774
  %2777 = fadd fast float %2775, %2062
  %2778 = fadd fast float %2776, %2063
  %2779 = fsub fast float %2560, %2072
  %2780 = fmul fast float %2764, %2779
  %2781 = fadd fast float %2780, %2072
  %2782 = fsub fast float %2557, %2071
  %2783 = fmul fast float %2767, %2782
  %2784 = fadd fast float %2783, %2071
  %2785 = fsub fast float %2636, %2073
  %2786 = fmul fast float %2770, %2785
  %2787 = fadd fast float %2786, %2073
  br label %2840

; <label>:2788                                    ; preds = %2758
  %2789 = icmp eq i32 %2756, 4
  br i1 %2789, label %2790, label %2824

; <label>:2790                                    ; preds = %2788
  %2791 = fmul fast float %2761, %2558
  %2792 = fmul fast float %2761, %2559
  %2793 = fadd fast float %2791, %2062
  %2794 = fadd fast float %2792, %2063
  %2795 = call float @dx.op.binary.f32(i32 36, float %2072, float %2560)  ; FMin(a,b)
  %2796 = fsub fast float %2795, %2072
  %2797 = fmul fast float %2796, %2764
  %2798 = fadd fast float %2797, %2072
  %2799 = fadd fast float %2557, %2071
  %2800 = fmul fast float %2799, 0x3FF337FAE0000000
  %2801 = fmul fast float %2071, %2071
  %2802 = fmul fast float %2557, %2557
  %2803 = fadd fast float %2802, %2801
  %2804 = fmul fast float %2803, 0x3FE5152B00000000
  %2805 = fmul fast float %2071, 0xBFCC1F85E0000000
  %2806 = fmul fast float %2805, %2557
  %2807 = fadd fast float %2806, 0xBFE1363700000000
  %2808 = fadd fast float %2807, %2800
  %2809 = fsub fast float %2808, %2804
  %2810 = fmul fast float %2799, 0x3FBA6F0D00000000
  %2811 = fmul fast float %2803, 0x3FD0432880000000
  %2812 = fmul fast float %2071, 0xBFEF110800000000
  %2813 = fmul fast float %2812, %2557
  %2814 = fadd fast float %2813, 1.000000e+00
  %2815 = fsub fast float %2814, %2810
  %2816 = fadd fast float %2815, %2811
  %2817 = fdiv fast float %2809, %2816
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = fsub fast float %2818, %2071
  %2820 = fmul fast float %2819, %2767
  %2821 = fadd fast float %2820, %2071
  %2822 = fmul fast float %2770, %2636
  %2823 = fadd fast float %2822, %2073
  br label %2840

; <label>:2824                                    ; preds = %2788
  %2825 = icmp eq i32 %2756, 8
  br i1 %2825, label %2826, label %2840

; <label>:2826                                    ; preds = %2824
  %2827 = fmul fast float %2761, %2558
  %2828 = fmul fast float %2761, %2559
  %2829 = fadd fast float %2827, %2062
  %2830 = fadd fast float %2828, %2063
  %2831 = call float @dx.op.binary.f32(i32 36, float %2072, float %2560)  ; FMin(a,b)
  %2832 = fsub fast float %2831, %2072
  %2833 = fmul fast float %2832, %2764
  %2834 = fadd fast float %2833, %2072
  %2835 = fsub fast float %2557, %2071
  %2836 = fmul fast float %2767, %2835
  %2837 = fadd fast float %2836, %2071
  %2838 = fmul fast float %2770, %2636
  %2839 = fadd fast float %2838, %2073
  br label %2840

; <label>:2840                                    ; preds = %2826, %2824, %2790, %2772, %2747, %2256, %2075, %2061
  %2841 = phi float [ %2062, %2747 ], [ %2062, %2256 ], [ %2062, %2061 ], [ %2829, %2826 ], [ %2062, %2824 ], [ %2793, %2790 ], [ %2777, %2772 ], [ %2062, %2075 ]
  %2842 = phi float [ %2063, %2747 ], [ %2063, %2256 ], [ %2063, %2061 ], [ %2830, %2826 ], [ %2063, %2824 ], [ %2794, %2790 ], [ %2778, %2772 ], [ %2063, %2075 ]
  %2843 = phi float [ %2748, %2747 ], [ %2064, %2256 ], [ %2064, %2061 ], [ %2748, %2826 ], [ %2748, %2824 ], [ %2748, %2790 ], [ %2748, %2772 ], [ %2064, %2075 ]
  %2844 = phi float [ %2749, %2747 ], [ %2065, %2256 ], [ %2065, %2061 ], [ %2749, %2826 ], [ %2749, %2824 ], [ %2749, %2790 ], [ %2749, %2772 ], [ %2065, %2075 ]
  %2845 = phi float [ %2750, %2747 ], [ %2066, %2256 ], [ %2066, %2061 ], [ %2750, %2826 ], [ %2750, %2824 ], [ %2750, %2790 ], [ %2750, %2772 ], [ %2066, %2075 ]
  %2846 = phi float [ %2751, %2747 ], [ %2067, %2256 ], [ %2067, %2061 ], [ %2751, %2826 ], [ %2751, %2824 ], [ %2751, %2790 ], [ %2751, %2772 ], [ %2067, %2075 ]
  %2847 = phi float [ %2752, %2747 ], [ %2068, %2256 ], [ %2068, %2061 ], [ %2752, %2826 ], [ %2752, %2824 ], [ %2752, %2790 ], [ %2752, %2772 ], [ %2068, %2075 ]
  %2848 = phi float [ %2753, %2747 ], [ %2069, %2256 ], [ %2069, %2061 ], [ %2753, %2826 ], [ %2753, %2824 ], [ %2753, %2790 ], [ %2753, %2772 ], [ %2069, %2075 ]
  %2849 = phi float [ %2754, %2747 ], [ %2070, %2256 ], [ %2070, %2061 ], [ %2754, %2826 ], [ %2754, %2824 ], [ %2754, %2790 ], [ %2754, %2772 ], [ %2070, %2075 ]
  %2850 = phi float [ %2071, %2747 ], [ %2071, %2256 ], [ %2071, %2061 ], [ %2837, %2826 ], [ %2071, %2824 ], [ %2821, %2790 ], [ %2784, %2772 ], [ %2071, %2075 ]
  %2851 = phi float [ %2072, %2747 ], [ %2072, %2256 ], [ %2072, %2061 ], [ %2834, %2826 ], [ %2072, %2824 ], [ %2798, %2790 ], [ %2781, %2772 ], [ %2072, %2075 ]
  %2852 = phi float [ %2073, %2747 ], [ %2073, %2256 ], [ %2073, %2061 ], [ %2839, %2826 ], [ %2073, %2824 ], [ %2823, %2790 ], [ %2787, %2772 ], [ %2073, %2075 ]
  %2853 = phi float [ %2755, %2747 ], [ %2074, %2256 ], [ %2074, %2061 ], [ %2755, %2826 ], [ %2755, %2824 ], [ %2755, %2790 ], [ %2755, %2772 ], [ %2074, %2075 ]
  br i1 %655, label %3619, label %2854

; <label>:2854                                    ; preds = %2840
  %2855 = icmp ult i32 %709, 4
  %2856 = add i32 %58, 72
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %58, 76
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = or i32 %2861, %2858
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %3619, label %2864

; <label>:2864                                    ; preds = %2854
  %2865 = and i32 %2858, 262144
  %2866 = icmp ne i32 %2865, 0
  %2867 = select i1 %2866, float %66, float 1.000000e+00
  %2868 = select i1 %2866, float %67, float 0.000000e+00
  %2869 = select i1 %2866, float %68, float 0.000000e+00
  %2870 = select i1 %2866, float %69, float 1.000000e+00
  %2871 = select i1 %2866, float %70, float %98
  %2872 = select i1 %2866, float %71, float %99
  %2873 = add i32 %58, 332
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = lshr i32 %2875, 16
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = fmul fast float %2877, 0x3F50624DE0000000
  %2879 = add i32 %58, 136
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = lshr i32 %2881, 16
  %2883 = and i32 %2882, 255
  %2884 = lshr i32 %2881, 24
  %2885 = add i32 %58, 340
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 65535
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = lshr i32 %2887, 16
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = add i32 %58, 80
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = lshr i32 %2894, 22
  %2896 = shl nuw nsw i32 %2895, 5
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = shl i32 %2894, 4
  %2899 = and i32 %2898, 32752
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = lshr i32 %2894, 7
  %2902 = and i32 %2901, 32752
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2906 = fmul fast float %2905, 1.000000e+03
  %2907 = fmul fast float %2906, %644
  %2908 = call float @dx.op.unary.f32(i32 22, float %2907)  ; Frc(value)
  %2909 = fadd fast float %2908, %632
  %2910 = fmul fast float %2906, %646
  %2911 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2912 = fadd fast float %2911, %633
  %2913 = fmul fast float %2878, %2906
  %2914 = call float @dx.op.unary.f32(i32 22, float %2913)  ; Frc(value)
  %2915 = fmul fast float %2914, 0x401921FB60000000
  %2916 = fadd fast float %2915, %2897
  %2917 = call float @dx.op.unary.f32(i32 13, float %2916)  ; Sin(value)
  %2918 = call float @dx.op.unary.f32(i32 12, float %2916)  ; Cos(value)
  %2919 = fsub fast float -0.000000e+00, %2917
  %2920 = fadd fast float %2871, -5.000000e-01
  %2921 = fadd fast float %2872, -5.000000e-01
  %2922 = fmul fast float %2889, %2920
  %2923 = fmul fast float %2891, %2921
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = fmul fast float %2900, %2924
  %2927 = fmul fast float %2903, %2925
  %2928 = fmul fast float %2918, %2926
  %2929 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2927, float %2928)  ; FMad(a,b,c)
  %2930 = fmul fast float %2917, %2926
  %2931 = call float @dx.op.tertiary.f32(i32 46, float %2918, float %2927, float %2930)  ; FMad(a,b,c)
  %2932 = fadd fast float %2909, %2929
  %2933 = fadd fast float %2912, %2931
  %2934 = icmp ugt i32 %2883, 1
  %2935 = icmp ugt i32 %2881, 33554431
  %2936 = or i1 %2935, %2934
  br i1 %2936, label %2937, label %2962

; <label>:2937                                    ; preds = %2864
  %2938 = add i32 %58, 276
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = lshr i32 %2940, 16
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = fmul fast float %2905, %2942
  %2944 = call float @dx.op.unary.f32(i32 22, float %2943)  ; Frc(value)
  %2945 = mul nuw nsw i32 %2883, %2884
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2944, %2946
  %2948 = call float @dx.op.unary.f32(i32 27, float %2947)  ; Round_ni(value)
  %2949 = fptoui float %2948 to i32
  %2950 = urem i32 %2949, %2883
  %2951 = udiv i32 %2949, %2884
  %2952 = call float @dx.op.unary.f32(i32 22, float %2932)  ; Frc(value)
  %2953 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2954 = uitofp i32 %2950 to float
  %2955 = uitofp i32 %2951 to float
  %2956 = fadd fast float %2952, %2954
  %2957 = fadd fast float %2953, %2955
  %2958 = uitofp i32 %2883 to float
  %2959 = uitofp i32 %2884 to float
  %2960 = fdiv fast float %2956, %2958
  %2961 = fdiv fast float %2957, %2959
  br label %2962

; <label>:2962                                    ; preds = %2937, %2864
  %2963 = phi float [ %2960, %2937 ], [ %2932, %2864 ]
  %2964 = phi float [ %2961, %2937 ], [ %2933, %2864 ]
  %2965 = and i32 %2858, 256
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %3013, label %2967

; <label>:2967                                    ; preds = %2962
  %2968 = add i32 %58, 484
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2970, 0
  %2972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2972, %dx.types.Handle %113, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = add i32 %58, 148
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = shl i32 %2977, 4
  %2979 = and i32 %2978, 32752
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = lshr i32 %2977, 7
  %2982 = and i32 %2981, 32752
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = fsub fast float 1.000000e+00, %704
  %2985 = call float @dx.op.binary.f32(i32 35, float %2984, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2986 = bitcast float %704 to i32
  %2987 = sitofp i32 %2986 to float
  %2988 = fadd fast float %2987, 0xC1CFBF8940000000
  %2989 = fmul fast float %2983, %2988
  %2990 = fadd fast float %2989, 0x41CFBF8940000000
  %2991 = fptosi float %2990 to i32
  %2992 = bitcast i32 %2991 to float
  %2993 = bitcast float %2985 to i32
  %2994 = sitofp i32 %2993 to float
  %2995 = fadd fast float %2994, 0xC1CFBF8940000000
  %2996 = fmul fast float %2995, %2983
  %2997 = fadd fast float %2996, 0x41CFBF8940000000
  %2998 = fptosi float %2997 to i32
  %2999 = bitcast i32 %2998 to float
  %3000 = fmul fast float %2992, %2980
  %3001 = fmul fast float %2999, %2980
  %3002 = fsub fast float %2985, %3000
  %3003 = fadd fast float %3001, %2985
  %3004 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3005 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3006 = fsub fast float %2974, %3004
  %3007 = fsub fast float %3005, %3004
  %3008 = bitcast float %3007 to i32
  %3009 = sub nsw i32 2129859010, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %3010, %3006
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  br label %3013

; <label>:3013                                    ; preds = %2967, %2962
  %3014 = phi float [ %3012, %2967 ], [ %704, %2962 ]
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 128
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3035, label %3019

; <label>:3019                                    ; preds = %3013
  %3020 = add i32 %58, 468
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3024, %dx.types.Handle %113, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 524288
  %3030 = icmp ne i32 %3029, 0
  %3031 = fcmp fast ogt float %3026, 0x3FE0101020000000
  %3032 = select i1 %3031, float 1.000000e+00, float 0.000000e+00
  %3033 = select i1 %3030, float %3032, float %3026
  %3034 = fmul fast float %3033, %3014
  br label %3035

; <label>:3035                                    ; preds = %3019, %3013
  %3036 = phi float [ %3034, %3019 ], [ %3014, %3013 ]
  %3037 = fcmp fast ult float %3036, 0x3F70101020000000
  br i1 %3037, label %3619, label %3038

; <label>:3038                                    ; preds = %3035
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 16
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3241, label %3043

; <label>:3043                                    ; preds = %3038
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = add i32 %58, 420
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %3048, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3050, %dx.types.Handle %112, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = extractvalue %dx.types.ResRet.f32 %3051, 2
  %3055 = extractvalue %dx.types.ResRet.f32 %3051, 3
  %3056 = and i32 %3045, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = lshr i32 %3045, 8
  %3059 = and i32 %3058, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = fmul fast float %3055, %3057
  %3062 = fadd fast float %3061, %3060
  %3063 = fmul fast float %3062, 0x3F70101000000000
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3065, 512
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3076, label %3068

; <label>:3068                                    ; preds = %3043
  %3069 = add i32 %58, 504
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = add i32 %3071, 0
  %3073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3073, %dx.types.Handle %113, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3075 = extractvalue %dx.types.ResRet.f32 %3074, 0
  br label %3076

; <label>:3076                                    ; preds = %3068, %3043
  %3077 = phi float [ %3075, %3068 ], [ 1.000000e+00, %3043 ]
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 33554432
  %3081 = icmp eq i32 %3080, 0
  br i1 %3081, label %3188, label %3082

; <label>:3082                                    ; preds = %3076
  %3083 = add i32 %58, 272
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, 65535
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = lshr i32 %3085, 16
  %3089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3088)  ; LegacyF16ToF32(value)
  %3090 = add i32 %58, 276
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, 65535
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = lshr i32 %3096, 24
  %3098 = uitofp i32 %3097 to float
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = and i32 %3096, 255
  %3101 = uitofp i32 %3100 to float
  %3102 = fmul fast float %3101, 0x3F70101020000000
  %3103 = lshr i32 %3096, 8
  %3104 = and i32 %3103, 255
  %3105 = uitofp i32 %3104 to float
  %3106 = fmul fast float %3105, 0x3F70101020000000
  %3107 = lshr i32 %3096, 16
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = fmul fast float %3109, 0x3F70101020000000
  %3111 = add i32 %58, 268
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = lshr i32 %3113, 24
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3115, 0x3F70101020000000
  %3117 = and i32 %3113, 255
  %3118 = uitofp i32 %3117 to float
  %3119 = fmul fast float %3118, 0x3F70101020000000
  %3120 = lshr i32 %3113, 8
  %3121 = and i32 %3120, 255
  %3122 = uitofp i32 %3121 to float
  %3123 = fmul fast float %3122, 0x3F70101020000000
  %3124 = lshr i32 %3113, 16
  %3125 = and i32 %3124, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = fmul fast float %3126, 0x3F70101020000000
  %3128 = bitcast float %3052 to i32
  %3129 = ashr i32 %3128, 1
  %3130 = sub nsw i32 1597463174, %3129
  %3131 = bitcast i32 %3130 to float
  %3132 = fmul fast float %3052, 5.000000e-01
  %3133 = fmul fast float %3131, %3131
  %3134 = fmul fast float %3133, %3132
  %3135 = fsub fast float 1.500000e+00, %3134
  %3136 = fmul fast float %3131, %3052
  %3137 = fmul fast float %3136, %3135
  %3138 = bitcast float %3053 to i32
  %3139 = ashr i32 %3138, 1
  %3140 = sub nsw i32 1597463174, %3139
  %3141 = bitcast i32 %3140 to float
  %3142 = fmul fast float %3053, 5.000000e-01
  %3143 = fmul fast float %3141, %3141
  %3144 = fmul fast float %3143, %3142
  %3145 = fsub fast float 1.500000e+00, %3144
  %3146 = fmul fast float %3141, %3053
  %3147 = fmul fast float %3146, %3145
  %3148 = bitcast float %3054 to i32
  %3149 = ashr i32 %3148, 1
  %3150 = sub nsw i32 1597463174, %3149
  %3151 = bitcast i32 %3150 to float
  %3152 = fmul fast float %3054, 5.000000e-01
  %3153 = fmul fast float %3151, %3151
  %3154 = fmul fast float %3153, %3152
  %3155 = fsub fast float 1.500000e+00, %3154
  %3156 = fmul fast float %3151, %3054
  %3157 = fmul fast float %3156, %3155
  %3158 = fsub fast float %3137, %3119
  %3159 = fsub fast float %3147, %3123
  %3160 = fsub fast float %3157, %3127
  %3161 = fmul fast float %3158, %3087
  %3162 = fmul fast float %3159, %3089
  %3163 = fmul fast float %3160, %3094
  %3164 = fadd fast float %3161, %3102
  %3165 = fadd fast float %3162, %3106
  %3166 = fadd fast float %3163, %3110
  %3167 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3168 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3169 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3170 = fmul fast float %3167, %3167
  %3171 = fmul fast float %3168, %3168
  %3172 = fmul fast float %3169, %3169
  %3173 = fsub fast float %3170, %3052
  %3174 = fsub fast float %3171, %3053
  %3175 = fsub fast float %3172, %3054
  %3176 = fmul fast float %3173, %3077
  %3177 = fmul fast float %3174, %3077
  %3178 = fmul fast float %3175, %3077
  %3179 = fadd fast float %3176, %3052
  %3180 = fadd fast float %3177, %3053
  %3181 = fadd fast float %3178, %3054
  %3182 = fadd fast float %3099, %3063
  %3183 = fsub fast float %3182, %3116
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3185 = fsub fast float %3184, %3063
  %3186 = fmul fast float %3185, %3077
  %3187 = fadd fast float %3186, %3063
  br label %3241

; <label>:3188                                    ; preds = %3076
  %3189 = and i32 %3079, 134217728
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3225, label %3191

; <label>:3191                                    ; preds = %3188
  %3192 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3193 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %3194 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %3195 = fadd fast float %3192, -5.000000e-01
  %3196 = fadd fast float %3193, -5.000000e-01
  %3197 = fadd fast float %3194, -5.000000e-01
  %3198 = fmul fast float %3195, %3077
  %3199 = fmul fast float %3196, %3077
  %3200 = fmul fast float %3197, %3077
  %3201 = fadd fast float %3198, 5.000000e-01
  %3202 = fadd fast float %3199, 5.000000e-01
  %3203 = fadd fast float %3200, 5.000000e-01
  %3204 = call float @dx.op.unary.f32(i32 24, float %3052)  ; Sqrt(value)
  %3205 = call float @dx.op.unary.f32(i32 24, float %3053)  ; Sqrt(value)
  %3206 = call float @dx.op.unary.f32(i32 24, float %3054)  ; Sqrt(value)
  %3207 = fmul fast float %3201, 2.000000e+00
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3208, %3204
  %3210 = fadd fast float %3209, %3207
  %3211 = fmul fast float %3210, %3204
  %3212 = fmul fast float %3202, 2.000000e+00
  %3213 = fsub fast float 1.000000e+00, %3212
  %3214 = fmul fast float %3213, %3205
  %3215 = fadd fast float %3214, %3212
  %3216 = fmul fast float %3215, %3205
  %3217 = fmul fast float %3203, 2.000000e+00
  %3218 = fsub fast float 1.000000e+00, %3217
  %3219 = fmul fast float %3218, %3206
  %3220 = fadd fast float %3219, %3217
  %3221 = fmul fast float %3220, %3206
  %3222 = fmul fast float %3211, %3211
  %3223 = fmul fast float %3216, %3216
  %3224 = fmul fast float %3221, %3221
  br label %3241

; <label>:3225                                    ; preds = %3188
  %3226 = fmul fast float %620, %620
  %3227 = fmul fast float %621, %621
  %3228 = fmul fast float %622, %622
  %3229 = fadd fast float %3226, -1.000000e+00
  %3230 = fadd fast float %3227, -1.000000e+00
  %3231 = fadd fast float %3228, -1.000000e+00
  %3232 = fmul fast float %3077, %3229
  %3233 = fmul fast float %3077, %3230
  %3234 = fmul fast float %3077, %3231
  %3235 = fadd fast float %3232, 1.000000e+00
  %3236 = fadd fast float %3233, 1.000000e+00
  %3237 = fadd fast float %3234, 1.000000e+00
  %3238 = fmul fast float %3235, %3052
  %3239 = fmul fast float %3236, %3053
  %3240 = fmul fast float %3237, %3054
  br label %3241

; <label>:3241                                    ; preds = %3225, %3191, %3082, %3038
  %3242 = phi float [ %3187, %3082 ], [ %3063, %3191 ], [ %3063, %3225 ], [ 0x3FA23C0BE0000000, %3038 ]
  %3243 = phi float [ %3179, %3082 ], [ %3222, %3191 ], [ %3238, %3225 ], [ 1.000000e+00, %3038 ]
  %3244 = phi float [ %3180, %3082 ], [ %3223, %3191 ], [ %3239, %3225 ], [ 1.000000e+00, %3038 ]
  %3245 = phi float [ %3181, %3082 ], [ %3224, %3191 ], [ %3240, %3225 ], [ 1.000000e+00, %3038 ]
  %3246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.i32 %3246, 1
  %3248 = and i32 %3247, 1
  %3249 = icmp ne i32 %3248, 0
  %3250 = add i32 %58, 356
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = and i32 %3252, 32
  %3254 = icmp ne i32 %3253, 0
  %3255 = and i1 %3249, %3254
  %3256 = select i1 %3255, float 1.000000e+00, float %3243
  %3257 = select i1 %3255, float 0x3FD3333340000000, float %3244
  %3258 = select i1 %3255, float 0x3FD3333340000000, float %3245
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 32
  %3262 = icmp eq i32 %3261, 0
  br i1 %3262, label %3335, label %3263

; <label>:3263                                    ; preds = %3241
  %3264 = add i32 %58, 140
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = add i32 %58, 436
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = add i32 %3269, 0
  %3271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3271, %dx.types.Handle %112, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.ResRet.f32 %3272, 2
  %3276 = extractvalue %dx.types.ResRet.f32 %3272, 3
  %3277 = and i32 %3266, 255
  %3278 = uitofp i32 %3277 to float
  %3279 = lshr i32 %3266, 8
  %3280 = and i32 %3279, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = lshr i32 %3266, 16
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3284, 0x3F70101000000000
  %3286 = fmul fast float %3273, %3278
  %3287 = fadd fast float %3286, %3281
  %3288 = fmul fast float %3287, 0x3F70101000000000
  %3289 = fadd fast float %3274, -5.000000e-01
  %3290 = fadd fast float %3276, -5.000000e-01
  %3291 = fmul fast float %3289, %3285
  %3292 = fmul fast float %3290, %3285
  %3293 = fadd fast float %3291, 5.000000e-01
  %3294 = fadd fast float %3292, 5.000000e-01
  %3295 = fmul fast float %3293, 2.000000e+00
  %3296 = fadd fast float %3295, -1.000000e+00
  %3297 = fmul fast float %3294, 2.000000e+00
  %3298 = fadd fast float %3297, -1.000000e+00
  %3299 = fadd fast float %3296, %3298
  %3300 = fmul fast float %3299, 5.000000e-01
  %3301 = fsub fast float %3296, %3298
  %3302 = fmul fast float %3301, 5.000000e-01
  %3303 = call float @dx.op.unary.f32(i32 6, float %3300)  ; FAbs(value)
  %3304 = fsub fast float 1.000000e+00, %3303
  %3305 = call float @dx.op.unary.f32(i32 6, float %3302)  ; FAbs(value)
  %3306 = fsub fast float %3304, %3305
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3302, float %3306, float %3300, float %3302, float %3306)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = call float @dx.op.unary.f32(i32 25, float %3307)  ; Rsqrt(value)
  %3309 = fmul fast float %3300, %3308
  %3310 = fmul fast float %3302, %3308
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 67108864
  %3314 = icmp eq i32 %3313, 0
  br i1 %3314, label %3331, label %3315

; <label>:3315                                    ; preds = %3263
  %3316 = add i32 %58, 328
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 65535
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 65535
  %3324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3323)  ; LegacyF16ToF32(value)
  %3325 = lshr i32 %3318, 16
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = fsub fast float %3288, %3326
  %3328 = fmul fast float %3327, %3320
  %3329 = fadd fast float %3328, %3324
  %3330 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  br label %3331

; <label>:3331                                    ; preds = %3315, %3263
  %3332 = phi float [ %3330, %3315 ], [ %3288, %3263 ]
  %3333 = call float @dx.op.dot2.f32(i32 54, float %3309, float %3310, float %2867, float %2868)  ; Dot2(ax,ay,bx,by)
  %3334 = call float @dx.op.dot2.f32(i32 54, float %3309, float %3310, float %2869, float %2870)  ; Dot2(ax,ay,bx,by)
  br label %3335

; <label>:3335                                    ; preds = %3331, %3241
  %3336 = phi float [ %3332, %3331 ], [ 0x3FD6666660000000, %3241 ]
  %3337 = phi float [ %3333, %3331 ], [ 0.000000e+00, %3241 ]
  %3338 = phi float [ %3334, %3331 ], [ 0.000000e+00, %3241 ]
  %3339 = phi float [ %3275, %3331 ], [ 1.000000e+00, %3241 ]
  %3340 = add i32 %58, 208
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = lshr i32 %3342, 22
  %3344 = shl nuw nsw i32 %3343, 5
  %3345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3344)  ; LegacyF16ToF32(value)
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 64
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3383, label %3350

; <label>:3350                                    ; preds = %3335
  %3351 = add i32 %58, 452
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 131072
  %3359 = icmp eq i32 %3358, 0
  %3360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %112, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = fmul fast float %603, %3361
  %3365 = fmul fast float %604, %3362
  %3366 = fmul fast float %605, %3363
  br i1 %3359, label %3373, label %3367

; <label>:3367                                    ; preds = %3350
  %3368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3368, 0
  %3370 = fmul fast float %3369, %3364
  %3371 = fmul fast float %3369, %3365
  %3372 = fmul fast float %3369, %3366
  br label %3373

; <label>:3373                                    ; preds = %3367, %3350
  %3374 = phi float [ %3370, %3367 ], [ %3364, %3350 ]
  %3375 = phi float [ %3371, %3367 ], [ %3365, %3350 ]
  %3376 = phi float [ %3372, %3367 ], [ %3366, %3350 ]
  %3377 = fmul fast float %3374, %3345
  %3378 = select i1 %271, float %3377, float %3374
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3378, float %3375, float %3376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = select i1 %271, float 0.000000e+00, float %3374
  %3381 = select i1 %271, float %3379, float %3375
  %3382 = select i1 %271, float 0.000000e+00, float %3376
  br label %3383

; <label>:3383                                    ; preds = %3373, %3335
  %3384 = phi float [ %3380, %3373 ], [ 0.000000e+00, %3335 ]
  %3385 = phi float [ %3381, %3373 ], [ 0.000000e+00, %3335 ]
  %3386 = phi float [ %3382, %3373 ], [ 0.000000e+00, %3335 ]
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 26624
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3414, label %3391

; <label>:3391                                    ; preds = %3383
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 16384
  %3395 = icmp eq i32 %3394, 0
  br i1 %3395, label %3414, label %3396

; <label>:3396                                    ; preds = %3391
  %3397 = and i32 %3393, 1048576
  %3398 = icmp ne i32 %3397, 0
  %3399 = add i32 %58, 520
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = add i32 %3401, 0
  %3403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3403, %dx.types.Handle %113, float %2963, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = add i32 %58, 144
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = lshr i32 %3408, 24
  %3410 = uitofp i32 %3409 to float
  %3411 = fmul fast float %3405, 0x3F70101020000000
  %3412 = select i1 %3398, float 0x3F70101020000000, float %3411
  %3413 = fmul fast float %3412, %3410
  br label %3414

; <label>:3414                                    ; preds = %3396, %3391, %3383
  %3415 = phi float [ %3413, %3396 ], [ 0.000000e+00, %3391 ], [ 0.000000e+00, %3383 ]
  %3416 = add i32 %58, 144
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 255
  %3420 = uitofp i32 %3419 to float
  %3421 = lshr i32 %3418, 8
  %3422 = and i32 %3421, 255
  %3423 = uitofp i32 %3422 to float
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3257, float %3258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = fmul fast float %3423, %3424
  %3426 = fadd fast float %3425, %3420
  %3427 = fmul fast float %3426, 0x3F70101020000000
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  br i1 %2855, label %3429, label %3437

; <label>:3429                                    ; preds = %3414
  %3430 = fsub fast float 1.000000e+00, %3036
  %3431 = fmul fast float %3430, %2846
  %3432 = fmul fast float %3430, %2847
  %3433 = fmul fast float %3430, %2848
  %3434 = fmul fast float %3430, %2843
  %3435 = fmul fast float %3430, %2844
  %3436 = fmul fast float %3430, %2845
  br label %3437

; <label>:3437                                    ; preds = %3429, %3414
  %3438 = phi float [ %3434, %3429 ], [ %2843, %3414 ]
  %3439 = phi float [ %3435, %3429 ], [ %2844, %3414 ]
  %3440 = phi float [ %3436, %3429 ], [ %2845, %3414 ]
  %3441 = phi float [ %3431, %3429 ], [ %2846, %3414 ]
  %3442 = phi float [ %3432, %3429 ], [ %2847, %3414 ]
  %3443 = phi float [ %3433, %3429 ], [ %2848, %3414 ]
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 3
  %3447 = icmp eq i32 %3446, 3
  br i1 %3447, label %3526, label %3448

; <label>:3448                                    ; preds = %3437
  %3449 = and i32 %3445, 16
  %3450 = icmp ne i32 %3449, 0
  %3451 = select i1 %3450, float %3036, float 0.000000e+00
  %3452 = icmp eq i32 %3446, 0
  br i1 %3452, label %3453, label %3481

; <label>:3453                                    ; preds = %3448
  %3454 = and i32 %3445, 64
  %3455 = icmp ne i32 %3454, 0
  %3456 = select i1 %3455, float %3036, float 0.000000e+00
  %3457 = fsub fast float %3256, %3441
  %3458 = fsub fast float %3257, %3442
  %3459 = fsub fast float %3258, %3443
  %3460 = fmul fast float %3451, %3457
  %3461 = fmul fast float %3451, %3458
  %3462 = fmul fast float %3451, %3459
  %3463 = fadd fast float %3460, %3441
  %3464 = fadd fast float %3461, %3442
  %3465 = fadd fast float %3462, %3443
  %3466 = fsub fast float %3242, %2849
  %3467 = fmul fast float %3451, %3466
  %3468 = fadd fast float %3467, %2849
  %3469 = fsub fast float %3384, %3438
  %3470 = fsub fast float %3385, %3439
  %3471 = fsub fast float %3386, %3440
  %3472 = fmul fast float %3456, %3469
  %3473 = fmul fast float %3456, %3470
  %3474 = fmul fast float %3456, %3471
  %3475 = fadd fast float %3472, %3438
  %3476 = fadd fast float %3473, %3439
  %3477 = fadd fast float %3474, %3440
  %3478 = fsub fast float %3428, %2853
  %3479 = fmul fast float %3451, %3478
  %3480 = fadd fast float %3479, %2853
  br label %3526

; <label>:3481                                    ; preds = %3448
  %3482 = icmp eq i32 %3446, 1
  br i1 %3482, label %3483, label %3496

; <label>:3483                                    ; preds = %3481
  %3484 = fadd fast float %3256, -1.000000e+00
  %3485 = fadd fast float %3257, -1.000000e+00
  %3486 = fadd fast float %3258, -1.000000e+00
  %3487 = fmul fast float %3451, %3484
  %3488 = fmul fast float %3451, %3485
  %3489 = fmul fast float %3451, %3486
  %3490 = fadd fast float %3487, 1.000000e+00
  %3491 = fadd fast float %3488, 1.000000e+00
  %3492 = fadd fast float %3489, 1.000000e+00
  %3493 = fmul fast float %3490, %3441
  %3494 = fmul fast float %3491, %3442
  %3495 = fmul fast float %3492, %3443
  br label %3526

; <label>:3496                                    ; preds = %3481
  %3497 = icmp eq i32 %3446, 2
  br i1 %3497, label %3498, label %3526

; <label>:3498                                    ; preds = %3496
  %3499 = call float @dx.op.unary.f32(i32 24, float %3256)  ; Sqrt(value)
  %3500 = call float @dx.op.unary.f32(i32 24, float %3257)  ; Sqrt(value)
  %3501 = call float @dx.op.unary.f32(i32 24, float %3258)  ; Sqrt(value)
  %3502 = fadd fast float %3499, -5.000000e-01
  %3503 = fadd fast float %3500, -5.000000e-01
  %3504 = fadd fast float %3501, -5.000000e-01
  %3505 = fmul fast float %3502, %3451
  %3506 = fmul fast float %3503, %3451
  %3507 = fmul fast float %3504, %3451
  %3508 = fadd fast float %3505, 5.000000e-01
  %3509 = fadd fast float %3506, 5.000000e-01
  %3510 = fadd fast float %3507, 5.000000e-01
  %3511 = fmul fast float %3508, 2.000000e+00
  %3512 = fsub fast float 1.000000e+00, %3511
  %3513 = fmul fast float %3512, %3441
  %3514 = fadd fast float %3513, %3511
  %3515 = fmul fast float %3514, %3441
  %3516 = fmul fast float %3509, 2.000000e+00
  %3517 = fsub fast float 1.000000e+00, %3516
  %3518 = fmul fast float %3517, %3442
  %3519 = fadd fast float %3518, %3516
  %3520 = fmul fast float %3519, %3442
  %3521 = fmul fast float %3510, 2.000000e+00
  %3522 = fsub fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3522, %3443
  %3524 = fadd fast float %3523, %3521
  %3525 = fmul fast float %3524, %3443
  br label %3526

; <label>:3526                                    ; preds = %3498, %3496, %3483, %3453, %3437
  %3527 = phi float [ %3438, %3437 ], [ %3438, %3498 ], [ %3438, %3496 ], [ %3438, %3483 ], [ %3475, %3453 ]
  %3528 = phi float [ %3439, %3437 ], [ %3439, %3498 ], [ %3439, %3496 ], [ %3439, %3483 ], [ %3476, %3453 ]
  %3529 = phi float [ %3440, %3437 ], [ %3440, %3498 ], [ %3440, %3496 ], [ %3440, %3483 ], [ %3477, %3453 ]
  %3530 = phi float [ %3441, %3437 ], [ %3515, %3498 ], [ %3441, %3496 ], [ %3493, %3483 ], [ %3463, %3453 ]
  %3531 = phi float [ %3442, %3437 ], [ %3520, %3498 ], [ %3442, %3496 ], [ %3494, %3483 ], [ %3464, %3453 ]
  %3532 = phi float [ %3443, %3437 ], [ %3525, %3498 ], [ %3443, %3496 ], [ %3495, %3483 ], [ %3465, %3453 ]
  %3533 = phi float [ %2849, %3437 ], [ %2849, %3498 ], [ %2849, %3496 ], [ %2849, %3483 ], [ %3468, %3453 ]
  %3534 = phi float [ %2853, %3437 ], [ %2853, %3498 ], [ %2853, %3496 ], [ %2853, %3483 ], [ %3480, %3453 ]
  %3535 = and i32 %3445, 12
  %3536 = icmp eq i32 %3535, 12
  br i1 %3536, label %3619, label %3537

; <label>:3537                                    ; preds = %3526
  %3538 = and i32 %3445, 2097184
  %3539 = icmp eq i32 %3538, 2097184
  %3540 = select i1 %3539, float %3036, float 0.000000e+00
  %3541 = and i32 %3445, 4194336
  %3542 = icmp eq i32 %3541, 4194336
  %3543 = select i1 %3542, float %3036, float 0.000000e+00
  %3544 = and i32 %3445, 8388640
  %3545 = icmp eq i32 %3544, 8388640
  %3546 = select i1 %3545, float %3036, float 0.000000e+00
  %3547 = and i32 %3445, 16384
  %3548 = icmp ne i32 %3547, 0
  %3549 = select i1 %3548, float %3036, float 0.000000e+00
  %3550 = icmp eq i32 %3535, 0
  br i1 %3550, label %3551, label %3567

; <label>:3551                                    ; preds = %3537
  %3552 = fsub fast float %3337, %2841
  %3553 = fsub fast float %3338, %2842
  %3554 = fmul fast float %3540, %3552
  %3555 = fmul fast float %3540, %3553
  %3556 = fadd fast float %3554, %2841
  %3557 = fadd fast float %3555, %2842
  %3558 = fsub fast float %3339, %2851
  %3559 = fmul fast float %3543, %3558
  %3560 = fadd fast float %3559, %2851
  %3561 = fsub fast float %3336, %2850
  %3562 = fmul fast float %3546, %3561
  %3563 = fadd fast float %3562, %2850
  %3564 = fsub fast float %3415, %2852
  %3565 = fmul fast float %3549, %3564
  %3566 = fadd fast float %3565, %2852
  br label %3619

; <label>:3567                                    ; preds = %3537
  %3568 = icmp eq i32 %3535, 4
  br i1 %3568, label %3569, label %3603

; <label>:3569                                    ; preds = %3567
  %3570 = fmul fast float %3540, %3337
  %3571 = fmul fast float %3540, %3338
  %3572 = fadd fast float %3570, %2841
  %3573 = fadd fast float %3571, %2842
  %3574 = call float @dx.op.binary.f32(i32 36, float %2851, float %3339)  ; FMin(a,b)
  %3575 = fsub fast float %3574, %2851
  %3576 = fmul fast float %3575, %3543
  %3577 = fadd fast float %3576, %2851
  %3578 = fadd fast float %3336, %2850
  %3579 = fmul fast float %3578, 0x3FF337FAE0000000
  %3580 = fmul fast float %2850, %2850
  %3581 = fmul fast float %3336, %3336
  %3582 = fadd fast float %3581, %3580
  %3583 = fmul fast float %3582, 0x3FE5152B00000000
  %3584 = fmul fast float %2850, 0xBFCC1F85E0000000
  %3585 = fmul fast float %3584, %3336
  %3586 = fadd fast float %3585, 0xBFE1363700000000
  %3587 = fadd fast float %3586, %3579
  %3588 = fsub fast float %3587, %3583
  %3589 = fmul fast float %3578, 0x3FBA6F0D00000000
  %3590 = fmul fast float %3582, 0x3FD0432880000000
  %3591 = fmul fast float %2850, 0xBFEF110800000000
  %3592 = fmul fast float %3591, %3336
  %3593 = fadd fast float %3592, 1.000000e+00
  %3594 = fsub fast float %3593, %3589
  %3595 = fadd fast float %3594, %3590
  %3596 = fdiv fast float %3588, %3595
  %3597 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3598 = fsub fast float %3597, %2850
  %3599 = fmul fast float %3598, %3546
  %3600 = fadd fast float %3599, %2850
  %3601 = fmul fast float %3549, %3415
  %3602 = fadd fast float %3601, %2852
  br label %3619

; <label>:3603                                    ; preds = %3567
  %3604 = icmp eq i32 %3535, 8
  br i1 %3604, label %3605, label %3619

; <label>:3605                                    ; preds = %3603
  %3606 = fmul fast float %3540, %3337
  %3607 = fmul fast float %3540, %3338
  %3608 = fadd fast float %3606, %2841
  %3609 = fadd fast float %3607, %2842
  %3610 = call float @dx.op.binary.f32(i32 36, float %2851, float %3339)  ; FMin(a,b)
  %3611 = fsub fast float %3610, %2851
  %3612 = fmul fast float %3611, %3543
  %3613 = fadd fast float %3612, %2851
  %3614 = fsub fast float %3336, %2850
  %3615 = fmul fast float %3546, %3614
  %3616 = fadd fast float %3615, %2850
  %3617 = fmul fast float %3549, %3415
  %3618 = fadd fast float %3617, %2852
  br label %3619

; <label>:3619                                    ; preds = %3605, %3603, %3569, %3551, %3526, %3035, %2854, %2840
  %3620 = phi float [ %2841, %3526 ], [ %2841, %3035 ], [ %2841, %2840 ], [ %2841, %2854 ], [ %3556, %3551 ], [ %3572, %3569 ], [ %2841, %3603 ], [ %3608, %3605 ]
  %3621 = phi float [ %2842, %3526 ], [ %2842, %3035 ], [ %2842, %2840 ], [ %2842, %2854 ], [ %3557, %3551 ], [ %3573, %3569 ], [ %2842, %3603 ], [ %3609, %3605 ]
  %3622 = phi float [ %3527, %3526 ], [ %2843, %3035 ], [ %2843, %2840 ], [ %2843, %2854 ], [ %3527, %3551 ], [ %3527, %3569 ], [ %3527, %3603 ], [ %3527, %3605 ]
  %3623 = phi float [ %3528, %3526 ], [ %2844, %3035 ], [ %2844, %2840 ], [ %2844, %2854 ], [ %3528, %3551 ], [ %3528, %3569 ], [ %3528, %3603 ], [ %3528, %3605 ]
  %3624 = phi float [ %3529, %3526 ], [ %2845, %3035 ], [ %2845, %2840 ], [ %2845, %2854 ], [ %3529, %3551 ], [ %3529, %3569 ], [ %3529, %3603 ], [ %3529, %3605 ]
  %3625 = phi float [ %3530, %3526 ], [ %2846, %3035 ], [ %2846, %2840 ], [ %2846, %2854 ], [ %3530, %3551 ], [ %3530, %3569 ], [ %3530, %3603 ], [ %3530, %3605 ]
  %3626 = phi float [ %3531, %3526 ], [ %2847, %3035 ], [ %2847, %2840 ], [ %2847, %2854 ], [ %3531, %3551 ], [ %3531, %3569 ], [ %3531, %3603 ], [ %3531, %3605 ]
  %3627 = phi float [ %3532, %3526 ], [ %2848, %3035 ], [ %2848, %2840 ], [ %2848, %2854 ], [ %3532, %3551 ], [ %3532, %3569 ], [ %3532, %3603 ], [ %3532, %3605 ]
  %3628 = phi float [ %3533, %3526 ], [ %2849, %3035 ], [ %2849, %2840 ], [ %2849, %2854 ], [ %3533, %3551 ], [ %3533, %3569 ], [ %3533, %3603 ], [ %3533, %3605 ]
  %3629 = phi float [ %2850, %3526 ], [ %2850, %3035 ], [ %2850, %2840 ], [ %2850, %2854 ], [ %3563, %3551 ], [ %3600, %3569 ], [ %2850, %3603 ], [ %3616, %3605 ]
  %3630 = phi float [ %2851, %3526 ], [ %2851, %3035 ], [ %2851, %2840 ], [ %2851, %2854 ], [ %3560, %3551 ], [ %3577, %3569 ], [ %2851, %3603 ], [ %3613, %3605 ]
  %3631 = phi float [ %2852, %3526 ], [ %2852, %3035 ], [ %2852, %2840 ], [ %2852, %2854 ], [ %3566, %3551 ], [ %3602, %3569 ], [ %2852, %3603 ], [ %3618, %3605 ]
  %3632 = phi float [ %3534, %3526 ], [ %2853, %3035 ], [ %2853, %2840 ], [ %2853, %2854 ], [ %3534, %3551 ], [ %3534, %3569 ], [ %3534, %3603 ], [ %3534, %3605 ]
  %3633 = add i32 %58, 360
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.i32 %3634, 1
  %3637 = bitcast i32 %3635 to float
  %3638 = bitcast i32 %3636 to float
  %3639 = fcmp fast oge float %3637, 0.000000e+00
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = select i1 %3639, float %3637, float %3641
  %3643 = fadd fast float %3642, %213
  %3644 = fmul fast float %3638, %214
  %3645 = add i32 %58, 488
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %113, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = fmul fast float %3644, %3651
  %3653 = fadd fast float %3643, %3652
  %3654 = and i32 %205, 65535
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = lshr i32 %205, 16
  %3657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3656)  ; LegacyF16ToF32(value)
  %3658 = and i32 %206, 65535
  %3659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3658)  ; LegacyF16ToF32(value)
  %3660 = fmul fast float %3655, %3625
  %3661 = fmul fast float %3657, %3626
  %3662 = fmul fast float %3659, %3627
  %3663 = shl i32 %207, 4
  %3664 = and i32 %3663, 32752
  %3665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3664)  ; LegacyF16ToF32(value)
  %3666 = lshr i32 %207, 7
  %3667 = and i32 %3666, 32752
  %3668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3667)  ; LegacyF16ToF32(value)
  %3669 = lshr i32 %207, 22
  %3670 = shl nuw nsw i32 %3669, 5
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = and i32 %208, 65535
  %3673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3672)  ; LegacyF16ToF32(value)
  %3674 = fmul fast float %3665, %3622
  %3675 = fmul fast float %3674, %3673
  %3676 = fmul fast float %3668, %3623
  %3677 = fmul fast float %3676, %3673
  %3678 = fmul fast float %3671, %3624
  %3679 = fmul fast float %3678, %3673
  %3680 = call float @dx.op.dot2.f32(i32 54, float %3620, float %3621, float %3620, float %3621)  ; Dot2(ax,ay,bx,by)
  %3681 = fmul fast float %3680, 0x3FE3333340000000
  %3682 = fsub fast float 1.000000e+00, %3681
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3620, float %3621, float %3682, float %3620, float %3621, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3684, %3620
  %3686 = fmul fast float %3684, %3621
  %3687 = fmul fast float %3682, %3684
  %3688 = fmul fast float %3687, %125
  %3689 = fmul fast float %3687, %127
  %3690 = fmul fast float %3687, %129
  %3691 = fmul fast float %3685, %91
  %3692 = fmul fast float %3685, %92
  %3693 = fmul fast float %3685, %93
  %3694 = fadd fast float %3688, %3691
  %3695 = fadd fast float %3689, %3692
  %3696 = fadd fast float %3690, %3693
  %3697 = fmul fast float %139, %3686
  %3698 = fmul fast float %140, %3686
  %3699 = fmul fast float %141, %3686
  %3700 = fadd fast float %3694, %3697
  %3701 = fadd fast float %3695, %3698
  %3702 = fadd fast float %3696, %3699
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3701, float %3702, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3700, %3704
  %3706 = fmul fast float %3701, %3704
  %3707 = fmul fast float %3702, %3704
  %3708 = icmp eq i32 %61, 65535
  br i1 %3708, label %4223, label %3709

; <label>:3709                                    ; preds = %3619
  %3710 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3711 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3712 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3713 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3714 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3715 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3716 = fadd fast float %3710, %62
  %3717 = fadd fast float %3711, %63
  %3718 = fadd fast float %3712, %64
  %3719 = fadd fast float %3713, %62
  %3720 = fadd fast float %3714, %63
  %3721 = fadd fast float %3715, %64
  %3722 = mul i32 %61, 48
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = add i32 %3722, 16
  %3728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3732 = add i32 %3722, 32
  %3733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3737 = extractvalue %dx.types.ResRet.f32 %3733, 3
  %3738 = bitcast float %3737 to i32
  %3739 = fmul fast float %3724, %62
  %3740 = fmul fast float %3725, %63
  %3741 = fmul fast float %3726, %64
  %3742 = fsub fast float %3739, %3729
  %3743 = fsub fast float %3740, %3730
  %3744 = fsub fast float %3741, %3731
  %3745 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3746 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3747 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3748 = fmul fast float %3745, %3734
  %3749 = fmul fast float %3746, %3735
  %3750 = fmul fast float %3747, %3736
  %3751 = fadd fast float %3734, -1.000000e+00
  %3752 = fadd fast float %3735, -1.000000e+00
  %3753 = fadd fast float %3736, -1.000000e+00
  %3754 = call float @dx.op.unary.f32(i32 27, float %3748)  ; Round_ni(value)
  %3755 = call float @dx.op.unary.f32(i32 27, float %3749)  ; Round_ni(value)
  %3756 = call float @dx.op.unary.f32(i32 27, float %3750)  ; Round_ni(value)
  %3757 = call float @dx.op.binary.f32(i32 36, float %3754, float %3751)  ; FMin(a,b)
  %3758 = call float @dx.op.binary.f32(i32 36, float %3755, float %3752)  ; FMin(a,b)
  %3759 = call float @dx.op.binary.f32(i32 36, float %3756, float %3753)  ; FMin(a,b)
  %3760 = fmul fast float %3759, %3735
  %3761 = fadd fast float %3760, %3758
  %3762 = fmul fast float %3761, %3734
  %3763 = fadd fast float %3762, %3757
  %3764 = fptosi float %3763 to i32
  %3765 = add nsw i32 %3764, %3738
  %3766 = shl nsw i32 %3765, 2
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = lshr i32 %3768, 16
  %3770 = icmp eq i32 %3769, 0
  br i1 %3770, label %4192, label %3771

; <label>:3771                                    ; preds = %3709
  br label %3772

; <label>:3772                                    ; preds = %3893, %3771
  %3773 = phi i32 [ %3795, %3893 ], [ %3769, %3771 ]
  %3774 = phi float [ %3894, %3893 ], [ 0.000000e+00, %3771 ]
  %3775 = phi float [ %3895, %3893 ], [ %3653, %3771 ]
  %3776 = phi float [ %3896, %3893 ], [ %3632, %3771 ]
  %3777 = phi float [ %3897, %3893 ], [ %3631, %3771 ]
  %3778 = phi float [ %3898, %3893 ], [ 0.000000e+00, %3771 ]
  %3779 = phi float [ %3899, %3893 ], [ %3675, %3771 ]
  %3780 = phi float [ %3900, %3893 ], [ %3677, %3771 ]
  %3781 = phi float [ %3901, %3893 ], [ %3679, %3771 ]
  %3782 = phi float [ %3902, %3893 ], [ %3705, %3771 ]
  %3783 = phi float [ %3903, %3893 ], [ %3706, %3771 ]
  %3784 = phi float [ %3904, %3893 ], [ %3707, %3771 ]
  %3785 = phi float [ %3905, %3893 ], [ %3630, %3771 ]
  %3786 = phi float [ %3906, %3893 ], [ %3629, %3771 ]
  %3787 = phi float [ %3907, %3893 ], [ 0.000000e+00, %3771 ]
  %3788 = phi float [ %3908, %3893 ], [ %3628, %3771 ]
  %3789 = phi float [ %3909, %3893 ], [ %3660, %3771 ]
  %3790 = phi float [ %3910, %3893 ], [ %3661, %3771 ]
  %3791 = phi float [ %3911, %3893 ], [ %3662, %3771 ]
  %3792 = shl nuw nsw i32 %3773, 2
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = lshr i32 %3794, 16
  %3796 = shl i32 %3794, 8
  %3797 = and i32 %3796, 16776960
  %3798 = or i32 %3797, 48
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = or i32 %3797, 64
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.i32 %3804, 1
  %3807 = or i32 %3797, 80
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3811 = or i32 %3797, 96
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = or i32 %3797, 112
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = or i32 %3797, 128
  %3821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3821, 3
  %3826 = or i32 %3797, 144
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3832 = or i32 %3797, 160
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3797, 192
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = or i32 %3797, 208
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = or i32 %3797, 248
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3854 = or i32 %3797, 16
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3861 = or i32 %3797, 32
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3853)  ; Round_ni(value)
  %3869 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3870 = call float @dx.op.unary.f32(i32 27, float %3860)  ; Round_ni(value)
  %3871 = call float @dx.op.unary.f32(i32 6, float %3870)  ; FAbs(value)
  %3872 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3873 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3874 = fadd fast float %3871, %3869
  %3875 = fadd fast float %3874, %3873
  %3876 = fcmp fast oeq float %3875, 0.000000e+00
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.dot4.f32(i32 56, float %3849, float %3850, float %3851, float %3852, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3880 = call float @dx.op.dot4.f32(i32 56, float %3856, float %3857, float %3858, float %3859, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3881 = fsub fast float %3877, %3853
  %3882 = fsub fast float %3879, %3853
  %3883 = fsub fast float %3878, %3860
  %3884 = fsub fast float %3880, %3860
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3802, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3888 = fadd fast float %3887, %3885
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3891 = fcmp fast ogt float %3889, %3890
  %3892 = and i1 %3876, %3891
  br i1 %3892, label %3913, label %3893

; <label>:3893                                    ; preds = %4178, %3996, %3913, %3772
  %3894 = phi float [ %3774, %3913 ], [ %3999, %3996 ], [ %3999, %4178 ], [ %3774, %3772 ]
  %3895 = phi float [ %3775, %3913 ], [ %3775, %3996 ], [ %4153, %4178 ], [ %3775, %3772 ]
  %3896 = phi float [ %3776, %3913 ], [ %3776, %3996 ], [ %4151, %4178 ], [ %3776, %3772 ]
  %3897 = phi float [ %3777, %3913 ], [ %3777, %3996 ], [ %4123, %4178 ], [ %3777, %3772 ]
  %3898 = phi float [ %3778, %3913 ], [ %3778, %3996 ], [ %4121, %4178 ], [ %3778, %3772 ]
  %3899 = phi float [ %3779, %3913 ], [ %3779, %3996 ], [ %4188, %4178 ], [ %3779, %3772 ]
  %3900 = phi float [ %3780, %3913 ], [ %3780, %3996 ], [ %4189, %4178 ], [ %3780, %3772 ]
  %3901 = phi float [ %3781, %3913 ], [ %3781, %3996 ], [ %4190, %4178 ], [ %3781, %3772 ]
  %3902 = phi float [ %3782, %3913 ], [ %3782, %3996 ], [ %4102, %4178 ], [ %3782, %3772 ]
  %3903 = phi float [ %3783, %3913 ], [ %3783, %3996 ], [ %4103, %4178 ], [ %3783, %3772 ]
  %3904 = phi float [ %3784, %3913 ], [ %3784, %3996 ], [ %4104, %4178 ], [ %3784, %3772 ]
  %3905 = phi float [ %3785, %3913 ], [ %3785, %3996 ], [ %4131, %4178 ], [ %3785, %3772 ]
  %3906 = phi float [ %3786, %3913 ], [ %3786, %3996 ], [ %4128, %4178 ], [ %3786, %3772 ]
  %3907 = phi float [ %3787, %3913 ], [ %3787, %3996 ], [ %4125, %4178 ], [ %3787, %3772 ]
  %3908 = phi float [ %3788, %3913 ], [ %3788, %3996 ], [ %4119, %4178 ], [ %3788, %3772 ]
  %3909 = phi float [ %3789, %3913 ], [ %3789, %3996 ], [ %4114, %4178 ], [ %3789, %3772 ]
  %3910 = phi float [ %3790, %3913 ], [ %3790, %3996 ], [ %4115, %4178 ], [ %3790, %3772 ]
  %3911 = phi float [ %3791, %3913 ], [ %3791, %3996 ], [ %4116, %4178 ], [ %3791, %3772 ]
  %3912 = icmp eq i32 %3795, 0
  br i1 %3912, label %4191, label %3772

; <label>:3913                                    ; preds = %3772
  %3914 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3915 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3916 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3920 = extractvalue %dx.types.ResRet.i32 %3804, 3
  %3921 = extractvalue %dx.types.ResRet.i32 %3804, 2
  %3922 = bitcast float %3914 to i32
  %3923 = add i32 %3920, 0
  %3924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3923, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3926 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3924, %dx.types.Handle %3925, float %3853, float %3860, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3882, float %3884, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = fmul fast float %3927, %3919
  %3929 = fadd fast float %3928, %3918
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fmul fast float %3853, %3813
  %3932 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3860, float %3931)  ; FMad(a,b,c)
  %3933 = fadd fast float %3932, %3917
  %3934 = fmul fast float %3853, %3815
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3860, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3916
  %3937 = fmul fast float %3881, %3813
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3883, float %3937)  ; FMad(a,b,c)
  %3939 = fmul fast float %3881, %3815
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3883, float %3939)  ; FMad(a,b,c)
  %3941 = fmul fast float %3882, %3813
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3884, float %3941)  ; FMad(a,b,c)
  %3943 = fmul fast float %3882, %3815
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3816, float %3884, float %3943)  ; FMad(a,b,c)
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
  %3957 = fmul fast float %3853, 2.000000e+00
  %3958 = fadd fast float %3957, -1.000000e+00
  %3959 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3960 = fmul fast float %3959, %3846
  %3961 = fsub fast float %3960, %3846
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3860, 2.000000e+00
  %3964 = fadd fast float %3963, -1.000000e+00
  %3965 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3966 = fmul fast float %3965, %3847
  %3967 = fsub fast float %3966, %3847
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = fmul fast float %3872, %3809
  %3970 = fsub fast float %3969, %3809
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
  %3981 = fsub fast float %3889, %3980
  %3982 = fmul fast float %3981, %3979
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3977, %3810
  %3985 = fadd fast float %3977, %3810
  %3986 = fmul fast float %3985, %3819
  %3987 = fsub fast float %3986, %3819
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = and i32 %3922, 128
  %3990 = icmp ne i32 %3989, 0
  %3991 = select i1 %3990, float %3988, float %3984
  %3992 = fmul fast float %3991, %3983
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = fcmp fast ugt float %3992, %3994
  br i1 %3995, label %3996, label %3893

; <label>:3996                                    ; preds = %3913
  %3997 = select i1 %3955, float %3992, float 0.000000e+00
  %3998 = fadd fast float %3997, %3774
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  br i1 %3955, label %3893, label %4000

; <label>:4000                                    ; preds = %3996
  %4001 = and i32 %3922, 4
  %4002 = and i32 %3922, 8
  %4003 = add i32 %3805, 0
  %4004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4003, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4004, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4011 = bitcast float %3831 to i32
  %4012 = and i32 %4011, 255
  %4013 = uitofp i32 %4012 to float
  %4014 = lshr i32 %4011, 8
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = fmul fast float %4010, %4013
  %4018 = fadd fast float %4017, %4016
  %4019 = fmul fast float %4018, 0x3F70101000000000
  %4020 = add i32 %3806, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4021, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.ResRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.ResRet.f32 %4022, 2
  %4026 = extractvalue %dx.types.ResRet.f32 %4022, 3
  %4027 = bitcast float %3825 to i32
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
  %4046 = fmul fast float %4007, %3834
  %4047 = fmul fast float %4008, %3835
  %4048 = fmul fast float %4009, %3836
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
  %4066 = fmul fast float %4065, %3800
  %4067 = fmul fast float %4065, %3801
  %4068 = fmul fast float %4065, %3802
  %4069 = fmul fast float %4063, %3822
  %4070 = fmul fast float %4063, %3823
  %4071 = fmul fast float %4063, %3824
  %4072 = fadd fast float %4069, %4066
  %4073 = fadd fast float %4070, %4067
  %4074 = fadd fast float %4071, %4068
  %4075 = fmul fast float %4064, %3828
  %4076 = fmul fast float %4064, %3829
  %4077 = fmul fast float %4064, %3830
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
  %4092 = fsub fast float %4083, %3782
  %4093 = fsub fast float %4084, %3783
  %4094 = fsub fast float %4085, %3784
  br label %4095

; <label>:4095                                    ; preds = %4091, %4000
  %4096 = phi float [ %4092, %4091 ], [ %4083, %4000 ]
  %4097 = phi float [ %4093, %4091 ], [ %4084, %4000 ]
  %4098 = phi float [ %4094, %4091 ], [ %4085, %4000 ]
  %4099 = fmul float %4098, %4088
  %4100 = fmul float %4097, %4088
  %4101 = fmul float %4096, %4088
  %4102 = fadd fast float %4101, %3782
  %4103 = fadd fast float %4100, %3783
  %4104 = fadd fast float %4099, %3784
  %4105 = icmp ne i32 %4001, 0
  %4106 = select i1 %4105, float 1.000000e+00, float 0.000000e+00
  %4107 = fmul fast float %3992, %4106
  %4108 = fsub fast float %4046, %3789
  %4109 = fsub fast float %4047, %3790
  %4110 = fsub fast float %4048, %3791
  %4111 = fmul fast float %4108, %4107
  %4112 = fmul fast float %4109, %4107
  %4113 = fmul fast float %4110, %4107
  %4114 = fadd fast float %4111, %3789
  %4115 = fadd fast float %4112, %3790
  %4116 = fadd fast float %4113, %3791
  %4117 = fsub fast float %4019, %3788
  %4118 = fmul fast float %4117, %4107
  %4119 = fadd fast float %4118, %3788
  %4120 = fmul fast float %4107, %3778
  %4121 = fsub fast float %3778, %4120
  %4122 = fmul fast float %4107, %3777
  %4123 = fsub fast float %3777, %4122
  %4124 = fadd fast float %3992, %3787
  %4125 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4126 = fsub fast float %4039, %3786
  %4127 = fmul fast float %4126, %4088
  %4128 = fadd fast float %4127, %3786
  %4129 = fsub fast float %4025, %3785
  %4130 = fmul fast float %4129, %4088
  %4131 = fadd fast float %4130, %3785
  %4132 = call float @dx.op.dot3.f32(i32 55, float %4046, float %4047, float %4048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = fmul fast float %4135, %4132
  %4137 = fadd fast float %4136, %4134
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = bitcast float %3837 to i32
  %4140 = and i32 %4139, 65535
  %4141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4140)  ; LegacyF16ToF32(value)
  %4142 = lshr i32 %4139, 16
  %4143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4142)  ; LegacyF16ToF32(value)
  %4144 = fcmp fast oge float %4141, 0.000000e+00
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = select i1 %4144, float %4141, float %4146
  %4148 = fadd fast float %4147, %4143
  %4149 = fsub fast float %4138, %3776
  %4150 = fmul fast float %4149, %3992
  %4151 = fadd fast float %4150, %3776
  %4152 = fmul fast float %4148, %3992
  %4153 = call float @dx.op.binary.f32(i32 35, float %3775, float %4152)  ; FMax(a,b)
  %4154 = and i32 %3922, 16
  %4155 = icmp eq i32 %4154, 0
  br i1 %4155, label %4178, label %4156

; <label>:4156                                    ; preds = %4095
  %4157 = bitcast float %3843 to i32
  %4158 = add i32 %3840, 0
  %4159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4158, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4159, %dx.types.Handle %4005, float %3933, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float %3938, float %3940, float undef, float %3942, float %3944, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = and i32 %4157, 65535
  %4165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4164)  ; LegacyF16ToF32(value)
  %4166 = fmul fast float %4161, %3834
  %4167 = fmul fast float %4162, %3835
  %4168 = fmul fast float %4163, %3836
  %4169 = and i32 %3922, 16384
  %4170 = icmp ne i32 %4169, 0
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = select i1 %4170, float %4172, float 1.000000e+00
  %4174 = fmul fast float %4173, %4165
  %4175 = fmul fast float %4166, %4174
  %4176 = fmul fast float %4167, %4174
  %4177 = fmul fast float %4168, %4174
  br label %4178

; <label>:4178                                    ; preds = %4156, %4095
  %4179 = phi float [ %4175, %4156 ], [ 0.000000e+00, %4095 ]
  %4180 = phi float [ %4176, %4156 ], [ 0.000000e+00, %4095 ]
  %4181 = phi float [ %4177, %4156 ], [ 0.000000e+00, %4095 ]
  %4182 = fsub fast float %4179, %3779
  %4183 = fsub fast float %4180, %3780
  %4184 = fsub fast float %4181, %3781
  %4185 = fmul fast float %4182, %3992
  %4186 = fmul fast float %4183, %3992
  %4187 = fmul fast float %4184, %3992
  %4188 = fadd fast float %4185, %3779
  %4189 = fadd fast float %4186, %3780
  %4190 = fadd fast float %4187, %3781
  br label %3893

; <label>:4191                                    ; preds = %3893
  br label %4192

; <label>:4192                                    ; preds = %4191, %3709
  %4193 = phi float [ 0.000000e+00, %3709 ], [ %3894, %4191 ]
  %4194 = phi float [ %3653, %3709 ], [ %3895, %4191 ]
  %4195 = phi float [ %3632, %3709 ], [ %3896, %4191 ]
  %4196 = phi float [ %3631, %3709 ], [ %3897, %4191 ]
  %4197 = phi float [ 0.000000e+00, %3709 ], [ %3898, %4191 ]
  %4198 = phi float [ %3675, %3709 ], [ %3899, %4191 ]
  %4199 = phi float [ %3677, %3709 ], [ %3900, %4191 ]
  %4200 = phi float [ %3679, %3709 ], [ %3901, %4191 ]
  %4201 = phi float [ %3705, %3709 ], [ %3902, %4191 ]
  %4202 = phi float [ %3706, %3709 ], [ %3903, %4191 ]
  %4203 = phi float [ %3707, %3709 ], [ %3904, %4191 ]
  %4204 = phi float [ %3630, %3709 ], [ %3905, %4191 ]
  %4205 = phi float [ %3629, %3709 ], [ %3906, %4191 ]
  %4206 = phi float [ 0.000000e+00, %3709 ], [ %3907, %4191 ]
  %4207 = phi float [ %3628, %3709 ], [ %3908, %4191 ]
  %4208 = phi float [ %3660, %3709 ], [ %3909, %4191 ]
  %4209 = phi float [ %3661, %3709 ], [ %3910, %4191 ]
  %4210 = phi float [ %3662, %3709 ], [ %3911, %4191 ]
  %4211 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4202, float %4203, float %4201, float %4202, float %4203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call float @dx.op.unary.f32(i32 25, float %4211)  ; Rsqrt(value)
  %4213 = fmul fast float %4212, %4201
  %4214 = fmul fast float %4212, %4202
  %4215 = fmul fast float %4212, %4203
  %4216 = fadd fast float %4206, %1291
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4218 = call float @dx.op.dot3.f32(i32 55, float %4213, float %4214, float %4215, float %4213, float %4214, float %4215)  ; Dot3(ax,ay,az,bx,by,bz)
  %4219 = call float @dx.op.unary.f32(i32 25, float %4218)  ; Rsqrt(value)
  %4220 = fmul fast float %4219, %4213
  %4221 = fmul fast float %4219, %4214
  %4222 = fmul fast float %4219, %4215
  br label %4223

; <label>:4223                                    ; preds = %4192, %3619
  %4224 = phi float [ %4220, %4192 ], [ %3705, %3619 ]
  %4225 = phi float [ %4221, %4192 ], [ %3706, %3619 ]
  %4226 = phi float [ %4222, %4192 ], [ %3707, %3619 ]
  %4227 = phi float [ %4208, %4192 ], [ %3660, %3619 ]
  %4228 = phi float [ %4209, %4192 ], [ %3661, %3619 ]
  %4229 = phi float [ %4210, %4192 ], [ %3662, %3619 ]
  %4230 = phi float [ %4198, %4192 ], [ %3675, %3619 ]
  %4231 = phi float [ %4199, %4192 ], [ %3677, %3619 ]
  %4232 = phi float [ %4200, %4192 ], [ %3679, %3619 ]
  %4233 = phi float [ %4207, %4192 ], [ %3628, %3619 ]
  %4234 = phi float [ %4217, %4192 ], [ %1291, %3619 ]
  %4235 = phi float [ %4205, %4192 ], [ %3629, %3619 ]
  %4236 = phi float [ %4204, %4192 ], [ %3630, %3619 ]
  %4237 = phi float [ %4197, %4192 ], [ 0.000000e+00, %3619 ]
  %4238 = phi float [ %4196, %4192 ], [ %3631, %3619 ]
  %4239 = phi float [ %4193, %4192 ], [ 0.000000e+00, %3619 ]
  %4240 = phi float [ %4194, %4192 ], [ %3653, %3619 ]
  %4241 = phi float [ %4195, %4192 ], [ %3632, %3619 ]
  %4242 = fadd fast float %4233, 0xBFB99999A0000000
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = fmul fast float %4243, 0x3FF1C71C80000000
  %4245 = call float @dx.op.binary.f32(i32 36, float %4233, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4246 = fsub fast float 1.000000e+00, %4244
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fmul fast float %4247, %4227
  %4249 = fmul fast float %4247, %4228
  %4250 = fmul fast float %4247, %4229
  %4251 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = fmul fast float %4244, %4227
  %4255 = fmul fast float %4244, %4228
  %4256 = fmul fast float %4244, %4229
  %4257 = fadd fast float %4254, %4245
  %4258 = fadd fast float %4255, %4245
  %4259 = fadd fast float %4256, %4245
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 3
  %4266 = and i32 %4265, 8
  %4267 = icmp ne i32 %4266, 0
  %4268 = call float @dx.op.binary.f32(i32 35, float %4251, float %4227)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4252, float %4227)  ; FMax(a,b)
  %4270 = call float @dx.op.binary.f32(i32 35, float %4253, float %4227)  ; FMax(a,b)
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4251, float %4252, float %4253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = select i1 %271, float %4227, float %4251
  %4273 = select i1 %271, float %4271, float %4252
  %4274 = select i1 %271, float 1.000000e+00, float %4253
  %4275 = select i1 %4267, float %4268, float %4272
  %4276 = select i1 %4267, float %4269, float %4273
  %4277 = select i1 %4267, float %4270, float %4274
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4282 = fadd fast float %4279, %199
  %4283 = fadd fast float %4280, %200
  %4284 = fadd fast float %4281, %201
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4288 = fsub fast float %4282, %4286
  %4289 = fsub fast float %4283, %4287
  %4290 = fmul fast float %4288, %4288
  %4291 = fmul fast float %4289, %4289
  %4292 = fadd fast float %4290, %4291
  %4293 = call float @dx.op.unary.f32(i32 24, float %4292)  ; Sqrt(value)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4295 = fcmp fast olt float %4293, %4294
  br i1 %4295, label %4296, label %4363

; <label>:4296                                    ; preds = %4223
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4305 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4307 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4308 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4309 = fadd fast float %4306, %4282
  %4310 = fadd fast float %4307, %4283
  %4311 = fadd fast float %4308, %4284
  %4312 = fmul fast float %4309, %4298
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4300, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = fmul fast float %4309, %4303
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4304, float %4315)  ; FMad(a,b,c)
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4305, float %4316)  ; FMad(a,b,c)
  %4318 = fsub fast float %4314, %4306
  %4319 = fsub fast float %4317, %4307
  %4320 = fsub fast float %4318, %4286
  %4321 = fadd fast float %4320, %4294
  %4322 = fsub fast float %4319, %4287
  %4323 = fadd fast float %4322, %4294
  %4324 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4325 = fmul fast float %4321, %4324
  %4326 = fmul fast float %4323, %4324
  %4327 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4329 = fsub fast float 1.000000e+00, %4327
  %4330 = fsub fast float 1.000000e+00, %4328
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = fcmp fast ugt float %4332, 0.000000e+00
  br i1 %4333, label %4334, label %4637

; <label>:4334                                    ; preds = %4296
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fmul fast float %4336, %4332
  %4338 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4339 = fadd fast float %4338, %4337
  %4340 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4341 = fadd fast float %4339, %4308
  %4342 = fmul fast float %4314, %4302
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4305, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4340, float %4343)  ; FMad(a,b,c)
  %4345 = fsub fast float %4344, %4308
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 2
  %4348 = fsub fast float %4345, %4347
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = fadd fast float %4354, %4350
  %4358 = fmul fast float %4357, 0x3F847AE140000000
  %4359 = fadd fast float %4355, %4351
  %4360 = fmul fast float %4359, 0x3F847AE140000000
  %4361 = fadd fast float %4356, %4352
  %4362 = fmul fast float %4361, 0x3F847AE140000000
  br label %4637

; <label>:4363                                    ; preds = %4223
  %4364 = and i32 %250, 1
  %4365 = icmp eq i32 %4364, 0
  br i1 %4365, label %4637, label %4366

; <label>:4366                                    ; preds = %4363
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4367, 3
  %4377 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4378 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4379 = fadd fast float %4376, %4282
  %4380 = fadd fast float %4377, %4283
  %4381 = fadd fast float %4378, %4284
  %4382 = fmul fast float %4379, %4368
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4370, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4372, float %4383)  ; FMad(a,b,c)
  %4385 = fmul fast float %4379, %4373
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4374, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4375, float %4386)  ; FMad(a,b,c)
  %4388 = fsub fast float %4384, %4376
  %4389 = fsub fast float %4387, %4377
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 0
  %4399 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4400 = udiv i32 %4399, %4398
  %4401 = fsub fast float %4388, %4391
  %4402 = fsub fast float %4389, %4392
  %4403 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4404 = call float @dx.op.binary.f32(i32 35, float %4402, float 0.000000e+00)  ; FMax(a,b)
  %4405 = call float @dx.op.binary.f32(i32 36, float %4403, float %4393)  ; FMin(a,b)
  %4406 = call float @dx.op.binary.f32(i32 36, float %4404, float %4394)  ; FMin(a,b)
  %4407 = add i32 %4398, -1
  %4408 = add i32 %4400, -1
  %4409 = fmul fast float %4405, %4396
  %4410 = fmul fast float %4406, %4396
  %4411 = fptoui float %4409 to i32
  %4412 = fptoui float %4410 to i32
  %4413 = call i32 @dx.op.binary.i32(i32 40, i32 %4411, i32 %4407)  ; UMin(a,b)
  %4414 = call i32 @dx.op.binary.i32(i32 40, i32 %4412, i32 %4408)  ; UMin(a,b)
  %4415 = mul i32 %4414, %4398
  %4416 = add i32 %4415, %4413
  %4417 = shl i32 %4416, 2
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = icmp eq i32 %4419, -1
  br i1 %4420, label %4637, label %4421

; <label>:4421                                    ; preds = %4366
  %4422 = mul i32 %4419, 148
  %4423 = add i32 %4422, 4
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = add i32 %4422, 8
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4422, 36
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4422, 60
  %4433 = add i32 %4422, 92
  %4434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.i32 %4434, 0
  %4436 = add i32 %4422, 116
  %4437 = fsub fast float %4388, %4425
  %4438 = fsub fast float %4389, %4428
  %4439 = fmul fast float %4396, %4437
  %4440 = fmul fast float %4396, %4438
  %4441 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = call float @dx.op.unary.f32(i32 83, float %4441)  ; DerivCoarseX(value)
  %4447 = call float @dx.op.unary.f32(i32 83, float %4443)  ; DerivCoarseX(value)
  %4448 = call float @dx.op.unary.f32(i32 84, float %4441)  ; DerivCoarseY(value)
  %4449 = call float @dx.op.unary.f32(i32 84, float %4443)  ; DerivCoarseY(value)
  %4450 = fmul fast float %4446, %4445
  %4451 = fmul fast float %4447, %4445
  %4452 = fmul fast float %4448, %4445
  %4453 = fmul fast float %4449, %4445
  %4454 = call float @dx.op.dot2.f32(i32 54, float %4452, float %4453, float %4452, float %4453)  ; Dot2(ax,ay,bx,by)
  %4455 = call float @dx.op.dot2.f32(i32 54, float %4450, float %4451, float %4450, float %4451)  ; Dot2(ax,ay,bx,by)
  %4456 = call float @dx.op.binary.f32(i32 35, float %4455, float %4454)  ; FMax(a,b)
  %4457 = call float @dx.op.unary.f32(i32 23, float %4456)  ; Log(value)
  %4458 = fmul fast float %4457, 5.000000e-01
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4461 = fadd fast float %4460, %4458
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float 0.000000e+00)  ; FMax(a,b)
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4465 = fadd fast float %4464, %4462
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = fadd fast float %4465, %4467
  %4469 = add i32 %4435, 0
  %4470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4470, i32 0)  ; GetDimensions(handle,mipLevel)
  %4472 = extractvalue %dx.types.Dimensions %4471, 0
  %4473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4472)  ; FirstbitLo(value)
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 1
  %4476 = sub nsw i32 %4475, %4473
  %4477 = sitofp i32 %4476 to float
  %4478 = fsub fast float %4468, %4477
  %4479 = call float @dx.op.binary.f32(i32 35, float %4478, float 0.000000e+00)  ; FMax(a,b)
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4470, %dx.types.Handle %48, float %4441, float %4443, float %4431, float undef, i32 0, i32 0, i32 undef, float %4479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = fcmp ule float %4481, 0x3FE0101020000000
  %4483 = extractvalue %dx.types.CBufRet.i32 %4474, 0
  %4484 = and i32 %4483, 128
  %4485 = icmp ne i32 %4484, 0
  %4486 = and i1 %4482, %4485
  br i1 %4486, label %4637, label %4487

; <label>:4487                                    ; preds = %4421
  %4488 = add i32 %4422, 20
  %4489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = add i32 %4422, 24
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4422, 40
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4422, 96
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 2
  %4502 = fmul fast float %4501, %4441
  %4503 = fmul fast float %4501, %4443
  %4504 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4505 = fadd fast float %4502, %4504
  %4506 = fadd fast float %4503, %4504
  %4507 = add i32 %4499, 0
  %4508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4507, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4509 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4508, i32 0)  ; GetDimensions(handle,mipLevel)
  %4510 = extractvalue %dx.types.Dimensions %4509, 0
  %4511 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4510)  ; FirstbitLo(value)
  %4512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.i32 %4512, 1
  %4514 = sub nsw i32 %4513, %4511
  %4515 = sitofp i32 %4514 to float
  %4516 = fsub fast float %4465, %4515
  %4517 = call float @dx.op.binary.f32(i32 35, float %4516, float 0.000000e+00)  ; FMax(a,b)
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4508, %dx.types.Handle %48, float %4505, float %4506, float %4496, float undef, i32 0, i32 0, i32 undef, float %4517)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = fmul fast float %4519, %4490
  %4521 = fadd fast float %4520, %4493
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4530 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4531 = fadd fast float %4527, %4388
  %4532 = fadd fast float %4529, %4389
  %4533 = fadd fast float %4521, %4530
  %4534 = fmul fast float %4531, %4523
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4524, float %4534)  ; FMad(a,b,c)
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4525, float %4535)  ; FMad(a,b,c)
  %4537 = fsub fast float %4536, %4530
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4540 = fsub fast float %4537, %4539
  %4541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.i32 %4541, 0
  %4543 = call i32 @dx.op.binary.i32(i32 40, i32 %4419, i32 %4542)  ; UMin(a,b)
  %4544 = mul i32 %4543, 36
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = add i32 %4544, 4
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = fmul fast float %4549, %4441
  %4551 = fmul fast float %4549, %4443
  %4552 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4553 = fadd fast float %4550, %4552
  %4554 = fadd fast float %4551, %4552
  %4555 = icmp eq i32 %4546, 0
  br i1 %4555, label %4624, label %4556

; <label>:4556                                    ; preds = %4487
  br label %4557

; <label>:4557                                    ; preds = %4614, %4556
  %4558 = phi float [ %4615, %4614 ], [ 0.000000e+00, %4556 ]
  %4559 = phi float [ %4616, %4614 ], [ 0.000000e+00, %4556 ]
  %4560 = phi float [ %4617, %4614 ], [ 0.000000e+00, %4556 ]
  %4561 = phi float [ %4618, %4614 ], [ 0.000000e+00, %4556 ]
  %4562 = phi float [ %4619, %4614 ], [ 0.000000e+00, %4556 ]
  %4563 = phi float [ %4620, %4614 ], [ 0.000000e+00, %4556 ]
  %4564 = phi i32 [ %4621, %4614 ], [ 0, %4556 ]
  %4565 = shl i32 %4564, 2
  %4566 = add i32 %4432, %4565
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = add i32 %4436, %4565
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = add i32 %4571, 0
  %4573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4572, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4574 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4573, i32 0)  ; GetDimensions(handle,mipLevel)
  %4575 = extractvalue %dx.types.Dimensions %4574, 0
  %4576 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4575)  ; FirstbitLo(value)
  %4577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.i32 %4577, 1
  %4579 = sub nsw i32 %4578, %4576
  %4580 = sitofp i32 %4579 to float
  %4581 = fsub fast float %4465, %4580
  %4582 = call float @dx.op.binary.f32(i32 35, float %4581, float 0.000000e+00)  ; FMax(a,b)
  %4583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4573, %dx.types.Handle %48, float %4553, float %4554, float %4568, float undef, i32 0, i32 0, i32 undef, float %4582)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = fcmp fast ogt float %4584, 0.000000e+00
  br i1 %4585, label %4586, label %4614

; <label>:4586                                    ; preds = %4557
  %4587 = add i32 %4547, %4565
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = and i32 %4589, 32767
  %4591 = mul nuw nsw i32 %4590, 928
  %4592 = add nuw nsw i32 %4591, 48
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = add nuw nsw i32 %4591, 60
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = fmul fast float %4594, %4584
  %4603 = fmul fast float %4595, %4584
  %4604 = fmul fast float %4596, %4584
  %4605 = fadd fast float %4602, %4558
  %4606 = fadd fast float %4603, %4559
  %4607 = fadd fast float %4604, %4560
  %4608 = fmul fast float %4599, %4584
  %4609 = fmul fast float %4600, %4584
  %4610 = fmul fast float %4601, %4584
  %4611 = fadd fast float %4608, %4561
  %4612 = fadd fast float %4609, %4562
  %4613 = fadd fast float %4610, %4563
  br label %4614

; <label>:4614                                    ; preds = %4586, %4557
  %4615 = phi float [ %4605, %4586 ], [ %4558, %4557 ]
  %4616 = phi float [ %4606, %4586 ], [ %4559, %4557 ]
  %4617 = phi float [ %4607, %4586 ], [ %4560, %4557 ]
  %4618 = phi float [ %4611, %4586 ], [ %4561, %4557 ]
  %4619 = phi float [ %4612, %4586 ], [ %4562, %4557 ]
  %4620 = phi float [ %4613, %4586 ], [ %4563, %4557 ]
  %4621 = add nuw i32 %4564, 1
  %4622 = icmp eq i32 %4621, %4546
  br i1 %4622, label %4623, label %4557

; <label>:4623                                    ; preds = %4614
  br label %4624

; <label>:4624                                    ; preds = %4623, %4487
  %4625 = phi float [ 0.000000e+00, %4487 ], [ %4615, %4623 ]
  %4626 = phi float [ 0.000000e+00, %4487 ], [ %4616, %4623 ]
  %4627 = phi float [ 0.000000e+00, %4487 ], [ %4617, %4623 ]
  %4628 = phi float [ 0.000000e+00, %4487 ], [ %4618, %4623 ]
  %4629 = phi float [ 0.000000e+00, %4487 ], [ %4619, %4623 ]
  %4630 = phi float [ 0.000000e+00, %4487 ], [ %4620, %4623 ]
  %4631 = fadd fast float %4628, %4625
  %4632 = fmul fast float %4631, 0x3F847AE140000000
  %4633 = fadd fast float %4629, %4626
  %4634 = fmul fast float %4633, 0x3F847AE140000000
  %4635 = fadd fast float %4630, %4627
  %4636 = fmul fast float %4635, 0x3F847AE140000000
  br label %4637

; <label>:4637                                    ; preds = %4624, %4421, %4366, %4363, %4334, %4296
  %4638 = phi float [ %4348, %4334 ], [ -1.310720e+05, %4296 ], [ %4540, %4624 ], [ -1.310720e+05, %4366 ], [ -1.310720e+05, %4421 ], [ -1.310720e+05, %4363 ]
  %4639 = phi float [ %4358, %4334 ], [ 0.000000e+00, %4296 ], [ %4632, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4640 = phi float [ %4360, %4334 ], [ 0.000000e+00, %4296 ], [ %4634, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4641 = phi float [ %4362, %4334 ], [ 0.000000e+00, %4296 ], [ %4636, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4642 = phi i1 [ true, %4334 ], [ false, %4296 ], [ true, %4624 ], [ false, %4366 ], [ false, %4421 ], [ false, %4363 ]
  %4643 = and i32 %250, 3
  %4644 = icmp eq i32 %4643, 1
  %4645 = select i1 %4644, float 1.000000e+00, float 0.000000e+00
  %4646 = fsub fast float %4638, %201
  %4647 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4648 = select i1 %4642, float %4647, float 1.000000e+00
  %4649 = fmul fast float %4648, %4645
  %4650 = icmp eq i32 %4643, 3
  %4651 = select i1 %4650, float 1.000000e+00, float %4649
  %4652 = call float @dx.op.binary.f32(i32 35, float %4239, float %4651)  ; FMax(a,b)
  %4653 = fcmp fast olt float %4651, 1.000000e+00
  %4654 = fcmp uge float %76, 0.000000e+00
  %4655 = and i1 %4654, %4653
  br i1 %4655, label %4656, label %4666

; <label>:4656                                    ; preds = %4637
  %4657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  %4661 = fadd fast float %4658, %4652
  %4662 = fcmp ule float %75, 0.000000e+00
  %4663 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = select i1 %4662, float %4663, float 1.000000e+00
  %4665 = fmul fast float %4664, %4660
  br label %4666

; <label>:4666                                    ; preds = %4656, %4637
  %4667 = phi float [ %4661, %4656 ], [ %4652, %4637 ]
  %4668 = phi float [ %4659, %4656 ], [ 0.000000e+00, %4637 ]
  %4669 = phi float [ %4665, %4656 ], [ 0.000000e+00, %4637 ]
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = fcmp fast une float %4671, 0.000000e+00
  %4674 = fcmp fast une float %4672, 0.000000e+00
  %4675 = or i1 %4673, %4674
  br i1 %4675, label %4676, label %5235

; <label>:4676                                    ; preds = %4666
  br i1 %4673, label %4677, label %4950

; <label>:4677                                    ; preds = %4676
  %4678 = call float @dx.op.unary.f32(i32 23, float %4236)  ; Log(value)
  %4679 = fmul fast float %4678, 4.000000e+00
  %4680 = call float @dx.op.unary.f32(i32 21, float %4679)  ; Exp(value)
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = fmul fast float %4682, %62
  %4684 = fmul fast float %4682, %63
  %4685 = fmul fast float %4682, %64
  %4686 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4687 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4688 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4689 = call float @dx.op.unary.f32(i32 23, float %4686)  ; Log(value)
  %4690 = call float @dx.op.unary.f32(i32 23, float %4687)  ; Log(value)
  %4691 = call float @dx.op.unary.f32(i32 23, float %4688)  ; Log(value)
  %4692 = fmul fast float %4689, 4.000000e+00
  %4693 = fmul fast float %4690, 4.000000e+00
  %4694 = fmul fast float %4691, 4.000000e+00
  %4695 = call float @dx.op.unary.f32(i32 21, float %4692)  ; Exp(value)
  %4696 = call float @dx.op.unary.f32(i32 21, float %4693)  ; Exp(value)
  %4697 = call float @dx.op.unary.f32(i32 21, float %4694)  ; Exp(value)
  %4698 = fadd fast float %4696, %4695
  %4699 = fadd fast float %4698, %4697
  %4700 = fdiv fast float 1.000000e+00, %4699
  %4701 = fmul fast float %4700, %4695
  %4702 = fcmp fast ogt float %72, 0.000000e+00
  %4703 = fcmp fast ogt float %73, 0.000000e+00
  %4704 = fcmp fast ogt float %74, 0.000000e+00
  %4705 = fcmp fast olt float %72, 0.000000e+00
  %4706 = fcmp fast olt float %73, 0.000000e+00
  %4707 = fcmp fast olt float %74, 0.000000e+00
  %4708 = zext i1 %4702 to i32
  %4709 = zext i1 %4703 to i32
  %4710 = zext i1 %4704 to i32
  %4711 = zext i1 %4705 to i32
  %4712 = zext i1 %4706 to i32
  %4713 = zext i1 %4707 to i32
  %4714 = sub nsw i32 %4708, %4711
  %4715 = sub nsw i32 %4709, %4712
  %4716 = sub nsw i32 %4710, %4713
  %4717 = call float @dx.op.unary.f32(i32 83, float %4683)  ; DerivCoarseX(value)
  %4718 = call float @dx.op.unary.f32(i32 83, float %4684)  ; DerivCoarseX(value)
  %4719 = call float @dx.op.unary.f32(i32 83, float %4685)  ; DerivCoarseX(value)
  %4720 = call float @dx.op.unary.f32(i32 84, float %4683)  ; DerivCoarseY(value)
  %4721 = call float @dx.op.unary.f32(i32 84, float %4684)  ; DerivCoarseY(value)
  %4722 = call float @dx.op.unary.f32(i32 84, float %4685)  ; DerivCoarseY(value)
  %4723 = fcmp fast ole float %282, %4701
  %4724 = fmul fast float %4700, %4698
  %4725 = fcmp fast ole float %282, %4724
  %4726 = select i1 %4725, float %4685, float %4683
  %4727 = select i1 %4725, float %4683, float %4684
  %4728 = select i1 %4723, float %4684, float %4726
  %4729 = select i1 %4723, float %4685, float %4727
  %4730 = select i1 %4725, float %4719, float %4717
  %4731 = select i1 %4725, float %4717, float %4718
  %4732 = select i1 %4723, float %4718, float %4730
  %4733 = select i1 %4723, float %4719, float %4731
  %4734 = select i1 %4725, float %4722, float %4720
  %4735 = select i1 %4725, float %4720, float %4721
  %4736 = select i1 %4723, float %4721, float %4734
  %4737 = select i1 %4723, float %4722, float %4735
  %4738 = call float @dx.op.unary.f32(i32 27, float %4728)  ; Round_ni(value)
  %4739 = call float @dx.op.unary.f32(i32 27, float %4729)  ; Round_ni(value)
  %4740 = fptosi float %4738 to i32
  %4741 = fptosi float %4739 to i32
  %4742 = xor i32 %4741, %4740
  %4743 = sitofp i32 %4742 to float
  %4744 = fptosi float %4743 to i32
  %4745 = sitofp i32 %4744 to float
  %4746 = fmul fast float %4745, 0x3FE3C6EF40000000
  %4747 = frem fast float %4738, 2.560000e+02
  %4748 = frem fast float %4739, 2.560000e+02
  %4749 = fptoui float %4747 to i32
  %4750 = fptoui float %4748 to i32
  %4751 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4749, i32 %4750, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = fadd fast float %4752, %4746
  %4756 = fadd fast float %4753, %4746
  %4757 = fadd fast float %4754, %4746
  %4758 = call float @dx.op.unary.f32(i32 22, float %4755)  ; Frc(value)
  %4759 = call float @dx.op.unary.f32(i32 22, float %4756)  ; Frc(value)
  %4760 = call float @dx.op.unary.f32(i32 22, float %4757)  ; Frc(value)
  %4761 = fmul fast float %4760, 0x401921FB60000000
  %4762 = call float @dx.op.unary.f32(i32 13, float %4761)  ; Sin(value)
  %4763 = call float @dx.op.unary.f32(i32 12, float %4761)  ; Cos(value)
  %4764 = fsub fast float -0.000000e+00, %4763
  %4765 = fmul fast float %4763, %4728
  %4766 = call float @dx.op.tertiary.f32(i32 46, float %4762, float %4729, float %4765)  ; FMad(a,b,c)
  %4767 = fmul fast float %4762, %4728
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4729, float %4767)  ; FMad(a,b,c)
  %4769 = fadd fast float %4766, %4758
  %4770 = fadd fast float %4768, %4759
  %4771 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4772 = bitcast float %4771 to i32
  %4773 = icmp eq i32 %4772, 0
  br i1 %4773, label %4812, label %4774

; <label>:4774                                    ; preds = %4677
  %4775 = add i32 %4772, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %113, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4781 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4782 = fsub fast float 1.000000e+00, %4671
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4784 = bitcast float %4671 to i32
  %4785 = sitofp i32 %4784 to float
  %4786 = fadd fast float %4785, 0xC1CFBF8940000000
  %4787 = fmul fast float %4781, %4786
  %4788 = fadd fast float %4787, 0x41CFBF8940000000
  %4789 = fptosi float %4788 to i32
  %4790 = bitcast i32 %4789 to float
  %4791 = bitcast float %4783 to i32
  %4792 = sitofp i32 %4791 to float
  %4793 = fadd fast float %4792, 0xC1CFBF8940000000
  %4794 = fmul fast float %4793, %4781
  %4795 = fadd fast float %4794, 0x41CFBF8940000000
  %4796 = fptosi float %4795 to i32
  %4797 = bitcast i32 %4796 to float
  %4798 = fmul fast float %4790, %4780
  %4799 = fmul fast float %4797, %4780
  %4800 = fsub fast float %4783, %4798
  %4801 = fadd fast float %4799, %4783
  %4802 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4804 = fsub fast float %4778, %4802
  %4805 = fsub fast float %4803, %4802
  %4806 = bitcast float %4805 to i32
  %4807 = sub nsw i32 2129859010, %4806
  %4808 = bitcast i32 %4807 to float
  %4809 = fmul fast float %4808, %4804
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fcmp fast olt float %4810, 0x3F70101020000000
  br i1 %4811, label %4950, label %4812

; <label>:4812                                    ; preds = %4774, %4677
  %4813 = phi float [ %4810, %4774 ], [ %4671, %4677 ]
  %4814 = fmul fast float %4813, %4680
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 1
  %4817 = extractvalue %dx.types.CBufRet.i32 %4815, 0
  %4818 = add i32 %4817, 0
  %4819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4819, %dx.types.Handle %112, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.ResRet.f32 %4820, 3
  %4825 = and i32 %4816, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = lshr i32 %4816, 8
  %4828 = and i32 %4827, 255
  %4829 = uitofp i32 %4828 to float
  %4830 = fmul fast float %4824, %4826
  %4831 = fadd fast float %4830, %4829
  %4832 = fmul fast float %4831, 0x3F70101000000000
  %4833 = fadd fast float %4832, 0xBFB99999A0000000
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, 0x3FF1C71C80000000
  %4836 = call float @dx.op.binary.f32(i32 36, float %4832, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4837 = fsub fast float 1.000000e+00, %4835
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4838, %4821
  %4840 = fmul fast float %4838, %4822
  %4841 = fmul fast float %4838, %4823
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = fmul fast float %4835, %4821
  %4846 = fmul fast float %4835, %4822
  %4847 = fmul fast float %4835, %4823
  %4848 = fadd fast float %4845, %4836
  %4849 = fadd fast float %4846, %4836
  %4850 = fadd fast float %4847, %4836
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.i32 %4854, 3
  %4856 = extractvalue %dx.types.CBufRet.i32 %4854, 2
  %4857 = add i32 %4856, 0
  %4858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4858, %dx.types.Handle %112, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4864 = and i32 %4855, 255
  %4865 = uitofp i32 %4864 to float
  %4866 = lshr i32 %4855, 8
  %4867 = and i32 %4866, 255
  %4868 = uitofp i32 %4867 to float
  %4869 = lshr i32 %4855, 16
  %4870 = and i32 %4869, 255
  %4871 = uitofp i32 %4870 to float
  %4872 = fmul fast float %4871, 0x3F70101000000000
  %4873 = fmul fast float %4860, %4865
  %4874 = fadd fast float %4873, %4868
  %4875 = fmul fast float %4874, 0x3F70101000000000
  %4876 = fadd fast float %4861, -5.000000e-01
  %4877 = fadd fast float %4863, -5.000000e-01
  %4878 = fmul fast float %4876, %4872
  %4879 = fmul fast float %4877, %4872
  %4880 = fadd fast float %4878, 5.000000e-01
  %4881 = fadd fast float %4879, 5.000000e-01
  %4882 = fmul fast float %4880, 2.000000e+00
  %4883 = fadd fast float %4882, -1.000000e+00
  %4884 = fmul fast float %4881, 2.000000e+00
  %4885 = fadd fast float %4884, -1.000000e+00
  %4886 = fadd fast float %4883, %4885
  %4887 = fmul fast float %4886, 5.000000e-01
  %4888 = fsub fast float %4883, %4885
  %4889 = fmul fast float %4888, 5.000000e-01
  %4890 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4893 = fsub fast float %4891, %4892
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4889, float %4893, float %4887, float %4889, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4887, %4895
  %4897 = fmul fast float %4889, %4895
  %4898 = select i1 %4725, i32 %4715, i32 %4716
  %4899 = select i1 %4723, i32 %4714, i32 %4898
  %4900 = sitofp i32 %4899 to float
  %4901 = fmul fast float %4893, %4900
  %4902 = fmul fast float %4901, %4895
  %4903 = select i1 %4725, float %4902, float %4897
  %4904 = select i1 %4725, float %4897, float %4902
  %4905 = select i1 %4723, float %4902, float %4896
  %4906 = select i1 %4723, float %4897, float %4903
  %4907 = select i1 %4723, float %4896, float %4904
  %4908 = fsub fast float %4842, %4275
  %4909 = fsub fast float %4843, %4276
  %4910 = fsub fast float %4844, %4277
  %4911 = fmul fast float %4908, %4814
  %4912 = fmul fast float %4909, %4814
  %4913 = fmul fast float %4910, %4814
  %4914 = fadd fast float %4911, %4275
  %4915 = fadd fast float %4912, %4276
  %4916 = fadd fast float %4913, %4277
  %4917 = fsub fast float %4851, %4260
  %4918 = fsub fast float %4852, %4261
  %4919 = fsub fast float %4853, %4262
  %4920 = fmul fast float %4917, %4814
  %4921 = fmul fast float %4918, %4814
  %4922 = fmul fast float %4919, %4814
  %4923 = fadd fast float %4920, %4260
  %4924 = fadd fast float %4921, %4261
  %4925 = fadd fast float %4922, %4262
  %4926 = fadd fast float %4905, %4224
  %4927 = fadd fast float %4906, %4225
  %4928 = fadd fast float %4907, %4226
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %4928, float %4926, float %4927, float %4928)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 25, float %4929)  ; Rsqrt(value)
  %4931 = fmul fast float %4926, %4930
  %4932 = fmul fast float %4927, %4930
  %4933 = fmul fast float %4928, %4930
  %4934 = fsub fast float %4931, %4224
  %4935 = fsub fast float %4932, %4225
  %4936 = fsub fast float %4933, %4226
  %4937 = fmul fast float %4934, %4814
  %4938 = fmul fast float %4935, %4814
  %4939 = fmul fast float %4936, %4814
  %4940 = fadd fast float %4937, %4224
  %4941 = fadd fast float %4938, %4225
  %4942 = fadd fast float %4939, %4226
  %4943 = call float @dx.op.binary.f32(i32 36, float %4236, float %4862)  ; FMin(a,b)
  %4944 = fsub fast float %4943, %4236
  %4945 = fmul fast float %4944, %4814
  %4946 = fadd fast float %4945, %4236
  %4947 = fsub fast float %4875, %4263
  %4948 = fmul fast float %4947, %4814
  %4949 = fadd fast float %4948, %4263
  br label %4950

; <label>:4950                                    ; preds = %4812, %4774, %4676
  %4951 = phi float [ %4923, %4812 ], [ %4260, %4774 ], [ %4260, %4676 ]
  %4952 = phi float [ %4924, %4812 ], [ %4261, %4774 ], [ %4261, %4676 ]
  %4953 = phi float [ %4925, %4812 ], [ %4262, %4774 ], [ %4262, %4676 ]
  %4954 = phi float [ %4914, %4812 ], [ %4275, %4774 ], [ %4275, %4676 ]
  %4955 = phi float [ %4915, %4812 ], [ %4276, %4774 ], [ %4276, %4676 ]
  %4956 = phi float [ %4916, %4812 ], [ %4277, %4774 ], [ %4277, %4676 ]
  %4957 = phi float [ %4940, %4812 ], [ %4224, %4774 ], [ %4224, %4676 ]
  %4958 = phi float [ %4941, %4812 ], [ %4225, %4774 ], [ %4225, %4676 ]
  %4959 = phi float [ %4942, %4812 ], [ %4226, %4774 ], [ %4226, %4676 ]
  %4960 = phi float [ %4949, %4812 ], [ %4263, %4774 ], [ %4263, %4676 ]
  %4961 = phi float [ %4946, %4812 ], [ %4236, %4774 ], [ %4236, %4676 ]
  br i1 %4674, label %4962, label %5235

; <label>:4962                                    ; preds = %4950
  %4963 = call float @dx.op.unary.f32(i32 23, float %4961)  ; Log(value)
  %4964 = fmul fast float %4963, 4.000000e+00
  %4965 = call float @dx.op.unary.f32(i32 21, float %4964)  ; Exp(value)
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = fmul fast float %4967, %62
  %4969 = fmul fast float %4967, %63
  %4970 = fmul fast float %4967, %64
  %4971 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4972 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4973 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4974 = call float @dx.op.unary.f32(i32 23, float %4971)  ; Log(value)
  %4975 = call float @dx.op.unary.f32(i32 23, float %4972)  ; Log(value)
  %4976 = call float @dx.op.unary.f32(i32 23, float %4973)  ; Log(value)
  %4977 = fmul fast float %4974, 4.000000e+00
  %4978 = fmul fast float %4975, 4.000000e+00
  %4979 = fmul fast float %4976, 4.000000e+00
  %4980 = call float @dx.op.unary.f32(i32 21, float %4977)  ; Exp(value)
  %4981 = call float @dx.op.unary.f32(i32 21, float %4978)  ; Exp(value)
  %4982 = call float @dx.op.unary.f32(i32 21, float %4979)  ; Exp(value)
  %4983 = fadd fast float %4981, %4980
  %4984 = fadd fast float %4983, %4982
  %4985 = fdiv fast float 1.000000e+00, %4984
  %4986 = fmul fast float %4985, %4980
  %4987 = fcmp fast ogt float %72, 0.000000e+00
  %4988 = fcmp fast ogt float %73, 0.000000e+00
  %4989 = fcmp fast ogt float %74, 0.000000e+00
  %4990 = fcmp fast olt float %72, 0.000000e+00
  %4991 = fcmp fast olt float %73, 0.000000e+00
  %4992 = fcmp fast olt float %74, 0.000000e+00
  %4993 = zext i1 %4987 to i32
  %4994 = zext i1 %4988 to i32
  %4995 = zext i1 %4989 to i32
  %4996 = zext i1 %4990 to i32
  %4997 = zext i1 %4991 to i32
  %4998 = zext i1 %4992 to i32
  %4999 = sub nsw i32 %4993, %4996
  %5000 = sub nsw i32 %4994, %4997
  %5001 = sub nsw i32 %4995, %4998
  %5002 = call float @dx.op.unary.f32(i32 83, float %4968)  ; DerivCoarseX(value)
  %5003 = call float @dx.op.unary.f32(i32 83, float %4969)  ; DerivCoarseX(value)
  %5004 = call float @dx.op.unary.f32(i32 83, float %4970)  ; DerivCoarseX(value)
  %5005 = call float @dx.op.unary.f32(i32 84, float %4968)  ; DerivCoarseY(value)
  %5006 = call float @dx.op.unary.f32(i32 84, float %4969)  ; DerivCoarseY(value)
  %5007 = call float @dx.op.unary.f32(i32 84, float %4970)  ; DerivCoarseY(value)
  %5008 = fcmp fast ole float %282, %4986
  %5009 = fmul fast float %4985, %4983
  %5010 = fcmp fast ole float %282, %5009
  %5011 = select i1 %5010, float %4970, float %4968
  %5012 = select i1 %5010, float %4968, float %4969
  %5013 = select i1 %5008, float %4969, float %5011
  %5014 = select i1 %5008, float %4970, float %5012
  %5015 = select i1 %5010, float %5004, float %5002
  %5016 = select i1 %5010, float %5002, float %5003
  %5017 = select i1 %5008, float %5003, float %5015
  %5018 = select i1 %5008, float %5004, float %5016
  %5019 = select i1 %5010, float %5007, float %5005
  %5020 = select i1 %5010, float %5005, float %5006
  %5021 = select i1 %5008, float %5006, float %5019
  %5022 = select i1 %5008, float %5007, float %5020
  %5023 = call float @dx.op.unary.f32(i32 27, float %5013)  ; Round_ni(value)
  %5024 = call float @dx.op.unary.f32(i32 27, float %5014)  ; Round_ni(value)
  %5025 = fptosi float %5023 to i32
  %5026 = fptosi float %5024 to i32
  %5027 = xor i32 %5026, %5025
  %5028 = sitofp i32 %5027 to float
  %5029 = fptosi float %5028 to i32
  %5030 = sitofp i32 %5029 to float
  %5031 = fmul fast float %5030, 0x3FE3C6EF40000000
  %5032 = frem fast float %5023, 2.560000e+02
  %5033 = frem fast float %5024, 2.560000e+02
  %5034 = fptoui float %5032 to i32
  %5035 = fptoui float %5033 to i32
  %5036 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5034, i32 %5035, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = fadd fast float %5037, %5031
  %5041 = fadd fast float %5038, %5031
  %5042 = fadd fast float %5039, %5031
  %5043 = call float @dx.op.unary.f32(i32 22, float %5040)  ; Frc(value)
  %5044 = call float @dx.op.unary.f32(i32 22, float %5041)  ; Frc(value)
  %5045 = call float @dx.op.unary.f32(i32 22, float %5042)  ; Frc(value)
  %5046 = fmul fast float %5045, 0x401921FB60000000
  %5047 = call float @dx.op.unary.f32(i32 13, float %5046)  ; Sin(value)
  %5048 = call float @dx.op.unary.f32(i32 12, float %5046)  ; Cos(value)
  %5049 = fsub fast float -0.000000e+00, %5048
  %5050 = fmul fast float %5048, %5013
  %5051 = call float @dx.op.tertiary.f32(i32 46, float %5047, float %5014, float %5050)  ; FMad(a,b,c)
  %5052 = fmul fast float %5047, %5013
  %5053 = call float @dx.op.tertiary.f32(i32 46, float %5049, float %5014, float %5052)  ; FMad(a,b,c)
  %5054 = fadd fast float %5051, %5043
  %5055 = fadd fast float %5053, %5044
  %5056 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %5057 = bitcast float %5056 to i32
  %5058 = icmp eq i32 %5057, 0
  br i1 %5058, label %5097, label %5059

; <label>:5059                                    ; preds = %4962
  %5060 = add i32 %5057, 0
  %5061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5062 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5061, %dx.types.Handle %113, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 0
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5067 = fsub fast float 1.000000e+00, %4672
  %5068 = call float @dx.op.binary.f32(i32 35, float %5067, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5069 = bitcast float %4672 to i32
  %5070 = sitofp i32 %5069 to float
  %5071 = fadd fast float %5070, 0xC1CFBF8940000000
  %5072 = fmul fast float %5066, %5071
  %5073 = fadd fast float %5072, 0x41CFBF8940000000
  %5074 = fptosi float %5073 to i32
  %5075 = bitcast i32 %5074 to float
  %5076 = bitcast float %5068 to i32
  %5077 = sitofp i32 %5076 to float
  %5078 = fadd fast float %5077, 0xC1CFBF8940000000
  %5079 = fmul fast float %5078, %5066
  %5080 = fadd fast float %5079, 0x41CFBF8940000000
  %5081 = fptosi float %5080 to i32
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5075, %5065
  %5084 = fmul fast float %5082, %5065
  %5085 = fsub fast float %5068, %5083
  %5086 = fadd fast float %5084, %5068
  %5087 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5089 = fsub fast float %5063, %5087
  %5090 = fsub fast float %5088, %5087
  %5091 = bitcast float %5090 to i32
  %5092 = sub nsw i32 2129859010, %5091
  %5093 = bitcast i32 %5092 to float
  %5094 = fmul fast float %5093, %5089
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fcmp fast olt float %5095, 0x3F70101020000000
  br i1 %5096, label %5235, label %5097

; <label>:5097                                    ; preds = %5059, %4962
  %5098 = phi float [ %5095, %5059 ], [ %4672, %4962 ]
  %5099 = fmul fast float %5098, %4965
  %5100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.i32 %5100, 1
  %5102 = extractvalue %dx.types.CBufRet.i32 %5100, 0
  %5103 = add i32 %5102, 0
  %5104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5105 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5104, %dx.types.Handle %112, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = extractvalue %dx.types.ResRet.f32 %5105, 3
  %5110 = and i32 %5101, 255
  %5111 = uitofp i32 %5110 to float
  %5112 = lshr i32 %5101, 8
  %5113 = and i32 %5112, 255
  %5114 = uitofp i32 %5113 to float
  %5115 = fmul fast float %5109, %5111
  %5116 = fadd fast float %5115, %5114
  %5117 = fmul fast float %5116, 0x3F70101000000000
  %5118 = fadd fast float %5117, 0xBFB99999A0000000
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %5119, 0x3FF1C71C80000000
  %5121 = call float @dx.op.binary.f32(i32 36, float %5117, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5122 = fsub fast float 1.000000e+00, %5120
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %5123, %5106
  %5125 = fmul fast float %5123, %5107
  %5126 = fmul fast float %5123, %5108
  %5127 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5128 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5129 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5130 = fmul fast float %5120, %5106
  %5131 = fmul fast float %5120, %5107
  %5132 = fmul fast float %5120, %5108
  %5133 = fadd fast float %5130, %5121
  %5134 = fadd fast float %5131, %5121
  %5135 = fadd fast float %5132, %5121
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.i32 %5139, 3
  %5141 = extractvalue %dx.types.CBufRet.i32 %5139, 2
  %5142 = add i32 %5141, 0
  %5143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5144 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5143, %dx.types.Handle %112, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5145 = extractvalue %dx.types.ResRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.ResRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.ResRet.f32 %5144, 2
  %5148 = extractvalue %dx.types.ResRet.f32 %5144, 3
  %5149 = and i32 %5140, 255
  %5150 = uitofp i32 %5149 to float
  %5151 = lshr i32 %5140, 8
  %5152 = and i32 %5151, 255
  %5153 = uitofp i32 %5152 to float
  %5154 = lshr i32 %5140, 16
  %5155 = and i32 %5154, 255
  %5156 = uitofp i32 %5155 to float
  %5157 = fmul fast float %5156, 0x3F70101000000000
  %5158 = fmul fast float %5145, %5150
  %5159 = fadd fast float %5158, %5153
  %5160 = fmul fast float %5159, 0x3F70101000000000
  %5161 = fadd fast float %5146, -5.000000e-01
  %5162 = fadd fast float %5148, -5.000000e-01
  %5163 = fmul fast float %5161, %5157
  %5164 = fmul fast float %5162, %5157
  %5165 = fadd fast float %5163, 5.000000e-01
  %5166 = fadd fast float %5164, 5.000000e-01
  %5167 = fmul fast float %5165, 2.000000e+00
  %5168 = fadd fast float %5167, -1.000000e+00
  %5169 = fmul fast float %5166, 2.000000e+00
  %5170 = fadd fast float %5169, -1.000000e+00
  %5171 = fadd fast float %5168, %5170
  %5172 = fmul fast float %5171, 5.000000e-01
  %5173 = fsub fast float %5168, %5170
  %5174 = fmul fast float %5173, 5.000000e-01
  %5175 = call float @dx.op.unary.f32(i32 6, float %5172)  ; FAbs(value)
  %5176 = fsub fast float 1.000000e+00, %5175
  %5177 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5178 = fsub fast float %5176, %5177
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5174, float %5178, float %5172, float %5174, float %5178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 25, float %5179)  ; Rsqrt(value)
  %5181 = fmul fast float %5172, %5180
  %5182 = fmul fast float %5174, %5180
  %5183 = select i1 %5010, i32 %5000, i32 %5001
  %5184 = select i1 %5008, i32 %4999, i32 %5183
  %5185 = sitofp i32 %5184 to float
  %5186 = fmul fast float %5178, %5185
  %5187 = fmul fast float %5186, %5180
  %5188 = select i1 %5010, float %5187, float %5182
  %5189 = select i1 %5010, float %5182, float %5187
  %5190 = select i1 %5008, float %5187, float %5181
  %5191 = select i1 %5008, float %5182, float %5188
  %5192 = select i1 %5008, float %5181, float %5189
  %5193 = fsub fast float %5127, %4954
  %5194 = fsub fast float %5128, %4955
  %5195 = fsub fast float %5129, %4956
  %5196 = fmul fast float %5193, %5099
  %5197 = fmul fast float %5194, %5099
  %5198 = fmul fast float %5195, %5099
  %5199 = fadd fast float %5196, %4954
  %5200 = fadd fast float %5197, %4955
  %5201 = fadd fast float %5198, %4956
  %5202 = fsub fast float %5136, %4951
  %5203 = fsub fast float %5137, %4952
  %5204 = fsub fast float %5138, %4953
  %5205 = fmul fast float %5202, %5099
  %5206 = fmul fast float %5203, %5099
  %5207 = fmul fast float %5204, %5099
  %5208 = fadd fast float %5205, %4951
  %5209 = fadd fast float %5206, %4952
  %5210 = fadd fast float %5207, %4953
  %5211 = fadd fast float %5190, %4957
  %5212 = fadd fast float %5191, %4958
  %5213 = fadd fast float %5192, %4959
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float %5211, float %5212, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.unary.f32(i32 25, float %5214)  ; Rsqrt(value)
  %5216 = fmul fast float %5211, %5215
  %5217 = fmul fast float %5212, %5215
  %5218 = fmul fast float %5213, %5215
  %5219 = fsub fast float %5216, %4957
  %5220 = fsub fast float %5217, %4958
  %5221 = fsub fast float %5218, %4959
  %5222 = fmul fast float %5219, %5099
  %5223 = fmul fast float %5220, %5099
  %5224 = fmul fast float %5221, %5099
  %5225 = fadd fast float %5222, %4957
  %5226 = fadd fast float %5223, %4958
  %5227 = fadd fast float %5224, %4959
  %5228 = call float @dx.op.binary.f32(i32 36, float %4961, float %5147)  ; FMin(a,b)
  %5229 = fsub fast float %5228, %4961
  %5230 = fmul fast float %5229, %5099
  %5231 = fadd fast float %5230, %4961
  %5232 = fsub fast float %5160, %4960
  %5233 = fmul fast float %5232, %5099
  %5234 = fadd fast float %5233, %4960
  br label %5235

; <label>:5235                                    ; preds = %5097, %5059, %4950, %4666
  %5236 = phi float [ %5208, %5097 ], [ %4951, %5059 ], [ %4951, %4950 ], [ %4260, %4666 ]
  %5237 = phi float [ %5209, %5097 ], [ %4952, %5059 ], [ %4952, %4950 ], [ %4261, %4666 ]
  %5238 = phi float [ %5210, %5097 ], [ %4953, %5059 ], [ %4953, %4950 ], [ %4262, %4666 ]
  %5239 = phi float [ %5199, %5097 ], [ %4954, %5059 ], [ %4954, %4950 ], [ %4275, %4666 ]
  %5240 = phi float [ %5200, %5097 ], [ %4955, %5059 ], [ %4955, %4950 ], [ %4276, %4666 ]
  %5241 = phi float [ %5201, %5097 ], [ %4956, %5059 ], [ %4956, %4950 ], [ %4277, %4666 ]
  %5242 = phi float [ %5225, %5097 ], [ %4957, %5059 ], [ %4957, %4950 ], [ %4224, %4666 ]
  %5243 = phi float [ %5226, %5097 ], [ %4958, %5059 ], [ %4958, %4950 ], [ %4225, %4666 ]
  %5244 = phi float [ %5227, %5097 ], [ %4959, %5059 ], [ %4959, %4950 ], [ %4226, %4666 ]
  %5245 = phi float [ %5234, %5097 ], [ %4960, %5059 ], [ %4960, %4950 ], [ %4263, %4666 ]
  %5246 = phi float [ %5231, %5097 ], [ %4961, %5059 ], [ %4961, %4950 ], [ %4236, %4666 ]
  %5247 = fcmp fast une float %4670, 0.000000e+00
  br i1 %5247, label %5248, label %5417

; <label>:5248                                    ; preds = %5235
  %5249 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 25, float %5249)  ; Rsqrt(value)
  %5251 = fmul fast float %199, %5250
  %5252 = fsub fast float -0.000000e+00, %5251
  %5253 = fmul fast float %200, %5250
  %5254 = fsub fast float -0.000000e+00, %5253
  %5255 = fmul fast float %201, %5250
  %5256 = fsub fast float -0.000000e+00, %5255
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5254, float %5256, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = fmul fast float %4670, 2.500000e+00
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %4670, 0x4013FFFFE0000000
  %5261 = fadd fast float %5260, 0xBFFFFFFFE0000000
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fmul fast float %4670, 0x4004000020000000
  %5264 = fadd fast float %5263, 0xBFF8000040000000
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fmul fast float %4242, 1.000000e+01
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fmul fast float %5267, 2.000000e+00
  %5269 = fsub fast float 3.000000e+00, %5268
  %5270 = fmul fast float %5267, %5267
  %5271 = fmul fast float %5270, %5269
  %5272 = fsub fast float 1.000000e+00, %5271
  %5273 = fsub fast float 0x3FE3333340000000, %5245
  %5274 = fmul fast float %5273, 0x400AAAAAA0000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fmul fast float %5272, %5275
  %5277 = fmul fast float %5239, 0x3FEA2B8620000000
  %5278 = fmul fast float %5240, 0x3FEA2B8620000000
  %5279 = fmul fast float %5241, 0x3FEA2B8620000000
  %5280 = fadd fast float %5277, 0x3FC81DFBA0000000
  %5281 = fmul fast float %5280, %5239
  %5282 = fadd fast float %5281, 0x3F910E6020000000
  %5283 = fadd fast float %5278, 0x3FC81DFBA0000000
  %5284 = fmul fast float %5283, %5240
  %5285 = fadd fast float %5284, 0x3F910E6020000000
  %5286 = fadd fast float %5279, 0x3FC81DFBA0000000
  %5287 = fmul fast float %5286, %5241
  %5288 = fadd fast float %5287, 0x3F910E6020000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5292 = fsub fast float %5289, %5239
  %5293 = fsub fast float %5290, %5240
  %5294 = fsub fast float %5291, %5241
  %5295 = fmul fast float %5292, %5259
  %5296 = fmul fast float %5295, %5276
  %5297 = fmul fast float %5293, %5259
  %5298 = fmul fast float %5297, %5276
  %5299 = fmul fast float %5294, %5259
  %5300 = fmul fast float %5299, %5276
  %5301 = fadd fast float %5296, %5239
  %5302 = fadd fast float %5298, %5240
  %5303 = fadd fast float %5300, %5241
  %5304 = fmul fast float %5246, %5246
  %5305 = fmul fast float %5304, %5304
  %5306 = fadd fast float %5262, 1.000000e+00
  %5307 = fsub fast float %5306, %5276
  %5308 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5309 = call float @dx.op.dot3.f32(i32 55, float %125, float %127, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = fsub fast float 1.000000e+00, %5305
  %5312 = call float @dx.op.binary.f32(i32 36, float %5308, float %5311)  ; FMin(a,b)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5312, float %5313)  ; FMax(a,b)
  %5315 = fadd fast float %5310, 0xBFE4CCCCC0000000
  %5316 = fmul fast float %5315, 0x4006DB6DA0000000
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = fsub fast float 3.000000e+00, %5318
  %5320 = bitcast float %5236 to i32
  %5321 = ashr i32 %5320, 1
  %5322 = add nsw i32 %5321, 532487669
  %5323 = bitcast i32 %5322 to float
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = bitcast float %5324 to i32
  %5326 = sub nsw i32 2129859010, %5325
  %5327 = bitcast i32 %5326 to float
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = bitcast float %5237 to i32
  %5330 = ashr i32 %5329, 1
  %5331 = add nsw i32 %5330, 532487669
  %5332 = bitcast i32 %5331 to float
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5336, 2.000000e+00
  %5338 = bitcast float %5238 to i32
  %5339 = ashr i32 %5338, 1
  %5340 = add nsw i32 %5339, 532487669
  %5341 = bitcast i32 %5340 to float
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, 2.000000e+00
  %5347 = fsub fast float 0x4002A9FBE0000000, %5328
  %5348 = fadd fast float %5328, 0x3FD54FDF00000000
  %5349 = bitcast float %5348 to i32
  %5350 = sub nsw i32 2129859010, %5349
  %5351 = bitcast i32 %5350 to float
  %5352 = fmul fast float %5351, %5347
  %5353 = fmul fast float %5352, %5352
  %5354 = fsub fast float 0x4002A9FBE0000000, %5337
  %5355 = fadd fast float %5337, 0x3FD54FDF00000000
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5359, %5359
  %5361 = fsub fast float 0x4002A9FBE0000000, %5346
  %5362 = fadd fast float %5346, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5353)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5360)  ; FMax(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5371 = fsub fast float 1.000000e+00, %5257
  %5372 = fadd fast float %5371, %5272
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = fsub fast float 1.000000e+00, %4651
  %5375 = fmul fast float %5314, %5374
  %5376 = fmul fast float %5317, %5317
  %5377 = fmul fast float %5376, %5375
  %5378 = fmul fast float %5377, %5319
  %5379 = fmul fast float %5374, 0xBFE99999A0000000
  %5380 = fmul fast float %5379, %5259
  %5381 = fmul fast float %5380, %5276
  %5382 = fadd fast float %5381, 1.000000e+00
  %5383 = fadd fast float %5245, -1.000000e+00
  %5384 = fmul fast float %5382, %5383
  %5385 = fadd fast float %5384, 1.000000e+00
  %5386 = fsub fast float %5368, %5236
  %5387 = fsub fast float %5369, %5237
  %5388 = fsub fast float %5370, %5238
  %5389 = fmul fast float %5378, %5386
  %5390 = fmul fast float %5378, %5387
  %5391 = fmul fast float %5378, %5388
  %5392 = fadd fast float %5389, %5236
  %5393 = fadd fast float %5390, %5237
  %5394 = fadd fast float %5391, %5238
  %5395 = fsub fast float %125, %5242
  %5396 = fsub fast float %127, %5243
  %5397 = fsub fast float %129, %5244
  %5398 = fmul fast float %5378, %5395
  %5399 = fmul fast float %5378, %5396
  %5400 = fmul fast float %5378, %5397
  %5401 = fadd fast float %5398, %5242
  %5402 = fadd fast float %5399, %5243
  %5403 = fadd fast float %5400, %5244
  %5404 = fmul fast float %5378, %5373
  %5405 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5406 = fsub fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5404, %5406
  %5408 = fadd fast float %5407, %5405
  %5409 = fsub fast float 1.000000e+00, %5246
  %5410 = fmul fast float %5378, %5409
  %5411 = fadd fast float %5410, %5246
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5403, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = call float @dx.op.unary.f32(i32 25, float %5412)  ; Rsqrt(value)
  %5414 = fmul fast float %5401, %5413
  %5415 = fmul fast float %5402, %5413
  %5416 = fmul fast float %5403, %5413
  br label %5417

; <label>:5417                                    ; preds = %5248, %5235
  %5418 = phi float [ %5392, %5248 ], [ %5236, %5235 ]
  %5419 = phi float [ %5393, %5248 ], [ %5237, %5235 ]
  %5420 = phi float [ %5394, %5248 ], [ %5238, %5235 ]
  %5421 = phi float [ %5301, %5248 ], [ %5239, %5235 ]
  %5422 = phi float [ %5302, %5248 ], [ %5240, %5235 ]
  %5423 = phi float [ %5303, %5248 ], [ %5241, %5235 ]
  %5424 = phi float [ %5414, %5248 ], [ %5242, %5235 ]
  %5425 = phi float [ %5415, %5248 ], [ %5243, %5235 ]
  %5426 = phi float [ %5416, %5248 ], [ %5244, %5235 ]
  %5427 = phi float [ %5408, %5248 ], [ %5245, %5235 ]
  %5428 = phi float [ %5411, %5248 ], [ %5246, %5235 ]
  %5429 = icmp eq i32 %60, 0
  br i1 %5429, label %5460, label %5430

; <label>:5430                                    ; preds = %5417
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 3
  %5434 = fmul fast float %5432, %116
  %5435 = fmul fast float %5433, %117
  %5436 = fmul fast float %5434, 1.024000e+03
  %5437 = fmul fast float %5435, 1.024000e+03
  %5438 = fadd fast float %5436, -5.120000e+02
  %5439 = fadd fast float %5437, -5.120000e+02
  %5440 = fmul fast float %5434, 0x4081BEDF00000000
  %5441 = fadd fast float %5440, 0xC071BEDF00000000
  %5442 = call float @dx.op.unary.f32(i32 22, float %5441)  ; Frc(value)
  %5443 = fmul fast float %5438, %5442
  %5444 = fadd fast float %5443, %5439
  %5445 = fmul fast float %5435, 0x4073BEBE20000000
  %5446 = fadd fast float %5445, 0xC063BEBE20000000
  %5447 = call float @dx.op.unary.f32(i32 22, float %5446)  ; Frc(value)
  %5448 = fmul fast float %5439, %5447
  %5449 = fadd fast float %5448, %5438
  %5450 = fmul fast float %5444, %5449
  %5451 = call float @dx.op.unary.f32(i32 22, float %5450)  ; Frc(value)
  %5452 = add i32 %325, 12
  %5453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5454 = extractvalue %dx.types.ResRet.i32 %5453, 0
  %5455 = and i32 %5454, 255
  %5456 = uitofp i32 %5455 to float
  %5457 = fmul fast float %5456, 0x3F70101020000000
  %5458 = fcmp fast olt float %5451, %5457
  br i1 %5458, label %5459, label %5460

; <label>:5459                                    ; preds = %5430
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5460

; <label>:5460                                    ; preds = %5459, %5430, %5417
  %5461 = fsub fast float -0.000000e+00, %201
  %5462 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 25, float %5462)  ; Rsqrt(value)
  %5464 = fmul fast float %5463, %199
  %5465 = fmul fast float %5463, %200
  %5466 = fmul fast float %5463, %201
  %5467 = fsub fast float -0.000000e+00, %5464
  %5468 = fsub fast float -0.000000e+00, %5465
  %5469 = fsub fast float -0.000000e+00, %5466
  %5470 = select i1 %271, float 0.000000e+00, float %5420
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fmul fast float %5473, 2.000000e+00
  %5475 = fmul fast float %5474, %5424
  %5476 = fmul fast float %5474, %5425
  %5477 = fmul fast float %5474, %5426
  %5478 = fsub fast float %5464, %5475
  %5479 = fsub fast float %5465, %5476
  %5480 = fsub fast float %5466, %5477
  %5481 = call float @dx.op.binary.f32(i32 36, float %5428, float 1.000000e+00)  ; FMin(a,b)
  %5482 = fsub fast float 1.000000e+00, %5428
  %5483 = bitcast float %5482 to i32
  %5484 = sub nsw i32 2129859010, %5483
  %5485 = bitcast i32 %5484 to float
  %5486 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fmul fast float %5486, 0x3FD20DD760000000
  %5488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %5489 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fcmp fast oeq float %5489, 0.000000e+00
  %5491 = fcmp fast oeq float %5488, 0.000000e+00
  %5492 = or i1 %5491, %5490
  br i1 %5492, label %5522, label %5493

; <label>:5493                                    ; preds = %5460
  %5494 = fsub fast float -0.000000e+00, %90
  %5495 = fsub fast float -0.000000e+00, %88
  %5496 = call float @dx.op.unary.f32(i32 24, float %5489)  ; Sqrt(value)
  %5497 = fdiv fast float %5496, %5488
  %5498 = fcmp fast ogt float %5497, 0x3FFB6F8900000000
  %5499 = select i1 %5498, float 0x3FFB6F8900000000, float %5497
  %5500 = fmul fast float %5499, 0x3FE8A23460000000
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = call float @dx.op.binary.f32(i32 35, float %5499, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5503 = fmul fast float %5501, %5488
  %5504 = fmul fast float %5502, 0x3FF279A740000000
  %5505 = fadd fast float %5504, -1.000000e+00
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %89, float %5494, float %5495, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = call float @dx.op.unary.f32(i32 25, float %5506)  ; Rsqrt(value)
  %5508 = fmul fast float %5507, %5494
  %5509 = fmul fast float %5507, %5495
  %5510 = fmul fast float %5507, %89
  %5511 = fmul fast float %5505, %5505
  %5512 = fsub fast float 1.000000e+00, %5511
  %5513 = fmul fast float %5502, 0x40005F8BE0000000
  %5514 = fsub fast float 0x400C5BF8A0000000, %5513
  %5515 = fdiv fast float %5503, %5514
  %5516 = fmul fast float %5515, 0x3FEE31C3C0000000
  %5517 = fmul fast float %5516, %5512
  %5518 = fmul fast float %5502, 0x3FDACB7480000000
  %5519 = fadd fast float %5518, 0xBFD7347680000000
  %5520 = fmul fast float %5519, %5515
  %5521 = fmul fast float %5520, %5512
  br label %5522

; <label>:5522                                    ; preds = %5493, %5460
  %5523 = phi float [ %5508, %5493 ], [ 0.000000e+00, %5460 ]
  %5524 = phi float [ %5509, %5493 ], [ 0.000000e+00, %5460 ]
  %5525 = phi float [ %5510, %5493 ], [ 0.000000e+00, %5460 ]
  %5526 = phi float [ %5517, %5493 ], [ 0.000000e+00, %5460 ]
  %5527 = phi float [ %5521, %5493 ], [ 0.000000e+00, %5460 ]
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = fmul fast float %5528, %5528
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = fmul fast float %5488, 0x3FD20DD760000000
  %5533 = fmul fast float %5531, %5527
  %5534 = fmul fast float %5526, 0x3FDF454380000000
  %5535 = fmul fast float %5534, %5528
  %5536 = fadd fast float %5535, %5532
  %5537 = fadd fast float %5536, %5533
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fmul fast float %5538, 0x3FDF454380000000
  %5540 = fmul fast float %5538, %5538
  %5541 = fmul fast float %5540, 0x3FEE471020000000
  %5542 = fadd fast float %5541, 0xBFD42F6020000000
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5526, float %5527, float 0x3FD20DD760000000, float %5539, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %5545 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fcmp fast oeq float %5545, 0.000000e+00
  %5547 = fcmp fast oeq float %5544, 0.000000e+00
  %5548 = or i1 %5547, %5546
  br i1 %5548, label %5578, label %5549

; <label>:5549                                    ; preds = %5522
  %5550 = fsub fast float -0.000000e+00, %86
  %5551 = fsub fast float -0.000000e+00, %84
  %5552 = call float @dx.op.unary.f32(i32 24, float %5545)  ; Sqrt(value)
  %5553 = fdiv fast float %5552, %5544
  %5554 = fcmp fast ogt float %5553, 0x3FFB6F8900000000
  %5555 = select i1 %5554, float 0x3FFB6F8900000000, float %5553
  %5556 = fmul fast float %5555, 0x3FE8A23460000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = call float @dx.op.binary.f32(i32 35, float %5555, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5559 = fmul fast float %5557, %5544
  %5560 = fmul fast float %5558, 0x3FF279A740000000
  %5561 = fadd fast float %5560, -1.000000e+00
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %85, float %5550, float %5551, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = call float @dx.op.unary.f32(i32 25, float %5562)  ; Rsqrt(value)
  %5564 = fmul fast float %5563, %5550
  %5565 = fmul fast float %5563, %5551
  %5566 = fmul fast float %5563, %85
  %5567 = fmul fast float %5561, %5561
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5558, 0x40005F8BE0000000
  %5570 = fsub fast float 0x400C5BF8A0000000, %5569
  %5571 = fdiv fast float %5559, %5570
  %5572 = fmul fast float %5571, 0x3FEE31C3C0000000
  %5573 = fmul fast float %5572, %5568
  %5574 = fmul fast float %5558, 0x3FDACB7480000000
  %5575 = fadd fast float %5574, 0xBFD7347680000000
  %5576 = fmul fast float %5575, %5571
  %5577 = fmul fast float %5576, %5568
  br label %5578

; <label>:5578                                    ; preds = %5549, %5522
  %5579 = phi float [ %5564, %5549 ], [ 0.000000e+00, %5522 ]
  %5580 = phi float [ %5565, %5549 ], [ 0.000000e+00, %5522 ]
  %5581 = phi float [ %5566, %5549 ], [ 0.000000e+00, %5522 ]
  %5582 = phi float [ %5573, %5549 ], [ 0.000000e+00, %5522 ]
  %5583 = phi float [ %5577, %5549 ], [ 0.000000e+00, %5522 ]
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, %5584
  %5586 = fmul fast float %5585, 0x3FEE471020000000
  %5587 = fadd fast float %5586, 0xBFD42F6020000000
  %5588 = fmul fast float %5544, 0x3FD20DD760000000
  %5589 = fmul fast float %5587, %5583
  %5590 = fmul fast float %5582, 0x3FDF454380000000
  %5591 = fmul fast float %5590, %5584
  %5592 = fadd fast float %5591, %5588
  %5593 = fadd fast float %5592, %5589
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fmul fast float %5594, 0x3FDF454380000000
  %5596 = fmul fast float %5594, %5594
  %5597 = fmul fast float %5596, 0x3FEE471020000000
  %5598 = fadd fast float %5597, 0xBFD42F6020000000
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5582, float %5583, float 0x3FD20DD760000000, float %5595, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5601 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fcmp fast oeq float %5601, 0.000000e+00
  %5603 = fcmp fast oeq float %5600, 0.000000e+00
  %5604 = or i1 %5603, %5602
  br i1 %5604, label %5634, label %5605

; <label>:5605                                    ; preds = %5578
  %5606 = fsub fast float -0.000000e+00, %82
  %5607 = fsub fast float -0.000000e+00, %80
  %5608 = call float @dx.op.unary.f32(i32 24, float %5601)  ; Sqrt(value)
  %5609 = fdiv fast float %5608, %5600
  %5610 = fcmp fast ogt float %5609, 0x3FFB6F8900000000
  %5611 = select i1 %5610, float 0x3FFB6F8900000000, float %5609
  %5612 = fmul fast float %5611, 0x3FE8A23460000000
  %5613 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5611, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5615 = fmul fast float %5613, %5600
  %5616 = fmul fast float %5614, 0x3FF279A740000000
  %5617 = fadd fast float %5616, -1.000000e+00
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %81, float %5606, float %5607, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = call float @dx.op.unary.f32(i32 25, float %5618)  ; Rsqrt(value)
  %5620 = fmul fast float %5619, %5606
  %5621 = fmul fast float %5619, %5607
  %5622 = fmul fast float %5619, %81
  %5623 = fmul fast float %5617, %5617
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fmul fast float %5614, 0x40005F8BE0000000
  %5626 = fsub fast float 0x400C5BF8A0000000, %5625
  %5627 = fdiv fast float %5615, %5626
  %5628 = fmul fast float %5627, 0x3FEE31C3C0000000
  %5629 = fmul fast float %5628, %5624
  %5630 = fmul fast float %5614, 0x3FDACB7480000000
  %5631 = fadd fast float %5630, 0xBFD7347680000000
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5632, %5624
  br label %5634

; <label>:5634                                    ; preds = %5605, %5578
  %5635 = phi float [ %5620, %5605 ], [ 0.000000e+00, %5578 ]
  %5636 = phi float [ %5621, %5605 ], [ 0.000000e+00, %5578 ]
  %5637 = phi float [ %5622, %5605 ], [ 0.000000e+00, %5578 ]
  %5638 = phi float [ %5629, %5605 ], [ 0.000000e+00, %5578 ]
  %5639 = phi float [ %5633, %5605 ], [ 0.000000e+00, %5578 ]
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5636, float %5637, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = fmul fast float %5640, %5640
  %5642 = fmul fast float %5641, 0x3FEE471020000000
  %5643 = fadd fast float %5642, 0xBFD42F6020000000
  %5644 = fmul fast float %5600, 0x3FD20DD760000000
  %5645 = fmul fast float %5643, %5639
  %5646 = fmul fast float %5638, 0x3FDF454380000000
  %5647 = fmul fast float %5646, %5640
  %5648 = fadd fast float %5647, %5644
  %5649 = fadd fast float %5648, %5645
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5636, float %5637, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = fmul fast float %5650, 0x3FDF454380000000
  %5652 = fmul fast float %5650, %5650
  %5653 = fmul fast float %5652, 0x3FEE471020000000
  %5654 = fadd fast float %5653, 0xBFD42F6020000000
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5638, float %5639, float 0x3FD20DD760000000, float %5651, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.binary.f32(i32 35, float %5537, float 0.000000e+00)  ; FMax(a,b)
  %5657 = call float @dx.op.binary.f32(i32 35, float %5593, float 0.000000e+00)  ; FMax(a,b)
  %5658 = call float @dx.op.binary.f32(i32 35, float %5649, float 0.000000e+00)  ; FMax(a,b)
  %5659 = call float @dx.op.binary.f32(i32 35, float %5543, float 0.000000e+00)  ; FMax(a,b)
  %5660 = call float @dx.op.binary.f32(i32 35, float %5599, float 0.000000e+00)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 35, float %5655, float 0.000000e+00)  ; FMax(a,b)
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = call float @dx.op.binary.f32(i32 36, float %5421, float %5663)  ; FMin(a,b)
  %5665 = fsub fast float 1.000000e+00, %5481
  %5666 = fmul fast float %5664, %5665
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5422, float %5663)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5665
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = call float @dx.op.binary.f32(i32 36, float %5423, float %5663)  ; FMin(a,b)
  %5678 = fmul fast float %5677, %5665
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = bitcast float %5679 to i32
  %5681 = sub nsw i32 2129859010, %5680
  %5682 = bitcast i32 %5681 to float
  %5683 = fmul fast float %5656, %5481
  %5684 = fmul fast float %5683, %5670
  %5685 = fmul fast float %5657, %5481
  %5686 = fmul fast float %5685, %5676
  %5687 = fmul fast float %5658, %5481
  %5688 = fmul fast float %5687, %5682
  %5689 = call float @dx.op.binary.f32(i32 36, float %5418, float %5663)  ; FMin(a,b)
  %5690 = fmul fast float %5689, %5665
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = call float @dx.op.binary.f32(i32 36, float %5419, float %5663)  ; FMin(a,b)
  %5696 = fmul fast float %5695, %5665
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = call float @dx.op.binary.f32(i32 36, float %5470, float %5663)  ; FMin(a,b)
  %5702 = fmul fast float %5701, %5665
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = bitcast float %5703 to i32
  %5705 = sub nsw i32 2129859010, %5704
  %5706 = bitcast i32 %5705 to float
  %5707 = fmul fast float %5659, %5481
  %5708 = fmul fast float %5707, %5694
  %5709 = fmul fast float %5660, %5481
  %5710 = fmul fast float %5709, %5700
  %5711 = fmul fast float %5661, %5481
  %5712 = fmul fast float %5711, %5706
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5686, float %5688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = select i1 %271, float 0.000000e+00, float %5684
  %5715 = select i1 %271, float %5713, float %5686
  %5716 = select i1 %271, float 0.000000e+00, float %5688
  %5717 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5710, float %5712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = select i1 %271, float 0.000000e+00, float %5708
  %5719 = select i1 %271, float %5717, float %5710
  %5720 = select i1 %271, float 0.000000e+00, float %5712
  %5721 = fmul fast float %5486, 0x4071A18460000000
  %5722 = fadd fast float %5721, 0x3F0FFB4800000000
  %5723 = call float @dx.op.unary.f32(i32 23, float %5722)  ; Log(value)
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = and i32 %5725, 8388608
  %5727 = icmp eq i32 %5726, 0
  br i1 %5727, label %5728, label %5768

; <label>:5728                                    ; preds = %5634
  %5729 = fadd fast float %5723, 0x4006B851E0000000
  %5730 = add i32 %325, 12
  %5731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5730, i32 undef)  ; BufferLoad(srv,index,wot)
  %5732 = extractvalue %dx.types.ResRet.i32 %5731, 0
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5735 = lshr i32 %5732, 16
  %5736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5735)  ; LegacyF16ToF32(value)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5740 = fsub fast float %107, %5739
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = fmul fast float %5740, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5744 = fsub fast float %5737, %5729
  %5745 = fcmp fast ogt float %5744, 0.000000e+00
  %5746 = fcmp fast olt float %5744, 0.000000e+00
  %5747 = zext i1 %5745 to i32
  %5748 = zext i1 %5746 to i32
  %5749 = sub nsw i32 %5747, %5748
  %5750 = sitofp i32 %5749 to float
  %5751 = call float @dx.op.unary.f32(i32 6, float %5744)  ; FAbs(value)
  %5752 = fsub fast float -0.000000e+00, %5736
  %5753 = fsub fast float %5752, %5734
  %5754 = fadd fast float %5753, %5751
  %5755 = call float @dx.op.binary.f32(i32 35, float %5754, float 0.000000e+00)  ; FMax(a,b)
  %5756 = fmul fast float %5750, %5755
  %5757 = fadd fast float %5723, %5756
  %5758 = call float @dx.op.unary.f32(i32 21, float %5757)  ; Exp(value)
  %5759 = fmul fast float %5758, 0x3F50624DE0000000
  %5760 = fcmp fast oeq float %5487, 0.000000e+00
  %5761 = fdiv fast float 0x400C5BF880000000, %5486
  %5762 = fmul fast float %5759, %5761
  %5763 = select i1 %5760, float 1.000000e+00, float %5762
  %5764 = call float @dx.op.binary.f32(i32 35, float %5763, float 1.000000e+00)  ; FMax(a,b)
  %5765 = fadd fast float %5764, -1.000000e+00
  %5766 = fmul fast float %5765, %5743
  %5767 = fadd fast float %5766, 1.000000e+00
  br label %5768

; <label>:5768                                    ; preds = %5728, %5634
  %5769 = phi float [ %5767, %5728 ], [ 1.000000e+00, %5634 ]
  %5770 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5771 = fmul fast float %5770, %5714
  %5772 = fmul fast float %5770, %5715
  %5773 = fmul fast float %5770, %5716
  %5774 = fmul fast float %5472, 9.843750e-01
  %5775 = fmul fast float %5427, 9.843750e-01
  %5776 = fadd fast float %5774, 7.812500e-03
  %5777 = fadd fast float %5775, 7.812500e-03
  %5778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5776, float %5777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5779 = extractvalue %dx.types.ResRet.f32 %5778, 2
  %5780 = extractvalue %dx.types.ResRet.f32 %5778, 3
  %5781 = fmul fast float %5779, %5418
  %5782 = fmul fast float %5779, %5419
  %5783 = fmul fast float %5779, %5470
  %5784 = fadd fast float %5781, %5780
  %5785 = fadd fast float %5782, %5780
  %5786 = fadd fast float %5783, %5780
  %5787 = fcmp fast ogt float %4237, 0.000000e+00
  br i1 %5787, label %5788, label %5814

; <label>:5788                                    ; preds = %5768
  %5789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4237, float %5472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5793 = fadd fast float %5790, -5.000000e-01
  %5794 = fadd fast float %5791, -5.000000e-01
  %5795 = fadd fast float %5792, -5.000000e-01
  %5796 = fsub fast float 1.000000e+00, %5418
  %5797 = fsub fast float 1.000000e+00, %5419
  %5798 = fsub fast float 1.000000e+00, %5470
  %5799 = fmul fast float %5418, 4.000000e+00
  %5800 = fmul fast float %5799, %5796
  %5801 = fmul fast float %5800, %5793
  %5802 = fmul fast float %5419, 4.000000e+00
  %5803 = fmul fast float %5802, %5797
  %5804 = fmul fast float %5803, %5794
  %5805 = fmul fast float %5470, 4.000000e+00
  %5806 = fmul fast float %5805, %5798
  %5807 = fmul fast float %5806, %5795
  %5808 = fadd fast float %5801, %5784
  %5809 = fadd fast float %5804, %5785
  %5810 = fadd fast float %5807, %5786
  %5811 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5812 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5813 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  br label %5814

; <label>:5814                                    ; preds = %5788, %5768
  %5815 = phi float [ %5811, %5788 ], [ %5784, %5768 ]
  %5816 = phi float [ %5812, %5788 ], [ %5785, %5768 ]
  %5817 = phi float [ %5813, %5788 ], [ %5786, %5768 ]
  %5818 = call float @dx.op.binary.f32(i32 35, float %5816, float %5817)  ; FMax(a,b)
  %5819 = call float @dx.op.binary.f32(i32 35, float %5815, float %5818)  ; FMax(a,b)
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = fmul fast float %199, %199
  %5822 = fmul fast float %200, %200
  %5823 = fadd fast float %5822, %5821
  %5824 = fmul fast float %201, %201
  %5825 = fadd fast float %5823, %5824
  %5826 = call float @dx.op.unary.f32(i32 24, float %5825)  ; Sqrt(value)
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5829 = fsub fast float %5826, %5828
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5831 = fmul fast float %5829, %5830
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5834 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5835 = and i32 %5725, 4194304
  %5836 = icmp ne i32 %5835, 0
  %5837 = icmp ne i32 %5726, 0
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5841 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5842 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.CBufRet.f32 %5843, 3
  %5848 = select i1 %5836, float %5839, float %5844
  %5849 = select i1 %5836, float %5840, float %5845
  %5850 = select i1 %5836, float %5841, float %5846
  %5851 = select i1 %5836, float %5842, float %5847
  %5852 = select i1 %5837, float 0.000000e+00, float %5851
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5856 = select i1 %5836, float %5854, float %5855
  %5857 = select i1 %5837, float 0.000000e+00, float %5856
  %5858 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5859 = extractvalue %dx.types.CBufRet.f32 %5853, 3
  %5860 = select i1 %5836, float %5858, float %5859
  %5861 = select i1 %5837, float 0.000000e+00, float %5860
  %5862 = fmul fast float %5832, %65
  %5863 = fmul fast float %5862, %5833
  %5864 = fmul fast float %5863, %5857
  %5865 = fmul fast float %5862, %5834
  %5866 = fmul fast float %5865, %5861
  %5867 = fadd fast float %5866, 1.000000e+00
  %5868 = fmul fast float %5820, %5771
  %5869 = fmul fast float %5868, %5867
  %5870 = fmul fast float %5820, %5772
  %5871 = fmul fast float %5870, %5867
  %5872 = fmul fast float %5820, %5773
  %5873 = fmul fast float %5872, %5867
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = fcmp fast ogt float %5874, 0x3E7FF19E20000000
  %5876 = fdiv fast float 1.000000e+00, %5874
  %5877 = select i1 %5875, float %5876, float 0.000000e+00
  %5878 = fmul fast float %5877, %5421
  %5879 = fmul fast float %5877, %5422
  %5880 = fmul fast float %5877, %5423
  %5881 = fadd fast float %5878, -1.000000e+00
  %5882 = fadd fast float %5879, -1.000000e+00
  %5883 = fadd fast float %5880, -1.000000e+00
  %5884 = fmul fast float %5881, 5.000000e-01
  %5885 = fmul fast float %5882, 5.000000e-01
  %5886 = fmul fast float %5883, 5.000000e-01
  %5887 = fadd fast float %5884, 1.000000e+00
  %5888 = fadd fast float %5885, 1.000000e+00
  %5889 = fadd fast float %5886, 1.000000e+00
  %5890 = fadd fast float %5864, %4238
  %5891 = fsub fast float %5848, %5887
  %5892 = fsub fast float %5849, %5888
  %5893 = fsub fast float %5850, %5889
  %5894 = fmul fast float %5891, %5852
  %5895 = fmul fast float %5892, %5852
  %5896 = fmul fast float %5893, %5852
  %5897 = fadd fast float %5894, %5887
  %5898 = fadd fast float %5895, %5888
  %5899 = fadd fast float %5896, %5889
  %5900 = fmul fast float %5815, %5718
  %5901 = fmul fast float %5816, %5719
  %5902 = fmul fast float %5817, %5720
  %5903 = fsub fast float 1.000000e+00, %5472
  %5904 = bitcast float %5903 to i32
  %5905 = sitofp i32 %5904 to float
  %5906 = fmul fast float %5905, 5.000000e+00
  %5907 = fadd fast float %5906, 0xC1EFBF8940000000
  %5908 = fptosi float %5907 to i32
  %5909 = bitcast i32 %5908 to float
  %5910 = fmul fast float %5890, %5909
  %5911 = fmul fast float %5868, %5910
  %5912 = fmul fast float %5911, %5897
  %5913 = fmul fast float %5870, %5910
  %5914 = fmul fast float %5913, %5898
  %5915 = fmul fast float %5872, %5910
  %5916 = fmul fast float %5915, %5899
  %5917 = fmul fast float %5869, %4234
  %5918 = fmul fast float %5871, %4234
  %5919 = fmul fast float %5873, %4234
  %5920 = fadd fast float %5900, %4230
  %5921 = fadd fast float %5920, %5912
  %5922 = fmul fast float %5921, %4234
  %5923 = fadd fast float %5901, %4231
  %5924 = fadd fast float %5923, %5914
  %5925 = fmul fast float %5924, %4234
  %5926 = fadd fast float %5902, %4232
  %5927 = fadd fast float %5926, %5916
  %5928 = fmul fast float %5927, %4234
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 3
  %5931 = fcmp fast oeq float %5930, 0.000000e+00
  br i1 %5931, label %7016, label %5932

; <label>:5932                                    ; preds = %5814
  %5933 = extractvalue %dx.types.CBufRet.f32 %5929, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5929, 2
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5937, float %5938, float %5939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = select i1 %271, float %5941, float %5937
  %5945 = select i1 %271, float %5943, float %5938
  %5946 = select i1 %271, float %5942, float %5939
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5949 = fmul fast float %5948, %125
  %5950 = fmul fast float %5948, %127
  %5951 = fmul fast float %5948, %129
  %5952 = fadd fast float %5949, %199
  %5953 = fadd fast float %5950, %200
  %5954 = fadd fast float %5951, %201
  %5955 = fcmp fast olt float %5930, 0.000000e+00
  br i1 %5955, label %6595, label %5956

; <label>:5956                                    ; preds = %5932
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = extractvalue %dx.types.CBufRet.f32 %5957, 1
  %5960 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %5961 = extractvalue %dx.types.CBufRet.f32 %5957, 3
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %5972 = fmul fast float %5958, %5952
  %5973 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %5959, float %5972)  ; FMad(a,b,c)
  %5974 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %5960, float %5973)  ; FMad(a,b,c)
  %5975 = fadd fast float %5974, %5961
  %5976 = fmul fast float %5963, %5952
  %5977 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %5964, float %5976)  ; FMad(a,b,c)
  %5978 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %5965, float %5977)  ; FMad(a,b,c)
  %5979 = fadd fast float %5978, %5966
  %5980 = fmul fast float %5968, %5952
  %5981 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %5969, float %5980)  ; FMad(a,b,c)
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %5970, float %5981)  ; FMad(a,b,c)
  %5983 = fadd fast float %5982, %5971
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = fcmp fast une float %5985, 0.000000e+00
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.CBufRet.f32 %5987, 3
  %5991 = fmul fast float %5990, %5975
  %5992 = fmul fast float %5990, %5979
  %5993 = fadd fast float %5991, %5988
  %5994 = fadd fast float %5992, %5989
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.CBufRet.f32 %5995, 3
  %5999 = fmul fast float %5998, %5975
  %6000 = fmul fast float %5998, %5979
  %6001 = fadd fast float %5999, %5996
  %6002 = fadd fast float %6000, %5997
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 1
  %6005 = fsub fast float %6004, %5983
  %6006 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6007 = fmul fast float %6005, %6006
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  br i1 %5986, label %6070, label %6010

; <label>:6010                                    ; preds = %5956
  %6011 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6014 = fadd fast float %6013, %6011
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  br i1 %6015, label %6016, label %6040

; <label>:6016                                    ; preds = %6010
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = fsub fast float %6001, %6018
  %6021 = fsub fast float %6002, %6019
  %6022 = fcmp fast olt float %6020, 0.000000e+00
  %6023 = fcmp fast olt float %6021, 0.000000e+00
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.CBufRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6028 = extractvalue %dx.types.CBufRet.f32 %6024, 3
  %6029 = select i1 %6022, float %6025, float %6027
  %6030 = select i1 %6023, float %6026, float %6028
  %6031 = fmul fast float %6029, %6020
  %6032 = fmul fast float %6030, %6021
  %6033 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6034 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6035 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %6036 = call float @dx.op.binary.f32(i32 35, float %6033, float %6034)  ; FMax(a,b)
  %6037 = fsub fast float %6035, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = fmul fast float %6038, %6009
  br label %6040

; <label>:6040                                    ; preds = %6016, %6010
  %6041 = phi float [ %6039, %6016 ], [ 0.000000e+00, %6010 ]
  %6042 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %6043 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6044 = fadd fast float %6043, %6042
  %6045 = fcmp fast ogt float %6044, 0.000000e+00
  br i1 %6045, label %6046, label %6070

; <label>:6046                                    ; preds = %6040
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = fsub fast float %5993, %6048
  %6051 = fsub fast float %5994, %6049
  %6052 = fcmp fast olt float %6050, 0.000000e+00
  %6053 = fcmp fast olt float %6051, 0.000000e+00
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 1
  %6057 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6058 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6059 = select i1 %6052, float %6055, float %6057
  %6060 = select i1 %6053, float %6056, float %6058
  %6061 = fmul fast float %6059, %6050
  %6062 = fmul fast float %6060, %6051
  %6063 = call float @dx.op.unary.f32(i32 6, float %6061)  ; FAbs(value)
  %6064 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6065 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %6066 = call float @dx.op.binary.f32(i32 35, float %6063, float %6064)  ; FMax(a,b)
  %6067 = fsub fast float %6065, %6066
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = fmul fast float %6068, %6009
  br label %6070

; <label>:6070                                    ; preds = %6046, %6040, %5956
  %6071 = phi float [ 0.000000e+00, %5956 ], [ %6069, %6046 ], [ 0.000000e+00, %6040 ]
  %6072 = phi float [ 0.000000e+00, %5956 ], [ %6041, %6046 ], [ %6041, %6040 ]
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 1
  %6075 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = fsub fast float %5975, %6077
  %6080 = fsub fast float %5979, %6078
  %6081 = fcmp fast olt float %6079, 0.000000e+00
  %6082 = fcmp fast olt float %6080, 0.000000e+00
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6088 = select i1 %6081, float %6084, float %6086
  %6089 = select i1 %6082, float %6085, float %6087
  %6090 = fmul fast float %6088, %6079
  %6091 = fmul fast float %6089, %6080
  %6092 = call float @dx.op.unary.f32(i32 6, float %6090)  ; FAbs(value)
  %6093 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6094 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %6095 = call float @dx.op.binary.f32(i32 35, float %6092, float %6093)  ; FMax(a,b)
  %6096 = fsub fast float %6094, %6095
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6098 = call float @dx.op.binary.f32(i32 36, float %6097, float %6075)  ; FMin(a,b)
  %6099 = fmul fast float %6098, %6009
  %6100 = fsub fast float %6071, %6099
  %6101 = fsub fast float %6072, %6071
  %6102 = fsub fast float %6101, %6099
  %6103 = call float @dx.op.binary.f32(i32 35, float %6071, float %6072)  ; FMax(a,b)
  %6104 = call float @dx.op.binary.f32(i32 35, float %6099, float %6103)  ; FMax(a,b)
  %6105 = fcmp fast olt float %6104, 1.000000e+00
  br i1 %6105, label %6106, label %6504, !dx.controlflow.hints !99

; <label>:6106                                    ; preds = %6070
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = fcmp fast une float %6108, 0.000000e+00
  br i1 %6109, label %6110, label %6504, !dx.controlflow.hints !100

; <label>:6110                                    ; preds = %6106
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6115 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6123 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6124 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6125 = extractvalue %dx.types.CBufRet.f32 %6121, 3
  %6126 = fmul fast float %6112, %5952
  %6127 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6113, float %6126)  ; FMad(a,b,c)
  %6128 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6114, float %6127)  ; FMad(a,b,c)
  %6129 = fadd fast float %6128, %6115
  %6130 = fmul fast float %6117, %5952
  %6131 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6118, float %6130)  ; FMad(a,b,c)
  %6132 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6119, float %6131)  ; FMad(a,b,c)
  %6133 = fadd fast float %6132, %6120
  %6134 = fmul fast float %6122, %5952
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6123, float %6134)  ; FMad(a,b,c)
  %6136 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6124, float %6135)  ; FMad(a,b,c)
  %6137 = fadd fast float %6136, %6125
  %6138 = fcmp fast oge float %6129, 1.000000e+00
  %6139 = fcmp fast oge float %6133, 1.000000e+00
  %6140 = or i1 %6138, %6139
  %6141 = fcmp fast olt float %6129, 0.000000e+00
  %6142 = fcmp fast olt float %6133, 0.000000e+00
  %6143 = or i1 %6141, %6142
  %6144 = or i1 %6140, %6143
  br i1 %6144, label %6504, label %6145, !dx.controlflow.hints !101

; <label>:6145                                    ; preds = %6110
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.i32 %6150, 2
  %6152 = uitofp i32 %6151 to float
  %6153 = extractvalue %dx.types.CBufRet.i32 %6150, 3
  %6154 = uitofp i32 %6153 to float
  %6155 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6156 = fmul fast float %6155, 2.000000e+00
  %6157 = fsub fast float %6129, %6147
  %6158 = fsub fast float %6133, %6148
  %6159 = fmul fast float %6156, %6157
  %6160 = fmul fast float %6156, %6158
  %6161 = fdiv fast float 1.000000e+00, %5935
  %6162 = fmul fast float %6160, %6161
  %6163 = call float @dx.op.unary.f32(i32 6, float %6162)  ; FAbs(value)
  %6164 = fmul fast float %6149, %5954
  %6165 = fmul fast float %6164, %6156
  %6166 = call float @dx.op.unary.f32(i32 6, float %6165)  ; FAbs(value)
  %6167 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6168 = call float @dx.op.binary.f32(i32 35, float %6166, float %6163)  ; FMax(a,b)
  %6169 = call float @dx.op.binary.f32(i32 35, float %6167, float %6168)  ; FMax(a,b)
  %6170 = fmul fast float %6169, 2.000000e+00
  %6171 = call float @dx.op.unary.f32(i32 23, float %6170)  ; Log(value)
  %6172 = call float @dx.op.binary.f32(i32 35, float %6171, float %6152)  ; FMax(a,b)
  %6173 = call float @dx.op.unary.f32(i32 22, float %6172)  ; Frc(value)
  %6174 = fadd fast float %6173, 0xBFEA666660000000
  %6175 = fmul fast float %6174, 8.000000e+00
  %6176 = call float @dx.op.unary.f32(i32 7, float %6175)  ; Saturate(value)
  %6177 = call float @dx.op.unary.f32(i32 27, float %6172)  ; Round_ni(value)
  %6178 = fadd fast float %6177, %6176
  %6179 = call float @dx.op.binary.f32(i32 36, float %6178, float %6154)  ; FMin(a,b)
  %6180 = call float @dx.op.unary.f32(i32 27, float %6179)  ; Round_ni(value)
  %6181 = fsub fast float -0.000000e+00, %6180
  %6182 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6183 = fmul fast float %6182, %6156
  %6184 = fmul fast float %6183, %6129
  %6185 = fmul fast float %6183, %6133
  %6186 = fmul fast float %6184, 2.500000e-01
  %6187 = fmul fast float %6185, 2.500000e-01
  %6188 = fadd fast float %6186, 5.000000e-01
  %6189 = fadd fast float %6187, 5.000000e-01
  %6190 = fsub fast float %6154, %6152
  %6191 = fptoui float %6190 to i32
  %6192 = add i32 %6191, 320
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6192)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = fcmp fast une float %6179, %6154
  %6197 = fsub fast float %6129, %6194
  %6198 = fsub fast float %6133, %6195
  %6199 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6200 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6201 = fmul fast float %6199, %6183
  %6202 = fmul fast float %6200, %6183
  %6203 = fcmp fast olt float %6201, 1.000000e+00
  %6204 = fcmp fast olt float %6202, 1.000000e+00
  %6205 = and i1 %6203, %6204
  %6206 = or i1 %6196, %6205
  br i1 %6206, label %6207, label %6504, !dx.controlflow.hints !102

; <label>:6207                                    ; preds = %6145
  %6208 = fmul fast float %6185, 5.000000e-01
  %6209 = fmul fast float %6184, 5.000000e-01
  %6210 = fadd fast float %6208, 5.000000e-01
  %6211 = fadd fast float %6209, 5.000000e-01
  %6212 = sitofp i32 %6151 to float
  %6213 = fsub fast float %6179, %6212
  %6214 = call float @dx.op.unary.f32(i32 27, float %6213)  ; Round_ni(value)
  %6215 = call float @dx.op.unary.f32(i32 22, float %6179)  ; Frc(value)
  %6216 = call float @dx.op.unary.f32(i32 22, float %6211)  ; Frc(value)
  %6217 = call float @dx.op.unary.f32(i32 22, float %6210)  ; Frc(value)
  %6218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6216, float %6217, float %6214, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.ResRet.f32 %6218, 2
  %6222 = extractvalue %dx.types.ResRet.f32 %6218, 3
  %6223 = fcmp fast ogt float %6215, 0.000000e+00
  br i1 %6223, label %6224, label %6245, !dx.controlflow.hints !103

; <label>:6224                                    ; preds = %6207
  %6225 = fadd fast float %6214, 1.000000e+00
  %6226 = call float @dx.op.unary.f32(i32 22, float %6188)  ; Frc(value)
  %6227 = call float @dx.op.unary.f32(i32 22, float %6189)  ; Frc(value)
  %6228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6226, float %6227, float %6225, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6229 = extractvalue %dx.types.ResRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.ResRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.ResRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.ResRet.f32 %6228, 3
  %6233 = fsub fast float %6229, %6219
  %6234 = fsub fast float %6230, %6220
  %6235 = fsub fast float %6231, %6221
  %6236 = fsub fast float %6232, %6222
  %6237 = fmul fast float %6233, %6215
  %6238 = fmul fast float %6234, %6215
  %6239 = fmul fast float %6235, %6215
  %6240 = fmul fast float %6236, %6215
  %6241 = fadd fast float %6237, %6219
  %6242 = fadd fast float %6238, %6220
  %6243 = fadd fast float %6239, %6221
  %6244 = fadd fast float %6240, %6222
  br label %6245

; <label>:6245                                    ; preds = %6224, %6207
  %6246 = phi float [ %6241, %6224 ], [ %6219, %6207 ]
  %6247 = phi float [ %6242, %6224 ], [ %6220, %6207 ]
  %6248 = phi float [ %6243, %6224 ], [ %6221, %6207 ]
  %6249 = phi float [ %6244, %6224 ], [ %6222, %6207 ]
  %6250 = fadd fast float %6246, -5.000000e-01
  %6251 = fadd fast float %6248, -5.000000e-01
  %6252 = fmul fast float %6250, 0xBFD5555560000000
  %6253 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6251, float %6252)  ; FMad(a,b,c)
  %6254 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6247, float 0.000000e+00)  ; FMad(a,b,c)
  %6255 = fadd fast float %6254, %6249
  %6256 = fmul fast float %6250, -7.500000e-01
  %6257 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6251, float %6256)  ; FMad(a,b,c)
  %6258 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6247, float 0.000000e+00)  ; FMad(a,b,c)
  %6259 = fadd fast float %6258, %6249
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = fsub fast float %6263, %6253
  %6268 = fsub fast float %6264, %6255
  %6269 = fsub fast float %6265, %6257
  %6270 = fsub fast float %6266, %6259
  %6271 = fmul fast float %6267, %6261
  %6272 = fmul fast float %6268, %6261
  %6273 = fmul fast float %6269, %6261
  %6274 = fmul fast float %6270, %6261
  %6275 = fadd fast float %6271, %6253
  %6276 = fadd fast float %6272, %6255
  %6277 = fadd fast float %6273, %6257
  %6278 = fadd fast float %6274, %6259
  %6279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.i32 %6279, 0
  %6281 = and i32 %6280, 536870911
  %6282 = uitofp i32 %6281 to float
  %6283 = fmul fast float %6282, %6129
  %6284 = fmul fast float %6282, %6133
  %6285 = fptoui float %6283 to i32
  %6286 = fptoui float %6284 to i32
  %6287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6288 = extractvalue %dx.types.ResRet.i32 %6287, 0
  %6289 = and i32 %6288, 31
  %6290 = lshr i32 %6285, %6289
  %6291 = lshr i32 %6286, %6289
  %6292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6293 = extractvalue %dx.types.ResRet.i32 %6292, 0
  %6294 = and i32 %6293, 31
  %6295 = shl i32 1, %6294
  %6296 = call i32 @dx.op.binary.i32(i32 40, i32 %6295, i32 4)  ; UMin(a,b)
  %6297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.i32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.i32 %6297, 1
  %6300 = icmp eq i32 %6296, 0
  br i1 %6300, label %6342, label %6301

; <label>:6301                                    ; preds = %6245
  br label %6302

; <label>:6302                                    ; preds = %6330, %6301
  %6303 = phi i32 [ %6333, %6330 ], [ 0, %6301 ]
  %6304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6305 = extractvalue %dx.types.ResRet.i32 %6304, 0
  %6306 = lshr i32 %6305, 16
  %6307 = and i32 %6306, 31
  %6308 = shl i32 %6291, %6307
  %6309 = add i32 %6308, %6290
  %6310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.i32 %6310, 0
  %6312 = and i32 %6311, 31
  %6313 = shl i32 %6309, %6312
  %6314 = add i32 %6313, %6303
  %6315 = shl i32 %6314, 2
  %6316 = add i32 %6315, 32
  %6317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6316, i32 undef)  ; BufferLoad(srv,index,wot)
  %6318 = extractvalue %dx.types.ResRet.i32 %6317, 0
  %6319 = icmp slt i32 %6318, 0
  %6320 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6303
  %6321 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6303
  %6322 = bitcast float* %6320 to i32*
  %6323 = bitcast float* %6321 to i32*
  br i1 %6319, label %6324, label %6330

; <label>:6324                                    ; preds = %6302
  %6325 = and i32 %6318, 1073741823
  %6326 = add nuw nsw i32 %6325, 20
  %6327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6326, i32 undef)  ; BufferLoad(srv,index,wot)
  %6328 = extractvalue %dx.types.ResRet.i32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.i32 %6327, 1
  br label %6330

; <label>:6330                                    ; preds = %6324, %6302
  %6331 = phi i32 [ %6328, %6324 ], [ %6298, %6302 ]
  %6332 = phi i32 [ %6329, %6324 ], [ %6299, %6302 ]
  store i32 %6331, i32* %6322, align 4
  store i32 %6332, i32* %6323, align 4
  %6333 = add nuw i32 %6303, 1
  %6334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.i32 %6334, 2
  %6336 = icmp eq i32 %6335, 0
  %6337 = icmp ugt i32 %6318, -1073741825
  %6338 = and i1 %6337, %6336
  %6339 = icmp ult i32 %6333, %6296
  %6340 = and i1 %6338, %6339
  br i1 %6340, label %6302, label %6341

; <label>:6341                                    ; preds = %6330
  br label %6342

; <label>:6342                                    ; preds = %6341, %6245
  %6343 = phi i32 [ 0, %6245 ], [ %6333, %6341 ]
  %6344 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6345 = fptoui float %6344 to i32
  %6346 = icmp eq i32 %6345, 0
  br i1 %6346, label %6398, label %6347

; <label>:6347                                    ; preds = %6342
  br label %6348

; <label>:6348                                    ; preds = %6393, %6347
  %6349 = phi i32 [ %6394, %6393 ], [ %6343, %6347 ]
  %6350 = phi i32 [ %6395, %6393 ], [ 0, %6347 ]
  %6351 = lshr i32 %6350, 2
  %6352 = and i32 %6350, 3
  %6353 = add nuw nsw i32 %6351, 83
  %6354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6353)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.i32 %6354, 0
  %6356 = extractvalue %dx.types.CBufRet.i32 %6354, 1
  %6357 = extractvalue %dx.types.CBufRet.i32 %6354, 2
  %6358 = extractvalue %dx.types.CBufRet.i32 %6354, 3
  %6359 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6355, i32* %6359, align 4
  %6360 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6356, i32* %6360, align 4
  %6361 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6357, i32* %6361, align 4
  %6362 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6358, i32* %6362, align 4
  %6363 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6352
  %6364 = load i32, i32* %6363, align 4, !tbaa !104, !noalias !108
  %6365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6366 = extractvalue %dx.types.ResRet.i32 %6365, 0
  %6367 = lshr i32 %6366, 16
  %6368 = and i32 %6367, 31
  %6369 = shl i32 %6291, %6368
  %6370 = add i32 %6369, %6290
  %6371 = shl i32 %6370, 2
  %6372 = add i32 %6371, %6364
  %6373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6372, i32 undef)  ; BufferLoad(srv,index,wot)
  %6374 = extractvalue %dx.types.ResRet.i32 %6373, 0
  %6375 = icmp eq i32 %6374, 0
  br i1 %6375, label %6393, label %6376

; <label>:6376                                    ; preds = %6348
  %6377 = icmp slt i32 %6374, 0
  %6378 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6349
  %6379 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6349
  %6380 = bitcast float* %6378 to i32*
  %6381 = bitcast float* %6379 to i32*
  br i1 %6377, label %6382, label %6389

; <label>:6382                                    ; preds = %6376
  %6383 = and i32 %6374, 1073741823
  %6384 = add i32 %6364, 20
  %6385 = add i32 %6384, %6383
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6385, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = extractvalue %dx.types.ResRet.i32 %6386, 1
  br label %6389

; <label>:6389                                    ; preds = %6382, %6376
  %6390 = phi i32 [ %6387, %6382 ], [ %6298, %6376 ]
  %6391 = phi i32 [ %6388, %6382 ], [ %6299, %6376 ]
  store i32 %6390, i32* %6380, align 4
  store i32 %6391, i32* %6381, align 4
  %6392 = add i32 %6349, 1
  br label %6393

; <label>:6393                                    ; preds = %6389, %6348
  %6394 = phi i32 [ %6349, %6348 ], [ %6392, %6389 ]
  %6395 = add nuw i32 %6350, 1
  %6396 = icmp eq i32 %6395, %6345
  br i1 %6396, label %6397, label %6348

; <label>:6397                                    ; preds = %6393
  br label %6398

; <label>:6398                                    ; preds = %6397, %6342
  %6399 = phi i32 [ %6343, %6342 ], [ %6394, %6397 ]
  %6400 = icmp eq i32 %6399, 1
  %6401 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6402 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6400, label %6403, label %6406

; <label>:6403                                    ; preds = %6398
  %6404 = load float, float* %6401, align 4
  %6405 = load float, float* %6402, align 4
  br label %6433

; <label>:6406                                    ; preds = %6398
  %6407 = load float, float* %6401, align 4
  %6408 = load float, float* %6402, align 4
  %6409 = fdiv fast float 1.000000e+00, %6408
  %6410 = fsub fast float %6407, %6409
  %6411 = icmp ugt i32 %6399, 1
  br i1 %6411, label %6412, label %6428

; <label>:6412                                    ; preds = %6406
  br label %6413

; <label>:6413                                    ; preds = %6413, %6412
  %6414 = phi float [ %6423, %6413 ], [ %6410, %6412 ]
  %6415 = phi float [ %6424, %6413 ], [ %6407, %6412 ]
  %6416 = phi i32 [ %6425, %6413 ], [ 1, %6412 ]
  %6417 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6416
  %6418 = load float, float* %6417, align 4
  %6419 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6416
  %6420 = load float, float* %6419, align 4
  %6421 = fdiv fast float 1.000000e+00, %6420
  %6422 = fsub fast float %6418, %6421
  %6423 = call float @dx.op.binary.f32(i32 36, float %6414, float %6422)  ; FMin(a,b)
  %6424 = call float @dx.op.binary.f32(i32 35, float %6415, float %6418)  ; FMax(a,b)
  %6425 = add nuw i32 %6416, 1
  %6426 = icmp eq i32 %6425, %6399
  br i1 %6426, label %6427, label %6413

; <label>:6427                                    ; preds = %6413
  br label %6428

; <label>:6428                                    ; preds = %6427, %6406
  %6429 = phi float [ %6410, %6406 ], [ %6423, %6427 ]
  %6430 = phi float [ %6407, %6406 ], [ %6424, %6427 ]
  %6431 = fsub fast float %6430, %6429
  %6432 = fdiv fast float 1.000000e+00, %6431
  br label %6433

; <label>:6433                                    ; preds = %6428, %6403
  %6434 = phi float [ %6404, %6403 ], [ %6430, %6428 ]
  %6435 = phi float [ %6405, %6403 ], [ %6432, %6428 ]
  %6436 = fadd fast float %6137, %6434
  %6437 = fmul fast float %6436, %6435
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, 2.000000e+00
  %6440 = fsub fast float 1.000000e+00, %6439
  %6441 = fmul fast float %6275, %6275
  %6442 = fsub fast float %6276, %6441
  %6443 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6442)  ; FMax(a,b)
  %6444 = fdiv fast float 1.000000e+00, %6443
  %6445 = fmul fast float %6276, %6275
  %6446 = fsub fast float %6277, %6445
  %6447 = fsub fast float %6440, %6275
  %6448 = fmul fast float %6440, %6440
  %6449 = fsub fast float %6448, %6276
  %6450 = fmul fast float %6444, %6446
  %6451 = fmul fast float %6450, %6447
  %6452 = fsub fast float %6449, %6451
  %6453 = fmul fast float %6276, %6276
  %6454 = fsub fast float %6278, %6453
  %6455 = fmul fast float %6446, %6446
  %6456 = fmul fast float %6455, %6444
  %6457 = fsub fast float %6454, %6456
  %6458 = fdiv fast float %6452, %6457
  %6459 = fmul fast float %6458, %6446
  %6460 = fsub fast float %6447, %6459
  %6461 = fmul fast float %6460, %6444
  %6462 = fmul fast float %6461, %6275
  %6463 = fsub fast float 1.000000e+00, %6462
  %6464 = fmul fast float %6458, %6276
  %6465 = fsub fast float %6463, %6464
  %6466 = fmul fast float %6461, %6461
  %6467 = fmul fast float %6458, 4.000000e+00
  %6468 = fmul fast float %6467, %6465
  %6469 = fsub fast float %6466, %6468
  %6470 = call float @dx.op.unary.f32(i32 24, float %6469)  ; Sqrt(value)
  %6471 = fcmp fast oge float %6461, 0.000000e+00
  %6472 = fsub fast float -0.000000e+00, %6470
  %6473 = select i1 %6471, float %6472, float %6470
  %6474 = fsub fast float %6473, %6461
  %6475 = fdiv fast float %6474, %6458
  %6476 = fdiv fast float %6465, %6474
  %6477 = fmul fast float %6475, 5.000000e-01
  %6478 = fmul fast float %6476, 2.000000e+00
  %6479 = select i1 %6471, float %6477, float %6478
  %6480 = select i1 %6471, float %6478, float %6477
  %6481 = call float @dx.op.binary.f32(i32 35, float %6479, float %6480)  ; FMax(a,b)
  %6482 = call float @dx.op.binary.f32(i32 36, float %6479, float %6480)  ; FMin(a,b)
  %6483 = fcmp fast ogt float %6440, %6481
  %6484 = fsub fast float %6440, %6482
  %6485 = fsub fast float %6440, %6481
  %6486 = fsub fast float %6481, %6482
  %6487 = select i1 %6483, float %6485, float %6486
  %6488 = fmul float %6484, %6487
  %6489 = select i1 %6483, float %6482, float %6440
  %6490 = fcmp fast ogt float %6440, %6482
  %6491 = fmul fast float %6489, %6481
  %6492 = fadd fast float %6489, %6481
  %6493 = fmul fast float %6492, %6275
  %6494 = fadd fast float %6491, %6276
  %6495 = fsub fast float %6494, %6493
  %6496 = fdiv fast float %6495, %6488
  %6497 = select i1 %6490, float %6496, float 0.000000e+00
  %6498 = fsub fast float 1.000000e+00, %6497
  %6499 = select i1 %6483, float %6498, float %6497
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6502 = fmul fast float %6501, %6500
  %6503 = fsub fast float 1.000000e+00, %6502
  br label %6504

; <label>:6504                                    ; preds = %6433, %6145, %6110, %6106, %6070
  %6505 = phi float [ 1.000000e+00, %6070 ], [ %6503, %6433 ], [ 1.000000e+00, %6110 ], [ 1.000000e+00, %6145 ], [ 1.000000e+00, %6106 ]
  %6506 = fcmp fast ogt float %6102, 0.000000e+00
  br i1 %6506, label %6507, label %6515, !dx.controlflow.hints !117

; <label>:6507                                    ; preds = %6504
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6510 = fadd fast float %6509, %5983
  %6511 = call float @dx.op.binary.f32(i32 35, float %6510, float 0.000000e+00)  ; FMax(a,b)
  %6512 = fadd fast float %6511, 0x3F10000000000000
  %6513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6001, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6514 = extractvalue %dx.types.ResRet.f32 %6513, 0
  br label %6515

; <label>:6515                                    ; preds = %6507, %6504
  %6516 = phi float [ %6514, %6507 ], [ 1.000000e+00, %6504 ]
  %6517 = fcmp fast ogt float %6100, 0.000000e+00
  br i1 %6517, label %6518, label %6526, !dx.controlflow.hints !118

; <label>:6518                                    ; preds = %6515
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6521 = fadd fast float %6520, %5983
  %6522 = call float @dx.op.binary.f32(i32 35, float %6521, float 0.000000e+00)  ; FMax(a,b)
  %6523 = fadd fast float %6522, 0x3F10000000000000
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5993, float %5994, float undef, float undef, i32 0, i32 0, i32 undef, float %6523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  br label %6526

; <label>:6526                                    ; preds = %6518, %6515
  %6527 = phi float [ %6525, %6518 ], [ 1.000000e+00, %6515 ]
  %6528 = fcmp fast ogt float %6099, 0.000000e+00
  br i1 %6528, label %6529, label %6541, !dx.controlflow.hints !119

; <label>:6529                                    ; preds = %6526
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = fadd fast float %6531, %5983
  %6533 = call float @dx.op.binary.f32(i32 35, float %6532, float 0.000000e+00)  ; FMax(a,b)
  %6534 = fadd fast float %6533, 0x3F10000000000000
  br i1 %5986, label %6535, label %6538, !dx.controlflow.hints !120

; <label>:6535                                    ; preds = %6529
  %6536 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5975, float %5979, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  br label %6541

; <label>:6538                                    ; preds = %6529
  %6539 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5975, float %5979, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6540 = extractvalue %dx.types.ResRet.f32 %6539, 0
  br label %6541

; <label>:6541                                    ; preds = %6538, %6535, %6526
  %6542 = phi float [ %6537, %6535 ], [ %6540, %6538 ], [ 1.000000e+00, %6526 ]
  %6543 = fsub fast float %6516, %6505
  %6544 = fmul fast float %6543, %6072
  %6545 = fadd fast float %6544, %6505
  %6546 = fsub fast float %6527, %6545
  %6547 = fmul fast float %6546, %6071
  %6548 = fadd fast float %6547, %6545
  %6549 = fsub fast float %6542, %6548
  %6550 = fmul fast float %6549, %6099
  %6551 = fadd fast float %6550, %6548
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6554 = fcmp fast ogt float %6553, 0.000000e+00
  br i1 %6554, label %6555, label %6595, !dx.controlflow.hints !121

; <label>:6555                                    ; preds = %6541
  %6556 = fcmp fast ugt float %6553, 0.000000e+00
  br i1 %6556, label %6557, label %6592

; <label>:6557                                    ; preds = %6555
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6562 = extractvalue %dx.types.CBufRet.f32 %6558, 3
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = extractvalue %dx.types.CBufRet.f32 %6570, 1
  %6573 = extractvalue %dx.types.CBufRet.f32 %6570, 2
  %6574 = fadd fast float %6571, %5952
  %6575 = fadd fast float %6572, %5953
  %6576 = fadd fast float %6573, %5954
  %6577 = fmul fast float %6574, %6559
  %6578 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6575, float %6577)  ; FMad(a,b,c)
  %6579 = call float @dx.op.tertiary.f32(i32 46, float %6561, float %6576, float %6578)  ; FMad(a,b,c)
  %6580 = fadd fast float %6579, %6562
  %6581 = fmul fast float %6574, %6564
  %6582 = call float @dx.op.tertiary.f32(i32 46, float %6565, float %6575, float %6581)  ; FMad(a,b,c)
  %6583 = call float @dx.op.tertiary.f32(i32 46, float %6566, float %6576, float %6582)  ; FMad(a,b,c)
  %6584 = fadd fast float %6583, %6567
  %6585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6580, float %6584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 0
  %6587 = fmul fast float %6586, %6569
  %6588 = fadd fast float %6587, %6568
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = fmul fast float %6589, %6553
  %6591 = fsub fast float 1.000000e+00, %6590
  br label %6592

; <label>:6592                                    ; preds = %6557, %6555
  %6593 = phi float [ %6591, %6557 ], [ 1.000000e+00, %6555 ]
  %6594 = fmul fast float %6593, %6551
  br label %6595

; <label>:6595                                    ; preds = %6592, %6541, %5932
  %6596 = phi float [ 1.000000e+00, %5932 ], [ %6594, %6592 ], [ %6551, %6541 ]
  %6597 = call float @dx.op.binary.f32(i32 36, float %6596, float %6596)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6596, float %6597)  ; FMin(a,b)
  %6599 = fcmp fast ogt float %6598, 0.000000e+00
  br i1 %6599, label %6600, label %6760, !dx.controlflow.hints !122

; <label>:6600                                    ; preds = %6595
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.CBufRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.CBufRet.f32 %6601, 2
  %6605 = extractvalue %dx.types.CBufRet.f32 %6601, 3
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6610 = extractvalue %dx.types.CBufRet.f32 %6606, 3
  %6611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.CBufRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.CBufRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.CBufRet.f32 %6611, 3
  %6616 = fmul fast float %6602, %5952
  %6617 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6603, float %6616)  ; FMad(a,b,c)
  %6618 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6604, float %6617)  ; FMad(a,b,c)
  %6619 = fadd fast float %6618, %6605
  %6620 = fmul fast float %6607, %5952
  %6621 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6608, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6609, float %6621)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6610
  %6624 = fmul fast float %6612, %5952
  %6625 = call float @dx.op.tertiary.f32(i32 46, float %5953, float %6613, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %5954, float %6614, float %6625)  ; FMad(a,b,c)
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.CBufRet.f32 %6627, 1
  %6630 = extractvalue %dx.types.CBufRet.f32 %6627, 3
  %6631 = fmul fast float %6630, %6619
  %6632 = fmul fast float %6630, %6623
  %6633 = fadd fast float %6631, %6628
  %6634 = fadd fast float %6632, %6629
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 1
  %6638 = fsub fast float %6633, %6636
  %6639 = fsub fast float %6634, %6637
  %6640 = fcmp fast olt float %6638, 0.000000e+00
  %6641 = fcmp fast olt float %6639, 0.000000e+00
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.CBufRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6646 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6647 = select i1 %6640, float %6643, float %6645
  %6648 = select i1 %6641, float %6644, float %6646
  %6649 = fmul fast float %6647, %6638
  %6650 = fmul fast float %6648, %6639
  %6651 = call float @dx.op.unary.f32(i32 6, float %6649)  ; FAbs(value)
  %6652 = call float @dx.op.unary.f32(i32 6, float %6650)  ; FAbs(value)
  %6653 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %6654 = call float @dx.op.binary.f32(i32 35, float %6651, float %6652)  ; FMax(a,b)
  %6655 = fsub fast float %6653, %6654
  %6656 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6657 = fcmp fast ogt float %6656, 0.000000e+00
  br i1 %6657, label %6658, label %6699, !dx.controlflow.hints !123

; <label>:6658                                    ; preds = %6600
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6633, float %6634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6661 = fcmp fast ogt float %6660, 0.000000e+00
  br i1 %6661, label %6662, label %6694

; <label>:6662                                    ; preds = %6658
  %6663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6633, float %6634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.ResRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.ResRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6663, 3
  %6668 = fsub fast float 1.000000e+00, %6615
  %6669 = fsub fast float %6668, %6626
  %6670 = fmul fast float %6669, 0x400921FB60000000
  %6671 = fadd fast float %6670, 0x3FF921FB60000000
  %6672 = call float @dx.op.unary.f32(i32 13, float %6671)  ; Sin(value)
  %6673 = fadd fast float %6672, -1.000000e+00
  %6674 = fmul fast float %6673, 0x3FD45F3060000000
  %6675 = fmul fast float %6669, 0x401921FB60000000
  %6676 = fadd fast float %6675, 0x400921FB60000000
  %6677 = call float @dx.op.unary.f32(i32 13, float %6676)  ; Sin(value)
  %6678 = fadd fast float %6677, 0x3E7777A5C0000000
  %6679 = fmul fast float %6678, 0x3FC45F3060000000
  %6680 = fmul fast float %6669, 0x4022D97C80000000
  %6681 = fadd fast float %6680, 0x4012D97C80000000
  %6682 = call float @dx.op.unary.f32(i32 13, float %6681)  ; Sin(value)
  %6683 = fadd fast float %6682, 1.000000e+00
  %6684 = fmul fast float %6683, 0x3FBB2995E0000000
  %6685 = fmul fast float %6669, 0x402921FB60000000
  %6686 = fadd fast float %6685, 0x401921FB60000000
  %6687 = call float @dx.op.unary.f32(i32 13, float %6686)  ; Sin(value)
  %6688 = fadd fast float %6687, 0xBE8777A5C0000000
  %6689 = fmul fast float %6688, 0x3FB45F3060000000
  %6690 = call float @dx.op.dot4.f32(i32 56, float %6664, float %6665, float %6666, float %6667, float %6674, float %6679, float %6684, float %6689)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6691 = fmul fast float %6690, 0xBFF7154760000000
  %6692 = call float @dx.op.unary.f32(i32 21, float %6691)  ; Exp(value)
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  br label %6694

; <label>:6694                                    ; preds = %6662, %6658
  %6695 = phi float [ %6693, %6662 ], [ 1.000000e+00, %6658 ]
  %6696 = fadd fast float %6695, -1.000000e+00
  %6697 = fmul fast float %6696, %6656
  %6698 = fadd fast float %6697, 1.000000e+00
  br label %6699

; <label>:6699                                    ; preds = %6694, %6600
  %6700 = phi float [ %6698, %6694 ], [ 1.000000e+00, %6600 ]
  %6701 = fmul fast float %6700, %6596
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.CBufRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.CBufRet.f32 %6702, 2
  %6706 = fadd fast float %6703, %199
  %6707 = fadd fast float %6704, %200
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6710 = fsub fast float -0.000000e+00, %6706
  %6711 = fsub fast float -0.000000e+00, %6707
  %6712 = fsub fast float %5461, %6705
  %6713 = fadd fast float %6712, %6709
  %6714 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6710, float %6711, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5933, float %5934, float %5935)  ; Dot3(ax,ay,az,bx,by,bz)
  %6716 = fdiv fast float 1.000000e+00, %6715
  %6717 = fmul fast float %6716, %6714
  %6718 = fmul fast float %5933, %6717
  %6719 = fmul fast float %5934, %6717
  %6720 = fadd fast float %6718, %6706
  %6721 = fadd fast float %6719, %6707
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = fsub fast float %6720, %6723
  %6726 = fsub fast float %6721, %6724
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6730 = fmul fast float %6725, %6728
  %6731 = fmul fast float %6726, %6729
  %6732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.i32 %6732, 3
  %6734 = icmp eq i32 %6733, 0
  br i1 %6734, label %6740, label %6735

; <label>:6735                                    ; preds = %6699
  %6736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6730, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6737 = extractvalue %dx.types.ResRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.ResRet.f32 %6736, 1
  %6739 = extractvalue %dx.types.ResRet.f32 %6736, 2
  br label %6745

; <label>:6740                                    ; preds = %6699
  %6741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6730, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6742 = extractvalue %dx.types.ResRet.f32 %6741, 0
  %6743 = extractvalue %dx.types.ResRet.f32 %6741, 1
  %6744 = extractvalue %dx.types.ResRet.f32 %6741, 2
  br label %6745

; <label>:6745                                    ; preds = %6740, %6735
  %6746 = phi float [ %6737, %6735 ], [ %6742, %6740 ]
  %6747 = phi float [ %6738, %6735 ], [ %6743, %6740 ]
  %6748 = phi float [ %6739, %6735 ], [ %6744, %6740 ]
  %6749 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6750 = fmul fast float %6749, %6746
  %6751 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6752 = fsub fast float %6717, %6751
  %6753 = fsub fast float %6752, %6750
  %6754 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6753)  ; FMax(a,b)
  %6755 = fmul fast float %6754, %6747
  %6756 = call float @dx.op.binary.f32(i32 36, float %6748, float %6755)  ; FMin(a,b)
  %6757 = fmul fast float %6756, 0xBFF7154760000000
  %6758 = call float @dx.op.unary.f32(i32 21, float %6757)  ; Exp(value)
  %6759 = fmul fast float %6701, %6758
  br label %6760

; <label>:6760                                    ; preds = %6745, %6595
  %6761 = phi float [ %6759, %6745 ], [ %6596, %6595 ]
  %6762 = call float @dx.op.binary.f32(i32 36, float %6761, float %6761)  ; FMin(a,b)
  %6763 = call float @dx.op.binary.f32(i32 36, float %6761, float %6762)  ; FMin(a,b)
  %6764 = fcmp fast ogt float %6763, 0.000000e+00
  br i1 %6764, label %6765, label %7016, !dx.controlflow.hints !124

; <label>:6765                                    ; preds = %6760
  %6766 = fmul fast float %6761, %5944
  %6767 = fmul fast float %6761, %5945
  %6768 = fmul fast float %6761, %5946
  %6769 = fsub fast float %201, %4638
  %6770 = fcmp fast ogt float %6769, 0.000000e+00
  %6771 = fmul fast float %5933, 5.120000e+02
  %6772 = fmul fast float %5934, 5.120000e+02
  %6773 = fmul fast float %5935, 5.120000e+02
  %6774 = fadd fast float %6773, %201
  %6775 = fsub fast float %4638, %6774
  %6776 = fmul fast float %6775, 2.000000e+00
  %6777 = fadd fast float %6776, %6774
  %6778 = select i1 %6770, float %6777, float %6774
  %6779 = fsub fast float %6778, %201
  %6780 = call float @dx.op.dot3.f32(i32 55, float %6771, float %6772, float %6779, float %6771, float %6772, float %6779)  ; Dot3(ax,ay,az,bx,by,bz)
  %6781 = call float @dx.op.unary.f32(i32 25, float %6780)  ; Rsqrt(value)
  %6782 = fmul fast float %6781, %6771
  %6783 = fmul fast float %6781, %6772
  %6784 = fmul fast float %6781, %6779
  %6785 = fsub fast float %4638, %201
  %6786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6787 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6782, float %6783, float %6784)  ; Dot3(ax,ay,az,bx,by,bz)
  %6788 = fdiv fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6788, %6786
  %6790 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6769, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6791 = fcmp fast ogt float %6790, 0.000000e+00
  %6792 = fcmp fast olt float %6790, 0.000000e+00
  %6793 = zext i1 %6791 to i32
  %6794 = zext i1 %6792 to i32
  %6795 = sub nsw i32 %6793, %6794
  %6796 = sitofp i32 %6795 to float
  %6797 = fsub fast float %6778, %4638
  %6798 = call float @dx.op.dot3.f32(i32 55, float %6771, float %6772, float %6797, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6799 = fcmp fast ogt float %6798, 0.000000e+00
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = zext i1 %6799 to i32
  %6802 = zext i1 %6800 to i32
  %6803 = sub nsw i32 %6801, %6802
  %6804 = sitofp i32 %6803 to float
  %6805 = fcmp fast une float %6796, %6804
  br i1 %6805, label %6806, label %6816

; <label>:6806                                    ; preds = %6765
  %6807 = fmul fast float %6789, %6784
  %6808 = fmul fast float %6789, %6783
  %6809 = fmul fast float %6789, %6782
  %6810 = fmul fast float %6809, %6809
  %6811 = fmul fast float %6808, %6808
  %6812 = fadd fast float %6810, %6811
  %6813 = fmul fast float %6807, %6807
  %6814 = fadd fast float %6812, %6813
  %6815 = call float @dx.op.unary.f32(i32 24, float %6814)  ; Sqrt(value)
  br label %6826

; <label>:6816                                    ; preds = %6765
  %6817 = icmp slt i32 %6795, 0
  br i1 %6817, label %6818, label %6826

; <label>:6818                                    ; preds = %6816
  %6819 = fsub fast float %201, %6778
  %6820 = fmul fast float %6771, %6771
  %6821 = fmul fast float %6772, %6772
  %6822 = fadd fast float %6820, %6821
  %6823 = fmul fast float %6819, %6819
  %6824 = fadd fast float %6822, %6823
  %6825 = call float @dx.op.unary.f32(i32 24, float %6824)  ; Sqrt(value)
  br label %6826

; <label>:6826                                    ; preds = %6818, %6816, %6806
  %6827 = phi float [ %6815, %6806 ], [ %6825, %6818 ], [ 0.000000e+00, %6816 ]
  %6828 = fsub fast float -0.000000e+00, %6827
  %6829 = select i1 %6770, float -0.000000e+00, float %6828
  %6830 = fmul fast float %4639, 0x3FF7154760000000
  %6831 = fmul fast float %6830, %6829
  %6832 = fmul fast float %4640, 0x3FF7154760000000
  %6833 = fmul fast float %6832, %6829
  %6834 = fmul fast float %4641, 0x3FF7154760000000
  %6835 = fmul fast float %6834, %6829
  %6836 = call float @dx.op.unary.f32(i32 21, float %6831)  ; Exp(value)
  %6837 = call float @dx.op.unary.f32(i32 21, float %6833)  ; Exp(value)
  %6838 = call float @dx.op.unary.f32(i32 21, float %6835)  ; Exp(value)
  %6839 = call float @dx.op.unary.f32(i32 7, float %6836)  ; Saturate(value)
  %6840 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6841 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6842 = fmul fast float %6766, %6839
  %6843 = fmul fast float %6767, %6840
  %6844 = fmul fast float %6768, %6841
  %6845 = fsub fast float %5933, %5464
  %6846 = fsub fast float %5934, %5465
  %6847 = fsub fast float %5935, %5466
  %6848 = call float @dx.op.dot3.f32(i32 55, float %6845, float %6846, float %6847, float %6845, float %6846, float %6847)  ; Dot3(ax,ay,az,bx,by,bz)
  %6849 = call float @dx.op.unary.f32(i32 25, float %6848)  ; Rsqrt(value)
  %6850 = fmul fast float %6849, %6845
  %6851 = fmul fast float %6849, %6846
  %6852 = fmul fast float %6849, %6847
  %6853 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5934, float %5935, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %6850, float %6851, float %6852)  ; Dot3(ax,ay,az,bx,by,bz)
  %6855 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6856 = fmul fast float %6855, %6855
  %6857 = fmul fast float %6856, %5485
  %6858 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6859 = fmul fast float %6858, %6855
  %6860 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %6850, float %6851, float %6852)  ; Dot3(ax,ay,az,bx,by,bz)
  %6861 = fmul fast float %6860, %6860
  %6862 = call float @dx.op.unary.f32(i32 6, float %6853)  ; FAbs(value)
  %6863 = fsub fast float 1.000000e+00, %5427
  %6864 = call float @dx.op.binary.f32(i32 35, float %6863, float 0x3F847AE140000000)  ; FMax(a,b)
  %6865 = fmul fast float %6864, %6864
  %6866 = fmul fast float %6865, %6865
  %6867 = fsub fast float 1.000000e+00, %6866
  %6868 = fmul fast float %5472, %5472
  %6869 = fmul fast float %6868, %6867
  %6870 = fadd fast float %6869, %6866
  %6871 = bitcast float %6870 to i32
  %6872 = ashr i32 %6871, 1
  %6873 = add nsw i32 %6872, 532487669
  %6874 = bitcast i32 %6873 to float
  %6875 = fadd fast float %6874, %5472
  %6876 = fmul fast float %6866, %6861
  %6877 = fsub fast float 1.000000e+00, %6861
  %6878 = fadd fast float %6877, %6876
  %6879 = fmul fast float %6862, %6862
  %6880 = fmul fast float %6879, %6867
  %6881 = fadd fast float %6880, %6866
  %6882 = bitcast float %6881 to i32
  %6883 = ashr i32 %6882, 1
  %6884 = add nsw i32 %6883, 532487669
  %6885 = bitcast i32 %6884 to float
  %6886 = fadd fast float %6885, %6862
  %6887 = fmul fast float %6878, %6878
  %6888 = fmul fast float %6887, %6875
  %6889 = fmul fast float %6888, %6886
  %6890 = fdiv fast float 0x3FF0A00000000000, %6889
  %6891 = fmul fast float %6890, %6866
  %6892 = call float @dx.op.unary.f32(i32 6, float %6854)  ; FAbs(value)
  %6893 = fsub fast float 1.000000e+00, %6892
  %6894 = bitcast float %6893 to i32
  %6895 = sitofp i32 %6894 to float
  %6896 = fmul fast float %6895, 5.000000e+00
  %6897 = fadd fast float %6896, 0xC1EFBF8940000000
  %6898 = fptosi float %6897 to i32
  %6899 = bitcast i32 %6898 to float
  %6900 = fsub fast float 1.000000e+00, %5418
  %6901 = fsub fast float 1.000000e+00, %5419
  %6902 = fsub fast float 1.000000e+00, %5470
  %6903 = fmul fast float %6899, %6900
  %6904 = fmul fast float %6899, %6901
  %6905 = fmul fast float %6899, %6902
  %6906 = fadd fast float %6903, %5418
  %6907 = fadd fast float %6904, %5419
  %6908 = fadd fast float %6905, %5470
  br i1 %5787, label %6909, label %6932

; <label>:6909                                    ; preds = %6826
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4237, float %6892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6914 = fadd fast float %6911, -5.000000e-01
  %6915 = fadd fast float %6912, -5.000000e-01
  %6916 = fadd fast float %6913, -5.000000e-01
  %6917 = fmul fast float %5418, 4.000000e+00
  %6918 = fmul fast float %6917, %6900
  %6919 = fmul fast float %6918, %6914
  %6920 = fmul fast float %5419, 4.000000e+00
  %6921 = fmul fast float %6920, %6901
  %6922 = fmul fast float %6921, %6915
  %6923 = fmul fast float %5470, 4.000000e+00
  %6924 = fmul fast float %6923, %6902
  %6925 = fmul fast float %6924, %6916
  %6926 = fadd fast float %6919, %6906
  %6927 = fadd fast float %6922, %6907
  %6928 = fadd fast float %6925, %6908
  %6929 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6931 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  br label %6932

; <label>:6932                                    ; preds = %6909, %6826
  %6933 = phi float [ %6929, %6909 ], [ %6906, %6826 ]
  %6934 = phi float [ %6930, %6909 ], [ %6907, %6826 ]
  %6935 = phi float [ %6931, %6909 ], [ %6908, %6826 ]
  %6936 = fmul fast float %6853, 9.843750e-01
  %6937 = fadd fast float %6936, 7.812500e-03
  %6938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6937, float %5777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6939 = extractvalue %dx.types.ResRet.f32 %6938, 2
  %6940 = extractvalue %dx.types.ResRet.f32 %6938, 3
  %6941 = fmul fast float %6939, %5418
  %6942 = fmul fast float %6939, %5419
  %6943 = fmul fast float %6939, %5470
  %6944 = fadd fast float %6941, %6940
  %6945 = fadd fast float %6942, %6940
  %6946 = fadd fast float %6943, %6940
  br i1 %5787, label %6947, label %6970

; <label>:6947                                    ; preds = %6932
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4237, float %6853, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = fadd fast float %6949, -5.000000e-01
  %6953 = fadd fast float %6950, -5.000000e-01
  %6954 = fadd fast float %6951, -5.000000e-01
  %6955 = fmul fast float %5418, 4.000000e+00
  %6956 = fmul fast float %6955, %6900
  %6957 = fmul fast float %6956, %6952
  %6958 = fmul fast float %5419, 4.000000e+00
  %6959 = fmul fast float %6958, %6901
  %6960 = fmul fast float %6959, %6953
  %6961 = fmul fast float %5470, 4.000000e+00
  %6962 = fmul fast float %6961, %6902
  %6963 = fmul fast float %6962, %6954
  %6964 = fadd fast float %6957, %6944
  %6965 = fadd fast float %6960, %6945
  %6966 = fadd fast float %6963, %6946
  %6967 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  br label %6970

; <label>:6970                                    ; preds = %6947, %6932
  %6971 = phi float [ %6967, %6947 ], [ %6944, %6932 ]
  %6972 = phi float [ %6968, %6947 ], [ %6945, %6932 ]
  %6973 = phi float [ %6969, %6947 ], [ %6946, %6932 ]
  %6974 = call float @dx.op.binary.f32(i32 35, float %6972, float %6973)  ; FMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6971, float %6974)  ; FMax(a,b)
  %6976 = fsub fast float 1.000000e+00, %6975
  %6977 = fmul fast float %6933, %6891
  %6978 = fmul fast float %6934, %6891
  %6979 = fmul fast float %6935, %6891
  %6980 = fsub fast float 1.000000e+00, %6854
  %6981 = bitcast float %6980 to i32
  %6982 = sitofp i32 %6981 to float
  %6983 = fmul fast float %6982, 5.000000e+00
  %6984 = fadd fast float %6983, 0xC1EFBF8940000000
  %6985 = fptosi float %6984 to i32
  %6986 = bitcast i32 %6985 to float
  %6987 = fmul fast float %6986, %4238
  %6988 = fmul fast float %6976, %6987
  %6989 = fmul fast float %6988, %5887
  %6990 = fmul fast float %6988, %5888
  %6991 = fmul fast float %6988, %5889
  %6992 = fadd fast float %6989, %6977
  %6993 = fadd fast float %6990, %6978
  %6994 = fadd fast float %6991, %6979
  %6995 = fmul fast float %6859, %6842
  %6996 = fmul fast float %6995, %6976
  %6997 = fmul fast float %6859, %6843
  %6998 = fmul fast float %6997, %6976
  %6999 = fmul fast float %6859, %6844
  %7000 = fmul fast float %6999, %6976
  %7001 = fmul fast float %6995, %6992
  %7002 = fmul fast float %6997, %6993
  %7003 = fmul fast float %6999, %6994
  %7004 = fadd fast float %6996, %5869
  %7005 = fmul fast float %7004, %4234
  %7006 = fadd fast float %6998, %5871
  %7007 = fmul fast float %7006, %4234
  %7008 = fadd fast float %7000, %5873
  %7009 = fmul fast float %7008, %4234
  %7010 = fadd fast float %7001, %5921
  %7011 = fmul fast float %7010, %4234
  %7012 = fadd fast float %7002, %5924
  %7013 = fmul fast float %7012, %4234
  %7014 = fadd fast float %7003, %5927
  %7015 = fmul fast float %7014, %4234
  br label %7016

; <label>:7016                                    ; preds = %6970, %6760, %5814
  %7017 = phi float [ %5922, %5814 ], [ %5922, %6760 ], [ %7011, %6970 ]
  %7018 = phi float [ %5925, %5814 ], [ %5925, %6760 ], [ %7013, %6970 ]
  %7019 = phi float [ %5928, %5814 ], [ %5928, %6760 ], [ %7015, %6970 ]
  %7020 = phi float [ %5917, %5814 ], [ %5917, %6760 ], [ %7005, %6970 ]
  %7021 = phi float [ %5918, %5814 ], [ %5918, %6760 ], [ %7007, %6970 ]
  %7022 = phi float [ %5919, %5814 ], [ %5919, %6760 ], [ %7009, %6970 ]
  %7023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.i32 %7023, 0
  %7025 = icmp eq i32 %7024, 0
  br i1 %7025, label %7646, label %7026

; <label>:7026                                    ; preds = %7016
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 2
  %7029 = extractvalue %dx.types.CBufRet.f32 %7027, 3
  %7030 = fmul fast float %7028, %116
  %7031 = fmul fast float %7029, %117
  %7032 = fptoui float %7030 to i32
  %7033 = fptoui float %7031 to i32
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7038 = fadd fast float %107, -4.000000e+00
  %7039 = call float @dx.op.binary.f32(i32 35, float %7038, float 0.000000e+00)  ; FMax(a,b)
  %7040 = fadd fast float %7039, %7035
  %7041 = fmul fast float %7040, %7036
  %7042 = call float @dx.op.unary.f32(i32 23, float %7041)  ; Log(value)
  %7043 = fmul fast float %7042, %7037
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7046 = fmul fast float %7043, %7045
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.i32 %7048, 1
  %7050 = add i32 %7049, -1
  %7051 = uitofp i32 %7049 to float
  %7052 = fmul fast float %7051, %7047
  %7053 = fptoui float %7052 to i32
  %7054 = call i32 @dx.op.binary.i32(i32 40, i32 %7053, i32 %7050)  ; UMin(a,b)
  %7055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.i32 %7055, 2
  %7057 = extractvalue %dx.types.CBufRet.i32 %7055, 3
  %7058 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7033, i32 %7056, i32 %7032)  ; UMad(a,b,c)
  %7059 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7054, i32 %7057, i32 %7058)  ; UMad(a,b,c)
  %7060 = add nsw i32 %7024, -1
  %7061 = call i32 @dx.op.binary.i32(i32 37, i32 %7060, i32 0)  ; IMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7063 = fptoui float %7062 to i32
  %7064 = lshr i32 %7063, 5
  %7065 = call i32 @dx.op.binary.i32(i32 40, i32 %7064, i32 8191)  ; UMin(a,b)
  %7066 = shl i32 %7065, 2
  %7067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7066, i32 undef)  ; BufferLoad(srv,index,wot)
  %7068 = extractvalue %dx.types.ResRet.i32 %7067, 0
  %7069 = lshr i32 %7068, 16
  %7070 = and i32 %7068, 65535
  %7071 = lshr i32 %7068, 21
  %7072 = lshr i32 %7070, 5
  %7073 = call i32 @dx.op.binary.i32(i32 40, i32 %7072, i32 %7061)  ; UMin(a,b)
  %7074 = icmp ugt i32 %7071, %7073
  br i1 %7074, label %7646, label %7075

; <label>:7075                                    ; preds = %7026
  br label %7076

; <label>:7076                                    ; preds = %7636, %7075
  %7077 = phi i32 [ %7643, %7636 ], [ %7071, %7075 ]
  %7078 = phi float [ %7637, %7636 ], [ %7017, %7075 ]
  %7079 = phi float [ %7638, %7636 ], [ %7018, %7075 ]
  %7080 = phi float [ %7639, %7636 ], [ %7019, %7075 ]
  %7081 = phi float [ %7640, %7636 ], [ %7020, %7075 ]
  %7082 = phi float [ %7641, %7636 ], [ %7021, %7075 ]
  %7083 = phi float [ %7642, %7636 ], [ %7022, %7075 ]
  %7084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.i32 %7084, 0
  %7086 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7059, i32 %7085, i32 %7077)  ; UMad(a,b,c)
  %7087 = shl i32 %7086, 2
  %7088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.i32 %7088, 0
  %7090 = shl i32 %7077, 5
  %7091 = sub nsw i32 %7069, %7090
  %7092 = call i32 @dx.op.binary.i32(i32 37, i32 %7091, i32 0)  ; IMax(a,b)
  %7093 = call i32 @dx.op.binary.i32(i32 38, i32 %7092, i32 31)  ; IMin(a,b)
  %7094 = sub nsw i32 1, %7069
  %7095 = add nsw i32 %7094, %7070
  %7096 = call i32 @dx.op.binary.i32(i32 37, i32 %7095, i32 0)  ; IMax(a,b)
  %7097 = call i32 @dx.op.binary.i32(i32 38, i32 %7096, i32 32)  ; IMin(a,b)
  %7098 = and i32 %7097, 31
  %7099 = shl i32 -1, %7098
  %7100 = xor i32 %7099, -1
  %7101 = and i32 %7093, 31
  %7102 = shl i32 %7100, %7101
  %7103 = icmp eq i32 %7097, 32
  %7104 = select i1 %7103, i32 -1, i32 %7102
  %7105 = and i32 %7104, %7089
  %7106 = icmp eq i32 %7105, 0
  br i1 %7106, label %7636, label %7107

; <label>:7107                                    ; preds = %7076
  br label %7108

; <label>:7108                                    ; preds = %7242, %7107
  %7109 = phi i32 [ %7120, %7242 ], [ %7105, %7107 ]
  %7110 = phi float [ %7243, %7242 ], [ %7078, %7107 ]
  %7111 = phi float [ %7244, %7242 ], [ %7079, %7107 ]
  %7112 = phi float [ %7245, %7242 ], [ %7080, %7107 ]
  %7113 = phi float [ %7246, %7242 ], [ %7081, %7107 ]
  %7114 = phi float [ %7247, %7242 ], [ %7082, %7107 ]
  %7115 = phi float [ %7248, %7242 ], [ %7083, %7107 ]
  %7116 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7109)  ; FirstbitLo(value)
  %7117 = add i32 %7116, %7090
  %7118 = and i32 %7116, 31
  %7119 = shl i32 1, %7118
  %7120 = xor i32 %7119, %7109
  %7121 = mul i32 %7117, 112
  %7122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7121, i32 undef)  ; BufferLoad(srv,index,wot)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.ResRet.f32 %7122, 1
  %7125 = extractvalue %dx.types.ResRet.f32 %7122, 2
  %7126 = or i32 %7121, 12
  %7127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = add i32 %7121, 16
  %7130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = add i32 %7121, 28
  %7135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7134, i32 undef)  ; BufferLoad(srv,index,wot)
  %7136 = extractvalue %dx.types.ResRet.i32 %7135, 0
  %7137 = add i32 %7121, 44
  %7138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7137, i32 undef)  ; BufferLoad(srv,index,wot)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = add i32 %7121, 48
  %7141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7140, i32 undef)  ; BufferLoad(srv,index,wot)
  %7142 = extractvalue %dx.types.ResRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.ResRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.ResRet.f32 %7141, 2
  %7145 = extractvalue %dx.types.ResRet.f32 %7141, 3
  %7146 = add i32 %7121, 64
  %7147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7146, i32 undef)  ; BufferLoad(srv,index,wot)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.ResRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7147, 2
  %7151 = extractvalue %dx.types.ResRet.f32 %7147, 3
  %7152 = add i32 %7121, 80
  %7153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7152, i32 undef)  ; BufferLoad(srv,index,wot)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7156 = add i32 %7121, 92
  %7157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7156, i32 undef)  ; BufferLoad(srv,index,wot)
  %7158 = extractvalue %dx.types.ResRet.i32 %7157, 0
  %7159 = call float @dx.op.dot3.f32(i32 55, float %7123, float %7124, float %7125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = select i1 %271, float %7154, float %7123
  %7161 = select i1 %271, float %7159, float %7124
  %7162 = select i1 %271, float %7155, float %7125
  %7163 = and i32 %7158, 65535
  %7164 = uitofp i32 %7163 to float
  %7165 = lshr i32 %7158, 16
  %7166 = uitofp i32 %7165 to float
  %7167 = and i32 %7136, 65535
  %7168 = and i32 %7136, 50331648
  %7169 = icmp eq i32 %7168, 33554432
  %7170 = fsub fast float %7142, %199
  %7171 = fsub fast float %7143, %200
  %7172 = fsub fast float %7144, %201
  %7173 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7172, float %7170, float %7171, float %7172)  ; Dot3(ax,ay,az,bx,by,bz)
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  %7175 = fdiv fast float 1.000000e+00, %7174
  %7176 = fmul fast float %7175, %7170
  %7177 = fmul fast float %7175, %7171
  %7178 = fmul fast float %7175, %7172
  %7179 = fadd fast float %7174, %7128
  %7180 = fdiv fast float 1.000000e+00, %7179
  %7181 = fmul float %7139, %7180
  %7182 = fmul float %7181, %7181
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  br i1 %7169, label %7184, label %7205

; <label>:7184                                    ; preds = %7108
  %7185 = fmul fast float %7150, %7131
  %7186 = fmul fast float %7150, %7132
  %7187 = fmul fast float %7150, %7133
  %7188 = fadd fast float %7170, %7185
  %7189 = fadd fast float %7171, %7186
  %7190 = fadd fast float %7172, %7187
  %7191 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7190, float %7188, float %7189, float %7190)  ; Dot3(ax,ay,az,bx,by,bz)
  %7192 = call float @dx.op.unary.f32(i32 25, float %7191)  ; Rsqrt(value)
  %7193 = fmul fast float %7192, %7188
  %7194 = fmul fast float %7192, %7189
  %7195 = fmul fast float %7192, %7190
  %7196 = fsub fast float %199, %7142
  %7197 = fsub fast float %200, %7143
  %7198 = fsub fast float %201, %7144
  %7199 = fsub fast float -0.000000e+00, %7196
  %7200 = fsub fast float -0.000000e+00, %7197
  %7201 = fsub fast float -0.000000e+00, %7198
  %7202 = call float @dx.op.dot3.f32(i32 55, float %7199, float %7200, float %7201, float %7131, float %7132, float %7133)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = fcmp fast ogt float %7202, 0.000000e+00
  %7204 = uitofp i1 %7203 to float
  br label %7205

; <label>:7205                                    ; preds = %7184, %7108
  %7206 = phi float [ %7204, %7184 ], [ 1.000000e+00, %7108 ]
  %7207 = phi float [ %7193, %7184 ], [ %7176, %7108 ]
  %7208 = phi float [ %7194, %7184 ], [ %7177, %7108 ]
  %7209 = phi float [ %7195, %7184 ], [ %7178, %7108 ]
  %7210 = call float @dx.op.dot3.f32(i32 55, float %7131, float %7132, float %7133, float %7207, float %7208, float %7209)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = fmul fast float %7210, %7210
  %7212 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7213 = fsub fast float 1.000000e+00, %7212
  %7214 = fmul fast float %7213, 5.000000e-01
  %7215 = fcmp fast ogt float %7210, 0.000000e+00
  %7216 = fsub fast float 1.000000e+00, %7214
  %7217 = select i1 %7215, float %7214, float %7216
  %7218 = fmul fast float %7217, %7166
  %7219 = fadd fast float %7218, %7164
  %7220 = fmul fast float %7219, 0x3EF0001000000000
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7220, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = fmul fast float %7210, %7148
  %7224 = fadd fast float %7223, %7149
  %7225 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7226 = select i1 %7169, float 1.000000e+00, float %7225
  %7227 = select i1 %7169, float %7225, float 1.000000e+00
  %7228 = fmul fast float %7174, %7145
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = fmul fast float %7229, %7151
  %7231 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7232 = fmul fast float %7231, %7227
  %7233 = fmul fast float %7232, 2.000000e+00
  %7234 = fsub fast float 3.000000e+00, %7233
  %7235 = fmul fast float %7222, %7206
  %7236 = fmul fast float %7232, %7232
  %7237 = fmul fast float %7236, %7235
  %7238 = fmul fast float %7237, %7234
  %7239 = call float @dx.op.binary.f32(i32 36, float %7238, float %7238)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 36, float %7238, float %7239)  ; FMin(a,b)
  %7241 = fcmp fast ogt float %7240, 0.000000e+00
  br i1 %7241, label %7250, label %7242, !dx.controlflow.hints !125

; <label>:7242                                    ; preds = %7592, %7350, %7205
  %7243 = phi float [ %7110, %7350 ], [ %7110, %7205 ], [ %7632, %7592 ]
  %7244 = phi float [ %7111, %7350 ], [ %7111, %7205 ], [ %7633, %7592 ]
  %7245 = phi float [ %7112, %7350 ], [ %7112, %7205 ], [ %7634, %7592 ]
  %7246 = phi float [ %7113, %7350 ], [ %7113, %7205 ], [ %7626, %7592 ]
  %7247 = phi float [ %7114, %7350 ], [ %7114, %7205 ], [ %7627, %7592 ]
  %7248 = phi float [ %7115, %7350 ], [ %7115, %7205 ], [ %7628, %7592 ]
  %7249 = icmp eq i32 %7109, %7119
  br i1 %7249, label %7635, label %7108

; <label>:7250                                    ; preds = %7205
  %7251 = icmp eq i32 %7167, 255
  br i1 %7251, label %7350, label %7252, !dx.controlflow.hints !126

; <label>:7252                                    ; preds = %7250
  %7253 = mul nuw nsw i32 %7167, 176
  %7254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7253, i32 undef)  ; BufferLoad(srv,index,wot)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.ResRet.f32 %7254, 1
  %7257 = extractvalue %dx.types.ResRet.f32 %7254, 2
  %7258 = extractvalue %dx.types.ResRet.f32 %7254, 3
  %7259 = add nuw nsw i32 %7253, 16
  %7260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7259, i32 undef)  ; BufferLoad(srv,index,wot)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = add nuw nsw i32 %7253, 32
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = add nuw nsw i32 %7253, 48
  %7269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.ResRet.f32 %7269, 3
  %7274 = add nuw nsw i32 %7253, 64
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = extractvalue %dx.types.ResRet.f32 %7275, 1
  %7278 = extractvalue %dx.types.ResRet.f32 %7275, 2
  %7279 = extractvalue %dx.types.ResRet.f32 %7275, 3
  %7280 = add nuw nsw i32 %7253, 80
  %7281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7280, i32 undef)  ; BufferLoad(srv,index,wot)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  %7285 = extractvalue %dx.types.ResRet.f32 %7281, 3
  %7286 = add nuw nsw i32 %7253, 96
  %7287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7286, i32 undef)  ; BufferLoad(srv,index,wot)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.ResRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.ResRet.f32 %7287, 2
  %7291 = extractvalue %dx.types.ResRet.f32 %7287, 3
  %7292 = bitcast float %7262 to i32
  %7293 = fmul fast float %7267, %125
  %7294 = fmul fast float %7267, %127
  %7295 = fmul fast float %7267, %129
  %7296 = fadd fast float %7293, %199
  %7297 = fadd fast float %7294, %200
  %7298 = fadd fast float %7295, %201
  %7299 = fmul fast float %7296, %7270
  %7300 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7276, float %7299)  ; FMad(a,b,c)
  %7301 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7282, float %7300)  ; FMad(a,b,c)
  %7302 = fadd fast float %7301, %7288
  %7303 = fmul fast float %7296, %7271
  %7304 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7277, float %7303)  ; FMad(a,b,c)
  %7305 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7283, float %7304)  ; FMad(a,b,c)
  %7306 = fadd fast float %7305, %7289
  %7307 = fmul fast float %7296, %7272
  %7308 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7278, float %7307)  ; FMad(a,b,c)
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7284, float %7308)  ; FMad(a,b,c)
  %7310 = fadd fast float %7309, %7290
  %7311 = fmul fast float %7296, %7273
  %7312 = call float @dx.op.tertiary.f32(i32 46, float %7297, float %7279, float %7311)  ; FMad(a,b,c)
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7298, float %7285, float %7312)  ; FMad(a,b,c)
  %7314 = fadd fast float %7313, %7291
  %7315 = fdiv fast float %7302, %7314
  %7316 = fdiv fast float %7306, %7314
  %7317 = fdiv fast float %7310, %7314
  %7318 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7317)  ; FMax(a,b)
  %7319 = fmul fast float %282, 0x401921FB60000000
  %7320 = call float @dx.op.unary.f32(i32 13, float %7319)  ; Sin(value)
  %7321 = call float @dx.op.unary.f32(i32 12, float %7319)  ; Cos(value)
  %7322 = fsub fast float -0.000000e+00, %7320
  %7323 = fmul fast float %7257, 5.000000e-01
  %7324 = call float @dx.op.dot2.f32(i32 54, float %282, float %282, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7325 = call float @dx.op.unary.f32(i32 22, float %7324)  ; Frc(value)
  %7326 = fmul fast float %7325, 0x404A7DD040000000
  %7327 = call float @dx.op.unary.f32(i32 22, float %7326)  ; Frc(value)
  %7328 = fmul fast float %7327, %7266
  %7329 = fadd fast float %7328, %7323
  %7330 = call float @dx.op.tertiary.f32(i32 46, float %7329, float %7322, float 0.000000e+00)  ; FMad(a,b,c)
  %7331 = call float @dx.op.tertiary.f32(i32 46, float %7329, float %7321, float 0.000000e+00)  ; FMad(a,b,c)
  %7332 = fadd fast float %7330, %7315
  %7333 = fadd fast float %7331, %7316
  %7334 = fmul fast float %7332, %7261
  %7335 = fmul fast float %7333, %7261
  %7336 = call float @dx.op.binary.f32(i32 35, float %7334, float %7257)  ; FMax(a,b)
  %7337 = call float @dx.op.binary.f32(i32 35, float %7335, float %7257)  ; FMax(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7336, float %7258)  ; FMin(a,b)
  %7339 = call float @dx.op.binary.f32(i32 36, float %7337, float %7258)  ; FMin(a,b)
  %7340 = fadd fast float %7338, %7255
  %7341 = fadd fast float %7339, %7256
  %7342 = uitofp i32 %7292 to float
  %7343 = fadd fast float %7318, %7265
  %7344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7340, float %7341, float %7342, float undef, i32 0, i32 0, i32 undef, float %7343)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7345 = extractvalue %dx.types.ResRet.f32 %7344, 0
  %7346 = fadd fast float %7345, -1.000000e+00
  %7347 = fmul fast float %7346, %7226
  %7348 = fadd fast float %7347, 1.000000e+00
  %7349 = fmul fast float %7348, %7238
  br label %7350

; <label>:7350                                    ; preds = %7252, %7250
  %7351 = phi float [ %7349, %7252 ], [ %7238, %7250 ]
  %7352 = call float @dx.op.binary.f32(i32 36, float %7351, float %7351)  ; FMin(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7351, float %7352)  ; FMin(a,b)
  %7354 = fcmp fast ogt float %7353, 0.000000e+00
  br i1 %7354, label %7355, label %7242, !dx.controlflow.hints !127

; <label>:7355                                    ; preds = %7350
  %7356 = fmul fast float %7351, %7160
  %7357 = fmul fast float %7351, %7161
  %7358 = fmul fast float %7351, %7162
  %7359 = fsub fast float %7144, %4638
  %7360 = fcmp fast ogt float %7359, 0.000000e+00
  %7361 = fsub fast float %201, %4638
  %7362 = fcmp fast ogt float %7361, 0.000000e+00
  %7363 = xor i1 %7362, %7360
  %7364 = fsub fast float %4638, %7144
  %7365 = fmul fast float %7364, 2.000000e+00
  %7366 = fadd fast float %7365, %7144
  %7367 = select i1 %7363, float %7144, float %7366
  %7368 = fsub fast float %7367, %201
  %7369 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7368, float %7170, float %7171, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = call float @dx.op.unary.f32(i32 25, float %7369)  ; Rsqrt(value)
  %7371 = fmul fast float %7370, %7170
  %7372 = fmul fast float %7370, %7171
  %7373 = fmul fast float %7370, %7368
  %7374 = fsub fast float %4638, %201
  %7375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7374)  ; Dot3(ax,ay,az,bx,by,bz)
  %7376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7371, float %7372, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = fdiv fast float 1.000000e+00, %7376
  %7378 = fmul fast float %7377, %7375
  %7379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7361, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = zext i1 %7380 to i32
  %7383 = zext i1 %7381 to i32
  %7384 = sub nsw i32 %7382, %7383
  %7385 = sitofp i32 %7384 to float
  %7386 = fsub fast float %7367, %4638
  %7387 = call float @dx.op.dot3.f32(i32 55, float %7170, float %7171, float %7386, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7388 = fcmp fast ogt float %7387, 0.000000e+00
  %7389 = fcmp fast olt float %7387, 0.000000e+00
  %7390 = zext i1 %7388 to i32
  %7391 = zext i1 %7389 to i32
  %7392 = sub nsw i32 %7390, %7391
  %7393 = sitofp i32 %7392 to float
  %7394 = fcmp fast une float %7385, %7393
  br i1 %7394, label %7395, label %7405

; <label>:7395                                    ; preds = %7355
  %7396 = fmul fast float %7378, %7373
  %7397 = fmul fast float %7378, %7372
  %7398 = fmul fast float %7378, %7371
  %7399 = fmul fast float %7398, %7398
  %7400 = fmul fast float %7397, %7397
  %7401 = fadd fast float %7399, %7400
  %7402 = fmul fast float %7396, %7396
  %7403 = fadd fast float %7401, %7402
  %7404 = call float @dx.op.unary.f32(i32 24, float %7403)  ; Sqrt(value)
  br label %7417

; <label>:7405                                    ; preds = %7355
  %7406 = icmp slt i32 %7384, 0
  br i1 %7406, label %7407, label %7417

; <label>:7407                                    ; preds = %7405
  %7408 = fsub fast float %199, %7142
  %7409 = fsub fast float %200, %7143
  %7410 = fsub fast float %201, %7367
  %7411 = fmul fast float %7408, %7408
  %7412 = fmul fast float %7409, %7409
  %7413 = fadd fast float %7411, %7412
  %7414 = fmul fast float %7410, %7410
  %7415 = fadd fast float %7413, %7414
  %7416 = call float @dx.op.unary.f32(i32 24, float %7415)  ; Sqrt(value)
  br label %7417

; <label>:7417                                    ; preds = %7407, %7405, %7395
  %7418 = phi float [ %7404, %7395 ], [ %7416, %7407 ], [ 0.000000e+00, %7405 ]
  %7419 = and i1 %7362, %7360
  %7420 = fsub fast float -0.000000e+00, %7418
  %7421 = select i1 %7419, float -0.000000e+00, float %7420
  %7422 = fmul fast float %4639, 0x3FF7154760000000
  %7423 = fmul fast float %7422, %7421
  %7424 = fmul fast float %4640, 0x3FF7154760000000
  %7425 = fmul fast float %7424, %7421
  %7426 = fmul fast float %4641, 0x3FF7154760000000
  %7427 = fmul fast float %7426, %7421
  %7428 = call float @dx.op.unary.f32(i32 21, float %7423)  ; Exp(value)
  %7429 = call float @dx.op.unary.f32(i32 21, float %7425)  ; Exp(value)
  %7430 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7431 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7432 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7433 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7434 = fmul fast float %7356, %7431
  %7435 = fmul fast float %7357, %7432
  %7436 = fmul fast float %7358, %7433
  %7437 = fsub fast float %7176, %5464
  %7438 = fsub fast float %7177, %5465
  %7439 = fsub fast float %7178, %5466
  %7440 = call float @dx.op.dot3.f32(i32 55, float %7437, float %7438, float %7439, float %7437, float %7438, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7441 = call float @dx.op.unary.f32(i32 25, float %7440)  ; Rsqrt(value)
  %7442 = fmul fast float %7441, %7437
  %7443 = fmul fast float %7441, %7438
  %7444 = fmul fast float %7441, %7439
  %7445 = call float @dx.op.dot3.f32(i32 55, float %7176, float %7177, float %7178, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %7442, float %7443, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7447 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7448 = fmul fast float %7447, %7183
  %7449 = fmul fast float %7447, %7447
  %7450 = fmul fast float %7449, %5485
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fmul fast float %7448, %7451
  %7453 = bitcast float %7173 to i32
  %7454 = ashr i32 %7453, 1
  %7455 = sub nsw i32 1597463007, %7454
  %7456 = bitcast i32 %7455 to float
  %7457 = fmul fast float %7456, %7170
  %7458 = fmul fast float %7456, %7171
  %7459 = fmul fast float %7456, %7172
  %7460 = fsub fast float %7457, %5464
  %7461 = fsub fast float %7458, %5465
  %7462 = fsub fast float %7459, %5466
  %7463 = call float @dx.op.dot3.f32(i32 55, float %7460, float %7461, float %7462, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7464 = call float @dx.op.unary.f32(i32 25, float %7463)  ; Rsqrt(value)
  %7465 = fmul fast float %7460, %7464
  %7466 = fmul fast float %7461, %7464
  %7467 = fmul fast float %7462, %7464
  %7468 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float %7465, float %7466, float %7467)  ; Dot3(ax,ay,az,bx,by,bz)
  %7469 = fmul fast float %7468, %7468
  %7470 = call float @dx.op.unary.f32(i32 6, float %7445)  ; FAbs(value)
  %7471 = fsub fast float 1.000000e+00, %5427
  %7472 = call float @dx.op.binary.f32(i32 35, float %7471, float 0x3F847AE140000000)  ; FMax(a,b)
  %7473 = fmul fast float %7472, %7472
  %7474 = fmul fast float %7473, %7473
  %7475 = fsub fast float 1.000000e+00, %7474
  %7476 = fmul fast float %5472, %5472
  %7477 = fmul fast float %7476, %7475
  %7478 = fadd fast float %7477, %7474
  %7479 = bitcast float %7478 to i32
  %7480 = ashr i32 %7479, 1
  %7481 = add nsw i32 %7480, 532487669
  %7482 = bitcast i32 %7481 to float
  %7483 = fadd fast float %7482, %5472
  %7484 = fmul fast float %7474, %7469
  %7485 = fsub fast float 1.000000e+00, %7469
  %7486 = fadd fast float %7485, %7484
  %7487 = fmul fast float %7470, %7470
  %7488 = fmul fast float %7487, %7475
  %7489 = fadd fast float %7488, %7474
  %7490 = bitcast float %7489 to i32
  %7491 = ashr i32 %7490, 1
  %7492 = add nsw i32 %7491, 532487669
  %7493 = bitcast i32 %7492 to float
  %7494 = fadd fast float %7493, %7470
  %7495 = fmul fast float %7486, %7486
  %7496 = fmul fast float %7495, %7483
  %7497 = fmul fast float %7496, %7494
  %7498 = fdiv fast float 1.000000e+00, %7497
  %7499 = bitcast float %7474 to i32
  %7500 = sitofp i32 %7499 to float
  %7501 = fmul fast float %7500, 0x3FE7F73180000000
  %7502 = fadd fast float %7501, 0x41AFE27C40000000
  %7503 = fptosi float %7502 to i32
  %7504 = bitcast i32 %7503 to float
  %7505 = fmul fast float %7139, 0x3FD80E9D60000000
  %7506 = fmul fast float %7505, %7456
  %7507 = fadd fast float %7504, %7506
  %7508 = bitcast float %7507 to i32
  %7509 = sub nsw i32 2129859010, %7508
  %7510 = bitcast i32 %7509 to float
  %7511 = fmul fast float %7474, %7498
  %7512 = fmul fast float %7511, %7504
  %7513 = fmul fast float %7512, %7510
  %7514 = call float @dx.op.unary.f32(i32 6, float %7446)  ; FAbs(value)
  %7515 = fsub fast float 1.000000e+00, %7514
  %7516 = bitcast float %7515 to i32
  %7517 = sitofp i32 %7516 to float
  %7518 = fmul fast float %7517, 5.000000e+00
  %7519 = fadd fast float %7518, 0xC1EFBF8940000000
  %7520 = fptosi float %7519 to i32
  %7521 = bitcast i32 %7520 to float
  %7522 = fsub fast float 1.000000e+00, %5418
  %7523 = fsub fast float 1.000000e+00, %5419
  %7524 = fsub fast float 1.000000e+00, %5470
  %7525 = fmul fast float %7521, %7522
  %7526 = fmul fast float %7521, %7523
  %7527 = fmul fast float %7521, %7524
  %7528 = fadd fast float %7525, %5418
  %7529 = fadd fast float %7526, %5419
  %7530 = fadd fast float %7527, %5470
  br i1 %5787, label %7531, label %7554

; <label>:7531                                    ; preds = %7417
  %7532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4237, float %7514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7533 = extractvalue %dx.types.ResRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.ResRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.ResRet.f32 %7532, 2
  %7536 = fadd fast float %7533, -5.000000e-01
  %7537 = fadd fast float %7534, -5.000000e-01
  %7538 = fadd fast float %7535, -5.000000e-01
  %7539 = fmul fast float %5418, 4.000000e+00
  %7540 = fmul fast float %7539, %7522
  %7541 = fmul fast float %7540, %7536
  %7542 = fmul fast float %5419, 4.000000e+00
  %7543 = fmul fast float %7542, %7523
  %7544 = fmul fast float %7543, %7537
  %7545 = fmul fast float %5470, 4.000000e+00
  %7546 = fmul fast float %7545, %7524
  %7547 = fmul fast float %7546, %7538
  %7548 = fadd fast float %7541, %7528
  %7549 = fadd fast float %7544, %7529
  %7550 = fadd fast float %7547, %7530
  %7551 = call float @dx.op.unary.f32(i32 7, float %7548)  ; Saturate(value)
  %7552 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7553 = call float @dx.op.unary.f32(i32 7, float %7550)  ; Saturate(value)
  br label %7554

; <label>:7554                                    ; preds = %7531, %7417
  %7555 = phi float [ %7551, %7531 ], [ %7528, %7417 ]
  %7556 = phi float [ %7552, %7531 ], [ %7529, %7417 ]
  %7557 = phi float [ %7553, %7531 ], [ %7530, %7417 ]
  %7558 = fmul fast float %7445, 9.843750e-01
  %7559 = fadd fast float %7558, 7.812500e-03
  %7560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7559, float %5777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7561 = extractvalue %dx.types.ResRet.f32 %7560, 2
  %7562 = extractvalue %dx.types.ResRet.f32 %7560, 3
  %7563 = fmul fast float %7561, %5418
  %7564 = fmul fast float %7561, %5419
  %7565 = fmul fast float %7561, %5470
  %7566 = fadd fast float %7563, %7562
  %7567 = fadd fast float %7564, %7562
  %7568 = fadd fast float %7565, %7562
  br i1 %5787, label %7569, label %7592

; <label>:7569                                    ; preds = %7554
  %7570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4237, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7571 = extractvalue %dx.types.ResRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.ResRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.ResRet.f32 %7570, 2
  %7574 = fadd fast float %7571, -5.000000e-01
  %7575 = fadd fast float %7572, -5.000000e-01
  %7576 = fadd fast float %7573, -5.000000e-01
  %7577 = fmul fast float %5418, 4.000000e+00
  %7578 = fmul fast float %7577, %7522
  %7579 = fmul fast float %7578, %7574
  %7580 = fmul fast float %5419, 4.000000e+00
  %7581 = fmul fast float %7580, %7523
  %7582 = fmul fast float %7581, %7575
  %7583 = fmul fast float %5470, 4.000000e+00
  %7584 = fmul fast float %7583, %7524
  %7585 = fmul fast float %7584, %7576
  %7586 = fadd fast float %7579, %7566
  %7587 = fadd fast float %7582, %7567
  %7588 = fadd fast float %7585, %7568
  %7589 = call float @dx.op.unary.f32(i32 7, float %7586)  ; Saturate(value)
  %7590 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7591 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  br label %7592

; <label>:7592                                    ; preds = %7569, %7554
  %7593 = phi float [ %7589, %7569 ], [ %7566, %7554 ]
  %7594 = phi float [ %7590, %7569 ], [ %7567, %7554 ]
  %7595 = phi float [ %7591, %7569 ], [ %7568, %7554 ]
  %7596 = call float @dx.op.binary.f32(i32 35, float %7594, float %7595)  ; FMax(a,b)
  %7597 = call float @dx.op.binary.f32(i32 35, float %7593, float %7596)  ; FMax(a,b)
  %7598 = fsub fast float 1.000000e+00, %7597
  %7599 = fmul fast float %7555, %7513
  %7600 = fmul fast float %7556, %7513
  %7601 = fmul fast float %7557, %7513
  %7602 = fsub fast float 1.000000e+00, %7446
  %7603 = bitcast float %7602 to i32
  %7604 = sitofp i32 %7603 to float
  %7605 = fmul fast float %7604, 5.000000e+00
  %7606 = fadd fast float %7605, 0xC1EFBF8940000000
  %7607 = fptosi float %7606 to i32
  %7608 = bitcast i32 %7607 to float
  %7609 = fmul fast float %7608, %4238
  %7610 = fmul fast float %7598, %7609
  %7611 = fmul fast float %7610, %5887
  %7612 = fmul fast float %7610, %5888
  %7613 = fmul fast float %7610, %5889
  %7614 = fadd fast float %7611, %7599
  %7615 = fadd fast float %7612, %7600
  %7616 = fadd fast float %7613, %7601
  %7617 = fmul fast float %7434, %4234
  %7618 = fmul fast float %7617, %7452
  %7619 = fmul fast float %7618, %7598
  %7620 = fmul fast float %7435, %4234
  %7621 = fmul fast float %7620, %7452
  %7622 = fmul fast float %7621, %7598
  %7623 = fmul fast float %7436, %4234
  %7624 = fmul fast float %7623, %7452
  %7625 = fmul fast float %7624, %7598
  %7626 = fadd fast float %7619, %7113
  %7627 = fadd fast float %7622, %7114
  %7628 = fadd fast float %7625, %7115
  %7629 = fmul fast float %7618, %7614
  %7630 = fmul fast float %7621, %7615
  %7631 = fmul fast float %7624, %7616
  %7632 = fadd fast float %7629, %7110
  %7633 = fadd fast float %7630, %7111
  %7634 = fadd fast float %7631, %7112
  br label %7242

; <label>:7635                                    ; preds = %7242
  br label %7636

; <label>:7636                                    ; preds = %7635, %7076
  %7637 = phi float [ %7078, %7076 ], [ %7243, %7635 ]
  %7638 = phi float [ %7079, %7076 ], [ %7244, %7635 ]
  %7639 = phi float [ %7080, %7076 ], [ %7245, %7635 ]
  %7640 = phi float [ %7081, %7076 ], [ %7246, %7635 ]
  %7641 = phi float [ %7082, %7076 ], [ %7247, %7635 ]
  %7642 = phi float [ %7083, %7076 ], [ %7248, %7635 ]
  %7643 = add i32 %7077, 1
  %7644 = icmp ugt i32 %7643, %7073
  br i1 %7644, label %7645, label %7076

; <label>:7645                                    ; preds = %7636
  br label %7646

; <label>:7646                                    ; preds = %7645, %7026, %7016
  %7647 = phi float [ %7017, %7016 ], [ %7017, %7026 ], [ %7637, %7645 ]
  %7648 = phi float [ %7018, %7016 ], [ %7018, %7026 ], [ %7638, %7645 ]
  %7649 = phi float [ %7019, %7016 ], [ %7019, %7026 ], [ %7639, %7645 ]
  %7650 = phi float [ %7020, %7016 ], [ %7020, %7026 ], [ %7640, %7645 ]
  %7651 = phi float [ %7021, %7016 ], [ %7021, %7026 ], [ %7641, %7645 ]
  %7652 = phi float [ %7022, %7016 ], [ %7022, %7026 ], [ %7642, %7645 ]
  %7653 = fmul fast float %4234, %4234
  %7654 = fsub fast float 1.000000e+00, %7653
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7654, float %7654, float %7654, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = fsub fast float 1.000000e+00, %7655
  %7657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7658 = extractvalue %dx.types.CBufRet.f32 %7657, 0
  %7659 = fmul fast float %7658, %5903
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 3
  %7662 = fsub fast float 1.000000e+00, %4241
  %7663 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  %7664 = fadd fast float %7652, %4240
  %7665 = fmul fast float %7664, %4241
  %7666 = fmul fast float %7663, %7661
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 3
  %7669 = fmul fast float %7650, %5421
  %7670 = fmul fast float %7651, %5422
  %7671 = fmul fast float %7652, %5423
  %7672 = fcmp fast ogt float %107, %234
  %7673 = and i1 %7672, %4644
  %7674 = or i1 %4650, %7673
  %7675 = icmp eq i32 %4643, 2
  %7676 = fcmp fast ole float %107, %234
  %7677 = and i1 %7676, %7675
  %7678 = or i1 %7677, %7674
  br i1 %7673, label %7679, label %7936

; <label>:7679                                    ; preds = %7646
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 3
  %7683 = fmul fast float %7681, %116
  %7684 = fmul fast float %7682, %117
  %7685 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7686 = call float @dx.op.unary.f32(i32 7, float %7684)  ; Saturate(value)
  %7687 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7685, float %7686, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.ResRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.ResRet.f32 %7687, 2
  %7691 = extractvalue %dx.types.ResRet.f32 %7687, 3
  %7692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7685, float %7686, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7693 = extractvalue %dx.types.ResRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.ResRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.ResRet.f32 %7692, 2
  %7696 = extractvalue %dx.types.ResRet.f32 %7692, 3
  %7697 = call float @dx.op.binary.f32(i32 35, float %7689, float %7690)  ; FMax(a,b)
  %7698 = call float @dx.op.binary.f32(i32 35, float %7688, float %7697)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 35, float %7698, float %7691)  ; FMax(a,b)
  %7700 = call float @dx.op.binary.f32(i32 36, float %7694, float %7695)  ; FMin(a,b)
  %7701 = call float @dx.op.binary.f32(i32 36, float %7693, float %7700)  ; FMin(a,b)
  %7702 = call float @dx.op.binary.f32(i32 36, float %7701, float %7696)  ; FMin(a,b)
  %7703 = fmul fast float %7699, 2.550000e+02
  %7704 = fadd fast float %7703, 0x3F70101020000000
  %7705 = fptoui float %7704 to i32
  %7706 = fmul fast float %7702, 2.550000e+02
  %7707 = fadd fast float %7706, 0x3F70101020000000
  %7708 = fptoui float %7707 to i32
  %7709 = icmp ult i32 %7705, %7708
  br i1 %7709, label %7710, label %7878

; <label>:7710                                    ; preds = %7679
  %7711 = fcmp fast ogt float %106, 9.843750e-01
  %7712 = fadd fast float %107, -4.000000e+00
  %7713 = select i1 %7711, float -4.000000e+00, float %7712
  %7714 = call float @dx.op.binary.f32(i32 35, float %7713, float 0.000000e+00)  ; FMax(a,b)
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = fadd fast float %7716, %7714
  %7718 = extractvalue %dx.types.CBufRet.f32 %7715, 2
  %7719 = fmul fast float %7717, %7718
  %7720 = call float @dx.op.unary.f32(i32 23, float %7719)  ; Log(value)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7715, 3
  %7722 = fmul fast float %7721, %7720
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7725 = fmul fast float %7722, %7724
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7727 = uitofp i32 %7705 to float
  %7728 = uitofp i32 %7708 to float
  %7729 = fadd fast float %7727, 5.000000e-01
  %7730 = fadd fast float %7728, 5.000000e-01
  %7731 = fmul fast float %7724, %7729
  %7732 = fmul fast float %7724, %7730
  %7733 = fadd fast float %7731, 0x3F0FFB4800000000
  %7734 = fadd fast float %7732, 0xBF0FFB4800000000
  %7735 = call float @dx.op.binary.f32(i32 35, float %7726, float %7733)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 36, float %7735, float %7734)  ; FMin(a,b)
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7740 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7741 = fmul fast float %7738, %7736
  %7742 = fadd fast float %7740, %7741
  %7743 = fadd fast float %7740, %7739
  %7744 = fsub fast float %7738, %7739
  %7745 = fadd fast float %7744, %7740
  %7746 = call float @dx.op.binary.f32(i32 35, float %7742, float %7743)  ; FMax(a,b)
  %7747 = call float @dx.op.binary.f32(i32 36, float %7746, float %7745)  ; FMin(a,b)
  %7748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7685, float %7686, float %7747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7749 = extractvalue %dx.types.ResRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.ResRet.f32 %7748, 1
  %7751 = extractvalue %dx.types.ResRet.f32 %7748, 2
  %7752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.i32 %7752, 0
  %7754 = extractvalue %dx.types.CBufRet.i32 %7752, 1
  %7755 = uitofp i32 %7753 to float
  %7756 = uitofp i32 %7754 to float
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = fmul fast float %7755, %7685
  %7761 = fmul fast float %7756, %7686
  %7762 = fadd fast float %7760, -5.000000e-01
  %7763 = fadd fast float %7761, -5.000000e-01
  %7764 = call float @dx.op.unary.f32(i32 22, float %7762)  ; Frc(value)
  %7765 = call float @dx.op.unary.f32(i32 22, float %7763)  ; Frc(value)
  %7766 = fmul fast float %7764, %7764
  %7767 = fmul fast float %7766, %7764
  %7768 = fsub fast float 3.000000e+00, %7764
  %7769 = fmul fast float %7766, %7768
  %7770 = fmul fast float %7764, 3.000000e+00
  %7771 = fmul fast float %7767, 3.000000e+00
  %7772 = fmul fast float %7766, 6.000000e+00
  %7773 = fsub fast float %7771, %7772
  %7774 = fadd fast float %7773, 4.000000e+00
  %7775 = fmul fast float %7774, 0x3FC5555560000000
  %7776 = fmul fast float %7767, -3.000000e+00
  %7777 = fadd fast float %7766, %7764
  %7778 = fmul fast float %7777, 3.000000e+00
  %7779 = fadd fast float %7776, 1.000000e+00
  %7780 = fadd fast float %7779, %7778
  %7781 = fmul fast float %7767, 0x3FC5555560000000
  %7782 = fmul fast float %7765, %7765
  %7783 = fmul fast float %7782, %7765
  %7784 = fsub fast float 3.000000e+00, %7765
  %7785 = fmul fast float %7782, %7784
  %7786 = fmul fast float %7765, 3.000000e+00
  %7787 = fmul fast float %7783, 3.000000e+00
  %7788 = fmul fast float %7782, 6.000000e+00
  %7789 = fsub fast float %7787, %7788
  %7790 = fadd fast float %7789, 4.000000e+00
  %7791 = fmul fast float %7790, 0x3FC5555560000000
  %7792 = fmul fast float %7783, -3.000000e+00
  %7793 = fadd fast float %7782, %7765
  %7794 = fmul fast float %7793, 3.000000e+00
  %7795 = fadd fast float %7792, 1.000000e+00
  %7796 = fadd fast float %7795, %7794
  %7797 = fmul fast float %7783, 0x3FC5555560000000
  %7798 = fadd fast float %7764, 1.000000e+00
  %7799 = fsub fast float 1.000000e+00, %7770
  %7800 = fadd fast float %7799, %7769
  %7801 = fadd fast float %7800, %7774
  %7802 = fmul fast float %7801, 0x3FC5555560000000
  %7803 = fdiv fast float %7775, %7802
  %7804 = fsub fast float %7798, %7803
  %7805 = fsub fast float 1.000000e+00, %7764
  %7806 = fadd fast float %7780, %7767
  %7807 = fmul fast float %7806, 0x3FC5555560000000
  %7808 = fdiv fast float %7781, %7807
  %7809 = fadd fast float %7805, %7808
  %7810 = fadd fast float %7765, 1.000000e+00
  %7811 = fsub fast float 1.000000e+00, %7786
  %7812 = fadd fast float %7811, %7785
  %7813 = fadd fast float %7812, %7790
  %7814 = fmul fast float %7813, 0x3FC5555560000000
  %7815 = fdiv fast float %7791, %7814
  %7816 = fsub fast float %7810, %7815
  %7817 = fsub fast float 1.000000e+00, %7765
  %7818 = fadd fast float %7796, %7783
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fdiv fast float %7797, %7819
  %7821 = fadd fast float %7820, %7817
  %7822 = fmul fast float %7804, %7758
  %7823 = fsub fast float %7685, %7822
  %7824 = fmul fast float %7809, %7758
  %7825 = fadd fast float %7824, %7685
  %7826 = fmul fast float %7821, %7759
  %7827 = fadd fast float %7826, %7686
  %7828 = fmul fast float %7816, %7759
  %7829 = fsub fast float %7686, %7828
  %7830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7823, float %7829, float %7747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.ResRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.ResRet.f32 %7830, 2
  %7834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7825, float %7829, float %7747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7835 = extractvalue %dx.types.ResRet.f32 %7834, 0
  %7836 = extractvalue %dx.types.ResRet.f32 %7834, 1
  %7837 = extractvalue %dx.types.ResRet.f32 %7834, 2
  %7838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7823, float %7827, float %7747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7839 = extractvalue %dx.types.ResRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.ResRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.ResRet.f32 %7838, 2
  %7842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7825, float %7827, float %7747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7843 = extractvalue %dx.types.ResRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.ResRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.ResRet.f32 %7842, 2
  %7846 = fsub fast float %7839, %7831
  %7847 = fsub fast float %7840, %7832
  %7848 = fsub fast float %7841, %7833
  %7849 = fmul fast float %7846, %7819
  %7850 = fmul fast float %7847, %7819
  %7851 = fmul fast float %7848, %7819
  %7852 = fadd fast float %7849, %7831
  %7853 = fadd fast float %7850, %7832
  %7854 = fadd fast float %7851, %7833
  %7855 = fsub fast float %7843, %7835
  %7856 = fsub fast float %7844, %7836
  %7857 = fsub fast float %7845, %7837
  %7858 = fmul fast float %7855, %7819
  %7859 = fmul fast float %7856, %7819
  %7860 = fmul fast float %7857, %7819
  %7861 = fsub fast float %7835, %7852
  %7862 = fadd fast float %7861, %7858
  %7863 = fsub fast float %7836, %7853
  %7864 = fadd fast float %7863, %7859
  %7865 = fsub fast float %7837, %7854
  %7866 = fadd fast float %7865, %7860
  %7867 = fmul fast float %7862, %7807
  %7868 = fmul fast float %7864, %7807
  %7869 = fmul fast float %7866, %7807
  %7870 = fadd fast float %7867, %7852
  %7871 = fadd fast float %7868, %7853
  %7872 = fadd fast float %7869, %7854
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 1
  %7875 = fmul fast float %7870, %7874
  %7876 = fmul fast float %7871, %7874
  %7877 = fmul fast float %7872, %7874
  br label %7878

; <label>:7878                                    ; preds = %7710, %7679
  %7879 = phi float [ %7749, %7710 ], [ 1.000000e+00, %7679 ]
  %7880 = phi float [ %7750, %7710 ], [ 1.000000e+00, %7679 ]
  %7881 = phi float [ %7751, %7710 ], [ 1.000000e+00, %7679 ]
  %7882 = phi float [ %7875, %7710 ], [ 0.000000e+00, %7679 ]
  %7883 = phi float [ %7876, %7710 ], [ 0.000000e+00, %7679 ]
  %7884 = phi float [ %7877, %7710 ], [ 0.000000e+00, %7679 ]
  %7885 = fmul fast float %7882, %7656
  %7886 = fmul fast float %7883, %7656
  %7887 = fmul fast float %7884, %7656
  %7888 = call float @dx.op.dot3.f32(i32 55, float %7879, float %7880, float %7881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7889 = call float @dx.op.dot3.f32(i32 55, float %7885, float %7886, float %7887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = select i1 %271, float %7888, float %7879
  %7891 = select i1 %271, float %7888, float %7880
  %7892 = select i1 %271, float 1.000000e+00, float %7881
  %7893 = select i1 %271, float %7889, float %7885
  %7894 = select i1 %271, float 0.000000e+00, float %7886
  %7895 = select i1 %271, float 0.000000e+00, float %7887
  %7896 = fmul fast float %7890, %7669
  %7897 = fmul fast float %7891, %7670
  %7898 = fmul fast float %7892, %7671
  %7899 = fadd fast float %7896, %7893
  %7900 = fadd fast float %7897, %7894
  %7901 = fadd fast float %7895, %7898
  %7902 = fmul fast float %7890, %7647
  %7903 = fmul fast float %7891, %7648
  %7904 = fmul fast float %7892, %7649
  %7905 = fmul fast float %148, %7681
  %7906 = fmul fast float %150, %7682
  %7907 = fsub fast float 1.000000e+00, %7905
  %7908 = fsub fast float 1.000000e+00, %7906
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = fmul fast float %7907, %7910
  %7914 = fmul fast float %7907, %7911
  %7915 = fmul fast float %7907, %7912
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = fmul fast float %7908, %7917
  %7921 = fmul fast float %7908, %7918
  %7922 = fmul fast float %7908, %7919
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.CBufRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %7927 = fadd fast float %7920, %7924
  %7928 = fadd fast float %7927, %7913
  %7929 = fadd fast float %7921, %7925
  %7930 = fadd fast float %7929, %7914
  %7931 = fadd fast float %7922, %7926
  %7932 = fadd fast float %7931, %7915
  %7933 = fmul fast float %7928, %234
  %7934 = fmul fast float %7930, %234
  %7935 = fmul fast float %7932, %234
  br label %7936

; <label>:7936                                    ; preds = %7878, %7646
  %7937 = phi float [ %7933, %7878 ], [ %199, %7646 ]
  %7938 = phi float [ %7934, %7878 ], [ %200, %7646 ]
  %7939 = phi float [ %7935, %7878 ], [ %201, %7646 ]
  %7940 = phi float [ %234, %7878 ], [ %107, %7646 ]
  %7941 = phi float [ %7899, %7878 ], [ %7669, %7646 ]
  %7942 = phi float [ %7900, %7878 ], [ %7670, %7646 ]
  %7943 = phi float [ %7901, %7878 ], [ %7671, %7646 ]
  %7944 = phi float [ %7902, %7878 ], [ %7647, %7646 ]
  %7945 = phi float [ %7903, %7878 ], [ %7648, %7646 ]
  %7946 = phi float [ %7904, %7878 ], [ %7649, %7646 ]
  %7947 = phi float [ %7879, %7878 ], [ 1.000000e+00, %7646 ]
  br i1 %7678, label %9102, label %7948

; <label>:7948                                    ; preds = %7936
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.CBufRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.CBufRet.f32 %7949, 2
  %7953 = extractvalue %dx.types.CBufRet.f32 %7949, 3
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7959, 3
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7968 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 3
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7971, 1
  %7975 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7976 = fcmp fast olt float %7975, -5.000000e-01
  %7977 = call float @dx.op.dot3.f32(i32 55, float %7937, float %7938, float %7939, float %7937, float %7938, float %7939)  ; Dot3(ax,ay,az,bx,by,bz)
  %7978 = call float @dx.op.unary.f32(i32 25, float %7977)  ; Rsqrt(value)
  %7979 = fmul fast float %7978, %7977
  %7980 = fmul fast float %7978, %7937
  %7981 = fmul fast float %7978, %7938
  %7982 = fmul fast float %7978, %7939
  %7983 = fadd fast float %7979, %7953
  %7984 = call float @dx.op.dot3.f32(i32 55, float %7980, float %7981, float %7982, float %7950, float %7951, float %7952)  ; Dot3(ax,ay,az,bx,by,bz)
  %7985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.i32 %7985, 1
  %7987 = and i32 %7986, 1
  %7988 = icmp ne i32 %7987, 0
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 2
  %7991 = fcmp fast ogt float %7990, 0.000000e+00
  %7992 = and i1 %7988, %7991
  br i1 %7992, label %7993, label %8399, !dx.controlflow.hints !128

; <label>:7993                                    ; preds = %7948
  %7994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7994, 3
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %8000 = fsub fast float %7997, %7999
  %8001 = and i32 %7986, 2
  %8002 = extractvalue %dx.types.CBufRet.i32 %7985, 0
  %8003 = call i32 @dx.op.binary.i32(i32 40, i32 %8002, i32 3)  ; UMin(a,b)
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8008 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8009 = fsub fast float %8005, %8007
  %8010 = fsub fast float %8006, %8008
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = fcmp fast ogt float %8012, 0.000000e+00
  %8014 = fsub fast float -0.000000e+00, %8009
  %8015 = fsub fast float -0.000000e+00, %8010
  %8016 = call float @dx.op.dot2.f32(i32 54, float %7980, float %7981, float %7980, float %7981)  ; Dot2(ax,ay,bx,by)
  %8017 = call float @dx.op.dot2.f32(i32 54, float %7980, float %7981, float %8014, float %8015)  ; Dot2(ax,ay,bx,by)
  %8018 = fmul fast float %8017, 2.000000e+00
  %8019 = call float @dx.op.dot2.f32(i32 54, float %8014, float %8015, float %8014, float %8015)  ; Dot2(ax,ay,bx,by)
  %8020 = fmul fast float %8012, %8012
  %8021 = fsub fast float %8019, %8020
  %8022 = fmul fast float %8018, %8018
  %8023 = fmul fast float %8016, 4.000000e+00
  %8024 = fmul fast float %8023, %8021
  %8025 = fsub fast float %8022, %8024
  %8026 = fcmp fast ogt float %8025, 0.000000e+00
  br i1 %8026, label %8027, label %8042

; <label>:8027                                    ; preds = %7993
  %8028 = fcmp fast ogt float %8018, 0.000000e+00
  %8029 = call float @dx.op.unary.f32(i32 24, float %8025)  ; Sqrt(value)
  %8030 = fsub fast float -0.000000e+00, %8029
  %8031 = select i1 %8028, float %8029, float %8030
  %8032 = fadd fast float %8031, %8018
  %8033 = fmul float %8032, -5.000000e-01
  %8034 = fdiv fast float %8033, %8016
  %8035 = call float @dx.op.binary.f32(i32 35, float %8034, float 0.000000e+00)  ; FMax(a,b)
  %8036 = call float @dx.op.binary.f32(i32 36, float %7979, float %8035)  ; FMin(a,b)
  %8037 = fdiv fast float %8021, %8033
  %8038 = call float @dx.op.binary.f32(i32 35, float %8037, float 0.000000e+00)  ; FMax(a,b)
  %8039 = call float @dx.op.binary.f32(i32 36, float %7979, float %8038)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 36, float %8036, float %8039)  ; FMin(a,b)
  %8041 = call float @dx.op.binary.f32(i32 35, float %8036, float %8039)  ; FMax(a,b)
  br label %8042

; <label>:8042                                    ; preds = %8027, %7993
  %8043 = phi float [ %8041, %8027 ], [ -1.000000e+00, %7993 ]
  %8044 = phi float [ %8040, %8027 ], [ -1.000000e+00, %7993 ]
  %8045 = phi i1 [ true, %8027 ], [ false, %7993 ]
  %8046 = and i1 %8013, %8045
  br i1 %8046, label %8047, label %8049

; <label>:8047                                    ; preds = %8042
  %8048 = fcmp fast oeq float %8044, %8043
  br i1 %8048, label %8352, label %8050

; <label>:8049                                    ; preds = %8042
  br i1 %8013, label %8352, label %8050

; <label>:8050                                    ; preds = %8049, %8047
  %8051 = phi float [ %7979, %8049 ], [ %8043, %8047 ]
  %8052 = phi float [ 0.000000e+00, %8049 ], [ %8044, %8047 ]
  %8053 = icmp ne i32 %8001, 0
  %8054 = fmul fast float %8051, %7982
  %8055 = fadd fast float %8054, %7995
  %8056 = fmul fast float %8055, %8051
  %8057 = select i1 %8053, float 0.000000e+00, float %8056
  %8058 = fcmp fast oeq float %7982, 0.000000e+00
  %8059 = fdiv fast float %8000, %7982
  %8060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8059)  ; FMax(a,b)
  %8061 = select i1 %8058, float %8051, float %8060
  %8062 = call float @dx.op.binary.f32(i32 36, float %8051, float %8061)  ; FMin(a,b)
  %8063 = fcmp fast ogt float %7982, 0.000000e+00
  %8064 = fcmp fast olt float %8000, 0.000000e+00
  br i1 %8063, label %8065, label %8122

; <label>:8065                                    ; preds = %8050
  %8066 = icmp eq i32 %8001, 0
  br i1 %8064, label %8067, label %8111

; <label>:8067                                    ; preds = %8065
  %8068 = select i1 %8066, float %8051, float 0.000000e+00
  %8069 = fsub fast float -0.000000e+00, %8068
  %8070 = call float @dx.op.unary.f32(i32 6, float %8069)  ; FAbs(value)
  %8071 = fmul fast float %8068, %7982
  %8072 = fadd fast float %8071, %7995
  %8073 = fmul fast float %8070, %8072
  %8074 = fsub fast float %8057, %8073
  %8075 = fsub fast float %8051, %8070
  %8076 = select i1 %8066, float %8075, float 0.000000e+00
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8085 = extractvalue %dx.types.CBufRet.f32 %8081, 3
  %8086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.f32 %8086, 3
  %8088 = call float @dx.op.binary.f32(i32 36, float %8074, float %8087)  ; FMin(a,b)
  %8089 = fmul fast float %8085, %8076
  %8090 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  %8091 = fsub fast float %8082, %8078
  %8092 = fsub fast float %8083, %8079
  %8093 = fsub fast float %8084, %8080
  %8094 = fmul fast float %8090, %8091
  %8095 = fmul fast float %8090, %8092
  %8096 = fmul fast float %8090, %8093
  %8097 = fadd fast float %8094, %8078
  %8098 = fadd fast float %8095, %8079
  %8099 = fadd fast float %8096, %8080
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8103 = fadd fast float %8102, %8101
  %8104 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8106 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8107 = fadd fast float %8106, %8105
  %8108 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  %8109 = fmul fast float %8104, %8088
  %8110 = fmul fast float %8109, %8108
  br label %8352

; <label>:8111                                    ; preds = %8065
  br i1 %8066, label %8112, label %8133

; <label>:8112                                    ; preds = %8111
  %8113 = call float @dx.op.binary.f32(i32 36, float %8062, float %8052)  ; FMin(a,b)
  %8114 = fsub fast float %8062, %8113
  %8115 = fsub fast float %8114, %8051
  %8116 = call float @dx.op.unary.f32(i32 6, float %8115)  ; FAbs(value)
  %8117 = fadd fast float %8114, %8051
  %8118 = fmul fast float %8117, %7982
  %8119 = fadd fast float %8118, %7995
  %8120 = fmul fast float %8119, %8116
  %8121 = fsub fast float %8057, %8120
  br label %8133

; <label>:8122                                    ; preds = %8050
  br i1 %8064, label %8123, label %8133

; <label>:8123                                    ; preds = %8122
  %8124 = call float @dx.op.binary.f32(i32 35, float %8052, float %8062)  ; FMax(a,b)
  %8125 = icmp eq i32 %8001, 0
  %8126 = select i1 %8125, float %8062, float 0.000000e+00
  %8127 = fsub fast float -0.000000e+00, %8126
  %8128 = call float @dx.op.unary.f32(i32 6, float %8127)  ; FAbs(value)
  %8129 = fmul fast float %8126, %7982
  %8130 = fadd fast float %8129, %7995
  %8131 = fmul fast float %8128, %8130
  %8132 = fsub fast float %8057, %8131
  br label %8133

; <label>:8133                                    ; preds = %8123, %8122, %8112, %8111
  %8134 = phi float [ %8052, %8111 ], [ %8052, %8112 ], [ %8124, %8123 ], [ %8052, %8122 ]
  %8135 = phi float [ 0.000000e+00, %8111 ], [ %8116, %8112 ], [ %8128, %8123 ], [ 0.000000e+00, %8122 ]
  %8136 = phi float [ %8057, %8111 ], [ %8121, %8112 ], [ %8132, %8123 ], [ %8057, %8122 ]
  %8137 = phi float [ %8062, %8111 ], [ %8062, %8112 ], [ %8051, %8123 ], [ %8051, %8122 ]
  %8138 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8138, align 4, !tbaa !129, !noalias !131
  %8139 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8139, align 4, !tbaa !129, !noalias !131
  %8140 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8140, align 4, !tbaa !129, !noalias !131
  %8141 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8141, align 4, !tbaa !129, !noalias !131
  %8142 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8142, align 4, !tbaa !129, !noalias !131
  %8143 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8143, align 4, !tbaa !129, !noalias !131
  %8144 = icmp sgt i32 %8003, 0
  br i1 %8144, label %8145, label %8206

; <label>:8145                                    ; preds = %8133
  br label %8146

; <label>:8146                                    ; preds = %8195, %8145
  %8147 = phi i32 [ %8196, %8195 ], [ 0, %8145 ]
  %8148 = phi i32 [ %8197, %8195 ], [ 0, %8145 ]
  %8149 = add nuw i32 %8148, 171
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8149)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.CBufRet.f32 %8150, 1
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = fsub fast float %8151, %8154
  %8157 = fsub fast float %8152, %8155
  %8158 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8159 = fsub fast float -0.000000e+00, %8156
  %8160 = fsub fast float -0.000000e+00, %8157
  %8161 = call float @dx.op.dot2.f32(i32 54, float %7980, float %7981, float %8159, float %8160)  ; Dot2(ax,ay,bx,by)
  %8162 = fmul fast float %8161, 2.000000e+00
  %8163 = call float @dx.op.dot2.f32(i32 54, float %8159, float %8160, float %8159, float %8160)  ; Dot2(ax,ay,bx,by)
  %8164 = fmul fast float %8158, %8158
  %8165 = fsub fast float %8163, %8164
  %8166 = fmul fast float %8162, %8162
  %8167 = fmul fast float %8023, %8165
  %8168 = fsub fast float %8166, %8167
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  br i1 %8169, label %8170, label %8185

; <label>:8170                                    ; preds = %8146
  %8171 = fcmp fast ogt float %8162, 0.000000e+00
  %8172 = call float @dx.op.unary.f32(i32 24, float %8168)  ; Sqrt(value)
  %8173 = fsub fast float -0.000000e+00, %8172
  %8174 = select i1 %8171, float %8172, float %8173
  %8175 = fadd fast float %8174, %8162
  %8176 = fmul float %8175, -5.000000e-01
  %8177 = fdiv fast float %8176, %8016
  %8178 = call float @dx.op.binary.f32(i32 35, float %8177, float 0.000000e+00)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 36, float %8051, float %8178)  ; FMin(a,b)
  %8180 = fdiv fast float %8165, %8176
  %8181 = call float @dx.op.binary.f32(i32 35, float %8180, float 0.000000e+00)  ; FMax(a,b)
  %8182 = call float @dx.op.binary.f32(i32 36, float %8051, float %8181)  ; FMin(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8179, float %8182)  ; FMin(a,b)
  %8184 = call float @dx.op.binary.f32(i32 35, float %8179, float %8182)  ; FMax(a,b)
  br label %8185

; <label>:8185                                    ; preds = %8170, %8146
  %8186 = phi float [ %8184, %8170 ], [ -1.000000e+00, %8146 ]
  %8187 = phi float [ %8183, %8170 ], [ -1.000000e+00, %8146 ]
  %8188 = phi i1 [ true, %8170 ], [ false, %8146 ]
  br i1 %8188, label %8189, label %8195

; <label>:8189                                    ; preds = %8185
  %8190 = call float @dx.op.binary.f32(i32 35, float %8134, float %8187)  ; FMax(a,b)
  %8191 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8148
  store float %8190, float* %8191, align 4, !tbaa !129, !noalias !131
  %8192 = call float @dx.op.binary.f32(i32 35, float %8134, float %8186)  ; FMax(a,b)
  %8193 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8148
  store float %8192, float* %8193, align 4, !tbaa !129, !noalias !131
  %8194 = add nsw i32 %8147, 1
  br label %8195

; <label>:8195                                    ; preds = %8189, %8185
  %8196 = phi i32 [ %8194, %8189 ], [ %8147, %8185 ]
  %8197 = add nuw nsw i32 %8148, 1
  %8198 = icmp eq i32 %8197, %8003
  br i1 %8198, label %8199, label %8146

; <label>:8199                                    ; preds = %8195
  %8200 = load float, float* %8140, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8201 = load float, float* %8139, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8202 = load float, float* %8138, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8203 = load float, float* %8143, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8204 = load float, float* %8142, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8205 = load float, float* %8141, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8206

; <label>:8206                                    ; preds = %8199, %8133
  %8207 = phi float [ -1.000000e+00, %8133 ], [ %8205, %8199 ]
  %8208 = phi float [ -1.000000e+00, %8133 ], [ %8204, %8199 ]
  %8209 = phi float [ -1.000000e+00, %8133 ], [ %8203, %8199 ]
  %8210 = phi float [ -1.000000e+00, %8133 ], [ %8202, %8199 ]
  %8211 = phi float [ -1.000000e+00, %8133 ], [ %8201, %8199 ]
  %8212 = phi float [ -1.000000e+00, %8133 ], [ %8200, %8199 ]
  %8213 = phi i32 [ 0, %8133 ], [ %8196, %8199 ]
  %8214 = call float @dx.op.binary.f32(i32 36, float %8211, float %8212)  ; FMin(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8210, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8210, float %8211)  ; FMax(a,b)
  %8217 = call float @dx.op.binary.f32(i32 36, float %8216, float %8212)  ; FMin(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8210, float %8211)  ; FMin(a,b)
  %8219 = call float @dx.op.binary.f32(i32 35, float %8218, float %8217)  ; FMax(a,b)
  %8220 = call float @dx.op.binary.f32(i32 35, float %8211, float %8212)  ; FMax(a,b)
  %8221 = call float @dx.op.binary.f32(i32 35, float %8210, float %8220)  ; FMax(a,b)
  store float %8215, float* %8138, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8219, float* %8139, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8221, float* %8140, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8222 = call float @dx.op.binary.f32(i32 36, float %8208, float %8209)  ; FMin(a,b)
  %8223 = call float @dx.op.binary.f32(i32 36, float %8207, float %8222)  ; FMin(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float %8207, float %8208)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8224, float %8209)  ; FMin(a,b)
  %8226 = call float @dx.op.binary.f32(i32 36, float %8207, float %8208)  ; FMin(a,b)
  %8227 = call float @dx.op.binary.f32(i32 35, float %8226, float %8225)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 35, float %8208, float %8209)  ; FMax(a,b)
  %8229 = call float @dx.op.binary.f32(i32 35, float %8207, float %8228)  ; FMax(a,b)
  store float %8223, float* %8141, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8227, float* %8142, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8229, float* %8143, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8230 = sub nsw i32 3, %8213
  %8231 = icmp sgt i32 %8230, 2
  br i1 %8231, label %8232, label %8270

; <label>:8232                                    ; preds = %8206
  %8233 = icmp eq i32 %8001, 0
  %8234 = fsub fast float %8051, %8135
  %8235 = select i1 %8233, float %8234, float %8135
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8247 = call float @dx.op.binary.f32(i32 36, float %8136, float %8246)  ; FMin(a,b)
  %8248 = fmul fast float %8244, %8235
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fsub fast float %8241, %8237
  %8251 = fsub fast float %8242, %8238
  %8252 = fsub fast float %8243, %8239
  %8253 = fmul fast float %8249, %8250
  %8254 = fmul fast float %8249, %8251
  %8255 = fmul fast float %8249, %8252
  %8256 = fadd fast float %8253, %8237
  %8257 = fadd fast float %8254, %8238
  %8258 = fadd fast float %8255, %8239
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 0
  %8261 = extractvalue %dx.types.CBufRet.f32 %8259, 1
  %8262 = fadd fast float %8261, %8260
  %8263 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8259, 2
  %8265 = extractvalue %dx.types.CBufRet.f32 %8259, 3
  %8266 = fadd fast float %8265, %8264
  %8267 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8268 = fmul fast float %8263, %8247
  %8269 = fmul fast float %8268, %8267
  br label %8352

; <label>:8270                                    ; preds = %8206
  %8271 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8230
  %8272 = load float, float* %8271, align 4, !tbaa !129, !noalias !131
  %8273 = fcmp fast olt float %8272, %8137
  %8274 = icmp sgt i32 %8213, 0
  %8275 = and i1 %8274, %8273
  br i1 %8275, label %8276, label %8313

; <label>:8276                                    ; preds = %8270
  br label %8277

; <label>:8277                                    ; preds = %8306, %8276
  %8278 = phi float [ %8307, %8306 ], [ %8135, %8276 ]
  %8279 = phi float [ %8308, %8306 ], [ %8136, %8276 ]
  %8280 = phi float [ %8288, %8306 ], [ %8272, %8276 ]
  %8281 = phi i32 [ %8285, %8306 ], [ %8230, %8276 ]
  %8282 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8281
  %8283 = load float, float* %8282, align 4, !tbaa !129, !noalias !131
  %8284 = icmp slt i32 %8281, 2
  %8285 = add nsw i32 %8281, 1
  %8286 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8285
  %8287 = load float, float* %8286, align 4, !tbaa !129, !noalias !131
  %8288 = select i1 %8284, float %8287, float %8051
  %8289 = call float @dx.op.binary.f32(i32 36, float %8288, float %8283)  ; FMin(a,b)
  %8290 = call float @dx.op.binary.f32(i32 36, float %8137, float %8289)  ; FMin(a,b)
  %8291 = icmp eq i32 %8001, 0
  %8292 = fadd fast float %8290, %8280
  %8293 = fmul fast float %8292, %7982
  %8294 = fadd fast float %8293, %7995
  br i1 %8291, label %8300, label %8295

; <label>:8295                                    ; preds = %8277
  %8296 = fsub fast float %8290, %8280
  %8297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8296)  ; FMax(a,b)
  %8298 = fmul fast float %8297, %8294
  %8299 = fadd fast float %8298, %8279
  br label %8306

; <label>:8300                                    ; preds = %8277
  %8301 = fsub fast float %8280, %8290
  %8302 = call float @dx.op.unary.f32(i32 6, float %8301)  ; FAbs(value)
  %8303 = fadd fast float %8302, %8278
  %8304 = fmul fast float %8302, %8294
  %8305 = fsub fast float %8279, %8304
  br label %8306

; <label>:8306                                    ; preds = %8300, %8295
  %8307 = phi float [ %8297, %8295 ], [ %8303, %8300 ]
  %8308 = phi float [ %8299, %8295 ], [ %8305, %8300 ]
  %8309 = fcmp fast olt float %8288, %8137
  %8310 = icmp slt i32 %8285, 3
  %8311 = and i1 %8310, %8309
  br i1 %8311, label %8277, label %8312

; <label>:8312                                    ; preds = %8306
  br label %8313

; <label>:8313                                    ; preds = %8312, %8270
  %8314 = phi float [ %8135, %8270 ], [ %8307, %8312 ]
  %8315 = phi float [ %8136, %8270 ], [ %8308, %8312 ]
  %8316 = fsub fast float %8051, %8314
  %8317 = select i1 %8053, float %8314, float %8316
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.CBufRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.CBufRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8326 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8329 = call float @dx.op.binary.f32(i32 36, float %8315, float %8328)  ; FMin(a,b)
  %8330 = fmul fast float %8326, %8317
  %8331 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8332 = fsub fast float %8323, %8319
  %8333 = fsub fast float %8324, %8320
  %8334 = fsub fast float %8325, %8321
  %8335 = fmul fast float %8331, %8332
  %8336 = fmul fast float %8331, %8333
  %8337 = fmul fast float %8331, %8334
  %8338 = fadd fast float %8335, %8319
  %8339 = fadd fast float %8336, %8320
  %8340 = fadd fast float %8337, %8321
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = fadd fast float %8343, %8342
  %8345 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8347 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8348 = fadd fast float %8347, %8346
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8350 = fmul fast float %8345, %8329
  %8351 = fmul fast float %8350, %8349
  br label %8352

; <label>:8352                                    ; preds = %8313, %8232, %8067, %8049, %8047
  %8353 = phi float [ %8076, %8067 ], [ %8235, %8232 ], [ %8317, %8313 ], [ 0.000000e+00, %8047 ], [ 0.000000e+00, %8049 ]
  %8354 = phi float [ %8110, %8067 ], [ %8269, %8232 ], [ %8351, %8313 ], [ 0.000000e+00, %8047 ], [ 0.000000e+00, %8049 ]
  %8355 = phi float [ %8097, %8067 ], [ %8256, %8232 ], [ %8338, %8313 ], [ 0.000000e+00, %8047 ], [ 0.000000e+00, %8049 ]
  %8356 = phi float [ %8098, %8067 ], [ %8257, %8232 ], [ %8339, %8313 ], [ 0.000000e+00, %8047 ], [ 0.000000e+00, %8049 ]
  %8357 = phi float [ %8099, %8067 ], [ %8258, %8232 ], [ %8340, %8313 ], [ 0.000000e+00, %8047 ], [ 0.000000e+00, %8049 ]
  %8358 = fmul fast float %7990, %8354
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 2
  %8361 = fsub fast float %7997, %8360
  %8362 = fcmp fast olt float %8358, -2.000000e+01
  %8363 = call float @dx.op.unary.f32(i32 21, float %8358)  ; Exp(value)
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8364, 3
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8369 = fmul fast float %8366, %8361
  %8370 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8371 = fsub fast float 1.000000e+00, %8370
  %8372 = fmul fast float %7982, 5.000000e-01
  %8373 = fadd fast float %8372, 5.000000e-01
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fsub fast float 1.000000e+00, %8374
  %8376 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8371)  ; FMax(a,b)
  %8377 = fdiv fast float %8375, %8376
  %8378 = fsub fast float %8361, %7939
  %8379 = call float @dx.op.unary.f32(i32 6, float %8378)  ; FAbs(value)
  %8380 = fmul fast float %8379, %8365
  %8381 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8382 = fsub fast float 1.000000e+00, %8380
  %8383 = fmul fast float %8382, %8381
  %8384 = fadd fast float %8383, %8380
  %8385 = fmul fast float %8368, %8361
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = fsub fast float 1.000000e+00, %8384
  %8388 = fmul fast float %8387, %8386
  %8389 = fadd fast float %8388, %8384
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fadd fast float %8363, -1.000000e+00
  %8392 = select i1 %8362, float -1.000000e+00, float %8391
  %8393 = fmul fast float %8390, %8392
  %8394 = fadd fast float %8393, 1.000000e+00
  %8395 = fsub fast float -0.000000e+00, %8393
  %8396 = fmul fast float %8355, %8395
  %8397 = fmul fast float %8356, %8395
  %8398 = fmul fast float %8357, %8395
  br label %8399

; <label>:8399                                    ; preds = %8352, %7948
  %8400 = phi float [ %8353, %8352 ], [ 0.000000e+00, %7948 ]
  %8401 = phi float [ %8394, %8352 ], [ 1.000000e+00, %7948 ]
  %8402 = phi float [ %8396, %8352 ], [ 0.000000e+00, %7948 ]
  %8403 = phi float [ %8397, %8352 ], [ 0.000000e+00, %7948 ]
  %8404 = phi float [ %8398, %8352 ], [ 0.000000e+00, %7948 ]
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 1
  %8407 = fsub fast float 1.000000e+00, %8401
  %8408 = fmul fast float %8407, %7983
  %8409 = fmul fast float %8408, %8406
  %8410 = fsub fast float %7983, %8409
  br i1 %7976, label %8411, label %8440, !dx.controlflow.hints !167

; <label>:8411                                    ; preds = %8399
  %8412 = fmul fast float %7984, %7973
  %8413 = fadd fast float %8412, %7974
  %8414 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8415 = fmul fast float %7955, %8410
  %8416 = fsub fast float -0.000000e+00, %8415
  %8417 = fmul fast float %7956, %8410
  %8418 = fsub fast float -0.000000e+00, %8417
  %8419 = call float @dx.op.unary.f32(i32 21, float %8416)  ; Exp(value)
  %8420 = call float @dx.op.unary.f32(i32 21, float %8418)  ; Exp(value)
  %8421 = call float @dx.op.binary.f32(i32 35, float %7963, float %8419)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 35, float %7963, float %8420)  ; FMax(a,b)
  %8423 = fsub fast float %8422, %8421
  %8424 = fmul fast float %8423, %8414
  %8425 = fadd fast float %8424, %8421
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = fsub fast float %7960, %7965
  %8428 = fsub fast float %7961, %7966
  %8429 = fsub fast float %7962, %7967
  %8430 = fmul fast float %8414, %8427
  %8431 = fmul fast float %8414, %8428
  %8432 = fmul fast float %8414, %8429
  %8433 = fadd fast float %8430, %7965
  %8434 = fadd fast float %8431, %7966
  %8435 = fadd fast float %8432, %7967
  %8436 = fsub fast float 1.000000e+00, %8426
  %8437 = fmul fast float %8436, %8433
  %8438 = fmul fast float %8436, %8434
  %8439 = fmul fast float %8436, %8435
  br label %8499

; <label>:8440                                    ; preds = %8399
  %8441 = fmul fast float %8410, %7972
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = fsub fast float 2.000000e+00, %8442
  %8444 = fmul fast float %8442, 9.921875e-01
  %8445 = fmul fast float %8444, %8443
  %8446 = fadd fast float %8445, 3.906250e-03
  %8447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8446, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8448 = extractvalue %dx.types.ResRet.f32 %8447, 0
  %8449 = fsub fast float %8442, %8448
  %8450 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8449)  ; FMax(a,b)
  %8451 = fmul fast float %7958, %7939
  %8452 = call float @dx.op.unary.f32(i32 6, float %8451)  ; FAbs(value)
  %8453 = fcmp fast ogt float %8452, 0x3EB0C6F7A0000000
  br i1 %8453, label %8454, label %8460, !dx.controlflow.hints !168

; <label>:8454                                    ; preds = %8440
  %8455 = fmul fast float %8451, 0xBFF7154760000000
  %8456 = call float @dx.op.unary.f32(i32 21, float %8455)  ; Exp(value)
  %8457 = fsub fast float 1.000000e+00, %8456
  %8458 = fdiv fast float %8457, %8451
  %8459 = fmul fast float %8458, %7968
  br label %8460

; <label>:8460                                    ; preds = %8454, %8440
  %8461 = phi float [ %8459, %8454 ], [ %7968, %8440 ]
  %8462 = fadd fast float %8461, %7970
  %8463 = fmul fast float %8462, %8450
  %8464 = fmul fast float %7955, %8463
  %8465 = fsub fast float -0.000000e+00, %8464
  %8466 = fmul fast float %7956, %8463
  %8467 = fsub fast float -0.000000e+00, %8466
  %8468 = fmul fast float %7957, %8463
  %8469 = fsub fast float -0.000000e+00, %8468
  %8470 = call float @dx.op.unary.f32(i32 21, float %8465)  ; Exp(value)
  %8471 = call float @dx.op.unary.f32(i32 21, float %8467)  ; Exp(value)
  %8472 = call float @dx.op.unary.f32(i32 21, float %8469)  ; Exp(value)
  %8473 = fmul fast float %7984, %7984
  %8474 = fadd fast float %8473, 1.000000e+00
  %8475 = fmul fast float %8474, 0x3FAE8EC8A0000000
  %8476 = fmul fast float %8475, %7965
  %8477 = fmul fast float %8475, %7966
  %8478 = fmul fast float %8475, %7967
  %8479 = fmul fast float %7984, %7963
  %8480 = fsub fast float 1.000000e+00, %8479
  %8481 = fmul fast float %7963, %7963
  %8482 = fsub fast float 1.000000e+00, %8481
  %8483 = fmul fast float %8482, 0x3FB45F3060000000
  %8484 = fmul fast float %8480, %8480
  %8485 = fdiv fast float 1.000000e+00, %8484
  %8486 = fmul fast float %8483, %8485
  %8487 = fmul fast float %8486, %7960
  %8488 = fmul fast float %8486, %7961
  %8489 = fmul fast float %8486, %7962
  %8490 = fadd fast float %8487, %8476
  %8491 = fadd fast float %8488, %8477
  %8492 = fadd fast float %8489, %8478
  %8493 = fsub fast float 1.000000e+00, %8470
  %8494 = fsub fast float 1.000000e+00, %8471
  %8495 = fsub fast float 1.000000e+00, %8472
  %8496 = fmul fast float %8490, %8493
  %8497 = fmul fast float %8491, %8494
  %8498 = fmul fast float %8492, %8495
  br label %8499

; <label>:8499                                    ; preds = %8460, %8411
  %8500 = phi float [ %8437, %8411 ], [ %8496, %8460 ]
  %8501 = phi float [ %8438, %8411 ], [ %8497, %8460 ]
  %8502 = phi float [ %8439, %8411 ], [ %8498, %8460 ]
  %8503 = phi float [ %8426, %8411 ], [ %8470, %8460 ]
  %8504 = phi float [ %8426, %8411 ], [ %8471, %8460 ]
  %8505 = phi float [ %8426, %8411 ], [ %8472, %8460 ]
  br i1 %7992, label %8506, label %8704, !dx.controlflow.hints !169

; <label>:8506                                    ; preds = %8499
  %8507 = extractvalue %dx.types.CBufRet.f32 %8405, 0
  %8508 = fmul fast float %8507, %8407
  %8509 = fsub fast float %8402, %8500
  %8510 = fsub fast float %8403, %8501
  %8511 = fsub fast float %8404, %8502
  %8512 = fmul fast float %8508, %8509
  %8513 = fmul fast float %8508, %8510
  %8514 = fmul fast float %8508, %8511
  %8515 = fadd fast float %8512, %8500
  %8516 = fadd fast float %8513, %8501
  %8517 = fadd fast float %8514, %8502
  %8518 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8503)  ; FMax(a,b)
  %8519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8504)  ; FMax(a,b)
  %8520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8505)  ; FMax(a,b)
  %8521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8401)  ; FMax(a,b)
  %8522 = call float @dx.op.binary.f32(i32 35, float %8400, float %8410)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8522)  ; FMax(a,b)
  %8524 = fdiv fast float %8400, %8523
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fdiv fast float %8410, %8523
  %8527 = call float @dx.op.unary.f32(i32 7, float %8526)  ; Saturate(value)
  %8528 = fcmp fast une float %8521, 1.000000e+00
  br i1 %8528, label %8529, label %8542, !dx.controlflow.hints !170

; <label>:8529                                    ; preds = %8506
  %8530 = call float @dx.op.unary.f32(i32 23, float %8521)  ; Log(value)
  %8531 = fmul fast float %8530, 0x3FE62E4300000000
  %8532 = fmul fast float %8402, %8531
  %8533 = fsub fast float -0.000000e+00, %8532
  %8534 = fmul fast float %8403, %8531
  %8535 = fsub fast float -0.000000e+00, %8534
  %8536 = fmul fast float %8404, %8531
  %8537 = fsub fast float -0.000000e+00, %8536
  %8538 = fsub fast float 1.000000e+00, %8521
  %8539 = fdiv fast float %8533, %8538
  %8540 = fdiv fast float %8535, %8538
  %8541 = fdiv fast float %8537, %8538
  br label %8542

; <label>:8542                                    ; preds = %8529, %8506
  %8543 = phi float [ %8539, %8529 ], [ %8402, %8506 ]
  %8544 = phi float [ %8540, %8529 ], [ %8403, %8506 ]
  %8545 = phi float [ %8541, %8529 ], [ %8404, %8506 ]
  %8546 = phi float [ %8531, %8529 ], [ 0.000000e+00, %8506 ]
  %8547 = fcmp fast une float %8518, 1.000000e+00
  br i1 %8547, label %8548, label %8555, !dx.controlflow.hints !171

; <label>:8548                                    ; preds = %8542
  %8549 = call float @dx.op.unary.f32(i32 23, float %8518)  ; Log(value)
  %8550 = fmul fast float %8549, 0x3FE62E4300000000
  %8551 = fmul fast float %8515, %8550
  %8552 = fsub fast float -0.000000e+00, %8551
  %8553 = fsub fast float 1.000000e+00, %8518
  %8554 = fdiv fast float %8552, %8553
  br label %8555

; <label>:8555                                    ; preds = %8548, %8542
  %8556 = phi float [ %8554, %8548 ], [ %8515, %8542 ]
  %8557 = phi float [ %8550, %8548 ], [ 0.000000e+00, %8542 ]
  %8558 = fcmp fast une float %8519, 1.000000e+00
  br i1 %8558, label %8559, label %8566, !dx.controlflow.hints !171

; <label>:8559                                    ; preds = %8555
  %8560 = call float @dx.op.unary.f32(i32 23, float %8519)  ; Log(value)
  %8561 = fmul fast float %8560, 0x3FE62E4300000000
  %8562 = fmul fast float %8516, %8561
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = fsub fast float 1.000000e+00, %8519
  %8565 = fdiv fast float %8563, %8564
  br label %8566

; <label>:8566                                    ; preds = %8559, %8555
  %8567 = phi float [ %8565, %8559 ], [ %8516, %8555 ]
  %8568 = phi float [ %8561, %8559 ], [ 0.000000e+00, %8555 ]
  %8569 = fcmp fast une float %8520, 1.000000e+00
  br i1 %8569, label %8570, label %8577, !dx.controlflow.hints !171

; <label>:8570                                    ; preds = %8566
  %8571 = call float @dx.op.unary.f32(i32 23, float %8520)  ; Log(value)
  %8572 = fmul fast float %8571, 0x3FE62E4300000000
  %8573 = fmul fast float %8517, %8572
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = fsub fast float 1.000000e+00, %8520
  %8576 = fdiv fast float %8574, %8575
  br label %8577

; <label>:8577                                    ; preds = %8570, %8566
  %8578 = phi float [ %8576, %8570 ], [ %8517, %8566 ]
  %8579 = phi float [ %8572, %8570 ], [ 0.000000e+00, %8566 ]
  %8580 = fmul fast float %8543, %8527
  %8581 = fmul fast float %8544, %8527
  %8582 = fmul fast float %8545, %8527
  %8583 = fmul fast float %8546, %8527
  %8584 = fmul fast float %8556, %8525
  %8585 = fmul fast float %8567, %8525
  %8586 = fmul fast float %8578, %8525
  %8587 = fmul fast float %8557, %8525
  %8588 = fmul fast float %8568, %8525
  %8589 = fmul fast float %8579, %8525
  %8590 = fadd fast float %8584, %8580
  %8591 = fadd fast float %8585, %8581
  %8592 = fadd fast float %8586, %8582
  %8593 = fadd fast float %8587, %8583
  %8594 = fadd fast float %8588, %8583
  %8595 = fadd fast float %8589, %8583
  %8596 = fcmp fast une float %8593, 0.000000e+00
  br i1 %8596, label %8597, label %8604, !dx.controlflow.hints !172

; <label>:8597                                    ; preds = %8577
  %8598 = fmul fast float %8593, 0x3FF7154760000000
  %8599 = call float @dx.op.unary.f32(i32 21, float %8598)  ; Exp(value)
  %8600 = fsub fast float 1.000000e+00, %8599
  %8601 = fmul fast float %8590, %8600
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fdiv fast float %8602, %8593
  br label %8604

; <label>:8604                                    ; preds = %8597, %8577
  %8605 = phi float [ %8599, %8597 ], [ 1.000000e+00, %8577 ]
  %8606 = phi float [ %8603, %8597 ], [ %8590, %8577 ]
  %8607 = fcmp fast une float %8594, 0.000000e+00
  br i1 %8607, label %8608, label %8615, !dx.controlflow.hints !172

; <label>:8608                                    ; preds = %8604
  %8609 = fmul fast float %8594, 0x3FF7154760000000
  %8610 = call float @dx.op.unary.f32(i32 21, float %8609)  ; Exp(value)
  %8611 = fsub fast float 1.000000e+00, %8610
  %8612 = fmul fast float %8591, %8611
  %8613 = fsub fast float -0.000000e+00, %8612
  %8614 = fdiv fast float %8613, %8594
  br label %8615

; <label>:8615                                    ; preds = %8608, %8604
  %8616 = phi float [ %8610, %8608 ], [ 1.000000e+00, %8604 ]
  %8617 = phi float [ %8614, %8608 ], [ %8591, %8604 ]
  %8618 = fcmp fast une float %8595, 0.000000e+00
  br i1 %8618, label %8619, label %8626, !dx.controlflow.hints !172

; <label>:8619                                    ; preds = %8615
  %8620 = fmul fast float %8595, 0x3FF7154760000000
  %8621 = call float @dx.op.unary.f32(i32 21, float %8620)  ; Exp(value)
  %8622 = fsub fast float 1.000000e+00, %8621
  %8623 = fmul fast float %8592, %8622
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = fdiv fast float %8624, %8595
  br label %8626

; <label>:8626                                    ; preds = %8619, %8615
  %8627 = phi float [ %8621, %8619 ], [ 1.000000e+00, %8615 ]
  %8628 = phi float [ %8625, %8619 ], [ %8592, %8615 ]
  %8629 = fcmp fast ogt float %8525, %8527
  br i1 %8629, label %8630, label %8650

; <label>:8630                                    ; preds = %8626
  %8631 = fsub fast float 1.000000e+00, %8527
  %8632 = fmul fast float %8543, %8631
  %8633 = fmul fast float %8544, %8631
  %8634 = fmul fast float %8545, %8631
  %8635 = fmul fast float %8546, %8631
  %8636 = fcmp fast une float %8635, 0.000000e+00
  br i1 %8636, label %8637, label %8688, !dx.controlflow.hints !173

; <label>:8637                                    ; preds = %8630
  %8638 = fmul fast float %8635, 0x3FF7154760000000
  %8639 = call float @dx.op.unary.f32(i32 21, float %8638)  ; Exp(value)
  %8640 = fsub fast float 1.000000e+00, %8639
  %8641 = fmul fast float %8632, %8640
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = fmul fast float %8633, %8640
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = fmul fast float %8634, %8640
  %8646 = fsub fast float -0.000000e+00, %8645
  %8647 = fdiv fast float %8642, %8635
  %8648 = fdiv fast float %8644, %8635
  %8649 = fdiv fast float %8646, %8635
  br label %8688

; <label>:8650                                    ; preds = %8626
  %8651 = fsub fast float 1.000000e+00, %8525
  %8652 = fmul fast float %8556, %8651
  %8653 = fmul fast float %8567, %8651
  %8654 = fmul fast float %8578, %8651
  %8655 = fmul fast float %8557, %8651
  %8656 = fmul fast float %8568, %8651
  %8657 = fmul fast float %8579, %8651
  %8658 = fcmp fast une float %8655, 0.000000e+00
  br i1 %8658, label %8659, label %8666, !dx.controlflow.hints !172

; <label>:8659                                    ; preds = %8650
  %8660 = fmul fast float %8655, 0x3FF7154760000000
  %8661 = call float @dx.op.unary.f32(i32 21, float %8660)  ; Exp(value)
  %8662 = fsub fast float 1.000000e+00, %8661
  %8663 = fmul fast float %8652, %8662
  %8664 = fsub fast float -0.000000e+00, %8663
  %8665 = fdiv fast float %8664, %8655
  br label %8666

; <label>:8666                                    ; preds = %8659, %8650
  %8667 = phi float [ %8665, %8659 ], [ %8652, %8650 ]
  %8668 = phi float [ %8661, %8659 ], [ 1.000000e+00, %8650 ]
  %8669 = fcmp fast une float %8656, 0.000000e+00
  br i1 %8669, label %8670, label %8677, !dx.controlflow.hints !172

; <label>:8670                                    ; preds = %8666
  %8671 = fmul fast float %8656, 0x3FF7154760000000
  %8672 = call float @dx.op.unary.f32(i32 21, float %8671)  ; Exp(value)
  %8673 = fsub fast float 1.000000e+00, %8672
  %8674 = fmul fast float %8653, %8673
  %8675 = fsub fast float -0.000000e+00, %8674
  %8676 = fdiv fast float %8675, %8656
  br label %8677

; <label>:8677                                    ; preds = %8670, %8666
  %8678 = phi float [ %8676, %8670 ], [ %8653, %8666 ]
  %8679 = phi float [ %8672, %8670 ], [ 1.000000e+00, %8666 ]
  %8680 = fcmp fast une float %8657, 0.000000e+00
  br i1 %8680, label %8681, label %8688, !dx.controlflow.hints !172

; <label>:8681                                    ; preds = %8677
  %8682 = fmul fast float %8657, 0x3FF7154760000000
  %8683 = call float @dx.op.unary.f32(i32 21, float %8682)  ; Exp(value)
  %8684 = fsub fast float 1.000000e+00, %8683
  %8685 = fmul fast float %8654, %8684
  %8686 = fsub fast float -0.000000e+00, %8685
  %8687 = fdiv fast float %8686, %8657
  br label %8688

; <label>:8688                                    ; preds = %8681, %8677, %8637, %8630
  %8689 = phi float [ %8687, %8681 ], [ %8649, %8637 ], [ %8634, %8630 ], [ %8654, %8677 ]
  %8690 = phi float [ %8678, %8681 ], [ %8648, %8637 ], [ %8633, %8630 ], [ %8678, %8677 ]
  %8691 = phi float [ %8667, %8681 ], [ %8647, %8637 ], [ %8632, %8630 ], [ %8667, %8677 ]
  %8692 = phi float [ %8683, %8681 ], [ %8639, %8637 ], [ 1.000000e+00, %8630 ], [ 1.000000e+00, %8677 ]
  %8693 = phi float [ %8679, %8681 ], [ %8639, %8637 ], [ 1.000000e+00, %8630 ], [ %8679, %8677 ]
  %8694 = phi float [ %8668, %8681 ], [ %8639, %8637 ], [ 1.000000e+00, %8630 ], [ %8668, %8677 ]
  %8695 = fmul fast float %8694, %8606
  %8696 = fmul fast float %8693, %8617
  %8697 = fmul fast float %8692, %8628
  %8698 = fadd fast float %8695, %8691
  %8699 = fadd fast float %8696, %8690
  %8700 = fadd fast float %8697, %8689
  %8701 = fmul fast float %8694, %8605
  %8702 = fmul fast float %8693, %8616
  %8703 = fmul fast float %8692, %8627
  br label %8704

; <label>:8704                                    ; preds = %8688, %8499
  %8705 = phi float [ %8703, %8688 ], [ %8505, %8499 ]
  %8706 = phi float [ %8702, %8688 ], [ %8504, %8499 ]
  %8707 = phi float [ %8701, %8688 ], [ %8503, %8499 ]
  %8708 = phi float [ %8700, %8688 ], [ %8502, %8499 ]
  %8709 = phi float [ %8699, %8688 ], [ %8501, %8499 ]
  %8710 = phi float [ %8698, %8688 ], [ %8500, %8499 ]
  %8711 = fmul fast float %8710, %7656
  %8712 = fmul fast float %8709, %7656
  %8713 = fmul fast float %8708, %7656
  %8714 = fmul fast float %8707, %7947
  %8715 = call float @dx.op.dot3.f32(i32 55, float %8707, float %8706, float %8705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8716 = call float @dx.op.dot3.f32(i32 55, float %8711, float %8712, float %8713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8717 = select i1 %271, float %8715, float %8707
  %8718 = select i1 %271, float %8715, float %8706
  %8719 = select i1 %271, float 1.000000e+00, float %8705
  %8720 = select i1 %271, float %8716, float %8711
  %8721 = select i1 %271, float 0.000000e+00, float %8712
  %8722 = select i1 %271, float 0.000000e+00, float %8713
  %8723 = fmul fast float %8717, %7941
  %8724 = fmul fast float %8718, %7942
  %8725 = fmul fast float %8719, %7943
  %8726 = fadd fast float %8723, %8720
  %8727 = fadd fast float %8724, %8721
  %8728 = fadd fast float %8722, %8725
  %8729 = fmul fast float %8717, %7944
  %8730 = fmul fast float %8718, %7945
  %8731 = fmul fast float %8719, %7946
  %8732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.i32 %8732, 0
  %8734 = icmp eq i32 %8733, 0
  br i1 %8734, label %9102, label %8735, !dx.controlflow.hints !174

; <label>:8735                                    ; preds = %8704
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 2
  %8738 = extractvalue %dx.types.CBufRet.f32 %8736, 3
  %8739 = fmul fast float %8737, %116
  %8740 = fmul fast float %8738, %117
  %8741 = fmul fast float %8739, 2.000000e+00
  %8742 = fmul fast float %8740, 2.000000e+00
  %8743 = fsub fast float 1.000000e+00, %8741
  %8744 = fsub fast float 1.000000e+00, %8742
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = extractvalue %dx.types.CBufRet.f32 %8745, 1
  %8748 = extractvalue %dx.types.CBufRet.f32 %8745, 2
  %8749 = fmul fast float %8743, %8746
  %8750 = fmul fast float %8743, %8747
  %8751 = fmul fast float %8743, %8748
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8755 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8756 = fmul fast float %8744, %8753
  %8757 = fmul fast float %8744, %8754
  %8758 = fmul fast float %8744, %8755
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %8761 = extractvalue %dx.types.CBufRet.f32 %8759, 1
  %8762 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8763 = fadd fast float %8756, %8760
  %8764 = fadd fast float %8763, %8749
  %8765 = fadd fast float %8757, %8761
  %8766 = fadd fast float %8765, %8750
  %8767 = fadd fast float %8758, %8762
  %8768 = fadd fast float %8767, %8751
  %8769 = fmul fast float %8764, %7940
  %8770 = fmul fast float %8766, %7940
  %8771 = fmul fast float %8768, %7940
  %8772 = fmul fast float %8769, %8769
  %8773 = fmul fast float %8770, %8770
  %8774 = fadd fast float %8772, %8773
  %8775 = fmul fast float %8771, %8771
  %8776 = fadd fast float %8774, %8775
  %8777 = call float @dx.op.unary.f32(i32 24, float %8776)  ; Sqrt(value)
  %8778 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %8779 = fsub fast float %8777, %8778
  %8780 = extractvalue %dx.types.CBufRet.f32 %7667, 2
  %8781 = fmul fast float %8779, %8780
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fadd fast float %8782, -5.000000e-01
  %8784 = fmul fast float %8783, 2.000000e+00
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8787 = call float @dx.op.binary.f32(i32 36, float %8786, float %8784)  ; FMin(a,b)
  %8788 = fsub fast float -0.000000e+00, %8786
  %8789 = fcmp fast ogt float %8787, %8788
  br i1 %8789, label %8790, label %9102, !dx.controlflow.hints !175

; <label>:8790                                    ; preds = %8735
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 3
  %8793 = fcmp fast ogt float %8792, 0.000000e+00
  br i1 %8793, label %8794, label %8869, !dx.controlflow.hints !176

; <label>:8794                                    ; preds = %8790
  %8795 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8796 = extractvalue %dx.types.Dimensions %8795, 0
  %8797 = sitofp i32 %8796 to float
  %8798 = extractvalue %dx.types.Dimensions %8795, 1
  %8799 = sitofp i32 %8798 to float
  %8800 = fmul fast float %8739, %8797
  %8801 = fmul fast float %8740, %8799
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = fptoui float %8804 to i32
  %8806 = fptoui float %8800 to i32
  %8807 = fptoui float %8801 to i32
  %8808 = and i32 %8805, 31
  %8809 = lshr i32 %8806, %8808
  %8810 = lshr i32 %8807, %8808
  %8811 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8805, i32 %8809, i32 %8810, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8812 = extractvalue %dx.types.ResRet.f32 %8811, 0
  %8813 = fcmp fast olt float %8812, -1.000000e+00
  %8814 = fcmp fast ogt float %8812, -1.000000e+00
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 1
  %8817 = select i1 %8814, float %8816, float 1.000000e+00
  %8818 = fadd fast float %8812, 1.000000e+00
  %8819 = fmul fast float %8817, %8818
  %8820 = call float @dx.op.unary.f32(i32 6, float %8819)  ; FAbs(value)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8822 = fcmp fast oge float %8820, %8821
  %8823 = select i1 %8822, float 0x4197782600000000, float %8820
  %8824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.CBufRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.CBufRet.f32 %8824, 2
  %8828 = select i1 %8813, float %8825, float %8746
  %8829 = select i1 %8813, float %8826, float %8747
  %8830 = select i1 %8813, float %8827, float %8748
  %8831 = fmul fast float %8828, %8743
  %8832 = fmul fast float %8829, %8743
  %8833 = fmul fast float %8830, %8743
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8838 = select i1 %8813, float %8835, float %8753
  %8839 = select i1 %8813, float %8836, float %8754
  %8840 = select i1 %8813, float %8837, float %8755
  %8841 = fmul fast float %8838, %8744
  %8842 = fmul fast float %8839, %8744
  %8843 = fmul fast float %8840, %8744
  %8844 = fadd fast float %8841, %8831
  %8845 = fadd fast float %8842, %8832
  %8846 = fadd fast float %8843, %8833
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8851 = select i1 %8813, float %8848, float %8760
  %8852 = select i1 %8813, float %8849, float %8761
  %8853 = select i1 %8813, float %8850, float %8762
  %8854 = fadd fast float %8844, %8851
  %8855 = fadd fast float %8845, %8852
  %8856 = fadd fast float %8846, %8853
  %8857 = fmul fast float %8854, %8823
  %8858 = fmul fast float %8855, %8823
  %8859 = fmul fast float %8856, %8823
  %8860 = fmul fast float %8857, %8857
  %8861 = fmul fast float %8858, %8858
  %8862 = fadd fast float %8860, %8861
  %8863 = fmul fast float %8859, %8859
  %8864 = fadd fast float %8862, %8863
  %8865 = call float @dx.op.unary.f32(i32 24, float %8864)  ; Sqrt(value)
  %8866 = fsub fast float %8865, %8778
  %8867 = fmul fast float %8866, %8780
  %8868 = call float @dx.op.unary.f32(i32 7, float %8867)  ; Saturate(value)
  br label %8869

; <label>:8869                                    ; preds = %8794, %8790
  %8870 = phi float [ %8868, %8794 ], [ 1.000000e+00, %8790 ]
  %8871 = fmul fast float %8787, 5.000000e-01
  %8872 = fadd fast float %8871, 5.000000e-01
  %8873 = call float @dx.op.unary.f32(i32 22, float %8872)  ; Frc(value)
  %8874 = call float @dx.op.unary.f32(i32 27, float %8873)  ; Round_ni(value)
  %8875 = call float @dx.op.unary.f32(i32 22, float %8873)  ; Frc(value)
  %8876 = fmul fast float %8875, 2.000000e+00
  %8877 = fadd fast float %8876, -1.000000e+00
  %8878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8739, float %8740, float %8874, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8879 = extractvalue %dx.types.ResRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.ResRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.ResRet.f32 %8878, 2
  %8882 = extractvalue %dx.types.ResRet.f32 %8878, 3
  %8883 = fadd fast float %8879, -5.000000e-01
  %8884 = fadd fast float %8881, -5.000000e-01
  %8885 = fmul fast float %8883, 0xBFD5555560000000
  %8886 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8884, float %8885)  ; FMad(a,b,c)
  %8887 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8880, float 0.000000e+00)  ; FMad(a,b,c)
  %8888 = fadd fast float %8887, %8882
  %8889 = fmul fast float %8883, -7.500000e-01
  %8890 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8884, float %8889)  ; FMad(a,b,c)
  %8891 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8880, float 0.000000e+00)  ; FMad(a,b,c)
  %8892 = fadd fast float %8891, %8882
  %8893 = call float @dx.op.binary.f32(i32 35, float %8886, float -1.000000e+00)  ; FMax(a,b)
  %8894 = call float @dx.op.binary.f32(i32 35, float %8888, float -1.000000e+00)  ; FMax(a,b)
  %8895 = call float @dx.op.binary.f32(i32 35, float %8890, float -1.000000e+00)  ; FMax(a,b)
  %8896 = call float @dx.op.binary.f32(i32 35, float %8892, float -1.000000e+00)  ; FMax(a,b)
  %8897 = call float @dx.op.binary.f32(i32 36, float %8893, float 1.000000e+00)  ; FMin(a,b)
  %8898 = call float @dx.op.binary.f32(i32 36, float %8894, float 1.000000e+00)  ; FMin(a,b)
  %8899 = call float @dx.op.binary.f32(i32 36, float %8895, float 1.000000e+00)  ; FMin(a,b)
  %8900 = call float @dx.op.binary.f32(i32 36, float %8896, float 1.000000e+00)  ; FMin(a,b)
  %8901 = fcmp fast olt float %8897, 0x3FEFFF8020000000
  br i1 %8901, label %8902, label %9017, !dx.controlflow.hints !177

; <label>:8902                                    ; preds = %8869
  %8903 = extractvalue %dx.types.CBufRet.f32 %8785, 3
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 0
  %8906 = extractvalue %dx.types.CBufRet.f32 %8904, 1
  %8907 = extractvalue %dx.types.CBufRet.f32 %8904, 2
  %8908 = extractvalue %dx.types.CBufRet.f32 %8904, 3
  %8909 = fsub fast float %8905, %8897
  %8910 = fsub fast float %8906, %8898
  %8911 = fsub fast float %8907, %8899
  %8912 = fsub fast float %8908, %8900
  %8913 = fmul fast float %8909, %8903
  %8914 = fmul fast float %8910, %8903
  %8915 = fmul fast float %8911, %8903
  %8916 = fmul fast float %8912, %8903
  %8917 = fadd fast float %8913, %8897
  %8918 = fadd fast float %8914, %8898
  %8919 = fsub fast float -0.000000e+00, %8918
  %8920 = fadd fast float %8915, %8899
  %8921 = fadd fast float %8916, %8900
  %8922 = fmul fast float %8917, %8917
  %8923 = fsub fast float %8918, %8922
  %8924 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8923)  ; FMax(a,b)
  %8925 = fdiv fast float 1.000000e+00, %8924
  %8926 = fmul fast float %8918, %8917
  %8927 = fsub fast float %8920, %8926
  %8928 = fsub fast float %8877, %8917
  %8929 = fmul fast float %8877, %8877
  %8930 = fsub fast float %8929, %8918
  %8931 = fmul fast float %8928, %8925
  %8932 = fmul fast float %8931, %8927
  %8933 = fsub fast float %8930, %8932
  %8934 = fmul fast float %8918, %8918
  %8935 = fsub fast float %8921, %8934
  %8936 = fmul fast float %8927, %8927
  %8937 = fmul fast float %8936, %8925
  %8938 = fsub fast float %8935, %8937
  %8939 = fdiv fast float %8933, %8938
  %8940 = fmul fast float %8927, %8939
  %8941 = fsub fast float %8928, %8940
  %8942 = fmul fast float %8941, %8925
  %8943 = fmul fast float %8942, %8917
  %8944 = fsub fast float 1.000000e+00, %8943
  %8945 = fmul fast float %8918, %8939
  %8946 = fsub fast float %8944, %8945
  %8947 = fmul fast float %8942, %8942
  %8948 = fmul fast float %8939, 4.000000e+00
  %8949 = fmul fast float %8948, %8946
  %8950 = fsub fast float %8947, %8949
  %8951 = call float @dx.op.unary.f32(i32 24, float %8950)  ; Sqrt(value)
  %8952 = fcmp fast oge float %8942, 0.000000e+00
  %8953 = fsub fast float -0.000000e+00, %8951
  %8954 = select i1 %8952, float %8953, float %8951
  %8955 = fsub fast float %8954, %8942
  %8956 = fdiv fast float %8955, %8939
  %8957 = fdiv fast float %8946, %8955
  %8958 = fmul fast float %8956, 5.000000e-01
  %8959 = fmul fast float %8957, 2.000000e+00
  %8960 = select i1 %8952, float %8958, float %8959
  %8961 = select i1 %8952, float %8959, float %8958
  %8962 = call float @dx.op.binary.f32(i32 35, float %8960, float %8961)  ; FMax(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8960, float %8961)  ; FMin(a,b)
  %8964 = fcmp fast ogt float %8877, %8963
  br i1 %8964, label %8965, label %8975

; <label>:8965                                    ; preds = %8902
  %8966 = fsub fast float %8877, %8963
  %8967 = fsub fast float %8962, %8963
  %8968 = fmul fast float %8966, %8967
  %8969 = fmul fast float %8962, %8877
  %8970 = fadd fast float %8962, %8877
  %8971 = fmul fast float %8970, %8917
  %8972 = fadd fast float %8969, %8918
  %8973 = fsub fast float %8972, %8971
  %8974 = fdiv fast float %8973, %8968
  br label %8975

; <label>:8975                                    ; preds = %8965, %8902
  %8976 = phi float [ %8974, %8965 ], [ 0.000000e+00, %8902 ]
  %8977 = fcmp fast ogt float %8877, %8962
  %8978 = fsub fast float %8877, %8962
  br i1 %8977, label %8979, label %8989

; <label>:8979                                    ; preds = %8975
  %8980 = fsub fast float %8962, %8963
  %8981 = fmul fast float %8980, %8978
  %8982 = fmul fast float %8963, %8877
  %8983 = fadd fast float %8963, %8877
  %8984 = fmul fast float %8983, %8917
  %8985 = fsub fast float %8919, %8982
  %8986 = fadd fast float %8985, %8984
  %8987 = fdiv fast float %8986, %8981
  %8988 = fadd fast float %8987, %8976
  br label %8989

; <label>:8989                                    ; preds = %8979, %8975
  %8990 = phi float [ %8988, %8979 ], [ %8976, %8975 ]
  %8991 = fsub fast float %8877, %8963
  %8992 = fmul fast float %8991, %8978
  %8993 = fmul fast float %8963, %8962
  %8994 = fadd fast float %8963, %8962
  %8995 = fmul fast float %8994, %8917
  %8996 = fadd fast float %8993, %8918
  %8997 = fsub fast float %8996, %8995
  %8998 = fdiv fast float %8997, %8992
  %8999 = call float @dx.op.unary.f32(i32 7, float %8990)  ; Saturate(value)
  %9000 = fcmp fast oeq float %7668, 0.000000e+00
  %9001 = extractvalue %dx.types.CBufRet.f32 %8785, 0
  %9002 = fcmp fast oeq float %9001, 0.000000e+00
  %9003 = or i1 %9000, %9002
  %9004 = fmul fast float %9001, 2.000000e+00
  %9005 = fadd fast float %8786, %8787
  %9006 = fdiv fast float %9005, %9004
  %9007 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  %9008 = fmul fast float %9007, 2.000000e+00
  %9009 = fsub fast float 3.000000e+00, %9008
  %9010 = fmul fast float %9007, %9007
  %9011 = fmul fast float %9010, %9009
  %9012 = select i1 %9003, float 1.000000e+00, float %9011
  %9013 = fmul fast float %8998, %7668
  %9014 = fadd fast float %8999, %9013
  %9015 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9016 = fmul fast float %9012, %9015
  br label %9017

; <label>:9017                                    ; preds = %8989, %8869
  %9018 = phi float [ %9016, %8989 ], [ 0.000000e+00, %8869 ]
  %9019 = fsub fast float 1.000000e+00, %9018
  %9020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8739, float %8740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9021 = extractvalue %dx.types.ResRet.f32 %9020, 0
  %9022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.i32 %9022, 2
  %9024 = icmp eq i32 %9023, 0
  br i1 %9024, label %9030, label %9025

; <label>:9025                                    ; preds = %9017
  %9026 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9027 = fadd fast float %9021, -1.000000e+00
  %9028 = fmul fast float %9026, %9027
  %9029 = fadd fast float %9028, 1.000000e+00
  br label %9030

; <label>:9030                                    ; preds = %9025, %9017
  %9031 = phi float [ %9029, %9025 ], [ %9019, %9017 ]
  br i1 %8793, label %9032, label %9050

; <label>:9032                                    ; preds = %9030
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 1
  %9035 = fsub fast float %8870, %9034
  %9036 = call float @dx.op.unary.f32(i32 7, float %9035)  ; Saturate(value)
  %9037 = fsub fast float %8870, %8792
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = fsub fast float %9036, %9038
  %9040 = fsub fast float %8872, %9038
  %9041 = fdiv fast float %9040, %9039
  %9042 = call float @dx.op.unary.f32(i32 7, float %9041)  ; Saturate(value)
  %9043 = fmul fast float %9042, 2.000000e+00
  %9044 = fsub fast float 3.000000e+00, %9043
  %9045 = fsub fast float %9021, %9031
  %9046 = fmul fast float %9042, %9042
  %9047 = fmul fast float %9046, %9045
  %9048 = fmul fast float %9047, %9044
  %9049 = fadd fast float %9048, %9031
  br label %9050

; <label>:9050                                    ; preds = %9032, %9030
  %9051 = phi float [ %9049, %9032 ], [ %9031, %9030 ]
  %9052 = call float @dx.op.binary.f32(i32 35, float %9021, float %9051)  ; FMax(a,b)
  %9053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.i32 %9053, 2
  %9055 = and i32 %9054, 1
  %9056 = icmp eq i32 %9055, 0
  %9057 = fcmp fast une float %9052, 1.000000e+00
  %9058 = and i1 %9057, %9056
  br i1 %9058, label %9059, label %9078

; <label>:9059                                    ; preds = %9050
  %9060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8739, float %8740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9061 = extractvalue %dx.types.ResRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.ResRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.ResRet.f32 %9060, 2
  %9064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9065 = extractvalue %dx.types.CBufRet.f32 %9064, 1
  %9066 = fmul fast float %9065, %9061
  %9067 = fmul fast float %9065, %9062
  %9068 = fmul fast float %9065, %9063
  %9069 = fcmp fast ogt float %9021, 0x3FEFFF2E40000000
  %9070 = fsub fast float 1.000000e+00, %9052
  %9071 = fsub fast float 1.000000e+00, %9021
  %9072 = fdiv fast float %9070, %9071
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = select i1 %9069, float 0.000000e+00, float %9073
  %9075 = fmul fast float %9066, %9074
  %9076 = fmul fast float %9067, %9074
  %9077 = fmul fast float %9068, %9074
  br label %9078

; <label>:9078                                    ; preds = %9059, %9050
  %9079 = phi float [ 0.000000e+00, %9050 ], [ %9075, %9059 ]
  %9080 = phi float [ 0.000000e+00, %9050 ], [ %9076, %9059 ]
  %9081 = phi float [ 0.000000e+00, %9050 ], [ %9077, %9059 ]
  %9082 = fmul fast float %9079, %7656
  %9083 = fmul fast float %9080, %7656
  %9084 = fmul fast float %9081, %7656
  %9085 = fmul fast float %9052, %8714
  %9086 = call float @dx.op.dot3.f32(i32 55, float %9052, float %9052, float %9052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9087 = call float @dx.op.dot3.f32(i32 55, float %9082, float %9083, float %9084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9088 = select i1 %271, float %9086, float %9052
  %9089 = select i1 %271, float 1.000000e+00, float %9052
  %9090 = select i1 %271, float %9087, float %9082
  %9091 = select i1 %271, float 0.000000e+00, float %9083
  %9092 = select i1 %271, float 0.000000e+00, float %9084
  %9093 = fmul fast float %9088, %8726
  %9094 = fmul fast float %9088, %8727
  %9095 = fmul fast float %9089, %8728
  %9096 = fadd fast float %9093, %9090
  %9097 = fadd fast float %9094, %9091
  %9098 = fadd fast float %9092, %9095
  %9099 = fmul fast float %9088, %8729
  %9100 = fmul fast float %9088, %8730
  %9101 = fmul fast float %9089, %8731
  br label %9102

; <label>:9102                                    ; preds = %9078, %8735, %8704, %7936
  %9103 = phi float [ %7941, %7936 ], [ %8726, %8704 ], [ %9096, %9078 ], [ %8726, %8735 ]
  %9104 = phi float [ %7942, %7936 ], [ %8727, %8704 ], [ %9097, %9078 ], [ %8727, %8735 ]
  %9105 = phi float [ %7943, %7936 ], [ %8728, %8704 ], [ %9098, %9078 ], [ %8728, %8735 ]
  %9106 = phi float [ %7944, %7936 ], [ %8729, %8704 ], [ %9099, %9078 ], [ %8729, %8735 ]
  %9107 = phi float [ %7945, %7936 ], [ %8730, %8704 ], [ %9100, %9078 ], [ %8730, %8735 ]
  %9108 = phi float [ %7946, %7936 ], [ %8731, %8704 ], [ %9101, %9078 ], [ %8731, %8735 ]
  %9109 = phi float [ %7947, %7936 ], [ %8714, %8704 ], [ %9085, %9078 ], [ %8714, %8735 ]
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9113 = fmul fast float %9111, %116
  %9114 = fmul fast float %9112, %117
  %9115 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  %9116 = call float @dx.op.unary.f32(i32 7, float %9114)  ; Saturate(value)
  %9117 = select i1 %7678, i32 2, i32 0
  %9118 = or i32 %9117, 1
  %9119 = uitofp i32 %9118 to float
  %9120 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9115, float %9116, float %9119, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9121 = extractvalue %dx.types.ResRet.f32 %9120, 0
  %9122 = extractvalue %dx.types.ResRet.f32 %9120, 1
  %9123 = extractvalue %dx.types.ResRet.f32 %9120, 2
  %9124 = extractvalue %dx.types.ResRet.f32 %9120, 3
  %9125 = add nuw nsw i32 %9117, 2
  %9126 = uitofp i32 %9125 to float
  %9127 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9115, float %9116, float %9126, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9128 = extractvalue %dx.types.ResRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.ResRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.ResRet.f32 %9127, 2
  %9131 = extractvalue %dx.types.ResRet.f32 %9127, 3
  %9132 = call float @dx.op.binary.f32(i32 35, float %9122, float %9123)  ; FMax(a,b)
  %9133 = call float @dx.op.binary.f32(i32 35, float %9121, float %9132)  ; FMax(a,b)
  %9134 = call float @dx.op.binary.f32(i32 35, float %9133, float %9124)  ; FMax(a,b)
  %9135 = call float @dx.op.binary.f32(i32 36, float %9129, float %9130)  ; FMin(a,b)
  %9136 = call float @dx.op.binary.f32(i32 36, float %9128, float %9135)  ; FMin(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %9136, float %9131)  ; FMin(a,b)
  %9138 = fmul fast float %9134, 2.550000e+02
  %9139 = fadd fast float %9138, 0x3F70101020000000
  %9140 = fptoui float %9139 to i32
  %9141 = fmul fast float %9137, 2.550000e+02
  %9142 = fadd fast float %9141, 0x3F70101020000000
  %9143 = fptoui float %9142 to i32
  %9144 = icmp ult i32 %9140, %9143
  br i1 %9144, label %9145, label %9314

; <label>:9145                                    ; preds = %9102
  %9146 = fcmp fast ogt float %106, 9.843750e-01
  %9147 = fadd fast float %7940, -4.000000e+00
  %9148 = select i1 %9146, float -4.000000e+00, float %9147
  %9149 = call float @dx.op.binary.f32(i32 35, float %9148, float 0.000000e+00)  ; FMax(a,b)
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = fadd fast float %9151, %9149
  %9153 = extractvalue %dx.types.CBufRet.f32 %9150, 2
  %9154 = fmul fast float %9152, %9153
  %9155 = call float @dx.op.unary.f32(i32 23, float %9154)  ; Log(value)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9150, 3
  %9157 = fmul fast float %9156, %9155
  %9158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9159 = extractvalue %dx.types.CBufRet.f32 %9158, 2
  %9160 = fmul fast float %9157, %9159
  %9161 = call float @dx.op.unary.f32(i32 7, float %9160)  ; Saturate(value)
  %9162 = uitofp i32 %9140 to float
  %9163 = uitofp i32 %9143 to float
  %9164 = fadd fast float %9162, 5.000000e-01
  %9165 = fadd fast float %9163, 5.000000e-01
  %9166 = fmul fast float %9159, %9164
  %9167 = fmul fast float %9159, %9165
  %9168 = fadd fast float %9166, 0x3F0FFB4800000000
  %9169 = fadd fast float %9167, 0xBF0FFB4800000000
  %9170 = call float @dx.op.binary.f32(i32 35, float %9161, float %9168)  ; FMax(a,b)
  %9171 = call float @dx.op.binary.f32(i32 36, float %9170, float %9169)  ; FMin(a,b)
  %9172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9173 = extractvalue %dx.types.CBufRet.f32 %9172, 1
  %9174 = extractvalue %dx.types.CBufRet.f32 %9172, 2
  %9175 = extractvalue %dx.types.CBufRet.f32 %9172, 0
  %9176 = select i1 %7678, float %9175, float 0.000000e+00
  %9177 = fmul fast float %9173, %9171
  %9178 = fadd fast float %9176, %9177
  %9179 = fadd fast float %9176, %9174
  %9180 = fsub fast float %9173, %9174
  %9181 = fadd fast float %9180, %9176
  %9182 = call float @dx.op.binary.f32(i32 35, float %9178, float %9179)  ; FMax(a,b)
  %9183 = call float @dx.op.binary.f32(i32 36, float %9182, float %9181)  ; FMin(a,b)
  %9184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9115, float %9116, float %9183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9185 = extractvalue %dx.types.ResRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.ResRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.ResRet.f32 %9184, 2
  %9188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9189 = extractvalue %dx.types.CBufRet.i32 %9188, 0
  %9190 = extractvalue %dx.types.CBufRet.i32 %9188, 1
  %9191 = uitofp i32 %9189 to float
  %9192 = uitofp i32 %9190 to float
  %9193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9193, 0
  %9195 = extractvalue %dx.types.CBufRet.f32 %9193, 1
  %9196 = fmul fast float %9191, %9115
  %9197 = fmul fast float %9192, %9116
  %9198 = fadd fast float %9196, -5.000000e-01
  %9199 = fadd fast float %9197, -5.000000e-01
  %9200 = call float @dx.op.unary.f32(i32 22, float %9198)  ; Frc(value)
  %9201 = call float @dx.op.unary.f32(i32 22, float %9199)  ; Frc(value)
  %9202 = fmul fast float %9200, %9200
  %9203 = fmul fast float %9202, %9200
  %9204 = fsub fast float 3.000000e+00, %9200
  %9205 = fmul fast float %9202, %9204
  %9206 = fmul fast float %9200, 3.000000e+00
  %9207 = fmul fast float %9203, 3.000000e+00
  %9208 = fmul fast float %9202, 6.000000e+00
  %9209 = fsub fast float %9207, %9208
  %9210 = fadd fast float %9209, 4.000000e+00
  %9211 = fmul fast float %9210, 0x3FC5555560000000
  %9212 = fmul fast float %9203, -3.000000e+00
  %9213 = fadd fast float %9202, %9200
  %9214 = fmul fast float %9213, 3.000000e+00
  %9215 = fadd fast float %9212, 1.000000e+00
  %9216 = fadd fast float %9215, %9214
  %9217 = fmul fast float %9203, 0x3FC5555560000000
  %9218 = fmul fast float %9201, %9201
  %9219 = fmul fast float %9218, %9201
  %9220 = fsub fast float 3.000000e+00, %9201
  %9221 = fmul fast float %9218, %9220
  %9222 = fmul fast float %9201, 3.000000e+00
  %9223 = fmul fast float %9219, 3.000000e+00
  %9224 = fmul fast float %9218, 6.000000e+00
  %9225 = fsub fast float %9223, %9224
  %9226 = fadd fast float %9225, 4.000000e+00
  %9227 = fmul fast float %9226, 0x3FC5555560000000
  %9228 = fmul fast float %9219, -3.000000e+00
  %9229 = fadd fast float %9218, %9201
  %9230 = fmul fast float %9229, 3.000000e+00
  %9231 = fadd fast float %9228, 1.000000e+00
  %9232 = fadd fast float %9231, %9230
  %9233 = fmul fast float %9219, 0x3FC5555560000000
  %9234 = fadd fast float %9200, 1.000000e+00
  %9235 = fsub fast float 1.000000e+00, %9206
  %9236 = fadd fast float %9235, %9205
  %9237 = fadd fast float %9236, %9210
  %9238 = fmul fast float %9237, 0x3FC5555560000000
  %9239 = fdiv fast float %9211, %9238
  %9240 = fsub fast float %9234, %9239
  %9241 = fsub fast float 1.000000e+00, %9200
  %9242 = fadd fast float %9216, %9203
  %9243 = fmul fast float %9242, 0x3FC5555560000000
  %9244 = fdiv fast float %9217, %9243
  %9245 = fadd fast float %9241, %9244
  %9246 = fadd fast float %9201, 1.000000e+00
  %9247 = fsub fast float 1.000000e+00, %9222
  %9248 = fadd fast float %9247, %9221
  %9249 = fadd fast float %9248, %9226
  %9250 = fmul fast float %9249, 0x3FC5555560000000
  %9251 = fdiv fast float %9227, %9250
  %9252 = fsub fast float %9246, %9251
  %9253 = fsub fast float 1.000000e+00, %9201
  %9254 = fadd fast float %9232, %9219
  %9255 = fmul fast float %9254, 0x3FC5555560000000
  %9256 = fdiv fast float %9233, %9255
  %9257 = fadd fast float %9256, %9253
  %9258 = fmul fast float %9240, %9194
  %9259 = fsub fast float %9115, %9258
  %9260 = fmul fast float %9245, %9194
  %9261 = fadd fast float %9260, %9115
  %9262 = fmul fast float %9257, %9195
  %9263 = fadd fast float %9262, %9116
  %9264 = fmul fast float %9252, %9195
  %9265 = fsub fast float %9116, %9264
  %9266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9259, float %9265, float %9183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9267 = extractvalue %dx.types.ResRet.f32 %9266, 0
  %9268 = extractvalue %dx.types.ResRet.f32 %9266, 1
  %9269 = extractvalue %dx.types.ResRet.f32 %9266, 2
  %9270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9261, float %9265, float %9183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9271 = extractvalue %dx.types.ResRet.f32 %9270, 0
  %9272 = extractvalue %dx.types.ResRet.f32 %9270, 1
  %9273 = extractvalue %dx.types.ResRet.f32 %9270, 2
  %9274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9259, float %9263, float %9183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9275 = extractvalue %dx.types.ResRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.ResRet.f32 %9274, 1
  %9277 = extractvalue %dx.types.ResRet.f32 %9274, 2
  %9278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9261, float %9263, float %9183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9279 = extractvalue %dx.types.ResRet.f32 %9278, 0
  %9280 = extractvalue %dx.types.ResRet.f32 %9278, 1
  %9281 = extractvalue %dx.types.ResRet.f32 %9278, 2
  %9282 = fsub fast float %9275, %9267
  %9283 = fsub fast float %9276, %9268
  %9284 = fsub fast float %9277, %9269
  %9285 = fmul fast float %9282, %9255
  %9286 = fmul fast float %9283, %9255
  %9287 = fmul fast float %9284, %9255
  %9288 = fadd fast float %9285, %9267
  %9289 = fadd fast float %9286, %9268
  %9290 = fadd fast float %9287, %9269
  %9291 = fsub fast float %9279, %9271
  %9292 = fsub fast float %9280, %9272
  %9293 = fsub fast float %9281, %9273
  %9294 = fmul fast float %9291, %9255
  %9295 = fmul fast float %9292, %9255
  %9296 = fmul fast float %9293, %9255
  %9297 = fsub fast float %9271, %9288
  %9298 = fadd fast float %9297, %9294
  %9299 = fsub fast float %9272, %9289
  %9300 = fadd fast float %9299, %9295
  %9301 = fsub fast float %9273, %9290
  %9302 = fadd fast float %9301, %9296
  %9303 = fmul fast float %9298, %9243
  %9304 = fmul fast float %9300, %9243
  %9305 = fmul fast float %9302, %9243
  %9306 = fadd fast float %9303, %9288
  %9307 = fadd fast float %9304, %9289
  %9308 = fadd fast float %9305, %9290
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 1
  %9311 = fmul fast float %9306, %9310
  %9312 = fmul fast float %9307, %9310
  %9313 = fmul fast float %9308, %9310
  br label %9314

; <label>:9314                                    ; preds = %9145, %9102
  %9315 = phi float [ %9185, %9145 ], [ 1.000000e+00, %9102 ]
  %9316 = phi float [ %9186, %9145 ], [ 1.000000e+00, %9102 ]
  %9317 = phi float [ %9187, %9145 ], [ 1.000000e+00, %9102 ]
  %9318 = phi float [ %9311, %9145 ], [ 0.000000e+00, %9102 ]
  %9319 = phi float [ %9312, %9145 ], [ 0.000000e+00, %9102 ]
  %9320 = phi float [ %9313, %9145 ], [ 0.000000e+00, %9102 ]
  %9321 = fmul fast float %9318, %7656
  %9322 = fmul fast float %9319, %7656
  %9323 = fmul fast float %9320, %7656
  %9324 = fmul fast float %9315, %9109
  %9325 = call float @dx.op.dot3.f32(i32 55, float %9315, float %9316, float %9317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9326 = call float @dx.op.dot3.f32(i32 55, float %9321, float %9322, float %9323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9327 = select i1 %271, float %9325, float %9315
  %9328 = select i1 %271, float %9325, float %9316
  %9329 = select i1 %271, float 1.000000e+00, float %9317
  %9330 = select i1 %271, float %9326, float %9321
  %9331 = select i1 %271, float 0.000000e+00, float %9322
  %9332 = select i1 %271, float 0.000000e+00, float %9323
  %9333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.i32 %9333, 3
  %9335 = and i32 %9334, 3
  %9336 = icmp ne i32 %9335, 0
  %9337 = and i32 %9334, 4
  %9338 = icmp ne i32 %9337, 0
  %9339 = and i1 %9336, %9338
  %9340 = and i1 %271, %9339
  br i1 %9340, label %9341, label %9347

; <label>:9341                                    ; preds = %9314
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9344 = fadd fast float %9324, -1.000000e+00
  %9345 = fmul fast float %9343, %9344
  %9346 = fadd fast float %9345, 1.000000e+00
  br label %9347

; <label>:9347                                    ; preds = %9341, %9314
  %9348 = phi float [ %9346, %9341 ], [ %9324, %9314 ]
  %9349 = fadd fast float %9106, %9103
  %9350 = fmul fast float %9327, %9349
  %9351 = fadd fast float %9350, %9330
  %9352 = fadd fast float %9107, %9104
  %9353 = fmul fast float %9328, %9352
  %9354 = fadd fast float %9353, %9331
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 0
  br i1 %271, label %9357, label %9380

; <label>:9357                                    ; preds = %9347
  %9358 = fadd fast float %9351, %9354
  %9359 = fmul fast float %9356, %9358
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 3
  %9362 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %9363 = fsub fast float %7665, %7659
  %9364 = fadd fast float %9363, %7666
  %9365 = fsub fast float %9364, %9362
  %9366 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %9367 = fmul fast float %9365, %9366
  %9368 = call float @dx.op.unary.f32(i32 7, float %9367)  ; Saturate(value)
  %9369 = fsub fast float %9368, %9361
  %9370 = fmul fast float %9369, %9348
  %9371 = fadd fast float %9370, %9361
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 0
  %9374 = fsub fast float %9371, %9373
  %9375 = fmul fast float %9374, 1.000000e+01
  %9376 = call float @dx.op.unary.f32(i32 7, float %9375)  ; Saturate(value)
  %9377 = fmul fast float %9376, %7655
  %9378 = fadd fast float %9377, %7656
  %9379 = fmul fast float %9378, %9371
  br label %9404

; <label>:9380                                    ; preds = %9347
  %9381 = fadd fast float %9108, %9105
  %9382 = fmul fast float %9329, %9381
  %9383 = fadd fast float %9382, %9332
  %9384 = fmul fast float %9356, %9351
  %9385 = fmul fast float %9356, %9354
  %9386 = fmul fast float %9356, %9383
  %9387 = call float @dx.op.binary.f32(i32 35, float %9385, float %9386)  ; FMax(a,b)
  %9388 = call float @dx.op.binary.f32(i32 35, float %9384, float %9387)  ; FMax(a,b)
  %9389 = call float @dx.op.binary.f32(i32 35, float %9388, float %7656)  ; FMax(a,b)
  %9390 = fcmp fast ugt float %9389, 0x3F10000000000000
  br i1 %9390, label %9392, label %9391

; <label>:9391                                    ; preds = %9380
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9392

; <label>:9392                                    ; preds = %9391, %9380
  %9393 = add i32 %58, 356
  %9394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9393, i32 undef)  ; BufferLoad(srv,index,wot)
  %9395 = extractvalue %dx.types.ResRet.i32 %9394, 0
  %9396 = and i32 %9395, 32
  %9397 = icmp eq i32 %9396, 0
  br i1 %9397, label %9404, label %9398

; <label>:9398                                    ; preds = %9392
  %9399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9399, 0
  %9401 = fmul fast float %9400, 0x3FE99999A0000000
  %9402 = fadd fast float %9400, %9384
  %9403 = fadd fast float %9401, %9386
  br label %9404

; <label>:9404                                    ; preds = %9398, %9392, %9357
  %9405 = phi float [ %9359, %9357 ], [ %9402, %9398 ], [ %9384, %9392 ]
  %9406 = phi float [ %9379, %9357 ], [ %9385, %9398 ], [ %9385, %9392 ]
  %9407 = phi float [ %9378, %9357 ], [ %9403, %9398 ], [ %9386, %9392 ]
  %9408 = phi float [ %9378, %9357 ], [ %7656, %9398 ], [ %7656, %9392 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9409 = call float @dx.op.binary.f32(i32 36, float %9405, float 3.225500e+04)  ; FMin(a,b)
  %9410 = call float @dx.op.binary.f32(i32 36, float %9406, float 3.225500e+04)  ; FMin(a,b)
  %9411 = call float @dx.op.binary.f32(i32 36, float %9407, float 3.225500e+04)  ; FMin(a,b)
  %9412 = call float @dx.op.binary.f32(i32 36, float %9408, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9410)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9411)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9412)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !98}
!71 = !{!72, !96, null}
!72 = !{!73, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 1, i8 0, !75}
!77 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 2, i8 0, !78}
!78 = !{i32 3, i32 3}
!79 = !{i32 3, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 3, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 4, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"SH_RED", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 7, i8 0, !75}
!85 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 8, i8 0, !80}
!86 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 9, i8 0, !75}
!87 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 10, i8 0, !78}
!88 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 11, i8 0, !75}
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 12, i8 0, !75}
!90 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !74, i8 1, i32 1, i8 1, i32 13, i8 0, !91}
!91 = !{i32 3, i32 1}
!92 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !74, i8 1, i32 1, i8 2, i32 13, i8 1, !78}
!93 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !74, i8 1, i32 1, i8 4, i32 14, i8 0, !91}
!94 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 13, i8 3, !91}
!95 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
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

