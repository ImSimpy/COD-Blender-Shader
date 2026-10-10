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
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
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
; shader hash: e65c5ca40acbe4e147d3391c27c3cf49
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56 }
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
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = alloca [12 x float], align 4
  %108 = alloca [12 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %103
  %116 = fmul fast float %114, %104
  %117 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %118 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = bitcast float %118 to i32
  %120 = ashr i32 %119, 1
  %121 = sub nsw i32 1597250115, %120
  %122 = bitcast i32 %121 to float
  %123 = fmul fast float %94, %117
  %124 = fmul fast float %123, %122
  %125 = fmul fast float %95, %117
  %126 = fmul fast float %125, %122
  %127 = fmul fast float %96, %117
  %128 = fmul fast float %127, %122
  %129 = fmul fast float %95, %92
  %130 = fmul fast float %96, %91
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %96, %90
  %133 = fmul fast float %94, %92
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %94, %91
  %136 = fmul fast float %95, %90
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %131, %93
  %139 = fmul fast float %134, %93
  %140 = fmul fast float %137, %93
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast une float %142, 0.000000e+00
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %115, 2.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %116, 2.000000e+00
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 1.000000e+00, %148
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %143, float %154, float %158
  %162 = select i1 %143, float %155, float %159
  %163 = select i1 %143, float %156, float %160
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fmul fast float %163, %151
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %174 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %175 = select i1 %143, float %168, float %172
  %176 = select i1 %143, float %169, float %173
  %177 = select i1 %143, float %170, float %174
  %178 = fmul fast float %175, %152
  %179 = fmul fast float %176, %152
  %180 = fmul fast float %177, %152
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = fadd fast float %180, %166
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = select i1 %143, float %185, float %189
  %193 = select i1 %143, float %186, float %190
  %194 = select i1 %143, float %187, float %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fadd fast float %183, %194
  %198 = fmul fast float %195, %106
  %199 = fmul fast float %196, %106
  %200 = fmul fast float %197, %106
  %201 = shl i32 %59, 5
  %202 = add i32 %201, 4194304
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = extractvalue %dx.types.ResRet.i32 %203, 2
  %207 = extractvalue %dx.types.ResRet.i32 %203, 3
  %208 = add i32 %201, 4194320
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = extractvalue %dx.types.ResRet.i32 %209, 1
  %212 = bitcast i32 %210 to float
  %213 = bitcast i32 %211 to float
  %214 = fmul fast float %115, 5.000000e-01
  %215 = fmul fast float %116, 5.000000e-01
  %216 = fptosi float %214 to i32
  %217 = fptosi float %215 to i32
  %218 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = lshr i32 %219, 18
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F4C00EBA0000000
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = fadd fast float %223, -1.000000e+00
  %225 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %226 = extractvalue %dx.types.Dimensions %225, 0
  %227 = sitofp i32 %226 to float
  %228 = extractvalue %dx.types.Dimensions %225, 1
  %229 = sitofp i32 %228 to float
  %230 = fcmp fast oge float %214, %227
  %231 = fcmp fast oge float %215, %229
  %232 = or i1 %230, %231
  %233 = select i1 %232, float 0x4197782600000000, float %224
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %237 = fmul fast float %235, %115
  %238 = fmul fast float %236, %116
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 114688
  %242 = icmp ne i32 %241, 0
  %243 = select i1 %242, float %237, float 0.000000e+00
  %244 = select i1 %242, float %238, float 0.000000e+00
  %245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = fmul fast float %246, 2.550000e+02
  %248 = fptoui float %247 to i32
  %249 = select i1 %242, i32 %248, i32 0
  %250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.i32 %250, 3
  %252 = and i32 %251, 3
  %253 = icmp ne i32 %252, 0
  %254 = and i32 %251, 4
  %255 = icmp ne i32 %254, 0
  %256 = and i1 %253, %255
  br i1 %256, label %257, label %266

; <label>:257                                     ; preds = %0
  %258 = fmul fast float %146, %116
  %259 = fmul fast float %145, %115
  %260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %259, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fsub fast float 1.000000e+00, %261
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = fcmp fast olt float %262, %264
  br label %269

; <label>:266                                     ; preds = %0
  %267 = icmp eq i32 %254, 0
  %268 = and i1 %253, %267
  br label %269

; <label>:269                                     ; preds = %266, %257
  %270 = phi i1 [ %265, %257 ], [ %268, %266 ]
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fmul fast float %272, 0x3FE3C6EF40000000
  %274 = frem fast float %115, 2.560000e+02
  %275 = frem fast float %116, 2.560000e+02
  %276 = fptoui float %274 to i32
  %277 = fptoui float %275 to i32
  %278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %276, i32 %277, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fadd fast float %279, %273
  %281 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %282 = add i32 %58, 156
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %58, 216
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %58, 36
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %58, 288
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = mul i32 %60, 100
  %325 = add i32 %324, 28
  %326 = add i32 %324, 40
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = add i32 %58, 172
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = shl i32 %331, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %331, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %331, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %58, 232
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %343, 8
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %343, 16
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = add i32 %58, 52
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %58, 304
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = shl i32 %370, 4
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %370, 7
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %370, 22
  %378 = shl nuw nsw i32 %377, 5
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = and i32 %328, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %373, float %334
  %383 = select i1 %381, float %376, float %337
  %384 = select i1 %381, float %379, float %340
  %385 = add i32 %324, 44
  %386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = fmul fast float %387, %382
  %389 = fmul fast float %387, %383
  %390 = fmul fast float %387, %384
  %391 = add i32 %324, 48
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %393, 4
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %393, 7
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %393, 22
  %401 = shl nuw nsw i32 %400, 5
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = and i32 %328, 8
  %404 = icmp ne i32 %403, 0
  %405 = select i1 %404, float %396, float %346
  %406 = select i1 %404, float %399, float %350
  %407 = select i1 %404, float %402, float %354
  %408 = add i32 %324, 52
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = and i32 %328, 2
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %412, float %359
  %418 = select i1 %416, float %414, float %361
  %419 = add i32 %324, 56
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = and i32 %328, 4
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %423, float %366
  %429 = fmul float %428, 0x3F50624DE0000000
  %430 = select i1 %427, float %425, float %368
  %431 = fmul float %430, 0x3F50624DE0000000
  %432 = add i32 %324, 60
  %433 = add i32 %324, 32
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %58, 188
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = shl i32 %438, 4
  %440 = and i32 %439, 32752
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %438, 7
  %443 = and i32 %442, 32752
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %438, 22
  %446 = shl nuw nsw i32 %445, 5
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = add i32 %58, 248
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 255
  %452 = uitofp i32 %451 to float
  %453 = fmul fast float %452, 0x3F70101020000000
  %454 = lshr i32 %450, 8
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %450, 16
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = add i32 %58, 68
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 65535
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = lshr i32 %464, 16
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = add i32 %58, 320
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 65535
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %471, 16
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = shl i32 %477, 4
  %479 = and i32 %478, 32752
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %477, 7
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %477, 22
  %485 = shl nuw nsw i32 %484, 5
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = and i32 %435, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %480, float %441
  %490 = select i1 %488, float %483, float %444
  %491 = select i1 %488, float %486, float %447
  %492 = add i32 %324, 64
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fmul fast float %494, %489
  %496 = fmul fast float %494, %490
  %497 = fmul fast float %494, %491
  %498 = add i32 %324, 68
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = shl i32 %500, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %500, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = lshr i32 %500, 22
  %508 = shl nuw nsw i32 %507, 5
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = and i32 %435, 8
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %503, float %453
  %513 = select i1 %511, float %506, float %457
  %514 = select i1 %511, float %509, float %461
  %515 = add i32 %324, 72
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 65535
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %517, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = and i32 %435, 2
  %523 = icmp ne i32 %522, 0
  %524 = select i1 %523, float %519, float %466
  %525 = select i1 %523, float %521, float %468
  %526 = add i32 %324, 76
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %528, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = and i32 %435, 4
  %534 = icmp ne i32 %533, 0
  %535 = select i1 %534, float %530, float %473
  %536 = fmul float %535, 0x3F50624DE0000000
  %537 = select i1 %534, float %532, float %475
  %538 = fmul float %537, 0x3F50624DE0000000
  %539 = add i32 %324, 80
  %540 = add i32 %324, 36
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %58, 204
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = shl i32 %545, 4
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = lshr i32 %545, 7
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %545, 22
  %553 = shl nuw nsw i32 %552, 5
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = add i32 %58, 264
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = lshr i32 %557, 8
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %557, 16
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = add i32 %58, 84
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = add i32 %58, 336
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %578, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = shl i32 %584, 4
  %586 = and i32 %585, 32752
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %584, 7
  %589 = and i32 %588, 32752
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %584, 22
  %592 = shl nuw nsw i32 %591, 5
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %542, 1
  %595 = icmp ne i32 %594, 0
  %596 = select i1 %595, float %587, float %548
  %597 = select i1 %595, float %590, float %551
  %598 = select i1 %595, float %593, float %554
  %599 = add i32 %324, 84
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = fmul fast float %601, %596
  %603 = fmul fast float %601, %597
  %604 = fmul fast float %601, %598
  %605 = add i32 %324, 88
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = shl i32 %607, 4
  %609 = and i32 %608, 32752
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %607, 7
  %612 = and i32 %611, 32752
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = lshr i32 %607, 22
  %615 = shl nuw nsw i32 %614, 5
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = and i32 %542, 8
  %618 = icmp ne i32 %617, 0
  %619 = select i1 %618, float %610, float %560
  %620 = select i1 %618, float %613, float %564
  %621 = select i1 %618, float %616, float %568
  %622 = add i32 %324, 92
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %624, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %542, 2
  %630 = icmp ne i32 %629, 0
  %631 = select i1 %630, float %626, float %573
  %632 = select i1 %630, float %628, float %575
  %633 = add i32 %324, 96
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 65535
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %635, 16
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = and i32 %542, 4
  %641 = icmp ne i32 %640, 0
  %642 = select i1 %641, float %637, float %580
  %643 = fmul float %642, 0x3F50624DE0000000
  %644 = select i1 %641, float %639, float %582
  %645 = fmul float %644, 0x3F50624DE0000000
  %646 = add i32 %58, 348
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 32
  %650 = icmp eq i32 %649, 0
  %651 = and i32 %648, 64
  %652 = icmp eq i32 %651, 0
  %653 = and i32 %648, 128
  %654 = icmp eq i32 %653, 0
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %674, label %659

; <label>:659                                     ; preds = %269
  %660 = add i32 %58, 492
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = extractvalue %dx.types.ResRet.f32 %665, 3
  %670 = fmul fast float %669, %99
  %671 = fmul fast float %666, %100
  %672 = fmul fast float %667, %101
  %673 = fmul fast float %668, %102
  br label %674

; <label>:674                                     ; preds = %659, %269
  %675 = phi float [ %102, %269 ], [ %673, %659 ]
  %676 = phi float [ %101, %269 ], [ %672, %659 ]
  %677 = phi float [ %100, %269 ], [ %671, %659 ]
  %678 = phi float [ %99, %269 ], [ %670, %659 ]
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 2
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %702, label %683

; <label>:683                                     ; preds = %674
  %684 = add i32 %58, 44
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 1
  %688 = icmp ne i32 %687, 0
  %689 = select i1 %688, float %677, float 1.000000e+00
  %690 = add i32 %58, 60
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 1
  %694 = icmp ne i32 %693, 0
  %695 = select i1 %694, float %676, float 1.000000e+00
  %696 = add i32 %58, 76
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 1
  %700 = icmp ne i32 %699, 0
  %701 = select i1 %700, float %675, float 1.000000e+00
  br label %702

; <label>:702                                     ; preds = %683, %674
  %703 = phi float [ %675, %674 ], [ %701, %683 ]
  %704 = phi float [ %676, %674 ], [ %695, %683 ]
  %705 = phi float [ %677, %674 ], [ %689, %683 ]
  %706 = lshr i32 %680, 20
  %707 = and i32 %706, 3
  %708 = add nuw nsw i32 %707, 1
  %709 = add i32 %58, 24
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %58, 28
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = or i32 %714, %711
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %1251, label %717

; <label>:717                                     ; preds = %702
  %718 = and i32 %711, 262144
  %719 = icmp ne i32 %718, 0
  %720 = select i1 %719, float %65, float 1.000000e+00
  %721 = select i1 %719, float %66, float 0.000000e+00
  %722 = select i1 %719, float %67, float 0.000000e+00
  %723 = select i1 %719, float %68, float 1.000000e+00
  %724 = select i1 %719, float %69, float %97
  %725 = select i1 %719, float %70, float %98
  %726 = add i32 %58, 284
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 16
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = fmul fast float %730, 0x3F50624DE0000000
  %732 = add i32 %58, 88
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = lshr i32 %734, 16
  %736 = and i32 %735, 255
  %737 = lshr i32 %734, 24
  %738 = add i32 %58, 292
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 65535
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = lshr i32 %740, 16
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = add i32 %58, 32
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 22
  %749 = shl nuw nsw i32 %748, 5
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = shl i32 %747, 4
  %752 = and i32 %751, 32752
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = lshr i32 %747, 7
  %755 = and i32 %754, 32752
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %759 = fmul fast float %758, 1.000000e+03
  %760 = fmul fast float %322, %759
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fadd fast float %761, %312
  %763 = fmul fast float %323, %759
  %764 = call float @dx.op.unary.f32(i32 22, float %763)  ; Frc(value)
  %765 = fadd fast float %764, %314
  %766 = fmul fast float %731, %759
  %767 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %768 = fmul fast float %767, 0x401921FB60000000
  %769 = fadd fast float %768, %750
  %770 = call float @dx.op.unary.f32(i32 13, float %769)  ; Sin(value)
  %771 = call float @dx.op.unary.f32(i32 12, float %769)  ; Cos(value)
  %772 = fsub fast float -0.000000e+00, %770
  %773 = fadd fast float %724, -5.000000e-01
  %774 = fadd fast float %725, -5.000000e-01
  %775 = fmul fast float %742, %773
  %776 = fmul fast float %744, %774
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fmul fast float %753, %777
  %780 = fmul fast float %756, %778
  %781 = fmul fast float %771, %779
  %782 = call float @dx.op.tertiary.f32(i32 46, float %772, float %780, float %781)  ; FMad(a,b,c)
  %783 = fmul fast float %770, %779
  %784 = call float @dx.op.tertiary.f32(i32 46, float %771, float %780, float %783)  ; FMad(a,b,c)
  %785 = fadd fast float %762, %782
  %786 = fadd fast float %765, %784
  %787 = icmp ugt i32 %736, 1
  %788 = icmp ugt i32 %734, 33554431
  %789 = or i1 %788, %787
  br i1 %789, label %790, label %815

; <label>:790                                     ; preds = %717
  %791 = add i32 %58, 228
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 16
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = fmul fast float %758, %795
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = mul nuw nsw i32 %736, %737
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %797, %799
  %801 = call float @dx.op.unary.f32(i32 27, float %800)  ; Round_ni(value)
  %802 = fptoui float %801 to i32
  %803 = urem i32 %802, %736
  %804 = udiv i32 %802, %737
  %805 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %806 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %807 = uitofp i32 %803 to float
  %808 = uitofp i32 %804 to float
  %809 = fadd fast float %805, %807
  %810 = fadd fast float %806, %808
  %811 = uitofp i32 %736 to float
  %812 = uitofp i32 %737 to float
  %813 = fdiv fast float %809, %811
  %814 = fdiv fast float %810, %812
  br label %815

; <label>:815                                     ; preds = %790, %717
  %816 = phi float [ %813, %790 ], [ %785, %717 ]
  %817 = phi float [ %814, %790 ], [ %786, %717 ]
  %818 = and i32 %711, 256
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %866, label %820

; <label>:820                                     ; preds = %815
  %821 = add i32 %58, 440
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %112, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = add i32 %58, 100
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = shl i32 %830, 4
  %832 = and i32 %831, 32752
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = lshr i32 %830, 7
  %835 = and i32 %834, 32752
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = fsub fast float 1.000000e+00, %678
  %838 = call float @dx.op.binary.f32(i32 35, float %837, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %839 = bitcast float %678 to i32
  %840 = sitofp i32 %839 to float
  %841 = fadd fast float %840, 0xC1CFBF8940000000
  %842 = fmul fast float %836, %841
  %843 = fadd fast float %842, 0x41CFBF8940000000
  %844 = fptosi float %843 to i32
  %845 = bitcast i32 %844 to float
  %846 = bitcast float %838 to i32
  %847 = sitofp i32 %846 to float
  %848 = fadd fast float %847, 0xC1CFBF8940000000
  %849 = fmul fast float %848, %836
  %850 = fadd fast float %849, 0x41CFBF8940000000
  %851 = fptosi float %850 to i32
  %852 = bitcast i32 %851 to float
  %853 = fmul fast float %845, %833
  %854 = fmul fast float %852, %833
  %855 = fsub fast float %838, %853
  %856 = fadd fast float %854, %838
  %857 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %858 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %859 = fsub fast float %827, %857
  %860 = fsub fast float %858, %857
  %861 = bitcast float %860 to i32
  %862 = sub nsw i32 2129859010, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %863, %859
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  br label %866

; <label>:866                                     ; preds = %820, %815
  %867 = phi float [ %865, %820 ], [ %678, %815 ]
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 128
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %888, label %872

; <label>:872                                     ; preds = %866
  %873 = add i32 %58, 424
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = add i32 %875, 0
  %877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %877, %dx.types.Handle %112, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 524288
  %883 = icmp ne i32 %882, 0
  %884 = fcmp fast ogt float %879, 0x3FE0101020000000
  %885 = select i1 %884, float 1.000000e+00, float 0.000000e+00
  %886 = select i1 %883, float %885, float %879
  %887 = fmul fast float %886, %867
  br label %888

; <label>:888                                     ; preds = %872, %866
  %889 = phi float [ %887, %872 ], [ %867, %866 ]
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 16
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %1092, label %894

; <label>:894                                     ; preds = %888
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = add i32 %58, 376
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %111, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  %907 = and i32 %896, 255
  %908 = uitofp i32 %907 to float
  %909 = lshr i32 %896, 8
  %910 = and i32 %909, 255
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %906, %908
  %913 = fadd fast float %912, %911
  %914 = fmul fast float %913, 0x3F70101000000000
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 512
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %927, label %919

; <label>:919                                     ; preds = %894
  %920 = add i32 %58, 460
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = add i32 %922, 0
  %924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %924, %dx.types.Handle %112, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  br label %927

; <label>:927                                     ; preds = %919, %894
  %928 = phi float [ %926, %919 ], [ 1.000000e+00, %894 ]
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 33554432
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1039, label %933

; <label>:933                                     ; preds = %927
  %934 = add i32 %58, 224
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 65535
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = lshr i32 %936, 16
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = add i32 %58, 228
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 65535
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 24
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101020000000
  %951 = and i32 %947, 255
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = lshr i32 %947, 8
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101020000000
  %958 = lshr i32 %947, 16
  %959 = and i32 %958, 255
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = add i32 %58, 220
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 24
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101020000000
  %968 = and i32 %964, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = lshr i32 %964, 8
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = fmul fast float %973, 0x3F70101020000000
  %975 = lshr i32 %964, 16
  %976 = and i32 %975, 255
  %977 = uitofp i32 %976 to float
  %978 = fmul fast float %977, 0x3F70101020000000
  %979 = bitcast float %903 to i32
  %980 = ashr i32 %979, 1
  %981 = sub nsw i32 1597463174, %980
  %982 = bitcast i32 %981 to float
  %983 = fmul fast float %903, 5.000000e-01
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %984, %983
  %986 = fsub fast float 1.500000e+00, %985
  %987 = fmul fast float %982, %903
  %988 = fmul fast float %987, %986
  %989 = bitcast float %904 to i32
  %990 = ashr i32 %989, 1
  %991 = sub nsw i32 1597463174, %990
  %992 = bitcast i32 %991 to float
  %993 = fmul fast float %904, 5.000000e-01
  %994 = fmul fast float %992, %992
  %995 = fmul fast float %994, %993
  %996 = fsub fast float 1.500000e+00, %995
  %997 = fmul fast float %992, %904
  %998 = fmul fast float %997, %996
  %999 = bitcast float %905 to i32
  %1000 = ashr i32 %999, 1
  %1001 = sub nsw i32 1597463174, %1000
  %1002 = bitcast i32 %1001 to float
  %1003 = fmul fast float %905, 5.000000e-01
  %1004 = fmul fast float %1002, %1002
  %1005 = fmul fast float %1004, %1003
  %1006 = fsub fast float 1.500000e+00, %1005
  %1007 = fmul fast float %1002, %905
  %1008 = fmul fast float %1007, %1006
  %1009 = fsub fast float %988, %970
  %1010 = fsub fast float %998, %974
  %1011 = fsub fast float %1008, %978
  %1012 = fmul fast float %1009, %938
  %1013 = fmul fast float %1010, %940
  %1014 = fmul fast float %1011, %945
  %1015 = fadd fast float %1012, %953
  %1016 = fadd fast float %1013, %957
  %1017 = fadd fast float %1014, %961
  %1018 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1021 = fmul fast float %1018, %1018
  %1022 = fmul fast float %1019, %1019
  %1023 = fmul fast float %1020, %1020
  %1024 = fsub fast float %1021, %903
  %1025 = fsub fast float %1022, %904
  %1026 = fsub fast float %1023, %905
  %1027 = fmul fast float %1024, %928
  %1028 = fmul fast float %1025, %928
  %1029 = fmul fast float %1026, %928
  %1030 = fadd fast float %1027, %903
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %1029, %905
  %1033 = fadd fast float %950, %914
  %1034 = fsub fast float %1033, %967
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = fsub fast float %1035, %914
  %1037 = fmul fast float %1036, %928
  %1038 = fadd fast float %1037, %914
  br label %1092

; <label>:1039                                    ; preds = %927
  %1040 = and i32 %930, 134217728
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1076, label %1042

; <label>:1042                                    ; preds = %1039
  %1043 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1044 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1045 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1046 = fadd fast float %1043, -5.000000e-01
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fadd fast float %1045, -5.000000e-01
  %1049 = fmul fast float %1046, %928
  %1050 = fmul fast float %1047, %928
  %1051 = fmul fast float %1048, %928
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %1058 = fmul fast float %1052, 2.000000e+00
  %1059 = fsub fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1059, %1055
  %1061 = fadd fast float %1060, %1058
  %1062 = fmul fast float %1061, %1055
  %1063 = fmul fast float %1053, 2.000000e+00
  %1064 = fsub fast float 1.000000e+00, %1063
  %1065 = fmul fast float %1064, %1056
  %1066 = fadd fast float %1065, %1063
  %1067 = fmul fast float %1066, %1056
  %1068 = fmul fast float %1054, 2.000000e+00
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1057
  %1071 = fadd fast float %1070, %1068
  %1072 = fmul fast float %1071, %1057
  %1073 = fmul fast float %1062, %1062
  %1074 = fmul fast float %1067, %1067
  %1075 = fmul fast float %1072, %1072
  br label %1092

; <label>:1076                                    ; preds = %1039
  %1077 = fmul fast float %299, %299
  %1078 = fmul fast float %303, %303
  %1079 = fmul fast float %307, %307
  %1080 = fadd fast float %1077, -1.000000e+00
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fadd fast float %1079, -1.000000e+00
  %1083 = fmul fast float %928, %1080
  %1084 = fmul fast float %928, %1081
  %1085 = fmul fast float %928, %1082
  %1086 = fadd fast float %1083, 1.000000e+00
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fadd fast float %1085, 1.000000e+00
  %1089 = fmul fast float %1086, %903
  %1090 = fmul fast float %1087, %904
  %1091 = fmul fast float %1088, %905
  br label %1092

; <label>:1092                                    ; preds = %1076, %1042, %933, %888
  %1093 = phi float [ %1038, %933 ], [ %914, %1042 ], [ %914, %1076 ], [ 0x3FA23C0BE0000000, %888 ]
  %1094 = phi float [ %1030, %933 ], [ %1073, %1042 ], [ %1089, %1076 ], [ 1.000000e+00, %888 ]
  %1095 = phi float [ %1031, %933 ], [ %1074, %1042 ], [ %1090, %1076 ], [ 1.000000e+00, %888 ]
  %1096 = phi float [ %1032, %933 ], [ %1075, %1042 ], [ %1091, %1076 ], [ 1.000000e+00, %888 ]
  %1097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.i32 %1097, 1
  %1099 = and i32 %1098, 1
  %1100 = icmp ne i32 %1099, 0
  %1101 = add i32 %58, 356
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 32
  %1105 = icmp ne i32 %1104, 0
  %1106 = and i1 %1100, %1105
  %1107 = select i1 %1106, float 1.000000e+00, float %1094
  %1108 = select i1 %1106, float 0x3FD3333340000000, float %1095
  %1109 = select i1 %1106, float 0x3FD3333340000000, float %1096
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 32
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1186, label %1114

; <label>:1114                                    ; preds = %1092
  %1115 = add i32 %58, 92
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %58, 392
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1122, %dx.types.Handle %111, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = and i32 %1117, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = lshr i32 %1117, 8
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = lshr i32 %1117, 16
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F70101000000000
  %1137 = fmul fast float %1124, %1129
  %1138 = fadd fast float %1137, %1132
  %1139 = fmul fast float %1138, 0x3F70101000000000
  %1140 = fadd fast float %1125, -5.000000e-01
  %1141 = fadd fast float %1127, -5.000000e-01
  %1142 = fmul fast float %1140, %1136
  %1143 = fmul fast float %1141, %1136
  %1144 = fadd fast float %1142, 5.000000e-01
  %1145 = fadd fast float %1143, 5.000000e-01
  %1146 = fmul fast float %1144, 2.000000e+00
  %1147 = fadd fast float %1146, -1.000000e+00
  %1148 = fmul fast float %1145, 2.000000e+00
  %1149 = fadd fast float %1148, -1.000000e+00
  %1150 = fadd fast float %1147, %1149
  %1151 = fmul fast float %1150, 5.000000e-01
  %1152 = fsub fast float %1147, %1149
  %1153 = fmul fast float %1152, 5.000000e-01
  %1154 = call float @dx.op.unary.f32(i32 6, float %1151)  ; FAbs(value)
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1157 = fsub fast float %1155, %1156
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1153, float %1157, float %1151, float %1153, float %1157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = call float @dx.op.unary.f32(i32 25, float %1158)  ; Rsqrt(value)
  %1160 = fmul fast float %1151, %1159
  %1161 = fmul fast float %1153, %1159
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 67108864
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1182, label %1166

; <label>:1166                                    ; preds = %1114
  %1167 = add i32 %58, 280
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = lshr i32 %1169, 16
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = fsub fast float %1139, %1177
  %1179 = fmul fast float %1178, %1171
  %1180 = fadd fast float %1179, %1175
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  br label %1182

; <label>:1182                                    ; preds = %1166, %1114
  %1183 = phi float [ %1181, %1166 ], [ %1139, %1114 ]
  %1184 = call float @dx.op.dot2.f32(i32 54, float %1160, float %1161, float %720, float %721)  ; Dot2(ax,ay,bx,by)
  %1185 = call float @dx.op.dot2.f32(i32 54, float %1160, float %1161, float %722, float %723)  ; Dot2(ax,ay,bx,by)
  br label %1186

; <label>:1186                                    ; preds = %1182, %1092
  %1187 = phi float [ %1183, %1182 ], [ 0x3FD6666660000000, %1092 ]
  %1188 = phi float [ %1184, %1182 ], [ 0.000000e+00, %1092 ]
  %1189 = phi float [ %1185, %1182 ], [ 0.000000e+00, %1092 ]
  %1190 = phi float [ %1126, %1182 ], [ 1.000000e+00, %1092 ]
  %1191 = add i32 %58, 160
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 22
  %1195 = shl nuw nsw i32 %1194, 5
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 64
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1234, label %1201

; <label>:1201                                    ; preds = %1186
  %1202 = add i32 %58, 408
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = add i32 %1204, 0
  %1206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 131072
  %1210 = icmp eq i32 %1209, 0
  %1211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1206, %dx.types.Handle %111, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = fmul fast float %1212, %287
  %1216 = fmul fast float %1213, %290
  %1217 = fmul fast float %1214, %293
  br i1 %1210, label %1224, label %1218

; <label>:1218                                    ; preds = %1201
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fmul fast float %1220, %1215
  %1222 = fmul fast float %1220, %1216
  %1223 = fmul fast float %1220, %1217
  br label %1224

; <label>:1224                                    ; preds = %1218, %1201
  %1225 = phi float [ %1221, %1218 ], [ %1215, %1201 ]
  %1226 = phi float [ %1222, %1218 ], [ %1216, %1201 ]
  %1227 = phi float [ %1223, %1218 ], [ %1217, %1201 ]
  %1228 = fmul fast float %1225, %1196
  %1229 = select i1 %270, float %1228, float %1225
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1229, float %1226, float %1227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = select i1 %270, float 0.000000e+00, float %1225
  %1232 = select i1 %270, float %1230, float %1226
  %1233 = select i1 %270, float 0.000000e+00, float %1227
  br label %1234

; <label>:1234                                    ; preds = %1224, %1186
  %1235 = phi float [ %1231, %1224 ], [ 0.000000e+00, %1186 ]
  %1236 = phi float [ %1232, %1224 ], [ 0.000000e+00, %1186 ]
  %1237 = phi float [ %1233, %1224 ], [ 0.000000e+00, %1186 ]
  %1238 = add i32 %58, 96
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = lshr i32 %1240, 8
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = call float @dx.op.dot3.f32(i32 55, float %1107, float %1108, float %1109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = fmul fast float %1245, %1246
  %1248 = fadd fast float %1247, %1242
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  br label %1251

; <label>:1251                                    ; preds = %1234, %702
  %1252 = phi float [ 0.000000e+00, %702 ], [ %1188, %1234 ]
  %1253 = phi float [ 0.000000e+00, %702 ], [ %1189, %1234 ]
  %1254 = phi float [ 0.000000e+00, %702 ], [ %1107, %1234 ]
  %1255 = phi float [ 0.000000e+00, %702 ], [ %1108, %1234 ]
  %1256 = phi float [ 0.000000e+00, %702 ], [ %1109, %1234 ]
  %1257 = phi float [ 0.000000e+00, %702 ], [ %1235, %1234 ]
  %1258 = phi float [ 0.000000e+00, %702 ], [ %1236, %1234 ]
  %1259 = phi float [ 0.000000e+00, %702 ], [ %1237, %1234 ]
  %1260 = phi float [ 0.000000e+00, %702 ], [ %1093, %1234 ]
  %1261 = phi float [ 0.000000e+00, %702 ], [ %889, %1234 ]
  %1262 = phi float [ 0.000000e+00, %702 ], [ %1187, %1234 ]
  %1263 = phi float [ 0.000000e+00, %702 ], [ %1190, %1234 ]
  %1264 = phi float [ 0.000000e+00, %702 ], [ %1250, %1234 ]
  br i1 %650, label %1991, label %1265

; <label>:1265                                    ; preds = %1251
  %1266 = icmp ult i32 %708, 2
  %1267 = add i32 %58, 40
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = add i32 %58, 44
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = or i32 %1272, %1269
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1991, label %1275

; <label>:1275                                    ; preds = %1265
  %1276 = and i32 %1269, 262144
  %1277 = icmp ne i32 %1276, 0
  %1278 = select i1 %1277, float %65, float 1.000000e+00
  %1279 = select i1 %1277, float %66, float 0.000000e+00
  %1280 = select i1 %1277, float %67, float 0.000000e+00
  %1281 = select i1 %1277, float %68, float 1.000000e+00
  %1282 = select i1 %1277, float %69, float %97
  %1283 = select i1 %1277, float %70, float %98
  %1284 = add i32 %58, 300
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = fmul fast float %1288, 0x3F50624DE0000000
  %1290 = add i32 %58, 104
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = lshr i32 %1292, 16
  %1294 = and i32 %1293, 255
  %1295 = lshr i32 %1292, 24
  %1296 = add i32 %58, 308
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 65535
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = lshr i32 %1298, 16
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = add i32 %58, 48
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = lshr i32 %1305, 22
  %1307 = shl nuw nsw i32 %1306, 5
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = shl i32 %1305, 4
  %1310 = and i32 %1309, 32752
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = lshr i32 %1305, 7
  %1313 = and i32 %1312, 32752
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1317 = fmul fast float %1316, 1.000000e+03
  %1318 = fmul fast float %1317, %429
  %1319 = call float @dx.op.unary.f32(i32 22, float %1318)  ; Frc(value)
  %1320 = fadd fast float %1319, %417
  %1321 = fmul fast float %1317, %431
  %1322 = call float @dx.op.unary.f32(i32 22, float %1321)  ; Frc(value)
  %1323 = fadd fast float %1322, %418
  %1324 = fmul fast float %1289, %1317
  %1325 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1326 = fmul fast float %1325, 0x401921FB60000000
  %1327 = fadd fast float %1326, %1308
  %1328 = call float @dx.op.unary.f32(i32 13, float %1327)  ; Sin(value)
  %1329 = call float @dx.op.unary.f32(i32 12, float %1327)  ; Cos(value)
  %1330 = fsub fast float -0.000000e+00, %1328
  %1331 = fadd fast float %1282, -5.000000e-01
  %1332 = fadd fast float %1283, -5.000000e-01
  %1333 = fmul fast float %1300, %1331
  %1334 = fmul fast float %1302, %1332
  %1335 = fadd fast float %1333, 5.000000e-01
  %1336 = fadd fast float %1334, 5.000000e-01
  %1337 = fmul fast float %1311, %1335
  %1338 = fmul fast float %1314, %1336
  %1339 = fmul fast float %1329, %1337
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1338, float %1339)  ; FMad(a,b,c)
  %1341 = fmul fast float %1328, %1337
  %1342 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1338, float %1341)  ; FMad(a,b,c)
  %1343 = fadd fast float %1320, %1340
  %1344 = fadd fast float %1323, %1342
  %1345 = icmp ugt i32 %1294, 1
  %1346 = icmp ugt i32 %1292, 33554431
  %1347 = or i1 %1346, %1345
  br i1 %1347, label %1348, label %1373

; <label>:1348                                    ; preds = %1275
  %1349 = add i32 %58, 244
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = lshr i32 %1351, 16
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = fmul fast float %1316, %1353
  %1355 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1356 = mul nuw nsw i32 %1294, %1295
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1355, %1357
  %1359 = call float @dx.op.unary.f32(i32 27, float %1358)  ; Round_ni(value)
  %1360 = fptoui float %1359 to i32
  %1361 = urem i32 %1360, %1294
  %1362 = udiv i32 %1360, %1295
  %1363 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1364 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1365 = uitofp i32 %1361 to float
  %1366 = uitofp i32 %1362 to float
  %1367 = fadd fast float %1363, %1365
  %1368 = fadd fast float %1364, %1366
  %1369 = uitofp i32 %1294 to float
  %1370 = uitofp i32 %1295 to float
  %1371 = fdiv fast float %1367, %1369
  %1372 = fdiv fast float %1368, %1370
  br label %1373

; <label>:1373                                    ; preds = %1348, %1275
  %1374 = phi float [ %1371, %1348 ], [ %1343, %1275 ]
  %1375 = phi float [ %1372, %1348 ], [ %1344, %1275 ]
  %1376 = and i32 %1269, 256
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1424, label %1378

; <label>:1378                                    ; preds = %1373
  %1379 = add i32 %58, 444
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %1381, 0
  %1383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1383, %dx.types.Handle %112, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = add i32 %58, 116
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = shl i32 %1388, 4
  %1390 = and i32 %1389, 32752
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = lshr i32 %1388, 7
  %1393 = and i32 %1392, 32752
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = fsub fast float 1.000000e+00, %705
  %1396 = call float @dx.op.binary.f32(i32 35, float %1395, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1397 = bitcast float %705 to i32
  %1398 = sitofp i32 %1397 to float
  %1399 = fadd fast float %1398, 0xC1CFBF8940000000
  %1400 = fmul fast float %1394, %1399
  %1401 = fadd fast float %1400, 0x41CFBF8940000000
  %1402 = fptosi float %1401 to i32
  %1403 = bitcast i32 %1402 to float
  %1404 = bitcast float %1396 to i32
  %1405 = sitofp i32 %1404 to float
  %1406 = fadd fast float %1405, 0xC1CFBF8940000000
  %1407 = fmul fast float %1406, %1394
  %1408 = fadd fast float %1407, 0x41CFBF8940000000
  %1409 = fptosi float %1408 to i32
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1403, %1391
  %1412 = fmul fast float %1410, %1391
  %1413 = fsub fast float %1396, %1411
  %1414 = fadd fast float %1412, %1396
  %1415 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1416 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1417 = fsub fast float %1385, %1415
  %1418 = fsub fast float %1416, %1415
  %1419 = bitcast float %1418 to i32
  %1420 = sub nsw i32 2129859010, %1419
  %1421 = bitcast i32 %1420 to float
  %1422 = fmul fast float %1421, %1417
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  br label %1424

; <label>:1424                                    ; preds = %1378, %1373
  %1425 = phi float [ %1423, %1378 ], [ %705, %1373 ]
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 128
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1446, label %1430

; <label>:1430                                    ; preds = %1424
  %1431 = add i32 %58, 428
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %1433, 0
  %1435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1435, %dx.types.Handle %112, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = and i32 %1439, 524288
  %1441 = icmp ne i32 %1440, 0
  %1442 = fcmp fast ogt float %1437, 0x3FE0101020000000
  %1443 = select i1 %1442, float 1.000000e+00, float 0.000000e+00
  %1444 = select i1 %1441, float %1443, float %1437
  %1445 = fmul fast float %1444, %1425
  br label %1446

; <label>:1446                                    ; preds = %1430, %1424
  %1447 = phi float [ %1445, %1430 ], [ %1425, %1424 ]
  %1448 = fcmp fast ult float %1447, 0x3F70101020000000
  br i1 %1448, label %1991, label %1449

; <label>:1449                                    ; preds = %1446
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 16
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1652, label %1454

; <label>:1454                                    ; preds = %1449
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %58, 380
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1459, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1461, %dx.types.Handle %111, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.ResRet.f32 %1462, 3
  %1467 = and i32 %1456, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = lshr i32 %1456, 8
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1466, %1468
  %1473 = fadd fast float %1472, %1471
  %1474 = fmul fast float %1473, 0x3F70101000000000
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 512
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1487, label %1479

; <label>:1479                                    ; preds = %1454
  %1480 = add i32 %58, 464
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1484, %dx.types.Handle %112, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  br label %1487

; <label>:1487                                    ; preds = %1479, %1454
  %1488 = phi float [ %1486, %1479 ], [ 1.000000e+00, %1454 ]
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 33554432
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1599, label %1493

; <label>:1493                                    ; preds = %1487
  %1494 = add i32 %58, 240
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = lshr i32 %1496, 16
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = add i32 %58, 244
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = lshr i32 %1507, 24
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = and i32 %1507, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = lshr i32 %1507, 8
  %1515 = and i32 %1514, 255
  %1516 = uitofp i32 %1515 to float
  %1517 = fmul fast float %1516, 0x3F70101020000000
  %1518 = lshr i32 %1507, 16
  %1519 = and i32 %1518, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = fmul fast float %1520, 0x3F70101020000000
  %1522 = add i32 %58, 236
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = lshr i32 %1524, 24
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = and i32 %1524, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = lshr i32 %1524, 8
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = fmul fast float %1533, 0x3F70101020000000
  %1535 = lshr i32 %1524, 16
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = bitcast float %1463 to i32
  %1540 = ashr i32 %1539, 1
  %1541 = sub nsw i32 1597463174, %1540
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1463, 5.000000e-01
  %1544 = fmul fast float %1542, %1542
  %1545 = fmul fast float %1544, %1543
  %1546 = fsub fast float 1.500000e+00, %1545
  %1547 = fmul fast float %1542, %1463
  %1548 = fmul fast float %1547, %1546
  %1549 = bitcast float %1464 to i32
  %1550 = ashr i32 %1549, 1
  %1551 = sub nsw i32 1597463174, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1464, 5.000000e-01
  %1554 = fmul fast float %1552, %1552
  %1555 = fmul fast float %1554, %1553
  %1556 = fsub fast float 1.500000e+00, %1555
  %1557 = fmul fast float %1552, %1464
  %1558 = fmul fast float %1557, %1556
  %1559 = bitcast float %1465 to i32
  %1560 = ashr i32 %1559, 1
  %1561 = sub nsw i32 1597463174, %1560
  %1562 = bitcast i32 %1561 to float
  %1563 = fmul fast float %1465, 5.000000e-01
  %1564 = fmul fast float %1562, %1562
  %1565 = fmul fast float %1564, %1563
  %1566 = fsub fast float 1.500000e+00, %1565
  %1567 = fmul fast float %1562, %1465
  %1568 = fmul fast float %1567, %1566
  %1569 = fsub fast float %1548, %1530
  %1570 = fsub fast float %1558, %1534
  %1571 = fsub fast float %1568, %1538
  %1572 = fmul fast float %1569, %1498
  %1573 = fmul fast float %1570, %1500
  %1574 = fmul fast float %1571, %1505
  %1575 = fadd fast float %1572, %1513
  %1576 = fadd fast float %1573, %1517
  %1577 = fadd fast float %1574, %1521
  %1578 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1581 = fmul fast float %1578, %1578
  %1582 = fmul fast float %1579, %1579
  %1583 = fmul fast float %1580, %1580
  %1584 = fsub fast float %1581, %1463
  %1585 = fsub fast float %1582, %1464
  %1586 = fsub fast float %1583, %1465
  %1587 = fmul fast float %1584, %1488
  %1588 = fmul fast float %1585, %1488
  %1589 = fmul fast float %1586, %1488
  %1590 = fadd fast float %1587, %1463
  %1591 = fadd fast float %1588, %1464
  %1592 = fadd fast float %1589, %1465
  %1593 = fadd fast float %1510, %1474
  %1594 = fsub fast float %1593, %1527
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = fsub fast float %1595, %1474
  %1597 = fmul fast float %1596, %1488
  %1598 = fadd fast float %1597, %1474
  br label %1652

; <label>:1599                                    ; preds = %1487
  %1600 = and i32 %1490, 134217728
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1636, label %1602

; <label>:1602                                    ; preds = %1599
  %1603 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fmul fast float %1606, %1488
  %1610 = fmul fast float %1607, %1488
  %1611 = fmul fast float %1608, %1488
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = call float @dx.op.unary.f32(i32 24, float %1463)  ; Sqrt(value)
  %1616 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1618 = fmul fast float %1612, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1615
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1615
  %1623 = fmul fast float %1613, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1616
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1616
  %1628 = fmul fast float %1614, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1617
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1617
  %1633 = fmul fast float %1622, %1622
  %1634 = fmul fast float %1627, %1627
  %1635 = fmul fast float %1632, %1632
  br label %1652

; <label>:1636                                    ; preds = %1599
  %1637 = fmul fast float %405, %405
  %1638 = fmul fast float %406, %406
  %1639 = fmul fast float %407, %407
  %1640 = fadd fast float %1637, -1.000000e+00
  %1641 = fadd fast float %1638, -1.000000e+00
  %1642 = fadd fast float %1639, -1.000000e+00
  %1643 = fmul fast float %1488, %1640
  %1644 = fmul fast float %1488, %1641
  %1645 = fmul fast float %1488, %1642
  %1646 = fadd fast float %1643, 1.000000e+00
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fadd fast float %1645, 1.000000e+00
  %1649 = fmul fast float %1646, %1463
  %1650 = fmul fast float %1647, %1464
  %1651 = fmul fast float %1648, %1465
  br label %1652

; <label>:1652                                    ; preds = %1636, %1602, %1493, %1449
  %1653 = phi float [ %1598, %1493 ], [ %1474, %1602 ], [ %1474, %1636 ], [ 0x3FA23C0BE0000000, %1449 ]
  %1654 = phi float [ %1590, %1493 ], [ %1633, %1602 ], [ %1649, %1636 ], [ 1.000000e+00, %1449 ]
  %1655 = phi float [ %1591, %1493 ], [ %1634, %1602 ], [ %1650, %1636 ], [ 1.000000e+00, %1449 ]
  %1656 = phi float [ %1592, %1493 ], [ %1635, %1602 ], [ %1651, %1636 ], [ 1.000000e+00, %1449 ]
  %1657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.i32 %1657, 1
  %1659 = and i32 %1658, 1
  %1660 = icmp ne i32 %1659, 0
  %1661 = add i32 %58, 356
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 32
  %1665 = icmp ne i32 %1664, 0
  %1666 = and i1 %1660, %1665
  %1667 = select i1 %1666, float 1.000000e+00, float %1654
  %1668 = select i1 %1666, float 0x3FD3333340000000, float %1655
  %1669 = select i1 %1666, float 0x3FD3333340000000, float %1656
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 32
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1746, label %1674

; <label>:1674                                    ; preds = %1652
  %1675 = add i32 %58, 108
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = add i32 %58, 396
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %1680, 0
  %1682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1682, %dx.types.Handle %111, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1687 = extractvalue %dx.types.ResRet.f32 %1683, 3
  %1688 = and i32 %1677, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = lshr i32 %1677, 8
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = lshr i32 %1677, 16
  %1694 = and i32 %1693, 255
  %1695 = uitofp i32 %1694 to float
  %1696 = fmul fast float %1695, 0x3F70101000000000
  %1697 = fmul fast float %1684, %1689
  %1698 = fadd fast float %1697, %1692
  %1699 = fmul fast float %1698, 0x3F70101000000000
  %1700 = fadd fast float %1685, -5.000000e-01
  %1701 = fadd fast float %1687, -5.000000e-01
  %1702 = fmul fast float %1700, %1696
  %1703 = fmul fast float %1701, %1696
  %1704 = fadd fast float %1702, 5.000000e-01
  %1705 = fadd fast float %1703, 5.000000e-01
  %1706 = fmul fast float %1704, 2.000000e+00
  %1707 = fadd fast float %1706, -1.000000e+00
  %1708 = fmul fast float %1705, 2.000000e+00
  %1709 = fadd fast float %1708, -1.000000e+00
  %1710 = fadd fast float %1707, %1709
  %1711 = fmul fast float %1710, 5.000000e-01
  %1712 = fsub fast float %1707, %1709
  %1713 = fmul fast float %1712, 5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 6, float %1711)  ; FAbs(value)
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = call float @dx.op.unary.f32(i32 6, float %1713)  ; FAbs(value)
  %1717 = fsub fast float %1715, %1716
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1711, float %1713, float %1717, float %1711, float %1713, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = call float @dx.op.unary.f32(i32 25, float %1718)  ; Rsqrt(value)
  %1720 = fmul fast float %1711, %1719
  %1721 = fmul fast float %1713, %1719
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 67108864
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %1742, label %1726

; <label>:1726                                    ; preds = %1674
  %1727 = add i32 %58, 296
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = and i32 %1729, 65535
  %1731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1730)  ; LegacyF16ToF32(value)
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 65535
  %1735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1734)  ; LegacyF16ToF32(value)
  %1736 = lshr i32 %1729, 16
  %1737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1736)  ; LegacyF16ToF32(value)
  %1738 = fsub fast float %1699, %1737
  %1739 = fmul fast float %1738, %1731
  %1740 = fadd fast float %1739, %1735
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  br label %1742

; <label>:1742                                    ; preds = %1726, %1674
  %1743 = phi float [ %1741, %1726 ], [ %1699, %1674 ]
  %1744 = call float @dx.op.dot2.f32(i32 54, float %1720, float %1721, float %1278, float %1279)  ; Dot2(ax,ay,bx,by)
  %1745 = call float @dx.op.dot2.f32(i32 54, float %1720, float %1721, float %1280, float %1281)  ; Dot2(ax,ay,bx,by)
  br label %1746

; <label>:1746                                    ; preds = %1742, %1652
  %1747 = phi float [ %1743, %1742 ], [ 0x3FD6666660000000, %1652 ]
  %1748 = phi float [ %1744, %1742 ], [ 0.000000e+00, %1652 ]
  %1749 = phi float [ %1745, %1742 ], [ 0.000000e+00, %1652 ]
  %1750 = phi float [ %1686, %1742 ], [ 1.000000e+00, %1652 ]
  %1751 = add i32 %58, 176
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = lshr i32 %1753, 22
  %1755 = shl nuw nsw i32 %1754, 5
  %1756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1755)  ; LegacyF16ToF32(value)
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 64
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1794, label %1761

; <label>:1761                                    ; preds = %1746
  %1762 = add i32 %58, 412
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %1764, 0
  %1766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 131072
  %1770 = icmp eq i32 %1769, 0
  %1771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1766, %dx.types.Handle %111, float %1374, float %1375, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1771, 2
  %1775 = fmul fast float %388, %1772
  %1776 = fmul fast float %389, %1773
  %1777 = fmul fast float %390, %1774
  br i1 %1770, label %1784, label %1778

; <label>:1778                                    ; preds = %1761
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = fmul fast float %1780, %1775
  %1782 = fmul fast float %1780, %1776
  %1783 = fmul fast float %1780, %1777
  br label %1784

; <label>:1784                                    ; preds = %1778, %1761
  %1785 = phi float [ %1781, %1778 ], [ %1775, %1761 ]
  %1786 = phi float [ %1782, %1778 ], [ %1776, %1761 ]
  %1787 = phi float [ %1783, %1778 ], [ %1777, %1761 ]
  %1788 = fmul fast float %1785, %1756
  %1789 = select i1 %270, float %1788, float %1785
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1786, float %1787, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = select i1 %270, float 0.000000e+00, float %1785
  %1792 = select i1 %270, float %1790, float %1786
  %1793 = select i1 %270, float 0.000000e+00, float %1787
  br label %1794

; <label>:1794                                    ; preds = %1784, %1746
  %1795 = phi float [ %1791, %1784 ], [ 0.000000e+00, %1746 ]
  %1796 = phi float [ %1792, %1784 ], [ 0.000000e+00, %1746 ]
  %1797 = phi float [ %1793, %1784 ], [ 0.000000e+00, %1746 ]
  %1798 = add i32 %58, 112
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = lshr i32 %1800, 8
  %1804 = and i32 %1803, 255
  %1805 = uitofp i32 %1804 to float
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1667, float %1668, float %1669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = fmul fast float %1805, %1806
  %1808 = fadd fast float %1807, %1802
  %1809 = fmul fast float %1808, 0x3F70101020000000
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  br i1 %1266, label %1811, label %1819

; <label>:1811                                    ; preds = %1794
  %1812 = fsub fast float 1.000000e+00, %1447
  %1813 = fmul fast float %1812, %1254
  %1814 = fmul fast float %1812, %1255
  %1815 = fmul fast float %1812, %1256
  %1816 = fmul fast float %1812, %1257
  %1817 = fmul fast float %1812, %1258
  %1818 = fmul fast float %1812, %1259
  br label %1819

; <label>:1819                                    ; preds = %1811, %1794
  %1820 = phi float [ %1813, %1811 ], [ %1254, %1794 ]
  %1821 = phi float [ %1814, %1811 ], [ %1255, %1794 ]
  %1822 = phi float [ %1815, %1811 ], [ %1256, %1794 ]
  %1823 = phi float [ %1816, %1811 ], [ %1257, %1794 ]
  %1824 = phi float [ %1817, %1811 ], [ %1258, %1794 ]
  %1825 = phi float [ %1818, %1811 ], [ %1259, %1794 ]
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 3
  %1829 = icmp eq i32 %1828, 3
  br i1 %1829, label %1908, label %1830

; <label>:1830                                    ; preds = %1819
  %1831 = and i32 %1827, 16
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1447, float 0.000000e+00
  %1834 = icmp eq i32 %1828, 0
  br i1 %1834, label %1835, label %1863

; <label>:1835                                    ; preds = %1830
  %1836 = and i32 %1827, 64
  %1837 = icmp ne i32 %1836, 0
  %1838 = select i1 %1837, float %1447, float 0.000000e+00
  %1839 = fsub fast float %1667, %1820
  %1840 = fsub fast float %1668, %1821
  %1841 = fsub fast float %1669, %1822
  %1842 = fmul fast float %1833, %1839
  %1843 = fmul fast float %1833, %1840
  %1844 = fmul fast float %1833, %1841
  %1845 = fadd fast float %1842, %1820
  %1846 = fadd fast float %1843, %1821
  %1847 = fadd fast float %1844, %1822
  %1848 = fsub fast float %1653, %1260
  %1849 = fmul fast float %1833, %1848
  %1850 = fadd fast float %1849, %1260
  %1851 = fsub fast float %1795, %1823
  %1852 = fsub fast float %1796, %1824
  %1853 = fsub fast float %1797, %1825
  %1854 = fmul fast float %1838, %1851
  %1855 = fmul fast float %1838, %1852
  %1856 = fmul fast float %1838, %1853
  %1857 = fadd fast float %1854, %1823
  %1858 = fadd fast float %1855, %1824
  %1859 = fadd fast float %1856, %1825
  %1860 = fsub fast float %1810, %1264
  %1861 = fmul fast float %1833, %1860
  %1862 = fadd fast float %1861, %1264
  br label %1908

; <label>:1863                                    ; preds = %1830
  %1864 = icmp eq i32 %1828, 1
  br i1 %1864, label %1865, label %1878

; <label>:1865                                    ; preds = %1863
  %1866 = fadd fast float %1667, -1.000000e+00
  %1867 = fadd fast float %1668, -1.000000e+00
  %1868 = fadd fast float %1669, -1.000000e+00
  %1869 = fmul fast float %1833, %1866
  %1870 = fmul fast float %1833, %1867
  %1871 = fmul fast float %1833, %1868
  %1872 = fadd fast float %1869, 1.000000e+00
  %1873 = fadd fast float %1870, 1.000000e+00
  %1874 = fadd fast float %1871, 1.000000e+00
  %1875 = fmul fast float %1872, %1820
  %1876 = fmul fast float %1873, %1821
  %1877 = fmul fast float %1874, %1822
  br label %1908

; <label>:1878                                    ; preds = %1863
  %1879 = icmp eq i32 %1828, 2
  br i1 %1879, label %1880, label %1908

; <label>:1880                                    ; preds = %1878
  %1881 = call float @dx.op.unary.f32(i32 24, float %1667)  ; Sqrt(value)
  %1882 = call float @dx.op.unary.f32(i32 24, float %1668)  ; Sqrt(value)
  %1883 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1884 = fadd fast float %1881, -5.000000e-01
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fadd fast float %1883, -5.000000e-01
  %1887 = fmul fast float %1884, %1833
  %1888 = fmul fast float %1885, %1833
  %1889 = fmul fast float %1886, %1833
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fmul fast float %1890, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1820
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1820
  %1898 = fmul fast float %1891, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1821
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1821
  %1903 = fmul fast float %1892, 2.000000e+00
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1904, %1822
  %1906 = fadd fast float %1905, %1903
  %1907 = fmul fast float %1906, %1822
  br label %1908

; <label>:1908                                    ; preds = %1880, %1878, %1865, %1835, %1819
  %1909 = phi float [ %1820, %1819 ], [ %1897, %1880 ], [ %1820, %1878 ], [ %1875, %1865 ], [ %1845, %1835 ]
  %1910 = phi float [ %1821, %1819 ], [ %1902, %1880 ], [ %1821, %1878 ], [ %1876, %1865 ], [ %1846, %1835 ]
  %1911 = phi float [ %1822, %1819 ], [ %1907, %1880 ], [ %1822, %1878 ], [ %1877, %1865 ], [ %1847, %1835 ]
  %1912 = phi float [ %1823, %1819 ], [ %1823, %1880 ], [ %1823, %1878 ], [ %1823, %1865 ], [ %1857, %1835 ]
  %1913 = phi float [ %1824, %1819 ], [ %1824, %1880 ], [ %1824, %1878 ], [ %1824, %1865 ], [ %1858, %1835 ]
  %1914 = phi float [ %1825, %1819 ], [ %1825, %1880 ], [ %1825, %1878 ], [ %1825, %1865 ], [ %1859, %1835 ]
  %1915 = phi float [ %1260, %1819 ], [ %1260, %1880 ], [ %1260, %1878 ], [ %1260, %1865 ], [ %1850, %1835 ]
  %1916 = phi float [ %1264, %1819 ], [ %1264, %1880 ], [ %1264, %1878 ], [ %1264, %1865 ], [ %1862, %1835 ]
  %1917 = and i32 %1827, 12
  %1918 = icmp eq i32 %1917, 12
  br i1 %1918, label %1991, label %1919

; <label>:1919                                    ; preds = %1908
  %1920 = and i32 %1827, 2097184
  %1921 = icmp eq i32 %1920, 2097184
  %1922 = select i1 %1921, float %1447, float 0.000000e+00
  %1923 = and i32 %1827, 4194336
  %1924 = icmp eq i32 %1923, 4194336
  %1925 = select i1 %1924, float %1447, float 0.000000e+00
  %1926 = and i32 %1827, 8388640
  %1927 = icmp eq i32 %1926, 8388640
  %1928 = select i1 %1927, float %1447, float 0.000000e+00
  %1929 = icmp eq i32 %1917, 0
  br i1 %1929, label %1930, label %1943

; <label>:1930                                    ; preds = %1919
  %1931 = fsub fast float %1748, %1252
  %1932 = fsub fast float %1749, %1253
  %1933 = fmul fast float %1922, %1931
  %1934 = fmul fast float %1922, %1932
  %1935 = fadd fast float %1933, %1252
  %1936 = fadd fast float %1934, %1253
  %1937 = fsub fast float %1750, %1263
  %1938 = fmul fast float %1925, %1937
  %1939 = fadd fast float %1938, %1263
  %1940 = fsub fast float %1747, %1262
  %1941 = fmul fast float %1928, %1940
  %1942 = fadd fast float %1941, %1262
  br label %1991

; <label>:1943                                    ; preds = %1919
  %1944 = icmp eq i32 %1917, 4
  br i1 %1944, label %1945, label %1977

; <label>:1945                                    ; preds = %1943
  %1946 = fmul fast float %1922, %1748
  %1947 = fmul fast float %1922, %1749
  %1948 = fadd fast float %1946, %1252
  %1949 = fadd fast float %1947, %1253
  %1950 = call float @dx.op.binary.f32(i32 36, float %1263, float %1750)  ; FMin(a,b)
  %1951 = fsub fast float %1950, %1263
  %1952 = fmul fast float %1951, %1925
  %1953 = fadd fast float %1952, %1263
  %1954 = fadd fast float %1747, %1262
  %1955 = fmul fast float %1954, 0x3FF337FAE0000000
  %1956 = fmul fast float %1262, %1262
  %1957 = fmul fast float %1747, %1747
  %1958 = fadd fast float %1957, %1956
  %1959 = fmul fast float %1958, 0x3FE5152B00000000
  %1960 = fmul fast float %1262, 0xBFCC1F85E0000000
  %1961 = fmul fast float %1960, %1747
  %1962 = fadd fast float %1961, 0xBFE1363700000000
  %1963 = fadd fast float %1962, %1955
  %1964 = fsub fast float %1963, %1959
  %1965 = fmul fast float %1954, 0x3FBA6F0D00000000
  %1966 = fmul fast float %1958, 0x3FD0432880000000
  %1967 = fmul fast float %1262, 0xBFEF110800000000
  %1968 = fmul fast float %1967, %1747
  %1969 = fadd fast float %1968, 1.000000e+00
  %1970 = fsub fast float %1969, %1965
  %1971 = fadd fast float %1970, %1966
  %1972 = fdiv fast float %1964, %1971
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = fsub fast float %1973, %1262
  %1975 = fmul fast float %1974, %1928
  %1976 = fadd fast float %1975, %1262
  br label %1991

; <label>:1977                                    ; preds = %1943
  %1978 = icmp eq i32 %1917, 8
  br i1 %1978, label %1979, label %1991

; <label>:1979                                    ; preds = %1977
  %1980 = fmul fast float %1922, %1748
  %1981 = fmul fast float %1922, %1749
  %1982 = fadd fast float %1980, %1252
  %1983 = fadd fast float %1981, %1253
  %1984 = call float @dx.op.binary.f32(i32 36, float %1263, float %1750)  ; FMin(a,b)
  %1985 = fsub fast float %1984, %1263
  %1986 = fmul fast float %1985, %1925
  %1987 = fadd fast float %1986, %1263
  %1988 = fsub fast float %1747, %1262
  %1989 = fmul fast float %1928, %1988
  %1990 = fadd fast float %1989, %1262
  br label %1991

; <label>:1991                                    ; preds = %1979, %1977, %1945, %1930, %1908, %1446, %1265, %1251
  %1992 = phi float [ %1252, %1908 ], [ %1252, %1446 ], [ %1252, %1251 ], [ %1982, %1979 ], [ %1252, %1977 ], [ %1948, %1945 ], [ %1935, %1930 ], [ %1252, %1265 ]
  %1993 = phi float [ %1253, %1908 ], [ %1253, %1446 ], [ %1253, %1251 ], [ %1983, %1979 ], [ %1253, %1977 ], [ %1949, %1945 ], [ %1936, %1930 ], [ %1253, %1265 ]
  %1994 = phi float [ %1909, %1908 ], [ %1254, %1446 ], [ %1254, %1251 ], [ %1909, %1979 ], [ %1909, %1977 ], [ %1909, %1945 ], [ %1909, %1930 ], [ %1254, %1265 ]
  %1995 = phi float [ %1910, %1908 ], [ %1255, %1446 ], [ %1255, %1251 ], [ %1910, %1979 ], [ %1910, %1977 ], [ %1910, %1945 ], [ %1910, %1930 ], [ %1255, %1265 ]
  %1996 = phi float [ %1911, %1908 ], [ %1256, %1446 ], [ %1256, %1251 ], [ %1911, %1979 ], [ %1911, %1977 ], [ %1911, %1945 ], [ %1911, %1930 ], [ %1256, %1265 ]
  %1997 = phi float [ %1912, %1908 ], [ %1257, %1446 ], [ %1257, %1251 ], [ %1912, %1979 ], [ %1912, %1977 ], [ %1912, %1945 ], [ %1912, %1930 ], [ %1257, %1265 ]
  %1998 = phi float [ %1913, %1908 ], [ %1258, %1446 ], [ %1258, %1251 ], [ %1913, %1979 ], [ %1913, %1977 ], [ %1913, %1945 ], [ %1913, %1930 ], [ %1258, %1265 ]
  %1999 = phi float [ %1914, %1908 ], [ %1259, %1446 ], [ %1259, %1251 ], [ %1914, %1979 ], [ %1914, %1977 ], [ %1914, %1945 ], [ %1914, %1930 ], [ %1259, %1265 ]
  %2000 = phi float [ %1915, %1908 ], [ %1260, %1446 ], [ %1260, %1251 ], [ %1915, %1979 ], [ %1915, %1977 ], [ %1915, %1945 ], [ %1915, %1930 ], [ %1260, %1265 ]
  %2001 = phi float [ %1262, %1908 ], [ %1262, %1446 ], [ %1262, %1251 ], [ %1990, %1979 ], [ %1262, %1977 ], [ %1976, %1945 ], [ %1942, %1930 ], [ %1262, %1265 ]
  %2002 = phi float [ %1263, %1908 ], [ %1263, %1446 ], [ %1263, %1251 ], [ %1987, %1979 ], [ %1263, %1977 ], [ %1953, %1945 ], [ %1939, %1930 ], [ %1263, %1265 ]
  %2003 = phi float [ %1916, %1908 ], [ %1264, %1446 ], [ %1264, %1251 ], [ %1916, %1979 ], [ %1916, %1977 ], [ %1916, %1945 ], [ %1916, %1930 ], [ %1264, %1265 ]
  br i1 %652, label %2730, label %2004

; <label>:2004                                    ; preds = %1991
  %2005 = icmp ult i32 %708, 3
  %2006 = add i32 %58, 56
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = add i32 %58, 60
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = or i32 %2011, %2008
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2730, label %2014

; <label>:2014                                    ; preds = %2004
  %2015 = and i32 %2008, 262144
  %2016 = icmp ne i32 %2015, 0
  %2017 = select i1 %2016, float %65, float 1.000000e+00
  %2018 = select i1 %2016, float %66, float 0.000000e+00
  %2019 = select i1 %2016, float %67, float 0.000000e+00
  %2020 = select i1 %2016, float %68, float 1.000000e+00
  %2021 = select i1 %2016, float %69, float %97
  %2022 = select i1 %2016, float %70, float %98
  %2023 = add i32 %58, 316
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = lshr i32 %2025, 16
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = fmul fast float %2027, 0x3F50624DE0000000
  %2029 = add i32 %58, 120
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 16
  %2033 = and i32 %2032, 255
  %2034 = lshr i32 %2031, 24
  %2035 = add i32 %58, 324
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 65535
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = lshr i32 %2037, 16
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = add i32 %58, 64
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = lshr i32 %2044, 22
  %2046 = shl nuw nsw i32 %2045, 5
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = shl i32 %2044, 4
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = lshr i32 %2044, 7
  %2052 = and i32 %2051, 32752
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2056 = fmul fast float %2055, 1.000000e+03
  %2057 = fmul fast float %2056, %536
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = fadd fast float %2058, %524
  %2060 = fmul fast float %2056, %538
  %2061 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2062 = fadd fast float %2061, %525
  %2063 = fmul fast float %2028, %2056
  %2064 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2065 = fmul fast float %2064, 0x401921FB60000000
  %2066 = fadd fast float %2065, %2047
  %2067 = call float @dx.op.unary.f32(i32 13, float %2066)  ; Sin(value)
  %2068 = call float @dx.op.unary.f32(i32 12, float %2066)  ; Cos(value)
  %2069 = fsub fast float -0.000000e+00, %2067
  %2070 = fadd fast float %2021, -5.000000e-01
  %2071 = fadd fast float %2022, -5.000000e-01
  %2072 = fmul fast float %2039, %2070
  %2073 = fmul fast float %2041, %2071
  %2074 = fadd fast float %2072, 5.000000e-01
  %2075 = fadd fast float %2073, 5.000000e-01
  %2076 = fmul fast float %2050, %2074
  %2077 = fmul fast float %2053, %2075
  %2078 = fmul fast float %2068, %2076
  %2079 = call float @dx.op.tertiary.f32(i32 46, float %2069, float %2077, float %2078)  ; FMad(a,b,c)
  %2080 = fmul fast float %2067, %2076
  %2081 = call float @dx.op.tertiary.f32(i32 46, float %2068, float %2077, float %2080)  ; FMad(a,b,c)
  %2082 = fadd fast float %2059, %2079
  %2083 = fadd fast float %2062, %2081
  %2084 = icmp ugt i32 %2033, 1
  %2085 = icmp ugt i32 %2031, 33554431
  %2086 = or i1 %2085, %2084
  br i1 %2086, label %2087, label %2112

; <label>:2087                                    ; preds = %2014
  %2088 = add i32 %58, 260
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = lshr i32 %2090, 16
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = fmul fast float %2055, %2092
  %2094 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2095 = mul nuw nsw i32 %2033, %2034
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2094, %2096
  %2098 = call float @dx.op.unary.f32(i32 27, float %2097)  ; Round_ni(value)
  %2099 = fptoui float %2098 to i32
  %2100 = urem i32 %2099, %2033
  %2101 = udiv i32 %2099, %2034
  %2102 = call float @dx.op.unary.f32(i32 22, float %2082)  ; Frc(value)
  %2103 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2104 = uitofp i32 %2100 to float
  %2105 = uitofp i32 %2101 to float
  %2106 = fadd fast float %2102, %2104
  %2107 = fadd fast float %2103, %2105
  %2108 = uitofp i32 %2033 to float
  %2109 = uitofp i32 %2034 to float
  %2110 = fdiv fast float %2106, %2108
  %2111 = fdiv fast float %2107, %2109
  br label %2112

; <label>:2112                                    ; preds = %2087, %2014
  %2113 = phi float [ %2110, %2087 ], [ %2082, %2014 ]
  %2114 = phi float [ %2111, %2087 ], [ %2083, %2014 ]
  %2115 = and i32 %2008, 256
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2163, label %2117

; <label>:2117                                    ; preds = %2112
  %2118 = add i32 %58, 448
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = add i32 %2120, 0
  %2122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2122, %dx.types.Handle %112, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = add i32 %58, 132
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = shl i32 %2127, 4
  %2129 = and i32 %2128, 32752
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = lshr i32 %2127, 7
  %2132 = and i32 %2131, 32752
  %2133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2132)  ; LegacyF16ToF32(value)
  %2134 = fsub fast float 1.000000e+00, %704
  %2135 = call float @dx.op.binary.f32(i32 35, float %2134, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2136 = bitcast float %704 to i32
  %2137 = sitofp i32 %2136 to float
  %2138 = fadd fast float %2137, 0xC1CFBF8940000000
  %2139 = fmul fast float %2133, %2138
  %2140 = fadd fast float %2139, 0x41CFBF8940000000
  %2141 = fptosi float %2140 to i32
  %2142 = bitcast i32 %2141 to float
  %2143 = bitcast float %2135 to i32
  %2144 = sitofp i32 %2143 to float
  %2145 = fadd fast float %2144, 0xC1CFBF8940000000
  %2146 = fmul fast float %2145, %2133
  %2147 = fadd fast float %2146, 0x41CFBF8940000000
  %2148 = fptosi float %2147 to i32
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2142, %2130
  %2151 = fmul fast float %2149, %2130
  %2152 = fsub fast float %2135, %2150
  %2153 = fadd fast float %2151, %2135
  %2154 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2156 = fsub fast float %2124, %2154
  %2157 = fsub fast float %2155, %2154
  %2158 = bitcast float %2157 to i32
  %2159 = sub nsw i32 2129859010, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2160, %2156
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  br label %2163

; <label>:2163                                    ; preds = %2117, %2112
  %2164 = phi float [ %2162, %2117 ], [ %704, %2112 ]
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 128
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2185, label %2169

; <label>:2169                                    ; preds = %2163
  %2170 = add i32 %58, 432
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = add i32 %2172, 0
  %2174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2174, %dx.types.Handle %112, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 524288
  %2180 = icmp ne i32 %2179, 0
  %2181 = fcmp fast ogt float %2176, 0x3FE0101020000000
  %2182 = select i1 %2181, float 1.000000e+00, float 0.000000e+00
  %2183 = select i1 %2180, float %2182, float %2176
  %2184 = fmul fast float %2183, %2164
  br label %2185

; <label>:2185                                    ; preds = %2169, %2163
  %2186 = phi float [ %2184, %2169 ], [ %2164, %2163 ]
  %2187 = fcmp fast ult float %2186, 0x3F70101020000000
  br i1 %2187, label %2730, label %2188

; <label>:2188                                    ; preds = %2185
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 16
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2391, label %2193

; <label>:2193                                    ; preds = %2188
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %58, 384
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = add i32 %2198, 0
  %2200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2200, %dx.types.Handle %111, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.ResRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.ResRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.ResRet.f32 %2201, 3
  %2206 = and i32 %2195, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = lshr i32 %2195, 8
  %2209 = and i32 %2208, 255
  %2210 = uitofp i32 %2209 to float
  %2211 = fmul fast float %2205, %2207
  %2212 = fadd fast float %2211, %2210
  %2213 = fmul fast float %2212, 0x3F70101000000000
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 512
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2226, label %2218

; <label>:2218                                    ; preds = %2193
  %2219 = add i32 %58, 468
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = add i32 %2221, 0
  %2223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2223, %dx.types.Handle %112, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  br label %2226

; <label>:2226                                    ; preds = %2218, %2193
  %2227 = phi float [ %2225, %2218 ], [ 1.000000e+00, %2193 ]
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 33554432
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %2338, label %2232

; <label>:2232                                    ; preds = %2226
  %2233 = add i32 %58, 256
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = and i32 %2235, 65535
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = lshr i32 %2235, 16
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = add i32 %58, 260
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = and i32 %2242, 65535
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = lshr i32 %2246, 24
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = and i32 %2246, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = lshr i32 %2246, 8
  %2254 = and i32 %2253, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = lshr i32 %2246, 16
  %2258 = and i32 %2257, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = add i32 %58, 252
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 24
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = and i32 %2263, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = lshr i32 %2263, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2263, 16
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = bitcast float %2202 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = sub nsw i32 1597463174, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2202, 5.000000e-01
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, %2282
  %2285 = fsub fast float 1.500000e+00, %2284
  %2286 = fmul fast float %2281, %2202
  %2287 = fmul fast float %2286, %2285
  %2288 = bitcast float %2203 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = sub nsw i32 1597463174, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2203, 5.000000e-01
  %2293 = fmul fast float %2291, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fsub fast float 1.500000e+00, %2294
  %2296 = fmul fast float %2291, %2203
  %2297 = fmul fast float %2296, %2295
  %2298 = bitcast float %2204 to i32
  %2299 = ashr i32 %2298, 1
  %2300 = sub nsw i32 1597463174, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2204, 5.000000e-01
  %2303 = fmul fast float %2301, %2301
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float 1.500000e+00, %2304
  %2306 = fmul fast float %2301, %2204
  %2307 = fmul fast float %2306, %2305
  %2308 = fsub fast float %2287, %2269
  %2309 = fsub fast float %2297, %2273
  %2310 = fsub fast float %2307, %2277
  %2311 = fmul fast float %2308, %2237
  %2312 = fmul fast float %2309, %2239
  %2313 = fmul fast float %2310, %2244
  %2314 = fadd fast float %2311, %2252
  %2315 = fadd fast float %2312, %2256
  %2316 = fadd fast float %2313, %2260
  %2317 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2318 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2320 = fmul fast float %2317, %2317
  %2321 = fmul fast float %2318, %2318
  %2322 = fmul fast float %2319, %2319
  %2323 = fsub fast float %2320, %2202
  %2324 = fsub fast float %2321, %2203
  %2325 = fsub fast float %2322, %2204
  %2326 = fmul fast float %2323, %2227
  %2327 = fmul fast float %2324, %2227
  %2328 = fmul fast float %2325, %2227
  %2329 = fadd fast float %2326, %2202
  %2330 = fadd fast float %2327, %2203
  %2331 = fadd fast float %2328, %2204
  %2332 = fadd fast float %2249, %2213
  %2333 = fsub fast float %2332, %2266
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = fsub fast float %2334, %2213
  %2336 = fmul fast float %2335, %2227
  %2337 = fadd fast float %2336, %2213
  br label %2391

; <label>:2338                                    ; preds = %2226
  %2339 = and i32 %2229, 134217728
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2375, label %2341

; <label>:2341                                    ; preds = %2338
  %2342 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2343 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2344 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %2345 = fadd fast float %2342, -5.000000e-01
  %2346 = fadd fast float %2343, -5.000000e-01
  %2347 = fadd fast float %2344, -5.000000e-01
  %2348 = fmul fast float %2345, %2227
  %2349 = fmul fast float %2346, %2227
  %2350 = fmul fast float %2347, %2227
  %2351 = fadd fast float %2348, 5.000000e-01
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = fadd fast float %2350, 5.000000e-01
  %2354 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2355 = call float @dx.op.unary.f32(i32 24, float %2203)  ; Sqrt(value)
  %2356 = call float @dx.op.unary.f32(i32 24, float %2204)  ; Sqrt(value)
  %2357 = fmul fast float %2351, 2.000000e+00
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2358, %2354
  %2360 = fadd fast float %2359, %2357
  %2361 = fmul fast float %2360, %2354
  %2362 = fmul fast float %2352, 2.000000e+00
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = fmul fast float %2363, %2355
  %2365 = fadd fast float %2364, %2362
  %2366 = fmul fast float %2365, %2355
  %2367 = fmul fast float %2353, 2.000000e+00
  %2368 = fsub fast float 1.000000e+00, %2367
  %2369 = fmul fast float %2368, %2356
  %2370 = fadd fast float %2369, %2367
  %2371 = fmul fast float %2370, %2356
  %2372 = fmul fast float %2361, %2361
  %2373 = fmul fast float %2366, %2366
  %2374 = fmul fast float %2371, %2371
  br label %2391

; <label>:2375                                    ; preds = %2338
  %2376 = fmul fast float %512, %512
  %2377 = fmul fast float %513, %513
  %2378 = fmul fast float %514, %514
  %2379 = fadd fast float %2376, -1.000000e+00
  %2380 = fadd fast float %2377, -1.000000e+00
  %2381 = fadd fast float %2378, -1.000000e+00
  %2382 = fmul fast float %2227, %2379
  %2383 = fmul fast float %2227, %2380
  %2384 = fmul fast float %2227, %2381
  %2385 = fadd fast float %2382, 1.000000e+00
  %2386 = fadd fast float %2383, 1.000000e+00
  %2387 = fadd fast float %2384, 1.000000e+00
  %2388 = fmul fast float %2385, %2202
  %2389 = fmul fast float %2386, %2203
  %2390 = fmul fast float %2387, %2204
  br label %2391

; <label>:2391                                    ; preds = %2375, %2341, %2232, %2188
  %2392 = phi float [ %2337, %2232 ], [ %2213, %2341 ], [ %2213, %2375 ], [ 0x3FA23C0BE0000000, %2188 ]
  %2393 = phi float [ %2329, %2232 ], [ %2372, %2341 ], [ %2388, %2375 ], [ 1.000000e+00, %2188 ]
  %2394 = phi float [ %2330, %2232 ], [ %2373, %2341 ], [ %2389, %2375 ], [ 1.000000e+00, %2188 ]
  %2395 = phi float [ %2331, %2232 ], [ %2374, %2341 ], [ %2390, %2375 ], [ 1.000000e+00, %2188 ]
  %2396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.i32 %2396, 1
  %2398 = and i32 %2397, 1
  %2399 = icmp ne i32 %2398, 0
  %2400 = add i32 %58, 356
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 32
  %2404 = icmp ne i32 %2403, 0
  %2405 = and i1 %2399, %2404
  %2406 = select i1 %2405, float 1.000000e+00, float %2393
  %2407 = select i1 %2405, float 0x3FD3333340000000, float %2394
  %2408 = select i1 %2405, float 0x3FD3333340000000, float %2395
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 32
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %2485, label %2413

; <label>:2413                                    ; preds = %2391
  %2414 = add i32 %58, 124
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %58, 400
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2421, %dx.types.Handle %111, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2426 = extractvalue %dx.types.ResRet.f32 %2422, 3
  %2427 = and i32 %2416, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2416, 8
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = lshr i32 %2416, 16
  %2433 = and i32 %2432, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F70101000000000
  %2436 = fmul fast float %2423, %2428
  %2437 = fadd fast float %2436, %2431
  %2438 = fmul fast float %2437, 0x3F70101000000000
  %2439 = fadd fast float %2424, -5.000000e-01
  %2440 = fadd fast float %2426, -5.000000e-01
  %2441 = fmul fast float %2439, %2435
  %2442 = fmul fast float %2440, %2435
  %2443 = fadd fast float %2441, 5.000000e-01
  %2444 = fadd fast float %2442, 5.000000e-01
  %2445 = fmul fast float %2443, 2.000000e+00
  %2446 = fadd fast float %2445, -1.000000e+00
  %2447 = fmul fast float %2444, 2.000000e+00
  %2448 = fadd fast float %2447, -1.000000e+00
  %2449 = fadd fast float %2446, %2448
  %2450 = fmul fast float %2449, 5.000000e-01
  %2451 = fsub fast float %2446, %2448
  %2452 = fmul fast float %2451, 5.000000e-01
  %2453 = call float @dx.op.unary.f32(i32 6, float %2450)  ; FAbs(value)
  %2454 = fsub fast float 1.000000e+00, %2453
  %2455 = call float @dx.op.unary.f32(i32 6, float %2452)  ; FAbs(value)
  %2456 = fsub fast float %2454, %2455
  %2457 = call float @dx.op.dot3.f32(i32 55, float %2450, float %2452, float %2456, float %2450, float %2452, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %2458 = call float @dx.op.unary.f32(i32 25, float %2457)  ; Rsqrt(value)
  %2459 = fmul fast float %2450, %2458
  %2460 = fmul fast float %2452, %2458
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 67108864
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2481, label %2465

; <label>:2465                                    ; preds = %2413
  %2466 = add i32 %58, 312
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 65535
  %2470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2469)  ; LegacyF16ToF32(value)
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 65535
  %2474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2473)  ; LegacyF16ToF32(value)
  %2475 = lshr i32 %2468, 16
  %2476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2475)  ; LegacyF16ToF32(value)
  %2477 = fsub fast float %2438, %2476
  %2478 = fmul fast float %2477, %2470
  %2479 = fadd fast float %2478, %2474
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  br label %2481

; <label>:2481                                    ; preds = %2465, %2413
  %2482 = phi float [ %2480, %2465 ], [ %2438, %2413 ]
  %2483 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2017, float %2018)  ; Dot2(ax,ay,bx,by)
  %2484 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2019, float %2020)  ; Dot2(ax,ay,bx,by)
  br label %2485

; <label>:2485                                    ; preds = %2481, %2391
  %2486 = phi float [ %2482, %2481 ], [ 0x3FD6666660000000, %2391 ]
  %2487 = phi float [ %2483, %2481 ], [ 0.000000e+00, %2391 ]
  %2488 = phi float [ %2484, %2481 ], [ 0.000000e+00, %2391 ]
  %2489 = phi float [ %2425, %2481 ], [ 1.000000e+00, %2391 ]
  %2490 = add i32 %58, 192
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = lshr i32 %2492, 22
  %2494 = shl nuw nsw i32 %2493, 5
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 64
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2533, label %2500

; <label>:2500                                    ; preds = %2485
  %2501 = add i32 %58, 416
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = add i32 %2503, 0
  %2505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = and i32 %2507, 131072
  %2509 = icmp eq i32 %2508, 0
  %2510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2505, %dx.types.Handle %111, float %2113, float %2114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2511 = extractvalue %dx.types.ResRet.f32 %2510, 0
  %2512 = extractvalue %dx.types.ResRet.f32 %2510, 1
  %2513 = extractvalue %dx.types.ResRet.f32 %2510, 2
  %2514 = fmul fast float %495, %2511
  %2515 = fmul fast float %496, %2512
  %2516 = fmul fast float %497, %2513
  br i1 %2509, label %2523, label %2517

; <label>:2517                                    ; preds = %2500
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = fmul fast float %2519, %2514
  %2521 = fmul fast float %2519, %2515
  %2522 = fmul fast float %2519, %2516
  br label %2523

; <label>:2523                                    ; preds = %2517, %2500
  %2524 = phi float [ %2520, %2517 ], [ %2514, %2500 ]
  %2525 = phi float [ %2521, %2517 ], [ %2515, %2500 ]
  %2526 = phi float [ %2522, %2517 ], [ %2516, %2500 ]
  %2527 = fmul fast float %2524, %2495
  %2528 = select i1 %270, float %2527, float %2524
  %2529 = call float @dx.op.dot3.f32(i32 55, float %2528, float %2525, float %2526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2530 = select i1 %270, float 0.000000e+00, float %2524
  %2531 = select i1 %270, float %2529, float %2525
  %2532 = select i1 %270, float 0.000000e+00, float %2526
  br label %2533

; <label>:2533                                    ; preds = %2523, %2485
  %2534 = phi float [ %2530, %2523 ], [ 0.000000e+00, %2485 ]
  %2535 = phi float [ %2531, %2523 ], [ 0.000000e+00, %2485 ]
  %2536 = phi float [ %2532, %2523 ], [ 0.000000e+00, %2485 ]
  %2537 = add i32 %58, 128
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = lshr i32 %2539, 8
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = call float @dx.op.dot3.f32(i32 55, float %2406, float %2407, float %2408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2546 = fmul fast float %2544, %2545
  %2547 = fadd fast float %2546, %2541
  %2548 = fmul fast float %2547, 0x3F70101020000000
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  br i1 %2005, label %2550, label %2558

; <label>:2550                                    ; preds = %2533
  %2551 = fsub fast float 1.000000e+00, %2186
  %2552 = fmul fast float %2551, %1994
  %2553 = fmul fast float %2551, %1995
  %2554 = fmul fast float %2551, %1996
  %2555 = fmul fast float %2551, %1997
  %2556 = fmul fast float %2551, %1998
  %2557 = fmul fast float %2551, %1999
  br label %2558

; <label>:2558                                    ; preds = %2550, %2533
  %2559 = phi float [ %2552, %2550 ], [ %1994, %2533 ]
  %2560 = phi float [ %2553, %2550 ], [ %1995, %2533 ]
  %2561 = phi float [ %2554, %2550 ], [ %1996, %2533 ]
  %2562 = phi float [ %2555, %2550 ], [ %1997, %2533 ]
  %2563 = phi float [ %2556, %2550 ], [ %1998, %2533 ]
  %2564 = phi float [ %2557, %2550 ], [ %1999, %2533 ]
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 3
  %2568 = icmp eq i32 %2567, 3
  br i1 %2568, label %2647, label %2569

; <label>:2569                                    ; preds = %2558
  %2570 = and i32 %2566, 16
  %2571 = icmp ne i32 %2570, 0
  %2572 = select i1 %2571, float %2186, float 0.000000e+00
  %2573 = icmp eq i32 %2567, 0
  br i1 %2573, label %2574, label %2602

; <label>:2574                                    ; preds = %2569
  %2575 = and i32 %2566, 64
  %2576 = icmp ne i32 %2575, 0
  %2577 = select i1 %2576, float %2186, float 0.000000e+00
  %2578 = fsub fast float %2406, %2559
  %2579 = fsub fast float %2407, %2560
  %2580 = fsub fast float %2408, %2561
  %2581 = fmul fast float %2572, %2578
  %2582 = fmul fast float %2572, %2579
  %2583 = fmul fast float %2572, %2580
  %2584 = fadd fast float %2581, %2559
  %2585 = fadd fast float %2582, %2560
  %2586 = fadd fast float %2583, %2561
  %2587 = fsub fast float %2392, %2000
  %2588 = fmul fast float %2572, %2587
  %2589 = fadd fast float %2588, %2000
  %2590 = fsub fast float %2534, %2562
  %2591 = fsub fast float %2535, %2563
  %2592 = fsub fast float %2536, %2564
  %2593 = fmul fast float %2577, %2590
  %2594 = fmul fast float %2577, %2591
  %2595 = fmul fast float %2577, %2592
  %2596 = fadd fast float %2593, %2562
  %2597 = fadd fast float %2594, %2563
  %2598 = fadd fast float %2595, %2564
  %2599 = fsub fast float %2549, %2003
  %2600 = fmul fast float %2572, %2599
  %2601 = fadd fast float %2600, %2003
  br label %2647

; <label>:2602                                    ; preds = %2569
  %2603 = icmp eq i32 %2567, 1
  br i1 %2603, label %2604, label %2617

; <label>:2604                                    ; preds = %2602
  %2605 = fadd fast float %2406, -1.000000e+00
  %2606 = fadd fast float %2407, -1.000000e+00
  %2607 = fadd fast float %2408, -1.000000e+00
  %2608 = fmul fast float %2572, %2605
  %2609 = fmul fast float %2572, %2606
  %2610 = fmul fast float %2572, %2607
  %2611 = fadd fast float %2608, 1.000000e+00
  %2612 = fadd fast float %2609, 1.000000e+00
  %2613 = fadd fast float %2610, 1.000000e+00
  %2614 = fmul fast float %2611, %2559
  %2615 = fmul fast float %2612, %2560
  %2616 = fmul fast float %2613, %2561
  br label %2647

; <label>:2617                                    ; preds = %2602
  %2618 = icmp eq i32 %2567, 2
  br i1 %2618, label %2619, label %2647

; <label>:2619                                    ; preds = %2617
  %2620 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2621 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2622 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2623 = fadd fast float %2620, -5.000000e-01
  %2624 = fadd fast float %2621, -5.000000e-01
  %2625 = fadd fast float %2622, -5.000000e-01
  %2626 = fmul fast float %2623, %2572
  %2627 = fmul fast float %2624, %2572
  %2628 = fmul fast float %2625, %2572
  %2629 = fadd fast float %2626, 5.000000e-01
  %2630 = fadd fast float %2627, 5.000000e-01
  %2631 = fadd fast float %2628, 5.000000e-01
  %2632 = fmul fast float %2629, 2.000000e+00
  %2633 = fsub fast float 1.000000e+00, %2632
  %2634 = fmul fast float %2633, %2559
  %2635 = fadd fast float %2634, %2632
  %2636 = fmul fast float %2635, %2559
  %2637 = fmul fast float %2630, 2.000000e+00
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fmul fast float %2638, %2560
  %2640 = fadd fast float %2639, %2637
  %2641 = fmul fast float %2640, %2560
  %2642 = fmul fast float %2631, 2.000000e+00
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2643, %2561
  %2645 = fadd fast float %2644, %2642
  %2646 = fmul fast float %2645, %2561
  br label %2647

; <label>:2647                                    ; preds = %2619, %2617, %2604, %2574, %2558
  %2648 = phi float [ %2559, %2558 ], [ %2636, %2619 ], [ %2559, %2617 ], [ %2614, %2604 ], [ %2584, %2574 ]
  %2649 = phi float [ %2560, %2558 ], [ %2641, %2619 ], [ %2560, %2617 ], [ %2615, %2604 ], [ %2585, %2574 ]
  %2650 = phi float [ %2561, %2558 ], [ %2646, %2619 ], [ %2561, %2617 ], [ %2616, %2604 ], [ %2586, %2574 ]
  %2651 = phi float [ %2562, %2558 ], [ %2562, %2619 ], [ %2562, %2617 ], [ %2562, %2604 ], [ %2596, %2574 ]
  %2652 = phi float [ %2563, %2558 ], [ %2563, %2619 ], [ %2563, %2617 ], [ %2563, %2604 ], [ %2597, %2574 ]
  %2653 = phi float [ %2564, %2558 ], [ %2564, %2619 ], [ %2564, %2617 ], [ %2564, %2604 ], [ %2598, %2574 ]
  %2654 = phi float [ %2000, %2558 ], [ %2000, %2619 ], [ %2000, %2617 ], [ %2000, %2604 ], [ %2589, %2574 ]
  %2655 = phi float [ %2003, %2558 ], [ %2003, %2619 ], [ %2003, %2617 ], [ %2003, %2604 ], [ %2601, %2574 ]
  %2656 = and i32 %2566, 12
  %2657 = icmp eq i32 %2656, 12
  br i1 %2657, label %2730, label %2658

; <label>:2658                                    ; preds = %2647
  %2659 = and i32 %2566, 2097184
  %2660 = icmp eq i32 %2659, 2097184
  %2661 = select i1 %2660, float %2186, float 0.000000e+00
  %2662 = and i32 %2566, 4194336
  %2663 = icmp eq i32 %2662, 4194336
  %2664 = select i1 %2663, float %2186, float 0.000000e+00
  %2665 = and i32 %2566, 8388640
  %2666 = icmp eq i32 %2665, 8388640
  %2667 = select i1 %2666, float %2186, float 0.000000e+00
  %2668 = icmp eq i32 %2656, 0
  br i1 %2668, label %2669, label %2682

; <label>:2669                                    ; preds = %2658
  %2670 = fsub fast float %2487, %1992
  %2671 = fsub fast float %2488, %1993
  %2672 = fmul fast float %2661, %2670
  %2673 = fmul fast float %2661, %2671
  %2674 = fadd fast float %2672, %1992
  %2675 = fadd fast float %2673, %1993
  %2676 = fsub fast float %2489, %2002
  %2677 = fmul fast float %2664, %2676
  %2678 = fadd fast float %2677, %2002
  %2679 = fsub fast float %2486, %2001
  %2680 = fmul fast float %2667, %2679
  %2681 = fadd fast float %2680, %2001
  br label %2730

; <label>:2682                                    ; preds = %2658
  %2683 = icmp eq i32 %2656, 4
  br i1 %2683, label %2684, label %2716

; <label>:2684                                    ; preds = %2682
  %2685 = fmul fast float %2661, %2487
  %2686 = fmul fast float %2661, %2488
  %2687 = fadd fast float %2685, %1992
  %2688 = fadd fast float %2686, %1993
  %2689 = call float @dx.op.binary.f32(i32 36, float %2002, float %2489)  ; FMin(a,b)
  %2690 = fsub fast float %2689, %2002
  %2691 = fmul fast float %2690, %2664
  %2692 = fadd fast float %2691, %2002
  %2693 = fadd fast float %2486, %2001
  %2694 = fmul fast float %2693, 0x3FF337FAE0000000
  %2695 = fmul fast float %2001, %2001
  %2696 = fmul fast float %2486, %2486
  %2697 = fadd fast float %2696, %2695
  %2698 = fmul fast float %2697, 0x3FE5152B00000000
  %2699 = fmul fast float %2001, 0xBFCC1F85E0000000
  %2700 = fmul fast float %2699, %2486
  %2701 = fadd fast float %2700, 0xBFE1363700000000
  %2702 = fadd fast float %2701, %2694
  %2703 = fsub fast float %2702, %2698
  %2704 = fmul fast float %2693, 0x3FBA6F0D00000000
  %2705 = fmul fast float %2697, 0x3FD0432880000000
  %2706 = fmul fast float %2001, 0xBFEF110800000000
  %2707 = fmul fast float %2706, %2486
  %2708 = fadd fast float %2707, 1.000000e+00
  %2709 = fsub fast float %2708, %2704
  %2710 = fadd fast float %2709, %2705
  %2711 = fdiv fast float %2703, %2710
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fsub fast float %2712, %2001
  %2714 = fmul fast float %2713, %2667
  %2715 = fadd fast float %2714, %2001
  br label %2730

; <label>:2716                                    ; preds = %2682
  %2717 = icmp eq i32 %2656, 8
  br i1 %2717, label %2718, label %2730

; <label>:2718                                    ; preds = %2716
  %2719 = fmul fast float %2661, %2487
  %2720 = fmul fast float %2661, %2488
  %2721 = fadd fast float %2719, %1992
  %2722 = fadd fast float %2720, %1993
  %2723 = call float @dx.op.binary.f32(i32 36, float %2002, float %2489)  ; FMin(a,b)
  %2724 = fsub fast float %2723, %2002
  %2725 = fmul fast float %2724, %2664
  %2726 = fadd fast float %2725, %2002
  %2727 = fsub fast float %2486, %2001
  %2728 = fmul fast float %2667, %2727
  %2729 = fadd fast float %2728, %2001
  br label %2730

; <label>:2730                                    ; preds = %2718, %2716, %2684, %2669, %2647, %2185, %2004, %1991
  %2731 = phi float [ %1992, %2647 ], [ %1992, %2185 ], [ %1992, %1991 ], [ %2721, %2718 ], [ %1992, %2716 ], [ %2687, %2684 ], [ %2674, %2669 ], [ %1992, %2004 ]
  %2732 = phi float [ %1993, %2647 ], [ %1993, %2185 ], [ %1993, %1991 ], [ %2722, %2718 ], [ %1993, %2716 ], [ %2688, %2684 ], [ %2675, %2669 ], [ %1993, %2004 ]
  %2733 = phi float [ %2648, %2647 ], [ %1994, %2185 ], [ %1994, %1991 ], [ %2648, %2718 ], [ %2648, %2716 ], [ %2648, %2684 ], [ %2648, %2669 ], [ %1994, %2004 ]
  %2734 = phi float [ %2649, %2647 ], [ %1995, %2185 ], [ %1995, %1991 ], [ %2649, %2718 ], [ %2649, %2716 ], [ %2649, %2684 ], [ %2649, %2669 ], [ %1995, %2004 ]
  %2735 = phi float [ %2650, %2647 ], [ %1996, %2185 ], [ %1996, %1991 ], [ %2650, %2718 ], [ %2650, %2716 ], [ %2650, %2684 ], [ %2650, %2669 ], [ %1996, %2004 ]
  %2736 = phi float [ %2651, %2647 ], [ %1997, %2185 ], [ %1997, %1991 ], [ %2651, %2718 ], [ %2651, %2716 ], [ %2651, %2684 ], [ %2651, %2669 ], [ %1997, %2004 ]
  %2737 = phi float [ %2652, %2647 ], [ %1998, %2185 ], [ %1998, %1991 ], [ %2652, %2718 ], [ %2652, %2716 ], [ %2652, %2684 ], [ %2652, %2669 ], [ %1998, %2004 ]
  %2738 = phi float [ %2653, %2647 ], [ %1999, %2185 ], [ %1999, %1991 ], [ %2653, %2718 ], [ %2653, %2716 ], [ %2653, %2684 ], [ %2653, %2669 ], [ %1999, %2004 ]
  %2739 = phi float [ %2654, %2647 ], [ %2000, %2185 ], [ %2000, %1991 ], [ %2654, %2718 ], [ %2654, %2716 ], [ %2654, %2684 ], [ %2654, %2669 ], [ %2000, %2004 ]
  %2740 = phi float [ %2001, %2647 ], [ %2001, %2185 ], [ %2001, %1991 ], [ %2729, %2718 ], [ %2001, %2716 ], [ %2715, %2684 ], [ %2681, %2669 ], [ %2001, %2004 ]
  %2741 = phi float [ %2002, %2647 ], [ %2002, %2185 ], [ %2002, %1991 ], [ %2726, %2718 ], [ %2002, %2716 ], [ %2692, %2684 ], [ %2678, %2669 ], [ %2002, %2004 ]
  %2742 = phi float [ %2655, %2647 ], [ %2003, %2185 ], [ %2003, %1991 ], [ %2655, %2718 ], [ %2655, %2716 ], [ %2655, %2684 ], [ %2655, %2669 ], [ %2003, %2004 ]
  br i1 %654, label %3469, label %2743

; <label>:2743                                    ; preds = %2730
  %2744 = icmp ult i32 %708, 4
  %2745 = add i32 %58, 72
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = add i32 %58, 76
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = or i32 %2750, %2747
  %2752 = icmp eq i32 %2751, 0
  br i1 %2752, label %3469, label %2753

; <label>:2753                                    ; preds = %2743
  %2754 = and i32 %2747, 262144
  %2755 = icmp ne i32 %2754, 0
  %2756 = select i1 %2755, float %65, float 1.000000e+00
  %2757 = select i1 %2755, float %66, float 0.000000e+00
  %2758 = select i1 %2755, float %67, float 0.000000e+00
  %2759 = select i1 %2755, float %68, float 1.000000e+00
  %2760 = select i1 %2755, float %69, float %97
  %2761 = select i1 %2755, float %70, float %98
  %2762 = add i32 %58, 332
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = lshr i32 %2764, 16
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = fmul fast float %2766, 0x3F50624DE0000000
  %2768 = add i32 %58, 136
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = lshr i32 %2770, 16
  %2772 = and i32 %2771, 255
  %2773 = lshr i32 %2770, 24
  %2774 = add i32 %58, 340
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = and i32 %2776, 65535
  %2778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2777)  ; LegacyF16ToF32(value)
  %2779 = lshr i32 %2776, 16
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = add i32 %58, 80
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = lshr i32 %2783, 22
  %2785 = shl nuw nsw i32 %2784, 5
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = shl i32 %2783, 4
  %2788 = and i32 %2787, 32752
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = lshr i32 %2783, 7
  %2791 = and i32 %2790, 32752
  %2792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2791)  ; LegacyF16ToF32(value)
  %2793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.f32 %2793, 3
  %2795 = fmul fast float %2794, 1.000000e+03
  %2796 = fmul fast float %2795, %643
  %2797 = call float @dx.op.unary.f32(i32 22, float %2796)  ; Frc(value)
  %2798 = fadd fast float %2797, %631
  %2799 = fmul fast float %2795, %645
  %2800 = call float @dx.op.unary.f32(i32 22, float %2799)  ; Frc(value)
  %2801 = fadd fast float %2800, %632
  %2802 = fmul fast float %2767, %2795
  %2803 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2804 = fmul fast float %2803, 0x401921FB60000000
  %2805 = fadd fast float %2804, %2786
  %2806 = call float @dx.op.unary.f32(i32 13, float %2805)  ; Sin(value)
  %2807 = call float @dx.op.unary.f32(i32 12, float %2805)  ; Cos(value)
  %2808 = fsub fast float -0.000000e+00, %2806
  %2809 = fadd fast float %2760, -5.000000e-01
  %2810 = fadd fast float %2761, -5.000000e-01
  %2811 = fmul fast float %2778, %2809
  %2812 = fmul fast float %2780, %2810
  %2813 = fadd fast float %2811, 5.000000e-01
  %2814 = fadd fast float %2812, 5.000000e-01
  %2815 = fmul fast float %2789, %2813
  %2816 = fmul fast float %2792, %2814
  %2817 = fmul fast float %2807, %2815
  %2818 = call float @dx.op.tertiary.f32(i32 46, float %2808, float %2816, float %2817)  ; FMad(a,b,c)
  %2819 = fmul fast float %2806, %2815
  %2820 = call float @dx.op.tertiary.f32(i32 46, float %2807, float %2816, float %2819)  ; FMad(a,b,c)
  %2821 = fadd fast float %2798, %2818
  %2822 = fadd fast float %2801, %2820
  %2823 = icmp ugt i32 %2772, 1
  %2824 = icmp ugt i32 %2770, 33554431
  %2825 = or i1 %2824, %2823
  br i1 %2825, label %2826, label %2851

; <label>:2826                                    ; preds = %2753
  %2827 = add i32 %58, 276
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = lshr i32 %2829, 16
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = fmul fast float %2794, %2831
  %2833 = call float @dx.op.unary.f32(i32 22, float %2832)  ; Frc(value)
  %2834 = mul nuw nsw i32 %2772, %2773
  %2835 = uitofp i32 %2834 to float
  %2836 = fmul fast float %2833, %2835
  %2837 = call float @dx.op.unary.f32(i32 27, float %2836)  ; Round_ni(value)
  %2838 = fptoui float %2837 to i32
  %2839 = urem i32 %2838, %2772
  %2840 = udiv i32 %2838, %2773
  %2841 = call float @dx.op.unary.f32(i32 22, float %2821)  ; Frc(value)
  %2842 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2843 = uitofp i32 %2839 to float
  %2844 = uitofp i32 %2840 to float
  %2845 = fadd fast float %2841, %2843
  %2846 = fadd fast float %2842, %2844
  %2847 = uitofp i32 %2772 to float
  %2848 = uitofp i32 %2773 to float
  %2849 = fdiv fast float %2845, %2847
  %2850 = fdiv fast float %2846, %2848
  br label %2851

; <label>:2851                                    ; preds = %2826, %2753
  %2852 = phi float [ %2849, %2826 ], [ %2821, %2753 ]
  %2853 = phi float [ %2850, %2826 ], [ %2822, %2753 ]
  %2854 = and i32 %2747, 256
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2902, label %2856

; <label>:2856                                    ; preds = %2851
  %2857 = add i32 %58, 452
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %2859, 0
  %2861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2861, %dx.types.Handle %112, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = add i32 %58, 148
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = shl i32 %2866, 4
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = lshr i32 %2866, 7
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = fsub fast float 1.000000e+00, %703
  %2874 = call float @dx.op.binary.f32(i32 35, float %2873, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2875 = bitcast float %703 to i32
  %2876 = sitofp i32 %2875 to float
  %2877 = fadd fast float %2876, 0xC1CFBF8940000000
  %2878 = fmul fast float %2872, %2877
  %2879 = fadd fast float %2878, 0x41CFBF8940000000
  %2880 = fptosi float %2879 to i32
  %2881 = bitcast i32 %2880 to float
  %2882 = bitcast float %2874 to i32
  %2883 = sitofp i32 %2882 to float
  %2884 = fadd fast float %2883, 0xC1CFBF8940000000
  %2885 = fmul fast float %2884, %2872
  %2886 = fadd fast float %2885, 0x41CFBF8940000000
  %2887 = fptosi float %2886 to i32
  %2888 = bitcast i32 %2887 to float
  %2889 = fmul fast float %2881, %2869
  %2890 = fmul fast float %2888, %2869
  %2891 = fsub fast float %2874, %2889
  %2892 = fadd fast float %2890, %2874
  %2893 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2894 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2895 = fsub fast float %2863, %2893
  %2896 = fsub fast float %2894, %2893
  %2897 = bitcast float %2896 to i32
  %2898 = sub nsw i32 2129859010, %2897
  %2899 = bitcast i32 %2898 to float
  %2900 = fmul fast float %2899, %2895
  %2901 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  br label %2902

; <label>:2902                                    ; preds = %2856, %2851
  %2903 = phi float [ %2901, %2856 ], [ %703, %2851 ]
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 128
  %2907 = icmp eq i32 %2906, 0
  br i1 %2907, label %2924, label %2908

; <label>:2908                                    ; preds = %2902
  %2909 = add i32 %58, 436
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = add i32 %2911, 0
  %2913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2913, %dx.types.Handle %112, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2915 = extractvalue %dx.types.ResRet.f32 %2914, 0
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 524288
  %2919 = icmp ne i32 %2918, 0
  %2920 = fcmp fast ogt float %2915, 0x3FE0101020000000
  %2921 = select i1 %2920, float 1.000000e+00, float 0.000000e+00
  %2922 = select i1 %2919, float %2921, float %2915
  %2923 = fmul fast float %2922, %2903
  br label %2924

; <label>:2924                                    ; preds = %2908, %2902
  %2925 = phi float [ %2923, %2908 ], [ %2903, %2902 ]
  %2926 = fcmp fast ult float %2925, 0x3F70101020000000
  br i1 %2926, label %3469, label %2927

; <label>:2927                                    ; preds = %2924
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 16
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %3130, label %2932

; <label>:2932                                    ; preds = %2927
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %58, 388
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %2937, 0
  %2939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2939, %dx.types.Handle %111, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  %2944 = extractvalue %dx.types.ResRet.f32 %2940, 3
  %2945 = and i32 %2934, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = lshr i32 %2934, 8
  %2948 = and i32 %2947, 255
  %2949 = uitofp i32 %2948 to float
  %2950 = fmul fast float %2944, %2946
  %2951 = fadd fast float %2950, %2949
  %2952 = fmul fast float %2951, 0x3F70101000000000
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 512
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %2965, label %2957

; <label>:2957                                    ; preds = %2932
  %2958 = add i32 %58, 472
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = add i32 %2960, 0
  %2962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2963 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2962, %dx.types.Handle %112, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  br label %2965

; <label>:2965                                    ; preds = %2957, %2932
  %2966 = phi float [ %2964, %2957 ], [ 1.000000e+00, %2932 ]
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 33554432
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %3077, label %2971

; <label>:2971                                    ; preds = %2965
  %2972 = add i32 %58, 272
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 65535
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = lshr i32 %2974, 16
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = add i32 %58, 276
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 65535
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = lshr i32 %2985, 24
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = and i32 %2985, 255
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2990, 0x3F70101020000000
  %2992 = lshr i32 %2985, 8
  %2993 = and i32 %2992, 255
  %2994 = uitofp i32 %2993 to float
  %2995 = fmul fast float %2994, 0x3F70101020000000
  %2996 = lshr i32 %2985, 16
  %2997 = and i32 %2996, 255
  %2998 = uitofp i32 %2997 to float
  %2999 = fmul fast float %2998, 0x3F70101020000000
  %3000 = add i32 %58, 268
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 24
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = and i32 %3002, 255
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = lshr i32 %3002, 8
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3011, 0x3F70101020000000
  %3013 = lshr i32 %3002, 16
  %3014 = and i32 %3013, 255
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3015, 0x3F70101020000000
  %3017 = bitcast float %2941 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2941, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2941
  %3026 = fmul fast float %3025, %3024
  %3027 = bitcast float %2942 to i32
  %3028 = ashr i32 %3027, 1
  %3029 = sub nsw i32 1597463174, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %2942, 5.000000e-01
  %3032 = fmul fast float %3030, %3030
  %3033 = fmul fast float %3032, %3031
  %3034 = fsub fast float 1.500000e+00, %3033
  %3035 = fmul fast float %3030, %2942
  %3036 = fmul fast float %3035, %3034
  %3037 = bitcast float %2943 to i32
  %3038 = ashr i32 %3037, 1
  %3039 = sub nsw i32 1597463174, %3038
  %3040 = bitcast i32 %3039 to float
  %3041 = fmul fast float %2943, 5.000000e-01
  %3042 = fmul fast float %3040, %3040
  %3043 = fmul fast float %3042, %3041
  %3044 = fsub fast float 1.500000e+00, %3043
  %3045 = fmul fast float %3040, %2943
  %3046 = fmul fast float %3045, %3044
  %3047 = fsub fast float %3026, %3008
  %3048 = fsub fast float %3036, %3012
  %3049 = fsub fast float %3046, %3016
  %3050 = fmul fast float %3047, %2976
  %3051 = fmul fast float %3048, %2978
  %3052 = fmul fast float %3049, %2983
  %3053 = fadd fast float %3050, %2991
  %3054 = fadd fast float %3051, %2995
  %3055 = fadd fast float %3052, %2999
  %3056 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3057 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3058 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  %3059 = fmul fast float %3056, %3056
  %3060 = fmul fast float %3057, %3057
  %3061 = fmul fast float %3058, %3058
  %3062 = fsub fast float %3059, %2941
  %3063 = fsub fast float %3060, %2942
  %3064 = fsub fast float %3061, %2943
  %3065 = fmul fast float %3062, %2966
  %3066 = fmul fast float %3063, %2966
  %3067 = fmul fast float %3064, %2966
  %3068 = fadd fast float %3065, %2941
  %3069 = fadd fast float %3066, %2942
  %3070 = fadd fast float %3067, %2943
  %3071 = fadd fast float %2988, %2952
  %3072 = fsub fast float %3071, %3005
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3074 = fsub fast float %3073, %2952
  %3075 = fmul fast float %3074, %2966
  %3076 = fadd fast float %3075, %2952
  br label %3130

; <label>:3077                                    ; preds = %2965
  %3078 = and i32 %2968, 134217728
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3114, label %3080

; <label>:3080                                    ; preds = %3077
  %3081 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3082 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %3084 = fadd fast float %3081, -5.000000e-01
  %3085 = fadd fast float %3082, -5.000000e-01
  %3086 = fadd fast float %3083, -5.000000e-01
  %3087 = fmul fast float %3084, %2966
  %3088 = fmul fast float %3085, %2966
  %3089 = fmul fast float %3086, %2966
  %3090 = fadd fast float %3087, 5.000000e-01
  %3091 = fadd fast float %3088, 5.000000e-01
  %3092 = fadd fast float %3089, 5.000000e-01
  %3093 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %3094 = call float @dx.op.unary.f32(i32 24, float %2942)  ; Sqrt(value)
  %3095 = call float @dx.op.unary.f32(i32 24, float %2943)  ; Sqrt(value)
  %3096 = fmul fast float %3090, 2.000000e+00
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3097, %3093
  %3099 = fadd fast float %3098, %3096
  %3100 = fmul fast float %3099, %3093
  %3101 = fmul fast float %3091, 2.000000e+00
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = fmul fast float %3102, %3094
  %3104 = fadd fast float %3103, %3101
  %3105 = fmul fast float %3104, %3094
  %3106 = fmul fast float %3092, 2.000000e+00
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fmul fast float %3107, %3095
  %3109 = fadd fast float %3108, %3106
  %3110 = fmul fast float %3109, %3095
  %3111 = fmul fast float %3100, %3100
  %3112 = fmul fast float %3105, %3105
  %3113 = fmul fast float %3110, %3110
  br label %3130

; <label>:3114                                    ; preds = %3077
  %3115 = fmul fast float %619, %619
  %3116 = fmul fast float %620, %620
  %3117 = fmul fast float %621, %621
  %3118 = fadd fast float %3115, -1.000000e+00
  %3119 = fadd fast float %3116, -1.000000e+00
  %3120 = fadd fast float %3117, -1.000000e+00
  %3121 = fmul fast float %2966, %3118
  %3122 = fmul fast float %2966, %3119
  %3123 = fmul fast float %2966, %3120
  %3124 = fadd fast float %3121, 1.000000e+00
  %3125 = fadd fast float %3122, 1.000000e+00
  %3126 = fadd fast float %3123, 1.000000e+00
  %3127 = fmul fast float %3124, %2941
  %3128 = fmul fast float %3125, %2942
  %3129 = fmul fast float %3126, %2943
  br label %3130

; <label>:3130                                    ; preds = %3114, %3080, %2971, %2927
  %3131 = phi float [ %3076, %2971 ], [ %2952, %3080 ], [ %2952, %3114 ], [ 0x3FA23C0BE0000000, %2927 ]
  %3132 = phi float [ %3068, %2971 ], [ %3111, %3080 ], [ %3127, %3114 ], [ 1.000000e+00, %2927 ]
  %3133 = phi float [ %3069, %2971 ], [ %3112, %3080 ], [ %3128, %3114 ], [ 1.000000e+00, %2927 ]
  %3134 = phi float [ %3070, %2971 ], [ %3113, %3080 ], [ %3129, %3114 ], [ 1.000000e+00, %2927 ]
  %3135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.i32 %3135, 1
  %3137 = and i32 %3136, 1
  %3138 = icmp ne i32 %3137, 0
  %3139 = add i32 %58, 356
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = and i32 %3141, 32
  %3143 = icmp ne i32 %3142, 0
  %3144 = and i1 %3138, %3143
  %3145 = select i1 %3144, float 1.000000e+00, float %3132
  %3146 = select i1 %3144, float 0x3FD3333340000000, float %3133
  %3147 = select i1 %3144, float 0x3FD3333340000000, float %3134
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 32
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3224, label %3152

; <label>:3152                                    ; preds = %3130
  %3153 = add i32 %58, 140
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %58, 404
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %3158, 0
  %3160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3160, %dx.types.Handle %111, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3161, 2
  %3165 = extractvalue %dx.types.ResRet.f32 %3161, 3
  %3166 = and i32 %3155, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = lshr i32 %3155, 8
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = lshr i32 %3155, 16
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 0x3F70101000000000
  %3175 = fmul fast float %3162, %3167
  %3176 = fadd fast float %3175, %3170
  %3177 = fmul fast float %3176, 0x3F70101000000000
  %3178 = fadd fast float %3163, -5.000000e-01
  %3179 = fadd fast float %3165, -5.000000e-01
  %3180 = fmul fast float %3178, %3174
  %3181 = fmul fast float %3179, %3174
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = fadd fast float %3181, 5.000000e-01
  %3184 = fmul fast float %3182, 2.000000e+00
  %3185 = fadd fast float %3184, -1.000000e+00
  %3186 = fmul fast float %3183, 2.000000e+00
  %3187 = fadd fast float %3186, -1.000000e+00
  %3188 = fadd fast float %3185, %3187
  %3189 = fmul fast float %3188, 5.000000e-01
  %3190 = fsub fast float %3185, %3187
  %3191 = fmul fast float %3190, 5.000000e-01
  %3192 = call float @dx.op.unary.f32(i32 6, float %3189)  ; FAbs(value)
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = call float @dx.op.unary.f32(i32 6, float %3191)  ; FAbs(value)
  %3195 = fsub fast float %3193, %3194
  %3196 = call float @dx.op.dot3.f32(i32 55, float %3189, float %3191, float %3195, float %3189, float %3191, float %3195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3197 = call float @dx.op.unary.f32(i32 25, float %3196)  ; Rsqrt(value)
  %3198 = fmul fast float %3189, %3197
  %3199 = fmul fast float %3191, %3197
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 67108864
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %3220, label %3204

; <label>:3204                                    ; preds = %3152
  %3205 = add i32 %58, 328
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 65535
  %3209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3208)  ; LegacyF16ToF32(value)
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 65535
  %3213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3212)  ; LegacyF16ToF32(value)
  %3214 = lshr i32 %3207, 16
  %3215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3214)  ; LegacyF16ToF32(value)
  %3216 = fsub fast float %3177, %3215
  %3217 = fmul fast float %3216, %3209
  %3218 = fadd fast float %3217, %3213
  %3219 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  br label %3220

; <label>:3220                                    ; preds = %3204, %3152
  %3221 = phi float [ %3219, %3204 ], [ %3177, %3152 ]
  %3222 = call float @dx.op.dot2.f32(i32 54, float %3198, float %3199, float %2756, float %2757)  ; Dot2(ax,ay,bx,by)
  %3223 = call float @dx.op.dot2.f32(i32 54, float %3198, float %3199, float %2758, float %2759)  ; Dot2(ax,ay,bx,by)
  br label %3224

; <label>:3224                                    ; preds = %3220, %3130
  %3225 = phi float [ %3221, %3220 ], [ 0x3FD6666660000000, %3130 ]
  %3226 = phi float [ %3222, %3220 ], [ 0.000000e+00, %3130 ]
  %3227 = phi float [ %3223, %3220 ], [ 0.000000e+00, %3130 ]
  %3228 = phi float [ %3164, %3220 ], [ 1.000000e+00, %3130 ]
  %3229 = add i32 %58, 208
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = lshr i32 %3231, 22
  %3233 = shl nuw nsw i32 %3232, 5
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 64
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3272, label %3239

; <label>:3239                                    ; preds = %3224
  %3240 = add i32 %58, 420
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = add i32 %3242, 0
  %3244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 131072
  %3248 = icmp eq i32 %3247, 0
  %3249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3244, %dx.types.Handle %111, float %2852, float %2853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.ResRet.f32 %3249, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3249, 2
  %3253 = fmul fast float %602, %3250
  %3254 = fmul fast float %603, %3251
  %3255 = fmul fast float %604, %3252
  br i1 %3248, label %3262, label %3256

; <label>:3256                                    ; preds = %3239
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 0
  %3259 = fmul fast float %3258, %3253
  %3260 = fmul fast float %3258, %3254
  %3261 = fmul fast float %3258, %3255
  br label %3262

; <label>:3262                                    ; preds = %3256, %3239
  %3263 = phi float [ %3259, %3256 ], [ %3253, %3239 ]
  %3264 = phi float [ %3260, %3256 ], [ %3254, %3239 ]
  %3265 = phi float [ %3261, %3256 ], [ %3255, %3239 ]
  %3266 = fmul fast float %3263, %3234
  %3267 = select i1 %270, float %3266, float %3263
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3264, float %3265, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = select i1 %270, float 0.000000e+00, float %3263
  %3270 = select i1 %270, float %3268, float %3264
  %3271 = select i1 %270, float 0.000000e+00, float %3265
  br label %3272

; <label>:3272                                    ; preds = %3262, %3224
  %3273 = phi float [ %3269, %3262 ], [ 0.000000e+00, %3224 ]
  %3274 = phi float [ %3270, %3262 ], [ 0.000000e+00, %3224 ]
  %3275 = phi float [ %3271, %3262 ], [ 0.000000e+00, %3224 ]
  %3276 = add i32 %58, 144
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = lshr i32 %3278, 8
  %3282 = and i32 %3281, 255
  %3283 = uitofp i32 %3282 to float
  %3284 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3285 = fmul fast float %3283, %3284
  %3286 = fadd fast float %3285, %3280
  %3287 = fmul fast float %3286, 0x3F70101020000000
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  br i1 %2744, label %3289, label %3297

; <label>:3289                                    ; preds = %3272
  %3290 = fsub fast float 1.000000e+00, %2925
  %3291 = fmul fast float %3290, %2733
  %3292 = fmul fast float %3290, %2734
  %3293 = fmul fast float %3290, %2735
  %3294 = fmul fast float %3290, %2736
  %3295 = fmul fast float %3290, %2737
  %3296 = fmul fast float %3290, %2738
  br label %3297

; <label>:3297                                    ; preds = %3289, %3272
  %3298 = phi float [ %3291, %3289 ], [ %2733, %3272 ]
  %3299 = phi float [ %3292, %3289 ], [ %2734, %3272 ]
  %3300 = phi float [ %3293, %3289 ], [ %2735, %3272 ]
  %3301 = phi float [ %3294, %3289 ], [ %2736, %3272 ]
  %3302 = phi float [ %3295, %3289 ], [ %2737, %3272 ]
  %3303 = phi float [ %3296, %3289 ], [ %2738, %3272 ]
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 3
  %3307 = icmp eq i32 %3306, 3
  br i1 %3307, label %3386, label %3308

; <label>:3308                                    ; preds = %3297
  %3309 = and i32 %3305, 16
  %3310 = icmp ne i32 %3309, 0
  %3311 = select i1 %3310, float %2925, float 0.000000e+00
  %3312 = icmp eq i32 %3306, 0
  br i1 %3312, label %3313, label %3341

; <label>:3313                                    ; preds = %3308
  %3314 = and i32 %3305, 64
  %3315 = icmp ne i32 %3314, 0
  %3316 = select i1 %3315, float %2925, float 0.000000e+00
  %3317 = fsub fast float %3145, %3298
  %3318 = fsub fast float %3146, %3299
  %3319 = fsub fast float %3147, %3300
  %3320 = fmul fast float %3311, %3317
  %3321 = fmul fast float %3311, %3318
  %3322 = fmul fast float %3311, %3319
  %3323 = fadd fast float %3320, %3298
  %3324 = fadd fast float %3321, %3299
  %3325 = fadd fast float %3322, %3300
  %3326 = fsub fast float %3131, %2739
  %3327 = fmul fast float %3311, %3326
  %3328 = fadd fast float %3327, %2739
  %3329 = fsub fast float %3273, %3301
  %3330 = fsub fast float %3274, %3302
  %3331 = fsub fast float %3275, %3303
  %3332 = fmul fast float %3316, %3329
  %3333 = fmul fast float %3316, %3330
  %3334 = fmul fast float %3316, %3331
  %3335 = fadd fast float %3332, %3301
  %3336 = fadd fast float %3333, %3302
  %3337 = fadd fast float %3334, %3303
  %3338 = fsub fast float %3288, %2742
  %3339 = fmul fast float %3311, %3338
  %3340 = fadd fast float %3339, %2742
  br label %3386

; <label>:3341                                    ; preds = %3308
  %3342 = icmp eq i32 %3306, 1
  br i1 %3342, label %3343, label %3356

; <label>:3343                                    ; preds = %3341
  %3344 = fadd fast float %3145, -1.000000e+00
  %3345 = fadd fast float %3146, -1.000000e+00
  %3346 = fadd fast float %3147, -1.000000e+00
  %3347 = fmul fast float %3311, %3344
  %3348 = fmul fast float %3311, %3345
  %3349 = fmul fast float %3311, %3346
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fmul fast float %3350, %3298
  %3354 = fmul fast float %3351, %3299
  %3355 = fmul fast float %3352, %3300
  br label %3386

; <label>:3356                                    ; preds = %3341
  %3357 = icmp eq i32 %3306, 2
  br i1 %3357, label %3358, label %3386

; <label>:3358                                    ; preds = %3356
  %3359 = call float @dx.op.unary.f32(i32 24, float %3145)  ; Sqrt(value)
  %3360 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3361 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3362 = fadd fast float %3359, -5.000000e-01
  %3363 = fadd fast float %3360, -5.000000e-01
  %3364 = fadd fast float %3361, -5.000000e-01
  %3365 = fmul fast float %3362, %3311
  %3366 = fmul fast float %3363, %3311
  %3367 = fmul fast float %3364, %3311
  %3368 = fadd fast float %3365, 5.000000e-01
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = fadd fast float %3367, 5.000000e-01
  %3371 = fmul fast float %3368, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3298
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3298
  %3376 = fmul fast float %3369, 2.000000e+00
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3377, %3299
  %3379 = fadd fast float %3378, %3376
  %3380 = fmul fast float %3379, %3299
  %3381 = fmul fast float %3370, 2.000000e+00
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = fmul fast float %3382, %3300
  %3384 = fadd fast float %3383, %3381
  %3385 = fmul fast float %3384, %3300
  br label %3386

; <label>:3386                                    ; preds = %3358, %3356, %3343, %3313, %3297
  %3387 = phi float [ %3298, %3297 ], [ %3375, %3358 ], [ %3298, %3356 ], [ %3353, %3343 ], [ %3323, %3313 ]
  %3388 = phi float [ %3299, %3297 ], [ %3380, %3358 ], [ %3299, %3356 ], [ %3354, %3343 ], [ %3324, %3313 ]
  %3389 = phi float [ %3300, %3297 ], [ %3385, %3358 ], [ %3300, %3356 ], [ %3355, %3343 ], [ %3325, %3313 ]
  %3390 = phi float [ %3301, %3297 ], [ %3301, %3358 ], [ %3301, %3356 ], [ %3301, %3343 ], [ %3335, %3313 ]
  %3391 = phi float [ %3302, %3297 ], [ %3302, %3358 ], [ %3302, %3356 ], [ %3302, %3343 ], [ %3336, %3313 ]
  %3392 = phi float [ %3303, %3297 ], [ %3303, %3358 ], [ %3303, %3356 ], [ %3303, %3343 ], [ %3337, %3313 ]
  %3393 = phi float [ %2739, %3297 ], [ %2739, %3358 ], [ %2739, %3356 ], [ %2739, %3343 ], [ %3328, %3313 ]
  %3394 = phi float [ %2742, %3297 ], [ %2742, %3358 ], [ %2742, %3356 ], [ %2742, %3343 ], [ %3340, %3313 ]
  %3395 = and i32 %3305, 12
  %3396 = icmp eq i32 %3395, 12
  br i1 %3396, label %3469, label %3397

; <label>:3397                                    ; preds = %3386
  %3398 = and i32 %3305, 2097184
  %3399 = icmp eq i32 %3398, 2097184
  %3400 = select i1 %3399, float %2925, float 0.000000e+00
  %3401 = and i32 %3305, 4194336
  %3402 = icmp eq i32 %3401, 4194336
  %3403 = select i1 %3402, float %2925, float 0.000000e+00
  %3404 = and i32 %3305, 8388640
  %3405 = icmp eq i32 %3404, 8388640
  %3406 = select i1 %3405, float %2925, float 0.000000e+00
  %3407 = icmp eq i32 %3395, 0
  br i1 %3407, label %3408, label %3421

; <label>:3408                                    ; preds = %3397
  %3409 = fsub fast float %3226, %2731
  %3410 = fsub fast float %3227, %2732
  %3411 = fmul fast float %3400, %3409
  %3412 = fmul fast float %3400, %3410
  %3413 = fadd fast float %3411, %2731
  %3414 = fadd fast float %3412, %2732
  %3415 = fsub fast float %3228, %2741
  %3416 = fmul fast float %3403, %3415
  %3417 = fadd fast float %3416, %2741
  %3418 = fsub fast float %3225, %2740
  %3419 = fmul fast float %3406, %3418
  %3420 = fadd fast float %3419, %2740
  br label %3469

; <label>:3421                                    ; preds = %3397
  %3422 = icmp eq i32 %3395, 4
  br i1 %3422, label %3423, label %3455

; <label>:3423                                    ; preds = %3421
  %3424 = fmul fast float %3400, %3226
  %3425 = fmul fast float %3400, %3227
  %3426 = fadd fast float %3424, %2731
  %3427 = fadd fast float %3425, %2732
  %3428 = call float @dx.op.binary.f32(i32 36, float %2741, float %3228)  ; FMin(a,b)
  %3429 = fsub fast float %3428, %2741
  %3430 = fmul fast float %3429, %3403
  %3431 = fadd fast float %3430, %2741
  %3432 = fadd fast float %3225, %2740
  %3433 = fmul fast float %3432, 0x3FF337FAE0000000
  %3434 = fmul fast float %2740, %2740
  %3435 = fmul fast float %3225, %3225
  %3436 = fadd fast float %3435, %3434
  %3437 = fmul fast float %3436, 0x3FE5152B00000000
  %3438 = fmul fast float %2740, 0xBFCC1F85E0000000
  %3439 = fmul fast float %3438, %3225
  %3440 = fadd fast float %3439, 0xBFE1363700000000
  %3441 = fadd fast float %3440, %3433
  %3442 = fsub fast float %3441, %3437
  %3443 = fmul fast float %3432, 0x3FBA6F0D00000000
  %3444 = fmul fast float %3436, 0x3FD0432880000000
  %3445 = fmul fast float %2740, 0xBFEF110800000000
  %3446 = fmul fast float %3445, %3225
  %3447 = fadd fast float %3446, 1.000000e+00
  %3448 = fsub fast float %3447, %3443
  %3449 = fadd fast float %3448, %3444
  %3450 = fdiv fast float %3442, %3449
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = fsub fast float %3451, %2740
  %3453 = fmul fast float %3452, %3406
  %3454 = fadd fast float %3453, %2740
  br label %3469

; <label>:3455                                    ; preds = %3421
  %3456 = icmp eq i32 %3395, 8
  br i1 %3456, label %3457, label %3469

; <label>:3457                                    ; preds = %3455
  %3458 = fmul fast float %3400, %3226
  %3459 = fmul fast float %3400, %3227
  %3460 = fadd fast float %3458, %2731
  %3461 = fadd fast float %3459, %2732
  %3462 = call float @dx.op.binary.f32(i32 36, float %2741, float %3228)  ; FMin(a,b)
  %3463 = fsub fast float %3462, %2741
  %3464 = fmul fast float %3463, %3403
  %3465 = fadd fast float %3464, %2741
  %3466 = fsub fast float %3225, %2740
  %3467 = fmul fast float %3406, %3466
  %3468 = fadd fast float %3467, %2740
  br label %3469

; <label>:3469                                    ; preds = %3457, %3455, %3423, %3408, %3386, %2924, %2743, %2730
  %3470 = phi float [ %2731, %3386 ], [ %2731, %2924 ], [ %2731, %2730 ], [ %2731, %2743 ], [ %3413, %3408 ], [ %3426, %3423 ], [ %2731, %3455 ], [ %3460, %3457 ]
  %3471 = phi float [ %2732, %3386 ], [ %2732, %2924 ], [ %2732, %2730 ], [ %2732, %2743 ], [ %3414, %3408 ], [ %3427, %3423 ], [ %2732, %3455 ], [ %3461, %3457 ]
  %3472 = phi float [ %3387, %3386 ], [ %2733, %2924 ], [ %2733, %2730 ], [ %2733, %2743 ], [ %3387, %3408 ], [ %3387, %3423 ], [ %3387, %3455 ], [ %3387, %3457 ]
  %3473 = phi float [ %3388, %3386 ], [ %2734, %2924 ], [ %2734, %2730 ], [ %2734, %2743 ], [ %3388, %3408 ], [ %3388, %3423 ], [ %3388, %3455 ], [ %3388, %3457 ]
  %3474 = phi float [ %3389, %3386 ], [ %2735, %2924 ], [ %2735, %2730 ], [ %2735, %2743 ], [ %3389, %3408 ], [ %3389, %3423 ], [ %3389, %3455 ], [ %3389, %3457 ]
  %3475 = phi float [ %3390, %3386 ], [ %2736, %2924 ], [ %2736, %2730 ], [ %2736, %2743 ], [ %3390, %3408 ], [ %3390, %3423 ], [ %3390, %3455 ], [ %3390, %3457 ]
  %3476 = phi float [ %3391, %3386 ], [ %2737, %2924 ], [ %2737, %2730 ], [ %2737, %2743 ], [ %3391, %3408 ], [ %3391, %3423 ], [ %3391, %3455 ], [ %3391, %3457 ]
  %3477 = phi float [ %3392, %3386 ], [ %2738, %2924 ], [ %2738, %2730 ], [ %2738, %2743 ], [ %3392, %3408 ], [ %3392, %3423 ], [ %3392, %3455 ], [ %3392, %3457 ]
  %3478 = phi float [ %3393, %3386 ], [ %2739, %2924 ], [ %2739, %2730 ], [ %2739, %2743 ], [ %3393, %3408 ], [ %3393, %3423 ], [ %3393, %3455 ], [ %3393, %3457 ]
  %3479 = phi float [ %2740, %3386 ], [ %2740, %2924 ], [ %2740, %2730 ], [ %2740, %2743 ], [ %3420, %3408 ], [ %3454, %3423 ], [ %2740, %3455 ], [ %3468, %3457 ]
  %3480 = phi float [ %2741, %3386 ], [ %2741, %2924 ], [ %2741, %2730 ], [ %2741, %2743 ], [ %3417, %3408 ], [ %3431, %3423 ], [ %2741, %3455 ], [ %3465, %3457 ]
  %3481 = phi float [ %3394, %3386 ], [ %2742, %2924 ], [ %2742, %2730 ], [ %2742, %2743 ], [ %3394, %3408 ], [ %3394, %3423 ], [ %3394, %3455 ], [ %3394, %3457 ]
  %3482 = add i32 %58, 360
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.i32 %3483, 1
  %3486 = bitcast i32 %3484 to float
  %3487 = bitcast i32 %3485 to float
  %3488 = fcmp fast oge float %3486, 0.000000e+00
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3491 = select i1 %3488, float %3486, float %3490
  %3492 = fadd fast float %3491, %212
  %3493 = fmul fast float %3487, %213
  %3494 = add i32 %58, 456
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = add i32 %3496, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3498, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = fmul fast float %3493, %3500
  %3502 = fadd fast float %3492, %3501
  %3503 = and i32 %204, 65535
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = lshr i32 %204, 16
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = and i32 %205, 65535
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = fmul fast float %3504, %3472
  %3510 = fmul fast float %3506, %3473
  %3511 = fmul fast float %3508, %3474
  %3512 = shl i32 %206, 4
  %3513 = and i32 %3512, 32752
  %3514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3513)  ; LegacyF16ToF32(value)
  %3515 = lshr i32 %206, 7
  %3516 = and i32 %3515, 32752
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = lshr i32 %206, 22
  %3519 = shl nuw nsw i32 %3518, 5
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = and i32 %207, 65535
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = fmul fast float %3514, %3475
  %3524 = fmul fast float %3523, %3522
  %3525 = fmul fast float %3517, %3476
  %3526 = fmul fast float %3525, %3522
  %3527 = fmul fast float %3520, %3477
  %3528 = fmul fast float %3527, %3522
  %3529 = call float @dx.op.dot2.f32(i32 54, float %3470, float %3471, float %3470, float %3471)  ; Dot2(ax,ay,bx,by)
  %3530 = fmul fast float %3529, 0x3FE3333340000000
  %3531 = fsub fast float 1.000000e+00, %3530
  %3532 = call float @dx.op.dot3.f32(i32 55, float %3470, float %3471, float %3531, float %3470, float %3471, float %3531)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = call float @dx.op.unary.f32(i32 25, float %3532)  ; Rsqrt(value)
  %3534 = fmul fast float %3533, %3470
  %3535 = fmul fast float %3533, %3471
  %3536 = fmul fast float %3531, %3533
  %3537 = fmul fast float %3536, %124
  %3538 = fmul fast float %3536, %126
  %3539 = fmul fast float %3536, %128
  %3540 = fmul fast float %3534, %90
  %3541 = fmul fast float %3534, %91
  %3542 = fmul fast float %3534, %92
  %3543 = fadd fast float %3537, %3540
  %3544 = fadd fast float %3538, %3541
  %3545 = fadd fast float %3539, %3542
  %3546 = fmul fast float %138, %3535
  %3547 = fmul fast float %139, %3535
  %3548 = fmul fast float %140, %3535
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = fadd fast float %3545, %3548
  %3552 = call float @dx.op.dot3.f32(i32 55, float %3549, float %3550, float %3551, float %3549, float %3550, float %3551)  ; Dot3(ax,ay,az,bx,by,bz)
  %3553 = call float @dx.op.unary.f32(i32 25, float %3552)  ; Rsqrt(value)
  %3554 = fmul fast float %3549, %3553
  %3555 = fmul fast float %3550, %3553
  %3556 = fmul fast float %3551, %3553
  %3557 = icmp eq i32 %61, 65535
  br i1 %3557, label %4076, label %3558

; <label>:3558                                    ; preds = %3469
  %3559 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3560 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3561 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3562 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3563 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3564 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3565 = fadd fast float %3559, %62
  %3566 = fadd fast float %3560, %63
  %3567 = fadd fast float %3561, %64
  %3568 = fadd fast float %3562, %62
  %3569 = fadd fast float %3563, %63
  %3570 = fadd fast float %3564, %64
  %3571 = mul i32 %61, 48
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = add i32 %3571, 16
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = add i32 %3571, 32
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = bitcast float %3586 to i32
  %3588 = fmul fast float %3573, %62
  %3589 = fmul fast float %3574, %63
  %3590 = fmul fast float %3575, %64
  %3591 = fsub fast float %3588, %3578
  %3592 = fsub fast float %3589, %3579
  %3593 = fsub fast float %3590, %3580
  %3594 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3595 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3597 = fmul fast float %3594, %3583
  %3598 = fmul fast float %3595, %3584
  %3599 = fmul fast float %3596, %3585
  %3600 = fadd fast float %3583, -1.000000e+00
  %3601 = fadd fast float %3584, -1.000000e+00
  %3602 = fadd fast float %3585, -1.000000e+00
  %3603 = call float @dx.op.unary.f32(i32 27, float %3597)  ; Round_ni(value)
  %3604 = call float @dx.op.unary.f32(i32 27, float %3598)  ; Round_ni(value)
  %3605 = call float @dx.op.unary.f32(i32 27, float %3599)  ; Round_ni(value)
  %3606 = call float @dx.op.binary.f32(i32 36, float %3603, float %3600)  ; FMin(a,b)
  %3607 = call float @dx.op.binary.f32(i32 36, float %3604, float %3601)  ; FMin(a,b)
  %3608 = call float @dx.op.binary.f32(i32 36, float %3605, float %3602)  ; FMin(a,b)
  %3609 = fmul fast float %3608, %3584
  %3610 = fadd fast float %3609, %3607
  %3611 = fmul fast float %3610, %3583
  %3612 = fadd fast float %3611, %3606
  %3613 = fptosi float %3612 to i32
  %3614 = add nsw i32 %3613, %3587
  %3615 = shl nsw i32 %3614, 2
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = lshr i32 %3617, 16
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %4044, label %3620

; <label>:3620                                    ; preds = %3558
  br label %3621

; <label>:3621                                    ; preds = %3743, %3620
  %3622 = phi i32 [ %3645, %3743 ], [ %3618, %3620 ]
  %3623 = phi float [ %3744, %3743 ], [ 0.000000e+00, %3620 ]
  %3624 = phi float [ %3745, %3743 ], [ %1261, %3620 ]
  %3625 = phi float [ %3746, %3743 ], [ %3502, %3620 ]
  %3626 = phi float [ %3747, %3743 ], [ %3481, %3620 ]
  %3627 = phi float [ %3748, %3743 ], [ 0.000000e+00, %3620 ]
  %3628 = phi float [ %3749, %3743 ], [ 0.000000e+00, %3620 ]
  %3629 = phi float [ %3750, %3743 ], [ %3524, %3620 ]
  %3630 = phi float [ %3751, %3743 ], [ %3526, %3620 ]
  %3631 = phi float [ %3752, %3743 ], [ %3528, %3620 ]
  %3632 = phi float [ %3753, %3743 ], [ %3554, %3620 ]
  %3633 = phi float [ %3754, %3743 ], [ %3555, %3620 ]
  %3634 = phi float [ %3755, %3743 ], [ %3556, %3620 ]
  %3635 = phi float [ %3756, %3743 ], [ %3480, %3620 ]
  %3636 = phi float [ %3757, %3743 ], [ %3479, %3620 ]
  %3637 = phi float [ %3758, %3743 ], [ 0.000000e+00, %3620 ]
  %3638 = phi float [ %3759, %3743 ], [ %3478, %3620 ]
  %3639 = phi float [ %3760, %3743 ], [ %3509, %3620 ]
  %3640 = phi float [ %3761, %3743 ], [ %3510, %3620 ]
  %3641 = phi float [ %3762, %3743 ], [ %3511, %3620 ]
  %3642 = shl nuw nsw i32 %3622, 2
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = lshr i32 %3644, 16
  %3646 = shl i32 %3644, 8
  %3647 = and i32 %3646, 16776960
  %3648 = or i32 %3647, 48
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = or i32 %3647, 64
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.i32 %3654, 1
  %3657 = or i32 %3647, 80
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3661 = or i32 %3647, 96
  %3662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = or i32 %3647, 112
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3670 = or i32 %3647, 128
  %3671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3676 = or i32 %3647, 144
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = or i32 %3647, 160
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = or i32 %3647, 192
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = or i32 %3647, 208
  %3692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = or i32 %3647, 248
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3702 = extractvalue %dx.types.ResRet.f32 %3698, 3
  %3703 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3704 = or i32 %3647, 16
  %3705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.f32 %3705, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3705, 2
  %3709 = extractvalue %dx.types.ResRet.f32 %3705, 3
  %3710 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3711 = or i32 %3647, 32
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3717 = call float @dx.op.dot4.f32(i32 56, float %3713, float %3714, float %3715, float %3716, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3718 = call float @dx.op.unary.f32(i32 27, float %3703)  ; Round_ni(value)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3720 = call float @dx.op.unary.f32(i32 27, float %3710)  ; Round_ni(value)
  %3721 = call float @dx.op.unary.f32(i32 6, float %3720)  ; FAbs(value)
  %3722 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3723 = call float @dx.op.unary.f32(i32 27, float %3722)  ; Round_ni(value)
  %3724 = fadd fast float %3721, %3719
  %3725 = fadd fast float %3724, %3723
  %3726 = fcmp fast oeq float %3725, 0.000000e+00
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %3565, float %3566, float %3567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %3568, float %3569, float %3570, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3730 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %3568, float %3569, float %3570, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3731 = fsub fast float %3727, %3703
  %3732 = fsub fast float %3729, %3703
  %3733 = fsub fast float %3728, %3710
  %3734 = fsub fast float %3730, %3710
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3650, float %3651, float %3652, float %124, float %126, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 2
  %3738 = fadd fast float %3737, %3735
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3741 = fcmp fast ogt float %3739, %3740
  %3742 = and i1 %3726, %3741
  br i1 %3742, label %3764, label %3743

; <label>:3743                                    ; preds = %4030, %3847, %3764, %3621
  %3744 = phi float [ %3623, %3764 ], [ %3850, %3847 ], [ %3850, %4030 ], [ %3623, %3621 ]
  %3745 = phi float [ %3624, %3764 ], [ %3624, %3847 ], [ %4005, %4030 ], [ %3624, %3621 ]
  %3746 = phi float [ %3625, %3764 ], [ %3625, %3847 ], [ %4004, %4030 ], [ %3625, %3621 ]
  %3747 = phi float [ %3626, %3764 ], [ %3626, %3847 ], [ %4002, %4030 ], [ %3626, %3621 ]
  %3748 = phi float [ %3627, %3764 ], [ %3627, %3847 ], [ %3974, %4030 ], [ %3627, %3621 ]
  %3749 = phi float [ %3628, %3764 ], [ %3628, %3847 ], [ %3972, %4030 ], [ %3628, %3621 ]
  %3750 = phi float [ %3629, %3764 ], [ %3629, %3847 ], [ %4040, %4030 ], [ %3629, %3621 ]
  %3751 = phi float [ %3630, %3764 ], [ %3630, %3847 ], [ %4041, %4030 ], [ %3630, %3621 ]
  %3752 = phi float [ %3631, %3764 ], [ %3631, %3847 ], [ %4042, %4030 ], [ %3631, %3621 ]
  %3753 = phi float [ %3632, %3764 ], [ %3632, %3847 ], [ %3953, %4030 ], [ %3632, %3621 ]
  %3754 = phi float [ %3633, %3764 ], [ %3633, %3847 ], [ %3954, %4030 ], [ %3633, %3621 ]
  %3755 = phi float [ %3634, %3764 ], [ %3634, %3847 ], [ %3955, %4030 ], [ %3634, %3621 ]
  %3756 = phi float [ %3635, %3764 ], [ %3635, %3847 ], [ %3982, %4030 ], [ %3635, %3621 ]
  %3757 = phi float [ %3636, %3764 ], [ %3636, %3847 ], [ %3979, %4030 ], [ %3636, %3621 ]
  %3758 = phi float [ %3637, %3764 ], [ %3637, %3847 ], [ %3976, %4030 ], [ %3637, %3621 ]
  %3759 = phi float [ %3638, %3764 ], [ %3638, %3847 ], [ %3970, %4030 ], [ %3638, %3621 ]
  %3760 = phi float [ %3639, %3764 ], [ %3639, %3847 ], [ %3965, %4030 ], [ %3639, %3621 ]
  %3761 = phi float [ %3640, %3764 ], [ %3640, %3847 ], [ %3966, %4030 ], [ %3640, %3621 ]
  %3762 = phi float [ %3641, %3764 ], [ %3641, %3847 ], [ %3967, %4030 ], [ %3641, %3621 ]
  %3763 = icmp eq i32 %3645, 0
  br i1 %3763, label %4043, label %3621

; <label>:3764                                    ; preds = %3621
  %3765 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3766 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3767 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3768 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3771 = extractvalue %dx.types.ResRet.i32 %3654, 3
  %3772 = extractvalue %dx.types.ResRet.i32 %3654, 2
  %3773 = bitcast float %3765 to i32
  %3774 = add i32 %3771, 0
  %3775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3775, %dx.types.Handle %3776, float %3703, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3779 = fmul fast float %3778, %3770
  %3780 = fadd fast float %3779, %3769
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fmul fast float %3703, %3663
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3710, float %3782)  ; FMad(a,b,c)
  %3784 = fadd fast float %3783, %3768
  %3785 = fmul fast float %3703, %3665
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3710, float %3785)  ; FMad(a,b,c)
  %3787 = fadd fast float %3786, %3767
  %3788 = fmul fast float %3731, %3663
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3733, float %3788)  ; FMad(a,b,c)
  %3790 = fmul fast float %3731, %3665
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3733, float %3790)  ; FMad(a,b,c)
  %3792 = fmul fast float %3732, %3663
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3734, float %3792)  ; FMad(a,b,c)
  %3794 = fmul fast float %3732, %3665
  %3795 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3734, float %3794)  ; FMad(a,b,c)
  %3796 = add i32 %3772, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3776, float %3784, float %3787, float undef, float undef, i32 0, i32 0, i32 undef, float %3789, float %3791, float undef, float %3793, float %3795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = and i32 %3773, 1024
  %3801 = icmp ne i32 %3800, 0
  %3802 = fcmp fast ogt float %3799, 0x3FE0101020000000
  %3803 = uitofp i1 %3802 to float
  %3804 = select i1 %3801, float %3803, float %3799
  %3805 = and i32 %3773, 8192
  %3806 = icmp ne i32 %3805, 0
  %3807 = select i1 %3806, float %3766, float 1.000000e+00
  %3808 = fmul fast float %3703, 2.000000e+00
  %3809 = fadd fast float %3808, -1.000000e+00
  %3810 = call float @dx.op.unary.f32(i32 6, float %3809)  ; FAbs(value)
  %3811 = fmul fast float %3810, %3696
  %3812 = fsub fast float %3811, %3696
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fmul fast float %3710, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3817 = fmul fast float %3816, %3697
  %3818 = fsub fast float %3817, %3697
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fmul fast float %3722, %3659
  %3821 = fsub fast float %3820, %3659
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = fmul fast float %3781, %3807
  %3824 = fmul fast float %3823, %3778
  %3825 = fmul fast float %3824, %3813
  %3826 = fmul fast float %3825, %3804
  %3827 = fmul fast float %3826, %3819
  %3828 = fmul fast float %3827, %3822
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3832 = fsub fast float %3739, %3831
  %3833 = fmul fast float %3832, %3830
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3835 = fmul fast float %3828, %3660
  %3836 = fadd fast float %3828, %3660
  %3837 = fmul fast float %3836, %3669
  %3838 = fsub fast float %3837, %3669
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = and i32 %3773, 128
  %3841 = icmp ne i32 %3840, 0
  %3842 = select i1 %3841, float %3839, float %3835
  %3843 = fmul fast float %3842, %3834
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 0
  %3846 = fcmp fast ugt float %3843, %3845
  br i1 %3846, label %3847, label %3743

; <label>:3847                                    ; preds = %3764
  %3848 = select i1 %3806, float %3843, float 0.000000e+00
  %3849 = fadd fast float %3848, %3623
  %3850 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  br i1 %3806, label %3743, label %3851

; <label>:3851                                    ; preds = %3847
  %3852 = and i32 %3773, 4
  %3853 = and i32 %3773, 8
  %3854 = add i32 %3655, 0
  %3855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3854, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3855, %dx.types.Handle %3856, float %3784, float %3787, float undef, float undef, i32 0, i32 0, i32 undef, float %3789, float %3791, float undef, float %3793, float %3795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = extractvalue %dx.types.ResRet.f32 %3857, 3
  %3862 = bitcast float %3681 to i32
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = lshr i32 %3862, 8
  %3866 = and i32 %3865, 255
  %3867 = uitofp i32 %3866 to float
  %3868 = fmul fast float %3861, %3864
  %3869 = fadd fast float %3868, %3867
  %3870 = fmul fast float %3869, 0x3F70101000000000
  %3871 = add i32 %3656, 0
  %3872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3871, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3873 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3872, %dx.types.Handle %3856, float %3784, float %3787, float undef, float undef, i32 0, i32 0, i32 undef, float %3789, float %3791, float undef, float %3793, float %3795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = bitcast float %3675 to i32
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = lshr i32 %3878, 8
  %3882 = and i32 %3881, 255
  %3883 = uitofp i32 %3882 to float
  %3884 = lshr i32 %3878, 16
  %3885 = and i32 %3884, 255
  %3886 = uitofp i32 %3885 to float
  %3887 = fmul fast float %3886, 0x3F70101000000000
  %3888 = fmul fast float %3874, %3880
  %3889 = fadd fast float %3888, %3883
  %3890 = fmul fast float %3889, 0x3F70101000000000
  %3891 = fadd fast float %3875, -5.000000e-01
  %3892 = fadd fast float %3877, -5.000000e-01
  %3893 = fmul fast float %3891, %3887
  %3894 = fmul fast float %3892, %3887
  %3895 = fadd fast float %3893, 5.000000e-01
  %3896 = fadd fast float %3894, 5.000000e-01
  %3897 = fmul fast float %3858, %3684
  %3898 = fmul fast float %3859, %3685
  %3899 = fmul fast float %3860, %3686
  %3900 = fmul fast float %3895, 2.000000e+00
  %3901 = fadd fast float %3900, -1.000000e+00
  %3902 = fmul fast float %3896, 2.000000e+00
  %3903 = fadd fast float %3902, -1.000000e+00
  %3904 = fadd fast float %3901, %3903
  %3905 = fmul fast float %3904, 5.000000e-01
  %3906 = fsub fast float %3901, %3903
  %3907 = fmul fast float %3906, 5.000000e-01
  %3908 = call float @dx.op.unary.f32(i32 6, float %3905)  ; FAbs(value)
  %3909 = fsub fast float 1.000000e+00, %3908
  %3910 = call float @dx.op.unary.f32(i32 6, float %3907)  ; FAbs(value)
  %3911 = fsub fast float %3909, %3910
  %3912 = call float @dx.op.dot3.f32(i32 55, float %3905, float %3907, float %3911, float %3905, float %3907, float %3911)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = call float @dx.op.unary.f32(i32 25, float %3912)  ; Rsqrt(value)
  %3914 = fmul fast float %3905, %3913
  %3915 = fmul fast float %3907, %3913
  %3916 = fmul fast float %3913, %3911
  %3917 = fmul fast float %3916, %3650
  %3918 = fmul fast float %3916, %3651
  %3919 = fmul fast float %3916, %3652
  %3920 = fmul fast float %3914, %3672
  %3921 = fmul fast float %3914, %3673
  %3922 = fmul fast float %3914, %3674
  %3923 = fadd fast float %3920, %3917
  %3924 = fadd fast float %3921, %3918
  %3925 = fadd fast float %3922, %3919
  %3926 = fmul fast float %3915, %3678
  %3927 = fmul fast float %3915, %3679
  %3928 = fmul fast float %3915, %3680
  %3929 = fadd fast float %3923, %3926
  %3930 = fadd fast float %3924, %3927
  %3931 = fadd fast float %3925, %3928
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3929, float %3930, float %3931, float %3929, float %3930, float %3931)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call float @dx.op.unary.f32(i32 25, float %3932)  ; Rsqrt(value)
  %3934 = fmul fast float %3929, %3933
  %3935 = fmul fast float %3930, %3933
  %3936 = fmul fast float %3931, %3933
  %3937 = icmp ne i32 %3853, 0
  %3938 = select i1 %3937, float 1.000000e+00, float 0.000000e+00
  %3939 = fmul fast float %3843, %3938
  %3940 = and i32 %3773, 1
  %3941 = icmp eq i32 %3940, 0
  br i1 %3941, label %3942, label %3946

; <label>:3942                                    ; preds = %3851
  %3943 = fsub fast float %3934, %3632
  %3944 = fsub fast float %3935, %3633
  %3945 = fsub fast float %3936, %3634
  br label %3946

; <label>:3946                                    ; preds = %3942, %3851
  %3947 = phi float [ %3943, %3942 ], [ %3934, %3851 ]
  %3948 = phi float [ %3944, %3942 ], [ %3935, %3851 ]
  %3949 = phi float [ %3945, %3942 ], [ %3936, %3851 ]
  %3950 = fmul float %3949, %3939
  %3951 = fmul float %3948, %3939
  %3952 = fmul float %3947, %3939
  %3953 = fadd fast float %3952, %3632
  %3954 = fadd fast float %3951, %3633
  %3955 = fadd fast float %3950, %3634
  %3956 = icmp ne i32 %3852, 0
  %3957 = select i1 %3956, float 1.000000e+00, float 0.000000e+00
  %3958 = fmul fast float %3843, %3957
  %3959 = fsub fast float %3897, %3639
  %3960 = fsub fast float %3898, %3640
  %3961 = fsub fast float %3899, %3641
  %3962 = fmul fast float %3959, %3958
  %3963 = fmul fast float %3960, %3958
  %3964 = fmul fast float %3961, %3958
  %3965 = fadd fast float %3962, %3639
  %3966 = fadd fast float %3963, %3640
  %3967 = fadd fast float %3964, %3641
  %3968 = fsub fast float %3870, %3638
  %3969 = fmul fast float %3968, %3958
  %3970 = fadd fast float %3969, %3638
  %3971 = fmul fast float %3958, %3628
  %3972 = fsub fast float %3628, %3971
  %3973 = fmul fast float %3958, %3627
  %3974 = fsub fast float %3627, %3973
  %3975 = fadd fast float %3843, %3637
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = fsub fast float %3890, %3636
  %3978 = fmul fast float %3977, %3939
  %3979 = fadd fast float %3978, %3636
  %3980 = fsub fast float %3876, %3635
  %3981 = fmul fast float %3980, %3939
  %3982 = fadd fast float %3981, %3635
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.CBufRet.f32 %3984, 1
  %3987 = fmul fast float %3986, %3983
  %3988 = fadd fast float %3987, %3985
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = bitcast float %3687 to i32
  %3991 = and i32 %3990, 65535
  %3992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3991)  ; LegacyF16ToF32(value)
  %3993 = lshr i32 %3990, 16
  %3994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3993)  ; LegacyF16ToF32(value)
  %3995 = fcmp fast oge float %3992, 0.000000e+00
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = select i1 %3995, float %3992, float %3997
  %3999 = fadd fast float %3998, %3994
  %4000 = fsub fast float %3989, %3626
  %4001 = fmul fast float %4000, %3843
  %4002 = fadd fast float %4001, %3626
  %4003 = fmul fast float %3999, %3843
  %4004 = call float @dx.op.binary.f32(i32 35, float %3625, float %4003)  ; FMax(a,b)
  %4005 = call float @dx.op.binary.f32(i32 35, float %3624, float %3843)  ; FMax(a,b)
  %4006 = and i32 %3773, 16
  %4007 = icmp eq i32 %4006, 0
  br i1 %4007, label %4030, label %4008

; <label>:4008                                    ; preds = %3946
  %4009 = bitcast float %3693 to i32
  %4010 = add i32 %3690, 0
  %4011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4011, %dx.types.Handle %3856, float %3784, float %3787, float undef, float undef, i32 0, i32 0, i32 undef, float %3789, float %3791, float undef, float %3793, float %3795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.ResRet.f32 %4012, 2
  %4016 = and i32 %4009, 65535
  %4017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4016)  ; LegacyF16ToF32(value)
  %4018 = fmul fast float %4013, %3684
  %4019 = fmul fast float %4014, %3685
  %4020 = fmul fast float %4015, %3686
  %4021 = and i32 %3773, 16384
  %4022 = icmp ne i32 %4021, 0
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = select i1 %4022, float %4024, float 1.000000e+00
  %4026 = fmul fast float %4025, %4017
  %4027 = fmul fast float %4018, %4026
  %4028 = fmul fast float %4019, %4026
  %4029 = fmul fast float %4020, %4026
  br label %4030

; <label>:4030                                    ; preds = %4008, %3946
  %4031 = phi float [ %4027, %4008 ], [ 0.000000e+00, %3946 ]
  %4032 = phi float [ %4028, %4008 ], [ 0.000000e+00, %3946 ]
  %4033 = phi float [ %4029, %4008 ], [ 0.000000e+00, %3946 ]
  %4034 = fsub fast float %4031, %3629
  %4035 = fsub fast float %4032, %3630
  %4036 = fsub fast float %4033, %3631
  %4037 = fmul fast float %4034, %3843
  %4038 = fmul fast float %4035, %3843
  %4039 = fmul fast float %4036, %3843
  %4040 = fadd fast float %4037, %3629
  %4041 = fadd fast float %4038, %3630
  %4042 = fadd fast float %4039, %3631
  br label %3743

; <label>:4043                                    ; preds = %3743
  br label %4044

; <label>:4044                                    ; preds = %4043, %3558
  %4045 = phi float [ 0.000000e+00, %3558 ], [ %3744, %4043 ]
  %4046 = phi float [ %1261, %3558 ], [ %3745, %4043 ]
  %4047 = phi float [ %3502, %3558 ], [ %3746, %4043 ]
  %4048 = phi float [ %3481, %3558 ], [ %3747, %4043 ]
  %4049 = phi float [ 0.000000e+00, %3558 ], [ %3748, %4043 ]
  %4050 = phi float [ 0.000000e+00, %3558 ], [ %3749, %4043 ]
  %4051 = phi float [ %3524, %3558 ], [ %3750, %4043 ]
  %4052 = phi float [ %3526, %3558 ], [ %3751, %4043 ]
  %4053 = phi float [ %3528, %3558 ], [ %3752, %4043 ]
  %4054 = phi float [ %3554, %3558 ], [ %3753, %4043 ]
  %4055 = phi float [ %3555, %3558 ], [ %3754, %4043 ]
  %4056 = phi float [ %3556, %3558 ], [ %3755, %4043 ]
  %4057 = phi float [ %3480, %3558 ], [ %3756, %4043 ]
  %4058 = phi float [ %3479, %3558 ], [ %3757, %4043 ]
  %4059 = phi float [ 0.000000e+00, %3558 ], [ %3758, %4043 ]
  %4060 = phi float [ %3478, %3558 ], [ %3759, %4043 ]
  %4061 = phi float [ %3509, %3558 ], [ %3760, %4043 ]
  %4062 = phi float [ %3510, %3558 ], [ %3761, %4043 ]
  %4063 = phi float [ %3511, %3558 ], [ %3762, %4043 ]
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4055, float %4056, float %4054, float %4055, float %4056)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4065, %4054
  %4067 = fmul fast float %4065, %4055
  %4068 = fmul fast float %4065, %4056
  %4069 = fadd fast float %4059, %1261
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4067, float %4068, float %4066, float %4067, float %4068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.unary.f32(i32 25, float %4071)  ; Rsqrt(value)
  %4073 = fmul fast float %4072, %4066
  %4074 = fmul fast float %4072, %4067
  %4075 = fmul fast float %4072, %4068
  br label %4076

; <label>:4076                                    ; preds = %4044, %3469
  %4077 = phi float [ %4073, %4044 ], [ %3554, %3469 ]
  %4078 = phi float [ %4074, %4044 ], [ %3555, %3469 ]
  %4079 = phi float [ %4075, %4044 ], [ %3556, %3469 ]
  %4080 = phi float [ %4051, %4044 ], [ %3524, %3469 ]
  %4081 = phi float [ %4052, %4044 ], [ %3526, %3469 ]
  %4082 = phi float [ %4053, %4044 ], [ %3528, %3469 ]
  %4083 = phi float [ %4061, %4044 ], [ %3509, %3469 ]
  %4084 = phi float [ %4062, %4044 ], [ %3510, %3469 ]
  %4085 = phi float [ %4063, %4044 ], [ %3511, %3469 ]
  %4086 = phi float [ %4060, %4044 ], [ %3478, %3469 ]
  %4087 = phi float [ %4070, %4044 ], [ %1261, %3469 ]
  %4088 = phi float [ %4058, %4044 ], [ %3479, %3469 ]
  %4089 = phi float [ %4057, %4044 ], [ %3480, %3469 ]
  %4090 = phi float [ %4050, %4044 ], [ 0.000000e+00, %3469 ]
  %4091 = phi float [ %4049, %4044 ], [ 0.000000e+00, %3469 ]
  %4092 = phi float [ %4045, %4044 ], [ 0.000000e+00, %3469 ]
  %4093 = phi float [ %4047, %4044 ], [ %3502, %3469 ]
  %4094 = phi float [ %4046, %4044 ], [ %1261, %3469 ]
  %4095 = phi float [ %4048, %4044 ], [ %3481, %3469 ]
  %4096 = fadd fast float %4086, 0xBFB99999A0000000
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %4097, 0x3FF1C71C80000000
  %4099 = call float @dx.op.binary.f32(i32 36, float %4086, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4100 = fsub fast float 1.000000e+00, %4098
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %4101, %4083
  %4103 = fmul fast float %4101, %4084
  %4104 = fmul fast float %4101, %4085
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = fmul fast float %4098, %4083
  %4109 = fmul fast float %4098, %4084
  %4110 = fmul fast float %4098, %4085
  %4111 = fadd fast float %4108, %4099
  %4112 = fadd fast float %4109, %4099
  %4113 = fadd fast float %4110, %4099
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.i32 %4118, 3
  %4120 = and i32 %4119, 8
  %4121 = icmp ne i32 %4120, 0
  %4122 = call float @dx.op.binary.f32(i32 35, float %4105, float %4083)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4083)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4107, float %4083)  ; FMax(a,b)
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4105, float %4106, float %4107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = select i1 %270, float %4083, float %4105
  %4127 = select i1 %270, float %4125, float %4106
  %4128 = select i1 %270, float 1.000000e+00, float %4107
  %4129 = select i1 %4121, float %4122, float %4126
  %4130 = select i1 %4121, float %4123, float %4127
  %4131 = select i1 %4121, float %4124, float %4128
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4136 = fadd fast float %4133, %198
  %4137 = fadd fast float %4134, %199
  %4138 = fadd fast float %4135, %200
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4142 = fsub fast float %4136, %4140
  %4143 = fsub fast float %4137, %4141
  %4144 = fmul fast float %4142, %4142
  %4145 = fmul fast float %4143, %4143
  %4146 = fadd fast float %4144, %4145
  %4147 = call float @dx.op.unary.f32(i32 24, float %4146)  ; Sqrt(value)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4149 = fcmp fast olt float %4147, %4148
  br i1 %4149, label %4150, label %4217

; <label>:4150                                    ; preds = %4076
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4161 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4163 = fadd fast float %4160, %4136
  %4164 = fadd fast float %4161, %4137
  %4165 = fadd fast float %4162, %4138
  %4166 = fmul fast float %4163, %4152
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4154, float %4166)  ; FMad(a,b,c)
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4156, float %4167)  ; FMad(a,b,c)
  %4169 = fmul fast float %4163, %4157
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = fsub fast float %4168, %4160
  %4173 = fsub fast float %4171, %4161
  %4174 = fsub fast float %4172, %4140
  %4175 = fadd fast float %4174, %4148
  %4176 = fsub fast float %4173, %4141
  %4177 = fadd fast float %4176, %4148
  %4178 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4179 = fmul fast float %4175, %4178
  %4180 = fmul fast float %4177, %4178
  %4181 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4183 = fsub fast float 1.000000e+00, %4181
  %4184 = fsub fast float 1.000000e+00, %4182
  %4185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4183, float %4184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = fcmp fast ugt float %4186, 0.000000e+00
  br i1 %4187, label %4188, label %4491

; <label>:4188                                    ; preds = %4150
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4191 = fmul fast float %4190, %4186
  %4192 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4193 = fadd fast float %4192, %4191
  %4194 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4195 = fadd fast float %4193, %4162
  %4196 = fmul fast float %4168, %4156
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4159, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4194, float %4197)  ; FMad(a,b,c)
  %4199 = fsub fast float %4198, %4162
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 2
  %4202 = fsub fast float %4199, %4201
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4183, float %4184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4183, float %4184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = fadd fast float %4208, %4204
  %4212 = fmul fast float %4211, 0x3F847AE140000000
  %4213 = fadd fast float %4209, %4205
  %4214 = fmul fast float %4213, 0x3F847AE140000000
  %4215 = fadd fast float %4210, %4206
  %4216 = fmul fast float %4215, 0x3F847AE140000000
  br label %4491

; <label>:4217                                    ; preds = %4076
  %4218 = and i32 %249, 1
  %4219 = icmp eq i32 %4218, 0
  br i1 %4219, label %4491, label %4220

; <label>:4220                                    ; preds = %4217
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 0
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4223, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4221, 3
  %4231 = extractvalue %dx.types.CBufRet.f32 %4223, 3
  %4232 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4233 = fadd fast float %4230, %4136
  %4234 = fadd fast float %4231, %4137
  %4235 = fadd fast float %4232, %4138
  %4236 = fmul fast float %4233, %4222
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4224, float %4236)  ; FMad(a,b,c)
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4226, float %4237)  ; FMad(a,b,c)
  %4239 = fmul fast float %4233, %4227
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4228, float %4239)  ; FMad(a,b,c)
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4229, float %4240)  ; FMad(a,b,c)
  %4242 = fsub fast float %4238, %4230
  %4243 = fsub fast float %4241, %4231
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.CBufRet.f32 %4244, 2
  %4248 = extractvalue %dx.types.CBufRet.f32 %4244, 3
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.i32 %4251, 0
  %4253 = extractvalue %dx.types.CBufRet.i32 %4251, 1
  %4254 = udiv i32 %4253, %4252
  %4255 = fsub fast float %4242, %4245
  %4256 = fsub fast float %4243, %4246
  %4257 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 35, float %4256, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 36, float %4257, float %4247)  ; FMin(a,b)
  %4260 = call float @dx.op.binary.f32(i32 36, float %4258, float %4248)  ; FMin(a,b)
  %4261 = add i32 %4252, -1
  %4262 = add i32 %4254, -1
  %4263 = fmul fast float %4259, %4250
  %4264 = fmul fast float %4260, %4250
  %4265 = fptoui float %4263 to i32
  %4266 = fptoui float %4264 to i32
  %4267 = call i32 @dx.op.binary.i32(i32 40, i32 %4265, i32 %4261)  ; UMin(a,b)
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4266, i32 %4262)  ; UMin(a,b)
  %4269 = mul i32 %4268, %4252
  %4270 = add i32 %4269, %4267
  %4271 = shl i32 %4270, 2
  %4272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4271, i32 undef)  ; BufferLoad(srv,index,wot)
  %4273 = extractvalue %dx.types.ResRet.i32 %4272, 0
  %4274 = icmp eq i32 %4273, -1
  br i1 %4274, label %4491, label %4275

; <label>:4275                                    ; preds = %4220
  %4276 = mul i32 %4273, 148
  %4277 = add i32 %4276, 4
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4276, 8
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = add i32 %4276, 36
  %4284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = add i32 %4276, 60
  %4287 = add i32 %4276, 92
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = add i32 %4276, 116
  %4291 = fsub fast float %4242, %4279
  %4292 = fsub fast float %4243, %4282
  %4293 = fmul fast float %4250, %4291
  %4294 = fmul fast float %4250, %4292
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4300 = call float @dx.op.unary.f32(i32 83, float %4295)  ; DerivCoarseX(value)
  %4301 = call float @dx.op.unary.f32(i32 83, float %4297)  ; DerivCoarseX(value)
  %4302 = call float @dx.op.unary.f32(i32 84, float %4295)  ; DerivCoarseY(value)
  %4303 = call float @dx.op.unary.f32(i32 84, float %4297)  ; DerivCoarseY(value)
  %4304 = fmul fast float %4300, %4299
  %4305 = fmul fast float %4301, %4299
  %4306 = fmul fast float %4302, %4299
  %4307 = fmul fast float %4303, %4299
  %4308 = call float @dx.op.dot2.f32(i32 54, float %4306, float %4307, float %4306, float %4307)  ; Dot2(ax,ay,bx,by)
  %4309 = call float @dx.op.dot2.f32(i32 54, float %4304, float %4305, float %4304, float %4305)  ; Dot2(ax,ay,bx,by)
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float %4308)  ; FMax(a,b)
  %4311 = call float @dx.op.unary.f32(i32 23, float %4310)  ; Log(value)
  %4312 = fmul fast float %4311, 5.000000e-01
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4315 = fadd fast float %4314, %4312
  %4316 = call float @dx.op.binary.f32(i32 35, float %4315, float 0.000000e+00)  ; FMax(a,b)
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4319 = fadd fast float %4318, %4316
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4322 = fadd fast float %4319, %4321
  %4323 = add i32 %4289, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4324, i32 0)  ; GetDimensions(handle,mipLevel)
  %4326 = extractvalue %dx.types.Dimensions %4325, 0
  %4327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4326)  ; FirstbitLo(value)
  %4328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.i32 %4328, 1
  %4330 = sub nsw i32 %4329, %4327
  %4331 = sitofp i32 %4330 to float
  %4332 = fsub fast float %4322, %4331
  %4333 = call float @dx.op.binary.f32(i32 35, float %4332, float 0.000000e+00)  ; FMax(a,b)
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4324, %dx.types.Handle %48, float %4295, float %4297, float %4285, float undef, i32 0, i32 0, i32 undef, float %4333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fcmp ule float %4335, 0x3FE0101020000000
  %4337 = extractvalue %dx.types.CBufRet.i32 %4328, 0
  %4338 = and i32 %4337, 128
  %4339 = icmp ne i32 %4338, 0
  %4340 = and i1 %4336, %4339
  br i1 %4340, label %4491, label %4341

; <label>:4341                                    ; preds = %4275
  %4342 = add i32 %4276, 20
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4276, 24
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = add i32 %4276, 40
  %4349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = add i32 %4276, 96
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4356 = fmul fast float %4355, %4295
  %4357 = fmul fast float %4355, %4297
  %4358 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4359 = fadd fast float %4356, %4358
  %4360 = fadd fast float %4357, %4358
  %4361 = add i32 %4353, 0
  %4362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4363 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4362, i32 0)  ; GetDimensions(handle,mipLevel)
  %4364 = extractvalue %dx.types.Dimensions %4363, 0
  %4365 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4364)  ; FirstbitLo(value)
  %4366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.i32 %4366, 1
  %4368 = sub nsw i32 %4367, %4365
  %4369 = sitofp i32 %4368 to float
  %4370 = fsub fast float %4319, %4369
  %4371 = call float @dx.op.binary.f32(i32 35, float %4370, float 0.000000e+00)  ; FMax(a,b)
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4362, %dx.types.Handle %48, float %4359, float %4360, float %4350, float undef, i32 0, i32 0, i32 undef, float %4371)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = fmul fast float %4373, %4344
  %4375 = fadd fast float %4374, %4347
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4384 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4385 = fadd fast float %4381, %4242
  %4386 = fadd fast float %4383, %4243
  %4387 = fadd fast float %4375, %4384
  %4388 = fmul fast float %4385, %4377
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4378, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4379, float %4389)  ; FMad(a,b,c)
  %4391 = fsub fast float %4390, %4384
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4394 = fsub fast float %4391, %4393
  %4395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.i32 %4395, 0
  %4397 = call i32 @dx.op.binary.i32(i32 40, i32 %4273, i32 %4396)  ; UMin(a,b)
  %4398 = mul i32 %4397, 36
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = add i32 %4398, 4
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = fmul fast float %4403, %4295
  %4405 = fmul fast float %4403, %4297
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4407 = fadd fast float %4404, %4406
  %4408 = fadd fast float %4405, %4406
  %4409 = icmp eq i32 %4400, 0
  br i1 %4409, label %4478, label %4410

; <label>:4410                                    ; preds = %4341
  br label %4411

; <label>:4411                                    ; preds = %4468, %4410
  %4412 = phi float [ %4469, %4468 ], [ 0.000000e+00, %4410 ]
  %4413 = phi float [ %4470, %4468 ], [ 0.000000e+00, %4410 ]
  %4414 = phi float [ %4471, %4468 ], [ 0.000000e+00, %4410 ]
  %4415 = phi float [ %4472, %4468 ], [ 0.000000e+00, %4410 ]
  %4416 = phi float [ %4473, %4468 ], [ 0.000000e+00, %4410 ]
  %4417 = phi float [ %4474, %4468 ], [ 0.000000e+00, %4410 ]
  %4418 = phi i32 [ %4475, %4468 ], [ 0, %4410 ]
  %4419 = shl i32 %4418, 2
  %4420 = add i32 %4286, %4419
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = add i32 %4290, %4419
  %4424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.i32 %4424, 0
  %4426 = add i32 %4425, 0
  %4427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4428 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4427, i32 0)  ; GetDimensions(handle,mipLevel)
  %4429 = extractvalue %dx.types.Dimensions %4428, 0
  %4430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4429)  ; FirstbitLo(value)
  %4431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.i32 %4431, 1
  %4433 = sub nsw i32 %4432, %4430
  %4434 = sitofp i32 %4433 to float
  %4435 = fsub fast float %4319, %4434
  %4436 = call float @dx.op.binary.f32(i32 35, float %4435, float 0.000000e+00)  ; FMax(a,b)
  %4437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4427, %dx.types.Handle %48, float %4407, float %4408, float %4422, float undef, i32 0, i32 0, i32 undef, float %4436)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = fcmp fast ogt float %4438, 0.000000e+00
  br i1 %4439, label %4440, label %4468

; <label>:4440                                    ; preds = %4411
  %4441 = add i32 %4401, %4419
  %4442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.i32 %4442, 0
  %4444 = and i32 %4443, 32767
  %4445 = mul nuw nsw i32 %4444, 928
  %4446 = add nuw nsw i32 %4445, 48
  %4447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4446, i32 undef)  ; BufferLoad(srv,index,wot)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.ResRet.f32 %4447, 2
  %4451 = add nuw nsw i32 %4445, 60
  %4452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4451, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = fmul fast float %4448, %4438
  %4457 = fmul fast float %4449, %4438
  %4458 = fmul fast float %4450, %4438
  %4459 = fadd fast float %4456, %4412
  %4460 = fadd fast float %4457, %4413
  %4461 = fadd fast float %4458, %4414
  %4462 = fmul fast float %4453, %4438
  %4463 = fmul fast float %4454, %4438
  %4464 = fmul fast float %4455, %4438
  %4465 = fadd fast float %4462, %4415
  %4466 = fadd fast float %4463, %4416
  %4467 = fadd fast float %4464, %4417
  br label %4468

; <label>:4468                                    ; preds = %4440, %4411
  %4469 = phi float [ %4459, %4440 ], [ %4412, %4411 ]
  %4470 = phi float [ %4460, %4440 ], [ %4413, %4411 ]
  %4471 = phi float [ %4461, %4440 ], [ %4414, %4411 ]
  %4472 = phi float [ %4465, %4440 ], [ %4415, %4411 ]
  %4473 = phi float [ %4466, %4440 ], [ %4416, %4411 ]
  %4474 = phi float [ %4467, %4440 ], [ %4417, %4411 ]
  %4475 = add nuw i32 %4418, 1
  %4476 = icmp eq i32 %4475, %4400
  br i1 %4476, label %4477, label %4411

; <label>:4477                                    ; preds = %4468
  br label %4478

; <label>:4478                                    ; preds = %4477, %4341
  %4479 = phi float [ 0.000000e+00, %4341 ], [ %4469, %4477 ]
  %4480 = phi float [ 0.000000e+00, %4341 ], [ %4470, %4477 ]
  %4481 = phi float [ 0.000000e+00, %4341 ], [ %4471, %4477 ]
  %4482 = phi float [ 0.000000e+00, %4341 ], [ %4472, %4477 ]
  %4483 = phi float [ 0.000000e+00, %4341 ], [ %4473, %4477 ]
  %4484 = phi float [ 0.000000e+00, %4341 ], [ %4474, %4477 ]
  %4485 = fadd fast float %4482, %4479
  %4486 = fmul fast float %4485, 0x3F847AE140000000
  %4487 = fadd fast float %4483, %4480
  %4488 = fmul fast float %4487, 0x3F847AE140000000
  %4489 = fadd fast float %4484, %4481
  %4490 = fmul fast float %4489, 0x3F847AE140000000
  br label %4491

; <label>:4491                                    ; preds = %4478, %4275, %4220, %4217, %4188, %4150
  %4492 = phi float [ %4202, %4188 ], [ -1.310720e+05, %4150 ], [ %4394, %4478 ], [ -1.310720e+05, %4220 ], [ -1.310720e+05, %4275 ], [ -1.310720e+05, %4217 ]
  %4493 = phi float [ %4212, %4188 ], [ 0.000000e+00, %4150 ], [ %4486, %4478 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4275 ], [ 0.000000e+00, %4217 ]
  %4494 = phi float [ %4214, %4188 ], [ 0.000000e+00, %4150 ], [ %4488, %4478 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4275 ], [ 0.000000e+00, %4217 ]
  %4495 = phi float [ %4216, %4188 ], [ 0.000000e+00, %4150 ], [ %4490, %4478 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4275 ], [ 0.000000e+00, %4217 ]
  %4496 = phi i1 [ true, %4188 ], [ false, %4150 ], [ true, %4478 ], [ false, %4220 ], [ false, %4275 ], [ false, %4217 ]
  %4497 = and i32 %249, 3
  %4498 = icmp eq i32 %4497, 1
  %4499 = select i1 %4498, float 1.000000e+00, float 0.000000e+00
  %4500 = fsub fast float %4492, %200
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = select i1 %4496, float %4501, float 1.000000e+00
  %4503 = fmul fast float %4502, %4499
  %4504 = icmp eq i32 %4497, 3
  %4505 = select i1 %4504, float 1.000000e+00, float %4503
  %4506 = call float @dx.op.binary.f32(i32 35, float %4092, float %4505)  ; FMax(a,b)
  %4507 = fcmp fast olt float %4505, 1.000000e+00
  %4508 = fcmp uge float %75, 0.000000e+00
  %4509 = and i1 %4508, %4507
  br i1 %4509, label %4510, label %4520

; <label>:4510                                    ; preds = %4491
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = fadd fast float %4512, %4506
  %4516 = fcmp ule float %74, 0.000000e+00
  %4517 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = select i1 %4516, float %4517, float 1.000000e+00
  %4519 = fmul fast float %4518, %4514
  br label %4520

; <label>:4520                                    ; preds = %4510, %4491
  %4521 = phi float [ %4515, %4510 ], [ %4506, %4491 ]
  %4522 = phi float [ %4513, %4510 ], [ 0.000000e+00, %4491 ]
  %4523 = phi float [ %4519, %4510 ], [ 0.000000e+00, %4491 ]
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = fcmp fast une float %4525, 0.000000e+00
  %4528 = fcmp fast une float %4526, 0.000000e+00
  %4529 = or i1 %4527, %4528
  br i1 %4529, label %4530, label %5089

; <label>:4530                                    ; preds = %4520
  br i1 %4527, label %4531, label %4804

; <label>:4531                                    ; preds = %4530
  %4532 = call float @dx.op.unary.f32(i32 23, float %4089)  ; Log(value)
  %4533 = fmul fast float %4532, 4.000000e+00
  %4534 = call float @dx.op.unary.f32(i32 21, float %4533)  ; Exp(value)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = fmul fast float %4536, %62
  %4538 = fmul fast float %4536, %63
  %4539 = fmul fast float %4536, %64
  %4540 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4541 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 23, float %4540)  ; Log(value)
  %4544 = call float @dx.op.unary.f32(i32 23, float %4541)  ; Log(value)
  %4545 = call float @dx.op.unary.f32(i32 23, float %4542)  ; Log(value)
  %4546 = fmul fast float %4543, 4.000000e+00
  %4547 = fmul fast float %4544, 4.000000e+00
  %4548 = fmul fast float %4545, 4.000000e+00
  %4549 = call float @dx.op.unary.f32(i32 21, float %4546)  ; Exp(value)
  %4550 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4551 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4552 = fadd fast float %4550, %4549
  %4553 = fadd fast float %4552, %4551
  %4554 = fdiv fast float 1.000000e+00, %4553
  %4555 = fmul fast float %4554, %4549
  %4556 = fcmp fast ogt float %71, 0.000000e+00
  %4557 = fcmp fast ogt float %72, 0.000000e+00
  %4558 = fcmp fast ogt float %73, 0.000000e+00
  %4559 = fcmp fast olt float %71, 0.000000e+00
  %4560 = fcmp fast olt float %72, 0.000000e+00
  %4561 = fcmp fast olt float %73, 0.000000e+00
  %4562 = zext i1 %4556 to i32
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = zext i1 %4559 to i32
  %4566 = zext i1 %4560 to i32
  %4567 = zext i1 %4561 to i32
  %4568 = sub nsw i32 %4562, %4565
  %4569 = sub nsw i32 %4563, %4566
  %4570 = sub nsw i32 %4564, %4567
  %4571 = call float @dx.op.unary.f32(i32 83, float %4537)  ; DerivCoarseX(value)
  %4572 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4573 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4574 = call float @dx.op.unary.f32(i32 84, float %4537)  ; DerivCoarseY(value)
  %4575 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4576 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4577 = fcmp fast ole float %281, %4555
  %4578 = fmul fast float %4554, %4552
  %4579 = fcmp fast ole float %281, %4578
  %4580 = select i1 %4579, float %4539, float %4537
  %4581 = select i1 %4579, float %4537, float %4538
  %4582 = select i1 %4577, float %4538, float %4580
  %4583 = select i1 %4577, float %4539, float %4581
  %4584 = select i1 %4579, float %4573, float %4571
  %4585 = select i1 %4579, float %4571, float %4572
  %4586 = select i1 %4577, float %4572, float %4584
  %4587 = select i1 %4577, float %4573, float %4585
  %4588 = select i1 %4579, float %4576, float %4574
  %4589 = select i1 %4579, float %4574, float %4575
  %4590 = select i1 %4577, float %4575, float %4588
  %4591 = select i1 %4577, float %4576, float %4589
  %4592 = call float @dx.op.unary.f32(i32 27, float %4582)  ; Round_ni(value)
  %4593 = call float @dx.op.unary.f32(i32 27, float %4583)  ; Round_ni(value)
  %4594 = fptosi float %4592 to i32
  %4595 = fptosi float %4593 to i32
  %4596 = xor i32 %4595, %4594
  %4597 = sitofp i32 %4596 to float
  %4598 = fptosi float %4597 to i32
  %4599 = sitofp i32 %4598 to float
  %4600 = fmul fast float %4599, 0x3FE3C6EF40000000
  %4601 = frem fast float %4592, 2.560000e+02
  %4602 = frem fast float %4593, 2.560000e+02
  %4603 = fptoui float %4601 to i32
  %4604 = fptoui float %4602 to i32
  %4605 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4603, i32 %4604, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = fadd fast float %4606, %4600
  %4610 = fadd fast float %4607, %4600
  %4611 = fadd fast float %4608, %4600
  %4612 = call float @dx.op.unary.f32(i32 22, float %4609)  ; Frc(value)
  %4613 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4614 = call float @dx.op.unary.f32(i32 22, float %4611)  ; Frc(value)
  %4615 = fmul fast float %4614, 0x401921FB60000000
  %4616 = call float @dx.op.unary.f32(i32 13, float %4615)  ; Sin(value)
  %4617 = call float @dx.op.unary.f32(i32 12, float %4615)  ; Cos(value)
  %4618 = fsub fast float -0.000000e+00, %4617
  %4619 = fmul fast float %4617, %4582
  %4620 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4583, float %4619)  ; FMad(a,b,c)
  %4621 = fmul fast float %4616, %4582
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4618, float %4583, float %4621)  ; FMad(a,b,c)
  %4623 = fadd fast float %4620, %4612
  %4624 = fadd fast float %4622, %4613
  %4625 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4626 = bitcast float %4625 to i32
  %4627 = icmp eq i32 %4626, 0
  br i1 %4627, label %4666, label %4628

; <label>:4628                                    ; preds = %4531
  %4629 = add i32 %4626, 0
  %4630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4630, %dx.types.Handle %112, float %4623, float %4624, float undef, float undef, i32 0, i32 0, i32 undef, float %4586, float %4587, float undef, float %4590, float %4591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 2
  %4636 = fsub fast float 1.000000e+00, %4525
  %4637 = call float @dx.op.binary.f32(i32 35, float %4636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4638 = bitcast float %4525 to i32
  %4639 = sitofp i32 %4638 to float
  %4640 = fadd fast float %4639, 0xC1CFBF8940000000
  %4641 = fmul fast float %4635, %4640
  %4642 = fadd fast float %4641, 0x41CFBF8940000000
  %4643 = fptosi float %4642 to i32
  %4644 = bitcast i32 %4643 to float
  %4645 = bitcast float %4637 to i32
  %4646 = sitofp i32 %4645 to float
  %4647 = fadd fast float %4646, 0xC1CFBF8940000000
  %4648 = fmul fast float %4647, %4635
  %4649 = fadd fast float %4648, 0x41CFBF8940000000
  %4650 = fptosi float %4649 to i32
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4644, %4634
  %4653 = fmul fast float %4651, %4634
  %4654 = fsub fast float %4637, %4652
  %4655 = fadd fast float %4653, %4637
  %4656 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = fsub fast float %4632, %4656
  %4659 = fsub fast float %4657, %4656
  %4660 = bitcast float %4659 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4662, %4658
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fcmp fast olt float %4664, 0x3F70101020000000
  br i1 %4665, label %4804, label %4666

; <label>:4666                                    ; preds = %4628, %4531
  %4667 = phi float [ %4664, %4628 ], [ %4525, %4531 ]
  %4668 = fmul fast float %4667, %4534
  %4669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.i32 %4669, 1
  %4671 = extractvalue %dx.types.CBufRet.i32 %4669, 0
  %4672 = add i32 %4671, 0
  %4673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4674 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4673, %dx.types.Handle %111, float %4623, float %4624, float undef, float undef, i32 0, i32 0, i32 undef, float %4586, float %4587, float undef, float %4590, float %4591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = extractvalue %dx.types.ResRet.f32 %4674, 3
  %4679 = and i32 %4670, 255
  %4680 = uitofp i32 %4679 to float
  %4681 = lshr i32 %4670, 8
  %4682 = and i32 %4681, 255
  %4683 = uitofp i32 %4682 to float
  %4684 = fmul fast float %4678, %4680
  %4685 = fadd fast float %4684, %4683
  %4686 = fmul fast float %4685, 0x3F70101000000000
  %4687 = fadd fast float %4686, 0xBFB99999A0000000
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4688, 0x3FF1C71C80000000
  %4690 = call float @dx.op.binary.f32(i32 36, float %4686, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4691 = fsub fast float 1.000000e+00, %4689
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, %4675
  %4694 = fmul fast float %4692, %4676
  %4695 = fmul fast float %4692, %4677
  %4696 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = fmul fast float %4689, %4675
  %4700 = fmul fast float %4689, %4676
  %4701 = fmul fast float %4689, %4677
  %4702 = fadd fast float %4699, %4690
  %4703 = fadd fast float %4700, %4690
  %4704 = fadd fast float %4701, %4690
  %4705 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.i32 %4708, 3
  %4710 = extractvalue %dx.types.CBufRet.i32 %4708, 2
  %4711 = add i32 %4710, 0
  %4712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4712, %dx.types.Handle %111, float %4623, float %4624, float undef, float undef, i32 0, i32 0, i32 undef, float %4586, float %4587, float undef, float %4590, float %4591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = extractvalue %dx.types.ResRet.f32 %4713, 3
  %4718 = and i32 %4709, 255
  %4719 = uitofp i32 %4718 to float
  %4720 = lshr i32 %4709, 8
  %4721 = and i32 %4720, 255
  %4722 = uitofp i32 %4721 to float
  %4723 = lshr i32 %4709, 16
  %4724 = and i32 %4723, 255
  %4725 = uitofp i32 %4724 to float
  %4726 = fmul fast float %4725, 0x3F70101000000000
  %4727 = fmul fast float %4714, %4719
  %4728 = fadd fast float %4727, %4722
  %4729 = fmul fast float %4728, 0x3F70101000000000
  %4730 = fadd fast float %4715, -5.000000e-01
  %4731 = fadd fast float %4717, -5.000000e-01
  %4732 = fmul fast float %4730, %4726
  %4733 = fmul fast float %4731, %4726
  %4734 = fadd fast float %4732, 5.000000e-01
  %4735 = fadd fast float %4733, 5.000000e-01
  %4736 = fmul fast float %4734, 2.000000e+00
  %4737 = fadd fast float %4736, -1.000000e+00
  %4738 = fmul fast float %4735, 2.000000e+00
  %4739 = fadd fast float %4738, -1.000000e+00
  %4740 = fadd fast float %4737, %4739
  %4741 = fmul fast float %4740, 5.000000e-01
  %4742 = fsub fast float %4737, %4739
  %4743 = fmul fast float %4742, 5.000000e-01
  %4744 = call float @dx.op.unary.f32(i32 6, float %4741)  ; FAbs(value)
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = call float @dx.op.unary.f32(i32 6, float %4743)  ; FAbs(value)
  %4747 = fsub fast float %4745, %4746
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4743, float %4747, float %4741, float %4743, float %4747)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = call float @dx.op.unary.f32(i32 25, float %4748)  ; Rsqrt(value)
  %4750 = fmul fast float %4741, %4749
  %4751 = fmul fast float %4743, %4749
  %4752 = select i1 %4579, i32 %4569, i32 %4570
  %4753 = select i1 %4577, i32 %4568, i32 %4752
  %4754 = sitofp i32 %4753 to float
  %4755 = fmul fast float %4747, %4754
  %4756 = fmul fast float %4755, %4749
  %4757 = select i1 %4579, float %4756, float %4751
  %4758 = select i1 %4579, float %4751, float %4756
  %4759 = select i1 %4577, float %4756, float %4750
  %4760 = select i1 %4577, float %4751, float %4757
  %4761 = select i1 %4577, float %4750, float %4758
  %4762 = fsub fast float %4696, %4129
  %4763 = fsub fast float %4697, %4130
  %4764 = fsub fast float %4698, %4131
  %4765 = fmul fast float %4762, %4668
  %4766 = fmul fast float %4763, %4668
  %4767 = fmul fast float %4764, %4668
  %4768 = fadd fast float %4765, %4129
  %4769 = fadd fast float %4766, %4130
  %4770 = fadd fast float %4767, %4131
  %4771 = fsub fast float %4705, %4114
  %4772 = fsub fast float %4706, %4115
  %4773 = fsub fast float %4707, %4116
  %4774 = fmul fast float %4771, %4668
  %4775 = fmul fast float %4772, %4668
  %4776 = fmul fast float %4773, %4668
  %4777 = fadd fast float %4774, %4114
  %4778 = fadd fast float %4775, %4115
  %4779 = fadd fast float %4776, %4116
  %4780 = fadd fast float %4759, %4077
  %4781 = fadd fast float %4760, %4078
  %4782 = fadd fast float %4761, %4079
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4780, float %4781, float %4782)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = call float @dx.op.unary.f32(i32 25, float %4783)  ; Rsqrt(value)
  %4785 = fmul fast float %4780, %4784
  %4786 = fmul fast float %4781, %4784
  %4787 = fmul fast float %4782, %4784
  %4788 = fsub fast float %4785, %4077
  %4789 = fsub fast float %4786, %4078
  %4790 = fsub fast float %4787, %4079
  %4791 = fmul fast float %4788, %4668
  %4792 = fmul fast float %4789, %4668
  %4793 = fmul fast float %4790, %4668
  %4794 = fadd fast float %4791, %4077
  %4795 = fadd fast float %4792, %4078
  %4796 = fadd fast float %4793, %4079
  %4797 = call float @dx.op.binary.f32(i32 36, float %4089, float %4716)  ; FMin(a,b)
  %4798 = fsub fast float %4797, %4089
  %4799 = fmul fast float %4798, %4668
  %4800 = fadd fast float %4799, %4089
  %4801 = fsub fast float %4729, %4117
  %4802 = fmul fast float %4801, %4668
  %4803 = fadd fast float %4802, %4117
  br label %4804

; <label>:4804                                    ; preds = %4666, %4628, %4530
  %4805 = phi float [ %4768, %4666 ], [ %4129, %4628 ], [ %4129, %4530 ]
  %4806 = phi float [ %4769, %4666 ], [ %4130, %4628 ], [ %4130, %4530 ]
  %4807 = phi float [ %4770, %4666 ], [ %4131, %4628 ], [ %4131, %4530 ]
  %4808 = phi float [ %4777, %4666 ], [ %4114, %4628 ], [ %4114, %4530 ]
  %4809 = phi float [ %4778, %4666 ], [ %4115, %4628 ], [ %4115, %4530 ]
  %4810 = phi float [ %4779, %4666 ], [ %4116, %4628 ], [ %4116, %4530 ]
  %4811 = phi float [ %4794, %4666 ], [ %4077, %4628 ], [ %4077, %4530 ]
  %4812 = phi float [ %4795, %4666 ], [ %4078, %4628 ], [ %4078, %4530 ]
  %4813 = phi float [ %4796, %4666 ], [ %4079, %4628 ], [ %4079, %4530 ]
  %4814 = phi float [ %4803, %4666 ], [ %4117, %4628 ], [ %4117, %4530 ]
  %4815 = phi float [ %4800, %4666 ], [ %4089, %4628 ], [ %4089, %4530 ]
  br i1 %4528, label %4816, label %5089

; <label>:4816                                    ; preds = %4804
  %4817 = call float @dx.op.unary.f32(i32 23, float %4815)  ; Log(value)
  %4818 = fmul fast float %4817, 4.000000e+00
  %4819 = call float @dx.op.unary.f32(i32 21, float %4818)  ; Exp(value)
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = fmul fast float %4821, %62
  %4823 = fmul fast float %4821, %63
  %4824 = fmul fast float %4821, %64
  %4825 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4826 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4828 = call float @dx.op.unary.f32(i32 23, float %4825)  ; Log(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = call float @dx.op.unary.f32(i32 23, float %4827)  ; Log(value)
  %4831 = fmul fast float %4828, 4.000000e+00
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = fmul fast float %4830, 4.000000e+00
  %4834 = call float @dx.op.unary.f32(i32 21, float %4831)  ; Exp(value)
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4837 = fadd fast float %4835, %4834
  %4838 = fadd fast float %4837, %4836
  %4839 = fdiv fast float 1.000000e+00, %4838
  %4840 = fmul fast float %4839, %4834
  %4841 = fcmp fast ogt float %71, 0.000000e+00
  %4842 = fcmp fast ogt float %72, 0.000000e+00
  %4843 = fcmp fast ogt float %73, 0.000000e+00
  %4844 = fcmp fast olt float %71, 0.000000e+00
  %4845 = fcmp fast olt float %72, 0.000000e+00
  %4846 = fcmp fast olt float %73, 0.000000e+00
  %4847 = zext i1 %4841 to i32
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = sub nsw i32 %4847, %4850
  %4854 = sub nsw i32 %4848, %4851
  %4855 = sub nsw i32 %4849, %4852
  %4856 = call float @dx.op.unary.f32(i32 83, float %4822)  ; DerivCoarseX(value)
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 83, float %4824)  ; DerivCoarseX(value)
  %4859 = call float @dx.op.unary.f32(i32 84, float %4822)  ; DerivCoarseY(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = call float @dx.op.unary.f32(i32 84, float %4824)  ; DerivCoarseY(value)
  %4862 = fcmp fast ole float %281, %4840
  %4863 = fmul fast float %4839, %4837
  %4864 = fcmp fast ole float %281, %4863
  %4865 = select i1 %4864, float %4824, float %4822
  %4866 = select i1 %4864, float %4822, float %4823
  %4867 = select i1 %4862, float %4823, float %4865
  %4868 = select i1 %4862, float %4824, float %4866
  %4869 = select i1 %4864, float %4858, float %4856
  %4870 = select i1 %4864, float %4856, float %4857
  %4871 = select i1 %4862, float %4857, float %4869
  %4872 = select i1 %4862, float %4858, float %4870
  %4873 = select i1 %4864, float %4861, float %4859
  %4874 = select i1 %4864, float %4859, float %4860
  %4875 = select i1 %4862, float %4860, float %4873
  %4876 = select i1 %4862, float %4861, float %4874
  %4877 = call float @dx.op.unary.f32(i32 27, float %4867)  ; Round_ni(value)
  %4878 = call float @dx.op.unary.f32(i32 27, float %4868)  ; Round_ni(value)
  %4879 = fptosi float %4877 to i32
  %4880 = fptosi float %4878 to i32
  %4881 = xor i32 %4880, %4879
  %4882 = sitofp i32 %4881 to float
  %4883 = fptosi float %4882 to i32
  %4884 = sitofp i32 %4883 to float
  %4885 = fmul fast float %4884, 0x3FE3C6EF40000000
  %4886 = frem fast float %4877, 2.560000e+02
  %4887 = frem fast float %4878, 2.560000e+02
  %4888 = fptoui float %4886 to i32
  %4889 = fptoui float %4887 to i32
  %4890 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4888, i32 %4889, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.ResRet.f32 %4890, 1
  %4893 = extractvalue %dx.types.ResRet.f32 %4890, 2
  %4894 = fadd fast float %4891, %4885
  %4895 = fadd fast float %4892, %4885
  %4896 = fadd fast float %4893, %4885
  %4897 = call float @dx.op.unary.f32(i32 22, float %4894)  ; Frc(value)
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = call float @dx.op.unary.f32(i32 22, float %4896)  ; Frc(value)
  %4900 = fmul fast float %4899, 0x401921FB60000000
  %4901 = call float @dx.op.unary.f32(i32 13, float %4900)  ; Sin(value)
  %4902 = call float @dx.op.unary.f32(i32 12, float %4900)  ; Cos(value)
  %4903 = fsub fast float -0.000000e+00, %4902
  %4904 = fmul fast float %4902, %4867
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4868, float %4904)  ; FMad(a,b,c)
  %4906 = fmul fast float %4901, %4867
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4868, float %4906)  ; FMad(a,b,c)
  %4908 = fadd fast float %4905, %4897
  %4909 = fadd fast float %4907, %4898
  %4910 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4911 = bitcast float %4910 to i32
  %4912 = icmp eq i32 %4911, 0
  br i1 %4912, label %4951, label %4913

; <label>:4913                                    ; preds = %4816
  %4914 = add i32 %4911, 0
  %4915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4915, %dx.types.Handle %112, float %4908, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float %4871, float %4872, float undef, float %4875, float %4876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 1
  %4920 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4921 = fsub fast float 1.000000e+00, %4526
  %4922 = call float @dx.op.binary.f32(i32 35, float %4921, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4923 = bitcast float %4526 to i32
  %4924 = sitofp i32 %4923 to float
  %4925 = fadd fast float %4924, 0xC1CFBF8940000000
  %4926 = fmul fast float %4920, %4925
  %4927 = fadd fast float %4926, 0x41CFBF8940000000
  %4928 = fptosi float %4927 to i32
  %4929 = bitcast i32 %4928 to float
  %4930 = bitcast float %4922 to i32
  %4931 = sitofp i32 %4930 to float
  %4932 = fadd fast float %4931, 0xC1CFBF8940000000
  %4933 = fmul fast float %4932, %4920
  %4934 = fadd fast float %4933, 0x41CFBF8940000000
  %4935 = fptosi float %4934 to i32
  %4936 = bitcast i32 %4935 to float
  %4937 = fmul fast float %4929, %4919
  %4938 = fmul fast float %4936, %4919
  %4939 = fsub fast float %4922, %4937
  %4940 = fadd fast float %4938, %4922
  %4941 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4943 = fsub fast float %4917, %4941
  %4944 = fsub fast float %4942, %4941
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4943
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fcmp fast olt float %4949, 0x3F70101020000000
  br i1 %4950, label %5089, label %4951

; <label>:4951                                    ; preds = %4913, %4816
  %4952 = phi float [ %4949, %4913 ], [ %4526, %4816 ]
  %4953 = fmul fast float %4952, %4819
  %4954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.i32 %4954, 1
  %4956 = extractvalue %dx.types.CBufRet.i32 %4954, 0
  %4957 = add i32 %4956, 0
  %4958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4958, %dx.types.Handle %111, float %4908, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float %4871, float %4872, float undef, float %4875, float %4876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 1
  %4962 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4963 = extractvalue %dx.types.ResRet.f32 %4959, 3
  %4964 = and i32 %4955, 255
  %4965 = uitofp i32 %4964 to float
  %4966 = lshr i32 %4955, 8
  %4967 = and i32 %4966, 255
  %4968 = uitofp i32 %4967 to float
  %4969 = fmul fast float %4963, %4965
  %4970 = fadd fast float %4969, %4968
  %4971 = fmul fast float %4970, 0x3F70101000000000
  %4972 = fadd fast float %4971, 0xBFB99999A0000000
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fmul fast float %4973, 0x3FF1C71C80000000
  %4975 = call float @dx.op.binary.f32(i32 36, float %4971, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4976 = fsub fast float 1.000000e+00, %4974
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4977, %4960
  %4979 = fmul fast float %4977, %4961
  %4980 = fmul fast float %4977, %4962
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = fmul fast float %4974, %4960
  %4985 = fmul fast float %4974, %4961
  %4986 = fmul fast float %4974, %4962
  %4987 = fadd fast float %4984, %4975
  %4988 = fadd fast float %4985, %4975
  %4989 = fadd fast float %4986, %4975
  %4990 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.i32 %4993, 3
  %4995 = extractvalue %dx.types.CBufRet.i32 %4993, 2
  %4996 = add i32 %4995, 0
  %4997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4997, %dx.types.Handle %111, float %4908, float %4909, float undef, float undef, i32 0, i32 0, i32 undef, float %4871, float %4872, float undef, float %4875, float %4876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4999 = extractvalue %dx.types.ResRet.f32 %4998, 0
  %5000 = extractvalue %dx.types.ResRet.f32 %4998, 1
  %5001 = extractvalue %dx.types.ResRet.f32 %4998, 2
  %5002 = extractvalue %dx.types.ResRet.f32 %4998, 3
  %5003 = and i32 %4994, 255
  %5004 = uitofp i32 %5003 to float
  %5005 = lshr i32 %4994, 8
  %5006 = and i32 %5005, 255
  %5007 = uitofp i32 %5006 to float
  %5008 = lshr i32 %4994, 16
  %5009 = and i32 %5008, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = fmul fast float %5010, 0x3F70101000000000
  %5012 = fmul fast float %4999, %5004
  %5013 = fadd fast float %5012, %5007
  %5014 = fmul fast float %5013, 0x3F70101000000000
  %5015 = fadd fast float %5000, -5.000000e-01
  %5016 = fadd fast float %5002, -5.000000e-01
  %5017 = fmul fast float %5015, %5011
  %5018 = fmul fast float %5016, %5011
  %5019 = fadd fast float %5017, 5.000000e-01
  %5020 = fadd fast float %5018, 5.000000e-01
  %5021 = fmul fast float %5019, 2.000000e+00
  %5022 = fadd fast float %5021, -1.000000e+00
  %5023 = fmul fast float %5020, 2.000000e+00
  %5024 = fadd fast float %5023, -1.000000e+00
  %5025 = fadd fast float %5022, %5024
  %5026 = fmul fast float %5025, 5.000000e-01
  %5027 = fsub fast float %5022, %5024
  %5028 = fmul fast float %5027, 5.000000e-01
  %5029 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = call float @dx.op.unary.f32(i32 6, float %5028)  ; FAbs(value)
  %5032 = fsub fast float %5030, %5031
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5028, float %5032, float %5026, float %5028, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 25, float %5033)  ; Rsqrt(value)
  %5035 = fmul fast float %5026, %5034
  %5036 = fmul fast float %5028, %5034
  %5037 = select i1 %4864, i32 %4854, i32 %4855
  %5038 = select i1 %4862, i32 %4853, i32 %5037
  %5039 = sitofp i32 %5038 to float
  %5040 = fmul fast float %5032, %5039
  %5041 = fmul fast float %5040, %5034
  %5042 = select i1 %4864, float %5041, float %5036
  %5043 = select i1 %4864, float %5036, float %5041
  %5044 = select i1 %4862, float %5041, float %5035
  %5045 = select i1 %4862, float %5036, float %5042
  %5046 = select i1 %4862, float %5035, float %5043
  %5047 = fsub fast float %4981, %4805
  %5048 = fsub fast float %4982, %4806
  %5049 = fsub fast float %4983, %4807
  %5050 = fmul fast float %5047, %4953
  %5051 = fmul fast float %5048, %4953
  %5052 = fmul fast float %5049, %4953
  %5053 = fadd fast float %5050, %4805
  %5054 = fadd fast float %5051, %4806
  %5055 = fadd fast float %5052, %4807
  %5056 = fsub fast float %4990, %4808
  %5057 = fsub fast float %4991, %4809
  %5058 = fsub fast float %4992, %4810
  %5059 = fmul fast float %5056, %4953
  %5060 = fmul fast float %5057, %4953
  %5061 = fmul fast float %5058, %4953
  %5062 = fadd fast float %5059, %4808
  %5063 = fadd fast float %5060, %4809
  %5064 = fadd fast float %5061, %4810
  %5065 = fadd fast float %5044, %4811
  %5066 = fadd fast float %5045, %4812
  %5067 = fadd fast float %5046, %4813
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.unary.f32(i32 25, float %5068)  ; Rsqrt(value)
  %5070 = fmul fast float %5065, %5069
  %5071 = fmul fast float %5066, %5069
  %5072 = fmul fast float %5067, %5069
  %5073 = fsub fast float %5070, %4811
  %5074 = fsub fast float %5071, %4812
  %5075 = fsub fast float %5072, %4813
  %5076 = fmul fast float %5073, %4953
  %5077 = fmul fast float %5074, %4953
  %5078 = fmul fast float %5075, %4953
  %5079 = fadd fast float %5076, %4811
  %5080 = fadd fast float %5077, %4812
  %5081 = fadd fast float %5078, %4813
  %5082 = call float @dx.op.binary.f32(i32 36, float %4815, float %5001)  ; FMin(a,b)
  %5083 = fsub fast float %5082, %4815
  %5084 = fmul fast float %5083, %4953
  %5085 = fadd fast float %5084, %4815
  %5086 = fsub fast float %5014, %4814
  %5087 = fmul fast float %5086, %4953
  %5088 = fadd fast float %5087, %4814
  br label %5089

; <label>:5089                                    ; preds = %4951, %4913, %4804, %4520
  %5090 = phi float [ %5053, %4951 ], [ %4805, %4913 ], [ %4805, %4804 ], [ %4129, %4520 ]
  %5091 = phi float [ %5054, %4951 ], [ %4806, %4913 ], [ %4806, %4804 ], [ %4130, %4520 ]
  %5092 = phi float [ %5055, %4951 ], [ %4807, %4913 ], [ %4807, %4804 ], [ %4131, %4520 ]
  %5093 = phi float [ %5062, %4951 ], [ %4808, %4913 ], [ %4808, %4804 ], [ %4114, %4520 ]
  %5094 = phi float [ %5063, %4951 ], [ %4809, %4913 ], [ %4809, %4804 ], [ %4115, %4520 ]
  %5095 = phi float [ %5064, %4951 ], [ %4810, %4913 ], [ %4810, %4804 ], [ %4116, %4520 ]
  %5096 = phi float [ %5079, %4951 ], [ %4811, %4913 ], [ %4811, %4804 ], [ %4077, %4520 ]
  %5097 = phi float [ %5080, %4951 ], [ %4812, %4913 ], [ %4812, %4804 ], [ %4078, %4520 ]
  %5098 = phi float [ %5081, %4951 ], [ %4813, %4913 ], [ %4813, %4804 ], [ %4079, %4520 ]
  %5099 = phi float [ %5088, %4951 ], [ %4814, %4913 ], [ %4814, %4804 ], [ %4117, %4520 ]
  %5100 = phi float [ %5085, %4951 ], [ %4815, %4913 ], [ %4815, %4804 ], [ %4089, %4520 ]
  %5101 = fcmp fast une float %4524, 0.000000e+00
  br i1 %5101, label %5102, label %5271

; <label>:5102                                    ; preds = %5089
  %5103 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 25, float %5103)  ; Rsqrt(value)
  %5105 = fmul fast float %198, %5104
  %5106 = fsub fast float -0.000000e+00, %5105
  %5107 = fmul fast float %199, %5104
  %5108 = fsub fast float -0.000000e+00, %5107
  %5109 = fmul fast float %200, %5104
  %5110 = fsub fast float -0.000000e+00, %5109
  %5111 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5108, float %5110, float %124, float %126, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = fmul fast float %4524, 2.500000e+00
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %4524, 0x4013FFFFE0000000
  %5115 = fadd fast float %5114, 0xBFFFFFFFE0000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %4524, 0x4004000020000000
  %5118 = fadd fast float %5117, 0xBFF8000040000000
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %4096, 1.000000e+01
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, 2.000000e+00
  %5123 = fsub fast float 3.000000e+00, %5122
  %5124 = fmul fast float %5121, %5121
  %5125 = fmul fast float %5124, %5123
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = fsub fast float 0x3FE3333340000000, %5099
  %5128 = fmul fast float %5127, 0x400AAAAAA0000000
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %5126, %5129
  %5131 = fmul fast float %5090, 0x3FEA2B8620000000
  %5132 = fmul fast float %5091, 0x3FEA2B8620000000
  %5133 = fmul fast float %5092, 0x3FEA2B8620000000
  %5134 = fadd fast float %5131, 0x3FC81DFBA0000000
  %5135 = fmul fast float %5134, %5090
  %5136 = fadd fast float %5135, 0x3F910E6020000000
  %5137 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5138 = fmul fast float %5137, %5091
  %5139 = fadd fast float %5138, 0x3F910E6020000000
  %5140 = fadd fast float %5133, 0x3FC81DFBA0000000
  %5141 = fmul fast float %5140, %5092
  %5142 = fadd fast float %5141, 0x3F910E6020000000
  %5143 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = fsub fast float %5143, %5090
  %5147 = fsub fast float %5144, %5091
  %5148 = fsub fast float %5145, %5092
  %5149 = fmul fast float %5146, %5113
  %5150 = fmul fast float %5149, %5130
  %5151 = fmul fast float %5147, %5113
  %5152 = fmul fast float %5151, %5130
  %5153 = fmul fast float %5148, %5113
  %5154 = fmul fast float %5153, %5130
  %5155 = fadd fast float %5150, %5090
  %5156 = fadd fast float %5152, %5091
  %5157 = fadd fast float %5154, %5092
  %5158 = fmul fast float %5100, %5100
  %5159 = fmul fast float %5158, %5158
  %5160 = fadd fast float %5116, 1.000000e+00
  %5161 = fsub fast float %5160, %5130
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = call float @dx.op.dot3.f32(i32 55, float %124, float %126, float %128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fsub fast float 1.000000e+00, %5159
  %5166 = call float @dx.op.binary.f32(i32 36, float %5162, float %5165)  ; FMin(a,b)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5168 = call float @dx.op.binary.f32(i32 35, float %5166, float %5167)  ; FMax(a,b)
  %5169 = fadd fast float %5164, 0xBFE4CCCCC0000000
  %5170 = fmul fast float %5169, 0x4006DB6DA0000000
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fmul fast float %5171, 2.000000e+00
  %5173 = fsub fast float 3.000000e+00, %5172
  %5174 = bitcast float %5093 to i32
  %5175 = ashr i32 %5174, 1
  %5176 = add nsw i32 %5175, 532487669
  %5177 = bitcast i32 %5176 to float
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = bitcast float %5178 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = fmul fast float %5181, 2.000000e+00
  %5183 = bitcast float %5094 to i32
  %5184 = ashr i32 %5183, 1
  %5185 = add nsw i32 %5184, 532487669
  %5186 = bitcast i32 %5185 to float
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = bitcast float %5187 to i32
  %5189 = sub nsw i32 2129859010, %5188
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5190, 2.000000e+00
  %5192 = bitcast float %5095 to i32
  %5193 = ashr i32 %5192, 1
  %5194 = add nsw i32 %5193, 532487669
  %5195 = bitcast i32 %5194 to float
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = bitcast float %5196 to i32
  %5198 = sub nsw i32 2129859010, %5197
  %5199 = bitcast i32 %5198 to float
  %5200 = fmul fast float %5199, 2.000000e+00
  %5201 = fsub fast float 0x4002A9FBE0000000, %5182
  %5202 = fadd fast float %5182, 0x3FD54FDF00000000
  %5203 = bitcast float %5202 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = fmul fast float %5205, %5201
  %5207 = fmul fast float %5206, %5206
  %5208 = fsub fast float 0x4002A9FBE0000000, %5191
  %5209 = fadd fast float %5191, 0x3FD54FDF00000000
  %5210 = bitcast float %5209 to i32
  %5211 = sub nsw i32 2129859010, %5210
  %5212 = bitcast i32 %5211 to float
  %5213 = fmul fast float %5212, %5208
  %5214 = fmul fast float %5213, %5213
  %5215 = fsub fast float 0x4002A9FBE0000000, %5200
  %5216 = fadd fast float %5200, 0x3FD54FDF00000000
  %5217 = bitcast float %5216 to i32
  %5218 = sub nsw i32 2129859010, %5217
  %5219 = bitcast i32 %5218 to float
  %5220 = fmul fast float %5219, %5215
  %5221 = fmul fast float %5220, %5220
  %5222 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5207)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5214)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5221)  ; FMax(a,b)
  %5225 = fsub fast float 1.000000e+00, %5111
  %5226 = fadd fast float %5225, %5126
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fsub fast float 1.000000e+00, %4505
  %5229 = fmul fast float %5168, %5228
  %5230 = fmul fast float %5171, %5171
  %5231 = fmul fast float %5230, %5229
  %5232 = fmul fast float %5231, %5173
  %5233 = fmul fast float %5228, 0xBFE99999A0000000
  %5234 = fmul fast float %5233, %5113
  %5235 = fmul fast float %5234, %5130
  %5236 = fadd fast float %5235, 1.000000e+00
  %5237 = fadd fast float %5099, -1.000000e+00
  %5238 = fmul fast float %5236, %5237
  %5239 = fadd fast float %5238, 1.000000e+00
  %5240 = fsub fast float %5222, %5093
  %5241 = fsub fast float %5223, %5094
  %5242 = fsub fast float %5224, %5095
  %5243 = fmul fast float %5232, %5240
  %5244 = fmul fast float %5232, %5241
  %5245 = fmul fast float %5232, %5242
  %5246 = fadd fast float %5243, %5093
  %5247 = fadd fast float %5244, %5094
  %5248 = fadd fast float %5245, %5095
  %5249 = fsub fast float %124, %5096
  %5250 = fsub fast float %126, %5097
  %5251 = fsub fast float %128, %5098
  %5252 = fmul fast float %5232, %5249
  %5253 = fmul fast float %5232, %5250
  %5254 = fmul fast float %5232, %5251
  %5255 = fadd fast float %5252, %5096
  %5256 = fadd fast float %5253, %5097
  %5257 = fadd fast float %5254, %5098
  %5258 = fmul fast float %5232, %5227
  %5259 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5258, %5260
  %5262 = fadd fast float %5261, %5259
  %5263 = fsub fast float 1.000000e+00, %5100
  %5264 = fmul fast float %5232, %5263
  %5265 = fadd fast float %5264, %5100
  %5266 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = call float @dx.op.unary.f32(i32 25, float %5266)  ; Rsqrt(value)
  %5268 = fmul fast float %5255, %5267
  %5269 = fmul fast float %5256, %5267
  %5270 = fmul fast float %5257, %5267
  br label %5271

; <label>:5271                                    ; preds = %5102, %5089
  %5272 = phi float [ %5155, %5102 ], [ %5090, %5089 ]
  %5273 = phi float [ %5156, %5102 ], [ %5091, %5089 ]
  %5274 = phi float [ %5157, %5102 ], [ %5092, %5089 ]
  %5275 = phi float [ %5246, %5102 ], [ %5093, %5089 ]
  %5276 = phi float [ %5247, %5102 ], [ %5094, %5089 ]
  %5277 = phi float [ %5248, %5102 ], [ %5095, %5089 ]
  %5278 = phi float [ %5268, %5102 ], [ %5096, %5089 ]
  %5279 = phi float [ %5269, %5102 ], [ %5097, %5089 ]
  %5280 = phi float [ %5270, %5102 ], [ %5098, %5089 ]
  %5281 = phi float [ %5262, %5102 ], [ %5099, %5089 ]
  %5282 = phi float [ %5265, %5102 ], [ %5100, %5089 ]
  %5283 = icmp eq i32 %60, 0
  br i1 %5283, label %5314, label %5284

; <label>:5284                                    ; preds = %5271
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5287 = extractvalue %dx.types.CBufRet.f32 %5285, 3
  %5288 = fmul fast float %5286, %115
  %5289 = fmul fast float %5287, %116
  %5290 = fmul fast float %5288, 1.024000e+03
  %5291 = fmul fast float %5289, 1.024000e+03
  %5292 = fadd fast float %5290, -5.120000e+02
  %5293 = fadd fast float %5291, -5.120000e+02
  %5294 = fmul fast float %5288, 0x4081BEDF00000000
  %5295 = fadd fast float %5294, 0xC071BEDF00000000
  %5296 = call float @dx.op.unary.f32(i32 22, float %5295)  ; Frc(value)
  %5297 = fmul fast float %5292, %5296
  %5298 = fadd fast float %5297, %5293
  %5299 = fmul fast float %5289, 0x4073BEBE20000000
  %5300 = fadd fast float %5299, 0xC063BEBE20000000
  %5301 = call float @dx.op.unary.f32(i32 22, float %5300)  ; Frc(value)
  %5302 = fmul fast float %5293, %5301
  %5303 = fadd fast float %5302, %5292
  %5304 = fmul fast float %5298, %5303
  %5305 = call float @dx.op.unary.f32(i32 22, float %5304)  ; Frc(value)
  %5306 = add i32 %324, 12
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = and i32 %5308, 255
  %5310 = uitofp i32 %5309 to float
  %5311 = fmul fast float %5310, 0x3F70101020000000
  %5312 = fcmp fast olt float %5305, %5311
  br i1 %5312, label %5313, label %5314

; <label>:5313                                    ; preds = %5284
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5314

; <label>:5314                                    ; preds = %5313, %5284, %5271
  %5315 = fsub fast float -0.000000e+00, %200
  %5316 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 25, float %5316)  ; Rsqrt(value)
  %5318 = fmul fast float %5317, %198
  %5319 = fmul fast float %5317, %199
  %5320 = fmul fast float %5317, %200
  %5321 = fsub fast float -0.000000e+00, %5318
  %5322 = fsub fast float -0.000000e+00, %5319
  %5323 = fsub fast float -0.000000e+00, %5320
  %5324 = select i1 %270, float 0.000000e+00, float %5277
  %5325 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5318, float %5319, float %5320, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fmul fast float %5328, %5278
  %5330 = fmul fast float %5328, %5279
  %5331 = fmul fast float %5328, %5280
  %5332 = fsub fast float %5318, %5329
  %5333 = fsub fast float %5319, %5330
  %5334 = fsub fast float %5320, %5331
  %5335 = call float @dx.op.binary.f32(i32 36, float %5282, float 1.000000e+00)  ; FMin(a,b)
  %5336 = fsub fast float 1.000000e+00, %5282
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5341 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = fcmp fast oeq float %5341, 0.000000e+00
  %5343 = fcmp fast oeq float %5340, 0.000000e+00
  %5344 = or i1 %5343, %5342
  br i1 %5344, label %5374, label %5345

; <label>:5345                                    ; preds = %5314
  %5346 = fsub fast float -0.000000e+00, %89
  %5347 = fsub fast float -0.000000e+00, %87
  %5348 = call float @dx.op.unary.f32(i32 24, float %5341)  ; Sqrt(value)
  %5349 = fdiv fast float %5348, %5340
  %5350 = fcmp fast ogt float %5349, 0x3FFB6F8900000000
  %5351 = select i1 %5350, float 0x3FFB6F8900000000, float %5349
  %5352 = fmul fast float %5351, 0x3FE8A23460000000
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5351, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5355 = fmul fast float %5353, %5340
  %5356 = fmul fast float %5354, 0x3FF279A740000000
  %5357 = fadd fast float %5356, -1.000000e+00
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %88, float %5346, float %5347, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = call float @dx.op.unary.f32(i32 25, float %5358)  ; Rsqrt(value)
  %5360 = fmul fast float %5359, %5346
  %5361 = fmul fast float %5359, %5347
  %5362 = fmul fast float %5359, %88
  %5363 = fmul fast float %5357, %5357
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = fmul fast float %5354, 0x40005F8BE0000000
  %5366 = fsub fast float 0x400C5BF8A0000000, %5365
  %5367 = fdiv fast float %5355, %5366
  %5368 = fmul fast float %5367, 0x3FEE31C3C0000000
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %5354, 0x3FDACB7480000000
  %5371 = fadd fast float %5370, 0xBFD7347680000000
  %5372 = fmul fast float %5371, %5367
  %5373 = fmul fast float %5372, %5364
  br label %5374

; <label>:5374                                    ; preds = %5345, %5314
  %5375 = phi float [ %5360, %5345 ], [ 0.000000e+00, %5314 ]
  %5376 = phi float [ %5361, %5345 ], [ 0.000000e+00, %5314 ]
  %5377 = phi float [ %5362, %5345 ], [ 0.000000e+00, %5314 ]
  %5378 = phi float [ %5369, %5345 ], [ 0.000000e+00, %5314 ]
  %5379 = phi float [ %5373, %5345 ], [ 0.000000e+00, %5314 ]
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5376, float %5377, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fmul fast float %5380, %5380
  %5382 = fmul fast float %5381, 0x3FEE471020000000
  %5383 = fadd fast float %5382, 0xBFD42F6020000000
  %5384 = fmul fast float %5340, 0x3FD20DD760000000
  %5385 = fmul fast float %5383, %5379
  %5386 = fmul fast float %5378, 0x3FDF454380000000
  %5387 = fmul fast float %5386, %5380
  %5388 = fadd fast float %5387, %5384
  %5389 = fadd fast float %5388, %5385
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5376, float %5377, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = fmul fast float %5390, 0x3FDF454380000000
  %5392 = fmul fast float %5390, %5390
  %5393 = fmul fast float %5392, 0x3FEE471020000000
  %5394 = fadd fast float %5393, 0xBFD42F6020000000
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5378, float %5379, float 0x3FD20DD760000000, float %5391, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5397 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fcmp fast oeq float %5397, 0.000000e+00
  %5399 = fcmp fast oeq float %5396, 0.000000e+00
  %5400 = or i1 %5399, %5398
  br i1 %5400, label %5430, label %5401

; <label>:5401                                    ; preds = %5374
  %5402 = fsub fast float -0.000000e+00, %85
  %5403 = fsub fast float -0.000000e+00, %83
  %5404 = call float @dx.op.unary.f32(i32 24, float %5397)  ; Sqrt(value)
  %5405 = fdiv fast float %5404, %5396
  %5406 = fcmp fast ogt float %5405, 0x3FFB6F8900000000
  %5407 = select i1 %5406, float 0x3FFB6F8900000000, float %5405
  %5408 = fmul fast float %5407, 0x3FE8A23460000000
  %5409 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5410 = call float @dx.op.binary.f32(i32 35, float %5407, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5411 = fmul fast float %5409, %5396
  %5412 = fmul fast float %5410, 0x3FF279A740000000
  %5413 = fadd fast float %5412, -1.000000e+00
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %84, float %5402, float %5403, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.unary.f32(i32 25, float %5414)  ; Rsqrt(value)
  %5416 = fmul fast float %5415, %5402
  %5417 = fmul fast float %5415, %5403
  %5418 = fmul fast float %5415, %84
  %5419 = fmul fast float %5413, %5413
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = fmul fast float %5410, 0x40005F8BE0000000
  %5422 = fsub fast float 0x400C5BF8A0000000, %5421
  %5423 = fdiv fast float %5411, %5422
  %5424 = fmul fast float %5423, 0x3FEE31C3C0000000
  %5425 = fmul fast float %5424, %5420
  %5426 = fmul fast float %5410, 0x3FDACB7480000000
  %5427 = fadd fast float %5426, 0xBFD7347680000000
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5428, %5420
  br label %5430

; <label>:5430                                    ; preds = %5401, %5374
  %5431 = phi float [ %5416, %5401 ], [ 0.000000e+00, %5374 ]
  %5432 = phi float [ %5417, %5401 ], [ 0.000000e+00, %5374 ]
  %5433 = phi float [ %5418, %5401 ], [ 0.000000e+00, %5374 ]
  %5434 = phi float [ %5425, %5401 ], [ 0.000000e+00, %5374 ]
  %5435 = phi float [ %5429, %5401 ], [ 0.000000e+00, %5374 ]
  %5436 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = fmul fast float %5436, %5436
  %5438 = fmul fast float %5437, 0x3FEE471020000000
  %5439 = fadd fast float %5438, 0xBFD42F6020000000
  %5440 = fmul fast float %5396, 0x3FD20DD760000000
  %5441 = fmul fast float %5439, %5435
  %5442 = fmul fast float %5434, 0x3FDF454380000000
  %5443 = fmul fast float %5442, %5436
  %5444 = fadd fast float %5443, %5440
  %5445 = fadd fast float %5444, %5441
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fmul fast float %5446, 0x3FDF454380000000
  %5448 = fmul fast float %5446, %5446
  %5449 = fmul fast float %5448, 0x3FEE471020000000
  %5450 = fadd fast float %5449, 0xBFD42F6020000000
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5434, float %5435, float 0x3FD20DD760000000, float %5447, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5453 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = fcmp fast oeq float %5453, 0.000000e+00
  %5455 = fcmp fast oeq float %5452, 0.000000e+00
  %5456 = or i1 %5455, %5454
  br i1 %5456, label %5486, label %5457

; <label>:5457                                    ; preds = %5430
  %5458 = fsub fast float -0.000000e+00, %81
  %5459 = fsub fast float -0.000000e+00, %79
  %5460 = call float @dx.op.unary.f32(i32 24, float %5453)  ; Sqrt(value)
  %5461 = fdiv fast float %5460, %5452
  %5462 = fcmp fast ogt float %5461, 0x3FFB6F8900000000
  %5463 = select i1 %5462, float 0x3FFB6F8900000000, float %5461
  %5464 = fmul fast float %5463, 0x3FE8A23460000000
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5463, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5467 = fmul fast float %5465, %5452
  %5468 = fmul fast float %5466, 0x3FF279A740000000
  %5469 = fadd fast float %5468, -1.000000e+00
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %80, float %5458, float %5459, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 25, float %5470)  ; Rsqrt(value)
  %5472 = fmul fast float %5471, %5458
  %5473 = fmul fast float %5471, %5459
  %5474 = fmul fast float %5471, %80
  %5475 = fmul fast float %5469, %5469
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fmul fast float %5466, 0x40005F8BE0000000
  %5478 = fsub fast float 0x400C5BF8A0000000, %5477
  %5479 = fdiv fast float %5467, %5478
  %5480 = fmul fast float %5479, 0x3FEE31C3C0000000
  %5481 = fmul fast float %5480, %5476
  %5482 = fmul fast float %5466, 0x3FDACB7480000000
  %5483 = fadd fast float %5482, 0xBFD7347680000000
  %5484 = fmul fast float %5483, %5479
  %5485 = fmul fast float %5484, %5476
  br label %5486

; <label>:5486                                    ; preds = %5457, %5430
  %5487 = phi float [ %5472, %5457 ], [ 0.000000e+00, %5430 ]
  %5488 = phi float [ %5473, %5457 ], [ 0.000000e+00, %5430 ]
  %5489 = phi float [ %5474, %5457 ], [ 0.000000e+00, %5430 ]
  %5490 = phi float [ %5481, %5457 ], [ 0.000000e+00, %5430 ]
  %5491 = phi float [ %5485, %5457 ], [ 0.000000e+00, %5430 ]
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, %5492
  %5494 = fmul fast float %5493, 0x3FEE471020000000
  %5495 = fadd fast float %5494, 0xBFD42F6020000000
  %5496 = fmul fast float %5452, 0x3FD20DD760000000
  %5497 = fmul fast float %5495, %5491
  %5498 = fmul fast float %5490, 0x3FDF454380000000
  %5499 = fmul fast float %5498, %5492
  %5500 = fadd fast float %5499, %5496
  %5501 = fadd fast float %5500, %5497
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float %5332, float %5333, float %5334)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fmul fast float %5502, 0x3FDF454380000000
  %5504 = fmul fast float %5502, %5502
  %5505 = fmul fast float %5504, 0x3FEE471020000000
  %5506 = fadd fast float %5505, 0xBFD42F6020000000
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5490, float %5491, float 0x3FD20DD760000000, float %5503, float %5506)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5389, float 0.000000e+00)  ; FMax(a,b)
  %5509 = call float @dx.op.binary.f32(i32 35, float %5445, float 0.000000e+00)  ; FMax(a,b)
  %5510 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5511 = call float @dx.op.binary.f32(i32 35, float %5395, float 0.000000e+00)  ; FMax(a,b)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5451, float 0.000000e+00)  ; FMax(a,b)
  %5513 = call float @dx.op.binary.f32(i32 35, float %5507, float 0.000000e+00)  ; FMax(a,b)
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = call float @dx.op.binary.f32(i32 36, float %5272, float %5515)  ; FMin(a,b)
  %5517 = fsub fast float 1.000000e+00, %5335
  %5518 = fmul fast float %5516, %5517
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = bitcast float %5519 to i32
  %5521 = sub nsw i32 2129859010, %5520
  %5522 = bitcast i32 %5521 to float
  %5523 = call float @dx.op.binary.f32(i32 36, float %5273, float %5515)  ; FMin(a,b)
  %5524 = fmul fast float %5523, %5517
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = call float @dx.op.binary.f32(i32 36, float %5274, float %5515)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5517
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = bitcast float %5531 to i32
  %5533 = sub nsw i32 2129859010, %5532
  %5534 = bitcast i32 %5533 to float
  %5535 = fmul fast float %5508, %5335
  %5536 = fmul fast float %5535, %5522
  %5537 = fmul fast float %5509, %5335
  %5538 = fmul fast float %5537, %5528
  %5539 = fmul fast float %5510, %5335
  %5540 = fmul fast float %5539, %5534
  %5541 = call float @dx.op.binary.f32(i32 36, float %5275, float %5515)  ; FMin(a,b)
  %5542 = fmul fast float %5541, %5517
  %5543 = fsub fast float 1.000000e+00, %5542
  %5544 = bitcast float %5543 to i32
  %5545 = sub nsw i32 2129859010, %5544
  %5546 = bitcast i32 %5545 to float
  %5547 = call float @dx.op.binary.f32(i32 36, float %5276, float %5515)  ; FMin(a,b)
  %5548 = fmul fast float %5547, %5517
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = bitcast float %5549 to i32
  %5551 = sub nsw i32 2129859010, %5550
  %5552 = bitcast i32 %5551 to float
  %5553 = call float @dx.op.binary.f32(i32 36, float %5324, float %5515)  ; FMin(a,b)
  %5554 = fmul fast float %5553, %5517
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = sub nsw i32 2129859010, %5556
  %5558 = bitcast i32 %5557 to float
  %5559 = fmul fast float %5511, %5335
  %5560 = fmul fast float %5559, %5546
  %5561 = fmul fast float %5512, %5335
  %5562 = fmul fast float %5561, %5552
  %5563 = fmul fast float %5513, %5335
  %5564 = fmul fast float %5563, %5558
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5538, float %5540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = select i1 %270, float 0.000000e+00, float %5536
  %5567 = select i1 %270, float %5565, float %5538
  %5568 = select i1 %270, float 0.000000e+00, float %5540
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5562, float %5564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = select i1 %270, float 0.000000e+00, float %5560
  %5571 = select i1 %270, float %5569, float %5562
  %5572 = select i1 %270, float 0.000000e+00, float %5564
  %5573 = fmul fast float %5326, 9.843750e-01
  %5574 = fmul fast float %5281, 9.843750e-01
  %5575 = fadd fast float %5573, 7.812500e-03
  %5576 = fadd fast float %5574, 7.812500e-03
  %5577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5575, float %5576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 2
  %5579 = extractvalue %dx.types.ResRet.f32 %5577, 3
  %5580 = fmul fast float %5578, %5275
  %5581 = fmul fast float %5578, %5276
  %5582 = fmul fast float %5578, %5324
  %5583 = fadd fast float %5580, %5579
  %5584 = fadd fast float %5581, %5579
  %5585 = fadd fast float %5582, %5579
  %5586 = fcmp fast ogt float %4090, 0.000000e+00
  br i1 %5586, label %5587, label %5613

; <label>:5587                                    ; preds = %5486
  %5588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4090, float %5326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.ResRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.ResRet.f32 %5588, 2
  %5592 = fadd fast float %5589, -5.000000e-01
  %5593 = fadd fast float %5590, -5.000000e-01
  %5594 = fadd fast float %5591, -5.000000e-01
  %5595 = fsub fast float 1.000000e+00, %5275
  %5596 = fsub fast float 1.000000e+00, %5276
  %5597 = fsub fast float 1.000000e+00, %5324
  %5598 = fmul fast float %5275, 4.000000e+00
  %5599 = fmul fast float %5598, %5595
  %5600 = fmul fast float %5599, %5592
  %5601 = fmul fast float %5276, 4.000000e+00
  %5602 = fmul fast float %5601, %5596
  %5603 = fmul fast float %5602, %5593
  %5604 = fmul fast float %5324, 4.000000e+00
  %5605 = fmul fast float %5604, %5597
  %5606 = fmul fast float %5605, %5594
  %5607 = fadd fast float %5600, %5583
  %5608 = fadd fast float %5603, %5584
  %5609 = fadd fast float %5606, %5585
  %5610 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  br label %5613

; <label>:5613                                    ; preds = %5587, %5486
  %5614 = phi float [ %5610, %5587 ], [ %5583, %5486 ]
  %5615 = phi float [ %5611, %5587 ], [ %5584, %5486 ]
  %5616 = phi float [ %5612, %5587 ], [ %5585, %5486 ]
  %5617 = call float @dx.op.binary.f32(i32 35, float %5615, float %5616)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5614, float %5617)  ; FMax(a,b)
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = fmul fast float %5619, %5566
  %5621 = fmul fast float %5619, %5567
  %5622 = fmul fast float %5619, %5568
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fcmp fast ogt float %5623, 0x3E7FF19E20000000
  %5625 = fdiv fast float 1.000000e+00, %5623
  %5626 = select i1 %5624, float %5625, float 0.000000e+00
  %5627 = fmul fast float %5626, %5272
  %5628 = fmul fast float %5626, %5273
  %5629 = fmul fast float %5626, %5274
  %5630 = fadd fast float %5627, -1.000000e+00
  %5631 = fadd fast float %5628, -1.000000e+00
  %5632 = fadd fast float %5629, -1.000000e+00
  %5633 = fmul fast float %5630, 5.000000e-01
  %5634 = fmul fast float %5631, 5.000000e-01
  %5635 = fmul fast float %5632, 5.000000e-01
  %5636 = fadd fast float %5633, 1.000000e+00
  %5637 = fadd fast float %5634, 1.000000e+00
  %5638 = fadd fast float %5635, 1.000000e+00
  %5639 = fmul fast float %5614, %5570
  %5640 = fmul fast float %5615, %5571
  %5641 = fmul fast float %5616, %5572
  %5642 = fsub fast float 1.000000e+00, %5326
  %5643 = bitcast float %5642 to i32
  %5644 = sitofp i32 %5643 to float
  %5645 = fmul fast float %5644, 5.000000e+00
  %5646 = fadd fast float %5645, 0xC1EFBF8940000000
  %5647 = fptosi float %5646 to i32
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5648, %4091
  %5650 = fmul fast float %5566, %5649
  %5651 = fmul fast float %5650, %5619
  %5652 = fmul fast float %5651, %5636
  %5653 = fmul fast float %5567, %5649
  %5654 = fmul fast float %5653, %5619
  %5655 = fmul fast float %5654, %5637
  %5656 = fmul fast float %5568, %5649
  %5657 = fmul fast float %5656, %5619
  %5658 = fmul fast float %5657, %5638
  %5659 = fmul fast float %5620, %4087
  %5660 = fmul fast float %5621, %4087
  %5661 = fmul fast float %5622, %4087
  %5662 = fadd fast float %5639, %4080
  %5663 = fadd fast float %5662, %5652
  %5664 = fmul fast float %5663, %4087
  %5665 = fadd fast float %5640, %4081
  %5666 = fadd fast float %5665, %5655
  %5667 = fmul fast float %5666, %4087
  %5668 = fadd fast float %5641, %4082
  %5669 = fadd fast float %5668, %5658
  %5670 = fmul fast float %5669, %4087
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 3
  %5673 = fcmp fast oeq float %5672, 0.000000e+00
  br i1 %5673, label %6758, label %5674

; <label>:5674                                    ; preds = %5613
  %5675 = extractvalue %dx.types.CBufRet.f32 %5671, 0
  %5676 = extractvalue %dx.types.CBufRet.f32 %5671, 1
  %5677 = extractvalue %dx.types.CBufRet.f32 %5671, 2
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5680, float %5681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = select i1 %270, float %5683, float %5679
  %5687 = select i1 %270, float %5685, float %5680
  %5688 = select i1 %270, float %5684, float %5681
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 2
  %5691 = fmul fast float %5690, %124
  %5692 = fmul fast float %5690, %126
  %5693 = fmul fast float %5690, %128
  %5694 = fadd fast float %5691, %198
  %5695 = fadd fast float %5692, %199
  %5696 = fadd fast float %5693, %200
  %5697 = fcmp fast olt float %5672, 0.000000e+00
  br i1 %5697, label %6337, label %5698

; <label>:5698                                    ; preds = %5674
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5703 = extractvalue %dx.types.CBufRet.f32 %5699, 3
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5708 = extractvalue %dx.types.CBufRet.f32 %5704, 3
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.CBufRet.f32 %5709, 2
  %5713 = extractvalue %dx.types.CBufRet.f32 %5709, 3
  %5714 = fmul fast float %5700, %5694
  %5715 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5701, float %5714)  ; FMad(a,b,c)
  %5716 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5702, float %5715)  ; FMad(a,b,c)
  %5717 = fadd fast float %5716, %5703
  %5718 = fmul fast float %5705, %5694
  %5719 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5706, float %5718)  ; FMad(a,b,c)
  %5720 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5707, float %5719)  ; FMad(a,b,c)
  %5721 = fadd fast float %5720, %5708
  %5722 = fmul fast float %5710, %5694
  %5723 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5711, float %5722)  ; FMad(a,b,c)
  %5724 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5712, float %5723)  ; FMad(a,b,c)
  %5725 = fadd fast float %5724, %5713
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = fcmp fast une float %5727, 0.000000e+00
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.CBufRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.CBufRet.f32 %5729, 3
  %5733 = fmul fast float %5732, %5717
  %5734 = fmul fast float %5732, %5721
  %5735 = fadd fast float %5733, %5730
  %5736 = fadd fast float %5734, %5731
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.CBufRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.CBufRet.f32 %5737, 3
  %5741 = fmul fast float %5740, %5717
  %5742 = fmul fast float %5740, %5721
  %5743 = fadd fast float %5741, %5738
  %5744 = fadd fast float %5742, %5739
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5747 = fsub fast float %5746, %5725
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = fmul fast float %5747, %5748
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  br i1 %5728, label %5812, label %5752

; <label>:5752                                    ; preds = %5698
  %5753 = extractvalue %dx.types.CBufRet.f32 %5737, 2
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5756 = fadd fast float %5755, %5753
  %5757 = fcmp fast ogt float %5756, 0.000000e+00
  br i1 %5757, label %5758, label %5782

; <label>:5758                                    ; preds = %5752
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = fsub fast float %5743, %5760
  %5763 = fsub fast float %5744, %5761
  %5764 = fcmp fast olt float %5762, 0.000000e+00
  %5765 = fcmp fast olt float %5763, 0.000000e+00
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5770 = extractvalue %dx.types.CBufRet.f32 %5766, 3
  %5771 = select i1 %5764, float %5767, float %5769
  %5772 = select i1 %5765, float %5768, float %5770
  %5773 = fmul fast float %5771, %5762
  %5774 = fmul fast float %5772, %5763
  %5775 = call float @dx.op.unary.f32(i32 6, float %5773)  ; FAbs(value)
  %5776 = call float @dx.op.unary.f32(i32 6, float %5774)  ; FAbs(value)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5778 = call float @dx.op.binary.f32(i32 35, float %5775, float %5776)  ; FMax(a,b)
  %5779 = fsub fast float %5777, %5778
  %5780 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  %5781 = fmul fast float %5780, %5751
  br label %5782

; <label>:5782                                    ; preds = %5758, %5752
  %5783 = phi float [ %5781, %5758 ], [ 0.000000e+00, %5752 ]
  %5784 = extractvalue %dx.types.CBufRet.f32 %5729, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5754, 1
  %5786 = fadd fast float %5785, %5784
  %5787 = fcmp fast ogt float %5786, 0.000000e+00
  br i1 %5787, label %5788, label %5812

; <label>:5788                                    ; preds = %5782
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = fsub fast float %5735, %5790
  %5793 = fsub fast float %5736, %5791
  %5794 = fcmp fast olt float %5792, 0.000000e+00
  %5795 = fcmp fast olt float %5793, 0.000000e+00
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5801 = select i1 %5794, float %5797, float %5799
  %5802 = select i1 %5795, float %5798, float %5800
  %5803 = fmul fast float %5801, %5792
  %5804 = fmul fast float %5802, %5793
  %5805 = call float @dx.op.unary.f32(i32 6, float %5803)  ; FAbs(value)
  %5806 = call float @dx.op.unary.f32(i32 6, float %5804)  ; FAbs(value)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5808 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5809 = fsub fast float %5807, %5808
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = fmul fast float %5810, %5751
  br label %5812

; <label>:5812                                    ; preds = %5788, %5782, %5698
  %5813 = phi float [ 0.000000e+00, %5698 ], [ %5811, %5788 ], [ 0.000000e+00, %5782 ]
  %5814 = phi float [ 0.000000e+00, %5698 ], [ %5783, %5788 ], [ %5783, %5782 ]
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5821 = fsub fast float %5717, %5819
  %5822 = fsub fast float %5721, %5820
  %5823 = fcmp fast olt float %5821, 0.000000e+00
  %5824 = fcmp fast olt float %5822, 0.000000e+00
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = extractvalue %dx.types.CBufRet.f32 %5825, 3
  %5830 = select i1 %5823, float %5826, float %5828
  %5831 = select i1 %5824, float %5827, float %5829
  %5832 = fmul fast float %5830, %5821
  %5833 = fmul fast float %5831, %5822
  %5834 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5835 = call float @dx.op.unary.f32(i32 6, float %5833)  ; FAbs(value)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5837 = call float @dx.op.binary.f32(i32 35, float %5834, float %5835)  ; FMax(a,b)
  %5838 = fsub fast float %5836, %5837
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = call float @dx.op.binary.f32(i32 36, float %5839, float %5817)  ; FMin(a,b)
  %5841 = fmul fast float %5840, %5751
  %5842 = fsub fast float %5813, %5841
  %5843 = fsub fast float %5814, %5813
  %5844 = fsub fast float %5843, %5841
  %5845 = call float @dx.op.binary.f32(i32 35, float %5813, float %5814)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5841, float %5845)  ; FMax(a,b)
  %5847 = fcmp fast olt float %5846, 1.000000e+00
  br i1 %5847, label %5848, label %6246, !dx.controlflow.hints !99

; <label>:5848                                    ; preds = %5812
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = fcmp fast une float %5850, 0.000000e+00
  br i1 %5851, label %5852, label %6246, !dx.controlflow.hints !100

; <label>:5852                                    ; preds = %5848
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5857 = extractvalue %dx.types.CBufRet.f32 %5853, 3
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5867 = extractvalue %dx.types.CBufRet.f32 %5863, 3
  %5868 = fmul fast float %5854, %5694
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5855, float %5868)  ; FMad(a,b,c)
  %5870 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5856, float %5869)  ; FMad(a,b,c)
  %5871 = fadd fast float %5870, %5857
  %5872 = fmul fast float %5859, %5694
  %5873 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5860, float %5872)  ; FMad(a,b,c)
  %5874 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5861, float %5873)  ; FMad(a,b,c)
  %5875 = fadd fast float %5874, %5862
  %5876 = fmul fast float %5864, %5694
  %5877 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %5865, float %5876)  ; FMad(a,b,c)
  %5878 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %5866, float %5877)  ; FMad(a,b,c)
  %5879 = fadd fast float %5878, %5867
  %5880 = fcmp fast oge float %5871, 1.000000e+00
  %5881 = fcmp fast oge float %5875, 1.000000e+00
  %5882 = or i1 %5880, %5881
  %5883 = fcmp fast olt float %5871, 0.000000e+00
  %5884 = fcmp fast olt float %5875, 0.000000e+00
  %5885 = or i1 %5883, %5884
  %5886 = or i1 %5882, %5885
  br i1 %5886, label %6246, label %5887, !dx.controlflow.hints !101

; <label>:5887                                    ; preds = %5852
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.i32 %5892, 2
  %5894 = uitofp i32 %5893 to float
  %5895 = extractvalue %dx.types.CBufRet.i32 %5892, 3
  %5896 = uitofp i32 %5895 to float
  %5897 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5898 = fmul fast float %5897, 2.000000e+00
  %5899 = fsub fast float %5871, %5889
  %5900 = fsub fast float %5875, %5890
  %5901 = fmul fast float %5898, %5899
  %5902 = fmul fast float %5898, %5900
  %5903 = fdiv fast float 1.000000e+00, %5677
  %5904 = fmul fast float %5902, %5903
  %5905 = call float @dx.op.unary.f32(i32 6, float %5904)  ; FAbs(value)
  %5906 = fmul fast float %5891, %5696
  %5907 = fmul fast float %5906, %5898
  %5908 = call float @dx.op.unary.f32(i32 6, float %5907)  ; FAbs(value)
  %5909 = call float @dx.op.unary.f32(i32 6, float %5901)  ; FAbs(value)
  %5910 = call float @dx.op.binary.f32(i32 35, float %5908, float %5905)  ; FMax(a,b)
  %5911 = call float @dx.op.binary.f32(i32 35, float %5909, float %5910)  ; FMax(a,b)
  %5912 = fmul fast float %5911, 2.000000e+00
  %5913 = call float @dx.op.unary.f32(i32 23, float %5912)  ; Log(value)
  %5914 = call float @dx.op.binary.f32(i32 35, float %5913, float %5894)  ; FMax(a,b)
  %5915 = call float @dx.op.unary.f32(i32 22, float %5914)  ; Frc(value)
  %5916 = fadd fast float %5915, 0xBFEA666660000000
  %5917 = fmul fast float %5916, 8.000000e+00
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = call float @dx.op.unary.f32(i32 27, float %5914)  ; Round_ni(value)
  %5920 = fadd fast float %5919, %5918
  %5921 = call float @dx.op.binary.f32(i32 36, float %5920, float %5896)  ; FMin(a,b)
  %5922 = call float @dx.op.unary.f32(i32 27, float %5921)  ; Round_ni(value)
  %5923 = fsub fast float -0.000000e+00, %5922
  %5924 = call float @dx.op.unary.f32(i32 21, float %5923)  ; Exp(value)
  %5925 = fmul fast float %5924, %5898
  %5926 = fmul fast float %5925, %5871
  %5927 = fmul fast float %5925, %5875
  %5928 = fmul fast float %5926, 2.500000e-01
  %5929 = fmul fast float %5927, 2.500000e-01
  %5930 = fadd fast float %5928, 5.000000e-01
  %5931 = fadd fast float %5929, 5.000000e-01
  %5932 = fsub fast float %5896, %5894
  %5933 = fptoui float %5932 to i32
  %5934 = add i32 %5933, 320
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5934)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = fcmp fast une float %5921, %5896
  %5939 = fsub fast float %5871, %5936
  %5940 = fsub fast float %5875, %5937
  %5941 = call float @dx.op.unary.f32(i32 6, float %5939)  ; FAbs(value)
  %5942 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %5943 = fmul fast float %5941, %5925
  %5944 = fmul fast float %5942, %5925
  %5945 = fcmp fast olt float %5943, 1.000000e+00
  %5946 = fcmp fast olt float %5944, 1.000000e+00
  %5947 = and i1 %5945, %5946
  %5948 = or i1 %5938, %5947
  br i1 %5948, label %5949, label %6246, !dx.controlflow.hints !102

; <label>:5949                                    ; preds = %5887
  %5950 = fmul fast float %5927, 5.000000e-01
  %5951 = fmul fast float %5926, 5.000000e-01
  %5952 = fadd fast float %5950, 5.000000e-01
  %5953 = fadd fast float %5951, 5.000000e-01
  %5954 = sitofp i32 %5893 to float
  %5955 = fsub fast float %5921, %5954
  %5956 = call float @dx.op.unary.f32(i32 27, float %5955)  ; Round_ni(value)
  %5957 = call float @dx.op.unary.f32(i32 22, float %5921)  ; Frc(value)
  %5958 = call float @dx.op.unary.f32(i32 22, float %5953)  ; Frc(value)
  %5959 = call float @dx.op.unary.f32(i32 22, float %5952)  ; Frc(value)
  %5960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5958, float %5959, float %5956, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.ResRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.ResRet.f32 %5960, 3
  %5965 = fcmp fast ogt float %5957, 0.000000e+00
  br i1 %5965, label %5966, label %5987, !dx.controlflow.hints !103

; <label>:5966                                    ; preds = %5949
  %5967 = fadd fast float %5956, 1.000000e+00
  %5968 = call float @dx.op.unary.f32(i32 22, float %5930)  ; Frc(value)
  %5969 = call float @dx.op.unary.f32(i32 22, float %5931)  ; Frc(value)
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5968, float %5969, float %5967, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = extractvalue %dx.types.ResRet.f32 %5970, 3
  %5975 = fsub fast float %5971, %5961
  %5976 = fsub fast float %5972, %5962
  %5977 = fsub fast float %5973, %5963
  %5978 = fsub fast float %5974, %5964
  %5979 = fmul fast float %5975, %5957
  %5980 = fmul fast float %5976, %5957
  %5981 = fmul fast float %5977, %5957
  %5982 = fmul fast float %5978, %5957
  %5983 = fadd fast float %5979, %5961
  %5984 = fadd fast float %5980, %5962
  %5985 = fadd fast float %5981, %5963
  %5986 = fadd fast float %5982, %5964
  br label %5987

; <label>:5987                                    ; preds = %5966, %5949
  %5988 = phi float [ %5983, %5966 ], [ %5961, %5949 ]
  %5989 = phi float [ %5984, %5966 ], [ %5962, %5949 ]
  %5990 = phi float [ %5985, %5966 ], [ %5963, %5949 ]
  %5991 = phi float [ %5986, %5966 ], [ %5964, %5949 ]
  %5992 = fadd fast float %5988, -5.000000e-01
  %5993 = fadd fast float %5990, -5.000000e-01
  %5994 = fmul fast float %5992, 0xBFD5555560000000
  %5995 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5993, float %5994)  ; FMad(a,b,c)
  %5996 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5989, float 0.000000e+00)  ; FMad(a,b,c)
  %5997 = fadd fast float %5996, %5991
  %5998 = fmul fast float %5992, -7.500000e-01
  %5999 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5993, float %5998)  ; FMad(a,b,c)
  %6000 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5989, float 0.000000e+00)  ; FMad(a,b,c)
  %6001 = fadd fast float %6000, %5991
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6009 = fsub fast float %6005, %5995
  %6010 = fsub fast float %6006, %5997
  %6011 = fsub fast float %6007, %5999
  %6012 = fsub fast float %6008, %6001
  %6013 = fmul fast float %6009, %6003
  %6014 = fmul fast float %6010, %6003
  %6015 = fmul fast float %6011, %6003
  %6016 = fmul fast float %6012, %6003
  %6017 = fadd fast float %6013, %5995
  %6018 = fadd fast float %6014, %5997
  %6019 = fadd fast float %6015, %5999
  %6020 = fadd fast float %6016, %6001
  %6021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.i32 %6021, 0
  %6023 = and i32 %6022, 536870911
  %6024 = uitofp i32 %6023 to float
  %6025 = fmul fast float %6024, %5871
  %6026 = fmul fast float %6024, %5875
  %6027 = fptoui float %6025 to i32
  %6028 = fptoui float %6026 to i32
  %6029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6030 = extractvalue %dx.types.ResRet.i32 %6029, 0
  %6031 = and i32 %6030, 31
  %6032 = lshr i32 %6027, %6031
  %6033 = lshr i32 %6028, %6031
  %6034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.i32 %6034, 0
  %6036 = and i32 %6035, 31
  %6037 = shl i32 1, %6036
  %6038 = call i32 @dx.op.binary.i32(i32 40, i32 %6037, i32 4)  ; UMin(a,b)
  %6039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6040 = extractvalue %dx.types.ResRet.i32 %6039, 0
  %6041 = extractvalue %dx.types.ResRet.i32 %6039, 1
  %6042 = icmp eq i32 %6038, 0
  br i1 %6042, label %6084, label %6043

; <label>:6043                                    ; preds = %5987
  br label %6044

; <label>:6044                                    ; preds = %6072, %6043
  %6045 = phi i32 [ %6075, %6072 ], [ 0, %6043 ]
  %6046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6047 = extractvalue %dx.types.ResRet.i32 %6046, 0
  %6048 = lshr i32 %6047, 16
  %6049 = and i32 %6048, 31
  %6050 = shl i32 %6033, %6049
  %6051 = add i32 %6050, %6032
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 31
  %6055 = shl i32 %6051, %6054
  %6056 = add i32 %6055, %6045
  %6057 = shl i32 %6056, 2
  %6058 = add i32 %6057, 32
  %6059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6058, i32 undef)  ; BufferLoad(srv,index,wot)
  %6060 = extractvalue %dx.types.ResRet.i32 %6059, 0
  %6061 = icmp slt i32 %6060, 0
  %6062 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6045
  %6063 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6045
  %6064 = bitcast float* %6062 to i32*
  %6065 = bitcast float* %6063 to i32*
  br i1 %6061, label %6066, label %6072

; <label>:6066                                    ; preds = %6044
  %6067 = and i32 %6060, 1073741823
  %6068 = add nuw nsw i32 %6067, 20
  %6069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6068, i32 undef)  ; BufferLoad(srv,index,wot)
  %6070 = extractvalue %dx.types.ResRet.i32 %6069, 0
  %6071 = extractvalue %dx.types.ResRet.i32 %6069, 1
  br label %6072

; <label>:6072                                    ; preds = %6066, %6044
  %6073 = phi i32 [ %6070, %6066 ], [ %6040, %6044 ]
  %6074 = phi i32 [ %6071, %6066 ], [ %6041, %6044 ]
  store i32 %6073, i32* %6064, align 4
  store i32 %6074, i32* %6065, align 4
  %6075 = add nuw i32 %6045, 1
  %6076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.i32 %6076, 2
  %6078 = icmp eq i32 %6077, 0
  %6079 = icmp ugt i32 %6060, -1073741825
  %6080 = and i1 %6079, %6078
  %6081 = icmp ult i32 %6075, %6038
  %6082 = and i1 %6080, %6081
  br i1 %6082, label %6044, label %6083

; <label>:6083                                    ; preds = %6072
  br label %6084

; <label>:6084                                    ; preds = %6083, %5987
  %6085 = phi i32 [ 0, %5987 ], [ %6075, %6083 ]
  %6086 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %6087 = fptoui float %6086 to i32
  %6088 = icmp eq i32 %6087, 0
  br i1 %6088, label %6140, label %6089

; <label>:6089                                    ; preds = %6084
  br label %6090

; <label>:6090                                    ; preds = %6135, %6089
  %6091 = phi i32 [ %6136, %6135 ], [ %6085, %6089 ]
  %6092 = phi i32 [ %6137, %6135 ], [ 0, %6089 ]
  %6093 = lshr i32 %6092, 2
  %6094 = and i32 %6092, 3
  %6095 = add nuw nsw i32 %6093, 83
  %6096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6095)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.i32 %6096, 0
  %6098 = extractvalue %dx.types.CBufRet.i32 %6096, 1
  %6099 = extractvalue %dx.types.CBufRet.i32 %6096, 2
  %6100 = extractvalue %dx.types.CBufRet.i32 %6096, 3
  %6101 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6097, i32* %6101, align 4
  %6102 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6098, i32* %6102, align 4
  %6103 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6099, i32* %6103, align 4
  %6104 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6100, i32* %6104, align 4
  %6105 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6094
  %6106 = load i32, i32* %6105, align 4, !tbaa !104, !noalias !108
  %6107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.i32 %6107, 0
  %6109 = lshr i32 %6108, 16
  %6110 = and i32 %6109, 31
  %6111 = shl i32 %6033, %6110
  %6112 = add i32 %6111, %6032
  %6113 = shl i32 %6112, 2
  %6114 = add i32 %6113, %6106
  %6115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6114, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = icmp eq i32 %6116, 0
  br i1 %6117, label %6135, label %6118

; <label>:6118                                    ; preds = %6090
  %6119 = icmp slt i32 %6116, 0
  %6120 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6091
  %6121 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6091
  %6122 = bitcast float* %6120 to i32*
  %6123 = bitcast float* %6121 to i32*
  br i1 %6119, label %6124, label %6131

; <label>:6124                                    ; preds = %6118
  %6125 = and i32 %6116, 1073741823
  %6126 = add i32 %6106, 20
  %6127 = add i32 %6126, %6125
  %6128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6127, i32 undef)  ; BufferLoad(srv,index,wot)
  %6129 = extractvalue %dx.types.ResRet.i32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.i32 %6128, 1
  br label %6131

; <label>:6131                                    ; preds = %6124, %6118
  %6132 = phi i32 [ %6129, %6124 ], [ %6040, %6118 ]
  %6133 = phi i32 [ %6130, %6124 ], [ %6041, %6118 ]
  store i32 %6132, i32* %6122, align 4
  store i32 %6133, i32* %6123, align 4
  %6134 = add i32 %6091, 1
  br label %6135

; <label>:6135                                    ; preds = %6131, %6090
  %6136 = phi i32 [ %6091, %6090 ], [ %6134, %6131 ]
  %6137 = add nuw i32 %6092, 1
  %6138 = icmp eq i32 %6137, %6087
  br i1 %6138, label %6139, label %6090

; <label>:6139                                    ; preds = %6135
  br label %6140

; <label>:6140                                    ; preds = %6139, %6084
  %6141 = phi i32 [ %6085, %6084 ], [ %6136, %6139 ]
  %6142 = icmp eq i32 %6141, 1
  %6143 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6144 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6142, label %6145, label %6148

; <label>:6145                                    ; preds = %6140
  %6146 = load float, float* %6143, align 4
  %6147 = load float, float* %6144, align 4
  br label %6175

; <label>:6148                                    ; preds = %6140
  %6149 = load float, float* %6143, align 4
  %6150 = load float, float* %6144, align 4
  %6151 = fdiv fast float 1.000000e+00, %6150
  %6152 = fsub fast float %6149, %6151
  %6153 = icmp ugt i32 %6141, 1
  br i1 %6153, label %6154, label %6170

; <label>:6154                                    ; preds = %6148
  br label %6155

; <label>:6155                                    ; preds = %6155, %6154
  %6156 = phi float [ %6165, %6155 ], [ %6152, %6154 ]
  %6157 = phi float [ %6166, %6155 ], [ %6149, %6154 ]
  %6158 = phi i32 [ %6167, %6155 ], [ 1, %6154 ]
  %6159 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6158
  %6160 = load float, float* %6159, align 4
  %6161 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6158
  %6162 = load float, float* %6161, align 4
  %6163 = fdiv fast float 1.000000e+00, %6162
  %6164 = fsub fast float %6160, %6163
  %6165 = call float @dx.op.binary.f32(i32 36, float %6156, float %6164)  ; FMin(a,b)
  %6166 = call float @dx.op.binary.f32(i32 35, float %6157, float %6160)  ; FMax(a,b)
  %6167 = add nuw i32 %6158, 1
  %6168 = icmp eq i32 %6167, %6141
  br i1 %6168, label %6169, label %6155

; <label>:6169                                    ; preds = %6155
  br label %6170

; <label>:6170                                    ; preds = %6169, %6148
  %6171 = phi float [ %6152, %6148 ], [ %6165, %6169 ]
  %6172 = phi float [ %6149, %6148 ], [ %6166, %6169 ]
  %6173 = fsub fast float %6172, %6171
  %6174 = fdiv fast float 1.000000e+00, %6173
  br label %6175

; <label>:6175                                    ; preds = %6170, %6145
  %6176 = phi float [ %6146, %6145 ], [ %6172, %6170 ]
  %6177 = phi float [ %6147, %6145 ], [ %6174, %6170 ]
  %6178 = fadd fast float %5879, %6176
  %6179 = fmul fast float %6178, %6177
  %6180 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6181 = fmul fast float %6180, 2.000000e+00
  %6182 = fsub fast float 1.000000e+00, %6181
  %6183 = fmul fast float %6017, %6017
  %6184 = fsub fast float %6018, %6183
  %6185 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6184)  ; FMax(a,b)
  %6186 = fdiv fast float 1.000000e+00, %6185
  %6187 = fmul fast float %6018, %6017
  %6188 = fsub fast float %6019, %6187
  %6189 = fsub fast float %6182, %6017
  %6190 = fmul fast float %6182, %6182
  %6191 = fsub fast float %6190, %6018
  %6192 = fmul fast float %6186, %6188
  %6193 = fmul fast float %6192, %6189
  %6194 = fsub fast float %6191, %6193
  %6195 = fmul fast float %6018, %6018
  %6196 = fsub fast float %6020, %6195
  %6197 = fmul fast float %6188, %6188
  %6198 = fmul fast float %6197, %6186
  %6199 = fsub fast float %6196, %6198
  %6200 = fdiv fast float %6194, %6199
  %6201 = fmul fast float %6200, %6188
  %6202 = fsub fast float %6189, %6201
  %6203 = fmul fast float %6202, %6186
  %6204 = fmul fast float %6203, %6017
  %6205 = fsub fast float 1.000000e+00, %6204
  %6206 = fmul fast float %6200, %6018
  %6207 = fsub fast float %6205, %6206
  %6208 = fmul fast float %6203, %6203
  %6209 = fmul fast float %6200, 4.000000e+00
  %6210 = fmul fast float %6209, %6207
  %6211 = fsub fast float %6208, %6210
  %6212 = call float @dx.op.unary.f32(i32 24, float %6211)  ; Sqrt(value)
  %6213 = fcmp fast oge float %6203, 0.000000e+00
  %6214 = fsub fast float -0.000000e+00, %6212
  %6215 = select i1 %6213, float %6214, float %6212
  %6216 = fsub fast float %6215, %6203
  %6217 = fdiv fast float %6216, %6200
  %6218 = fdiv fast float %6207, %6216
  %6219 = fmul fast float %6217, 5.000000e-01
  %6220 = fmul fast float %6218, 2.000000e+00
  %6221 = select i1 %6213, float %6219, float %6220
  %6222 = select i1 %6213, float %6220, float %6219
  %6223 = call float @dx.op.binary.f32(i32 35, float %6221, float %6222)  ; FMax(a,b)
  %6224 = call float @dx.op.binary.f32(i32 36, float %6221, float %6222)  ; FMin(a,b)
  %6225 = fcmp fast ogt float %6182, %6223
  %6226 = fsub fast float %6182, %6224
  %6227 = fsub fast float %6182, %6223
  %6228 = fsub fast float %6223, %6224
  %6229 = select i1 %6225, float %6227, float %6228
  %6230 = fmul float %6226, %6229
  %6231 = select i1 %6225, float %6224, float %6182
  %6232 = fcmp fast ogt float %6182, %6224
  %6233 = fmul fast float %6231, %6223
  %6234 = fadd fast float %6231, %6223
  %6235 = fmul fast float %6234, %6017
  %6236 = fadd fast float %6233, %6018
  %6237 = fsub fast float %6236, %6235
  %6238 = fdiv fast float %6237, %6230
  %6239 = select i1 %6232, float %6238, float 0.000000e+00
  %6240 = fsub fast float 1.000000e+00, %6239
  %6241 = select i1 %6225, float %6240, float %6239
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6244 = fmul fast float %6243, %6242
  %6245 = fsub fast float 1.000000e+00, %6244
  br label %6246

; <label>:6246                                    ; preds = %6175, %5887, %5852, %5848, %5812
  %6247 = phi float [ 1.000000e+00, %5812 ], [ %6245, %6175 ], [ 1.000000e+00, %5852 ], [ 1.000000e+00, %5887 ], [ 1.000000e+00, %5848 ]
  %6248 = fcmp fast ogt float %5844, 0.000000e+00
  br i1 %6248, label %6249, label %6257, !dx.controlflow.hints !117

; <label>:6249                                    ; preds = %6246
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 2
  %6252 = fadd fast float %6251, %5725
  %6253 = call float @dx.op.binary.f32(i32 35, float %6252, float 0.000000e+00)  ; FMax(a,b)
  %6254 = fadd fast float %6253, 0x3F10000000000000
  %6255 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5743, float %5744, float undef, float undef, i32 0, i32 0, i32 undef, float %6254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  br label %6257

; <label>:6257                                    ; preds = %6249, %6246
  %6258 = phi float [ %6256, %6249 ], [ 1.000000e+00, %6246 ]
  %6259 = fcmp fast ogt float %5842, 0.000000e+00
  br i1 %6259, label %6260, label %6268, !dx.controlflow.hints !118

; <label>:6260                                    ; preds = %6257
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6263 = fadd fast float %6262, %5725
  %6264 = call float @dx.op.binary.f32(i32 35, float %6263, float 0.000000e+00)  ; FMax(a,b)
  %6265 = fadd fast float %6264, 0x3F10000000000000
  %6266 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5735, float %5736, float undef, float undef, i32 0, i32 0, i32 undef, float %6265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  br label %6268

; <label>:6268                                    ; preds = %6260, %6257
  %6269 = phi float [ %6267, %6260 ], [ 1.000000e+00, %6257 ]
  %6270 = fcmp fast ogt float %5841, 0.000000e+00
  br i1 %6270, label %6271, label %6283, !dx.controlflow.hints !119

; <label>:6271                                    ; preds = %6268
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = fadd fast float %6273, %5725
  %6275 = call float @dx.op.binary.f32(i32 35, float %6274, float 0.000000e+00)  ; FMax(a,b)
  %6276 = fadd fast float %6275, 0x3F10000000000000
  br i1 %5728, label %6277, label %6280, !dx.controlflow.hints !120

; <label>:6277                                    ; preds = %6271
  %6278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5717, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float %6276)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6279 = extractvalue %dx.types.ResRet.f32 %6278, 0
  br label %6283

; <label>:6280                                    ; preds = %6271
  %6281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5717, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float %6276)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  br label %6283

; <label>:6283                                    ; preds = %6280, %6277, %6268
  %6284 = phi float [ %6279, %6277 ], [ %6282, %6280 ], [ 1.000000e+00, %6268 ]
  %6285 = fsub fast float %6258, %6247
  %6286 = fmul fast float %6285, %5814
  %6287 = fadd fast float %6286, %6247
  %6288 = fsub fast float %6269, %6287
  %6289 = fmul fast float %6288, %5813
  %6290 = fadd fast float %6289, %6287
  %6291 = fsub fast float %6284, %6290
  %6292 = fmul fast float %6291, %5841
  %6293 = fadd fast float %6292, %6290
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6296 = fcmp fast ogt float %6295, 0.000000e+00
  br i1 %6296, label %6297, label %6337, !dx.controlflow.hints !121

; <label>:6297                                    ; preds = %6283
  %6298 = fcmp fast ugt float %6295, 0.000000e+00
  br i1 %6298, label %6299, label %6334

; <label>:6299                                    ; preds = %6297
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6300, 3
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6309 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6310 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = fadd fast float %6313, %5694
  %6317 = fadd fast float %6314, %5695
  %6318 = fadd fast float %6315, %5696
  %6319 = fmul fast float %6316, %6301
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6302, float %6317, float %6319)  ; FMad(a,b,c)
  %6321 = call float @dx.op.tertiary.f32(i32 46, float %6303, float %6318, float %6320)  ; FMad(a,b,c)
  %6322 = fadd fast float %6321, %6304
  %6323 = fmul fast float %6316, %6306
  %6324 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6317, float %6323)  ; FMad(a,b,c)
  %6325 = call float @dx.op.tertiary.f32(i32 46, float %6308, float %6318, float %6324)  ; FMad(a,b,c)
  %6326 = fadd fast float %6325, %6309
  %6327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6322, float %6326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = fmul fast float %6328, %6311
  %6330 = fadd fast float %6329, %6310
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = fmul fast float %6331, %6295
  %6333 = fsub fast float 1.000000e+00, %6332
  br label %6334

; <label>:6334                                    ; preds = %6299, %6297
  %6335 = phi float [ %6333, %6299 ], [ 1.000000e+00, %6297 ]
  %6336 = fmul fast float %6335, %6293
  br label %6337

; <label>:6337                                    ; preds = %6334, %6283, %5674
  %6338 = phi float [ 1.000000e+00, %5674 ], [ %6336, %6334 ], [ %6293, %6283 ]
  %6339 = call float @dx.op.binary.f32(i32 36, float %6338, float %6338)  ; FMin(a,b)
  %6340 = call float @dx.op.binary.f32(i32 36, float %6338, float %6339)  ; FMin(a,b)
  %6341 = fcmp fast ogt float %6340, 0.000000e+00
  br i1 %6341, label %6342, label %6502, !dx.controlflow.hints !122

; <label>:6342                                    ; preds = %6337
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6358 = fmul fast float %6344, %5694
  %6359 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %6345, float %6358)  ; FMad(a,b,c)
  %6360 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %6346, float %6359)  ; FMad(a,b,c)
  %6361 = fadd fast float %6360, %6347
  %6362 = fmul fast float %6349, %5694
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %6350, float %6362)  ; FMad(a,b,c)
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %6351, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6364, %6352
  %6366 = fmul fast float %6354, %5694
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %5695, float %6355, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %5696, float %6356, float %6367)  ; FMad(a,b,c)
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.CBufRet.f32 %6369, 3
  %6373 = fmul fast float %6372, %6361
  %6374 = fmul fast float %6372, %6365
  %6375 = fadd fast float %6373, %6370
  %6376 = fadd fast float %6374, %6371
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = fsub fast float %6375, %6378
  %6381 = fsub fast float %6376, %6379
  %6382 = fcmp fast olt float %6380, 0.000000e+00
  %6383 = fcmp fast olt float %6381, 0.000000e+00
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6389 = select i1 %6382, float %6385, float %6387
  %6390 = select i1 %6383, float %6386, float %6388
  %6391 = fmul fast float %6389, %6380
  %6392 = fmul fast float %6390, %6381
  %6393 = call float @dx.op.unary.f32(i32 6, float %6391)  ; FAbs(value)
  %6394 = call float @dx.op.unary.f32(i32 6, float %6392)  ; FAbs(value)
  %6395 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %6396 = call float @dx.op.binary.f32(i32 35, float %6393, float %6394)  ; FMax(a,b)
  %6397 = fsub fast float %6395, %6396
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6441, !dx.controlflow.hints !123

; <label>:6400                                    ; preds = %6342
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6375, float %6376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6403 = fcmp fast ogt float %6402, 0.000000e+00
  br i1 %6403, label %6404, label %6436

; <label>:6404                                    ; preds = %6400
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6375, float %6376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.ResRet.f32 %6405, 3
  %6410 = fsub fast float 1.000000e+00, %6357
  %6411 = fsub fast float %6410, %6368
  %6412 = fmul fast float %6411, 0x400921FB60000000
  %6413 = fadd fast float %6412, 0x3FF921FB60000000
  %6414 = call float @dx.op.unary.f32(i32 13, float %6413)  ; Sin(value)
  %6415 = fadd fast float %6414, -1.000000e+00
  %6416 = fmul fast float %6415, 0x3FD45F3060000000
  %6417 = fmul fast float %6411, 0x401921FB60000000
  %6418 = fadd fast float %6417, 0x400921FB60000000
  %6419 = call float @dx.op.unary.f32(i32 13, float %6418)  ; Sin(value)
  %6420 = fadd fast float %6419, 0x3E7777A5C0000000
  %6421 = fmul fast float %6420, 0x3FC45F3060000000
  %6422 = fmul fast float %6411, 0x4022D97C80000000
  %6423 = fadd fast float %6422, 0x4012D97C80000000
  %6424 = call float @dx.op.unary.f32(i32 13, float %6423)  ; Sin(value)
  %6425 = fadd fast float %6424, 1.000000e+00
  %6426 = fmul fast float %6425, 0x3FBB2995E0000000
  %6427 = fmul fast float %6411, 0x402921FB60000000
  %6428 = fadd fast float %6427, 0x401921FB60000000
  %6429 = call float @dx.op.unary.f32(i32 13, float %6428)  ; Sin(value)
  %6430 = fadd fast float %6429, 0xBE8777A5C0000000
  %6431 = fmul fast float %6430, 0x3FB45F3060000000
  %6432 = call float @dx.op.dot4.f32(i32 56, float %6406, float %6407, float %6408, float %6409, float %6416, float %6421, float %6426, float %6431)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6433 = fmul fast float %6432, 0xBFF7154760000000
  %6434 = call float @dx.op.unary.f32(i32 21, float %6433)  ; Exp(value)
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  br label %6436

; <label>:6436                                    ; preds = %6404, %6400
  %6437 = phi float [ %6435, %6404 ], [ 1.000000e+00, %6400 ]
  %6438 = fadd fast float %6437, -1.000000e+00
  %6439 = fmul fast float %6438, %6398
  %6440 = fadd fast float %6439, 1.000000e+00
  br label %6441

; <label>:6441                                    ; preds = %6436, %6342
  %6442 = phi float [ %6440, %6436 ], [ 1.000000e+00, %6342 ]
  %6443 = fmul fast float %6442, %6338
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6448 = fadd fast float %6445, %198
  %6449 = fadd fast float %6446, %199
  %6450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6450, 1
  %6452 = fsub fast float -0.000000e+00, %6448
  %6453 = fsub fast float -0.000000e+00, %6449
  %6454 = fsub fast float %5315, %6447
  %6455 = fadd fast float %6454, %6451
  %6456 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6452, float %6453, float %6455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = fdiv fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6458, %6456
  %6460 = fmul fast float %5675, %6459
  %6461 = fmul fast float %5676, %6459
  %6462 = fadd fast float %6460, %6448
  %6463 = fadd fast float %6461, %6449
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 1
  %6467 = fsub fast float %6462, %6465
  %6468 = fsub fast float %6463, %6466
  %6469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6470 = extractvalue %dx.types.CBufRet.f32 %6469, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6469, 3
  %6472 = fmul fast float %6467, %6470
  %6473 = fmul fast float %6468, %6471
  %6474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.i32 %6474, 3
  %6476 = icmp eq i32 %6475, 0
  br i1 %6476, label %6482, label %6477

; <label>:6477                                    ; preds = %6441
  %6478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6472, float %6473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6479 = extractvalue %dx.types.ResRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.ResRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.ResRet.f32 %6478, 2
  br label %6487

; <label>:6482                                    ; preds = %6441
  %6483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6472, float %6473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  br label %6487

; <label>:6487                                    ; preds = %6482, %6477
  %6488 = phi float [ %6479, %6477 ], [ %6484, %6482 ]
  %6489 = phi float [ %6480, %6477 ], [ %6485, %6482 ]
  %6490 = phi float [ %6481, %6477 ], [ %6486, %6482 ]
  %6491 = extractvalue %dx.types.CBufRet.f32 %6450, 2
  %6492 = fmul fast float %6491, %6488
  %6493 = extractvalue %dx.types.CBufRet.f32 %6450, 0
  %6494 = fsub fast float %6459, %6493
  %6495 = fsub fast float %6494, %6492
  %6496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6495)  ; FMax(a,b)
  %6497 = fmul fast float %6496, %6489
  %6498 = call float @dx.op.binary.f32(i32 36, float %6490, float %6497)  ; FMin(a,b)
  %6499 = fmul fast float %6498, 0xBFF7154760000000
  %6500 = call float @dx.op.unary.f32(i32 21, float %6499)  ; Exp(value)
  %6501 = fmul fast float %6443, %6500
  br label %6502

; <label>:6502                                    ; preds = %6487, %6337
  %6503 = phi float [ %6501, %6487 ], [ %6338, %6337 ]
  %6504 = call float @dx.op.binary.f32(i32 36, float %6503, float %6503)  ; FMin(a,b)
  %6505 = call float @dx.op.binary.f32(i32 36, float %6503, float %6504)  ; FMin(a,b)
  %6506 = fcmp fast ogt float %6505, 0.000000e+00
  br i1 %6506, label %6507, label %6758, !dx.controlflow.hints !124

; <label>:6507                                    ; preds = %6502
  %6508 = fmul fast float %6503, %5686
  %6509 = fmul fast float %6503, %5687
  %6510 = fmul fast float %6503, %5688
  %6511 = fsub fast float %200, %4492
  %6512 = fcmp fast ogt float %6511, 0.000000e+00
  %6513 = fmul fast float %5675, 5.120000e+02
  %6514 = fmul fast float %5676, 5.120000e+02
  %6515 = fmul fast float %5677, 5.120000e+02
  %6516 = fadd fast float %6515, %200
  %6517 = fsub fast float %4492, %6516
  %6518 = fmul fast float %6517, 2.000000e+00
  %6519 = fadd fast float %6518, %6516
  %6520 = select i1 %6512, float %6519, float %6516
  %6521 = fsub fast float %6520, %200
  %6522 = call float @dx.op.dot3.f32(i32 55, float %6513, float %6514, float %6521, float %6513, float %6514, float %6521)  ; Dot3(ax,ay,az,bx,by,bz)
  %6523 = call float @dx.op.unary.f32(i32 25, float %6522)  ; Rsqrt(value)
  %6524 = fmul fast float %6523, %6513
  %6525 = fmul fast float %6523, %6514
  %6526 = fmul fast float %6523, %6521
  %6527 = fsub fast float %4492, %200
  %6528 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6527)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6524, float %6525, float %6526)  ; Dot3(ax,ay,az,bx,by,bz)
  %6530 = fdiv fast float 1.000000e+00, %6529
  %6531 = fmul fast float %6530, %6528
  %6532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6511, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6533 = fcmp fast ogt float %6532, 0.000000e+00
  %6534 = fcmp fast olt float %6532, 0.000000e+00
  %6535 = zext i1 %6533 to i32
  %6536 = zext i1 %6534 to i32
  %6537 = sub nsw i32 %6535, %6536
  %6538 = sitofp i32 %6537 to float
  %6539 = fsub fast float %6520, %4492
  %6540 = call float @dx.op.dot3.f32(i32 55, float %6513, float %6514, float %6539, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6541 = fcmp fast ogt float %6540, 0.000000e+00
  %6542 = fcmp fast olt float %6540, 0.000000e+00
  %6543 = zext i1 %6541 to i32
  %6544 = zext i1 %6542 to i32
  %6545 = sub nsw i32 %6543, %6544
  %6546 = sitofp i32 %6545 to float
  %6547 = fcmp fast une float %6538, %6546
  br i1 %6547, label %6548, label %6558

; <label>:6548                                    ; preds = %6507
  %6549 = fmul fast float %6531, %6526
  %6550 = fmul fast float %6531, %6525
  %6551 = fmul fast float %6531, %6524
  %6552 = fmul fast float %6551, %6551
  %6553 = fmul fast float %6550, %6550
  %6554 = fadd fast float %6552, %6553
  %6555 = fmul fast float %6549, %6549
  %6556 = fadd fast float %6554, %6555
  %6557 = call float @dx.op.unary.f32(i32 24, float %6556)  ; Sqrt(value)
  br label %6568

; <label>:6558                                    ; preds = %6507
  %6559 = icmp slt i32 %6537, 0
  br i1 %6559, label %6560, label %6568

; <label>:6560                                    ; preds = %6558
  %6561 = fsub fast float %200, %6520
  %6562 = fmul fast float %6513, %6513
  %6563 = fmul fast float %6514, %6514
  %6564 = fadd fast float %6562, %6563
  %6565 = fmul fast float %6561, %6561
  %6566 = fadd fast float %6564, %6565
  %6567 = call float @dx.op.unary.f32(i32 24, float %6566)  ; Sqrt(value)
  br label %6568

; <label>:6568                                    ; preds = %6560, %6558, %6548
  %6569 = phi float [ %6557, %6548 ], [ %6567, %6560 ], [ 0.000000e+00, %6558 ]
  %6570 = fsub fast float -0.000000e+00, %6569
  %6571 = select i1 %6512, float -0.000000e+00, float %6570
  %6572 = fmul fast float %4493, 0x3FF7154760000000
  %6573 = fmul fast float %6572, %6571
  %6574 = fmul fast float %4494, 0x3FF7154760000000
  %6575 = fmul fast float %6574, %6571
  %6576 = fmul fast float %4495, 0x3FF7154760000000
  %6577 = fmul fast float %6576, %6571
  %6578 = call float @dx.op.unary.f32(i32 21, float %6573)  ; Exp(value)
  %6579 = call float @dx.op.unary.f32(i32 21, float %6575)  ; Exp(value)
  %6580 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6581 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6582 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6583 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6584 = fmul fast float %6508, %6581
  %6585 = fmul fast float %6509, %6582
  %6586 = fmul fast float %6510, %6583
  %6587 = fsub fast float %5675, %5318
  %6588 = fsub fast float %5676, %5319
  %6589 = fsub fast float %5677, %5320
  %6590 = call float @dx.op.dot3.f32(i32 55, float %6587, float %6588, float %6589, float %6587, float %6588, float %6589)  ; Dot3(ax,ay,az,bx,by,bz)
  %6591 = call float @dx.op.unary.f32(i32 25, float %6590)  ; Rsqrt(value)
  %6592 = fmul fast float %6591, %6587
  %6593 = fmul fast float %6591, %6588
  %6594 = fmul fast float %6591, %6589
  %6595 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %6592, float %6593, float %6594)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6598 = fmul fast float %6597, %6597
  %6599 = fmul fast float %6598, %5339
  %6600 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6601 = fmul fast float %6600, %6597
  %6602 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %6592, float %6593, float %6594)  ; Dot3(ax,ay,az,bx,by,bz)
  %6603 = fmul fast float %6602, %6602
  %6604 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6605 = fsub fast float 1.000000e+00, %5281
  %6606 = call float @dx.op.binary.f32(i32 35, float %6605, float 0x3F847AE140000000)  ; FMax(a,b)
  %6607 = fmul fast float %6606, %6606
  %6608 = fmul fast float %6607, %6607
  %6609 = fsub fast float 1.000000e+00, %6608
  %6610 = fmul fast float %5326, %5326
  %6611 = fmul fast float %6610, %6609
  %6612 = fadd fast float %6611, %6608
  %6613 = bitcast float %6612 to i32
  %6614 = ashr i32 %6613, 1
  %6615 = add nsw i32 %6614, 532487669
  %6616 = bitcast i32 %6615 to float
  %6617 = fadd fast float %6616, %5326
  %6618 = fmul fast float %6608, %6603
  %6619 = fsub fast float 1.000000e+00, %6603
  %6620 = fadd fast float %6619, %6618
  %6621 = fmul fast float %6604, %6604
  %6622 = fmul fast float %6621, %6609
  %6623 = fadd fast float %6622, %6608
  %6624 = bitcast float %6623 to i32
  %6625 = ashr i32 %6624, 1
  %6626 = add nsw i32 %6625, 532487669
  %6627 = bitcast i32 %6626 to float
  %6628 = fadd fast float %6627, %6604
  %6629 = fmul fast float %6620, %6620
  %6630 = fmul fast float %6629, %6617
  %6631 = fmul fast float %6630, %6628
  %6632 = fdiv fast float 0x3FF0A00000000000, %6631
  %6633 = fmul fast float %6632, %6608
  %6634 = call float @dx.op.unary.f32(i32 6, float %6596)  ; FAbs(value)
  %6635 = fsub fast float 1.000000e+00, %6634
  %6636 = bitcast float %6635 to i32
  %6637 = sitofp i32 %6636 to float
  %6638 = fmul fast float %6637, 5.000000e+00
  %6639 = fadd fast float %6638, 0xC1EFBF8940000000
  %6640 = fptosi float %6639 to i32
  %6641 = bitcast i32 %6640 to float
  %6642 = fsub fast float 1.000000e+00, %5275
  %6643 = fsub fast float 1.000000e+00, %5276
  %6644 = fsub fast float 1.000000e+00, %5324
  %6645 = fmul fast float %6641, %6642
  %6646 = fmul fast float %6641, %6643
  %6647 = fmul fast float %6641, %6644
  %6648 = fadd fast float %6645, %5275
  %6649 = fadd fast float %6646, %5276
  %6650 = fadd fast float %6647, %5324
  br i1 %5586, label %6651, label %6674

; <label>:6651                                    ; preds = %6568
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4090, float %6634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6656 = fadd fast float %6653, -5.000000e-01
  %6657 = fadd fast float %6654, -5.000000e-01
  %6658 = fadd fast float %6655, -5.000000e-01
  %6659 = fmul fast float %5275, 4.000000e+00
  %6660 = fmul fast float %6659, %6642
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %5276, 4.000000e+00
  %6663 = fmul fast float %6662, %6643
  %6664 = fmul fast float %6663, %6657
  %6665 = fmul fast float %5324, 4.000000e+00
  %6666 = fmul fast float %6665, %6644
  %6667 = fmul fast float %6666, %6658
  %6668 = fadd fast float %6661, %6648
  %6669 = fadd fast float %6664, %6649
  %6670 = fadd fast float %6667, %6650
  %6671 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6672 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6673 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  br label %6674

; <label>:6674                                    ; preds = %6651, %6568
  %6675 = phi float [ %6671, %6651 ], [ %6648, %6568 ]
  %6676 = phi float [ %6672, %6651 ], [ %6649, %6568 ]
  %6677 = phi float [ %6673, %6651 ], [ %6650, %6568 ]
  %6678 = fmul fast float %6595, 9.843750e-01
  %6679 = fadd fast float %6678, 7.812500e-03
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6679, float %5576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 2
  %6682 = extractvalue %dx.types.ResRet.f32 %6680, 3
  %6683 = fmul fast float %6681, %5275
  %6684 = fmul fast float %6681, %5276
  %6685 = fmul fast float %6681, %5324
  %6686 = fadd fast float %6683, %6682
  %6687 = fadd fast float %6684, %6682
  %6688 = fadd fast float %6685, %6682
  br i1 %5586, label %6689, label %6712

; <label>:6689                                    ; preds = %6674
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4090, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = fadd fast float %6691, -5.000000e-01
  %6695 = fadd fast float %6692, -5.000000e-01
  %6696 = fadd fast float %6693, -5.000000e-01
  %6697 = fmul fast float %5275, 4.000000e+00
  %6698 = fmul fast float %6697, %6642
  %6699 = fmul fast float %6698, %6694
  %6700 = fmul fast float %5276, 4.000000e+00
  %6701 = fmul fast float %6700, %6643
  %6702 = fmul fast float %6701, %6695
  %6703 = fmul fast float %5324, 4.000000e+00
  %6704 = fmul fast float %6703, %6644
  %6705 = fmul fast float %6704, %6696
  %6706 = fadd fast float %6699, %6686
  %6707 = fadd fast float %6702, %6687
  %6708 = fadd fast float %6705, %6688
  %6709 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6710 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  br label %6712

; <label>:6712                                    ; preds = %6689, %6674
  %6713 = phi float [ %6709, %6689 ], [ %6686, %6674 ]
  %6714 = phi float [ %6710, %6689 ], [ %6687, %6674 ]
  %6715 = phi float [ %6711, %6689 ], [ %6688, %6674 ]
  %6716 = call float @dx.op.binary.f32(i32 35, float %6714, float %6715)  ; FMax(a,b)
  %6717 = call float @dx.op.binary.f32(i32 35, float %6713, float %6716)  ; FMax(a,b)
  %6718 = fsub fast float 1.000000e+00, %6717
  %6719 = fmul fast float %6675, %6633
  %6720 = fmul fast float %6676, %6633
  %6721 = fmul fast float %6677, %6633
  %6722 = fsub fast float 1.000000e+00, %6596
  %6723 = bitcast float %6722 to i32
  %6724 = sitofp i32 %6723 to float
  %6725 = fmul fast float %6724, 5.000000e+00
  %6726 = fadd fast float %6725, 0xC1EFBF8940000000
  %6727 = fptosi float %6726 to i32
  %6728 = bitcast i32 %6727 to float
  %6729 = fmul fast float %6728, %4091
  %6730 = fmul fast float %6718, %6729
  %6731 = fmul fast float %6730, %5636
  %6732 = fmul fast float %6730, %5637
  %6733 = fmul fast float %6730, %5638
  %6734 = fadd fast float %6731, %6719
  %6735 = fadd fast float %6732, %6720
  %6736 = fadd fast float %6733, %6721
  %6737 = fmul fast float %6601, %6584
  %6738 = fmul fast float %6737, %6718
  %6739 = fmul fast float %6601, %6585
  %6740 = fmul fast float %6739, %6718
  %6741 = fmul fast float %6601, %6586
  %6742 = fmul fast float %6741, %6718
  %6743 = fmul fast float %6737, %6734
  %6744 = fmul fast float %6739, %6735
  %6745 = fmul fast float %6741, %6736
  %6746 = fadd fast float %6738, %5620
  %6747 = fmul fast float %6746, %4087
  %6748 = fadd fast float %6740, %5621
  %6749 = fmul fast float %6748, %4087
  %6750 = fadd fast float %6742, %5622
  %6751 = fmul fast float %6750, %4087
  %6752 = fadd fast float %6743, %5663
  %6753 = fmul fast float %6752, %4087
  %6754 = fadd fast float %6744, %5666
  %6755 = fmul fast float %6754, %4087
  %6756 = fadd fast float %6745, %5669
  %6757 = fmul fast float %6756, %4087
  br label %6758

; <label>:6758                                    ; preds = %6712, %6502, %5613
  %6759 = phi float [ %5664, %5613 ], [ %5664, %6502 ], [ %6753, %6712 ]
  %6760 = phi float [ %5667, %5613 ], [ %5667, %6502 ], [ %6755, %6712 ]
  %6761 = phi float [ %5670, %5613 ], [ %5670, %6502 ], [ %6757, %6712 ]
  %6762 = phi float [ %5659, %5613 ], [ %5659, %6502 ], [ %6747, %6712 ]
  %6763 = phi float [ %5660, %5613 ], [ %5660, %6502 ], [ %6749, %6712 ]
  %6764 = phi float [ %5661, %5613 ], [ %5661, %6502 ], [ %6751, %6712 ]
  %6765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.i32 %6765, 0
  %6767 = icmp eq i32 %6766, 0
  br i1 %6767, label %7388, label %6768

; <label>:6768                                    ; preds = %6758
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 2
  %6771 = extractvalue %dx.types.CBufRet.f32 %6769, 3
  %6772 = fmul fast float %6770, %115
  %6773 = fmul fast float %6771, %116
  %6774 = fptoui float %6772 to i32
  %6775 = fptoui float %6773 to i32
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6776, 3
  %6780 = fadd fast float %106, -4.000000e+00
  %6781 = call float @dx.op.binary.f32(i32 35, float %6780, float 0.000000e+00)  ; FMax(a,b)
  %6782 = fadd fast float %6781, %6777
  %6783 = fmul fast float %6782, %6778
  %6784 = call float @dx.op.unary.f32(i32 23, float %6783)  ; Log(value)
  %6785 = fmul fast float %6784, %6779
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 2
  %6788 = fmul fast float %6785, %6787
  %6789 = call float @dx.op.unary.f32(i32 7, float %6788)  ; Saturate(value)
  %6790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.i32 %6790, 1
  %6792 = add i32 %6791, -1
  %6793 = uitofp i32 %6791 to float
  %6794 = fmul fast float %6793, %6789
  %6795 = fptoui float %6794 to i32
  %6796 = call i32 @dx.op.binary.i32(i32 40, i32 %6795, i32 %6792)  ; UMin(a,b)
  %6797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.i32 %6797, 2
  %6799 = extractvalue %dx.types.CBufRet.i32 %6797, 3
  %6800 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6775, i32 %6798, i32 %6774)  ; UMad(a,b,c)
  %6801 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6796, i32 %6799, i32 %6800)  ; UMad(a,b,c)
  %6802 = add nsw i32 %6766, -1
  %6803 = call i32 @dx.op.binary.i32(i32 37, i32 %6802, i32 0)  ; IMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %6805 = fptoui float %6804 to i32
  %6806 = lshr i32 %6805, 5
  %6807 = call i32 @dx.op.binary.i32(i32 40, i32 %6806, i32 8191)  ; UMin(a,b)
  %6808 = shl i32 %6807, 2
  %6809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6808, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.i32 %6809, 0
  %6811 = lshr i32 %6810, 16
  %6812 = and i32 %6810, 65535
  %6813 = lshr i32 %6810, 21
  %6814 = lshr i32 %6812, 5
  %6815 = call i32 @dx.op.binary.i32(i32 40, i32 %6814, i32 %6803)  ; UMin(a,b)
  %6816 = icmp ugt i32 %6813, %6815
  br i1 %6816, label %7388, label %6817

; <label>:6817                                    ; preds = %6768
  br label %6818

; <label>:6818                                    ; preds = %7378, %6817
  %6819 = phi i32 [ %7385, %7378 ], [ %6813, %6817 ]
  %6820 = phi float [ %7379, %7378 ], [ %6759, %6817 ]
  %6821 = phi float [ %7380, %7378 ], [ %6760, %6817 ]
  %6822 = phi float [ %7381, %7378 ], [ %6761, %6817 ]
  %6823 = phi float [ %7382, %7378 ], [ %6762, %6817 ]
  %6824 = phi float [ %7383, %7378 ], [ %6763, %6817 ]
  %6825 = phi float [ %7384, %7378 ], [ %6764, %6817 ]
  %6826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.i32 %6826, 0
  %6828 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6801, i32 %6827, i32 %6819)  ; UMad(a,b,c)
  %6829 = shl i32 %6828, 2
  %6830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6829, i32 undef)  ; BufferLoad(srv,index,wot)
  %6831 = extractvalue %dx.types.ResRet.i32 %6830, 0
  %6832 = shl i32 %6819, 5
  %6833 = sub nsw i32 %6811, %6832
  %6834 = call i32 @dx.op.binary.i32(i32 37, i32 %6833, i32 0)  ; IMax(a,b)
  %6835 = call i32 @dx.op.binary.i32(i32 38, i32 %6834, i32 31)  ; IMin(a,b)
  %6836 = sub nsw i32 1, %6811
  %6837 = add nsw i32 %6836, %6812
  %6838 = call i32 @dx.op.binary.i32(i32 37, i32 %6837, i32 0)  ; IMax(a,b)
  %6839 = call i32 @dx.op.binary.i32(i32 38, i32 %6838, i32 32)  ; IMin(a,b)
  %6840 = and i32 %6839, 31
  %6841 = shl i32 -1, %6840
  %6842 = xor i32 %6841, -1
  %6843 = and i32 %6835, 31
  %6844 = shl i32 %6842, %6843
  %6845 = icmp eq i32 %6839, 32
  %6846 = select i1 %6845, i32 -1, i32 %6844
  %6847 = and i32 %6846, %6831
  %6848 = icmp eq i32 %6847, 0
  br i1 %6848, label %7378, label %6849

; <label>:6849                                    ; preds = %6818
  br label %6850

; <label>:6850                                    ; preds = %6984, %6849
  %6851 = phi i32 [ %6862, %6984 ], [ %6847, %6849 ]
  %6852 = phi float [ %6985, %6984 ], [ %6820, %6849 ]
  %6853 = phi float [ %6986, %6984 ], [ %6821, %6849 ]
  %6854 = phi float [ %6987, %6984 ], [ %6822, %6849 ]
  %6855 = phi float [ %6988, %6984 ], [ %6823, %6849 ]
  %6856 = phi float [ %6989, %6984 ], [ %6824, %6849 ]
  %6857 = phi float [ %6990, %6984 ], [ %6825, %6849 ]
  %6858 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6851)  ; FirstbitLo(value)
  %6859 = add i32 %6858, %6832
  %6860 = and i32 %6858, 31
  %6861 = shl i32 1, %6860
  %6862 = xor i32 %6861, %6851
  %6863 = mul i32 %6859, 112
  %6864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6863, i32 undef)  ; BufferLoad(srv,index,wot)
  %6865 = extractvalue %dx.types.ResRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.ResRet.f32 %6864, 1
  %6867 = extractvalue %dx.types.ResRet.f32 %6864, 2
  %6868 = or i32 %6863, 12
  %6869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6868, i32 undef)  ; BufferLoad(srv,index,wot)
  %6870 = extractvalue %dx.types.ResRet.f32 %6869, 0
  %6871 = add i32 %6863, 16
  %6872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6871, i32 undef)  ; BufferLoad(srv,index,wot)
  %6873 = extractvalue %dx.types.ResRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.ResRet.f32 %6872, 1
  %6875 = extractvalue %dx.types.ResRet.f32 %6872, 2
  %6876 = add i32 %6863, 28
  %6877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6876, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.i32 %6877, 0
  %6879 = add i32 %6863, 44
  %6880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6879, i32 undef)  ; BufferLoad(srv,index,wot)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = add i32 %6863, 48
  %6883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6882, i32 undef)  ; BufferLoad(srv,index,wot)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  %6887 = extractvalue %dx.types.ResRet.f32 %6883, 3
  %6888 = add i32 %6863, 64
  %6889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6888, i32 undef)  ; BufferLoad(srv,index,wot)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = extractvalue %dx.types.ResRet.f32 %6889, 3
  %6894 = add i32 %6863, 80
  %6895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6894, i32 undef)  ; BufferLoad(srv,index,wot)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 1
  %6897 = extractvalue %dx.types.ResRet.f32 %6895, 2
  %6898 = add i32 %6863, 92
  %6899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6898, i32 undef)  ; BufferLoad(srv,index,wot)
  %6900 = extractvalue %dx.types.ResRet.i32 %6899, 0
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6865, float %6866, float %6867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = select i1 %270, float %6896, float %6865
  %6903 = select i1 %270, float %6901, float %6866
  %6904 = select i1 %270, float %6897, float %6867
  %6905 = and i32 %6900, 65535
  %6906 = uitofp i32 %6905 to float
  %6907 = lshr i32 %6900, 16
  %6908 = uitofp i32 %6907 to float
  %6909 = and i32 %6878, 65535
  %6910 = and i32 %6878, 50331648
  %6911 = icmp eq i32 %6910, 33554432
  %6912 = fsub fast float %6884, %198
  %6913 = fsub fast float %6885, %199
  %6914 = fsub fast float %6886, %200
  %6915 = call float @dx.op.dot3.f32(i32 55, float %6912, float %6913, float %6914, float %6912, float %6913, float %6914)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = call float @dx.op.unary.f32(i32 24, float %6915)  ; Sqrt(value)
  %6917 = fdiv fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6917, %6912
  %6919 = fmul fast float %6917, %6913
  %6920 = fmul fast float %6917, %6914
  %6921 = fadd fast float %6916, %6870
  %6922 = fdiv fast float 1.000000e+00, %6921
  %6923 = fmul float %6881, %6922
  %6924 = fmul float %6923, %6923
  %6925 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  br i1 %6911, label %6926, label %6947

; <label>:6926                                    ; preds = %6850
  %6927 = fmul fast float %6892, %6873
  %6928 = fmul fast float %6892, %6874
  %6929 = fmul fast float %6892, %6875
  %6930 = fadd fast float %6912, %6927
  %6931 = fadd fast float %6913, %6928
  %6932 = fadd fast float %6914, %6929
  %6933 = call float @dx.op.dot3.f32(i32 55, float %6930, float %6931, float %6932, float %6930, float %6931, float %6932)  ; Dot3(ax,ay,az,bx,by,bz)
  %6934 = call float @dx.op.unary.f32(i32 25, float %6933)  ; Rsqrt(value)
  %6935 = fmul fast float %6934, %6930
  %6936 = fmul fast float %6934, %6931
  %6937 = fmul fast float %6934, %6932
  %6938 = fsub fast float %198, %6884
  %6939 = fsub fast float %199, %6885
  %6940 = fsub fast float %200, %6886
  %6941 = fsub fast float -0.000000e+00, %6938
  %6942 = fsub fast float -0.000000e+00, %6939
  %6943 = fsub fast float -0.000000e+00, %6940
  %6944 = call float @dx.op.dot3.f32(i32 55, float %6941, float %6942, float %6943, float %6873, float %6874, float %6875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6945 = fcmp fast ogt float %6944, 0.000000e+00
  %6946 = uitofp i1 %6945 to float
  br label %6947

; <label>:6947                                    ; preds = %6926, %6850
  %6948 = phi float [ %6946, %6926 ], [ 1.000000e+00, %6850 ]
  %6949 = phi float [ %6935, %6926 ], [ %6918, %6850 ]
  %6950 = phi float [ %6936, %6926 ], [ %6919, %6850 ]
  %6951 = phi float [ %6937, %6926 ], [ %6920, %6850 ]
  %6952 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6875, float %6949, float %6950, float %6951)  ; Dot3(ax,ay,az,bx,by,bz)
  %6953 = fmul fast float %6952, %6952
  %6954 = call float @dx.op.unary.f32(i32 7, float %6953)  ; Saturate(value)
  %6955 = fsub fast float 1.000000e+00, %6954
  %6956 = fmul fast float %6955, 5.000000e-01
  %6957 = fcmp fast ogt float %6952, 0.000000e+00
  %6958 = fsub fast float 1.000000e+00, %6956
  %6959 = select i1 %6957, float %6956, float %6958
  %6960 = fmul fast float %6959, %6908
  %6961 = fadd fast float %6960, %6906
  %6962 = fmul fast float %6961, 0x3EF0001000000000
  %6963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %6962, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = fmul fast float %6952, %6890
  %6966 = fadd fast float %6965, %6891
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6968 = select i1 %6911, float 1.000000e+00, float %6967
  %6969 = select i1 %6911, float %6967, float 1.000000e+00
  %6970 = fmul fast float %6916, %6887
  %6971 = fsub fast float 1.000000e+00, %6970
  %6972 = fmul fast float %6971, %6893
  %6973 = call float @dx.op.unary.f32(i32 7, float %6972)  ; Saturate(value)
  %6974 = fmul fast float %6973, %6969
  %6975 = fmul fast float %6974, 2.000000e+00
  %6976 = fsub fast float 3.000000e+00, %6975
  %6977 = fmul fast float %6964, %6948
  %6978 = fmul fast float %6974, %6974
  %6979 = fmul fast float %6978, %6977
  %6980 = fmul fast float %6979, %6976
  %6981 = call float @dx.op.binary.f32(i32 36, float %6980, float %6980)  ; FMin(a,b)
  %6982 = call float @dx.op.binary.f32(i32 36, float %6980, float %6981)  ; FMin(a,b)
  %6983 = fcmp fast ogt float %6982, 0.000000e+00
  br i1 %6983, label %6992, label %6984, !dx.controlflow.hints !125

; <label>:6984                                    ; preds = %7334, %7092, %6947
  %6985 = phi float [ %6852, %7092 ], [ %6852, %6947 ], [ %7374, %7334 ]
  %6986 = phi float [ %6853, %7092 ], [ %6853, %6947 ], [ %7375, %7334 ]
  %6987 = phi float [ %6854, %7092 ], [ %6854, %6947 ], [ %7376, %7334 ]
  %6988 = phi float [ %6855, %7092 ], [ %6855, %6947 ], [ %7368, %7334 ]
  %6989 = phi float [ %6856, %7092 ], [ %6856, %6947 ], [ %7369, %7334 ]
  %6990 = phi float [ %6857, %7092 ], [ %6857, %6947 ], [ %7370, %7334 ]
  %6991 = icmp eq i32 %6851, %6861
  br i1 %6991, label %7377, label %6850

; <label>:6992                                    ; preds = %6947
  %6993 = icmp eq i32 %6909, 255
  br i1 %6993, label %7092, label %6994, !dx.controlflow.hints !126

; <label>:6994                                    ; preds = %6992
  %6995 = mul nuw nsw i32 %6909, 176
  %6996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6995, i32 undef)  ; BufferLoad(srv,index,wot)
  %6997 = extractvalue %dx.types.ResRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.ResRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.ResRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.ResRet.f32 %6996, 3
  %7001 = add nuw nsw i32 %6995, 16
  %7002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7001, i32 undef)  ; BufferLoad(srv,index,wot)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = extractvalue %dx.types.ResRet.f32 %7002, 1
  %7005 = add nuw nsw i32 %6995, 32
  %7006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7005, i32 undef)  ; BufferLoad(srv,index,wot)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.ResRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.ResRet.f32 %7006, 2
  %7010 = add nuw nsw i32 %6995, 48
  %7011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7010, i32 undef)  ; BufferLoad(srv,index,wot)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.ResRet.f32 %7011, 1
  %7014 = extractvalue %dx.types.ResRet.f32 %7011, 2
  %7015 = extractvalue %dx.types.ResRet.f32 %7011, 3
  %7016 = add nuw nsw i32 %6995, 64
  %7017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7016, i32 undef)  ; BufferLoad(srv,index,wot)
  %7018 = extractvalue %dx.types.ResRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.ResRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.ResRet.f32 %7017, 2
  %7021 = extractvalue %dx.types.ResRet.f32 %7017, 3
  %7022 = add nuw nsw i32 %6995, 80
  %7023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7022, i32 undef)  ; BufferLoad(srv,index,wot)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.ResRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.ResRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.ResRet.f32 %7023, 3
  %7028 = add nuw nsw i32 %6995, 96
  %7029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7028, i32 undef)  ; BufferLoad(srv,index,wot)
  %7030 = extractvalue %dx.types.ResRet.f32 %7029, 0
  %7031 = extractvalue %dx.types.ResRet.f32 %7029, 1
  %7032 = extractvalue %dx.types.ResRet.f32 %7029, 2
  %7033 = extractvalue %dx.types.ResRet.f32 %7029, 3
  %7034 = bitcast float %7004 to i32
  %7035 = fmul fast float %7009, %124
  %7036 = fmul fast float %7009, %126
  %7037 = fmul fast float %7009, %128
  %7038 = fadd fast float %7035, %198
  %7039 = fadd fast float %7036, %199
  %7040 = fadd fast float %7037, %200
  %7041 = fmul fast float %7038, %7012
  %7042 = call float @dx.op.tertiary.f32(i32 46, float %7039, float %7018, float %7041)  ; FMad(a,b,c)
  %7043 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7024, float %7042)  ; FMad(a,b,c)
  %7044 = fadd fast float %7043, %7030
  %7045 = fmul fast float %7038, %7013
  %7046 = call float @dx.op.tertiary.f32(i32 46, float %7039, float %7019, float %7045)  ; FMad(a,b,c)
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7025, float %7046)  ; FMad(a,b,c)
  %7048 = fadd fast float %7047, %7031
  %7049 = fmul fast float %7038, %7014
  %7050 = call float @dx.op.tertiary.f32(i32 46, float %7039, float %7020, float %7049)  ; FMad(a,b,c)
  %7051 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7026, float %7050)  ; FMad(a,b,c)
  %7052 = fadd fast float %7051, %7032
  %7053 = fmul fast float %7038, %7015
  %7054 = call float @dx.op.tertiary.f32(i32 46, float %7039, float %7021, float %7053)  ; FMad(a,b,c)
  %7055 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7027, float %7054)  ; FMad(a,b,c)
  %7056 = fadd fast float %7055, %7033
  %7057 = fdiv fast float %7044, %7056
  %7058 = fdiv fast float %7048, %7056
  %7059 = fdiv fast float %7052, %7056
  %7060 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7059)  ; FMax(a,b)
  %7061 = fmul fast float %281, 0x401921FB60000000
  %7062 = call float @dx.op.unary.f32(i32 13, float %7061)  ; Sin(value)
  %7063 = call float @dx.op.unary.f32(i32 12, float %7061)  ; Cos(value)
  %7064 = fsub fast float -0.000000e+00, %7062
  %7065 = fmul fast float %6999, 5.000000e-01
  %7066 = call float @dx.op.dot2.f32(i32 54, float %281, float %281, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7067 = call float @dx.op.unary.f32(i32 22, float %7066)  ; Frc(value)
  %7068 = fmul fast float %7067, 0x404A7DD040000000
  %7069 = call float @dx.op.unary.f32(i32 22, float %7068)  ; Frc(value)
  %7070 = fmul fast float %7069, %7008
  %7071 = fadd fast float %7070, %7065
  %7072 = call float @dx.op.tertiary.f32(i32 46, float %7071, float %7064, float 0.000000e+00)  ; FMad(a,b,c)
  %7073 = call float @dx.op.tertiary.f32(i32 46, float %7071, float %7063, float 0.000000e+00)  ; FMad(a,b,c)
  %7074 = fadd fast float %7072, %7057
  %7075 = fadd fast float %7073, %7058
  %7076 = fmul fast float %7074, %7003
  %7077 = fmul fast float %7075, %7003
  %7078 = call float @dx.op.binary.f32(i32 35, float %7076, float %6999)  ; FMax(a,b)
  %7079 = call float @dx.op.binary.f32(i32 35, float %7077, float %6999)  ; FMax(a,b)
  %7080 = call float @dx.op.binary.f32(i32 36, float %7078, float %7000)  ; FMin(a,b)
  %7081 = call float @dx.op.binary.f32(i32 36, float %7079, float %7000)  ; FMin(a,b)
  %7082 = fadd fast float %7080, %6997
  %7083 = fadd fast float %7081, %6998
  %7084 = uitofp i32 %7034 to float
  %7085 = fadd fast float %7060, %7007
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7082, float %7083, float %7084, float undef, i32 0, i32 0, i32 undef, float %7085)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = fadd fast float %7087, -1.000000e+00
  %7089 = fmul fast float %7088, %6968
  %7090 = fadd fast float %7089, 1.000000e+00
  %7091 = fmul fast float %7090, %6980
  br label %7092

; <label>:7092                                    ; preds = %6994, %6992
  %7093 = phi float [ %7091, %6994 ], [ %6980, %6992 ]
  %7094 = call float @dx.op.binary.f32(i32 36, float %7093, float %7093)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7093, float %7094)  ; FMin(a,b)
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  br i1 %7096, label %7097, label %6984, !dx.controlflow.hints !127

; <label>:7097                                    ; preds = %7092
  %7098 = fmul fast float %7093, %6902
  %7099 = fmul fast float %7093, %6903
  %7100 = fmul fast float %7093, %6904
  %7101 = fsub fast float %6886, %4492
  %7102 = fcmp fast ogt float %7101, 0.000000e+00
  %7103 = fsub fast float %200, %4492
  %7104 = fcmp fast ogt float %7103, 0.000000e+00
  %7105 = xor i1 %7104, %7102
  %7106 = fsub fast float %4492, %6886
  %7107 = fmul fast float %7106, 2.000000e+00
  %7108 = fadd fast float %7107, %6886
  %7109 = select i1 %7105, float %6886, float %7108
  %7110 = fsub fast float %7109, %200
  %7111 = call float @dx.op.dot3.f32(i32 55, float %6912, float %6913, float %7110, float %6912, float %6913, float %7110)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = call float @dx.op.unary.f32(i32 25, float %7111)  ; Rsqrt(value)
  %7113 = fmul fast float %7112, %6912
  %7114 = fmul fast float %7112, %6913
  %7115 = fmul fast float %7112, %7110
  %7116 = fsub fast float %4492, %200
  %7117 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7118 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7113, float %7114, float %7115)  ; Dot3(ax,ay,az,bx,by,bz)
  %7119 = fdiv fast float 1.000000e+00, %7118
  %7120 = fmul fast float %7119, %7117
  %7121 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7103, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7122 = fcmp fast ogt float %7121, 0.000000e+00
  %7123 = fcmp fast olt float %7121, 0.000000e+00
  %7124 = zext i1 %7122 to i32
  %7125 = zext i1 %7123 to i32
  %7126 = sub nsw i32 %7124, %7125
  %7127 = sitofp i32 %7126 to float
  %7128 = fsub fast float %7109, %4492
  %7129 = call float @dx.op.dot3.f32(i32 55, float %6912, float %6913, float %7128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = fcmp fast ogt float %7129, 0.000000e+00
  %7131 = fcmp fast olt float %7129, 0.000000e+00
  %7132 = zext i1 %7130 to i32
  %7133 = zext i1 %7131 to i32
  %7134 = sub nsw i32 %7132, %7133
  %7135 = sitofp i32 %7134 to float
  %7136 = fcmp fast une float %7127, %7135
  br i1 %7136, label %7137, label %7147

; <label>:7137                                    ; preds = %7097
  %7138 = fmul fast float %7120, %7115
  %7139 = fmul fast float %7120, %7114
  %7140 = fmul fast float %7120, %7113
  %7141 = fmul fast float %7140, %7140
  %7142 = fmul fast float %7139, %7139
  %7143 = fadd fast float %7141, %7142
  %7144 = fmul fast float %7138, %7138
  %7145 = fadd fast float %7143, %7144
  %7146 = call float @dx.op.unary.f32(i32 24, float %7145)  ; Sqrt(value)
  br label %7159

; <label>:7147                                    ; preds = %7097
  %7148 = icmp slt i32 %7126, 0
  br i1 %7148, label %7149, label %7159

; <label>:7149                                    ; preds = %7147
  %7150 = fsub fast float %198, %6884
  %7151 = fsub fast float %199, %6885
  %7152 = fsub fast float %200, %7109
  %7153 = fmul fast float %7150, %7150
  %7154 = fmul fast float %7151, %7151
  %7155 = fadd fast float %7153, %7154
  %7156 = fmul fast float %7152, %7152
  %7157 = fadd fast float %7155, %7156
  %7158 = call float @dx.op.unary.f32(i32 24, float %7157)  ; Sqrt(value)
  br label %7159

; <label>:7159                                    ; preds = %7149, %7147, %7137
  %7160 = phi float [ %7146, %7137 ], [ %7158, %7149 ], [ 0.000000e+00, %7147 ]
  %7161 = and i1 %7104, %7102
  %7162 = fsub fast float -0.000000e+00, %7160
  %7163 = select i1 %7161, float -0.000000e+00, float %7162
  %7164 = fmul fast float %4493, 0x3FF7154760000000
  %7165 = fmul fast float %7164, %7163
  %7166 = fmul fast float %4494, 0x3FF7154760000000
  %7167 = fmul fast float %7166, %7163
  %7168 = fmul fast float %4495, 0x3FF7154760000000
  %7169 = fmul fast float %7168, %7163
  %7170 = call float @dx.op.unary.f32(i32 21, float %7165)  ; Exp(value)
  %7171 = call float @dx.op.unary.f32(i32 21, float %7167)  ; Exp(value)
  %7172 = call float @dx.op.unary.f32(i32 21, float %7169)  ; Exp(value)
  %7173 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7176 = fmul fast float %7098, %7173
  %7177 = fmul fast float %7099, %7174
  %7178 = fmul fast float %7100, %7175
  %7179 = fsub fast float %6918, %5318
  %7180 = fsub fast float %6919, %5319
  %7181 = fsub fast float %6920, %5320
  %7182 = call float @dx.op.dot3.f32(i32 55, float %7179, float %7180, float %7181, float %7179, float %7180, float %7181)  ; Dot3(ax,ay,az,bx,by,bz)
  %7183 = call float @dx.op.unary.f32(i32 25, float %7182)  ; Rsqrt(value)
  %7184 = fmul fast float %7183, %7179
  %7185 = fmul fast float %7183, %7180
  %7186 = fmul fast float %7183, %7181
  %7187 = call float @dx.op.dot3.f32(i32 55, float %6918, float %6919, float %6920, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %7188 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %7184, float %7185, float %7186)  ; Dot3(ax,ay,az,bx,by,bz)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  %7190 = fmul fast float %7189, %6925
  %7191 = fmul fast float %7189, %7189
  %7192 = fmul fast float %7191, %5339
  %7193 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  %7194 = fmul fast float %7190, %7193
  %7195 = bitcast float %6915 to i32
  %7196 = ashr i32 %7195, 1
  %7197 = sub nsw i32 1597463007, %7196
  %7198 = bitcast i32 %7197 to float
  %7199 = fmul fast float %7198, %6912
  %7200 = fmul fast float %7198, %6913
  %7201 = fmul fast float %7198, %6914
  %7202 = fsub fast float %7199, %5318
  %7203 = fsub fast float %7200, %5319
  %7204 = fsub fast float %7201, %5320
  %7205 = call float @dx.op.dot3.f32(i32 55, float %7202, float %7203, float %7204, float %7202, float %7203, float %7204)  ; Dot3(ax,ay,az,bx,by,bz)
  %7206 = call float @dx.op.unary.f32(i32 25, float %7205)  ; Rsqrt(value)
  %7207 = fmul fast float %7202, %7206
  %7208 = fmul fast float %7203, %7206
  %7209 = fmul fast float %7204, %7206
  %7210 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %7207, float %7208, float %7209)  ; Dot3(ax,ay,az,bx,by,bz)
  %7211 = fmul fast float %7210, %7210
  %7212 = call float @dx.op.unary.f32(i32 6, float %7187)  ; FAbs(value)
  %7213 = fsub fast float 1.000000e+00, %5281
  %7214 = call float @dx.op.binary.f32(i32 35, float %7213, float 0x3F847AE140000000)  ; FMax(a,b)
  %7215 = fmul fast float %7214, %7214
  %7216 = fmul fast float %7215, %7215
  %7217 = fsub fast float 1.000000e+00, %7216
  %7218 = fmul fast float %5326, %5326
  %7219 = fmul fast float %7218, %7217
  %7220 = fadd fast float %7219, %7216
  %7221 = bitcast float %7220 to i32
  %7222 = ashr i32 %7221, 1
  %7223 = add nsw i32 %7222, 532487669
  %7224 = bitcast i32 %7223 to float
  %7225 = fadd fast float %7224, %5326
  %7226 = fmul fast float %7216, %7211
  %7227 = fsub fast float 1.000000e+00, %7211
  %7228 = fadd fast float %7227, %7226
  %7229 = fmul fast float %7212, %7212
  %7230 = fmul fast float %7229, %7217
  %7231 = fadd fast float %7230, %7216
  %7232 = bitcast float %7231 to i32
  %7233 = ashr i32 %7232, 1
  %7234 = add nsw i32 %7233, 532487669
  %7235 = bitcast i32 %7234 to float
  %7236 = fadd fast float %7235, %7212
  %7237 = fmul fast float %7228, %7228
  %7238 = fmul fast float %7237, %7225
  %7239 = fmul fast float %7238, %7236
  %7240 = fdiv fast float 1.000000e+00, %7239
  %7241 = bitcast float %7216 to i32
  %7242 = sitofp i32 %7241 to float
  %7243 = fmul fast float %7242, 0x3FE7F73180000000
  %7244 = fadd fast float %7243, 0x41AFE27C40000000
  %7245 = fptosi float %7244 to i32
  %7246 = bitcast i32 %7245 to float
  %7247 = fmul fast float %6881, 0x3FD80E9D60000000
  %7248 = fmul fast float %7247, %7198
  %7249 = fadd fast float %7246, %7248
  %7250 = bitcast float %7249 to i32
  %7251 = sub nsw i32 2129859010, %7250
  %7252 = bitcast i32 %7251 to float
  %7253 = fmul fast float %7216, %7240
  %7254 = fmul fast float %7253, %7246
  %7255 = fmul fast float %7254, %7252
  %7256 = call float @dx.op.unary.f32(i32 6, float %7188)  ; FAbs(value)
  %7257 = fsub fast float 1.000000e+00, %7256
  %7258 = bitcast float %7257 to i32
  %7259 = sitofp i32 %7258 to float
  %7260 = fmul fast float %7259, 5.000000e+00
  %7261 = fadd fast float %7260, 0xC1EFBF8940000000
  %7262 = fptosi float %7261 to i32
  %7263 = bitcast i32 %7262 to float
  %7264 = fsub fast float 1.000000e+00, %5275
  %7265 = fsub fast float 1.000000e+00, %5276
  %7266 = fsub fast float 1.000000e+00, %5324
  %7267 = fmul fast float %7263, %7264
  %7268 = fmul fast float %7263, %7265
  %7269 = fmul fast float %7263, %7266
  %7270 = fadd fast float %7267, %5275
  %7271 = fadd fast float %7268, %5276
  %7272 = fadd fast float %7269, %5324
  br i1 %5586, label %7273, label %7296

; <label>:7273                                    ; preds = %7159
  %7274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4090, float %7256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = fadd fast float %7275, -5.000000e-01
  %7279 = fadd fast float %7276, -5.000000e-01
  %7280 = fadd fast float %7277, -5.000000e-01
  %7281 = fmul fast float %5275, 4.000000e+00
  %7282 = fmul fast float %7281, %7264
  %7283 = fmul fast float %7282, %7278
  %7284 = fmul fast float %5276, 4.000000e+00
  %7285 = fmul fast float %7284, %7265
  %7286 = fmul fast float %7285, %7279
  %7287 = fmul fast float %5324, 4.000000e+00
  %7288 = fmul fast float %7287, %7266
  %7289 = fmul fast float %7288, %7280
  %7290 = fadd fast float %7283, %7270
  %7291 = fadd fast float %7286, %7271
  %7292 = fadd fast float %7289, %7272
  %7293 = call float @dx.op.unary.f32(i32 7, float %7290)  ; Saturate(value)
  %7294 = call float @dx.op.unary.f32(i32 7, float %7291)  ; Saturate(value)
  %7295 = call float @dx.op.unary.f32(i32 7, float %7292)  ; Saturate(value)
  br label %7296

; <label>:7296                                    ; preds = %7273, %7159
  %7297 = phi float [ %7293, %7273 ], [ %7270, %7159 ]
  %7298 = phi float [ %7294, %7273 ], [ %7271, %7159 ]
  %7299 = phi float [ %7295, %7273 ], [ %7272, %7159 ]
  %7300 = fmul fast float %7187, 9.843750e-01
  %7301 = fadd fast float %7300, 7.812500e-03
  %7302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7301, float %5576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7303 = extractvalue %dx.types.ResRet.f32 %7302, 2
  %7304 = extractvalue %dx.types.ResRet.f32 %7302, 3
  %7305 = fmul fast float %7303, %5275
  %7306 = fmul fast float %7303, %5276
  %7307 = fmul fast float %7303, %5324
  %7308 = fadd fast float %7305, %7304
  %7309 = fadd fast float %7306, %7304
  %7310 = fadd fast float %7307, %7304
  br i1 %5586, label %7311, label %7334

; <label>:7311                                    ; preds = %7296
  %7312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4090, float %7187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7313 = extractvalue %dx.types.ResRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.ResRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.ResRet.f32 %7312, 2
  %7316 = fadd fast float %7313, -5.000000e-01
  %7317 = fadd fast float %7314, -5.000000e-01
  %7318 = fadd fast float %7315, -5.000000e-01
  %7319 = fmul fast float %5275, 4.000000e+00
  %7320 = fmul fast float %7319, %7264
  %7321 = fmul fast float %7320, %7316
  %7322 = fmul fast float %5276, 4.000000e+00
  %7323 = fmul fast float %7322, %7265
  %7324 = fmul fast float %7323, %7317
  %7325 = fmul fast float %5324, 4.000000e+00
  %7326 = fmul fast float %7325, %7266
  %7327 = fmul fast float %7326, %7318
  %7328 = fadd fast float %7321, %7308
  %7329 = fadd fast float %7324, %7309
  %7330 = fadd fast float %7327, %7310
  %7331 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7332 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7333 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  br label %7334

; <label>:7334                                    ; preds = %7311, %7296
  %7335 = phi float [ %7331, %7311 ], [ %7308, %7296 ]
  %7336 = phi float [ %7332, %7311 ], [ %7309, %7296 ]
  %7337 = phi float [ %7333, %7311 ], [ %7310, %7296 ]
  %7338 = call float @dx.op.binary.f32(i32 35, float %7336, float %7337)  ; FMax(a,b)
  %7339 = call float @dx.op.binary.f32(i32 35, float %7335, float %7338)  ; FMax(a,b)
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = fmul fast float %7297, %7255
  %7342 = fmul fast float %7298, %7255
  %7343 = fmul fast float %7299, %7255
  %7344 = fsub fast float 1.000000e+00, %7188
  %7345 = bitcast float %7344 to i32
  %7346 = sitofp i32 %7345 to float
  %7347 = fmul fast float %7346, 5.000000e+00
  %7348 = fadd fast float %7347, 0xC1EFBF8940000000
  %7349 = fptosi float %7348 to i32
  %7350 = bitcast i32 %7349 to float
  %7351 = fmul fast float %7350, %4091
  %7352 = fmul fast float %7340, %7351
  %7353 = fmul fast float %7352, %5636
  %7354 = fmul fast float %7352, %5637
  %7355 = fmul fast float %7352, %5638
  %7356 = fadd fast float %7353, %7341
  %7357 = fadd fast float %7354, %7342
  %7358 = fadd fast float %7355, %7343
  %7359 = fmul fast float %7176, %4087
  %7360 = fmul fast float %7359, %7194
  %7361 = fmul fast float %7360, %7340
  %7362 = fmul fast float %7177, %4087
  %7363 = fmul fast float %7362, %7194
  %7364 = fmul fast float %7363, %7340
  %7365 = fmul fast float %7178, %4087
  %7366 = fmul fast float %7365, %7194
  %7367 = fmul fast float %7366, %7340
  %7368 = fadd fast float %7361, %6855
  %7369 = fadd fast float %7364, %6856
  %7370 = fadd fast float %7367, %6857
  %7371 = fmul fast float %7360, %7356
  %7372 = fmul fast float %7363, %7357
  %7373 = fmul fast float %7366, %7358
  %7374 = fadd fast float %7371, %6852
  %7375 = fadd fast float %7372, %6853
  %7376 = fadd fast float %7373, %6854
  br label %6984

; <label>:7377                                    ; preds = %6984
  br label %7378

; <label>:7378                                    ; preds = %7377, %6818
  %7379 = phi float [ %6820, %6818 ], [ %6985, %7377 ]
  %7380 = phi float [ %6821, %6818 ], [ %6986, %7377 ]
  %7381 = phi float [ %6822, %6818 ], [ %6987, %7377 ]
  %7382 = phi float [ %6823, %6818 ], [ %6988, %7377 ]
  %7383 = phi float [ %6824, %6818 ], [ %6989, %7377 ]
  %7384 = phi float [ %6825, %6818 ], [ %6990, %7377 ]
  %7385 = add i32 %6819, 1
  %7386 = icmp ugt i32 %7385, %6815
  br i1 %7386, label %7387, label %6818

; <label>:7387                                    ; preds = %7378
  br label %7388

; <label>:7388                                    ; preds = %7387, %6768, %6758
  %7389 = phi float [ %6759, %6758 ], [ %6759, %6768 ], [ %7379, %7387 ]
  %7390 = phi float [ %6760, %6758 ], [ %6760, %6768 ], [ %7380, %7387 ]
  %7391 = phi float [ %6761, %6758 ], [ %6761, %6768 ], [ %7381, %7387 ]
  %7392 = phi float [ %6762, %6758 ], [ %6762, %6768 ], [ %7382, %7387 ]
  %7393 = phi float [ %6763, %6758 ], [ %6763, %6768 ], [ %7383, %7387 ]
  %7394 = phi float [ %6764, %6758 ], [ %6764, %6768 ], [ %7384, %7387 ]
  %7395 = fmul fast float %4087, %4087
  %7396 = fsub fast float 1.000000e+00, %7395
  %7397 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7396, float %7396, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7398 = fsub fast float 1.000000e+00, %7397
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7401 = fmul fast float %7400, %5642
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7404 = fsub fast float 1.000000e+00, %4095
  %7405 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7406 = fadd fast float %7394, %4093
  %7407 = fmul fast float %7406, %4095
  %7408 = fmul fast float %7405, %7403
  %7409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.f32 %7409, 3
  %7411 = fmul fast float %7392, %5272
  %7412 = fmul fast float %7393, %5273
  %7413 = fmul fast float %7394, %5274
  %7414 = fcmp fast ogt float %106, %233
  %7415 = and i1 %7414, %4498
  %7416 = or i1 %4504, %7415
  %7417 = icmp eq i32 %4497, 2
  %7418 = fcmp fast ole float %106, %233
  %7419 = and i1 %7418, %7417
  %7420 = or i1 %7419, %7416
  br i1 %7415, label %7421, label %7678

; <label>:7421                                    ; preds = %7388
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7425 = fmul fast float %7423, %115
  %7426 = fmul fast float %7424, %116
  %7427 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7428 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7429 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7427, float %7428, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7429, 3
  %7434 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7427, float %7428, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = extractvalue %dx.types.ResRet.f32 %7434, 1
  %7437 = extractvalue %dx.types.ResRet.f32 %7434, 2
  %7438 = extractvalue %dx.types.ResRet.f32 %7434, 3
  %7439 = call float @dx.op.binary.f32(i32 35, float %7431, float %7432)  ; FMax(a,b)
  %7440 = call float @dx.op.binary.f32(i32 35, float %7430, float %7439)  ; FMax(a,b)
  %7441 = call float @dx.op.binary.f32(i32 35, float %7440, float %7433)  ; FMax(a,b)
  %7442 = call float @dx.op.binary.f32(i32 36, float %7436, float %7437)  ; FMin(a,b)
  %7443 = call float @dx.op.binary.f32(i32 36, float %7435, float %7442)  ; FMin(a,b)
  %7444 = call float @dx.op.binary.f32(i32 36, float %7443, float %7438)  ; FMin(a,b)
  %7445 = fmul fast float %7441, 2.550000e+02
  %7446 = fadd fast float %7445, 0x3F70101020000000
  %7447 = fptoui float %7446 to i32
  %7448 = fmul fast float %7444, 2.550000e+02
  %7449 = fadd fast float %7448, 0x3F70101020000000
  %7450 = fptoui float %7449 to i32
  %7451 = icmp ult i32 %7447, %7450
  br i1 %7451, label %7452, label %7620

; <label>:7452                                    ; preds = %7421
  %7453 = fcmp fast ogt float %105, 9.843750e-01
  %7454 = fadd fast float %106, -4.000000e+00
  %7455 = select i1 %7453, float -4.000000e+00, float %7454
  %7456 = call float @dx.op.binary.f32(i32 35, float %7455, float 0.000000e+00)  ; FMax(a,b)
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = fadd fast float %7458, %7456
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7461 = fmul fast float %7459, %7460
  %7462 = call float @dx.op.unary.f32(i32 23, float %7461)  ; Log(value)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7464 = fmul fast float %7463, %7462
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 2
  %7467 = fmul fast float %7464, %7466
  %7468 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7469 = uitofp i32 %7447 to float
  %7470 = uitofp i32 %7450 to float
  %7471 = fadd fast float %7469, 5.000000e-01
  %7472 = fadd fast float %7470, 5.000000e-01
  %7473 = fmul fast float %7466, %7471
  %7474 = fmul fast float %7466, %7472
  %7475 = fadd fast float %7473, 0x3F0FFB4800000000
  %7476 = fadd fast float %7474, 0xBF0FFB4800000000
  %7477 = call float @dx.op.binary.f32(i32 35, float %7468, float %7475)  ; FMax(a,b)
  %7478 = call float @dx.op.binary.f32(i32 36, float %7477, float %7476)  ; FMin(a,b)
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7482 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7483 = fmul fast float %7480, %7478
  %7484 = fadd fast float %7482, %7483
  %7485 = fadd fast float %7482, %7481
  %7486 = fsub fast float %7480, %7481
  %7487 = fadd fast float %7486, %7482
  %7488 = call float @dx.op.binary.f32(i32 35, float %7484, float %7485)  ; FMax(a,b)
  %7489 = call float @dx.op.binary.f32(i32 36, float %7488, float %7487)  ; FMin(a,b)
  %7490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7427, float %7428, float %7489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.ResRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.ResRet.f32 %7490, 2
  %7494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.i32 %7494, 0
  %7496 = extractvalue %dx.types.CBufRet.i32 %7494, 1
  %7497 = uitofp i32 %7495 to float
  %7498 = uitofp i32 %7496 to float
  %7499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7500 = extractvalue %dx.types.CBufRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.CBufRet.f32 %7499, 1
  %7502 = fmul fast float %7497, %7427
  %7503 = fmul fast float %7498, %7428
  %7504 = fadd fast float %7502, -5.000000e-01
  %7505 = fadd fast float %7503, -5.000000e-01
  %7506 = call float @dx.op.unary.f32(i32 22, float %7504)  ; Frc(value)
  %7507 = call float @dx.op.unary.f32(i32 22, float %7505)  ; Frc(value)
  %7508 = fmul fast float %7506, %7506
  %7509 = fmul fast float %7508, %7506
  %7510 = fsub fast float 3.000000e+00, %7506
  %7511 = fmul fast float %7508, %7510
  %7512 = fmul fast float %7506, 3.000000e+00
  %7513 = fmul fast float %7509, 3.000000e+00
  %7514 = fmul fast float %7508, 6.000000e+00
  %7515 = fsub fast float %7513, %7514
  %7516 = fadd fast float %7515, 4.000000e+00
  %7517 = fmul fast float %7516, 0x3FC5555560000000
  %7518 = fmul fast float %7509, -3.000000e+00
  %7519 = fadd fast float %7508, %7506
  %7520 = fmul fast float %7519, 3.000000e+00
  %7521 = fadd fast float %7518, 1.000000e+00
  %7522 = fadd fast float %7521, %7520
  %7523 = fmul fast float %7509, 0x3FC5555560000000
  %7524 = fmul fast float %7507, %7507
  %7525 = fmul fast float %7524, %7507
  %7526 = fsub fast float 3.000000e+00, %7507
  %7527 = fmul fast float %7524, %7526
  %7528 = fmul fast float %7507, 3.000000e+00
  %7529 = fmul fast float %7525, 3.000000e+00
  %7530 = fmul fast float %7524, 6.000000e+00
  %7531 = fsub fast float %7529, %7530
  %7532 = fadd fast float %7531, 4.000000e+00
  %7533 = fmul fast float %7532, 0x3FC5555560000000
  %7534 = fmul fast float %7525, -3.000000e+00
  %7535 = fadd fast float %7524, %7507
  %7536 = fmul fast float %7535, 3.000000e+00
  %7537 = fadd fast float %7534, 1.000000e+00
  %7538 = fadd fast float %7537, %7536
  %7539 = fmul fast float %7525, 0x3FC5555560000000
  %7540 = fadd fast float %7506, 1.000000e+00
  %7541 = fsub fast float 1.000000e+00, %7512
  %7542 = fadd fast float %7541, %7511
  %7543 = fadd fast float %7542, %7516
  %7544 = fmul fast float %7543, 0x3FC5555560000000
  %7545 = fdiv fast float %7517, %7544
  %7546 = fsub fast float %7540, %7545
  %7547 = fsub fast float 1.000000e+00, %7506
  %7548 = fadd fast float %7522, %7509
  %7549 = fmul fast float %7548, 0x3FC5555560000000
  %7550 = fdiv fast float %7523, %7549
  %7551 = fadd fast float %7547, %7550
  %7552 = fadd fast float %7507, 1.000000e+00
  %7553 = fsub fast float 1.000000e+00, %7528
  %7554 = fadd fast float %7553, %7527
  %7555 = fadd fast float %7554, %7532
  %7556 = fmul fast float %7555, 0x3FC5555560000000
  %7557 = fdiv fast float %7533, %7556
  %7558 = fsub fast float %7552, %7557
  %7559 = fsub fast float 1.000000e+00, %7507
  %7560 = fadd fast float %7538, %7525
  %7561 = fmul fast float %7560, 0x3FC5555560000000
  %7562 = fdiv fast float %7539, %7561
  %7563 = fadd fast float %7562, %7559
  %7564 = fmul fast float %7546, %7500
  %7565 = fsub fast float %7427, %7564
  %7566 = fmul fast float %7551, %7500
  %7567 = fadd fast float %7566, %7427
  %7568 = fmul fast float %7563, %7501
  %7569 = fadd fast float %7568, %7428
  %7570 = fmul fast float %7558, %7501
  %7571 = fsub fast float %7428, %7570
  %7572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7565, float %7571, float %7489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7573 = extractvalue %dx.types.ResRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7572, 2
  %7576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7567, float %7571, float %7489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7577 = extractvalue %dx.types.ResRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.ResRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.ResRet.f32 %7576, 2
  %7580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7565, float %7569, float %7489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7581 = extractvalue %dx.types.ResRet.f32 %7580, 0
  %7582 = extractvalue %dx.types.ResRet.f32 %7580, 1
  %7583 = extractvalue %dx.types.ResRet.f32 %7580, 2
  %7584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7567, float %7569, float %7489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.ResRet.f32 %7584, 2
  %7588 = fsub fast float %7581, %7573
  %7589 = fsub fast float %7582, %7574
  %7590 = fsub fast float %7583, %7575
  %7591 = fmul fast float %7588, %7561
  %7592 = fmul fast float %7589, %7561
  %7593 = fmul fast float %7590, %7561
  %7594 = fadd fast float %7591, %7573
  %7595 = fadd fast float %7592, %7574
  %7596 = fadd fast float %7593, %7575
  %7597 = fsub fast float %7585, %7577
  %7598 = fsub fast float %7586, %7578
  %7599 = fsub fast float %7587, %7579
  %7600 = fmul fast float %7597, %7561
  %7601 = fmul fast float %7598, %7561
  %7602 = fmul fast float %7599, %7561
  %7603 = fsub fast float %7577, %7594
  %7604 = fadd fast float %7603, %7600
  %7605 = fsub fast float %7578, %7595
  %7606 = fadd fast float %7605, %7601
  %7607 = fsub fast float %7579, %7596
  %7608 = fadd fast float %7607, %7602
  %7609 = fmul fast float %7604, %7549
  %7610 = fmul fast float %7606, %7549
  %7611 = fmul fast float %7608, %7549
  %7612 = fadd fast float %7609, %7594
  %7613 = fadd fast float %7610, %7595
  %7614 = fadd fast float %7611, %7596
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7617 = fmul fast float %7612, %7616
  %7618 = fmul fast float %7613, %7616
  %7619 = fmul fast float %7614, %7616
  br label %7620

; <label>:7620                                    ; preds = %7452, %7421
  %7621 = phi float [ %7491, %7452 ], [ 1.000000e+00, %7421 ]
  %7622 = phi float [ %7492, %7452 ], [ 1.000000e+00, %7421 ]
  %7623 = phi float [ %7493, %7452 ], [ 1.000000e+00, %7421 ]
  %7624 = phi float [ %7617, %7452 ], [ 0.000000e+00, %7421 ]
  %7625 = phi float [ %7618, %7452 ], [ 0.000000e+00, %7421 ]
  %7626 = phi float [ %7619, %7452 ], [ 0.000000e+00, %7421 ]
  %7627 = fmul fast float %7624, %7398
  %7628 = fmul fast float %7625, %7398
  %7629 = fmul fast float %7626, %7398
  %7630 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7622, float %7623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7631 = call float @dx.op.dot3.f32(i32 55, float %7627, float %7628, float %7629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7632 = select i1 %270, float %7630, float %7621
  %7633 = select i1 %270, float %7630, float %7622
  %7634 = select i1 %270, float 1.000000e+00, float %7623
  %7635 = select i1 %270, float %7631, float %7627
  %7636 = select i1 %270, float 0.000000e+00, float %7628
  %7637 = select i1 %270, float 0.000000e+00, float %7629
  %7638 = fmul fast float %7632, %7411
  %7639 = fmul fast float %7633, %7412
  %7640 = fmul fast float %7634, %7413
  %7641 = fadd fast float %7638, %7635
  %7642 = fadd fast float %7639, %7636
  %7643 = fadd fast float %7637, %7640
  %7644 = fmul fast float %7632, %7389
  %7645 = fmul fast float %7633, %7390
  %7646 = fmul fast float %7634, %7391
  %7647 = fmul fast float %147, %7423
  %7648 = fmul fast float %149, %7424
  %7649 = fsub fast float 1.000000e+00, %7647
  %7650 = fsub fast float 1.000000e+00, %7648
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.CBufRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.CBufRet.f32 %7651, 2
  %7655 = fmul fast float %7649, %7652
  %7656 = fmul fast float %7649, %7653
  %7657 = fmul fast float %7649, %7654
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.CBufRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7662 = fmul fast float %7650, %7659
  %7663 = fmul fast float %7650, %7660
  %7664 = fmul fast float %7650, %7661
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = fadd fast float %7662, %7666
  %7670 = fadd fast float %7669, %7655
  %7671 = fadd fast float %7663, %7667
  %7672 = fadd fast float %7671, %7656
  %7673 = fadd fast float %7664, %7668
  %7674 = fadd fast float %7673, %7657
  %7675 = fmul fast float %7670, %233
  %7676 = fmul fast float %7672, %233
  %7677 = fmul fast float %7674, %233
  br label %7678

; <label>:7678                                    ; preds = %7620, %7388
  %7679 = phi float [ %7675, %7620 ], [ %198, %7388 ]
  %7680 = phi float [ %7676, %7620 ], [ %199, %7388 ]
  %7681 = phi float [ %7677, %7620 ], [ %200, %7388 ]
  %7682 = phi float [ %233, %7620 ], [ %106, %7388 ]
  %7683 = phi float [ %7641, %7620 ], [ %7411, %7388 ]
  %7684 = phi float [ %7642, %7620 ], [ %7412, %7388 ]
  %7685 = phi float [ %7643, %7620 ], [ %7413, %7388 ]
  %7686 = phi float [ %7644, %7620 ], [ %7389, %7388 ]
  %7687 = phi float [ %7645, %7620 ], [ %7390, %7388 ]
  %7688 = phi float [ %7646, %7620 ], [ %7391, %7388 ]
  %7689 = phi float [ %7621, %7620 ], [ 1.000000e+00, %7388 ]
  br i1 %7420, label %8844, label %7690

; <label>:7690                                    ; preds = %7678
  %7691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.CBufRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.CBufRet.f32 %7691, 2
  %7695 = extractvalue %dx.types.CBufRet.f32 %7691, 3
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 3
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 3
  %7715 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7716 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7717 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7718 = fcmp fast olt float %7717, -5.000000e-01
  %7719 = call float @dx.op.dot3.f32(i32 55, float %7679, float %7680, float %7681, float %7679, float %7680, float %7681)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = call float @dx.op.unary.f32(i32 25, float %7719)  ; Rsqrt(value)
  %7721 = fmul fast float %7720, %7719
  %7722 = fmul fast float %7720, %7679
  %7723 = fmul fast float %7720, %7680
  %7724 = fmul fast float %7720, %7681
  %7725 = fadd fast float %7721, %7695
  %7726 = call float @dx.op.dot3.f32(i32 55, float %7722, float %7723, float %7724, float %7692, float %7693, float %7694)  ; Dot3(ax,ay,az,bx,by,bz)
  %7727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.i32 %7727, 1
  %7729 = and i32 %7728, 1
  %7730 = icmp ne i32 %7729, 0
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7733 = fcmp fast ogt float %7732, 0.000000e+00
  %7734 = and i1 %7730, %7733
  br i1 %7734, label %7735, label %8141, !dx.controlflow.hints !128

; <label>:7735                                    ; preds = %7690
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7739 = extractvalue %dx.types.CBufRet.f32 %7738, 2
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7742 = fsub fast float %7739, %7741
  %7743 = and i32 %7728, 2
  %7744 = extractvalue %dx.types.CBufRet.i32 %7727, 0
  %7745 = call i32 @dx.op.binary.i32(i32 40, i32 %7744, i32 3)  ; UMin(a,b)
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.CBufRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7751 = fsub fast float %7747, %7749
  %7752 = fsub fast float %7748, %7750
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 0
  %7755 = fcmp fast ogt float %7754, 0.000000e+00
  %7756 = fsub fast float -0.000000e+00, %7751
  %7757 = fsub fast float -0.000000e+00, %7752
  %7758 = call float @dx.op.dot2.f32(i32 54, float %7722, float %7723, float %7722, float %7723)  ; Dot2(ax,ay,bx,by)
  %7759 = call float @dx.op.dot2.f32(i32 54, float %7722, float %7723, float %7756, float %7757)  ; Dot2(ax,ay,bx,by)
  %7760 = fmul fast float %7759, 2.000000e+00
  %7761 = call float @dx.op.dot2.f32(i32 54, float %7756, float %7757, float %7756, float %7757)  ; Dot2(ax,ay,bx,by)
  %7762 = fmul fast float %7754, %7754
  %7763 = fsub fast float %7761, %7762
  %7764 = fmul fast float %7760, %7760
  %7765 = fmul fast float %7758, 4.000000e+00
  %7766 = fmul fast float %7765, %7763
  %7767 = fsub fast float %7764, %7766
  %7768 = fcmp fast ogt float %7767, 0.000000e+00
  br i1 %7768, label %7769, label %7784

; <label>:7769                                    ; preds = %7735
  %7770 = fcmp fast ogt float %7760, 0.000000e+00
  %7771 = call float @dx.op.unary.f32(i32 24, float %7767)  ; Sqrt(value)
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = select i1 %7770, float %7771, float %7772
  %7774 = fadd fast float %7773, %7760
  %7775 = fmul float %7774, -5.000000e-01
  %7776 = fdiv fast float %7775, %7758
  %7777 = call float @dx.op.binary.f32(i32 35, float %7776, float 0.000000e+00)  ; FMax(a,b)
  %7778 = call float @dx.op.binary.f32(i32 36, float %7721, float %7777)  ; FMin(a,b)
  %7779 = fdiv fast float %7763, %7775
  %7780 = call float @dx.op.binary.f32(i32 35, float %7779, float 0.000000e+00)  ; FMax(a,b)
  %7781 = call float @dx.op.binary.f32(i32 36, float %7721, float %7780)  ; FMin(a,b)
  %7782 = call float @dx.op.binary.f32(i32 36, float %7778, float %7781)  ; FMin(a,b)
  %7783 = call float @dx.op.binary.f32(i32 35, float %7778, float %7781)  ; FMax(a,b)
  br label %7784

; <label>:7784                                    ; preds = %7769, %7735
  %7785 = phi float [ %7783, %7769 ], [ -1.000000e+00, %7735 ]
  %7786 = phi float [ %7782, %7769 ], [ -1.000000e+00, %7735 ]
  %7787 = phi i1 [ true, %7769 ], [ false, %7735 ]
  %7788 = and i1 %7755, %7787
  br i1 %7788, label %7789, label %7791

; <label>:7789                                    ; preds = %7784
  %7790 = fcmp fast oeq float %7786, %7785
  br i1 %7790, label %8094, label %7792

; <label>:7791                                    ; preds = %7784
  br i1 %7755, label %8094, label %7792

; <label>:7792                                    ; preds = %7791, %7789
  %7793 = phi float [ %7721, %7791 ], [ %7785, %7789 ]
  %7794 = phi float [ 0.000000e+00, %7791 ], [ %7786, %7789 ]
  %7795 = icmp ne i32 %7743, 0
  %7796 = fmul fast float %7793, %7724
  %7797 = fadd fast float %7796, %7737
  %7798 = fmul fast float %7797, %7793
  %7799 = select i1 %7795, float 0.000000e+00, float %7798
  %7800 = fcmp fast oeq float %7724, 0.000000e+00
  %7801 = fdiv fast float %7742, %7724
  %7802 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7801)  ; FMax(a,b)
  %7803 = select i1 %7800, float %7793, float %7802
  %7804 = call float @dx.op.binary.f32(i32 36, float %7793, float %7803)  ; FMin(a,b)
  %7805 = fcmp fast ogt float %7724, 0.000000e+00
  %7806 = fcmp fast olt float %7742, 0.000000e+00
  br i1 %7805, label %7807, label %7864

; <label>:7807                                    ; preds = %7792
  %7808 = icmp eq i32 %7743, 0
  br i1 %7806, label %7809, label %7853

; <label>:7809                                    ; preds = %7807
  %7810 = select i1 %7808, float %7793, float 0.000000e+00
  %7811 = fsub fast float -0.000000e+00, %7810
  %7812 = call float @dx.op.unary.f32(i32 6, float %7811)  ; FAbs(value)
  %7813 = fmul fast float %7810, %7724
  %7814 = fadd fast float %7813, %7737
  %7815 = fmul fast float %7812, %7814
  %7816 = fsub fast float %7799, %7815
  %7817 = fsub fast float %7793, %7812
  %7818 = select i1 %7808, float %7817, float 0.000000e+00
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.CBufRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7826 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %7827 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7829 = extractvalue %dx.types.CBufRet.f32 %7828, 3
  %7830 = call float @dx.op.binary.f32(i32 36, float %7816, float %7829)  ; FMin(a,b)
  %7831 = fmul fast float %7827, %7818
  %7832 = call float @dx.op.unary.f32(i32 7, float %7831)  ; Saturate(value)
  %7833 = fsub fast float %7824, %7820
  %7834 = fsub fast float %7825, %7821
  %7835 = fsub fast float %7826, %7822
  %7836 = fmul fast float %7832, %7833
  %7837 = fmul fast float %7832, %7834
  %7838 = fmul fast float %7832, %7835
  %7839 = fadd fast float %7836, %7820
  %7840 = fadd fast float %7837, %7821
  %7841 = fadd fast float %7838, %7822
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = fadd fast float %7844, %7843
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7848 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7849 = fadd fast float %7848, %7847
  %7850 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7851 = fmul fast float %7846, %7830
  %7852 = fmul fast float %7851, %7850
  br label %8094

; <label>:7853                                    ; preds = %7807
  br i1 %7808, label %7854, label %7875

; <label>:7854                                    ; preds = %7853
  %7855 = call float @dx.op.binary.f32(i32 36, float %7804, float %7794)  ; FMin(a,b)
  %7856 = fsub fast float %7804, %7855
  %7857 = fsub fast float %7856, %7793
  %7858 = call float @dx.op.unary.f32(i32 6, float %7857)  ; FAbs(value)
  %7859 = fadd fast float %7856, %7793
  %7860 = fmul fast float %7859, %7724
  %7861 = fadd fast float %7860, %7737
  %7862 = fmul fast float %7861, %7858
  %7863 = fsub fast float %7799, %7862
  br label %7875

; <label>:7864                                    ; preds = %7792
  br i1 %7806, label %7865, label %7875

; <label>:7865                                    ; preds = %7864
  %7866 = call float @dx.op.binary.f32(i32 35, float %7794, float %7804)  ; FMax(a,b)
  %7867 = icmp eq i32 %7743, 0
  %7868 = select i1 %7867, float %7804, float 0.000000e+00
  %7869 = fsub fast float -0.000000e+00, %7868
  %7870 = call float @dx.op.unary.f32(i32 6, float %7869)  ; FAbs(value)
  %7871 = fmul fast float %7868, %7724
  %7872 = fadd fast float %7871, %7737
  %7873 = fmul fast float %7870, %7872
  %7874 = fsub fast float %7799, %7873
  br label %7875

; <label>:7875                                    ; preds = %7865, %7864, %7854, %7853
  %7876 = phi float [ %7794, %7853 ], [ %7794, %7854 ], [ %7866, %7865 ], [ %7794, %7864 ]
  %7877 = phi float [ 0.000000e+00, %7853 ], [ %7858, %7854 ], [ %7870, %7865 ], [ 0.000000e+00, %7864 ]
  %7878 = phi float [ %7799, %7853 ], [ %7863, %7854 ], [ %7874, %7865 ], [ %7799, %7864 ]
  %7879 = phi float [ %7804, %7853 ], [ %7804, %7854 ], [ %7793, %7865 ], [ %7793, %7864 ]
  %7880 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %7880, align 4, !tbaa !129, !noalias !131
  %7881 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %7881, align 4, !tbaa !129, !noalias !131
  %7882 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %7882, align 4, !tbaa !129, !noalias !131
  %7883 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %7883, align 4, !tbaa !129, !noalias !131
  %7884 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %7884, align 4, !tbaa !129, !noalias !131
  %7885 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %7885, align 4, !tbaa !129, !noalias !131
  %7886 = icmp sgt i32 %7745, 0
  br i1 %7886, label %7887, label %7948

; <label>:7887                                    ; preds = %7875
  br label %7888

; <label>:7888                                    ; preds = %7937, %7887
  %7889 = phi i32 [ %7938, %7937 ], [ 0, %7887 ]
  %7890 = phi i32 [ %7939, %7937 ], [ 0, %7887 ]
  %7891 = add nuw i32 %7890, 171
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7891)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 0
  %7894 = extractvalue %dx.types.CBufRet.f32 %7892, 1
  %7895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7895, 0
  %7897 = extractvalue %dx.types.CBufRet.f32 %7895, 1
  %7898 = fsub fast float %7893, %7896
  %7899 = fsub fast float %7894, %7897
  %7900 = extractvalue %dx.types.CBufRet.f32 %7892, 2
  %7901 = fsub fast float -0.000000e+00, %7898
  %7902 = fsub fast float -0.000000e+00, %7899
  %7903 = call float @dx.op.dot2.f32(i32 54, float %7722, float %7723, float %7901, float %7902)  ; Dot2(ax,ay,bx,by)
  %7904 = fmul fast float %7903, 2.000000e+00
  %7905 = call float @dx.op.dot2.f32(i32 54, float %7901, float %7902, float %7901, float %7902)  ; Dot2(ax,ay,bx,by)
  %7906 = fmul fast float %7900, %7900
  %7907 = fsub fast float %7905, %7906
  %7908 = fmul fast float %7904, %7904
  %7909 = fmul fast float %7765, %7907
  %7910 = fsub fast float %7908, %7909
  %7911 = fcmp fast ogt float %7910, 0.000000e+00
  br i1 %7911, label %7912, label %7927

; <label>:7912                                    ; preds = %7888
  %7913 = fcmp fast ogt float %7904, 0.000000e+00
  %7914 = call float @dx.op.unary.f32(i32 24, float %7910)  ; Sqrt(value)
  %7915 = fsub fast float -0.000000e+00, %7914
  %7916 = select i1 %7913, float %7914, float %7915
  %7917 = fadd fast float %7916, %7904
  %7918 = fmul float %7917, -5.000000e-01
  %7919 = fdiv fast float %7918, %7758
  %7920 = call float @dx.op.binary.f32(i32 35, float %7919, float 0.000000e+00)  ; FMax(a,b)
  %7921 = call float @dx.op.binary.f32(i32 36, float %7793, float %7920)  ; FMin(a,b)
  %7922 = fdiv fast float %7907, %7918
  %7923 = call float @dx.op.binary.f32(i32 35, float %7922, float 0.000000e+00)  ; FMax(a,b)
  %7924 = call float @dx.op.binary.f32(i32 36, float %7793, float %7923)  ; FMin(a,b)
  %7925 = call float @dx.op.binary.f32(i32 36, float %7921, float %7924)  ; FMin(a,b)
  %7926 = call float @dx.op.binary.f32(i32 35, float %7921, float %7924)  ; FMax(a,b)
  br label %7927

; <label>:7927                                    ; preds = %7912, %7888
  %7928 = phi float [ %7926, %7912 ], [ -1.000000e+00, %7888 ]
  %7929 = phi float [ %7925, %7912 ], [ -1.000000e+00, %7888 ]
  %7930 = phi i1 [ true, %7912 ], [ false, %7888 ]
  br i1 %7930, label %7931, label %7937

; <label>:7931                                    ; preds = %7927
  %7932 = call float @dx.op.binary.f32(i32 35, float %7876, float %7929)  ; FMax(a,b)
  %7933 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %7890
  store float %7932, float* %7933, align 4, !tbaa !129, !noalias !131
  %7934 = call float @dx.op.binary.f32(i32 35, float %7876, float %7928)  ; FMax(a,b)
  %7935 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %7890
  store float %7934, float* %7935, align 4, !tbaa !129, !noalias !131
  %7936 = add nsw i32 %7889, 1
  br label %7937

; <label>:7937                                    ; preds = %7931, %7927
  %7938 = phi i32 [ %7936, %7931 ], [ %7889, %7927 ]
  %7939 = add nuw nsw i32 %7890, 1
  %7940 = icmp eq i32 %7939, %7745
  br i1 %7940, label %7941, label %7888

; <label>:7941                                    ; preds = %7937
  %7942 = load float, float* %7882, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7943 = load float, float* %7881, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %7944 = load float, float* %7880, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %7945 = load float, float* %7885, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7946 = load float, float* %7884, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %7947 = load float, float* %7883, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %7948

; <label>:7948                                    ; preds = %7941, %7875
  %7949 = phi float [ -1.000000e+00, %7875 ], [ %7947, %7941 ]
  %7950 = phi float [ -1.000000e+00, %7875 ], [ %7946, %7941 ]
  %7951 = phi float [ -1.000000e+00, %7875 ], [ %7945, %7941 ]
  %7952 = phi float [ -1.000000e+00, %7875 ], [ %7944, %7941 ]
  %7953 = phi float [ -1.000000e+00, %7875 ], [ %7943, %7941 ]
  %7954 = phi float [ -1.000000e+00, %7875 ], [ %7942, %7941 ]
  %7955 = phi i32 [ 0, %7875 ], [ %7938, %7941 ]
  %7956 = call float @dx.op.binary.f32(i32 36, float %7953, float %7954)  ; FMin(a,b)
  %7957 = call float @dx.op.binary.f32(i32 36, float %7952, float %7956)  ; FMin(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7952, float %7953)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 36, float %7958, float %7954)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 36, float %7952, float %7953)  ; FMin(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %7960, float %7959)  ; FMax(a,b)
  %7962 = call float @dx.op.binary.f32(i32 35, float %7953, float %7954)  ; FMax(a,b)
  %7963 = call float @dx.op.binary.f32(i32 35, float %7952, float %7962)  ; FMax(a,b)
  store float %7957, float* %7880, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %7961, float* %7881, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %7963, float* %7882, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %7964 = call float @dx.op.binary.f32(i32 36, float %7950, float %7951)  ; FMin(a,b)
  %7965 = call float @dx.op.binary.f32(i32 36, float %7949, float %7964)  ; FMin(a,b)
  %7966 = call float @dx.op.binary.f32(i32 35, float %7949, float %7950)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 36, float %7966, float %7951)  ; FMin(a,b)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7949, float %7950)  ; FMin(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7968, float %7967)  ; FMax(a,b)
  %7970 = call float @dx.op.binary.f32(i32 35, float %7950, float %7951)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 35, float %7949, float %7970)  ; FMax(a,b)
  store float %7965, float* %7883, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %7969, float* %7884, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %7971, float* %7885, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %7972 = sub nsw i32 3, %7955
  %7973 = icmp sgt i32 %7972, 2
  br i1 %7973, label %7974, label %8012

; <label>:7974                                    ; preds = %7948
  %7975 = icmp eq i32 %7743, 0
  %7976 = fsub fast float %7793, %7877
  %7977 = select i1 %7975, float %7976, float %7877
  %7978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7979 = extractvalue %dx.types.CBufRet.f32 %7978, 0
  %7980 = extractvalue %dx.types.CBufRet.f32 %7978, 1
  %7981 = extractvalue %dx.types.CBufRet.f32 %7978, 2
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 0
  %7984 = extractvalue %dx.types.CBufRet.f32 %7982, 1
  %7985 = extractvalue %dx.types.CBufRet.f32 %7982, 2
  %7986 = extractvalue %dx.types.CBufRet.f32 %7982, 3
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7989 = call float @dx.op.binary.f32(i32 36, float %7878, float %7988)  ; FMin(a,b)
  %7990 = fmul fast float %7986, %7977
  %7991 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7992 = fsub fast float %7983, %7979
  %7993 = fsub fast float %7984, %7980
  %7994 = fsub fast float %7985, %7981
  %7995 = fmul fast float %7991, %7992
  %7996 = fmul fast float %7991, %7993
  %7997 = fmul fast float %7991, %7994
  %7998 = fadd fast float %7995, %7979
  %7999 = fadd fast float %7996, %7980
  %8000 = fadd fast float %7997, %7981
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 0
  %8003 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8004 = fadd fast float %8003, %8002
  %8005 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8001, 2
  %8007 = extractvalue %dx.types.CBufRet.f32 %8001, 3
  %8008 = fadd fast float %8007, %8006
  %8009 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8010 = fmul fast float %8005, %7989
  %8011 = fmul fast float %8010, %8009
  br label %8094

; <label>:8012                                    ; preds = %7948
  %8013 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %7972
  %8014 = load float, float* %8013, align 4, !tbaa !129, !noalias !131
  %8015 = fcmp fast olt float %8014, %7879
  %8016 = icmp sgt i32 %7955, 0
  %8017 = and i1 %8016, %8015
  br i1 %8017, label %8018, label %8055

; <label>:8018                                    ; preds = %8012
  br label %8019

; <label>:8019                                    ; preds = %8048, %8018
  %8020 = phi float [ %8049, %8048 ], [ %7877, %8018 ]
  %8021 = phi float [ %8050, %8048 ], [ %7878, %8018 ]
  %8022 = phi float [ %8030, %8048 ], [ %8014, %8018 ]
  %8023 = phi i32 [ %8027, %8048 ], [ %7972, %8018 ]
  %8024 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8023
  %8025 = load float, float* %8024, align 4, !tbaa !129, !noalias !131
  %8026 = icmp slt i32 %8023, 2
  %8027 = add nsw i32 %8023, 1
  %8028 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8027
  %8029 = load float, float* %8028, align 4, !tbaa !129, !noalias !131
  %8030 = select i1 %8026, float %8029, float %7793
  %8031 = call float @dx.op.binary.f32(i32 36, float %8030, float %8025)  ; FMin(a,b)
  %8032 = call float @dx.op.binary.f32(i32 36, float %7879, float %8031)  ; FMin(a,b)
  %8033 = icmp eq i32 %7743, 0
  %8034 = fadd fast float %8032, %8022
  %8035 = fmul fast float %8034, %7724
  %8036 = fadd fast float %8035, %7737
  br i1 %8033, label %8042, label %8037

; <label>:8037                                    ; preds = %8019
  %8038 = fsub fast float %8032, %8022
  %8039 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8038)  ; FMax(a,b)
  %8040 = fmul fast float %8039, %8036
  %8041 = fadd fast float %8040, %8021
  br label %8048

; <label>:8042                                    ; preds = %8019
  %8043 = fsub fast float %8022, %8032
  %8044 = call float @dx.op.unary.f32(i32 6, float %8043)  ; FAbs(value)
  %8045 = fadd fast float %8044, %8020
  %8046 = fmul fast float %8044, %8036
  %8047 = fsub fast float %8021, %8046
  br label %8048

; <label>:8048                                    ; preds = %8042, %8037
  %8049 = phi float [ %8039, %8037 ], [ %8045, %8042 ]
  %8050 = phi float [ %8041, %8037 ], [ %8047, %8042 ]
  %8051 = fcmp fast olt float %8030, %7879
  %8052 = icmp slt i32 %8027, 3
  %8053 = and i1 %8052, %8051
  br i1 %8053, label %8019, label %8054

; <label>:8054                                    ; preds = %8048
  br label %8055

; <label>:8055                                    ; preds = %8054, %8012
  %8056 = phi float [ %7877, %8012 ], [ %8049, %8054 ]
  %8057 = phi float [ %7878, %8012 ], [ %8050, %8054 ]
  %8058 = fsub fast float %7793, %8056
  %8059 = select i1 %7795, float %8056, float %8058
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.CBufRet.f32 %8060, 2
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.CBufRet.f32 %8064, 3
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 3
  %8071 = call float @dx.op.binary.f32(i32 36, float %8057, float %8070)  ; FMin(a,b)
  %8072 = fmul fast float %8068, %8059
  %8073 = call float @dx.op.unary.f32(i32 7, float %8072)  ; Saturate(value)
  %8074 = fsub fast float %8065, %8061
  %8075 = fsub fast float %8066, %8062
  %8076 = fsub fast float %8067, %8063
  %8077 = fmul fast float %8073, %8074
  %8078 = fmul fast float %8073, %8075
  %8079 = fmul fast float %8073, %8076
  %8080 = fadd fast float %8077, %8061
  %8081 = fadd fast float %8078, %8062
  %8082 = fadd fast float %8079, %8063
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.CBufRet.f32 %8083, 1
  %8086 = fadd fast float %8085, %8084
  %8087 = call float @dx.op.unary.f32(i32 7, float %8086)  ; Saturate(value)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8083, 2
  %8089 = extractvalue %dx.types.CBufRet.f32 %8083, 3
  %8090 = fadd fast float %8089, %8088
  %8091 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  %8092 = fmul fast float %8087, %8071
  %8093 = fmul fast float %8092, %8091
  br label %8094

; <label>:8094                                    ; preds = %8055, %7974, %7809, %7791, %7789
  %8095 = phi float [ %7818, %7809 ], [ %7977, %7974 ], [ %8059, %8055 ], [ 0.000000e+00, %7789 ], [ 0.000000e+00, %7791 ]
  %8096 = phi float [ %7852, %7809 ], [ %8011, %7974 ], [ %8093, %8055 ], [ 0.000000e+00, %7789 ], [ 0.000000e+00, %7791 ]
  %8097 = phi float [ %7839, %7809 ], [ %7998, %7974 ], [ %8080, %8055 ], [ 0.000000e+00, %7789 ], [ 0.000000e+00, %7791 ]
  %8098 = phi float [ %7840, %7809 ], [ %7999, %7974 ], [ %8081, %8055 ], [ 0.000000e+00, %7789 ], [ 0.000000e+00, %7791 ]
  %8099 = phi float [ %7841, %7809 ], [ %8000, %7974 ], [ %8082, %8055 ], [ 0.000000e+00, %7789 ], [ 0.000000e+00, %7791 ]
  %8100 = fmul fast float %7732, %8096
  %8101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.f32 %8101, 2
  %8103 = fsub fast float %7739, %8102
  %8104 = fcmp fast olt float %8100, -2.000000e+01
  %8105 = call float @dx.op.unary.f32(i32 21, float %8100)  ; Exp(value)
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 3
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 2
  %8111 = fmul fast float %8108, %8103
  %8112 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8113 = fsub fast float 1.000000e+00, %8112
  %8114 = fmul fast float %7724, 5.000000e-01
  %8115 = fadd fast float %8114, 5.000000e-01
  %8116 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8117 = fsub fast float 1.000000e+00, %8116
  %8118 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8113)  ; FMax(a,b)
  %8119 = fdiv fast float %8117, %8118
  %8120 = fsub fast float %8103, %7681
  %8121 = call float @dx.op.unary.f32(i32 6, float %8120)  ; FAbs(value)
  %8122 = fmul fast float %8121, %8107
  %8123 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8124 = fsub fast float 1.000000e+00, %8122
  %8125 = fmul fast float %8124, %8123
  %8126 = fadd fast float %8125, %8122
  %8127 = fmul fast float %8110, %8103
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8129 = fsub fast float 1.000000e+00, %8126
  %8130 = fmul fast float %8129, %8128
  %8131 = fadd fast float %8130, %8126
  %8132 = call float @dx.op.unary.f32(i32 7, float %8131)  ; Saturate(value)
  %8133 = fadd fast float %8105, -1.000000e+00
  %8134 = select i1 %8104, float -1.000000e+00, float %8133
  %8135 = fmul fast float %8132, %8134
  %8136 = fadd fast float %8135, 1.000000e+00
  %8137 = fsub fast float -0.000000e+00, %8135
  %8138 = fmul fast float %8097, %8137
  %8139 = fmul fast float %8098, %8137
  %8140 = fmul fast float %8099, %8137
  br label %8141

; <label>:8141                                    ; preds = %8094, %7690
  %8142 = phi float [ %8095, %8094 ], [ 0.000000e+00, %7690 ]
  %8143 = phi float [ %8136, %8094 ], [ 1.000000e+00, %7690 ]
  %8144 = phi float [ %8138, %8094 ], [ 0.000000e+00, %7690 ]
  %8145 = phi float [ %8139, %8094 ], [ 0.000000e+00, %7690 ]
  %8146 = phi float [ %8140, %8094 ], [ 0.000000e+00, %7690 ]
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %8149 = fsub fast float 1.000000e+00, %8143
  %8150 = fmul fast float %8149, %7725
  %8151 = fmul fast float %8150, %8148
  %8152 = fsub fast float %7725, %8151
  br i1 %7718, label %8153, label %8182, !dx.controlflow.hints !167

; <label>:8153                                    ; preds = %8141
  %8154 = fmul fast float %7726, %7715
  %8155 = fadd fast float %8154, %7716
  %8156 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8157 = fmul fast float %7697, %8152
  %8158 = fsub fast float -0.000000e+00, %8157
  %8159 = fmul fast float %7698, %8152
  %8160 = fsub fast float -0.000000e+00, %8159
  %8161 = call float @dx.op.unary.f32(i32 21, float %8158)  ; Exp(value)
  %8162 = call float @dx.op.unary.f32(i32 21, float %8160)  ; Exp(value)
  %8163 = call float @dx.op.binary.f32(i32 35, float %7705, float %8161)  ; FMax(a,b)
  %8164 = call float @dx.op.binary.f32(i32 35, float %7705, float %8162)  ; FMax(a,b)
  %8165 = fsub fast float %8164, %8163
  %8166 = fmul fast float %8165, %8156
  %8167 = fadd fast float %8166, %8163
  %8168 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8169 = fsub fast float %7702, %7707
  %8170 = fsub fast float %7703, %7708
  %8171 = fsub fast float %7704, %7709
  %8172 = fmul fast float %8156, %8169
  %8173 = fmul fast float %8156, %8170
  %8174 = fmul fast float %8156, %8171
  %8175 = fadd fast float %8172, %7707
  %8176 = fadd fast float %8173, %7708
  %8177 = fadd fast float %8174, %7709
  %8178 = fsub fast float 1.000000e+00, %8168
  %8179 = fmul fast float %8178, %8175
  %8180 = fmul fast float %8178, %8176
  %8181 = fmul fast float %8178, %8177
  br label %8241

; <label>:8182                                    ; preds = %8141
  %8183 = fmul fast float %8152, %7714
  %8184 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8185 = fsub fast float 2.000000e+00, %8184
  %8186 = fmul fast float %8184, 9.921875e-01
  %8187 = fmul fast float %8186, %8185
  %8188 = fadd fast float %8187, 3.906250e-03
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8188, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = fsub fast float %8184, %8190
  %8192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8191)  ; FMax(a,b)
  %8193 = fmul fast float %7700, %7681
  %8194 = call float @dx.op.unary.f32(i32 6, float %8193)  ; FAbs(value)
  %8195 = fcmp fast ogt float %8194, 0x3EB0C6F7A0000000
  br i1 %8195, label %8196, label %8202, !dx.controlflow.hints !168

; <label>:8196                                    ; preds = %8182
  %8197 = fmul fast float %8193, 0xBFF7154760000000
  %8198 = call float @dx.op.unary.f32(i32 21, float %8197)  ; Exp(value)
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = fdiv fast float %8199, %8193
  %8201 = fmul fast float %8200, %7710
  br label %8202

; <label>:8202                                    ; preds = %8196, %8182
  %8203 = phi float [ %8201, %8196 ], [ %7710, %8182 ]
  %8204 = fadd fast float %8203, %7712
  %8205 = fmul fast float %8204, %8192
  %8206 = fmul fast float %7697, %8205
  %8207 = fsub fast float -0.000000e+00, %8206
  %8208 = fmul fast float %7698, %8205
  %8209 = fsub fast float -0.000000e+00, %8208
  %8210 = fmul fast float %7699, %8205
  %8211 = fsub fast float -0.000000e+00, %8210
  %8212 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8213 = call float @dx.op.unary.f32(i32 21, float %8209)  ; Exp(value)
  %8214 = call float @dx.op.unary.f32(i32 21, float %8211)  ; Exp(value)
  %8215 = fmul fast float %7726, %7726
  %8216 = fadd fast float %8215, 1.000000e+00
  %8217 = fmul fast float %8216, 0x3FAE8EC8A0000000
  %8218 = fmul fast float %8217, %7707
  %8219 = fmul fast float %8217, %7708
  %8220 = fmul fast float %8217, %7709
  %8221 = fmul fast float %7726, %7705
  %8222 = fsub fast float 1.000000e+00, %8221
  %8223 = fmul fast float %7705, %7705
  %8224 = fsub fast float 1.000000e+00, %8223
  %8225 = fmul fast float %8224, 0x3FB45F3060000000
  %8226 = fmul fast float %8222, %8222
  %8227 = fdiv fast float 1.000000e+00, %8226
  %8228 = fmul fast float %8225, %8227
  %8229 = fmul fast float %8228, %7702
  %8230 = fmul fast float %8228, %7703
  %8231 = fmul fast float %8228, %7704
  %8232 = fadd fast float %8229, %8218
  %8233 = fadd fast float %8230, %8219
  %8234 = fadd fast float %8231, %8220
  %8235 = fsub fast float 1.000000e+00, %8212
  %8236 = fsub fast float 1.000000e+00, %8213
  %8237 = fsub fast float 1.000000e+00, %8214
  %8238 = fmul fast float %8232, %8235
  %8239 = fmul fast float %8233, %8236
  %8240 = fmul fast float %8234, %8237
  br label %8241

; <label>:8241                                    ; preds = %8202, %8153
  %8242 = phi float [ %8179, %8153 ], [ %8238, %8202 ]
  %8243 = phi float [ %8180, %8153 ], [ %8239, %8202 ]
  %8244 = phi float [ %8181, %8153 ], [ %8240, %8202 ]
  %8245 = phi float [ %8168, %8153 ], [ %8212, %8202 ]
  %8246 = phi float [ %8168, %8153 ], [ %8213, %8202 ]
  %8247 = phi float [ %8168, %8153 ], [ %8214, %8202 ]
  br i1 %7734, label %8248, label %8446, !dx.controlflow.hints !169

; <label>:8248                                    ; preds = %8241
  %8249 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %8250 = fmul fast float %8249, %8149
  %8251 = fsub fast float %8144, %8242
  %8252 = fsub fast float %8145, %8243
  %8253 = fsub fast float %8146, %8244
  %8254 = fmul fast float %8250, %8251
  %8255 = fmul fast float %8250, %8252
  %8256 = fmul fast float %8250, %8253
  %8257 = fadd fast float %8254, %8242
  %8258 = fadd fast float %8255, %8243
  %8259 = fadd fast float %8256, %8244
  %8260 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8245)  ; FMax(a,b)
  %8261 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8246)  ; FMax(a,b)
  %8262 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8247)  ; FMax(a,b)
  %8263 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8143)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 35, float %8142, float %8152)  ; FMax(a,b)
  %8265 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8264)  ; FMax(a,b)
  %8266 = fdiv fast float %8142, %8265
  %8267 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8268 = fdiv fast float %8152, %8265
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = fcmp fast une float %8263, 1.000000e+00
  br i1 %8270, label %8271, label %8284, !dx.controlflow.hints !170

; <label>:8271                                    ; preds = %8248
  %8272 = call float @dx.op.unary.f32(i32 23, float %8263)  ; Log(value)
  %8273 = fmul fast float %8272, 0x3FE62E4300000000
  %8274 = fmul fast float %8144, %8273
  %8275 = fsub fast float -0.000000e+00, %8274
  %8276 = fmul fast float %8145, %8273
  %8277 = fsub fast float -0.000000e+00, %8276
  %8278 = fmul fast float %8146, %8273
  %8279 = fsub fast float -0.000000e+00, %8278
  %8280 = fsub fast float 1.000000e+00, %8263
  %8281 = fdiv fast float %8275, %8280
  %8282 = fdiv fast float %8277, %8280
  %8283 = fdiv fast float %8279, %8280
  br label %8284

; <label>:8284                                    ; preds = %8271, %8248
  %8285 = phi float [ %8281, %8271 ], [ %8144, %8248 ]
  %8286 = phi float [ %8282, %8271 ], [ %8145, %8248 ]
  %8287 = phi float [ %8283, %8271 ], [ %8146, %8248 ]
  %8288 = phi float [ %8273, %8271 ], [ 0.000000e+00, %8248 ]
  %8289 = fcmp fast une float %8260, 1.000000e+00
  br i1 %8289, label %8290, label %8297, !dx.controlflow.hints !171

; <label>:8290                                    ; preds = %8284
  %8291 = call float @dx.op.unary.f32(i32 23, float %8260)  ; Log(value)
  %8292 = fmul fast float %8291, 0x3FE62E4300000000
  %8293 = fmul fast float %8257, %8292
  %8294 = fsub fast float -0.000000e+00, %8293
  %8295 = fsub fast float 1.000000e+00, %8260
  %8296 = fdiv fast float %8294, %8295
  br label %8297

; <label>:8297                                    ; preds = %8290, %8284
  %8298 = phi float [ %8296, %8290 ], [ %8257, %8284 ]
  %8299 = phi float [ %8292, %8290 ], [ 0.000000e+00, %8284 ]
  %8300 = fcmp fast une float %8261, 1.000000e+00
  br i1 %8300, label %8301, label %8308, !dx.controlflow.hints !171

; <label>:8301                                    ; preds = %8297
  %8302 = call float @dx.op.unary.f32(i32 23, float %8261)  ; Log(value)
  %8303 = fmul fast float %8302, 0x3FE62E4300000000
  %8304 = fmul fast float %8258, %8303
  %8305 = fsub fast float -0.000000e+00, %8304
  %8306 = fsub fast float 1.000000e+00, %8261
  %8307 = fdiv fast float %8305, %8306
  br label %8308

; <label>:8308                                    ; preds = %8301, %8297
  %8309 = phi float [ %8307, %8301 ], [ %8258, %8297 ]
  %8310 = phi float [ %8303, %8301 ], [ 0.000000e+00, %8297 ]
  %8311 = fcmp fast une float %8262, 1.000000e+00
  br i1 %8311, label %8312, label %8319, !dx.controlflow.hints !171

; <label>:8312                                    ; preds = %8308
  %8313 = call float @dx.op.unary.f32(i32 23, float %8262)  ; Log(value)
  %8314 = fmul fast float %8313, 0x3FE62E4300000000
  %8315 = fmul fast float %8259, %8314
  %8316 = fsub fast float -0.000000e+00, %8315
  %8317 = fsub fast float 1.000000e+00, %8262
  %8318 = fdiv fast float %8316, %8317
  br label %8319

; <label>:8319                                    ; preds = %8312, %8308
  %8320 = phi float [ %8318, %8312 ], [ %8259, %8308 ]
  %8321 = phi float [ %8314, %8312 ], [ 0.000000e+00, %8308 ]
  %8322 = fmul fast float %8285, %8269
  %8323 = fmul fast float %8286, %8269
  %8324 = fmul fast float %8287, %8269
  %8325 = fmul fast float %8288, %8269
  %8326 = fmul fast float %8298, %8267
  %8327 = fmul fast float %8309, %8267
  %8328 = fmul fast float %8320, %8267
  %8329 = fmul fast float %8299, %8267
  %8330 = fmul fast float %8310, %8267
  %8331 = fmul fast float %8321, %8267
  %8332 = fadd fast float %8326, %8322
  %8333 = fadd fast float %8327, %8323
  %8334 = fadd fast float %8328, %8324
  %8335 = fadd fast float %8329, %8325
  %8336 = fadd fast float %8330, %8325
  %8337 = fadd fast float %8331, %8325
  %8338 = fcmp fast une float %8335, 0.000000e+00
  br i1 %8338, label %8339, label %8346, !dx.controlflow.hints !172

; <label>:8339                                    ; preds = %8319
  %8340 = fmul fast float %8335, 0x3FF7154760000000
  %8341 = call float @dx.op.unary.f32(i32 21, float %8340)  ; Exp(value)
  %8342 = fsub fast float 1.000000e+00, %8341
  %8343 = fmul fast float %8332, %8342
  %8344 = fsub fast float -0.000000e+00, %8343
  %8345 = fdiv fast float %8344, %8335
  br label %8346

; <label>:8346                                    ; preds = %8339, %8319
  %8347 = phi float [ %8341, %8339 ], [ 1.000000e+00, %8319 ]
  %8348 = phi float [ %8345, %8339 ], [ %8332, %8319 ]
  %8349 = fcmp fast une float %8336, 0.000000e+00
  br i1 %8349, label %8350, label %8357, !dx.controlflow.hints !172

; <label>:8350                                    ; preds = %8346
  %8351 = fmul fast float %8336, 0x3FF7154760000000
  %8352 = call float @dx.op.unary.f32(i32 21, float %8351)  ; Exp(value)
  %8353 = fsub fast float 1.000000e+00, %8352
  %8354 = fmul fast float %8333, %8353
  %8355 = fsub fast float -0.000000e+00, %8354
  %8356 = fdiv fast float %8355, %8336
  br label %8357

; <label>:8357                                    ; preds = %8350, %8346
  %8358 = phi float [ %8352, %8350 ], [ 1.000000e+00, %8346 ]
  %8359 = phi float [ %8356, %8350 ], [ %8333, %8346 ]
  %8360 = fcmp fast une float %8337, 0.000000e+00
  br i1 %8360, label %8361, label %8368, !dx.controlflow.hints !172

; <label>:8361                                    ; preds = %8357
  %8362 = fmul fast float %8337, 0x3FF7154760000000
  %8363 = call float @dx.op.unary.f32(i32 21, float %8362)  ; Exp(value)
  %8364 = fsub fast float 1.000000e+00, %8363
  %8365 = fmul fast float %8334, %8364
  %8366 = fsub fast float -0.000000e+00, %8365
  %8367 = fdiv fast float %8366, %8337
  br label %8368

; <label>:8368                                    ; preds = %8361, %8357
  %8369 = phi float [ %8363, %8361 ], [ 1.000000e+00, %8357 ]
  %8370 = phi float [ %8367, %8361 ], [ %8334, %8357 ]
  %8371 = fcmp fast ogt float %8267, %8269
  br i1 %8371, label %8372, label %8392

; <label>:8372                                    ; preds = %8368
  %8373 = fsub fast float 1.000000e+00, %8269
  %8374 = fmul fast float %8285, %8373
  %8375 = fmul fast float %8286, %8373
  %8376 = fmul fast float %8287, %8373
  %8377 = fmul fast float %8288, %8373
  %8378 = fcmp fast une float %8377, 0.000000e+00
  br i1 %8378, label %8379, label %8430, !dx.controlflow.hints !173

; <label>:8379                                    ; preds = %8372
  %8380 = fmul fast float %8377, 0x3FF7154760000000
  %8381 = call float @dx.op.unary.f32(i32 21, float %8380)  ; Exp(value)
  %8382 = fsub fast float 1.000000e+00, %8381
  %8383 = fmul fast float %8374, %8382
  %8384 = fsub fast float -0.000000e+00, %8383
  %8385 = fmul fast float %8375, %8382
  %8386 = fsub fast float -0.000000e+00, %8385
  %8387 = fmul fast float %8376, %8382
  %8388 = fsub fast float -0.000000e+00, %8387
  %8389 = fdiv fast float %8384, %8377
  %8390 = fdiv fast float %8386, %8377
  %8391 = fdiv fast float %8388, %8377
  br label %8430

; <label>:8392                                    ; preds = %8368
  %8393 = fsub fast float 1.000000e+00, %8267
  %8394 = fmul fast float %8298, %8393
  %8395 = fmul fast float %8309, %8393
  %8396 = fmul fast float %8320, %8393
  %8397 = fmul fast float %8299, %8393
  %8398 = fmul fast float %8310, %8393
  %8399 = fmul fast float %8321, %8393
  %8400 = fcmp fast une float %8397, 0.000000e+00
  br i1 %8400, label %8401, label %8408, !dx.controlflow.hints !172

; <label>:8401                                    ; preds = %8392
  %8402 = fmul fast float %8397, 0x3FF7154760000000
  %8403 = call float @dx.op.unary.f32(i32 21, float %8402)  ; Exp(value)
  %8404 = fsub fast float 1.000000e+00, %8403
  %8405 = fmul fast float %8394, %8404
  %8406 = fsub fast float -0.000000e+00, %8405
  %8407 = fdiv fast float %8406, %8397
  br label %8408

; <label>:8408                                    ; preds = %8401, %8392
  %8409 = phi float [ %8407, %8401 ], [ %8394, %8392 ]
  %8410 = phi float [ %8403, %8401 ], [ 1.000000e+00, %8392 ]
  %8411 = fcmp fast une float %8398, 0.000000e+00
  br i1 %8411, label %8412, label %8419, !dx.controlflow.hints !172

; <label>:8412                                    ; preds = %8408
  %8413 = fmul fast float %8398, 0x3FF7154760000000
  %8414 = call float @dx.op.unary.f32(i32 21, float %8413)  ; Exp(value)
  %8415 = fsub fast float 1.000000e+00, %8414
  %8416 = fmul fast float %8395, %8415
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = fdiv fast float %8417, %8398
  br label %8419

; <label>:8419                                    ; preds = %8412, %8408
  %8420 = phi float [ %8418, %8412 ], [ %8395, %8408 ]
  %8421 = phi float [ %8414, %8412 ], [ 1.000000e+00, %8408 ]
  %8422 = fcmp fast une float %8399, 0.000000e+00
  br i1 %8422, label %8423, label %8430, !dx.controlflow.hints !172

; <label>:8423                                    ; preds = %8419
  %8424 = fmul fast float %8399, 0x3FF7154760000000
  %8425 = call float @dx.op.unary.f32(i32 21, float %8424)  ; Exp(value)
  %8426 = fsub fast float 1.000000e+00, %8425
  %8427 = fmul fast float %8396, %8426
  %8428 = fsub fast float -0.000000e+00, %8427
  %8429 = fdiv fast float %8428, %8399
  br label %8430

; <label>:8430                                    ; preds = %8423, %8419, %8379, %8372
  %8431 = phi float [ %8429, %8423 ], [ %8391, %8379 ], [ %8376, %8372 ], [ %8396, %8419 ]
  %8432 = phi float [ %8420, %8423 ], [ %8390, %8379 ], [ %8375, %8372 ], [ %8420, %8419 ]
  %8433 = phi float [ %8409, %8423 ], [ %8389, %8379 ], [ %8374, %8372 ], [ %8409, %8419 ]
  %8434 = phi float [ %8425, %8423 ], [ %8381, %8379 ], [ 1.000000e+00, %8372 ], [ 1.000000e+00, %8419 ]
  %8435 = phi float [ %8421, %8423 ], [ %8381, %8379 ], [ 1.000000e+00, %8372 ], [ %8421, %8419 ]
  %8436 = phi float [ %8410, %8423 ], [ %8381, %8379 ], [ 1.000000e+00, %8372 ], [ %8410, %8419 ]
  %8437 = fmul fast float %8436, %8348
  %8438 = fmul fast float %8435, %8359
  %8439 = fmul fast float %8434, %8370
  %8440 = fadd fast float %8437, %8433
  %8441 = fadd fast float %8438, %8432
  %8442 = fadd fast float %8439, %8431
  %8443 = fmul fast float %8436, %8347
  %8444 = fmul fast float %8435, %8358
  %8445 = fmul fast float %8434, %8369
  br label %8446

; <label>:8446                                    ; preds = %8430, %8241
  %8447 = phi float [ %8445, %8430 ], [ %8247, %8241 ]
  %8448 = phi float [ %8444, %8430 ], [ %8246, %8241 ]
  %8449 = phi float [ %8443, %8430 ], [ %8245, %8241 ]
  %8450 = phi float [ %8442, %8430 ], [ %8244, %8241 ]
  %8451 = phi float [ %8441, %8430 ], [ %8243, %8241 ]
  %8452 = phi float [ %8440, %8430 ], [ %8242, %8241 ]
  %8453 = fmul fast float %8452, %7398
  %8454 = fmul fast float %8451, %7398
  %8455 = fmul fast float %8450, %7398
  %8456 = fmul fast float %8449, %7689
  %8457 = call float @dx.op.dot3.f32(i32 55, float %8449, float %8448, float %8447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8458 = call float @dx.op.dot3.f32(i32 55, float %8453, float %8454, float %8455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8459 = select i1 %270, float %8457, float %8449
  %8460 = select i1 %270, float %8457, float %8448
  %8461 = select i1 %270, float 1.000000e+00, float %8447
  %8462 = select i1 %270, float %8458, float %8453
  %8463 = select i1 %270, float 0.000000e+00, float %8454
  %8464 = select i1 %270, float 0.000000e+00, float %8455
  %8465 = fmul fast float %8459, %7683
  %8466 = fmul fast float %8460, %7684
  %8467 = fmul fast float %8461, %7685
  %8468 = fadd fast float %8465, %8462
  %8469 = fadd fast float %8466, %8463
  %8470 = fadd fast float %8464, %8467
  %8471 = fmul fast float %8459, %7686
  %8472 = fmul fast float %8460, %7687
  %8473 = fmul fast float %8461, %7688
  %8474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.i32 %8474, 0
  %8476 = icmp eq i32 %8475, 0
  br i1 %8476, label %8844, label %8477, !dx.controlflow.hints !174

; <label>:8477                                    ; preds = %8446
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8481 = fmul fast float %8479, %115
  %8482 = fmul fast float %8480, %116
  %8483 = fmul fast float %8481, 2.000000e+00
  %8484 = fmul fast float %8482, 2.000000e+00
  %8485 = fsub fast float 1.000000e+00, %8483
  %8486 = fsub fast float 1.000000e+00, %8484
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8491 = fmul fast float %8485, %8488
  %8492 = fmul fast float %8485, %8489
  %8493 = fmul fast float %8485, %8490
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = fmul fast float %8486, %8495
  %8499 = fmul fast float %8486, %8496
  %8500 = fmul fast float %8486, %8497
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.CBufRet.f32 %8501, 2
  %8505 = fadd fast float %8498, %8502
  %8506 = fadd fast float %8505, %8491
  %8507 = fadd fast float %8499, %8503
  %8508 = fadd fast float %8507, %8492
  %8509 = fadd fast float %8500, %8504
  %8510 = fadd fast float %8509, %8493
  %8511 = fmul fast float %8506, %7682
  %8512 = fmul fast float %8508, %7682
  %8513 = fmul fast float %8510, %7682
  %8514 = fmul fast float %8511, %8511
  %8515 = fmul fast float %8512, %8512
  %8516 = fadd fast float %8514, %8515
  %8517 = fmul fast float %8513, %8513
  %8518 = fadd fast float %8516, %8517
  %8519 = call float @dx.op.unary.f32(i32 24, float %8518)  ; Sqrt(value)
  %8520 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %8521 = fsub fast float %8519, %8520
  %8522 = extractvalue %dx.types.CBufRet.f32 %7409, 2
  %8523 = fmul fast float %8521, %8522
  %8524 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8525 = fadd fast float %8524, -5.000000e-01
  %8526 = fmul fast float %8525, 2.000000e+00
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = call float @dx.op.binary.f32(i32 36, float %8528, float %8526)  ; FMin(a,b)
  %8530 = fsub fast float -0.000000e+00, %8528
  %8531 = fcmp fast ogt float %8529, %8530
  br i1 %8531, label %8532, label %8844, !dx.controlflow.hints !175

; <label>:8532                                    ; preds = %8477
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 3
  %8535 = fcmp fast ogt float %8534, 0.000000e+00
  br i1 %8535, label %8536, label %8611, !dx.controlflow.hints !176

; <label>:8536                                    ; preds = %8532
  %8537 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8538 = extractvalue %dx.types.Dimensions %8537, 0
  %8539 = sitofp i32 %8538 to float
  %8540 = extractvalue %dx.types.Dimensions %8537, 1
  %8541 = sitofp i32 %8540 to float
  %8542 = fmul fast float %8481, %8539
  %8543 = fmul fast float %8482, %8541
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 1
  %8546 = fsub fast float -0.000000e+00, %8545
  %8547 = fptoui float %8546 to i32
  %8548 = fptoui float %8542 to i32
  %8549 = fptoui float %8543 to i32
  %8550 = and i32 %8547, 31
  %8551 = lshr i32 %8548, %8550
  %8552 = lshr i32 %8549, %8550
  %8553 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8547, i32 %8551, i32 %8552, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8554 = extractvalue %dx.types.ResRet.f32 %8553, 0
  %8555 = fcmp fast olt float %8554, -1.000000e+00
  %8556 = fcmp fast ogt float %8554, -1.000000e+00
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 1
  %8559 = select i1 %8556, float %8558, float 1.000000e+00
  %8560 = fadd fast float %8554, 1.000000e+00
  %8561 = fmul fast float %8559, %8560
  %8562 = call float @dx.op.unary.f32(i32 6, float %8561)  ; FAbs(value)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8557, 3
  %8564 = fcmp fast oge float %8562, %8563
  %8565 = select i1 %8564, float 0x4197782600000000, float %8562
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.CBufRet.f32 %8566, 2
  %8570 = select i1 %8555, float %8567, float %8488
  %8571 = select i1 %8555, float %8568, float %8489
  %8572 = select i1 %8555, float %8569, float %8490
  %8573 = fmul fast float %8570, %8485
  %8574 = fmul fast float %8571, %8485
  %8575 = fmul fast float %8572, %8485
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.CBufRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.CBufRet.f32 %8576, 2
  %8580 = select i1 %8555, float %8577, float %8495
  %8581 = select i1 %8555, float %8578, float %8496
  %8582 = select i1 %8555, float %8579, float %8497
  %8583 = fmul fast float %8580, %8486
  %8584 = fmul fast float %8581, %8486
  %8585 = fmul fast float %8582, %8486
  %8586 = fadd fast float %8583, %8573
  %8587 = fadd fast float %8584, %8574
  %8588 = fadd fast float %8585, %8575
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8592 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8593 = select i1 %8555, float %8590, float %8502
  %8594 = select i1 %8555, float %8591, float %8503
  %8595 = select i1 %8555, float %8592, float %8504
  %8596 = fadd fast float %8586, %8593
  %8597 = fadd fast float %8587, %8594
  %8598 = fadd fast float %8588, %8595
  %8599 = fmul fast float %8596, %8565
  %8600 = fmul fast float %8597, %8565
  %8601 = fmul fast float %8598, %8565
  %8602 = fmul fast float %8599, %8599
  %8603 = fmul fast float %8600, %8600
  %8604 = fadd fast float %8602, %8603
  %8605 = fmul fast float %8601, %8601
  %8606 = fadd fast float %8604, %8605
  %8607 = call float @dx.op.unary.f32(i32 24, float %8606)  ; Sqrt(value)
  %8608 = fsub fast float %8607, %8520
  %8609 = fmul fast float %8608, %8522
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  br label %8611

; <label>:8611                                    ; preds = %8536, %8532
  %8612 = phi float [ %8610, %8536 ], [ 1.000000e+00, %8532 ]
  %8613 = fmul fast float %8529, 5.000000e-01
  %8614 = fadd fast float %8613, 5.000000e-01
  %8615 = call float @dx.op.unary.f32(i32 22, float %8614)  ; Frc(value)
  %8616 = call float @dx.op.unary.f32(i32 27, float %8615)  ; Round_ni(value)
  %8617 = call float @dx.op.unary.f32(i32 22, float %8615)  ; Frc(value)
  %8618 = fmul fast float %8617, 2.000000e+00
  %8619 = fadd fast float %8618, -1.000000e+00
  %8620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8481, float %8482, float %8616, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8621 = extractvalue %dx.types.ResRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.ResRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.ResRet.f32 %8620, 2
  %8624 = extractvalue %dx.types.ResRet.f32 %8620, 3
  %8625 = fadd fast float %8621, -5.000000e-01
  %8626 = fadd fast float %8623, -5.000000e-01
  %8627 = fmul fast float %8625, 0xBFD5555560000000
  %8628 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8626, float %8627)  ; FMad(a,b,c)
  %8629 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8622, float 0.000000e+00)  ; FMad(a,b,c)
  %8630 = fadd fast float %8629, %8624
  %8631 = fmul fast float %8625, -7.500000e-01
  %8632 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8626, float %8631)  ; FMad(a,b,c)
  %8633 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8622, float 0.000000e+00)  ; FMad(a,b,c)
  %8634 = fadd fast float %8633, %8624
  %8635 = call float @dx.op.binary.f32(i32 35, float %8628, float -1.000000e+00)  ; FMax(a,b)
  %8636 = call float @dx.op.binary.f32(i32 35, float %8630, float -1.000000e+00)  ; FMax(a,b)
  %8637 = call float @dx.op.binary.f32(i32 35, float %8632, float -1.000000e+00)  ; FMax(a,b)
  %8638 = call float @dx.op.binary.f32(i32 35, float %8634, float -1.000000e+00)  ; FMax(a,b)
  %8639 = call float @dx.op.binary.f32(i32 36, float %8635, float 1.000000e+00)  ; FMin(a,b)
  %8640 = call float @dx.op.binary.f32(i32 36, float %8636, float 1.000000e+00)  ; FMin(a,b)
  %8641 = call float @dx.op.binary.f32(i32 36, float %8637, float 1.000000e+00)  ; FMin(a,b)
  %8642 = call float @dx.op.binary.f32(i32 36, float %8638, float 1.000000e+00)  ; FMin(a,b)
  %8643 = fcmp fast olt float %8639, 0x3FEFFF8020000000
  br i1 %8643, label %8644, label %8759, !dx.controlflow.hints !177

; <label>:8644                                    ; preds = %8611
  %8645 = extractvalue %dx.types.CBufRet.f32 %8527, 3
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8649 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %8650 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8651 = fsub fast float %8647, %8639
  %8652 = fsub fast float %8648, %8640
  %8653 = fsub fast float %8649, %8641
  %8654 = fsub fast float %8650, %8642
  %8655 = fmul fast float %8651, %8645
  %8656 = fmul fast float %8652, %8645
  %8657 = fmul fast float %8653, %8645
  %8658 = fmul fast float %8654, %8645
  %8659 = fadd fast float %8655, %8639
  %8660 = fadd fast float %8656, %8640
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = fadd fast float %8657, %8641
  %8663 = fadd fast float %8658, %8642
  %8664 = fmul fast float %8659, %8659
  %8665 = fsub fast float %8660, %8664
  %8666 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8665)  ; FMax(a,b)
  %8667 = fdiv fast float 1.000000e+00, %8666
  %8668 = fmul fast float %8660, %8659
  %8669 = fsub fast float %8662, %8668
  %8670 = fsub fast float %8619, %8659
  %8671 = fmul fast float %8619, %8619
  %8672 = fsub fast float %8671, %8660
  %8673 = fmul fast float %8670, %8667
  %8674 = fmul fast float %8673, %8669
  %8675 = fsub fast float %8672, %8674
  %8676 = fmul fast float %8660, %8660
  %8677 = fsub fast float %8663, %8676
  %8678 = fmul fast float %8669, %8669
  %8679 = fmul fast float %8678, %8667
  %8680 = fsub fast float %8677, %8679
  %8681 = fdiv fast float %8675, %8680
  %8682 = fmul fast float %8669, %8681
  %8683 = fsub fast float %8670, %8682
  %8684 = fmul fast float %8683, %8667
  %8685 = fmul fast float %8684, %8659
  %8686 = fsub fast float 1.000000e+00, %8685
  %8687 = fmul fast float %8660, %8681
  %8688 = fsub fast float %8686, %8687
  %8689 = fmul fast float %8684, %8684
  %8690 = fmul fast float %8681, 4.000000e+00
  %8691 = fmul fast float %8690, %8688
  %8692 = fsub fast float %8689, %8691
  %8693 = call float @dx.op.unary.f32(i32 24, float %8692)  ; Sqrt(value)
  %8694 = fcmp fast oge float %8684, 0.000000e+00
  %8695 = fsub fast float -0.000000e+00, %8693
  %8696 = select i1 %8694, float %8695, float %8693
  %8697 = fsub fast float %8696, %8684
  %8698 = fdiv fast float %8697, %8681
  %8699 = fdiv fast float %8688, %8697
  %8700 = fmul fast float %8698, 5.000000e-01
  %8701 = fmul fast float %8699, 2.000000e+00
  %8702 = select i1 %8694, float %8700, float %8701
  %8703 = select i1 %8694, float %8701, float %8700
  %8704 = call float @dx.op.binary.f32(i32 35, float %8702, float %8703)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8702, float %8703)  ; FMin(a,b)
  %8706 = fcmp fast ogt float %8619, %8705
  br i1 %8706, label %8707, label %8717

; <label>:8707                                    ; preds = %8644
  %8708 = fsub fast float %8619, %8705
  %8709 = fsub fast float %8704, %8705
  %8710 = fmul fast float %8708, %8709
  %8711 = fmul fast float %8704, %8619
  %8712 = fadd fast float %8704, %8619
  %8713 = fmul fast float %8712, %8659
  %8714 = fadd fast float %8711, %8660
  %8715 = fsub fast float %8714, %8713
  %8716 = fdiv fast float %8715, %8710
  br label %8717

; <label>:8717                                    ; preds = %8707, %8644
  %8718 = phi float [ %8716, %8707 ], [ 0.000000e+00, %8644 ]
  %8719 = fcmp fast ogt float %8619, %8704
  %8720 = fsub fast float %8619, %8704
  br i1 %8719, label %8721, label %8731

; <label>:8721                                    ; preds = %8717
  %8722 = fsub fast float %8704, %8705
  %8723 = fmul fast float %8722, %8720
  %8724 = fmul fast float %8705, %8619
  %8725 = fadd fast float %8705, %8619
  %8726 = fmul fast float %8725, %8659
  %8727 = fsub fast float %8661, %8724
  %8728 = fadd fast float %8727, %8726
  %8729 = fdiv fast float %8728, %8723
  %8730 = fadd fast float %8729, %8718
  br label %8731

; <label>:8731                                    ; preds = %8721, %8717
  %8732 = phi float [ %8730, %8721 ], [ %8718, %8717 ]
  %8733 = fsub fast float %8619, %8705
  %8734 = fmul fast float %8733, %8720
  %8735 = fmul fast float %8705, %8704
  %8736 = fadd fast float %8705, %8704
  %8737 = fmul fast float %8736, %8659
  %8738 = fadd fast float %8735, %8660
  %8739 = fsub fast float %8738, %8737
  %8740 = fdiv fast float %8739, %8734
  %8741 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8742 = fcmp fast oeq float %7410, 0.000000e+00
  %8743 = extractvalue %dx.types.CBufRet.f32 %8527, 0
  %8744 = fcmp fast oeq float %8743, 0.000000e+00
  %8745 = or i1 %8742, %8744
  %8746 = fmul fast float %8743, 2.000000e+00
  %8747 = fadd fast float %8528, %8529
  %8748 = fdiv fast float %8747, %8746
  %8749 = call float @dx.op.unary.f32(i32 7, float %8748)  ; Saturate(value)
  %8750 = fmul fast float %8749, 2.000000e+00
  %8751 = fsub fast float 3.000000e+00, %8750
  %8752 = fmul fast float %8749, %8749
  %8753 = fmul fast float %8752, %8751
  %8754 = select i1 %8745, float 1.000000e+00, float %8753
  %8755 = fmul fast float %8740, %7410
  %8756 = fadd fast float %8741, %8755
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = fmul fast float %8754, %8757
  br label %8759

; <label>:8759                                    ; preds = %8731, %8611
  %8760 = phi float [ %8758, %8731 ], [ 0.000000e+00, %8611 ]
  %8761 = fsub fast float 1.000000e+00, %8760
  %8762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8481, float %8482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.i32 %8764, 2
  %8766 = icmp eq i32 %8765, 0
  br i1 %8766, label %8772, label %8767

; <label>:8767                                    ; preds = %8759
  %8768 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8769 = fadd fast float %8763, -1.000000e+00
  %8770 = fmul fast float %8768, %8769
  %8771 = fadd fast float %8770, 1.000000e+00
  br label %8772

; <label>:8772                                    ; preds = %8767, %8759
  %8773 = phi float [ %8771, %8767 ], [ %8761, %8759 ]
  br i1 %8535, label %8774, label %8792

; <label>:8774                                    ; preds = %8772
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 1
  %8777 = fsub fast float %8612, %8776
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = fsub fast float %8612, %8534
  %8780 = call float @dx.op.unary.f32(i32 7, float %8779)  ; Saturate(value)
  %8781 = fsub fast float %8778, %8780
  %8782 = fsub fast float %8614, %8780
  %8783 = fdiv fast float %8782, %8781
  %8784 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8785 = fmul fast float %8784, 2.000000e+00
  %8786 = fsub fast float 3.000000e+00, %8785
  %8787 = fsub fast float %8763, %8773
  %8788 = fmul fast float %8784, %8784
  %8789 = fmul fast float %8788, %8787
  %8790 = fmul fast float %8789, %8786
  %8791 = fadd fast float %8790, %8773
  br label %8792

; <label>:8792                                    ; preds = %8774, %8772
  %8793 = phi float [ %8791, %8774 ], [ %8773, %8772 ]
  %8794 = call float @dx.op.binary.f32(i32 35, float %8763, float %8793)  ; FMax(a,b)
  %8795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.i32 %8795, 2
  %8797 = and i32 %8796, 1
  %8798 = icmp eq i32 %8797, 0
  %8799 = fcmp fast une float %8794, 1.000000e+00
  %8800 = and i1 %8799, %8798
  br i1 %8800, label %8801, label %8820

; <label>:8801                                    ; preds = %8792
  %8802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8481, float %8482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8803 = extractvalue %dx.types.ResRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.ResRet.f32 %8802, 1
  %8805 = extractvalue %dx.types.ResRet.f32 %8802, 2
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8808 = fmul fast float %8807, %8803
  %8809 = fmul fast float %8807, %8804
  %8810 = fmul fast float %8807, %8805
  %8811 = fcmp fast ogt float %8763, 0x3FEFFF2E40000000
  %8812 = fsub fast float 1.000000e+00, %8794
  %8813 = fsub fast float 1.000000e+00, %8763
  %8814 = fdiv fast float %8812, %8813
  %8815 = call float @dx.op.unary.f32(i32 7, float %8814)  ; Saturate(value)
  %8816 = select i1 %8811, float 0.000000e+00, float %8815
  %8817 = fmul fast float %8808, %8816
  %8818 = fmul fast float %8809, %8816
  %8819 = fmul fast float %8810, %8816
  br label %8820

; <label>:8820                                    ; preds = %8801, %8792
  %8821 = phi float [ 0.000000e+00, %8792 ], [ %8817, %8801 ]
  %8822 = phi float [ 0.000000e+00, %8792 ], [ %8818, %8801 ]
  %8823 = phi float [ 0.000000e+00, %8792 ], [ %8819, %8801 ]
  %8824 = fmul fast float %8821, %7398
  %8825 = fmul fast float %8822, %7398
  %8826 = fmul fast float %8823, %7398
  %8827 = fmul fast float %8794, %8456
  %8828 = call float @dx.op.dot3.f32(i32 55, float %8794, float %8794, float %8794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8829 = call float @dx.op.dot3.f32(i32 55, float %8824, float %8825, float %8826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8830 = select i1 %270, float %8828, float %8794
  %8831 = select i1 %270, float 1.000000e+00, float %8794
  %8832 = select i1 %270, float %8829, float %8824
  %8833 = select i1 %270, float 0.000000e+00, float %8825
  %8834 = select i1 %270, float 0.000000e+00, float %8826
  %8835 = fmul fast float %8830, %8468
  %8836 = fmul fast float %8830, %8469
  %8837 = fmul fast float %8831, %8470
  %8838 = fadd fast float %8835, %8832
  %8839 = fadd fast float %8836, %8833
  %8840 = fadd fast float %8834, %8837
  %8841 = fmul fast float %8830, %8471
  %8842 = fmul fast float %8830, %8472
  %8843 = fmul fast float %8831, %8473
  br label %8844

; <label>:8844                                    ; preds = %8820, %8477, %8446, %7678
  %8845 = phi float [ %7683, %7678 ], [ %8468, %8446 ], [ %8838, %8820 ], [ %8468, %8477 ]
  %8846 = phi float [ %7684, %7678 ], [ %8469, %8446 ], [ %8839, %8820 ], [ %8469, %8477 ]
  %8847 = phi float [ %7685, %7678 ], [ %8470, %8446 ], [ %8840, %8820 ], [ %8470, %8477 ]
  %8848 = phi float [ %7686, %7678 ], [ %8471, %8446 ], [ %8841, %8820 ], [ %8471, %8477 ]
  %8849 = phi float [ %7687, %7678 ], [ %8472, %8446 ], [ %8842, %8820 ], [ %8472, %8477 ]
  %8850 = phi float [ %7688, %7678 ], [ %8473, %8446 ], [ %8843, %8820 ], [ %8473, %8477 ]
  %8851 = phi float [ %7689, %7678 ], [ %8456, %8446 ], [ %8827, %8820 ], [ %8456, %8477 ]
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 3
  %8855 = fmul fast float %8853, %115
  %8856 = fmul fast float %8854, %116
  %8857 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8858 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8859 = select i1 %7420, i32 2, i32 0
  %8860 = or i32 %8859, 1
  %8861 = uitofp i32 %8860 to float
  %8862 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8857, float %8858, float %8861, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8863 = extractvalue %dx.types.ResRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.ResRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.ResRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.ResRet.f32 %8862, 3
  %8867 = add nuw nsw i32 %8859, 2
  %8868 = uitofp i32 %8867 to float
  %8869 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8857, float %8858, float %8868, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8870 = extractvalue %dx.types.ResRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.ResRet.f32 %8869, 1
  %8872 = extractvalue %dx.types.ResRet.f32 %8869, 2
  %8873 = extractvalue %dx.types.ResRet.f32 %8869, 3
  %8874 = call float @dx.op.binary.f32(i32 35, float %8864, float %8865)  ; FMax(a,b)
  %8875 = call float @dx.op.binary.f32(i32 35, float %8863, float %8874)  ; FMax(a,b)
  %8876 = call float @dx.op.binary.f32(i32 35, float %8875, float %8866)  ; FMax(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8871, float %8872)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8870, float %8877)  ; FMin(a,b)
  %8879 = call float @dx.op.binary.f32(i32 36, float %8878, float %8873)  ; FMin(a,b)
  %8880 = fmul fast float %8876, 2.550000e+02
  %8881 = fadd fast float %8880, 0x3F70101020000000
  %8882 = fptoui float %8881 to i32
  %8883 = fmul fast float %8879, 2.550000e+02
  %8884 = fadd fast float %8883, 0x3F70101020000000
  %8885 = fptoui float %8884 to i32
  %8886 = icmp ult i32 %8882, %8885
  br i1 %8886, label %8887, label %9056

; <label>:8887                                    ; preds = %8844
  %8888 = fcmp fast ogt float %105, 9.843750e-01
  %8889 = fadd fast float %7682, -4.000000e+00
  %8890 = select i1 %8888, float -4.000000e+00, float %8889
  %8891 = call float @dx.op.binary.f32(i32 35, float %8890, float 0.000000e+00)  ; FMax(a,b)
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8894 = fadd fast float %8893, %8891
  %8895 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8896 = fmul fast float %8894, %8895
  %8897 = call float @dx.op.unary.f32(i32 23, float %8896)  ; Log(value)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8892, 3
  %8899 = fmul fast float %8898, %8897
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8902 = fmul fast float %8899, %8901
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = uitofp i32 %8882 to float
  %8905 = uitofp i32 %8885 to float
  %8906 = fadd fast float %8904, 5.000000e-01
  %8907 = fadd fast float %8905, 5.000000e-01
  %8908 = fmul fast float %8901, %8906
  %8909 = fmul fast float %8901, %8907
  %8910 = fadd fast float %8908, 0x3F0FFB4800000000
  %8911 = fadd fast float %8909, 0xBF0FFB4800000000
  %8912 = call float @dx.op.binary.f32(i32 35, float %8903, float %8910)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 36, float %8912, float %8911)  ; FMin(a,b)
  %8914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8915 = extractvalue %dx.types.CBufRet.f32 %8914, 1
  %8916 = extractvalue %dx.types.CBufRet.f32 %8914, 2
  %8917 = extractvalue %dx.types.CBufRet.f32 %8914, 0
  %8918 = select i1 %7420, float %8917, float 0.000000e+00
  %8919 = fmul fast float %8915, %8913
  %8920 = fadd fast float %8918, %8919
  %8921 = fadd fast float %8918, %8916
  %8922 = fsub fast float %8915, %8916
  %8923 = fadd fast float %8922, %8918
  %8924 = call float @dx.op.binary.f32(i32 35, float %8920, float %8921)  ; FMax(a,b)
  %8925 = call float @dx.op.binary.f32(i32 36, float %8924, float %8923)  ; FMin(a,b)
  %8926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8857, float %8858, float %8925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8927 = extractvalue %dx.types.ResRet.f32 %8926, 0
  %8928 = extractvalue %dx.types.ResRet.f32 %8926, 1
  %8929 = extractvalue %dx.types.ResRet.f32 %8926, 2
  %8930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.i32 %8930, 0
  %8932 = extractvalue %dx.types.CBufRet.i32 %8930, 1
  %8933 = uitofp i32 %8931 to float
  %8934 = uitofp i32 %8932 to float
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 0
  %8937 = extractvalue %dx.types.CBufRet.f32 %8935, 1
  %8938 = fmul fast float %8933, %8857
  %8939 = fmul fast float %8934, %8858
  %8940 = fadd fast float %8938, -5.000000e-01
  %8941 = fadd fast float %8939, -5.000000e-01
  %8942 = call float @dx.op.unary.f32(i32 22, float %8940)  ; Frc(value)
  %8943 = call float @dx.op.unary.f32(i32 22, float %8941)  ; Frc(value)
  %8944 = fmul fast float %8942, %8942
  %8945 = fmul fast float %8944, %8942
  %8946 = fsub fast float 3.000000e+00, %8942
  %8947 = fmul fast float %8944, %8946
  %8948 = fmul fast float %8942, 3.000000e+00
  %8949 = fmul fast float %8945, 3.000000e+00
  %8950 = fmul fast float %8944, 6.000000e+00
  %8951 = fsub fast float %8949, %8950
  %8952 = fadd fast float %8951, 4.000000e+00
  %8953 = fmul fast float %8952, 0x3FC5555560000000
  %8954 = fmul fast float %8945, -3.000000e+00
  %8955 = fadd fast float %8944, %8942
  %8956 = fmul fast float %8955, 3.000000e+00
  %8957 = fadd fast float %8954, 1.000000e+00
  %8958 = fadd fast float %8957, %8956
  %8959 = fmul fast float %8945, 0x3FC5555560000000
  %8960 = fmul fast float %8943, %8943
  %8961 = fmul fast float %8960, %8943
  %8962 = fsub fast float 3.000000e+00, %8943
  %8963 = fmul fast float %8960, %8962
  %8964 = fmul fast float %8943, 3.000000e+00
  %8965 = fmul fast float %8961, 3.000000e+00
  %8966 = fmul fast float %8960, 6.000000e+00
  %8967 = fsub fast float %8965, %8966
  %8968 = fadd fast float %8967, 4.000000e+00
  %8969 = fmul fast float %8968, 0x3FC5555560000000
  %8970 = fmul fast float %8961, -3.000000e+00
  %8971 = fadd fast float %8960, %8943
  %8972 = fmul fast float %8971, 3.000000e+00
  %8973 = fadd fast float %8970, 1.000000e+00
  %8974 = fadd fast float %8973, %8972
  %8975 = fmul fast float %8961, 0x3FC5555560000000
  %8976 = fadd fast float %8942, 1.000000e+00
  %8977 = fsub fast float 1.000000e+00, %8948
  %8978 = fadd fast float %8977, %8947
  %8979 = fadd fast float %8978, %8952
  %8980 = fmul fast float %8979, 0x3FC5555560000000
  %8981 = fdiv fast float %8953, %8980
  %8982 = fsub fast float %8976, %8981
  %8983 = fsub fast float 1.000000e+00, %8942
  %8984 = fadd fast float %8958, %8945
  %8985 = fmul fast float %8984, 0x3FC5555560000000
  %8986 = fdiv fast float %8959, %8985
  %8987 = fadd fast float %8983, %8986
  %8988 = fadd fast float %8943, 1.000000e+00
  %8989 = fsub fast float 1.000000e+00, %8964
  %8990 = fadd fast float %8989, %8963
  %8991 = fadd fast float %8990, %8968
  %8992 = fmul fast float %8991, 0x3FC5555560000000
  %8993 = fdiv fast float %8969, %8992
  %8994 = fsub fast float %8988, %8993
  %8995 = fsub fast float 1.000000e+00, %8943
  %8996 = fadd fast float %8974, %8961
  %8997 = fmul fast float %8996, 0x3FC5555560000000
  %8998 = fdiv fast float %8975, %8997
  %8999 = fadd fast float %8998, %8995
  %9000 = fmul fast float %8982, %8936
  %9001 = fsub fast float %8857, %9000
  %9002 = fmul fast float %8987, %8936
  %9003 = fadd fast float %9002, %8857
  %9004 = fmul fast float %8999, %8937
  %9005 = fadd fast float %9004, %8858
  %9006 = fmul fast float %8994, %8937
  %9007 = fsub fast float %8858, %9006
  %9008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9001, float %9007, float %8925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9009 = extractvalue %dx.types.ResRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.ResRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.ResRet.f32 %9008, 2
  %9012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9003, float %9007, float %8925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9013 = extractvalue %dx.types.ResRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.ResRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.ResRet.f32 %9012, 2
  %9016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9001, float %9005, float %8925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9017 = extractvalue %dx.types.ResRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.ResRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.ResRet.f32 %9016, 2
  %9020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9003, float %9005, float %8925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9021 = extractvalue %dx.types.ResRet.f32 %9020, 0
  %9022 = extractvalue %dx.types.ResRet.f32 %9020, 1
  %9023 = extractvalue %dx.types.ResRet.f32 %9020, 2
  %9024 = fsub fast float %9017, %9009
  %9025 = fsub fast float %9018, %9010
  %9026 = fsub fast float %9019, %9011
  %9027 = fmul fast float %9024, %8997
  %9028 = fmul fast float %9025, %8997
  %9029 = fmul fast float %9026, %8997
  %9030 = fadd fast float %9027, %9009
  %9031 = fadd fast float %9028, %9010
  %9032 = fadd fast float %9029, %9011
  %9033 = fsub fast float %9021, %9013
  %9034 = fsub fast float %9022, %9014
  %9035 = fsub fast float %9023, %9015
  %9036 = fmul fast float %9033, %8997
  %9037 = fmul fast float %9034, %8997
  %9038 = fmul fast float %9035, %8997
  %9039 = fsub fast float %9013, %9030
  %9040 = fadd fast float %9039, %9036
  %9041 = fsub fast float %9014, %9031
  %9042 = fadd fast float %9041, %9037
  %9043 = fsub fast float %9015, %9032
  %9044 = fadd fast float %9043, %9038
  %9045 = fmul fast float %9040, %8985
  %9046 = fmul fast float %9042, %8985
  %9047 = fmul fast float %9044, %8985
  %9048 = fadd fast float %9045, %9030
  %9049 = fadd fast float %9046, %9031
  %9050 = fadd fast float %9047, %9032
  %9051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9052 = extractvalue %dx.types.CBufRet.f32 %9051, 1
  %9053 = fmul fast float %9048, %9052
  %9054 = fmul fast float %9049, %9052
  %9055 = fmul fast float %9050, %9052
  br label %9056

; <label>:9056                                    ; preds = %8887, %8844
  %9057 = phi float [ %8927, %8887 ], [ 1.000000e+00, %8844 ]
  %9058 = phi float [ %8928, %8887 ], [ 1.000000e+00, %8844 ]
  %9059 = phi float [ %8929, %8887 ], [ 1.000000e+00, %8844 ]
  %9060 = phi float [ %9053, %8887 ], [ 0.000000e+00, %8844 ]
  %9061 = phi float [ %9054, %8887 ], [ 0.000000e+00, %8844 ]
  %9062 = phi float [ %9055, %8887 ], [ 0.000000e+00, %8844 ]
  %9063 = fmul fast float %9060, %7398
  %9064 = fmul fast float %9061, %7398
  %9065 = fmul fast float %9062, %7398
  %9066 = fmul fast float %9057, %8851
  %9067 = call float @dx.op.dot3.f32(i32 55, float %9057, float %9058, float %9059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9068 = call float @dx.op.dot3.f32(i32 55, float %9063, float %9064, float %9065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9069 = select i1 %270, float %9067, float %9057
  %9070 = select i1 %270, float %9067, float %9058
  %9071 = select i1 %270, float 1.000000e+00, float %9059
  %9072 = select i1 %270, float %9068, float %9063
  %9073 = select i1 %270, float 0.000000e+00, float %9064
  %9074 = select i1 %270, float 0.000000e+00, float %9065
  %9075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.i32 %9075, 3
  %9077 = and i32 %9076, 3
  %9078 = icmp ne i32 %9077, 0
  %9079 = and i32 %9076, 4
  %9080 = icmp ne i32 %9079, 0
  %9081 = and i1 %9078, %9080
  %9082 = and i1 %270, %9081
  br i1 %9082, label %9083, label %9089

; <label>:9083                                    ; preds = %9056
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9086 = fadd fast float %9066, -1.000000e+00
  %9087 = fmul fast float %9085, %9086
  %9088 = fadd fast float %9087, 1.000000e+00
  br label %9089

; <label>:9089                                    ; preds = %9083, %9056
  %9090 = phi float [ %9088, %9083 ], [ %9066, %9056 ]
  %9091 = fadd fast float %8848, %8845
  %9092 = fmul fast float %9069, %9091
  %9093 = fadd fast float %9092, %9072
  %9094 = fadd fast float %8849, %8846
  %9095 = fmul fast float %9070, %9094
  %9096 = fadd fast float %9095, %9073
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  br i1 %270, label %9099, label %9123

; <label>:9099                                    ; preds = %9089
  %9100 = fadd fast float %9093, %9096
  %9101 = fmul fast float %9098, %9100
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 3
  %9104 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %9105 = fsub fast float %7407, %7401
  %9106 = fadd fast float %9105, %7408
  %9107 = fsub fast float %9106, %9104
  %9108 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %9109 = fmul fast float %9107, %9108
  %9110 = call float @dx.op.unary.f32(i32 7, float %9109)  ; Saturate(value)
  %9111 = fsub fast float %9110, %9103
  %9112 = fmul fast float %9111, %9090
  %9113 = fadd fast float %9112, %9103
  %9114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.f32 %9114, 0
  %9116 = fsub fast float %9113, %9115
  %9117 = fmul fast float %9116, 1.000000e+01
  %9118 = call float @dx.op.unary.f32(i32 7, float %9117)  ; Saturate(value)
  %9119 = fsub fast float %4094, %7398
  %9120 = fmul fast float %9118, %9119
  %9121 = fadd fast float %9120, %7398
  %9122 = fmul fast float %9121, %9113
  br label %9147

; <label>:9123                                    ; preds = %9089
  %9124 = fadd fast float %8850, %8847
  %9125 = fmul fast float %9071, %9124
  %9126 = fadd fast float %9125, %9074
  %9127 = fmul fast float %9098, %9093
  %9128 = fmul fast float %9098, %9096
  %9129 = fmul fast float %9098, %9126
  %9130 = call float @dx.op.binary.f32(i32 35, float %9128, float %9129)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9127, float %9130)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9131, float %7398)  ; FMax(a,b)
  %9133 = fcmp fast ugt float %9132, 0x3F10000000000000
  br i1 %9133, label %9135, label %9134

; <label>:9134                                    ; preds = %9123
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9135

; <label>:9135                                    ; preds = %9134, %9123
  %9136 = add i32 %58, 356
  %9137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9136, i32 undef)  ; BufferLoad(srv,index,wot)
  %9138 = extractvalue %dx.types.ResRet.i32 %9137, 0
  %9139 = and i32 %9138, 32
  %9140 = icmp eq i32 %9139, 0
  br i1 %9140, label %9147, label %9141

; <label>:9141                                    ; preds = %9135
  %9142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9142, 0
  %9144 = fmul fast float %9143, 0x3FE99999A0000000
  %9145 = fadd fast float %9143, %9127
  %9146 = fadd fast float %9144, %9129
  br label %9147

; <label>:9147                                    ; preds = %9141, %9135, %9099
  %9148 = phi float [ %9101, %9099 ], [ %9145, %9141 ], [ %9127, %9135 ]
  %9149 = phi float [ %9122, %9099 ], [ %9128, %9141 ], [ %9128, %9135 ]
  %9150 = phi float [ %9121, %9099 ], [ %9146, %9141 ], [ %9129, %9135 ]
  %9151 = phi float [ %9121, %9099 ], [ %7398, %9141 ], [ %7398, %9135 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9152 = call float @dx.op.binary.f32(i32 36, float %9148, float 3.225500e+04)  ; FMin(a,b)
  %9153 = call float @dx.op.binary.f32(i32 36, float %9149, float 3.225500e+04)  ; FMin(a,b)
  %9154 = call float @dx.op.binary.f32(i32 36, float %9150, float 3.225500e+04)  ; FMin(a,b)
  %9155 = call float @dx.op.binary.f32(i32 36, float %9151, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9152)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9153)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9154)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9155)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0]}
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
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 12, i8 0, !80}
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

