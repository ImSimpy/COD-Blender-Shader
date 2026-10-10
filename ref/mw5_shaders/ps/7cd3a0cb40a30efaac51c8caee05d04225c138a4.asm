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
; shader hash: 1f4459038a3ac414c9f6b789f978cb3f
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
  br i1 %3708, label %4227, label %3709

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
  br i1 %3770, label %4195, label %3771

; <label>:3771                                    ; preds = %3709
  br label %3772

; <label>:3772                                    ; preds = %3894, %3771
  %3773 = phi i32 [ %3796, %3894 ], [ %3769, %3771 ]
  %3774 = phi float [ %3895, %3894 ], [ 0.000000e+00, %3771 ]
  %3775 = phi float [ %3896, %3894 ], [ %1291, %3771 ]
  %3776 = phi float [ %3897, %3894 ], [ %3653, %3771 ]
  %3777 = phi float [ %3898, %3894 ], [ %3632, %3771 ]
  %3778 = phi float [ %3899, %3894 ], [ %3631, %3771 ]
  %3779 = phi float [ %3900, %3894 ], [ 0.000000e+00, %3771 ]
  %3780 = phi float [ %3901, %3894 ], [ %3675, %3771 ]
  %3781 = phi float [ %3902, %3894 ], [ %3677, %3771 ]
  %3782 = phi float [ %3903, %3894 ], [ %3679, %3771 ]
  %3783 = phi float [ %3904, %3894 ], [ %3705, %3771 ]
  %3784 = phi float [ %3905, %3894 ], [ %3706, %3771 ]
  %3785 = phi float [ %3906, %3894 ], [ %3707, %3771 ]
  %3786 = phi float [ %3907, %3894 ], [ %3630, %3771 ]
  %3787 = phi float [ %3908, %3894 ], [ %3629, %3771 ]
  %3788 = phi float [ %3909, %3894 ], [ 0.000000e+00, %3771 ]
  %3789 = phi float [ %3910, %3894 ], [ %3628, %3771 ]
  %3790 = phi float [ %3911, %3894 ], [ %3660, %3771 ]
  %3791 = phi float [ %3912, %3894 ], [ %3661, %3771 ]
  %3792 = phi float [ %3913, %3894 ], [ %3662, %3771 ]
  %3793 = shl nuw nsw i32 %3773, 2
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = lshr i32 %3795, 16
  %3797 = shl i32 %3795, 8
  %3798 = and i32 %3797, 16776960
  %3799 = or i32 %3798, 48
  %3800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = or i32 %3798, 64
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.i32 %3805, 1
  %3808 = or i32 %3798, 80
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3812 = or i32 %3798, 96
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3813, 3
  %3818 = or i32 %3798, 112
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3821 = or i32 %3798, 128
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = or i32 %3798, 144
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3833 = or i32 %3798, 160
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = or i32 %3798, 192
  %3840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.i32 %3840, 0
  %3842 = or i32 %3798, 208
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = or i32 %3798, 248
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3854 = call float @dx.op.dot4.f32(i32 56, float %3850, float %3851, float %3852, float %3853, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3855 = or i32 %3798, 16
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = call float @dx.op.dot4.f32(i32 56, float %3857, float %3858, float %3859, float %3860, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3862 = or i32 %3798, 32
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = call float @dx.op.dot4.f32(i32 56, float %3864, float %3865, float %3866, float %3867, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3869 = call float @dx.op.unary.f32(i32 27, float %3854)  ; Round_ni(value)
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = call float @dx.op.unary.f32(i32 27, float %3861)  ; Round_ni(value)
  %3872 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3873 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3874 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3875 = fadd fast float %3872, %3870
  %3876 = fadd fast float %3875, %3874
  %3877 = fcmp fast oeq float %3876, 0.000000e+00
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3850, float %3851, float %3852, float %3853, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.dot4.f32(i32 56, float %3857, float %3858, float %3859, float %3860, float %3716, float %3717, float %3718, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3880 = call float @dx.op.dot4.f32(i32 56, float %3850, float %3851, float %3852, float %3853, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3881 = call float @dx.op.dot4.f32(i32 56, float %3857, float %3858, float %3859, float %3860, float %3719, float %3720, float %3721, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3882 = fsub fast float %3878, %3854
  %3883 = fsub fast float %3880, %3854
  %3884 = fsub fast float %3879, %3861
  %3885 = fsub fast float %3881, %3861
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3889 = fadd fast float %3888, %3886
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3892 = fcmp fast ogt float %3890, %3891
  %3893 = and i1 %3877, %3892
  br i1 %3893, label %3915, label %3894

; <label>:3894                                    ; preds = %4181, %3998, %3915, %3772
  %3895 = phi float [ %3774, %3915 ], [ %4001, %3998 ], [ %4001, %4181 ], [ %3774, %3772 ]
  %3896 = phi float [ %3775, %3915 ], [ %3775, %3998 ], [ %4156, %4181 ], [ %3775, %3772 ]
  %3897 = phi float [ %3776, %3915 ], [ %3776, %3998 ], [ %4155, %4181 ], [ %3776, %3772 ]
  %3898 = phi float [ %3777, %3915 ], [ %3777, %3998 ], [ %4153, %4181 ], [ %3777, %3772 ]
  %3899 = phi float [ %3778, %3915 ], [ %3778, %3998 ], [ %4125, %4181 ], [ %3778, %3772 ]
  %3900 = phi float [ %3779, %3915 ], [ %3779, %3998 ], [ %4123, %4181 ], [ %3779, %3772 ]
  %3901 = phi float [ %3780, %3915 ], [ %3780, %3998 ], [ %4191, %4181 ], [ %3780, %3772 ]
  %3902 = phi float [ %3781, %3915 ], [ %3781, %3998 ], [ %4192, %4181 ], [ %3781, %3772 ]
  %3903 = phi float [ %3782, %3915 ], [ %3782, %3998 ], [ %4193, %4181 ], [ %3782, %3772 ]
  %3904 = phi float [ %3783, %3915 ], [ %3783, %3998 ], [ %4104, %4181 ], [ %3783, %3772 ]
  %3905 = phi float [ %3784, %3915 ], [ %3784, %3998 ], [ %4105, %4181 ], [ %3784, %3772 ]
  %3906 = phi float [ %3785, %3915 ], [ %3785, %3998 ], [ %4106, %4181 ], [ %3785, %3772 ]
  %3907 = phi float [ %3786, %3915 ], [ %3786, %3998 ], [ %4133, %4181 ], [ %3786, %3772 ]
  %3908 = phi float [ %3787, %3915 ], [ %3787, %3998 ], [ %4130, %4181 ], [ %3787, %3772 ]
  %3909 = phi float [ %3788, %3915 ], [ %3788, %3998 ], [ %4127, %4181 ], [ %3788, %3772 ]
  %3910 = phi float [ %3789, %3915 ], [ %3789, %3998 ], [ %4121, %4181 ], [ %3789, %3772 ]
  %3911 = phi float [ %3790, %3915 ], [ %3790, %3998 ], [ %4116, %4181 ], [ %3790, %3772 ]
  %3912 = phi float [ %3791, %3915 ], [ %3791, %3998 ], [ %4117, %4181 ], [ %3791, %3772 ]
  %3913 = phi float [ %3792, %3915 ], [ %3792, %3998 ], [ %4118, %4181 ], [ %3792, %3772 ]
  %3914 = icmp eq i32 %3796, 0
  br i1 %3914, label %4194, label %3772

; <label>:3915                                    ; preds = %3772
  %3916 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3917 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3918 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3922 = extractvalue %dx.types.ResRet.i32 %3805, 3
  %3923 = extractvalue %dx.types.ResRet.i32 %3805, 2
  %3924 = bitcast float %3916 to i32
  %3925 = add i32 %3922, 0
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3928 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3926, %dx.types.Handle %3927, float %3854, float %3861, float undef, float undef, i32 0, i32 0, i32 undef, float %3882, float %3884, float undef, float %3883, float %3885, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = fmul fast float %3929, %3921
  %3931 = fadd fast float %3930, %3920
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = fmul fast float %3854, %3814
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3861, float %3933)  ; FMad(a,b,c)
  %3935 = fadd fast float %3934, %3919
  %3936 = fmul fast float %3854, %3816
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3861, float %3936)  ; FMad(a,b,c)
  %3938 = fadd fast float %3937, %3918
  %3939 = fmul fast float %3882, %3814
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3884, float %3939)  ; FMad(a,b,c)
  %3941 = fmul fast float %3882, %3816
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3884, float %3941)  ; FMad(a,b,c)
  %3943 = fmul fast float %3883, %3814
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3815, float %3885, float %3943)  ; FMad(a,b,c)
  %3945 = fmul fast float %3883, %3816
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3885, float %3945)  ; FMad(a,b,c)
  %3947 = add i32 %3923, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3927, float %3935, float %3938, float undef, float undef, i32 0, i32 0, i32 undef, float %3940, float %3942, float undef, float %3944, float %3946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = and i32 %3924, 1024
  %3952 = icmp ne i32 %3951, 0
  %3953 = fcmp fast ogt float %3950, 0x3FE0101020000000
  %3954 = uitofp i1 %3953 to float
  %3955 = select i1 %3952, float %3954, float %3950
  %3956 = and i32 %3924, 8192
  %3957 = icmp ne i32 %3956, 0
  %3958 = select i1 %3957, float %3917, float 1.000000e+00
  %3959 = fmul fast float %3854, 2.000000e+00
  %3960 = fadd fast float %3959, -1.000000e+00
  %3961 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3962 = fmul fast float %3961, %3847
  %3963 = fsub fast float %3962, %3847
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = fmul fast float %3861, 2.000000e+00
  %3966 = fadd fast float %3965, -1.000000e+00
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = fmul fast float %3967, %3848
  %3969 = fsub fast float %3968, %3848
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = fmul fast float %3873, %3810
  %3972 = fsub fast float %3971, %3810
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3932, %3958
  %3975 = fmul fast float %3974, %3929
  %3976 = fmul fast float %3975, %3964
  %3977 = fmul fast float %3976, %3955
  %3978 = fmul fast float %3977, %3970
  %3979 = fmul fast float %3978, %3973
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3983 = fsub fast float %3890, %3982
  %3984 = fmul fast float %3983, %3981
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3979, %3811
  %3987 = fadd fast float %3979, %3811
  %3988 = fmul fast float %3987, %3820
  %3989 = fsub fast float %3988, %3820
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = and i32 %3924, 128
  %3992 = icmp ne i32 %3991, 0
  %3993 = select i1 %3992, float %3990, float %3986
  %3994 = fmul fast float %3993, %3985
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = fcmp fast ugt float %3994, %3996
  br i1 %3997, label %3998, label %3894

; <label>:3998                                    ; preds = %3915
  %3999 = select i1 %3957, float %3994, float 0.000000e+00
  %4000 = fadd fast float %3999, %3774
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  br i1 %3957, label %3894, label %4002

; <label>:4002                                    ; preds = %3998
  %4003 = and i32 %3924, 4
  %4004 = and i32 %3924, 8
  %4005 = add i32 %3806, 0
  %4006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4005, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4008 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4006, %dx.types.Handle %4007, float %3935, float %3938, float undef, float undef, i32 0, i32 0, i32 undef, float %3940, float %3942, float undef, float %3944, float %3946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = bitcast float %3832 to i32
  %4014 = and i32 %4013, 255
  %4015 = uitofp i32 %4014 to float
  %4016 = lshr i32 %4013, 8
  %4017 = and i32 %4016, 255
  %4018 = uitofp i32 %4017 to float
  %4019 = fmul fast float %4012, %4015
  %4020 = fadd fast float %4019, %4018
  %4021 = fmul fast float %4020, 0x3F70101000000000
  %4022 = add i32 %3807, 0
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4022, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4023, %dx.types.Handle %4007, float %3935, float %3938, float undef, float undef, i32 0, i32 0, i32 undef, float %3940, float %3942, float undef, float %3944, float %3946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.ResRet.f32 %4024, 3
  %4029 = bitcast float %3826 to i32
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = lshr i32 %4029, 8
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = lshr i32 %4029, 16
  %4036 = and i32 %4035, 255
  %4037 = uitofp i32 %4036 to float
  %4038 = fmul fast float %4037, 0x3F70101000000000
  %4039 = fmul fast float %4025, %4031
  %4040 = fadd fast float %4039, %4034
  %4041 = fmul fast float %4040, 0x3F70101000000000
  %4042 = fadd fast float %4026, -5.000000e-01
  %4043 = fadd fast float %4028, -5.000000e-01
  %4044 = fmul fast float %4042, %4038
  %4045 = fmul fast float %4043, %4038
  %4046 = fadd fast float %4044, 5.000000e-01
  %4047 = fadd fast float %4045, 5.000000e-01
  %4048 = fmul fast float %4009, %3835
  %4049 = fmul fast float %4010, %3836
  %4050 = fmul fast float %4011, %3837
  %4051 = fmul fast float %4046, 2.000000e+00
  %4052 = fadd fast float %4051, -1.000000e+00
  %4053 = fmul fast float %4047, 2.000000e+00
  %4054 = fadd fast float %4053, -1.000000e+00
  %4055 = fadd fast float %4052, %4054
  %4056 = fmul fast float %4055, 5.000000e-01
  %4057 = fsub fast float %4052, %4054
  %4058 = fmul fast float %4057, 5.000000e-01
  %4059 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4060 = fsub fast float 1.000000e+00, %4059
  %4061 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4062 = fsub fast float %4060, %4061
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4058, float %4062, float %4056, float %4058, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4056, %4064
  %4066 = fmul fast float %4058, %4064
  %4067 = fmul fast float %4064, %4062
  %4068 = fmul fast float %4067, %3801
  %4069 = fmul fast float %4067, %3802
  %4070 = fmul fast float %4067, %3803
  %4071 = fmul fast float %4065, %3823
  %4072 = fmul fast float %4065, %3824
  %4073 = fmul fast float %4065, %3825
  %4074 = fadd fast float %4071, %4068
  %4075 = fadd fast float %4072, %4069
  %4076 = fadd fast float %4073, %4070
  %4077 = fmul fast float %4066, %3829
  %4078 = fmul fast float %4066, %3830
  %4079 = fmul fast float %4066, %3831
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = fadd fast float %4076, %4079
  %4083 = call float @dx.op.dot3.f32(i32 55, float %4080, float %4081, float %4082, float %4080, float %4081, float %4082)  ; Dot3(ax,ay,az,bx,by,bz)
  %4084 = call float @dx.op.unary.f32(i32 25, float %4083)  ; Rsqrt(value)
  %4085 = fmul fast float %4080, %4084
  %4086 = fmul fast float %4081, %4084
  %4087 = fmul fast float %4082, %4084
  %4088 = icmp ne i32 %4004, 0
  %4089 = select i1 %4088, float 1.000000e+00, float 0.000000e+00
  %4090 = fmul fast float %3994, %4089
  %4091 = and i32 %3924, 1
  %4092 = icmp eq i32 %4091, 0
  br i1 %4092, label %4093, label %4097

; <label>:4093                                    ; preds = %4002
  %4094 = fsub fast float %4085, %3783
  %4095 = fsub fast float %4086, %3784
  %4096 = fsub fast float %4087, %3785
  br label %4097

; <label>:4097                                    ; preds = %4093, %4002
  %4098 = phi float [ %4094, %4093 ], [ %4085, %4002 ]
  %4099 = phi float [ %4095, %4093 ], [ %4086, %4002 ]
  %4100 = phi float [ %4096, %4093 ], [ %4087, %4002 ]
  %4101 = fmul float %4100, %4090
  %4102 = fmul float %4099, %4090
  %4103 = fmul float %4098, %4090
  %4104 = fadd fast float %4103, %3783
  %4105 = fadd fast float %4102, %3784
  %4106 = fadd fast float %4101, %3785
  %4107 = icmp ne i32 %4003, 0
  %4108 = select i1 %4107, float 1.000000e+00, float 0.000000e+00
  %4109 = fmul fast float %3994, %4108
  %4110 = fsub fast float %4048, %3790
  %4111 = fsub fast float %4049, %3791
  %4112 = fsub fast float %4050, %3792
  %4113 = fmul fast float %4110, %4109
  %4114 = fmul fast float %4111, %4109
  %4115 = fmul fast float %4112, %4109
  %4116 = fadd fast float %4113, %3790
  %4117 = fadd fast float %4114, %3791
  %4118 = fadd fast float %4115, %3792
  %4119 = fsub fast float %4021, %3789
  %4120 = fmul fast float %4119, %4109
  %4121 = fadd fast float %4120, %3789
  %4122 = fmul fast float %4109, %3779
  %4123 = fsub fast float %3779, %4122
  %4124 = fmul fast float %4109, %3778
  %4125 = fsub fast float %3778, %4124
  %4126 = fadd fast float %3994, %3788
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4128 = fsub fast float %4041, %3787
  %4129 = fmul fast float %4128, %4090
  %4130 = fadd fast float %4129, %3787
  %4131 = fsub fast float %4027, %3786
  %4132 = fmul fast float %4131, %4090
  %4133 = fadd fast float %4132, %3786
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4049, float %4050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = fmul fast float %4137, %4134
  %4139 = fadd fast float %4138, %4136
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = bitcast float %3838 to i32
  %4142 = and i32 %4141, 65535
  %4143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4142)  ; LegacyF16ToF32(value)
  %4144 = lshr i32 %4141, 16
  %4145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4144)  ; LegacyF16ToF32(value)
  %4146 = fcmp fast oge float %4143, 0.000000e+00
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = select i1 %4146, float %4143, float %4148
  %4150 = fadd fast float %4149, %4145
  %4151 = fsub fast float %4140, %3777
  %4152 = fmul fast float %4151, %3994
  %4153 = fadd fast float %4152, %3777
  %4154 = fmul fast float %4150, %3994
  %4155 = call float @dx.op.binary.f32(i32 35, float %3776, float %4154)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 35, float %3775, float %3994)  ; FMax(a,b)
  %4157 = and i32 %3924, 16
  %4158 = icmp eq i32 %4157, 0
  br i1 %4158, label %4181, label %4159

; <label>:4159                                    ; preds = %4097
  %4160 = bitcast float %3844 to i32
  %4161 = add i32 %3841, 0
  %4162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4161, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4162, %dx.types.Handle %4007, float %3935, float %3938, float undef, float undef, i32 0, i32 0, i32 undef, float %3940, float %3942, float undef, float %3944, float %3946, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = and i32 %4160, 65535
  %4168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4167)  ; LegacyF16ToF32(value)
  %4169 = fmul fast float %4164, %3835
  %4170 = fmul fast float %4165, %3836
  %4171 = fmul fast float %4166, %3837
  %4172 = and i32 %3924, 16384
  %4173 = icmp ne i32 %4172, 0
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = select i1 %4173, float %4175, float 1.000000e+00
  %4177 = fmul fast float %4176, %4168
  %4178 = fmul fast float %4169, %4177
  %4179 = fmul fast float %4170, %4177
  %4180 = fmul fast float %4171, %4177
  br label %4181

; <label>:4181                                    ; preds = %4159, %4097
  %4182 = phi float [ %4178, %4159 ], [ 0.000000e+00, %4097 ]
  %4183 = phi float [ %4179, %4159 ], [ 0.000000e+00, %4097 ]
  %4184 = phi float [ %4180, %4159 ], [ 0.000000e+00, %4097 ]
  %4185 = fsub fast float %4182, %3780
  %4186 = fsub fast float %4183, %3781
  %4187 = fsub fast float %4184, %3782
  %4188 = fmul fast float %4185, %3994
  %4189 = fmul fast float %4186, %3994
  %4190 = fmul fast float %4187, %3994
  %4191 = fadd fast float %4188, %3780
  %4192 = fadd fast float %4189, %3781
  %4193 = fadd fast float %4190, %3782
  br label %3894

; <label>:4194                                    ; preds = %3894
  br label %4195

; <label>:4195                                    ; preds = %4194, %3709
  %4196 = phi float [ 0.000000e+00, %3709 ], [ %3895, %4194 ]
  %4197 = phi float [ %1291, %3709 ], [ %3896, %4194 ]
  %4198 = phi float [ %3653, %3709 ], [ %3897, %4194 ]
  %4199 = phi float [ %3632, %3709 ], [ %3898, %4194 ]
  %4200 = phi float [ %3631, %3709 ], [ %3899, %4194 ]
  %4201 = phi float [ 0.000000e+00, %3709 ], [ %3900, %4194 ]
  %4202 = phi float [ %3675, %3709 ], [ %3901, %4194 ]
  %4203 = phi float [ %3677, %3709 ], [ %3902, %4194 ]
  %4204 = phi float [ %3679, %3709 ], [ %3903, %4194 ]
  %4205 = phi float [ %3705, %3709 ], [ %3904, %4194 ]
  %4206 = phi float [ %3706, %3709 ], [ %3905, %4194 ]
  %4207 = phi float [ %3707, %3709 ], [ %3906, %4194 ]
  %4208 = phi float [ %3630, %3709 ], [ %3907, %4194 ]
  %4209 = phi float [ %3629, %3709 ], [ %3908, %4194 ]
  %4210 = phi float [ 0.000000e+00, %3709 ], [ %3909, %4194 ]
  %4211 = phi float [ %3628, %3709 ], [ %3910, %4194 ]
  %4212 = phi float [ %3660, %3709 ], [ %3911, %4194 ]
  %4213 = phi float [ %3661, %3709 ], [ %3912, %4194 ]
  %4214 = phi float [ %3662, %3709 ], [ %3913, %4194 ]
  %4215 = call float @dx.op.dot3.f32(i32 55, float %4205, float %4206, float %4207, float %4205, float %4206, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4216 = call float @dx.op.unary.f32(i32 25, float %4215)  ; Rsqrt(value)
  %4217 = fmul fast float %4216, %4205
  %4218 = fmul fast float %4216, %4206
  %4219 = fmul fast float %4216, %4207
  %4220 = fadd fast float %4210, %1291
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4222 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %4219, float %4217, float %4218, float %4219)  ; Dot3(ax,ay,az,bx,by,bz)
  %4223 = call float @dx.op.unary.f32(i32 25, float %4222)  ; Rsqrt(value)
  %4224 = fmul fast float %4223, %4217
  %4225 = fmul fast float %4223, %4218
  %4226 = fmul fast float %4223, %4219
  br label %4227

; <label>:4227                                    ; preds = %4195, %3619
  %4228 = phi float [ %4224, %4195 ], [ %3705, %3619 ]
  %4229 = phi float [ %4225, %4195 ], [ %3706, %3619 ]
  %4230 = phi float [ %4226, %4195 ], [ %3707, %3619 ]
  %4231 = phi float [ %4212, %4195 ], [ %3660, %3619 ]
  %4232 = phi float [ %4213, %4195 ], [ %3661, %3619 ]
  %4233 = phi float [ %4214, %4195 ], [ %3662, %3619 ]
  %4234 = phi float [ %4202, %4195 ], [ %3675, %3619 ]
  %4235 = phi float [ %4203, %4195 ], [ %3677, %3619 ]
  %4236 = phi float [ %4204, %4195 ], [ %3679, %3619 ]
  %4237 = phi float [ %4211, %4195 ], [ %3628, %3619 ]
  %4238 = phi float [ %4221, %4195 ], [ %1291, %3619 ]
  %4239 = phi float [ %4209, %4195 ], [ %3629, %3619 ]
  %4240 = phi float [ %4208, %4195 ], [ %3630, %3619 ]
  %4241 = phi float [ %4201, %4195 ], [ 0.000000e+00, %3619 ]
  %4242 = phi float [ %4200, %4195 ], [ %3631, %3619 ]
  %4243 = phi float [ %4196, %4195 ], [ 0.000000e+00, %3619 ]
  %4244 = phi float [ %4198, %4195 ], [ %3653, %3619 ]
  %4245 = phi float [ %4197, %4195 ], [ %1291, %3619 ]
  %4246 = phi float [ %4199, %4195 ], [ %3632, %3619 ]
  %4247 = fadd fast float %4237, 0xBFB99999A0000000
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = fmul fast float %4248, 0x3FF1C71C80000000
  %4250 = call float @dx.op.binary.f32(i32 36, float %4237, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4251 = fsub fast float 1.000000e+00, %4249
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fmul fast float %4252, %4231
  %4254 = fmul fast float %4252, %4232
  %4255 = fmul fast float %4252, %4233
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4257 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4258 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4259 = fmul fast float %4249, %4231
  %4260 = fmul fast float %4249, %4232
  %4261 = fmul fast float %4249, %4233
  %4262 = fadd fast float %4259, %4250
  %4263 = fadd fast float %4260, %4250
  %4264 = fadd fast float %4261, %4250
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.i32 %4269, 3
  %4271 = and i32 %4270, 8
  %4272 = icmp ne i32 %4271, 0
  %4273 = call float @dx.op.binary.f32(i32 35, float %4256, float %4231)  ; FMax(a,b)
  %4274 = call float @dx.op.binary.f32(i32 35, float %4257, float %4231)  ; FMax(a,b)
  %4275 = call float @dx.op.binary.f32(i32 35, float %4258, float %4231)  ; FMax(a,b)
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4256, float %4257, float %4258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = select i1 %271, float %4231, float %4256
  %4278 = select i1 %271, float %4276, float %4257
  %4279 = select i1 %271, float 1.000000e+00, float %4258
  %4280 = select i1 %4272, float %4273, float %4277
  %4281 = select i1 %4272, float %4274, float %4278
  %4282 = select i1 %4272, float %4275, float %4279
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = extractvalue %dx.types.CBufRet.f32 %4283, 1
  %4286 = extractvalue %dx.types.CBufRet.f32 %4283, 2
  %4287 = fadd fast float %4284, %199
  %4288 = fadd fast float %4285, %200
  %4289 = fadd fast float %4286, %201
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4293 = fsub fast float %4287, %4291
  %4294 = fsub fast float %4288, %4292
  %4295 = fmul fast float %4293, %4293
  %4296 = fmul fast float %4294, %4294
  %4297 = fadd fast float %4295, %4296
  %4298 = call float @dx.op.unary.f32(i32 24, float %4297)  ; Sqrt(value)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4300 = fcmp fast olt float %4298, %4299
  br i1 %4300, label %4301, label %4368

; <label>:4301                                    ; preds = %4227
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4312 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4313 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4314 = fadd fast float %4311, %4287
  %4315 = fadd fast float %4312, %4288
  %4316 = fadd fast float %4313, %4289
  %4317 = fmul fast float %4314, %4303
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4305, float %4317)  ; FMad(a,b,c)
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4307, float %4318)  ; FMad(a,b,c)
  %4320 = fmul fast float %4314, %4308
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4309, float %4320)  ; FMad(a,b,c)
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4310, float %4321)  ; FMad(a,b,c)
  %4323 = fsub fast float %4319, %4311
  %4324 = fsub fast float %4322, %4312
  %4325 = fsub fast float %4323, %4291
  %4326 = fadd fast float %4325, %4299
  %4327 = fsub fast float %4324, %4292
  %4328 = fadd fast float %4327, %4299
  %4329 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4330 = fmul fast float %4326, %4329
  %4331 = fmul fast float %4328, %4329
  %4332 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4334 = fsub fast float 1.000000e+00, %4332
  %4335 = fsub fast float 1.000000e+00, %4333
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4334, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = fcmp fast ugt float %4337, 0.000000e+00
  br i1 %4338, label %4339, label %4642

; <label>:4339                                    ; preds = %4301
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4342 = fmul fast float %4341, %4337
  %4343 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4344 = fadd fast float %4343, %4342
  %4345 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4346 = fadd fast float %4344, %4313
  %4347 = fmul fast float %4319, %4307
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4310, float %4347)  ; FMad(a,b,c)
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4345, float %4348)  ; FMad(a,b,c)
  %4350 = fsub fast float %4349, %4313
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4353 = fsub fast float %4350, %4352
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4334, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4334, float %4335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.ResRet.f32 %4358, 1
  %4361 = extractvalue %dx.types.ResRet.f32 %4358, 2
  %4362 = fadd fast float %4359, %4355
  %4363 = fmul fast float %4362, 0x3F847AE140000000
  %4364 = fadd fast float %4360, %4356
  %4365 = fmul fast float %4364, 0x3F847AE140000000
  %4366 = fadd fast float %4361, %4357
  %4367 = fmul fast float %4366, 0x3F847AE140000000
  br label %4642

; <label>:4368                                    ; preds = %4227
  %4369 = and i32 %250, 1
  %4370 = icmp eq i32 %4369, 0
  br i1 %4370, label %4642, label %4371

; <label>:4371                                    ; preds = %4368
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4382 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4384 = fadd fast float %4381, %4287
  %4385 = fadd fast float %4382, %4288
  %4386 = fadd fast float %4383, %4289
  %4387 = fmul fast float %4384, %4373
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4375, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4377, float %4388)  ; FMad(a,b,c)
  %4390 = fmul fast float %4384, %4378
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4379, float %4390)  ; FMad(a,b,c)
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4380, float %4391)  ; FMad(a,b,c)
  %4393 = fsub fast float %4389, %4381
  %4394 = fsub fast float %4392, %4382
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.i32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.i32 %4402, 1
  %4405 = udiv i32 %4404, %4403
  %4406 = fsub fast float %4393, %4396
  %4407 = fsub fast float %4394, %4397
  %4408 = call float @dx.op.binary.f32(i32 35, float %4406, float 0.000000e+00)  ; FMax(a,b)
  %4409 = call float @dx.op.binary.f32(i32 35, float %4407, float 0.000000e+00)  ; FMax(a,b)
  %4410 = call float @dx.op.binary.f32(i32 36, float %4408, float %4398)  ; FMin(a,b)
  %4411 = call float @dx.op.binary.f32(i32 36, float %4409, float %4399)  ; FMin(a,b)
  %4412 = add i32 %4403, -1
  %4413 = add i32 %4405, -1
  %4414 = fmul fast float %4410, %4401
  %4415 = fmul fast float %4411, %4401
  %4416 = fptoui float %4414 to i32
  %4417 = fptoui float %4415 to i32
  %4418 = call i32 @dx.op.binary.i32(i32 40, i32 %4416, i32 %4412)  ; UMin(a,b)
  %4419 = call i32 @dx.op.binary.i32(i32 40, i32 %4417, i32 %4413)  ; UMin(a,b)
  %4420 = mul i32 %4419, %4403
  %4421 = add i32 %4420, %4418
  %4422 = shl i32 %4421, 2
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = icmp eq i32 %4424, -1
  br i1 %4425, label %4642, label %4426

; <label>:4426                                    ; preds = %4371
  %4427 = mul i32 %4424, 148
  %4428 = add i32 %4427, 4
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = add i32 %4427, 8
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = add i32 %4427, 36
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = add i32 %4427, 60
  %4438 = add i32 %4427, 92
  %4439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.i32 %4439, 0
  %4441 = add i32 %4427, 116
  %4442 = fsub fast float %4393, %4430
  %4443 = fsub fast float %4394, %4433
  %4444 = fmul fast float %4401, %4442
  %4445 = fmul fast float %4401, %4443
  %4446 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4448 = fsub fast float 1.000000e+00, %4447
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4451 = call float @dx.op.unary.f32(i32 83, float %4446)  ; DerivCoarseX(value)
  %4452 = call float @dx.op.unary.f32(i32 83, float %4448)  ; DerivCoarseX(value)
  %4453 = call float @dx.op.unary.f32(i32 84, float %4446)  ; DerivCoarseY(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %4448)  ; DerivCoarseY(value)
  %4455 = fmul fast float %4451, %4450
  %4456 = fmul fast float %4452, %4450
  %4457 = fmul fast float %4453, %4450
  %4458 = fmul fast float %4454, %4450
  %4459 = call float @dx.op.dot2.f32(i32 54, float %4457, float %4458, float %4457, float %4458)  ; Dot2(ax,ay,bx,by)
  %4460 = call float @dx.op.dot2.f32(i32 54, float %4455, float %4456, float %4455, float %4456)  ; Dot2(ax,ay,bx,by)
  %4461 = call float @dx.op.binary.f32(i32 35, float %4460, float %4459)  ; FMax(a,b)
  %4462 = call float @dx.op.unary.f32(i32 23, float %4461)  ; Log(value)
  %4463 = fmul fast float %4462, 5.000000e-01
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4466 = fadd fast float %4465, %4463
  %4467 = call float @dx.op.binary.f32(i32 35, float %4466, float 0.000000e+00)  ; FMax(a,b)
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4470 = fadd fast float %4469, %4467
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4473 = fadd fast float %4470, %4472
  %4474 = add i32 %4440, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4474, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4475, i32 0)  ; GetDimensions(handle,mipLevel)
  %4477 = extractvalue %dx.types.Dimensions %4476, 0
  %4478 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4477)  ; FirstbitLo(value)
  %4479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.i32 %4479, 1
  %4481 = sub nsw i32 %4480, %4478
  %4482 = sitofp i32 %4481 to float
  %4483 = fsub fast float %4473, %4482
  %4484 = call float @dx.op.binary.f32(i32 35, float %4483, float 0.000000e+00)  ; FMax(a,b)
  %4485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4475, %dx.types.Handle %48, float %4446, float %4448, float %4436, float undef, i32 0, i32 0, i32 undef, float %4484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = fcmp ule float %4486, 0x3FE0101020000000
  %4488 = extractvalue %dx.types.CBufRet.i32 %4479, 0
  %4489 = and i32 %4488, 128
  %4490 = icmp ne i32 %4489, 0
  %4491 = and i1 %4487, %4490
  br i1 %4491, label %4642, label %4492

; <label>:4492                                    ; preds = %4426
  %4493 = add i32 %4427, 20
  %4494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = add i32 %4427, 24
  %4497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = add i32 %4427, 40
  %4500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.f32 %4500, 0
  %4502 = add i32 %4427, 96
  %4503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.i32 %4503, 0
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 2
  %4507 = fmul fast float %4506, %4446
  %4508 = fmul fast float %4506, %4448
  %4509 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4510 = fadd fast float %4507, %4509
  %4511 = fadd fast float %4508, %4509
  %4512 = add i32 %4504, 0
  %4513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4512, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4514 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4513, i32 0)  ; GetDimensions(handle,mipLevel)
  %4515 = extractvalue %dx.types.Dimensions %4514, 0
  %4516 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4515)  ; FirstbitLo(value)
  %4517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.i32 %4517, 1
  %4519 = sub nsw i32 %4518, %4516
  %4520 = sitofp i32 %4519 to float
  %4521 = fsub fast float %4470, %4520
  %4522 = call float @dx.op.binary.f32(i32 35, float %4521, float 0.000000e+00)  ; FMax(a,b)
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4513, %dx.types.Handle %48, float %4510, float %4511, float %4501, float undef, i32 0, i32 0, i32 undef, float %4522)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = fmul fast float %4524, %4495
  %4526 = fadd fast float %4525, %4498
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4535 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4536 = fadd fast float %4532, %4393
  %4537 = fadd fast float %4534, %4394
  %4538 = fadd fast float %4526, %4535
  %4539 = fmul fast float %4536, %4528
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4529, float %4539)  ; FMad(a,b,c)
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4530, float %4540)  ; FMad(a,b,c)
  %4542 = fsub fast float %4541, %4535
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4545 = fsub fast float %4542, %4544
  %4546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.i32 %4546, 0
  %4548 = call i32 @dx.op.binary.i32(i32 40, i32 %4424, i32 %4547)  ; UMin(a,b)
  %4549 = mul i32 %4548, 36
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = add i32 %4549, 4
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = fmul fast float %4554, %4446
  %4556 = fmul fast float %4554, %4448
  %4557 = extractvalue %dx.types.CBufRet.f32 %4553, 1
  %4558 = fadd fast float %4555, %4557
  %4559 = fadd fast float %4556, %4557
  %4560 = icmp eq i32 %4551, 0
  br i1 %4560, label %4629, label %4561

; <label>:4561                                    ; preds = %4492
  br label %4562

; <label>:4562                                    ; preds = %4619, %4561
  %4563 = phi float [ %4620, %4619 ], [ 0.000000e+00, %4561 ]
  %4564 = phi float [ %4621, %4619 ], [ 0.000000e+00, %4561 ]
  %4565 = phi float [ %4622, %4619 ], [ 0.000000e+00, %4561 ]
  %4566 = phi float [ %4623, %4619 ], [ 0.000000e+00, %4561 ]
  %4567 = phi float [ %4624, %4619 ], [ 0.000000e+00, %4561 ]
  %4568 = phi float [ %4625, %4619 ], [ 0.000000e+00, %4561 ]
  %4569 = phi i32 [ %4626, %4619 ], [ 0, %4561 ]
  %4570 = shl i32 %4569, 2
  %4571 = add i32 %4437, %4570
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = add i32 %4441, %4570
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = add i32 %4576, 0
  %4578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4577, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4579 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4578, i32 0)  ; GetDimensions(handle,mipLevel)
  %4580 = extractvalue %dx.types.Dimensions %4579, 0
  %4581 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4580)  ; FirstbitLo(value)
  %4582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.i32 %4582, 1
  %4584 = sub nsw i32 %4583, %4581
  %4585 = sitofp i32 %4584 to float
  %4586 = fsub fast float %4470, %4585
  %4587 = call float @dx.op.binary.f32(i32 35, float %4586, float 0.000000e+00)  ; FMax(a,b)
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4578, %dx.types.Handle %48, float %4558, float %4559, float %4573, float undef, i32 0, i32 0, i32 undef, float %4587)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = fcmp fast ogt float %4589, 0.000000e+00
  br i1 %4590, label %4591, label %4619

