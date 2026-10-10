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
; shader hash: bf37397c17126bce4159a63fa3dd7d97
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
  br i1 %717, label %1252, label %718

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
  %1239 = add i32 %58, 96
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = lshr i32 %1241, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1248 = fmul fast float %1246, %1247
  %1249 = fadd fast float %1248, %1243
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  br label %1252

; <label>:1252                                    ; preds = %1235, %703
  %1253 = phi float [ 0.000000e+00, %703 ], [ %1189, %1235 ]
  %1254 = phi float [ 0.000000e+00, %703 ], [ %1190, %1235 ]
  %1255 = phi float [ 0.000000e+00, %703 ], [ %1108, %1235 ]
  %1256 = phi float [ 0.000000e+00, %703 ], [ %1109, %1235 ]
  %1257 = phi float [ 0.000000e+00, %703 ], [ %1110, %1235 ]
  %1258 = phi float [ 0.000000e+00, %703 ], [ %1236, %1235 ]
  %1259 = phi float [ 0.000000e+00, %703 ], [ %1237, %1235 ]
  %1260 = phi float [ 0.000000e+00, %703 ], [ %1238, %1235 ]
  %1261 = phi float [ 0.000000e+00, %703 ], [ %1094, %1235 ]
  %1262 = phi float [ 0.000000e+00, %703 ], [ %890, %1235 ]
  %1263 = phi float [ 0.000000e+00, %703 ], [ %1188, %1235 ]
  %1264 = phi float [ 0.000000e+00, %703 ], [ %1191, %1235 ]
  %1265 = phi float [ 0.000000e+00, %703 ], [ %1251, %1235 ]
  br i1 %651, label %1992, label %1266

; <label>:1266                                    ; preds = %1252
  %1267 = icmp ult i32 %709, 2
  %1268 = add i32 %58, 40
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %58, 44
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = or i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1992, label %1276

; <label>:1276                                    ; preds = %1266
  %1277 = and i32 %1270, 262144
  %1278 = icmp ne i32 %1277, 0
  %1279 = select i1 %1278, float %66, float 1.000000e+00
  %1280 = select i1 %1278, float %67, float 0.000000e+00
  %1281 = select i1 %1278, float %68, float 0.000000e+00
  %1282 = select i1 %1278, float %69, float 1.000000e+00
  %1283 = select i1 %1278, float %70, float %98
  %1284 = select i1 %1278, float %71, float %99
  %1285 = add i32 %58, 300
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = lshr i32 %1287, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = fmul fast float %1289, 0x3F50624DE0000000
  %1291 = add i32 %58, 104
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 16
  %1295 = and i32 %1294, 255
  %1296 = lshr i32 %1293, 24
  %1297 = add i32 %58, 308
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 65535
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1299, 16
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = add i32 %58, 48
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = lshr i32 %1306, 22
  %1308 = shl nuw nsw i32 %1307, 5
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = shl i32 %1306, 4
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1306, 7
  %1314 = and i32 %1313, 32752
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1318 = fmul fast float %1317, 1.000000e+03
  %1319 = fmul fast float %1318, %430
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fadd fast float %1320, %418
  %1322 = fmul fast float %1318, %432
  %1323 = call float @dx.op.unary.f32(i32 22, float %1322)  ; Frc(value)
  %1324 = fadd fast float %1323, %419
  %1325 = fmul fast float %1290, %1318
  %1326 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1327 = fmul fast float %1326, 0x401921FB60000000
  %1328 = fadd fast float %1327, %1309
  %1329 = call float @dx.op.unary.f32(i32 13, float %1328)  ; Sin(value)
  %1330 = call float @dx.op.unary.f32(i32 12, float %1328)  ; Cos(value)
  %1331 = fsub fast float -0.000000e+00, %1329
  %1332 = fadd fast float %1283, -5.000000e-01
  %1333 = fadd fast float %1284, -5.000000e-01
  %1334 = fmul fast float %1301, %1332
  %1335 = fmul fast float %1303, %1333
  %1336 = fadd fast float %1334, 5.000000e-01
  %1337 = fadd fast float %1335, 5.000000e-01
  %1338 = fmul fast float %1312, %1336
  %1339 = fmul fast float %1315, %1337
  %1340 = fmul fast float %1330, %1338
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1331, float %1339, float %1340)  ; FMad(a,b,c)
  %1342 = fmul fast float %1329, %1338
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1339, float %1342)  ; FMad(a,b,c)
  %1344 = fadd fast float %1321, %1341
  %1345 = fadd fast float %1324, %1343
  %1346 = icmp ugt i32 %1295, 1
  %1347 = icmp ugt i32 %1293, 33554431
  %1348 = or i1 %1347, %1346
  br i1 %1348, label %1349, label %1374

; <label>:1349                                    ; preds = %1276
  %1350 = add i32 %58, 244
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = lshr i32 %1352, 16
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = fmul fast float %1317, %1354
  %1356 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1357 = mul nuw nsw i32 %1295, %1296
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1356, %1358
  %1360 = call float @dx.op.unary.f32(i32 27, float %1359)  ; Round_ni(value)
  %1361 = fptoui float %1360 to i32
  %1362 = urem i32 %1361, %1295
  %1363 = udiv i32 %1361, %1296
  %1364 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1365 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1366 = uitofp i32 %1362 to float
  %1367 = uitofp i32 %1363 to float
  %1368 = fadd fast float %1364, %1366
  %1369 = fadd fast float %1365, %1367
  %1370 = uitofp i32 %1295 to float
  %1371 = uitofp i32 %1296 to float
  %1372 = fdiv fast float %1368, %1370
  %1373 = fdiv fast float %1369, %1371
  br label %1374

; <label>:1374                                    ; preds = %1349, %1276
  %1375 = phi float [ %1372, %1349 ], [ %1344, %1276 ]
  %1376 = phi float [ %1373, %1349 ], [ %1345, %1276 ]
  %1377 = and i32 %1270, 256
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1425, label %1379

; <label>:1379                                    ; preds = %1374
  %1380 = add i32 %58, 476
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %1382, 0
  %1384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1384, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = add i32 %58, 116
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = shl i32 %1389, 4
  %1391 = and i32 %1390, 32752
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1389, 7
  %1394 = and i32 %1393, 32752
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = fsub fast float 1.000000e+00, %706
  %1397 = call float @dx.op.binary.f32(i32 35, float %1396, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1398 = bitcast float %706 to i32
  %1399 = sitofp i32 %1398 to float
  %1400 = fadd fast float %1399, 0xC1CFBF8940000000
  %1401 = fmul fast float %1395, %1400
  %1402 = fadd fast float %1401, 0x41CFBF8940000000
  %1403 = fptosi float %1402 to i32
  %1404 = bitcast i32 %1403 to float
  %1405 = bitcast float %1397 to i32
  %1406 = sitofp i32 %1405 to float
  %1407 = fadd fast float %1406, 0xC1CFBF8940000000
  %1408 = fmul fast float %1407, %1395
  %1409 = fadd fast float %1408, 0x41CFBF8940000000
  %1410 = fptosi float %1409 to i32
  %1411 = bitcast i32 %1410 to float
  %1412 = fmul fast float %1404, %1392
  %1413 = fmul fast float %1411, %1392
  %1414 = fsub fast float %1397, %1412
  %1415 = fadd fast float %1413, %1397
  %1416 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1417 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1418 = fsub fast float %1386, %1416
  %1419 = fsub fast float %1417, %1416
  %1420 = bitcast float %1419 to i32
  %1421 = sub nsw i32 2129859010, %1420
  %1422 = bitcast i32 %1421 to float
  %1423 = fmul fast float %1422, %1418
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  br label %1425

; <label>:1425                                    ; preds = %1379, %1374
  %1426 = phi float [ %1424, %1379 ], [ %706, %1374 ]
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 128
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1447, label %1431

; <label>:1431                                    ; preds = %1425
  %1432 = add i32 %58, 460
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 524288
  %1442 = icmp ne i32 %1441, 0
  %1443 = fcmp fast ogt float %1438, 0x3FE0101020000000
  %1444 = select i1 %1443, float 1.000000e+00, float 0.000000e+00
  %1445 = select i1 %1442, float %1444, float %1438
  %1446 = fmul fast float %1445, %1426
  br label %1447

; <label>:1447                                    ; preds = %1431, %1425
  %1448 = phi float [ %1446, %1431 ], [ %1426, %1425 ]
  %1449 = fcmp fast ult float %1448, 0x3F70101020000000
  br i1 %1449, label %1992, label %1450

; <label>:1450                                    ; preds = %1447
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 16
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1653, label %1455

; <label>:1455                                    ; preds = %1450
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = add i32 %58, 412
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1462, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = and i32 %1457, 255
  %1469 = uitofp i32 %1468 to float
  %1470 = lshr i32 %1457, 8
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1467, %1469
  %1474 = fadd fast float %1473, %1472
  %1475 = fmul fast float %1474, 0x3F70101000000000
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 512
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1488, label %1480

; <label>:1480                                    ; preds = %1455
  %1481 = add i32 %58, 496
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %113, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  br label %1488

; <label>:1488                                    ; preds = %1480, %1455
  %1489 = phi float [ %1487, %1480 ], [ 1.000000e+00, %1455 ]
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 33554432
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1600, label %1494

; <label>:1494                                    ; preds = %1488
  %1495 = add i32 %58, 240
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = lshr i32 %1497, 16
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = add i32 %58, 244
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 65535
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 24
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = and i32 %1508, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1508, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1508, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = add i32 %58, 236
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = lshr i32 %1525, 24
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = and i32 %1525, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = lshr i32 %1525, 8
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = lshr i32 %1525, 16
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = bitcast float %1464 to i32
  %1541 = ashr i32 %1540, 1
  %1542 = sub nsw i32 1597463174, %1541
  %1543 = bitcast i32 %1542 to float
  %1544 = fmul fast float %1464, 5.000000e-01
  %1545 = fmul fast float %1543, %1543
  %1546 = fmul fast float %1545, %1544
  %1547 = fsub fast float 1.500000e+00, %1546
  %1548 = fmul fast float %1543, %1464
  %1549 = fmul fast float %1548, %1547
  %1550 = bitcast float %1465 to i32
  %1551 = ashr i32 %1550, 1
  %1552 = sub nsw i32 1597463174, %1551
  %1553 = bitcast i32 %1552 to float
  %1554 = fmul fast float %1465, 5.000000e-01
  %1555 = fmul fast float %1553, %1553
  %1556 = fmul fast float %1555, %1554
  %1557 = fsub fast float 1.500000e+00, %1556
  %1558 = fmul fast float %1553, %1465
  %1559 = fmul fast float %1558, %1557
  %1560 = bitcast float %1466 to i32
  %1561 = ashr i32 %1560, 1
  %1562 = sub nsw i32 1597463174, %1561
  %1563 = bitcast i32 %1562 to float
  %1564 = fmul fast float %1466, 5.000000e-01
  %1565 = fmul fast float %1563, %1563
  %1566 = fmul fast float %1565, %1564
  %1567 = fsub fast float 1.500000e+00, %1566
  %1568 = fmul fast float %1563, %1466
  %1569 = fmul fast float %1568, %1567
  %1570 = fsub fast float %1549, %1531
  %1571 = fsub fast float %1559, %1535
  %1572 = fsub fast float %1569, %1539
  %1573 = fmul fast float %1570, %1499
  %1574 = fmul fast float %1571, %1501
  %1575 = fmul fast float %1572, %1506
  %1576 = fadd fast float %1573, %1514
  %1577 = fadd fast float %1574, %1518
  %1578 = fadd fast float %1575, %1522
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1582 = fmul fast float %1579, %1579
  %1583 = fmul fast float %1580, %1580
  %1584 = fmul fast float %1581, %1581
  %1585 = fsub fast float %1582, %1464
  %1586 = fsub fast float %1583, %1465
  %1587 = fsub fast float %1584, %1466
  %1588 = fmul fast float %1585, %1489
  %1589 = fmul fast float %1586, %1489
  %1590 = fmul fast float %1587, %1489
  %1591 = fadd fast float %1588, %1464
  %1592 = fadd fast float %1589, %1465
  %1593 = fadd fast float %1590, %1466
  %1594 = fadd fast float %1511, %1475
  %1595 = fsub fast float %1594, %1528
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = fsub fast float %1596, %1475
  %1598 = fmul fast float %1597, %1489
  %1599 = fadd fast float %1598, %1475
  br label %1653

; <label>:1600                                    ; preds = %1488
  %1601 = and i32 %1491, 134217728
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1637, label %1603

; <label>:1603                                    ; preds = %1600
  %1604 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %1606 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fadd fast float %1606, -5.000000e-01
  %1610 = fmul fast float %1607, %1489
  %1611 = fmul fast float %1608, %1489
  %1612 = fmul fast float %1609, %1489
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = fadd fast float %1612, 5.000000e-01
  %1616 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1619 = fmul fast float %1613, 2.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1620, %1616
  %1622 = fadd fast float %1621, %1619
  %1623 = fmul fast float %1622, %1616
  %1624 = fmul fast float %1614, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1625, %1617
  %1627 = fadd fast float %1626, %1624
  %1628 = fmul fast float %1627, %1617
  %1629 = fmul fast float %1615, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1618
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1618
  %1634 = fmul fast float %1623, %1623
  %1635 = fmul fast float %1628, %1628
  %1636 = fmul fast float %1633, %1633
  br label %1653

; <label>:1637                                    ; preds = %1600
  %1638 = fmul fast float %406, %406
  %1639 = fmul fast float %407, %407
  %1640 = fmul fast float %408, %408
  %1641 = fadd fast float %1638, -1.000000e+00
  %1642 = fadd fast float %1639, -1.000000e+00
  %1643 = fadd fast float %1640, -1.000000e+00
  %1644 = fmul fast float %1489, %1641
  %1645 = fmul fast float %1489, %1642
  %1646 = fmul fast float %1489, %1643
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fadd fast float %1645, 1.000000e+00
  %1649 = fadd fast float %1646, 1.000000e+00
  %1650 = fmul fast float %1647, %1464
  %1651 = fmul fast float %1648, %1465
  %1652 = fmul fast float %1649, %1466
  br label %1653

; <label>:1653                                    ; preds = %1637, %1603, %1494, %1450
  %1654 = phi float [ %1599, %1494 ], [ %1475, %1603 ], [ %1475, %1637 ], [ 0x3FA23C0BE0000000, %1450 ]
  %1655 = phi float [ %1591, %1494 ], [ %1634, %1603 ], [ %1650, %1637 ], [ 1.000000e+00, %1450 ]
  %1656 = phi float [ %1592, %1494 ], [ %1635, %1603 ], [ %1651, %1637 ], [ 1.000000e+00, %1450 ]
  %1657 = phi float [ %1593, %1494 ], [ %1636, %1603 ], [ %1652, %1637 ], [ 1.000000e+00, %1450 ]
  %1658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.i32 %1658, 1
  %1660 = and i32 %1659, 1
  %1661 = icmp ne i32 %1660, 0
  %1662 = add i32 %58, 356
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 32
  %1666 = icmp ne i32 %1665, 0
  %1667 = and i1 %1661, %1666
  %1668 = select i1 %1667, float 1.000000e+00, float %1655
  %1669 = select i1 %1667, float 0x3FD3333340000000, float %1656
  %1670 = select i1 %1667, float 0x3FD3333340000000, float %1657
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 32
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1747, label %1675

; <label>:1675                                    ; preds = %1653
  %1676 = add i32 %58, 108
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %58, 428
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = add i32 %1681, 0
  %1683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1683, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1685 = extractvalue %dx.types.ResRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.ResRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.ResRet.f32 %1684, 2
  %1688 = extractvalue %dx.types.ResRet.f32 %1684, 3
  %1689 = and i32 %1678, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = lshr i32 %1678, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = lshr i32 %1678, 16
  %1695 = and i32 %1694, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = fmul fast float %1696, 0x3F70101000000000
  %1698 = fmul fast float %1685, %1690
  %1699 = fadd fast float %1698, %1693
  %1700 = fmul fast float %1699, 0x3F70101000000000
  %1701 = fadd fast float %1686, -5.000000e-01
  %1702 = fadd fast float %1688, -5.000000e-01
  %1703 = fmul fast float %1701, %1697
  %1704 = fmul fast float %1702, %1697
  %1705 = fadd fast float %1703, 5.000000e-01
  %1706 = fadd fast float %1704, 5.000000e-01
  %1707 = fmul fast float %1705, 2.000000e+00
  %1708 = fadd fast float %1707, -1.000000e+00
  %1709 = fmul fast float %1706, 2.000000e+00
  %1710 = fadd fast float %1709, -1.000000e+00
  %1711 = fadd fast float %1708, %1710
  %1712 = fmul fast float %1711, 5.000000e-01
  %1713 = fsub fast float %1708, %1710
  %1714 = fmul fast float %1713, 5.000000e-01
  %1715 = call float @dx.op.unary.f32(i32 6, float %1712)  ; FAbs(value)
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1718 = fsub fast float %1716, %1717
  %1719 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1714, float %1718, float %1712, float %1714, float %1718)  ; Dot3(ax,ay,az,bx,by,bz)
  %1720 = call float @dx.op.unary.f32(i32 25, float %1719)  ; Rsqrt(value)
  %1721 = fmul fast float %1712, %1720
  %1722 = fmul fast float %1714, %1720
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 67108864
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1743, label %1727

; <label>:1727                                    ; preds = %1675
  %1728 = add i32 %58, 296
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 65535
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = lshr i32 %1730, 16
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = fsub fast float %1700, %1738
  %1740 = fmul fast float %1739, %1732
  %1741 = fadd fast float %1740, %1736
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  br label %1743

; <label>:1743                                    ; preds = %1727, %1675
  %1744 = phi float [ %1742, %1727 ], [ %1700, %1675 ]
  %1745 = call float @dx.op.dot2.f32(i32 54, float %1721, float %1722, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  %1746 = call float @dx.op.dot2.f32(i32 54, float %1721, float %1722, float %1281, float %1282)  ; Dot2(ax,ay,bx,by)
  br label %1747

; <label>:1747                                    ; preds = %1743, %1653
  %1748 = phi float [ %1744, %1743 ], [ 0x3FD6666660000000, %1653 ]
  %1749 = phi float [ %1745, %1743 ], [ 0.000000e+00, %1653 ]
  %1750 = phi float [ %1746, %1743 ], [ 0.000000e+00, %1653 ]
  %1751 = phi float [ %1687, %1743 ], [ 1.000000e+00, %1653 ]
  %1752 = add i32 %58, 176
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = lshr i32 %1754, 22
  %1756 = shl nuw nsw i32 %1755, 5
  %1757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1756)  ; LegacyF16ToF32(value)
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 64
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1795, label %1762

; <label>:1762                                    ; preds = %1747
  %1763 = add i32 %58, 444
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = add i32 %1765, 0
  %1767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 131072
  %1771 = icmp eq i32 %1770, 0
  %1772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1767, %dx.types.Handle %112, float %1375, float %1376, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = fmul fast float %389, %1773
  %1777 = fmul fast float %390, %1774
  %1778 = fmul fast float %391, %1775
  br i1 %1771, label %1785, label %1779

; <label>:1779                                    ; preds = %1762
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1782 = fmul fast float %1781, %1776
  %1783 = fmul fast float %1781, %1777
  %1784 = fmul fast float %1781, %1778
  br label %1785

; <label>:1785                                    ; preds = %1779, %1762
  %1786 = phi float [ %1782, %1779 ], [ %1776, %1762 ]
  %1787 = phi float [ %1783, %1779 ], [ %1777, %1762 ]
  %1788 = phi float [ %1784, %1779 ], [ %1778, %1762 ]
  %1789 = fmul fast float %1786, %1757
  %1790 = select i1 %271, float %1789, float %1786
  %1791 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1787, float %1788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1792 = select i1 %271, float 0.000000e+00, float %1786
  %1793 = select i1 %271, float %1791, float %1787
  %1794 = select i1 %271, float 0.000000e+00, float %1788
  br label %1795

; <label>:1795                                    ; preds = %1785, %1747
  %1796 = phi float [ %1792, %1785 ], [ 0.000000e+00, %1747 ]
  %1797 = phi float [ %1793, %1785 ], [ 0.000000e+00, %1747 ]
  %1798 = phi float [ %1794, %1785 ], [ 0.000000e+00, %1747 ]
  %1799 = add i32 %58, 112
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 255
  %1803 = uitofp i32 %1802 to float
  %1804 = lshr i32 %1801, 8
  %1805 = and i32 %1804, 255
  %1806 = uitofp i32 %1805 to float
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1668, float %1669, float %1670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = fmul fast float %1806, %1807
  %1809 = fadd fast float %1808, %1803
  %1810 = fmul fast float %1809, 0x3F70101020000000
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  br i1 %1267, label %1812, label %1820

; <label>:1812                                    ; preds = %1795
  %1813 = fsub fast float 1.000000e+00, %1448
  %1814 = fmul fast float %1813, %1255
  %1815 = fmul fast float %1813, %1256
  %1816 = fmul fast float %1813, %1257
  %1817 = fmul fast float %1813, %1258
  %1818 = fmul fast float %1813, %1259
  %1819 = fmul fast float %1813, %1260
  br label %1820

; <label>:1820                                    ; preds = %1812, %1795
  %1821 = phi float [ %1814, %1812 ], [ %1255, %1795 ]
  %1822 = phi float [ %1815, %1812 ], [ %1256, %1795 ]
  %1823 = phi float [ %1816, %1812 ], [ %1257, %1795 ]
  %1824 = phi float [ %1817, %1812 ], [ %1258, %1795 ]
  %1825 = phi float [ %1818, %1812 ], [ %1259, %1795 ]
  %1826 = phi float [ %1819, %1812 ], [ %1260, %1795 ]
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 3
  %1830 = icmp eq i32 %1829, 3
  br i1 %1830, label %1909, label %1831

; <label>:1831                                    ; preds = %1820
  %1832 = and i32 %1828, 16
  %1833 = icmp ne i32 %1832, 0
  %1834 = select i1 %1833, float %1448, float 0.000000e+00
  %1835 = icmp eq i32 %1829, 0
  br i1 %1835, label %1836, label %1864

; <label>:1836                                    ; preds = %1831
  %1837 = and i32 %1828, 64
  %1838 = icmp ne i32 %1837, 0
  %1839 = select i1 %1838, float %1448, float 0.000000e+00
  %1840 = fsub fast float %1668, %1821
  %1841 = fsub fast float %1669, %1822
  %1842 = fsub fast float %1670, %1823
  %1843 = fmul fast float %1834, %1840
  %1844 = fmul fast float %1834, %1841
  %1845 = fmul fast float %1834, %1842
  %1846 = fadd fast float %1843, %1821
  %1847 = fadd fast float %1844, %1822
  %1848 = fadd fast float %1845, %1823
  %1849 = fsub fast float %1654, %1261
  %1850 = fmul fast float %1834, %1849
  %1851 = fadd fast float %1850, %1261
  %1852 = fsub fast float %1796, %1824
  %1853 = fsub fast float %1797, %1825
  %1854 = fsub fast float %1798, %1826
  %1855 = fmul fast float %1839, %1852
  %1856 = fmul fast float %1839, %1853
  %1857 = fmul fast float %1839, %1854
  %1858 = fadd fast float %1855, %1824
  %1859 = fadd fast float %1856, %1825
  %1860 = fadd fast float %1857, %1826
  %1861 = fsub fast float %1811, %1265
  %1862 = fmul fast float %1834, %1861
  %1863 = fadd fast float %1862, %1265
  br label %1909

; <label>:1864                                    ; preds = %1831
  %1865 = icmp eq i32 %1829, 1
  br i1 %1865, label %1866, label %1879

; <label>:1866                                    ; preds = %1864
  %1867 = fadd fast float %1668, -1.000000e+00
  %1868 = fadd fast float %1669, -1.000000e+00
  %1869 = fadd fast float %1670, -1.000000e+00
  %1870 = fmul fast float %1834, %1867
  %1871 = fmul fast float %1834, %1868
  %1872 = fmul fast float %1834, %1869
  %1873 = fadd fast float %1870, 1.000000e+00
  %1874 = fadd fast float %1871, 1.000000e+00
  %1875 = fadd fast float %1872, 1.000000e+00
  %1876 = fmul fast float %1873, %1821
  %1877 = fmul fast float %1874, %1822
  %1878 = fmul fast float %1875, %1823
  br label %1909

; <label>:1879                                    ; preds = %1864
  %1880 = icmp eq i32 %1829, 2
  br i1 %1880, label %1881, label %1909

; <label>:1881                                    ; preds = %1879
  %1882 = call float @dx.op.unary.f32(i32 24, float %1668)  ; Sqrt(value)
  %1883 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1884 = call float @dx.op.unary.f32(i32 24, float %1670)  ; Sqrt(value)
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fadd fast float %1883, -5.000000e-01
  %1887 = fadd fast float %1884, -5.000000e-01
  %1888 = fmul fast float %1885, %1834
  %1889 = fmul fast float %1886, %1834
  %1890 = fmul fast float %1887, %1834
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fmul fast float %1891, 2.000000e+00
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1895, %1821
  %1897 = fadd fast float %1896, %1894
  %1898 = fmul fast float %1897, %1821
  %1899 = fmul fast float %1892, 2.000000e+00
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = fmul fast float %1900, %1822
  %1902 = fadd fast float %1901, %1899
  %1903 = fmul fast float %1902, %1822
  %1904 = fmul fast float %1893, 2.000000e+00
  %1905 = fsub fast float 1.000000e+00, %1904
  %1906 = fmul fast float %1905, %1823
  %1907 = fadd fast float %1906, %1904
  %1908 = fmul fast float %1907, %1823
  br label %1909

; <label>:1909                                    ; preds = %1881, %1879, %1866, %1836, %1820
  %1910 = phi float [ %1821, %1820 ], [ %1898, %1881 ], [ %1821, %1879 ], [ %1876, %1866 ], [ %1846, %1836 ]
  %1911 = phi float [ %1822, %1820 ], [ %1903, %1881 ], [ %1822, %1879 ], [ %1877, %1866 ], [ %1847, %1836 ]
  %1912 = phi float [ %1823, %1820 ], [ %1908, %1881 ], [ %1823, %1879 ], [ %1878, %1866 ], [ %1848, %1836 ]
  %1913 = phi float [ %1824, %1820 ], [ %1824, %1881 ], [ %1824, %1879 ], [ %1824, %1866 ], [ %1858, %1836 ]
  %1914 = phi float [ %1825, %1820 ], [ %1825, %1881 ], [ %1825, %1879 ], [ %1825, %1866 ], [ %1859, %1836 ]
  %1915 = phi float [ %1826, %1820 ], [ %1826, %1881 ], [ %1826, %1879 ], [ %1826, %1866 ], [ %1860, %1836 ]
  %1916 = phi float [ %1261, %1820 ], [ %1261, %1881 ], [ %1261, %1879 ], [ %1261, %1866 ], [ %1851, %1836 ]
  %1917 = phi float [ %1265, %1820 ], [ %1265, %1881 ], [ %1265, %1879 ], [ %1265, %1866 ], [ %1863, %1836 ]
  %1918 = and i32 %1828, 12
  %1919 = icmp eq i32 %1918, 12
  br i1 %1919, label %1992, label %1920

; <label>:1920                                    ; preds = %1909
  %1921 = and i32 %1828, 2097184
  %1922 = icmp eq i32 %1921, 2097184
  %1923 = select i1 %1922, float %1448, float 0.000000e+00
  %1924 = and i32 %1828, 4194336
  %1925 = icmp eq i32 %1924, 4194336
  %1926 = select i1 %1925, float %1448, float 0.000000e+00
  %1927 = and i32 %1828, 8388640
  %1928 = icmp eq i32 %1927, 8388640
  %1929 = select i1 %1928, float %1448, float 0.000000e+00
  %1930 = icmp eq i32 %1918, 0
  br i1 %1930, label %1931, label %1944

; <label>:1931                                    ; preds = %1920
  %1932 = fsub fast float %1749, %1253
  %1933 = fsub fast float %1750, %1254
  %1934 = fmul fast float %1923, %1932
  %1935 = fmul fast float %1923, %1933
  %1936 = fadd fast float %1934, %1253
  %1937 = fadd fast float %1935, %1254
  %1938 = fsub fast float %1751, %1264
  %1939 = fmul fast float %1926, %1938
  %1940 = fadd fast float %1939, %1264
  %1941 = fsub fast float %1748, %1263
  %1942 = fmul fast float %1929, %1941
  %1943 = fadd fast float %1942, %1263
  br label %1992

; <label>:1944                                    ; preds = %1920
  %1945 = icmp eq i32 %1918, 4
  br i1 %1945, label %1946, label %1978

; <label>:1946                                    ; preds = %1944
  %1947 = fmul fast float %1923, %1749
  %1948 = fmul fast float %1923, %1750
  %1949 = fadd fast float %1947, %1253
  %1950 = fadd fast float %1948, %1254
  %1951 = call float @dx.op.binary.f32(i32 36, float %1264, float %1751)  ; FMin(a,b)
  %1952 = fsub fast float %1951, %1264
  %1953 = fmul fast float %1952, %1926
  %1954 = fadd fast float %1953, %1264
  %1955 = fadd fast float %1748, %1263
  %1956 = fmul fast float %1955, 0x3FF337FAE0000000
  %1957 = fmul fast float %1263, %1263
  %1958 = fmul fast float %1748, %1748
  %1959 = fadd fast float %1958, %1957
  %1960 = fmul fast float %1959, 0x3FE5152B00000000
  %1961 = fmul fast float %1263, 0xBFCC1F85E0000000
  %1962 = fmul fast float %1961, %1748
  %1963 = fadd fast float %1962, 0xBFE1363700000000
  %1964 = fadd fast float %1963, %1956
  %1965 = fsub fast float %1964, %1960
  %1966 = fmul fast float %1955, 0x3FBA6F0D00000000
  %1967 = fmul fast float %1959, 0x3FD0432880000000
  %1968 = fmul fast float %1263, 0xBFEF110800000000
  %1969 = fmul fast float %1968, %1748
  %1970 = fadd fast float %1969, 1.000000e+00
  %1971 = fsub fast float %1970, %1966
  %1972 = fadd fast float %1971, %1967
  %1973 = fdiv fast float %1965, %1972
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fsub fast float %1974, %1263
  %1976 = fmul fast float %1975, %1929
  %1977 = fadd fast float %1976, %1263
  br label %1992

; <label>:1978                                    ; preds = %1944
  %1979 = icmp eq i32 %1918, 8
  br i1 %1979, label %1980, label %1992

; <label>:1980                                    ; preds = %1978
  %1981 = fmul fast float %1923, %1749
  %1982 = fmul fast float %1923, %1750
  %1983 = fadd fast float %1981, %1253
  %1984 = fadd fast float %1982, %1254
  %1985 = call float @dx.op.binary.f32(i32 36, float %1264, float %1751)  ; FMin(a,b)
  %1986 = fsub fast float %1985, %1264
  %1987 = fmul fast float %1986, %1926
  %1988 = fadd fast float %1987, %1264
  %1989 = fsub fast float %1748, %1263
  %1990 = fmul fast float %1929, %1989
  %1991 = fadd fast float %1990, %1263
  br label %1992

; <label>:1992                                    ; preds = %1980, %1978, %1946, %1931, %1909, %1447, %1266, %1252
  %1993 = phi float [ %1253, %1909 ], [ %1253, %1447 ], [ %1253, %1252 ], [ %1983, %1980 ], [ %1253, %1978 ], [ %1949, %1946 ], [ %1936, %1931 ], [ %1253, %1266 ]
  %1994 = phi float [ %1254, %1909 ], [ %1254, %1447 ], [ %1254, %1252 ], [ %1984, %1980 ], [ %1254, %1978 ], [ %1950, %1946 ], [ %1937, %1931 ], [ %1254, %1266 ]
  %1995 = phi float [ %1910, %1909 ], [ %1255, %1447 ], [ %1255, %1252 ], [ %1910, %1980 ], [ %1910, %1978 ], [ %1910, %1946 ], [ %1910, %1931 ], [ %1255, %1266 ]
  %1996 = phi float [ %1911, %1909 ], [ %1256, %1447 ], [ %1256, %1252 ], [ %1911, %1980 ], [ %1911, %1978 ], [ %1911, %1946 ], [ %1911, %1931 ], [ %1256, %1266 ]
  %1997 = phi float [ %1912, %1909 ], [ %1257, %1447 ], [ %1257, %1252 ], [ %1912, %1980 ], [ %1912, %1978 ], [ %1912, %1946 ], [ %1912, %1931 ], [ %1257, %1266 ]
  %1998 = phi float [ %1913, %1909 ], [ %1258, %1447 ], [ %1258, %1252 ], [ %1913, %1980 ], [ %1913, %1978 ], [ %1913, %1946 ], [ %1913, %1931 ], [ %1258, %1266 ]
  %1999 = phi float [ %1914, %1909 ], [ %1259, %1447 ], [ %1259, %1252 ], [ %1914, %1980 ], [ %1914, %1978 ], [ %1914, %1946 ], [ %1914, %1931 ], [ %1259, %1266 ]
  %2000 = phi float [ %1915, %1909 ], [ %1260, %1447 ], [ %1260, %1252 ], [ %1915, %1980 ], [ %1915, %1978 ], [ %1915, %1946 ], [ %1915, %1931 ], [ %1260, %1266 ]
  %2001 = phi float [ %1916, %1909 ], [ %1261, %1447 ], [ %1261, %1252 ], [ %1916, %1980 ], [ %1916, %1978 ], [ %1916, %1946 ], [ %1916, %1931 ], [ %1261, %1266 ]
  %2002 = phi float [ %1263, %1909 ], [ %1263, %1447 ], [ %1263, %1252 ], [ %1991, %1980 ], [ %1263, %1978 ], [ %1977, %1946 ], [ %1943, %1931 ], [ %1263, %1266 ]
  %2003 = phi float [ %1264, %1909 ], [ %1264, %1447 ], [ %1264, %1252 ], [ %1988, %1980 ], [ %1264, %1978 ], [ %1954, %1946 ], [ %1940, %1931 ], [ %1264, %1266 ]
  %2004 = phi float [ %1917, %1909 ], [ %1265, %1447 ], [ %1265, %1252 ], [ %1917, %1980 ], [ %1917, %1978 ], [ %1917, %1946 ], [ %1917, %1931 ], [ %1265, %1266 ]
  br i1 %653, label %2731, label %2005

; <label>:2005                                    ; preds = %1992
  %2006 = icmp ult i32 %709, 3
  %2007 = add i32 %58, 56
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %58, 60
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = or i32 %2012, %2009
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2731, label %2015

; <label>:2015                                    ; preds = %2005
  %2016 = and i32 %2009, 262144
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %66, float 1.000000e+00
  %2019 = select i1 %2017, float %67, float 0.000000e+00
  %2020 = select i1 %2017, float %68, float 0.000000e+00
  %2021 = select i1 %2017, float %69, float 1.000000e+00
  %2022 = select i1 %2017, float %70, float %98
  %2023 = select i1 %2017, float %71, float %99
  %2024 = add i32 %58, 316
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 16
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = fmul fast float %2028, 0x3F50624DE0000000
  %2030 = add i32 %58, 120
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = lshr i32 %2032, 16
  %2034 = and i32 %2033, 255
  %2035 = lshr i32 %2032, 24
  %2036 = add i32 %58, 324
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 65535
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = lshr i32 %2038, 16
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = add i32 %58, 64
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = lshr i32 %2045, 22
  %2047 = shl nuw nsw i32 %2046, 5
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = shl i32 %2045, 4
  %2050 = and i32 %2049, 32752
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = lshr i32 %2045, 7
  %2053 = and i32 %2052, 32752
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2057 = fmul fast float %2056, 1.000000e+03
  %2058 = fmul fast float %2057, %537
  %2059 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2060 = fadd fast float %2059, %525
  %2061 = fmul fast float %2057, %539
  %2062 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2063 = fadd fast float %2062, %526
  %2064 = fmul fast float %2029, %2057
  %2065 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2066 = fmul fast float %2065, 0x401921FB60000000
  %2067 = fadd fast float %2066, %2048
  %2068 = call float @dx.op.unary.f32(i32 13, float %2067)  ; Sin(value)
  %2069 = call float @dx.op.unary.f32(i32 12, float %2067)  ; Cos(value)
  %2070 = fsub fast float -0.000000e+00, %2068
  %2071 = fadd fast float %2022, -5.000000e-01
  %2072 = fadd fast float %2023, -5.000000e-01
  %2073 = fmul fast float %2040, %2071
  %2074 = fmul fast float %2042, %2072
  %2075 = fadd fast float %2073, 5.000000e-01
  %2076 = fadd fast float %2074, 5.000000e-01
  %2077 = fmul fast float %2051, %2075
  %2078 = fmul fast float %2054, %2076
  %2079 = fmul fast float %2069, %2077
  %2080 = call float @dx.op.tertiary.f32(i32 46, float %2070, float %2078, float %2079)  ; FMad(a,b,c)
  %2081 = fmul fast float %2068, %2077
  %2082 = call float @dx.op.tertiary.f32(i32 46, float %2069, float %2078, float %2081)  ; FMad(a,b,c)
  %2083 = fadd fast float %2060, %2080
  %2084 = fadd fast float %2063, %2082
  %2085 = icmp ugt i32 %2034, 1
  %2086 = icmp ugt i32 %2032, 33554431
  %2087 = or i1 %2086, %2085
  br i1 %2087, label %2088, label %2113

; <label>:2088                                    ; preds = %2015
  %2089 = add i32 %58, 260
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = lshr i32 %2091, 16
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = fmul fast float %2056, %2093
  %2095 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2096 = mul nuw nsw i32 %2034, %2035
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2095, %2097
  %2099 = call float @dx.op.unary.f32(i32 27, float %2098)  ; Round_ni(value)
  %2100 = fptoui float %2099 to i32
  %2101 = urem i32 %2100, %2034
  %2102 = udiv i32 %2100, %2035
  %2103 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2104 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2105 = uitofp i32 %2101 to float
  %2106 = uitofp i32 %2102 to float
  %2107 = fadd fast float %2103, %2105
  %2108 = fadd fast float %2104, %2106
  %2109 = uitofp i32 %2034 to float
  %2110 = uitofp i32 %2035 to float
  %2111 = fdiv fast float %2107, %2109
  %2112 = fdiv fast float %2108, %2110
  br label %2113

; <label>:2113                                    ; preds = %2088, %2015
  %2114 = phi float [ %2111, %2088 ], [ %2083, %2015 ]
  %2115 = phi float [ %2112, %2088 ], [ %2084, %2015 ]
  %2116 = and i32 %2009, 256
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %2164, label %2118

; <label>:2118                                    ; preds = %2113
  %2119 = add i32 %58, 480
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = add i32 %2121, 0
  %2123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2123, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = add i32 %58, 132
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = shl i32 %2128, 4
  %2130 = and i32 %2129, 32752
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = lshr i32 %2128, 7
  %2133 = and i32 %2132, 32752
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = fsub fast float 1.000000e+00, %705
  %2136 = call float @dx.op.binary.f32(i32 35, float %2135, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2137 = bitcast float %705 to i32
  %2138 = sitofp i32 %2137 to float
  %2139 = fadd fast float %2138, 0xC1CFBF8940000000
  %2140 = fmul fast float %2134, %2139
  %2141 = fadd fast float %2140, 0x41CFBF8940000000
  %2142 = fptosi float %2141 to i32
  %2143 = bitcast i32 %2142 to float
  %2144 = bitcast float %2136 to i32
  %2145 = sitofp i32 %2144 to float
  %2146 = fadd fast float %2145, 0xC1CFBF8940000000
  %2147 = fmul fast float %2146, %2134
  %2148 = fadd fast float %2147, 0x41CFBF8940000000
  %2149 = fptosi float %2148 to i32
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2143, %2131
  %2152 = fmul fast float %2150, %2131
  %2153 = fsub fast float %2136, %2151
  %2154 = fadd fast float %2152, %2136
  %2155 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2157 = fsub fast float %2125, %2155
  %2158 = fsub fast float %2156, %2155
  %2159 = bitcast float %2158 to i32
  %2160 = sub nsw i32 2129859010, %2159
  %2161 = bitcast i32 %2160 to float
  %2162 = fmul fast float %2161, %2157
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  br label %2164

; <label>:2164                                    ; preds = %2118, %2113
  %2165 = phi float [ %2163, %2118 ], [ %705, %2113 ]
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 128
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2186, label %2170

; <label>:2170                                    ; preds = %2164
  %2171 = add i32 %58, 464
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2175, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 524288
  %2181 = icmp ne i32 %2180, 0
  %2182 = fcmp fast ogt float %2177, 0x3FE0101020000000
  %2183 = select i1 %2182, float 1.000000e+00, float 0.000000e+00
  %2184 = select i1 %2181, float %2183, float %2177
  %2185 = fmul fast float %2184, %2165
  br label %2186

; <label>:2186                                    ; preds = %2170, %2164
  %2187 = phi float [ %2185, %2170 ], [ %2165, %2164 ]
  %2188 = fcmp fast ult float %2187, 0x3F70101020000000
  br i1 %2188, label %2731, label %2189

; <label>:2189                                    ; preds = %2186
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 16
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2392, label %2194

; <label>:2194                                    ; preds = %2189
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = add i32 %58, 416
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = add i32 %2199, 0
  %2201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2201, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = extractvalue %dx.types.ResRet.f32 %2202, 1
  %2205 = extractvalue %dx.types.ResRet.f32 %2202, 2
  %2206 = extractvalue %dx.types.ResRet.f32 %2202, 3
  %2207 = and i32 %2196, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = lshr i32 %2196, 8
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2206, %2208
  %2213 = fadd fast float %2212, %2211
  %2214 = fmul fast float %2213, 0x3F70101000000000
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 512
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2227, label %2219

; <label>:2219                                    ; preds = %2194
  %2220 = add i32 %58, 500
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %113, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  br label %2227

; <label>:2227                                    ; preds = %2219, %2194
  %2228 = phi float [ %2226, %2219 ], [ 1.000000e+00, %2194 ]
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 33554432
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %2339, label %2233

; <label>:2233                                    ; preds = %2227
  %2234 = add i32 %58, 256
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 65535
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = lshr i32 %2236, 16
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = add i32 %58, 260
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 65535
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = lshr i32 %2247, 24
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = and i32 %2247, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2247, 8
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = lshr i32 %2247, 16
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = add i32 %58, 252
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = lshr i32 %2264, 24
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = and i32 %2264, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2264, 8
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = lshr i32 %2264, 16
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = bitcast float %2203 to i32
  %2280 = ashr i32 %2279, 1
  %2281 = sub nsw i32 1597463174, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2203, 5.000000e-01
  %2284 = fmul fast float %2282, %2282
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float 1.500000e+00, %2285
  %2287 = fmul fast float %2282, %2203
  %2288 = fmul fast float %2287, %2286
  %2289 = bitcast float %2204 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597463174, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2204, 5.000000e-01
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, %2293
  %2296 = fsub fast float 1.500000e+00, %2295
  %2297 = fmul fast float %2292, %2204
  %2298 = fmul fast float %2297, %2296
  %2299 = bitcast float %2205 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2205, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2205
  %2308 = fmul fast float %2307, %2306
  %2309 = fsub fast float %2288, %2270
  %2310 = fsub fast float %2298, %2274
  %2311 = fsub fast float %2308, %2278
  %2312 = fmul fast float %2309, %2238
  %2313 = fmul fast float %2310, %2240
  %2314 = fmul fast float %2311, %2245
  %2315 = fadd fast float %2312, %2253
  %2316 = fadd fast float %2313, %2257
  %2317 = fadd fast float %2314, %2261
  %2318 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2320 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2321 = fmul fast float %2318, %2318
  %2322 = fmul fast float %2319, %2319
  %2323 = fmul fast float %2320, %2320
  %2324 = fsub fast float %2321, %2203
  %2325 = fsub fast float %2322, %2204
  %2326 = fsub fast float %2323, %2205
  %2327 = fmul fast float %2324, %2228
  %2328 = fmul fast float %2325, %2228
  %2329 = fmul fast float %2326, %2228
  %2330 = fadd fast float %2327, %2203
  %2331 = fadd fast float %2328, %2204
  %2332 = fadd fast float %2329, %2205
  %2333 = fadd fast float %2250, %2214
  %2334 = fsub fast float %2333, %2267
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fsub fast float %2335, %2214
  %2337 = fmul fast float %2336, %2228
  %2338 = fadd fast float %2337, %2214
  br label %2392

; <label>:2339                                    ; preds = %2227
  %2340 = and i32 %2230, 134217728
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2376, label %2342

; <label>:2342                                    ; preds = %2339
  %2343 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2344 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %2346 = fadd fast float %2343, -5.000000e-01
  %2347 = fadd fast float %2344, -5.000000e-01
  %2348 = fadd fast float %2345, -5.000000e-01
  %2349 = fmul fast float %2346, %2228
  %2350 = fmul fast float %2347, %2228
  %2351 = fmul fast float %2348, %2228
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = fadd fast float %2350, 5.000000e-01
  %2354 = fadd fast float %2351, 5.000000e-01
  %2355 = call float @dx.op.unary.f32(i32 24, float %2203)  ; Sqrt(value)
  %2356 = call float @dx.op.unary.f32(i32 24, float %2204)  ; Sqrt(value)
  %2357 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2358 = fmul fast float %2352, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2355
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2355
  %2363 = fmul fast float %2353, 2.000000e+00
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2364, %2356
  %2366 = fadd fast float %2365, %2363
  %2367 = fmul fast float %2366, %2356
  %2368 = fmul fast float %2354, 2.000000e+00
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %2369, %2357
  %2371 = fadd fast float %2370, %2368
  %2372 = fmul fast float %2371, %2357
  %2373 = fmul fast float %2362, %2362
  %2374 = fmul fast float %2367, %2367
  %2375 = fmul fast float %2372, %2372
  br label %2392

; <label>:2376                                    ; preds = %2339
  %2377 = fmul fast float %513, %513
  %2378 = fmul fast float %514, %514
  %2379 = fmul fast float %515, %515
  %2380 = fadd fast float %2377, -1.000000e+00
  %2381 = fadd fast float %2378, -1.000000e+00
  %2382 = fadd fast float %2379, -1.000000e+00
  %2383 = fmul fast float %2228, %2380
  %2384 = fmul fast float %2228, %2381
  %2385 = fmul fast float %2228, %2382
  %2386 = fadd fast float %2383, 1.000000e+00
  %2387 = fadd fast float %2384, 1.000000e+00
  %2388 = fadd fast float %2385, 1.000000e+00
  %2389 = fmul fast float %2386, %2203
  %2390 = fmul fast float %2387, %2204
  %2391 = fmul fast float %2388, %2205
  br label %2392

; <label>:2392                                    ; preds = %2376, %2342, %2233, %2189
  %2393 = phi float [ %2338, %2233 ], [ %2214, %2342 ], [ %2214, %2376 ], [ 0x3FA23C0BE0000000, %2189 ]
  %2394 = phi float [ %2330, %2233 ], [ %2373, %2342 ], [ %2389, %2376 ], [ 1.000000e+00, %2189 ]
  %2395 = phi float [ %2331, %2233 ], [ %2374, %2342 ], [ %2390, %2376 ], [ 1.000000e+00, %2189 ]
  %2396 = phi float [ %2332, %2233 ], [ %2375, %2342 ], [ %2391, %2376 ], [ 1.000000e+00, %2189 ]
  %2397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.i32 %2397, 1
  %2399 = and i32 %2398, 1
  %2400 = icmp ne i32 %2399, 0
  %2401 = add i32 %58, 356
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 32
  %2405 = icmp ne i32 %2404, 0
  %2406 = and i1 %2400, %2405
  %2407 = select i1 %2406, float 1.000000e+00, float %2394
  %2408 = select i1 %2406, float 0x3FD3333340000000, float %2395
  %2409 = select i1 %2406, float 0x3FD3333340000000, float %2396
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 32
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2486, label %2414

; <label>:2414                                    ; preds = %2392
  %2415 = add i32 %58, 124
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %58, 432
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %2420, 0
  %2422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2422, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2424 = extractvalue %dx.types.ResRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.ResRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.ResRet.f32 %2423, 2
  %2427 = extractvalue %dx.types.ResRet.f32 %2423, 3
  %2428 = and i32 %2417, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = lshr i32 %2417, 8
  %2431 = and i32 %2430, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = lshr i32 %2417, 16
  %2434 = and i32 %2433, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = fmul fast float %2435, 0x3F70101000000000
  %2437 = fmul fast float %2424, %2429
  %2438 = fadd fast float %2437, %2432
  %2439 = fmul fast float %2438, 0x3F70101000000000
  %2440 = fadd fast float %2425, -5.000000e-01
  %2441 = fadd fast float %2427, -5.000000e-01
  %2442 = fmul fast float %2440, %2436
  %2443 = fmul fast float %2441, %2436
  %2444 = fadd fast float %2442, 5.000000e-01
  %2445 = fadd fast float %2443, 5.000000e-01
  %2446 = fmul fast float %2444, 2.000000e+00
  %2447 = fadd fast float %2446, -1.000000e+00
  %2448 = fmul fast float %2445, 2.000000e+00
  %2449 = fadd fast float %2448, -1.000000e+00
  %2450 = fadd fast float %2447, %2449
  %2451 = fmul fast float %2450, 5.000000e-01
  %2452 = fsub fast float %2447, %2449
  %2453 = fmul fast float %2452, 5.000000e-01
  %2454 = call float @dx.op.unary.f32(i32 6, float %2451)  ; FAbs(value)
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2457 = fsub fast float %2455, %2456
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2451, float %2453, float %2457, float %2451, float %2453, float %2457)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = call float @dx.op.unary.f32(i32 25, float %2458)  ; Rsqrt(value)
  %2460 = fmul fast float %2451, %2459
  %2461 = fmul fast float %2453, %2459
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 67108864
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2482, label %2466

; <label>:2466                                    ; preds = %2414
  %2467 = add i32 %58, 312
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 65535
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = lshr i32 %2469, 16
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = fsub fast float %2439, %2477
  %2479 = fmul fast float %2478, %2471
  %2480 = fadd fast float %2479, %2475
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  br label %2482

; <label>:2482                                    ; preds = %2466, %2414
  %2483 = phi float [ %2481, %2466 ], [ %2439, %2414 ]
  %2484 = call float @dx.op.dot2.f32(i32 54, float %2460, float %2461, float %2018, float %2019)  ; Dot2(ax,ay,bx,by)
  %2485 = call float @dx.op.dot2.f32(i32 54, float %2460, float %2461, float %2020, float %2021)  ; Dot2(ax,ay,bx,by)
  br label %2486

; <label>:2486                                    ; preds = %2482, %2392
  %2487 = phi float [ %2483, %2482 ], [ 0x3FD6666660000000, %2392 ]
  %2488 = phi float [ %2484, %2482 ], [ 0.000000e+00, %2392 ]
  %2489 = phi float [ %2485, %2482 ], [ 0.000000e+00, %2392 ]
  %2490 = phi float [ %2426, %2482 ], [ 1.000000e+00, %2392 ]
  %2491 = add i32 %58, 192
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = lshr i32 %2493, 22
  %2495 = shl nuw nsw i32 %2494, 5
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 64
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2534, label %2501

; <label>:2501                                    ; preds = %2486
  %2502 = add i32 %58, 448
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2504, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 131072
  %2510 = icmp eq i32 %2509, 0
  %2511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2506, %dx.types.Handle %112, float %2114, float %2115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.ResRet.f32 %2511, 2
  %2515 = fmul fast float %496, %2512
  %2516 = fmul fast float %497, %2513
  %2517 = fmul fast float %498, %2514
  br i1 %2510, label %2524, label %2518

; <label>:2518                                    ; preds = %2501
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = fmul fast float %2520, %2515
  %2522 = fmul fast float %2520, %2516
  %2523 = fmul fast float %2520, %2517
  br label %2524

; <label>:2524                                    ; preds = %2518, %2501
  %2525 = phi float [ %2521, %2518 ], [ %2515, %2501 ]
  %2526 = phi float [ %2522, %2518 ], [ %2516, %2501 ]
  %2527 = phi float [ %2523, %2518 ], [ %2517, %2501 ]
  %2528 = fmul fast float %2525, %2496
  %2529 = select i1 %271, float %2528, float %2525
  %2530 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2526, float %2527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2531 = select i1 %271, float 0.000000e+00, float %2525
  %2532 = select i1 %271, float %2530, float %2526
  %2533 = select i1 %271, float 0.000000e+00, float %2527
  br label %2534

; <label>:2534                                    ; preds = %2524, %2486
  %2535 = phi float [ %2531, %2524 ], [ 0.000000e+00, %2486 ]
  %2536 = phi float [ %2532, %2524 ], [ 0.000000e+00, %2486 ]
  %2537 = phi float [ %2533, %2524 ], [ 0.000000e+00, %2486 ]
  %2538 = add i32 %58, 128
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = lshr i32 %2540, 8
  %2544 = and i32 %2543, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2408, float %2409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = fmul fast float %2545, %2546
  %2548 = fadd fast float %2547, %2542
  %2549 = fmul fast float %2548, 0x3F70101020000000
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  br i1 %2006, label %2551, label %2559

; <label>:2551                                    ; preds = %2534
  %2552 = fsub fast float 1.000000e+00, %2187
  %2553 = fmul fast float %2552, %1995
  %2554 = fmul fast float %2552, %1996
  %2555 = fmul fast float %2552, %1997
  %2556 = fmul fast float %2552, %1998
  %2557 = fmul fast float %2552, %1999
  %2558 = fmul fast float %2552, %2000
  br label %2559

; <label>:2559                                    ; preds = %2551, %2534
  %2560 = phi float [ %2553, %2551 ], [ %1995, %2534 ]
  %2561 = phi float [ %2554, %2551 ], [ %1996, %2534 ]
  %2562 = phi float [ %2555, %2551 ], [ %1997, %2534 ]
  %2563 = phi float [ %2556, %2551 ], [ %1998, %2534 ]
  %2564 = phi float [ %2557, %2551 ], [ %1999, %2534 ]
  %2565 = phi float [ %2558, %2551 ], [ %2000, %2534 ]
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 3
  %2569 = icmp eq i32 %2568, 3
  br i1 %2569, label %2648, label %2570

; <label>:2570                                    ; preds = %2559
  %2571 = and i32 %2567, 16
  %2572 = icmp ne i32 %2571, 0
  %2573 = select i1 %2572, float %2187, float 0.000000e+00
  %2574 = icmp eq i32 %2568, 0
  br i1 %2574, label %2575, label %2603

; <label>:2575                                    ; preds = %2570
  %2576 = and i32 %2567, 64
  %2577 = icmp ne i32 %2576, 0
  %2578 = select i1 %2577, float %2187, float 0.000000e+00
  %2579 = fsub fast float %2407, %2560
  %2580 = fsub fast float %2408, %2561
  %2581 = fsub fast float %2409, %2562
  %2582 = fmul fast float %2573, %2579
  %2583 = fmul fast float %2573, %2580
  %2584 = fmul fast float %2573, %2581
  %2585 = fadd fast float %2582, %2560
  %2586 = fadd fast float %2583, %2561
  %2587 = fadd fast float %2584, %2562
  %2588 = fsub fast float %2393, %2001
  %2589 = fmul fast float %2573, %2588
  %2590 = fadd fast float %2589, %2001
  %2591 = fsub fast float %2535, %2563
  %2592 = fsub fast float %2536, %2564
  %2593 = fsub fast float %2537, %2565
  %2594 = fmul fast float %2578, %2591
  %2595 = fmul fast float %2578, %2592
  %2596 = fmul fast float %2578, %2593
  %2597 = fadd fast float %2594, %2563
  %2598 = fadd fast float %2595, %2564
  %2599 = fadd fast float %2596, %2565
  %2600 = fsub fast float %2550, %2004
  %2601 = fmul fast float %2573, %2600
  %2602 = fadd fast float %2601, %2004
  br label %2648

; <label>:2603                                    ; preds = %2570
  %2604 = icmp eq i32 %2568, 1
  br i1 %2604, label %2605, label %2618

; <label>:2605                                    ; preds = %2603
  %2606 = fadd fast float %2407, -1.000000e+00
  %2607 = fadd fast float %2408, -1.000000e+00
  %2608 = fadd fast float %2409, -1.000000e+00
  %2609 = fmul fast float %2573, %2606
  %2610 = fmul fast float %2573, %2607
  %2611 = fmul fast float %2573, %2608
  %2612 = fadd fast float %2609, 1.000000e+00
  %2613 = fadd fast float %2610, 1.000000e+00
  %2614 = fadd fast float %2611, 1.000000e+00
  %2615 = fmul fast float %2612, %2560
  %2616 = fmul fast float %2613, %2561
  %2617 = fmul fast float %2614, %2562
  br label %2648

; <label>:2618                                    ; preds = %2603
  %2619 = icmp eq i32 %2568, 2
  br i1 %2619, label %2620, label %2648

; <label>:2620                                    ; preds = %2618
  %2621 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2622 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2623 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2624 = fadd fast float %2621, -5.000000e-01
  %2625 = fadd fast float %2622, -5.000000e-01
  %2626 = fadd fast float %2623, -5.000000e-01
  %2627 = fmul fast float %2624, %2573
  %2628 = fmul fast float %2625, %2573
  %2629 = fmul fast float %2626, %2573
  %2630 = fadd fast float %2627, 5.000000e-01
  %2631 = fadd fast float %2628, 5.000000e-01
  %2632 = fadd fast float %2629, 5.000000e-01
  %2633 = fmul fast float %2630, 2.000000e+00
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = fmul fast float %2634, %2560
  %2636 = fadd fast float %2635, %2633
  %2637 = fmul fast float %2636, %2560
  %2638 = fmul fast float %2631, 2.000000e+00
  %2639 = fsub fast float 1.000000e+00, %2638
  %2640 = fmul fast float %2639, %2561
  %2641 = fadd fast float %2640, %2638
  %2642 = fmul fast float %2641, %2561
  %2643 = fmul fast float %2632, 2.000000e+00
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = fmul fast float %2644, %2562
  %2646 = fadd fast float %2645, %2643
  %2647 = fmul fast float %2646, %2562
  br label %2648

; <label>:2648                                    ; preds = %2620, %2618, %2605, %2575, %2559
  %2649 = phi float [ %2560, %2559 ], [ %2637, %2620 ], [ %2560, %2618 ], [ %2615, %2605 ], [ %2585, %2575 ]
  %2650 = phi float [ %2561, %2559 ], [ %2642, %2620 ], [ %2561, %2618 ], [ %2616, %2605 ], [ %2586, %2575 ]
  %2651 = phi float [ %2562, %2559 ], [ %2647, %2620 ], [ %2562, %2618 ], [ %2617, %2605 ], [ %2587, %2575 ]
  %2652 = phi float [ %2563, %2559 ], [ %2563, %2620 ], [ %2563, %2618 ], [ %2563, %2605 ], [ %2597, %2575 ]
  %2653 = phi float [ %2564, %2559 ], [ %2564, %2620 ], [ %2564, %2618 ], [ %2564, %2605 ], [ %2598, %2575 ]
  %2654 = phi float [ %2565, %2559 ], [ %2565, %2620 ], [ %2565, %2618 ], [ %2565, %2605 ], [ %2599, %2575 ]
  %2655 = phi float [ %2001, %2559 ], [ %2001, %2620 ], [ %2001, %2618 ], [ %2001, %2605 ], [ %2590, %2575 ]
  %2656 = phi float [ %2004, %2559 ], [ %2004, %2620 ], [ %2004, %2618 ], [ %2004, %2605 ], [ %2602, %2575 ]
  %2657 = and i32 %2567, 12
  %2658 = icmp eq i32 %2657, 12
  br i1 %2658, label %2731, label %2659

; <label>:2659                                    ; preds = %2648
  %2660 = and i32 %2567, 2097184
  %2661 = icmp eq i32 %2660, 2097184
  %2662 = select i1 %2661, float %2187, float 0.000000e+00
  %2663 = and i32 %2567, 4194336
  %2664 = icmp eq i32 %2663, 4194336
  %2665 = select i1 %2664, float %2187, float 0.000000e+00
  %2666 = and i32 %2567, 8388640
  %2667 = icmp eq i32 %2666, 8388640
  %2668 = select i1 %2667, float %2187, float 0.000000e+00
  %2669 = icmp eq i32 %2657, 0
  br i1 %2669, label %2670, label %2683

; <label>:2670                                    ; preds = %2659
  %2671 = fsub fast float %2488, %1993
  %2672 = fsub fast float %2489, %1994
  %2673 = fmul fast float %2662, %2671
  %2674 = fmul fast float %2662, %2672
  %2675 = fadd fast float %2673, %1993
  %2676 = fadd fast float %2674, %1994
  %2677 = fsub fast float %2490, %2003
  %2678 = fmul fast float %2665, %2677
  %2679 = fadd fast float %2678, %2003
  %2680 = fsub fast float %2487, %2002
  %2681 = fmul fast float %2668, %2680
  %2682 = fadd fast float %2681, %2002
  br label %2731

; <label>:2683                                    ; preds = %2659
  %2684 = icmp eq i32 %2657, 4
  br i1 %2684, label %2685, label %2717

; <label>:2685                                    ; preds = %2683
  %2686 = fmul fast float %2662, %2488
  %2687 = fmul fast float %2662, %2489
  %2688 = fadd fast float %2686, %1993
  %2689 = fadd fast float %2687, %1994
  %2690 = call float @dx.op.binary.f32(i32 36, float %2003, float %2490)  ; FMin(a,b)
  %2691 = fsub fast float %2690, %2003
  %2692 = fmul fast float %2691, %2665
  %2693 = fadd fast float %2692, %2003
  %2694 = fadd fast float %2487, %2002
  %2695 = fmul fast float %2694, 0x3FF337FAE0000000
  %2696 = fmul fast float %2002, %2002
  %2697 = fmul fast float %2487, %2487
  %2698 = fadd fast float %2697, %2696
  %2699 = fmul fast float %2698, 0x3FE5152B00000000
  %2700 = fmul fast float %2002, 0xBFCC1F85E0000000
  %2701 = fmul fast float %2700, %2487
  %2702 = fadd fast float %2701, 0xBFE1363700000000
  %2703 = fadd fast float %2702, %2695
  %2704 = fsub fast float %2703, %2699
  %2705 = fmul fast float %2694, 0x3FBA6F0D00000000
  %2706 = fmul fast float %2698, 0x3FD0432880000000
  %2707 = fmul fast float %2002, 0xBFEF110800000000
  %2708 = fmul fast float %2707, %2487
  %2709 = fadd fast float %2708, 1.000000e+00
  %2710 = fsub fast float %2709, %2705
  %2711 = fadd fast float %2710, %2706
  %2712 = fdiv fast float %2704, %2711
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fsub fast float %2713, %2002
  %2715 = fmul fast float %2714, %2668
  %2716 = fadd fast float %2715, %2002
  br label %2731

; <label>:2717                                    ; preds = %2683
  %2718 = icmp eq i32 %2657, 8
  br i1 %2718, label %2719, label %2731

; <label>:2719                                    ; preds = %2717
  %2720 = fmul fast float %2662, %2488
  %2721 = fmul fast float %2662, %2489
  %2722 = fadd fast float %2720, %1993
  %2723 = fadd fast float %2721, %1994
  %2724 = call float @dx.op.binary.f32(i32 36, float %2003, float %2490)  ; FMin(a,b)
  %2725 = fsub fast float %2724, %2003
  %2726 = fmul fast float %2725, %2665
  %2727 = fadd fast float %2726, %2003
  %2728 = fsub fast float %2487, %2002
  %2729 = fmul fast float %2668, %2728
  %2730 = fadd fast float %2729, %2002
  br label %2731

; <label>:2731                                    ; preds = %2719, %2717, %2685, %2670, %2648, %2186, %2005, %1992
  %2732 = phi float [ %1993, %2648 ], [ %1993, %2186 ], [ %1993, %1992 ], [ %2722, %2719 ], [ %1993, %2717 ], [ %2688, %2685 ], [ %2675, %2670 ], [ %1993, %2005 ]
  %2733 = phi float [ %1994, %2648 ], [ %1994, %2186 ], [ %1994, %1992 ], [ %2723, %2719 ], [ %1994, %2717 ], [ %2689, %2685 ], [ %2676, %2670 ], [ %1994, %2005 ]
  %2734 = phi float [ %2649, %2648 ], [ %1995, %2186 ], [ %1995, %1992 ], [ %2649, %2719 ], [ %2649, %2717 ], [ %2649, %2685 ], [ %2649, %2670 ], [ %1995, %2005 ]
  %2735 = phi float [ %2650, %2648 ], [ %1996, %2186 ], [ %1996, %1992 ], [ %2650, %2719 ], [ %2650, %2717 ], [ %2650, %2685 ], [ %2650, %2670 ], [ %1996, %2005 ]
  %2736 = phi float [ %2651, %2648 ], [ %1997, %2186 ], [ %1997, %1992 ], [ %2651, %2719 ], [ %2651, %2717 ], [ %2651, %2685 ], [ %2651, %2670 ], [ %1997, %2005 ]
  %2737 = phi float [ %2652, %2648 ], [ %1998, %2186 ], [ %1998, %1992 ], [ %2652, %2719 ], [ %2652, %2717 ], [ %2652, %2685 ], [ %2652, %2670 ], [ %1998, %2005 ]
  %2738 = phi float [ %2653, %2648 ], [ %1999, %2186 ], [ %1999, %1992 ], [ %2653, %2719 ], [ %2653, %2717 ], [ %2653, %2685 ], [ %2653, %2670 ], [ %1999, %2005 ]
  %2739 = phi float [ %2654, %2648 ], [ %2000, %2186 ], [ %2000, %1992 ], [ %2654, %2719 ], [ %2654, %2717 ], [ %2654, %2685 ], [ %2654, %2670 ], [ %2000, %2005 ]
  %2740 = phi float [ %2655, %2648 ], [ %2001, %2186 ], [ %2001, %1992 ], [ %2655, %2719 ], [ %2655, %2717 ], [ %2655, %2685 ], [ %2655, %2670 ], [ %2001, %2005 ]
  %2741 = phi float [ %2002, %2648 ], [ %2002, %2186 ], [ %2002, %1992 ], [ %2730, %2719 ], [ %2002, %2717 ], [ %2716, %2685 ], [ %2682, %2670 ], [ %2002, %2005 ]
  %2742 = phi float [ %2003, %2648 ], [ %2003, %2186 ], [ %2003, %1992 ], [ %2727, %2719 ], [ %2003, %2717 ], [ %2693, %2685 ], [ %2679, %2670 ], [ %2003, %2005 ]
  %2743 = phi float [ %2656, %2648 ], [ %2004, %2186 ], [ %2004, %1992 ], [ %2656, %2719 ], [ %2656, %2717 ], [ %2656, %2685 ], [ %2656, %2670 ], [ %2004, %2005 ]
  br i1 %655, label %3470, label %2744

; <label>:2744                                    ; preds = %2731
  %2745 = icmp ult i32 %709, 4
  %2746 = add i32 %58, 72
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %58, 76
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = or i32 %2751, %2748
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %3470, label %2754

; <label>:2754                                    ; preds = %2744
  %2755 = and i32 %2748, 262144
  %2756 = icmp ne i32 %2755, 0
  %2757 = select i1 %2756, float %66, float 1.000000e+00
  %2758 = select i1 %2756, float %67, float 0.000000e+00
  %2759 = select i1 %2756, float %68, float 0.000000e+00
  %2760 = select i1 %2756, float %69, float 1.000000e+00
  %2761 = select i1 %2756, float %70, float %98
  %2762 = select i1 %2756, float %71, float %99
  %2763 = add i32 %58, 332
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = lshr i32 %2765, 16
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = fmul fast float %2767, 0x3F50624DE0000000
  %2769 = add i32 %58, 136
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = lshr i32 %2771, 16
  %2773 = and i32 %2772, 255
  %2774 = lshr i32 %2771, 24
  %2775 = add i32 %58, 340
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = and i32 %2777, 65535
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = lshr i32 %2777, 16
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = add i32 %58, 80
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = lshr i32 %2784, 22
  %2786 = shl nuw nsw i32 %2785, 5
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = shl i32 %2784, 4
  %2789 = and i32 %2788, 32752
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = lshr i32 %2784, 7
  %2792 = and i32 %2791, 32752
  %2793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2792)  ; LegacyF16ToF32(value)
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2796 = fmul fast float %2795, 1.000000e+03
  %2797 = fmul fast float %2796, %644
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fadd fast float %2798, %632
  %2800 = fmul fast float %2796, %646
  %2801 = call float @dx.op.unary.f32(i32 22, float %2800)  ; Frc(value)
  %2802 = fadd fast float %2801, %633
  %2803 = fmul fast float %2768, %2796
  %2804 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2805 = fmul fast float %2804, 0x401921FB60000000
  %2806 = fadd fast float %2805, %2787
  %2807 = call float @dx.op.unary.f32(i32 13, float %2806)  ; Sin(value)
  %2808 = call float @dx.op.unary.f32(i32 12, float %2806)  ; Cos(value)
  %2809 = fsub fast float -0.000000e+00, %2807
  %2810 = fadd fast float %2761, -5.000000e-01
  %2811 = fadd fast float %2762, -5.000000e-01
  %2812 = fmul fast float %2779, %2810
  %2813 = fmul fast float %2781, %2811
  %2814 = fadd fast float %2812, 5.000000e-01
  %2815 = fadd fast float %2813, 5.000000e-01
  %2816 = fmul fast float %2790, %2814
  %2817 = fmul fast float %2793, %2815
  %2818 = fmul fast float %2808, %2816
  %2819 = call float @dx.op.tertiary.f32(i32 46, float %2809, float %2817, float %2818)  ; FMad(a,b,c)
  %2820 = fmul fast float %2807, %2816
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2808, float %2817, float %2820)  ; FMad(a,b,c)
  %2822 = fadd fast float %2799, %2819
  %2823 = fadd fast float %2802, %2821
  %2824 = icmp ugt i32 %2773, 1
  %2825 = icmp ugt i32 %2771, 33554431
  %2826 = or i1 %2825, %2824
  br i1 %2826, label %2827, label %2852

; <label>:2827                                    ; preds = %2754
  %2828 = add i32 %58, 276
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = lshr i32 %2830, 16
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = fmul fast float %2795, %2832
  %2834 = call float @dx.op.unary.f32(i32 22, float %2833)  ; Frc(value)
  %2835 = mul nuw nsw i32 %2773, %2774
  %2836 = uitofp i32 %2835 to float
  %2837 = fmul fast float %2834, %2836
  %2838 = call float @dx.op.unary.f32(i32 27, float %2837)  ; Round_ni(value)
  %2839 = fptoui float %2838 to i32
  %2840 = urem i32 %2839, %2773
  %2841 = udiv i32 %2839, %2774
  %2842 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2843 = call float @dx.op.unary.f32(i32 22, float %2823)  ; Frc(value)
  %2844 = uitofp i32 %2840 to float
  %2845 = uitofp i32 %2841 to float
  %2846 = fadd fast float %2842, %2844
  %2847 = fadd fast float %2843, %2845
  %2848 = uitofp i32 %2773 to float
  %2849 = uitofp i32 %2774 to float
  %2850 = fdiv fast float %2846, %2848
  %2851 = fdiv fast float %2847, %2849
  br label %2852

; <label>:2852                                    ; preds = %2827, %2754
  %2853 = phi float [ %2850, %2827 ], [ %2822, %2754 ]
  %2854 = phi float [ %2851, %2827 ], [ %2823, %2754 ]
  %2855 = and i32 %2748, 256
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2903, label %2857

; <label>:2857                                    ; preds = %2852
  %2858 = add i32 %58, 484
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = add i32 %2860, 0
  %2862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2862, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = add i32 %58, 148
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = shl i32 %2867, 4
  %2869 = and i32 %2868, 32752
  %2870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2869)  ; LegacyF16ToF32(value)
  %2871 = lshr i32 %2867, 7
  %2872 = and i32 %2871, 32752
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fsub fast float 1.000000e+00, %704
  %2875 = call float @dx.op.binary.f32(i32 35, float %2874, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2876 = bitcast float %704 to i32
  %2877 = sitofp i32 %2876 to float
  %2878 = fadd fast float %2877, 0xC1CFBF8940000000
  %2879 = fmul fast float %2873, %2878
  %2880 = fadd fast float %2879, 0x41CFBF8940000000
  %2881 = fptosi float %2880 to i32
  %2882 = bitcast i32 %2881 to float
  %2883 = bitcast float %2875 to i32
  %2884 = sitofp i32 %2883 to float
  %2885 = fadd fast float %2884, 0xC1CFBF8940000000
  %2886 = fmul fast float %2885, %2873
  %2887 = fadd fast float %2886, 0x41CFBF8940000000
  %2888 = fptosi float %2887 to i32
  %2889 = bitcast i32 %2888 to float
  %2890 = fmul fast float %2882, %2870
  %2891 = fmul fast float %2889, %2870
  %2892 = fsub fast float %2875, %2890
  %2893 = fadd fast float %2891, %2875
  %2894 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2895 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2896 = fsub fast float %2864, %2894
  %2897 = fsub fast float %2895, %2894
  %2898 = bitcast float %2897 to i32
  %2899 = sub nsw i32 2129859010, %2898
  %2900 = bitcast i32 %2899 to float
  %2901 = fmul fast float %2900, %2896
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  br label %2903

; <label>:2903                                    ; preds = %2857, %2852
  %2904 = phi float [ %2902, %2857 ], [ %704, %2852 ]
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 128
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2925, label %2909

; <label>:2909                                    ; preds = %2903
  %2910 = add i32 %58, 468
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 524288
  %2920 = icmp ne i32 %2919, 0
  %2921 = fcmp fast ogt float %2916, 0x3FE0101020000000
  %2922 = select i1 %2921, float 1.000000e+00, float 0.000000e+00
  %2923 = select i1 %2920, float %2922, float %2916
  %2924 = fmul fast float %2923, %2904
  br label %2925

; <label>:2925                                    ; preds = %2909, %2903
  %2926 = phi float [ %2924, %2909 ], [ %2904, %2903 ]
  %2927 = fcmp fast ult float %2926, 0x3F70101020000000
  br i1 %2927, label %3470, label %2928

; <label>:2928                                    ; preds = %2925
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 16
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3131, label %2933

; <label>:2933                                    ; preds = %2928
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = add i32 %58, 420
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = add i32 %2938, 0
  %2940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2940, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = extractvalue %dx.types.ResRet.f32 %2941, 3
  %2946 = and i32 %2935, 255
  %2947 = uitofp i32 %2946 to float
  %2948 = lshr i32 %2935, 8
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2945, %2947
  %2952 = fadd fast float %2951, %2950
  %2953 = fmul fast float %2952, 0x3F70101000000000
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 512
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2966, label %2958

; <label>:2958                                    ; preds = %2933
  %2959 = add i32 %58, 504
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = add i32 %2961, 0
  %2963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2963, %dx.types.Handle %113, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  br label %2966

; <label>:2966                                    ; preds = %2958, %2933
  %2967 = phi float [ %2965, %2958 ], [ 1.000000e+00, %2933 ]
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 33554432
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %3078, label %2972

; <label>:2972                                    ; preds = %2966
  %2973 = add i32 %58, 272
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 65535
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = lshr i32 %2975, 16
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = add i32 %58, 276
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %2982, 65535
  %2984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2983)  ; LegacyF16ToF32(value)
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 24
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = and i32 %2986, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2986, 8
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2986, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = add i32 %58, 268
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = lshr i32 %3003, 24
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = and i32 %3003, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %3003, 8
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = lshr i32 %3003, 16
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = bitcast float %2942 to i32
  %3019 = ashr i32 %3018, 1
  %3020 = sub nsw i32 1597463174, %3019
  %3021 = bitcast i32 %3020 to float
  %3022 = fmul fast float %2942, 5.000000e-01
  %3023 = fmul fast float %3021, %3021
  %3024 = fmul fast float %3023, %3022
  %3025 = fsub fast float 1.500000e+00, %3024
  %3026 = fmul fast float %3021, %2942
  %3027 = fmul fast float %3026, %3025
  %3028 = bitcast float %2943 to i32
  %3029 = ashr i32 %3028, 1
  %3030 = sub nsw i32 1597463174, %3029
  %3031 = bitcast i32 %3030 to float
  %3032 = fmul fast float %2943, 5.000000e-01
  %3033 = fmul fast float %3031, %3031
  %3034 = fmul fast float %3033, %3032
  %3035 = fsub fast float 1.500000e+00, %3034
  %3036 = fmul fast float %3031, %2943
  %3037 = fmul fast float %3036, %3035
  %3038 = bitcast float %2944 to i32
  %3039 = ashr i32 %3038, 1
  %3040 = sub nsw i32 1597463174, %3039
  %3041 = bitcast i32 %3040 to float
  %3042 = fmul fast float %2944, 5.000000e-01
  %3043 = fmul fast float %3041, %3041
  %3044 = fmul fast float %3043, %3042
  %3045 = fsub fast float 1.500000e+00, %3044
  %3046 = fmul fast float %3041, %2944
  %3047 = fmul fast float %3046, %3045
  %3048 = fsub fast float %3027, %3009
  %3049 = fsub fast float %3037, %3013
  %3050 = fsub fast float %3047, %3017
  %3051 = fmul fast float %3048, %2977
  %3052 = fmul fast float %3049, %2979
  %3053 = fmul fast float %3050, %2984
  %3054 = fadd fast float %3051, %2992
  %3055 = fadd fast float %3052, %2996
  %3056 = fadd fast float %3053, %3000
  %3057 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3058 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  %3059 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3060 = fmul fast float %3057, %3057
  %3061 = fmul fast float %3058, %3058
  %3062 = fmul fast float %3059, %3059
  %3063 = fsub fast float %3060, %2942
  %3064 = fsub fast float %3061, %2943
  %3065 = fsub fast float %3062, %2944
  %3066 = fmul fast float %3063, %2967
  %3067 = fmul fast float %3064, %2967
  %3068 = fmul fast float %3065, %2967
  %3069 = fadd fast float %3066, %2942
  %3070 = fadd fast float %3067, %2943
  %3071 = fadd fast float %3068, %2944
  %3072 = fadd fast float %2989, %2953
  %3073 = fsub fast float %3072, %3006
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3075 = fsub fast float %3074, %2953
  %3076 = fmul fast float %3075, %2967
  %3077 = fadd fast float %3076, %2953
  br label %3131

; <label>:3078                                    ; preds = %2966
  %3079 = and i32 %2969, 134217728
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3115, label %3081

; <label>:3081                                    ; preds = %3078
  %3082 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %3085 = fadd fast float %3082, -5.000000e-01
  %3086 = fadd fast float %3083, -5.000000e-01
  %3087 = fadd fast float %3084, -5.000000e-01
  %3088 = fmul fast float %3085, %2967
  %3089 = fmul fast float %3086, %2967
  %3090 = fmul fast float %3087, %2967
  %3091 = fadd fast float %3088, 5.000000e-01
  %3092 = fadd fast float %3089, 5.000000e-01
  %3093 = fadd fast float %3090, 5.000000e-01
  %3094 = call float @dx.op.unary.f32(i32 24, float %2942)  ; Sqrt(value)
  %3095 = call float @dx.op.unary.f32(i32 24, float %2943)  ; Sqrt(value)
  %3096 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %3097 = fmul fast float %3091, 2.000000e+00
  %3098 = fsub fast float 1.000000e+00, %3097
  %3099 = fmul fast float %3098, %3094
  %3100 = fadd fast float %3099, %3097
  %3101 = fmul fast float %3100, %3094
  %3102 = fmul fast float %3092, 2.000000e+00
  %3103 = fsub fast float 1.000000e+00, %3102
  %3104 = fmul fast float %3103, %3095
  %3105 = fadd fast float %3104, %3102
  %3106 = fmul fast float %3105, %3095
  %3107 = fmul fast float %3093, 2.000000e+00
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fmul fast float %3108, %3096
  %3110 = fadd fast float %3109, %3107
  %3111 = fmul fast float %3110, %3096
  %3112 = fmul fast float %3101, %3101
  %3113 = fmul fast float %3106, %3106
  %3114 = fmul fast float %3111, %3111
  br label %3131

; <label>:3115                                    ; preds = %3078
  %3116 = fmul fast float %620, %620
  %3117 = fmul fast float %621, %621
  %3118 = fmul fast float %622, %622
  %3119 = fadd fast float %3116, -1.000000e+00
  %3120 = fadd fast float %3117, -1.000000e+00
  %3121 = fadd fast float %3118, -1.000000e+00
  %3122 = fmul fast float %2967, %3119
  %3123 = fmul fast float %2967, %3120
  %3124 = fmul fast float %2967, %3121
  %3125 = fadd fast float %3122, 1.000000e+00
  %3126 = fadd fast float %3123, 1.000000e+00
  %3127 = fadd fast float %3124, 1.000000e+00
  %3128 = fmul fast float %3125, %2942
  %3129 = fmul fast float %3126, %2943
  %3130 = fmul fast float %3127, %2944
  br label %3131

; <label>:3131                                    ; preds = %3115, %3081, %2972, %2928
  %3132 = phi float [ %3077, %2972 ], [ %2953, %3081 ], [ %2953, %3115 ], [ 0x3FA23C0BE0000000, %2928 ]
  %3133 = phi float [ %3069, %2972 ], [ %3112, %3081 ], [ %3128, %3115 ], [ 1.000000e+00, %2928 ]
  %3134 = phi float [ %3070, %2972 ], [ %3113, %3081 ], [ %3129, %3115 ], [ 1.000000e+00, %2928 ]
  %3135 = phi float [ %3071, %2972 ], [ %3114, %3081 ], [ %3130, %3115 ], [ 1.000000e+00, %2928 ]
  %3136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.i32 %3136, 1
  %3138 = and i32 %3137, 1
  %3139 = icmp ne i32 %3138, 0
  %3140 = add i32 %58, 356
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 32
  %3144 = icmp ne i32 %3143, 0
  %3145 = and i1 %3139, %3144
  %3146 = select i1 %3145, float 1.000000e+00, float %3133
  %3147 = select i1 %3145, float 0x3FD3333340000000, float %3134
  %3148 = select i1 %3145, float 0x3FD3333340000000, float %3135
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 32
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3225, label %3153

; <label>:3153                                    ; preds = %3131
  %3154 = add i32 %58, 140
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %58, 436
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = extractvalue %dx.types.ResRet.f32 %3162, 3
  %3167 = and i32 %3156, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = lshr i32 %3156, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = lshr i32 %3156, 16
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101000000000
  %3176 = fmul fast float %3163, %3168
  %3177 = fadd fast float %3176, %3171
  %3178 = fmul fast float %3177, 0x3F70101000000000
  %3179 = fadd fast float %3164, -5.000000e-01
  %3180 = fadd fast float %3166, -5.000000e-01
  %3181 = fmul fast float %3179, %3175
  %3182 = fmul fast float %3180, %3175
  %3183 = fadd fast float %3181, 5.000000e-01
  %3184 = fadd fast float %3182, 5.000000e-01
  %3185 = fmul fast float %3183, 2.000000e+00
  %3186 = fadd fast float %3185, -1.000000e+00
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fadd fast float %3187, -1.000000e+00
  %3189 = fadd fast float %3186, %3188
  %3190 = fmul fast float %3189, 5.000000e-01
  %3191 = fsub fast float %3186, %3188
  %3192 = fmul fast float %3191, 5.000000e-01
  %3193 = call float @dx.op.unary.f32(i32 6, float %3190)  ; FAbs(value)
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = call float @dx.op.unary.f32(i32 6, float %3192)  ; FAbs(value)
  %3196 = fsub fast float %3194, %3195
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3192, float %3196, float %3190, float %3192, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = call float @dx.op.unary.f32(i32 25, float %3197)  ; Rsqrt(value)
  %3199 = fmul fast float %3190, %3198
  %3200 = fmul fast float %3192, %3198
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 67108864
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3221, label %3205

; <label>:3205                                    ; preds = %3153
  %3206 = add i32 %58, 328
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = lshr i32 %3208, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = fsub fast float %3178, %3216
  %3218 = fmul fast float %3217, %3210
  %3219 = fadd fast float %3218, %3214
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  br label %3221

; <label>:3221                                    ; preds = %3205, %3153
  %3222 = phi float [ %3220, %3205 ], [ %3178, %3153 ]
  %3223 = call float @dx.op.dot2.f32(i32 54, float %3199, float %3200, float %2757, float %2758)  ; Dot2(ax,ay,bx,by)
  %3224 = call float @dx.op.dot2.f32(i32 54, float %3199, float %3200, float %2759, float %2760)  ; Dot2(ax,ay,bx,by)
  br label %3225

; <label>:3225                                    ; preds = %3221, %3131
  %3226 = phi float [ %3222, %3221 ], [ 0x3FD6666660000000, %3131 ]
  %3227 = phi float [ %3223, %3221 ], [ 0.000000e+00, %3131 ]
  %3228 = phi float [ %3224, %3221 ], [ 0.000000e+00, %3131 ]
  %3229 = phi float [ %3165, %3221 ], [ 1.000000e+00, %3131 ]
  %3230 = add i32 %58, 208
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = lshr i32 %3232, 22
  %3234 = shl nuw nsw i32 %3233, 5
  %3235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3234)  ; LegacyF16ToF32(value)
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 64
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3273, label %3240

; <label>:3240                                    ; preds = %3225
  %3241 = add i32 %58, 452
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = add i32 %3243, 0
  %3245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 131072
  %3249 = icmp eq i32 %3248, 0
  %3250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3245, %dx.types.Handle %112, float %2853, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.f32 %3250, 2
  %3254 = fmul fast float %603, %3251
  %3255 = fmul fast float %604, %3252
  %3256 = fmul fast float %605, %3253
  br i1 %3249, label %3263, label %3257

; <label>:3257                                    ; preds = %3240
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = fmul fast float %3259, %3254
  %3261 = fmul fast float %3259, %3255
  %3262 = fmul fast float %3259, %3256
  br label %3263

; <label>:3263                                    ; preds = %3257, %3240
  %3264 = phi float [ %3260, %3257 ], [ %3254, %3240 ]
  %3265 = phi float [ %3261, %3257 ], [ %3255, %3240 ]
  %3266 = phi float [ %3262, %3257 ], [ %3256, %3240 ]
  %3267 = fmul fast float %3264, %3235
  %3268 = select i1 %271, float %3267, float %3264
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3265, float %3266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = select i1 %271, float 0.000000e+00, float %3264
  %3271 = select i1 %271, float %3269, float %3265
  %3272 = select i1 %271, float 0.000000e+00, float %3266
  br label %3273

; <label>:3273                                    ; preds = %3263, %3225
  %3274 = phi float [ %3270, %3263 ], [ 0.000000e+00, %3225 ]
  %3275 = phi float [ %3271, %3263 ], [ 0.000000e+00, %3225 ]
  %3276 = phi float [ %3272, %3263 ], [ 0.000000e+00, %3225 ]
  %3277 = add i32 %58, 144
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = lshr i32 %3279, 8
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3147, float %3148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = fmul fast float %3284, %3285
  %3287 = fadd fast float %3286, %3281
  %3288 = fmul fast float %3287, 0x3F70101020000000
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  br i1 %2745, label %3290, label %3298

; <label>:3290                                    ; preds = %3273
  %3291 = fsub fast float 1.000000e+00, %2926
  %3292 = fmul fast float %3291, %2734
  %3293 = fmul fast float %3291, %2735
  %3294 = fmul fast float %3291, %2736
  %3295 = fmul fast float %3291, %2737
  %3296 = fmul fast float %3291, %2738
  %3297 = fmul fast float %3291, %2739
  br label %3298

; <label>:3298                                    ; preds = %3290, %3273
  %3299 = phi float [ %3292, %3290 ], [ %2734, %3273 ]
  %3300 = phi float [ %3293, %3290 ], [ %2735, %3273 ]
  %3301 = phi float [ %3294, %3290 ], [ %2736, %3273 ]
  %3302 = phi float [ %3295, %3290 ], [ %2737, %3273 ]
  %3303 = phi float [ %3296, %3290 ], [ %2738, %3273 ]
  %3304 = phi float [ %3297, %3290 ], [ %2739, %3273 ]
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 3
  %3308 = icmp eq i32 %3307, 3
  br i1 %3308, label %3387, label %3309

; <label>:3309                                    ; preds = %3298
  %3310 = and i32 %3306, 16
  %3311 = icmp ne i32 %3310, 0
  %3312 = select i1 %3311, float %2926, float 0.000000e+00
  %3313 = icmp eq i32 %3307, 0
  br i1 %3313, label %3314, label %3342

; <label>:3314                                    ; preds = %3309
  %3315 = and i32 %3306, 64
  %3316 = icmp ne i32 %3315, 0
  %3317 = select i1 %3316, float %2926, float 0.000000e+00
  %3318 = fsub fast float %3146, %3299
  %3319 = fsub fast float %3147, %3300
  %3320 = fsub fast float %3148, %3301
  %3321 = fmul fast float %3312, %3318
  %3322 = fmul fast float %3312, %3319
  %3323 = fmul fast float %3312, %3320
  %3324 = fadd fast float %3321, %3299
  %3325 = fadd fast float %3322, %3300
  %3326 = fadd fast float %3323, %3301
  %3327 = fsub fast float %3132, %2740
  %3328 = fmul fast float %3312, %3327
  %3329 = fadd fast float %3328, %2740
  %3330 = fsub fast float %3274, %3302
  %3331 = fsub fast float %3275, %3303
  %3332 = fsub fast float %3276, %3304
  %3333 = fmul fast float %3317, %3330
  %3334 = fmul fast float %3317, %3331
  %3335 = fmul fast float %3317, %3332
  %3336 = fadd fast float %3333, %3302
  %3337 = fadd fast float %3334, %3303
  %3338 = fadd fast float %3335, %3304
  %3339 = fsub fast float %3289, %2743
  %3340 = fmul fast float %3312, %3339
  %3341 = fadd fast float %3340, %2743
  br label %3387

; <label>:3342                                    ; preds = %3309
  %3343 = icmp eq i32 %3307, 1
  br i1 %3343, label %3344, label %3357

; <label>:3344                                    ; preds = %3342
  %3345 = fadd fast float %3146, -1.000000e+00
  %3346 = fadd fast float %3147, -1.000000e+00
  %3347 = fadd fast float %3148, -1.000000e+00
  %3348 = fmul fast float %3312, %3345
  %3349 = fmul fast float %3312, %3346
  %3350 = fmul fast float %3312, %3347
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fmul fast float %3351, %3299
  %3355 = fmul fast float %3352, %3300
  %3356 = fmul fast float %3353, %3301
  br label %3387

; <label>:3357                                    ; preds = %3342
  %3358 = icmp eq i32 %3307, 2
  br i1 %3358, label %3359, label %3387

; <label>:3359                                    ; preds = %3357
  %3360 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3361 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3362 = call float @dx.op.unary.f32(i32 24, float %3148)  ; Sqrt(value)
  %3363 = fadd fast float %3360, -5.000000e-01
  %3364 = fadd fast float %3361, -5.000000e-01
  %3365 = fadd fast float %3362, -5.000000e-01
  %3366 = fmul fast float %3363, %3312
  %3367 = fmul fast float %3364, %3312
  %3368 = fmul fast float %3365, %3312
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = fadd fast float %3367, 5.000000e-01
  %3371 = fadd fast float %3368, 5.000000e-01
  %3372 = fmul fast float %3369, 2.000000e+00
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = fmul fast float %3373, %3299
  %3375 = fadd fast float %3374, %3372
  %3376 = fmul fast float %3375, %3299
  %3377 = fmul fast float %3370, 2.000000e+00
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = fmul fast float %3378, %3300
  %3380 = fadd fast float %3379, %3377
  %3381 = fmul fast float %3380, %3300
  %3382 = fmul fast float %3371, 2.000000e+00
  %3383 = fsub fast float 1.000000e+00, %3382
  %3384 = fmul fast float %3383, %3301
  %3385 = fadd fast float %3384, %3382
  %3386 = fmul fast float %3385, %3301
  br label %3387

; <label>:3387                                    ; preds = %3359, %3357, %3344, %3314, %3298
  %3388 = phi float [ %3299, %3298 ], [ %3376, %3359 ], [ %3299, %3357 ], [ %3354, %3344 ], [ %3324, %3314 ]
  %3389 = phi float [ %3300, %3298 ], [ %3381, %3359 ], [ %3300, %3357 ], [ %3355, %3344 ], [ %3325, %3314 ]
  %3390 = phi float [ %3301, %3298 ], [ %3386, %3359 ], [ %3301, %3357 ], [ %3356, %3344 ], [ %3326, %3314 ]
  %3391 = phi float [ %3302, %3298 ], [ %3302, %3359 ], [ %3302, %3357 ], [ %3302, %3344 ], [ %3336, %3314 ]
  %3392 = phi float [ %3303, %3298 ], [ %3303, %3359 ], [ %3303, %3357 ], [ %3303, %3344 ], [ %3337, %3314 ]
  %3393 = phi float [ %3304, %3298 ], [ %3304, %3359 ], [ %3304, %3357 ], [ %3304, %3344 ], [ %3338, %3314 ]
  %3394 = phi float [ %2740, %3298 ], [ %2740, %3359 ], [ %2740, %3357 ], [ %2740, %3344 ], [ %3329, %3314 ]
  %3395 = phi float [ %2743, %3298 ], [ %2743, %3359 ], [ %2743, %3357 ], [ %2743, %3344 ], [ %3341, %3314 ]
  %3396 = and i32 %3306, 12
  %3397 = icmp eq i32 %3396, 12
  br i1 %3397, label %3470, label %3398

; <label>:3398                                    ; preds = %3387
  %3399 = and i32 %3306, 2097184
  %3400 = icmp eq i32 %3399, 2097184
  %3401 = select i1 %3400, float %2926, float 0.000000e+00
  %3402 = and i32 %3306, 4194336
  %3403 = icmp eq i32 %3402, 4194336
  %3404 = select i1 %3403, float %2926, float 0.000000e+00
  %3405 = and i32 %3306, 8388640
  %3406 = icmp eq i32 %3405, 8388640
  %3407 = select i1 %3406, float %2926, float 0.000000e+00
  %3408 = icmp eq i32 %3396, 0
  br i1 %3408, label %3409, label %3422

; <label>:3409                                    ; preds = %3398
  %3410 = fsub fast float %3227, %2732
  %3411 = fsub fast float %3228, %2733
  %3412 = fmul fast float %3401, %3410
  %3413 = fmul fast float %3401, %3411
  %3414 = fadd fast float %3412, %2732
  %3415 = fadd fast float %3413, %2733
  %3416 = fsub fast float %3229, %2742
  %3417 = fmul fast float %3404, %3416
  %3418 = fadd fast float %3417, %2742
  %3419 = fsub fast float %3226, %2741
  %3420 = fmul fast float %3407, %3419
  %3421 = fadd fast float %3420, %2741
  br label %3470

; <label>:3422                                    ; preds = %3398
  %3423 = icmp eq i32 %3396, 4
  br i1 %3423, label %3424, label %3456

; <label>:3424                                    ; preds = %3422
  %3425 = fmul fast float %3401, %3227
  %3426 = fmul fast float %3401, %3228
  %3427 = fadd fast float %3425, %2732
  %3428 = fadd fast float %3426, %2733
  %3429 = call float @dx.op.binary.f32(i32 36, float %2742, float %3229)  ; FMin(a,b)
  %3430 = fsub fast float %3429, %2742
  %3431 = fmul fast float %3430, %3404
  %3432 = fadd fast float %3431, %2742
  %3433 = fadd fast float %3226, %2741
  %3434 = fmul fast float %3433, 0x3FF337FAE0000000
  %3435 = fmul fast float %2741, %2741
  %3436 = fmul fast float %3226, %3226
  %3437 = fadd fast float %3436, %3435
  %3438 = fmul fast float %3437, 0x3FE5152B00000000
  %3439 = fmul fast float %2741, 0xBFCC1F85E0000000
  %3440 = fmul fast float %3439, %3226
  %3441 = fadd fast float %3440, 0xBFE1363700000000
  %3442 = fadd fast float %3441, %3434
  %3443 = fsub fast float %3442, %3438
  %3444 = fmul fast float %3433, 0x3FBA6F0D00000000
  %3445 = fmul fast float %3437, 0x3FD0432880000000
  %3446 = fmul fast float %2741, 0xBFEF110800000000
  %3447 = fmul fast float %3446, %3226
  %3448 = fadd fast float %3447, 1.000000e+00
  %3449 = fsub fast float %3448, %3444
  %3450 = fadd fast float %3449, %3445
  %3451 = fdiv fast float %3443, %3450
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fsub fast float %3452, %2741
  %3454 = fmul fast float %3453, %3407
  %3455 = fadd fast float %3454, %2741
  br label %3470

; <label>:3456                                    ; preds = %3422
  %3457 = icmp eq i32 %3396, 8
  br i1 %3457, label %3458, label %3470

; <label>:3458                                    ; preds = %3456
  %3459 = fmul fast float %3401, %3227
  %3460 = fmul fast float %3401, %3228
  %3461 = fadd fast float %3459, %2732
  %3462 = fadd fast float %3460, %2733
  %3463 = call float @dx.op.binary.f32(i32 36, float %2742, float %3229)  ; FMin(a,b)
  %3464 = fsub fast float %3463, %2742
  %3465 = fmul fast float %3464, %3404
  %3466 = fadd fast float %3465, %2742
  %3467 = fsub fast float %3226, %2741
  %3468 = fmul fast float %3407, %3467
  %3469 = fadd fast float %3468, %2741
  br label %3470

; <label>:3470                                    ; preds = %3458, %3456, %3424, %3409, %3387, %2925, %2744, %2731
  %3471 = phi float [ %2732, %3387 ], [ %2732, %2925 ], [ %2732, %2731 ], [ %2732, %2744 ], [ %3414, %3409 ], [ %3427, %3424 ], [ %2732, %3456 ], [ %3461, %3458 ]
  %3472 = phi float [ %2733, %3387 ], [ %2733, %2925 ], [ %2733, %2731 ], [ %2733, %2744 ], [ %3415, %3409 ], [ %3428, %3424 ], [ %2733, %3456 ], [ %3462, %3458 ]
  %3473 = phi float [ %3388, %3387 ], [ %2734, %2925 ], [ %2734, %2731 ], [ %2734, %2744 ], [ %3388, %3409 ], [ %3388, %3424 ], [ %3388, %3456 ], [ %3388, %3458 ]
  %3474 = phi float [ %3389, %3387 ], [ %2735, %2925 ], [ %2735, %2731 ], [ %2735, %2744 ], [ %3389, %3409 ], [ %3389, %3424 ], [ %3389, %3456 ], [ %3389, %3458 ]
  %3475 = phi float [ %3390, %3387 ], [ %2736, %2925 ], [ %2736, %2731 ], [ %2736, %2744 ], [ %3390, %3409 ], [ %3390, %3424 ], [ %3390, %3456 ], [ %3390, %3458 ]
  %3476 = phi float [ %3391, %3387 ], [ %2737, %2925 ], [ %2737, %2731 ], [ %2737, %2744 ], [ %3391, %3409 ], [ %3391, %3424 ], [ %3391, %3456 ], [ %3391, %3458 ]
  %3477 = phi float [ %3392, %3387 ], [ %2738, %2925 ], [ %2738, %2731 ], [ %2738, %2744 ], [ %3392, %3409 ], [ %3392, %3424 ], [ %3392, %3456 ], [ %3392, %3458 ]
  %3478 = phi float [ %3393, %3387 ], [ %2739, %2925 ], [ %2739, %2731 ], [ %2739, %2744 ], [ %3393, %3409 ], [ %3393, %3424 ], [ %3393, %3456 ], [ %3393, %3458 ]
  %3479 = phi float [ %3394, %3387 ], [ %2740, %2925 ], [ %2740, %2731 ], [ %2740, %2744 ], [ %3394, %3409 ], [ %3394, %3424 ], [ %3394, %3456 ], [ %3394, %3458 ]
  %3480 = phi float [ %2741, %3387 ], [ %2741, %2925 ], [ %2741, %2731 ], [ %2741, %2744 ], [ %3421, %3409 ], [ %3455, %3424 ], [ %2741, %3456 ], [ %3469, %3458 ]
  %3481 = phi float [ %2742, %3387 ], [ %2742, %2925 ], [ %2742, %2731 ], [ %2742, %2744 ], [ %3418, %3409 ], [ %3432, %3424 ], [ %2742, %3456 ], [ %3466, %3458 ]
  %3482 = phi float [ %3395, %3387 ], [ %2743, %2925 ], [ %2743, %2731 ], [ %2743, %2744 ], [ %3395, %3409 ], [ %3395, %3424 ], [ %3395, %3456 ], [ %3395, %3458 ]
  %3483 = add i32 %58, 360
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.i32 %3484, 1
  %3487 = bitcast i32 %3485 to float
  %3488 = bitcast i32 %3486 to float
  %3489 = fcmp fast oge float %3487, 0.000000e+00
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = select i1 %3489, float %3487, float %3491
  %3493 = fadd fast float %3492, %213
  %3494 = fmul fast float %3488, %214
  %3495 = add i32 %58, 488
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = add i32 %3497, 0
  %3499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3499, %dx.types.Handle %113, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = fmul fast float %3494, %3501
  %3503 = fadd fast float %3493, %3502
  %3504 = and i32 %205, 65535
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = lshr i32 %205, 16
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = and i32 %206, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = fmul fast float %3505, %3473
  %3511 = fmul fast float %3507, %3474
  %3512 = fmul fast float %3509, %3475
  %3513 = shl i32 %207, 4
  %3514 = and i32 %3513, 32752
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = lshr i32 %207, 7
  %3517 = and i32 %3516, 32752
  %3518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3517)  ; LegacyF16ToF32(value)
  %3519 = lshr i32 %207, 22
  %3520 = shl nuw nsw i32 %3519, 5
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = and i32 %208, 65535
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = fmul fast float %3515, %3476
  %3525 = fmul fast float %3524, %3523
  %3526 = fmul fast float %3518, %3477
  %3527 = fmul fast float %3526, %3523
  %3528 = fmul fast float %3521, %3478
  %3529 = fmul fast float %3528, %3523
  %3530 = call float @dx.op.dot2.f32(i32 54, float %3471, float %3472, float %3471, float %3472)  ; Dot2(ax,ay,bx,by)
  %3531 = fmul fast float %3530, 0x3FE3333340000000
  %3532 = fsub fast float 1.000000e+00, %3531
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3532, float %3471, float %3472, float %3532)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = call float @dx.op.unary.f32(i32 25, float %3533)  ; Rsqrt(value)
  %3535 = fmul fast float %3534, %3471
  %3536 = fmul fast float %3534, %3472
  %3537 = fmul fast float %3532, %3534
  %3538 = fmul fast float %3537, %125
  %3539 = fmul fast float %3537, %127
  %3540 = fmul fast float %3537, %129
  %3541 = fmul fast float %3535, %91
  %3542 = fmul fast float %3535, %92
  %3543 = fmul fast float %3535, %93
  %3544 = fadd fast float %3538, %3541
  %3545 = fadd fast float %3539, %3542
  %3546 = fadd fast float %3540, %3543
  %3547 = fmul fast float %139, %3536
  %3548 = fmul fast float %140, %3536
  %3549 = fmul fast float %141, %3536
  %3550 = fadd fast float %3544, %3547
  %3551 = fadd fast float %3545, %3548
  %3552 = fadd fast float %3546, %3549
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3552, float %3550, float %3551, float %3552)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = call float @dx.op.unary.f32(i32 25, float %3553)  ; Rsqrt(value)
  %3555 = fmul fast float %3550, %3554
  %3556 = fmul fast float %3551, %3554
  %3557 = fmul fast float %3552, %3554
  %3558 = icmp eq i32 %61, 65535
  br i1 %3558, label %4077, label %3559

; <label>:3559                                    ; preds = %3470
  %3560 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3561 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3562 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3563 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3564 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3565 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3566 = fadd fast float %3560, %62
  %3567 = fadd fast float %3561, %63
  %3568 = fadd fast float %3562, %64
  %3569 = fadd fast float %3563, %62
  %3570 = fadd fast float %3564, %63
  %3571 = fadd fast float %3565, %64
  %3572 = mul i32 %61, 48
  %3573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = add i32 %3572, 16
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = add i32 %3572, 32
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = bitcast float %3587 to i32
  %3589 = fmul fast float %3574, %62
  %3590 = fmul fast float %3575, %63
  %3591 = fmul fast float %3576, %64
  %3592 = fsub fast float %3589, %3579
  %3593 = fsub fast float %3590, %3580
  %3594 = fsub fast float %3591, %3581
  %3595 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3597 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3598 = fmul fast float %3595, %3584
  %3599 = fmul fast float %3596, %3585
  %3600 = fmul fast float %3597, %3586
  %3601 = fadd fast float %3584, -1.000000e+00
  %3602 = fadd fast float %3585, -1.000000e+00
  %3603 = fadd fast float %3586, -1.000000e+00
  %3604 = call float @dx.op.unary.f32(i32 27, float %3598)  ; Round_ni(value)
  %3605 = call float @dx.op.unary.f32(i32 27, float %3599)  ; Round_ni(value)
  %3606 = call float @dx.op.unary.f32(i32 27, float %3600)  ; Round_ni(value)
  %3607 = call float @dx.op.binary.f32(i32 36, float %3604, float %3601)  ; FMin(a,b)
  %3608 = call float @dx.op.binary.f32(i32 36, float %3605, float %3602)  ; FMin(a,b)
  %3609 = call float @dx.op.binary.f32(i32 36, float %3606, float %3603)  ; FMin(a,b)
  %3610 = fmul fast float %3609, %3585
  %3611 = fadd fast float %3610, %3608
  %3612 = fmul fast float %3611, %3584
  %3613 = fadd fast float %3612, %3607
  %3614 = fptosi float %3613 to i32
  %3615 = add nsw i32 %3614, %3588
  %3616 = shl nsw i32 %3615, 2
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = lshr i32 %3618, 16
  %3620 = icmp eq i32 %3619, 0
  br i1 %3620, label %4045, label %3621

; <label>:3621                                    ; preds = %3559
  br label %3622

; <label>:3622                                    ; preds = %3744, %3621
  %3623 = phi i32 [ %3646, %3744 ], [ %3619, %3621 ]
  %3624 = phi float [ %3745, %3744 ], [ 0.000000e+00, %3621 ]
  %3625 = phi float [ %3746, %3744 ], [ %1262, %3621 ]
  %3626 = phi float [ %3747, %3744 ], [ %3503, %3621 ]
  %3627 = phi float [ %3748, %3744 ], [ %3482, %3621 ]
  %3628 = phi float [ %3749, %3744 ], [ 0.000000e+00, %3621 ]
  %3629 = phi float [ %3750, %3744 ], [ 0.000000e+00, %3621 ]
  %3630 = phi float [ %3751, %3744 ], [ %3525, %3621 ]
  %3631 = phi float [ %3752, %3744 ], [ %3527, %3621 ]
  %3632 = phi float [ %3753, %3744 ], [ %3529, %3621 ]
  %3633 = phi float [ %3754, %3744 ], [ %3555, %3621 ]
  %3634 = phi float [ %3755, %3744 ], [ %3556, %3621 ]
  %3635 = phi float [ %3756, %3744 ], [ %3557, %3621 ]
  %3636 = phi float [ %3757, %3744 ], [ %3481, %3621 ]
  %3637 = phi float [ %3758, %3744 ], [ %3480, %3621 ]
  %3638 = phi float [ %3759, %3744 ], [ 0.000000e+00, %3621 ]
  %3639 = phi float [ %3760, %3744 ], [ %3479, %3621 ]
  %3640 = phi float [ %3761, %3744 ], [ %3510, %3621 ]
  %3641 = phi float [ %3762, %3744 ], [ %3511, %3621 ]
  %3642 = phi float [ %3763, %3744 ], [ %3512, %3621 ]
  %3643 = shl nuw nsw i32 %3623, 2
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = lshr i32 %3645, 16
  %3647 = shl i32 %3645, 8
  %3648 = and i32 %3647, 16776960
  %3649 = or i32 %3648, 48
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = or i32 %3648, 64
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.i32 %3655, 1
  %3658 = or i32 %3648, 80
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3662 = or i32 %3648, 96
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.ResRet.f32 %3663, 3
  %3668 = or i32 %3648, 112
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3671 = or i32 %3648, 128
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = or i32 %3648, 144
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = or i32 %3648, 160
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3689 = or i32 %3648, 192
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = or i32 %3648, 208
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = or i32 %3648, 248
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3704 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3705 = or i32 %3648, 16
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3712 = or i32 %3648, 32
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3718 = call float @dx.op.dot4.f32(i32 56, float %3714, float %3715, float %3716, float %3717, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3719 = call float @dx.op.unary.f32(i32 27, float %3704)  ; Round_ni(value)
  %3720 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3721 = call float @dx.op.unary.f32(i32 27, float %3711)  ; Round_ni(value)
  %3722 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3723 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = fadd fast float %3722, %3720
  %3726 = fadd fast float %3725, %3724
  %3727 = fcmp fast oeq float %3726, 0.000000e+00
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %3566, float %3567, float %3568, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3566, float %3567, float %3568, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3730 = call float @dx.op.dot4.f32(i32 56, float %3700, float %3701, float %3702, float %3703, float %3569, float %3570, float %3571, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3731 = call float @dx.op.dot4.f32(i32 56, float %3707, float %3708, float %3709, float %3710, float %3569, float %3570, float %3571, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3732 = fsub fast float %3728, %3704
  %3733 = fsub fast float %3730, %3704
  %3734 = fsub fast float %3729, %3711
  %3735 = fsub fast float %3731, %3711
  %3736 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3652, float %3653, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3739 = fadd fast float %3738, %3736
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3742 = fcmp fast ogt float %3740, %3741
  %3743 = and i1 %3727, %3742
  br i1 %3743, label %3765, label %3744

; <label>:3744                                    ; preds = %4031, %3848, %3765, %3622
  %3745 = phi float [ %3624, %3765 ], [ %3851, %3848 ], [ %3851, %4031 ], [ %3624, %3622 ]
  %3746 = phi float [ %3625, %3765 ], [ %3625, %3848 ], [ %4006, %4031 ], [ %3625, %3622 ]
  %3747 = phi float [ %3626, %3765 ], [ %3626, %3848 ], [ %4005, %4031 ], [ %3626, %3622 ]
  %3748 = phi float [ %3627, %3765 ], [ %3627, %3848 ], [ %4003, %4031 ], [ %3627, %3622 ]
  %3749 = phi float [ %3628, %3765 ], [ %3628, %3848 ], [ %3975, %4031 ], [ %3628, %3622 ]
  %3750 = phi float [ %3629, %3765 ], [ %3629, %3848 ], [ %3973, %4031 ], [ %3629, %3622 ]
  %3751 = phi float [ %3630, %3765 ], [ %3630, %3848 ], [ %4041, %4031 ], [ %3630, %3622 ]
  %3752 = phi float [ %3631, %3765 ], [ %3631, %3848 ], [ %4042, %4031 ], [ %3631, %3622 ]
  %3753 = phi float [ %3632, %3765 ], [ %3632, %3848 ], [ %4043, %4031 ], [ %3632, %3622 ]
  %3754 = phi float [ %3633, %3765 ], [ %3633, %3848 ], [ %3954, %4031 ], [ %3633, %3622 ]
  %3755 = phi float [ %3634, %3765 ], [ %3634, %3848 ], [ %3955, %4031 ], [ %3634, %3622 ]
  %3756 = phi float [ %3635, %3765 ], [ %3635, %3848 ], [ %3956, %4031 ], [ %3635, %3622 ]
  %3757 = phi float [ %3636, %3765 ], [ %3636, %3848 ], [ %3983, %4031 ], [ %3636, %3622 ]
  %3758 = phi float [ %3637, %3765 ], [ %3637, %3848 ], [ %3980, %4031 ], [ %3637, %3622 ]
  %3759 = phi float [ %3638, %3765 ], [ %3638, %3848 ], [ %3977, %4031 ], [ %3638, %3622 ]
  %3760 = phi float [ %3639, %3765 ], [ %3639, %3848 ], [ %3971, %4031 ], [ %3639, %3622 ]
  %3761 = phi float [ %3640, %3765 ], [ %3640, %3848 ], [ %3966, %4031 ], [ %3640, %3622 ]
  %3762 = phi float [ %3641, %3765 ], [ %3641, %3848 ], [ %3967, %4031 ], [ %3641, %3622 ]
  %3763 = phi float [ %3642, %3765 ], [ %3642, %3848 ], [ %3968, %4031 ], [ %3642, %3622 ]
  %3764 = icmp eq i32 %3646, 0
  br i1 %3764, label %4044, label %3622

; <label>:3765                                    ; preds = %3622
  %3766 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3767 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3768 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3772 = extractvalue %dx.types.ResRet.i32 %3655, 3
  %3773 = extractvalue %dx.types.ResRet.i32 %3655, 2
  %3774 = bitcast float %3766 to i32
  %3775 = add i32 %3772, 0
  %3776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3776, %dx.types.Handle %3777, float %3704, float %3711, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3733, float %3735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = fmul fast float %3779, %3771
  %3781 = fadd fast float %3780, %3770
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fmul fast float %3704, %3664
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3711, float %3783)  ; FMad(a,b,c)
  %3785 = fadd fast float %3784, %3769
  %3786 = fmul fast float %3704, %3666
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3711, float %3786)  ; FMad(a,b,c)
  %3788 = fadd fast float %3787, %3768
  %3789 = fmul fast float %3732, %3664
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3734, float %3789)  ; FMad(a,b,c)
  %3791 = fmul fast float %3732, %3666
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3734, float %3791)  ; FMad(a,b,c)
  %3793 = fmul fast float %3733, %3664
  %3794 = call float @dx.op.tertiary.f32(i32 46, float %3665, float %3735, float %3793)  ; FMad(a,b,c)
  %3795 = fmul fast float %3733, %3666
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3667, float %3735, float %3795)  ; FMad(a,b,c)
  %3797 = add i32 %3773, 0
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3798, %dx.types.Handle %3777, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = and i32 %3774, 1024
  %3802 = icmp ne i32 %3801, 0
  %3803 = fcmp fast ogt float %3800, 0x3FE0101020000000
  %3804 = uitofp i1 %3803 to float
  %3805 = select i1 %3802, float %3804, float %3800
  %3806 = and i32 %3774, 8192
  %3807 = icmp ne i32 %3806, 0
  %3808 = select i1 %3807, float %3767, float 1.000000e+00
  %3809 = fmul fast float %3704, 2.000000e+00
  %3810 = fadd fast float %3809, -1.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3812 = fmul fast float %3811, %3697
  %3813 = fsub fast float %3812, %3697
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fmul fast float %3711, 2.000000e+00
  %3816 = fadd fast float %3815, -1.000000e+00
  %3817 = call float @dx.op.unary.f32(i32 6, float %3816)  ; FAbs(value)
  %3818 = fmul fast float %3817, %3698
  %3819 = fsub fast float %3818, %3698
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3723, %3660
  %3822 = fsub fast float %3821, %3660
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3782, %3808
  %3825 = fmul fast float %3824, %3779
  %3826 = fmul fast float %3825, %3814
  %3827 = fmul fast float %3826, %3805
  %3828 = fmul fast float %3827, %3820
  %3829 = fmul fast float %3828, %3823
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3833 = fsub fast float %3740, %3832
  %3834 = fmul fast float %3833, %3831
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3829, %3661
  %3837 = fadd fast float %3829, %3661
  %3838 = fmul fast float %3837, %3670
  %3839 = fsub fast float %3838, %3670
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = and i32 %3774, 128
  %3842 = icmp ne i32 %3841, 0
  %3843 = select i1 %3842, float %3840, float %3836
  %3844 = fmul fast float %3843, %3835
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = fcmp fast ugt float %3844, %3846
  br i1 %3847, label %3848, label %3744

; <label>:3848                                    ; preds = %3765
  %3849 = select i1 %3807, float %3844, float 0.000000e+00
  %3850 = fadd fast float %3849, %3624
  %3851 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  br i1 %3807, label %3744, label %3852

; <label>:3852                                    ; preds = %3848
  %3853 = and i32 %3774, 4
  %3854 = and i32 %3774, 8
  %3855 = add i32 %3656, 0
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3855, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3856, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = bitcast float %3682 to i32
  %3864 = and i32 %3863, 255
  %3865 = uitofp i32 %3864 to float
  %3866 = lshr i32 %3863, 8
  %3867 = and i32 %3866, 255
  %3868 = uitofp i32 %3867 to float
  %3869 = fmul fast float %3862, %3865
  %3870 = fadd fast float %3869, %3868
  %3871 = fmul fast float %3870, 0x3F70101000000000
  %3872 = add i32 %3657, 0
  %3873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3872, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3874 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3873, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = bitcast float %3676 to i32
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = lshr i32 %3879, 8
  %3883 = and i32 %3882, 255
  %3884 = uitofp i32 %3883 to float
  %3885 = lshr i32 %3879, 16
  %3886 = and i32 %3885, 255
  %3887 = uitofp i32 %3886 to float
  %3888 = fmul fast float %3887, 0x3F70101000000000
  %3889 = fmul fast float %3875, %3881
  %3890 = fadd fast float %3889, %3884
  %3891 = fmul fast float %3890, 0x3F70101000000000
  %3892 = fadd fast float %3876, -5.000000e-01
  %3893 = fadd fast float %3878, -5.000000e-01
  %3894 = fmul fast float %3892, %3888
  %3895 = fmul fast float %3893, %3888
  %3896 = fadd fast float %3894, 5.000000e-01
  %3897 = fadd fast float %3895, 5.000000e-01
  %3898 = fmul fast float %3859, %3685
  %3899 = fmul fast float %3860, %3686
  %3900 = fmul fast float %3861, %3687
  %3901 = fmul fast float %3896, 2.000000e+00
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = fmul fast float %3897, 2.000000e+00
  %3904 = fadd fast float %3903, -1.000000e+00
  %3905 = fadd fast float %3902, %3904
  %3906 = fmul fast float %3905, 5.000000e-01
  %3907 = fsub fast float %3902, %3904
  %3908 = fmul fast float %3907, 5.000000e-01
  %3909 = call float @dx.op.unary.f32(i32 6, float %3906)  ; FAbs(value)
  %3910 = fsub fast float 1.000000e+00, %3909
  %3911 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3912 = fsub fast float %3910, %3911
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3906, float %3908, float %3912, float %3906, float %3908, float %3912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call float @dx.op.unary.f32(i32 25, float %3913)  ; Rsqrt(value)
  %3915 = fmul fast float %3906, %3914
  %3916 = fmul fast float %3908, %3914
  %3917 = fmul fast float %3914, %3912
  %3918 = fmul fast float %3917, %3651
  %3919 = fmul fast float %3917, %3652
  %3920 = fmul fast float %3917, %3653
  %3921 = fmul fast float %3915, %3673
  %3922 = fmul fast float %3915, %3674
  %3923 = fmul fast float %3915, %3675
  %3924 = fadd fast float %3921, %3918
  %3925 = fadd fast float %3922, %3919
  %3926 = fadd fast float %3923, %3920
  %3927 = fmul fast float %3916, %3679
  %3928 = fmul fast float %3916, %3680
  %3929 = fmul fast float %3916, %3681
  %3930 = fadd fast float %3924, %3927
  %3931 = fadd fast float %3925, %3928
  %3932 = fadd fast float %3926, %3929
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float %3930, float %3931, float %3932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call float @dx.op.unary.f32(i32 25, float %3933)  ; Rsqrt(value)
  %3935 = fmul fast float %3930, %3934
  %3936 = fmul fast float %3931, %3934
  %3937 = fmul fast float %3932, %3934
  %3938 = icmp ne i32 %3854, 0
  %3939 = select i1 %3938, float 1.000000e+00, float 0.000000e+00
  %3940 = fmul fast float %3844, %3939
  %3941 = and i32 %3774, 1
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %3943, label %3947

; <label>:3943                                    ; preds = %3852
  %3944 = fsub fast float %3935, %3633
  %3945 = fsub fast float %3936, %3634
  %3946 = fsub fast float %3937, %3635
  br label %3947

; <label>:3947                                    ; preds = %3943, %3852
  %3948 = phi float [ %3944, %3943 ], [ %3935, %3852 ]
  %3949 = phi float [ %3945, %3943 ], [ %3936, %3852 ]
  %3950 = phi float [ %3946, %3943 ], [ %3937, %3852 ]
  %3951 = fmul float %3950, %3940
  %3952 = fmul float %3949, %3940
  %3953 = fmul float %3948, %3940
  %3954 = fadd fast float %3953, %3633
  %3955 = fadd fast float %3952, %3634
  %3956 = fadd fast float %3951, %3635
  %3957 = icmp ne i32 %3853, 0
  %3958 = select i1 %3957, float 1.000000e+00, float 0.000000e+00
  %3959 = fmul fast float %3844, %3958
  %3960 = fsub fast float %3898, %3640
  %3961 = fsub fast float %3899, %3641
  %3962 = fsub fast float %3900, %3642
  %3963 = fmul fast float %3960, %3959
  %3964 = fmul fast float %3961, %3959
  %3965 = fmul fast float %3962, %3959
  %3966 = fadd fast float %3963, %3640
  %3967 = fadd fast float %3964, %3641
  %3968 = fadd fast float %3965, %3642
  %3969 = fsub fast float %3871, %3639
  %3970 = fmul fast float %3969, %3959
  %3971 = fadd fast float %3970, %3639
  %3972 = fmul fast float %3959, %3629
  %3973 = fsub fast float %3629, %3972
  %3974 = fmul fast float %3959, %3628
  %3975 = fsub fast float %3628, %3974
  %3976 = fadd fast float %3844, %3638
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fsub fast float %3891, %3637
  %3979 = fmul fast float %3978, %3940
  %3980 = fadd fast float %3979, %3637
  %3981 = fsub fast float %3877, %3636
  %3982 = fmul fast float %3981, %3940
  %3983 = fadd fast float %3982, %3636
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = fmul fast float %3987, %3984
  %3989 = fadd fast float %3988, %3986
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = bitcast float %3688 to i32
  %3992 = and i32 %3991, 65535
  %3993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3992)  ; LegacyF16ToF32(value)
  %3994 = lshr i32 %3991, 16
  %3995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3994)  ; LegacyF16ToF32(value)
  %3996 = fcmp fast oge float %3993, 0.000000e+00
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = select i1 %3996, float %3993, float %3998
  %4000 = fadd fast float %3999, %3995
  %4001 = fsub fast float %3990, %3627
  %4002 = fmul fast float %4001, %3844
  %4003 = fadd fast float %4002, %3627
  %4004 = fmul fast float %4000, %3844
  %4005 = call float @dx.op.binary.f32(i32 35, float %3626, float %4004)  ; FMax(a,b)
  %4006 = call float @dx.op.binary.f32(i32 35, float %3625, float %3844)  ; FMax(a,b)
  %4007 = and i32 %3774, 16
  %4008 = icmp eq i32 %4007, 0
  br i1 %4008, label %4031, label %4009

; <label>:4009                                    ; preds = %3947
  %4010 = bitcast float %3694 to i32
  %4011 = add i32 %3691, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4011, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4012, %dx.types.Handle %3857, float %3785, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = and i32 %4010, 65535
  %4018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4017)  ; LegacyF16ToF32(value)
  %4019 = fmul fast float %4014, %3685
  %4020 = fmul fast float %4015, %3686
  %4021 = fmul fast float %4016, %3687
  %4022 = and i32 %3774, 16384
  %4023 = icmp ne i32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = select i1 %4023, float %4025, float 1.000000e+00
  %4027 = fmul fast float %4026, %4018
  %4028 = fmul fast float %4019, %4027
  %4029 = fmul fast float %4020, %4027
  %4030 = fmul fast float %4021, %4027
  br label %4031

; <label>:4031                                    ; preds = %4009, %3947
  %4032 = phi float [ %4028, %4009 ], [ 0.000000e+00, %3947 ]
  %4033 = phi float [ %4029, %4009 ], [ 0.000000e+00, %3947 ]
  %4034 = phi float [ %4030, %4009 ], [ 0.000000e+00, %3947 ]
  %4035 = fsub fast float %4032, %3630
  %4036 = fsub fast float %4033, %3631
  %4037 = fsub fast float %4034, %3632
  %4038 = fmul fast float %4035, %3844
  %4039 = fmul fast float %4036, %3844
  %4040 = fmul fast float %4037, %3844
  %4041 = fadd fast float %4038, %3630
  %4042 = fadd fast float %4039, %3631
  %4043 = fadd fast float %4040, %3632
  br label %3744

; <label>:4044                                    ; preds = %3744
  br label %4045

; <label>:4045                                    ; preds = %4044, %3559
  %4046 = phi float [ 0.000000e+00, %3559 ], [ %3745, %4044 ]
  %4047 = phi float [ %1262, %3559 ], [ %3746, %4044 ]
  %4048 = phi float [ %3503, %3559 ], [ %3747, %4044 ]
  %4049 = phi float [ %3482, %3559 ], [ %3748, %4044 ]
  %4050 = phi float [ 0.000000e+00, %3559 ], [ %3749, %4044 ]
  %4051 = phi float [ 0.000000e+00, %3559 ], [ %3750, %4044 ]
  %4052 = phi float [ %3525, %3559 ], [ %3751, %4044 ]
  %4053 = phi float [ %3527, %3559 ], [ %3752, %4044 ]
  %4054 = phi float [ %3529, %3559 ], [ %3753, %4044 ]
  %4055 = phi float [ %3555, %3559 ], [ %3754, %4044 ]
  %4056 = phi float [ %3556, %3559 ], [ %3755, %4044 ]
  %4057 = phi float [ %3557, %3559 ], [ %3756, %4044 ]
  %4058 = phi float [ %3481, %3559 ], [ %3757, %4044 ]
  %4059 = phi float [ %3480, %3559 ], [ %3758, %4044 ]
  %4060 = phi float [ 0.000000e+00, %3559 ], [ %3759, %4044 ]
  %4061 = phi float [ %3479, %3559 ], [ %3760, %4044 ]
  %4062 = phi float [ %3510, %3559 ], [ %3761, %4044 ]
  %4063 = phi float [ %3511, %3559 ], [ %3762, %4044 ]
  %4064 = phi float [ %3512, %3559 ], [ %3763, %4044 ]
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float %4055, float %4056, float %4057)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = call float @dx.op.unary.f32(i32 25, float %4065)  ; Rsqrt(value)
  %4067 = fmul fast float %4066, %4055
  %4068 = fmul fast float %4066, %4056
  %4069 = fmul fast float %4066, %4057
  %4070 = fadd fast float %4060, %1262
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call float @dx.op.unary.f32(i32 25, float %4072)  ; Rsqrt(value)
  %4074 = fmul fast float %4073, %4067
  %4075 = fmul fast float %4073, %4068
  %4076 = fmul fast float %4073, %4069
  br label %4077

; <label>:4077                                    ; preds = %4045, %3470
  %4078 = phi float [ %4074, %4045 ], [ %3555, %3470 ]
  %4079 = phi float [ %4075, %4045 ], [ %3556, %3470 ]
  %4080 = phi float [ %4076, %4045 ], [ %3557, %3470 ]
  %4081 = phi float [ %4062, %4045 ], [ %3510, %3470 ]
  %4082 = phi float [ %4063, %4045 ], [ %3511, %3470 ]
  %4083 = phi float [ %4064, %4045 ], [ %3512, %3470 ]
  %4084 = phi float [ %4052, %4045 ], [ %3525, %3470 ]
  %4085 = phi float [ %4053, %4045 ], [ %3527, %3470 ]
  %4086 = phi float [ %4054, %4045 ], [ %3529, %3470 ]
  %4087 = phi float [ %4061, %4045 ], [ %3479, %3470 ]
  %4088 = phi float [ %4071, %4045 ], [ %1262, %3470 ]
  %4089 = phi float [ %4059, %4045 ], [ %3480, %3470 ]
  %4090 = phi float [ %4058, %4045 ], [ %3481, %3470 ]
  %4091 = phi float [ %4051, %4045 ], [ 0.000000e+00, %3470 ]
  %4092 = phi float [ %4050, %4045 ], [ 0.000000e+00, %3470 ]
  %4093 = phi float [ %4046, %4045 ], [ 0.000000e+00, %3470 ]
  %4094 = phi float [ %4048, %4045 ], [ %3503, %3470 ]
  %4095 = phi float [ %4047, %4045 ], [ %1262, %3470 ]
  %4096 = phi float [ %4049, %4045 ], [ %3482, %3470 ]
  %4097 = fadd fast float %4087, 0xBFB99999A0000000
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = fmul fast float %4098, 0x3FF1C71C80000000
  %4100 = call float @dx.op.binary.f32(i32 36, float %4087, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4101 = fsub fast float 1.000000e+00, %4099
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4102, %4081
  %4104 = fmul fast float %4102, %4082
  %4105 = fmul fast float %4102, %4083
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = fmul fast float %4099, %4081
  %4110 = fmul fast float %4099, %4082
  %4111 = fmul fast float %4099, %4083
  %4112 = fadd fast float %4109, %4100
  %4113 = fadd fast float %4110, %4100
  %4114 = fadd fast float %4111, %4100
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.i32 %4119, 3
  %4121 = and i32 %4120, 8
  %4122 = icmp ne i32 %4121, 0
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4081)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4107, float %4081)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 35, float %4108, float %4081)  ; FMax(a,b)
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4106, float %4107, float %4108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = select i1 %271, float %4081, float %4106
  %4128 = select i1 %271, float %4126, float %4107
  %4129 = select i1 %271, float 1.000000e+00, float %4108
  %4130 = select i1 %4122, float %4123, float %4127
  %4131 = select i1 %4122, float %4124, float %4128
  %4132 = select i1 %4122, float %4125, float %4129
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = fadd fast float %4134, %199
  %4138 = fadd fast float %4135, %200
  %4139 = fadd fast float %4136, %201
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4143 = fsub fast float %4137, %4141
  %4144 = fsub fast float %4138, %4142
  %4145 = fmul fast float %4143, %4143
  %4146 = fmul fast float %4144, %4144
  %4147 = fadd fast float %4145, %4146
  %4148 = call float @dx.op.unary.f32(i32 24, float %4147)  ; Sqrt(value)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4150 = fcmp fast olt float %4148, %4149
  br i1 %4150, label %4151, label %4218

; <label>:4151                                    ; preds = %4077
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4162 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4163 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4164 = fadd fast float %4161, %4137
  %4165 = fadd fast float %4162, %4138
  %4166 = fadd fast float %4163, %4139
  %4167 = fmul fast float %4164, %4153
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4155, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = fmul fast float %4164, %4158
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4166, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fsub fast float %4169, %4161
  %4174 = fsub fast float %4172, %4162
  %4175 = fsub fast float %4173, %4141
  %4176 = fadd fast float %4175, %4149
  %4177 = fsub fast float %4174, %4142
  %4178 = fadd fast float %4177, %4149
  %4179 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4180 = fmul fast float %4176, %4179
  %4181 = fmul fast float %4178, %4179
  %4182 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4184 = fsub fast float 1.000000e+00, %4182
  %4185 = fsub fast float 1.000000e+00, %4183
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = fcmp fast ugt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4492

; <label>:4189                                    ; preds = %4151
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = fmul fast float %4191, %4187
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4194 = fadd fast float %4193, %4192
  %4195 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4196 = fadd fast float %4194, %4163
  %4197 = fmul fast float %4169, %4157
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4160, float %4197)  ; FMad(a,b,c)
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4195, float %4198)  ; FMad(a,b,c)
  %4200 = fsub fast float %4199, %4163
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4203 = fsub fast float %4200, %4202
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4184, float %4185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = fadd fast float %4209, %4205
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4210, %4206
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  %4216 = fadd fast float %4211, %4207
  %4217 = fmul fast float %4216, 0x3F847AE140000000
  br label %4492

; <label>:4218                                    ; preds = %4077
  %4219 = and i32 %250, 1
  %4220 = icmp eq i32 %4219, 0
  br i1 %4220, label %4492, label %4221

; <label>:4221                                    ; preds = %4218
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4232 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4233 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4234 = fadd fast float %4231, %4137
  %4235 = fadd fast float %4232, %4138
  %4236 = fadd fast float %4233, %4139
  %4237 = fmul fast float %4234, %4223
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4225, float %4237)  ; FMad(a,b,c)
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = fmul fast float %4234, %4228
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4229, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4230, float %4241)  ; FMad(a,b,c)
  %4243 = fsub fast float %4239, %4231
  %4244 = fsub fast float %4242, %4232
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 3
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 0
  %4254 = extractvalue %dx.types.CBufRet.i32 %4252, 1
  %4255 = udiv i32 %4254, %4253
  %4256 = fsub fast float %4243, %4246
  %4257 = fsub fast float %4244, %4247
  %4258 = call float @dx.op.binary.f32(i32 35, float %4256, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4260 = call float @dx.op.binary.f32(i32 36, float %4258, float %4248)  ; FMin(a,b)
  %4261 = call float @dx.op.binary.f32(i32 36, float %4259, float %4249)  ; FMin(a,b)
  %4262 = add i32 %4253, -1
  %4263 = add i32 %4255, -1
  %4264 = fmul fast float %4260, %4251
  %4265 = fmul fast float %4261, %4251
  %4266 = fptoui float %4264 to i32
  %4267 = fptoui float %4265 to i32
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4266, i32 %4262)  ; UMin(a,b)
  %4269 = call i32 @dx.op.binary.i32(i32 40, i32 %4267, i32 %4263)  ; UMin(a,b)
  %4270 = mul i32 %4269, %4253
  %4271 = add i32 %4270, %4268
  %4272 = shl i32 %4271, 2
  %4273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.i32 %4273, 0
  %4275 = icmp eq i32 %4274, -1
  br i1 %4275, label %4492, label %4276

; <label>:4276                                    ; preds = %4221
  %4277 = mul i32 %4274, 148
  %4278 = add i32 %4277, 4
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4277, 8
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4277, 36
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4277, 60
  %4288 = add i32 %4277, 92
  %4289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.i32 %4289, 0
  %4291 = add i32 %4277, 116
  %4292 = fsub fast float %4243, %4280
  %4293 = fsub fast float %4244, %4283
  %4294 = fmul fast float %4251, %4292
  %4295 = fmul fast float %4251, %4293
  %4296 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4298 = fsub fast float 1.000000e+00, %4297
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4301 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4302 = call float @dx.op.unary.f32(i32 83, float %4298)  ; DerivCoarseX(value)
  %4303 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4304 = call float @dx.op.unary.f32(i32 84, float %4298)  ; DerivCoarseY(value)
  %4305 = fmul fast float %4301, %4300
  %4306 = fmul fast float %4302, %4300
  %4307 = fmul fast float %4303, %4300
  %4308 = fmul fast float %4304, %4300
  %4309 = call float @dx.op.dot2.f32(i32 54, float %4307, float %4308, float %4307, float %4308)  ; Dot2(ax,ay,bx,by)
  %4310 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float %4309)  ; FMax(a,b)
  %4312 = call float @dx.op.unary.f32(i32 23, float %4311)  ; Log(value)
  %4313 = fmul fast float %4312, 5.000000e-01
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4316 = fadd fast float %4315, %4313
  %4317 = call float @dx.op.binary.f32(i32 35, float %4316, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4320 = fadd fast float %4319, %4317
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = fadd fast float %4320, %4322
  %4324 = add i32 %4290, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4325, i32 0)  ; GetDimensions(handle,mipLevel)
  %4327 = extractvalue %dx.types.Dimensions %4326, 0
  %4328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4327)  ; FirstbitLo(value)
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4331 = sub nsw i32 %4330, %4328
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4323, %4332
  %4334 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4325, %dx.types.Handle %48, float %4296, float %4298, float %4286, float undef, i32 0, i32 0, i32 undef, float %4334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = fcmp ule float %4336, 0x3FE0101020000000
  %4338 = extractvalue %dx.types.CBufRet.i32 %4329, 0
  %4339 = and i32 %4338, 128
  %4340 = icmp ne i32 %4339, 0
  %4341 = and i1 %4337, %4340
  br i1 %4341, label %4492, label %4342

; <label>:4342                                    ; preds = %4276
  %4343 = add i32 %4277, 20
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = add i32 %4277, 24
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = add i32 %4277, 40
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = add i32 %4277, 96
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = fmul fast float %4356, %4296
  %4358 = fmul fast float %4356, %4298
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4360 = fadd fast float %4357, %4359
  %4361 = fadd fast float %4358, %4359
  %4362 = add i32 %4354, 0
  %4363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4363, i32 0)  ; GetDimensions(handle,mipLevel)
  %4365 = extractvalue %dx.types.Dimensions %4364, 0
  %4366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4365)  ; FirstbitLo(value)
  %4367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.i32 %4367, 1
  %4369 = sub nsw i32 %4368, %4366
  %4370 = sitofp i32 %4369 to float
  %4371 = fsub fast float %4320, %4370
  %4372 = call float @dx.op.binary.f32(i32 35, float %4371, float 0.000000e+00)  ; FMax(a,b)
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4363, %dx.types.Handle %48, float %4360, float %4361, float %4351, float undef, i32 0, i32 0, i32 undef, float %4372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fmul fast float %4374, %4345
  %4376 = fadd fast float %4375, %4348
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4385 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4386 = fadd fast float %4382, %4243
  %4387 = fadd fast float %4384, %4244
  %4388 = fadd fast float %4376, %4385
  %4389 = fmul fast float %4386, %4378
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4379, float %4389)  ; FMad(a,b,c)
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4388, float %4380, float %4390)  ; FMad(a,b,c)
  %4392 = fsub fast float %4391, %4385
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4395 = fsub fast float %4392, %4394
  %4396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.i32 %4396, 0
  %4398 = call i32 @dx.op.binary.i32(i32 40, i32 %4274, i32 %4397)  ; UMin(a,b)
  %4399 = mul i32 %4398, 36
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = add i32 %4399, 4
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = fmul fast float %4404, %4296
  %4406 = fmul fast float %4404, %4298
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4408 = fadd fast float %4405, %4407
  %4409 = fadd fast float %4406, %4407
  %4410 = icmp eq i32 %4401, 0
  br i1 %4410, label %4479, label %4411

; <label>:4411                                    ; preds = %4342
  br label %4412

; <label>:4412                                    ; preds = %4469, %4411
  %4413 = phi float [ %4470, %4469 ], [ 0.000000e+00, %4411 ]
  %4414 = phi float [ %4471, %4469 ], [ 0.000000e+00, %4411 ]
  %4415 = phi float [ %4472, %4469 ], [ 0.000000e+00, %4411 ]
  %4416 = phi float [ %4473, %4469 ], [ 0.000000e+00, %4411 ]
  %4417 = phi float [ %4474, %4469 ], [ 0.000000e+00, %4411 ]
  %4418 = phi float [ %4475, %4469 ], [ 0.000000e+00, %4411 ]
  %4419 = phi i32 [ %4476, %4469 ], [ 0, %4411 ]
  %4420 = shl i32 %4419, 2
  %4421 = add i32 %4287, %4420
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = add i32 %4291, %4420
  %4425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4424, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.i32 %4425, 0
  %4427 = add i32 %4426, 0
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4428, i32 0)  ; GetDimensions(handle,mipLevel)
  %4430 = extractvalue %dx.types.Dimensions %4429, 0
  %4431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4430)  ; FirstbitLo(value)
  %4432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.i32 %4432, 1
  %4434 = sub nsw i32 %4433, %4431
  %4435 = sitofp i32 %4434 to float
  %4436 = fsub fast float %4320, %4435
  %4437 = call float @dx.op.binary.f32(i32 35, float %4436, float 0.000000e+00)  ; FMax(a,b)
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4428, %dx.types.Handle %48, float %4408, float %4409, float %4423, float undef, i32 0, i32 0, i32 undef, float %4437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = fcmp fast ogt float %4439, 0.000000e+00
  br i1 %4440, label %4441, label %4469

; <label>:4441                                    ; preds = %4412
  %4442 = add i32 %4402, %4420
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = and i32 %4444, 32767
  %4446 = mul nuw nsw i32 %4445, 928
  %4447 = add nuw nsw i32 %4446, 48
  %4448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = add nuw nsw i32 %4446, 60
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fmul fast float %4449, %4439
  %4458 = fmul fast float %4450, %4439
  %4459 = fmul fast float %4451, %4439
  %4460 = fadd fast float %4457, %4413
  %4461 = fadd fast float %4458, %4414
  %4462 = fadd fast float %4459, %4415
  %4463 = fmul fast float %4454, %4439
  %4464 = fmul fast float %4455, %4439
  %4465 = fmul fast float %4456, %4439
  %4466 = fadd fast float %4463, %4416
  %4467 = fadd fast float %4464, %4417
  %4468 = fadd fast float %4465, %4418
  br label %4469

; <label>:4469                                    ; preds = %4441, %4412
  %4470 = phi float [ %4460, %4441 ], [ %4413, %4412 ]
  %4471 = phi float [ %4461, %4441 ], [ %4414, %4412 ]
  %4472 = phi float [ %4462, %4441 ], [ %4415, %4412 ]
  %4473 = phi float [ %4466, %4441 ], [ %4416, %4412 ]
  %4474 = phi float [ %4467, %4441 ], [ %4417, %4412 ]
  %4475 = phi float [ %4468, %4441 ], [ %4418, %4412 ]
  %4476 = add nuw i32 %4419, 1
  %4477 = icmp eq i32 %4476, %4401
  br i1 %4477, label %4478, label %4412

; <label>:4478                                    ; preds = %4469
  br label %4479

; <label>:4479                                    ; preds = %4478, %4342
  %4480 = phi float [ 0.000000e+00, %4342 ], [ %4470, %4478 ]
  %4481 = phi float [ 0.000000e+00, %4342 ], [ %4471, %4478 ]
  %4482 = phi float [ 0.000000e+00, %4342 ], [ %4472, %4478 ]
  %4483 = phi float [ 0.000000e+00, %4342 ], [ %4473, %4478 ]
  %4484 = phi float [ 0.000000e+00, %4342 ], [ %4474, %4478 ]
  %4485 = phi float [ 0.000000e+00, %4342 ], [ %4475, %4478 ]
  %4486 = fadd fast float %4483, %4480
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4484, %4481
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  %4490 = fadd fast float %4485, %4482
  %4491 = fmul fast float %4490, 0x3F847AE140000000
  br label %4492

; <label>:4492                                    ; preds = %4479, %4276, %4221, %4218, %4189, %4151
  %4493 = phi float [ %4203, %4189 ], [ -1.310720e+05, %4151 ], [ %4395, %4479 ], [ -1.310720e+05, %4221 ], [ -1.310720e+05, %4276 ], [ -1.310720e+05, %4218 ]
  %4494 = phi float [ %4213, %4189 ], [ 0.000000e+00, %4151 ], [ %4487, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4495 = phi float [ %4215, %4189 ], [ 0.000000e+00, %4151 ], [ %4489, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4496 = phi float [ %4217, %4189 ], [ 0.000000e+00, %4151 ], [ %4491, %4479 ], [ 0.000000e+00, %4221 ], [ 0.000000e+00, %4276 ], [ 0.000000e+00, %4218 ]
  %4497 = phi i1 [ true, %4189 ], [ false, %4151 ], [ true, %4479 ], [ false, %4221 ], [ false, %4276 ], [ false, %4218 ]
  %4498 = and i32 %250, 3
  %4499 = icmp eq i32 %4498, 1
  %4500 = select i1 %4499, float 1.000000e+00, float 0.000000e+00
  %4501 = fsub fast float %4493, %201
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = select i1 %4497, float %4502, float 1.000000e+00
  %4504 = fmul fast float %4503, %4500
  %4505 = icmp eq i32 %4498, 3
  %4506 = select i1 %4505, float 1.000000e+00, float %4504
  %4507 = call float @dx.op.binary.f32(i32 35, float %4093, float %4506)  ; FMax(a,b)
  %4508 = fcmp fast olt float %4506, 1.000000e+00
  %4509 = fcmp uge float %76, 0.000000e+00
  %4510 = and i1 %4509, %4508
  br i1 %4510, label %4511, label %4521

; <label>:4511                                    ; preds = %4492
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fadd fast float %4513, %4507
  %4517 = fcmp ule float %75, 0.000000e+00
  %4518 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = select i1 %4517, float %4518, float 1.000000e+00
  %4520 = fmul fast float %4519, %4515
  br label %4521

; <label>:4521                                    ; preds = %4511, %4492
  %4522 = phi float [ %4516, %4511 ], [ %4507, %4492 ]
  %4523 = phi float [ %4514, %4511 ], [ 0.000000e+00, %4492 ]
  %4524 = phi float [ %4520, %4511 ], [ 0.000000e+00, %4492 ]
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = fcmp fast une float %4526, 0.000000e+00
  %4529 = fcmp fast une float %4527, 0.000000e+00
  %4530 = or i1 %4528, %4529
  br i1 %4530, label %4531, label %5090

; <label>:4531                                    ; preds = %4521
  br i1 %4528, label %4532, label %4805

; <label>:4532                                    ; preds = %4531
  %4533 = call float @dx.op.unary.f32(i32 23, float %4090)  ; Log(value)
  %4534 = fmul fast float %4533, 4.000000e+00
  %4535 = call float @dx.op.unary.f32(i32 21, float %4534)  ; Exp(value)
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = fmul fast float %4537, %62
  %4539 = fmul fast float %4537, %63
  %4540 = fmul fast float %4537, %64
  %4541 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4544 = call float @dx.op.unary.f32(i32 23, float %4541)  ; Log(value)
  %4545 = call float @dx.op.unary.f32(i32 23, float %4542)  ; Log(value)
  %4546 = call float @dx.op.unary.f32(i32 23, float %4543)  ; Log(value)
  %4547 = fmul fast float %4544, 4.000000e+00
  %4548 = fmul fast float %4545, 4.000000e+00
  %4549 = fmul fast float %4546, 4.000000e+00
  %4550 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4551 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4552 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4553 = fadd fast float %4551, %4550
  %4554 = fadd fast float %4553, %4552
  %4555 = fdiv fast float 1.000000e+00, %4554
  %4556 = fmul fast float %4555, %4550
  %4557 = fcmp fast ogt float %72, 0.000000e+00
  %4558 = fcmp fast ogt float %73, 0.000000e+00
  %4559 = fcmp fast ogt float %74, 0.000000e+00
  %4560 = fcmp fast olt float %72, 0.000000e+00
  %4561 = fcmp fast olt float %73, 0.000000e+00
  %4562 = fcmp fast olt float %74, 0.000000e+00
  %4563 = zext i1 %4557 to i32
  %4564 = zext i1 %4558 to i32
  %4565 = zext i1 %4559 to i32
  %4566 = zext i1 %4560 to i32
  %4567 = zext i1 %4561 to i32
  %4568 = zext i1 %4562 to i32
  %4569 = sub nsw i32 %4563, %4566
  %4570 = sub nsw i32 %4564, %4567
  %4571 = sub nsw i32 %4565, %4568
  %4572 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4573 = call float @dx.op.unary.f32(i32 83, float %4539)  ; DerivCoarseX(value)
  %4574 = call float @dx.op.unary.f32(i32 83, float %4540)  ; DerivCoarseX(value)
  %4575 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4576 = call float @dx.op.unary.f32(i32 84, float %4539)  ; DerivCoarseY(value)
  %4577 = call float @dx.op.unary.f32(i32 84, float %4540)  ; DerivCoarseY(value)
  %4578 = fcmp fast ole float %282, %4556
  %4579 = fmul fast float %4555, %4553
  %4580 = fcmp fast ole float %282, %4579
  %4581 = select i1 %4580, float %4540, float %4538
  %4582 = select i1 %4580, float %4538, float %4539
  %4583 = select i1 %4578, float %4539, float %4581
  %4584 = select i1 %4578, float %4540, float %4582
  %4585 = select i1 %4580, float %4574, float %4572
  %4586 = select i1 %4580, float %4572, float %4573
  %4587 = select i1 %4578, float %4573, float %4585
  %4588 = select i1 %4578, float %4574, float %4586
  %4589 = select i1 %4580, float %4577, float %4575
  %4590 = select i1 %4580, float %4575, float %4576
  %4591 = select i1 %4578, float %4576, float %4589
  %4592 = select i1 %4578, float %4577, float %4590
  %4593 = call float @dx.op.unary.f32(i32 27, float %4583)  ; Round_ni(value)
  %4594 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4595 = fptosi float %4593 to i32
  %4596 = fptosi float %4594 to i32
  %4597 = xor i32 %4596, %4595
  %4598 = sitofp i32 %4597 to float
  %4599 = fptosi float %4598 to i32
  %4600 = sitofp i32 %4599 to float
  %4601 = fmul fast float %4600, 0x3FE3C6EF40000000
  %4602 = frem fast float %4593, 2.560000e+02
  %4603 = frem fast float %4594, 2.560000e+02
  %4604 = fptoui float %4602 to i32
  %4605 = fptoui float %4603 to i32
  %4606 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4604, i32 %4605, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = fadd fast float %4607, %4601
  %4611 = fadd fast float %4608, %4601
  %4612 = fadd fast float %4609, %4601
  %4613 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4614 = call float @dx.op.unary.f32(i32 22, float %4611)  ; Frc(value)
  %4615 = call float @dx.op.unary.f32(i32 22, float %4612)  ; Frc(value)
  %4616 = fmul fast float %4615, 0x401921FB60000000
  %4617 = call float @dx.op.unary.f32(i32 13, float %4616)  ; Sin(value)
  %4618 = call float @dx.op.unary.f32(i32 12, float %4616)  ; Cos(value)
  %4619 = fsub fast float -0.000000e+00, %4618
  %4620 = fmul fast float %4618, %4583
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4584, float %4620)  ; FMad(a,b,c)
  %4622 = fmul fast float %4617, %4583
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4584, float %4622)  ; FMad(a,b,c)
  %4624 = fadd fast float %4621, %4613
  %4625 = fadd fast float %4623, %4614
  %4626 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4627 = bitcast float %4626 to i32
  %4628 = icmp eq i32 %4627, 0
  br i1 %4628, label %4667, label %4629

; <label>:4629                                    ; preds = %4532
  %4630 = add i32 %4627, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %113, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4634, 2
  %4637 = fsub fast float 1.000000e+00, %4526
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4639 = bitcast float %4526 to i32
  %4640 = sitofp i32 %4639 to float
  %4641 = fadd fast float %4640, 0xC1CFBF8940000000
  %4642 = fmul fast float %4636, %4641
  %4643 = fadd fast float %4642, 0x41CFBF8940000000
  %4644 = fptosi float %4643 to i32
  %4645 = bitcast i32 %4644 to float
  %4646 = bitcast float %4638 to i32
  %4647 = sitofp i32 %4646 to float
  %4648 = fadd fast float %4647, 0xC1CFBF8940000000
  %4649 = fmul fast float %4648, %4636
  %4650 = fadd fast float %4649, 0x41CFBF8940000000
  %4651 = fptosi float %4650 to i32
  %4652 = bitcast i32 %4651 to float
  %4653 = fmul fast float %4645, %4635
  %4654 = fmul fast float %4652, %4635
  %4655 = fsub fast float %4638, %4653
  %4656 = fadd fast float %4654, %4638
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4659 = fsub fast float %4633, %4657
  %4660 = fsub fast float %4658, %4657
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, %4659
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fcmp fast olt float %4665, 0x3F70101020000000
  br i1 %4666, label %4805, label %4667

; <label>:4667                                    ; preds = %4629, %4532
  %4668 = phi float [ %4665, %4629 ], [ %4526, %4532 ]
  %4669 = fmul fast float %4668, %4535
  %4670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.i32 %4670, 1
  %4672 = extractvalue %dx.types.CBufRet.i32 %4670, 0
  %4673 = add i32 %4672, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4674, %dx.types.Handle %112, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.ResRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4675, 2
  %4679 = extractvalue %dx.types.ResRet.f32 %4675, 3
  %4680 = and i32 %4671, 255
  %4681 = uitofp i32 %4680 to float
  %4682 = lshr i32 %4671, 8
  %4683 = and i32 %4682, 255
  %4684 = uitofp i32 %4683 to float
  %4685 = fmul fast float %4679, %4681
  %4686 = fadd fast float %4685, %4684
  %4687 = fmul fast float %4686, 0x3F70101000000000
  %4688 = fadd fast float %4687, 0xBFB99999A0000000
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, 0x3FF1C71C80000000
  %4691 = call float @dx.op.binary.f32(i32 36, float %4687, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4690
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, %4676
  %4695 = fmul fast float %4693, %4677
  %4696 = fmul fast float %4693, %4678
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = fmul fast float %4690, %4676
  %4701 = fmul fast float %4690, %4677
  %4702 = fmul fast float %4690, %4678
  %4703 = fadd fast float %4700, %4691
  %4704 = fadd fast float %4701, %4691
  %4705 = fadd fast float %4702, %4691
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.i32 %4709, 3
  %4711 = extractvalue %dx.types.CBufRet.i32 %4709, 2
  %4712 = add i32 %4711, 0
  %4713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4713, %dx.types.Handle %112, float %4624, float %4625, float undef, float undef, i32 0, i32 0, i32 undef, float %4587, float %4588, float undef, float %4591, float %4592, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.ResRet.f32 %4714, 1
  %4717 = extractvalue %dx.types.ResRet.f32 %4714, 2
  %4718 = extractvalue %dx.types.ResRet.f32 %4714, 3
  %4719 = and i32 %4710, 255
  %4720 = uitofp i32 %4719 to float
  %4721 = lshr i32 %4710, 8
  %4722 = and i32 %4721, 255
  %4723 = uitofp i32 %4722 to float
  %4724 = lshr i32 %4710, 16
  %4725 = and i32 %4724, 255
  %4726 = uitofp i32 %4725 to float
  %4727 = fmul fast float %4726, 0x3F70101000000000
  %4728 = fmul fast float %4715, %4720
  %4729 = fadd fast float %4728, %4723
  %4730 = fmul fast float %4729, 0x3F70101000000000
  %4731 = fadd fast float %4716, -5.000000e-01
  %4732 = fadd fast float %4718, -5.000000e-01
  %4733 = fmul fast float %4731, %4727
  %4734 = fmul fast float %4732, %4727
  %4735 = fadd fast float %4733, 5.000000e-01
  %4736 = fadd fast float %4734, 5.000000e-01
  %4737 = fmul fast float %4735, 2.000000e+00
  %4738 = fadd fast float %4737, -1.000000e+00
  %4739 = fmul fast float %4736, 2.000000e+00
  %4740 = fadd fast float %4739, -1.000000e+00
  %4741 = fadd fast float %4738, %4740
  %4742 = fmul fast float %4741, 5.000000e-01
  %4743 = fsub fast float %4738, %4740
  %4744 = fmul fast float %4743, 5.000000e-01
  %4745 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = call float @dx.op.unary.f32(i32 6, float %4744)  ; FAbs(value)
  %4748 = fsub fast float %4746, %4747
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4744, float %4748, float %4742, float %4744, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  %4751 = fmul fast float %4742, %4750
  %4752 = fmul fast float %4744, %4750
  %4753 = select i1 %4580, i32 %4570, i32 %4571
  %4754 = select i1 %4578, i32 %4569, i32 %4753
  %4755 = sitofp i32 %4754 to float
  %4756 = fmul fast float %4748, %4755
  %4757 = fmul fast float %4756, %4750
  %4758 = select i1 %4580, float %4757, float %4752
  %4759 = select i1 %4580, float %4752, float %4757
  %4760 = select i1 %4578, float %4757, float %4751
  %4761 = select i1 %4578, float %4752, float %4758
  %4762 = select i1 %4578, float %4751, float %4759
  %4763 = fsub fast float %4697, %4130
  %4764 = fsub fast float %4698, %4131
  %4765 = fsub fast float %4699, %4132
  %4766 = fmul fast float %4763, %4669
  %4767 = fmul fast float %4764, %4669
  %4768 = fmul fast float %4765, %4669
  %4769 = fadd fast float %4766, %4130
  %4770 = fadd fast float %4767, %4131
  %4771 = fadd fast float %4768, %4132
  %4772 = fsub fast float %4706, %4115
  %4773 = fsub fast float %4707, %4116
  %4774 = fsub fast float %4708, %4117
  %4775 = fmul fast float %4772, %4669
  %4776 = fmul fast float %4773, %4669
  %4777 = fmul fast float %4774, %4669
  %4778 = fadd fast float %4775, %4115
  %4779 = fadd fast float %4776, %4116
  %4780 = fadd fast float %4777, %4117
  %4781 = fadd fast float %4760, %4078
  %4782 = fadd fast float %4761, %4079
  %4783 = fadd fast float %4762, %4080
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = call float @dx.op.unary.f32(i32 25, float %4784)  ; Rsqrt(value)
  %4786 = fmul fast float %4781, %4785
  %4787 = fmul fast float %4782, %4785
  %4788 = fmul fast float %4783, %4785
  %4789 = fsub fast float %4786, %4078
  %4790 = fsub fast float %4787, %4079
  %4791 = fsub fast float %4788, %4080
  %4792 = fmul fast float %4789, %4669
  %4793 = fmul fast float %4790, %4669
  %4794 = fmul fast float %4791, %4669
  %4795 = fadd fast float %4792, %4078
  %4796 = fadd fast float %4793, %4079
  %4797 = fadd fast float %4794, %4080
  %4798 = call float @dx.op.binary.f32(i32 36, float %4090, float %4717)  ; FMin(a,b)
  %4799 = fsub fast float %4798, %4090
  %4800 = fmul fast float %4799, %4669
  %4801 = fadd fast float %4800, %4090
  %4802 = fsub fast float %4730, %4118
  %4803 = fmul fast float %4802, %4669
  %4804 = fadd fast float %4803, %4118
  br label %4805

; <label>:4805                                    ; preds = %4667, %4629, %4531
  %4806 = phi float [ %4769, %4667 ], [ %4130, %4629 ], [ %4130, %4531 ]
  %4807 = phi float [ %4770, %4667 ], [ %4131, %4629 ], [ %4131, %4531 ]
  %4808 = phi float [ %4771, %4667 ], [ %4132, %4629 ], [ %4132, %4531 ]
  %4809 = phi float [ %4778, %4667 ], [ %4115, %4629 ], [ %4115, %4531 ]
  %4810 = phi float [ %4779, %4667 ], [ %4116, %4629 ], [ %4116, %4531 ]
  %4811 = phi float [ %4780, %4667 ], [ %4117, %4629 ], [ %4117, %4531 ]
  %4812 = phi float [ %4795, %4667 ], [ %4078, %4629 ], [ %4078, %4531 ]
  %4813 = phi float [ %4796, %4667 ], [ %4079, %4629 ], [ %4079, %4531 ]
  %4814 = phi float [ %4797, %4667 ], [ %4080, %4629 ], [ %4080, %4531 ]
  %4815 = phi float [ %4804, %4667 ], [ %4118, %4629 ], [ %4118, %4531 ]
  %4816 = phi float [ %4801, %4667 ], [ %4090, %4629 ], [ %4090, %4531 ]
  br i1 %4529, label %4817, label %5090

; <label>:4817                                    ; preds = %4805
  %4818 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4819 = fmul fast float %4818, 4.000000e+00
  %4820 = call float @dx.op.unary.f32(i32 21, float %4819)  ; Exp(value)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = fmul fast float %4822, %62
  %4824 = fmul fast float %4822, %63
  %4825 = fmul fast float %4822, %64
  %4826 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4828 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = call float @dx.op.unary.f32(i32 23, float %4827)  ; Log(value)
  %4831 = call float @dx.op.unary.f32(i32 23, float %4828)  ; Log(value)
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = fmul fast float %4830, 4.000000e+00
  %4834 = fmul fast float %4831, 4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4837 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4838 = fadd fast float %4836, %4835
  %4839 = fadd fast float %4838, %4837
  %4840 = fdiv fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4840, %4835
  %4842 = fcmp fast ogt float %72, 0.000000e+00
  %4843 = fcmp fast ogt float %73, 0.000000e+00
  %4844 = fcmp fast ogt float %74, 0.000000e+00
  %4845 = fcmp fast olt float %72, 0.000000e+00
  %4846 = fcmp fast olt float %73, 0.000000e+00
  %4847 = fcmp fast olt float %74, 0.000000e+00
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = sub nsw i32 %4848, %4851
  %4855 = sub nsw i32 %4849, %4852
  %4856 = sub nsw i32 %4850, %4853
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 83, float %4824)  ; DerivCoarseX(value)
  %4859 = call float @dx.op.unary.f32(i32 83, float %4825)  ; DerivCoarseX(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = call float @dx.op.unary.f32(i32 84, float %4824)  ; DerivCoarseY(value)
  %4862 = call float @dx.op.unary.f32(i32 84, float %4825)  ; DerivCoarseY(value)
  %4863 = fcmp fast ole float %282, %4841
  %4864 = fmul fast float %4840, %4838
  %4865 = fcmp fast ole float %282, %4864
  %4866 = select i1 %4865, float %4825, float %4823
  %4867 = select i1 %4865, float %4823, float %4824
  %4868 = select i1 %4863, float %4824, float %4866
  %4869 = select i1 %4863, float %4825, float %4867
  %4870 = select i1 %4865, float %4859, float %4857
  %4871 = select i1 %4865, float %4857, float %4858
  %4872 = select i1 %4863, float %4858, float %4870
  %4873 = select i1 %4863, float %4859, float %4871
  %4874 = select i1 %4865, float %4862, float %4860
  %4875 = select i1 %4865, float %4860, float %4861
  %4876 = select i1 %4863, float %4861, float %4874
  %4877 = select i1 %4863, float %4862, float %4875
  %4878 = call float @dx.op.unary.f32(i32 27, float %4868)  ; Round_ni(value)
  %4879 = call float @dx.op.unary.f32(i32 27, float %4869)  ; Round_ni(value)
  %4880 = fptosi float %4878 to i32
  %4881 = fptosi float %4879 to i32
  %4882 = xor i32 %4881, %4880
  %4883 = sitofp i32 %4882 to float
  %4884 = fptosi float %4883 to i32
  %4885 = sitofp i32 %4884 to float
  %4886 = fmul fast float %4885, 0x3FE3C6EF40000000
  %4887 = frem fast float %4878, 2.560000e+02
  %4888 = frem fast float %4879, 2.560000e+02
  %4889 = fptoui float %4887 to i32
  %4890 = fptoui float %4888 to i32
  %4891 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4889, i32 %4890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = fadd fast float %4892, %4886
  %4896 = fadd fast float %4893, %4886
  %4897 = fadd fast float %4894, %4886
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = call float @dx.op.unary.f32(i32 22, float %4896)  ; Frc(value)
  %4900 = call float @dx.op.unary.f32(i32 22, float %4897)  ; Frc(value)
  %4901 = fmul fast float %4900, 0x401921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = call float @dx.op.unary.f32(i32 12, float %4901)  ; Cos(value)
  %4904 = fsub fast float -0.000000e+00, %4903
  %4905 = fmul fast float %4903, %4868
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4869, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4902, %4868
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4869, float %4907)  ; FMad(a,b,c)
  %4909 = fadd fast float %4906, %4898
  %4910 = fadd fast float %4908, %4899
  %4911 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4912 = bitcast float %4911 to i32
  %4913 = icmp eq i32 %4912, 0
  br i1 %4913, label %4952, label %4914

; <label>:4914                                    ; preds = %4817
  %4915 = add i32 %4912, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %113, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4922 = fsub fast float 1.000000e+00, %4527
  %4923 = call float @dx.op.binary.f32(i32 35, float %4922, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4924 = bitcast float %4527 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fadd fast float %4925, 0xC1CFBF8940000000
  %4927 = fmul fast float %4921, %4926
  %4928 = fadd fast float %4927, 0x41CFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = bitcast float %4923 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fadd fast float %4932, 0xC1CFBF8940000000
  %4934 = fmul fast float %4933, %4921
  %4935 = fadd fast float %4934, 0x41CFBF8940000000
  %4936 = fptosi float %4935 to i32
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4930, %4920
  %4939 = fmul fast float %4937, %4920
  %4940 = fsub fast float %4923, %4938
  %4941 = fadd fast float %4939, %4923
  %4942 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4944 = fsub fast float %4918, %4942
  %4945 = fsub fast float %4943, %4942
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, %4944
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fcmp fast olt float %4950, 0x3F70101020000000
  br i1 %4951, label %5090, label %4952

; <label>:4952                                    ; preds = %4914, %4817
  %4953 = phi float [ %4950, %4914 ], [ %4527, %4817 ]
  %4954 = fmul fast float %4953, %4820
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 1
  %4957 = extractvalue %dx.types.CBufRet.i32 %4955, 0
  %4958 = add i32 %4957, 0
  %4959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4959, %dx.types.Handle %112, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4960, 3
  %4965 = and i32 %4956, 255
  %4966 = uitofp i32 %4965 to float
  %4967 = lshr i32 %4956, 8
  %4968 = and i32 %4967, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = fmul fast float %4964, %4966
  %4971 = fadd fast float %4970, %4969
  %4972 = fmul fast float %4971, 0x3F70101000000000
  %4973 = fadd fast float %4972, 0xBFB99999A0000000
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 0x3FF1C71C80000000
  %4976 = call float @dx.op.binary.f32(i32 36, float %4972, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4961
  %4980 = fmul fast float %4978, %4962
  %4981 = fmul fast float %4978, %4963
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = fmul fast float %4975, %4961
  %4986 = fmul fast float %4975, %4962
  %4987 = fmul fast float %4975, %4963
  %4988 = fadd fast float %4985, %4976
  %4989 = fadd fast float %4986, %4976
  %4990 = fadd fast float %4987, %4976
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 3
  %4996 = extractvalue %dx.types.CBufRet.i32 %4994, 2
  %4997 = add i32 %4996, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %112, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5004 = and i32 %4995, 255
  %5005 = uitofp i32 %5004 to float
  %5006 = lshr i32 %4995, 8
  %5007 = and i32 %5006, 255
  %5008 = uitofp i32 %5007 to float
  %5009 = lshr i32 %4995, 16
  %5010 = and i32 %5009, 255
  %5011 = uitofp i32 %5010 to float
  %5012 = fmul fast float %5011, 0x3F70101000000000
  %5013 = fmul fast float %5000, %5005
  %5014 = fadd fast float %5013, %5008
  %5015 = fmul fast float %5014, 0x3F70101000000000
  %5016 = fadd fast float %5001, -5.000000e-01
  %5017 = fadd fast float %5003, -5.000000e-01
  %5018 = fmul fast float %5016, %5012
  %5019 = fmul fast float %5017, %5012
  %5020 = fadd fast float %5018, 5.000000e-01
  %5021 = fadd fast float %5019, 5.000000e-01
  %5022 = fmul fast float %5020, 2.000000e+00
  %5023 = fadd fast float %5022, -1.000000e+00
  %5024 = fmul fast float %5021, 2.000000e+00
  %5025 = fadd fast float %5024, -1.000000e+00
  %5026 = fadd fast float %5023, %5025
  %5027 = fmul fast float %5026, 5.000000e-01
  %5028 = fsub fast float %5023, %5025
  %5029 = fmul fast float %5028, 5.000000e-01
  %5030 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5033 = fsub fast float %5031, %5032
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5033, float %5027, float %5029, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5027, %5035
  %5037 = fmul fast float %5029, %5035
  %5038 = select i1 %4865, i32 %4855, i32 %4856
  %5039 = select i1 %4863, i32 %4854, i32 %5038
  %5040 = sitofp i32 %5039 to float
  %5041 = fmul fast float %5033, %5040
  %5042 = fmul fast float %5041, %5035
  %5043 = select i1 %4865, float %5042, float %5037
  %5044 = select i1 %4865, float %5037, float %5042
  %5045 = select i1 %4863, float %5042, float %5036
  %5046 = select i1 %4863, float %5037, float %5043
  %5047 = select i1 %4863, float %5036, float %5044
  %5048 = fsub fast float %4982, %4806
  %5049 = fsub fast float %4983, %4807
  %5050 = fsub fast float %4984, %4808
  %5051 = fmul fast float %5048, %4954
  %5052 = fmul fast float %5049, %4954
  %5053 = fmul fast float %5050, %4954
  %5054 = fadd fast float %5051, %4806
  %5055 = fadd fast float %5052, %4807
  %5056 = fadd fast float %5053, %4808
  %5057 = fsub fast float %4991, %4809
  %5058 = fsub fast float %4992, %4810
  %5059 = fsub fast float %4993, %4811
  %5060 = fmul fast float %5057, %4954
  %5061 = fmul fast float %5058, %4954
  %5062 = fmul fast float %5059, %4954
  %5063 = fadd fast float %5060, %4809
  %5064 = fadd fast float %5061, %4810
  %5065 = fadd fast float %5062, %4811
  %5066 = fadd fast float %5045, %4812
  %5067 = fadd fast float %5046, %4813
  %5068 = fadd fast float %5047, %4814
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5066, %5070
  %5072 = fmul fast float %5067, %5070
  %5073 = fmul fast float %5068, %5070
  %5074 = fsub fast float %5071, %4812
  %5075 = fsub fast float %5072, %4813
  %5076 = fsub fast float %5073, %4814
  %5077 = fmul fast float %5074, %4954
  %5078 = fmul fast float %5075, %4954
  %5079 = fmul fast float %5076, %4954
  %5080 = fadd fast float %5077, %4812
  %5081 = fadd fast float %5078, %4813
  %5082 = fadd fast float %5079, %4814
  %5083 = call float @dx.op.binary.f32(i32 36, float %4816, float %5002)  ; FMin(a,b)
  %5084 = fsub fast float %5083, %4816
  %5085 = fmul fast float %5084, %4954
  %5086 = fadd fast float %5085, %4816
  %5087 = fsub fast float %5015, %4815
  %5088 = fmul fast float %5087, %4954
  %5089 = fadd fast float %5088, %4815
  br label %5090

; <label>:5090                                    ; preds = %4952, %4914, %4805, %4521
  %5091 = phi float [ %5054, %4952 ], [ %4806, %4914 ], [ %4806, %4805 ], [ %4130, %4521 ]
  %5092 = phi float [ %5055, %4952 ], [ %4807, %4914 ], [ %4807, %4805 ], [ %4131, %4521 ]
  %5093 = phi float [ %5056, %4952 ], [ %4808, %4914 ], [ %4808, %4805 ], [ %4132, %4521 ]
  %5094 = phi float [ %5063, %4952 ], [ %4809, %4914 ], [ %4809, %4805 ], [ %4115, %4521 ]
  %5095 = phi float [ %5064, %4952 ], [ %4810, %4914 ], [ %4810, %4805 ], [ %4116, %4521 ]
  %5096 = phi float [ %5065, %4952 ], [ %4811, %4914 ], [ %4811, %4805 ], [ %4117, %4521 ]
  %5097 = phi float [ %5080, %4952 ], [ %4812, %4914 ], [ %4812, %4805 ], [ %4078, %4521 ]
  %5098 = phi float [ %5081, %4952 ], [ %4813, %4914 ], [ %4813, %4805 ], [ %4079, %4521 ]
  %5099 = phi float [ %5082, %4952 ], [ %4814, %4914 ], [ %4814, %4805 ], [ %4080, %4521 ]
  %5100 = phi float [ %5089, %4952 ], [ %4815, %4914 ], [ %4815, %4805 ], [ %4118, %4521 ]
  %5101 = phi float [ %5086, %4952 ], [ %4816, %4914 ], [ %4816, %4805 ], [ %4090, %4521 ]
  %5102 = fcmp fast une float %4525, 0.000000e+00
  %5103 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 25, float %5103)  ; Rsqrt(value)
  br i1 %5102, label %5112, label %5105

; <label>:5105                                    ; preds = %5090
  %5106 = fmul fast float %5104, %199
  %5107 = fmul fast float %5104, %200
  %5108 = fmul fast float %5104, %201
  %5109 = fsub fast float -0.000000e+00, %5106
  %5110 = fsub fast float -0.000000e+00, %5107
  %5111 = fsub fast float -0.000000e+00, %5108
  br label %5279

; <label>:5112                                    ; preds = %5090
  %5113 = fmul fast float %199, %5104
  %5114 = fsub fast float -0.000000e+00, %5113
  %5115 = fmul fast float %200, %5104
  %5116 = fsub fast float -0.000000e+00, %5115
  %5117 = fmul fast float %201, %5104
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5116, float %5118, float %125, float %127, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = fmul fast float %4525, 2.500000e+00
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %4525, 0x4013FFFFE0000000
  %5123 = fadd fast float %5122, 0xBFFFFFFFE0000000
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %4525, 0x4004000020000000
  %5126 = fadd fast float %5125, 0xBFF8000040000000
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %4097, 1.000000e+01
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %5129, 2.000000e+00
  %5131 = fsub fast float 3.000000e+00, %5130
  %5132 = fmul fast float %5129, %5129
  %5133 = fmul fast float %5132, %5131
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = fsub fast float 0x3FE3333340000000, %5100
  %5136 = fmul fast float %5135, 0x400AAAAAA0000000
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5134, %5137
  %5139 = fmul fast float %5091, 0x3FEA2B8620000000
  %5140 = fmul fast float %5092, 0x3FEA2B8620000000
  %5141 = fmul fast float %5093, 0x3FEA2B8620000000
  %5142 = fadd fast float %5139, 0x3FC81DFBA0000000
  %5143 = fmul fast float %5142, %5091
  %5144 = fadd fast float %5143, 0x3F910E6020000000
  %5145 = fadd fast float %5140, 0x3FC81DFBA0000000
  %5146 = fmul fast float %5145, %5092
  %5147 = fadd fast float %5146, 0x3F910E6020000000
  %5148 = fadd fast float %5141, 0x3FC81DFBA0000000
  %5149 = fmul fast float %5148, %5093
  %5150 = fadd fast float %5149, 0x3F910E6020000000
  %5151 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = fsub fast float %5151, %5091
  %5155 = fsub fast float %5152, %5092
  %5156 = fsub fast float %5153, %5093
  %5157 = fmul fast float %5154, %5121
  %5158 = fmul fast float %5157, %5138
  %5159 = fmul fast float %5155, %5121
  %5160 = fmul fast float %5159, %5138
  %5161 = fmul fast float %5156, %5121
  %5162 = fmul fast float %5161, %5138
  %5163 = fadd fast float %5158, %5091
  %5164 = fadd fast float %5160, %5092
  %5165 = fadd fast float %5162, %5093
  %5166 = fmul fast float %5101, %5101
  %5167 = fmul fast float %5166, %5166
  %5168 = fadd fast float %5124, 1.000000e+00
  %5169 = fsub fast float %5168, %5138
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = call float @dx.op.dot3.f32(i32 55, float %125, float %127, float %129, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fsub fast float 1.000000e+00, %5167
  %5174 = call float @dx.op.binary.f32(i32 36, float %5170, float %5173)  ; FMin(a,b)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5176 = call float @dx.op.binary.f32(i32 35, float %5174, float %5175)  ; FMax(a,b)
  %5177 = fadd fast float %5172, 0xBFE4CCCCC0000000
  %5178 = fmul fast float %5177, 0x4006DB6DA0000000
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, 2.000000e+00
  %5181 = fsub fast float 3.000000e+00, %5180
  %5182 = bitcast float %5094 to i32
  %5183 = ashr i32 %5182, 1
  %5184 = add nsw i32 %5183, 532487669
  %5185 = bitcast i32 %5184 to float
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = fmul fast float %5189, 2.000000e+00
  %5191 = bitcast float %5095 to i32
  %5192 = ashr i32 %5191, 1
  %5193 = add nsw i32 %5192, 532487669
  %5194 = bitcast i32 %5193 to float
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = bitcast float %5195 to i32
  %5197 = sub nsw i32 2129859010, %5196
  %5198 = bitcast i32 %5197 to float
  %5199 = fmul fast float %5198, 2.000000e+00
  %5200 = bitcast float %5096 to i32
  %5201 = ashr i32 %5200, 1
  %5202 = add nsw i32 %5201, 532487669
  %5203 = bitcast i32 %5202 to float
  %5204 = fsub fast float 1.000000e+00, %5203
  %5205 = bitcast float %5204 to i32
  %5206 = sub nsw i32 2129859010, %5205
  %5207 = bitcast i32 %5206 to float
  %5208 = fmul fast float %5207, 2.000000e+00
  %5209 = fsub fast float 0x4002A9FBE0000000, %5190
  %5210 = fadd fast float %5190, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = fsub fast float 0x4002A9FBE0000000, %5199
  %5217 = fadd fast float %5199, 0x3FD54FDF00000000
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %5216
  %5222 = fmul fast float %5221, %5221
  %5223 = fsub fast float 0x4002A9FBE0000000, %5208
  %5224 = fadd fast float %5208, 0x3FD54FDF00000000
  %5225 = bitcast float %5224 to i32
  %5226 = sub nsw i32 2129859010, %5225
  %5227 = bitcast i32 %5226 to float
  %5228 = fmul fast float %5227, %5223
  %5229 = fmul fast float %5228, %5228
  %5230 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5222)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5229)  ; FMax(a,b)
  %5233 = fsub fast float 1.000000e+00, %5119
  %5234 = fadd fast float %5233, %5134
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fsub fast float 1.000000e+00, %4506
  %5237 = fmul fast float %5176, %5236
  %5238 = fmul fast float %5179, %5179
  %5239 = fmul fast float %5238, %5237
  %5240 = fmul fast float %5239, %5181
  %5241 = fmul fast float %5236, 0xBFE99999A0000000
  %5242 = fmul fast float %5241, %5121
  %5243 = fmul fast float %5242, %5138
  %5244 = fadd fast float %5243, 1.000000e+00
  %5245 = fadd fast float %5100, -1.000000e+00
  %5246 = fmul fast float %5244, %5245
  %5247 = fadd fast float %5246, 1.000000e+00
  %5248 = fsub fast float %5230, %5094
  %5249 = fsub fast float %5231, %5095
  %5250 = fsub fast float %5232, %5096
  %5251 = fmul fast float %5240, %5248
  %5252 = fmul fast float %5240, %5249
  %5253 = fmul fast float %5240, %5250
  %5254 = fadd fast float %5251, %5094
  %5255 = fadd fast float %5252, %5095
  %5256 = fadd fast float %5253, %5096
  %5257 = fsub fast float %125, %5097
  %5258 = fsub fast float %127, %5098
  %5259 = fsub fast float %129, %5099
  %5260 = fmul fast float %5240, %5257
  %5261 = fmul fast float %5240, %5258
  %5262 = fmul fast float %5240, %5259
  %5263 = fadd fast float %5260, %5097
  %5264 = fadd fast float %5261, %5098
  %5265 = fadd fast float %5262, %5099
  %5266 = fmul fast float %5240, %5235
  %5267 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5268 = fsub fast float 1.000000e+00, %5267
  %5269 = fmul fast float %5266, %5268
  %5270 = fadd fast float %5269, %5267
  %5271 = fsub fast float 1.000000e+00, %5101
  %5272 = fmul fast float %5240, %5271
  %5273 = fadd fast float %5272, %5101
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 25, float %5274)  ; Rsqrt(value)
  %5276 = fmul fast float %5263, %5275
  %5277 = fmul fast float %5264, %5275
  %5278 = fmul fast float %5265, %5275
  br label %5279

; <label>:5279                                    ; preds = %5112, %5105
  %5280 = phi float [ %5111, %5105 ], [ %5118, %5112 ]
  %5281 = phi float [ %5110, %5105 ], [ %5116, %5112 ]
  %5282 = phi float [ %5109, %5105 ], [ %5114, %5112 ]
  %5283 = phi float [ %5108, %5105 ], [ %5117, %5112 ]
  %5284 = phi float [ %5107, %5105 ], [ %5115, %5112 ]
  %5285 = phi float [ %5106, %5105 ], [ %5113, %5112 ]
  %5286 = phi float [ %5091, %5105 ], [ %5163, %5112 ]
  %5287 = phi float [ %5092, %5105 ], [ %5164, %5112 ]
  %5288 = phi float [ %5093, %5105 ], [ %5165, %5112 ]
  %5289 = phi float [ %5094, %5105 ], [ %5254, %5112 ]
  %5290 = phi float [ %5095, %5105 ], [ %5255, %5112 ]
  %5291 = phi float [ %5096, %5105 ], [ %5256, %5112 ]
  %5292 = phi float [ %5097, %5105 ], [ %5276, %5112 ]
  %5293 = phi float [ %5098, %5105 ], [ %5277, %5112 ]
  %5294 = phi float [ %5099, %5105 ], [ %5278, %5112 ]
  %5295 = phi float [ %5100, %5105 ], [ %5270, %5112 ]
  %5296 = phi float [ %5101, %5105 ], [ %5273, %5112 ]
  %5297 = fsub fast float -0.000000e+00, %201
  %5298 = select i1 %271, float 0.000000e+00, float %5291
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5282, float %5281, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5284, float %5283, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = fmul fast float %5301, 2.000000e+00
  %5303 = fmul fast float %5302, %5292
  %5304 = fmul fast float %5302, %5293
  %5305 = fmul fast float %5302, %5294
  %5306 = fsub fast float %5285, %5303
  %5307 = fsub fast float %5284, %5304
  %5308 = fsub fast float %5283, %5305
  %5309 = call float @dx.op.binary.f32(i32 36, float %5296, float 1.000000e+00)  ; FMin(a,b)
  %5310 = fsub fast float 1.000000e+00, %5296
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fmul fast float %5314, 0x3FD20DD760000000
  %5316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %5317 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = fcmp fast oeq float %5317, 0.000000e+00
  %5319 = fcmp fast oeq float %5316, 0.000000e+00
  %5320 = or i1 %5319, %5318
  br i1 %5320, label %5350, label %5321

; <label>:5321                                    ; preds = %5279
  %5322 = fsub fast float -0.000000e+00, %90
  %5323 = fsub fast float -0.000000e+00, %88
  %5324 = call float @dx.op.unary.f32(i32 24, float %5317)  ; Sqrt(value)
  %5325 = fdiv fast float %5324, %5316
  %5326 = fcmp fast ogt float %5325, 0x3FFB6F8900000000
  %5327 = select i1 %5326, float 0x3FFB6F8900000000, float %5325
  %5328 = fmul fast float %5327, 0x3FE8A23460000000
  %5329 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5330 = call float @dx.op.binary.f32(i32 35, float %5327, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5331 = fmul fast float %5329, %5316
  %5332 = fmul fast float %5330, 0x3FF279A740000000
  %5333 = fadd fast float %5332, -1.000000e+00
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %89, float %5322, float %5323, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 25, float %5334)  ; Rsqrt(value)
  %5336 = fmul fast float %5335, %5322
  %5337 = fmul fast float %5335, %5323
  %5338 = fmul fast float %5335, %89
  %5339 = fmul fast float %5333, %5333
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = fmul fast float %5330, 0x40005F8BE0000000
  %5342 = fsub fast float 0x400C5BF8A0000000, %5341
  %5343 = fdiv fast float %5331, %5342
  %5344 = fmul fast float %5343, 0x3FEE31C3C0000000
  %5345 = fmul fast float %5344, %5340
  %5346 = fmul fast float %5330, 0x3FDACB7480000000
  %5347 = fadd fast float %5346, 0xBFD7347680000000
  %5348 = fmul fast float %5347, %5343
  %5349 = fmul fast float %5348, %5340
  br label %5350

; <label>:5350                                    ; preds = %5321, %5279
  %5351 = phi float [ %5336, %5321 ], [ 0.000000e+00, %5279 ]
  %5352 = phi float [ %5337, %5321 ], [ 0.000000e+00, %5279 ]
  %5353 = phi float [ %5338, %5321 ], [ 0.000000e+00, %5279 ]
  %5354 = phi float [ %5345, %5321 ], [ 0.000000e+00, %5279 ]
  %5355 = phi float [ %5349, %5321 ], [ 0.000000e+00, %5279 ]
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5353, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fmul fast float %5356, %5356
  %5358 = fmul fast float %5357, 0x3FEE471020000000
  %5359 = fadd fast float %5358, 0xBFD42F6020000000
  %5360 = fmul fast float %5316, 0x3FD20DD760000000
  %5361 = fmul fast float %5359, %5355
  %5362 = fmul fast float %5354, 0x3FDF454380000000
  %5363 = fmul fast float %5362, %5356
  %5364 = fadd fast float %5363, %5360
  %5365 = fadd fast float %5364, %5361
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5353, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fmul fast float %5366, 0x3FDF454380000000
  %5368 = fmul fast float %5366, %5366
  %5369 = fmul fast float %5368, 0x3FEE471020000000
  %5370 = fadd fast float %5369, 0xBFD42F6020000000
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5354, float %5355, float 0x3FD20DD760000000, float %5367, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %5373 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fcmp fast oeq float %5373, 0.000000e+00
  %5375 = fcmp fast oeq float %5372, 0.000000e+00
  %5376 = or i1 %5375, %5374
  br i1 %5376, label %5406, label %5377

; <label>:5377                                    ; preds = %5350
  %5378 = fsub fast float -0.000000e+00, %86
  %5379 = fsub fast float -0.000000e+00, %84
  %5380 = call float @dx.op.unary.f32(i32 24, float %5373)  ; Sqrt(value)
  %5381 = fdiv fast float %5380, %5372
  %5382 = fcmp fast ogt float %5381, 0x3FFB6F8900000000
  %5383 = select i1 %5382, float 0x3FFB6F8900000000, float %5381
  %5384 = fmul fast float %5383, 0x3FE8A23460000000
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = call float @dx.op.binary.f32(i32 35, float %5383, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5387 = fmul fast float %5385, %5372
  %5388 = fmul fast float %5386, 0x3FF279A740000000
  %5389 = fadd fast float %5388, -1.000000e+00
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %85, float %5378, float %5379, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5391, %5378
  %5393 = fmul fast float %5391, %5379
  %5394 = fmul fast float %5391, %85
  %5395 = fmul fast float %5389, %5389
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = fmul fast float %5386, 0x40005F8BE0000000
  %5398 = fsub fast float 0x400C5BF8A0000000, %5397
  %5399 = fdiv fast float %5387, %5398
  %5400 = fmul fast float %5399, 0x3FEE31C3C0000000
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5386, 0x3FDACB7480000000
  %5403 = fadd fast float %5402, 0xBFD7347680000000
  %5404 = fmul fast float %5403, %5399
  %5405 = fmul fast float %5404, %5396
  br label %5406

; <label>:5406                                    ; preds = %5377, %5350
  %5407 = phi float [ %5392, %5377 ], [ 0.000000e+00, %5350 ]
  %5408 = phi float [ %5393, %5377 ], [ 0.000000e+00, %5350 ]
  %5409 = phi float [ %5394, %5377 ], [ 0.000000e+00, %5350 ]
  %5410 = phi float [ %5401, %5377 ], [ 0.000000e+00, %5350 ]
  %5411 = phi float [ %5405, %5377 ], [ 0.000000e+00, %5350 ]
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fmul fast float %5412, %5412
  %5414 = fmul fast float %5413, 0x3FEE471020000000
  %5415 = fadd fast float %5414, 0xBFD42F6020000000
  %5416 = fmul fast float %5372, 0x3FD20DD760000000
  %5417 = fmul fast float %5415, %5411
  %5418 = fmul fast float %5410, 0x3FDF454380000000
  %5419 = fmul fast float %5418, %5412
  %5420 = fadd fast float %5419, %5416
  %5421 = fadd fast float %5420, %5417
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fmul fast float %5422, 0x3FDF454380000000
  %5424 = fmul fast float %5422, %5422
  %5425 = fmul fast float %5424, 0x3FEE471020000000
  %5426 = fadd fast float %5425, 0xBFD42F6020000000
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5410, float %5411, float 0x3FD20DD760000000, float %5423, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5429 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = fcmp fast oeq float %5429, 0.000000e+00
  %5431 = fcmp fast oeq float %5428, 0.000000e+00
  %5432 = or i1 %5431, %5430
  br i1 %5432, label %5462, label %5433

; <label>:5433                                    ; preds = %5406
  %5434 = fsub fast float -0.000000e+00, %82
  %5435 = fsub fast float -0.000000e+00, %80
  %5436 = call float @dx.op.unary.f32(i32 24, float %5429)  ; Sqrt(value)
  %5437 = fdiv fast float %5436, %5428
  %5438 = fcmp fast ogt float %5437, 0x3FFB6F8900000000
  %5439 = select i1 %5438, float 0x3FFB6F8900000000, float %5437
  %5440 = fmul fast float %5439, 0x3FE8A23460000000
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = call float @dx.op.binary.f32(i32 35, float %5439, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5443 = fmul fast float %5441, %5428
  %5444 = fmul fast float %5442, 0x3FF279A740000000
  %5445 = fadd fast float %5444, -1.000000e+00
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %81, float %5434, float %5435, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 25, float %5446)  ; Rsqrt(value)
  %5448 = fmul fast float %5447, %5434
  %5449 = fmul fast float %5447, %5435
  %5450 = fmul fast float %5447, %81
  %5451 = fmul fast float %5445, %5445
  %5452 = fsub fast float 1.000000e+00, %5451
  %5453 = fmul fast float %5442, 0x40005F8BE0000000
  %5454 = fsub fast float 0x400C5BF8A0000000, %5453
  %5455 = fdiv fast float %5443, %5454
  %5456 = fmul fast float %5455, 0x3FEE31C3C0000000
  %5457 = fmul fast float %5456, %5452
  %5458 = fmul fast float %5442, 0x3FDACB7480000000
  %5459 = fadd fast float %5458, 0xBFD7347680000000
  %5460 = fmul fast float %5459, %5455
  %5461 = fmul fast float %5460, %5452
  br label %5462

; <label>:5462                                    ; preds = %5433, %5406
  %5463 = phi float [ %5448, %5433 ], [ 0.000000e+00, %5406 ]
  %5464 = phi float [ %5449, %5433 ], [ 0.000000e+00, %5406 ]
  %5465 = phi float [ %5450, %5433 ], [ 0.000000e+00, %5406 ]
  %5466 = phi float [ %5457, %5433 ], [ 0.000000e+00, %5406 ]
  %5467 = phi float [ %5461, %5433 ], [ 0.000000e+00, %5406 ]
  %5468 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = fmul fast float %5468, %5468
  %5470 = fmul fast float %5469, 0x3FEE471020000000
  %5471 = fadd fast float %5470, 0xBFD42F6020000000
  %5472 = fmul fast float %5428, 0x3FD20DD760000000
  %5473 = fmul fast float %5471, %5467
  %5474 = fmul fast float %5466, 0x3FDF454380000000
  %5475 = fmul fast float %5474, %5468
  %5476 = fadd fast float %5475, %5472
  %5477 = fadd fast float %5476, %5473
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fmul fast float %5478, 0x3FDF454380000000
  %5480 = fmul fast float %5478, %5478
  %5481 = fmul fast float %5480, 0x3FEE471020000000
  %5482 = fadd fast float %5481, 0xBFD42F6020000000
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5428, float %5466, float %5467, float 0x3FD20DD760000000, float %5479, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = call float @dx.op.binary.f32(i32 35, float %5365, float 0.000000e+00)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float %5421, float 0.000000e+00)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5477, float 0.000000e+00)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5371, float 0.000000e+00)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5427, float 0.000000e+00)  ; FMax(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5483, float 0.000000e+00)  ; FMax(a,b)
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = call float @dx.op.binary.f32(i32 36, float %5286, float %5491)  ; FMin(a,b)
  %5493 = fsub fast float 1.000000e+00, %5309
  %5494 = fmul fast float %5492, %5493
  %5495 = fsub fast float 1.000000e+00, %5494
  %5496 = bitcast float %5495 to i32
  %5497 = sub nsw i32 2129859010, %5496
  %5498 = bitcast i32 %5497 to float
  %5499 = call float @dx.op.binary.f32(i32 36, float %5287, float %5491)  ; FMin(a,b)
  %5500 = fmul fast float %5499, %5493
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = bitcast float %5501 to i32
  %5503 = sub nsw i32 2129859010, %5502
  %5504 = bitcast i32 %5503 to float
  %5505 = call float @dx.op.binary.f32(i32 36, float %5288, float %5491)  ; FMin(a,b)
  %5506 = fmul fast float %5505, %5493
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = bitcast float %5507 to i32
  %5509 = sub nsw i32 2129859010, %5508
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5484, %5309
  %5512 = fmul fast float %5511, %5498
  %5513 = fmul fast float %5485, %5309
  %5514 = fmul fast float %5513, %5504
  %5515 = fmul fast float %5486, %5309
  %5516 = fmul fast float %5515, %5510
  %5517 = call float @dx.op.binary.f32(i32 36, float %5289, float %5491)  ; FMin(a,b)
  %5518 = fmul fast float %5517, %5493
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = bitcast float %5519 to i32
  %5521 = sub nsw i32 2129859010, %5520
  %5522 = bitcast i32 %5521 to float
  %5523 = call float @dx.op.binary.f32(i32 36, float %5290, float %5491)  ; FMin(a,b)
  %5524 = fmul fast float %5523, %5493
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = call float @dx.op.binary.f32(i32 36, float %5298, float %5491)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5493
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = bitcast float %5531 to i32
  %5533 = sub nsw i32 2129859010, %5532
  %5534 = bitcast i32 %5533 to float
  %5535 = fmul fast float %5487, %5309
  %5536 = fmul fast float %5535, %5522
  %5537 = fmul fast float %5488, %5309
  %5538 = fmul fast float %5537, %5528
  %5539 = fmul fast float %5489, %5309
  %5540 = fmul fast float %5539, %5534
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5514, float %5516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = select i1 %271, float 0.000000e+00, float %5512
  %5543 = select i1 %271, float %5541, float %5514
  %5544 = select i1 %271, float 0.000000e+00, float %5516
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5538, float %5540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = select i1 %271, float 0.000000e+00, float %5536
  %5547 = select i1 %271, float %5545, float %5538
  %5548 = select i1 %271, float 0.000000e+00, float %5540
  %5549 = fmul fast float %5314, 0x4071A18460000000
  %5550 = fadd fast float %5549, 0x3F0FFB4800000000
  %5551 = call float @dx.op.unary.f32(i32 23, float %5550)  ; Log(value)
  %5552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5553 = extractvalue %dx.types.ResRet.i32 %5552, 0
  %5554 = and i32 %5553, 8388608
  %5555 = icmp eq i32 %5554, 0
  br i1 %5555, label %5556, label %5596

; <label>:5556                                    ; preds = %5462
  %5557 = fadd fast float %5551, 0x4006B851E0000000
  %5558 = add i32 %325, 12
  %5559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.i32 %5559, 0
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5563 = lshr i32 %5560, 16
  %5564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5563)  ; LegacyF16ToF32(value)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5568 = fsub fast float %107, %5567
  %5569 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5570 = fmul fast float %5568, %5569
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fsub fast float %5565, %5557
  %5573 = fcmp fast ogt float %5572, 0.000000e+00
  %5574 = fcmp fast olt float %5572, 0.000000e+00
  %5575 = zext i1 %5573 to i32
  %5576 = zext i1 %5574 to i32
  %5577 = sub nsw i32 %5575, %5576
  %5578 = sitofp i32 %5577 to float
  %5579 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5580 = fsub fast float -0.000000e+00, %5564
  %5581 = fsub fast float %5580, %5562
  %5582 = fadd fast float %5581, %5579
  %5583 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5584 = fmul fast float %5578, %5583
  %5585 = fadd fast float %5551, %5584
  %5586 = call float @dx.op.unary.f32(i32 21, float %5585)  ; Exp(value)
  %5587 = fmul fast float %5586, 0x3F50624DE0000000
  %5588 = fcmp fast oeq float %5315, 0.000000e+00
  %5589 = fdiv fast float 0x400C5BF880000000, %5314
  %5590 = fmul fast float %5587, %5589
  %5591 = select i1 %5588, float 1.000000e+00, float %5590
  %5592 = call float @dx.op.binary.f32(i32 35, float %5591, float 1.000000e+00)  ; FMax(a,b)
  %5593 = fadd fast float %5592, -1.000000e+00
  %5594 = fmul fast float %5593, %5571
  %5595 = fadd fast float %5594, 1.000000e+00
  br label %5596

; <label>:5596                                    ; preds = %5556, %5462
  %5597 = phi float [ %5595, %5556 ], [ 1.000000e+00, %5462 ]
  %5598 = call float @dx.op.unary.f32(i32 6, float %5597)  ; FAbs(value)
  %5599 = fmul fast float %5598, %5542
  %5600 = fmul fast float %5598, %5543
  %5601 = fmul fast float %5598, %5544
  %5602 = fmul fast float %5300, 9.843750e-01
  %5603 = fmul fast float %5295, 9.843750e-01
  %5604 = fadd fast float %5602, 7.812500e-03
  %5605 = fadd fast float %5603, 7.812500e-03
  %5606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5604, float %5605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 2
  %5608 = extractvalue %dx.types.ResRet.f32 %5606, 3
  %5609 = fmul fast float %5607, %5289
  %5610 = fmul fast float %5607, %5290
  %5611 = fmul fast float %5607, %5298
  %5612 = fadd fast float %5609, %5608
  %5613 = fadd fast float %5610, %5608
  %5614 = fadd fast float %5611, %5608
  %5615 = fcmp fast ogt float %4091, 0.000000e+00
  br i1 %5615, label %5616, label %5642

; <label>:5616                                    ; preds = %5596
  %5617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %5300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.ResRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.ResRet.f32 %5617, 2
  %5621 = fadd fast float %5618, -5.000000e-01
  %5622 = fadd fast float %5619, -5.000000e-01
  %5623 = fadd fast float %5620, -5.000000e-01
  %5624 = fsub fast float 1.000000e+00, %5289
  %5625 = fsub fast float 1.000000e+00, %5290
  %5626 = fsub fast float 1.000000e+00, %5298
  %5627 = fmul fast float %5289, 4.000000e+00
  %5628 = fmul fast float %5627, %5624
  %5629 = fmul fast float %5628, %5621
  %5630 = fmul fast float %5290, 4.000000e+00
  %5631 = fmul fast float %5630, %5625
  %5632 = fmul fast float %5631, %5622
  %5633 = fmul fast float %5298, 4.000000e+00
  %5634 = fmul fast float %5633, %5626
  %5635 = fmul fast float %5634, %5623
  %5636 = fadd fast float %5629, %5612
  %5637 = fadd fast float %5632, %5613
  %5638 = fadd fast float %5635, %5614
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  br label %5642

; <label>:5642                                    ; preds = %5616, %5596
  %5643 = phi float [ %5639, %5616 ], [ %5612, %5596 ]
  %5644 = phi float [ %5640, %5616 ], [ %5613, %5596 ]
  %5645 = phi float [ %5641, %5616 ], [ %5614, %5596 ]
  %5646 = call float @dx.op.binary.f32(i32 35, float %5644, float %5645)  ; FMax(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5643, float %5646)  ; FMax(a,b)
  %5648 = fsub fast float 1.000000e+00, %5647
  %5649 = fmul fast float %199, %199
  %5650 = fmul fast float %200, %200
  %5651 = fadd fast float %5650, %5649
  %5652 = fmul fast float %201, %201
  %5653 = fadd fast float %5651, %5652
  %5654 = call float @dx.op.unary.f32(i32 24, float %5653)  ; Sqrt(value)
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5657 = fsub fast float %5654, %5656
  %5658 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5659 = fmul fast float %5657, %5658
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5663 = and i32 %5553, 4194304
  %5664 = icmp ne i32 %5663, 0
  %5665 = icmp ne i32 %5554, 0
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5670 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.CBufRet.f32 %5671, 1
  %5674 = extractvalue %dx.types.CBufRet.f32 %5671, 2
  %5675 = extractvalue %dx.types.CBufRet.f32 %5671, 3
  %5676 = select i1 %5664, float %5667, float %5672
  %5677 = select i1 %5664, float %5668, float %5673
  %5678 = select i1 %5664, float %5669, float %5674
  %5679 = select i1 %5664, float %5670, float %5675
  %5680 = select i1 %5665, float 0.000000e+00, float %5679
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.CBufRet.f32 %5681, 1
  %5684 = select i1 %5664, float %5682, float %5683
  %5685 = select i1 %5665, float 0.000000e+00, float %5684
  %5686 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5681, 3
  %5688 = select i1 %5664, float %5686, float %5687
  %5689 = select i1 %5665, float 0.000000e+00, float %5688
  %5690 = fmul fast float %5660, %65
  %5691 = fmul fast float %5690, %5661
  %5692 = fmul fast float %5691, %5685
  %5693 = fmul fast float %5690, %5662
  %5694 = fmul fast float %5693, %5689
  %5695 = fadd fast float %5694, 1.000000e+00
  %5696 = fmul fast float %5648, %5599
  %5697 = fmul fast float %5696, %5695
  %5698 = fmul fast float %5648, %5600
  %5699 = fmul fast float %5698, %5695
  %5700 = fmul fast float %5648, %5601
  %5701 = fmul fast float %5700, %5695
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = fcmp fast ogt float %5702, 0x3E7FF19E20000000
  %5704 = fdiv fast float 1.000000e+00, %5702
  %5705 = select i1 %5703, float %5704, float 0.000000e+00
  %5706 = fmul fast float %5705, %5286
  %5707 = fmul fast float %5705, %5287
  %5708 = fmul fast float %5705, %5288
  %5709 = fadd fast float %5706, -1.000000e+00
  %5710 = fadd fast float %5707, -1.000000e+00
  %5711 = fadd fast float %5708, -1.000000e+00
  %5712 = fmul fast float %5709, 5.000000e-01
  %5713 = fmul fast float %5710, 5.000000e-01
  %5714 = fmul fast float %5711, 5.000000e-01
  %5715 = fadd fast float %5712, 1.000000e+00
  %5716 = fadd fast float %5713, 1.000000e+00
  %5717 = fadd fast float %5714, 1.000000e+00
  %5718 = fadd fast float %5692, %4092
  %5719 = fsub fast float %5676, %5715
  %5720 = fsub fast float %5677, %5716
  %5721 = fsub fast float %5678, %5717
  %5722 = fmul fast float %5719, %5680
  %5723 = fmul fast float %5720, %5680
  %5724 = fmul fast float %5721, %5680
  %5725 = fadd fast float %5722, %5715
  %5726 = fadd fast float %5723, %5716
  %5727 = fadd fast float %5724, %5717
  %5728 = fmul fast float %5643, %5546
  %5729 = fmul fast float %5644, %5547
  %5730 = fmul fast float %5645, %5548
  %5731 = fsub fast float 1.000000e+00, %5300
  %5732 = bitcast float %5731 to i32
  %5733 = sitofp i32 %5732 to float
  %5734 = fmul fast float %5733, 5.000000e+00
  %5735 = fadd fast float %5734, 0xC1EFBF8940000000
  %5736 = fptosi float %5735 to i32
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5718, %5737
  %5739 = fmul fast float %5696, %5738
  %5740 = fmul fast float %5739, %5725
  %5741 = fmul fast float %5698, %5738
  %5742 = fmul fast float %5741, %5726
  %5743 = fmul fast float %5700, %5738
  %5744 = fmul fast float %5743, %5727
  %5745 = fmul fast float %5697, %4088
  %5746 = fmul fast float %5699, %4088
  %5747 = fmul fast float %5701, %4088
  %5748 = fadd fast float %5728, %4084
  %5749 = fadd fast float %5748, %5740
  %5750 = fmul fast float %5749, %4088
  %5751 = fadd fast float %5729, %4085
  %5752 = fadd fast float %5751, %5742
  %5753 = fmul fast float %5752, %4088
  %5754 = fadd fast float %5730, %4086
  %5755 = fadd fast float %5754, %5744
  %5756 = fmul fast float %5755, %4088
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 3
  %5759 = fcmp fast oeq float %5758, 0.000000e+00
  br i1 %5759, label %6844, label %5760

; <label>:5760                                    ; preds = %5642
  %5761 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5757, 2
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.CBufRet.f32 %5768, 1
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5766, float %5767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = select i1 %271, float %5769, float %5765
  %5773 = select i1 %271, float %5771, float %5766
  %5774 = select i1 %271, float %5770, float %5767
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5777 = fmul fast float %5776, %125
  %5778 = fmul fast float %5776, %127
  %5779 = fmul fast float %5776, %129
  %5780 = fadd fast float %5777, %199
  %5781 = fadd fast float %5778, %200
  %5782 = fadd fast float %5779, %201
  %5783 = fcmp fast olt float %5758, 0.000000e+00
  br i1 %5783, label %6423, label %5784

; <label>:5784                                    ; preds = %5760
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5799 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5800 = fmul fast float %5786, %5780
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5787, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5788, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5789
  %5804 = fmul fast float %5791, %5780
  %5805 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5792, float %5804)  ; FMad(a,b,c)
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5793, float %5805)  ; FMad(a,b,c)
  %5807 = fadd fast float %5806, %5794
  %5808 = fmul fast float %5796, %5780
  %5809 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5797, float %5808)  ; FMad(a,b,c)
  %5810 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5798, float %5809)  ; FMad(a,b,c)
  %5811 = fadd fast float %5810, %5799
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = fcmp fast une float %5813, 0.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5819 = fmul fast float %5818, %5803
  %5820 = fmul fast float %5818, %5807
  %5821 = fadd fast float %5819, %5816
  %5822 = fadd fast float %5820, %5817
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5827 = fmul fast float %5826, %5803
  %5828 = fmul fast float %5826, %5807
  %5829 = fadd fast float %5827, %5824
  %5830 = fadd fast float %5828, %5825
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5833 = fsub fast float %5832, %5811
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = fmul fast float %5833, %5834
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  br i1 %5814, label %5898, label %5838

; <label>:5838                                    ; preds = %5784
  %5839 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5842 = fadd fast float %5841, %5839
  %5843 = fcmp fast ogt float %5842, 0.000000e+00
  br i1 %5843, label %5844, label %5868

; <label>:5844                                    ; preds = %5838
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = fsub fast float %5829, %5846
  %5849 = fsub fast float %5830, %5847
  %5850 = fcmp fast olt float %5848, 0.000000e+00
  %5851 = fcmp fast olt float %5849, 0.000000e+00
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5857 = select i1 %5850, float %5853, float %5855
  %5858 = select i1 %5851, float %5854, float %5856
  %5859 = fmul fast float %5857, %5848
  %5860 = fmul fast float %5858, %5849
  %5861 = call float @dx.op.unary.f32(i32 6, float %5859)  ; FAbs(value)
  %5862 = call float @dx.op.unary.f32(i32 6, float %5860)  ; FAbs(value)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5864 = call float @dx.op.binary.f32(i32 35, float %5861, float %5862)  ; FMax(a,b)
  %5865 = fsub fast float %5863, %5864
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fmul fast float %5866, %5837
  br label %5868

; <label>:5868                                    ; preds = %5844, %5838
  %5869 = phi float [ %5867, %5844 ], [ 0.000000e+00, %5838 ]
  %5870 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5871 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5872 = fadd fast float %5871, %5870
  %5873 = fcmp fast ogt float %5872, 0.000000e+00
  br i1 %5873, label %5874, label %5898

; <label>:5874                                    ; preds = %5868
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = fsub fast float %5821, %5876
  %5879 = fsub fast float %5822, %5877
  %5880 = fcmp fast olt float %5878, 0.000000e+00
  %5881 = fcmp fast olt float %5879, 0.000000e+00
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5887 = select i1 %5880, float %5883, float %5885
  %5888 = select i1 %5881, float %5884, float %5886
  %5889 = fmul fast float %5887, %5878
  %5890 = fmul fast float %5888, %5879
  %5891 = call float @dx.op.unary.f32(i32 6, float %5889)  ; FAbs(value)
  %5892 = call float @dx.op.unary.f32(i32 6, float %5890)  ; FAbs(value)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5894 = call float @dx.op.binary.f32(i32 35, float %5891, float %5892)  ; FMax(a,b)
  %5895 = fsub fast float %5893, %5894
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fmul fast float %5896, %5837
  br label %5898

; <label>:5898                                    ; preds = %5874, %5868, %5784
  %5899 = phi float [ 0.000000e+00, %5784 ], [ %5897, %5874 ], [ 0.000000e+00, %5868 ]
  %5900 = phi float [ 0.000000e+00, %5784 ], [ %5869, %5874 ], [ %5869, %5868 ]
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = fsub fast float %5803, %5905
  %5908 = fsub fast float %5807, %5906
  %5909 = fcmp fast olt float %5907, 0.000000e+00
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5916 = select i1 %5909, float %5912, float %5914
  %5917 = select i1 %5910, float %5913, float %5915
  %5918 = fmul fast float %5916, %5907
  %5919 = fmul fast float %5917, %5908
  %5920 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5921 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5923 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5924 = fsub fast float %5922, %5923
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5925, float %5903)  ; FMin(a,b)
  %5927 = fmul fast float %5926, %5837
  %5928 = fsub fast float %5899, %5927
  %5929 = fsub fast float %5900, %5899
  %5930 = fsub fast float %5929, %5927
  %5931 = call float @dx.op.binary.f32(i32 35, float %5899, float %5900)  ; FMax(a,b)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5927, float %5931)  ; FMax(a,b)
  %5933 = fcmp fast olt float %5932, 1.000000e+00
  br i1 %5933, label %5934, label %6332, !dx.controlflow.hints !99

; <label>:5934                                    ; preds = %5898
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = fcmp fast une float %5936, 0.000000e+00
  br i1 %5937, label %5938, label %6332, !dx.controlflow.hints !100

; <label>:5938                                    ; preds = %5934
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.CBufRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.CBufRet.f32 %5939, 2
  %5943 = extractvalue %dx.types.CBufRet.f32 %5939, 3
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.CBufRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = fmul fast float %5940, %5780
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5941, float %5954)  ; FMad(a,b,c)
  %5956 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5942, float %5955)  ; FMad(a,b,c)
  %5957 = fadd fast float %5956, %5943
  %5958 = fmul fast float %5945, %5780
  %5959 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5946, float %5958)  ; FMad(a,b,c)
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5947, float %5959)  ; FMad(a,b,c)
  %5961 = fadd fast float %5960, %5948
  %5962 = fmul fast float %5950, %5780
  %5963 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5951, float %5962)  ; FMad(a,b,c)
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5952, float %5963)  ; FMad(a,b,c)
  %5965 = fadd fast float %5964, %5953
  %5966 = fcmp fast oge float %5957, 1.000000e+00
  %5967 = fcmp fast oge float %5961, 1.000000e+00
  %5968 = or i1 %5966, %5967
  %5969 = fcmp fast olt float %5957, 0.000000e+00
  %5970 = fcmp fast olt float %5961, 0.000000e+00
  %5971 = or i1 %5969, %5970
  %5972 = or i1 %5968, %5971
  br i1 %5972, label %6332, label %5973, !dx.controlflow.hints !101

; <label>:5973                                    ; preds = %5938
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.i32 %5978, 2
  %5980 = uitofp i32 %5979 to float
  %5981 = extractvalue %dx.types.CBufRet.i32 %5978, 3
  %5982 = uitofp i32 %5981 to float
  %5983 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %5984 = fmul fast float %5983, 2.000000e+00
  %5985 = fsub fast float %5957, %5975
  %5986 = fsub fast float %5961, %5976
  %5987 = fmul fast float %5984, %5985
  %5988 = fmul fast float %5984, %5986
  %5989 = fdiv fast float 1.000000e+00, %5763
  %5990 = fmul fast float %5988, %5989
  %5991 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %5992 = fmul fast float %5977, %5782
  %5993 = fmul fast float %5992, %5984
  %5994 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %5995 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5996 = call float @dx.op.binary.f32(i32 35, float %5994, float %5991)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %5998 = fmul fast float %5997, 2.000000e+00
  %5999 = call float @dx.op.unary.f32(i32 23, float %5998)  ; Log(value)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5999, float %5980)  ; FMax(a,b)
  %6001 = call float @dx.op.unary.f32(i32 22, float %6000)  ; Frc(value)
  %6002 = fadd fast float %6001, 0xBFEA666660000000
  %6003 = fmul fast float %6002, 8.000000e+00
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 27, float %6000)  ; Round_ni(value)
  %6006 = fadd fast float %6005, %6004
  %6007 = call float @dx.op.binary.f32(i32 36, float %6006, float %5982)  ; FMin(a,b)
  %6008 = call float @dx.op.unary.f32(i32 27, float %6007)  ; Round_ni(value)
  %6009 = fsub fast float -0.000000e+00, %6008
  %6010 = call float @dx.op.unary.f32(i32 21, float %6009)  ; Exp(value)
  %6011 = fmul fast float %6010, %5984
  %6012 = fmul fast float %6011, %5957
  %6013 = fmul fast float %6011, %5961
  %6014 = fmul fast float %6012, 2.500000e-01
  %6015 = fmul fast float %6013, 2.500000e-01
  %6016 = fadd fast float %6014, 5.000000e-01
  %6017 = fadd fast float %6015, 5.000000e-01
  %6018 = fsub fast float %5982, %5980
  %6019 = fptoui float %6018 to i32
  %6020 = add i32 %6019, 320
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6020)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = fcmp fast une float %6007, %5982
  %6025 = fsub fast float %5957, %6022
  %6026 = fsub fast float %5961, %6023
  %6027 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6028 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6029 = fmul fast float %6027, %6011
  %6030 = fmul fast float %6028, %6011
  %6031 = fcmp fast olt float %6029, 1.000000e+00
  %6032 = fcmp fast olt float %6030, 1.000000e+00
  %6033 = and i1 %6031, %6032
  %6034 = or i1 %6024, %6033
  br i1 %6034, label %6035, label %6332, !dx.controlflow.hints !102

; <label>:6035                                    ; preds = %5973
  %6036 = fmul fast float %6013, 5.000000e-01
  %6037 = fmul fast float %6012, 5.000000e-01
  %6038 = fadd fast float %6036, 5.000000e-01
  %6039 = fadd fast float %6037, 5.000000e-01
  %6040 = sitofp i32 %5979 to float
  %6041 = fsub fast float %6007, %6040
  %6042 = call float @dx.op.unary.f32(i32 27, float %6041)  ; Round_ni(value)
  %6043 = call float @dx.op.unary.f32(i32 22, float %6007)  ; Frc(value)
  %6044 = call float @dx.op.unary.f32(i32 22, float %6039)  ; Frc(value)
  %6045 = call float @dx.op.unary.f32(i32 22, float %6038)  ; Frc(value)
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6044, float %6045, float %6042, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.ResRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.ResRet.f32 %6046, 2
  %6050 = extractvalue %dx.types.ResRet.f32 %6046, 3
  %6051 = fcmp fast ogt float %6043, 0.000000e+00
  br i1 %6051, label %6052, label %6073, !dx.controlflow.hints !103

; <label>:6052                                    ; preds = %6035
  %6053 = fadd fast float %6042, 1.000000e+00
  %6054 = call float @dx.op.unary.f32(i32 22, float %6016)  ; Frc(value)
  %6055 = call float @dx.op.unary.f32(i32 22, float %6017)  ; Frc(value)
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6054, float %6055, float %6053, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.ResRet.f32 %6056, 3
  %6061 = fsub fast float %6057, %6047
  %6062 = fsub fast float %6058, %6048
  %6063 = fsub fast float %6059, %6049
  %6064 = fsub fast float %6060, %6050
  %6065 = fmul fast float %6061, %6043
  %6066 = fmul fast float %6062, %6043
  %6067 = fmul fast float %6063, %6043
  %6068 = fmul fast float %6064, %6043
  %6069 = fadd fast float %6065, %6047
  %6070 = fadd fast float %6066, %6048
  %6071 = fadd fast float %6067, %6049
  %6072 = fadd fast float %6068, %6050
  br label %6073

; <label>:6073                                    ; preds = %6052, %6035
  %6074 = phi float [ %6069, %6052 ], [ %6047, %6035 ]
  %6075 = phi float [ %6070, %6052 ], [ %6048, %6035 ]
  %6076 = phi float [ %6071, %6052 ], [ %6049, %6035 ]
  %6077 = phi float [ %6072, %6052 ], [ %6050, %6035 ]
  %6078 = fadd fast float %6074, -5.000000e-01
  %6079 = fadd fast float %6076, -5.000000e-01
  %6080 = fmul fast float %6078, 0xBFD5555560000000
  %6081 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6079, float %6080)  ; FMad(a,b,c)
  %6082 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6075, float 0.000000e+00)  ; FMad(a,b,c)
  %6083 = fadd fast float %6082, %6077
  %6084 = fmul fast float %6078, -7.500000e-01
  %6085 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6079, float %6084)  ; FMad(a,b,c)
  %6086 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6075, float 0.000000e+00)  ; FMad(a,b,c)
  %6087 = fadd fast float %6086, %6077
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6095 = fsub fast float %6091, %6081
  %6096 = fsub fast float %6092, %6083
  %6097 = fsub fast float %6093, %6085
  %6098 = fsub fast float %6094, %6087
  %6099 = fmul fast float %6095, %6089
  %6100 = fmul fast float %6096, %6089
  %6101 = fmul fast float %6097, %6089
  %6102 = fmul fast float %6098, %6089
  %6103 = fadd fast float %6099, %6081
  %6104 = fadd fast float %6100, %6083
  %6105 = fadd fast float %6101, %6085
  %6106 = fadd fast float %6102, %6087
  %6107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.i32 %6107, 0
  %6109 = and i32 %6108, 536870911
  %6110 = uitofp i32 %6109 to float
  %6111 = fmul fast float %6110, %5957
  %6112 = fmul fast float %6110, %5961
  %6113 = fptoui float %6111 to i32
  %6114 = fptoui float %6112 to i32
  %6115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = and i32 %6116, 31
  %6118 = lshr i32 %6113, %6117
  %6119 = lshr i32 %6114, %6117
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = and i32 %6121, 31
  %6123 = shl i32 1, %6122
  %6124 = call i32 @dx.op.binary.i32(i32 40, i32 %6123, i32 4)  ; UMin(a,b)
  %6125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.i32 %6125, 0
  %6127 = extractvalue %dx.types.ResRet.i32 %6125, 1
  %6128 = icmp eq i32 %6124, 0
  br i1 %6128, label %6170, label %6129

; <label>:6129                                    ; preds = %6073
  br label %6130

; <label>:6130                                    ; preds = %6158, %6129
  %6131 = phi i32 [ %6161, %6158 ], [ 0, %6129 ]
  %6132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.i32 %6132, 0
  %6134 = lshr i32 %6133, 16
  %6135 = and i32 %6134, 31
  %6136 = shl i32 %6119, %6135
  %6137 = add i32 %6136, %6118
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = and i32 %6139, 31
  %6141 = shl i32 %6137, %6140
  %6142 = add i32 %6141, %6131
  %6143 = shl i32 %6142, 2
  %6144 = add i32 %6143, 32
  %6145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.i32 %6145, 0
  %6147 = icmp slt i32 %6146, 0
  %6148 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6131
  %6149 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6131
  %6150 = bitcast float* %6148 to i32*
  %6151 = bitcast float* %6149 to i32*
  br i1 %6147, label %6152, label %6158

; <label>:6152                                    ; preds = %6130
  %6153 = and i32 %6146, 1073741823
  %6154 = add nuw nsw i32 %6153, 20
  %6155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6154, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.i32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.i32 %6155, 1
  br label %6158

; <label>:6158                                    ; preds = %6152, %6130
  %6159 = phi i32 [ %6156, %6152 ], [ %6126, %6130 ]
  %6160 = phi i32 [ %6157, %6152 ], [ %6127, %6130 ]
  store i32 %6159, i32* %6150, align 4
  store i32 %6160, i32* %6151, align 4
  %6161 = add nuw i32 %6131, 1
  %6162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.i32 %6162, 2
  %6164 = icmp eq i32 %6163, 0
  %6165 = icmp ugt i32 %6146, -1073741825
  %6166 = and i1 %6165, %6164
  %6167 = icmp ult i32 %6161, %6124
  %6168 = and i1 %6166, %6167
  br i1 %6168, label %6130, label %6169

; <label>:6169                                    ; preds = %6158
  br label %6170

; <label>:6170                                    ; preds = %6169, %6073
  %6171 = phi i32 [ 0, %6073 ], [ %6161, %6169 ]
  %6172 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %6173 = fptoui float %6172 to i32
  %6174 = icmp eq i32 %6173, 0
  br i1 %6174, label %6226, label %6175

; <label>:6175                                    ; preds = %6170
  br label %6176

; <label>:6176                                    ; preds = %6221, %6175
  %6177 = phi i32 [ %6222, %6221 ], [ %6171, %6175 ]
  %6178 = phi i32 [ %6223, %6221 ], [ 0, %6175 ]
  %6179 = lshr i32 %6178, 2
  %6180 = and i32 %6178, 3
  %6181 = add nuw nsw i32 %6179, 83
  %6182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6181)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.i32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.i32 %6182, 1
  %6185 = extractvalue %dx.types.CBufRet.i32 %6182, 2
  %6186 = extractvalue %dx.types.CBufRet.i32 %6182, 3
  %6187 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6183, i32* %6187, align 4
  %6188 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6184, i32* %6188, align 4
  %6189 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6185, i32* %6189, align 4
  %6190 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6186, i32* %6190, align 4
  %6191 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6180
  %6192 = load i32, i32* %6191, align 4, !tbaa !104, !noalias !108
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = lshr i32 %6194, 16
  %6196 = and i32 %6195, 31
  %6197 = shl i32 %6119, %6196
  %6198 = add i32 %6197, %6118
  %6199 = shl i32 %6198, 2
  %6200 = add i32 %6199, %6192
  %6201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.i32 %6201, 0
  %6203 = icmp eq i32 %6202, 0
  br i1 %6203, label %6221, label %6204

; <label>:6204                                    ; preds = %6176
  %6205 = icmp slt i32 %6202, 0
  %6206 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6177
  %6207 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6177
  %6208 = bitcast float* %6206 to i32*
  %6209 = bitcast float* %6207 to i32*
  br i1 %6205, label %6210, label %6217

; <label>:6210                                    ; preds = %6204
  %6211 = and i32 %6202, 1073741823
  %6212 = add i32 %6192, 20
  %6213 = add i32 %6212, %6211
  %6214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6213, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.i32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.i32 %6214, 1
  br label %6217

; <label>:6217                                    ; preds = %6210, %6204
  %6218 = phi i32 [ %6215, %6210 ], [ %6126, %6204 ]
  %6219 = phi i32 [ %6216, %6210 ], [ %6127, %6204 ]
  store i32 %6218, i32* %6208, align 4
  store i32 %6219, i32* %6209, align 4
  %6220 = add i32 %6177, 1
  br label %6221

; <label>:6221                                    ; preds = %6217, %6176
  %6222 = phi i32 [ %6177, %6176 ], [ %6220, %6217 ]
  %6223 = add nuw i32 %6178, 1
  %6224 = icmp eq i32 %6223, %6173
  br i1 %6224, label %6225, label %6176

; <label>:6225                                    ; preds = %6221
  br label %6226

; <label>:6226                                    ; preds = %6225, %6170
  %6227 = phi i32 [ %6171, %6170 ], [ %6222, %6225 ]
  %6228 = icmp eq i32 %6227, 1
  %6229 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6230 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6228, label %6231, label %6234

; <label>:6231                                    ; preds = %6226
  %6232 = load float, float* %6229, align 4
  %6233 = load float, float* %6230, align 4
  br label %6261

; <label>:6234                                    ; preds = %6226
  %6235 = load float, float* %6229, align 4
  %6236 = load float, float* %6230, align 4
  %6237 = fdiv fast float 1.000000e+00, %6236
  %6238 = fsub fast float %6235, %6237
  %6239 = icmp ugt i32 %6227, 1
  br i1 %6239, label %6240, label %6256

; <label>:6240                                    ; preds = %6234
  br label %6241

; <label>:6241                                    ; preds = %6241, %6240
  %6242 = phi float [ %6251, %6241 ], [ %6238, %6240 ]
  %6243 = phi float [ %6252, %6241 ], [ %6235, %6240 ]
  %6244 = phi i32 [ %6253, %6241 ], [ 1, %6240 ]
  %6245 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6244
  %6246 = load float, float* %6245, align 4
  %6247 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6244
  %6248 = load float, float* %6247, align 4
  %6249 = fdiv fast float 1.000000e+00, %6248
  %6250 = fsub fast float %6246, %6249
  %6251 = call float @dx.op.binary.f32(i32 36, float %6242, float %6250)  ; FMin(a,b)
  %6252 = call float @dx.op.binary.f32(i32 35, float %6243, float %6246)  ; FMax(a,b)
  %6253 = add nuw i32 %6244, 1
  %6254 = icmp eq i32 %6253, %6227
  br i1 %6254, label %6255, label %6241

; <label>:6255                                    ; preds = %6241
  br label %6256

; <label>:6256                                    ; preds = %6255, %6234
  %6257 = phi float [ %6238, %6234 ], [ %6251, %6255 ]
  %6258 = phi float [ %6235, %6234 ], [ %6252, %6255 ]
  %6259 = fsub fast float %6258, %6257
  %6260 = fdiv fast float 1.000000e+00, %6259
  br label %6261

; <label>:6261                                    ; preds = %6256, %6231
  %6262 = phi float [ %6232, %6231 ], [ %6258, %6256 ]
  %6263 = phi float [ %6233, %6231 ], [ %6260, %6256 ]
  %6264 = fadd fast float %5965, %6262
  %6265 = fmul fast float %6264, %6263
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = fmul fast float %6266, 2.000000e+00
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = fmul fast float %6103, %6103
  %6270 = fsub fast float %6104, %6269
  %6271 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6270)  ; FMax(a,b)
  %6272 = fdiv fast float 1.000000e+00, %6271
  %6273 = fmul fast float %6104, %6103
  %6274 = fsub fast float %6105, %6273
  %6275 = fsub fast float %6268, %6103
  %6276 = fmul fast float %6268, %6268
  %6277 = fsub fast float %6276, %6104
  %6278 = fmul fast float %6272, %6274
  %6279 = fmul fast float %6278, %6275
  %6280 = fsub fast float %6277, %6279
  %6281 = fmul fast float %6104, %6104
  %6282 = fsub fast float %6106, %6281
  %6283 = fmul fast float %6274, %6274
  %6284 = fmul fast float %6283, %6272
  %6285 = fsub fast float %6282, %6284
  %6286 = fdiv fast float %6280, %6285
  %6287 = fmul fast float %6286, %6274
  %6288 = fsub fast float %6275, %6287
  %6289 = fmul fast float %6288, %6272
  %6290 = fmul fast float %6289, %6103
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = fmul fast float %6286, %6104
  %6293 = fsub fast float %6291, %6292
  %6294 = fmul fast float %6289, %6289
  %6295 = fmul fast float %6286, 4.000000e+00
  %6296 = fmul fast float %6295, %6293
  %6297 = fsub fast float %6294, %6296
  %6298 = call float @dx.op.unary.f32(i32 24, float %6297)  ; Sqrt(value)
  %6299 = fcmp fast oge float %6289, 0.000000e+00
  %6300 = fsub fast float -0.000000e+00, %6298
  %6301 = select i1 %6299, float %6300, float %6298
  %6302 = fsub fast float %6301, %6289
  %6303 = fdiv fast float %6302, %6286
  %6304 = fdiv fast float %6293, %6302
  %6305 = fmul fast float %6303, 5.000000e-01
  %6306 = fmul fast float %6304, 2.000000e+00
  %6307 = select i1 %6299, float %6305, float %6306
  %6308 = select i1 %6299, float %6306, float %6305
  %6309 = call float @dx.op.binary.f32(i32 35, float %6307, float %6308)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6307, float %6308)  ; FMin(a,b)
  %6311 = fcmp fast ogt float %6268, %6309
  %6312 = fsub fast float %6268, %6310
  %6313 = fsub fast float %6268, %6309
  %6314 = fsub fast float %6309, %6310
  %6315 = select i1 %6311, float %6313, float %6314
  %6316 = fmul float %6312, %6315
  %6317 = select i1 %6311, float %6310, float %6268
  %6318 = fcmp fast ogt float %6268, %6310
  %6319 = fmul fast float %6317, %6309
  %6320 = fadd fast float %6317, %6309
  %6321 = fmul fast float %6320, %6103
  %6322 = fadd fast float %6319, %6104
  %6323 = fsub fast float %6322, %6321
  %6324 = fdiv fast float %6323, %6316
  %6325 = select i1 %6318, float %6324, float 0.000000e+00
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = select i1 %6311, float %6326, float %6325
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6088, 3
  %6330 = fmul fast float %6329, %6328
  %6331 = fsub fast float 1.000000e+00, %6330
  br label %6332

; <label>:6332                                    ; preds = %6261, %5973, %5938, %5934, %5898
  %6333 = phi float [ 1.000000e+00, %5898 ], [ %6331, %6261 ], [ 1.000000e+00, %5938 ], [ 1.000000e+00, %5973 ], [ 1.000000e+00, %5934 ]
  %6334 = fcmp fast ogt float %5930, 0.000000e+00
  br i1 %6334, label %6335, label %6343, !dx.controlflow.hints !117

; <label>:6335                                    ; preds = %6332
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = fadd fast float %6337, %5811
  %6339 = call float @dx.op.binary.f32(i32 35, float %6338, float 0.000000e+00)  ; FMax(a,b)
  %6340 = fadd fast float %6339, 0x3F10000000000000
  %6341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %5829, float %5830, float undef, float undef, i32 0, i32 0, i32 undef, float %6340)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6342 = extractvalue %dx.types.ResRet.f32 %6341, 0
  br label %6343

; <label>:6343                                    ; preds = %6335, %6332
  %6344 = phi float [ %6342, %6335 ], [ 1.000000e+00, %6332 ]
  %6345 = fcmp fast ogt float %5928, 0.000000e+00
  br i1 %6345, label %6346, label %6354, !dx.controlflow.hints !118

; <label>:6346                                    ; preds = %6343
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6349 = fadd fast float %6348, %5811
  %6350 = call float @dx.op.binary.f32(i32 35, float %6349, float 0.000000e+00)  ; FMax(a,b)
  %6351 = fadd fast float %6350, 0x3F10000000000000
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %5821, float %5822, float undef, float undef, i32 0, i32 0, i32 undef, float %6351)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  br label %6354

; <label>:6354                                    ; preds = %6346, %6343
  %6355 = phi float [ %6353, %6346 ], [ 1.000000e+00, %6343 ]
  %6356 = fcmp fast ogt float %5927, 0.000000e+00
  br i1 %6356, label %6357, label %6369, !dx.controlflow.hints !119

; <label>:6357                                    ; preds = %6354
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = fadd fast float %6359, %5811
  %6361 = call float @dx.op.binary.f32(i32 35, float %6360, float 0.000000e+00)  ; FMax(a,b)
  %6362 = fadd fast float %6361, 0x3F10000000000000
  br i1 %5814, label %6363, label %6366, !dx.controlflow.hints !120

; <label>:6363                                    ; preds = %6357
  %6364 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %5803, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float %6362)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6365 = extractvalue %dx.types.ResRet.f32 %6364, 0
  br label %6369

; <label>:6366                                    ; preds = %6357
  %6367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %5803, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float %6362)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 0
  br label %6369

; <label>:6369                                    ; preds = %6366, %6363, %6354
  %6370 = phi float [ %6365, %6363 ], [ %6368, %6366 ], [ 1.000000e+00, %6354 ]
  %6371 = fsub fast float %6344, %6333
  %6372 = fmul fast float %6371, %5900
  %6373 = fadd fast float %6372, %6333
  %6374 = fsub fast float %6355, %6373
  %6375 = fmul fast float %6374, %5899
  %6376 = fadd fast float %6375, %6373
  %6377 = fsub fast float %6370, %6376
  %6378 = fmul fast float %6377, %5927
  %6379 = fadd fast float %6378, %6376
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6382 = fcmp fast ogt float %6381, 0.000000e+00
  br i1 %6382, label %6383, label %6423, !dx.controlflow.hints !121

; <label>:6383                                    ; preds = %6369
  %6384 = fcmp fast ugt float %6381, 0.000000e+00
  br i1 %6384, label %6385, label %6420

; <label>:6385                                    ; preds = %6383
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6396 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = fadd fast float %6399, %5780
  %6403 = fadd fast float %6400, %5781
  %6404 = fadd fast float %6401, %5782
  %6405 = fmul fast float %6402, %6387
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6388, float %6403, float %6405)  ; FMad(a,b,c)
  %6407 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6404, float %6406)  ; FMad(a,b,c)
  %6408 = fadd fast float %6407, %6390
  %6409 = fmul fast float %6402, %6392
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6393, float %6403, float %6409)  ; FMad(a,b,c)
  %6411 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6404, float %6410)  ; FMad(a,b,c)
  %6412 = fadd fast float %6411, %6395
  %6413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6408, float %6412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = fmul fast float %6414, %6397
  %6416 = fadd fast float %6415, %6396
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = fmul fast float %6417, %6381
  %6419 = fsub fast float 1.000000e+00, %6418
  br label %6420

; <label>:6420                                    ; preds = %6385, %6383
  %6421 = phi float [ %6419, %6385 ], [ 1.000000e+00, %6383 ]
  %6422 = fmul fast float %6421, %6379
  br label %6423

; <label>:6423                                    ; preds = %6420, %6369, %5760
  %6424 = phi float [ 1.000000e+00, %5760 ], [ %6422, %6420 ], [ %6379, %6369 ]
  %6425 = call float @dx.op.binary.f32(i32 36, float %6424, float %6424)  ; FMin(a,b)
  %6426 = call float @dx.op.binary.f32(i32 36, float %6424, float %6425)  ; FMin(a,b)
  %6427 = fcmp fast ogt float %6426, 0.000000e+00
  br i1 %6427, label %6428, label %6588, !dx.controlflow.hints !122

; <label>:6428                                    ; preds = %6423
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6444 = fmul fast float %6430, %5780
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %6431, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %6432, float %6445)  ; FMad(a,b,c)
  %6447 = fadd fast float %6446, %6433
  %6448 = fmul fast float %6435, %5780
  %6449 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %6436, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %6437, float %6449)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6438
  %6452 = fmul fast float %6440, %5780
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %6441, float %6452)  ; FMad(a,b,c)
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %6442, float %6453)  ; FMad(a,b,c)
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6458 = extractvalue %dx.types.CBufRet.f32 %6455, 3
  %6459 = fmul fast float %6458, %6447
  %6460 = fmul fast float %6458, %6451
  %6461 = fadd fast float %6459, %6456
  %6462 = fadd fast float %6460, %6457
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = fsub fast float %6461, %6464
  %6467 = fsub fast float %6462, %6465
  %6468 = fcmp fast olt float %6466, 0.000000e+00
  %6469 = fcmp fast olt float %6467, 0.000000e+00
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = select i1 %6468, float %6471, float %6473
  %6476 = select i1 %6469, float %6472, float %6474
  %6477 = fmul fast float %6475, %6466
  %6478 = fmul fast float %6476, %6467
  %6479 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6480 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6481 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %6482 = call float @dx.op.binary.f32(i32 35, float %6479, float %6480)  ; FMax(a,b)
  %6483 = fsub fast float %6481, %6482
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = fcmp fast ogt float %6484, 0.000000e+00
  br i1 %6485, label %6486, label %6527, !dx.controlflow.hints !123

; <label>:6486                                    ; preds = %6428
  %6487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6461, float %6462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 1
  %6489 = fcmp fast ogt float %6488, 0.000000e+00
  br i1 %6489, label %6490, label %6522

; <label>:6490                                    ; preds = %6486
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6461, float %6462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = extractvalue %dx.types.ResRet.f32 %6491, 3
  %6496 = fsub fast float 1.000000e+00, %6443
  %6497 = fsub fast float %6496, %6454
  %6498 = fmul fast float %6497, 0x400921FB60000000
  %6499 = fadd fast float %6498, 0x3FF921FB60000000
  %6500 = call float @dx.op.unary.f32(i32 13, float %6499)  ; Sin(value)
  %6501 = fadd fast float %6500, -1.000000e+00
  %6502 = fmul fast float %6501, 0x3FD45F3060000000
  %6503 = fmul fast float %6497, 0x401921FB60000000
  %6504 = fadd fast float %6503, 0x400921FB60000000
  %6505 = call float @dx.op.unary.f32(i32 13, float %6504)  ; Sin(value)
  %6506 = fadd fast float %6505, 0x3E7777A5C0000000
  %6507 = fmul fast float %6506, 0x3FC45F3060000000
  %6508 = fmul fast float %6497, 0x4022D97C80000000
  %6509 = fadd fast float %6508, 0x4012D97C80000000
  %6510 = call float @dx.op.unary.f32(i32 13, float %6509)  ; Sin(value)
  %6511 = fadd fast float %6510, 1.000000e+00
  %6512 = fmul fast float %6511, 0x3FBB2995E0000000
  %6513 = fmul fast float %6497, 0x402921FB60000000
  %6514 = fadd fast float %6513, 0x401921FB60000000
  %6515 = call float @dx.op.unary.f32(i32 13, float %6514)  ; Sin(value)
  %6516 = fadd fast float %6515, 0xBE8777A5C0000000
  %6517 = fmul fast float %6516, 0x3FB45F3060000000
  %6518 = call float @dx.op.dot4.f32(i32 56, float %6492, float %6493, float %6494, float %6495, float %6502, float %6507, float %6512, float %6517)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6519 = fmul fast float %6518, 0xBFF7154760000000
  %6520 = call float @dx.op.unary.f32(i32 21, float %6519)  ; Exp(value)
  %6521 = call float @dx.op.unary.f32(i32 7, float %6520)  ; Saturate(value)
  br label %6522

; <label>:6522                                    ; preds = %6490, %6486
  %6523 = phi float [ %6521, %6490 ], [ 1.000000e+00, %6486 ]
  %6524 = fadd fast float %6523, -1.000000e+00
  %6525 = fmul fast float %6524, %6484
  %6526 = fadd fast float %6525, 1.000000e+00
  br label %6527

; <label>:6527                                    ; preds = %6522, %6428
  %6528 = phi float [ %6526, %6522 ], [ 1.000000e+00, %6428 ]
  %6529 = fmul fast float %6528, %6424
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = fadd fast float %6531, %199
  %6535 = fadd fast float %6532, %200
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6538 = fsub fast float -0.000000e+00, %6534
  %6539 = fsub fast float -0.000000e+00, %6535
  %6540 = fsub fast float %5297, %6533
  %6541 = fadd fast float %6540, %6537
  %6542 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6538, float %6539, float %6541)  ; Dot3(ax,ay,az,bx,by,bz)
  %6543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = fdiv fast float 1.000000e+00, %6543
  %6545 = fmul fast float %6544, %6542
  %6546 = fmul fast float %5761, %6545
  %6547 = fmul fast float %5762, %6545
  %6548 = fadd fast float %6546, %6534
  %6549 = fadd fast float %6547, %6535
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = fsub fast float %6548, %6551
  %6554 = fsub fast float %6549, %6552
  %6555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.f32 %6555, 2
  %6557 = extractvalue %dx.types.CBufRet.f32 %6555, 3
  %6558 = fmul fast float %6553, %6556
  %6559 = fmul fast float %6554, %6557
  %6560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.i32 %6560, 3
  %6562 = icmp eq i32 %6561, 0
  br i1 %6562, label %6568, label %6563

; <label>:6563                                    ; preds = %6527
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6558, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.ResRet.f32 %6564, 2
  br label %6573

; <label>:6568                                    ; preds = %6527
  %6569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6558, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.ResRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.ResRet.f32 %6569, 2
  br label %6573

; <label>:6573                                    ; preds = %6568, %6563
  %6574 = phi float [ %6565, %6563 ], [ %6570, %6568 ]
  %6575 = phi float [ %6566, %6563 ], [ %6571, %6568 ]
  %6576 = phi float [ %6567, %6563 ], [ %6572, %6568 ]
  %6577 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6578 = fmul fast float %6577, %6574
  %6579 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6580 = fsub fast float %6545, %6579
  %6581 = fsub fast float %6580, %6578
  %6582 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6581)  ; FMax(a,b)
  %6583 = fmul fast float %6582, %6575
  %6584 = call float @dx.op.binary.f32(i32 36, float %6576, float %6583)  ; FMin(a,b)
  %6585 = fmul fast float %6584, 0xBFF7154760000000
  %6586 = call float @dx.op.unary.f32(i32 21, float %6585)  ; Exp(value)
  %6587 = fmul fast float %6529, %6586
  br label %6588

; <label>:6588                                    ; preds = %6573, %6423
  %6589 = phi float [ %6587, %6573 ], [ %6424, %6423 ]
  %6590 = call float @dx.op.binary.f32(i32 36, float %6589, float %6589)  ; FMin(a,b)
  %6591 = call float @dx.op.binary.f32(i32 36, float %6589, float %6590)  ; FMin(a,b)
  %6592 = fcmp fast ogt float %6591, 0.000000e+00
  br i1 %6592, label %6593, label %6844, !dx.controlflow.hints !124

; <label>:6593                                    ; preds = %6588
  %6594 = fmul fast float %6589, %5772
  %6595 = fmul fast float %6589, %5773
  %6596 = fmul fast float %6589, %5774
  %6597 = fsub fast float %201, %4493
  %6598 = fcmp fast ogt float %6597, 0.000000e+00
  %6599 = fmul fast float %5761, 5.120000e+02
  %6600 = fmul fast float %5762, 5.120000e+02
  %6601 = fmul fast float %5763, 5.120000e+02
  %6602 = fadd fast float %6601, %201
  %6603 = fsub fast float %4493, %6602
  %6604 = fmul fast float %6603, 2.000000e+00
  %6605 = fadd fast float %6604, %6602
  %6606 = select i1 %6598, float %6605, float %6602
  %6607 = fsub fast float %6606, %201
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6600, float %6607, float %6599, float %6600, float %6607)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = call float @dx.op.unary.f32(i32 25, float %6608)  ; Rsqrt(value)
  %6610 = fmul fast float %6609, %6599
  %6611 = fmul fast float %6609, %6600
  %6612 = fmul fast float %6609, %6607
  %6613 = fsub fast float %4493, %201
  %6614 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6613)  ; Dot3(ax,ay,az,bx,by,bz)
  %6615 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6610, float %6611, float %6612)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = fdiv fast float 1.000000e+00, %6615
  %6617 = fmul fast float %6616, %6614
  %6618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6597, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6619 = fcmp fast ogt float %6618, 0.000000e+00
  %6620 = fcmp fast olt float %6618, 0.000000e+00
  %6621 = zext i1 %6619 to i32
  %6622 = zext i1 %6620 to i32
  %6623 = sub nsw i32 %6621, %6622
  %6624 = sitofp i32 %6623 to float
  %6625 = fsub fast float %6606, %4493
  %6626 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6600, float %6625, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6627 = fcmp fast ogt float %6626, 0.000000e+00
  %6628 = fcmp fast olt float %6626, 0.000000e+00
  %6629 = zext i1 %6627 to i32
  %6630 = zext i1 %6628 to i32
  %6631 = sub nsw i32 %6629, %6630
  %6632 = sitofp i32 %6631 to float
  %6633 = fcmp fast une float %6624, %6632
  br i1 %6633, label %6634, label %6644

; <label>:6634                                    ; preds = %6593
  %6635 = fmul fast float %6617, %6612
  %6636 = fmul fast float %6617, %6611
  %6637 = fmul fast float %6617, %6610
  %6638 = fmul fast float %6637, %6637
  %6639 = fmul fast float %6636, %6636
  %6640 = fadd fast float %6638, %6639
  %6641 = fmul fast float %6635, %6635
  %6642 = fadd fast float %6640, %6641
  %6643 = call float @dx.op.unary.f32(i32 24, float %6642)  ; Sqrt(value)
  br label %6654

; <label>:6644                                    ; preds = %6593
  %6645 = icmp slt i32 %6623, 0
  br i1 %6645, label %6646, label %6654

; <label>:6646                                    ; preds = %6644
  %6647 = fsub fast float %201, %6606
  %6648 = fmul fast float %6599, %6599
  %6649 = fmul fast float %6600, %6600
  %6650 = fadd fast float %6648, %6649
  %6651 = fmul fast float %6647, %6647
  %6652 = fadd fast float %6650, %6651
  %6653 = call float @dx.op.unary.f32(i32 24, float %6652)  ; Sqrt(value)
  br label %6654

; <label>:6654                                    ; preds = %6646, %6644, %6634
  %6655 = phi float [ %6643, %6634 ], [ %6653, %6646 ], [ 0.000000e+00, %6644 ]
  %6656 = fsub fast float -0.000000e+00, %6655
  %6657 = select i1 %6598, float -0.000000e+00, float %6656
  %6658 = fmul fast float %4494, 0x3FF7154760000000
  %6659 = fmul fast float %6658, %6657
  %6660 = fmul fast float %4495, 0x3FF7154760000000
  %6661 = fmul fast float %6660, %6657
  %6662 = fmul fast float %4496, 0x3FF7154760000000
  %6663 = fmul fast float %6662, %6657
  %6664 = call float @dx.op.unary.f32(i32 21, float %6659)  ; Exp(value)
  %6665 = call float @dx.op.unary.f32(i32 21, float %6661)  ; Exp(value)
  %6666 = call float @dx.op.unary.f32(i32 21, float %6663)  ; Exp(value)
  %6667 = call float @dx.op.unary.f32(i32 7, float %6664)  ; Saturate(value)
  %6668 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6669 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6670 = fmul fast float %6594, %6667
  %6671 = fmul fast float %6595, %6668
  %6672 = fmul fast float %6596, %6669
  %6673 = fsub fast float %5761, %5285
  %6674 = fsub fast float %5762, %5284
  %6675 = fsub fast float %5763, %5283
  %6676 = call float @dx.op.dot3.f32(i32 55, float %6673, float %6674, float %6675, float %6673, float %6674, float %6675)  ; Dot3(ax,ay,az,bx,by,bz)
  %6677 = call float @dx.op.unary.f32(i32 25, float %6676)  ; Rsqrt(value)
  %6678 = fmul fast float %6677, %6673
  %6679 = fmul fast float %6677, %6674
  %6680 = fmul fast float %6677, %6675
  %6681 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5281, float %5280, float %6678, float %6679, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6683 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6684 = fmul fast float %6683, %6683
  %6685 = fmul fast float %6684, %5313
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fmul fast float %6686, %6683
  %6688 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %6678, float %6679, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = fmul fast float %6688, %6688
  %6690 = call float @dx.op.unary.f32(i32 6, float %6681)  ; FAbs(value)
  %6691 = fsub fast float 1.000000e+00, %5295
  %6692 = call float @dx.op.binary.f32(i32 35, float %6691, float 0x3F847AE140000000)  ; FMax(a,b)
  %6693 = fmul fast float %6692, %6692
  %6694 = fmul fast float %6693, %6693
  %6695 = fsub fast float 1.000000e+00, %6694
  %6696 = fmul fast float %5300, %5300
  %6697 = fmul fast float %6696, %6695
  %6698 = fadd fast float %6697, %6694
  %6699 = bitcast float %6698 to i32
  %6700 = ashr i32 %6699, 1
  %6701 = add nsw i32 %6700, 532487669
  %6702 = bitcast i32 %6701 to float
  %6703 = fadd fast float %6702, %5300
  %6704 = fmul fast float %6694, %6689
  %6705 = fsub fast float 1.000000e+00, %6689
  %6706 = fadd fast float %6705, %6704
  %6707 = fmul fast float %6690, %6690
  %6708 = fmul fast float %6707, %6695
  %6709 = fadd fast float %6708, %6694
  %6710 = bitcast float %6709 to i32
  %6711 = ashr i32 %6710, 1
  %6712 = add nsw i32 %6711, 532487669
  %6713 = bitcast i32 %6712 to float
  %6714 = fadd fast float %6713, %6690
  %6715 = fmul fast float %6706, %6706
  %6716 = fmul fast float %6715, %6703
  %6717 = fmul fast float %6716, %6714
  %6718 = fdiv fast float 0x3FF0A00000000000, %6717
  %6719 = fmul fast float %6718, %6694
  %6720 = call float @dx.op.unary.f32(i32 6, float %6682)  ; FAbs(value)
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = bitcast float %6721 to i32
  %6723 = sitofp i32 %6722 to float
  %6724 = fmul fast float %6723, 5.000000e+00
  %6725 = fadd fast float %6724, 0xC1EFBF8940000000
  %6726 = fptosi float %6725 to i32
  %6727 = bitcast i32 %6726 to float
  %6728 = fsub fast float 1.000000e+00, %5289
  %6729 = fsub fast float 1.000000e+00, %5290
  %6730 = fsub fast float 1.000000e+00, %5298
  %6731 = fmul fast float %6727, %6728
  %6732 = fmul fast float %6727, %6729
  %6733 = fmul fast float %6727, %6730
  %6734 = fadd fast float %6731, %5289
  %6735 = fadd fast float %6732, %5290
  %6736 = fadd fast float %6733, %5298
  br i1 %5615, label %6737, label %6760

; <label>:6737                                    ; preds = %6654
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %6720, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = fadd fast float %6739, -5.000000e-01
  %6743 = fadd fast float %6740, -5.000000e-01
  %6744 = fadd fast float %6741, -5.000000e-01
  %6745 = fmul fast float %5289, 4.000000e+00
  %6746 = fmul fast float %6745, %6728
  %6747 = fmul fast float %6746, %6742
  %6748 = fmul fast float %5290, 4.000000e+00
  %6749 = fmul fast float %6748, %6729
  %6750 = fmul fast float %6749, %6743
  %6751 = fmul fast float %5298, 4.000000e+00
  %6752 = fmul fast float %6751, %6730
  %6753 = fmul fast float %6752, %6744
  %6754 = fadd fast float %6747, %6734
  %6755 = fadd fast float %6750, %6735
  %6756 = fadd fast float %6753, %6736
  %6757 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6758 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6759 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  br label %6760

; <label>:6760                                    ; preds = %6737, %6654
  %6761 = phi float [ %6757, %6737 ], [ %6734, %6654 ]
  %6762 = phi float [ %6758, %6737 ], [ %6735, %6654 ]
  %6763 = phi float [ %6759, %6737 ], [ %6736, %6654 ]
  %6764 = fmul fast float %6681, 9.843750e-01
  %6765 = fadd fast float %6764, 7.812500e-03
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %6765, float %5605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 2
  %6768 = extractvalue %dx.types.ResRet.f32 %6766, 3
  %6769 = fmul fast float %6767, %5289
  %6770 = fmul fast float %6767, %5290
  %6771 = fmul fast float %6767, %5298
  %6772 = fadd fast float %6769, %6768
  %6773 = fadd fast float %6770, %6768
  %6774 = fadd fast float %6771, %6768
  br i1 %5615, label %6775, label %6798

; <label>:6775                                    ; preds = %6760
  %6776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %6681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.ResRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.ResRet.f32 %6776, 2
  %6780 = fadd fast float %6777, -5.000000e-01
  %6781 = fadd fast float %6778, -5.000000e-01
  %6782 = fadd fast float %6779, -5.000000e-01
  %6783 = fmul fast float %5289, 4.000000e+00
  %6784 = fmul fast float %6783, %6728
  %6785 = fmul fast float %6784, %6780
  %6786 = fmul fast float %5290, 4.000000e+00
  %6787 = fmul fast float %6786, %6729
  %6788 = fmul fast float %6787, %6781
  %6789 = fmul fast float %5298, 4.000000e+00
  %6790 = fmul fast float %6789, %6730
  %6791 = fmul fast float %6790, %6782
  %6792 = fadd fast float %6785, %6772
  %6793 = fadd fast float %6788, %6773
  %6794 = fadd fast float %6791, %6774
  %6795 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6796 = call float @dx.op.unary.f32(i32 7, float %6793)  ; Saturate(value)
  %6797 = call float @dx.op.unary.f32(i32 7, float %6794)  ; Saturate(value)
  br label %6798

; <label>:6798                                    ; preds = %6775, %6760
  %6799 = phi float [ %6795, %6775 ], [ %6772, %6760 ]
  %6800 = phi float [ %6796, %6775 ], [ %6773, %6760 ]
  %6801 = phi float [ %6797, %6775 ], [ %6774, %6760 ]
  %6802 = call float @dx.op.binary.f32(i32 35, float %6800, float %6801)  ; FMax(a,b)
  %6803 = call float @dx.op.binary.f32(i32 35, float %6799, float %6802)  ; FMax(a,b)
  %6804 = fsub fast float 1.000000e+00, %6803
  %6805 = fmul fast float %6761, %6719
  %6806 = fmul fast float %6762, %6719
  %6807 = fmul fast float %6763, %6719
  %6808 = fsub fast float 1.000000e+00, %6682
  %6809 = bitcast float %6808 to i32
  %6810 = sitofp i32 %6809 to float
  %6811 = fmul fast float %6810, 5.000000e+00
  %6812 = fadd fast float %6811, 0xC1EFBF8940000000
  %6813 = fptosi float %6812 to i32
  %6814 = bitcast i32 %6813 to float
  %6815 = fmul fast float %6814, %4092
  %6816 = fmul fast float %6804, %6815
  %6817 = fmul fast float %6816, %5715
  %6818 = fmul fast float %6816, %5716
  %6819 = fmul fast float %6816, %5717
  %6820 = fadd fast float %6817, %6805
  %6821 = fadd fast float %6818, %6806
  %6822 = fadd fast float %6819, %6807
  %6823 = fmul fast float %6687, %6670
  %6824 = fmul fast float %6823, %6804
  %6825 = fmul fast float %6687, %6671
  %6826 = fmul fast float %6825, %6804
  %6827 = fmul fast float %6687, %6672
  %6828 = fmul fast float %6827, %6804
  %6829 = fmul fast float %6823, %6820
  %6830 = fmul fast float %6825, %6821
  %6831 = fmul fast float %6827, %6822
  %6832 = fadd fast float %6824, %5697
  %6833 = fmul fast float %6832, %4088
  %6834 = fadd fast float %6826, %5699
  %6835 = fmul fast float %6834, %4088
  %6836 = fadd fast float %6828, %5701
  %6837 = fmul fast float %6836, %4088
  %6838 = fadd fast float %6829, %5749
  %6839 = fmul fast float %6838, %4088
  %6840 = fadd fast float %6830, %5752
  %6841 = fmul fast float %6840, %4088
  %6842 = fadd fast float %6831, %5755
  %6843 = fmul fast float %6842, %4088
  br label %6844

; <label>:6844                                    ; preds = %6798, %6588, %5642
  %6845 = phi float [ %5750, %5642 ], [ %5750, %6588 ], [ %6839, %6798 ]
  %6846 = phi float [ %5753, %5642 ], [ %5753, %6588 ], [ %6841, %6798 ]
  %6847 = phi float [ %5756, %5642 ], [ %5756, %6588 ], [ %6843, %6798 ]
  %6848 = phi float [ %5745, %5642 ], [ %5745, %6588 ], [ %6833, %6798 ]
  %6849 = phi float [ %5746, %5642 ], [ %5746, %6588 ], [ %6835, %6798 ]
  %6850 = phi float [ %5747, %5642 ], [ %5747, %6588 ], [ %6837, %6798 ]
  %6851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.i32 %6851, 0
  %6853 = icmp eq i32 %6852, 0
  br i1 %6853, label %7474, label %6854

; <label>:6854                                    ; preds = %6844
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 3
  %6858 = fmul fast float %6856, %116
  %6859 = fmul fast float %6857, %117
  %6860 = fptoui float %6858 to i32
  %6861 = fptoui float %6859 to i32
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6866 = fadd fast float %107, -4.000000e+00
  %6867 = call float @dx.op.binary.f32(i32 35, float %6866, float 0.000000e+00)  ; FMax(a,b)
  %6868 = fadd fast float %6867, %6863
  %6869 = fmul fast float %6868, %6864
  %6870 = call float @dx.op.unary.f32(i32 23, float %6869)  ; Log(value)
  %6871 = fmul fast float %6870, %6865
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6874 = fmul fast float %6871, %6873
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.i32 %6876, 1
  %6878 = add i32 %6877, -1
  %6879 = uitofp i32 %6877 to float
  %6880 = fmul fast float %6879, %6875
  %6881 = fptoui float %6880 to i32
  %6882 = call i32 @dx.op.binary.i32(i32 40, i32 %6881, i32 %6878)  ; UMin(a,b)
  %6883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.i32 %6883, 2
  %6885 = extractvalue %dx.types.CBufRet.i32 %6883, 3
  %6886 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6861, i32 %6884, i32 %6860)  ; UMad(a,b,c)
  %6887 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6882, i32 %6885, i32 %6886)  ; UMad(a,b,c)
  %6888 = add nsw i32 %6852, -1
  %6889 = call i32 @dx.op.binary.i32(i32 37, i32 %6888, i32 0)  ; IMax(a,b)
  %6890 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %6891 = fptoui float %6890 to i32
  %6892 = lshr i32 %6891, 5
  %6893 = call i32 @dx.op.binary.i32(i32 40, i32 %6892, i32 8191)  ; UMin(a,b)
  %6894 = shl i32 %6893, 2
  %6895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6894, i32 undef)  ; BufferLoad(srv,index,wot)
  %6896 = extractvalue %dx.types.ResRet.i32 %6895, 0
  %6897 = lshr i32 %6896, 16
  %6898 = and i32 %6896, 65535
  %6899 = lshr i32 %6896, 21
  %6900 = lshr i32 %6898, 5
  %6901 = call i32 @dx.op.binary.i32(i32 40, i32 %6900, i32 %6889)  ; UMin(a,b)
  %6902 = icmp ugt i32 %6899, %6901
  br i1 %6902, label %7474, label %6903

; <label>:6903                                    ; preds = %6854
  br label %6904

; <label>:6904                                    ; preds = %7464, %6903
  %6905 = phi i32 [ %7471, %7464 ], [ %6899, %6903 ]
  %6906 = phi float [ %7465, %7464 ], [ %6845, %6903 ]
  %6907 = phi float [ %7466, %7464 ], [ %6846, %6903 ]
  %6908 = phi float [ %7467, %7464 ], [ %6847, %6903 ]
  %6909 = phi float [ %7468, %7464 ], [ %6848, %6903 ]
  %6910 = phi float [ %7469, %7464 ], [ %6849, %6903 ]
  %6911 = phi float [ %7470, %7464 ], [ %6850, %6903 ]
  %6912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.i32 %6912, 0
  %6914 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6887, i32 %6913, i32 %6905)  ; UMad(a,b,c)
  %6915 = shl i32 %6914, 2
  %6916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6915, i32 undef)  ; BufferLoad(srv,index,wot)
  %6917 = extractvalue %dx.types.ResRet.i32 %6916, 0
  %6918 = shl i32 %6905, 5
  %6919 = sub nsw i32 %6897, %6918
  %6920 = call i32 @dx.op.binary.i32(i32 37, i32 %6919, i32 0)  ; IMax(a,b)
  %6921 = call i32 @dx.op.binary.i32(i32 38, i32 %6920, i32 31)  ; IMin(a,b)
  %6922 = sub nsw i32 1, %6897
  %6923 = add nsw i32 %6922, %6898
  %6924 = call i32 @dx.op.binary.i32(i32 37, i32 %6923, i32 0)  ; IMax(a,b)
  %6925 = call i32 @dx.op.binary.i32(i32 38, i32 %6924, i32 32)  ; IMin(a,b)
  %6926 = and i32 %6925, 31
  %6927 = shl i32 -1, %6926
  %6928 = xor i32 %6927, -1
  %6929 = and i32 %6921, 31
  %6930 = shl i32 %6928, %6929
  %6931 = icmp eq i32 %6925, 32
  %6932 = select i1 %6931, i32 -1, i32 %6930
  %6933 = and i32 %6932, %6917
  %6934 = icmp eq i32 %6933, 0
  br i1 %6934, label %7464, label %6935

; <label>:6935                                    ; preds = %6904
  br label %6936

; <label>:6936                                    ; preds = %7070, %6935
  %6937 = phi i32 [ %6948, %7070 ], [ %6933, %6935 ]
  %6938 = phi float [ %7071, %7070 ], [ %6906, %6935 ]
  %6939 = phi float [ %7072, %7070 ], [ %6907, %6935 ]
  %6940 = phi float [ %7073, %7070 ], [ %6908, %6935 ]
  %6941 = phi float [ %7074, %7070 ], [ %6909, %6935 ]
  %6942 = phi float [ %7075, %7070 ], [ %6910, %6935 ]
  %6943 = phi float [ %7076, %7070 ], [ %6911, %6935 ]
  %6944 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6937)  ; FirstbitLo(value)
  %6945 = add i32 %6944, %6918
  %6946 = and i32 %6944, 31
  %6947 = shl i32 1, %6946
  %6948 = xor i32 %6947, %6937
  %6949 = mul i32 %6945, 112
  %6950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6949, i32 undef)  ; BufferLoad(srv,index,wot)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6950, 2
  %6954 = or i32 %6949, 12
  %6955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = add i32 %6949, 16
  %6958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6957, i32 undef)  ; BufferLoad(srv,index,wot)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = extractvalue %dx.types.ResRet.f32 %6958, 1
  %6961 = extractvalue %dx.types.ResRet.f32 %6958, 2
  %6962 = add i32 %6949, 28
  %6963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6962, i32 undef)  ; BufferLoad(srv,index,wot)
  %6964 = extractvalue %dx.types.ResRet.i32 %6963, 0
  %6965 = add i32 %6949, 44
  %6966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6965, i32 undef)  ; BufferLoad(srv,index,wot)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = add i32 %6949, 48
  %6969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6968, i32 undef)  ; BufferLoad(srv,index,wot)
  %6970 = extractvalue %dx.types.ResRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.ResRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.ResRet.f32 %6969, 2
  %6973 = extractvalue %dx.types.ResRet.f32 %6969, 3
  %6974 = add i32 %6949, 64
  %6975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6974, i32 undef)  ; BufferLoad(srv,index,wot)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6980 = add i32 %6949, 80
  %6981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6980, i32 undef)  ; BufferLoad(srv,index,wot)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 2
  %6984 = add i32 %6949, 92
  %6985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6984, i32 undef)  ; BufferLoad(srv,index,wot)
  %6986 = extractvalue %dx.types.ResRet.i32 %6985, 0
  %6987 = call float @dx.op.dot3.f32(i32 55, float %6951, float %6952, float %6953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6988 = select i1 %271, float %6982, float %6951
  %6989 = select i1 %271, float %6987, float %6952
  %6990 = select i1 %271, float %6983, float %6953
  %6991 = and i32 %6986, 65535
  %6992 = uitofp i32 %6991 to float
  %6993 = lshr i32 %6986, 16
  %6994 = uitofp i32 %6993 to float
  %6995 = and i32 %6964, 65535
  %6996 = and i32 %6964, 50331648
  %6997 = icmp eq i32 %6996, 33554432
  %6998 = fsub fast float %6970, %199
  %6999 = fsub fast float %6971, %200
  %7000 = fsub fast float %6972, %201
  %7001 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7000, float %6998, float %6999, float %7000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7002 = call float @dx.op.unary.f32(i32 24, float %7001)  ; Sqrt(value)
  %7003 = fdiv fast float 1.000000e+00, %7002
  %7004 = fmul fast float %7003, %6998
  %7005 = fmul fast float %7003, %6999
  %7006 = fmul fast float %7003, %7000
  %7007 = fadd fast float %7002, %6956
  %7008 = fdiv fast float 1.000000e+00, %7007
  %7009 = fmul float %6967, %7008
  %7010 = fmul float %7009, %7009
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  br i1 %6997, label %7012, label %7033

; <label>:7012                                    ; preds = %6936
  %7013 = fmul fast float %6978, %6959
  %7014 = fmul fast float %6978, %6960
  %7015 = fmul fast float %6978, %6961
  %7016 = fadd fast float %6998, %7013
  %7017 = fadd fast float %6999, %7014
  %7018 = fadd fast float %7000, %7015
  %7019 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7017, float %7018, float %7016, float %7017, float %7018)  ; Dot3(ax,ay,az,bx,by,bz)
  %7020 = call float @dx.op.unary.f32(i32 25, float %7019)  ; Rsqrt(value)
  %7021 = fmul fast float %7020, %7016
  %7022 = fmul fast float %7020, %7017
  %7023 = fmul fast float %7020, %7018
  %7024 = fsub fast float %199, %6970
  %7025 = fsub fast float %200, %6971
  %7026 = fsub fast float %201, %6972
  %7027 = fsub fast float -0.000000e+00, %7024
  %7028 = fsub fast float -0.000000e+00, %7025
  %7029 = fsub fast float -0.000000e+00, %7026
  %7030 = call float @dx.op.dot3.f32(i32 55, float %7027, float %7028, float %7029, float %6959, float %6960, float %6961)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fcmp fast ogt float %7030, 0.000000e+00
  %7032 = uitofp i1 %7031 to float
  br label %7033

; <label>:7033                                    ; preds = %7012, %6936
  %7034 = phi float [ %7032, %7012 ], [ 1.000000e+00, %6936 ]
  %7035 = phi float [ %7021, %7012 ], [ %7004, %6936 ]
  %7036 = phi float [ %7022, %7012 ], [ %7005, %6936 ]
  %7037 = phi float [ %7023, %7012 ], [ %7006, %6936 ]
  %7038 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6960, float %6961, float %7035, float %7036, float %7037)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = fmul fast float %7038, %7038
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7041 = fsub fast float 1.000000e+00, %7040
  %7042 = fmul fast float %7041, 5.000000e-01
  %7043 = fcmp fast ogt float %7038, 0.000000e+00
  %7044 = fsub fast float 1.000000e+00, %7042
  %7045 = select i1 %7043, float %7042, float %7044
  %7046 = fmul fast float %7045, %6994
  %7047 = fadd fast float %7046, %6992
  %7048 = fmul fast float %7047, 0x3EF0001000000000
  %7049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7048, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = fmul fast float %7038, %6976
  %7052 = fadd fast float %7051, %6977
  %7053 = call float @dx.op.unary.f32(i32 7, float %7052)  ; Saturate(value)
  %7054 = select i1 %6997, float 1.000000e+00, float %7053
  %7055 = select i1 %6997, float %7053, float 1.000000e+00
  %7056 = fmul fast float %7002, %6973
  %7057 = fsub fast float 1.000000e+00, %7056
  %7058 = fmul fast float %7057, %6979
  %7059 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7060 = fmul fast float %7059, %7055
  %7061 = fmul fast float %7060, 2.000000e+00
  %7062 = fsub fast float 3.000000e+00, %7061
  %7063 = fmul fast float %7050, %7034
  %7064 = fmul fast float %7060, %7060
  %7065 = fmul fast float %7064, %7063
  %7066 = fmul fast float %7065, %7062
  %7067 = call float @dx.op.binary.f32(i32 36, float %7066, float %7066)  ; FMin(a,b)
  %7068 = call float @dx.op.binary.f32(i32 36, float %7066, float %7067)  ; FMin(a,b)
  %7069 = fcmp fast ogt float %7068, 0.000000e+00
  br i1 %7069, label %7078, label %7070, !dx.controlflow.hints !125

; <label>:7070                                    ; preds = %7420, %7178, %7033
  %7071 = phi float [ %6938, %7178 ], [ %6938, %7033 ], [ %7460, %7420 ]
  %7072 = phi float [ %6939, %7178 ], [ %6939, %7033 ], [ %7461, %7420 ]
  %7073 = phi float [ %6940, %7178 ], [ %6940, %7033 ], [ %7462, %7420 ]
  %7074 = phi float [ %6941, %7178 ], [ %6941, %7033 ], [ %7454, %7420 ]
  %7075 = phi float [ %6942, %7178 ], [ %6942, %7033 ], [ %7455, %7420 ]
  %7076 = phi float [ %6943, %7178 ], [ %6943, %7033 ], [ %7456, %7420 ]
  %7077 = icmp eq i32 %6937, %6947
  br i1 %7077, label %7463, label %6936

; <label>:7078                                    ; preds = %7033
  %7079 = icmp eq i32 %6995, 255
  br i1 %7079, label %7178, label %7080, !dx.controlflow.hints !126

; <label>:7080                                    ; preds = %7078
  %7081 = mul nuw nsw i32 %6995, 176
  %7082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7081, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7087 = add nuw nsw i32 %7081, 16
  %7088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7087, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7091 = add nuw nsw i32 %7081, 32
  %7092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7091, i32 undef)  ; BufferLoad(srv,index,wot)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = add nuw nsw i32 %7081, 48
  %7097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7096, i32 undef)  ; BufferLoad(srv,index,wot)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.ResRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.ResRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.ResRet.f32 %7097, 3
  %7102 = add nuw nsw i32 %7081, 64
  %7103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7102, i32 undef)  ; BufferLoad(srv,index,wot)
  %7104 = extractvalue %dx.types.ResRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.ResRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.ResRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.ResRet.f32 %7103, 3
  %7108 = add nuw nsw i32 %7081, 80
  %7109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7108, i32 undef)  ; BufferLoad(srv,index,wot)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = extractvalue %dx.types.ResRet.f32 %7109, 3
  %7114 = add nuw nsw i32 %7081, 96
  %7115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7114, i32 undef)  ; BufferLoad(srv,index,wot)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7119 = extractvalue %dx.types.ResRet.f32 %7115, 3
  %7120 = bitcast float %7090 to i32
  %7121 = fmul fast float %7095, %125
  %7122 = fmul fast float %7095, %127
  %7123 = fmul fast float %7095, %129
  %7124 = fadd fast float %7121, %199
  %7125 = fadd fast float %7122, %200
  %7126 = fadd fast float %7123, %201
  %7127 = fmul fast float %7124, %7098
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %7125, float %7104, float %7127)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7110, float %7128)  ; FMad(a,b,c)
  %7130 = fadd fast float %7129, %7116
  %7131 = fmul fast float %7124, %7099
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %7125, float %7105, float %7131)  ; FMad(a,b,c)
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7111, float %7132)  ; FMad(a,b,c)
  %7134 = fadd fast float %7133, %7117
  %7135 = fmul fast float %7124, %7100
  %7136 = call float @dx.op.tertiary.f32(i32 46, float %7125, float %7106, float %7135)  ; FMad(a,b,c)
  %7137 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7112, float %7136)  ; FMad(a,b,c)
  %7138 = fadd fast float %7137, %7118
  %7139 = fmul fast float %7124, %7101
  %7140 = call float @dx.op.tertiary.f32(i32 46, float %7125, float %7107, float %7139)  ; FMad(a,b,c)
  %7141 = call float @dx.op.tertiary.f32(i32 46, float %7126, float %7113, float %7140)  ; FMad(a,b,c)
  %7142 = fadd fast float %7141, %7119
  %7143 = fdiv fast float %7130, %7142
  %7144 = fdiv fast float %7134, %7142
  %7145 = fdiv fast float %7138, %7142
  %7146 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7145)  ; FMax(a,b)
  %7147 = fmul fast float %282, 0x401921FB60000000
  %7148 = call float @dx.op.unary.f32(i32 13, float %7147)  ; Sin(value)
  %7149 = call float @dx.op.unary.f32(i32 12, float %7147)  ; Cos(value)
  %7150 = fsub fast float -0.000000e+00, %7148
  %7151 = fmul fast float %7085, 5.000000e-01
  %7152 = call float @dx.op.dot2.f32(i32 54, float %282, float %282, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7153 = call float @dx.op.unary.f32(i32 22, float %7152)  ; Frc(value)
  %7154 = fmul fast float %7153, 0x404A7DD040000000
  %7155 = call float @dx.op.unary.f32(i32 22, float %7154)  ; Frc(value)
  %7156 = fmul fast float %7155, %7094
  %7157 = fadd fast float %7156, %7151
  %7158 = call float @dx.op.tertiary.f32(i32 46, float %7157, float %7150, float 0.000000e+00)  ; FMad(a,b,c)
  %7159 = call float @dx.op.tertiary.f32(i32 46, float %7157, float %7149, float 0.000000e+00)  ; FMad(a,b,c)
  %7160 = fadd fast float %7158, %7143
  %7161 = fadd fast float %7159, %7144
  %7162 = fmul fast float %7160, %7089
  %7163 = fmul fast float %7161, %7089
  %7164 = call float @dx.op.binary.f32(i32 35, float %7162, float %7085)  ; FMax(a,b)
  %7165 = call float @dx.op.binary.f32(i32 35, float %7163, float %7085)  ; FMax(a,b)
  %7166 = call float @dx.op.binary.f32(i32 36, float %7164, float %7086)  ; FMin(a,b)
  %7167 = call float @dx.op.binary.f32(i32 36, float %7165, float %7086)  ; FMin(a,b)
  %7168 = fadd fast float %7166, %7083
  %7169 = fadd fast float %7167, %7084
  %7170 = uitofp i32 %7120 to float
  %7171 = fadd fast float %7146, %7093
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7168, float %7169, float %7170, float undef, i32 0, i32 0, i32 undef, float %7171)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fadd fast float %7173, -1.000000e+00
  %7175 = fmul fast float %7174, %7054
  %7176 = fadd fast float %7175, 1.000000e+00
  %7177 = fmul fast float %7176, %7066
  br label %7178

; <label>:7178                                    ; preds = %7080, %7078
  %7179 = phi float [ %7177, %7080 ], [ %7066, %7078 ]
  %7180 = call float @dx.op.binary.f32(i32 36, float %7179, float %7179)  ; FMin(a,b)
  %7181 = call float @dx.op.binary.f32(i32 36, float %7179, float %7180)  ; FMin(a,b)
  %7182 = fcmp fast ogt float %7181, 0.000000e+00
  br i1 %7182, label %7183, label %7070, !dx.controlflow.hints !127

; <label>:7183                                    ; preds = %7178
  %7184 = fmul fast float %7179, %6988
  %7185 = fmul fast float %7179, %6989
  %7186 = fmul fast float %7179, %6990
  %7187 = fsub fast float %6972, %4493
  %7188 = fcmp fast ogt float %7187, 0.000000e+00
  %7189 = fsub fast float %201, %4493
  %7190 = fcmp fast ogt float %7189, 0.000000e+00
  %7191 = xor i1 %7190, %7188
  %7192 = fsub fast float %4493, %6972
  %7193 = fmul fast float %7192, 2.000000e+00
  %7194 = fadd fast float %7193, %6972
  %7195 = select i1 %7191, float %6972, float %7194
  %7196 = fsub fast float %7195, %201
  %7197 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7196, float %6998, float %6999, float %7196)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = call float @dx.op.unary.f32(i32 25, float %7197)  ; Rsqrt(value)
  %7199 = fmul fast float %7198, %6998
  %7200 = fmul fast float %7198, %6999
  %7201 = fmul fast float %7198, %7196
  %7202 = fsub fast float %4493, %201
  %7203 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7202)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7199, float %7200, float %7201)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = fdiv fast float 1.000000e+00, %7204
  %7206 = fmul fast float %7205, %7203
  %7207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7189, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  %7209 = fcmp fast olt float %7207, 0.000000e+00
  %7210 = zext i1 %7208 to i32
  %7211 = zext i1 %7209 to i32
  %7212 = sub nsw i32 %7210, %7211
  %7213 = sitofp i32 %7212 to float
  %7214 = fsub fast float %7195, %4493
  %7215 = call float @dx.op.dot3.f32(i32 55, float %6998, float %6999, float %7214, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = fcmp fast ogt float %7215, 0.000000e+00
  %7217 = fcmp fast olt float %7215, 0.000000e+00
  %7218 = zext i1 %7216 to i32
  %7219 = zext i1 %7217 to i32
  %7220 = sub nsw i32 %7218, %7219
  %7221 = sitofp i32 %7220 to float
  %7222 = fcmp fast une float %7213, %7221
  br i1 %7222, label %7223, label %7233

; <label>:7223                                    ; preds = %7183
  %7224 = fmul fast float %7206, %7201
  %7225 = fmul fast float %7206, %7200
  %7226 = fmul fast float %7206, %7199
  %7227 = fmul fast float %7226, %7226
  %7228 = fmul fast float %7225, %7225
  %7229 = fadd fast float %7227, %7228
  %7230 = fmul fast float %7224, %7224
  %7231 = fadd fast float %7229, %7230
  %7232 = call float @dx.op.unary.f32(i32 24, float %7231)  ; Sqrt(value)
  br label %7245

; <label>:7233                                    ; preds = %7183
  %7234 = icmp slt i32 %7212, 0
  br i1 %7234, label %7235, label %7245

; <label>:7235                                    ; preds = %7233
  %7236 = fsub fast float %199, %6970
  %7237 = fsub fast float %200, %6971
  %7238 = fsub fast float %201, %7195
  %7239 = fmul fast float %7236, %7236
  %7240 = fmul fast float %7237, %7237
  %7241 = fadd fast float %7239, %7240
  %7242 = fmul fast float %7238, %7238
  %7243 = fadd fast float %7241, %7242
  %7244 = call float @dx.op.unary.f32(i32 24, float %7243)  ; Sqrt(value)
  br label %7245

; <label>:7245                                    ; preds = %7235, %7233, %7223
  %7246 = phi float [ %7232, %7223 ], [ %7244, %7235 ], [ 0.000000e+00, %7233 ]
  %7247 = and i1 %7190, %7188
  %7248 = fsub fast float -0.000000e+00, %7246
  %7249 = select i1 %7247, float -0.000000e+00, float %7248
  %7250 = fmul fast float %4494, 0x3FF7154760000000
  %7251 = fmul fast float %7250, %7249
  %7252 = fmul fast float %4495, 0x3FF7154760000000
  %7253 = fmul fast float %7252, %7249
  %7254 = fmul fast float %4496, 0x3FF7154760000000
  %7255 = fmul fast float %7254, %7249
  %7256 = call float @dx.op.unary.f32(i32 21, float %7251)  ; Exp(value)
  %7257 = call float @dx.op.unary.f32(i32 21, float %7253)  ; Exp(value)
  %7258 = call float @dx.op.unary.f32(i32 21, float %7255)  ; Exp(value)
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7260 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7261 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  %7262 = fmul fast float %7184, %7259
  %7263 = fmul fast float %7185, %7260
  %7264 = fmul fast float %7186, %7261
  %7265 = fsub fast float %7004, %5285
  %7266 = fsub fast float %7005, %5284
  %7267 = fsub fast float %7006, %5283
  %7268 = call float @dx.op.dot3.f32(i32 55, float %7265, float %7266, float %7267, float %7265, float %7266, float %7267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = call float @dx.op.unary.f32(i32 25, float %7268)  ; Rsqrt(value)
  %7270 = fmul fast float %7269, %7265
  %7271 = fmul fast float %7269, %7266
  %7272 = fmul fast float %7269, %7267
  %7273 = call float @dx.op.dot3.f32(i32 55, float %7004, float %7005, float %7006, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5281, float %5280, float %7270, float %7271, float %7272)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = call float @dx.op.unary.f32(i32 7, float %7273)  ; Saturate(value)
  %7276 = fmul fast float %7275, %7011
  %7277 = fmul fast float %7275, %7275
  %7278 = fmul fast float %7277, %5313
  %7279 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7280 = fmul fast float %7276, %7279
  %7281 = bitcast float %7001 to i32
  %7282 = ashr i32 %7281, 1
  %7283 = sub nsw i32 1597463007, %7282
  %7284 = bitcast i32 %7283 to float
  %7285 = fmul fast float %7284, %6998
  %7286 = fmul fast float %7284, %6999
  %7287 = fmul fast float %7284, %7000
  %7288 = fsub fast float %7285, %5285
  %7289 = fsub fast float %7286, %5284
  %7290 = fsub fast float %7287, %5283
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float %7288, float %7289, float %7290)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.unary.f32(i32 25, float %7291)  ; Rsqrt(value)
  %7293 = fmul fast float %7288, %7292
  %7294 = fmul fast float %7289, %7292
  %7295 = fmul fast float %7290, %7292
  %7296 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %7293, float %7294, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7297 = fmul fast float %7296, %7296
  %7298 = call float @dx.op.unary.f32(i32 6, float %7273)  ; FAbs(value)
  %7299 = fsub fast float 1.000000e+00, %5295
  %7300 = call float @dx.op.binary.f32(i32 35, float %7299, float 0x3F847AE140000000)  ; FMax(a,b)
  %7301 = fmul fast float %7300, %7300
  %7302 = fmul fast float %7301, %7301
  %7303 = fsub fast float 1.000000e+00, %7302
  %7304 = fmul fast float %5300, %5300
  %7305 = fmul fast float %7304, %7303
  %7306 = fadd fast float %7305, %7302
  %7307 = bitcast float %7306 to i32
  %7308 = ashr i32 %7307, 1
  %7309 = add nsw i32 %7308, 532487669
  %7310 = bitcast i32 %7309 to float
  %7311 = fadd fast float %7310, %5300
  %7312 = fmul fast float %7302, %7297
  %7313 = fsub fast float 1.000000e+00, %7297
  %7314 = fadd fast float %7313, %7312
  %7315 = fmul fast float %7298, %7298
  %7316 = fmul fast float %7315, %7303
  %7317 = fadd fast float %7316, %7302
  %7318 = bitcast float %7317 to i32
  %7319 = ashr i32 %7318, 1
  %7320 = add nsw i32 %7319, 532487669
  %7321 = bitcast i32 %7320 to float
  %7322 = fadd fast float %7321, %7298
  %7323 = fmul fast float %7314, %7314
  %7324 = fmul fast float %7323, %7311
  %7325 = fmul fast float %7324, %7322
  %7326 = fdiv fast float 1.000000e+00, %7325
  %7327 = bitcast float %7302 to i32
  %7328 = sitofp i32 %7327 to float
  %7329 = fmul fast float %7328, 0x3FE7F73180000000
  %7330 = fadd fast float %7329, 0x41AFE27C40000000
  %7331 = fptosi float %7330 to i32
  %7332 = bitcast i32 %7331 to float
  %7333 = fmul fast float %6967, 0x3FD80E9D60000000
  %7334 = fmul fast float %7333, %7284
  %7335 = fadd fast float %7332, %7334
  %7336 = bitcast float %7335 to i32
  %7337 = sub nsw i32 2129859010, %7336
  %7338 = bitcast i32 %7337 to float
  %7339 = fmul fast float %7302, %7326
  %7340 = fmul fast float %7339, %7332
  %7341 = fmul fast float %7340, %7338
  %7342 = call float @dx.op.unary.f32(i32 6, float %7274)  ; FAbs(value)
  %7343 = fsub fast float 1.000000e+00, %7342
  %7344 = bitcast float %7343 to i32
  %7345 = sitofp i32 %7344 to float
  %7346 = fmul fast float %7345, 5.000000e+00
  %7347 = fadd fast float %7346, 0xC1EFBF8940000000
  %7348 = fptosi float %7347 to i32
  %7349 = bitcast i32 %7348 to float
  %7350 = fsub fast float 1.000000e+00, %5289
  %7351 = fsub fast float 1.000000e+00, %5290
  %7352 = fsub fast float 1.000000e+00, %5298
  %7353 = fmul fast float %7349, %7350
  %7354 = fmul fast float %7349, %7351
  %7355 = fmul fast float %7349, %7352
  %7356 = fadd fast float %7353, %5289
  %7357 = fadd fast float %7354, %5290
  %7358 = fadd fast float %7355, %5298
  br i1 %5615, label %7359, label %7382

; <label>:7359                                    ; preds = %7245
  %7360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %7342, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7361 = extractvalue %dx.types.ResRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.ResRet.f32 %7360, 1
  %7363 = extractvalue %dx.types.ResRet.f32 %7360, 2
  %7364 = fadd fast float %7361, -5.000000e-01
  %7365 = fadd fast float %7362, -5.000000e-01
  %7366 = fadd fast float %7363, -5.000000e-01
  %7367 = fmul fast float %5289, 4.000000e+00
  %7368 = fmul fast float %7367, %7350
  %7369 = fmul fast float %7368, %7364
  %7370 = fmul fast float %5290, 4.000000e+00
  %7371 = fmul fast float %7370, %7351
  %7372 = fmul fast float %7371, %7365
  %7373 = fmul fast float %5298, 4.000000e+00
  %7374 = fmul fast float %7373, %7352
  %7375 = fmul fast float %7374, %7366
  %7376 = fadd fast float %7369, %7356
  %7377 = fadd fast float %7372, %7357
  %7378 = fadd fast float %7375, %7358
  %7379 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7380 = call float @dx.op.unary.f32(i32 7, float %7377)  ; Saturate(value)
  %7381 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  br label %7382

; <label>:7382                                    ; preds = %7359, %7245
  %7383 = phi float [ %7379, %7359 ], [ %7356, %7245 ]
  %7384 = phi float [ %7380, %7359 ], [ %7357, %7245 ]
  %7385 = phi float [ %7381, %7359 ], [ %7358, %7245 ]
  %7386 = fmul fast float %7273, 9.843750e-01
  %7387 = fadd fast float %7386, 7.812500e-03
  %7388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7387, float %5605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 3
  %7391 = fmul fast float %7389, %5289
  %7392 = fmul fast float %7389, %5290
  %7393 = fmul fast float %7389, %5298
  %7394 = fadd fast float %7391, %7390
  %7395 = fadd fast float %7392, %7390
  %7396 = fadd fast float %7393, %7390
  br i1 %5615, label %7397, label %7420

; <label>:7397                                    ; preds = %7382
  %7398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4091, float %7273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.ResRet.f32 %7398, 2
  %7402 = fadd fast float %7399, -5.000000e-01
  %7403 = fadd fast float %7400, -5.000000e-01
  %7404 = fadd fast float %7401, -5.000000e-01
  %7405 = fmul fast float %5289, 4.000000e+00
  %7406 = fmul fast float %7405, %7350
  %7407 = fmul fast float %7406, %7402
  %7408 = fmul fast float %5290, 4.000000e+00
  %7409 = fmul fast float %7408, %7351
  %7410 = fmul fast float %7409, %7403
  %7411 = fmul fast float %5298, 4.000000e+00
  %7412 = fmul fast float %7411, %7352
  %7413 = fmul fast float %7412, %7404
  %7414 = fadd fast float %7407, %7394
  %7415 = fadd fast float %7410, %7395
  %7416 = fadd fast float %7413, %7396
  %7417 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7419 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  br label %7420

; <label>:7420                                    ; preds = %7397, %7382
  %7421 = phi float [ %7417, %7397 ], [ %7394, %7382 ]
  %7422 = phi float [ %7418, %7397 ], [ %7395, %7382 ]
  %7423 = phi float [ %7419, %7397 ], [ %7396, %7382 ]
  %7424 = call float @dx.op.binary.f32(i32 35, float %7422, float %7423)  ; FMax(a,b)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7421, float %7424)  ; FMax(a,b)
  %7426 = fsub fast float 1.000000e+00, %7425
  %7427 = fmul fast float %7383, %7341
  %7428 = fmul fast float %7384, %7341
  %7429 = fmul fast float %7385, %7341
  %7430 = fsub fast float 1.000000e+00, %7274
  %7431 = bitcast float %7430 to i32
  %7432 = sitofp i32 %7431 to float
  %7433 = fmul fast float %7432, 5.000000e+00
  %7434 = fadd fast float %7433, 0xC1EFBF8940000000
  %7435 = fptosi float %7434 to i32
  %7436 = bitcast i32 %7435 to float
  %7437 = fmul fast float %7436, %4092
  %7438 = fmul fast float %7426, %7437
  %7439 = fmul fast float %7438, %5715
  %7440 = fmul fast float %7438, %5716
  %7441 = fmul fast float %7438, %5717
  %7442 = fadd fast float %7439, %7427
  %7443 = fadd fast float %7440, %7428
  %7444 = fadd fast float %7441, %7429
  %7445 = fmul fast float %7262, %4088
  %7446 = fmul fast float %7445, %7280
  %7447 = fmul fast float %7446, %7426
  %7448 = fmul fast float %7263, %4088
  %7449 = fmul fast float %7448, %7280
  %7450 = fmul fast float %7449, %7426
  %7451 = fmul fast float %7264, %4088
  %7452 = fmul fast float %7451, %7280
  %7453 = fmul fast float %7452, %7426
  %7454 = fadd fast float %7447, %6941
  %7455 = fadd fast float %7450, %6942
  %7456 = fadd fast float %7453, %6943
  %7457 = fmul fast float %7446, %7442
  %7458 = fmul fast float %7449, %7443
  %7459 = fmul fast float %7452, %7444
  %7460 = fadd fast float %7457, %6938
  %7461 = fadd fast float %7458, %6939
  %7462 = fadd fast float %7459, %6940
  br label %7070

; <label>:7463                                    ; preds = %7070
  br label %7464

; <label>:7464                                    ; preds = %7463, %6904
  %7465 = phi float [ %6906, %6904 ], [ %7071, %7463 ]
  %7466 = phi float [ %6907, %6904 ], [ %7072, %7463 ]
  %7467 = phi float [ %6908, %6904 ], [ %7073, %7463 ]
  %7468 = phi float [ %6909, %6904 ], [ %7074, %7463 ]
  %7469 = phi float [ %6910, %6904 ], [ %7075, %7463 ]
  %7470 = phi float [ %6911, %6904 ], [ %7076, %7463 ]
  %7471 = add i32 %6905, 1
  %7472 = icmp ugt i32 %7471, %6901
  br i1 %7472, label %7473, label %6904

; <label>:7473                                    ; preds = %7464
  br label %7474

; <label>:7474                                    ; preds = %7473, %6854, %6844
  %7475 = phi float [ %6845, %6844 ], [ %6845, %6854 ], [ %7465, %7473 ]
  %7476 = phi float [ %6846, %6844 ], [ %6846, %6854 ], [ %7466, %7473 ]
  %7477 = phi float [ %6847, %6844 ], [ %6847, %6854 ], [ %7467, %7473 ]
  %7478 = phi float [ %6848, %6844 ], [ %6848, %6854 ], [ %7468, %7473 ]
  %7479 = phi float [ %6849, %6844 ], [ %6849, %6854 ], [ %7469, %7473 ]
  %7480 = phi float [ %6850, %6844 ], [ %6850, %6854 ], [ %7470, %7473 ]
  %7481 = fmul fast float %4088, %4088
  %7482 = fsub fast float 1.000000e+00, %7481
  %7483 = call float @dx.op.dot3.f32(i32 55, float %7482, float %7482, float %7482, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7484 = fsub fast float 1.000000e+00, %7483
  %7485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7486 = extractvalue %dx.types.CBufRet.f32 %7485, 0
  %7487 = fmul fast float %7486, %5731
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 3
  %7490 = fsub fast float 1.000000e+00, %4096
  %7491 = call float @dx.op.unary.f32(i32 7, float %7490)  ; Saturate(value)
  %7492 = fadd fast float %7480, %4094
  %7493 = fmul fast float %7492, %4096
  %7494 = fmul fast float %7491, %7489
  %7495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7495, 3
  %7497 = fmul fast float %7478, %5286
  %7498 = fmul fast float %7479, %5287
  %7499 = fmul fast float %7480, %5288
  %7500 = fcmp fast ogt float %107, %234
  %7501 = and i1 %7500, %4499
  %7502 = or i1 %4505, %7501
  %7503 = icmp eq i32 %4498, 2
  %7504 = fcmp fast ole float %107, %234
  %7505 = and i1 %7504, %7503
  %7506 = or i1 %7505, %7502
  br i1 %7501, label %7507, label %7764

; <label>:7507                                    ; preds = %7474
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7511 = fmul fast float %7509, %116
  %7512 = fmul fast float %7510, %117
  %7513 = call float @dx.op.unary.f32(i32 7, float %7511)  ; Saturate(value)
  %7514 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7515 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7513, float %7514, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = extractvalue %dx.types.ResRet.f32 %7515, 1
  %7518 = extractvalue %dx.types.ResRet.f32 %7515, 2
  %7519 = extractvalue %dx.types.ResRet.f32 %7515, 3
  %7520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7513, float %7514, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7521 = extractvalue %dx.types.ResRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.ResRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.ResRet.f32 %7520, 2
  %7524 = extractvalue %dx.types.ResRet.f32 %7520, 3
  %7525 = call float @dx.op.binary.f32(i32 35, float %7517, float %7518)  ; FMax(a,b)
  %7526 = call float @dx.op.binary.f32(i32 35, float %7516, float %7525)  ; FMax(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %7526, float %7519)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 36, float %7522, float %7523)  ; FMin(a,b)
  %7529 = call float @dx.op.binary.f32(i32 36, float %7521, float %7528)  ; FMin(a,b)
  %7530 = call float @dx.op.binary.f32(i32 36, float %7529, float %7524)  ; FMin(a,b)
  %7531 = fmul fast float %7527, 2.550000e+02
  %7532 = fadd fast float %7531, 0x3F70101020000000
  %7533 = fptoui float %7532 to i32
  %7534 = fmul fast float %7530, 2.550000e+02
  %7535 = fadd fast float %7534, 0x3F70101020000000
  %7536 = fptoui float %7535 to i32
  %7537 = icmp ult i32 %7533, %7536
  br i1 %7537, label %7538, label %7706

; <label>:7538                                    ; preds = %7507
  %7539 = fcmp fast ogt float %106, 9.843750e-01
  %7540 = fadd fast float %107, -4.000000e+00
  %7541 = select i1 %7539, float -4.000000e+00, float %7540
  %7542 = call float @dx.op.binary.f32(i32 35, float %7541, float 0.000000e+00)  ; FMax(a,b)
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 0
  %7545 = fadd fast float %7544, %7542
  %7546 = extractvalue %dx.types.CBufRet.f32 %7543, 2
  %7547 = fmul fast float %7545, %7546
  %7548 = call float @dx.op.unary.f32(i32 23, float %7547)  ; Log(value)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7543, 3
  %7550 = fmul fast float %7549, %7548
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7553 = fmul fast float %7550, %7552
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = uitofp i32 %7533 to float
  %7556 = uitofp i32 %7536 to float
  %7557 = fadd fast float %7555, 5.000000e-01
  %7558 = fadd fast float %7556, 5.000000e-01
  %7559 = fmul fast float %7552, %7557
  %7560 = fmul fast float %7552, %7558
  %7561 = fadd fast float %7559, 0x3F0FFB4800000000
  %7562 = fadd fast float %7560, 0xBF0FFB4800000000
  %7563 = call float @dx.op.binary.f32(i32 35, float %7554, float %7561)  ; FMax(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7563, float %7562)  ; FMin(a,b)
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7568 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7569 = fmul fast float %7566, %7564
  %7570 = fadd fast float %7568, %7569
  %7571 = fadd fast float %7568, %7567
  %7572 = fsub fast float %7566, %7567
  %7573 = fadd fast float %7572, %7568
  %7574 = call float @dx.op.binary.f32(i32 35, float %7570, float %7571)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 36, float %7574, float %7573)  ; FMin(a,b)
  %7576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7513, float %7514, float %7575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7577 = extractvalue %dx.types.ResRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.ResRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.ResRet.f32 %7576, 2
  %7580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.i32 %7580, 0
  %7582 = extractvalue %dx.types.CBufRet.i32 %7580, 1
  %7583 = uitofp i32 %7581 to float
  %7584 = uitofp i32 %7582 to float
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7588 = fmul fast float %7583, %7513
  %7589 = fmul fast float %7584, %7514
  %7590 = fadd fast float %7588, -5.000000e-01
  %7591 = fadd fast float %7589, -5.000000e-01
  %7592 = call float @dx.op.unary.f32(i32 22, float %7590)  ; Frc(value)
  %7593 = call float @dx.op.unary.f32(i32 22, float %7591)  ; Frc(value)
  %7594 = fmul fast float %7592, %7592
  %7595 = fmul fast float %7594, %7592
  %7596 = fsub fast float 3.000000e+00, %7592
  %7597 = fmul fast float %7594, %7596
  %7598 = fmul fast float %7592, 3.000000e+00
  %7599 = fmul fast float %7595, 3.000000e+00
  %7600 = fmul fast float %7594, 6.000000e+00
  %7601 = fsub fast float %7599, %7600
  %7602 = fadd fast float %7601, 4.000000e+00
  %7603 = fmul fast float %7602, 0x3FC5555560000000
  %7604 = fmul fast float %7595, -3.000000e+00
  %7605 = fadd fast float %7594, %7592
  %7606 = fmul fast float %7605, 3.000000e+00
  %7607 = fadd fast float %7604, 1.000000e+00
  %7608 = fadd fast float %7607, %7606
  %7609 = fmul fast float %7595, 0x3FC5555560000000
  %7610 = fmul fast float %7593, %7593
  %7611 = fmul fast float %7610, %7593
  %7612 = fsub fast float 3.000000e+00, %7593
  %7613 = fmul fast float %7610, %7612
  %7614 = fmul fast float %7593, 3.000000e+00
  %7615 = fmul fast float %7611, 3.000000e+00
  %7616 = fmul fast float %7610, 6.000000e+00
  %7617 = fsub fast float %7615, %7616
  %7618 = fadd fast float %7617, 4.000000e+00
  %7619 = fmul fast float %7618, 0x3FC5555560000000
  %7620 = fmul fast float %7611, -3.000000e+00
  %7621 = fadd fast float %7610, %7593
  %7622 = fmul fast float %7621, 3.000000e+00
  %7623 = fadd fast float %7620, 1.000000e+00
  %7624 = fadd fast float %7623, %7622
  %7625 = fmul fast float %7611, 0x3FC5555560000000
  %7626 = fadd fast float %7592, 1.000000e+00
  %7627 = fsub fast float 1.000000e+00, %7598
  %7628 = fadd fast float %7627, %7597
  %7629 = fadd fast float %7628, %7602
  %7630 = fmul fast float %7629, 0x3FC5555560000000
  %7631 = fdiv fast float %7603, %7630
  %7632 = fsub fast float %7626, %7631
  %7633 = fsub fast float 1.000000e+00, %7592
  %7634 = fadd fast float %7608, %7595
  %7635 = fmul fast float %7634, 0x3FC5555560000000
  %7636 = fdiv fast float %7609, %7635
  %7637 = fadd fast float %7633, %7636
  %7638 = fadd fast float %7593, 1.000000e+00
  %7639 = fsub fast float 1.000000e+00, %7614
  %7640 = fadd fast float %7639, %7613
  %7641 = fadd fast float %7640, %7618
  %7642 = fmul fast float %7641, 0x3FC5555560000000
  %7643 = fdiv fast float %7619, %7642
  %7644 = fsub fast float %7638, %7643
  %7645 = fsub fast float 1.000000e+00, %7593
  %7646 = fadd fast float %7624, %7611
  %7647 = fmul fast float %7646, 0x3FC5555560000000
  %7648 = fdiv fast float %7625, %7647
  %7649 = fadd fast float %7648, %7645
  %7650 = fmul fast float %7632, %7586
  %7651 = fsub fast float %7513, %7650
  %7652 = fmul fast float %7637, %7586
  %7653 = fadd fast float %7652, %7513
  %7654 = fmul fast float %7649, %7587
  %7655 = fadd fast float %7654, %7514
  %7656 = fmul fast float %7644, %7587
  %7657 = fsub fast float %7514, %7656
  %7658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7651, float %7657, float %7575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7653, float %7657, float %7575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.ResRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.ResRet.f32 %7662, 2
  %7666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7651, float %7655, float %7575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7667 = extractvalue %dx.types.ResRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.ResRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.ResRet.f32 %7666, 2
  %7670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7653, float %7655, float %7575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.ResRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.ResRet.f32 %7670, 2
  %7674 = fsub fast float %7667, %7659
  %7675 = fsub fast float %7668, %7660
  %7676 = fsub fast float %7669, %7661
  %7677 = fmul fast float %7674, %7647
  %7678 = fmul fast float %7675, %7647
  %7679 = fmul fast float %7676, %7647
  %7680 = fadd fast float %7677, %7659
  %7681 = fadd fast float %7678, %7660
  %7682 = fadd fast float %7679, %7661
  %7683 = fsub fast float %7671, %7663
  %7684 = fsub fast float %7672, %7664
  %7685 = fsub fast float %7673, %7665
  %7686 = fmul fast float %7683, %7647
  %7687 = fmul fast float %7684, %7647
  %7688 = fmul fast float %7685, %7647
  %7689 = fsub fast float %7663, %7680
  %7690 = fadd fast float %7689, %7686
  %7691 = fsub fast float %7664, %7681
  %7692 = fadd fast float %7691, %7687
  %7693 = fsub fast float %7665, %7682
  %7694 = fadd fast float %7693, %7688
  %7695 = fmul fast float %7690, %7635
  %7696 = fmul fast float %7692, %7635
  %7697 = fmul fast float %7694, %7635
  %7698 = fadd fast float %7695, %7680
  %7699 = fadd fast float %7696, %7681
  %7700 = fadd fast float %7697, %7682
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7703 = fmul fast float %7698, %7702
  %7704 = fmul fast float %7699, %7702
  %7705 = fmul fast float %7700, %7702
  br label %7706

; <label>:7706                                    ; preds = %7538, %7507
  %7707 = phi float [ %7577, %7538 ], [ 1.000000e+00, %7507 ]
  %7708 = phi float [ %7578, %7538 ], [ 1.000000e+00, %7507 ]
  %7709 = phi float [ %7579, %7538 ], [ 1.000000e+00, %7507 ]
  %7710 = phi float [ %7703, %7538 ], [ 0.000000e+00, %7507 ]
  %7711 = phi float [ %7704, %7538 ], [ 0.000000e+00, %7507 ]
  %7712 = phi float [ %7705, %7538 ], [ 0.000000e+00, %7507 ]
  %7713 = fmul fast float %7710, %7484
  %7714 = fmul fast float %7711, %7484
  %7715 = fmul fast float %7712, %7484
  %7716 = call float @dx.op.dot3.f32(i32 55, float %7707, float %7708, float %7709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.dot3.f32(i32 55, float %7713, float %7714, float %7715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = select i1 %271, float %7716, float %7707
  %7719 = select i1 %271, float %7716, float %7708
  %7720 = select i1 %271, float 1.000000e+00, float %7709
  %7721 = select i1 %271, float %7717, float %7713
  %7722 = select i1 %271, float 0.000000e+00, float %7714
  %7723 = select i1 %271, float 0.000000e+00, float %7715
  %7724 = fmul fast float %7718, %7497
  %7725 = fmul fast float %7719, %7498
  %7726 = fmul fast float %7720, %7499
  %7727 = fadd fast float %7724, %7721
  %7728 = fadd fast float %7725, %7722
  %7729 = fadd fast float %7723, %7726
  %7730 = fmul fast float %7718, %7475
  %7731 = fmul fast float %7719, %7476
  %7732 = fmul fast float %7720, %7477
  %7733 = fmul fast float %148, %7509
  %7734 = fmul fast float %150, %7510
  %7735 = fsub fast float 1.000000e+00, %7733
  %7736 = fsub fast float 1.000000e+00, %7734
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7741 = fmul fast float %7735, %7738
  %7742 = fmul fast float %7735, %7739
  %7743 = fmul fast float %7735, %7740
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.CBufRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.CBufRet.f32 %7744, 2
  %7748 = fmul fast float %7736, %7745
  %7749 = fmul fast float %7736, %7746
  %7750 = fmul fast float %7736, %7747
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7755 = fadd fast float %7748, %7752
  %7756 = fadd fast float %7755, %7741
  %7757 = fadd fast float %7749, %7753
  %7758 = fadd fast float %7757, %7742
  %7759 = fadd fast float %7750, %7754
  %7760 = fadd fast float %7759, %7743
  %7761 = fmul fast float %7756, %234
  %7762 = fmul fast float %7758, %234
  %7763 = fmul fast float %7760, %234
  br label %7764

; <label>:7764                                    ; preds = %7706, %7474
  %7765 = phi float [ %7761, %7706 ], [ %199, %7474 ]
  %7766 = phi float [ %7762, %7706 ], [ %200, %7474 ]
  %7767 = phi float [ %7763, %7706 ], [ %201, %7474 ]
  %7768 = phi float [ %234, %7706 ], [ %107, %7474 ]
  %7769 = phi float [ %7727, %7706 ], [ %7497, %7474 ]
  %7770 = phi float [ %7728, %7706 ], [ %7498, %7474 ]
  %7771 = phi float [ %7729, %7706 ], [ %7499, %7474 ]
  %7772 = phi float [ %7730, %7706 ], [ %7475, %7474 ]
  %7773 = phi float [ %7731, %7706 ], [ %7476, %7474 ]
  %7774 = phi float [ %7732, %7706 ], [ %7477, %7474 ]
  %7775 = phi float [ %7707, %7706 ], [ 1.000000e+00, %7474 ]
  br i1 %7506, label %8930, label %7776

; <label>:7776                                    ; preds = %7764
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7781 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.CBufRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.CBufRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.CBufRet.f32 %7782, 3
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.CBufRet.f32 %7787, 2
  %7791 = extractvalue %dx.types.CBufRet.f32 %7787, 3
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7800 = extractvalue %dx.types.CBufRet.f32 %7799, 3
  %7801 = extractvalue %dx.types.CBufRet.f32 %7799, 0
  %7802 = extractvalue %dx.types.CBufRet.f32 %7799, 1
  %7803 = extractvalue %dx.types.CBufRet.f32 %7799, 2
  %7804 = fcmp fast olt float %7803, -5.000000e-01
  %7805 = call float @dx.op.dot3.f32(i32 55, float %7765, float %7766, float %7767, float %7765, float %7766, float %7767)  ; Dot3(ax,ay,az,bx,by,bz)
  %7806 = call float @dx.op.unary.f32(i32 25, float %7805)  ; Rsqrt(value)
  %7807 = fmul fast float %7806, %7805
  %7808 = fmul fast float %7806, %7765
  %7809 = fmul fast float %7806, %7766
  %7810 = fmul fast float %7806, %7767
  %7811 = fadd fast float %7807, %7781
  %7812 = call float @dx.op.dot3.f32(i32 55, float %7808, float %7809, float %7810, float %7778, float %7779, float %7780)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.i32 %7813, 1
  %7815 = and i32 %7814, 1
  %7816 = icmp ne i32 %7815, 0
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7819 = fcmp fast ogt float %7818, 0.000000e+00
  %7820 = and i1 %7816, %7819
  br i1 %7820, label %7821, label %8227, !dx.controlflow.hints !128

; <label>:7821                                    ; preds = %7776
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 2
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7828 = fsub fast float %7825, %7827
  %7829 = and i32 %7814, 2
  %7830 = extractvalue %dx.types.CBufRet.i32 %7813, 0
  %7831 = call i32 @dx.op.binary.i32(i32 40, i32 %7830, i32 3)  ; UMin(a,b)
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7836 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7837 = fsub fast float %7833, %7835
  %7838 = fsub fast float %7834, %7836
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = fcmp fast ogt float %7840, 0.000000e+00
  %7842 = fsub fast float -0.000000e+00, %7837
  %7843 = fsub fast float -0.000000e+00, %7838
  %7844 = call float @dx.op.dot2.f32(i32 54, float %7808, float %7809, float %7808, float %7809)  ; Dot2(ax,ay,bx,by)
  %7845 = call float @dx.op.dot2.f32(i32 54, float %7808, float %7809, float %7842, float %7843)  ; Dot2(ax,ay,bx,by)
  %7846 = fmul fast float %7845, 2.000000e+00
  %7847 = call float @dx.op.dot2.f32(i32 54, float %7842, float %7843, float %7842, float %7843)  ; Dot2(ax,ay,bx,by)
  %7848 = fmul fast float %7840, %7840
  %7849 = fsub fast float %7847, %7848
  %7850 = fmul fast float %7846, %7846
  %7851 = fmul fast float %7844, 4.000000e+00
  %7852 = fmul fast float %7851, %7849
  %7853 = fsub fast float %7850, %7852
  %7854 = fcmp fast ogt float %7853, 0.000000e+00
  br i1 %7854, label %7855, label %7870

; <label>:7855                                    ; preds = %7821
  %7856 = fcmp fast ogt float %7846, 0.000000e+00
  %7857 = call float @dx.op.unary.f32(i32 24, float %7853)  ; Sqrt(value)
  %7858 = fsub fast float -0.000000e+00, %7857
  %7859 = select i1 %7856, float %7857, float %7858
  %7860 = fadd fast float %7859, %7846
  %7861 = fmul float %7860, -5.000000e-01
  %7862 = fdiv fast float %7861, %7844
  %7863 = call float @dx.op.binary.f32(i32 35, float %7862, float 0.000000e+00)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7807, float %7863)  ; FMin(a,b)
  %7865 = fdiv fast float %7849, %7861
  %7866 = call float @dx.op.binary.f32(i32 35, float %7865, float 0.000000e+00)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 36, float %7807, float %7866)  ; FMin(a,b)
  %7868 = call float @dx.op.binary.f32(i32 36, float %7864, float %7867)  ; FMin(a,b)
  %7869 = call float @dx.op.binary.f32(i32 35, float %7864, float %7867)  ; FMax(a,b)
  br label %7870

; <label>:7870                                    ; preds = %7855, %7821
  %7871 = phi float [ %7869, %7855 ], [ -1.000000e+00, %7821 ]
  %7872 = phi float [ %7868, %7855 ], [ -1.000000e+00, %7821 ]
  %7873 = phi i1 [ true, %7855 ], [ false, %7821 ]
  %7874 = and i1 %7841, %7873
  br i1 %7874, label %7875, label %7877

; <label>:7875                                    ; preds = %7870
  %7876 = fcmp fast oeq float %7872, %7871
  br i1 %7876, label %8180, label %7878

; <label>:7877                                    ; preds = %7870
  br i1 %7841, label %8180, label %7878

; <label>:7878                                    ; preds = %7877, %7875
  %7879 = phi float [ %7807, %7877 ], [ %7871, %7875 ]
  %7880 = phi float [ 0.000000e+00, %7877 ], [ %7872, %7875 ]
  %7881 = icmp ne i32 %7829, 0
  %7882 = fmul fast float %7879, %7810
  %7883 = fadd fast float %7882, %7823
  %7884 = fmul fast float %7883, %7879
  %7885 = select i1 %7881, float 0.000000e+00, float %7884
  %7886 = fcmp fast oeq float %7810, 0.000000e+00
  %7887 = fdiv fast float %7828, %7810
  %7888 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7887)  ; FMax(a,b)
  %7889 = select i1 %7886, float %7879, float %7888
  %7890 = call float @dx.op.binary.f32(i32 36, float %7879, float %7889)  ; FMin(a,b)
  %7891 = fcmp fast ogt float %7810, 0.000000e+00
  %7892 = fcmp fast olt float %7828, 0.000000e+00
  br i1 %7891, label %7893, label %7950

; <label>:7893                                    ; preds = %7878
  %7894 = icmp eq i32 %7829, 0
  br i1 %7892, label %7895, label %7939

; <label>:7895                                    ; preds = %7893
  %7896 = select i1 %7894, float %7879, float 0.000000e+00
  %7897 = fsub fast float -0.000000e+00, %7896
  %7898 = call float @dx.op.unary.f32(i32 6, float %7897)  ; FAbs(value)
  %7899 = fmul fast float %7896, %7810
  %7900 = fadd fast float %7899, %7823
  %7901 = fmul fast float %7898, %7900
  %7902 = fsub fast float %7885, %7901
  %7903 = fsub fast float %7879, %7898
  %7904 = select i1 %7894, float %7903, float 0.000000e+00
  %7905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.CBufRet.f32 %7905, 1
  %7908 = extractvalue %dx.types.CBufRet.f32 %7905, 2
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7916 = call float @dx.op.binary.f32(i32 36, float %7902, float %7915)  ; FMin(a,b)
  %7917 = fmul fast float %7913, %7904
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = fsub fast float %7910, %7906
  %7920 = fsub fast float %7911, %7907
  %7921 = fsub fast float %7912, %7908
  %7922 = fmul fast float %7918, %7919
  %7923 = fmul fast float %7918, %7920
  %7924 = fmul fast float %7918, %7921
  %7925 = fadd fast float %7922, %7906
  %7926 = fadd fast float %7923, %7907
  %7927 = fadd fast float %7924, %7908
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = fadd fast float %7930, %7929
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7934 = extractvalue %dx.types.CBufRet.f32 %7928, 3
  %7935 = fadd fast float %7934, %7933
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = fmul fast float %7932, %7916
  %7938 = fmul fast float %7937, %7936
  br label %8180

; <label>:7939                                    ; preds = %7893
  br i1 %7894, label %7940, label %7961

; <label>:7940                                    ; preds = %7939
  %7941 = call float @dx.op.binary.f32(i32 36, float %7890, float %7880)  ; FMin(a,b)
  %7942 = fsub fast float %7890, %7941
  %7943 = fsub fast float %7942, %7879
  %7944 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %7945 = fadd fast float %7942, %7879
  %7946 = fmul fast float %7945, %7810
  %7947 = fadd fast float %7946, %7823
  %7948 = fmul fast float %7947, %7944
  %7949 = fsub fast float %7885, %7948
  br label %7961

; <label>:7950                                    ; preds = %7878
  br i1 %7892, label %7951, label %7961

; <label>:7951                                    ; preds = %7950
  %7952 = call float @dx.op.binary.f32(i32 35, float %7880, float %7890)  ; FMax(a,b)
  %7953 = icmp eq i32 %7829, 0
  %7954 = select i1 %7953, float %7890, float 0.000000e+00
  %7955 = fsub fast float -0.000000e+00, %7954
  %7956 = call float @dx.op.unary.f32(i32 6, float %7955)  ; FAbs(value)
  %7957 = fmul fast float %7954, %7810
  %7958 = fadd fast float %7957, %7823
  %7959 = fmul fast float %7956, %7958
  %7960 = fsub fast float %7885, %7959
  br label %7961

; <label>:7961                                    ; preds = %7951, %7950, %7940, %7939
  %7962 = phi float [ %7880, %7939 ], [ %7880, %7940 ], [ %7952, %7951 ], [ %7880, %7950 ]
  %7963 = phi float [ 0.000000e+00, %7939 ], [ %7944, %7940 ], [ %7956, %7951 ], [ 0.000000e+00, %7950 ]
  %7964 = phi float [ %7885, %7939 ], [ %7949, %7940 ], [ %7960, %7951 ], [ %7885, %7950 ]
  %7965 = phi float [ %7890, %7939 ], [ %7890, %7940 ], [ %7879, %7951 ], [ %7879, %7950 ]
  %7966 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %7966, align 4, !tbaa !129, !noalias !131
  %7967 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %7967, align 4, !tbaa !129, !noalias !131
  %7968 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %7968, align 4, !tbaa !129, !noalias !131
  %7969 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %7969, align 4, !tbaa !129, !noalias !131
  %7970 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %7970, align 4, !tbaa !129, !noalias !131
  %7971 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %7971, align 4, !tbaa !129, !noalias !131
  %7972 = icmp sgt i32 %7831, 0
  br i1 %7972, label %7973, label %8034

; <label>:7973                                    ; preds = %7961
  br label %7974

; <label>:7974                                    ; preds = %8023, %7973
  %7975 = phi i32 [ %8024, %8023 ], [ 0, %7973 ]
  %7976 = phi i32 [ %8025, %8023 ], [ 0, %7973 ]
  %7977 = add nuw i32 %7976, 171
  %7978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %7977)  ; CBufferLoadLegacy(handle,regIndex)
  %7979 = extractvalue %dx.types.CBufRet.f32 %7978, 0
  %7980 = extractvalue %dx.types.CBufRet.f32 %7978, 1
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.CBufRet.f32 %7981, 1
  %7984 = fsub fast float %7979, %7982
  %7985 = fsub fast float %7980, %7983
  %7986 = extractvalue %dx.types.CBufRet.f32 %7978, 2
  %7987 = fsub fast float -0.000000e+00, %7984
  %7988 = fsub fast float -0.000000e+00, %7985
  %7989 = call float @dx.op.dot2.f32(i32 54, float %7808, float %7809, float %7987, float %7988)  ; Dot2(ax,ay,bx,by)
  %7990 = fmul fast float %7989, 2.000000e+00
  %7991 = call float @dx.op.dot2.f32(i32 54, float %7987, float %7988, float %7987, float %7988)  ; Dot2(ax,ay,bx,by)
  %7992 = fmul fast float %7986, %7986
  %7993 = fsub fast float %7991, %7992
  %7994 = fmul fast float %7990, %7990
  %7995 = fmul fast float %7851, %7993
  %7996 = fsub fast float %7994, %7995
  %7997 = fcmp fast ogt float %7996, 0.000000e+00
  br i1 %7997, label %7998, label %8013

; <label>:7998                                    ; preds = %7974
  %7999 = fcmp fast ogt float %7990, 0.000000e+00
  %8000 = call float @dx.op.unary.f32(i32 24, float %7996)  ; Sqrt(value)
  %8001 = fsub fast float -0.000000e+00, %8000
  %8002 = select i1 %7999, float %8000, float %8001
  %8003 = fadd fast float %8002, %7990
  %8004 = fmul float %8003, -5.000000e-01
  %8005 = fdiv fast float %8004, %7844
  %8006 = call float @dx.op.binary.f32(i32 35, float %8005, float 0.000000e+00)  ; FMax(a,b)
  %8007 = call float @dx.op.binary.f32(i32 36, float %7879, float %8006)  ; FMin(a,b)
  %8008 = fdiv fast float %7993, %8004
  %8009 = call float @dx.op.binary.f32(i32 35, float %8008, float 0.000000e+00)  ; FMax(a,b)
  %8010 = call float @dx.op.binary.f32(i32 36, float %7879, float %8009)  ; FMin(a,b)
  %8011 = call float @dx.op.binary.f32(i32 36, float %8007, float %8010)  ; FMin(a,b)
  %8012 = call float @dx.op.binary.f32(i32 35, float %8007, float %8010)  ; FMax(a,b)
  br label %8013

; <label>:8013                                    ; preds = %7998, %7974
  %8014 = phi float [ %8012, %7998 ], [ -1.000000e+00, %7974 ]
  %8015 = phi float [ %8011, %7998 ], [ -1.000000e+00, %7974 ]
  %8016 = phi i1 [ true, %7998 ], [ false, %7974 ]
  br i1 %8016, label %8017, label %8023

; <label>:8017                                    ; preds = %8013
  %8018 = call float @dx.op.binary.f32(i32 35, float %7962, float %8015)  ; FMax(a,b)
  %8019 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %7976
  store float %8018, float* %8019, align 4, !tbaa !129, !noalias !131
  %8020 = call float @dx.op.binary.f32(i32 35, float %7962, float %8014)  ; FMax(a,b)
  %8021 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %7976
  store float %8020, float* %8021, align 4, !tbaa !129, !noalias !131
  %8022 = add nsw i32 %7975, 1
  br label %8023

; <label>:8023                                    ; preds = %8017, %8013
  %8024 = phi i32 [ %8022, %8017 ], [ %7975, %8013 ]
  %8025 = add nuw nsw i32 %7976, 1
  %8026 = icmp eq i32 %8025, %7831
  br i1 %8026, label %8027, label %7974

; <label>:8027                                    ; preds = %8023
  %8028 = load float, float* %7968, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8029 = load float, float* %7967, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8030 = load float, float* %7966, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8031 = load float, float* %7971, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8032 = load float, float* %7970, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8033 = load float, float* %7969, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8034

; <label>:8034                                    ; preds = %8027, %7961
  %8035 = phi float [ -1.000000e+00, %7961 ], [ %8033, %8027 ]
  %8036 = phi float [ -1.000000e+00, %7961 ], [ %8032, %8027 ]
  %8037 = phi float [ -1.000000e+00, %7961 ], [ %8031, %8027 ]
  %8038 = phi float [ -1.000000e+00, %7961 ], [ %8030, %8027 ]
  %8039 = phi float [ -1.000000e+00, %7961 ], [ %8029, %8027 ]
  %8040 = phi float [ -1.000000e+00, %7961 ], [ %8028, %8027 ]
  %8041 = phi i32 [ 0, %7961 ], [ %8024, %8027 ]
  %8042 = call float @dx.op.binary.f32(i32 36, float %8039, float %8040)  ; FMin(a,b)
  %8043 = call float @dx.op.binary.f32(i32 36, float %8038, float %8042)  ; FMin(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8038, float %8039)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 36, float %8044, float %8040)  ; FMin(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8038, float %8039)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 35, float %8046, float %8045)  ; FMax(a,b)
  %8048 = call float @dx.op.binary.f32(i32 35, float %8039, float %8040)  ; FMax(a,b)
  %8049 = call float @dx.op.binary.f32(i32 35, float %8038, float %8048)  ; FMax(a,b)
  store float %8043, float* %7966, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8047, float* %7967, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8049, float* %7968, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8050 = call float @dx.op.binary.f32(i32 36, float %8036, float %8037)  ; FMin(a,b)
  %8051 = call float @dx.op.binary.f32(i32 36, float %8035, float %8050)  ; FMin(a,b)
  %8052 = call float @dx.op.binary.f32(i32 35, float %8035, float %8036)  ; FMax(a,b)
  %8053 = call float @dx.op.binary.f32(i32 36, float %8052, float %8037)  ; FMin(a,b)
  %8054 = call float @dx.op.binary.f32(i32 36, float %8035, float %8036)  ; FMin(a,b)
  %8055 = call float @dx.op.binary.f32(i32 35, float %8054, float %8053)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 35, float %8036, float %8037)  ; FMax(a,b)
  %8057 = call float @dx.op.binary.f32(i32 35, float %8035, float %8056)  ; FMax(a,b)
  store float %8051, float* %7969, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8055, float* %7970, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8057, float* %7971, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8058 = sub nsw i32 3, %8041
  %8059 = icmp sgt i32 %8058, 2
  br i1 %8059, label %8060, label %8098

; <label>:8060                                    ; preds = %8034
  %8061 = icmp eq i32 %7829, 0
  %8062 = fsub fast float %7879, %7963
  %8063 = select i1 %8061, float %8062, float %7963
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8068, 2
  %8072 = extractvalue %dx.types.CBufRet.f32 %8068, 3
  %8073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.f32 %8073, 3
  %8075 = call float @dx.op.binary.f32(i32 36, float %7964, float %8074)  ; FMin(a,b)
  %8076 = fmul fast float %8072, %8063
  %8077 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8078 = fsub fast float %8069, %8065
  %8079 = fsub fast float %8070, %8066
  %8080 = fsub fast float %8071, %8067
  %8081 = fmul fast float %8077, %8078
  %8082 = fmul fast float %8077, %8079
  %8083 = fmul fast float %8077, %8080
  %8084 = fadd fast float %8081, %8065
  %8085 = fadd fast float %8082, %8066
  %8086 = fadd fast float %8083, %8067
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.CBufRet.f32 %8087, 1
  %8090 = fadd fast float %8089, %8088
  %8091 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8087, 2
  %8093 = extractvalue %dx.types.CBufRet.f32 %8087, 3
  %8094 = fadd fast float %8093, %8092
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = fmul fast float %8091, %8075
  %8097 = fmul fast float %8096, %8095
  br label %8180

; <label>:8098                                    ; preds = %8034
  %8099 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8058
  %8100 = load float, float* %8099, align 4, !tbaa !129, !noalias !131
  %8101 = fcmp fast olt float %8100, %7965
  %8102 = icmp sgt i32 %8041, 0
  %8103 = and i1 %8102, %8101
  br i1 %8103, label %8104, label %8141

; <label>:8104                                    ; preds = %8098
  br label %8105

; <label>:8105                                    ; preds = %8134, %8104
  %8106 = phi float [ %8135, %8134 ], [ %7963, %8104 ]
  %8107 = phi float [ %8136, %8134 ], [ %7964, %8104 ]
  %8108 = phi float [ %8116, %8134 ], [ %8100, %8104 ]
  %8109 = phi i32 [ %8113, %8134 ], [ %8058, %8104 ]
  %8110 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8109
  %8111 = load float, float* %8110, align 4, !tbaa !129, !noalias !131
  %8112 = icmp slt i32 %8109, 2
  %8113 = add nsw i32 %8109, 1
  %8114 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8113
  %8115 = load float, float* %8114, align 4, !tbaa !129, !noalias !131
  %8116 = select i1 %8112, float %8115, float %7879
  %8117 = call float @dx.op.binary.f32(i32 36, float %8116, float %8111)  ; FMin(a,b)
  %8118 = call float @dx.op.binary.f32(i32 36, float %7965, float %8117)  ; FMin(a,b)
  %8119 = icmp eq i32 %7829, 0
  %8120 = fadd fast float %8118, %8108
  %8121 = fmul fast float %8120, %7810
  %8122 = fadd fast float %8121, %7823
  br i1 %8119, label %8128, label %8123

; <label>:8123                                    ; preds = %8105
  %8124 = fsub fast float %8118, %8108
  %8125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8124)  ; FMax(a,b)
  %8126 = fmul fast float %8125, %8122
  %8127 = fadd fast float %8126, %8107
  br label %8134

; <label>:8128                                    ; preds = %8105
  %8129 = fsub fast float %8108, %8118
  %8130 = call float @dx.op.unary.f32(i32 6, float %8129)  ; FAbs(value)
  %8131 = fadd fast float %8130, %8106
  %8132 = fmul fast float %8130, %8122
  %8133 = fsub fast float %8107, %8132
  br label %8134

; <label>:8134                                    ; preds = %8128, %8123
  %8135 = phi float [ %8125, %8123 ], [ %8131, %8128 ]
  %8136 = phi float [ %8127, %8123 ], [ %8133, %8128 ]
  %8137 = fcmp fast olt float %8116, %7965
  %8138 = icmp slt i32 %8113, 3
  %8139 = and i1 %8138, %8137
  br i1 %8139, label %8105, label %8140

; <label>:8140                                    ; preds = %8134
  br label %8141

; <label>:8141                                    ; preds = %8140, %8098
  %8142 = phi float [ %7963, %8098 ], [ %8135, %8140 ]
  %8143 = phi float [ %7964, %8098 ], [ %8136, %8140 ]
  %8144 = fsub fast float %7879, %8142
  %8145 = select i1 %7881, float %8142, float %8144
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8148 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %8149 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.CBufRet.f32 %8150, 1
  %8153 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8154 = extractvalue %dx.types.CBufRet.f32 %8150, 3
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8157 = call float @dx.op.binary.f32(i32 36, float %8143, float %8156)  ; FMin(a,b)
  %8158 = fmul fast float %8154, %8145
  %8159 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  %8160 = fsub fast float %8151, %8147
  %8161 = fsub fast float %8152, %8148
  %8162 = fsub fast float %8153, %8149
  %8163 = fmul fast float %8159, %8160
  %8164 = fmul fast float %8159, %8161
  %8165 = fmul fast float %8159, %8162
  %8166 = fadd fast float %8163, %8147
  %8167 = fadd fast float %8164, %8148
  %8168 = fadd fast float %8165, %8149
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 0
  %8171 = extractvalue %dx.types.CBufRet.f32 %8169, 1
  %8172 = fadd fast float %8171, %8170
  %8173 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8169, 2
  %8175 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8176 = fadd fast float %8175, %8174
  %8177 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8178 = fmul fast float %8173, %8157
  %8179 = fmul fast float %8178, %8177
  br label %8180

; <label>:8180                                    ; preds = %8141, %8060, %7895, %7877, %7875
  %8181 = phi float [ %7904, %7895 ], [ %8063, %8060 ], [ %8145, %8141 ], [ 0.000000e+00, %7875 ], [ 0.000000e+00, %7877 ]
  %8182 = phi float [ %7938, %7895 ], [ %8097, %8060 ], [ %8179, %8141 ], [ 0.000000e+00, %7875 ], [ 0.000000e+00, %7877 ]
  %8183 = phi float [ %7925, %7895 ], [ %8084, %8060 ], [ %8166, %8141 ], [ 0.000000e+00, %7875 ], [ 0.000000e+00, %7877 ]
  %8184 = phi float [ %7926, %7895 ], [ %8085, %8060 ], [ %8167, %8141 ], [ 0.000000e+00, %7875 ], [ 0.000000e+00, %7877 ]
  %8185 = phi float [ %7927, %7895 ], [ %8086, %8060 ], [ %8168, %8141 ], [ 0.000000e+00, %7875 ], [ 0.000000e+00, %7877 ]
  %8186 = fmul fast float %7818, %8182
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8189 = fsub fast float %7825, %8188
  %8190 = fcmp fast olt float %8186, -2.000000e+01
  %8191 = call float @dx.op.unary.f32(i32 21, float %8186)  ; Exp(value)
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 2
  %8194 = extractvalue %dx.types.CBufRet.f32 %8192, 3
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8197 = fmul fast float %8194, %8189
  %8198 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = fmul fast float %7810, 5.000000e-01
  %8201 = fadd fast float %8200, 5.000000e-01
  %8202 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8203 = fsub fast float 1.000000e+00, %8202
  %8204 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8199)  ; FMax(a,b)
  %8205 = fdiv fast float %8203, %8204
  %8206 = fsub fast float %8189, %7767
  %8207 = call float @dx.op.unary.f32(i32 6, float %8206)  ; FAbs(value)
  %8208 = fmul fast float %8207, %8193
  %8209 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8210 = fsub fast float 1.000000e+00, %8208
  %8211 = fmul fast float %8210, %8209
  %8212 = fadd fast float %8211, %8208
  %8213 = fmul fast float %8196, %8189
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8215 = fsub fast float 1.000000e+00, %8212
  %8216 = fmul fast float %8215, %8214
  %8217 = fadd fast float %8216, %8212
  %8218 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8219 = fadd fast float %8191, -1.000000e+00
  %8220 = select i1 %8190, float -1.000000e+00, float %8219
  %8221 = fmul fast float %8218, %8220
  %8222 = fadd fast float %8221, 1.000000e+00
  %8223 = fsub fast float -0.000000e+00, %8221
  %8224 = fmul fast float %8183, %8223
  %8225 = fmul fast float %8184, %8223
  %8226 = fmul fast float %8185, %8223
  br label %8227

; <label>:8227                                    ; preds = %8180, %7776
  %8228 = phi float [ %8181, %8180 ], [ 0.000000e+00, %7776 ]
  %8229 = phi float [ %8222, %8180 ], [ 1.000000e+00, %7776 ]
  %8230 = phi float [ %8224, %8180 ], [ 0.000000e+00, %7776 ]
  %8231 = phi float [ %8225, %8180 ], [ 0.000000e+00, %7776 ]
  %8232 = phi float [ %8226, %8180 ], [ 0.000000e+00, %7776 ]
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8235 = fsub fast float 1.000000e+00, %8229
  %8236 = fmul fast float %8235, %7811
  %8237 = fmul fast float %8236, %8234
  %8238 = fsub fast float %7811, %8237
  br i1 %7804, label %8239, label %8268, !dx.controlflow.hints !167

; <label>:8239                                    ; preds = %8227
  %8240 = fmul fast float %7812, %7801
  %8241 = fadd fast float %8240, %7802
  %8242 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8243 = fmul fast float %7783, %8238
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = fmul fast float %7784, %8238
  %8246 = fsub fast float -0.000000e+00, %8245
  %8247 = call float @dx.op.unary.f32(i32 21, float %8244)  ; Exp(value)
  %8248 = call float @dx.op.unary.f32(i32 21, float %8246)  ; Exp(value)
  %8249 = call float @dx.op.binary.f32(i32 35, float %7791, float %8247)  ; FMax(a,b)
  %8250 = call float @dx.op.binary.f32(i32 35, float %7791, float %8248)  ; FMax(a,b)
  %8251 = fsub fast float %8250, %8249
  %8252 = fmul fast float %8251, %8242
  %8253 = fadd fast float %8252, %8249
  %8254 = call float @dx.op.unary.f32(i32 7, float %8253)  ; Saturate(value)
  %8255 = fsub fast float %7788, %7793
  %8256 = fsub fast float %7789, %7794
  %8257 = fsub fast float %7790, %7795
  %8258 = fmul fast float %8242, %8255
  %8259 = fmul fast float %8242, %8256
  %8260 = fmul fast float %8242, %8257
  %8261 = fadd fast float %8258, %7793
  %8262 = fadd fast float %8259, %7794
  %8263 = fadd fast float %8260, %7795
  %8264 = fsub fast float 1.000000e+00, %8254
  %8265 = fmul fast float %8264, %8261
  %8266 = fmul fast float %8264, %8262
  %8267 = fmul fast float %8264, %8263
  br label %8327

; <label>:8268                                    ; preds = %8227
  %8269 = fmul fast float %8238, %7800
  %8270 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8271 = fsub fast float 2.000000e+00, %8270
  %8272 = fmul fast float %8270, 9.921875e-01
  %8273 = fmul fast float %8272, %8271
  %8274 = fadd fast float %8273, 3.906250e-03
  %8275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8274, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = fsub fast float %8270, %8276
  %8278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8277)  ; FMax(a,b)
  %8279 = fmul fast float %7786, %7767
  %8280 = call float @dx.op.unary.f32(i32 6, float %8279)  ; FAbs(value)
  %8281 = fcmp fast ogt float %8280, 0x3EB0C6F7A0000000
  br i1 %8281, label %8282, label %8288, !dx.controlflow.hints !168

; <label>:8282                                    ; preds = %8268
  %8283 = fmul fast float %8279, 0xBFF7154760000000
  %8284 = call float @dx.op.unary.f32(i32 21, float %8283)  ; Exp(value)
  %8285 = fsub fast float 1.000000e+00, %8284
  %8286 = fdiv fast float %8285, %8279
  %8287 = fmul fast float %8286, %7796
  br label %8288

; <label>:8288                                    ; preds = %8282, %8268
  %8289 = phi float [ %8287, %8282 ], [ %7796, %8268 ]
  %8290 = fadd fast float %8289, %7798
  %8291 = fmul fast float %8290, %8278
  %8292 = fmul fast float %7783, %8291
  %8293 = fsub fast float -0.000000e+00, %8292
  %8294 = fmul fast float %7784, %8291
  %8295 = fsub fast float -0.000000e+00, %8294
  %8296 = fmul fast float %7785, %8291
  %8297 = fsub fast float -0.000000e+00, %8296
  %8298 = call float @dx.op.unary.f32(i32 21, float %8293)  ; Exp(value)
  %8299 = call float @dx.op.unary.f32(i32 21, float %8295)  ; Exp(value)
  %8300 = call float @dx.op.unary.f32(i32 21, float %8297)  ; Exp(value)
  %8301 = fmul fast float %7812, %7812
  %8302 = fadd fast float %8301, 1.000000e+00
  %8303 = fmul fast float %8302, 0x3FAE8EC8A0000000
  %8304 = fmul fast float %8303, %7793
  %8305 = fmul fast float %8303, %7794
  %8306 = fmul fast float %8303, %7795
  %8307 = fmul fast float %7812, %7791
  %8308 = fsub fast float 1.000000e+00, %8307
  %8309 = fmul fast float %7791, %7791
  %8310 = fsub fast float 1.000000e+00, %8309
  %8311 = fmul fast float %8310, 0x3FB45F3060000000
  %8312 = fmul fast float %8308, %8308
  %8313 = fdiv fast float 1.000000e+00, %8312
  %8314 = fmul fast float %8311, %8313
  %8315 = fmul fast float %8314, %7788
  %8316 = fmul fast float %8314, %7789
  %8317 = fmul fast float %8314, %7790
  %8318 = fadd fast float %8315, %8304
  %8319 = fadd fast float %8316, %8305
  %8320 = fadd fast float %8317, %8306
  %8321 = fsub fast float 1.000000e+00, %8298
  %8322 = fsub fast float 1.000000e+00, %8299
  %8323 = fsub fast float 1.000000e+00, %8300
  %8324 = fmul fast float %8318, %8321
  %8325 = fmul fast float %8319, %8322
  %8326 = fmul fast float %8320, %8323
  br label %8327

; <label>:8327                                    ; preds = %8288, %8239
  %8328 = phi float [ %8265, %8239 ], [ %8324, %8288 ]
  %8329 = phi float [ %8266, %8239 ], [ %8325, %8288 ]
  %8330 = phi float [ %8267, %8239 ], [ %8326, %8288 ]
  %8331 = phi float [ %8254, %8239 ], [ %8298, %8288 ]
  %8332 = phi float [ %8254, %8239 ], [ %8299, %8288 ]
  %8333 = phi float [ %8254, %8239 ], [ %8300, %8288 ]
  br i1 %7820, label %8334, label %8532, !dx.controlflow.hints !169

; <label>:8334                                    ; preds = %8327
  %8335 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8336 = fmul fast float %8335, %8235
  %8337 = fsub fast float %8230, %8328
  %8338 = fsub fast float %8231, %8329
  %8339 = fsub fast float %8232, %8330
  %8340 = fmul fast float %8336, %8337
  %8341 = fmul fast float %8336, %8338
  %8342 = fmul fast float %8336, %8339
  %8343 = fadd fast float %8340, %8328
  %8344 = fadd fast float %8341, %8329
  %8345 = fadd fast float %8342, %8330
  %8346 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8331)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8332)  ; FMax(a,b)
  %8348 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8333)  ; FMax(a,b)
  %8349 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8229)  ; FMax(a,b)
  %8350 = call float @dx.op.binary.f32(i32 35, float %8228, float %8238)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8350)  ; FMax(a,b)
  %8352 = fdiv fast float %8228, %8351
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = fdiv fast float %8238, %8351
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = fcmp fast une float %8349, 1.000000e+00
  br i1 %8356, label %8357, label %8370, !dx.controlflow.hints !170

; <label>:8357                                    ; preds = %8334
  %8358 = call float @dx.op.unary.f32(i32 23, float %8349)  ; Log(value)
  %8359 = fmul fast float %8358, 0x3FE62E4300000000
  %8360 = fmul fast float %8230, %8359
  %8361 = fsub fast float -0.000000e+00, %8360
  %8362 = fmul fast float %8231, %8359
  %8363 = fsub fast float -0.000000e+00, %8362
  %8364 = fmul fast float %8232, %8359
  %8365 = fsub fast float -0.000000e+00, %8364
  %8366 = fsub fast float 1.000000e+00, %8349
  %8367 = fdiv fast float %8361, %8366
  %8368 = fdiv fast float %8363, %8366
  %8369 = fdiv fast float %8365, %8366
  br label %8370

; <label>:8370                                    ; preds = %8357, %8334
  %8371 = phi float [ %8367, %8357 ], [ %8230, %8334 ]
  %8372 = phi float [ %8368, %8357 ], [ %8231, %8334 ]
  %8373 = phi float [ %8369, %8357 ], [ %8232, %8334 ]
  %8374 = phi float [ %8359, %8357 ], [ 0.000000e+00, %8334 ]
  %8375 = fcmp fast une float %8346, 1.000000e+00
  br i1 %8375, label %8376, label %8383, !dx.controlflow.hints !171

; <label>:8376                                    ; preds = %8370
  %8377 = call float @dx.op.unary.f32(i32 23, float %8346)  ; Log(value)
  %8378 = fmul fast float %8377, 0x3FE62E4300000000
  %8379 = fmul fast float %8343, %8378
  %8380 = fsub fast float -0.000000e+00, %8379
  %8381 = fsub fast float 1.000000e+00, %8346
  %8382 = fdiv fast float %8380, %8381
  br label %8383

; <label>:8383                                    ; preds = %8376, %8370
  %8384 = phi float [ %8382, %8376 ], [ %8343, %8370 ]
  %8385 = phi float [ %8378, %8376 ], [ 0.000000e+00, %8370 ]
  %8386 = fcmp fast une float %8347, 1.000000e+00
  br i1 %8386, label %8387, label %8394, !dx.controlflow.hints !171

; <label>:8387                                    ; preds = %8383
  %8388 = call float @dx.op.unary.f32(i32 23, float %8347)  ; Log(value)
  %8389 = fmul fast float %8388, 0x3FE62E4300000000
  %8390 = fmul fast float %8344, %8389
  %8391 = fsub fast float -0.000000e+00, %8390
  %8392 = fsub fast float 1.000000e+00, %8347
  %8393 = fdiv fast float %8391, %8392
  br label %8394

; <label>:8394                                    ; preds = %8387, %8383
  %8395 = phi float [ %8393, %8387 ], [ %8344, %8383 ]
  %8396 = phi float [ %8389, %8387 ], [ 0.000000e+00, %8383 ]
  %8397 = fcmp fast une float %8348, 1.000000e+00
  br i1 %8397, label %8398, label %8405, !dx.controlflow.hints !171

; <label>:8398                                    ; preds = %8394
  %8399 = call float @dx.op.unary.f32(i32 23, float %8348)  ; Log(value)
  %8400 = fmul fast float %8399, 0x3FE62E4300000000
  %8401 = fmul fast float %8345, %8400
  %8402 = fsub fast float -0.000000e+00, %8401
  %8403 = fsub fast float 1.000000e+00, %8348
  %8404 = fdiv fast float %8402, %8403
  br label %8405

; <label>:8405                                    ; preds = %8398, %8394
  %8406 = phi float [ %8404, %8398 ], [ %8345, %8394 ]
  %8407 = phi float [ %8400, %8398 ], [ 0.000000e+00, %8394 ]
  %8408 = fmul fast float %8371, %8355
  %8409 = fmul fast float %8372, %8355
  %8410 = fmul fast float %8373, %8355
  %8411 = fmul fast float %8374, %8355
  %8412 = fmul fast float %8384, %8353
  %8413 = fmul fast float %8395, %8353
  %8414 = fmul fast float %8406, %8353
  %8415 = fmul fast float %8385, %8353
  %8416 = fmul fast float %8396, %8353
  %8417 = fmul fast float %8407, %8353
  %8418 = fadd fast float %8412, %8408
  %8419 = fadd fast float %8413, %8409
  %8420 = fadd fast float %8414, %8410
  %8421 = fadd fast float %8415, %8411
  %8422 = fadd fast float %8416, %8411
  %8423 = fadd fast float %8417, %8411
  %8424 = fcmp fast une float %8421, 0.000000e+00
  br i1 %8424, label %8425, label %8432, !dx.controlflow.hints !172

; <label>:8425                                    ; preds = %8405
  %8426 = fmul fast float %8421, 0x3FF7154760000000
  %8427 = call float @dx.op.unary.f32(i32 21, float %8426)  ; Exp(value)
  %8428 = fsub fast float 1.000000e+00, %8427
  %8429 = fmul fast float %8418, %8428
  %8430 = fsub fast float -0.000000e+00, %8429
  %8431 = fdiv fast float %8430, %8421
  br label %8432

; <label>:8432                                    ; preds = %8425, %8405
  %8433 = phi float [ %8427, %8425 ], [ 1.000000e+00, %8405 ]
  %8434 = phi float [ %8431, %8425 ], [ %8418, %8405 ]
  %8435 = fcmp fast une float %8422, 0.000000e+00
  br i1 %8435, label %8436, label %8443, !dx.controlflow.hints !172

; <label>:8436                                    ; preds = %8432
  %8437 = fmul fast float %8422, 0x3FF7154760000000
  %8438 = call float @dx.op.unary.f32(i32 21, float %8437)  ; Exp(value)
  %8439 = fsub fast float 1.000000e+00, %8438
  %8440 = fmul fast float %8419, %8439
  %8441 = fsub fast float -0.000000e+00, %8440
  %8442 = fdiv fast float %8441, %8422
  br label %8443

; <label>:8443                                    ; preds = %8436, %8432
  %8444 = phi float [ %8438, %8436 ], [ 1.000000e+00, %8432 ]
  %8445 = phi float [ %8442, %8436 ], [ %8419, %8432 ]
  %8446 = fcmp fast une float %8423, 0.000000e+00
  br i1 %8446, label %8447, label %8454, !dx.controlflow.hints !172

; <label>:8447                                    ; preds = %8443
  %8448 = fmul fast float %8423, 0x3FF7154760000000
  %8449 = call float @dx.op.unary.f32(i32 21, float %8448)  ; Exp(value)
  %8450 = fsub fast float 1.000000e+00, %8449
  %8451 = fmul fast float %8420, %8450
  %8452 = fsub fast float -0.000000e+00, %8451
  %8453 = fdiv fast float %8452, %8423
  br label %8454

; <label>:8454                                    ; preds = %8447, %8443
  %8455 = phi float [ %8449, %8447 ], [ 1.000000e+00, %8443 ]
  %8456 = phi float [ %8453, %8447 ], [ %8420, %8443 ]
  %8457 = fcmp fast ogt float %8353, %8355
  br i1 %8457, label %8458, label %8478

; <label>:8458                                    ; preds = %8454
  %8459 = fsub fast float 1.000000e+00, %8355
  %8460 = fmul fast float %8371, %8459
  %8461 = fmul fast float %8372, %8459
  %8462 = fmul fast float %8373, %8459
  %8463 = fmul fast float %8374, %8459
  %8464 = fcmp fast une float %8463, 0.000000e+00
  br i1 %8464, label %8465, label %8516, !dx.controlflow.hints !173

; <label>:8465                                    ; preds = %8458
  %8466 = fmul fast float %8463, 0x3FF7154760000000
  %8467 = call float @dx.op.unary.f32(i32 21, float %8466)  ; Exp(value)
  %8468 = fsub fast float 1.000000e+00, %8467
  %8469 = fmul fast float %8460, %8468
  %8470 = fsub fast float -0.000000e+00, %8469
  %8471 = fmul fast float %8461, %8468
  %8472 = fsub fast float -0.000000e+00, %8471
  %8473 = fmul fast float %8462, %8468
  %8474 = fsub fast float -0.000000e+00, %8473
  %8475 = fdiv fast float %8470, %8463
  %8476 = fdiv fast float %8472, %8463
  %8477 = fdiv fast float %8474, %8463
  br label %8516

; <label>:8478                                    ; preds = %8454
  %8479 = fsub fast float 1.000000e+00, %8353
  %8480 = fmul fast float %8384, %8479
  %8481 = fmul fast float %8395, %8479
  %8482 = fmul fast float %8406, %8479
  %8483 = fmul fast float %8385, %8479
  %8484 = fmul fast float %8396, %8479
  %8485 = fmul fast float %8407, %8479
  %8486 = fcmp fast une float %8483, 0.000000e+00
  br i1 %8486, label %8487, label %8494, !dx.controlflow.hints !172

; <label>:8487                                    ; preds = %8478
  %8488 = fmul fast float %8483, 0x3FF7154760000000
  %8489 = call float @dx.op.unary.f32(i32 21, float %8488)  ; Exp(value)
  %8490 = fsub fast float 1.000000e+00, %8489
  %8491 = fmul fast float %8480, %8490
  %8492 = fsub fast float -0.000000e+00, %8491
  %8493 = fdiv fast float %8492, %8483
  br label %8494

; <label>:8494                                    ; preds = %8487, %8478
  %8495 = phi float [ %8493, %8487 ], [ %8480, %8478 ]
  %8496 = phi float [ %8489, %8487 ], [ 1.000000e+00, %8478 ]
  %8497 = fcmp fast une float %8484, 0.000000e+00
  br i1 %8497, label %8498, label %8505, !dx.controlflow.hints !172

; <label>:8498                                    ; preds = %8494
  %8499 = fmul fast float %8484, 0x3FF7154760000000
  %8500 = call float @dx.op.unary.f32(i32 21, float %8499)  ; Exp(value)
  %8501 = fsub fast float 1.000000e+00, %8500
  %8502 = fmul fast float %8481, %8501
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = fdiv fast float %8503, %8484
  br label %8505

; <label>:8505                                    ; preds = %8498, %8494
  %8506 = phi float [ %8504, %8498 ], [ %8481, %8494 ]
  %8507 = phi float [ %8500, %8498 ], [ 1.000000e+00, %8494 ]
  %8508 = fcmp fast une float %8485, 0.000000e+00
  br i1 %8508, label %8509, label %8516, !dx.controlflow.hints !172

; <label>:8509                                    ; preds = %8505
  %8510 = fmul fast float %8485, 0x3FF7154760000000
  %8511 = call float @dx.op.unary.f32(i32 21, float %8510)  ; Exp(value)
  %8512 = fsub fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8482, %8512
  %8514 = fsub fast float -0.000000e+00, %8513
  %8515 = fdiv fast float %8514, %8485
  br label %8516

; <label>:8516                                    ; preds = %8509, %8505, %8465, %8458
  %8517 = phi float [ %8515, %8509 ], [ %8477, %8465 ], [ %8462, %8458 ], [ %8482, %8505 ]
  %8518 = phi float [ %8506, %8509 ], [ %8476, %8465 ], [ %8461, %8458 ], [ %8506, %8505 ]
  %8519 = phi float [ %8495, %8509 ], [ %8475, %8465 ], [ %8460, %8458 ], [ %8495, %8505 ]
  %8520 = phi float [ %8511, %8509 ], [ %8467, %8465 ], [ 1.000000e+00, %8458 ], [ 1.000000e+00, %8505 ]
  %8521 = phi float [ %8507, %8509 ], [ %8467, %8465 ], [ 1.000000e+00, %8458 ], [ %8507, %8505 ]
  %8522 = phi float [ %8496, %8509 ], [ %8467, %8465 ], [ 1.000000e+00, %8458 ], [ %8496, %8505 ]
  %8523 = fmul fast float %8522, %8434
  %8524 = fmul fast float %8521, %8445
  %8525 = fmul fast float %8520, %8456
  %8526 = fadd fast float %8523, %8519
  %8527 = fadd fast float %8524, %8518
  %8528 = fadd fast float %8525, %8517
  %8529 = fmul fast float %8522, %8433
  %8530 = fmul fast float %8521, %8444
  %8531 = fmul fast float %8520, %8455
  br label %8532

; <label>:8532                                    ; preds = %8516, %8327
  %8533 = phi float [ %8531, %8516 ], [ %8333, %8327 ]
  %8534 = phi float [ %8530, %8516 ], [ %8332, %8327 ]
  %8535 = phi float [ %8529, %8516 ], [ %8331, %8327 ]
  %8536 = phi float [ %8528, %8516 ], [ %8330, %8327 ]
  %8537 = phi float [ %8527, %8516 ], [ %8329, %8327 ]
  %8538 = phi float [ %8526, %8516 ], [ %8328, %8327 ]
  %8539 = fmul fast float %8538, %7484
  %8540 = fmul fast float %8537, %7484
  %8541 = fmul fast float %8536, %7484
  %8542 = fmul fast float %8535, %7775
  %8543 = call float @dx.op.dot3.f32(i32 55, float %8535, float %8534, float %8533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8544 = call float @dx.op.dot3.f32(i32 55, float %8539, float %8540, float %8541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8545 = select i1 %271, float %8543, float %8535
  %8546 = select i1 %271, float %8543, float %8534
  %8547 = select i1 %271, float 1.000000e+00, float %8533
  %8548 = select i1 %271, float %8544, float %8539
  %8549 = select i1 %271, float 0.000000e+00, float %8540
  %8550 = select i1 %271, float 0.000000e+00, float %8541
  %8551 = fmul fast float %8545, %7769
  %8552 = fmul fast float %8546, %7770
  %8553 = fmul fast float %8547, %7771
  %8554 = fadd fast float %8551, %8548
  %8555 = fadd fast float %8552, %8549
  %8556 = fadd fast float %8550, %8553
  %8557 = fmul fast float %8545, %7772
  %8558 = fmul fast float %8546, %7773
  %8559 = fmul fast float %8547, %7774
  %8560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.i32 %8560, 0
  %8562 = icmp eq i32 %8561, 0
  br i1 %8562, label %8930, label %8563, !dx.controlflow.hints !174

; <label>:8563                                    ; preds = %8532
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 2
  %8566 = extractvalue %dx.types.CBufRet.f32 %8564, 3
  %8567 = fmul fast float %8565, %116
  %8568 = fmul fast float %8566, %117
  %8569 = fmul fast float %8567, 2.000000e+00
  %8570 = fmul fast float %8568, 2.000000e+00
  %8571 = fsub fast float 1.000000e+00, %8569
  %8572 = fsub fast float 1.000000e+00, %8570
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 0
  %8575 = extractvalue %dx.types.CBufRet.f32 %8573, 1
  %8576 = extractvalue %dx.types.CBufRet.f32 %8573, 2
  %8577 = fmul fast float %8571, %8574
  %8578 = fmul fast float %8571, %8575
  %8579 = fmul fast float %8571, %8576
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = fmul fast float %8572, %8581
  %8585 = fmul fast float %8572, %8582
  %8586 = fmul fast float %8572, %8583
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8590 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8591 = fadd fast float %8584, %8588
  %8592 = fadd fast float %8591, %8577
  %8593 = fadd fast float %8585, %8589
  %8594 = fadd fast float %8593, %8578
  %8595 = fadd fast float %8586, %8590
  %8596 = fadd fast float %8595, %8579
  %8597 = fmul fast float %8592, %7768
  %8598 = fmul fast float %8594, %7768
  %8599 = fmul fast float %8596, %7768
  %8600 = fmul fast float %8597, %8597
  %8601 = fmul fast float %8598, %8598
  %8602 = fadd fast float %8600, %8601
  %8603 = fmul fast float %8599, %8599
  %8604 = fadd fast float %8602, %8603
  %8605 = call float @dx.op.unary.f32(i32 24, float %8604)  ; Sqrt(value)
  %8606 = extractvalue %dx.types.CBufRet.f32 %7495, 0
  %8607 = fsub fast float %8605, %8606
  %8608 = extractvalue %dx.types.CBufRet.f32 %7495, 2
  %8609 = fmul fast float %8607, %8608
  %8610 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8611 = fadd fast float %8610, -5.000000e-01
  %8612 = fmul fast float %8611, 2.000000e+00
  %8613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8614 = extractvalue %dx.types.CBufRet.f32 %8613, 2
  %8615 = call float @dx.op.binary.f32(i32 36, float %8614, float %8612)  ; FMin(a,b)
  %8616 = fsub fast float -0.000000e+00, %8614
  %8617 = fcmp fast ogt float %8615, %8616
  br i1 %8617, label %8618, label %8930, !dx.controlflow.hints !175

; <label>:8618                                    ; preds = %8563
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 3
  %8621 = fcmp fast ogt float %8620, 0.000000e+00
  br i1 %8621, label %8622, label %8697, !dx.controlflow.hints !176

; <label>:8622                                    ; preds = %8618
  %8623 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8624 = extractvalue %dx.types.Dimensions %8623, 0
  %8625 = sitofp i32 %8624 to float
  %8626 = extractvalue %dx.types.Dimensions %8623, 1
  %8627 = sitofp i32 %8626 to float
  %8628 = fmul fast float %8567, %8625
  %8629 = fmul fast float %8568, %8627
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8632 = fsub fast float -0.000000e+00, %8631
  %8633 = fptoui float %8632 to i32
  %8634 = fptoui float %8628 to i32
  %8635 = fptoui float %8629 to i32
  %8636 = and i32 %8633, 31
  %8637 = lshr i32 %8634, %8636
  %8638 = lshr i32 %8635, %8636
  %8639 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8633, i32 %8637, i32 %8638, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = fcmp fast olt float %8640, -1.000000e+00
  %8642 = fcmp fast ogt float %8640, -1.000000e+00
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8645 = select i1 %8642, float %8644, float 1.000000e+00
  %8646 = fadd fast float %8640, 1.000000e+00
  %8647 = fmul fast float %8645, %8646
  %8648 = call float @dx.op.unary.f32(i32 6, float %8647)  ; FAbs(value)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8650 = fcmp fast oge float %8648, %8649
  %8651 = select i1 %8650, float 0x4197782600000000, float %8648
  %8652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.CBufRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.CBufRet.f32 %8652, 2
  %8656 = select i1 %8641, float %8653, float %8574
  %8657 = select i1 %8641, float %8654, float %8575
  %8658 = select i1 %8641, float %8655, float %8576
  %8659 = fmul fast float %8656, %8571
  %8660 = fmul fast float %8657, %8571
  %8661 = fmul fast float %8658, %8571
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 0
  %8664 = extractvalue %dx.types.CBufRet.f32 %8662, 1
  %8665 = extractvalue %dx.types.CBufRet.f32 %8662, 2
  %8666 = select i1 %8641, float %8663, float %8581
  %8667 = select i1 %8641, float %8664, float %8582
  %8668 = select i1 %8641, float %8665, float %8583
  %8669 = fmul fast float %8666, %8572
  %8670 = fmul fast float %8667, %8572
  %8671 = fmul fast float %8668, %8572
  %8672 = fadd fast float %8669, %8659
  %8673 = fadd fast float %8670, %8660
  %8674 = fadd fast float %8671, %8661
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.CBufRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %8679 = select i1 %8641, float %8676, float %8588
  %8680 = select i1 %8641, float %8677, float %8589
  %8681 = select i1 %8641, float %8678, float %8590
  %8682 = fadd fast float %8672, %8679
  %8683 = fadd fast float %8673, %8680
  %8684 = fadd fast float %8674, %8681
  %8685 = fmul fast float %8682, %8651
  %8686 = fmul fast float %8683, %8651
  %8687 = fmul fast float %8684, %8651
  %8688 = fmul fast float %8685, %8685
  %8689 = fmul fast float %8686, %8686
  %8690 = fadd fast float %8688, %8689
  %8691 = fmul fast float %8687, %8687
  %8692 = fadd fast float %8690, %8691
  %8693 = call float @dx.op.unary.f32(i32 24, float %8692)  ; Sqrt(value)
  %8694 = fsub fast float %8693, %8606
  %8695 = fmul fast float %8694, %8608
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  br label %8697

; <label>:8697                                    ; preds = %8622, %8618
  %8698 = phi float [ %8696, %8622 ], [ 1.000000e+00, %8618 ]
  %8699 = fmul fast float %8615, 5.000000e-01
  %8700 = fadd fast float %8699, 5.000000e-01
  %8701 = call float @dx.op.unary.f32(i32 22, float %8700)  ; Frc(value)
  %8702 = call float @dx.op.unary.f32(i32 27, float %8701)  ; Round_ni(value)
  %8703 = call float @dx.op.unary.f32(i32 22, float %8701)  ; Frc(value)
  %8704 = fmul fast float %8703, 2.000000e+00
  %8705 = fadd fast float %8704, -1.000000e+00
  %8706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8567, float %8568, float %8702, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8707 = extractvalue %dx.types.ResRet.f32 %8706, 0
  %8708 = extractvalue %dx.types.ResRet.f32 %8706, 1
  %8709 = extractvalue %dx.types.ResRet.f32 %8706, 2
  %8710 = extractvalue %dx.types.ResRet.f32 %8706, 3
  %8711 = fadd fast float %8707, -5.000000e-01
  %8712 = fadd fast float %8709, -5.000000e-01
  %8713 = fmul fast float %8711, 0xBFD5555560000000
  %8714 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8712, float %8713)  ; FMad(a,b,c)
  %8715 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8708, float 0.000000e+00)  ; FMad(a,b,c)
  %8716 = fadd fast float %8715, %8710
  %8717 = fmul fast float %8711, -7.500000e-01
  %8718 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8712, float %8717)  ; FMad(a,b,c)
  %8719 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8708, float 0.000000e+00)  ; FMad(a,b,c)
  %8720 = fadd fast float %8719, %8710
  %8721 = call float @dx.op.binary.f32(i32 35, float %8714, float -1.000000e+00)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 35, float %8716, float -1.000000e+00)  ; FMax(a,b)
  %8723 = call float @dx.op.binary.f32(i32 35, float %8718, float -1.000000e+00)  ; FMax(a,b)
  %8724 = call float @dx.op.binary.f32(i32 35, float %8720, float -1.000000e+00)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8721, float 1.000000e+00)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8722, float 1.000000e+00)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8723, float 1.000000e+00)  ; FMin(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8724, float 1.000000e+00)  ; FMin(a,b)
  %8729 = fcmp fast olt float %8725, 0x3FEFFF8020000000
  br i1 %8729, label %8730, label %8845, !dx.controlflow.hints !177

; <label>:8730                                    ; preds = %8697
  %8731 = extractvalue %dx.types.CBufRet.f32 %8613, 3
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 0
  %8734 = extractvalue %dx.types.CBufRet.f32 %8732, 1
  %8735 = extractvalue %dx.types.CBufRet.f32 %8732, 2
  %8736 = extractvalue %dx.types.CBufRet.f32 %8732, 3
  %8737 = fsub fast float %8733, %8725
  %8738 = fsub fast float %8734, %8726
  %8739 = fsub fast float %8735, %8727
  %8740 = fsub fast float %8736, %8728
  %8741 = fmul fast float %8737, %8731
  %8742 = fmul fast float %8738, %8731
  %8743 = fmul fast float %8739, %8731
  %8744 = fmul fast float %8740, %8731
  %8745 = fadd fast float %8741, %8725
  %8746 = fadd fast float %8742, %8726
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = fadd fast float %8743, %8727
  %8749 = fadd fast float %8744, %8728
  %8750 = fmul fast float %8745, %8745
  %8751 = fsub fast float %8746, %8750
  %8752 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8751)  ; FMax(a,b)
  %8753 = fdiv fast float 1.000000e+00, %8752
  %8754 = fmul fast float %8746, %8745
  %8755 = fsub fast float %8748, %8754
  %8756 = fsub fast float %8705, %8745
  %8757 = fmul fast float %8705, %8705
  %8758 = fsub fast float %8757, %8746
  %8759 = fmul fast float %8756, %8753
  %8760 = fmul fast float %8759, %8755
  %8761 = fsub fast float %8758, %8760
  %8762 = fmul fast float %8746, %8746
  %8763 = fsub fast float %8749, %8762
  %8764 = fmul fast float %8755, %8755
  %8765 = fmul fast float %8764, %8753
  %8766 = fsub fast float %8763, %8765
  %8767 = fdiv fast float %8761, %8766
  %8768 = fmul fast float %8755, %8767
  %8769 = fsub fast float %8756, %8768
  %8770 = fmul fast float %8769, %8753
  %8771 = fmul fast float %8770, %8745
  %8772 = fsub fast float 1.000000e+00, %8771
  %8773 = fmul fast float %8746, %8767
  %8774 = fsub fast float %8772, %8773
  %8775 = fmul fast float %8770, %8770
  %8776 = fmul fast float %8767, 4.000000e+00
  %8777 = fmul fast float %8776, %8774
  %8778 = fsub fast float %8775, %8777
  %8779 = call float @dx.op.unary.f32(i32 24, float %8778)  ; Sqrt(value)
  %8780 = fcmp fast oge float %8770, 0.000000e+00
  %8781 = fsub fast float -0.000000e+00, %8779
  %8782 = select i1 %8780, float %8781, float %8779
  %8783 = fsub fast float %8782, %8770
  %8784 = fdiv fast float %8783, %8767
  %8785 = fdiv fast float %8774, %8783
  %8786 = fmul fast float %8784, 5.000000e-01
  %8787 = fmul fast float %8785, 2.000000e+00
  %8788 = select i1 %8780, float %8786, float %8787
  %8789 = select i1 %8780, float %8787, float %8786
  %8790 = call float @dx.op.binary.f32(i32 35, float %8788, float %8789)  ; FMax(a,b)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8788, float %8789)  ; FMin(a,b)
  %8792 = fcmp fast ogt float %8705, %8791
  br i1 %8792, label %8793, label %8803

; <label>:8793                                    ; preds = %8730
  %8794 = fsub fast float %8705, %8791
  %8795 = fsub fast float %8790, %8791
  %8796 = fmul fast float %8794, %8795
  %8797 = fmul fast float %8790, %8705
  %8798 = fadd fast float %8790, %8705
  %8799 = fmul fast float %8798, %8745
  %8800 = fadd fast float %8797, %8746
  %8801 = fsub fast float %8800, %8799
  %8802 = fdiv fast float %8801, %8796
  br label %8803

; <label>:8803                                    ; preds = %8793, %8730
  %8804 = phi float [ %8802, %8793 ], [ 0.000000e+00, %8730 ]
  %8805 = fcmp fast ogt float %8705, %8790
  %8806 = fsub fast float %8705, %8790
  br i1 %8805, label %8807, label %8817

; <label>:8807                                    ; preds = %8803
  %8808 = fsub fast float %8790, %8791
  %8809 = fmul fast float %8808, %8806
  %8810 = fmul fast float %8791, %8705
  %8811 = fadd fast float %8791, %8705
  %8812 = fmul fast float %8811, %8745
  %8813 = fsub fast float %8747, %8810
  %8814 = fadd fast float %8813, %8812
  %8815 = fdiv fast float %8814, %8809
  %8816 = fadd fast float %8815, %8804
  br label %8817

; <label>:8817                                    ; preds = %8807, %8803
  %8818 = phi float [ %8816, %8807 ], [ %8804, %8803 ]
  %8819 = fsub fast float %8705, %8791
  %8820 = fmul fast float %8819, %8806
  %8821 = fmul fast float %8791, %8790
  %8822 = fadd fast float %8791, %8790
  %8823 = fmul fast float %8822, %8745
  %8824 = fadd fast float %8821, %8746
  %8825 = fsub fast float %8824, %8823
  %8826 = fdiv fast float %8825, %8820
  %8827 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8828 = fcmp fast oeq float %7496, 0.000000e+00
  %8829 = extractvalue %dx.types.CBufRet.f32 %8613, 0
  %8830 = fcmp fast oeq float %8829, 0.000000e+00
  %8831 = or i1 %8828, %8830
  %8832 = fmul fast float %8829, 2.000000e+00
  %8833 = fadd fast float %8614, %8615
  %8834 = fdiv fast float %8833, %8832
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fmul fast float %8835, 2.000000e+00
  %8837 = fsub fast float 3.000000e+00, %8836
  %8838 = fmul fast float %8835, %8835
  %8839 = fmul fast float %8838, %8837
  %8840 = select i1 %8831, float 1.000000e+00, float %8839
  %8841 = fmul fast float %8826, %7496
  %8842 = fadd fast float %8827, %8841
  %8843 = call float @dx.op.unary.f32(i32 7, float %8842)  ; Saturate(value)
  %8844 = fmul fast float %8840, %8843
  br label %8845

; <label>:8845                                    ; preds = %8817, %8697
  %8846 = phi float [ %8844, %8817 ], [ 0.000000e+00, %8697 ]
  %8847 = fsub fast float 1.000000e+00, %8846
  %8848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8567, float %8568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8849 = extractvalue %dx.types.ResRet.f32 %8848, 0
  %8850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.i32 %8850, 2
  %8852 = icmp eq i32 %8851, 0
  br i1 %8852, label %8858, label %8853

; <label>:8853                                    ; preds = %8845
  %8854 = call float @dx.op.unary.f32(i32 7, float %8846)  ; Saturate(value)
  %8855 = fadd fast float %8849, -1.000000e+00
  %8856 = fmul fast float %8854, %8855
  %8857 = fadd fast float %8856, 1.000000e+00
  br label %8858

; <label>:8858                                    ; preds = %8853, %8845
  %8859 = phi float [ %8857, %8853 ], [ %8847, %8845 ]
  br i1 %8621, label %8860, label %8878

; <label>:8860                                    ; preds = %8858
  %8861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8862 = extractvalue %dx.types.CBufRet.f32 %8861, 1
  %8863 = fsub fast float %8698, %8862
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = fsub fast float %8698, %8620
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = fsub fast float %8864, %8866
  %8868 = fsub fast float %8700, %8866
  %8869 = fdiv fast float %8868, %8867
  %8870 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8871 = fmul fast float %8870, 2.000000e+00
  %8872 = fsub fast float 3.000000e+00, %8871
  %8873 = fsub fast float %8849, %8859
  %8874 = fmul fast float %8870, %8870
  %8875 = fmul fast float %8874, %8873
  %8876 = fmul fast float %8875, %8872
  %8877 = fadd fast float %8876, %8859
  br label %8878

; <label>:8878                                    ; preds = %8860, %8858
  %8879 = phi float [ %8877, %8860 ], [ %8859, %8858 ]
  %8880 = call float @dx.op.binary.f32(i32 35, float %8849, float %8879)  ; FMax(a,b)
  %8881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.i32 %8881, 2
  %8883 = and i32 %8882, 1
  %8884 = icmp eq i32 %8883, 0
  %8885 = fcmp fast une float %8880, 1.000000e+00
  %8886 = and i1 %8885, %8884
  br i1 %8886, label %8887, label %8906

; <label>:8887                                    ; preds = %8878
  %8888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8567, float %8568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8889 = extractvalue %dx.types.ResRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.ResRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.ResRet.f32 %8888, 2
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8894 = fmul fast float %8893, %8889
  %8895 = fmul fast float %8893, %8890
  %8896 = fmul fast float %8893, %8891
  %8897 = fcmp fast ogt float %8849, 0x3FEFFF2E40000000
  %8898 = fsub fast float 1.000000e+00, %8880
  %8899 = fsub fast float 1.000000e+00, %8849
  %8900 = fdiv fast float %8898, %8899
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = select i1 %8897, float 0.000000e+00, float %8901
  %8903 = fmul fast float %8894, %8902
  %8904 = fmul fast float %8895, %8902
  %8905 = fmul fast float %8896, %8902
  br label %8906

; <label>:8906                                    ; preds = %8887, %8878
  %8907 = phi float [ 0.000000e+00, %8878 ], [ %8903, %8887 ]
  %8908 = phi float [ 0.000000e+00, %8878 ], [ %8904, %8887 ]
  %8909 = phi float [ 0.000000e+00, %8878 ], [ %8905, %8887 ]
  %8910 = fmul fast float %8907, %7484
  %8911 = fmul fast float %8908, %7484
  %8912 = fmul fast float %8909, %7484
  %8913 = fmul fast float %8880, %8542
  %8914 = call float @dx.op.dot3.f32(i32 55, float %8880, float %8880, float %8880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8915 = call float @dx.op.dot3.f32(i32 55, float %8910, float %8911, float %8912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8916 = select i1 %271, float %8914, float %8880
  %8917 = select i1 %271, float 1.000000e+00, float %8880
  %8918 = select i1 %271, float %8915, float %8910
  %8919 = select i1 %271, float 0.000000e+00, float %8911
  %8920 = select i1 %271, float 0.000000e+00, float %8912
  %8921 = fmul fast float %8916, %8554
  %8922 = fmul fast float %8916, %8555
  %8923 = fmul fast float %8917, %8556
  %8924 = fadd fast float %8921, %8918
  %8925 = fadd fast float %8922, %8919
  %8926 = fadd fast float %8920, %8923
  %8927 = fmul fast float %8916, %8557
  %8928 = fmul fast float %8916, %8558
  %8929 = fmul fast float %8917, %8559
  br label %8930

; <label>:8930                                    ; preds = %8906, %8563, %8532, %7764
  %8931 = phi float [ %7769, %7764 ], [ %8554, %8532 ], [ %8924, %8906 ], [ %8554, %8563 ]
  %8932 = phi float [ %7770, %7764 ], [ %8555, %8532 ], [ %8925, %8906 ], [ %8555, %8563 ]
  %8933 = phi float [ %7771, %7764 ], [ %8556, %8532 ], [ %8926, %8906 ], [ %8556, %8563 ]
  %8934 = phi float [ %7772, %7764 ], [ %8557, %8532 ], [ %8927, %8906 ], [ %8557, %8563 ]
  %8935 = phi float [ %7773, %7764 ], [ %8558, %8532 ], [ %8928, %8906 ], [ %8558, %8563 ]
  %8936 = phi float [ %7774, %7764 ], [ %8559, %8532 ], [ %8929, %8906 ], [ %8559, %8563 ]
  %8937 = phi float [ %7775, %7764 ], [ %8542, %8532 ], [ %8913, %8906 ], [ %8542, %8563 ]
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8941 = fmul fast float %8939, %116
  %8942 = fmul fast float %8940, %117
  %8943 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8944 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8945 = select i1 %7506, i32 2, i32 0
  %8946 = or i32 %8945, 1
  %8947 = uitofp i32 %8946 to float
  %8948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8943, float %8944, float %8947, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8949 = extractvalue %dx.types.ResRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.ResRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.ResRet.f32 %8948, 2
  %8952 = extractvalue %dx.types.ResRet.f32 %8948, 3
  %8953 = add nuw nsw i32 %8945, 2
  %8954 = uitofp i32 %8953 to float
  %8955 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8943, float %8944, float %8954, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8956 = extractvalue %dx.types.ResRet.f32 %8955, 0
  %8957 = extractvalue %dx.types.ResRet.f32 %8955, 1
  %8958 = extractvalue %dx.types.ResRet.f32 %8955, 2
  %8959 = extractvalue %dx.types.ResRet.f32 %8955, 3
  %8960 = call float @dx.op.binary.f32(i32 35, float %8950, float %8951)  ; FMax(a,b)
  %8961 = call float @dx.op.binary.f32(i32 35, float %8949, float %8960)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 35, float %8961, float %8952)  ; FMax(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8957, float %8958)  ; FMin(a,b)
  %8964 = call float @dx.op.binary.f32(i32 36, float %8956, float %8963)  ; FMin(a,b)
  %8965 = call float @dx.op.binary.f32(i32 36, float %8964, float %8959)  ; FMin(a,b)
  %8966 = fmul fast float %8962, 2.550000e+02
  %8967 = fadd fast float %8966, 0x3F70101020000000
  %8968 = fptoui float %8967 to i32
  %8969 = fmul fast float %8965, 2.550000e+02
  %8970 = fadd fast float %8969, 0x3F70101020000000
  %8971 = fptoui float %8970 to i32
  %8972 = icmp ult i32 %8968, %8971
  br i1 %8972, label %8973, label %9142

; <label>:8973                                    ; preds = %8930
  %8974 = fcmp fast ogt float %106, 9.843750e-01
  %8975 = fadd fast float %7768, -4.000000e+00
  %8976 = select i1 %8974, float -4.000000e+00, float %8975
  %8977 = call float @dx.op.binary.f32(i32 35, float %8976, float 0.000000e+00)  ; FMax(a,b)
  %8978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8978, 0
  %8980 = fadd fast float %8979, %8977
  %8981 = extractvalue %dx.types.CBufRet.f32 %8978, 2
  %8982 = fmul fast float %8980, %8981
  %8983 = call float @dx.op.unary.f32(i32 23, float %8982)  ; Log(value)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8978, 3
  %8985 = fmul fast float %8984, %8983
  %8986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.f32 %8986, 2
  %8988 = fmul fast float %8985, %8987
  %8989 = call float @dx.op.unary.f32(i32 7, float %8988)  ; Saturate(value)
  %8990 = uitofp i32 %8968 to float
  %8991 = uitofp i32 %8971 to float
  %8992 = fadd fast float %8990, 5.000000e-01
  %8993 = fadd fast float %8991, 5.000000e-01
  %8994 = fmul fast float %8987, %8992
  %8995 = fmul fast float %8987, %8993
  %8996 = fadd fast float %8994, 0x3F0FFB4800000000
  %8997 = fadd fast float %8995, 0xBF0FFB4800000000
  %8998 = call float @dx.op.binary.f32(i32 35, float %8989, float %8996)  ; FMax(a,b)
  %8999 = call float @dx.op.binary.f32(i32 36, float %8998, float %8997)  ; FMin(a,b)
  %9000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.f32 %9000, 1
  %9002 = extractvalue %dx.types.CBufRet.f32 %9000, 2
  %9003 = extractvalue %dx.types.CBufRet.f32 %9000, 0
  %9004 = select i1 %7506, float %9003, float 0.000000e+00
  %9005 = fmul fast float %9001, %8999
  %9006 = fadd fast float %9004, %9005
  %9007 = fadd fast float %9004, %9002
  %9008 = fsub fast float %9001, %9002
  %9009 = fadd fast float %9008, %9004
  %9010 = call float @dx.op.binary.f32(i32 35, float %9006, float %9007)  ; FMax(a,b)
  %9011 = call float @dx.op.binary.f32(i32 36, float %9010, float %9009)  ; FMin(a,b)
  %9012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8943, float %8944, float %9011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9013 = extractvalue %dx.types.ResRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.ResRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.ResRet.f32 %9012, 2
  %9016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.i32 %9016, 0
  %9018 = extractvalue %dx.types.CBufRet.i32 %9016, 1
  %9019 = uitofp i32 %9017 to float
  %9020 = uitofp i32 %9018 to float
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = fmul fast float %9019, %8943
  %9025 = fmul fast float %9020, %8944
  %9026 = fadd fast float %9024, -5.000000e-01
  %9027 = fadd fast float %9025, -5.000000e-01
  %9028 = call float @dx.op.unary.f32(i32 22, float %9026)  ; Frc(value)
  %9029 = call float @dx.op.unary.f32(i32 22, float %9027)  ; Frc(value)
  %9030 = fmul fast float %9028, %9028
  %9031 = fmul fast float %9030, %9028
  %9032 = fsub fast float 3.000000e+00, %9028
  %9033 = fmul fast float %9030, %9032
  %9034 = fmul fast float %9028, 3.000000e+00
  %9035 = fmul fast float %9031, 3.000000e+00
  %9036 = fmul fast float %9030, 6.000000e+00
  %9037 = fsub fast float %9035, %9036
  %9038 = fadd fast float %9037, 4.000000e+00
  %9039 = fmul fast float %9038, 0x3FC5555560000000
  %9040 = fmul fast float %9031, -3.000000e+00
  %9041 = fadd fast float %9030, %9028
  %9042 = fmul fast float %9041, 3.000000e+00
  %9043 = fadd fast float %9040, 1.000000e+00
  %9044 = fadd fast float %9043, %9042
  %9045 = fmul fast float %9031, 0x3FC5555560000000
  %9046 = fmul fast float %9029, %9029
  %9047 = fmul fast float %9046, %9029
  %9048 = fsub fast float 3.000000e+00, %9029
  %9049 = fmul fast float %9046, %9048
  %9050 = fmul fast float %9029, 3.000000e+00
  %9051 = fmul fast float %9047, 3.000000e+00
  %9052 = fmul fast float %9046, 6.000000e+00
  %9053 = fsub fast float %9051, %9052
  %9054 = fadd fast float %9053, 4.000000e+00
  %9055 = fmul fast float %9054, 0x3FC5555560000000
  %9056 = fmul fast float %9047, -3.000000e+00
  %9057 = fadd fast float %9046, %9029
  %9058 = fmul fast float %9057, 3.000000e+00
  %9059 = fadd fast float %9056, 1.000000e+00
  %9060 = fadd fast float %9059, %9058
  %9061 = fmul fast float %9047, 0x3FC5555560000000
  %9062 = fadd fast float %9028, 1.000000e+00
  %9063 = fsub fast float 1.000000e+00, %9034
  %9064 = fadd fast float %9063, %9033
  %9065 = fadd fast float %9064, %9038
  %9066 = fmul fast float %9065, 0x3FC5555560000000
  %9067 = fdiv fast float %9039, %9066
  %9068 = fsub fast float %9062, %9067
  %9069 = fsub fast float 1.000000e+00, %9028
  %9070 = fadd fast float %9044, %9031
  %9071 = fmul fast float %9070, 0x3FC5555560000000
  %9072 = fdiv fast float %9045, %9071
  %9073 = fadd fast float %9069, %9072
  %9074 = fadd fast float %9029, 1.000000e+00
  %9075 = fsub fast float 1.000000e+00, %9050
  %9076 = fadd fast float %9075, %9049
  %9077 = fadd fast float %9076, %9054
  %9078 = fmul fast float %9077, 0x3FC5555560000000
  %9079 = fdiv fast float %9055, %9078
  %9080 = fsub fast float %9074, %9079
  %9081 = fsub fast float 1.000000e+00, %9029
  %9082 = fadd fast float %9060, %9047
  %9083 = fmul fast float %9082, 0x3FC5555560000000
  %9084 = fdiv fast float %9061, %9083
  %9085 = fadd fast float %9084, %9081
  %9086 = fmul fast float %9068, %9022
  %9087 = fsub fast float %8943, %9086
  %9088 = fmul fast float %9073, %9022
  %9089 = fadd fast float %9088, %8943
  %9090 = fmul fast float %9085, %9023
  %9091 = fadd fast float %9090, %8944
  %9092 = fmul fast float %9080, %9023
  %9093 = fsub fast float %8944, %9092
  %9094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9087, float %9093, float %9011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9095 = extractvalue %dx.types.ResRet.f32 %9094, 0
  %9096 = extractvalue %dx.types.ResRet.f32 %9094, 1
  %9097 = extractvalue %dx.types.ResRet.f32 %9094, 2
  %9098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9089, float %9093, float %9011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9099 = extractvalue %dx.types.ResRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.ResRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.ResRet.f32 %9098, 2
  %9102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9087, float %9091, float %9011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9103 = extractvalue %dx.types.ResRet.f32 %9102, 0
  %9104 = extractvalue %dx.types.ResRet.f32 %9102, 1
  %9105 = extractvalue %dx.types.ResRet.f32 %9102, 2
  %9106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9089, float %9091, float %9011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9107 = extractvalue %dx.types.ResRet.f32 %9106, 0
  %9108 = extractvalue %dx.types.ResRet.f32 %9106, 1
  %9109 = extractvalue %dx.types.ResRet.f32 %9106, 2
  %9110 = fsub fast float %9103, %9095
  %9111 = fsub fast float %9104, %9096
  %9112 = fsub fast float %9105, %9097
  %9113 = fmul fast float %9110, %9083
  %9114 = fmul fast float %9111, %9083
  %9115 = fmul fast float %9112, %9083
  %9116 = fadd fast float %9113, %9095
  %9117 = fadd fast float %9114, %9096
  %9118 = fadd fast float %9115, %9097
  %9119 = fsub fast float %9107, %9099
  %9120 = fsub fast float %9108, %9100
  %9121 = fsub fast float %9109, %9101
  %9122 = fmul fast float %9119, %9083
  %9123 = fmul fast float %9120, %9083
  %9124 = fmul fast float %9121, %9083
  %9125 = fsub fast float %9099, %9116
  %9126 = fadd fast float %9125, %9122
  %9127 = fsub fast float %9100, %9117
  %9128 = fadd fast float %9127, %9123
  %9129 = fsub fast float %9101, %9118
  %9130 = fadd fast float %9129, %9124
  %9131 = fmul fast float %9126, %9071
  %9132 = fmul fast float %9128, %9071
  %9133 = fmul fast float %9130, %9071
  %9134 = fadd fast float %9131, %9116
  %9135 = fadd fast float %9132, %9117
  %9136 = fadd fast float %9133, %9118
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9139 = fmul fast float %9134, %9138
  %9140 = fmul fast float %9135, %9138
  %9141 = fmul fast float %9136, %9138
  br label %9142

; <label>:9142                                    ; preds = %8973, %8930
  %9143 = phi float [ %9013, %8973 ], [ 1.000000e+00, %8930 ]
  %9144 = phi float [ %9014, %8973 ], [ 1.000000e+00, %8930 ]
  %9145 = phi float [ %9015, %8973 ], [ 1.000000e+00, %8930 ]
  %9146 = phi float [ %9139, %8973 ], [ 0.000000e+00, %8930 ]
  %9147 = phi float [ %9140, %8973 ], [ 0.000000e+00, %8930 ]
  %9148 = phi float [ %9141, %8973 ], [ 0.000000e+00, %8930 ]
  %9149 = fmul fast float %9146, %7484
  %9150 = fmul fast float %9147, %7484
  %9151 = fmul fast float %9148, %7484
  %9152 = fmul fast float %9143, %8937
  %9153 = call float @dx.op.dot3.f32(i32 55, float %9143, float %9144, float %9145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9154 = call float @dx.op.dot3.f32(i32 55, float %9149, float %9150, float %9151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9155 = select i1 %271, float %9153, float %9143
  %9156 = select i1 %271, float %9153, float %9144
  %9157 = select i1 %271, float 1.000000e+00, float %9145
  %9158 = select i1 %271, float %9154, float %9149
  %9159 = select i1 %271, float 0.000000e+00, float %9150
  %9160 = select i1 %271, float 0.000000e+00, float %9151
  %9161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.i32 %9161, 3
  %9163 = and i32 %9162, 3
  %9164 = icmp ne i32 %9163, 0
  %9165 = and i32 %9162, 4
  %9166 = icmp ne i32 %9165, 0
  %9167 = and i1 %9164, %9166
  %9168 = and i1 %271, %9167
  br i1 %9168, label %9169, label %9175

; <label>:9169                                    ; preds = %9142
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 1
  %9172 = fadd fast float %9152, -1.000000e+00
  %9173 = fmul fast float %9171, %9172
  %9174 = fadd fast float %9173, 1.000000e+00
  br label %9175

; <label>:9175                                    ; preds = %9169, %9142
  %9176 = phi float [ %9174, %9169 ], [ %9152, %9142 ]
  %9177 = fadd fast float %8934, %8931
  %9178 = fmul fast float %9155, %9177
  %9179 = fadd fast float %9178, %9158
  %9180 = fadd fast float %8935, %8932
  %9181 = fmul fast float %9156, %9180
  %9182 = fadd fast float %9181, %9159
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 0
  br i1 %271, label %9185, label %9209

; <label>:9185                                    ; preds = %9175
  %9186 = fadd fast float %9179, %9182
  %9187 = fmul fast float %9184, %9186
  %9188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9189 = extractvalue %dx.types.CBufRet.f32 %9188, 3
  %9190 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %9191 = fsub fast float %7493, %7487
  %9192 = fadd fast float %9191, %7494
  %9193 = fsub fast float %9192, %9190
  %9194 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %9195 = fmul fast float %9193, %9194
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = fsub fast float %9196, %9189
  %9198 = fmul fast float %9197, %9176
  %9199 = fadd fast float %9198, %9189
  %9200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9201 = extractvalue %dx.types.CBufRet.f32 %9200, 0
  %9202 = fsub fast float %9199, %9201
  %9203 = fmul fast float %9202, 1.000000e+01
  %9204 = call float @dx.op.unary.f32(i32 7, float %9203)  ; Saturate(value)
  %9205 = fsub fast float %4095, %7484
  %9206 = fmul fast float %9204, %9205
  %9207 = fadd fast float %9206, %7484
  %9208 = fmul fast float %9207, %9199
  br label %9233

; <label>:9209                                    ; preds = %9175
  %9210 = fadd fast float %8936, %8933
  %9211 = fmul fast float %9157, %9210
  %9212 = fadd fast float %9211, %9160
  %9213 = fmul fast float %9184, %9179
  %9214 = fmul fast float %9184, %9182
  %9215 = fmul fast float %9184, %9212
  %9216 = call float @dx.op.binary.f32(i32 35, float %9214, float %9215)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9213, float %9216)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float %9217, float %7484)  ; FMax(a,b)
  %9219 = fcmp fast ugt float %9218, 0x3F10000000000000
  br i1 %9219, label %9221, label %9220

; <label>:9220                                    ; preds = %9209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9221

; <label>:9221                                    ; preds = %9220, %9209
  %9222 = add i32 %58, 356
  %9223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9222, i32 undef)  ; BufferLoad(srv,index,wot)
  %9224 = extractvalue %dx.types.ResRet.i32 %9223, 0
  %9225 = and i32 %9224, 32
  %9226 = icmp eq i32 %9225, 0
  br i1 %9226, label %9233, label %9227

; <label>:9227                                    ; preds = %9221
  %9228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9228, 0
  %9230 = fmul fast float %9229, 0x3FE99999A0000000
  %9231 = fadd fast float %9229, %9213
  %9232 = fadd fast float %9230, %9215
  br label %9233

; <label>:9233                                    ; preds = %9227, %9221, %9185
  %9234 = phi float [ %9187, %9185 ], [ %9231, %9227 ], [ %9213, %9221 ]
  %9235 = phi float [ %9208, %9185 ], [ %9214, %9227 ], [ %9214, %9221 ]
  %9236 = phi float [ %9207, %9185 ], [ %9232, %9227 ], [ %9215, %9221 ]
  %9237 = phi float [ %9207, %9185 ], [ %7484, %9227 ], [ %7484, %9221 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9238 = call float @dx.op.binary.f32(i32 36, float %9234, float 3.225500e+04)  ; FMin(a,b)
  %9239 = call float @dx.op.binary.f32(i32 36, float %9235, float 3.225500e+04)  ; FMin(a,b)
  %9240 = call float @dx.op.binary.f32(i32 36, float %9236, float 3.225500e+04)  ; FMin(a,b)
  %9241 = call float @dx.op.binary.f32(i32 36, float %9237, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9241)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