; <label>:4591                                    ; preds = %4562
  %4592 = add i32 %4552, %4570
  %4593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.i32 %4593, 0
  %4595 = and i32 %4594, 32767
  %4596 = mul nuw nsw i32 %4595, 928
  %4597 = add nuw nsw i32 %4596, 48
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = add nuw nsw i32 %4596, 60
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = fmul fast float %4599, %4589
  %4608 = fmul fast float %4600, %4589
  %4609 = fmul fast float %4601, %4589
  %4610 = fadd fast float %4607, %4563
  %4611 = fadd fast float %4608, %4564
  %4612 = fadd fast float %4609, %4565
  %4613 = fmul fast float %4604, %4589
  %4614 = fmul fast float %4605, %4589
  %4615 = fmul fast float %4606, %4589
  %4616 = fadd fast float %4613, %4566
  %4617 = fadd fast float %4614, %4567
  %4618 = fadd fast float %4615, %4568
  br label %4619

; <label>:4619                                    ; preds = %4591, %4562
  %4620 = phi float [ %4610, %4591 ], [ %4563, %4562 ]
  %4621 = phi float [ %4611, %4591 ], [ %4564, %4562 ]
  %4622 = phi float [ %4612, %4591 ], [ %4565, %4562 ]
  %4623 = phi float [ %4616, %4591 ], [ %4566, %4562 ]
  %4624 = phi float [ %4617, %4591 ], [ %4567, %4562 ]
  %4625 = phi float [ %4618, %4591 ], [ %4568, %4562 ]
  %4626 = add nuw i32 %4569, 1
  %4627 = icmp eq i32 %4626, %4551
  br i1 %4627, label %4628, label %4562

; <label>:4628                                    ; preds = %4619
  br label %4629

; <label>:4629                                    ; preds = %4628, %4492
  %4630 = phi float [ 0.000000e+00, %4492 ], [ %4620, %4628 ]
  %4631 = phi float [ 0.000000e+00, %4492 ], [ %4621, %4628 ]
  %4632 = phi float [ 0.000000e+00, %4492 ], [ %4622, %4628 ]
  %4633 = phi float [ 0.000000e+00, %4492 ], [ %4623, %4628 ]
  %4634 = phi float [ 0.000000e+00, %4492 ], [ %4624, %4628 ]
  %4635 = phi float [ 0.000000e+00, %4492 ], [ %4625, %4628 ]
  %4636 = fadd fast float %4633, %4630
  %4637 = fmul fast float %4636, 0x3F847AE140000000
  %4638 = fadd fast float %4634, %4631
  %4639 = fmul fast float %4638, 0x3F847AE140000000
  %4640 = fadd fast float %4635, %4632
  %4641 = fmul fast float %4640, 0x3F847AE140000000
  br label %4642

; <label>:4642                                    ; preds = %4629, %4426, %4371, %4368, %4339, %4301
  %4643 = phi float [ %4353, %4339 ], [ -1.310720e+05, %4301 ], [ %4545, %4629 ], [ -1.310720e+05, %4371 ], [ -1.310720e+05, %4426 ], [ -1.310720e+05, %4368 ]
  %4644 = phi float [ %4363, %4339 ], [ 0.000000e+00, %4301 ], [ %4637, %4629 ], [ 0.000000e+00, %4371 ], [ 0.000000e+00, %4426 ], [ 0.000000e+00, %4368 ]
  %4645 = phi float [ %4365, %4339 ], [ 0.000000e+00, %4301 ], [ %4639, %4629 ], [ 0.000000e+00, %4371 ], [ 0.000000e+00, %4426 ], [ 0.000000e+00, %4368 ]
  %4646 = phi float [ %4367, %4339 ], [ 0.000000e+00, %4301 ], [ %4641, %4629 ], [ 0.000000e+00, %4371 ], [ 0.000000e+00, %4426 ], [ 0.000000e+00, %4368 ]
  %4647 = phi i1 [ true, %4339 ], [ false, %4301 ], [ true, %4629 ], [ false, %4371 ], [ false, %4426 ], [ false, %4368 ]
  %4648 = and i32 %250, 3
  %4649 = icmp eq i32 %4648, 1
  %4650 = select i1 %4649, float 1.000000e+00, float 0.000000e+00
  %4651 = fsub fast float %4643, %201
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = select i1 %4647, float %4652, float 1.000000e+00
  %4654 = fmul fast float %4653, %4650
  %4655 = icmp eq i32 %4648, 3
  %4656 = select i1 %4655, float 1.000000e+00, float %4654
  %4657 = call float @dx.op.binary.f32(i32 35, float %4243, float %4656)  ; FMax(a,b)
  %4658 = fcmp fast olt float %4656, 1.000000e+00
  %4659 = fcmp uge float %76, 0.000000e+00
  %4660 = and i1 %4659, %4658
  br i1 %4660, label %4661, label %4671

; <label>:4661                                    ; preds = %4642
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = fadd fast float %4663, %4657
  %4667 = fcmp ule float %75, 0.000000e+00
  %4668 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = select i1 %4667, float %4668, float 1.000000e+00
  %4670 = fmul fast float %4669, %4665
  br label %4671

; <label>:4671                                    ; preds = %4661, %4642
  %4672 = phi float [ %4666, %4661 ], [ %4657, %4642 ]
  %4673 = phi float [ %4664, %4661 ], [ 0.000000e+00, %4642 ]
  %4674 = phi float [ %4670, %4661 ], [ 0.000000e+00, %4642 ]
  %4675 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = fcmp fast une float %4676, 0.000000e+00
  %4679 = fcmp fast une float %4677, 0.000000e+00
  %4680 = or i1 %4678, %4679
  br i1 %4680, label %4681, label %5240

; <label>:4681                                    ; preds = %4671
  br i1 %4678, label %4682, label %4955

; <label>:4682                                    ; preds = %4681
  %4683 = call float @dx.op.unary.f32(i32 23, float %4240)  ; Log(value)
  %4684 = fmul fast float %4683, 4.000000e+00
  %4685 = call float @dx.op.unary.f32(i32 21, float %4684)  ; Exp(value)
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 0
  %4688 = fmul fast float %4687, %62
  %4689 = fmul fast float %4687, %63
  %4690 = fmul fast float %4687, %64
  %4691 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4692 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4693 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4694 = call float @dx.op.unary.f32(i32 23, float %4691)  ; Log(value)
  %4695 = call float @dx.op.unary.f32(i32 23, float %4692)  ; Log(value)
  %4696 = call float @dx.op.unary.f32(i32 23, float %4693)  ; Log(value)
  %4697 = fmul fast float %4694, 4.000000e+00
  %4698 = fmul fast float %4695, 4.000000e+00
  %4699 = fmul fast float %4696, 4.000000e+00
  %4700 = call float @dx.op.unary.f32(i32 21, float %4697)  ; Exp(value)
  %4701 = call float @dx.op.unary.f32(i32 21, float %4698)  ; Exp(value)
  %4702 = call float @dx.op.unary.f32(i32 21, float %4699)  ; Exp(value)
  %4703 = fadd fast float %4701, %4700
  %4704 = fadd fast float %4703, %4702
  %4705 = fdiv fast float 1.000000e+00, %4704
  %4706 = fmul fast float %4705, %4700
  %4707 = fcmp fast ogt float %72, 0.000000e+00
  %4708 = fcmp fast ogt float %73, 0.000000e+00
  %4709 = fcmp fast ogt float %74, 0.000000e+00
  %4710 = fcmp fast olt float %72, 0.000000e+00
  %4711 = fcmp fast olt float %73, 0.000000e+00
  %4712 = fcmp fast olt float %74, 0.000000e+00
  %4713 = zext i1 %4707 to i32
  %4714 = zext i1 %4708 to i32
  %4715 = zext i1 %4709 to i32
  %4716 = zext i1 %4710 to i32
  %4717 = zext i1 %4711 to i32
  %4718 = zext i1 %4712 to i32
  %4719 = sub nsw i32 %4713, %4716
  %4720 = sub nsw i32 %4714, %4717
  %4721 = sub nsw i32 %4715, %4718
  %4722 = call float @dx.op.unary.f32(i32 83, float %4688)  ; DerivCoarseX(value)
  %4723 = call float @dx.op.unary.f32(i32 83, float %4689)  ; DerivCoarseX(value)
  %4724 = call float @dx.op.unary.f32(i32 83, float %4690)  ; DerivCoarseX(value)
  %4725 = call float @dx.op.unary.f32(i32 84, float %4688)  ; DerivCoarseY(value)
  %4726 = call float @dx.op.unary.f32(i32 84, float %4689)  ; DerivCoarseY(value)
  %4727 = call float @dx.op.unary.f32(i32 84, float %4690)  ; DerivCoarseY(value)
  %4728 = fcmp fast ole float %282, %4706
  %4729 = fmul fast float %4705, %4703
  %4730 = fcmp fast ole float %282, %4729
  %4731 = select i1 %4730, float %4690, float %4688
  %4732 = select i1 %4730, float %4688, float %4689
  %4733 = select i1 %4728, float %4689, float %4731
  %4734 = select i1 %4728, float %4690, float %4732
  %4735 = select i1 %4730, float %4724, float %4722
  %4736 = select i1 %4730, float %4722, float %4723
  %4737 = select i1 %4728, float %4723, float %4735
  %4738 = select i1 %4728, float %4724, float %4736
  %4739 = select i1 %4730, float %4727, float %4725
  %4740 = select i1 %4730, float %4725, float %4726
  %4741 = select i1 %4728, float %4726, float %4739
  %4742 = select i1 %4728, float %4727, float %4740
  %4743 = call float @dx.op.unary.f32(i32 27, float %4733)  ; Round_ni(value)
  %4744 = call float @dx.op.unary.f32(i32 27, float %4734)  ; Round_ni(value)
  %4745 = fptosi float %4743 to i32
  %4746 = fptosi float %4744 to i32
  %4747 = xor i32 %4746, %4745
  %4748 = sitofp i32 %4747 to float
  %4749 = fptosi float %4748 to i32
  %4750 = sitofp i32 %4749 to float
  %4751 = fmul fast float %4750, 0x3FE3C6EF40000000
  %4752 = frem fast float %4743, 2.560000e+02
  %4753 = frem fast float %4744, 2.560000e+02
  %4754 = fptoui float %4752 to i32
  %4755 = fptoui float %4753 to i32
  %4756 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4754, i32 %4755, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.ResRet.f32 %4756, 1
  %4759 = extractvalue %dx.types.ResRet.f32 %4756, 2
  %4760 = fadd fast float %4757, %4751
  %4761 = fadd fast float %4758, %4751
  %4762 = fadd fast float %4759, %4751
  %4763 = call float @dx.op.unary.f32(i32 22, float %4760)  ; Frc(value)
  %4764 = call float @dx.op.unary.f32(i32 22, float %4761)  ; Frc(value)
  %4765 = call float @dx.op.unary.f32(i32 22, float %4762)  ; Frc(value)
  %4766 = fmul fast float %4765, 0x401921FB60000000
  %4767 = call float @dx.op.unary.f32(i32 13, float %4766)  ; Sin(value)
  %4768 = call float @dx.op.unary.f32(i32 12, float %4766)  ; Cos(value)
  %4769 = fsub fast float -0.000000e+00, %4768
  %4770 = fmul fast float %4768, %4733
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4767, float %4734, float %4770)  ; FMad(a,b,c)
  %4772 = fmul fast float %4767, %4733
  %4773 = call float @dx.op.tertiary.f32(i32 46, float %4769, float %4734, float %4772)  ; FMad(a,b,c)
  %4774 = fadd fast float %4771, %4763
  %4775 = fadd fast float %4773, %4764
  %4776 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4777 = bitcast float %4776 to i32
  %4778 = icmp eq i32 %4777, 0
  br i1 %4778, label %4817, label %4779

; <label>:4779                                    ; preds = %4682
  %4780 = add i32 %4777, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4781, %dx.types.Handle %113, float %4774, float %4775, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4738, float undef, float %4741, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 1
  %4786 = extractvalue %dx.types.CBufRet.f32 %4784, 2
  %4787 = fsub fast float 1.000000e+00, %4676
  %4788 = call float @dx.op.binary.f32(i32 35, float %4787, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4789 = bitcast float %4676 to i32
  %4790 = sitofp i32 %4789 to float
  %4791 = fadd fast float %4790, 0xC1CFBF8940000000
  %4792 = fmul fast float %4786, %4791
  %4793 = fadd fast float %4792, 0x41CFBF8940000000
  %4794 = fptosi float %4793 to i32
  %4795 = bitcast i32 %4794 to float
  %4796 = bitcast float %4788 to i32
  %4797 = sitofp i32 %4796 to float
  %4798 = fadd fast float %4797, 0xC1CFBF8940000000
  %4799 = fmul fast float %4798, %4786
  %4800 = fadd fast float %4799, 0x41CFBF8940000000
  %4801 = fptosi float %4800 to i32
  %4802 = bitcast i32 %4801 to float
  %4803 = fmul fast float %4795, %4785
  %4804 = fmul fast float %4802, %4785
  %4805 = fsub fast float %4788, %4803
  %4806 = fadd fast float %4804, %4788
  %4807 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4809 = fsub fast float %4783, %4807
  %4810 = fsub fast float %4808, %4807
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = fmul fast float %4813, %4809
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fcmp fast olt float %4815, 0x3F70101020000000
  br i1 %4816, label %4955, label %4817

; <label>:4817                                    ; preds = %4779, %4682
  %4818 = phi float [ %4815, %4779 ], [ %4676, %4682 ]
  %4819 = fmul fast float %4818, %4685
  %4820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.i32 %4820, 1
  %4822 = extractvalue %dx.types.CBufRet.i32 %4820, 0
  %4823 = add i32 %4822, 0
  %4824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4824, %dx.types.Handle %112, float %4774, float %4775, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4738, float undef, float %4741, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.ResRet.f32 %4825, 3
  %4830 = and i32 %4821, 255
  %4831 = uitofp i32 %4830 to float
  %4832 = lshr i32 %4821, 8
  %4833 = and i32 %4832, 255
  %4834 = uitofp i32 %4833 to float
  %4835 = fmul fast float %4829, %4831
  %4836 = fadd fast float %4835, %4834
  %4837 = fmul fast float %4836, 0x3F70101000000000
  %4838 = fadd fast float %4837, 0xBFB99999A0000000
  %4839 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4840 = fmul fast float %4839, 0x3FF1C71C80000000
  %4841 = call float @dx.op.binary.f32(i32 36, float %4837, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4842 = fsub fast float 1.000000e+00, %4840
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fmul fast float %4843, %4826
  %4845 = fmul fast float %4843, %4827
  %4846 = fmul fast float %4843, %4828
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = fmul fast float %4840, %4826
  %4851 = fmul fast float %4840, %4827
  %4852 = fmul fast float %4840, %4828
  %4853 = fadd fast float %4850, %4841
  %4854 = fadd fast float %4851, %4841
  %4855 = fadd fast float %4852, %4841
  %4856 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.i32 %4859, 3
  %4861 = extractvalue %dx.types.CBufRet.i32 %4859, 2
  %4862 = add i32 %4861, 0
  %4863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4864 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4863, %dx.types.Handle %112, float %4774, float %4775, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4738, float undef, float %4741, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4865 = extractvalue %dx.types.ResRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.ResRet.f32 %4864, 1
  %4867 = extractvalue %dx.types.ResRet.f32 %4864, 2
  %4868 = extractvalue %dx.types.ResRet.f32 %4864, 3
  %4869 = and i32 %4860, 255
  %4870 = uitofp i32 %4869 to float
  %4871 = lshr i32 %4860, 8
  %4872 = and i32 %4871, 255
  %4873 = uitofp i32 %4872 to float
  %4874 = lshr i32 %4860, 16
  %4875 = and i32 %4874, 255
  %4876 = uitofp i32 %4875 to float
  %4877 = fmul fast float %4876, 0x3F70101000000000
  %4878 = fmul fast float %4865, %4870
  %4879 = fadd fast float %4878, %4873
  %4880 = fmul fast float %4879, 0x3F70101000000000
  %4881 = fadd fast float %4866, -5.000000e-01
  %4882 = fadd fast float %4868, -5.000000e-01
  %4883 = fmul fast float %4881, %4877
  %4884 = fmul fast float %4882, %4877
  %4885 = fadd fast float %4883, 5.000000e-01
  %4886 = fadd fast float %4884, 5.000000e-01
  %4887 = fmul fast float %4885, 2.000000e+00
  %4888 = fadd fast float %4887, -1.000000e+00
  %4889 = fmul fast float %4886, 2.000000e+00
  %4890 = fadd fast float %4889, -1.000000e+00
  %4891 = fadd fast float %4888, %4890
  %4892 = fmul fast float %4891, 5.000000e-01
  %4893 = fsub fast float %4888, %4890
  %4894 = fmul fast float %4893, 5.000000e-01
  %4895 = call float @dx.op.unary.f32(i32 6, float %4892)  ; FAbs(value)
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = call float @dx.op.unary.f32(i32 6, float %4894)  ; FAbs(value)
  %4898 = fsub fast float %4896, %4897
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4894, float %4898, float %4892, float %4894, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.unary.f32(i32 25, float %4899)  ; Rsqrt(value)
  %4901 = fmul fast float %4892, %4900
  %4902 = fmul fast float %4894, %4900
  %4903 = select i1 %4730, i32 %4720, i32 %4721
  %4904 = select i1 %4728, i32 %4719, i32 %4903
  %4905 = sitofp i32 %4904 to float
  %4906 = fmul fast float %4898, %4905
  %4907 = fmul fast float %4906, %4900
  %4908 = select i1 %4730, float %4907, float %4902
  %4909 = select i1 %4730, float %4902, float %4907
  %4910 = select i1 %4728, float %4907, float %4901
  %4911 = select i1 %4728, float %4902, float %4908
  %4912 = select i1 %4728, float %4901, float %4909
  %4913 = fsub fast float %4847, %4280
  %4914 = fsub fast float %4848, %4281
  %4915 = fsub fast float %4849, %4282
  %4916 = fmul fast float %4913, %4819
  %4917 = fmul fast float %4914, %4819
  %4918 = fmul fast float %4915, %4819
  %4919 = fadd fast float %4916, %4280
  %4920 = fadd fast float %4917, %4281
  %4921 = fadd fast float %4918, %4282
  %4922 = fsub fast float %4856, %4265
  %4923 = fsub fast float %4857, %4266
  %4924 = fsub fast float %4858, %4267
  %4925 = fmul fast float %4922, %4819
  %4926 = fmul fast float %4923, %4819
  %4927 = fmul fast float %4924, %4819
  %4928 = fadd fast float %4925, %4265
  %4929 = fadd fast float %4926, %4266
  %4930 = fadd fast float %4927, %4267
  %4931 = fadd fast float %4910, %4228
  %4932 = fadd fast float %4911, %4229
  %4933 = fadd fast float %4912, %4230
  %4934 = call float @dx.op.dot3.f32(i32 55, float %4931, float %4932, float %4933, float %4931, float %4932, float %4933)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = call float @dx.op.unary.f32(i32 25, float %4934)  ; Rsqrt(value)
  %4936 = fmul fast float %4931, %4935
  %4937 = fmul fast float %4932, %4935
  %4938 = fmul fast float %4933, %4935
  %4939 = fsub fast float %4936, %4228
  %4940 = fsub fast float %4937, %4229
  %4941 = fsub fast float %4938, %4230
  %4942 = fmul fast float %4939, %4819
  %4943 = fmul fast float %4940, %4819
  %4944 = fmul fast float %4941, %4819
  %4945 = fadd fast float %4942, %4228
  %4946 = fadd fast float %4943, %4229
  %4947 = fadd fast float %4944, %4230
  %4948 = call float @dx.op.binary.f32(i32 36, float %4240, float %4867)  ; FMin(a,b)
  %4949 = fsub fast float %4948, %4240
  %4950 = fmul fast float %4949, %4819
  %4951 = fadd fast float %4950, %4240
  %4952 = fsub fast float %4880, %4268
  %4953 = fmul fast float %4952, %4819
  %4954 = fadd fast float %4953, %4268
  br label %4955

; <label>:4955                                    ; preds = %4817, %4779, %4681
  %4956 = phi float [ %4928, %4817 ], [ %4265, %4779 ], [ %4265, %4681 ]
  %4957 = phi float [ %4929, %4817 ], [ %4266, %4779 ], [ %4266, %4681 ]
  %4958 = phi float [ %4930, %4817 ], [ %4267, %4779 ], [ %4267, %4681 ]
  %4959 = phi float [ %4919, %4817 ], [ %4280, %4779 ], [ %4280, %4681 ]
  %4960 = phi float [ %4920, %4817 ], [ %4281, %4779 ], [ %4281, %4681 ]
  %4961 = phi float [ %4921, %4817 ], [ %4282, %4779 ], [ %4282, %4681 ]
  %4962 = phi float [ %4945, %4817 ], [ %4228, %4779 ], [ %4228, %4681 ]
  %4963 = phi float [ %4946, %4817 ], [ %4229, %4779 ], [ %4229, %4681 ]
  %4964 = phi float [ %4947, %4817 ], [ %4230, %4779 ], [ %4230, %4681 ]
  %4965 = phi float [ %4954, %4817 ], [ %4268, %4779 ], [ %4268, %4681 ]
  %4966 = phi float [ %4951, %4817 ], [ %4240, %4779 ], [ %4240, %4681 ]
  br i1 %4679, label %4967, label %5240

; <label>:4967                                    ; preds = %4955
  %4968 = call float @dx.op.unary.f32(i32 23, float %4966)  ; Log(value)
  %4969 = fmul fast float %4968, 4.000000e+00
  %4970 = call float @dx.op.unary.f32(i32 21, float %4969)  ; Exp(value)
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = fmul fast float %4972, %62
  %4974 = fmul fast float %4972, %63
  %4975 = fmul fast float %4972, %64
  %4976 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4977 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4978 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4979 = call float @dx.op.unary.f32(i32 23, float %4976)  ; Log(value)
  %4980 = call float @dx.op.unary.f32(i32 23, float %4977)  ; Log(value)
  %4981 = call float @dx.op.unary.f32(i32 23, float %4978)  ; Log(value)
  %4982 = fmul fast float %4979, 4.000000e+00
  %4983 = fmul fast float %4980, 4.000000e+00
  %4984 = fmul fast float %4981, 4.000000e+00
  %4985 = call float @dx.op.unary.f32(i32 21, float %4982)  ; Exp(value)
  %4986 = call float @dx.op.unary.f32(i32 21, float %4983)  ; Exp(value)
  %4987 = call float @dx.op.unary.f32(i32 21, float %4984)  ; Exp(value)
  %4988 = fadd fast float %4986, %4985
  %4989 = fadd fast float %4988, %4987
  %4990 = fdiv fast float 1.000000e+00, %4989
  %4991 = fmul fast float %4990, %4985
  %4992 = fcmp fast ogt float %72, 0.000000e+00
  %4993 = fcmp fast ogt float %73, 0.000000e+00
  %4994 = fcmp fast ogt float %74, 0.000000e+00
  %4995 = fcmp fast olt float %72, 0.000000e+00
  %4996 = fcmp fast olt float %73, 0.000000e+00
  %4997 = fcmp fast olt float %74, 0.000000e+00
  %4998 = zext i1 %4992 to i32
  %4999 = zext i1 %4993 to i32
  %5000 = zext i1 %4994 to i32
  %5001 = zext i1 %4995 to i32
  %5002 = zext i1 %4996 to i32
  %5003 = zext i1 %4997 to i32
  %5004 = sub nsw i32 %4998, %5001
  %5005 = sub nsw i32 %4999, %5002
  %5006 = sub nsw i32 %5000, %5003
  %5007 = call float @dx.op.unary.f32(i32 83, float %4973)  ; DerivCoarseX(value)
  %5008 = call float @dx.op.unary.f32(i32 83, float %4974)  ; DerivCoarseX(value)
  %5009 = call float @dx.op.unary.f32(i32 83, float %4975)  ; DerivCoarseX(value)
  %5010 = call float @dx.op.unary.f32(i32 84, float %4973)  ; DerivCoarseY(value)
  %5011 = call float @dx.op.unary.f32(i32 84, float %4974)  ; DerivCoarseY(value)
  %5012 = call float @dx.op.unary.f32(i32 84, float %4975)  ; DerivCoarseY(value)
  %5013 = fcmp fast ole float %282, %4991
  %5014 = fmul fast float %4990, %4988
  %5015 = fcmp fast ole float %282, %5014
  %5016 = select i1 %5015, float %4975, float %4973
  %5017 = select i1 %5015, float %4973, float %4974
  %5018 = select i1 %5013, float %4974, float %5016
  %5019 = select i1 %5013, float %4975, float %5017
  %5020 = select i1 %5015, float %5009, float %5007
  %5021 = select i1 %5015, float %5007, float %5008
  %5022 = select i1 %5013, float %5008, float %5020
  %5023 = select i1 %5013, float %5009, float %5021
  %5024 = select i1 %5015, float %5012, float %5010
  %5025 = select i1 %5015, float %5010, float %5011
  %5026 = select i1 %5013, float %5011, float %5024
  %5027 = select i1 %5013, float %5012, float %5025
  %5028 = call float @dx.op.unary.f32(i32 27, float %5018)  ; Round_ni(value)
  %5029 = call float @dx.op.unary.f32(i32 27, float %5019)  ; Round_ni(value)
  %5030 = fptosi float %5028 to i32
  %5031 = fptosi float %5029 to i32
  %5032 = xor i32 %5031, %5030
  %5033 = sitofp i32 %5032 to float
  %5034 = fptosi float %5033 to i32
  %5035 = sitofp i32 %5034 to float
  %5036 = fmul fast float %5035, 0x3FE3C6EF40000000
  %5037 = frem fast float %5028, 2.560000e+02
  %5038 = frem fast float %5029, 2.560000e+02
  %5039 = fptoui float %5037 to i32
  %5040 = fptoui float %5038 to i32
  %5041 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5039, i32 %5040, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5042 = extractvalue %dx.types.ResRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.ResRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.ResRet.f32 %5041, 2
  %5045 = fadd fast float %5042, %5036
  %5046 = fadd fast float %5043, %5036
  %5047 = fadd fast float %5044, %5036
  %5048 = call float @dx.op.unary.f32(i32 22, float %5045)  ; Frc(value)
  %5049 = call float @dx.op.unary.f32(i32 22, float %5046)  ; Frc(value)
  %5050 = call float @dx.op.unary.f32(i32 22, float %5047)  ; Frc(value)
  %5051 = fmul fast float %5050, 0x401921FB60000000
  %5052 = call float @dx.op.unary.f32(i32 13, float %5051)  ; Sin(value)
  %5053 = call float @dx.op.unary.f32(i32 12, float %5051)  ; Cos(value)
  %5054 = fsub fast float -0.000000e+00, %5053
  %5055 = fmul fast float %5053, %5018
  %5056 = call float @dx.op.tertiary.f32(i32 46, float %5052, float %5019, float %5055)  ; FMad(a,b,c)
  %5057 = fmul fast float %5052, %5018
  %5058 = call float @dx.op.tertiary.f32(i32 46, float %5054, float %5019, float %5057)  ; FMad(a,b,c)
  %5059 = fadd fast float %5056, %5048
  %5060 = fadd fast float %5058, %5049
  %5061 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %5062 = bitcast float %5061 to i32
  %5063 = icmp eq i32 %5062, 0
  br i1 %5063, label %5102, label %5064

; <label>:5064                                    ; preds = %4967
  %5065 = add i32 %5062, 0
  %5066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5066, %dx.types.Handle %113, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5022, float %5023, float undef, float %5026, float %5027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 2
  %5072 = fsub fast float 1.000000e+00, %4677
  %5073 = call float @dx.op.binary.f32(i32 35, float %5072, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5074 = bitcast float %4677 to i32
  %5075 = sitofp i32 %5074 to float
  %5076 = fadd fast float %5075, 0xC1CFBF8940000000
  %5077 = fmul fast float %5071, %5076
  %5078 = fadd fast float %5077, 0x41CFBF8940000000
  %5079 = fptosi float %5078 to i32
  %5080 = bitcast i32 %5079 to float
  %5081 = bitcast float %5073 to i32
  %5082 = sitofp i32 %5081 to float
  %5083 = fadd fast float %5082, 0xC1CFBF8940000000
  %5084 = fmul fast float %5083, %5071
  %5085 = fadd fast float %5084, 0x41CFBF8940000000
  %5086 = fptosi float %5085 to i32
  %5087 = bitcast i32 %5086 to float
  %5088 = fmul fast float %5080, %5070
  %5089 = fmul fast float %5087, %5070
  %5090 = fsub fast float %5073, %5088
  %5091 = fadd fast float %5089, %5073
  %5092 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5094 = fsub fast float %5068, %5092
  %5095 = fsub fast float %5093, %5092
  %5096 = bitcast float %5095 to i32
  %5097 = sub nsw i32 2129859010, %5096
  %5098 = bitcast i32 %5097 to float
  %5099 = fmul fast float %5098, %5094
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fcmp fast olt float %5100, 0x3F70101020000000
  br i1 %5101, label %5240, label %5102

; <label>:5102                                    ; preds = %5064, %4967
  %5103 = phi float [ %5100, %5064 ], [ %4677, %4967 ]
  %5104 = fmul fast float %5103, %4970
  %5105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.i32 %5105, 1
  %5107 = extractvalue %dx.types.CBufRet.i32 %5105, 0
  %5108 = add i32 %5107, 0
  %5109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5109, %dx.types.Handle %112, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5022, float %5023, float undef, float %5026, float %5027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.ResRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.ResRet.f32 %5110, 2
  %5114 = extractvalue %dx.types.ResRet.f32 %5110, 3
  %5115 = and i32 %5106, 255
  %5116 = uitofp i32 %5115 to float
  %5117 = lshr i32 %5106, 8
  %5118 = and i32 %5117, 255
  %5119 = uitofp i32 %5118 to float
  %5120 = fmul fast float %5114, %5116
  %5121 = fadd fast float %5120, %5119
  %5122 = fmul fast float %5121, 0x3F70101000000000
  %5123 = fadd fast float %5122, 0xBFB99999A0000000
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %5124, 0x3FF1C71C80000000
  %5126 = call float @dx.op.binary.f32(i32 36, float %5122, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5127 = fsub fast float 1.000000e+00, %5125
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fmul fast float %5128, %5111
  %5130 = fmul fast float %5128, %5112
  %5131 = fmul fast float %5128, %5113
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = fmul fast float %5125, %5111
  %5136 = fmul fast float %5125, %5112
  %5137 = fmul fast float %5125, %5113
  %5138 = fadd fast float %5135, %5126
  %5139 = fadd fast float %5136, %5126
  %5140 = fadd fast float %5137, %5126
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.i32 %5144, 3
  %5146 = extractvalue %dx.types.CBufRet.i32 %5144, 2
  %5147 = add i32 %5146, 0
  %5148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5149 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5148, %dx.types.Handle %112, float %5059, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5022, float %5023, float undef, float %5026, float %5027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.ResRet.f32 %5149, 2
  %5153 = extractvalue %dx.types.ResRet.f32 %5149, 3
  %5154 = and i32 %5145, 255
  %5155 = uitofp i32 %5154 to float
  %5156 = lshr i32 %5145, 8
  %5157 = and i32 %5156, 255
  %5158 = uitofp i32 %5157 to float
  %5159 = lshr i32 %5145, 16
  %5160 = and i32 %5159, 255
  %5161 = uitofp i32 %5160 to float
  %5162 = fmul fast float %5161, 0x3F70101000000000
  %5163 = fmul fast float %5150, %5155
  %5164 = fadd fast float %5163, %5158
  %5165 = fmul fast float %5164, 0x3F70101000000000
  %5166 = fadd fast float %5151, -5.000000e-01
  %5167 = fadd fast float %5153, -5.000000e-01
  %5168 = fmul fast float %5166, %5162
  %5169 = fmul fast float %5167, %5162
  %5170 = fadd fast float %5168, 5.000000e-01
  %5171 = fadd fast float %5169, 5.000000e-01
  %5172 = fmul fast float %5170, 2.000000e+00
  %5173 = fadd fast float %5172, -1.000000e+00
  %5174 = fmul fast float %5171, 2.000000e+00
  %5175 = fadd fast float %5174, -1.000000e+00
  %5176 = fadd fast float %5173, %5175
  %5177 = fmul fast float %5176, 5.000000e-01
  %5178 = fsub fast float %5173, %5175
  %5179 = fmul fast float %5178, 5.000000e-01
  %5180 = call float @dx.op.unary.f32(i32 6, float %5177)  ; FAbs(value)
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = call float @dx.op.unary.f32(i32 6, float %5179)  ; FAbs(value)
  %5183 = fsub fast float %5181, %5182
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5179, float %5183, float %5177, float %5179, float %5183)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = call float @dx.op.unary.f32(i32 25, float %5184)  ; Rsqrt(value)
  %5186 = fmul fast float %5177, %5185
  %5187 = fmul fast float %5179, %5185
  %5188 = select i1 %5015, i32 %5005, i32 %5006
  %5189 = select i1 %5013, i32 %5004, i32 %5188
  %5190 = sitofp i32 %5189 to float
  %5191 = fmul fast float %5183, %5190
  %5192 = fmul fast float %5191, %5185
  %5193 = select i1 %5015, float %5192, float %5187
  %5194 = select i1 %5015, float %5187, float %5192
  %5195 = select i1 %5013, float %5192, float %5186
  %5196 = select i1 %5013, float %5187, float %5193
  %5197 = select i1 %5013, float %5186, float %5194
  %5198 = fsub fast float %5132, %4959
  %5199 = fsub fast float %5133, %4960
  %5200 = fsub fast float %5134, %4961
  %5201 = fmul fast float %5198, %5104
  %5202 = fmul fast float %5199, %5104
  %5203 = fmul fast float %5200, %5104
  %5204 = fadd fast float %5201, %4959
  %5205 = fadd fast float %5202, %4960
  %5206 = fadd fast float %5203, %4961
  %5207 = fsub fast float %5141, %4956
  %5208 = fsub fast float %5142, %4957
  %5209 = fsub fast float %5143, %4958
  %5210 = fmul fast float %5207, %5104
  %5211 = fmul fast float %5208, %5104
  %5212 = fmul fast float %5209, %5104
  %5213 = fadd fast float %5210, %4956
  %5214 = fadd fast float %5211, %4957
  %5215 = fadd fast float %5212, %4958
  %5216 = fadd fast float %5195, %4962
  %5217 = fadd fast float %5196, %4963
  %5218 = fadd fast float %5197, %4964
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float %5216, float %5217, float %5218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = call float @dx.op.unary.f32(i32 25, float %5219)  ; Rsqrt(value)
  %5221 = fmul fast float %5216, %5220
  %5222 = fmul fast float %5217, %5220
  %5223 = fmul fast float %5218, %5220
  %5224 = fsub fast float %5221, %4962
  %5225 = fsub fast float %5222, %4963
  %5226 = fsub fast float %5223, %4964
  %5227 = fmul fast float %5224, %5104
  %5228 = fmul fast float %5225, %5104
  %5229 = fmul fast float %5226, %5104
  %5230 = fadd fast float %5227, %4962
  %5231 = fadd fast float %5228, %4963
  %5232 = fadd fast float %5229, %4964
  %5233 = call float @dx.op.binary.f32(i32 36, float %4966, float %5152)  ; FMin(a,b)
  %5234 = fsub fast float %5233, %4966
  %5235 = fmul fast float %5234, %5104
  %5236 = fadd fast float %5235, %4966
  %5237 = fsub fast float %5165, %4965
  %5238 = fmul fast float %5237, %5104
  %5239 = fadd fast float %5238, %4965
  br label %5240

; <label>:5240                                    ; preds = %5102, %5064, %4955, %4671
  %5241 = phi float [ %5213, %5102 ], [ %4956, %5064 ], [ %4956, %4955 ], [ %4265, %4671 ]
  %5242 = phi float [ %5214, %5102 ], [ %4957, %5064 ], [ %4957, %4955 ], [ %4266, %4671 ]
  %5243 = phi float [ %5215, %5102 ], [ %4958, %5064 ], [ %4958, %4955 ], [ %4267, %4671 ]
  %5244 = phi float [ %5204, %5102 ], [ %4959, %5064 ], [ %4959, %4955 ], [ %4280, %4671 ]
  %5245 = phi float [ %5205, %5102 ], [ %4960, %5064 ], [ %4960, %4955 ], [ %4281, %4671 ]
  %5246 = phi float [ %5206, %5102 ], [ %4961, %5064 ], [ %4961, %4955 ], [ %4282, %4671 ]
  %5247 = phi float [ %5230, %5102 ], [ %4962, %5064 ], [ %4962, %4955 ], [ %4228, %4671 ]
  %5248 = phi float [ %5231, %5102 ], [ %4963, %5064 ], [ %4963, %4955 ], [ %4229, %4671 ]
  %5249 = phi float [ %5232, %5102 ], [ %4964, %5064 ], [ %4964, %4955 ], [ %4230, %4671 ]
  %5250 = phi float [ %5239, %5102 ], [ %4965, %5064 ], [ %4965, %4955 ], [ %4268, %4671 ]
  %5251 = phi float [ %5236, %5102 ], [ %4966, %5064 ], [ %4966, %4955 ], [ %4240, %4671 ]
  %5252 = fcmp fast une float %4675, 0.000000e+00
  br i1 %5252, label %5253, label %5422

; <label>:5253                                    ; preds = %5240
  %5254 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.unary.f32(i32 25, float %5254)  ; Rsqrt(value)
  %5256 = fmul fast float %199, %5255
  %5257 = fsub fast float -0.000000e+00, %5256
  %5258 = fmul fast float %200, %5255
  %5259 = fsub fast float -0.000000e+00, %5258
  %5260 = fmul fast float %201, %5255
  %5261 = fsub fast float -0.000000e+00, %5260
  %5262 = call float @dx.op.dot3.f32(i32 55, float %5257, float %5259, float %5261, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5263 = fmul fast float %4675, 2.500000e+00
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %4675, 0x4013FFFFE0000000
  %5266 = fadd fast float %5265, 0xBFFFFFFFE0000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fmul fast float %4675, 0x4004000020000000
  %5269 = fadd fast float %5268, 0xBFF8000040000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %4247, 1.000000e+01
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5272, 2.000000e+00
  %5274 = fsub fast float 3.000000e+00, %5273
  %5275 = fmul fast float %5272, %5272
  %5276 = fmul fast float %5275, %5274
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = fsub fast float 0x3FE3333340000000, %5250
  %5279 = fmul fast float %5278, 0x400AAAAAA0000000
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %5277, %5280
  %5282 = fmul fast float %5244, 0x3FEA2B8620000000
  %5283 = fmul fast float %5245, 0x3FEA2B8620000000
  %5284 = fmul fast float %5246, 0x3FEA2B8620000000
  %5285 = fadd fast float %5282, 0x3FC81DFBA0000000
  %5286 = fmul fast float %5285, %5244
  %5287 = fadd fast float %5286, 0x3F910E6020000000
  %5288 = fadd fast float %5283, 0x3FC81DFBA0000000
  %5289 = fmul fast float %5288, %5245
  %5290 = fadd fast float %5289, 0x3F910E6020000000
  %5291 = fadd fast float %5284, 0x3FC81DFBA0000000
  %5292 = fmul fast float %5291, %5246
  %5293 = fadd fast float %5292, 0x3F910E6020000000
  %5294 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = fsub fast float %5294, %5244
  %5298 = fsub fast float %5295, %5245
  %5299 = fsub fast float %5296, %5246
  %5300 = fmul fast float %5297, %5264
  %5301 = fmul fast float %5300, %5281
  %5302 = fmul fast float %5298, %5264
  %5303 = fmul fast float %5302, %5281
  %5304 = fmul fast float %5299, %5264
  %5305 = fmul fast float %5304, %5281
  %5306 = fadd fast float %5301, %5244
  %5307 = fadd fast float %5303, %5245
  %5308 = fadd fast float %5305, %5246
  %5309 = fmul fast float %5251, %5251
  %5310 = fmul fast float %5309, %5309
  %5311 = fadd fast float %5267, 1.000000e+00
  %5312 = fsub fast float %5311, %5281
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %125, float %127, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fsub fast float 1.000000e+00, %5310
  %5317 = call float @dx.op.binary.f32(i32 36, float %5313, float %5316)  ; FMin(a,b)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5317, float %5318)  ; FMax(a,b)
  %5320 = fadd fast float %5315, 0xBFE4CCCCC0000000
  %5321 = fmul fast float %5320, 0x4006DB6DA0000000
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = fsub fast float 3.000000e+00, %5323
  %5325 = bitcast float %5241 to i32
  %5326 = ashr i32 %5325, 1
  %5327 = add nsw i32 %5326, 532487669
  %5328 = bitcast i32 %5327 to float
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = bitcast float %5242 to i32
  %5335 = ashr i32 %5334, 1
  %5336 = add nsw i32 %5335, 532487669
  %5337 = bitcast i32 %5336 to float
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = bitcast float %5243 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = fmul fast float %5350, 2.000000e+00
  %5352 = fsub fast float 0x4002A9FBE0000000, %5333
  %5353 = fadd fast float %5333, 0x3FD54FDF00000000
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = fmul fast float %5356, %5352
  %5358 = fmul fast float %5357, %5357
  %5359 = fsub fast float 0x4002A9FBE0000000, %5342
  %5360 = fadd fast float %5342, 0x3FD54FDF00000000
  %5361 = bitcast float %5360 to i32
  %5362 = sub nsw i32 2129859010, %5361
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, %5359
  %5365 = fmul fast float %5364, %5364
  %5366 = fsub fast float 0x4002A9FBE0000000, %5351
  %5367 = fadd fast float %5351, 0x3FD54FDF00000000
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, %5366
  %5372 = fmul fast float %5371, %5371
  %5373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5358)  ; FMax(a,b)
  %5374 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5365)  ; FMax(a,b)
  %5375 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5372)  ; FMax(a,b)
  %5376 = fsub fast float 1.000000e+00, %5262
  %5377 = fadd fast float %5376, %5277
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fsub fast float 1.000000e+00, %4656
  %5380 = fmul fast float %5319, %5379
  %5381 = fmul fast float %5322, %5322
  %5382 = fmul fast float %5381, %5380
  %5383 = fmul fast float %5382, %5324
  %5384 = fmul fast float %5379, 0xBFE99999A0000000
  %5385 = fmul fast float %5384, %5264
  %5386 = fmul fast float %5385, %5281
  %5387 = fadd fast float %5386, 1.000000e+00
  %5388 = fadd fast float %5250, -1.000000e+00
  %5389 = fmul fast float %5387, %5388
  %5390 = fadd fast float %5389, 1.000000e+00
  %5391 = fsub fast float %5373, %5241
  %5392 = fsub fast float %5374, %5242
  %5393 = fsub fast float %5375, %5243
  %5394 = fmul fast float %5383, %5391
  %5395 = fmul fast float %5383, %5392
  %5396 = fmul fast float %5383, %5393
  %5397 = fadd fast float %5394, %5241
  %5398 = fadd fast float %5395, %5242
  %5399 = fadd fast float %5396, %5243
  %5400 = fsub fast float %125, %5247
  %5401 = fsub fast float %127, %5248
  %5402 = fsub fast float %129, %5249
  %5403 = fmul fast float %5383, %5400
  %5404 = fmul fast float %5383, %5401
  %5405 = fmul fast float %5383, %5402
  %5406 = fadd fast float %5403, %5247
  %5407 = fadd fast float %5404, %5248
  %5408 = fadd fast float %5405, %5249
  %5409 = fmul fast float %5383, %5378
  %5410 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5411 = fsub fast float 1.000000e+00, %5410
  %5412 = fmul fast float %5409, %5411
  %5413 = fadd fast float %5412, %5410
  %5414 = fsub fast float 1.000000e+00, %5251
  %5415 = fmul fast float %5383, %5414
  %5416 = fadd fast float %5415, %5251
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.unary.f32(i32 25, float %5417)  ; Rsqrt(value)
  %5419 = fmul fast float %5406, %5418
  %5420 = fmul fast float %5407, %5418
  %5421 = fmul fast float %5408, %5418
  br label %5422

; <label>:5422                                    ; preds = %5253, %5240
  %5423 = phi float [ %5397, %5253 ], [ %5241, %5240 ]
  %5424 = phi float [ %5398, %5253 ], [ %5242, %5240 ]
  %5425 = phi float [ %5399, %5253 ], [ %5243, %5240 ]
  %5426 = phi float [ %5306, %5253 ], [ %5244, %5240 ]
  %5427 = phi float [ %5307, %5253 ], [ %5245, %5240 ]
  %5428 = phi float [ %5308, %5253 ], [ %5246, %5240 ]
  %5429 = phi float [ %5419, %5253 ], [ %5247, %5240 ]
  %5430 = phi float [ %5420, %5253 ], [ %5248, %5240 ]
  %5431 = phi float [ %5421, %5253 ], [ %5249, %5240 ]
  %5432 = phi float [ %5413, %5253 ], [ %5250, %5240 ]
  %5433 = phi float [ %5416, %5253 ], [ %5251, %5240 ]
  %5434 = icmp eq i32 %60, 0
  br i1 %5434, label %5465, label %5435

; <label>:5435                                    ; preds = %5422
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5439 = fmul fast float %5437, %116
  %5440 = fmul fast float %5438, %117
  %5441 = fmul fast float %5439, 1.024000e+03
  %5442 = fmul fast float %5440, 1.024000e+03
  %5443 = fadd fast float %5441, -5.120000e+02
  %5444 = fadd fast float %5442, -5.120000e+02
  %5445 = fmul fast float %5439, 0x4081BEDF00000000
  %5446 = fadd fast float %5445, 0xC071BEDF00000000
  %5447 = call float @dx.op.unary.f32(i32 22, float %5446)  ; Frc(value)
  %5448 = fmul fast float %5443, %5447
  %5449 = fadd fast float %5448, %5444
  %5450 = fmul fast float %5440, 0x4073BEBE20000000
  %5451 = fadd fast float %5450, 0xC063BEBE20000000
  %5452 = call float @dx.op.unary.f32(i32 22, float %5451)  ; Frc(value)
  %5453 = fmul fast float %5444, %5452
  %5454 = fadd fast float %5453, %5443
  %5455 = fmul fast float %5449, %5454
  %5456 = call float @dx.op.unary.f32(i32 22, float %5455)  ; Frc(value)
  %5457 = add i32 %325, 12
  %5458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.i32 %5458, 0
  %5460 = and i32 %5459, 255
  %5461 = uitofp i32 %5460 to float
  %5462 = fmul fast float %5461, 0x3F70101020000000
  %5463 = fcmp fast olt float %5456, %5462
  br i1 %5463, label %5464, label %5465

; <label>:5464                                    ; preds = %5435
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5465

; <label>:5465                                    ; preds = %5464, %5435, %5422
  %5466 = fsub fast float -0.000000e+00, %201
  %5467 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 25, float %5467)  ; Rsqrt(value)
  %5469 = fmul fast float %5468, %199
  %5470 = fmul fast float %5468, %200
  %5471 = fmul fast float %5468, %201
  %5472 = fsub fast float -0.000000e+00, %5469
  %5473 = fsub fast float -0.000000e+00, %5470
  %5474 = fsub fast float -0.000000e+00, %5471
  %5475 = select i1 %271, float 0.000000e+00, float %5425
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5469, float %5470, float %5471, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fmul fast float %5478, 2.000000e+00
  %5480 = fmul fast float %5479, %5429
  %5481 = fmul fast float %5479, %5430
  %5482 = fmul fast float %5479, %5431
  %5483 = fsub fast float %5469, %5480
  %5484 = fsub fast float %5470, %5481
  %5485 = fsub fast float %5471, %5482
  %5486 = call float @dx.op.binary.f32(i32 36, float %5433, float 1.000000e+00)  ; FMin(a,b)
  %5487 = fsub fast float 1.000000e+00, %5433
  %5488 = bitcast float %5487 to i32
  %5489 = sub nsw i32 2129859010, %5488
  %5490 = bitcast i32 %5489 to float
  %5491 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fmul fast float %5491, 0x3FD20DD760000000
  %5493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %5494 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fcmp fast oeq float %5494, 0.000000e+00
  %5496 = fcmp fast oeq float %5493, 0.000000e+00
  %5497 = or i1 %5496, %5495
  br i1 %5497, label %5527, label %5498

; <label>:5498                                    ; preds = %5465
  %5499 = fsub fast float -0.000000e+00, %90
  %5500 = fsub fast float -0.000000e+00, %88
  %5501 = call float @dx.op.unary.f32(i32 24, float %5494)  ; Sqrt(value)
  %5502 = fdiv fast float %5501, %5493
  %5503 = fcmp fast ogt float %5502, 0x3FFB6F8900000000
  %5504 = select i1 %5503, float 0x3FFB6F8900000000, float %5502
  %5505 = fmul fast float %5504, 0x3FE8A23460000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5504, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5508 = fmul fast float %5506, %5493
  %5509 = fmul fast float %5507, 0x3FF279A740000000
  %5510 = fadd fast float %5509, -1.000000e+00
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %89, float %5499, float %5500, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.unary.f32(i32 25, float %5511)  ; Rsqrt(value)
  %5513 = fmul fast float %5512, %5499
  %5514 = fmul fast float %5512, %5500
  %5515 = fmul fast float %5512, %89
  %5516 = fmul fast float %5510, %5510
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5507, 0x40005F8BE0000000
  %5519 = fsub fast float 0x400C5BF8A0000000, %5518
  %5520 = fdiv fast float %5508, %5519
  %5521 = fmul fast float %5520, 0x3FEE31C3C0000000
  %5522 = fmul fast float %5521, %5517
  %5523 = fmul fast float %5507, 0x3FDACB7480000000
  %5524 = fadd fast float %5523, 0xBFD7347680000000
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5517
  br label %5527

; <label>:5527                                    ; preds = %5498, %5465
  %5528 = phi float [ %5513, %5498 ], [ 0.000000e+00, %5465 ]
  %5529 = phi float [ %5514, %5498 ], [ 0.000000e+00, %5465 ]
  %5530 = phi float [ %5515, %5498 ], [ 0.000000e+00, %5465 ]
  %5531 = phi float [ %5522, %5498 ], [ 0.000000e+00, %5465 ]
  %5532 = phi float [ %5526, %5498 ], [ 0.000000e+00, %5465 ]
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fmul fast float %5533, %5533
  %5535 = fmul fast float %5534, 0x3FEE471020000000
  %5536 = fadd fast float %5535, 0xBFD42F6020000000
  %5537 = fmul fast float %5493, 0x3FD20DD760000000
  %5538 = fmul fast float %5536, %5532
  %5539 = fmul fast float %5531, 0x3FDF454380000000
  %5540 = fmul fast float %5539, %5533
  %5541 = fadd fast float %5540, %5537
  %5542 = fadd fast float %5541, %5538
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = fmul fast float %5543, 0x3FDF454380000000
  %5545 = fmul fast float %5543, %5543
  %5546 = fmul fast float %5545, 0x3FEE471020000000
  %5547 = fadd fast float %5546, 0xBFD42F6020000000
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5531, float %5532, float 0x3FD20DD760000000, float %5544, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %5550 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fcmp fast oeq float %5550, 0.000000e+00
  %5552 = fcmp fast oeq float %5549, 0.000000e+00
  %5553 = or i1 %5552, %5551
  br i1 %5553, label %5583, label %5554

; <label>:5554                                    ; preds = %5527
  %5555 = fsub fast float -0.000000e+00, %86
  %5556 = fsub fast float -0.000000e+00, %84
  %5557 = call float @dx.op.unary.f32(i32 24, float %5550)  ; Sqrt(value)
  %5558 = fdiv fast float %5557, %5549
  %5559 = fcmp fast ogt float %5558, 0x3FFB6F8900000000
  %5560 = select i1 %5559, float 0x3FFB6F8900000000, float %5558
  %5561 = fmul fast float %5560, 0x3FE8A23460000000
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = call float @dx.op.binary.f32(i32 35, float %5560, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5564 = fmul fast float %5562, %5549
  %5565 = fmul fast float %5563, 0x3FF279A740000000
  %5566 = fadd fast float %5565, -1.000000e+00
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %85, float %5555, float %5556, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.unary.f32(i32 25, float %5567)  ; Rsqrt(value)
  %5569 = fmul fast float %5568, %5555
  %5570 = fmul fast float %5568, %5556
  %5571 = fmul fast float %5568, %85
  %5572 = fmul fast float %5566, %5566
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = fmul fast float %5563, 0x40005F8BE0000000
  %5575 = fsub fast float 0x400C5BF8A0000000, %5574
  %5576 = fdiv fast float %5564, %5575
  %5577 = fmul fast float %5576, 0x3FEE31C3C0000000
  %5578 = fmul fast float %5577, %5573
  %5579 = fmul fast float %5563, 0x3FDACB7480000000
  %5580 = fadd fast float %5579, 0xBFD7347680000000
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5581, %5573
  br label %5583

; <label>:5583                                    ; preds = %5554, %5527
  %5584 = phi float [ %5569, %5554 ], [ 0.000000e+00, %5527 ]
  %5585 = phi float [ %5570, %5554 ], [ 0.000000e+00, %5527 ]
  %5586 = phi float [ %5571, %5554 ], [ 0.000000e+00, %5527 ]
  %5587 = phi float [ %5578, %5554 ], [ 0.000000e+00, %5527 ]
  %5588 = phi float [ %5582, %5554 ], [ 0.000000e+00, %5527 ]
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = fmul fast float %5589, %5589
  %5591 = fmul fast float %5590, 0x3FEE471020000000
  %5592 = fadd fast float %5591, 0xBFD42F6020000000
  %5593 = fmul fast float %5549, 0x3FD20DD760000000
  %5594 = fmul fast float %5592, %5588
  %5595 = fmul fast float %5587, 0x3FDF454380000000
  %5596 = fmul fast float %5595, %5589
  %5597 = fadd fast float %5596, %5593
  %5598 = fadd fast float %5597, %5594
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %5599, 0x3FDF454380000000
  %5601 = fmul fast float %5599, %5599
  %5602 = fmul fast float %5601, 0x3FEE471020000000
  %5603 = fadd fast float %5602, 0xBFD42F6020000000
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5587, float %5588, float 0x3FD20DD760000000, float %5600, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fcmp fast oeq float %5606, 0.000000e+00
  %5608 = fcmp fast oeq float %5605, 0.000000e+00
  %5609 = or i1 %5608, %5607
  br i1 %5609, label %5639, label %5610

; <label>:5610                                    ; preds = %5583
  %5611 = fsub fast float -0.000000e+00, %82
  %5612 = fsub fast float -0.000000e+00, %80
  %5613 = call float @dx.op.unary.f32(i32 24, float %5606)  ; Sqrt(value)
  %5614 = fdiv fast float %5613, %5605
  %5615 = fcmp fast ogt float %5614, 0x3FFB6F8900000000
  %5616 = select i1 %5615, float 0x3FFB6F8900000000, float %5614
  %5617 = fmul fast float %5616, 0x3FE8A23460000000
  %5618 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5616, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5620 = fmul fast float %5618, %5605
  %5621 = fmul fast float %5619, 0x3FF279A740000000
  %5622 = fadd fast float %5621, -1.000000e+00
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %81, float %5611, float %5612, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.unary.f32(i32 25, float %5623)  ; Rsqrt(value)
  %5625 = fmul fast float %5624, %5611
  %5626 = fmul fast float %5624, %5612
  %5627 = fmul fast float %5624, %81
  %5628 = fmul fast float %5622, %5622
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5619, 0x40005F8BE0000000
  %5631 = fsub fast float 0x400C5BF8A0000000, %5630
  %5632 = fdiv fast float %5620, %5631
  %5633 = fmul fast float %5632, 0x3FEE31C3C0000000
  %5634 = fmul fast float %5633, %5629
  %5635 = fmul fast float %5619, 0x3FDACB7480000000
  %5636 = fadd fast float %5635, 0xBFD7347680000000
  %5637 = fmul fast float %5636, %5632
  %5638 = fmul fast float %5637, %5629
  br label %5639

; <label>:5639                                    ; preds = %5610, %5583
  %5640 = phi float [ %5625, %5610 ], [ 0.000000e+00, %5583 ]
  %5641 = phi float [ %5626, %5610 ], [ 0.000000e+00, %5583 ]
  %5642 = phi float [ %5627, %5610 ], [ 0.000000e+00, %5583 ]
  %5643 = phi float [ %5634, %5610 ], [ 0.000000e+00, %5583 ]
  %5644 = phi float [ %5638, %5610 ], [ 0.000000e+00, %5583 ]
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = fmul fast float %5645, %5645
  %5647 = fmul fast float %5646, 0x3FEE471020000000
  %5648 = fadd fast float %5647, 0xBFD42F6020000000
  %5649 = fmul fast float %5605, 0x3FD20DD760000000
  %5650 = fmul fast float %5648, %5644
  %5651 = fmul fast float %5643, 0x3FDF454380000000
  %5652 = fmul fast float %5651, %5645
  %5653 = fadd fast float %5652, %5649
  %5654 = fadd fast float %5653, %5650
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fmul fast float %5655, 0x3FDF454380000000
  %5657 = fmul fast float %5655, %5655
  %5658 = fmul fast float %5657, 0x3FEE471020000000
  %5659 = fadd fast float %5658, 0xBFD42F6020000000
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5643, float %5644, float 0x3FD20DD760000000, float %5656, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.binary.f32(i32 35, float %5542, float 0.000000e+00)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float %5598, float 0.000000e+00)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 35, float %5654, float 0.000000e+00)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5669 = call float @dx.op.binary.f32(i32 36, float %5426, float %5668)  ; FMin(a,b)
  %5670 = fsub fast float 1.000000e+00, %5486
  %5671 = fmul fast float %5669, %5670
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = call float @dx.op.binary.f32(i32 36, float %5427, float %5668)  ; FMin(a,b)
  %5677 = fmul fast float %5676, %5670
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = call float @dx.op.binary.f32(i32 36, float %5428, float %5668)  ; FMin(a,b)
  %5683 = fmul fast float %5682, %5670
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5661, %5486
  %5689 = fmul fast float %5688, %5675
  %5690 = fmul fast float %5662, %5486
  %5691 = fmul fast float %5690, %5681
  %5692 = fmul fast float %5663, %5486
  %5693 = fmul fast float %5692, %5687
  %5694 = call float @dx.op.binary.f32(i32 36, float %5423, float %5668)  ; FMin(a,b)
  %5695 = fmul fast float %5694, %5670
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = call float @dx.op.binary.f32(i32 36, float %5424, float %5668)  ; FMin(a,b)
  %5701 = fmul fast float %5700, %5670
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = bitcast float %5702 to i32
  %5704 = sub nsw i32 2129859010, %5703
  %5705 = bitcast i32 %5704 to float
  %5706 = call float @dx.op.binary.f32(i32 36, float %5475, float %5668)  ; FMin(a,b)
  %5707 = fmul fast float %5706, %5670
  %5708 = fsub fast float 1.000000e+00, %5707
  %5709 = bitcast float %5708 to i32
  %5710 = sub nsw i32 2129859010, %5709
  %5711 = bitcast i32 %5710 to float
  %5712 = fmul fast float %5664, %5486
  %5713 = fmul fast float %5712, %5699
  %5714 = fmul fast float %5665, %5486
  %5715 = fmul fast float %5714, %5705
  %5716 = fmul fast float %5666, %5486
  %5717 = fmul fast float %5716, %5711
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5691, float %5693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = select i1 %271, float 0.000000e+00, float %5689
  %5720 = select i1 %271, float %5718, float %5691
  %5721 = select i1 %271, float 0.000000e+00, float %5693
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5715, float %5717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = select i1 %271, float 0.000000e+00, float %5713
  %5724 = select i1 %271, float %5722, float %5715
  %5725 = select i1 %271, float 0.000000e+00, float %5717
  %5726 = fmul fast float %5491, 0x4071A18460000000
  %5727 = fadd fast float %5726, 0x3F0FFB4800000000
  %5728 = call float @dx.op.unary.f32(i32 23, float %5727)  ; Log(value)
  %5729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.i32 %5729, 0
  %5731 = and i32 %5730, 8388608
  %5732 = icmp eq i32 %5731, 0
  br i1 %5732, label %5733, label %5773

; <label>:5733                                    ; preds = %5639
  %5734 = fadd fast float %5728, 0x4006B851E0000000
  %5735 = add i32 %325, 12
  %5736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5735, i32 undef)  ; BufferLoad(srv,index,wot)
  %5737 = extractvalue %dx.types.ResRet.i32 %5736, 0
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5740 = lshr i32 %5737, 16
  %5741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5740)  ; LegacyF16ToF32(value)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5745 = fsub fast float %107, %5744
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = fmul fast float %5745, %5746
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = fsub fast float %5742, %5734
  %5750 = fcmp fast ogt float %5749, 0.000000e+00
  %5751 = fcmp fast olt float %5749, 0.000000e+00
  %5752 = zext i1 %5750 to i32
  %5753 = zext i1 %5751 to i32
  %5754 = sub nsw i32 %5752, %5753
  %5755 = sitofp i32 %5754 to float
  %5756 = call float @dx.op.unary.f32(i32 6, float %5749)  ; FAbs(value)
  %5757 = fsub fast float -0.000000e+00, %5741
  %5758 = fsub fast float %5757, %5739
  %5759 = fadd fast float %5758, %5756
  %5760 = call float @dx.op.binary.f32(i32 35, float %5759, float 0.000000e+00)  ; FMax(a,b)
  %5761 = fmul fast float %5755, %5760
  %5762 = fadd fast float %5728, %5761
  %5763 = call float @dx.op.unary.f32(i32 21, float %5762)  ; Exp(value)
  %5764 = fmul fast float %5763, 0x3F50624DE0000000
  %5765 = fcmp fast oeq float %5492, 0.000000e+00
  %5766 = fdiv fast float 0x400C5BF880000000, %5491
  %5767 = fmul fast float %5764, %5766
  %5768 = select i1 %5765, float 1.000000e+00, float %5767
  %5769 = call float @dx.op.binary.f32(i32 35, float %5768, float 1.000000e+00)  ; FMax(a,b)
  %5770 = fadd fast float %5769, -1.000000e+00
  %5771 = fmul fast float %5770, %5748
  %5772 = fadd fast float %5771, 1.000000e+00
  br label %5773

; <label>:5773                                    ; preds = %5733, %5639
  %5774 = phi float [ %5772, %5733 ], [ 1.000000e+00, %5639 ]
  %5775 = call float @dx.op.unary.f32(i32 6, float %5774)  ; FAbs(value)
  %5776 = fmul fast float %5775, %5719
  %5777 = fmul fast float %5775, %5720
  %5778 = fmul fast float %5775, %5721
  %5779 = fmul fast float %5477, 9.843750e-01
  %5780 = fmul fast float %5432, 9.843750e-01
  %5781 = fadd fast float %5779, 7.812500e-03
  %5782 = fadd fast float %5780, 7.812500e-03
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5781, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 2
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 3
  %5786 = fmul fast float %5784, %5423
  %5787 = fmul fast float %5784, %5424
  %5788 = fmul fast float %5784, %5475
  %5789 = fadd fast float %5786, %5785
  %5790 = fadd fast float %5787, %5785
  %5791 = fadd fast float %5788, %5785
  %5792 = fcmp fast ogt float %4241, 0.000000e+00
  br i1 %5792, label %5793, label %5819

; <label>:5793                                    ; preds = %5773
  %5794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4241, float %5477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = fadd fast float %5795, -5.000000e-01
  %5799 = fadd fast float %5796, -5.000000e-01
  %5800 = fadd fast float %5797, -5.000000e-01
  %5801 = fsub fast float 1.000000e+00, %5423
  %5802 = fsub fast float 1.000000e+00, %5424
  %5803 = fsub fast float 1.000000e+00, %5475
  %5804 = fmul fast float %5423, 4.000000e+00
  %5805 = fmul fast float %5804, %5801
  %5806 = fmul fast float %5805, %5798
  %5807 = fmul fast float %5424, 4.000000e+00
  %5808 = fmul fast float %5807, %5802
  %5809 = fmul fast float %5808, %5799
  %5810 = fmul fast float %5475, 4.000000e+00
  %5811 = fmul fast float %5810, %5803
  %5812 = fmul fast float %5811, %5800
  %5813 = fadd fast float %5806, %5789
  %5814 = fadd fast float %5809, %5790
  %5815 = fadd fast float %5812, %5791
  %5816 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5817 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5818 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  br label %5819

; <label>:5819                                    ; preds = %5793, %5773
  %5820 = phi float [ %5816, %5793 ], [ %5789, %5773 ]
  %5821 = phi float [ %5817, %5793 ], [ %5790, %5773 ]
  %5822 = phi float [ %5818, %5793 ], [ %5791, %5773 ]
  %5823 = call float @dx.op.binary.f32(i32 35, float %5821, float %5822)  ; FMax(a,b)
  %5824 = call float @dx.op.binary.f32(i32 35, float %5820, float %5823)  ; FMax(a,b)
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = fmul fast float %199, %199
  %5827 = fmul fast float %200, %200
  %5828 = fadd fast float %5827, %5826
  %5829 = fmul fast float %201, %201
  %5830 = fadd fast float %5828, %5829
  %5831 = call float @dx.op.unary.f32(i32 24, float %5830)  ; Sqrt(value)
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5834 = fsub fast float %5831, %5833
  %5835 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5836 = fmul fast float %5834, %5835
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5832, 3
  %5840 = and i32 %5730, 4194304
  %5841 = icmp ne i32 %5840, 0
  %5842 = icmp ne i32 %5731, 0
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.CBufRet.f32 %5843, 3
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.CBufRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.CBufRet.f32 %5848, 2
  %5852 = extractvalue %dx.types.CBufRet.f32 %5848, 3
  %5853 = select i1 %5841, float %5844, float %5849
  %5854 = select i1 %5841, float %5845, float %5850
  %5855 = select i1 %5841, float %5846, float %5851
  %5856 = select i1 %5841, float %5847, float %5852
  %5857 = select i1 %5842, float 0.000000e+00, float %5856
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = select i1 %5841, float %5859, float %5860
  %5862 = select i1 %5842, float 0.000000e+00, float %5861
  %5863 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5864 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5865 = select i1 %5841, float %5863, float %5864
  %5866 = select i1 %5842, float 0.000000e+00, float %5865
  %5867 = fmul fast float %5837, %65
  %5868 = fmul fast float %5867, %5838
  %5869 = fmul fast float %5868, %5862
  %5870 = fmul fast float %5867, %5839
  %5871 = fmul fast float %5870, %5866
  %5872 = fadd fast float %5871, 1.000000e+00
  %5873 = fmul fast float %5825, %5776
  %5874 = fmul fast float %5873, %5872
  %5875 = fmul fast float %5825, %5777
  %5876 = fmul fast float %5875, %5872
  %5877 = fmul fast float %5825, %5778
  %5878 = fmul fast float %5877, %5872
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = fcmp fast ogt float %5879, 0x3E7FF19E20000000
  %5881 = fdiv fast float 1.000000e+00, %5879
  %5882 = select i1 %5880, float %5881, float 0.000000e+00
  %5883 = fmul fast float %5882, %5426
  %5884 = fmul fast float %5882, %5427
  %5885 = fmul fast float %5882, %5428
  %5886 = fadd fast float %5883, -1.000000e+00
  %5887 = fadd fast float %5884, -1.000000e+00
  %5888 = fadd fast float %5885, -1.000000e+00
  %5889 = fmul fast float %5886, 5.000000e-01
  %5890 = fmul fast float %5887, 5.000000e-01
  %5891 = fmul fast float %5888, 5.000000e-01
  %5892 = fadd fast float %5889, 1.000000e+00
  %5893 = fadd fast float %5890, 1.000000e+00
  %5894 = fadd fast float %5891, 1.000000e+00
  %5895 = fadd fast float %5869, %4242
  %5896 = fsub fast float %5853, %5892
  %5897 = fsub fast float %5854, %5893
  %5898 = fsub fast float %5855, %5894
  %5899 = fmul fast float %5896, %5857
  %5900 = fmul fast float %5897, %5857
  %5901 = fmul fast float %5898, %5857
  %5902 = fadd fast float %5899, %5892
  %5903 = fadd fast float %5900, %5893
  %5904 = fadd fast float %5901, %5894
  %5905 = fmul fast float %5820, %5723
  %5906 = fmul fast float %5821, %5724
  %5907 = fmul fast float %5822, %5725
  %5908 = fsub fast float 1.000000e+00, %5477
  %5909 = bitcast float %5908 to i32
  %5910 = sitofp i32 %5909 to float
  %5911 = fmul fast float %5910, 5.000000e+00
  %5912 = fadd fast float %5911, 0xC1EFBF8940000000
  %5913 = fptosi float %5912 to i32
  %5914 = bitcast i32 %5913 to float
  %5915 = fmul fast float %5895, %5914
  %5916 = fmul fast float %5873, %5915
  %5917 = fmul fast float %5916, %5902
  %5918 = fmul fast float %5875, %5915
  %5919 = fmul fast float %5918, %5903
  %5920 = fmul fast float %5877, %5915
  %5921 = fmul fast float %5920, %5904
  %5922 = fmul fast float %5874, %4238
  %5923 = fmul fast float %5876, %4238
  %5924 = fmul fast float %5878, %4238
  %5925 = fadd fast float %5905, %4234
  %5926 = fadd fast float %5925, %5917
  %5927 = fmul fast float %5926, %4238
  %5928 = fadd fast float %5906, %4235
  %5929 = fadd fast float %5928, %5919
  %5930 = fmul fast float %5929, %4238
  %5931 = fadd fast float %5907, %4236
  %5932 = fadd fast float %5931, %5921
  %5933 = fmul fast float %5932, %4238
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5936 = fcmp fast oeq float %5935, 0.000000e+00
  br i1 %5936, label %7021, label %5937

; <label>:5937                                    ; preds = %5819
  %5938 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5942, float %5943, float %5944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = select i1 %271, float %5946, float %5942
  %5950 = select i1 %271, float %5948, float %5943
  %5951 = select i1 %271, float %5947, float %5944
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5954 = fmul fast float %5953, %125
  %5955 = fmul fast float %5953, %127
  %5956 = fmul fast float %5953, %129
  %5957 = fadd fast float %5954, %199
  %5958 = fadd fast float %5955, %200
  %5959 = fadd fast float %5956, %201
  %5960 = fcmp fast olt float %5935, 0.000000e+00
  br i1 %5960, label %6600, label %5961

; <label>:5961                                    ; preds = %5937
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %5976 = extractvalue %dx.types.CBufRet.f32 %5972, 3
  %5977 = fmul fast float %5963, %5957
  %5978 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %5964, float %5977)  ; FMad(a,b,c)
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %5965, float %5978)  ; FMad(a,b,c)
  %5980 = fadd fast float %5979, %5966
  %5981 = fmul fast float %5968, %5957
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %5969, float %5981)  ; FMad(a,b,c)
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %5970, float %5982)  ; FMad(a,b,c)
  %5984 = fadd fast float %5983, %5971
  %5985 = fmul fast float %5973, %5957
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %5974, float %5985)  ; FMad(a,b,c)
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %5975, float %5986)  ; FMad(a,b,c)
  %5988 = fadd fast float %5987, %5976
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = fcmp fast une float %5990, 0.000000e+00
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.CBufRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5996 = fmul fast float %5995, %5980
  %5997 = fmul fast float %5995, %5984
  %5998 = fadd fast float %5996, %5993
  %5999 = fadd fast float %5997, %5994
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6004 = fmul fast float %6003, %5980
  %6005 = fmul fast float %6003, %5984
  %6006 = fadd fast float %6004, %6001
  %6007 = fadd fast float %6005, %6002
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6010 = fsub fast float %6009, %5988
  %6011 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6012 = fmul fast float %6010, %6011
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  br i1 %5991, label %6075, label %6015

; <label>:6015                                    ; preds = %5961
  %6016 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6019 = fadd fast float %6018, %6016
  %6020 = fcmp fast ogt float %6019, 0.000000e+00
  br i1 %6020, label %6021, label %6045

; <label>:6021                                    ; preds = %6015
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = fsub fast float %6006, %6023
  %6026 = fsub fast float %6007, %6024
  %6027 = fcmp fast olt float %6025, 0.000000e+00
  %6028 = fcmp fast olt float %6026, 0.000000e+00
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.CBufRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6033 = extractvalue %dx.types.CBufRet.f32 %6029, 3
  %6034 = select i1 %6027, float %6030, float %6032
  %6035 = select i1 %6028, float %6031, float %6033
  %6036 = fmul fast float %6034, %6025
  %6037 = fmul fast float %6035, %6026
  %6038 = call float @dx.op.unary.f32(i32 6, float %6036)  ; FAbs(value)
  %6039 = call float @dx.op.unary.f32(i32 6, float %6037)  ; FAbs(value)
  %6040 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %6041 = call float @dx.op.binary.f32(i32 35, float %6038, float %6039)  ; FMax(a,b)
  %6042 = fsub fast float %6040, %6041
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = fmul fast float %6043, %6014
  br label %6045

; <label>:6045                                    ; preds = %6021, %6015
  %6046 = phi float [ %6044, %6021 ], [ 0.000000e+00, %6015 ]
  %6047 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6049 = fadd fast float %6048, %6047
  %6050 = fcmp fast ogt float %6049, 0.000000e+00
  br i1 %6050, label %6051, label %6075

; <label>:6051                                    ; preds = %6045
  %6052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6053 = extractvalue %dx.types.CBufRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.CBufRet.f32 %6052, 1
  %6055 = fsub fast float %5998, %6053
  %6056 = fsub fast float %5999, %6054
  %6057 = fcmp fast olt float %6055, 0.000000e+00
  %6058 = fcmp fast olt float %6056, 0.000000e+00
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6063 = extractvalue %dx.types.CBufRet.f32 %6059, 3
  %6064 = select i1 %6057, float %6060, float %6062
  %6065 = select i1 %6058, float %6061, float %6063
  %6066 = fmul fast float %6064, %6055
  %6067 = fmul fast float %6065, %6056
  %6068 = call float @dx.op.unary.f32(i32 6, float %6066)  ; FAbs(value)
  %6069 = call float @dx.op.unary.f32(i32 6, float %6067)  ; FAbs(value)
  %6070 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %6071 = call float @dx.op.binary.f32(i32 35, float %6068, float %6069)  ; FMax(a,b)
  %6072 = fsub fast float %6070, %6071
  %6073 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6074 = fmul fast float %6073, %6014
  br label %6075

; <label>:6075                                    ; preds = %6051, %6045, %5961
  %6076 = phi float [ 0.000000e+00, %5961 ], [ %6074, %6051 ], [ 0.000000e+00, %6045 ]
  %6077 = phi float [ 0.000000e+00, %5961 ], [ %6046, %6051 ], [ %6046, %6045 ]
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6084 = fsub fast float %5980, %6082
  %6085 = fsub fast float %5984, %6083
  %6086 = fcmp fast olt float %6084, 0.000000e+00
  %6087 = fcmp fast olt float %6085, 0.000000e+00
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.CBufRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.CBufRet.f32 %6088, 2
  %6092 = extractvalue %dx.types.CBufRet.f32 %6088, 3
  %6093 = select i1 %6086, float %6089, float %6091
  %6094 = select i1 %6087, float %6090, float %6092
  %6095 = fmul fast float %6093, %6084
  %6096 = fmul fast float %6094, %6085
  %6097 = call float @dx.op.unary.f32(i32 6, float %6095)  ; FAbs(value)
  %6098 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6099 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %6100 = call float @dx.op.binary.f32(i32 35, float %6097, float %6098)  ; FMax(a,b)
  %6101 = fsub fast float %6099, %6100
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = call float @dx.op.binary.f32(i32 36, float %6102, float %6080)  ; FMin(a,b)
  %6104 = fmul fast float %6103, %6014
  %6105 = fsub fast float %6076, %6104
  %6106 = fsub fast float %6077, %6076
  %6107 = fsub fast float %6106, %6104
  %6108 = call float @dx.op.binary.f32(i32 35, float %6076, float %6077)  ; FMax(a,b)
  %6109 = call float @dx.op.binary.f32(i32 35, float %6104, float %6108)  ; FMax(a,b)
  %6110 = fcmp fast olt float %6109, 1.000000e+00
  br i1 %6110, label %6111, label %6509, !dx.controlflow.hints !99

; <label>:6111                                    ; preds = %6075
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = fcmp fast une float %6113, 0.000000e+00
  br i1 %6114, label %6115, label %6509, !dx.controlflow.hints !100

; <label>:6115                                    ; preds = %6111
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6123 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6124 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6125 = extractvalue %dx.types.CBufRet.f32 %6121, 3
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.CBufRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.CBufRet.f32 %6126, 3
  %6131 = fmul fast float %6117, %5957
  %6132 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6118, float %6131)  ; FMad(a,b,c)
  %6133 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6119, float %6132)  ; FMad(a,b,c)
  %6134 = fadd fast float %6133, %6120
  %6135 = fmul fast float %6122, %5957
  %6136 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6123, float %6135)  ; FMad(a,b,c)
  %6137 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6124, float %6136)  ; FMad(a,b,c)
  %6138 = fadd fast float %6137, %6125
  %6139 = fmul fast float %6127, %5957
  %6140 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6128, float %6139)  ; FMad(a,b,c)
  %6141 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6129, float %6140)  ; FMad(a,b,c)
  %6142 = fadd fast float %6141, %6130
  %6143 = fcmp fast oge float %6134, 1.000000e+00
  %6144 = fcmp fast oge float %6138, 1.000000e+00
  %6145 = or i1 %6143, %6144
  %6146 = fcmp fast olt float %6134, 0.000000e+00
  %6147 = fcmp fast olt float %6138, 0.000000e+00
  %6148 = or i1 %6146, %6147
  %6149 = or i1 %6145, %6148
  br i1 %6149, label %6509, label %6150, !dx.controlflow.hints !101

; <label>:6150                                    ; preds = %6115
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.i32 %6155, 2
  %6157 = uitofp i32 %6156 to float
  %6158 = extractvalue %dx.types.CBufRet.i32 %6155, 3
  %6159 = uitofp i32 %6158 to float
  %6160 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6161 = fmul fast float %6160, 2.000000e+00
  %6162 = fsub fast float %6134, %6152
  %6163 = fsub fast float %6138, %6153
  %6164 = fmul fast float %6161, %6162
  %6165 = fmul fast float %6161, %6163
  %6166 = fdiv fast float 1.000000e+00, %5940
  %6167 = fmul fast float %6165, %6166
  %6168 = call float @dx.op.unary.f32(i32 6, float %6167)  ; FAbs(value)
  %6169 = fmul fast float %6154, %5959
  %6170 = fmul fast float %6169, %6161
  %6171 = call float @dx.op.unary.f32(i32 6, float %6170)  ; FAbs(value)
  %6172 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6173 = call float @dx.op.binary.f32(i32 35, float %6171, float %6168)  ; FMax(a,b)
  %6174 = call float @dx.op.binary.f32(i32 35, float %6172, float %6173)  ; FMax(a,b)
  %6175 = fmul fast float %6174, 2.000000e+00
  %6176 = call float @dx.op.unary.f32(i32 23, float %6175)  ; Log(value)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6176, float %6157)  ; FMax(a,b)
  %6178 = call float @dx.op.unary.f32(i32 22, float %6177)  ; Frc(value)
  %6179 = fadd fast float %6178, 0xBFEA666660000000
  %6180 = fmul fast float %6179, 8.000000e+00
  %6181 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6182 = call float @dx.op.unary.f32(i32 27, float %6177)  ; Round_ni(value)
  %6183 = fadd fast float %6182, %6181
  %6184 = call float @dx.op.binary.f32(i32 36, float %6183, float %6159)  ; FMin(a,b)
  %6185 = call float @dx.op.unary.f32(i32 27, float %6184)  ; Round_ni(value)
  %6186 = fsub fast float -0.000000e+00, %6185
  %6187 = call float @dx.op.unary.f32(i32 21, float %6186)  ; Exp(value)
  %6188 = fmul fast float %6187, %6161
  %6189 = fmul fast float %6188, %6134
  %6190 = fmul fast float %6188, %6138
  %6191 = fmul fast float %6189, 2.500000e-01
  %6192 = fmul fast float %6190, 2.500000e-01
  %6193 = fadd fast float %6191, 5.000000e-01
  %6194 = fadd fast float %6192, 5.000000e-01
  %6195 = fsub fast float %6159, %6157
  %6196 = fptoui float %6195 to i32
  %6197 = add i32 %6196, 320
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6197)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.CBufRet.f32 %6198, 1
  %6201 = fcmp fast une float %6184, %6159
  %6202 = fsub fast float %6134, %6199
  %6203 = fsub fast float %6138, %6200
  %6204 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6205 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6206 = fmul fast float %6204, %6188
  %6207 = fmul fast float %6205, %6188
  %6208 = fcmp fast olt float %6206, 1.000000e+00
  %6209 = fcmp fast olt float %6207, 1.000000e+00
  %6210 = and i1 %6208, %6209
  %6211 = or i1 %6201, %6210
  br i1 %6211, label %6212, label %6509, !dx.controlflow.hints !102

; <label>:6212                                    ; preds = %6150
  %6213 = fmul fast float %6190, 5.000000e-01
  %6214 = fmul fast float %6189, 5.000000e-01
  %6215 = fadd fast float %6213, 5.000000e-01
  %6216 = fadd fast float %6214, 5.000000e-01
  %6217 = sitofp i32 %6156 to float
  %6218 = fsub fast float %6184, %6217
  %6219 = call float @dx.op.unary.f32(i32 27, float %6218)  ; Round_ni(value)
  %6220 = call float @dx.op.unary.f32(i32 22, float %6184)  ; Frc(value)
  %6221 = call float @dx.op.unary.f32(i32 22, float %6216)  ; Frc(value)
  %6222 = call float @dx.op.unary.f32(i32 22, float %6215)  ; Frc(value)
  %6223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6221, float %6222, float %6219, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.ResRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.ResRet.f32 %6223, 3
  %6228 = fcmp fast ogt float %6220, 0.000000e+00
  br i1 %6228, label %6229, label %6250, !dx.controlflow.hints !103

; <label>:6229                                    ; preds = %6212
  %6230 = fadd fast float %6219, 1.000000e+00
  %6231 = call float @dx.op.unary.f32(i32 22, float %6193)  ; Frc(value)
  %6232 = call float @dx.op.unary.f32(i32 22, float %6194)  ; Frc(value)
  %6233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6231, float %6232, float %6230, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.ResRet.f32 %6233, 3
  %6238 = fsub fast float %6234, %6224
  %6239 = fsub fast float %6235, %6225
  %6240 = fsub fast float %6236, %6226
  %6241 = fsub fast float %6237, %6227
  %6242 = fmul fast float %6238, %6220
  %6243 = fmul fast float %6239, %6220
  %6244 = fmul fast float %6240, %6220
  %6245 = fmul fast float %6241, %6220
  %6246 = fadd fast float %6242, %6224
  %6247 = fadd fast float %6243, %6225
  %6248 = fadd fast float %6244, %6226
  %6249 = fadd fast float %6245, %6227
  br label %6250

; <label>:6250                                    ; preds = %6229, %6212
  %6251 = phi float [ %6246, %6229 ], [ %6224, %6212 ]
  %6252 = phi float [ %6247, %6229 ], [ %6225, %6212 ]
  %6253 = phi float [ %6248, %6229 ], [ %6226, %6212 ]
  %6254 = phi float [ %6249, %6229 ], [ %6227, %6212 ]
  %6255 = fadd fast float %6251, -5.000000e-01
  %6256 = fadd fast float %6253, -5.000000e-01
  %6257 = fmul fast float %6255, 0xBFD5555560000000
  %6258 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6256, float %6257)  ; FMad(a,b,c)
  %6259 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6252, float 0.000000e+00)  ; FMad(a,b,c)
  %6260 = fadd fast float %6259, %6254
  %6261 = fmul fast float %6255, -7.500000e-01
  %6262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6256, float %6261)  ; FMad(a,b,c)
  %6263 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6252, float 0.000000e+00)  ; FMad(a,b,c)
  %6264 = fadd fast float %6263, %6254
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = fsub fast float %6268, %6258
  %6273 = fsub fast float %6269, %6260
  %6274 = fsub fast float %6270, %6262
  %6275 = fsub fast float %6271, %6264
  %6276 = fmul fast float %6272, %6266
  %6277 = fmul fast float %6273, %6266
  %6278 = fmul fast float %6274, %6266
  %6279 = fmul fast float %6275, %6266
  %6280 = fadd fast float %6276, %6258
  %6281 = fadd fast float %6277, %6260
  %6282 = fadd fast float %6278, %6262
  %6283 = fadd fast float %6279, %6264
  %6284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6285 = extractvalue %dx.types.ResRet.i32 %6284, 0
  %6286 = and i32 %6285, 536870911
  %6287 = uitofp i32 %6286 to float
  %6288 = fmul fast float %6287, %6134
  %6289 = fmul fast float %6287, %6138
  %6290 = fptoui float %6288 to i32
  %6291 = fptoui float %6289 to i32
  %6292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6293 = extractvalue %dx.types.ResRet.i32 %6292, 0
  %6294 = and i32 %6293, 31
  %6295 = lshr i32 %6290, %6294
  %6296 = lshr i32 %6291, %6294
  %6297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.i32 %6297, 0
  %6299 = and i32 %6298, 31
  %6300 = shl i32 1, %6299
  %6301 = call i32 @dx.op.binary.i32(i32 40, i32 %6300, i32 4)  ; UMin(a,b)
  %6302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6303 = extractvalue %dx.types.ResRet.i32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.i32 %6302, 1
  %6305 = icmp eq i32 %6301, 0
  br i1 %6305, label %6347, label %6306

; <label>:6306                                    ; preds = %6250
  br label %6307

; <label>:6307                                    ; preds = %6335, %6306
  %6308 = phi i32 [ %6338, %6335 ], [ 0, %6306 ]
  %6309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.i32 %6309, 0
  %6311 = lshr i32 %6310, 16
  %6312 = and i32 %6311, 31
  %6313 = shl i32 %6296, %6312
  %6314 = add i32 %6313, %6295
  %6315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.i32 %6315, 0
  %6317 = and i32 %6316, 31
  %6318 = shl i32 %6314, %6317
  %6319 = add i32 %6318, %6308
  %6320 = shl i32 %6319, 2
  %6321 = add i32 %6320, 32
  %6322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6321, i32 undef)  ; BufferLoad(srv,index,wot)
  %6323 = extractvalue %dx.types.ResRet.i32 %6322, 0
  %6324 = icmp slt i32 %6323, 0
  %6325 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6308
  %6326 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6308
  %6327 = bitcast float* %6325 to i32*
  %6328 = bitcast float* %6326 to i32*
  br i1 %6324, label %6329, label %6335

; <label>:6329                                    ; preds = %6307
  %6330 = and i32 %6323, 1073741823
  %6331 = add nuw nsw i32 %6330, 20
  %6332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6331, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.i32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.i32 %6332, 1
  br label %6335

; <label>:6335                                    ; preds = %6329, %6307
  %6336 = phi i32 [ %6333, %6329 ], [ %6303, %6307 ]
  %6337 = phi i32 [ %6334, %6329 ], [ %6304, %6307 ]
  store i32 %6336, i32* %6327, align 4
  store i32 %6337, i32* %6328, align 4
  %6338 = add nuw i32 %6308, 1
  %6339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.i32 %6339, 2
  %6341 = icmp eq i32 %6340, 0
  %6342 = icmp ugt i32 %6323, -1073741825
  %6343 = and i1 %6342, %6341
  %6344 = icmp ult i32 %6338, %6301
  %6345 = and i1 %6343, %6344
  br i1 %6345, label %6307, label %6346

; <label>:6346                                    ; preds = %6335
  br label %6347

; <label>:6347                                    ; preds = %6346, %6250
  %6348 = phi i32 [ 0, %6250 ], [ %6338, %6346 ]
  %6349 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6350 = fptoui float %6349 to i32
  %6351 = icmp eq i32 %6350, 0
  br i1 %6351, label %6403, label %6352

; <label>:6352                                    ; preds = %6347
  br label %6353

; <label>:6353                                    ; preds = %6398, %6352
  %6354 = phi i32 [ %6399, %6398 ], [ %6348, %6352 ]
  %6355 = phi i32 [ %6400, %6398 ], [ 0, %6352 ]
  %6356 = lshr i32 %6355, 2
  %6357 = and i32 %6355, 3
  %6358 = add nuw nsw i32 %6356, 83
  %6359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6358)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.i32 %6359, 0
  %6361 = extractvalue %dx.types.CBufRet.i32 %6359, 1
  %6362 = extractvalue %dx.types.CBufRet.i32 %6359, 2
  %6363 = extractvalue %dx.types.CBufRet.i32 %6359, 3
  %6364 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6360, i32* %6364, align 4
  %6365 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6361, i32* %6365, align 4
  %6366 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6362, i32* %6366, align 4
  %6367 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6363, i32* %6367, align 4
  %6368 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6357
  %6369 = load i32, i32* %6368, align 4, !tbaa !104, !noalias !108
  %6370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6371 = extractvalue %dx.types.ResRet.i32 %6370, 0
  %6372 = lshr i32 %6371, 16
  %6373 = and i32 %6372, 31
  %6374 = shl i32 %6296, %6373
  %6375 = add i32 %6374, %6295
  %6376 = shl i32 %6375, 2
  %6377 = add i32 %6376, %6369
  %6378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6377, i32 undef)  ; BufferLoad(srv,index,wot)
  %6379 = extractvalue %dx.types.ResRet.i32 %6378, 0
  %6380 = icmp eq i32 %6379, 0
  br i1 %6380, label %6398, label %6381

; <label>:6381                                    ; preds = %6353
  %6382 = icmp slt i32 %6379, 0
  %6383 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6354
  %6384 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6354
  %6385 = bitcast float* %6383 to i32*
  %6386 = bitcast float* %6384 to i32*
  br i1 %6382, label %6387, label %6394

; <label>:6387                                    ; preds = %6381
  %6388 = and i32 %6379, 1073741823
  %6389 = add i32 %6369, 20
  %6390 = add i32 %6389, %6388
  %6391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6390, i32 undef)  ; BufferLoad(srv,index,wot)
  %6392 = extractvalue %dx.types.ResRet.i32 %6391, 0
  %6393 = extractvalue %dx.types.ResRet.i32 %6391, 1
  br label %6394

; <label>:6394                                    ; preds = %6387, %6381
  %6395 = phi i32 [ %6392, %6387 ], [ %6303, %6381 ]
  %6396 = phi i32 [ %6393, %6387 ], [ %6304, %6381 ]
  store i32 %6395, i32* %6385, align 4
  store i32 %6396, i32* %6386, align 4
  %6397 = add i32 %6354, 1
  br label %6398

; <label>:6398                                    ; preds = %6394, %6353
  %6399 = phi i32 [ %6354, %6353 ], [ %6397, %6394 ]
  %6400 = add nuw i32 %6355, 1
  %6401 = icmp eq i32 %6400, %6350
  br i1 %6401, label %6402, label %6353

; <label>:6402                                    ; preds = %6398
  br label %6403

; <label>:6403                                    ; preds = %6402, %6347
  %6404 = phi i32 [ %6348, %6347 ], [ %6399, %6402 ]
  %6405 = icmp eq i32 %6404, 1
  %6406 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6407 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6405, label %6408, label %6411

; <label>:6408                                    ; preds = %6403
  %6409 = load float, float* %6406, align 4
  %6410 = load float, float* %6407, align 4
  br label %6438

; <label>:6411                                    ; preds = %6403
  %6412 = load float, float* %6406, align 4
  %6413 = load float, float* %6407, align 4
  %6414 = fdiv fast float 1.000000e+00, %6413
  %6415 = fsub fast float %6412, %6414
  %6416 = icmp ugt i32 %6404, 1
  br i1 %6416, label %6417, label %6433

; <label>:6417                                    ; preds = %6411
  br label %6418

; <label>:6418                                    ; preds = %6418, %6417
  %6419 = phi float [ %6428, %6418 ], [ %6415, %6417 ]
  %6420 = phi float [ %6429, %6418 ], [ %6412, %6417 ]
  %6421 = phi i32 [ %6430, %6418 ], [ 1, %6417 ]
  %6422 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6421
  %6423 = load float, float* %6422, align 4
  %6424 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6421
  %6425 = load float, float* %6424, align 4
  %6426 = fdiv fast float 1.000000e+00, %6425
  %6427 = fsub fast float %6423, %6426
  %6428 = call float @dx.op.binary.f32(i32 36, float %6419, float %6427)  ; FMin(a,b)
  %6429 = call float @dx.op.binary.f32(i32 35, float %6420, float %6423)  ; FMax(a,b)
  %6430 = add nuw i32 %6421, 1
  %6431 = icmp eq i32 %6430, %6404
  br i1 %6431, label %6432, label %6418

; <label>:6432                                    ; preds = %6418
  br label %6433

; <label>:6433                                    ; preds = %6432, %6411
  %6434 = phi float [ %6415, %6411 ], [ %6428, %6432 ]
  %6435 = phi float [ %6412, %6411 ], [ %6429, %6432 ]
  %6436 = fsub fast float %6435, %6434
  %6437 = fdiv fast float 1.000000e+00, %6436
  br label %6438

; <label>:6438                                    ; preds = %6433, %6408
  %6439 = phi float [ %6409, %6408 ], [ %6435, %6433 ]
  %6440 = phi float [ %6410, %6408 ], [ %6437, %6433 ]
  %6441 = fadd fast float %6142, %6439
  %6442 = fmul fast float %6441, %6440
  %6443 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6444 = fmul fast float %6443, 2.000000e+00
  %6445 = fsub fast float 1.000000e+00, %6444
  %6446 = fmul fast float %6280, %6280
  %6447 = fsub fast float %6281, %6446
  %6448 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6447)  ; FMax(a,b)
  %6449 = fdiv fast float 1.000000e+00, %6448
  %6450 = fmul fast float %6281, %6280
  %6451 = fsub fast float %6282, %6450
  %6452 = fsub fast float %6445, %6280
  %6453 = fmul fast float %6445, %6445
  %6454 = fsub fast float %6453, %6281
  %6455 = fmul fast float %6449, %6451
  %6456 = fmul fast float %6455, %6452
  %6457 = fsub fast float %6454, %6456
  %6458 = fmul fast float %6281, %6281
  %6459 = fsub fast float %6283, %6458
  %6460 = fmul fast float %6451, %6451
  %6461 = fmul fast float %6460, %6449
  %6462 = fsub fast float %6459, %6461
  %6463 = fdiv fast float %6457, %6462
  %6464 = fmul fast float %6463, %6451
  %6465 = fsub fast float %6452, %6464
  %6466 = fmul fast float %6465, %6449
  %6467 = fmul fast float %6466, %6280
  %6468 = fsub fast float 1.000000e+00, %6467
  %6469 = fmul fast float %6463, %6281
  %6470 = fsub fast float %6468, %6469
  %6471 = fmul fast float %6466, %6466
  %6472 = fmul fast float %6463, 4.000000e+00
  %6473 = fmul fast float %6472, %6470
  %6474 = fsub fast float %6471, %6473
  %6475 = call float @dx.op.unary.f32(i32 24, float %6474)  ; Sqrt(value)
  %6476 = fcmp fast oge float %6466, 0.000000e+00
  %6477 = fsub fast float -0.000000e+00, %6475
  %6478 = select i1 %6476, float %6477, float %6475
  %6479 = fsub fast float %6478, %6466
  %6480 = fdiv fast float %6479, %6463
  %6481 = fdiv fast float %6470, %6479
  %6482 = fmul fast float %6480, 5.000000e-01
  %6483 = fmul fast float %6481, 2.000000e+00
  %6484 = select i1 %6476, float %6482, float %6483
  %6485 = select i1 %6476, float %6483, float %6482
  %6486 = call float @dx.op.binary.f32(i32 35, float %6484, float %6485)  ; FMax(a,b)
  %6487 = call float @dx.op.binary.f32(i32 36, float %6484, float %6485)  ; FMin(a,b)
  %6488 = fcmp fast ogt float %6445, %6486
  %6489 = fsub fast float %6445, %6487
  %6490 = fsub fast float %6445, %6486
  %6491 = fsub fast float %6486, %6487
  %6492 = select i1 %6488, float %6490, float %6491
  %6493 = fmul float %6489, %6492
  %6494 = select i1 %6488, float %6487, float %6445
  %6495 = fcmp fast ogt float %6445, %6487
  %6496 = fmul fast float %6494, %6486
  %6497 = fadd fast float %6494, %6486
  %6498 = fmul fast float %6497, %6280
  %6499 = fadd fast float %6496, %6281
  %6500 = fsub fast float %6499, %6498
  %6501 = fdiv fast float %6500, %6493
  %6502 = select i1 %6495, float %6501, float 0.000000e+00
  %6503 = fsub fast float 1.000000e+00, %6502
  %6504 = select i1 %6488, float %6503, float %6502
  %6505 = call float @dx.op.unary.f32(i32 7, float %6504)  ; Saturate(value)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6265, 3
  %6507 = fmul fast float %6506, %6505
  %6508 = fsub fast float 1.000000e+00, %6507
  br label %6509

; <label>:6509                                    ; preds = %6438, %6150, %6115, %6111, %6075
  %6510 = phi float [ 1.000000e+00, %6075 ], [ %6508, %6438 ], [ 1.000000e+00, %6115 ], [ 1.000000e+00, %6150 ], [ 1.000000e+00, %6111 ]
  %6511 = fcmp fast ogt float %6107, 0.000000e+00
  br i1 %6511, label %6512, label %6520, !dx.controlflow.hints !117

; <label>:6512                                    ; preds = %6509
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 2
  %6515 = fadd fast float %6514, %5988
  %6516 = call float @dx.op.binary.f32(i32 35, float %6515, float 0.000000e+00)  ; FMax(a,b)
  %6517 = fadd fast float %6516, 0x3F10000000000000
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6006, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  br label %6520

; <label>:6520                                    ; preds = %6512, %6509
  %6521 = phi float [ %6519, %6512 ], [ 1.000000e+00, %6509 ]
  %6522 = fcmp fast ogt float %6105, 0.000000e+00
  br i1 %6522, label %6523, label %6531, !dx.controlflow.hints !118

; <label>:6523                                    ; preds = %6520
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6526 = fadd fast float %6525, %5988
  %6527 = call float @dx.op.binary.f32(i32 35, float %6526, float 0.000000e+00)  ; FMax(a,b)
  %6528 = fadd fast float %6527, 0x3F10000000000000
  %6529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5998, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float %6528)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  br label %6531

; <label>:6531                                    ; preds = %6523, %6520
  %6532 = phi float [ %6530, %6523 ], [ 1.000000e+00, %6520 ]
  %6533 = fcmp fast ogt float %6104, 0.000000e+00
  br i1 %6533, label %6534, label %6546, !dx.controlflow.hints !119

; <label>:6534                                    ; preds = %6531
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = fadd fast float %6536, %5988
  %6538 = call float @dx.op.binary.f32(i32 35, float %6537, float 0.000000e+00)  ; FMax(a,b)
  %6539 = fadd fast float %6538, 0x3F10000000000000
  br i1 %5991, label %6540, label %6543, !dx.controlflow.hints !120

; <label>:6540                                    ; preds = %6534
  %6541 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5980, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  br label %6546

; <label>:6543                                    ; preds = %6534
  %6544 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5980, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float %6539)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6545 = extractvalue %dx.types.ResRet.f32 %6544, 0
  br label %6546

; <label>:6546                                    ; preds = %6543, %6540, %6531
  %6547 = phi float [ %6542, %6540 ], [ %6545, %6543 ], [ 1.000000e+00, %6531 ]
  %6548 = fsub fast float %6521, %6510
  %6549 = fmul fast float %6548, %6077
  %6550 = fadd fast float %6549, %6510
  %6551 = fsub fast float %6532, %6550
  %6552 = fmul fast float %6551, %6076
  %6553 = fadd fast float %6552, %6550
  %6554 = fsub fast float %6547, %6553
  %6555 = fmul fast float %6554, %6104
  %6556 = fadd fast float %6555, %6553
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6559 = fcmp fast ogt float %6558, 0.000000e+00
  br i1 %6559, label %6560, label %6600, !dx.controlflow.hints !121

; <label>:6560                                    ; preds = %6546
  %6561 = fcmp fast ugt float %6558, 0.000000e+00
  br i1 %6561, label %6562, label %6597

; <label>:6562                                    ; preds = %6560
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6574 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6578 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6579 = fadd fast float %6576, %5957
  %6580 = fadd fast float %6577, %5958
  %6581 = fadd fast float %6578, %5959
  %6582 = fmul fast float %6579, %6564
  %6583 = call float @dx.op.tertiary.f32(i32 46, float %6565, float %6580, float %6582)  ; FMad(a,b,c)
  %6584 = call float @dx.op.tertiary.f32(i32 46, float %6566, float %6581, float %6583)  ; FMad(a,b,c)
  %6585 = fadd fast float %6584, %6567
  %6586 = fmul fast float %6579, %6569
  %6587 = call float @dx.op.tertiary.f32(i32 46, float %6570, float %6580, float %6586)  ; FMad(a,b,c)
  %6588 = call float @dx.op.tertiary.f32(i32 46, float %6571, float %6581, float %6587)  ; FMad(a,b,c)
  %6589 = fadd fast float %6588, %6572
  %6590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6585, float %6589, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6591 = extractvalue %dx.types.ResRet.f32 %6590, 0
  %6592 = fmul fast float %6591, %6574
  %6593 = fadd fast float %6592, %6573
  %6594 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  %6595 = fmul fast float %6594, %6558
  %6596 = fsub fast float 1.000000e+00, %6595
  br label %6597

; <label>:6597                                    ; preds = %6562, %6560
  %6598 = phi float [ %6596, %6562 ], [ 1.000000e+00, %6560 ]
  %6599 = fmul fast float %6598, %6556
  br label %6600

; <label>:6600                                    ; preds = %6597, %6546, %5937
  %6601 = phi float [ 1.000000e+00, %5937 ], [ %6599, %6597 ], [ %6556, %6546 ]
  %6602 = call float @dx.op.binary.f32(i32 36, float %6601, float %6601)  ; FMin(a,b)
  %6603 = call float @dx.op.binary.f32(i32 36, float %6601, float %6602)  ; FMin(a,b)
  %6604 = fcmp fast ogt float %6603, 0.000000e+00
  br i1 %6604, label %6605, label %6765, !dx.controlflow.hints !122

; <label>:6605                                    ; preds = %6600
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6610 = extractvalue %dx.types.CBufRet.f32 %6606, 3
  %6611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.CBufRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.CBufRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.CBufRet.f32 %6611, 3
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6619 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6620 = extractvalue %dx.types.CBufRet.f32 %6616, 3
  %6621 = fmul fast float %6607, %5957
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6608, float %6621)  ; FMad(a,b,c)
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6609, float %6622)  ; FMad(a,b,c)
  %6624 = fadd fast float %6623, %6610
  %6625 = fmul fast float %6612, %5957
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6613, float %6625)  ; FMad(a,b,c)
  %6627 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6614, float %6626)  ; FMad(a,b,c)
  %6628 = fadd fast float %6627, %6615
  %6629 = fmul fast float %6617, %5957
  %6630 = call float @dx.op.tertiary.f32(i32 46, float %5958, float %6618, float %6629)  ; FMad(a,b,c)
  %6631 = call float @dx.op.tertiary.f32(i32 46, float %5959, float %6619, float %6630)  ; FMad(a,b,c)
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.f32 %6632, 3
  %6636 = fmul fast float %6635, %6624
  %6637 = fmul fast float %6635, %6628
  %6638 = fadd fast float %6636, %6633
  %6639 = fadd fast float %6637, %6634
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = fsub fast float %6638, %6641
  %6644 = fsub fast float %6639, %6642
  %6645 = fcmp fast olt float %6643, 0.000000e+00
  %6646 = fcmp fast olt float %6644, 0.000000e+00
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6652 = select i1 %6645, float %6648, float %6650
  %6653 = select i1 %6646, float %6649, float %6651
  %6654 = fmul fast float %6652, %6643
  %6655 = fmul fast float %6653, %6644
  %6656 = call float @dx.op.unary.f32(i32 6, float %6654)  ; FAbs(value)
  %6657 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6658 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %6659 = call float @dx.op.binary.f32(i32 35, float %6656, float %6657)  ; FMax(a,b)
  %6660 = fsub fast float %6658, %6659
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6662 = fcmp fast ogt float %6661, 0.000000e+00
  br i1 %6662, label %6663, label %6704, !dx.controlflow.hints !123

; <label>:6663                                    ; preds = %6605
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6638, float %6639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6666 = fcmp fast ogt float %6665, 0.000000e+00
  br i1 %6666, label %6667, label %6699

; <label>:6667                                    ; preds = %6663
  %6668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6638, float %6639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6669 = extractvalue %dx.types.ResRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.ResRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.ResRet.f32 %6668, 2
  %6672 = extractvalue %dx.types.ResRet.f32 %6668, 3
  %6673 = fsub fast float 1.000000e+00, %6620
  %6674 = fsub fast float %6673, %6631
  %6675 = fmul fast float %6674, 0x400921FB60000000
  %6676 = fadd fast float %6675, 0x3FF921FB60000000
  %6677 = call float @dx.op.unary.f32(i32 13, float %6676)  ; Sin(value)
  %6678 = fadd fast float %6677, -1.000000e+00
  %6679 = fmul fast float %6678, 0x3FD45F3060000000
  %6680 = fmul fast float %6674, 0x401921FB60000000
  %6681 = fadd fast float %6680, 0x400921FB60000000
  %6682 = call float @dx.op.unary.f32(i32 13, float %6681)  ; Sin(value)
  %6683 = fadd fast float %6682, 0x3E7777A5C0000000
  %6684 = fmul fast float %6683, 0x3FC45F3060000000
  %6685 = fmul fast float %6674, 0x4022D97C80000000
  %6686 = fadd fast float %6685, 0x4012D97C80000000
  %6687 = call float @dx.op.unary.f32(i32 13, float %6686)  ; Sin(value)
  %6688 = fadd fast float %6687, 1.000000e+00
  %6689 = fmul fast float %6688, 0x3FBB2995E0000000
  %6690 = fmul fast float %6674, 0x402921FB60000000
  %6691 = fadd fast float %6690, 0x401921FB60000000
  %6692 = call float @dx.op.unary.f32(i32 13, float %6691)  ; Sin(value)
  %6693 = fadd fast float %6692, 0xBE8777A5C0000000
  %6694 = fmul fast float %6693, 0x3FB45F3060000000
  %6695 = call float @dx.op.dot4.f32(i32 56, float %6669, float %6670, float %6671, float %6672, float %6679, float %6684, float %6689, float %6694)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6696 = fmul fast float %6695, 0xBFF7154760000000
  %6697 = call float @dx.op.unary.f32(i32 21, float %6696)  ; Exp(value)
  %6698 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  br label %6699

; <label>:6699                                    ; preds = %6667, %6663
  %6700 = phi float [ %6698, %6667 ], [ 1.000000e+00, %6663 ]
  %6701 = fadd fast float %6700, -1.000000e+00
  %6702 = fmul fast float %6701, %6661
  %6703 = fadd fast float %6702, 1.000000e+00
  br label %6704

; <label>:6704                                    ; preds = %6699, %6605
  %6705 = phi float [ %6703, %6699 ], [ 1.000000e+00, %6605 ]
  %6706 = fmul fast float %6705, %6601
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6710 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6711 = fadd fast float %6708, %199
  %6712 = fadd fast float %6709, %200
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6715 = fsub fast float -0.000000e+00, %6711
  %6716 = fsub fast float -0.000000e+00, %6712
  %6717 = fsub fast float %5466, %6710
  %6718 = fadd fast float %6717, %6714
  %6719 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6715, float %6716, float %6718)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5938, float %5939, float %5940)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = fdiv fast float 1.000000e+00, %6720
  %6722 = fmul fast float %6721, %6719
  %6723 = fmul fast float %5938, %6722
  %6724 = fmul fast float %5939, %6722
  %6725 = fadd fast float %6723, %6711
  %6726 = fadd fast float %6724, %6712
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = fsub fast float %6725, %6728
  %6731 = fsub fast float %6726, %6729
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6735 = fmul fast float %6730, %6733
  %6736 = fmul fast float %6731, %6734
  %6737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.i32 %6737, 3
  %6739 = icmp eq i32 %6738, 0
  br i1 %6739, label %6745, label %6740

; <label>:6740                                    ; preds = %6704
  %6741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6735, float %6736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6742 = extractvalue %dx.types.ResRet.f32 %6741, 0
  %6743 = extractvalue %dx.types.ResRet.f32 %6741, 1
  %6744 = extractvalue %dx.types.ResRet.f32 %6741, 2
  br label %6750

; <label>:6745                                    ; preds = %6704
  %6746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6735, float %6736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6747 = extractvalue %dx.types.ResRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.ResRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.ResRet.f32 %6746, 2
  br label %6750

; <label>:6750                                    ; preds = %6745, %6740
  %6751 = phi float [ %6742, %6740 ], [ %6747, %6745 ]
  %6752 = phi float [ %6743, %6740 ], [ %6748, %6745 ]
  %6753 = phi float [ %6744, %6740 ], [ %6749, %6745 ]
  %6754 = extractvalue %dx.types.CBufRet.f32 %6713, 2
  %6755 = fmul fast float %6754, %6751
  %6756 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6757 = fsub fast float %6722, %6756
  %6758 = fsub fast float %6757, %6755
  %6759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6758)  ; FMax(a,b)
  %6760 = fmul fast float %6759, %6752
  %6761 = call float @dx.op.binary.f32(i32 36, float %6753, float %6760)  ; FMin(a,b)
  %6762 = fmul fast float %6761, 0xBFF7154760000000
  %6763 = call float @dx.op.unary.f32(i32 21, float %6762)  ; Exp(value)
  %6764 = fmul fast float %6706, %6763
  br label %6765

; <label>:6765                                    ; preds = %6750, %6600
  %6766 = phi float [ %6764, %6750 ], [ %6601, %6600 ]
  %6767 = call float @dx.op.binary.f32(i32 36, float %6766, float %6766)  ; FMin(a,b)
  %6768 = call float @dx.op.binary.f32(i32 36, float %6766, float %6767)  ; FMin(a,b)
  %6769 = fcmp fast ogt float %6768, 0.000000e+00
  br i1 %6769, label %6770, label %7021, !dx.controlflow.hints !124

; <label>:6770                                    ; preds = %6765
  %6771 = fmul fast float %6766, %5949
  %6772 = fmul fast float %6766, %5950
  %6773 = fmul fast float %6766, %5951
  %6774 = fsub fast float %201, %4643
  %6775 = fcmp fast ogt float %6774, 0.000000e+00
  %6776 = fmul fast float %5938, 5.120000e+02
  %6777 = fmul fast float %5939, 5.120000e+02
  %6778 = fmul fast float %5940, 5.120000e+02
  %6779 = fadd fast float %6778, %201
  %6780 = fsub fast float %4643, %6779
  %6781 = fmul fast float %6780, 2.000000e+00
  %6782 = fadd fast float %6781, %6779
  %6783 = select i1 %6775, float %6782, float %6779
  %6784 = fsub fast float %6783, %201
  %6785 = call float @dx.op.dot3.f32(i32 55, float %6776, float %6777, float %6784, float %6776, float %6777, float %6784)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = call float @dx.op.unary.f32(i32 25, float %6785)  ; Rsqrt(value)
  %6787 = fmul fast float %6786, %6776
  %6788 = fmul fast float %6786, %6777
  %6789 = fmul fast float %6786, %6784
  %6790 = fsub fast float %4643, %201
  %6791 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6790)  ; Dot3(ax,ay,az,bx,by,bz)
  %6792 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6787, float %6788, float %6789)  ; Dot3(ax,ay,az,bx,by,bz)
  %6793 = fdiv fast float 1.000000e+00, %6792
  %6794 = fmul fast float %6793, %6791
  %6795 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6774, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = fcmp fast ogt float %6795, 0.000000e+00
  %6797 = fcmp fast olt float %6795, 0.000000e+00
  %6798 = zext i1 %6796 to i32
  %6799 = zext i1 %6797 to i32
  %6800 = sub nsw i32 %6798, %6799
  %6801 = sitofp i32 %6800 to float
  %6802 = fsub fast float %6783, %4643
  %6803 = call float @dx.op.dot3.f32(i32 55, float %6776, float %6777, float %6802, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = fcmp fast ogt float %6803, 0.000000e+00
  %6805 = fcmp fast olt float %6803, 0.000000e+00
  %6806 = zext i1 %6804 to i32
  %6807 = zext i1 %6805 to i32
  %6808 = sub nsw i32 %6806, %6807
  %6809 = sitofp i32 %6808 to float
  %6810 = fcmp fast une float %6801, %6809
  br i1 %6810, label %6811, label %6821

; <label>:6811                                    ; preds = %6770
  %6812 = fmul fast float %6794, %6789
  %6813 = fmul fast float %6794, %6788
  %6814 = fmul fast float %6794, %6787
  %6815 = fmul fast float %6814, %6814
  %6816 = fmul fast float %6813, %6813
  %6817 = fadd fast float %6815, %6816
  %6818 = fmul fast float %6812, %6812
  %6819 = fadd fast float %6817, %6818
  %6820 = call float @dx.op.unary.f32(i32 24, float %6819)  ; Sqrt(value)
  br label %6831

; <label>:6821                                    ; preds = %6770
  %6822 = icmp slt i32 %6800, 0
  br i1 %6822, label %6823, label %6831

; <label>:6823                                    ; preds = %6821
  %6824 = fsub fast float %201, %6783
  %6825 = fmul fast float %6776, %6776
  %6826 = fmul fast float %6777, %6777
  %6827 = fadd fast float %6825, %6826
  %6828 = fmul fast float %6824, %6824
  %6829 = fadd fast float %6827, %6828
  %6830 = call float @dx.op.unary.f32(i32 24, float %6829)  ; Sqrt(value)
  br label %6831

; <label>:6831                                    ; preds = %6823, %6821, %6811
  %6832 = phi float [ %6820, %6811 ], [ %6830, %6823 ], [ 0.000000e+00, %6821 ]
  %6833 = fsub fast float -0.000000e+00, %6832
  %6834 = select i1 %6775, float -0.000000e+00, float %6833
  %6835 = fmul fast float %4644, 0x3FF7154760000000
  %6836 = fmul fast float %6835, %6834
  %6837 = fmul fast float %4645, 0x3FF7154760000000
  %6838 = fmul fast float %6837, %6834
  %6839 = fmul fast float %4646, 0x3FF7154760000000
  %6840 = fmul fast float %6839, %6834
  %6841 = call float @dx.op.unary.f32(i32 21, float %6836)  ; Exp(value)
  %6842 = call float @dx.op.unary.f32(i32 21, float %6838)  ; Exp(value)
  %6843 = call float @dx.op.unary.f32(i32 21, float %6840)  ; Exp(value)
  %6844 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6845 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6846 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6847 = fmul fast float %6771, %6844
  %6848 = fmul fast float %6772, %6845
  %6849 = fmul fast float %6773, %6846
  %6850 = fsub fast float %5938, %5469
  %6851 = fsub fast float %5939, %5470
  %6852 = fsub fast float %5940, %5471
  %6853 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6850, float %6851, float %6852)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = call float @dx.op.unary.f32(i32 25, float %6853)  ; Rsqrt(value)
  %6855 = fmul fast float %6854, %6850
  %6856 = fmul fast float %6854, %6851
  %6857 = fmul fast float %6854, %6852
  %6858 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %6859 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %6855, float %6856, float %6857)  ; Dot3(ax,ay,az,bx,by,bz)
  %6860 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6861 = fmul fast float %6860, %6860
  %6862 = fmul fast float %6861, %5490
  %6863 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6864 = fmul fast float %6863, %6860
  %6865 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %6855, float %6856, float %6857)  ; Dot3(ax,ay,az,bx,by,bz)
  %6866 = fmul fast float %6865, %6865
  %6867 = call float @dx.op.unary.f32(i32 6, float %6858)  ; FAbs(value)
  %6868 = fsub fast float 1.000000e+00, %5432
  %6869 = call float @dx.op.binary.f32(i32 35, float %6868, float 0x3F847AE140000000)  ; FMax(a,b)
  %6870 = fmul fast float %6869, %6869
  %6871 = fmul fast float %6870, %6870
  %6872 = fsub fast float 1.000000e+00, %6871
  %6873 = fmul fast float %5477, %5477
  %6874 = fmul fast float %6873, %6872
  %6875 = fadd fast float %6874, %6871
  %6876 = bitcast float %6875 to i32
  %6877 = ashr i32 %6876, 1
  %6878 = add nsw i32 %6877, 532487669
  %6879 = bitcast i32 %6878 to float
  %6880 = fadd fast float %6879, %5477
  %6881 = fmul fast float %6871, %6866
  %6882 = fsub fast float 1.000000e+00, %6866
  %6883 = fadd fast float %6882, %6881
  %6884 = fmul fast float %6867, %6867
  %6885 = fmul fast float %6884, %6872
  %6886 = fadd fast float %6885, %6871
  %6887 = bitcast float %6886 to i32
  %6888 = ashr i32 %6887, 1
  %6889 = add nsw i32 %6888, 532487669
  %6890 = bitcast i32 %6889 to float
  %6891 = fadd fast float %6890, %6867
  %6892 = fmul fast float %6883, %6883
  %6893 = fmul fast float %6892, %6880
  %6894 = fmul fast float %6893, %6891
  %6895 = fdiv fast float 0x3FF0A00000000000, %6894
  %6896 = fmul fast float %6895, %6871
  %6897 = call float @dx.op.unary.f32(i32 6, float %6859)  ; FAbs(value)
  %6898 = fsub fast float 1.000000e+00, %6897
  %6899 = bitcast float %6898 to i32
  %6900 = sitofp i32 %6899 to float
  %6901 = fmul fast float %6900, 5.000000e+00
  %6902 = fadd fast float %6901, 0xC1EFBF8940000000
  %6903 = fptosi float %6902 to i32
  %6904 = bitcast i32 %6903 to float
  %6905 = fsub fast float 1.000000e+00, %5423
  %6906 = fsub fast float 1.000000e+00, %5424
  %6907 = fsub fast float 1.000000e+00, %5475
  %6908 = fmul fast float %6904, %6905
  %6909 = fmul fast float %6904, %6906
  %6910 = fmul fast float %6904, %6907
  %6911 = fadd fast float %6908, %5423
  %6912 = fadd fast float %6909, %5424
  %6913 = fadd fast float %6910, %5475
  br i1 %5792, label %6914, label %6937

; <label>:6914                                    ; preds = %6831
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4241, float %6897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  %6919 = fadd fast float %6916, -5.000000e-01
  %6920 = fadd fast float %6917, -5.000000e-01
  %6921 = fadd fast float %6918, -5.000000e-01
  %6922 = fmul fast float %5423, 4.000000e+00
  %6923 = fmul fast float %6922, %6905
  %6924 = fmul fast float %6923, %6919
  %6925 = fmul fast float %5424, 4.000000e+00
  %6926 = fmul fast float %6925, %6906
  %6927 = fmul fast float %6926, %6920
  %6928 = fmul fast float %5475, 4.000000e+00
  %6929 = fmul fast float %6928, %6907
  %6930 = fmul fast float %6929, %6921
  %6931 = fadd fast float %6924, %6911
  %6932 = fadd fast float %6927, %6912
  %6933 = fadd fast float %6930, %6913
  %6934 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6935 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  %6936 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  br label %6937

; <label>:6937                                    ; preds = %6914, %6831
  %6938 = phi float [ %6934, %6914 ], [ %6911, %6831 ]
  %6939 = phi float [ %6935, %6914 ], [ %6912, %6831 ]
  %6940 = phi float [ %6936, %6914 ], [ %6913, %6831 ]
  %6941 = fmul fast float %6858, 9.843750e-01
  %6942 = fadd fast float %6941, 7.812500e-03
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6942, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 3
  %6946 = fmul fast float %6944, %5423
  %6947 = fmul fast float %6944, %5424
  %6948 = fmul fast float %6944, %5475
  %6949 = fadd fast float %6946, %6945
  %6950 = fadd fast float %6947, %6945
  %6951 = fadd fast float %6948, %6945
  br i1 %5792, label %6952, label %6975

; <label>:6952                                    ; preds = %6937
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4241, float %6858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.ResRet.f32 %6953, 1
  %6956 = extractvalue %dx.types.ResRet.f32 %6953, 2
  %6957 = fadd fast float %6954, -5.000000e-01
  %6958 = fadd fast float %6955, -5.000000e-01
  %6959 = fadd fast float %6956, -5.000000e-01
  %6960 = fmul fast float %5423, 4.000000e+00
  %6961 = fmul fast float %6960, %6905
  %6962 = fmul fast float %6961, %6957
  %6963 = fmul fast float %5424, 4.000000e+00
  %6964 = fmul fast float %6963, %6906
  %6965 = fmul fast float %6964, %6958
  %6966 = fmul fast float %5475, 4.000000e+00
  %6967 = fmul fast float %6966, %6907
  %6968 = fmul fast float %6967, %6959
  %6969 = fadd fast float %6962, %6949
  %6970 = fadd fast float %6965, %6950
  %6971 = fadd fast float %6968, %6951
  %6972 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6973 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  %6974 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  br label %6975

; <label>:6975                                    ; preds = %6952, %6937
  %6976 = phi float [ %6972, %6952 ], [ %6949, %6937 ]
  %6977 = phi float [ %6973, %6952 ], [ %6950, %6937 ]
  %6978 = phi float [ %6974, %6952 ], [ %6951, %6937 ]
  %6979 = call float @dx.op.binary.f32(i32 35, float %6977, float %6978)  ; FMax(a,b)
  %6980 = call float @dx.op.binary.f32(i32 35, float %6976, float %6979)  ; FMax(a,b)
  %6981 = fsub fast float 1.000000e+00, %6980
  %6982 = fmul fast float %6938, %6896
  %6983 = fmul fast float %6939, %6896
  %6984 = fmul fast float %6940, %6896
  %6985 = fsub fast float 1.000000e+00, %6859
  %6986 = bitcast float %6985 to i32
  %6987 = sitofp i32 %6986 to float
  %6988 = fmul fast float %6987, 5.000000e+00
  %6989 = fadd fast float %6988, 0xC1EFBF8940000000
  %6990 = fptosi float %6989 to i32
  %6991 = bitcast i32 %6990 to float
  %6992 = fmul fast float %6991, %4242
  %6993 = fmul fast float %6981, %6992
  %6994 = fmul fast float %6993, %5892
  %6995 = fmul fast float %6993, %5893
  %6996 = fmul fast float %6993, %5894
  %6997 = fadd fast float %6994, %6982
  %6998 = fadd fast float %6995, %6983
  %6999 = fadd fast float %6996, %6984
  %7000 = fmul fast float %6864, %6847
  %7001 = fmul fast float %7000, %6981
  %7002 = fmul fast float %6864, %6848
  %7003 = fmul fast float %7002, %6981
  %7004 = fmul fast float %6864, %6849
  %7005 = fmul fast float %7004, %6981
  %7006 = fmul fast float %7000, %6997
  %7007 = fmul fast float %7002, %6998
  %7008 = fmul fast float %7004, %6999
  %7009 = fadd fast float %7001, %5874
  %7010 = fmul fast float %7009, %4238
  %7011 = fadd fast float %7003, %5876
  %7012 = fmul fast float %7011, %4238
  %7013 = fadd fast float %7005, %5878
  %7014 = fmul fast float %7013, %4238
  %7015 = fadd fast float %7006, %5926
  %7016 = fmul fast float %7015, %4238
  %7017 = fadd fast float %7007, %5929
  %7018 = fmul fast float %7017, %4238
  %7019 = fadd fast float %7008, %5932
  %7020 = fmul fast float %7019, %4238
  br label %7021

; <label>:7021                                    ; preds = %6975, %6765, %5819
  %7022 = phi float [ %5927, %5819 ], [ %5927, %6765 ], [ %7016, %6975 ]
  %7023 = phi float [ %5930, %5819 ], [ %5930, %6765 ], [ %7018, %6975 ]
  %7024 = phi float [ %5933, %5819 ], [ %5933, %6765 ], [ %7020, %6975 ]
  %7025 = phi float [ %5922, %5819 ], [ %5922, %6765 ], [ %7010, %6975 ]
  %7026 = phi float [ %5923, %5819 ], [ %5923, %6765 ], [ %7012, %6975 ]
  %7027 = phi float [ %5924, %5819 ], [ %5924, %6765 ], [ %7014, %6975 ]
  %7028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.i32 %7028, 0
  %7030 = icmp eq i32 %7029, 0
  br i1 %7030, label %7651, label %7031

; <label>:7031                                    ; preds = %7021
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7035 = fmul fast float %7033, %116
  %7036 = fmul fast float %7034, %117
  %7037 = fptoui float %7035 to i32
  %7038 = fptoui float %7036 to i32
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7042 = extractvalue %dx.types.CBufRet.f32 %7039, 3
  %7043 = fadd fast float %107, -4.000000e+00
  %7044 = call float @dx.op.binary.f32(i32 35, float %7043, float 0.000000e+00)  ; FMax(a,b)
  %7045 = fadd fast float %7044, %7040
  %7046 = fmul fast float %7045, %7041
  %7047 = call float @dx.op.unary.f32(i32 23, float %7046)  ; Log(value)
  %7048 = fmul fast float %7047, %7042
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7051 = fmul fast float %7048, %7050
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.i32 %7053, 1
  %7055 = add i32 %7054, -1
  %7056 = uitofp i32 %7054 to float
  %7057 = fmul fast float %7056, %7052
  %7058 = fptoui float %7057 to i32
  %7059 = call i32 @dx.op.binary.i32(i32 40, i32 %7058, i32 %7055)  ; UMin(a,b)
  %7060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.i32 %7060, 2
  %7062 = extractvalue %dx.types.CBufRet.i32 %7060, 3
  %7063 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7038, i32 %7061, i32 %7037)  ; UMad(a,b,c)
  %7064 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7059, i32 %7062, i32 %7063)  ; UMad(a,b,c)
  %7065 = add nsw i32 %7029, -1
  %7066 = call i32 @dx.op.binary.i32(i32 37, i32 %7065, i32 0)  ; IMax(a,b)
  %7067 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7068 = fptoui float %7067 to i32
  %7069 = lshr i32 %7068, 5
  %7070 = call i32 @dx.op.binary.i32(i32 40, i32 %7069, i32 8191)  ; UMin(a,b)
  %7071 = shl i32 %7070, 2
  %7072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7071, i32 undef)  ; BufferLoad(srv,index,wot)
  %7073 = extractvalue %dx.types.ResRet.i32 %7072, 0
  %7074 = lshr i32 %7073, 16
  %7075 = and i32 %7073, 65535
  %7076 = lshr i32 %7073, 21
  %7077 = lshr i32 %7075, 5
  %7078 = call i32 @dx.op.binary.i32(i32 40, i32 %7077, i32 %7066)  ; UMin(a,b)
  %7079 = icmp ugt i32 %7076, %7078
  br i1 %7079, label %7651, label %7080

; <label>:7080                                    ; preds = %7031
  br label %7081

; <label>:7081                                    ; preds = %7641, %7080
  %7082 = phi i32 [ %7648, %7641 ], [ %7076, %7080 ]
  %7083 = phi float [ %7642, %7641 ], [ %7022, %7080 ]
  %7084 = phi float [ %7643, %7641 ], [ %7023, %7080 ]
  %7085 = phi float [ %7644, %7641 ], [ %7024, %7080 ]
  %7086 = phi float [ %7645, %7641 ], [ %7025, %7080 ]
  %7087 = phi float [ %7646, %7641 ], [ %7026, %7080 ]
  %7088 = phi float [ %7647, %7641 ], [ %7027, %7080 ]
  %7089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.i32 %7089, 0
  %7091 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7064, i32 %7090, i32 %7082)  ; UMad(a,b,c)
  %7092 = shl i32 %7091, 2
  %7093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7092, i32 undef)  ; BufferLoad(srv,index,wot)
  %7094 = extractvalue %dx.types.ResRet.i32 %7093, 0
  %7095 = shl i32 %7082, 5
  %7096 = sub nsw i32 %7074, %7095
  %7097 = call i32 @dx.op.binary.i32(i32 37, i32 %7096, i32 0)  ; IMax(a,b)
  %7098 = call i32 @dx.op.binary.i32(i32 38, i32 %7097, i32 31)  ; IMin(a,b)
  %7099 = sub nsw i32 1, %7074
  %7100 = add nsw i32 %7099, %7075
  %7101 = call i32 @dx.op.binary.i32(i32 37, i32 %7100, i32 0)  ; IMax(a,b)
  %7102 = call i32 @dx.op.binary.i32(i32 38, i32 %7101, i32 32)  ; IMin(a,b)
  %7103 = and i32 %7102, 31
  %7104 = shl i32 -1, %7103
  %7105 = xor i32 %7104, -1
  %7106 = and i32 %7098, 31
  %7107 = shl i32 %7105, %7106
  %7108 = icmp eq i32 %7102, 32
  %7109 = select i1 %7108, i32 -1, i32 %7107
  %7110 = and i32 %7109, %7094
  %7111 = icmp eq i32 %7110, 0
  br i1 %7111, label %7641, label %7112

; <label>:7112                                    ; preds = %7081
  br label %7113

; <label>:7113                                    ; preds = %7247, %7112
  %7114 = phi i32 [ %7125, %7247 ], [ %7110, %7112 ]
  %7115 = phi float [ %7248, %7247 ], [ %7083, %7112 ]
  %7116 = phi float [ %7249, %7247 ], [ %7084, %7112 ]
  %7117 = phi float [ %7250, %7247 ], [ %7085, %7112 ]
  %7118 = phi float [ %7251, %7247 ], [ %7086, %7112 ]
  %7119 = phi float [ %7252, %7247 ], [ %7087, %7112 ]
  %7120 = phi float [ %7253, %7247 ], [ %7088, %7112 ]
  %7121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7114)  ; FirstbitLo(value)
  %7122 = add i32 %7121, %7095
  %7123 = and i32 %7121, 31
  %7124 = shl i32 1, %7123
  %7125 = xor i32 %7124, %7114
  %7126 = mul i32 %7122, 112
  %7127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.ResRet.f32 %7127, 1
  %7130 = extractvalue %dx.types.ResRet.f32 %7127, 2
  %7131 = or i32 %7126, 12
  %7132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7131, i32 undef)  ; BufferLoad(srv,index,wot)
  %7133 = extractvalue %dx.types.ResRet.f32 %7132, 0
  %7134 = add i32 %7126, 16
  %7135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7134, i32 undef)  ; BufferLoad(srv,index,wot)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7139 = add i32 %7126, 28
  %7140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7139, i32 undef)  ; BufferLoad(srv,index,wot)
  %7141 = extractvalue %dx.types.ResRet.i32 %7140, 0
  %7142 = add i32 %7126, 44
  %7143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7142, i32 undef)  ; BufferLoad(srv,index,wot)
  %7144 = extractvalue %dx.types.ResRet.f32 %7143, 0
  %7145 = add i32 %7126, 48
  %7146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7145, i32 undef)  ; BufferLoad(srv,index,wot)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.ResRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.ResRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.ResRet.f32 %7146, 3
  %7151 = add i32 %7126, 64
  %7152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7151, i32 undef)  ; BufferLoad(srv,index,wot)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.ResRet.f32 %7152, 3
  %7157 = add i32 %7126, 80
  %7158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7157, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7161 = add i32 %7126, 92
  %7162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7161, i32 undef)  ; BufferLoad(srv,index,wot)
  %7163 = extractvalue %dx.types.ResRet.i32 %7162, 0
  %7164 = call float @dx.op.dot3.f32(i32 55, float %7128, float %7129, float %7130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = select i1 %271, float %7159, float %7128
  %7166 = select i1 %271, float %7164, float %7129
  %7167 = select i1 %271, float %7160, float %7130
  %7168 = and i32 %7163, 65535
  %7169 = uitofp i32 %7168 to float
  %7170 = lshr i32 %7163, 16
  %7171 = uitofp i32 %7170 to float
  %7172 = and i32 %7141, 65535
  %7173 = and i32 %7141, 50331648
  %7174 = icmp eq i32 %7173, 33554432
  %7175 = fsub fast float %7147, %199
  %7176 = fsub fast float %7148, %200
  %7177 = fsub fast float %7149, %201
  %7178 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7177, float %7175, float %7176, float %7177)  ; Dot3(ax,ay,az,bx,by,bz)
  %7179 = call float @dx.op.unary.f32(i32 24, float %7178)  ; Sqrt(value)
  %7180 = fdiv fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7180, %7175
  %7182 = fmul fast float %7180, %7176
  %7183 = fmul fast float %7180, %7177
  %7184 = fadd fast float %7179, %7133
  %7185 = fdiv fast float 1.000000e+00, %7184
  %7186 = fmul float %7144, %7185
  %7187 = fmul float %7186, %7186
  %7188 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  br i1 %7174, label %7189, label %7210

; <label>:7189                                    ; preds = %7113
  %7190 = fmul fast float %7155, %7136
  %7191 = fmul fast float %7155, %7137
  %7192 = fmul fast float %7155, %7138
  %7193 = fadd fast float %7175, %7190
  %7194 = fadd fast float %7176, %7191
  %7195 = fadd fast float %7177, %7192
  %7196 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7194, float %7195, float %7193, float %7194, float %7195)  ; Dot3(ax,ay,az,bx,by,bz)
  %7197 = call float @dx.op.unary.f32(i32 25, float %7196)  ; Rsqrt(value)
  %7198 = fmul fast float %7197, %7193
  %7199 = fmul fast float %7197, %7194
  %7200 = fmul fast float %7197, %7195
  %7201 = fsub fast float %199, %7147
  %7202 = fsub fast float %200, %7148
  %7203 = fsub fast float %201, %7149
  %7204 = fsub fast float -0.000000e+00, %7201
  %7205 = fsub fast float -0.000000e+00, %7202
  %7206 = fsub fast float -0.000000e+00, %7203
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7204, float %7205, float %7206, float %7136, float %7137, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = uitofp i1 %7208 to float
  br label %7210

; <label>:7210                                    ; preds = %7189, %7113
  %7211 = phi float [ %7209, %7189 ], [ 1.000000e+00, %7113 ]
  %7212 = phi float [ %7198, %7189 ], [ %7181, %7113 ]
  %7213 = phi float [ %7199, %7189 ], [ %7182, %7113 ]
  %7214 = phi float [ %7200, %7189 ], [ %7183, %7113 ]
  %7215 = call float @dx.op.dot3.f32(i32 55, float %7136, float %7137, float %7138, float %7212, float %7213, float %7214)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = fmul fast float %7215, %7215
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = fsub fast float 1.000000e+00, %7217
  %7219 = fmul fast float %7218, 5.000000e-01
  %7220 = fcmp fast ogt float %7215, 0.000000e+00
  %7221 = fsub fast float 1.000000e+00, %7219
  %7222 = select i1 %7220, float %7219, float %7221
  %7223 = fmul fast float %7222, %7171
  %7224 = fadd fast float %7223, %7169
  %7225 = fmul fast float %7224, 0x3EF0001000000000
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7225, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = fmul fast float %7215, %7153
  %7229 = fadd fast float %7228, %7154
  %7230 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7231 = select i1 %7174, float 1.000000e+00, float %7230
  %7232 = select i1 %7174, float %7230, float 1.000000e+00
  %7233 = fmul fast float %7179, %7150
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %7234, %7156
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7237 = fmul fast float %7236, %7232
  %7238 = fmul fast float %7237, 2.000000e+00
  %7239 = fsub fast float 3.000000e+00, %7238
  %7240 = fmul fast float %7227, %7211
  %7241 = fmul fast float %7237, %7237
  %7242 = fmul fast float %7241, %7240
  %7243 = fmul fast float %7242, %7239
  %7244 = call float @dx.op.binary.f32(i32 36, float %7243, float %7243)  ; FMin(a,b)
  %7245 = call float @dx.op.binary.f32(i32 36, float %7243, float %7244)  ; FMin(a,b)
  %7246 = fcmp fast ogt float %7245, 0.000000e+00
  br i1 %7246, label %7255, label %7247, !dx.controlflow.hints !125

; <label>:7247                                    ; preds = %7597, %7355, %7210
  %7248 = phi float [ %7115, %7355 ], [ %7115, %7210 ], [ %7637, %7597 ]
  %7249 = phi float [ %7116, %7355 ], [ %7116, %7210 ], [ %7638, %7597 ]
  %7250 = phi float [ %7117, %7355 ], [ %7117, %7210 ], [ %7639, %7597 ]
  %7251 = phi float [ %7118, %7355 ], [ %7118, %7210 ], [ %7631, %7597 ]
  %7252 = phi float [ %7119, %7355 ], [ %7119, %7210 ], [ %7632, %7597 ]
  %7253 = phi float [ %7120, %7355 ], [ %7120, %7210 ], [ %7633, %7597 ]
  %7254 = icmp eq i32 %7114, %7124
  br i1 %7254, label %7640, label %7113

; <label>:7255                                    ; preds = %7210
  %7256 = icmp eq i32 %7172, 255
  br i1 %7256, label %7355, label %7257, !dx.controlflow.hints !126

; <label>:7257                                    ; preds = %7255
  %7258 = mul nuw nsw i32 %7172, 176
  %7259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7258, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = extractvalue %dx.types.ResRet.f32 %7259, 3
  %7264 = add nuw nsw i32 %7258, 16
  %7265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7264, i32 undef)  ; BufferLoad(srv,index,wot)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.ResRet.f32 %7265, 1
  %7268 = add nuw nsw i32 %7258, 32
  %7269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7268, i32 undef)  ; BufferLoad(srv,index,wot)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = add nuw nsw i32 %7258, 48
  %7274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7273, i32 undef)  ; BufferLoad(srv,index,wot)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = extractvalue %dx.types.ResRet.f32 %7274, 3
  %7279 = add nuw nsw i32 %7258, 64
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.ResRet.f32 %7280, 2
  %7284 = extractvalue %dx.types.ResRet.f32 %7280, 3
  %7285 = add nuw nsw i32 %7258, 80
  %7286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7285, i32 undef)  ; BufferLoad(srv,index,wot)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = extractvalue %dx.types.ResRet.f32 %7286, 1
  %7289 = extractvalue %dx.types.ResRet.f32 %7286, 2
  %7290 = extractvalue %dx.types.ResRet.f32 %7286, 3
  %7291 = add nuw nsw i32 %7258, 96
  %7292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7291, i32 undef)  ; BufferLoad(srv,index,wot)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  %7296 = extractvalue %dx.types.ResRet.f32 %7292, 3
  %7297 = bitcast float %7267 to i32
  %7298 = fmul fast float %7272, %125
  %7299 = fmul fast float %7272, %127
  %7300 = fmul fast float %7272, %129
  %7301 = fadd fast float %7298, %199
  %7302 = fadd fast float %7299, %200
  %7303 = fadd fast float %7300, %201
  %7304 = fmul fast float %7301, %7275
  %7305 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7281, float %7304)  ; FMad(a,b,c)
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7287, float %7305)  ; FMad(a,b,c)
  %7307 = fadd fast float %7306, %7293
  %7308 = fmul fast float %7301, %7276
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7282, float %7308)  ; FMad(a,b,c)
  %7310 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7288, float %7309)  ; FMad(a,b,c)
  %7311 = fadd fast float %7310, %7294
  %7312 = fmul fast float %7301, %7277
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7283, float %7312)  ; FMad(a,b,c)
  %7314 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7289, float %7313)  ; FMad(a,b,c)
  %7315 = fadd fast float %7314, %7295
  %7316 = fmul fast float %7301, %7278
  %7317 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7284, float %7316)  ; FMad(a,b,c)
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7290, float %7317)  ; FMad(a,b,c)
  %7319 = fadd fast float %7318, %7296
  %7320 = fdiv fast float %7307, %7319
  %7321 = fdiv fast float %7311, %7319
  %7322 = fdiv fast float %7315, %7319
  %7323 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7322)  ; FMax(a,b)
  %7324 = fmul fast float %282, 0x401921FB60000000
  %7325 = call float @dx.op.unary.f32(i32 13, float %7324)  ; Sin(value)
  %7326 = call float @dx.op.unary.f32(i32 12, float %7324)  ; Cos(value)
  %7327 = fsub fast float -0.000000e+00, %7325
  %7328 = fmul fast float %7262, 5.000000e-01
  %7329 = call float @dx.op.dot2.f32(i32 54, float %282, float %282, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7330 = call float @dx.op.unary.f32(i32 22, float %7329)  ; Frc(value)
  %7331 = fmul fast float %7330, 0x404A7DD040000000
  %7332 = call float @dx.op.unary.f32(i32 22, float %7331)  ; Frc(value)
  %7333 = fmul fast float %7332, %7271
  %7334 = fadd fast float %7333, %7328
  %7335 = call float @dx.op.tertiary.f32(i32 46, float %7334, float %7327, float 0.000000e+00)  ; FMad(a,b,c)
  %7336 = call float @dx.op.tertiary.f32(i32 46, float %7334, float %7326, float 0.000000e+00)  ; FMad(a,b,c)
  %7337 = fadd fast float %7335, %7320
  %7338 = fadd fast float %7336, %7321
  %7339 = fmul fast float %7337, %7266
  %7340 = fmul fast float %7338, %7266
  %7341 = call float @dx.op.binary.f32(i32 35, float %7339, float %7262)  ; FMax(a,b)
  %7342 = call float @dx.op.binary.f32(i32 35, float %7340, float %7262)  ; FMax(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7341, float %7263)  ; FMin(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7342, float %7263)  ; FMin(a,b)
  %7345 = fadd fast float %7343, %7260
  %7346 = fadd fast float %7344, %7261
  %7347 = uitofp i32 %7297 to float
  %7348 = fadd fast float %7323, %7270
  %7349 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7345, float %7346, float %7347, float undef, i32 0, i32 0, i32 undef, float %7348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7350 = extractvalue %dx.types.ResRet.f32 %7349, 0
  %7351 = fadd fast float %7350, -1.000000e+00
  %7352 = fmul fast float %7351, %7231
  %7353 = fadd fast float %7352, 1.000000e+00
  %7354 = fmul fast float %7353, %7243
  br label %7355

; <label>:7355                                    ; preds = %7257, %7255
  %7356 = phi float [ %7354, %7257 ], [ %7243, %7255 ]
  %7357 = call float @dx.op.binary.f32(i32 36, float %7356, float %7356)  ; FMin(a,b)
  %7358 = call float @dx.op.binary.f32(i32 36, float %7356, float %7357)  ; FMin(a,b)
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  br i1 %7359, label %7360, label %7247, !dx.controlflow.hints !127

; <label>:7360                                    ; preds = %7355
  %7361 = fmul fast float %7356, %7165
  %7362 = fmul fast float %7356, %7166
  %7363 = fmul fast float %7356, %7167
  %7364 = fsub fast float %7149, %4643
  %7365 = fcmp fast ogt float %7364, 0.000000e+00
  %7366 = fsub fast float %201, %4643
  %7367 = fcmp fast ogt float %7366, 0.000000e+00
  %7368 = xor i1 %7367, %7365
  %7369 = fsub fast float %4643, %7149
  %7370 = fmul fast float %7369, 2.000000e+00
  %7371 = fadd fast float %7370, %7149
  %7372 = select i1 %7368, float %7149, float %7371
  %7373 = fsub fast float %7372, %201
  %7374 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7373, float %7175, float %7176, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7375 = call float @dx.op.unary.f32(i32 25, float %7374)  ; Rsqrt(value)
  %7376 = fmul fast float %7375, %7175
  %7377 = fmul fast float %7375, %7176
  %7378 = fmul fast float %7375, %7373
  %7379 = fsub fast float %4643, %201
  %7380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7379)  ; Dot3(ax,ay,az,bx,by,bz)
  %7381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7376, float %7377, float %7378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = fdiv fast float 1.000000e+00, %7381
  %7383 = fmul fast float %7382, %7380
  %7384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7366, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7385 = fcmp fast ogt float %7384, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = zext i1 %7385 to i32
  %7388 = zext i1 %7386 to i32
  %7389 = sub nsw i32 %7387, %7388
  %7390 = sitofp i32 %7389 to float
  %7391 = fsub fast float %7372, %4643
  %7392 = call float @dx.op.dot3.f32(i32 55, float %7175, float %7176, float %7391, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7393 = fcmp fast ogt float %7392, 0.000000e+00
  %7394 = fcmp fast olt float %7392, 0.000000e+00
  %7395 = zext i1 %7393 to i32
  %7396 = zext i1 %7394 to i32
  %7397 = sub nsw i32 %7395, %7396
  %7398 = sitofp i32 %7397 to float
  %7399 = fcmp fast une float %7390, %7398
  br i1 %7399, label %7400, label %7410

; <label>:7400                                    ; preds = %7360
  %7401 = fmul fast float %7383, %7378
  %7402 = fmul fast float %7383, %7377
  %7403 = fmul fast float %7383, %7376
  %7404 = fmul fast float %7403, %7403
  %7405 = fmul fast float %7402, %7402
  %7406 = fadd fast float %7404, %7405
  %7407 = fmul fast float %7401, %7401
  %7408 = fadd fast float %7406, %7407
  %7409 = call float @dx.op.unary.f32(i32 24, float %7408)  ; Sqrt(value)
  br label %7422

; <label>:7410                                    ; preds = %7360
  %7411 = icmp slt i32 %7389, 0
  br i1 %7411, label %7412, label %7422

; <label>:7412                                    ; preds = %7410
  %7413 = fsub fast float %199, %7147
  %7414 = fsub fast float %200, %7148
  %7415 = fsub fast float %201, %7372
  %7416 = fmul fast float %7413, %7413
  %7417 = fmul fast float %7414, %7414
  %7418 = fadd fast float %7416, %7417
  %7419 = fmul fast float %7415, %7415
  %7420 = fadd fast float %7418, %7419
  %7421 = call float @dx.op.unary.f32(i32 24, float %7420)  ; Sqrt(value)
  br label %7422

; <label>:7422                                    ; preds = %7412, %7410, %7400
  %7423 = phi float [ %7409, %7400 ], [ %7421, %7412 ], [ 0.000000e+00, %7410 ]
  %7424 = and i1 %7367, %7365
  %7425 = fsub fast float -0.000000e+00, %7423
  %7426 = select i1 %7424, float -0.000000e+00, float %7425
  %7427 = fmul fast float %4644, 0x3FF7154760000000
  %7428 = fmul fast float %7427, %7426
  %7429 = fmul fast float %4645, 0x3FF7154760000000
  %7430 = fmul fast float %7429, %7426
  %7431 = fmul fast float %4646, 0x3FF7154760000000
  %7432 = fmul fast float %7431, %7426
  %7433 = call float @dx.op.unary.f32(i32 21, float %7428)  ; Exp(value)
  %7434 = call float @dx.op.unary.f32(i32 21, float %7430)  ; Exp(value)
  %7435 = call float @dx.op.unary.f32(i32 21, float %7432)  ; Exp(value)
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7438 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7439 = fmul fast float %7361, %7436
  %7440 = fmul fast float %7362, %7437
  %7441 = fmul fast float %7363, %7438
  %7442 = fsub fast float %7181, %5469
  %7443 = fsub fast float %7182, %5470
  %7444 = fsub fast float %7183, %5471
  %7445 = call float @dx.op.dot3.f32(i32 55, float %7442, float %7443, float %7444, float %7442, float %7443, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.unary.f32(i32 25, float %7445)  ; Rsqrt(value)
  %7447 = fmul fast float %7446, %7442
  %7448 = fmul fast float %7446, %7443
  %7449 = fmul fast float %7446, %7444
  %7450 = call float @dx.op.dot3.f32(i32 55, float %7181, float %7182, float %7183, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %7451 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %7447, float %7448, float %7449)  ; Dot3(ax,ay,az,bx,by,bz)
  %7452 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7453 = fmul fast float %7452, %7188
  %7454 = fmul fast float %7452, %7452
  %7455 = fmul fast float %7454, %5490
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = fmul fast float %7453, %7456
  %7458 = bitcast float %7178 to i32
  %7459 = ashr i32 %7458, 1
  %7460 = sub nsw i32 1597463007, %7459
  %7461 = bitcast i32 %7460 to float
  %7462 = fmul fast float %7461, %7175
  %7463 = fmul fast float %7461, %7176
  %7464 = fmul fast float %7461, %7177
  %7465 = fsub fast float %7462, %5469
  %7466 = fsub fast float %7463, %5470
  %7467 = fsub fast float %7464, %5471
  %7468 = call float @dx.op.dot3.f32(i32 55, float %7465, float %7466, float %7467, float %7465, float %7466, float %7467)  ; Dot3(ax,ay,az,bx,by,bz)
  %7469 = call float @dx.op.unary.f32(i32 25, float %7468)  ; Rsqrt(value)
  %7470 = fmul fast float %7465, %7469
  %7471 = fmul fast float %7466, %7469
  %7472 = fmul fast float %7467, %7469
  %7473 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %7470, float %7471, float %7472)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = fmul fast float %7473, %7473
  %7475 = call float @dx.op.unary.f32(i32 6, float %7450)  ; FAbs(value)
  %7476 = fsub fast float 1.000000e+00, %5432
  %7477 = call float @dx.op.binary.f32(i32 35, float %7476, float 0x3F847AE140000000)  ; FMax(a,b)
  %7478 = fmul fast float %7477, %7477
  %7479 = fmul fast float %7478, %7478
  %7480 = fsub fast float 1.000000e+00, %7479
  %7481 = fmul fast float %5477, %5477
  %7482 = fmul fast float %7481, %7480
  %7483 = fadd fast float %7482, %7479
  %7484 = bitcast float %7483 to i32
  %7485 = ashr i32 %7484, 1
  %7486 = add nsw i32 %7485, 532487669
  %7487 = bitcast i32 %7486 to float
  %7488 = fadd fast float %7487, %5477
  %7489 = fmul fast float %7479, %7474
  %7490 = fsub fast float 1.000000e+00, %7474
  %7491 = fadd fast float %7490, %7489
  %7492 = fmul fast float %7475, %7475
  %7493 = fmul fast float %7492, %7480
  %7494 = fadd fast float %7493, %7479
  %7495 = bitcast float %7494 to i32
  %7496 = ashr i32 %7495, 1
  %7497 = add nsw i32 %7496, 532487669
  %7498 = bitcast i32 %7497 to float
  %7499 = fadd fast float %7498, %7475
  %7500 = fmul fast float %7491, %7491
  %7501 = fmul fast float %7500, %7488
  %7502 = fmul fast float %7501, %7499
  %7503 = fdiv fast float 1.000000e+00, %7502
  %7504 = bitcast float %7479 to i32
  %7505 = sitofp i32 %7504 to float
  %7506 = fmul fast float %7505, 0x3FE7F73180000000
  %7507 = fadd fast float %7506, 0x41AFE27C40000000
  %7508 = fptosi float %7507 to i32
  %7509 = bitcast i32 %7508 to float
  %7510 = fmul fast float %7144, 0x3FD80E9D60000000
  %7511 = fmul fast float %7510, %7461
  %7512 = fadd fast float %7509, %7511
  %7513 = bitcast float %7512 to i32
  %7514 = sub nsw i32 2129859010, %7513
  %7515 = bitcast i32 %7514 to float
  %7516 = fmul fast float %7479, %7503
  %7517 = fmul fast float %7516, %7509
  %7518 = fmul fast float %7517, %7515
  %7519 = call float @dx.op.unary.f32(i32 6, float %7451)  ; FAbs(value)
  %7520 = fsub fast float 1.000000e+00, %7519
  %7521 = bitcast float %7520 to i32
  %7522 = sitofp i32 %7521 to float
  %7523 = fmul fast float %7522, 5.000000e+00
  %7524 = fadd fast float %7523, 0xC1EFBF8940000000
  %7525 = fptosi float %7524 to i32
  %7526 = bitcast i32 %7525 to float
  %7527 = fsub fast float 1.000000e+00, %5423
  %7528 = fsub fast float 1.000000e+00, %5424
  %7529 = fsub fast float 1.000000e+00, %5475
  %7530 = fmul fast float %7526, %7527
  %7531 = fmul fast float %7526, %7528
  %7532 = fmul fast float %7526, %7529
  %7533 = fadd fast float %7530, %5423
  %7534 = fadd fast float %7531, %5424
  %7535 = fadd fast float %7532, %5475
  br i1 %5792, label %7536, label %7559

; <label>:7536                                    ; preds = %7422
  %7537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4241, float %7519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7538 = extractvalue %dx.types.ResRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.ResRet.f32 %7537, 1
  %7540 = extractvalue %dx.types.ResRet.f32 %7537, 2
  %7541 = fadd fast float %7538, -5.000000e-01
  %7542 = fadd fast float %7539, -5.000000e-01
  %7543 = fadd fast float %7540, -5.000000e-01
  %7544 = fmul fast float %5423, 4.000000e+00
  %7545 = fmul fast float %7544, %7527
  %7546 = fmul fast float %7545, %7541
  %7547 = fmul fast float %5424, 4.000000e+00
  %7548 = fmul fast float %7547, %7528
  %7549 = fmul fast float %7548, %7542
  %7550 = fmul fast float %5475, 4.000000e+00
  %7551 = fmul fast float %7550, %7529
  %7552 = fmul fast float %7551, %7543
  %7553 = fadd fast float %7546, %7533
  %7554 = fadd fast float %7549, %7534
  %7555 = fadd fast float %7552, %7535
  %7556 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7557 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7558 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  br label %7559

; <label>:7559                                    ; preds = %7536, %7422
  %7560 = phi float [ %7556, %7536 ], [ %7533, %7422 ]
  %7561 = phi float [ %7557, %7536 ], [ %7534, %7422 ]
  %7562 = phi float [ %7558, %7536 ], [ %7535, %7422 ]
  %7563 = fmul fast float %7450, 9.843750e-01
  %7564 = fadd fast float %7563, 7.812500e-03
  %7565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7564, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7566 = extractvalue %dx.types.ResRet.f32 %7565, 2
  %7567 = extractvalue %dx.types.ResRet.f32 %7565, 3
  %7568 = fmul fast float %7566, %5423
  %7569 = fmul fast float %7566, %5424
  %7570 = fmul fast float %7566, %5475
  %7571 = fadd fast float %7568, %7567
  %7572 = fadd fast float %7569, %7567
  %7573 = fadd fast float %7570, %7567
  br i1 %5792, label %7574, label %7597

; <label>:7574                                    ; preds = %7559
  %7575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4241, float %7450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7576 = extractvalue %dx.types.ResRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.ResRet.f32 %7575, 1
  %7578 = extractvalue %dx.types.ResRet.f32 %7575, 2
  %7579 = fadd fast float %7576, -5.000000e-01
  %7580 = fadd fast float %7577, -5.000000e-01
  %7581 = fadd fast float %7578, -5.000000e-01
  %7582 = fmul fast float %5423, 4.000000e+00
  %7583 = fmul fast float %7582, %7527
  %7584 = fmul fast float %7583, %7579
  %7585 = fmul fast float %5424, 4.000000e+00
  %7586 = fmul fast float %7585, %7528
  %7587 = fmul fast float %7586, %7580
  %7588 = fmul fast float %5475, 4.000000e+00
  %7589 = fmul fast float %7588, %7529
  %7590 = fmul fast float %7589, %7581
  %7591 = fadd fast float %7584, %7571
  %7592 = fadd fast float %7587, %7572
  %7593 = fadd fast float %7590, %7573
  %7594 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7595 = call float @dx.op.unary.f32(i32 7, float %7592)  ; Saturate(value)
  %7596 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  br label %7597

; <label>:7597                                    ; preds = %7574, %7559
  %7598 = phi float [ %7594, %7574 ], [ %7571, %7559 ]
  %7599 = phi float [ %7595, %7574 ], [ %7572, %7559 ]
  %7600 = phi float [ %7596, %7574 ], [ %7573, %7559 ]
  %7601 = call float @dx.op.binary.f32(i32 35, float %7599, float %7600)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7598, float %7601)  ; FMax(a,b)
  %7603 = fsub fast float 1.000000e+00, %7602
  %7604 = fmul fast float %7560, %7518
  %7605 = fmul fast float %7561, %7518
  %7606 = fmul fast float %7562, %7518
  %7607 = fsub fast float 1.000000e+00, %7451
  %7608 = bitcast float %7607 to i32
  %7609 = sitofp i32 %7608 to float
  %7610 = fmul fast float %7609, 5.000000e+00
  %7611 = fadd fast float %7610, 0xC1EFBF8940000000
  %7612 = fptosi float %7611 to i32
  %7613 = bitcast i32 %7612 to float
  %7614 = fmul fast float %7613, %4242
  %7615 = fmul fast float %7603, %7614
  %7616 = fmul fast float %7615, %5892
  %7617 = fmul fast float %7615, %5893
  %7618 = fmul fast float %7615, %5894
  %7619 = fadd fast float %7616, %7604
  %7620 = fadd fast float %7617, %7605
  %7621 = fadd fast float %7618, %7606
  %7622 = fmul fast float %7439, %4238
  %7623 = fmul fast float %7622, %7457
  %7624 = fmul fast float %7623, %7603
  %7625 = fmul fast float %7440, %4238
  %7626 = fmul fast float %7625, %7457
  %7627 = fmul fast float %7626, %7603
  %7628 = fmul fast float %7441, %4238
  %7629 = fmul fast float %7628, %7457
  %7630 = fmul fast float %7629, %7603
  %7631 = fadd fast float %7624, %7118
  %7632 = fadd fast float %7627, %7119
  %7633 = fadd fast float %7630, %7120
  %7634 = fmul fast float %7623, %7619
  %7635 = fmul fast float %7626, %7620
  %7636 = fmul fast float %7629, %7621
  %7637 = fadd fast float %7634, %7115
  %7638 = fadd fast float %7635, %7116
  %7639 = fadd fast float %7636, %7117
  br label %7247

; <label>:7640                                    ; preds = %7247
  br label %7641

; <label>:7641                                    ; preds = %7640, %7081
  %7642 = phi float [ %7083, %7081 ], [ %7248, %7640 ]
  %7643 = phi float [ %7084, %7081 ], [ %7249, %7640 ]
  %7644 = phi float [ %7085, %7081 ], [ %7250, %7640 ]
  %7645 = phi float [ %7086, %7081 ], [ %7251, %7640 ]
  %7646 = phi float [ %7087, %7081 ], [ %7252, %7640 ]
  %7647 = phi float [ %7088, %7081 ], [ %7253, %7640 ]
  %7648 = add i32 %7082, 1
  %7649 = icmp ugt i32 %7648, %7078
  br i1 %7649, label %7650, label %7081

; <label>:7650                                    ; preds = %7641
  br label %7651

; <label>:7651                                    ; preds = %7650, %7031, %7021
  %7652 = phi float [ %7022, %7021 ], [ %7022, %7031 ], [ %7642, %7650 ]
  %7653 = phi float [ %7023, %7021 ], [ %7023, %7031 ], [ %7643, %7650 ]
  %7654 = phi float [ %7024, %7021 ], [ %7024, %7031 ], [ %7644, %7650 ]
  %7655 = phi float [ %7025, %7021 ], [ %7025, %7031 ], [ %7645, %7650 ]
  %7656 = phi float [ %7026, %7021 ], [ %7026, %7031 ], [ %7646, %7650 ]
  %7657 = phi float [ %7027, %7021 ], [ %7027, %7031 ], [ %7647, %7650 ]
  %7658 = fmul fast float %4238, %4238
  %7659 = fsub fast float 1.000000e+00, %7658
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7659, float %7659, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = fsub fast float 1.000000e+00, %7660
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = fmul fast float %7663, %5908
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7667 = fsub fast float 1.000000e+00, %4246
  %7668 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7669 = fadd fast float %7657, %4244
  %7670 = fmul fast float %7669, %4246
  %7671 = fmul fast float %7668, %7666
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 3
  %7674 = fmul fast float %7655, %5426
  %7675 = fmul fast float %7656, %5427
  %7676 = fmul fast float %7657, %5428
  %7677 = fcmp fast ogt float %107, %234
  %7678 = and i1 %7677, %4649
  %7679 = or i1 %4655, %7678
  %7680 = icmp eq i32 %4648, 2
  %7681 = fcmp fast ole float %107, %234
  %7682 = and i1 %7681, %7680
  %7683 = or i1 %7682, %7679
  br i1 %7678, label %7684, label %7941

; <label>:7684                                    ; preds = %7651
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7688 = fmul fast float %7686, %116
  %7689 = fmul fast float %7687, %117
  %7690 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7691 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  %7692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7690, float %7691, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7693 = extractvalue %dx.types.ResRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.ResRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.ResRet.f32 %7692, 2
  %7696 = extractvalue %dx.types.ResRet.f32 %7692, 3
  %7697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7690, float %7691, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = extractvalue %dx.types.ResRet.f32 %7697, 3
  %7702 = call float @dx.op.binary.f32(i32 35, float %7694, float %7695)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float %7693, float %7702)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 35, float %7703, float %7696)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7699, float %7700)  ; FMin(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7698, float %7705)  ; FMin(a,b)
  %7707 = call float @dx.op.binary.f32(i32 36, float %7706, float %7701)  ; FMin(a,b)
  %7708 = fmul fast float %7704, 2.550000e+02
  %7709 = fadd fast float %7708, 0x3F70101020000000
  %7710 = fptoui float %7709 to i32
  %7711 = fmul fast float %7707, 2.550000e+02
  %7712 = fadd fast float %7711, 0x3F70101020000000
  %7713 = fptoui float %7712 to i32
  %7714 = icmp ult i32 %7710, %7713
  br i1 %7714, label %7715, label %7883

; <label>:7715                                    ; preds = %7684
  %7716 = fcmp fast ogt float %106, 9.843750e-01
  %7717 = fadd fast float %107, -4.000000e+00
  %7718 = select i1 %7716, float -4.000000e+00, float %7717
  %7719 = call float @dx.op.binary.f32(i32 35, float %7718, float 0.000000e+00)  ; FMax(a,b)
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7722 = fadd fast float %7721, %7719
  %7723 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7724 = fmul fast float %7722, %7723
  %7725 = call float @dx.op.unary.f32(i32 23, float %7724)  ; Log(value)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7720, 3
  %7727 = fmul fast float %7726, %7725
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7730 = fmul fast float %7727, %7729
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7732 = uitofp i32 %7710 to float
  %7733 = uitofp i32 %7713 to float
  %7734 = fadd fast float %7732, 5.000000e-01
  %7735 = fadd fast float %7733, 5.000000e-01
  %7736 = fmul fast float %7729, %7734
  %7737 = fmul fast float %7729, %7735
  %7738 = fadd fast float %7736, 0x3F0FFB4800000000
  %7739 = fadd fast float %7737, 0xBF0FFB4800000000
  %7740 = call float @dx.op.binary.f32(i32 35, float %7731, float %7738)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7740, float %7739)  ; FMin(a,b)
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7746 = fmul fast float %7743, %7741
  %7747 = fadd fast float %7745, %7746
  %7748 = fadd fast float %7745, %7744
  %7749 = fsub fast float %7743, %7744
  %7750 = fadd fast float %7749, %7745
  %7751 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7751, float %7750)  ; FMin(a,b)
  %7753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7690, float %7691, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.ResRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.ResRet.f32 %7753, 2
  %7757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.i32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.i32 %7757, 1
  %7760 = uitofp i32 %7758 to float
  %7761 = uitofp i32 %7759 to float
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = fmul fast float %7760, %7690
  %7766 = fmul fast float %7761, %7691
  %7767 = fadd fast float %7765, -5.000000e-01
  %7768 = fadd fast float %7766, -5.000000e-01
  %7769 = call float @dx.op.unary.f32(i32 22, float %7767)  ; Frc(value)
  %7770 = call float @dx.op.unary.f32(i32 22, float %7768)  ; Frc(value)
  %7771 = fmul fast float %7769, %7769
  %7772 = fmul fast float %7771, %7769
  %7773 = fsub fast float 3.000000e+00, %7769
  %7774 = fmul fast float %7771, %7773
  %7775 = fmul fast float %7769, 3.000000e+00
  %7776 = fmul fast float %7772, 3.000000e+00
  %7777 = fmul fast float %7771, 6.000000e+00
  %7778 = fsub fast float %7776, %7777
  %7779 = fadd fast float %7778, 4.000000e+00
  %7780 = fmul fast float %7779, 0x3FC5555560000000
  %7781 = fmul fast float %7772, -3.000000e+00
  %7782 = fadd fast float %7771, %7769
  %7783 = fmul fast float %7782, 3.000000e+00
  %7784 = fadd fast float %7781, 1.000000e+00
  %7785 = fadd fast float %7784, %7783
  %7786 = fmul fast float %7772, 0x3FC5555560000000
  %7787 = fmul fast float %7770, %7770
  %7788 = fmul fast float %7787, %7770
  %7789 = fsub fast float 3.000000e+00, %7770
  %7790 = fmul fast float %7787, %7789
  %7791 = fmul fast float %7770, 3.000000e+00
  %7792 = fmul fast float %7788, 3.000000e+00
  %7793 = fmul fast float %7787, 6.000000e+00
  %7794 = fsub fast float %7792, %7793
  %7795 = fadd fast float %7794, 4.000000e+00
  %7796 = fmul fast float %7795, 0x3FC5555560000000
  %7797 = fmul fast float %7788, -3.000000e+00
  %7798 = fadd fast float %7787, %7770
  %7799 = fmul fast float %7798, 3.000000e+00
  %7800 = fadd fast float %7797, 1.000000e+00
  %7801 = fadd fast float %7800, %7799
  %7802 = fmul fast float %7788, 0x3FC5555560000000
  %7803 = fadd fast float %7769, 1.000000e+00
  %7804 = fsub fast float 1.000000e+00, %7775
  %7805 = fadd fast float %7804, %7774
  %7806 = fadd fast float %7805, %7779
  %7807 = fmul fast float %7806, 0x3FC5555560000000
  %7808 = fdiv fast float %7780, %7807
  %7809 = fsub fast float %7803, %7808
  %7810 = fsub fast float 1.000000e+00, %7769
  %7811 = fadd fast float %7785, %7772
  %7812 = fmul fast float %7811, 0x3FC5555560000000
  %7813 = fdiv fast float %7786, %7812
  %7814 = fadd fast float %7810, %7813
  %7815 = fadd fast float %7770, 1.000000e+00
  %7816 = fsub fast float 1.000000e+00, %7791
  %7817 = fadd fast float %7816, %7790
  %7818 = fadd fast float %7817, %7795
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fdiv fast float %7796, %7819
  %7821 = fsub fast float %7815, %7820
  %7822 = fsub fast float 1.000000e+00, %7770
  %7823 = fadd fast float %7801, %7788
  %7824 = fmul fast float %7823, 0x3FC5555560000000
  %7825 = fdiv fast float %7802, %7824
  %7826 = fadd fast float %7825, %7822
  %7827 = fmul fast float %7809, %7763
  %7828 = fsub fast float %7690, %7827
  %7829 = fmul fast float %7814, %7763
  %7830 = fadd fast float %7829, %7690
  %7831 = fmul fast float %7826, %7764
  %7832 = fadd fast float %7831, %7691
  %7833 = fmul fast float %7821, %7764
  %7834 = fsub fast float %7691, %7833
  %7835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7828, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7830, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.ResRet.f32 %7839, 2
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7828, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7830, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = fsub fast float %7844, %7836
  %7852 = fsub fast float %7845, %7837
  %7853 = fsub fast float %7846, %7838
  %7854 = fmul fast float %7851, %7824
  %7855 = fmul fast float %7852, %7824
  %7856 = fmul fast float %7853, %7824
  %7857 = fadd fast float %7854, %7836
  %7858 = fadd fast float %7855, %7837
  %7859 = fadd fast float %7856, %7838
  %7860 = fsub fast float %7848, %7840
  %7861 = fsub fast float %7849, %7841
  %7862 = fsub fast float %7850, %7842
  %7863 = fmul fast float %7860, %7824
  %7864 = fmul fast float %7861, %7824
  %7865 = fmul fast float %7862, %7824
  %7866 = fsub fast float %7840, %7857
  %7867 = fadd fast float %7866, %7863
  %7868 = fsub fast float %7841, %7858
  %7869 = fadd fast float %7868, %7864
  %7870 = fsub fast float %7842, %7859
  %7871 = fadd fast float %7870, %7865
  %7872 = fmul fast float %7867, %7812
  %7873 = fmul fast float %7869, %7812
  %7874 = fmul fast float %7871, %7812
  %7875 = fadd fast float %7872, %7857
  %7876 = fadd fast float %7873, %7858
  %7877 = fadd fast float %7874, %7859
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = fmul fast float %7875, %7879
  %7881 = fmul fast float %7876, %7879
  %7882 = fmul fast float %7877, %7879
  br label %7883

; <label>:7883                                    ; preds = %7715, %7684
  %7884 = phi float [ %7754, %7715 ], [ 1.000000e+00, %7684 ]
  %7885 = phi float [ %7755, %7715 ], [ 1.000000e+00, %7684 ]
  %7886 = phi float [ %7756, %7715 ], [ 1.000000e+00, %7684 ]
  %7887 = phi float [ %7880, %7715 ], [ 0.000000e+00, %7684 ]
  %7888 = phi float [ %7881, %7715 ], [ 0.000000e+00, %7684 ]
  %7889 = phi float [ %7882, %7715 ], [ 0.000000e+00, %7684 ]
  %7890 = fmul fast float %7887, %7661
  %7891 = fmul fast float %7888, %7661
  %7892 = fmul fast float %7889, %7661
  %7893 = call float @dx.op.dot3.f32(i32 55, float %7884, float %7885, float %7886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7894 = call float @dx.op.dot3.f32(i32 55, float %7890, float %7891, float %7892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = select i1 %271, float %7893, float %7884
  %7896 = select i1 %271, float %7893, float %7885
  %7897 = select i1 %271, float 1.000000e+00, float %7886
  %7898 = select i1 %271, float %7894, float %7890
  %7899 = select i1 %271, float 0.000000e+00, float %7891
  %7900 = select i1 %271, float 0.000000e+00, float %7892
  %7901 = fmul fast float %7895, %7674
  %7902 = fmul fast float %7896, %7675
  %7903 = fmul fast float %7897, %7676
  %7904 = fadd fast float %7901, %7898
  %7905 = fadd fast float %7902, %7899
  %7906 = fadd fast float %7900, %7903
  %7907 = fmul fast float %7895, %7652
  %7908 = fmul fast float %7896, %7653
  %7909 = fmul fast float %7897, %7654
  %7910 = fmul fast float %148, %7686
  %7911 = fmul fast float %150, %7687
  %7912 = fsub fast float 1.000000e+00, %7910
  %7913 = fsub fast float 1.000000e+00, %7911
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7918 = fmul fast float %7912, %7915
  %7919 = fmul fast float %7912, %7916
  %7920 = fmul fast float %7912, %7917
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7924 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7925 = fmul fast float %7913, %7922
  %7926 = fmul fast float %7913, %7923
  %7927 = fmul fast float %7913, %7924
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7932 = fadd fast float %7925, %7929
  %7933 = fadd fast float %7932, %7918
  %7934 = fadd fast float %7926, %7930
  %7935 = fadd fast float %7934, %7919
  %7936 = fadd fast float %7927, %7931
  %7937 = fadd fast float %7936, %7920
  %7938 = fmul fast float %7933, %234
  %7939 = fmul fast float %7935, %234
  %7940 = fmul fast float %7937, %234
  br label %7941

; <label>:7941                                    ; preds = %7883, %7651
  %7942 = phi float [ %7938, %7883 ], [ %199, %7651 ]
  %7943 = phi float [ %7939, %7883 ], [ %200, %7651 ]
  %7944 = phi float [ %7940, %7883 ], [ %201, %7651 ]
  %7945 = phi float [ %234, %7883 ], [ %107, %7651 ]
  %7946 = phi float [ %7904, %7883 ], [ %7674, %7651 ]
  %7947 = phi float [ %7905, %7883 ], [ %7675, %7651 ]
  %7948 = phi float [ %7906, %7883 ], [ %7676, %7651 ]
  %7949 = phi float [ %7907, %7883 ], [ %7652, %7651 ]
  %7950 = phi float [ %7908, %7883 ], [ %7653, %7651 ]
  %7951 = phi float [ %7909, %7883 ], [ %7654, %7651 ]
  %7952 = phi float [ %7884, %7883 ], [ 1.000000e+00, %7651 ]
  br i1 %7683, label %9107, label %7953

; <label>:7953                                    ; preds = %7941
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7959, 3
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7968 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.CBufRet.f32 %7969, 2
  %7973 = extractvalue %dx.types.CBufRet.f32 %7969, 3
  %7974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7975 = extractvalue %dx.types.CBufRet.f32 %7974, 3
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7980 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7981 = fcmp fast olt float %7980, -5.000000e-01
  %7982 = call float @dx.op.dot3.f32(i32 55, float %7942, float %7943, float %7944, float %7942, float %7943, float %7944)  ; Dot3(ax,ay,az,bx,by,bz)
  %7983 = call float @dx.op.unary.f32(i32 25, float %7982)  ; Rsqrt(value)
  %7984 = fmul fast float %7983, %7982
  %7985 = fmul fast float %7983, %7942
  %7986 = fmul fast float %7983, %7943
  %7987 = fmul fast float %7983, %7944
  %7988 = fadd fast float %7984, %7958
  %7989 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7987, float %7955, float %7956, float %7957)  ; Dot3(ax,ay,az,bx,by,bz)
  %7990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.i32 %7990, 1
  %7992 = and i32 %7991, 1
  %7993 = icmp ne i32 %7992, 0
  %7994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7994, 2
  %7996 = fcmp fast ogt float %7995, 0.000000e+00
  %7997 = and i1 %7993, %7996
  br i1 %7997, label %7998, label %8404, !dx.controlflow.hints !128

; <label>:7998                                    ; preds = %7953
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 3
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 2
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8005 = fsub fast float %8002, %8004
  %8006 = and i32 %7991, 2
  %8007 = extractvalue %dx.types.CBufRet.i32 %7990, 0
  %8008 = call i32 @dx.op.binary.i32(i32 40, i32 %8007, i32 3)  ; UMin(a,b)
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.CBufRet.f32 %8003, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8003, 1
  %8014 = fsub fast float %8010, %8012
  %8015 = fsub fast float %8011, %8013
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 0
  %8018 = fcmp fast ogt float %8017, 0.000000e+00
  %8019 = fsub fast float -0.000000e+00, %8014
  %8020 = fsub fast float -0.000000e+00, %8015
  %8021 = call float @dx.op.dot2.f32(i32 54, float %7985, float %7986, float %7985, float %7986)  ; Dot2(ax,ay,bx,by)
  %8022 = call float @dx.op.dot2.f32(i32 54, float %7985, float %7986, float %8019, float %8020)  ; Dot2(ax,ay,bx,by)
  %8023 = fmul fast float %8022, 2.000000e+00
  %8024 = call float @dx.op.dot2.f32(i32 54, float %8019, float %8020, float %8019, float %8020)  ; Dot2(ax,ay,bx,by)
  %8025 = fmul fast float %8017, %8017
  %8026 = fsub fast float %8024, %8025
  %8027 = fmul fast float %8023, %8023
  %8028 = fmul fast float %8021, 4.000000e+00
  %8029 = fmul fast float %8028, %8026
  %8030 = fsub fast float %8027, %8029
  %8031 = fcmp fast ogt float %8030, 0.000000e+00
  br i1 %8031, label %8032, label %8047

; <label>:8032                                    ; preds = %7998
  %8033 = fcmp fast ogt float %8023, 0.000000e+00
  %8034 = call float @dx.op.unary.f32(i32 24, float %8030)  ; Sqrt(value)
  %8035 = fsub fast float -0.000000e+00, %8034
  %8036 = select i1 %8033, float %8034, float %8035
  %8037 = fadd fast float %8036, %8023
  %8038 = fmul float %8037, -5.000000e-01
  %8039 = fdiv fast float %8038, %8021
  %8040 = call float @dx.op.binary.f32(i32 35, float %8039, float 0.000000e+00)  ; FMax(a,b)
  %8041 = call float @dx.op.binary.f32(i32 36, float %7984, float %8040)  ; FMin(a,b)
  %8042 = fdiv fast float %8026, %8038
  %8043 = call float @dx.op.binary.f32(i32 35, float %8042, float 0.000000e+00)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 36, float %7984, float %8043)  ; FMin(a,b)
  %8045 = call float @dx.op.binary.f32(i32 36, float %8041, float %8044)  ; FMin(a,b)
  %8046 = call float @dx.op.binary.f32(i32 35, float %8041, float %8044)  ; FMax(a,b)
  br label %8047

; <label>:8047                                    ; preds = %8032, %7998
  %8048 = phi float [ %8046, %8032 ], [ -1.000000e+00, %7998 ]
  %8049 = phi float [ %8045, %8032 ], [ -1.000000e+00, %7998 ]
  %8050 = phi i1 [ true, %8032 ], [ false, %7998 ]
  %8051 = and i1 %8018, %8050
  br i1 %8051, label %8052, label %8054

; <label>:8052                                    ; preds = %8047
  %8053 = fcmp fast oeq float %8049, %8048
  br i1 %8053, label %8357, label %8055

; <label>:8054                                    ; preds = %8047
  br i1 %8018, label %8357, label %8055

; <label>:8055                                    ; preds = %8054, %8052
  %8056 = phi float [ %7984, %8054 ], [ %8048, %8052 ]
  %8057 = phi float [ 0.000000e+00, %8054 ], [ %8049, %8052 ]
  %8058 = icmp ne i32 %8006, 0
  %8059 = fmul fast float %8056, %7987
  %8060 = fadd fast float %8059, %8000
  %8061 = fmul fast float %8060, %8056
  %8062 = select i1 %8058, float 0.000000e+00, float %8061
  %8063 = fcmp fast oeq float %7987, 0.000000e+00
  %8064 = fdiv fast float %8005, %7987
  %8065 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8064)  ; FMax(a,b)
  %8066 = select i1 %8063, float %8056, float %8065
  %8067 = call float @dx.op.binary.f32(i32 36, float %8056, float %8066)  ; FMin(a,b)
  %8068 = fcmp fast ogt float %7987, 0.000000e+00
  %8069 = fcmp fast olt float %8005, 0.000000e+00
  br i1 %8068, label %8070, label %8127

; <label>:8070                                    ; preds = %8055
  %8071 = icmp eq i32 %8006, 0
  br i1 %8069, label %8072, label %8116

; <label>:8072                                    ; preds = %8070
  %8073 = select i1 %8071, float %8056, float 0.000000e+00
  %8074 = fsub fast float -0.000000e+00, %8073
  %8075 = call float @dx.op.unary.f32(i32 6, float %8074)  ; FAbs(value)
  %8076 = fmul fast float %8073, %7987
  %8077 = fadd fast float %8076, %8000
  %8078 = fmul fast float %8075, %8077
  %8079 = fsub fast float %8062, %8078
  %8080 = fsub fast float %8056, %8075
  %8081 = select i1 %8071, float %8080, float 0.000000e+00
  %8082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8083 = extractvalue %dx.types.CBufRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.CBufRet.f32 %8082, 1
  %8085 = extractvalue %dx.types.CBufRet.f32 %8082, 2
  %8086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.f32 %8086, 0
  %8088 = extractvalue %dx.types.CBufRet.f32 %8086, 1
  %8089 = extractvalue %dx.types.CBufRet.f32 %8086, 2
  %8090 = extractvalue %dx.types.CBufRet.f32 %8086, 3
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 3
  %8093 = call float @dx.op.binary.f32(i32 36, float %8079, float %8092)  ; FMin(a,b)
  %8094 = fmul fast float %8090, %8081
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = fsub fast float %8087, %8083
  %8097 = fsub fast float %8088, %8084
  %8098 = fsub fast float %8089, %8085
  %8099 = fmul fast float %8095, %8096
  %8100 = fmul fast float %8095, %8097
  %8101 = fmul fast float %8095, %8098
  %8102 = fadd fast float %8099, %8083
  %8103 = fadd fast float %8100, %8084
  %8104 = fadd fast float %8101, %8085
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = fadd fast float %8107, %8106
  %8109 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8111 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8112 = fadd fast float %8111, %8110
  %8113 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8114 = fmul fast float %8109, %8093
  %8115 = fmul fast float %8114, %8113
  br label %8357

; <label>:8116                                    ; preds = %8070
  br i1 %8071, label %8117, label %8138

; <label>:8117                                    ; preds = %8116
  %8118 = call float @dx.op.binary.f32(i32 36, float %8067, float %8057)  ; FMin(a,b)
  %8119 = fsub fast float %8067, %8118
  %8120 = fsub fast float %8119, %8056
  %8121 = call float @dx.op.unary.f32(i32 6, float %8120)  ; FAbs(value)
  %8122 = fadd fast float %8119, %8056
  %8123 = fmul fast float %8122, %7987
  %8124 = fadd fast float %8123, %8000
  %8125 = fmul fast float %8124, %8121
  %8126 = fsub fast float %8062, %8125
  br label %8138

; <label>:8127                                    ; preds = %8055
  br i1 %8069, label %8128, label %8138

; <label>:8128                                    ; preds = %8127
  %8129 = call float @dx.op.binary.f32(i32 35, float %8057, float %8067)  ; FMax(a,b)
  %8130 = icmp eq i32 %8006, 0
  %8131 = select i1 %8130, float %8067, float 0.000000e+00
  %8132 = fsub fast float -0.000000e+00, %8131
  %8133 = call float @dx.op.unary.f32(i32 6, float %8132)  ; FAbs(value)
  %8134 = fmul fast float %8131, %7987
  %8135 = fadd fast float %8134, %8000
  %8136 = fmul fast float %8133, %8135
  %8137 = fsub fast float %8062, %8136
  br label %8138

; <label>:8138                                    ; preds = %8128, %8127, %8117, %8116
  %8139 = phi float [ %8057, %8116 ], [ %8057, %8117 ], [ %8129, %8128 ], [ %8057, %8127 ]
  %8140 = phi float [ 0.000000e+00, %8116 ], [ %8121, %8117 ], [ %8133, %8128 ], [ 0.000000e+00, %8127 ]
  %8141 = phi float [ %8062, %8116 ], [ %8126, %8117 ], [ %8137, %8128 ], [ %8062, %8127 ]
  %8142 = phi float [ %8067, %8116 ], [ %8067, %8117 ], [ %8056, %8128 ], [ %8056, %8127 ]
  %8143 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8143, align 4, !tbaa !129, !noalias !131
  %8144 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8144, align 4, !tbaa !129, !noalias !131
  %8145 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8145, align 4, !tbaa !129, !noalias !131
  %8146 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8146, align 4, !tbaa !129, !noalias !131
  %8147 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8147, align 4, !tbaa !129, !noalias !131
  %8148 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8148, align 4, !tbaa !129, !noalias !131
  %8149 = icmp sgt i32 %8008, 0
  br i1 %8149, label %8150, label %8211

; <label>:8150                                    ; preds = %8138
  br label %8151

; <label>:8151                                    ; preds = %8200, %8150
  %8152 = phi i32 [ %8201, %8200 ], [ 0, %8150 ]
  %8153 = phi i32 [ %8202, %8200 ], [ 0, %8150 ]
  %8154 = add nuw i32 %8153, 171
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8154)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.CBufRet.f32 %8158, 1
  %8161 = fsub fast float %8156, %8159
  %8162 = fsub fast float %8157, %8160
  %8163 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8164 = fsub fast float -0.000000e+00, %8161
  %8165 = fsub fast float -0.000000e+00, %8162
  %8166 = call float @dx.op.dot2.f32(i32 54, float %7985, float %7986, float %8164, float %8165)  ; Dot2(ax,ay,bx,by)
  %8167 = fmul fast float %8166, 2.000000e+00
  %8168 = call float @dx.op.dot2.f32(i32 54, float %8164, float %8165, float %8164, float %8165)  ; Dot2(ax,ay,bx,by)
  %8169 = fmul fast float %8163, %8163
  %8170 = fsub fast float %8168, %8169
  %8171 = fmul fast float %8167, %8167
  %8172 = fmul fast float %8028, %8170
  %8173 = fsub fast float %8171, %8172
  %8174 = fcmp fast ogt float %8173, 0.000000e+00
  br i1 %8174, label %8175, label %8190

; <label>:8175                                    ; preds = %8151
  %8176 = fcmp fast ogt float %8167, 0.000000e+00
  %8177 = call float @dx.op.unary.f32(i32 24, float %8173)  ; Sqrt(value)
  %8178 = fsub fast float -0.000000e+00, %8177
  %8179 = select i1 %8176, float %8177, float %8178
  %8180 = fadd fast float %8179, %8167
  %8181 = fmul float %8180, -5.000000e-01
  %8182 = fdiv fast float %8181, %8021
  %8183 = call float @dx.op.binary.f32(i32 35, float %8182, float 0.000000e+00)  ; FMax(a,b)
  %8184 = call float @dx.op.binary.f32(i32 36, float %8056, float %8183)  ; FMin(a,b)
  %8185 = fdiv fast float %8170, %8181
  %8186 = call float @dx.op.binary.f32(i32 35, float %8185, float 0.000000e+00)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 36, float %8056, float %8186)  ; FMin(a,b)
  %8188 = call float @dx.op.binary.f32(i32 36, float %8184, float %8187)  ; FMin(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8184, float %8187)  ; FMax(a,b)
  br label %8190

; <label>:8190                                    ; preds = %8175, %8151
  %8191 = phi float [ %8189, %8175 ], [ -1.000000e+00, %8151 ]
  %8192 = phi float [ %8188, %8175 ], [ -1.000000e+00, %8151 ]
  %8193 = phi i1 [ true, %8175 ], [ false, %8151 ]
  br i1 %8193, label %8194, label %8200

; <label>:8194                                    ; preds = %8190
  %8195 = call float @dx.op.binary.f32(i32 35, float %8139, float %8192)  ; FMax(a,b)
  %8196 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8153
  store float %8195, float* %8196, align 4, !tbaa !129, !noalias !131
  %8197 = call float @dx.op.binary.f32(i32 35, float %8139, float %8191)  ; FMax(a,b)
  %8198 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8153
  store float %8197, float* %8198, align 4, !tbaa !129, !noalias !131
  %8199 = add nsw i32 %8152, 1
  br label %8200

; <label>:8200                                    ; preds = %8194, %8190
  %8201 = phi i32 [ %8199, %8194 ], [ %8152, %8190 ]
  %8202 = add nuw nsw i32 %8153, 1
  %8203 = icmp eq i32 %8202, %8008
  br i1 %8203, label %8204, label %8151

; <label>:8204                                    ; preds = %8200
  %8205 = load float, float* %8145, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8206 = load float, float* %8144, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8207 = load float, float* %8143, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8208 = load float, float* %8148, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8209 = load float, float* %8147, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8210 = load float, float* %8146, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8211

; <label>:8211                                    ; preds = %8204, %8138
  %8212 = phi float [ -1.000000e+00, %8138 ], [ %8210, %8204 ]
  %8213 = phi float [ -1.000000e+00, %8138 ], [ %8209, %8204 ]
  %8214 = phi float [ -1.000000e+00, %8138 ], [ %8208, %8204 ]
  %8215 = phi float [ -1.000000e+00, %8138 ], [ %8207, %8204 ]
  %8216 = phi float [ -1.000000e+00, %8138 ], [ %8206, %8204 ]
  %8217 = phi float [ -1.000000e+00, %8138 ], [ %8205, %8204 ]
  %8218 = phi i32 [ 0, %8138 ], [ %8201, %8204 ]
  %8219 = call float @dx.op.binary.f32(i32 36, float %8216, float %8217)  ; FMin(a,b)
  %8220 = call float @dx.op.binary.f32(i32 36, float %8215, float %8219)  ; FMin(a,b)
  %8221 = call float @dx.op.binary.f32(i32 35, float %8215, float %8216)  ; FMax(a,b)
  %8222 = call float @dx.op.binary.f32(i32 36, float %8221, float %8217)  ; FMin(a,b)
  %8223 = call float @dx.op.binary.f32(i32 36, float %8215, float %8216)  ; FMin(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float %8223, float %8222)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 35, float %8216, float %8217)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8215, float %8225)  ; FMax(a,b)
  store float %8220, float* %8143, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8224, float* %8144, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8226, float* %8145, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8227 = call float @dx.op.binary.f32(i32 36, float %8213, float %8214)  ; FMin(a,b)
  %8228 = call float @dx.op.binary.f32(i32 36, float %8212, float %8227)  ; FMin(a,b)
  %8229 = call float @dx.op.binary.f32(i32 35, float %8212, float %8213)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8229, float %8214)  ; FMin(a,b)
  %8231 = call float @dx.op.binary.f32(i32 36, float %8212, float %8213)  ; FMin(a,b)
  %8232 = call float @dx.op.binary.f32(i32 35, float %8231, float %8230)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 35, float %8213, float %8214)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 35, float %8212, float %8233)  ; FMax(a,b)
  store float %8228, float* %8146, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8232, float* %8147, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8234, float* %8148, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8235 = sub nsw i32 3, %8218
  %8236 = icmp sgt i32 %8235, 2
  br i1 %8236, label %8237, label %8275

; <label>:8237                                    ; preds = %8211
  %8238 = icmp eq i32 %8006, 0
  %8239 = fsub fast float %8056, %8140
  %8240 = select i1 %8238, float %8239, float %8140
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8249 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8252 = call float @dx.op.binary.f32(i32 36, float %8141, float %8251)  ; FMin(a,b)
  %8253 = fmul fast float %8249, %8240
  %8254 = call float @dx.op.unary.f32(i32 7, float %8253)  ; Saturate(value)
  %8255 = fsub fast float %8246, %8242
  %8256 = fsub fast float %8247, %8243
  %8257 = fsub fast float %8248, %8244
  %8258 = fmul fast float %8254, %8255
  %8259 = fmul fast float %8254, %8256
  %8260 = fmul fast float %8254, %8257
  %8261 = fadd fast float %8258, %8242
  %8262 = fadd fast float %8259, %8243
  %8263 = fadd fast float %8260, %8244
  %8264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8265 = extractvalue %dx.types.CBufRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.CBufRet.f32 %8264, 1
  %8267 = fadd fast float %8266, %8265
  %8268 = call float @dx.op.unary.f32(i32 7, float %8267)  ; Saturate(value)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8264, 2
  %8270 = extractvalue %dx.types.CBufRet.f32 %8264, 3
  %8271 = fadd fast float %8270, %8269
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = fmul fast float %8268, %8252
  %8274 = fmul fast float %8273, %8272
  br label %8357

; <label>:8275                                    ; preds = %8211
  %8276 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8235
  %8277 = load float, float* %8276, align 4, !tbaa !129, !noalias !131
  %8278 = fcmp fast olt float %8277, %8142
  %8279 = icmp sgt i32 %8218, 0
  %8280 = and i1 %8279, %8278
  br i1 %8280, label %8281, label %8318

; <label>:8281                                    ; preds = %8275
  br label %8282

; <label>:8282                                    ; preds = %8311, %8281
  %8283 = phi float [ %8312, %8311 ], [ %8140, %8281 ]
  %8284 = phi float [ %8313, %8311 ], [ %8141, %8281 ]
  %8285 = phi float [ %8293, %8311 ], [ %8277, %8281 ]
  %8286 = phi i32 [ %8290, %8311 ], [ %8235, %8281 ]
  %8287 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8286
  %8288 = load float, float* %8287, align 4, !tbaa !129, !noalias !131
  %8289 = icmp slt i32 %8286, 2
  %8290 = add nsw i32 %8286, 1
  %8291 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8290
  %8292 = load float, float* %8291, align 4, !tbaa !129, !noalias !131
  %8293 = select i1 %8289, float %8292, float %8056
  %8294 = call float @dx.op.binary.f32(i32 36, float %8293, float %8288)  ; FMin(a,b)
  %8295 = call float @dx.op.binary.f32(i32 36, float %8142, float %8294)  ; FMin(a,b)
  %8296 = icmp eq i32 %8006, 0
  %8297 = fadd fast float %8295, %8285
  %8298 = fmul fast float %8297, %7987
  %8299 = fadd fast float %8298, %8000
  br i1 %8296, label %8305, label %8300

; <label>:8300                                    ; preds = %8282
  %8301 = fsub fast float %8295, %8285
  %8302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8301)  ; FMax(a,b)
  %8303 = fmul fast float %8302, %8299
  %8304 = fadd fast float %8303, %8284
  br label %8311

; <label>:8305                                    ; preds = %8282
  %8306 = fsub fast float %8285, %8295
  %8307 = call float @dx.op.unary.f32(i32 6, float %8306)  ; FAbs(value)
  %8308 = fadd fast float %8307, %8283
  %8309 = fmul fast float %8307, %8299
  %8310 = fsub fast float %8284, %8309
  br label %8311

; <label>:8311                                    ; preds = %8305, %8300
  %8312 = phi float [ %8302, %8300 ], [ %8308, %8305 ]
  %8313 = phi float [ %8304, %8300 ], [ %8310, %8305 ]
  %8314 = fcmp fast olt float %8293, %8142
  %8315 = icmp slt i32 %8290, 3
  %8316 = and i1 %8315, %8314
  br i1 %8316, label %8282, label %8317

; <label>:8317                                    ; preds = %8311
  br label %8318

; <label>:8318                                    ; preds = %8317, %8275
  %8319 = phi float [ %8140, %8275 ], [ %8312, %8317 ]
  %8320 = phi float [ %8141, %8275 ], [ %8313, %8317 ]
  %8321 = fsub fast float %8056, %8319
  %8322 = select i1 %8058, float %8319, float %8321
  %8323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8324 = extractvalue %dx.types.CBufRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.CBufRet.f32 %8323, 1
  %8326 = extractvalue %dx.types.CBufRet.f32 %8323, 2
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8331 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8334 = call float @dx.op.binary.f32(i32 36, float %8320, float %8333)  ; FMin(a,b)
  %8335 = fmul fast float %8331, %8322
  %8336 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8337 = fsub fast float %8328, %8324
  %8338 = fsub fast float %8329, %8325
  %8339 = fsub fast float %8330, %8326
  %8340 = fmul fast float %8336, %8337
  %8341 = fmul fast float %8336, %8338
  %8342 = fmul fast float %8336, %8339
  %8343 = fadd fast float %8340, %8324
  %8344 = fadd fast float %8341, %8325
  %8345 = fadd fast float %8342, %8326
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = fadd fast float %8348, %8347
  %8350 = call float @dx.op.unary.f32(i32 7, float %8349)  ; Saturate(value)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8352 = extractvalue %dx.types.CBufRet.f32 %8346, 3
  %8353 = fadd fast float %8352, %8351
  %8354 = call float @dx.op.unary.f32(i32 7, float %8353)  ; Saturate(value)
  %8355 = fmul fast float %8350, %8334
  %8356 = fmul fast float %8355, %8354
  br label %8357

; <label>:8357                                    ; preds = %8318, %8237, %8072, %8054, %8052
  %8358 = phi float [ %8081, %8072 ], [ %8240, %8237 ], [ %8322, %8318 ], [ 0.000000e+00, %8052 ], [ 0.000000e+00, %8054 ]
  %8359 = phi float [ %8115, %8072 ], [ %8274, %8237 ], [ %8356, %8318 ], [ 0.000000e+00, %8052 ], [ 0.000000e+00, %8054 ]
  %8360 = phi float [ %8102, %8072 ], [ %8261, %8237 ], [ %8343, %8318 ], [ 0.000000e+00, %8052 ], [ 0.000000e+00, %8054 ]
  %8361 = phi float [ %8103, %8072 ], [ %8262, %8237 ], [ %8344, %8318 ], [ 0.000000e+00, %8052 ], [ 0.000000e+00, %8054 ]
  %8362 = phi float [ %8104, %8072 ], [ %8263, %8237 ], [ %8345, %8318 ], [ 0.000000e+00, %8052 ], [ 0.000000e+00, %8054 ]
  %8363 = fmul fast float %7995, %8359
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8366 = fsub fast float %8002, %8365
  %8367 = fcmp fast olt float %8363, -2.000000e+01
  %8368 = call float @dx.op.unary.f32(i32 21, float %8363)  ; Exp(value)
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 2
  %8371 = extractvalue %dx.types.CBufRet.f32 %8369, 3
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8374 = fmul fast float %8371, %8366
  %8375 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8376 = fsub fast float 1.000000e+00, %8375
  %8377 = fmul fast float %7987, 5.000000e-01
  %8378 = fadd fast float %8377, 5.000000e-01
  %8379 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8380 = fsub fast float 1.000000e+00, %8379
  %8381 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8376)  ; FMax(a,b)
  %8382 = fdiv fast float %8380, %8381
  %8383 = fsub fast float %8366, %7944
  %8384 = call float @dx.op.unary.f32(i32 6, float %8383)  ; FAbs(value)
  %8385 = fmul fast float %8384, %8370
  %8386 = call float @dx.op.unary.f32(i32 7, float %8382)  ; Saturate(value)
  %8387 = fsub fast float 1.000000e+00, %8385
  %8388 = fmul fast float %8387, %8386
  %8389 = fadd fast float %8388, %8385
  %8390 = fmul fast float %8373, %8366
  %8391 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8392 = fsub fast float 1.000000e+00, %8389
  %8393 = fmul fast float %8392, %8391
  %8394 = fadd fast float %8393, %8389
  %8395 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8396 = fadd fast float %8368, -1.000000e+00
  %8397 = select i1 %8367, float -1.000000e+00, float %8396
  %8398 = fmul fast float %8395, %8397
  %8399 = fadd fast float %8398, 1.000000e+00
  %8400 = fsub fast float -0.000000e+00, %8398
  %8401 = fmul fast float %8360, %8400
  %8402 = fmul fast float %8361, %8400
  %8403 = fmul fast float %8362, %8400
  br label %8404

; <label>:8404                                    ; preds = %8357, %7953
  %8405 = phi float [ %8358, %8357 ], [ 0.000000e+00, %7953 ]
  %8406 = phi float [ %8399, %8357 ], [ 1.000000e+00, %7953 ]
  %8407 = phi float [ %8401, %8357 ], [ 0.000000e+00, %7953 ]
  %8408 = phi float [ %8402, %8357 ], [ 0.000000e+00, %7953 ]
  %8409 = phi float [ %8403, %8357 ], [ 0.000000e+00, %7953 ]
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8412 = fsub fast float 1.000000e+00, %8406
  %8413 = fmul fast float %8412, %7988
  %8414 = fmul fast float %8413, %8411
  %8415 = fsub fast float %7988, %8414
  br i1 %7981, label %8416, label %8445, !dx.controlflow.hints !167

; <label>:8416                                    ; preds = %8404
  %8417 = fmul fast float %7989, %7978
  %8418 = fadd fast float %8417, %7979
  %8419 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8420 = fmul fast float %7960, %8415
  %8421 = fsub fast float -0.000000e+00, %8420
  %8422 = fmul fast float %7961, %8415
  %8423 = fsub fast float -0.000000e+00, %8422
  %8424 = call float @dx.op.unary.f32(i32 21, float %8421)  ; Exp(value)
  %8425 = call float @dx.op.unary.f32(i32 21, float %8423)  ; Exp(value)
  %8426 = call float @dx.op.binary.f32(i32 35, float %7968, float %8424)  ; FMax(a,b)
  %8427 = call float @dx.op.binary.f32(i32 35, float %7968, float %8425)  ; FMax(a,b)
  %8428 = fsub fast float %8427, %8426
  %8429 = fmul fast float %8428, %8419
  %8430 = fadd fast float %8429, %8426
  %8431 = call float @dx.op.unary.f32(i32 7, float %8430)  ; Saturate(value)
  %8432 = fsub fast float %7965, %7970
  %8433 = fsub fast float %7966, %7971
  %8434 = fsub fast float %7967, %7972
  %8435 = fmul fast float %8419, %8432
  %8436 = fmul fast float %8419, %8433
  %8437 = fmul fast float %8419, %8434
  %8438 = fadd fast float %8435, %7970
  %8439 = fadd fast float %8436, %7971
  %8440 = fadd fast float %8437, %7972
  %8441 = fsub fast float 1.000000e+00, %8431
  %8442 = fmul fast float %8441, %8438
  %8443 = fmul fast float %8441, %8439
  %8444 = fmul fast float %8441, %8440
  br label %8504

; <label>:8445                                    ; preds = %8404
  %8446 = fmul fast float %8415, %7977
  %8447 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8448 = fsub fast float 2.000000e+00, %8447
  %8449 = fmul fast float %8447, 9.921875e-01
  %8450 = fmul fast float %8449, %8448
  %8451 = fadd fast float %8450, 3.906250e-03
  %8452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8451, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8453 = extractvalue %dx.types.ResRet.f32 %8452, 0
  %8454 = fsub fast float %8447, %8453
  %8455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8454)  ; FMax(a,b)
  %8456 = fmul fast float %7963, %7944
  %8457 = call float @dx.op.unary.f32(i32 6, float %8456)  ; FAbs(value)
  %8458 = fcmp fast ogt float %8457, 0x3EB0C6F7A0000000
  br i1 %8458, label %8459, label %8465, !dx.controlflow.hints !168

; <label>:8459                                    ; preds = %8445
  %8460 = fmul fast float %8456, 0xBFF7154760000000
  %8461 = call float @dx.op.unary.f32(i32 21, float %8460)  ; Exp(value)
  %8462 = fsub fast float 1.000000e+00, %8461
  %8463 = fdiv fast float %8462, %8456
  %8464 = fmul fast float %8463, %7973
  br label %8465

; <label>:8465                                    ; preds = %8459, %8445
  %8466 = phi float [ %8464, %8459 ], [ %7973, %8445 ]
  %8467 = fadd fast float %8466, %7975
  %8468 = fmul fast float %8467, %8455
  %8469 = fmul fast float %7960, %8468
  %8470 = fsub fast float -0.000000e+00, %8469
  %8471 = fmul fast float %7961, %8468
  %8472 = fsub fast float -0.000000e+00, %8471
  %8473 = fmul fast float %7962, %8468
  %8474 = fsub fast float -0.000000e+00, %8473
  %8475 = call float @dx.op.unary.f32(i32 21, float %8470)  ; Exp(value)
  %8476 = call float @dx.op.unary.f32(i32 21, float %8472)  ; Exp(value)
  %8477 = call float @dx.op.unary.f32(i32 21, float %8474)  ; Exp(value)
  %8478 = fmul fast float %7989, %7989
  %8479 = fadd fast float %8478, 1.000000e+00
  %8480 = fmul fast float %8479, 0x3FAE8EC8A0000000
  %8481 = fmul fast float %8480, %7970
  %8482 = fmul fast float %8480, %7971
  %8483 = fmul fast float %8480, %7972
  %8484 = fmul fast float %7989, %7968
  %8485 = fsub fast float 1.000000e+00, %8484
  %8486 = fmul fast float %7968, %7968
  %8487 = fsub fast float 1.000000e+00, %8486
  %8488 = fmul fast float %8487, 0x3FB45F3060000000
  %8489 = fmul fast float %8485, %8485
  %8490 = fdiv fast float 1.000000e+00, %8489
  %8491 = fmul fast float %8488, %8490
  %8492 = fmul fast float %8491, %7965
  %8493 = fmul fast float %8491, %7966
  %8494 = fmul fast float %8491, %7967
  %8495 = fadd fast float %8492, %8481
  %8496 = fadd fast float %8493, %8482
  %8497 = fadd fast float %8494, %8483
  %8498 = fsub fast float 1.000000e+00, %8475
  %8499 = fsub fast float 1.000000e+00, %8476
  %8500 = fsub fast float 1.000000e+00, %8477
  %8501 = fmul fast float %8495, %8498
  %8502 = fmul fast float %8496, %8499
  %8503 = fmul fast float %8497, %8500
  br label %8504

; <label>:8504                                    ; preds = %8465, %8416
  %8505 = phi float [ %8442, %8416 ], [ %8501, %8465 ]
  %8506 = phi float [ %8443, %8416 ], [ %8502, %8465 ]
  %8507 = phi float [ %8444, %8416 ], [ %8503, %8465 ]
  %8508 = phi float [ %8431, %8416 ], [ %8475, %8465 ]
  %8509 = phi float [ %8431, %8416 ], [ %8476, %8465 ]
  %8510 = phi float [ %8431, %8416 ], [ %8477, %8465 ]
  br i1 %7997, label %8511, label %8709, !dx.controlflow.hints !169

; <label>:8511                                    ; preds = %8504
  %8512 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8513 = fmul fast float %8512, %8412
  %8514 = fsub fast float %8407, %8505
  %8515 = fsub fast float %8408, %8506
  %8516 = fsub fast float %8409, %8507
  %8517 = fmul fast float %8513, %8514
  %8518 = fmul fast float %8513, %8515
  %8519 = fmul fast float %8513, %8516
  %8520 = fadd fast float %8517, %8505
  %8521 = fadd fast float %8518, %8506
  %8522 = fadd fast float %8519, %8507
  %8523 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8508)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8509)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8510)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8406)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8405, float %8415)  ; FMax(a,b)
  %8528 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8527)  ; FMax(a,b)
  %8529 = fdiv fast float %8405, %8528
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fdiv fast float %8415, %8528
  %8532 = call float @dx.op.unary.f32(i32 7, float %8531)  ; Saturate(value)
  %8533 = fcmp fast une float %8526, 1.000000e+00
  br i1 %8533, label %8534, label %8547, !dx.controlflow.hints !170

; <label>:8534                                    ; preds = %8511
  %8535 = call float @dx.op.unary.f32(i32 23, float %8526)  ; Log(value)
  %8536 = fmul fast float %8535, 0x3FE62E4300000000
  %8537 = fmul fast float %8407, %8536
  %8538 = fsub fast float -0.000000e+00, %8537
  %8539 = fmul fast float %8408, %8536
  %8540 = fsub fast float -0.000000e+00, %8539
  %8541 = fmul fast float %8409, %8536
  %8542 = fsub fast float -0.000000e+00, %8541
  %8543 = fsub fast float 1.000000e+00, %8526
  %8544 = fdiv fast float %8538, %8543
  %8545 = fdiv fast float %8540, %8543
  %8546 = fdiv fast float %8542, %8543
  br label %8547

; <label>:8547                                    ; preds = %8534, %8511
  %8548 = phi float [ %8544, %8534 ], [ %8407, %8511 ]
  %8549 = phi float [ %8545, %8534 ], [ %8408, %8511 ]
  %8550 = phi float [ %8546, %8534 ], [ %8409, %8511 ]
  %8551 = phi float [ %8536, %8534 ], [ 0.000000e+00, %8511 ]
  %8552 = fcmp fast une float %8523, 1.000000e+00
  br i1 %8552, label %8553, label %8560, !dx.controlflow.hints !171

; <label>:8553                                    ; preds = %8547
  %8554 = call float @dx.op.unary.f32(i32 23, float %8523)  ; Log(value)
  %8555 = fmul fast float %8554, 0x3FE62E4300000000
  %8556 = fmul fast float %8520, %8555
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = fsub fast float 1.000000e+00, %8523
  %8559 = fdiv fast float %8557, %8558
  br label %8560

; <label>:8560                                    ; preds = %8553, %8547
  %8561 = phi float [ %8559, %8553 ], [ %8520, %8547 ]
  %8562 = phi float [ %8555, %8553 ], [ 0.000000e+00, %8547 ]
  %8563 = fcmp fast une float %8524, 1.000000e+00
  br i1 %8563, label %8564, label %8571, !dx.controlflow.hints !171

; <label>:8564                                    ; preds = %8560
  %8565 = call float @dx.op.unary.f32(i32 23, float %8524)  ; Log(value)
  %8566 = fmul fast float %8565, 0x3FE62E4300000000
  %8567 = fmul fast float %8521, %8566
  %8568 = fsub fast float -0.000000e+00, %8567
  %8569 = fsub fast float 1.000000e+00, %8524
  %8570 = fdiv fast float %8568, %8569
  br label %8571

; <label>:8571                                    ; preds = %8564, %8560
  %8572 = phi float [ %8570, %8564 ], [ %8521, %8560 ]
  %8573 = phi float [ %8566, %8564 ], [ 0.000000e+00, %8560 ]
  %8574 = fcmp fast une float %8525, 1.000000e+00
  br i1 %8574, label %8575, label %8582, !dx.controlflow.hints !171

; <label>:8575                                    ; preds = %8571
  %8576 = call float @dx.op.unary.f32(i32 23, float %8525)  ; Log(value)
  %8577 = fmul fast float %8576, 0x3FE62E4300000000
  %8578 = fmul fast float %8522, %8577
  %8579 = fsub fast float -0.000000e+00, %8578
  %8580 = fsub fast float 1.000000e+00, %8525
  %8581 = fdiv fast float %8579, %8580
  br label %8582

; <label>:8582                                    ; preds = %8575, %8571
  %8583 = phi float [ %8581, %8575 ], [ %8522, %8571 ]
  %8584 = phi float [ %8577, %8575 ], [ 0.000000e+00, %8571 ]
  %8585 = fmul fast float %8548, %8532
  %8586 = fmul fast float %8549, %8532
  %8587 = fmul fast float %8550, %8532
  %8588 = fmul fast float %8551, %8532
  %8589 = fmul fast float %8561, %8530
  %8590 = fmul fast float %8572, %8530
  %8591 = fmul fast float %8583, %8530
  %8592 = fmul fast float %8562, %8530
  %8593 = fmul fast float %8573, %8530
  %8594 = fmul fast float %8584, %8530
  %8595 = fadd fast float %8589, %8585
  %8596 = fadd fast float %8590, %8586
  %8597 = fadd fast float %8591, %8587
  %8598 = fadd fast float %8592, %8588
  %8599 = fadd fast float %8593, %8588
  %8600 = fadd fast float %8594, %8588
  %8601 = fcmp fast une float %8598, 0.000000e+00
  br i1 %8601, label %8602, label %8609, !dx.controlflow.hints !172

; <label>:8602                                    ; preds = %8582
  %8603 = fmul fast float %8598, 0x3FF7154760000000
  %8604 = call float @dx.op.unary.f32(i32 21, float %8603)  ; Exp(value)
  %8605 = fsub fast float 1.000000e+00, %8604
  %8606 = fmul fast float %8595, %8605
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = fdiv fast float %8607, %8598
  br label %8609

; <label>:8609                                    ; preds = %8602, %8582
  %8610 = phi float [ %8604, %8602 ], [ 1.000000e+00, %8582 ]
  %8611 = phi float [ %8608, %8602 ], [ %8595, %8582 ]
  %8612 = fcmp fast une float %8599, 0.000000e+00
  br i1 %8612, label %8613, label %8620, !dx.controlflow.hints !172

; <label>:8613                                    ; preds = %8609
  %8614 = fmul fast float %8599, 0x3FF7154760000000
  %8615 = call float @dx.op.unary.f32(i32 21, float %8614)  ; Exp(value)
  %8616 = fsub fast float 1.000000e+00, %8615
  %8617 = fmul fast float %8596, %8616
  %8618 = fsub fast float -0.000000e+00, %8617
  %8619 = fdiv fast float %8618, %8599
  br label %8620

; <label>:8620                                    ; preds = %8613, %8609
  %8621 = phi float [ %8615, %8613 ], [ 1.000000e+00, %8609 ]
  %8622 = phi float [ %8619, %8613 ], [ %8596, %8609 ]
  %8623 = fcmp fast une float %8600, 0.000000e+00
  br i1 %8623, label %8624, label %8631, !dx.controlflow.hints !172

; <label>:8624                                    ; preds = %8620
  %8625 = fmul fast float %8600, 0x3FF7154760000000
  %8626 = call float @dx.op.unary.f32(i32 21, float %8625)  ; Exp(value)
  %8627 = fsub fast float 1.000000e+00, %8626
  %8628 = fmul fast float %8597, %8627
  %8629 = fsub fast float -0.000000e+00, %8628
  %8630 = fdiv fast float %8629, %8600
  br label %8631

; <label>:8631                                    ; preds = %8624, %8620
  %8632 = phi float [ %8626, %8624 ], [ 1.000000e+00, %8620 ]
  %8633 = phi float [ %8630, %8624 ], [ %8597, %8620 ]
  %8634 = fcmp fast ogt float %8530, %8532
  br i1 %8634, label %8635, label %8655

; <label>:8635                                    ; preds = %8631
  %8636 = fsub fast float 1.000000e+00, %8532
  %8637 = fmul fast float %8548, %8636
  %8638 = fmul fast float %8549, %8636
  %8639 = fmul fast float %8550, %8636
  %8640 = fmul fast float %8551, %8636
  %8641 = fcmp fast une float %8640, 0.000000e+00
  br i1 %8641, label %8642, label %8693, !dx.controlflow.hints !173

; <label>:8642                                    ; preds = %8635
  %8643 = fmul fast float %8640, 0x3FF7154760000000
  %8644 = call float @dx.op.unary.f32(i32 21, float %8643)  ; Exp(value)
  %8645 = fsub fast float 1.000000e+00, %8644
  %8646 = fmul fast float %8637, %8645
  %8647 = fsub fast float -0.000000e+00, %8646
  %8648 = fmul fast float %8638, %8645
  %8649 = fsub fast float -0.000000e+00, %8648
  %8650 = fmul fast float %8639, %8645
  %8651 = fsub fast float -0.000000e+00, %8650
  %8652 = fdiv fast float %8647, %8640
  %8653 = fdiv fast float %8649, %8640
  %8654 = fdiv fast float %8651, %8640
  br label %8693

; <label>:8655                                    ; preds = %8631
  %8656 = fsub fast float 1.000000e+00, %8530
  %8657 = fmul fast float %8561, %8656
  %8658 = fmul fast float %8572, %8656
  %8659 = fmul fast float %8583, %8656
  %8660 = fmul fast float %8562, %8656
  %8661 = fmul fast float %8573, %8656
  %8662 = fmul fast float %8584, %8656
  %8663 = fcmp fast une float %8660, 0.000000e+00
  br i1 %8663, label %8664, label %8671, !dx.controlflow.hints !172

; <label>:8664                                    ; preds = %8655
  %8665 = fmul fast float %8660, 0x3FF7154760000000
  %8666 = call float @dx.op.unary.f32(i32 21, float %8665)  ; Exp(value)
  %8667 = fsub fast float 1.000000e+00, %8666
  %8668 = fmul fast float %8657, %8667
  %8669 = fsub fast float -0.000000e+00, %8668
  %8670 = fdiv fast float %8669, %8660
  br label %8671

; <label>:8671                                    ; preds = %8664, %8655
  %8672 = phi float [ %8670, %8664 ], [ %8657, %8655 ]
  %8673 = phi float [ %8666, %8664 ], [ 1.000000e+00, %8655 ]
  %8674 = fcmp fast une float %8661, 0.000000e+00
  br i1 %8674, label %8675, label %8682, !dx.controlflow.hints !172

; <label>:8675                                    ; preds = %8671
  %8676 = fmul fast float %8661, 0x3FF7154760000000
  %8677 = call float @dx.op.unary.f32(i32 21, float %8676)  ; Exp(value)
  %8678 = fsub fast float 1.000000e+00, %8677
  %8679 = fmul fast float %8658, %8678
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = fdiv fast float %8680, %8661
  br label %8682

; <label>:8682                                    ; preds = %8675, %8671
  %8683 = phi float [ %8681, %8675 ], [ %8658, %8671 ]
  %8684 = phi float [ %8677, %8675 ], [ 1.000000e+00, %8671 ]
  %8685 = fcmp fast une float %8662, 0.000000e+00
  br i1 %8685, label %8686, label %8693, !dx.controlflow.hints !172

; <label>:8686                                    ; preds = %8682
  %8687 = fmul fast float %8662, 0x3FF7154760000000
  %8688 = call float @dx.op.unary.f32(i32 21, float %8687)  ; Exp(value)
  %8689 = fsub fast float 1.000000e+00, %8688
  %8690 = fmul fast float %8659, %8689
  %8691 = fsub fast float -0.000000e+00, %8690
  %8692 = fdiv fast float %8691, %8662
  br label %8693

; <label>:8693                                    ; preds = %8686, %8682, %8642, %8635
  %8694 = phi float [ %8692, %8686 ], [ %8654, %8642 ], [ %8639, %8635 ], [ %8659, %8682 ]
  %8695 = phi float [ %8683, %8686 ], [ %8653, %8642 ], [ %8638, %8635 ], [ %8683, %8682 ]
  %8696 = phi float [ %8672, %8686 ], [ %8652, %8642 ], [ %8637, %8635 ], [ %8672, %8682 ]
  %8697 = phi float [ %8688, %8686 ], [ %8644, %8642 ], [ 1.000000e+00, %8635 ], [ 1.000000e+00, %8682 ]
  %8698 = phi float [ %8684, %8686 ], [ %8644, %8642 ], [ 1.000000e+00, %8635 ], [ %8684, %8682 ]
  %8699 = phi float [ %8673, %8686 ], [ %8644, %8642 ], [ 1.000000e+00, %8635 ], [ %8673, %8682 ]
  %8700 = fmul fast float %8699, %8611
  %8701 = fmul fast float %8698, %8622
  %8702 = fmul fast float %8697, %8633
  %8703 = fadd fast float %8700, %8696
  %8704 = fadd fast float %8701, %8695
  %8705 = fadd fast float %8702, %8694
  %8706 = fmul fast float %8699, %8610
  %8707 = fmul fast float %8698, %8621
  %8708 = fmul fast float %8697, %8632
  br label %8709

; <label>:8709                                    ; preds = %8693, %8504
  %8710 = phi float [ %8708, %8693 ], [ %8510, %8504 ]
  %8711 = phi float [ %8707, %8693 ], [ %8509, %8504 ]
  %8712 = phi float [ %8706, %8693 ], [ %8508, %8504 ]
  %8713 = phi float [ %8705, %8693 ], [ %8507, %8504 ]
  %8714 = phi float [ %8704, %8693 ], [ %8506, %8504 ]
  %8715 = phi float [ %8703, %8693 ], [ %8505, %8504 ]
  %8716 = fmul fast float %8715, %7661
  %8717 = fmul fast float %8714, %7661
  %8718 = fmul fast float %8713, %7661
  %8719 = fmul fast float %8712, %7952
  %8720 = call float @dx.op.dot3.f32(i32 55, float %8712, float %8711, float %8710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8721 = call float @dx.op.dot3.f32(i32 55, float %8716, float %8717, float %8718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8722 = select i1 %271, float %8720, float %8712
  %8723 = select i1 %271, float %8720, float %8711
  %8724 = select i1 %271, float 1.000000e+00, float %8710
  %8725 = select i1 %271, float %8721, float %8716
  %8726 = select i1 %271, float 0.000000e+00, float %8717
  %8727 = select i1 %271, float 0.000000e+00, float %8718
  %8728 = fmul fast float %8722, %7946
  %8729 = fmul fast float %8723, %7947
  %8730 = fmul fast float %8724, %7948
  %8731 = fadd fast float %8728, %8725
  %8732 = fadd fast float %8729, %8726
  %8733 = fadd fast float %8727, %8730
  %8734 = fmul fast float %8722, %7949
  %8735 = fmul fast float %8723, %7950
  %8736 = fmul fast float %8724, %7951
  %8737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.i32 %8737, 0
  %8739 = icmp eq i32 %8738, 0
  br i1 %8739, label %9107, label %8740, !dx.controlflow.hints !174

; <label>:8740                                    ; preds = %8709
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 2
  %8743 = extractvalue %dx.types.CBufRet.f32 %8741, 3
  %8744 = fmul fast float %8742, %116
  %8745 = fmul fast float %8743, %117
  %8746 = fmul fast float %8744, 2.000000e+00
  %8747 = fmul fast float %8745, 2.000000e+00
  %8748 = fsub fast float 1.000000e+00, %8746
  %8749 = fsub fast float 1.000000e+00, %8747
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.CBufRet.f32 %8750, 1
  %8753 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8754 = fmul fast float %8748, %8751
  %8755 = fmul fast float %8748, %8752
  %8756 = fmul fast float %8748, %8753
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.CBufRet.f32 %8757, 1
  %8760 = extractvalue %dx.types.CBufRet.f32 %8757, 2
  %8761 = fmul fast float %8749, %8758
  %8762 = fmul fast float %8749, %8759
  %8763 = fmul fast float %8749, %8760
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8768 = fadd fast float %8761, %8765
  %8769 = fadd fast float %8768, %8754
  %8770 = fadd fast float %8762, %8766
  %8771 = fadd fast float %8770, %8755
  %8772 = fadd fast float %8763, %8767
  %8773 = fadd fast float %8772, %8756
  %8774 = fmul fast float %8769, %7945
  %8775 = fmul fast float %8771, %7945
  %8776 = fmul fast float %8773, %7945
  %8777 = fmul fast float %8774, %8774
  %8778 = fmul fast float %8775, %8775
  %8779 = fadd fast float %8777, %8778
  %8780 = fmul fast float %8776, %8776
  %8781 = fadd fast float %8779, %8780
  %8782 = call float @dx.op.unary.f32(i32 24, float %8781)  ; Sqrt(value)
  %8783 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %8784 = fsub fast float %8782, %8783
  %8785 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %8786 = fmul fast float %8784, %8785
  %8787 = call float @dx.op.unary.f32(i32 7, float %8786)  ; Saturate(value)
  %8788 = fadd fast float %8787, -5.000000e-01
  %8789 = fmul fast float %8788, 2.000000e+00
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 2
  %8792 = call float @dx.op.binary.f32(i32 36, float %8791, float %8789)  ; FMin(a,b)
  %8793 = fsub fast float -0.000000e+00, %8791
  %8794 = fcmp fast ogt float %8792, %8793
  br i1 %8794, label %8795, label %9107, !dx.controlflow.hints !175

; <label>:8795                                    ; preds = %8740
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 3
  %8798 = fcmp fast ogt float %8797, 0.000000e+00
  br i1 %8798, label %8799, label %8874, !dx.controlflow.hints !176

; <label>:8799                                    ; preds = %8795
  %8800 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8801 = extractvalue %dx.types.Dimensions %8800, 0
  %8802 = sitofp i32 %8801 to float
  %8803 = extractvalue %dx.types.Dimensions %8800, 1
  %8804 = sitofp i32 %8803 to float
  %8805 = fmul fast float %8744, %8802
  %8806 = fmul fast float %8745, %8804
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8809 = fsub fast float -0.000000e+00, %8808
  %8810 = fptoui float %8809 to i32
  %8811 = fptoui float %8805 to i32
  %8812 = fptoui float %8806 to i32
  %8813 = and i32 %8810, 31
  %8814 = lshr i32 %8811, %8813
  %8815 = lshr i32 %8812, %8813
  %8816 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8810, i32 %8814, i32 %8815, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8817 = extractvalue %dx.types.ResRet.f32 %8816, 0
  %8818 = fcmp fast olt float %8817, -1.000000e+00
  %8819 = fcmp fast ogt float %8817, -1.000000e+00
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 1
  %8822 = select i1 %8819, float %8821, float 1.000000e+00
  %8823 = fadd fast float %8817, 1.000000e+00
  %8824 = fmul fast float %8822, %8823
  %8825 = call float @dx.op.unary.f32(i32 6, float %8824)  ; FAbs(value)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8820, 3
  %8827 = fcmp fast oge float %8825, %8826
  %8828 = select i1 %8827, float 0x4197782600000000, float %8825
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 0
  %8831 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8832 = extractvalue %dx.types.CBufRet.f32 %8829, 2
  %8833 = select i1 %8818, float %8830, float %8751
  %8834 = select i1 %8818, float %8831, float %8752
  %8835 = select i1 %8818, float %8832, float %8753
  %8836 = fmul fast float %8833, %8748
  %8837 = fmul fast float %8834, %8748
  %8838 = fmul fast float %8835, %8748
  %8839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8839, 0
  %8841 = extractvalue %dx.types.CBufRet.f32 %8839, 1
  %8842 = extractvalue %dx.types.CBufRet.f32 %8839, 2
  %8843 = select i1 %8818, float %8840, float %8758
  %8844 = select i1 %8818, float %8841, float %8759
  %8845 = select i1 %8818, float %8842, float %8760
  %8846 = fmul fast float %8843, %8749
  %8847 = fmul fast float %8844, %8749
  %8848 = fmul fast float %8845, %8749
  %8849 = fadd fast float %8846, %8836
  %8850 = fadd fast float %8847, %8837
  %8851 = fadd fast float %8848, %8838
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 1
  %8855 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8856 = select i1 %8818, float %8853, float %8765
  %8857 = select i1 %8818, float %8854, float %8766
  %8858 = select i1 %8818, float %8855, float %8767
  %8859 = fadd fast float %8849, %8856
  %8860 = fadd fast float %8850, %8857
  %8861 = fadd fast float %8851, %8858
  %8862 = fmul fast float %8859, %8828
  %8863 = fmul fast float %8860, %8828
  %8864 = fmul fast float %8861, %8828
  %8865 = fmul fast float %8862, %8862
  %8866 = fmul fast float %8863, %8863
  %8867 = fadd fast float %8865, %8866
  %8868 = fmul fast float %8864, %8864
  %8869 = fadd fast float %8867, %8868
  %8870 = call float @dx.op.unary.f32(i32 24, float %8869)  ; Sqrt(value)
  %8871 = fsub fast float %8870, %8783
  %8872 = fmul fast float %8871, %8785
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  br label %8874

; <label>:8874                                    ; preds = %8799, %8795
  %8875 = phi float [ %8873, %8799 ], [ 1.000000e+00, %8795 ]
  %8876 = fmul fast float %8792, 5.000000e-01
  %8877 = fadd fast float %8876, 5.000000e-01
  %8878 = call float @dx.op.unary.f32(i32 22, float %8877)  ; Frc(value)
  %8879 = call float @dx.op.unary.f32(i32 27, float %8878)  ; Round_ni(value)
  %8880 = call float @dx.op.unary.f32(i32 22, float %8878)  ; Frc(value)
  %8881 = fmul fast float %8880, 2.000000e+00
  %8882 = fadd fast float %8881, -1.000000e+00
  %8883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8744, float %8745, float %8879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8884 = extractvalue %dx.types.ResRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.ResRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.ResRet.f32 %8883, 2
  %8887 = extractvalue %dx.types.ResRet.f32 %8883, 3
  %8888 = fadd fast float %8884, -5.000000e-01
  %8889 = fadd fast float %8886, -5.000000e-01
  %8890 = fmul fast float %8888, 0xBFD5555560000000
  %8891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8889, float %8890)  ; FMad(a,b,c)
  %8892 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8885, float 0.000000e+00)  ; FMad(a,b,c)
  %8893 = fadd fast float %8892, %8887
  %8894 = fmul fast float %8888, -7.500000e-01
  %8895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8889, float %8894)  ; FMad(a,b,c)
  %8896 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8885, float 0.000000e+00)  ; FMad(a,b,c)
  %8897 = fadd fast float %8896, %8887
  %8898 = call float @dx.op.binary.f32(i32 35, float %8891, float -1.000000e+00)  ; FMax(a,b)
  %8899 = call float @dx.op.binary.f32(i32 35, float %8893, float -1.000000e+00)  ; FMax(a,b)
  %8900 = call float @dx.op.binary.f32(i32 35, float %8895, float -1.000000e+00)  ; FMax(a,b)
  %8901 = call float @dx.op.binary.f32(i32 35, float %8897, float -1.000000e+00)  ; FMax(a,b)
  %8902 = call float @dx.op.binary.f32(i32 36, float %8898, float 1.000000e+00)  ; FMin(a,b)
  %8903 = call float @dx.op.binary.f32(i32 36, float %8899, float 1.000000e+00)  ; FMin(a,b)
  %8904 = call float @dx.op.binary.f32(i32 36, float %8900, float 1.000000e+00)  ; FMin(a,b)
  %8905 = call float @dx.op.binary.f32(i32 36, float %8901, float 1.000000e+00)  ; FMin(a,b)
  %8906 = fcmp fast olt float %8902, 0x3FEFFF8020000000
  br i1 %8906, label %8907, label %9022, !dx.controlflow.hints !177

; <label>:8907                                    ; preds = %8874
  %8908 = extractvalue %dx.types.CBufRet.f32 %8790, 3
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 0
  %8911 = extractvalue %dx.types.CBufRet.f32 %8909, 1
  %8912 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8913 = extractvalue %dx.types.CBufRet.f32 %8909, 3
  %8914 = fsub fast float %8910, %8902
  %8915 = fsub fast float %8911, %8903
  %8916 = fsub fast float %8912, %8904
  %8917 = fsub fast float %8913, %8905
  %8918 = fmul fast float %8914, %8908
  %8919 = fmul fast float %8915, %8908
  %8920 = fmul fast float %8916, %8908
  %8921 = fmul fast float %8917, %8908
  %8922 = fadd fast float %8918, %8902
  %8923 = fadd fast float %8919, %8903
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fadd fast float %8920, %8904
  %8926 = fadd fast float %8921, %8905
  %8927 = fmul fast float %8922, %8922
  %8928 = fsub fast float %8923, %8927
  %8929 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8928)  ; FMax(a,b)
  %8930 = fdiv fast float 1.000000e+00, %8929
  %8931 = fmul fast float %8923, %8922
  %8932 = fsub fast float %8925, %8931
  %8933 = fsub fast float %8882, %8922
  %8934 = fmul fast float %8882, %8882
  %8935 = fsub fast float %8934, %8923
  %8936 = fmul fast float %8933, %8930
  %8937 = fmul fast float %8936, %8932
  %8938 = fsub fast float %8935, %8937
  %8939 = fmul fast float %8923, %8923
  %8940 = fsub fast float %8926, %8939
  %8941 = fmul fast float %8932, %8932
  %8942 = fmul fast float %8941, %8930
  %8943 = fsub fast float %8940, %8942
  %8944 = fdiv fast float %8938, %8943
  %8945 = fmul fast float %8932, %8944
  %8946 = fsub fast float %8933, %8945
  %8947 = fmul fast float %8946, %8930
  %8948 = fmul fast float %8947, %8922
  %8949 = fsub fast float 1.000000e+00, %8948
  %8950 = fmul fast float %8923, %8944
  %8951 = fsub fast float %8949, %8950
  %8952 = fmul fast float %8947, %8947
  %8953 = fmul fast float %8944, 4.000000e+00
  %8954 = fmul fast float %8953, %8951
  %8955 = fsub fast float %8952, %8954
  %8956 = call float @dx.op.unary.f32(i32 24, float %8955)  ; Sqrt(value)
  %8957 = fcmp fast oge float %8947, 0.000000e+00
  %8958 = fsub fast float -0.000000e+00, %8956
  %8959 = select i1 %8957, float %8958, float %8956
  %8960 = fsub fast float %8959, %8947
  %8961 = fdiv fast float %8960, %8944
  %8962 = fdiv fast float %8951, %8960
  %8963 = fmul fast float %8961, 5.000000e-01
  %8964 = fmul fast float %8962, 2.000000e+00
  %8965 = select i1 %8957, float %8963, float %8964
  %8966 = select i1 %8957, float %8964, float %8963
  %8967 = call float @dx.op.binary.f32(i32 35, float %8965, float %8966)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 36, float %8965, float %8966)  ; FMin(a,b)
  %8969 = fcmp fast ogt float %8882, %8968
  br i1 %8969, label %8970, label %8980

; <label>:8970                                    ; preds = %8907
  %8971 = fsub fast float %8882, %8968
  %8972 = fsub fast float %8967, %8968
  %8973 = fmul fast float %8971, %8972
  %8974 = fmul fast float %8967, %8882
  %8975 = fadd fast float %8967, %8882
  %8976 = fmul fast float %8975, %8922
  %8977 = fadd fast float %8974, %8923
  %8978 = fsub fast float %8977, %8976
  %8979 = fdiv fast float %8978, %8973
  br label %8980

; <label>:8980                                    ; preds = %8970, %8907
  %8981 = phi float [ %8979, %8970 ], [ 0.000000e+00, %8907 ]
  %8982 = fcmp fast ogt float %8882, %8967
  %8983 = fsub fast float %8882, %8967
  br i1 %8982, label %8984, label %8994

; <label>:8984                                    ; preds = %8980
  %8985 = fsub fast float %8967, %8968
  %8986 = fmul fast float %8985, %8983
  %8987 = fmul fast float %8968, %8882
  %8988 = fadd fast float %8968, %8882
  %8989 = fmul fast float %8988, %8922
  %8990 = fsub fast float %8924, %8987
  %8991 = fadd fast float %8990, %8989
  %8992 = fdiv fast float %8991, %8986
  %8993 = fadd fast float %8992, %8981
  br label %8994

; <label>:8994                                    ; preds = %8984, %8980
  %8995 = phi float [ %8993, %8984 ], [ %8981, %8980 ]
  %8996 = fsub fast float %8882, %8968
  %8997 = fmul fast float %8996, %8983
  %8998 = fmul fast float %8968, %8967
  %8999 = fadd fast float %8968, %8967
  %9000 = fmul fast float %8999, %8922
  %9001 = fadd fast float %8998, %8923
  %9002 = fsub fast float %9001, %9000
  %9003 = fdiv fast float %9002, %8997
  %9004 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %9005 = fcmp fast oeq float %7673, 0.000000e+00
  %9006 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %9007 = fcmp fast oeq float %9006, 0.000000e+00
  %9008 = or i1 %9005, %9007
  %9009 = fmul fast float %9006, 2.000000e+00
  %9010 = fadd fast float %8791, %8792
  %9011 = fdiv fast float %9010, %9009
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = fmul fast float %9012, 2.000000e+00
  %9014 = fsub fast float 3.000000e+00, %9013
  %9015 = fmul fast float %9012, %9012
  %9016 = fmul fast float %9015, %9014
  %9017 = select i1 %9008, float 1.000000e+00, float %9016
  %9018 = fmul fast float %9003, %7673
  %9019 = fadd fast float %9004, %9018
  %9020 = call float @dx.op.unary.f32(i32 7, float %9019)  ; Saturate(value)
  %9021 = fmul fast float %9017, %9020
  br label %9022

; <label>:9022                                    ; preds = %8994, %8874
  %9023 = phi float [ %9021, %8994 ], [ 0.000000e+00, %8874 ]
  %9024 = fsub fast float 1.000000e+00, %9023
  %9025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8744, float %8745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9026 = extractvalue %dx.types.ResRet.f32 %9025, 0
  %9027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.i32 %9027, 2
  %9029 = icmp eq i32 %9028, 0
  br i1 %9029, label %9035, label %9030

; <label>:9030                                    ; preds = %9022
  %9031 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9032 = fadd fast float %9026, -1.000000e+00
  %9033 = fmul fast float %9031, %9032
  %9034 = fadd fast float %9033, 1.000000e+00
  br label %9035

; <label>:9035                                    ; preds = %9030, %9022
  %9036 = phi float [ %9034, %9030 ], [ %9024, %9022 ]
  br i1 %8798, label %9037, label %9055

; <label>:9037                                    ; preds = %9035
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 1
  %9040 = fsub fast float %8875, %9039
  %9041 = call float @dx.op.unary.f32(i32 7, float %9040)  ; Saturate(value)
  %9042 = fsub fast float %8875, %8797
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fsub fast float %9041, %9043
  %9045 = fsub fast float %8877, %9043
  %9046 = fdiv fast float %9045, %9044
  %9047 = call float @dx.op.unary.f32(i32 7, float %9046)  ; Saturate(value)
  %9048 = fmul fast float %9047, 2.000000e+00
  %9049 = fsub fast float 3.000000e+00, %9048
  %9050 = fsub fast float %9026, %9036
  %9051 = fmul fast float %9047, %9047
  %9052 = fmul fast float %9051, %9050
  %9053 = fmul fast float %9052, %9049
  %9054 = fadd fast float %9053, %9036
  br label %9055

; <label>:9055                                    ; preds = %9037, %9035
  %9056 = phi float [ %9054, %9037 ], [ %9036, %9035 ]
  %9057 = call float @dx.op.binary.f32(i32 35, float %9026, float %9056)  ; FMax(a,b)
  %9058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.i32 %9058, 2
  %9060 = and i32 %9059, 1
  %9061 = icmp eq i32 %9060, 0
  %9062 = fcmp fast une float %9057, 1.000000e+00
  %9063 = and i1 %9062, %9061
  br i1 %9063, label %9064, label %9083

; <label>:9064                                    ; preds = %9055
  %9065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8744, float %8745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9066 = extractvalue %dx.types.ResRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.ResRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.ResRet.f32 %9065, 2
  %9069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9070 = extractvalue %dx.types.CBufRet.f32 %9069, 1
  %9071 = fmul fast float %9070, %9066
  %9072 = fmul fast float %9070, %9067
  %9073 = fmul fast float %9070, %9068
  %9074 = fcmp fast ogt float %9026, 0x3FEFFF2E40000000
  %9075 = fsub fast float 1.000000e+00, %9057
  %9076 = fsub fast float 1.000000e+00, %9026
  %9077 = fdiv fast float %9075, %9076
  %9078 = call float @dx.op.unary.f32(i32 7, float %9077)  ; Saturate(value)
  %9079 = select i1 %9074, float 0.000000e+00, float %9078
  %9080 = fmul fast float %9071, %9079
  %9081 = fmul fast float %9072, %9079
  %9082 = fmul fast float %9073, %9079
  br label %9083

; <label>:9083                                    ; preds = %9064, %9055
  %9084 = phi float [ 0.000000e+00, %9055 ], [ %9080, %9064 ]
  %9085 = phi float [ 0.000000e+00, %9055 ], [ %9081, %9064 ]
  %9086 = phi float [ 0.000000e+00, %9055 ], [ %9082, %9064 ]
  %9087 = fmul fast float %9084, %7661
  %9088 = fmul fast float %9085, %7661
  %9089 = fmul fast float %9086, %7661
  %9090 = fmul fast float %9057, %8719
  %9091 = call float @dx.op.dot3.f32(i32 55, float %9057, float %9057, float %9057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9092 = call float @dx.op.dot3.f32(i32 55, float %9087, float %9088, float %9089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9093 = select i1 %271, float %9091, float %9057
  %9094 = select i1 %271, float 1.000000e+00, float %9057
  %9095 = select i1 %271, float %9092, float %9087
  %9096 = select i1 %271, float 0.000000e+00, float %9088
  %9097 = select i1 %271, float 0.000000e+00, float %9089
  %9098 = fmul fast float %9093, %8731
  %9099 = fmul fast float %9093, %8732
  %9100 = fmul fast float %9094, %8733
  %9101 = fadd fast float %9098, %9095
  %9102 = fadd fast float %9099, %9096
  %9103 = fadd fast float %9097, %9100
  %9104 = fmul fast float %9093, %8734
  %9105 = fmul fast float %9093, %8735
  %9106 = fmul fast float %9094, %8736
  br label %9107

; <label>:9107                                    ; preds = %9083, %8740, %8709, %7941
  %9108 = phi float [ %7946, %7941 ], [ %8731, %8709 ], [ %9101, %9083 ], [ %8731, %8740 ]
  %9109 = phi float [ %7947, %7941 ], [ %8732, %8709 ], [ %9102, %9083 ], [ %8732, %8740 ]
  %9110 = phi float [ %7948, %7941 ], [ %8733, %8709 ], [ %9103, %9083 ], [ %8733, %8740 ]
  %9111 = phi float [ %7949, %7941 ], [ %8734, %8709 ], [ %9104, %9083 ], [ %8734, %8740 ]
  %9112 = phi float [ %7950, %7941 ], [ %8735, %8709 ], [ %9105, %9083 ], [ %8735, %8740 ]
  %9113 = phi float [ %7951, %7941 ], [ %8736, %8709 ], [ %9106, %9083 ], [ %8736, %8740 ]
  %9114 = phi float [ %7952, %7941 ], [ %8719, %8709 ], [ %9090, %9083 ], [ %8719, %8740 ]
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 3
  %9118 = fmul fast float %9116, %116
  %9119 = fmul fast float %9117, %117
  %9120 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9121 = call float @dx.op.unary.f32(i32 7, float %9119)  ; Saturate(value)
  %9122 = select i1 %7683, i32 2, i32 0
  %9123 = or i32 %9122, 1
  %9124 = uitofp i32 %9123 to float
  %9125 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9120, float %9121, float %9124, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9126 = extractvalue %dx.types.ResRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.ResRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.ResRet.f32 %9125, 2
  %9129 = extractvalue %dx.types.ResRet.f32 %9125, 3
  %9130 = add nuw nsw i32 %9122, 2
  %9131 = uitofp i32 %9130 to float
  %9132 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9120, float %9121, float %9131, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9133 = extractvalue %dx.types.ResRet.f32 %9132, 0
  %9134 = extractvalue %dx.types.ResRet.f32 %9132, 1
  %9135 = extractvalue %dx.types.ResRet.f32 %9132, 2
  %9136 = extractvalue %dx.types.ResRet.f32 %9132, 3
  %9137 = call float @dx.op.binary.f32(i32 35, float %9127, float %9128)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9126, float %9137)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 35, float %9138, float %9129)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 36, float %9134, float %9135)  ; FMin(a,b)
  %9141 = call float @dx.op.binary.f32(i32 36, float %9133, float %9140)  ; FMin(a,b)
  %9142 = call float @dx.op.binary.f32(i32 36, float %9141, float %9136)  ; FMin(a,b)
  %9143 = fmul fast float %9139, 2.550000e+02
  %9144 = fadd fast float %9143, 0x3F70101020000000
  %9145 = fptoui float %9144 to i32
  %9146 = fmul fast float %9142, 2.550000e+02
  %9147 = fadd fast float %9146, 0x3F70101020000000
  %9148 = fptoui float %9147 to i32
  %9149 = icmp ult i32 %9145, %9148
  br i1 %9149, label %9150, label %9319

; <label>:9150                                    ; preds = %9107
  %9151 = fcmp fast ogt float %106, 9.843750e-01
  %9152 = fadd fast float %7945, -4.000000e+00
  %9153 = select i1 %9151, float -4.000000e+00, float %9152
  %9154 = call float @dx.op.binary.f32(i32 35, float %9153, float 0.000000e+00)  ; FMax(a,b)
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 0
  %9157 = fadd fast float %9156, %9154
  %9158 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9159 = fmul fast float %9157, %9158
  %9160 = call float @dx.op.unary.f32(i32 23, float %9159)  ; Log(value)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9155, 3
  %9162 = fmul fast float %9161, %9160
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9165 = fmul fast float %9162, %9164
  %9166 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  %9167 = uitofp i32 %9145 to float
  %9168 = uitofp i32 %9148 to float
  %9169 = fadd fast float %9167, 5.000000e-01
  %9170 = fadd fast float %9168, 5.000000e-01
  %9171 = fmul fast float %9164, %9169
  %9172 = fmul fast float %9164, %9170
  %9173 = fadd fast float %9171, 0x3F0FFB4800000000
  %9174 = fadd fast float %9172, 0xBF0FFB4800000000
  %9175 = call float @dx.op.binary.f32(i32 35, float %9166, float %9173)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9175, float %9174)  ; FMin(a,b)
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 1
  %9179 = extractvalue %dx.types.CBufRet.f32 %9177, 2
  %9180 = extractvalue %dx.types.CBufRet.f32 %9177, 0
  %9181 = select i1 %7683, float %9180, float 0.000000e+00
  %9182 = fmul fast float %9178, %9176
  %9183 = fadd fast float %9181, %9182
  %9184 = fadd fast float %9181, %9179
  %9185 = fsub fast float %9178, %9179
  %9186 = fadd fast float %9185, %9181
  %9187 = call float @dx.op.binary.f32(i32 35, float %9183, float %9184)  ; FMax(a,b)
  %9188 = call float @dx.op.binary.f32(i32 36, float %9187, float %9186)  ; FMin(a,b)
  %9189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9120, float %9121, float %9188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9190 = extractvalue %dx.types.ResRet.f32 %9189, 0
  %9191 = extractvalue %dx.types.ResRet.f32 %9189, 1
  %9192 = extractvalue %dx.types.ResRet.f32 %9189, 2
  %9193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.i32 %9193, 0
  %9195 = extractvalue %dx.types.CBufRet.i32 %9193, 1
  %9196 = uitofp i32 %9194 to float
  %9197 = uitofp i32 %9195 to float
  %9198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.f32 %9198, 0
  %9200 = extractvalue %dx.types.CBufRet.f32 %9198, 1
  %9201 = fmul fast float %9196, %9120
  %9202 = fmul fast float %9197, %9121
  %9203 = fadd fast float %9201, -5.000000e-01
  %9204 = fadd fast float %9202, -5.000000e-01
  %9205 = call float @dx.op.unary.f32(i32 22, float %9203)  ; Frc(value)
  %9206 = call float @dx.op.unary.f32(i32 22, float %9204)  ; Frc(value)
  %9207 = fmul fast float %9205, %9205
  %9208 = fmul fast float %9207, %9205
  %9209 = fsub fast float 3.000000e+00, %9205
  %9210 = fmul fast float %9207, %9209
  %9211 = fmul fast float %9205, 3.000000e+00
  %9212 = fmul fast float %9208, 3.000000e+00
  %9213 = fmul fast float %9207, 6.000000e+00
  %9214 = fsub fast float %9212, %9213
  %9215 = fadd fast float %9214, 4.000000e+00
  %9216 = fmul fast float %9215, 0x3FC5555560000000
  %9217 = fmul fast float %9208, -3.000000e+00
  %9218 = fadd fast float %9207, %9205
  %9219 = fmul fast float %9218, 3.000000e+00
  %9220 = fadd fast float %9217, 1.000000e+00
  %9221 = fadd fast float %9220, %9219
  %9222 = fmul fast float %9208, 0x3FC5555560000000
  %9223 = fmul fast float %9206, %9206
  %9224 = fmul fast float %9223, %9206
  %9225 = fsub fast float 3.000000e+00, %9206
  %9226 = fmul fast float %9223, %9225
  %9227 = fmul fast float %9206, 3.000000e+00
  %9228 = fmul fast float %9224, 3.000000e+00
  %9229 = fmul fast float %9223, 6.000000e+00
  %9230 = fsub fast float %9228, %9229
  %9231 = fadd fast float %9230, 4.000000e+00
  %9232 = fmul fast float %9231, 0x3FC5555560000000
  %9233 = fmul fast float %9224, -3.000000e+00
  %9234 = fadd fast float %9223, %9206
  %9235 = fmul fast float %9234, 3.000000e+00
  %9236 = fadd fast float %9233, 1.000000e+00
  %9237 = fadd fast float %9236, %9235
  %9238 = fmul fast float %9224, 0x3FC5555560000000
  %9239 = fadd fast float %9205, 1.000000e+00
  %9240 = fsub fast float 1.000000e+00, %9211
  %9241 = fadd fast float %9240, %9210
  %9242 = fadd fast float %9241, %9215
  %9243 = fmul fast float %9242, 0x3FC5555560000000
  %9244 = fdiv fast float %9216, %9243
  %9245 = fsub fast float %9239, %9244
  %9246 = fsub fast float 1.000000e+00, %9205
  %9247 = fadd fast float %9221, %9208
  %9248 = fmul fast float %9247, 0x3FC5555560000000
  %9249 = fdiv fast float %9222, %9248
  %9250 = fadd fast float %9246, %9249
  %9251 = fadd fast float %9206, 1.000000e+00
  %9252 = fsub fast float 1.000000e+00, %9227
  %9253 = fadd fast float %9252, %9226
  %9254 = fadd fast float %9253, %9231
  %9255 = fmul fast float %9254, 0x3FC5555560000000
  %9256 = fdiv fast float %9232, %9255
  %9257 = fsub fast float %9251, %9256
  %9258 = fsub fast float 1.000000e+00, %9206
  %9259 = fadd fast float %9237, %9224
  %9260 = fmul fast float %9259, 0x3FC5555560000000
  %9261 = fdiv fast float %9238, %9260
  %9262 = fadd fast float %9261, %9258
  %9263 = fmul fast float %9245, %9199
  %9264 = fsub fast float %9120, %9263
  %9265 = fmul fast float %9250, %9199
  %9266 = fadd fast float %9265, %9120
  %9267 = fmul fast float %9262, %9200
  %9268 = fadd fast float %9267, %9121
  %9269 = fmul fast float %9257, %9200
  %9270 = fsub fast float %9121, %9269
  %9271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9264, float %9270, float %9188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9272 = extractvalue %dx.types.ResRet.f32 %9271, 0
  %9273 = extractvalue %dx.types.ResRet.f32 %9271, 1
  %9274 = extractvalue %dx.types.ResRet.f32 %9271, 2
  %9275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9266, float %9270, float %9188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9276 = extractvalue %dx.types.ResRet.f32 %9275, 0
  %9277 = extractvalue %dx.types.ResRet.f32 %9275, 1
  %9278 = extractvalue %dx.types.ResRet.f32 %9275, 2
  %9279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9264, float %9268, float %9188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9280 = extractvalue %dx.types.ResRet.f32 %9279, 0
  %9281 = extractvalue %dx.types.ResRet.f32 %9279, 1
  %9282 = extractvalue %dx.types.ResRet.f32 %9279, 2
  %9283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9266, float %9268, float %9188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.ResRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.ResRet.f32 %9283, 2
  %9287 = fsub fast float %9280, %9272
  %9288 = fsub fast float %9281, %9273
  %9289 = fsub fast float %9282, %9274
  %9290 = fmul fast float %9287, %9260
  %9291 = fmul fast float %9288, %9260
  %9292 = fmul fast float %9289, %9260
  %9293 = fadd fast float %9290, %9272
  %9294 = fadd fast float %9291, %9273
  %9295 = fadd fast float %9292, %9274
  %9296 = fsub fast float %9284, %9276
  %9297 = fsub fast float %9285, %9277
  %9298 = fsub fast float %9286, %9278
  %9299 = fmul fast float %9296, %9260
  %9300 = fmul fast float %9297, %9260
  %9301 = fmul fast float %9298, %9260
  %9302 = fsub fast float %9276, %9293
  %9303 = fadd fast float %9302, %9299
  %9304 = fsub fast float %9277, %9294
  %9305 = fadd fast float %9304, %9300
  %9306 = fsub fast float %9278, %9295
  %9307 = fadd fast float %9306, %9301
  %9308 = fmul fast float %9303, %9248
  %9309 = fmul fast float %9305, %9248
  %9310 = fmul fast float %9307, %9248
  %9311 = fadd fast float %9308, %9293
  %9312 = fadd fast float %9309, %9294
  %9313 = fadd fast float %9310, %9295
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9316 = fmul fast float %9311, %9315
  %9317 = fmul fast float %9312, %9315
  %9318 = fmul fast float %9313, %9315
  br label %9319

; <label>:9319                                    ; preds = %9150, %9107
  %9320 = phi float [ %9190, %9150 ], [ 1.000000e+00, %9107 ]
  %9321 = phi float [ %9191, %9150 ], [ 1.000000e+00, %9107 ]
  %9322 = phi float [ %9192, %9150 ], [ 1.000000e+00, %9107 ]
  %9323 = phi float [ %9316, %9150 ], [ 0.000000e+00, %9107 ]
  %9324 = phi float [ %9317, %9150 ], [ 0.000000e+00, %9107 ]
  %9325 = phi float [ %9318, %9150 ], [ 0.000000e+00, %9107 ]
  %9326 = fmul fast float %9323, %7661
  %9327 = fmul fast float %9324, %7661
  %9328 = fmul fast float %9325, %7661
  %9329 = fmul fast float %9320, %9114
  %9330 = call float @dx.op.dot3.f32(i32 55, float %9320, float %9321, float %9322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9331 = call float @dx.op.dot3.f32(i32 55, float %9326, float %9327, float %9328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9332 = select i1 %271, float %9330, float %9320
  %9333 = select i1 %271, float %9330, float %9321
  %9334 = select i1 %271, float 1.000000e+00, float %9322
  %9335 = select i1 %271, float %9331, float %9326
  %9336 = select i1 %271, float 0.000000e+00, float %9327
  %9337 = select i1 %271, float 0.000000e+00, float %9328
  %9338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9339 = extractvalue %dx.types.CBufRet.i32 %9338, 3
  %9340 = and i32 %9339, 3
  %9341 = icmp ne i32 %9340, 0
  %9342 = and i32 %9339, 4
  %9343 = icmp ne i32 %9342, 0
  %9344 = and i1 %9341, %9343
  %9345 = and i1 %271, %9344
  br i1 %9345, label %9346, label %9352

; <label>:9346                                    ; preds = %9319
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9349 = fadd fast float %9329, -1.000000e+00
  %9350 = fmul fast float %9348, %9349
  %9351 = fadd fast float %9350, 1.000000e+00
  br label %9352

; <label>:9352                                    ; preds = %9346, %9319
  %9353 = phi float [ %9351, %9346 ], [ %9329, %9319 ]
  %9354 = fadd fast float %9111, %9108
  %9355 = fmul fast float %9332, %9354
  %9356 = fadd fast float %9355, %9335
  %9357 = fadd fast float %9112, %9109
  %9358 = fmul fast float %9333, %9357
  %9359 = fadd fast float %9358, %9336
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 0
  br i1 %271, label %9362, label %9386

; <label>:9362                                    ; preds = %9352
  %9363 = fadd fast float %9356, %9359
  %9364 = fmul fast float %9361, %9363
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9367 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %9368 = fsub fast float %7670, %7664
  %9369 = fadd fast float %9368, %7671
  %9370 = fsub fast float %9369, %9367
  %9371 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %9372 = fmul fast float %9370, %9371
  %9373 = call float @dx.op.unary.f32(i32 7, float %9372)  ; Saturate(value)
  %9374 = fsub fast float %9373, %9366
  %9375 = fmul fast float %9374, %9353
  %9376 = fadd fast float %9375, %9366
  %9377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9377, 0
  %9379 = fsub fast float %9376, %9378
  %9380 = fmul fast float %9379, 1.000000e+01
  %9381 = call float @dx.op.unary.f32(i32 7, float %9380)  ; Saturate(value)
  %9382 = fsub fast float %4245, %7661
  %9383 = fmul fast float %9381, %9382
  %9384 = fadd fast float %9383, %7661
  %9385 = fmul fast float %9384, %9376
  br label %9410

; <label>:9386                                    ; preds = %9352
  %9387 = fadd fast float %9113, %9110
  %9388 = fmul fast float %9334, %9387
  %9389 = fadd fast float %9388, %9337
  %9390 = fmul fast float %9361, %9356
  %9391 = fmul fast float %9361, %9359
  %9392 = fmul fast float %9361, %9389
  %9393 = call float @dx.op.binary.f32(i32 35, float %9391, float %9392)  ; FMax(a,b)
  %9394 = call float @dx.op.binary.f32(i32 35, float %9390, float %9393)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 35, float %9394, float %7661)  ; FMax(a,b)
  %9396 = fcmp fast ugt float %9395, 0x3F10000000000000
  br i1 %9396, label %9398, label %9397

; <label>:9397                                    ; preds = %9386
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9398

; <label>:9398                                    ; preds = %9397, %9386
  %9399 = add i32 %58, 356
  %9400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9399, i32 undef)  ; BufferLoad(srv,index,wot)
  %9401 = extractvalue %dx.types.ResRet.i32 %9400, 0
  %9402 = and i32 %9401, 32
  %9403 = icmp eq i32 %9402, 0
  br i1 %9403, label %9410, label %9404

; <label>:9404                                    ; preds = %9398
  %9405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.f32 %9405, 0
  %9407 = fmul fast float %9406, 0x3FE99999A0000000
  %9408 = fadd fast float %9406, %9390
  %9409 = fadd fast float %9407, %9392
  br label %9410

; <label>:9410                                    ; preds = %9404, %9398, %9362
  %9411 = phi float [ %9364, %9362 ], [ %9408, %9404 ], [ %9390, %9398 ]
  %9412 = phi float [ %9385, %9362 ], [ %9391, %9404 ], [ %9391, %9398 ]
  %9413 = phi float [ %9384, %9362 ], [ %9409, %9404 ], [ %9392, %9398 ]
  %9414 = phi float [ %9384, %9362 ], [ %7661, %9404 ], [ %7661, %9398 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9411, float 3.225500e+04)  ; FMin(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9412, float 3.225500e+04)  ; FMin(a,b)
  %9417 = call float @dx.op.binary.f32(i32 36, float %9413, float 3.225500e+04)  ; FMin(a,b)
  %9418 = call float @dx.op.binary.f32(i32 36, float %9414, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

