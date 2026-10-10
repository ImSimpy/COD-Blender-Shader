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
; shader hash: 8b9ba346ee571918706221967552adac
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %205 = fmul fast float %108, 5.000000e-01
  %206 = fmul fast float %109, 5.000000e-01
  %207 = fptosi float %205 to i32
  %208 = fptosi float %206 to i32
  %209 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = lshr i32 %210, 18
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F4C00EBA0000000
  %214 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %215 = fadd fast float %214, -1.000000e+00
  %216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %217 = extractvalue %dx.types.Dimensions %216, 0
  %218 = sitofp i32 %217 to float
  %219 = extractvalue %dx.types.Dimensions %216, 1
  %220 = sitofp i32 %219 to float
  %221 = fcmp fast oge float %205, %218
  %222 = fcmp fast oge float %206, %220
  %223 = or i1 %221, %222
  %224 = select i1 %223, float 0x4197782600000000, float %215
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %108
  %229 = fmul fast float %227, %109
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 114688
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %233, float %228, float 0.000000e+00
  %235 = select i1 %233, float %229, float 0.000000e+00
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %51, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, 2.550000e+02
  %239 = fptoui float %238 to i32
  %240 = select i1 %233, i32 %239, i32 0
  %241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.i32 %241, 3
  %243 = and i32 %242, 3
  %244 = icmp ne i32 %243, 0
  %245 = and i32 %242, 4
  %246 = icmp ne i32 %245, 0
  %247 = and i1 %244, %246
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %0
  %249 = fmul fast float %143, %109
  %250 = fmul fast float %142, %108
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %50, float %250, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fcmp fast olt float %253, %255
  br label %260

; <label>:257                                     ; preds = %0
  %258 = icmp eq i32 %245, 0
  %259 = and i1 %244, %258
  br label %260

; <label>:260                                     ; preds = %257, %248
  %261 = phi i1 [ %256, %248 ], [ %259, %257 ]
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = fmul fast float %263, 0x3FE3C6EF40000000
  %265 = frem fast float %108, 2.560000e+02
  %266 = frem fast float %109, 2.560000e+02
  %267 = fptoui float %265 to i32
  %268 = fptoui float %266 to i32
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %267, i32 %268, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fadd fast float %270, %264
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = add i32 %56, 156
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %56, 216
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %56, 36
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %56, 288
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = mul i32 %58, 100
  %316 = add i32 %315, 28
  %317 = add i32 %315, 40
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = add i32 %56, 172
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %56, 232
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %56, 52
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %56, 304
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = shl i32 %361, 4
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %361, 7
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %361, 22
  %369 = shl nuw nsw i32 %368, 5
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = and i32 %319, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %364, float %325
  %374 = select i1 %372, float %367, float %328
  %375 = select i1 %372, float %370, float %331
  %376 = add i32 %315, 44
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fmul fast float %378, %373
  %380 = fmul fast float %378, %374
  %381 = fmul fast float %378, %375
  %382 = add i32 %315, 48
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = shl i32 %384, 4
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %384, 7
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %384, 22
  %392 = shl nuw nsw i32 %391, 5
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = and i32 %319, 8
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %387, float %337
  %397 = select i1 %395, float %390, float %341
  %398 = select i1 %395, float %393, float %345
  %399 = add i32 %315, 52
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = and i32 %319, 2
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %403, float %350
  %409 = select i1 %407, float %405, float %352
  %410 = add i32 %315, 56
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 65535
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %412, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = and i32 %319, 4
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %414, float %357
  %420 = fmul float %419, 0x3F50624DE0000000
  %421 = select i1 %418, float %416, float %359
  %422 = fmul float %421, 0x3F50624DE0000000
  %423 = add i32 %315, 60
  %424 = add i32 %315, 32
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %56, 188
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = shl i32 %429, 4
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %429, 7
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %429, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %56, 248
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %441, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = lshr i32 %441, 16
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = add i32 %56, 68
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %56, 320
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = shl i32 %468, 4
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %468, 7
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 22
  %476 = shl nuw nsw i32 %475, 5
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = and i32 %426, 1
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %471, float %432
  %481 = select i1 %479, float %474, float %435
  %482 = select i1 %479, float %477, float %438
  %483 = add i32 %315, 64
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = fmul fast float %485, %480
  %487 = fmul fast float %485, %481
  %488 = fmul fast float %485, %482
  %489 = add i32 %315, 68
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = shl i32 %491, 4
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %491, 7
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %491, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = and i32 %426, 8
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %494, float %444
  %504 = select i1 %502, float %497, float %448
  %505 = select i1 %502, float %500, float %452
  %506 = add i32 %315, 72
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 65535
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %508, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = and i32 %426, 2
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %510, float %457
  %516 = select i1 %514, float %512, float %459
  %517 = add i32 %315, 76
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 65535
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = lshr i32 %519, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = and i32 %426, 4
  %525 = icmp ne i32 %524, 0
  %526 = select i1 %525, float %521, float %464
  %527 = fmul float %526, 0x3F50624DE0000000
  %528 = select i1 %525, float %523, float %466
  %529 = fmul float %528, 0x3F50624DE0000000
  %530 = add i32 %315, 80
  %531 = add i32 %315, 36
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %56, 204
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = shl i32 %536, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %536, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %536, 22
  %544 = shl nuw nsw i32 %543, 5
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = add i32 %56, 264
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %550, 0x3F70101020000000
  %552 = lshr i32 %548, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %548, 16
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = add i32 %56, 84
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = add i32 %56, 336
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %569, 16
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = shl i32 %575, 4
  %577 = and i32 %576, 32752
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %575, 7
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %575, 22
  %583 = shl nuw nsw i32 %582, 5
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = and i32 %533, 1
  %586 = icmp ne i32 %585, 0
  %587 = select i1 %586, float %578, float %539
  %588 = select i1 %586, float %581, float %542
  %589 = select i1 %586, float %584, float %545
  %590 = add i32 %315, 84
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = fmul fast float %592, %587
  %594 = fmul fast float %592, %588
  %595 = fmul fast float %592, %589
  %596 = add i32 %315, 88
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = shl i32 %598, 4
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %598, 7
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %598, 22
  %606 = shl nuw nsw i32 %605, 5
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = and i32 %533, 8
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, float %601, float %551
  %611 = select i1 %609, float %604, float %555
  %612 = select i1 %609, float %607, float %559
  %613 = add i32 %315, 92
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %615, 16
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = and i32 %533, 2
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %617, float %564
  %623 = select i1 %621, float %619, float %566
  %624 = add i32 %315, 96
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 65535
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = lshr i32 %626, 16
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = and i32 %533, 4
  %632 = icmp ne i32 %631, 0
  %633 = select i1 %632, float %628, float %571
  %634 = fmul float %633, 0x3F50624DE0000000
  %635 = select i1 %632, float %630, float %573
  %636 = fmul float %635, 0x3F50624DE0000000
  %637 = add i32 %56, 348
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 32
  %641 = icmp eq i32 %640, 0
  %642 = and i32 %639, 64
  %643 = icmp eq i32 %642, 0
  %644 = and i32 %639, 128
  %645 = icmp eq i32 %644, 0
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 2
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %665, label %650

; <label>:650                                     ; preds = %260
  %651 = add i32 %56, 508
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  %661 = fmul fast float %660, %92
  %662 = fmul fast float %657, %93
  %663 = fmul fast float %658, %94
  %664 = fmul fast float %659, %95
  br label %665

; <label>:665                                     ; preds = %650, %260
  %666 = phi float [ %95, %260 ], [ %664, %650 ]
  %667 = phi float [ %94, %260 ], [ %663, %650 ]
  %668 = phi float [ %93, %260 ], [ %662, %650 ]
  %669 = phi float [ %92, %260 ], [ %661, %650 ]
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 2
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %693, label %674

; <label>:674                                     ; preds = %665
  %675 = add i32 %56, 44
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 1
  %679 = icmp ne i32 %678, 0
  %680 = select i1 %679, float %668, float 1.000000e+00
  %681 = add i32 %56, 60
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, float %667, float 1.000000e+00
  %687 = add i32 %56, 76
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 1
  %691 = icmp ne i32 %690, 0
  %692 = select i1 %691, float %666, float 1.000000e+00
  br label %693

; <label>:693                                     ; preds = %674, %665
  %694 = phi float [ %666, %665 ], [ %692, %674 ]
  %695 = phi float [ %667, %665 ], [ %686, %674 ]
  %696 = phi float [ %668, %665 ], [ %680, %674 ]
  %697 = lshr i32 %671, 20
  %698 = and i32 %697, 3
  %699 = add nuw nsw i32 %698, 1
  %700 = add i32 %56, 24
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %56, 28
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = or i32 %705, %702
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %1311, label %708

; <label>:708                                     ; preds = %693
  %709 = and i32 %702, 262144
  %710 = icmp ne i32 %709, 0
  %711 = select i1 %710, float %63, float 1.000000e+00
  %712 = select i1 %710, float %64, float 0.000000e+00
  %713 = select i1 %710, float %65, float 0.000000e+00
  %714 = select i1 %710, float %66, float 1.000000e+00
  %715 = select i1 %710, float %67, float %90
  %716 = select i1 %710, float %68, float %91
  %717 = add i32 %56, 284
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = lshr i32 %719, 16
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = fmul fast float %721, 0x3F50624DE0000000
  %723 = add i32 %56, 88
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = lshr i32 %725, 16
  %727 = and i32 %726, 255
  %728 = lshr i32 %725, 24
  %729 = add i32 %56, 292
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 65535
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = lshr i32 %731, 16
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = add i32 %56, 32
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 22
  %740 = shl nuw nsw i32 %739, 5
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = shl i32 %738, 4
  %743 = and i32 %742, 32752
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = lshr i32 %738, 7
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %750 = fmul fast float %749, 1.000000e+03
  %751 = fmul fast float %313, %750
  %752 = call float @dx.op.unary.f32(i32 22, float %751)  ; Frc(value)
  %753 = fadd fast float %752, %303
  %754 = fmul fast float %314, %750
  %755 = call float @dx.op.unary.f32(i32 22, float %754)  ; Frc(value)
  %756 = fadd fast float %755, %305
  %757 = fmul fast float %722, %750
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fmul fast float %758, 0x401921FB60000000
  %760 = fadd fast float %759, %741
  %761 = call float @dx.op.unary.f32(i32 13, float %760)  ; Sin(value)
  %762 = call float @dx.op.unary.f32(i32 12, float %760)  ; Cos(value)
  %763 = fsub fast float -0.000000e+00, %761
  %764 = fadd fast float %715, -5.000000e-01
  %765 = fadd fast float %716, -5.000000e-01
  %766 = fmul fast float %733, %764
  %767 = fmul fast float %735, %765
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fmul fast float %744, %768
  %771 = fmul fast float %747, %769
  %772 = fmul fast float %762, %770
  %773 = call float @dx.op.tertiary.f32(i32 46, float %763, float %771, float %772)  ; FMad(a,b,c)
  %774 = fmul fast float %761, %770
  %775 = call float @dx.op.tertiary.f32(i32 46, float %762, float %771, float %774)  ; FMad(a,b,c)
  %776 = fadd fast float %753, %773
  %777 = fadd fast float %756, %775
  %778 = icmp ugt i32 %727, 1
  %779 = icmp ugt i32 %725, 33554431
  %780 = or i1 %779, %778
  br i1 %780, label %781, label %806

; <label>:781                                     ; preds = %708
  %782 = add i32 %56, 228
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = lshr i32 %784, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %749, %786
  %788 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %789 = mul nuw nsw i32 %727, %728
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %788, %790
  %792 = call float @dx.op.unary.f32(i32 27, float %791)  ; Round_ni(value)
  %793 = fptoui float %792 to i32
  %794 = urem i32 %793, %727
  %795 = udiv i32 %793, %728
  %796 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %797 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %798 = uitofp i32 %794 to float
  %799 = uitofp i32 %795 to float
  %800 = fadd fast float %796, %798
  %801 = fadd fast float %797, %799
  %802 = uitofp i32 %727 to float
  %803 = uitofp i32 %728 to float
  %804 = fdiv fast float %800, %802
  %805 = fdiv fast float %801, %803
  br label %806

; <label>:806                                     ; preds = %781, %708
  %807 = phi float [ %804, %781 ], [ %776, %708 ]
  %808 = phi float [ %805, %781 ], [ %777, %708 ]
  %809 = and i32 %702, 256
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %857, label %811

; <label>:811                                     ; preds = %806
  %812 = add i32 %56, 440
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %814, 0
  %816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %816, %dx.types.Handle %105, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = add i32 %56, 100
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = shl i32 %821, 4
  %823 = and i32 %822, 32752
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = lshr i32 %821, 7
  %826 = and i32 %825, 32752
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = fsub fast float 1.000000e+00, %669
  %829 = call float @dx.op.binary.f32(i32 35, float %828, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %830 = bitcast float %669 to i32
  %831 = sitofp i32 %830 to float
  %832 = fadd fast float %831, 0xC1CFBF8940000000
  %833 = fmul fast float %827, %832
  %834 = fadd fast float %833, 0x41CFBF8940000000
  %835 = fptosi float %834 to i32
  %836 = bitcast i32 %835 to float
  %837 = bitcast float %829 to i32
  %838 = sitofp i32 %837 to float
  %839 = fadd fast float %838, 0xC1CFBF8940000000
  %840 = fmul fast float %839, %827
  %841 = fadd fast float %840, 0x41CFBF8940000000
  %842 = fptosi float %841 to i32
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %836, %824
  %845 = fmul fast float %843, %824
  %846 = fsub fast float %829, %844
  %847 = fadd fast float %845, %829
  %848 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %849 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %850 = fsub fast float %818, %848
  %851 = fsub fast float %849, %848
  %852 = bitcast float %851 to i32
  %853 = sub nsw i32 2129859010, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %854, %850
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  br label %857

; <label>:857                                     ; preds = %811, %806
  %858 = phi float [ %856, %811 ], [ %669, %806 ]
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 128
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %879, label %863

; <label>:863                                     ; preds = %857
  %864 = add i32 %56, 424
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = add i32 %866, 0
  %868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %868, %dx.types.Handle %105, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 524288
  %874 = icmp ne i32 %873, 0
  %875 = fcmp fast ogt float %870, 0x3FE0101020000000
  %876 = select i1 %875, float 1.000000e+00, float 0.000000e+00
  %877 = select i1 %874, float %876, float %870
  %878 = fmul fast float %877, %858
  br label %879

; <label>:879                                     ; preds = %863, %857
  %880 = phi float [ %878, %863 ], [ %858, %857 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 16
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %1083, label %885

; <label>:885                                     ; preds = %879
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = add i32 %56, 376
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %890, 0
  %892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %893 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %892, %dx.types.Handle %104, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = extractvalue %dx.types.ResRet.f32 %893, 3
  %898 = and i32 %887, 255
  %899 = uitofp i32 %898 to float
  %900 = lshr i32 %887, 8
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %897, %899
  %904 = fadd fast float %903, %902
  %905 = fmul fast float %904, 0x3F70101000000000
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 512
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %918, label %910

; <label>:910                                     ; preds = %885
  %911 = add i32 %56, 460
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %105, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  br label %918

; <label>:918                                     ; preds = %910, %885
  %919 = phi float [ %917, %910 ], [ 1.000000e+00, %885 ]
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 33554432
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %1030, label %924

; <label>:924                                     ; preds = %918
  %925 = add i32 %56, 224
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = lshr i32 %927, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = add i32 %56, 228
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 65535
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 24
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = and i32 %938, 255
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = lshr i32 %938, 8
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F70101020000000
  %949 = lshr i32 %938, 16
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = add i32 %56, 220
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 24
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = and i32 %955, 255
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = lshr i32 %955, 8
  %963 = and i32 %962, 255
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = lshr i32 %955, 16
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = bitcast float %894 to i32
  %971 = ashr i32 %970, 1
  %972 = sub nsw i32 1597463174, %971
  %973 = bitcast i32 %972 to float
  %974 = fmul fast float %894, 5.000000e-01
  %975 = fmul fast float %973, %973
  %976 = fmul fast float %975, %974
  %977 = fsub fast float 1.500000e+00, %976
  %978 = fmul fast float %973, %894
  %979 = fmul fast float %978, %977
  %980 = bitcast float %895 to i32
  %981 = ashr i32 %980, 1
  %982 = sub nsw i32 1597463174, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %895, 5.000000e-01
  %985 = fmul fast float %983, %983
  %986 = fmul fast float %985, %984
  %987 = fsub fast float 1.500000e+00, %986
  %988 = fmul fast float %983, %895
  %989 = fmul fast float %988, %987
  %990 = bitcast float %896 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %896, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %896
  %999 = fmul fast float %998, %997
  %1000 = fsub fast float %979, %961
  %1001 = fsub fast float %989, %965
  %1002 = fsub fast float %999, %969
  %1003 = fmul fast float %1000, %929
  %1004 = fmul fast float %1001, %931
  %1005 = fmul fast float %1002, %936
  %1006 = fadd fast float %1003, %944
  %1007 = fadd fast float %1004, %948
  %1008 = fadd fast float %1005, %952
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = fmul fast float %1009, %1009
  %1013 = fmul fast float %1010, %1010
  %1014 = fmul fast float %1011, %1011
  %1015 = fsub fast float %1012, %894
  %1016 = fsub fast float %1013, %895
  %1017 = fsub fast float %1014, %896
  %1018 = fmul fast float %1015, %919
  %1019 = fmul fast float %1016, %919
  %1020 = fmul fast float %1017, %919
  %1021 = fadd fast float %1018, %894
  %1022 = fadd fast float %1019, %895
  %1023 = fadd fast float %1020, %896
  %1024 = fadd fast float %941, %905
  %1025 = fsub fast float %1024, %958
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = fsub fast float %1026, %905
  %1028 = fmul fast float %1027, %919
  %1029 = fadd fast float %1028, %905
  br label %1083

; <label>:1030                                    ; preds = %918
  %1031 = and i32 %921, 134217728
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1067, label %1033

; <label>:1033                                    ; preds = %1030
  %1034 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1035 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1036 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1037 = fadd fast float %1034, -5.000000e-01
  %1038 = fadd fast float %1035, -5.000000e-01
  %1039 = fadd fast float %1036, -5.000000e-01
  %1040 = fmul fast float %1037, %919
  %1041 = fmul fast float %1038, %919
  %1042 = fmul fast float %1039, %919
  %1043 = fadd fast float %1040, 5.000000e-01
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %1047 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %1048 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %1049 = fmul fast float %1043, 2.000000e+00
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = fmul fast float %1050, %1046
  %1052 = fadd fast float %1051, %1049
  %1053 = fmul fast float %1052, %1046
  %1054 = fmul fast float %1044, 2.000000e+00
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1055, %1047
  %1057 = fadd fast float %1056, %1054
  %1058 = fmul fast float %1057, %1047
  %1059 = fmul fast float %1045, 2.000000e+00
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1048
  %1062 = fadd fast float %1061, %1059
  %1063 = fmul fast float %1062, %1048
  %1064 = fmul fast float %1053, %1053
  %1065 = fmul fast float %1058, %1058
  %1066 = fmul fast float %1063, %1063
  br label %1083

; <label>:1067                                    ; preds = %1030
  %1068 = fmul fast float %290, %290
  %1069 = fmul fast float %294, %294
  %1070 = fmul fast float %298, %298
  %1071 = fadd fast float %1068, -1.000000e+00
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fmul fast float %919, %1071
  %1075 = fmul fast float %919, %1072
  %1076 = fmul fast float %919, %1073
  %1077 = fadd fast float %1074, 1.000000e+00
  %1078 = fadd fast float %1075, 1.000000e+00
  %1079 = fadd fast float %1076, 1.000000e+00
  %1080 = fmul fast float %1077, %894
  %1081 = fmul fast float %1078, %895
  %1082 = fmul fast float %1079, %896
  br label %1083

; <label>:1083                                    ; preds = %1067, %1033, %924, %879
  %1084 = phi float [ %1029, %924 ], [ %905, %1033 ], [ %905, %1067 ], [ 0x3FA23C0BE0000000, %879 ]
  %1085 = phi float [ %1021, %924 ], [ %1064, %1033 ], [ %1080, %1067 ], [ 1.000000e+00, %879 ]
  %1086 = phi float [ %1022, %924 ], [ %1065, %1033 ], [ %1081, %1067 ], [ 1.000000e+00, %879 ]
  %1087 = phi float [ %1023, %924 ], [ %1066, %1033 ], [ %1082, %1067 ], [ 1.000000e+00, %879 ]
  %1088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.i32 %1088, 1
  %1090 = and i32 %1089, 1
  %1091 = icmp ne i32 %1090, 0
  %1092 = add i32 %56, 356
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 32
  %1096 = icmp ne i32 %1095, 0
  %1097 = and i1 %1091, %1096
  %1098 = select i1 %1097, float 1.000000e+00, float %1085
  %1099 = select i1 %1097, float 0x3FD3333340000000, float %1086
  %1100 = select i1 %1097, float 0x3FD3333340000000, float %1087
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1177, label %1105

; <label>:1105                                    ; preds = %1083
  %1106 = add i32 %56, 92
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %56, 392
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1113, %dx.types.Handle %104, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = and i32 %1108, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1108, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1108, 16
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101000000000
  %1128 = fmul fast float %1115, %1120
  %1129 = fadd fast float %1128, %1123
  %1130 = fmul fast float %1129, 0x3F70101000000000
  %1131 = fadd fast float %1116, -5.000000e-01
  %1132 = fadd fast float %1118, -5.000000e-01
  %1133 = fmul fast float %1131, %1127
  %1134 = fmul fast float %1132, %1127
  %1135 = fadd fast float %1133, 5.000000e-01
  %1136 = fadd fast float %1134, 5.000000e-01
  %1137 = fmul fast float %1135, 2.000000e+00
  %1138 = fadd fast float %1137, -1.000000e+00
  %1139 = fmul fast float %1136, 2.000000e+00
  %1140 = fadd fast float %1139, -1.000000e+00
  %1141 = fadd fast float %1138, %1140
  %1142 = fmul fast float %1141, 5.000000e-01
  %1143 = fsub fast float %1138, %1140
  %1144 = fmul fast float %1143, 5.000000e-01
  %1145 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1146 = fsub fast float 1.000000e+00, %1145
  %1147 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1148 = fsub fast float %1146, %1147
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1144, float %1148, float %1142, float %1144, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.unary.f32(i32 25, float %1149)  ; Rsqrt(value)
  %1151 = fmul fast float %1142, %1150
  %1152 = fmul fast float %1144, %1150
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 67108864
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1173, label %1157

; <label>:1157                                    ; preds = %1105
  %1158 = add i32 %56, 280
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 65535
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = lshr i32 %1160, 16
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fsub fast float %1130, %1168
  %1170 = fmul fast float %1169, %1162
  %1171 = fadd fast float %1170, %1166
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  br label %1173

; <label>:1173                                    ; preds = %1157, %1105
  %1174 = phi float [ %1172, %1157 ], [ %1130, %1105 ]
  %1175 = call float @dx.op.dot2.f32(i32 54, float %1151, float %1152, float %711, float %712)  ; Dot2(ax,ay,bx,by)
  %1176 = call float @dx.op.dot2.f32(i32 54, float %1151, float %1152, float %713, float %714)  ; Dot2(ax,ay,bx,by)
  br label %1177

; <label>:1177                                    ; preds = %1173, %1083
  %1178 = phi float [ %1174, %1173 ], [ 0x3FD6666660000000, %1083 ]
  %1179 = phi float [ %1175, %1173 ], [ 0.000000e+00, %1083 ]
  %1180 = phi float [ %1176, %1173 ], [ 0.000000e+00, %1083 ]
  %1181 = phi float [ %1117, %1173 ], [ 1.000000e+00, %1083 ]
  %1182 = add i32 %56, 160
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 22
  %1186 = shl nuw nsw i32 %1185, 5
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 64
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1225, label %1192

; <label>:1192                                    ; preds = %1177
  %1193 = add i32 %56, 408
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 131072
  %1201 = icmp eq i32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %104, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = fmul fast float %1203, %278
  %1207 = fmul fast float %1204, %281
  %1208 = fmul fast float %1205, %284
  br i1 %1201, label %1215, label %1209

; <label>:1209                                    ; preds = %1192
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 0
  %1212 = fmul fast float %1211, %1206
  %1213 = fmul fast float %1211, %1207
  %1214 = fmul fast float %1211, %1208
  br label %1215

; <label>:1215                                    ; preds = %1209, %1192
  %1216 = phi float [ %1212, %1209 ], [ %1206, %1192 ]
  %1217 = phi float [ %1213, %1209 ], [ %1207, %1192 ]
  %1218 = phi float [ %1214, %1209 ], [ %1208, %1192 ]
  %1219 = fmul fast float %1216, %1187
  %1220 = select i1 %261, float %1219, float %1216
  %1221 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1217, float %1218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1222 = select i1 %261, float 0.000000e+00, float %1216
  %1223 = select i1 %261, float %1221, float %1217
  %1224 = select i1 %261, float 0.000000e+00, float %1218
  br label %1225

; <label>:1225                                    ; preds = %1215, %1177
  %1226 = phi float [ %1222, %1215 ], [ 0.000000e+00, %1177 ]
  %1227 = phi float [ %1223, %1215 ], [ 0.000000e+00, %1177 ]
  %1228 = phi float [ %1224, %1215 ], [ 0.000000e+00, %1177 ]
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 1024
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1263, label %1233

; <label>:1233                                    ; preds = %1225
  %1234 = add i32 %56, 152
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1236, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = lshr i32 %1236, 16
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = fmul fast float %1239, %1239
  %1249 = fmul fast float %1243, %1243
  %1250 = fmul fast float %1247, %1247
  %1251 = add i32 %56, 476
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %105, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = fmul fast float %1248, %1257
  %1261 = fmul fast float %1249, %1258
  %1262 = fmul fast float %1250, %1259
  br label %1263

; <label>:1263                                    ; preds = %1233, %1225
  %1264 = phi float [ %1260, %1233 ], [ 0.000000e+00, %1225 ]
  %1265 = phi float [ %1261, %1233 ], [ 0.000000e+00, %1225 ]
  %1266 = phi float [ %1262, %1233 ], [ 0.000000e+00, %1225 ]
  %1267 = fcmp fast ogt float %1264, 0.000000e+00
  %1268 = fcmp fast ogt float %1265, 0.000000e+00
  %1269 = fcmp fast ogt float %1266, 0.000000e+00
  %1270 = call float @dx.op.unary.f32(i32 23, float %1264)  ; Log(value)
  %1271 = call float @dx.op.unary.f32(i32 23, float %1265)  ; Log(value)
  %1272 = call float @dx.op.unary.f32(i32 23, float %1266)  ; Log(value)
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 7
  %1276 = and i32 %1275, 32752
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1270, 0xBFE62E4300000000
  %1279 = fmul fast float %1278, %1277
  %1280 = fmul fast float %1271, 0xBFE62E4300000000
  %1281 = fmul fast float %1280, %1277
  %1282 = fmul fast float %1272, 0xBFE62E4300000000
  %1283 = fmul fast float %1282, %1277
  %1284 = select i1 %1267, float %1279, float 1.270000e+02
  %1285 = select i1 %1268, float %1281, float 1.270000e+02
  %1286 = select i1 %1269, float %1283, float 1.270000e+02
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 10240
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1311, label %1291

; <label>:1291                                    ; preds = %1263
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 2048
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1311, label %1296

; <label>:1296                                    ; preds = %1291
  %1297 = add i32 %56, 492
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %1299, 0
  %1301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1301, %dx.types.Handle %105, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 3
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = shl i32 %1305, 4
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = fmul fast float %1308, %1303
  %1310 = call float @dx.op.binary.f32(i32 35, float %1309, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1311

; <label>:1311                                    ; preds = %1296, %1291, %1263, %693
  %1312 = phi float [ 0.000000e+00, %693 ], [ %1179, %1291 ], [ %1179, %1263 ], [ %1179, %1296 ]
  %1313 = phi float [ 0.000000e+00, %693 ], [ %1180, %1291 ], [ %1180, %1263 ], [ %1180, %1296 ]
  %1314 = phi float [ 0.000000e+00, %693 ], [ %1098, %1291 ], [ %1098, %1263 ], [ %1098, %1296 ]
  %1315 = phi float [ 0.000000e+00, %693 ], [ %1099, %1291 ], [ %1099, %1263 ], [ %1099, %1296 ]
  %1316 = phi float [ 0.000000e+00, %693 ], [ %1100, %1291 ], [ %1100, %1263 ], [ %1100, %1296 ]
  %1317 = phi float [ 0.000000e+00, %693 ], [ %1226, %1291 ], [ %1226, %1263 ], [ %1226, %1296 ]
  %1318 = phi float [ 0.000000e+00, %693 ], [ %1227, %1291 ], [ %1227, %1263 ], [ %1227, %1296 ]
  %1319 = phi float [ 0.000000e+00, %693 ], [ %1228, %1291 ], [ %1228, %1263 ], [ %1228, %1296 ]
  %1320 = phi float [ 0.000000e+00, %693 ], [ %1284, %1291 ], [ %1284, %1263 ], [ %1284, %1296 ]
  %1321 = phi float [ 0.000000e+00, %693 ], [ %1285, %1291 ], [ %1285, %1263 ], [ %1285, %1296 ]
  %1322 = phi float [ 0.000000e+00, %693 ], [ %1286, %1291 ], [ %1286, %1263 ], [ %1286, %1296 ]
  %1323 = phi float [ 0.000000e+00, %693 ], [ %1084, %1291 ], [ %1084, %1263 ], [ %1084, %1296 ]
  %1324 = phi float [ 0.000000e+00, %693 ], [ %880, %1291 ], [ %880, %1263 ], [ %880, %1296 ]
  %1325 = phi float [ 0.000000e+00, %693 ], [ %1178, %1291 ], [ %1178, %1263 ], [ %1178, %1296 ]
  %1326 = phi float [ 0.000000e+00, %693 ], [ %1181, %1291 ], [ %1181, %1263 ], [ %1181, %1296 ]
  %1327 = phi float [ 0.000000e+00, %693 ], [ 0x3F70101020000000, %1291 ], [ 0x3F70101020000000, %1263 ], [ %1310, %1296 ]
  br i1 %641, label %2182, label %1328

; <label>:1328                                    ; preds = %1311
  %1329 = icmp ult i32 %699, 2
  %1330 = add i32 %56, 40
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = add i32 %56, 44
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = or i32 %1335, %1332
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %2182, label %1338

; <label>:1338                                    ; preds = %1328
  %1339 = and i32 %1332, 262144
  %1340 = icmp ne i32 %1339, 0
  %1341 = select i1 %1340, float %63, float 1.000000e+00
  %1342 = select i1 %1340, float %64, float 0.000000e+00
  %1343 = select i1 %1340, float %65, float 0.000000e+00
  %1344 = select i1 %1340, float %66, float 1.000000e+00
  %1345 = select i1 %1340, float %67, float %90
  %1346 = select i1 %1340, float %68, float %91
  %1347 = add i32 %56, 300
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = lshr i32 %1349, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = fmul fast float %1351, 0x3F50624DE0000000
  %1353 = add i32 %56, 104
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 16
  %1357 = and i32 %1356, 255
  %1358 = lshr i32 %1355, 24
  %1359 = add i32 %56, 308
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 65535
  %1363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1362)  ; LegacyF16ToF32(value)
  %1364 = lshr i32 %1361, 16
  %1365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1364)  ; LegacyF16ToF32(value)
  %1366 = add i32 %56, 48
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = lshr i32 %1368, 22
  %1370 = shl nuw nsw i32 %1369, 5
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = shl i32 %1368, 4
  %1373 = and i32 %1372, 32752
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = lshr i32 %1368, 7
  %1376 = and i32 %1375, 32752
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 3
  %1380 = fmul fast float %1379, 1.000000e+03
  %1381 = fmul fast float %1380, %420
  %1382 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1383 = fadd fast float %1382, %408
  %1384 = fmul fast float %1380, %422
  %1385 = call float @dx.op.unary.f32(i32 22, float %1384)  ; Frc(value)
  %1386 = fadd fast float %1385, %409
  %1387 = fmul fast float %1352, %1380
  %1388 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1389 = fmul fast float %1388, 0x401921FB60000000
  %1390 = fadd fast float %1389, %1371
  %1391 = call float @dx.op.unary.f32(i32 13, float %1390)  ; Sin(value)
  %1392 = call float @dx.op.unary.f32(i32 12, float %1390)  ; Cos(value)
  %1393 = fsub fast float -0.000000e+00, %1391
  %1394 = fadd fast float %1345, -5.000000e-01
  %1395 = fadd fast float %1346, -5.000000e-01
  %1396 = fmul fast float %1363, %1394
  %1397 = fmul fast float %1365, %1395
  %1398 = fadd fast float %1396, 5.000000e-01
  %1399 = fadd fast float %1397, 5.000000e-01
  %1400 = fmul fast float %1374, %1398
  %1401 = fmul fast float %1377, %1399
  %1402 = fmul fast float %1392, %1400
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1393, float %1401, float %1402)  ; FMad(a,b,c)
  %1404 = fmul fast float %1391, %1400
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1392, float %1401, float %1404)  ; FMad(a,b,c)
  %1406 = fadd fast float %1383, %1403
  %1407 = fadd fast float %1386, %1405
  %1408 = icmp ugt i32 %1357, 1
  %1409 = icmp ugt i32 %1355, 33554431
  %1410 = or i1 %1409, %1408
  br i1 %1410, label %1411, label %1436

; <label>:1411                                    ; preds = %1338
  %1412 = add i32 %56, 244
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = lshr i32 %1414, 16
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = fmul fast float %1379, %1416
  %1418 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1419 = mul nuw nsw i32 %1357, %1358
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1418, %1420
  %1422 = call float @dx.op.unary.f32(i32 27, float %1421)  ; Round_ni(value)
  %1423 = fptoui float %1422 to i32
  %1424 = urem i32 %1423, %1357
  %1425 = udiv i32 %1423, %1358
  %1426 = call float @dx.op.unary.f32(i32 22, float %1406)  ; Frc(value)
  %1427 = call float @dx.op.unary.f32(i32 22, float %1407)  ; Frc(value)
  %1428 = uitofp i32 %1424 to float
  %1429 = uitofp i32 %1425 to float
  %1430 = fadd fast float %1426, %1428
  %1431 = fadd fast float %1427, %1429
  %1432 = uitofp i32 %1357 to float
  %1433 = uitofp i32 %1358 to float
  %1434 = fdiv fast float %1430, %1432
  %1435 = fdiv fast float %1431, %1433
  br label %1436

; <label>:1436                                    ; preds = %1411, %1338
  %1437 = phi float [ %1434, %1411 ], [ %1406, %1338 ]
  %1438 = phi float [ %1435, %1411 ], [ %1407, %1338 ]
  %1439 = and i32 %1332, 256
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1487, label %1441

; <label>:1441                                    ; preds = %1436
  %1442 = add i32 %56, 444
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %1444, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %105, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = add i32 %56, 116
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = shl i32 %1451, 4
  %1453 = and i32 %1452, 32752
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = lshr i32 %1451, 7
  %1456 = and i32 %1455, 32752
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fsub fast float 1.000000e+00, %696
  %1459 = call float @dx.op.binary.f32(i32 35, float %1458, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1460 = bitcast float %696 to i32
  %1461 = sitofp i32 %1460 to float
  %1462 = fadd fast float %1461, 0xC1CFBF8940000000
  %1463 = fmul fast float %1457, %1462
  %1464 = fadd fast float %1463, 0x41CFBF8940000000
  %1465 = fptosi float %1464 to i32
  %1466 = bitcast i32 %1465 to float
  %1467 = bitcast float %1459 to i32
  %1468 = sitofp i32 %1467 to float
  %1469 = fadd fast float %1468, 0xC1CFBF8940000000
  %1470 = fmul fast float %1469, %1457
  %1471 = fadd fast float %1470, 0x41CFBF8940000000
  %1472 = fptosi float %1471 to i32
  %1473 = bitcast i32 %1472 to float
  %1474 = fmul fast float %1466, %1454
  %1475 = fmul fast float %1473, %1454
  %1476 = fsub fast float %1459, %1474
  %1477 = fadd fast float %1475, %1459
  %1478 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1480 = fsub fast float %1448, %1478
  %1481 = fsub fast float %1479, %1478
  %1482 = bitcast float %1481 to i32
  %1483 = sub nsw i32 2129859010, %1482
  %1484 = bitcast i32 %1483 to float
  %1485 = fmul fast float %1484, %1480
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  br label %1487

; <label>:1487                                    ; preds = %1441, %1436
  %1488 = phi float [ %1486, %1441 ], [ %696, %1436 ]
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 128
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1509, label %1493

; <label>:1493                                    ; preds = %1487
  %1494 = add i32 %56, 428
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %105, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 524288
  %1504 = icmp ne i32 %1503, 0
  %1505 = fcmp fast ogt float %1500, 0x3FE0101020000000
  %1506 = select i1 %1505, float 1.000000e+00, float 0.000000e+00
  %1507 = select i1 %1504, float %1506, float %1500
  %1508 = fmul fast float %1507, %1488
  br label %1509

; <label>:1509                                    ; preds = %1493, %1487
  %1510 = phi float [ %1508, %1493 ], [ %1488, %1487 ]
  %1511 = fcmp fast ult float %1510, 0x3F70101020000000
  br i1 %1511, label %2182, label %1512

; <label>:1512                                    ; preds = %1509
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 16
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1715, label %1517

; <label>:1517                                    ; preds = %1512
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = add i32 %56, 380
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %104, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = and i32 %1519, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = lshr i32 %1519, 8
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1529, %1531
  %1536 = fadd fast float %1535, %1534
  %1537 = fmul fast float %1536, 0x3F70101000000000
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 512
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1550, label %1542

; <label>:1542                                    ; preds = %1517
  %1543 = add i32 %56, 464
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = add i32 %1545, 0
  %1547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1547, %dx.types.Handle %105, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  br label %1550

; <label>:1550                                    ; preds = %1542, %1517
  %1551 = phi float [ %1549, %1542 ], [ 1.000000e+00, %1517 ]
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 33554432
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1662, label %1556

; <label>:1556                                    ; preds = %1550
  %1557 = add i32 %56, 240
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 65535
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = lshr i32 %1559, 16
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = add i32 %56, 244
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 65535
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = lshr i32 %1570, 24
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = and i32 %1570, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = lshr i32 %1570, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = lshr i32 %1570, 16
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = add i32 %56, 236
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = lshr i32 %1587, 24
  %1589 = uitofp i32 %1588 to float
  %1590 = fmul fast float %1589, 0x3F70101020000000
  %1591 = and i32 %1587, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = lshr i32 %1587, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = lshr i32 %1587, 16
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101020000000
  %1602 = bitcast float %1526 to i32
  %1603 = ashr i32 %1602, 1
  %1604 = sub nsw i32 1597463174, %1603
  %1605 = bitcast i32 %1604 to float
  %1606 = fmul fast float %1526, 5.000000e-01
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1607, %1606
  %1609 = fsub fast float 1.500000e+00, %1608
  %1610 = fmul fast float %1605, %1526
  %1611 = fmul fast float %1610, %1609
  %1612 = bitcast float %1527 to i32
  %1613 = ashr i32 %1612, 1
  %1614 = sub nsw i32 1597463174, %1613
  %1615 = bitcast i32 %1614 to float
  %1616 = fmul fast float %1527, 5.000000e-01
  %1617 = fmul fast float %1615, %1615
  %1618 = fmul fast float %1617, %1616
  %1619 = fsub fast float 1.500000e+00, %1618
  %1620 = fmul fast float %1615, %1527
  %1621 = fmul fast float %1620, %1619
  %1622 = bitcast float %1528 to i32
  %1623 = ashr i32 %1622, 1
  %1624 = sub nsw i32 1597463174, %1623
  %1625 = bitcast i32 %1624 to float
  %1626 = fmul fast float %1528, 5.000000e-01
  %1627 = fmul fast float %1625, %1625
  %1628 = fmul fast float %1627, %1626
  %1629 = fsub fast float 1.500000e+00, %1628
  %1630 = fmul fast float %1625, %1528
  %1631 = fmul fast float %1630, %1629
  %1632 = fsub fast float %1611, %1593
  %1633 = fsub fast float %1621, %1597
  %1634 = fsub fast float %1631, %1601
  %1635 = fmul fast float %1632, %1561
  %1636 = fmul fast float %1633, %1563
  %1637 = fmul fast float %1634, %1568
  %1638 = fadd fast float %1635, %1576
  %1639 = fadd fast float %1636, %1580
  %1640 = fadd fast float %1637, %1584
  %1641 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1644 = fmul fast float %1641, %1641
  %1645 = fmul fast float %1642, %1642
  %1646 = fmul fast float %1643, %1643
  %1647 = fsub fast float %1644, %1526
  %1648 = fsub fast float %1645, %1527
  %1649 = fsub fast float %1646, %1528
  %1650 = fmul fast float %1647, %1551
  %1651 = fmul fast float %1648, %1551
  %1652 = fmul fast float %1649, %1551
  %1653 = fadd fast float %1650, %1526
  %1654 = fadd fast float %1651, %1527
  %1655 = fadd fast float %1652, %1528
  %1656 = fadd fast float %1573, %1537
  %1657 = fsub fast float %1656, %1590
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fsub fast float %1658, %1537
  %1660 = fmul fast float %1659, %1551
  %1661 = fadd fast float %1660, %1537
  br label %1715

; <label>:1662                                    ; preds = %1550
  %1663 = and i32 %1553, 134217728
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1699, label %1665

; <label>:1665                                    ; preds = %1662
  %1666 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %1667 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %1668 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %1669 = fadd fast float %1666, -5.000000e-01
  %1670 = fadd fast float %1667, -5.000000e-01
  %1671 = fadd fast float %1668, -5.000000e-01
  %1672 = fmul fast float %1669, %1551
  %1673 = fmul fast float %1670, %1551
  %1674 = fmul fast float %1671, %1551
  %1675 = fadd fast float %1672, 5.000000e-01
  %1676 = fadd fast float %1673, 5.000000e-01
  %1677 = fadd fast float %1674, 5.000000e-01
  %1678 = call float @dx.op.unary.f32(i32 24, float %1526)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1680 = call float @dx.op.unary.f32(i32 24, float %1528)  ; Sqrt(value)
  %1681 = fmul fast float %1675, 2.000000e+00
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1682, %1678
  %1684 = fadd fast float %1683, %1681
  %1685 = fmul fast float %1684, %1678
  %1686 = fmul fast float %1676, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1679
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1679
  %1691 = fmul fast float %1677, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1680
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1680
  %1696 = fmul fast float %1685, %1685
  %1697 = fmul fast float %1690, %1690
  %1698 = fmul fast float %1695, %1695
  br label %1715

; <label>:1699                                    ; preds = %1662
  %1700 = fmul fast float %396, %396
  %1701 = fmul fast float %397, %397
  %1702 = fmul fast float %398, %398
  %1703 = fadd fast float %1700, -1.000000e+00
  %1704 = fadd fast float %1701, -1.000000e+00
  %1705 = fadd fast float %1702, -1.000000e+00
  %1706 = fmul fast float %1551, %1703
  %1707 = fmul fast float %1551, %1704
  %1708 = fmul fast float %1551, %1705
  %1709 = fadd fast float %1706, 1.000000e+00
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fmul fast float %1709, %1526
  %1713 = fmul fast float %1710, %1527
  %1714 = fmul fast float %1711, %1528
  br label %1715

; <label>:1715                                    ; preds = %1699, %1665, %1556, %1512
  %1716 = phi float [ %1661, %1556 ], [ %1537, %1665 ], [ %1537, %1699 ], [ 0x3FA23C0BE0000000, %1512 ]
  %1717 = phi float [ %1653, %1556 ], [ %1696, %1665 ], [ %1712, %1699 ], [ 1.000000e+00, %1512 ]
  %1718 = phi float [ %1654, %1556 ], [ %1697, %1665 ], [ %1713, %1699 ], [ 1.000000e+00, %1512 ]
  %1719 = phi float [ %1655, %1556 ], [ %1698, %1665 ], [ %1714, %1699 ], [ 1.000000e+00, %1512 ]
  %1720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.i32 %1720, 1
  %1722 = and i32 %1721, 1
  %1723 = icmp ne i32 %1722, 0
  %1724 = add i32 %56, 356
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 32
  %1728 = icmp ne i32 %1727, 0
  %1729 = and i1 %1723, %1728
  %1730 = select i1 %1729, float 1.000000e+00, float %1717
  %1731 = select i1 %1729, float 0x3FD3333340000000, float %1718
  %1732 = select i1 %1729, float 0x3FD3333340000000, float %1719
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 32
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %1809, label %1737

; <label>:1737                                    ; preds = %1715
  %1738 = add i32 %56, 108
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %56, 396
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = add i32 %1743, 0
  %1745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1745, %dx.types.Handle %104, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = extractvalue %dx.types.ResRet.f32 %1746, 3
  %1751 = and i32 %1740, 255
  %1752 = uitofp i32 %1751 to float
  %1753 = lshr i32 %1740, 8
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = lshr i32 %1740, 16
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = fmul fast float %1758, 0x3F70101000000000
  %1760 = fmul fast float %1747, %1752
  %1761 = fadd fast float %1760, %1755
  %1762 = fmul fast float %1761, 0x3F70101000000000
  %1763 = fadd fast float %1748, -5.000000e-01
  %1764 = fadd fast float %1750, -5.000000e-01
  %1765 = fmul fast float %1763, %1759
  %1766 = fmul fast float %1764, %1759
  %1767 = fadd fast float %1765, 5.000000e-01
  %1768 = fadd fast float %1766, 5.000000e-01
  %1769 = fmul fast float %1767, 2.000000e+00
  %1770 = fadd fast float %1769, -1.000000e+00
  %1771 = fmul fast float %1768, 2.000000e+00
  %1772 = fadd fast float %1771, -1.000000e+00
  %1773 = fadd fast float %1770, %1772
  %1774 = fmul fast float %1773, 5.000000e-01
  %1775 = fsub fast float %1770, %1772
  %1776 = fmul fast float %1775, 5.000000e-01
  %1777 = call float @dx.op.unary.f32(i32 6, float %1774)  ; FAbs(value)
  %1778 = fsub fast float 1.000000e+00, %1777
  %1779 = call float @dx.op.unary.f32(i32 6, float %1776)  ; FAbs(value)
  %1780 = fsub fast float %1778, %1779
  %1781 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1776, float %1780, float %1774, float %1776, float %1780)  ; Dot3(ax,ay,az,bx,by,bz)
  %1782 = call float @dx.op.unary.f32(i32 25, float %1781)  ; Rsqrt(value)
  %1783 = fmul fast float %1774, %1782
  %1784 = fmul fast float %1776, %1782
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 67108864
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1805, label %1789

; <label>:1789                                    ; preds = %1737
  %1790 = add i32 %56, 296
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 65535
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %1796, 65535
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = lshr i32 %1792, 16
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = fsub fast float %1762, %1800
  %1802 = fmul fast float %1801, %1794
  %1803 = fadd fast float %1802, %1798
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  br label %1805

; <label>:1805                                    ; preds = %1789, %1737
  %1806 = phi float [ %1804, %1789 ], [ %1762, %1737 ]
  %1807 = call float @dx.op.dot2.f32(i32 54, float %1783, float %1784, float %1341, float %1342)  ; Dot2(ax,ay,bx,by)
  %1808 = call float @dx.op.dot2.f32(i32 54, float %1783, float %1784, float %1343, float %1344)  ; Dot2(ax,ay,bx,by)
  br label %1809

; <label>:1809                                    ; preds = %1805, %1715
  %1810 = phi float [ %1806, %1805 ], [ 0x3FD6666660000000, %1715 ]
  %1811 = phi float [ %1807, %1805 ], [ 0.000000e+00, %1715 ]
  %1812 = phi float [ %1808, %1805 ], [ 0.000000e+00, %1715 ]
  %1813 = phi float [ %1749, %1805 ], [ 1.000000e+00, %1715 ]
  %1814 = add i32 %56, 176
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = lshr i32 %1816, 22
  %1818 = shl nuw nsw i32 %1817, 5
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 64
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1857, label %1824

; <label>:1824                                    ; preds = %1809
  %1825 = add i32 %56, 412
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = add i32 %1827, 0
  %1829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 131072
  %1833 = icmp eq i32 %1832, 0
  %1834 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1829, %dx.types.Handle %104, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.ResRet.f32 %1834, 1
  %1837 = extractvalue %dx.types.ResRet.f32 %1834, 2
  %1838 = fmul fast float %379, %1835
  %1839 = fmul fast float %380, %1836
  %1840 = fmul fast float %381, %1837
  br i1 %1833, label %1847, label %1841

; <label>:1841                                    ; preds = %1824
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = fmul fast float %1843, %1838
  %1845 = fmul fast float %1843, %1839
  %1846 = fmul fast float %1843, %1840
  br label %1847

; <label>:1847                                    ; preds = %1841, %1824
  %1848 = phi float [ %1844, %1841 ], [ %1838, %1824 ]
  %1849 = phi float [ %1845, %1841 ], [ %1839, %1824 ]
  %1850 = phi float [ %1846, %1841 ], [ %1840, %1824 ]
  %1851 = fmul fast float %1848, %1819
  %1852 = select i1 %261, float %1851, float %1848
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1849, float %1850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = select i1 %261, float 0.000000e+00, float %1848
  %1855 = select i1 %261, float %1853, float %1849
  %1856 = select i1 %261, float 0.000000e+00, float %1850
  br label %1857

; <label>:1857                                    ; preds = %1847, %1809
  %1858 = phi float [ %1854, %1847 ], [ 0.000000e+00, %1809 ]
  %1859 = phi float [ %1855, %1847 ], [ 0.000000e+00, %1809 ]
  %1860 = phi float [ %1856, %1847 ], [ 0.000000e+00, %1809 ]
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 1024
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1895, label %1865

; <label>:1865                                    ; preds = %1857
  %1866 = add i32 %56, 168
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 255
  %1870 = uitofp i32 %1869 to float
  %1871 = fmul fast float %1870, 0x3F70101020000000
  %1872 = lshr i32 %1868, 8
  %1873 = and i32 %1872, 255
  %1874 = uitofp i32 %1873 to float
  %1875 = fmul fast float %1874, 0x3F70101020000000
  %1876 = lshr i32 %1868, 16
  %1877 = and i32 %1876, 255
  %1878 = uitofp i32 %1877 to float
  %1879 = fmul fast float %1878, 0x3F70101020000000
  %1880 = fmul fast float %1871, %1871
  %1881 = fmul fast float %1875, %1875
  %1882 = fmul fast float %1879, %1879
  %1883 = add i32 %56, 480
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = add i32 %1885, 0
  %1887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1886, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1887, %dx.types.Handle %105, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = fmul fast float %1880, %1889
  %1893 = fmul fast float %1881, %1890
  %1894 = fmul fast float %1882, %1891
  br label %1895

; <label>:1895                                    ; preds = %1865, %1857
  %1896 = phi float [ %1892, %1865 ], [ 0.000000e+00, %1857 ]
  %1897 = phi float [ %1893, %1865 ], [ 0.000000e+00, %1857 ]
  %1898 = phi float [ %1894, %1865 ], [ 0.000000e+00, %1857 ]
  %1899 = fcmp fast ogt float %1896, 0.000000e+00
  %1900 = fcmp fast ogt float %1897, 0.000000e+00
  %1901 = fcmp fast ogt float %1898, 0.000000e+00
  %1902 = call float @dx.op.unary.f32(i32 23, float %1896)  ; Log(value)
  %1903 = call float @dx.op.unary.f32(i32 23, float %1897)  ; Log(value)
  %1904 = call float @dx.op.unary.f32(i32 23, float %1898)  ; Log(value)
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 7
  %1908 = and i32 %1907, 32752
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = fmul fast float %1902, 0xBFE62E4300000000
  %1911 = fmul fast float %1910, %1909
  %1912 = fmul fast float %1903, 0xBFE62E4300000000
  %1913 = fmul fast float %1912, %1909
  %1914 = fmul fast float %1904, 0xBFE62E4300000000
  %1915 = fmul fast float %1914, %1909
  %1916 = select i1 %1899, float %1911, float 1.270000e+02
  %1917 = select i1 %1900, float %1913, float 1.270000e+02
  %1918 = select i1 %1901, float %1915, float 1.270000e+02
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 10240
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1943, label %1923

; <label>:1923                                    ; preds = %1895
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 2048
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1943, label %1928

; <label>:1928                                    ; preds = %1923
  %1929 = add i32 %56, 496
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1933, %dx.types.Handle %105, float %1437, float %1438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 3
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = shl i32 %1937, 4
  %1939 = and i32 %1938, 32752
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = fmul fast float %1940, %1935
  %1942 = call float @dx.op.binary.f32(i32 35, float %1941, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1943

; <label>:1943                                    ; preds = %1928, %1923, %1895
  %1944 = phi float [ %1942, %1928 ], [ 0x3F70101020000000, %1923 ], [ 0x3F70101020000000, %1895 ]
  br i1 %1329, label %1945, label %1980

; <label>:1945                                    ; preds = %1943
  %1946 = fmul fast float %1944, 2.000000e+00
  %1947 = fcmp fast olt float %1916, 1.270000e+02
  %1948 = fcmp fast olt float %1917, 1.270000e+02
  %1949 = fcmp fast olt float %1918, 1.270000e+02
  %1950 = fmul fast float %1916, 0xBFF7154760000000
  %1951 = fmul fast float %1950, %1946
  %1952 = fmul fast float %1917, 0xBFF7154760000000
  %1953 = fmul fast float %1952, %1946
  %1954 = fmul fast float %1918, 0xBFF7154760000000
  %1955 = fmul fast float %1954, %1946
  %1956 = call float @dx.op.unary.f32(i32 21, float %1951)  ; Exp(value)
  %1957 = call float @dx.op.unary.f32(i32 21, float %1953)  ; Exp(value)
  %1958 = call float @dx.op.unary.f32(i32 21, float %1955)  ; Exp(value)
  %1959 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1960 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1961 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1962 = fadd fast float %1959, -1.000000e+00
  %1963 = select i1 %1947, float %1962, float -1.000000e+00
  %1964 = fadd fast float %1960, -1.000000e+00
  %1965 = select i1 %1948, float %1964, float -1.000000e+00
  %1966 = fadd fast float %1961, -1.000000e+00
  %1967 = select i1 %1949, float %1966, float -1.000000e+00
  %1968 = fmul fast float %1963, %1510
  %1969 = fmul fast float %1965, %1510
  %1970 = fmul fast float %1967, %1510
  %1971 = fadd fast float %1968, 1.000000e+00
  %1972 = fadd fast float %1969, 1.000000e+00
  %1973 = fadd fast float %1970, 1.000000e+00
  %1974 = fmul fast float %1971, %1314
  %1975 = fmul fast float %1972, %1315
  %1976 = fmul fast float %1973, %1316
  %1977 = fmul fast float %1971, %1317
  %1978 = fmul fast float %1972, %1318
  %1979 = fmul fast float %1973, %1319
  br label %1980

; <label>:1980                                    ; preds = %1945, %1943
  %1981 = phi float [ %1974, %1945 ], [ %1314, %1943 ]
  %1982 = phi float [ %1975, %1945 ], [ %1315, %1943 ]
  %1983 = phi float [ %1976, %1945 ], [ %1316, %1943 ]
  %1984 = phi float [ %1977, %1945 ], [ %1317, %1943 ]
  %1985 = phi float [ %1978, %1945 ], [ %1318, %1943 ]
  %1986 = phi float [ %1979, %1945 ], [ %1319, %1943 ]
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 3
  %1990 = icmp eq i32 %1989, 3
  br i1 %1990, label %2066, label %1991

; <label>:1991                                    ; preds = %1980
  %1992 = and i32 %1988, 16
  %1993 = icmp ne i32 %1992, 0
  %1994 = select i1 %1993, float %1510, float 0.000000e+00
  %1995 = icmp eq i32 %1989, 0
  br i1 %1995, label %1996, label %2021

; <label>:1996                                    ; preds = %1991
  %1997 = and i32 %1988, 64
  %1998 = icmp ne i32 %1997, 0
  %1999 = select i1 %1998, float %1510, float 0.000000e+00
  %2000 = fsub fast float %1730, %1981
  %2001 = fsub fast float %1731, %1982
  %2002 = fsub fast float %1732, %1983
  %2003 = fmul fast float %1994, %2000
  %2004 = fmul fast float %1994, %2001
  %2005 = fmul fast float %1994, %2002
  %2006 = fadd fast float %2003, %1981
  %2007 = fadd fast float %2004, %1982
  %2008 = fadd fast float %2005, %1983
  %2009 = fsub fast float %1716, %1323
  %2010 = fmul fast float %1994, %2009
  %2011 = fadd fast float %2010, %1323
  %2012 = fsub fast float %1858, %1984
  %2013 = fsub fast float %1859, %1985
  %2014 = fsub fast float %1860, %1986
  %2015 = fmul fast float %1999, %2012
  %2016 = fmul fast float %1999, %2013
  %2017 = fmul fast float %1999, %2014
  %2018 = fadd fast float %2015, %1984
  %2019 = fadd fast float %2016, %1985
  %2020 = fadd fast float %2017, %1986
  br label %2066

; <label>:2021                                    ; preds = %1991
  %2022 = icmp eq i32 %1989, 1
  br i1 %2022, label %2023, label %2036

; <label>:2023                                    ; preds = %2021
  %2024 = fadd fast float %1730, -1.000000e+00
  %2025 = fadd fast float %1731, -1.000000e+00
  %2026 = fadd fast float %1732, -1.000000e+00
  %2027 = fmul fast float %1994, %2024
  %2028 = fmul fast float %1994, %2025
  %2029 = fmul fast float %1994, %2026
  %2030 = fadd fast float %2027, 1.000000e+00
  %2031 = fadd fast float %2028, 1.000000e+00
  %2032 = fadd fast float %2029, 1.000000e+00
  %2033 = fmul fast float %2030, %1981
  %2034 = fmul fast float %2031, %1982
  %2035 = fmul fast float %2032, %1983
  br label %2066

; <label>:2036                                    ; preds = %2021
  %2037 = icmp eq i32 %1989, 2
  br i1 %2037, label %2038, label %2066

; <label>:2038                                    ; preds = %2036
  %2039 = call float @dx.op.unary.f32(i32 24, float %1730)  ; Sqrt(value)
  %2040 = call float @dx.op.unary.f32(i32 24, float %1731)  ; Sqrt(value)
  %2041 = call float @dx.op.unary.f32(i32 24, float %1732)  ; Sqrt(value)
  %2042 = fadd fast float %2039, -5.000000e-01
  %2043 = fadd fast float %2040, -5.000000e-01
  %2044 = fadd fast float %2041, -5.000000e-01
  %2045 = fmul fast float %2042, %1994
  %2046 = fmul fast float %2043, %1994
  %2047 = fmul fast float %2044, %1994
  %2048 = fadd fast float %2045, 5.000000e-01
  %2049 = fadd fast float %2046, 5.000000e-01
  %2050 = fadd fast float %2047, 5.000000e-01
  %2051 = fmul fast float %2048, 2.000000e+00
  %2052 = fsub fast float 1.000000e+00, %2051
  %2053 = fmul fast float %2052, %1981
  %2054 = fadd fast float %2053, %2051
  %2055 = fmul fast float %2054, %1981
  %2056 = fmul fast float %2049, 2.000000e+00
  %2057 = fsub fast float 1.000000e+00, %2056
  %2058 = fmul fast float %2057, %1982
  %2059 = fadd fast float %2058, %2056
  %2060 = fmul fast float %2059, %1982
  %2061 = fmul fast float %2050, 2.000000e+00
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = fmul fast float %2062, %1983
  %2064 = fadd fast float %2063, %2061
  %2065 = fmul fast float %2064, %1983
  br label %2066

; <label>:2066                                    ; preds = %2038, %2036, %2023, %1996, %1980
  %2067 = phi float [ %1981, %1980 ], [ %2055, %2038 ], [ %1981, %2036 ], [ %2033, %2023 ], [ %2006, %1996 ]
  %2068 = phi float [ %1982, %1980 ], [ %2060, %2038 ], [ %1982, %2036 ], [ %2034, %2023 ], [ %2007, %1996 ]
  %2069 = phi float [ %1983, %1980 ], [ %2065, %2038 ], [ %1983, %2036 ], [ %2035, %2023 ], [ %2008, %1996 ]
  %2070 = phi float [ %1984, %1980 ], [ %1984, %2038 ], [ %1984, %2036 ], [ %1984, %2023 ], [ %2018, %1996 ]
  %2071 = phi float [ %1985, %1980 ], [ %1985, %2038 ], [ %1985, %2036 ], [ %1985, %2023 ], [ %2019, %1996 ]
  %2072 = phi float [ %1986, %1980 ], [ %1986, %2038 ], [ %1986, %2036 ], [ %1986, %2023 ], [ %2020, %1996 ]
  %2073 = phi float [ %1323, %1980 ], [ %1323, %2038 ], [ %1323, %2036 ], [ %1323, %2023 ], [ %2011, %1996 ]
  %2074 = and i32 %1988, 12
  %2075 = icmp eq i32 %2074, 12
  br i1 %2075, label %2182, label %2076

; <label>:2076                                    ; preds = %2066
  %2077 = and i32 %1988, 2097184
  %2078 = icmp eq i32 %2077, 2097184
  %2079 = select i1 %2078, float %1510, float 0.000000e+00
  %2080 = and i32 %1988, 4194336
  %2081 = icmp eq i32 %2080, 4194336
  %2082 = select i1 %2081, float %1510, float 0.000000e+00
  %2083 = and i32 %1988, 8388640
  %2084 = icmp eq i32 %2083, 8388640
  %2085 = select i1 %2084, float %1510, float 0.000000e+00
  %2086 = and i32 %1988, 1024
  %2087 = icmp ne i32 %2086, 0
  %2088 = select i1 %2087, float %1510, float 0.000000e+00
  %2089 = and i32 %1988, 2048
  %2090 = icmp ne i32 %2089, 0
  %2091 = select i1 %2090, float %1510, float 0.000000e+00
  %2092 = icmp eq i32 %2074, 0
  br i1 %2092, label %2093, label %2118

; <label>:2093                                    ; preds = %2076
  %2094 = fsub fast float %1811, %1312
  %2095 = fsub fast float %1812, %1313
  %2096 = fmul fast float %2079, %2094
  %2097 = fmul fast float %2079, %2095
  %2098 = fadd fast float %2096, %1312
  %2099 = fadd fast float %2097, %1313
  %2100 = fsub fast float %1813, %1326
  %2101 = fmul fast float %2082, %2100
  %2102 = fadd fast float %2101, %1326
  %2103 = fsub fast float %1810, %1325
  %2104 = fmul fast float %2085, %2103
  %2105 = fadd fast float %2104, %1325
  %2106 = fsub fast float %1916, %1320
  %2107 = fsub fast float %1917, %1321
  %2108 = fsub fast float %1918, %1322
  %2109 = fmul fast float %2088, %2106
  %2110 = fmul fast float %2088, %2107
  %2111 = fmul fast float %2088, %2108
  %2112 = fadd fast float %2109, %1320
  %2113 = fadd fast float %2110, %1321
  %2114 = fadd fast float %2111, %1322
  %2115 = fsub fast float %1944, %1327
  %2116 = fmul fast float %2091, %2115
  %2117 = fadd fast float %2116, %1327
  br label %2182

; <label>:2118                                    ; preds = %2076
  %2119 = icmp eq i32 %2074, 4
  br i1 %2119, label %2120, label %2160

; <label>:2120                                    ; preds = %2118
  %2121 = fmul fast float %2079, %1811
  %2122 = fmul fast float %2079, %1812
  %2123 = fadd fast float %2121, %1312
  %2124 = fadd fast float %2122, %1313
  %2125 = call float @dx.op.binary.f32(i32 36, float %1326, float %1813)  ; FMin(a,b)
  %2126 = fsub fast float %2125, %1326
  %2127 = fmul fast float %2126, %2082
  %2128 = fadd fast float %2127, %1326
  %2129 = fadd fast float %1810, %1325
  %2130 = fmul fast float %2129, 0x3FF337FAE0000000
  %2131 = fmul fast float %1325, %1325
  %2132 = fmul fast float %1810, %1810
  %2133 = fadd fast float %2132, %2131
  %2134 = fmul fast float %2133, 0x3FE5152B00000000
  %2135 = fmul fast float %1325, 0xBFCC1F85E0000000
  %2136 = fmul fast float %2135, %1810
  %2137 = fadd fast float %2136, 0xBFE1363700000000
  %2138 = fadd fast float %2137, %2130
  %2139 = fsub fast float %2138, %2134
  %2140 = fmul fast float %2129, 0x3FBA6F0D00000000
  %2141 = fmul fast float %2133, 0x3FD0432880000000
  %2142 = fmul fast float %1325, 0xBFEF110800000000
  %2143 = fmul fast float %2142, %1810
  %2144 = fadd fast float %2143, 1.000000e+00
  %2145 = fsub fast float %2144, %2140
  %2146 = fadd fast float %2145, %2141
  %2147 = fdiv fast float %2139, %2146
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fsub fast float %2148, %1325
  %2150 = fmul fast float %2149, %2085
  %2151 = fadd fast float %2150, %1325
  %2152 = fmul fast float %2088, %1916
  %2153 = fmul fast float %2088, %1917
  %2154 = fmul fast float %2088, %1918
  %2155 = fadd fast float %2152, %1320
  %2156 = fadd fast float %2153, %1321
  %2157 = fadd fast float %2154, %1322
  %2158 = fmul fast float %2091, %1944
  %2159 = fadd fast float %2158, %1327
  br label %2182

; <label>:2160                                    ; preds = %2118
  %2161 = icmp eq i32 %2074, 8
  br i1 %2161, label %2162, label %2182

; <label>:2162                                    ; preds = %2160
  %2163 = fmul fast float %2079, %1811
  %2164 = fmul fast float %2079, %1812
  %2165 = fadd fast float %2163, %1312
  %2166 = fadd fast float %2164, %1313
  %2167 = call float @dx.op.binary.f32(i32 36, float %1326, float %1813)  ; FMin(a,b)
  %2168 = fsub fast float %2167, %1326
  %2169 = fmul fast float %2168, %2082
  %2170 = fadd fast float %2169, %1326
  %2171 = fsub fast float %1810, %1325
  %2172 = fmul fast float %2085, %2171
  %2173 = fadd fast float %2172, %1325
  %2174 = fmul fast float %2088, %1916
  %2175 = fmul fast float %2088, %1917
  %2176 = fmul fast float %2088, %1918
  %2177 = fadd fast float %2174, %1320
  %2178 = fadd fast float %2175, %1321
  %2179 = fadd fast float %2176, %1322
  %2180 = fmul fast float %2091, %1944
  %2181 = fadd fast float %2180, %1327
  br label %2182

; <label>:2182                                    ; preds = %2162, %2160, %2120, %2093, %2066, %1509, %1328, %1311
  %2183 = phi float [ %1312, %2066 ], [ %1312, %1509 ], [ %1312, %1311 ], [ %2165, %2162 ], [ %1312, %2160 ], [ %2123, %2120 ], [ %2098, %2093 ], [ %1312, %1328 ]
  %2184 = phi float [ %1313, %2066 ], [ %1313, %1509 ], [ %1313, %1311 ], [ %2166, %2162 ], [ %1313, %2160 ], [ %2124, %2120 ], [ %2099, %2093 ], [ %1313, %1328 ]
  %2185 = phi float [ %2067, %2066 ], [ %1314, %1509 ], [ %1314, %1311 ], [ %2067, %2162 ], [ %2067, %2160 ], [ %2067, %2120 ], [ %2067, %2093 ], [ %1314, %1328 ]
  %2186 = phi float [ %2068, %2066 ], [ %1315, %1509 ], [ %1315, %1311 ], [ %2068, %2162 ], [ %2068, %2160 ], [ %2068, %2120 ], [ %2068, %2093 ], [ %1315, %1328 ]
  %2187 = phi float [ %2069, %2066 ], [ %1316, %1509 ], [ %1316, %1311 ], [ %2069, %2162 ], [ %2069, %2160 ], [ %2069, %2120 ], [ %2069, %2093 ], [ %1316, %1328 ]
  %2188 = phi float [ %2070, %2066 ], [ %1317, %1509 ], [ %1317, %1311 ], [ %2070, %2162 ], [ %2070, %2160 ], [ %2070, %2120 ], [ %2070, %2093 ], [ %1317, %1328 ]
  %2189 = phi float [ %2071, %2066 ], [ %1318, %1509 ], [ %1318, %1311 ], [ %2071, %2162 ], [ %2071, %2160 ], [ %2071, %2120 ], [ %2071, %2093 ], [ %1318, %1328 ]
  %2190 = phi float [ %2072, %2066 ], [ %1319, %1509 ], [ %1319, %1311 ], [ %2072, %2162 ], [ %2072, %2160 ], [ %2072, %2120 ], [ %2072, %2093 ], [ %1319, %1328 ]
  %2191 = phi float [ %1320, %2066 ], [ %1320, %1509 ], [ %1320, %1311 ], [ %2177, %2162 ], [ %1320, %2160 ], [ %2155, %2120 ], [ %2112, %2093 ], [ %1320, %1328 ]
  %2192 = phi float [ %1321, %2066 ], [ %1321, %1509 ], [ %1321, %1311 ], [ %2178, %2162 ], [ %1321, %2160 ], [ %2156, %2120 ], [ %2113, %2093 ], [ %1321, %1328 ]
  %2193 = phi float [ %1322, %2066 ], [ %1322, %1509 ], [ %1322, %1311 ], [ %2179, %2162 ], [ %1322, %2160 ], [ %2157, %2120 ], [ %2114, %2093 ], [ %1322, %1328 ]
  %2194 = phi float [ %2073, %2066 ], [ %1323, %1509 ], [ %1323, %1311 ], [ %2073, %2162 ], [ %2073, %2160 ], [ %2073, %2120 ], [ %2073, %2093 ], [ %1323, %1328 ]
  %2195 = phi float [ %1325, %2066 ], [ %1325, %1509 ], [ %1325, %1311 ], [ %2173, %2162 ], [ %1325, %2160 ], [ %2151, %2120 ], [ %2105, %2093 ], [ %1325, %1328 ]
  %2196 = phi float [ %1326, %2066 ], [ %1326, %1509 ], [ %1326, %1311 ], [ %2170, %2162 ], [ %1326, %2160 ], [ %2128, %2120 ], [ %2102, %2093 ], [ %1326, %1328 ]
  %2197 = phi float [ %1327, %2066 ], [ %1327, %1509 ], [ %1327, %1311 ], [ %2181, %2162 ], [ %1327, %2160 ], [ %2159, %2120 ], [ %2117, %2093 ], [ %1327, %1328 ]
  br i1 %643, label %3052, label %2198

; <label>:2198                                    ; preds = %2182
  %2199 = icmp ult i32 %699, 3
  %2200 = add i32 %56, 56
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %56, 60
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = or i32 %2205, %2202
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %3052, label %2208

; <label>:2208                                    ; preds = %2198
  %2209 = and i32 %2202, 262144
  %2210 = icmp ne i32 %2209, 0
  %2211 = select i1 %2210, float %63, float 1.000000e+00
  %2212 = select i1 %2210, float %64, float 0.000000e+00
  %2213 = select i1 %2210, float %65, float 0.000000e+00
  %2214 = select i1 %2210, float %66, float 1.000000e+00
  %2215 = select i1 %2210, float %67, float %90
  %2216 = select i1 %2210, float %68, float %91
  %2217 = add i32 %56, 316
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = fmul fast float %2221, 0x3F50624DE0000000
  %2223 = add i32 %56, 120
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = lshr i32 %2225, 16
  %2227 = and i32 %2226, 255
  %2228 = lshr i32 %2225, 24
  %2229 = add i32 %56, 324
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 65535
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2231, 16
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = add i32 %56, 64
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 22
  %2240 = shl nuw nsw i32 %2239, 5
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = shl i32 %2238, 4
  %2243 = and i32 %2242, 32752
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = lshr i32 %2238, 7
  %2246 = and i32 %2245, 32752
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 3
  %2250 = fmul fast float %2249, 1.000000e+03
  %2251 = fmul fast float %2250, %527
  %2252 = call float @dx.op.unary.f32(i32 22, float %2251)  ; Frc(value)
  %2253 = fadd fast float %2252, %515
  %2254 = fmul fast float %2250, %529
  %2255 = call float @dx.op.unary.f32(i32 22, float %2254)  ; Frc(value)
  %2256 = fadd fast float %2255, %516
  %2257 = fmul fast float %2222, %2250
  %2258 = call float @dx.op.unary.f32(i32 22, float %2257)  ; Frc(value)
  %2259 = fmul fast float %2258, 0x401921FB60000000
  %2260 = fadd fast float %2259, %2241
  %2261 = call float @dx.op.unary.f32(i32 13, float %2260)  ; Sin(value)
  %2262 = call float @dx.op.unary.f32(i32 12, float %2260)  ; Cos(value)
  %2263 = fsub fast float -0.000000e+00, %2261
  %2264 = fadd fast float %2215, -5.000000e-01
  %2265 = fadd fast float %2216, -5.000000e-01
  %2266 = fmul fast float %2233, %2264
  %2267 = fmul fast float %2235, %2265
  %2268 = fadd fast float %2266, 5.000000e-01
  %2269 = fadd fast float %2267, 5.000000e-01
  %2270 = fmul fast float %2244, %2268
  %2271 = fmul fast float %2247, %2269
  %2272 = fmul fast float %2262, %2270
  %2273 = call float @dx.op.tertiary.f32(i32 46, float %2263, float %2271, float %2272)  ; FMad(a,b,c)
  %2274 = fmul fast float %2261, %2270
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2262, float %2271, float %2274)  ; FMad(a,b,c)
  %2276 = fadd fast float %2253, %2273
  %2277 = fadd fast float %2256, %2275
  %2278 = icmp ugt i32 %2227, 1
  %2279 = icmp ugt i32 %2225, 33554431
  %2280 = or i1 %2279, %2278
  br i1 %2280, label %2281, label %2306

; <label>:2281                                    ; preds = %2208
  %2282 = add i32 %56, 260
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 16
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = fmul fast float %2249, %2286
  %2288 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2289 = mul nuw nsw i32 %2227, %2228
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2288, %2290
  %2292 = call float @dx.op.unary.f32(i32 27, float %2291)  ; Round_ni(value)
  %2293 = fptoui float %2292 to i32
  %2294 = urem i32 %2293, %2227
  %2295 = udiv i32 %2293, %2228
  %2296 = call float @dx.op.unary.f32(i32 22, float %2276)  ; Frc(value)
  %2297 = call float @dx.op.unary.f32(i32 22, float %2277)  ; Frc(value)
  %2298 = uitofp i32 %2294 to float
  %2299 = uitofp i32 %2295 to float
  %2300 = fadd fast float %2296, %2298
  %2301 = fadd fast float %2297, %2299
  %2302 = uitofp i32 %2227 to float
  %2303 = uitofp i32 %2228 to float
  %2304 = fdiv fast float %2300, %2302
  %2305 = fdiv fast float %2301, %2303
  br label %2306

; <label>:2306                                    ; preds = %2281, %2208
  %2307 = phi float [ %2304, %2281 ], [ %2276, %2208 ]
  %2308 = phi float [ %2305, %2281 ], [ %2277, %2208 ]
  %2309 = and i32 %2202, 256
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2357, label %2311

; <label>:2311                                    ; preds = %2306
  %2312 = add i32 %56, 448
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = add i32 %2314, 0
  %2316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2316, %dx.types.Handle %105, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = add i32 %56, 132
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = shl i32 %2321, 4
  %2323 = and i32 %2322, 32752
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = lshr i32 %2321, 7
  %2326 = and i32 %2325, 32752
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = fsub fast float 1.000000e+00, %695
  %2329 = call float @dx.op.binary.f32(i32 35, float %2328, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2330 = bitcast float %695 to i32
  %2331 = sitofp i32 %2330 to float
  %2332 = fadd fast float %2331, 0xC1CFBF8940000000
  %2333 = fmul fast float %2327, %2332
  %2334 = fadd fast float %2333, 0x41CFBF8940000000
  %2335 = fptosi float %2334 to i32
  %2336 = bitcast i32 %2335 to float
  %2337 = bitcast float %2329 to i32
  %2338 = sitofp i32 %2337 to float
  %2339 = fadd fast float %2338, 0xC1CFBF8940000000
  %2340 = fmul fast float %2339, %2327
  %2341 = fadd fast float %2340, 0x41CFBF8940000000
  %2342 = fptosi float %2341 to i32
  %2343 = bitcast i32 %2342 to float
  %2344 = fmul fast float %2336, %2324
  %2345 = fmul fast float %2343, %2324
  %2346 = fsub fast float %2329, %2344
  %2347 = fadd fast float %2345, %2329
  %2348 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2350 = fsub fast float %2318, %2348
  %2351 = fsub fast float %2349, %2348
  %2352 = bitcast float %2351 to i32
  %2353 = sub nsw i32 2129859010, %2352
  %2354 = bitcast i32 %2353 to float
  %2355 = fmul fast float %2354, %2350
  %2356 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  br label %2357

; <label>:2357                                    ; preds = %2311, %2306
  %2358 = phi float [ %2356, %2311 ], [ %695, %2306 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 128
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2379, label %2363

; <label>:2363                                    ; preds = %2357
  %2364 = add i32 %56, 432
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = add i32 %2366, 0
  %2368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2368, %dx.types.Handle %105, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 524288
  %2374 = icmp ne i32 %2373, 0
  %2375 = fcmp fast ogt float %2370, 0x3FE0101020000000
  %2376 = select i1 %2375, float 1.000000e+00, float 0.000000e+00
  %2377 = select i1 %2374, float %2376, float %2370
  %2378 = fmul fast float %2377, %2358
  br label %2379

; <label>:2379                                    ; preds = %2363, %2357
  %2380 = phi float [ %2378, %2363 ], [ %2358, %2357 ]
  %2381 = fcmp fast ult float %2380, 0x3F70101020000000
  br i1 %2381, label %3052, label %2382

; <label>:2382                                    ; preds = %2379
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 16
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2585, label %2387

; <label>:2387                                    ; preds = %2382
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = add i32 %56, 384
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %104, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = extractvalue %dx.types.ResRet.f32 %2395, 3
  %2400 = and i32 %2389, 255
  %2401 = uitofp i32 %2400 to float
  %2402 = lshr i32 %2389, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2399, %2401
  %2406 = fadd fast float %2405, %2404
  %2407 = fmul fast float %2406, 0x3F70101000000000
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 512
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2420, label %2412

; <label>:2412                                    ; preds = %2387
  %2413 = add i32 %56, 468
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = add i32 %2415, 0
  %2417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2417, %dx.types.Handle %105, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2419 = extractvalue %dx.types.ResRet.f32 %2418, 0
  br label %2420

; <label>:2420                                    ; preds = %2412, %2387
  %2421 = phi float [ %2419, %2412 ], [ 1.000000e+00, %2387 ]
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 33554432
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2532, label %2426

; <label>:2426                                    ; preds = %2420
  %2427 = add i32 %56, 256
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 65535
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = lshr i32 %2429, 16
  %2433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2432)  ; LegacyF16ToF32(value)
  %2434 = add i32 %56, 260
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 65535
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 24
  %2442 = uitofp i32 %2441 to float
  %2443 = fmul fast float %2442, 0x3F70101020000000
  %2444 = and i32 %2440, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101020000000
  %2447 = lshr i32 %2440, 8
  %2448 = and i32 %2447, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = fmul fast float %2449, 0x3F70101020000000
  %2451 = lshr i32 %2440, 16
  %2452 = and i32 %2451, 255
  %2453 = uitofp i32 %2452 to float
  %2454 = fmul fast float %2453, 0x3F70101020000000
  %2455 = add i32 %56, 252
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = lshr i32 %2457, 24
  %2459 = uitofp i32 %2458 to float
  %2460 = fmul fast float %2459, 0x3F70101020000000
  %2461 = and i32 %2457, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = fmul fast float %2462, 0x3F70101020000000
  %2464 = lshr i32 %2457, 8
  %2465 = and i32 %2464, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = fmul fast float %2466, 0x3F70101020000000
  %2468 = lshr i32 %2457, 16
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101020000000
  %2472 = bitcast float %2396 to i32
  %2473 = ashr i32 %2472, 1
  %2474 = sub nsw i32 1597463174, %2473
  %2475 = bitcast i32 %2474 to float
  %2476 = fmul fast float %2396, 5.000000e-01
  %2477 = fmul fast float %2475, %2475
  %2478 = fmul fast float %2477, %2476
  %2479 = fsub fast float 1.500000e+00, %2478
  %2480 = fmul fast float %2475, %2396
  %2481 = fmul fast float %2480, %2479
  %2482 = bitcast float %2397 to i32
  %2483 = ashr i32 %2482, 1
  %2484 = sub nsw i32 1597463174, %2483
  %2485 = bitcast i32 %2484 to float
  %2486 = fmul fast float %2397, 5.000000e-01
  %2487 = fmul fast float %2485, %2485
  %2488 = fmul fast float %2487, %2486
  %2489 = fsub fast float 1.500000e+00, %2488
  %2490 = fmul fast float %2485, %2397
  %2491 = fmul fast float %2490, %2489
  %2492 = bitcast float %2398 to i32
  %2493 = ashr i32 %2492, 1
  %2494 = sub nsw i32 1597463174, %2493
  %2495 = bitcast i32 %2494 to float
  %2496 = fmul fast float %2398, 5.000000e-01
  %2497 = fmul fast float %2495, %2495
  %2498 = fmul fast float %2497, %2496
  %2499 = fsub fast float 1.500000e+00, %2498
  %2500 = fmul fast float %2495, %2398
  %2501 = fmul fast float %2500, %2499
  %2502 = fsub fast float %2481, %2463
  %2503 = fsub fast float %2491, %2467
  %2504 = fsub fast float %2501, %2471
  %2505 = fmul fast float %2502, %2431
  %2506 = fmul fast float %2503, %2433
  %2507 = fmul fast float %2504, %2438
  %2508 = fadd fast float %2505, %2446
  %2509 = fadd fast float %2506, %2450
  %2510 = fadd fast float %2507, %2454
  %2511 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2512 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2513 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2514 = fmul fast float %2511, %2511
  %2515 = fmul fast float %2512, %2512
  %2516 = fmul fast float %2513, %2513
  %2517 = fsub fast float %2514, %2396
  %2518 = fsub fast float %2515, %2397
  %2519 = fsub fast float %2516, %2398
  %2520 = fmul fast float %2517, %2421
  %2521 = fmul fast float %2518, %2421
  %2522 = fmul fast float %2519, %2421
  %2523 = fadd fast float %2520, %2396
  %2524 = fadd fast float %2521, %2397
  %2525 = fadd fast float %2522, %2398
  %2526 = fadd fast float %2443, %2407
  %2527 = fsub fast float %2526, %2460
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float %2528, %2407
  %2530 = fmul fast float %2529, %2421
  %2531 = fadd fast float %2530, %2407
  br label %2585

; <label>:2532                                    ; preds = %2420
  %2533 = and i32 %2423, 134217728
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2569, label %2535

; <label>:2535                                    ; preds = %2532
  %2536 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2537 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %2538 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %2539 = fadd fast float %2536, -5.000000e-01
  %2540 = fadd fast float %2537, -5.000000e-01
  %2541 = fadd fast float %2538, -5.000000e-01
  %2542 = fmul fast float %2539, %2421
  %2543 = fmul fast float %2540, %2421
  %2544 = fmul fast float %2541, %2421
  %2545 = fadd fast float %2542, 5.000000e-01
  %2546 = fadd fast float %2543, 5.000000e-01
  %2547 = fadd fast float %2544, 5.000000e-01
  %2548 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2549 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2550 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2551 = fmul fast float %2545, 2.000000e+00
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2552, %2548
  %2554 = fadd fast float %2553, %2551
  %2555 = fmul fast float %2554, %2548
  %2556 = fmul fast float %2546, 2.000000e+00
  %2557 = fsub fast float 1.000000e+00, %2556
  %2558 = fmul fast float %2557, %2549
  %2559 = fadd fast float %2558, %2556
  %2560 = fmul fast float %2559, %2549
  %2561 = fmul fast float %2547, 2.000000e+00
  %2562 = fsub fast float 1.000000e+00, %2561
  %2563 = fmul fast float %2562, %2550
  %2564 = fadd fast float %2563, %2561
  %2565 = fmul fast float %2564, %2550
  %2566 = fmul fast float %2555, %2555
  %2567 = fmul fast float %2560, %2560
  %2568 = fmul fast float %2565, %2565
  br label %2585

; <label>:2569                                    ; preds = %2532
  %2570 = fmul fast float %503, %503
  %2571 = fmul fast float %504, %504
  %2572 = fmul fast float %505, %505
  %2573 = fadd fast float %2570, -1.000000e+00
  %2574 = fadd fast float %2571, -1.000000e+00
  %2575 = fadd fast float %2572, -1.000000e+00
  %2576 = fmul fast float %2421, %2573
  %2577 = fmul fast float %2421, %2574
  %2578 = fmul fast float %2421, %2575
  %2579 = fadd fast float %2576, 1.000000e+00
  %2580 = fadd fast float %2577, 1.000000e+00
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fmul fast float %2579, %2396
  %2583 = fmul fast float %2580, %2397
  %2584 = fmul fast float %2581, %2398
  br label %2585

; <label>:2585                                    ; preds = %2569, %2535, %2426, %2382
  %2586 = phi float [ %2531, %2426 ], [ %2407, %2535 ], [ %2407, %2569 ], [ 0x3FA23C0BE0000000, %2382 ]
  %2587 = phi float [ %2523, %2426 ], [ %2566, %2535 ], [ %2582, %2569 ], [ 1.000000e+00, %2382 ]
  %2588 = phi float [ %2524, %2426 ], [ %2567, %2535 ], [ %2583, %2569 ], [ 1.000000e+00, %2382 ]
  %2589 = phi float [ %2525, %2426 ], [ %2568, %2535 ], [ %2584, %2569 ], [ 1.000000e+00, %2382 ]
  %2590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.i32 %2590, 1
  %2592 = and i32 %2591, 1
  %2593 = icmp ne i32 %2592, 0
  %2594 = add i32 %56, 356
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 32
  %2598 = icmp ne i32 %2597, 0
  %2599 = and i1 %2593, %2598
  %2600 = select i1 %2599, float 1.000000e+00, float %2587
  %2601 = select i1 %2599, float 0x3FD3333340000000, float %2588
  %2602 = select i1 %2599, float 0x3FD3333340000000, float %2589
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 32
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2679, label %2607

; <label>:2607                                    ; preds = %2585
  %2608 = add i32 %56, 124
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = add i32 %56, 400
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %2613, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2615, %dx.types.Handle %104, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.ResRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.ResRet.f32 %2616, 2
  %2620 = extractvalue %dx.types.ResRet.f32 %2616, 3
  %2621 = and i32 %2610, 255
  %2622 = uitofp i32 %2621 to float
  %2623 = lshr i32 %2610, 8
  %2624 = and i32 %2623, 255
  %2625 = uitofp i32 %2624 to float
  %2626 = lshr i32 %2610, 16
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2628, 0x3F70101000000000
  %2630 = fmul fast float %2617, %2622
  %2631 = fadd fast float %2630, %2625
  %2632 = fmul fast float %2631, 0x3F70101000000000
  %2633 = fadd fast float %2618, -5.000000e-01
  %2634 = fadd fast float %2620, -5.000000e-01
  %2635 = fmul fast float %2633, %2629
  %2636 = fmul fast float %2634, %2629
  %2637 = fadd fast float %2635, 5.000000e-01
  %2638 = fadd fast float %2636, 5.000000e-01
  %2639 = fmul fast float %2637, 2.000000e+00
  %2640 = fadd fast float %2639, -1.000000e+00
  %2641 = fmul fast float %2638, 2.000000e+00
  %2642 = fadd fast float %2641, -1.000000e+00
  %2643 = fadd fast float %2640, %2642
  %2644 = fmul fast float %2643, 5.000000e-01
  %2645 = fsub fast float %2640, %2642
  %2646 = fmul fast float %2645, 5.000000e-01
  %2647 = call float @dx.op.unary.f32(i32 6, float %2644)  ; FAbs(value)
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = call float @dx.op.unary.f32(i32 6, float %2646)  ; FAbs(value)
  %2650 = fsub fast float %2648, %2649
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2644, float %2646, float %2650, float %2644, float %2646, float %2650)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = call float @dx.op.unary.f32(i32 25, float %2651)  ; Rsqrt(value)
  %2653 = fmul fast float %2644, %2652
  %2654 = fmul fast float %2646, %2652
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 67108864
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2675, label %2659

; <label>:2659                                    ; preds = %2607
  %2660 = add i32 %56, 312
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 65535
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 65535
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = lshr i32 %2662, 16
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = fsub fast float %2632, %2670
  %2672 = fmul fast float %2671, %2664
  %2673 = fadd fast float %2672, %2668
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  br label %2675

; <label>:2675                                    ; preds = %2659, %2607
  %2676 = phi float [ %2674, %2659 ], [ %2632, %2607 ]
  %2677 = call float @dx.op.dot2.f32(i32 54, float %2653, float %2654, float %2211, float %2212)  ; Dot2(ax,ay,bx,by)
  %2678 = call float @dx.op.dot2.f32(i32 54, float %2653, float %2654, float %2213, float %2214)  ; Dot2(ax,ay,bx,by)
  br label %2679

; <label>:2679                                    ; preds = %2675, %2585
  %2680 = phi float [ %2676, %2675 ], [ 0x3FD6666660000000, %2585 ]
  %2681 = phi float [ %2677, %2675 ], [ 0.000000e+00, %2585 ]
  %2682 = phi float [ %2678, %2675 ], [ 0.000000e+00, %2585 ]
  %2683 = phi float [ %2619, %2675 ], [ 1.000000e+00, %2585 ]
  %2684 = add i32 %56, 192
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = lshr i32 %2686, 22
  %2688 = shl nuw nsw i32 %2687, 5
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 64
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2727, label %2694

; <label>:2694                                    ; preds = %2679
  %2695 = add i32 %56, 416
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = add i32 %2697, 0
  %2699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 131072
  %2703 = icmp eq i32 %2702, 0
  %2704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2699, %dx.types.Handle %104, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = fmul fast float %486, %2705
  %2709 = fmul fast float %487, %2706
  %2710 = fmul fast float %488, %2707
  br i1 %2703, label %2717, label %2711

; <label>:2711                                    ; preds = %2694
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = fmul fast float %2713, %2708
  %2715 = fmul fast float %2713, %2709
  %2716 = fmul fast float %2713, %2710
  br label %2717

; <label>:2717                                    ; preds = %2711, %2694
  %2718 = phi float [ %2714, %2711 ], [ %2708, %2694 ]
  %2719 = phi float [ %2715, %2711 ], [ %2709, %2694 ]
  %2720 = phi float [ %2716, %2711 ], [ %2710, %2694 ]
  %2721 = fmul fast float %2718, %2689
  %2722 = select i1 %261, float %2721, float %2718
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2722, float %2719, float %2720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = select i1 %261, float 0.000000e+00, float %2718
  %2725 = select i1 %261, float %2723, float %2719
  %2726 = select i1 %261, float 0.000000e+00, float %2720
  br label %2727

; <label>:2727                                    ; preds = %2717, %2679
  %2728 = phi float [ %2724, %2717 ], [ 0.000000e+00, %2679 ]
  %2729 = phi float [ %2725, %2717 ], [ 0.000000e+00, %2679 ]
  %2730 = phi float [ %2726, %2717 ], [ 0.000000e+00, %2679 ]
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, 1024
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2765, label %2735

; <label>:2735                                    ; preds = %2727
  %2736 = add i32 %56, 184
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 255
  %2740 = uitofp i32 %2739 to float
  %2741 = fmul fast float %2740, 0x3F70101020000000
  %2742 = lshr i32 %2738, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = fmul fast float %2744, 0x3F70101020000000
  %2746 = lshr i32 %2738, 16
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3F70101020000000
  %2750 = fmul fast float %2741, %2741
  %2751 = fmul fast float %2745, %2745
  %2752 = fmul fast float %2749, %2749
  %2753 = add i32 %56, 484
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %2755, 0
  %2757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2757, %dx.types.Handle %105, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = fmul fast float %2750, %2759
  %2763 = fmul fast float %2751, %2760
  %2764 = fmul fast float %2752, %2761
  br label %2765

; <label>:2765                                    ; preds = %2735, %2727
  %2766 = phi float [ %2762, %2735 ], [ 0.000000e+00, %2727 ]
  %2767 = phi float [ %2763, %2735 ], [ 0.000000e+00, %2727 ]
  %2768 = phi float [ %2764, %2735 ], [ 0.000000e+00, %2727 ]
  %2769 = fcmp fast ogt float %2766, 0.000000e+00
  %2770 = fcmp fast ogt float %2767, 0.000000e+00
  %2771 = fcmp fast ogt float %2768, 0.000000e+00
  %2772 = call float @dx.op.unary.f32(i32 23, float %2766)  ; Log(value)
  %2773 = call float @dx.op.unary.f32(i32 23, float %2767)  ; Log(value)
  %2774 = call float @dx.op.unary.f32(i32 23, float %2768)  ; Log(value)
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = lshr i32 %2776, 7
  %2778 = and i32 %2777, 32752
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = fmul fast float %2772, 0xBFE62E4300000000
  %2781 = fmul fast float %2780, %2779
  %2782 = fmul fast float %2773, 0xBFE62E4300000000
  %2783 = fmul fast float %2782, %2779
  %2784 = fmul fast float %2774, 0xBFE62E4300000000
  %2785 = fmul fast float %2784, %2779
  %2786 = select i1 %2769, float %2781, float 1.270000e+02
  %2787 = select i1 %2770, float %2783, float 1.270000e+02
  %2788 = select i1 %2771, float %2785, float 1.270000e+02
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 10240
  %2792 = icmp eq i32 %2791, 0
  br i1 %2792, label %2813, label %2793

; <label>:2793                                    ; preds = %2765
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = and i32 %2795, 2048
  %2797 = icmp eq i32 %2796, 0
  br i1 %2797, label %2813, label %2798

; <label>:2798                                    ; preds = %2793
  %2799 = add i32 %56, 500
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = add i32 %2801, 0
  %2803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2802, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2804 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2803, %dx.types.Handle %105, float %2307, float %2308, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 3
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = shl i32 %2807, 4
  %2809 = and i32 %2808, 32752
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = fmul fast float %2810, %2805
  %2812 = call float @dx.op.binary.f32(i32 35, float %2811, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2813

; <label>:2813                                    ; preds = %2798, %2793, %2765
  %2814 = phi float [ %2812, %2798 ], [ 0x3F70101020000000, %2793 ], [ 0x3F70101020000000, %2765 ]
  br i1 %2199, label %2815, label %2850

; <label>:2815                                    ; preds = %2813
  %2816 = fmul fast float %2814, 2.000000e+00
  %2817 = fcmp fast olt float %2786, 1.270000e+02
  %2818 = fcmp fast olt float %2787, 1.270000e+02
  %2819 = fcmp fast olt float %2788, 1.270000e+02
  %2820 = fmul fast float %2786, 0xBFF7154760000000
  %2821 = fmul fast float %2820, %2816
  %2822 = fmul fast float %2787, 0xBFF7154760000000
  %2823 = fmul fast float %2822, %2816
  %2824 = fmul fast float %2788, 0xBFF7154760000000
  %2825 = fmul fast float %2824, %2816
  %2826 = call float @dx.op.unary.f32(i32 21, float %2821)  ; Exp(value)
  %2827 = call float @dx.op.unary.f32(i32 21, float %2823)  ; Exp(value)
  %2828 = call float @dx.op.unary.f32(i32 21, float %2825)  ; Exp(value)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2830 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2832 = fadd fast float %2829, -1.000000e+00
  %2833 = select i1 %2817, float %2832, float -1.000000e+00
  %2834 = fadd fast float %2830, -1.000000e+00
  %2835 = select i1 %2818, float %2834, float -1.000000e+00
  %2836 = fadd fast float %2831, -1.000000e+00
  %2837 = select i1 %2819, float %2836, float -1.000000e+00
  %2838 = fmul fast float %2833, %2380
  %2839 = fmul fast float %2835, %2380
  %2840 = fmul fast float %2837, %2380
  %2841 = fadd fast float %2838, 1.000000e+00
  %2842 = fadd fast float %2839, 1.000000e+00
  %2843 = fadd fast float %2840, 1.000000e+00
  %2844 = fmul fast float %2841, %2185
  %2845 = fmul fast float %2842, %2186
  %2846 = fmul fast float %2843, %2187
  %2847 = fmul fast float %2841, %2188
  %2848 = fmul fast float %2842, %2189
  %2849 = fmul fast float %2843, %2190
  br label %2850

; <label>:2850                                    ; preds = %2815, %2813
  %2851 = phi float [ %2844, %2815 ], [ %2185, %2813 ]
  %2852 = phi float [ %2845, %2815 ], [ %2186, %2813 ]
  %2853 = phi float [ %2846, %2815 ], [ %2187, %2813 ]
  %2854 = phi float [ %2847, %2815 ], [ %2188, %2813 ]
  %2855 = phi float [ %2848, %2815 ], [ %2189, %2813 ]
  %2856 = phi float [ %2849, %2815 ], [ %2190, %2813 ]
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 3
  %2860 = icmp eq i32 %2859, 3
  br i1 %2860, label %2936, label %2861

; <label>:2861                                    ; preds = %2850
  %2862 = and i32 %2858, 16
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2380, float 0.000000e+00
  %2865 = icmp eq i32 %2859, 0
  br i1 %2865, label %2866, label %2891

; <label>:2866                                    ; preds = %2861
  %2867 = and i32 %2858, 64
  %2868 = icmp ne i32 %2867, 0
  %2869 = select i1 %2868, float %2380, float 0.000000e+00
  %2870 = fsub fast float %2600, %2851
  %2871 = fsub fast float %2601, %2852
  %2872 = fsub fast float %2602, %2853
  %2873 = fmul fast float %2864, %2870
  %2874 = fmul fast float %2864, %2871
  %2875 = fmul fast float %2864, %2872
  %2876 = fadd fast float %2873, %2851
  %2877 = fadd fast float %2874, %2852
  %2878 = fadd fast float %2875, %2853
  %2879 = fsub fast float %2586, %2194
  %2880 = fmul fast float %2864, %2879
  %2881 = fadd fast float %2880, %2194
  %2882 = fsub fast float %2728, %2854
  %2883 = fsub fast float %2729, %2855
  %2884 = fsub fast float %2730, %2856
  %2885 = fmul fast float %2869, %2882
  %2886 = fmul fast float %2869, %2883
  %2887 = fmul fast float %2869, %2884
  %2888 = fadd fast float %2885, %2854
  %2889 = fadd fast float %2886, %2855
  %2890 = fadd fast float %2887, %2856
  br label %2936

; <label>:2891                                    ; preds = %2861
  %2892 = icmp eq i32 %2859, 1
  br i1 %2892, label %2893, label %2906

; <label>:2893                                    ; preds = %2891
  %2894 = fadd fast float %2600, -1.000000e+00
  %2895 = fadd fast float %2601, -1.000000e+00
  %2896 = fadd fast float %2602, -1.000000e+00
  %2897 = fmul fast float %2864, %2894
  %2898 = fmul fast float %2864, %2895
  %2899 = fmul fast float %2864, %2896
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fadd fast float %2898, 1.000000e+00
  %2902 = fadd fast float %2899, 1.000000e+00
  %2903 = fmul fast float %2900, %2851
  %2904 = fmul fast float %2901, %2852
  %2905 = fmul fast float %2902, %2853
  br label %2936

; <label>:2906                                    ; preds = %2891
  %2907 = icmp eq i32 %2859, 2
  br i1 %2907, label %2908, label %2936

; <label>:2908                                    ; preds = %2906
  %2909 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2910 = call float @dx.op.unary.f32(i32 24, float %2601)  ; Sqrt(value)
  %2911 = call float @dx.op.unary.f32(i32 24, float %2602)  ; Sqrt(value)
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fadd fast float %2910, -5.000000e-01
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fmul fast float %2912, %2864
  %2916 = fmul fast float %2913, %2864
  %2917 = fmul fast float %2914, %2864
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = fadd fast float %2916, 5.000000e-01
  %2920 = fadd fast float %2917, 5.000000e-01
  %2921 = fmul fast float %2918, 2.000000e+00
  %2922 = fsub fast float 1.000000e+00, %2921
  %2923 = fmul fast float %2922, %2851
  %2924 = fadd fast float %2923, %2921
  %2925 = fmul fast float %2924, %2851
  %2926 = fmul fast float %2919, 2.000000e+00
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = fmul fast float %2927, %2852
  %2929 = fadd fast float %2928, %2926
  %2930 = fmul fast float %2929, %2852
  %2931 = fmul fast float %2920, 2.000000e+00
  %2932 = fsub fast float 1.000000e+00, %2931
  %2933 = fmul fast float %2932, %2853
  %2934 = fadd fast float %2933, %2931
  %2935 = fmul fast float %2934, %2853
  br label %2936

; <label>:2936                                    ; preds = %2908, %2906, %2893, %2866, %2850
  %2937 = phi float [ %2851, %2850 ], [ %2925, %2908 ], [ %2851, %2906 ], [ %2903, %2893 ], [ %2876, %2866 ]
  %2938 = phi float [ %2852, %2850 ], [ %2930, %2908 ], [ %2852, %2906 ], [ %2904, %2893 ], [ %2877, %2866 ]
  %2939 = phi float [ %2853, %2850 ], [ %2935, %2908 ], [ %2853, %2906 ], [ %2905, %2893 ], [ %2878, %2866 ]
  %2940 = phi float [ %2854, %2850 ], [ %2854, %2908 ], [ %2854, %2906 ], [ %2854, %2893 ], [ %2888, %2866 ]
  %2941 = phi float [ %2855, %2850 ], [ %2855, %2908 ], [ %2855, %2906 ], [ %2855, %2893 ], [ %2889, %2866 ]
  %2942 = phi float [ %2856, %2850 ], [ %2856, %2908 ], [ %2856, %2906 ], [ %2856, %2893 ], [ %2890, %2866 ]
  %2943 = phi float [ %2194, %2850 ], [ %2194, %2908 ], [ %2194, %2906 ], [ %2194, %2893 ], [ %2881, %2866 ]
  %2944 = and i32 %2858, 12
  %2945 = icmp eq i32 %2944, 12
  br i1 %2945, label %3052, label %2946

; <label>:2946                                    ; preds = %2936
  %2947 = and i32 %2858, 2097184
  %2948 = icmp eq i32 %2947, 2097184
  %2949 = select i1 %2948, float %2380, float 0.000000e+00
  %2950 = and i32 %2858, 4194336
  %2951 = icmp eq i32 %2950, 4194336
  %2952 = select i1 %2951, float %2380, float 0.000000e+00
  %2953 = and i32 %2858, 8388640
  %2954 = icmp eq i32 %2953, 8388640
  %2955 = select i1 %2954, float %2380, float 0.000000e+00
  %2956 = and i32 %2858, 1024
  %2957 = icmp ne i32 %2956, 0
  %2958 = select i1 %2957, float %2380, float 0.000000e+00
  %2959 = and i32 %2858, 2048
  %2960 = icmp ne i32 %2959, 0
  %2961 = select i1 %2960, float %2380, float 0.000000e+00
  %2962 = icmp eq i32 %2944, 0
  br i1 %2962, label %2963, label %2988

; <label>:2963                                    ; preds = %2946
  %2964 = fsub fast float %2681, %2183
  %2965 = fsub fast float %2682, %2184
  %2966 = fmul fast float %2949, %2964
  %2967 = fmul fast float %2949, %2965
  %2968 = fadd fast float %2966, %2183
  %2969 = fadd fast float %2967, %2184
  %2970 = fsub fast float %2683, %2196
  %2971 = fmul fast float %2952, %2970
  %2972 = fadd fast float %2971, %2196
  %2973 = fsub fast float %2680, %2195
  %2974 = fmul fast float %2955, %2973
  %2975 = fadd fast float %2974, %2195
  %2976 = fsub fast float %2786, %2191
  %2977 = fsub fast float %2787, %2192
  %2978 = fsub fast float %2788, %2193
  %2979 = fmul fast float %2958, %2976
  %2980 = fmul fast float %2958, %2977
  %2981 = fmul fast float %2958, %2978
  %2982 = fadd fast float %2979, %2191
  %2983 = fadd fast float %2980, %2192
  %2984 = fadd fast float %2981, %2193
  %2985 = fsub fast float %2814, %2197
  %2986 = fmul fast float %2961, %2985
  %2987 = fadd fast float %2986, %2197
  br label %3052

; <label>:2988                                    ; preds = %2946
  %2989 = icmp eq i32 %2944, 4
  br i1 %2989, label %2990, label %3030

; <label>:2990                                    ; preds = %2988
  %2991 = fmul fast float %2949, %2681
  %2992 = fmul fast float %2949, %2682
  %2993 = fadd fast float %2991, %2183
  %2994 = fadd fast float %2992, %2184
  %2995 = call float @dx.op.binary.f32(i32 36, float %2196, float %2683)  ; FMin(a,b)
  %2996 = fsub fast float %2995, %2196
  %2997 = fmul fast float %2996, %2952
  %2998 = fadd fast float %2997, %2196
  %2999 = fadd fast float %2680, %2195
  %3000 = fmul fast float %2999, 0x3FF337FAE0000000
  %3001 = fmul fast float %2195, %2195
  %3002 = fmul fast float %2680, %2680
  %3003 = fadd fast float %3002, %3001
  %3004 = fmul fast float %3003, 0x3FE5152B00000000
  %3005 = fmul fast float %2195, 0xBFCC1F85E0000000
  %3006 = fmul fast float %3005, %2680
  %3007 = fadd fast float %3006, 0xBFE1363700000000
  %3008 = fadd fast float %3007, %3000
  %3009 = fsub fast float %3008, %3004
  %3010 = fmul fast float %2999, 0x3FBA6F0D00000000
  %3011 = fmul fast float %3003, 0x3FD0432880000000
  %3012 = fmul fast float %2195, 0xBFEF110800000000
  %3013 = fmul fast float %3012, %2680
  %3014 = fadd fast float %3013, 1.000000e+00
  %3015 = fsub fast float %3014, %3010
  %3016 = fadd fast float %3015, %3011
  %3017 = fdiv fast float %3009, %3016
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3019 = fsub fast float %3018, %2195
  %3020 = fmul fast float %3019, %2955
  %3021 = fadd fast float %3020, %2195
  %3022 = fmul fast float %2958, %2786
  %3023 = fmul fast float %2958, %2787
  %3024 = fmul fast float %2958, %2788
  %3025 = fadd fast float %3022, %2191
  %3026 = fadd fast float %3023, %2192
  %3027 = fadd fast float %3024, %2193
  %3028 = fmul fast float %2961, %2814
  %3029 = fadd fast float %3028, %2197
  br label %3052

; <label>:3030                                    ; preds = %2988
  %3031 = icmp eq i32 %2944, 8
  br i1 %3031, label %3032, label %3052

; <label>:3032                                    ; preds = %3030
  %3033 = fmul fast float %2949, %2681
  %3034 = fmul fast float %2949, %2682
  %3035 = fadd fast float %3033, %2183
  %3036 = fadd fast float %3034, %2184
  %3037 = call float @dx.op.binary.f32(i32 36, float %2196, float %2683)  ; FMin(a,b)
  %3038 = fsub fast float %3037, %2196
  %3039 = fmul fast float %3038, %2952
  %3040 = fadd fast float %3039, %2196
  %3041 = fsub fast float %2680, %2195
  %3042 = fmul fast float %2955, %3041
  %3043 = fadd fast float %3042, %2195
  %3044 = fmul fast float %2958, %2786
  %3045 = fmul fast float %2958, %2787
  %3046 = fmul fast float %2958, %2788
  %3047 = fadd fast float %3044, %2191
  %3048 = fadd fast float %3045, %2192
  %3049 = fadd fast float %3046, %2193
  %3050 = fmul fast float %2961, %2814
  %3051 = fadd fast float %3050, %2197
  br label %3052

; <label>:3052                                    ; preds = %3032, %3030, %2990, %2963, %2936, %2379, %2198, %2182
  %3053 = phi float [ %2183, %2936 ], [ %2183, %2379 ], [ %2183, %2182 ], [ %3035, %3032 ], [ %2183, %3030 ], [ %2993, %2990 ], [ %2968, %2963 ], [ %2183, %2198 ]
  %3054 = phi float [ %2184, %2936 ], [ %2184, %2379 ], [ %2184, %2182 ], [ %3036, %3032 ], [ %2184, %3030 ], [ %2994, %2990 ], [ %2969, %2963 ], [ %2184, %2198 ]
  %3055 = phi float [ %2937, %2936 ], [ %2185, %2379 ], [ %2185, %2182 ], [ %2937, %3032 ], [ %2937, %3030 ], [ %2937, %2990 ], [ %2937, %2963 ], [ %2185, %2198 ]
  %3056 = phi float [ %2938, %2936 ], [ %2186, %2379 ], [ %2186, %2182 ], [ %2938, %3032 ], [ %2938, %3030 ], [ %2938, %2990 ], [ %2938, %2963 ], [ %2186, %2198 ]
  %3057 = phi float [ %2939, %2936 ], [ %2187, %2379 ], [ %2187, %2182 ], [ %2939, %3032 ], [ %2939, %3030 ], [ %2939, %2990 ], [ %2939, %2963 ], [ %2187, %2198 ]
  %3058 = phi float [ %2940, %2936 ], [ %2188, %2379 ], [ %2188, %2182 ], [ %2940, %3032 ], [ %2940, %3030 ], [ %2940, %2990 ], [ %2940, %2963 ], [ %2188, %2198 ]
  %3059 = phi float [ %2941, %2936 ], [ %2189, %2379 ], [ %2189, %2182 ], [ %2941, %3032 ], [ %2941, %3030 ], [ %2941, %2990 ], [ %2941, %2963 ], [ %2189, %2198 ]
  %3060 = phi float [ %2942, %2936 ], [ %2190, %2379 ], [ %2190, %2182 ], [ %2942, %3032 ], [ %2942, %3030 ], [ %2942, %2990 ], [ %2942, %2963 ], [ %2190, %2198 ]
  %3061 = phi float [ %2191, %2936 ], [ %2191, %2379 ], [ %2191, %2182 ], [ %3047, %3032 ], [ %2191, %3030 ], [ %3025, %2990 ], [ %2982, %2963 ], [ %2191, %2198 ]
  %3062 = phi float [ %2192, %2936 ], [ %2192, %2379 ], [ %2192, %2182 ], [ %3048, %3032 ], [ %2192, %3030 ], [ %3026, %2990 ], [ %2983, %2963 ], [ %2192, %2198 ]
  %3063 = phi float [ %2193, %2936 ], [ %2193, %2379 ], [ %2193, %2182 ], [ %3049, %3032 ], [ %2193, %3030 ], [ %3027, %2990 ], [ %2984, %2963 ], [ %2193, %2198 ]
  %3064 = phi float [ %2943, %2936 ], [ %2194, %2379 ], [ %2194, %2182 ], [ %2943, %3032 ], [ %2943, %3030 ], [ %2943, %2990 ], [ %2943, %2963 ], [ %2194, %2198 ]
  %3065 = phi float [ %2195, %2936 ], [ %2195, %2379 ], [ %2195, %2182 ], [ %3043, %3032 ], [ %2195, %3030 ], [ %3021, %2990 ], [ %2975, %2963 ], [ %2195, %2198 ]
  %3066 = phi float [ %2196, %2936 ], [ %2196, %2379 ], [ %2196, %2182 ], [ %3040, %3032 ], [ %2196, %3030 ], [ %2998, %2990 ], [ %2972, %2963 ], [ %2196, %2198 ]
  %3067 = phi float [ %2197, %2936 ], [ %2197, %2379 ], [ %2197, %2182 ], [ %3051, %3032 ], [ %2197, %3030 ], [ %3029, %2990 ], [ %2987, %2963 ], [ %2197, %2198 ]
  br i1 %645, label %3922, label %3068

; <label>:3068                                    ; preds = %3052
  %3069 = icmp ult i32 %699, 4
  %3070 = add i32 %56, 72
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = add i32 %56, 76
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = or i32 %3075, %3072
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3922, label %3078

; <label>:3078                                    ; preds = %3068
  %3079 = and i32 %3072, 262144
  %3080 = icmp ne i32 %3079, 0
  %3081 = select i1 %3080, float %63, float 1.000000e+00
  %3082 = select i1 %3080, float %64, float 0.000000e+00
  %3083 = select i1 %3080, float %65, float 0.000000e+00
  %3084 = select i1 %3080, float %66, float 1.000000e+00
  %3085 = select i1 %3080, float %67, float %90
  %3086 = select i1 %3080, float %68, float %91
  %3087 = add i32 %56, 332
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = lshr i32 %3089, 16
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = fmul fast float %3091, 0x3F50624DE0000000
  %3093 = add i32 %56, 136
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = lshr i32 %3095, 16
  %3097 = and i32 %3096, 255
  %3098 = lshr i32 %3095, 24
  %3099 = add i32 %56, 340
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 65535
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = lshr i32 %3101, 16
  %3105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3104)  ; LegacyF16ToF32(value)
  %3106 = add i32 %56, 80
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = lshr i32 %3108, 22
  %3110 = shl nuw nsw i32 %3109, 5
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = shl i32 %3108, 4
  %3113 = and i32 %3112, 32752
  %3114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3113)  ; LegacyF16ToF32(value)
  %3115 = lshr i32 %3108, 7
  %3116 = and i32 %3115, 32752
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 3
  %3120 = fmul fast float %3119, 1.000000e+03
  %3121 = fmul fast float %3120, %634
  %3122 = call float @dx.op.unary.f32(i32 22, float %3121)  ; Frc(value)
  %3123 = fadd fast float %3122, %622
  %3124 = fmul fast float %3120, %636
  %3125 = call float @dx.op.unary.f32(i32 22, float %3124)  ; Frc(value)
  %3126 = fadd fast float %3125, %623
  %3127 = fmul fast float %3092, %3120
  %3128 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3129 = fmul fast float %3128, 0x401921FB60000000
  %3130 = fadd fast float %3129, %3111
  %3131 = call float @dx.op.unary.f32(i32 13, float %3130)  ; Sin(value)
  %3132 = call float @dx.op.unary.f32(i32 12, float %3130)  ; Cos(value)
  %3133 = fsub fast float -0.000000e+00, %3131
  %3134 = fadd fast float %3085, -5.000000e-01
  %3135 = fadd fast float %3086, -5.000000e-01
  %3136 = fmul fast float %3103, %3134
  %3137 = fmul fast float %3105, %3135
  %3138 = fadd fast float %3136, 5.000000e-01
  %3139 = fadd fast float %3137, 5.000000e-01
  %3140 = fmul fast float %3114, %3138
  %3141 = fmul fast float %3117, %3139
  %3142 = fmul fast float %3132, %3140
  %3143 = call float @dx.op.tertiary.f32(i32 46, float %3133, float %3141, float %3142)  ; FMad(a,b,c)
  %3144 = fmul fast float %3131, %3140
  %3145 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3141, float %3144)  ; FMad(a,b,c)
  %3146 = fadd fast float %3123, %3143
  %3147 = fadd fast float %3126, %3145
  %3148 = icmp ugt i32 %3097, 1
  %3149 = icmp ugt i32 %3095, 33554431
  %3150 = or i1 %3149, %3148
  br i1 %3150, label %3151, label %3176

; <label>:3151                                    ; preds = %3078
  %3152 = add i32 %56, 276
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = lshr i32 %3154, 16
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = fmul fast float %3119, %3156
  %3158 = call float @dx.op.unary.f32(i32 22, float %3157)  ; Frc(value)
  %3159 = mul nuw nsw i32 %3097, %3098
  %3160 = uitofp i32 %3159 to float
  %3161 = fmul fast float %3158, %3160
  %3162 = call float @dx.op.unary.f32(i32 27, float %3161)  ; Round_ni(value)
  %3163 = fptoui float %3162 to i32
  %3164 = urem i32 %3163, %3097
  %3165 = udiv i32 %3163, %3098
  %3166 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3167 = call float @dx.op.unary.f32(i32 22, float %3147)  ; Frc(value)
  %3168 = uitofp i32 %3164 to float
  %3169 = uitofp i32 %3165 to float
  %3170 = fadd fast float %3166, %3168
  %3171 = fadd fast float %3167, %3169
  %3172 = uitofp i32 %3097 to float
  %3173 = uitofp i32 %3098 to float
  %3174 = fdiv fast float %3170, %3172
  %3175 = fdiv fast float %3171, %3173
  br label %3176

; <label>:3176                                    ; preds = %3151, %3078
  %3177 = phi float [ %3174, %3151 ], [ %3146, %3078 ]
  %3178 = phi float [ %3175, %3151 ], [ %3147, %3078 ]
  %3179 = and i32 %3072, 256
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3227, label %3181

; <label>:3181                                    ; preds = %3176
  %3182 = add i32 %56, 452
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = add i32 %3184, 0
  %3186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3186, %dx.types.Handle %105, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = add i32 %56, 148
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = shl i32 %3191, 4
  %3193 = and i32 %3192, 32752
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = lshr i32 %3191, 7
  %3196 = and i32 %3195, 32752
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = fsub fast float 1.000000e+00, %694
  %3199 = call float @dx.op.binary.f32(i32 35, float %3198, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3200 = bitcast float %694 to i32
  %3201 = sitofp i32 %3200 to float
  %3202 = fadd fast float %3201, 0xC1CFBF8940000000
  %3203 = fmul fast float %3197, %3202
  %3204 = fadd fast float %3203, 0x41CFBF8940000000
  %3205 = fptosi float %3204 to i32
  %3206 = bitcast i32 %3205 to float
  %3207 = bitcast float %3199 to i32
  %3208 = sitofp i32 %3207 to float
  %3209 = fadd fast float %3208, 0xC1CFBF8940000000
  %3210 = fmul fast float %3209, %3197
  %3211 = fadd fast float %3210, 0x41CFBF8940000000
  %3212 = fptosi float %3211 to i32
  %3213 = bitcast i32 %3212 to float
  %3214 = fmul fast float %3206, %3194
  %3215 = fmul fast float %3213, %3194
  %3216 = fsub fast float %3199, %3214
  %3217 = fadd fast float %3215, %3199
  %3218 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = fsub fast float %3188, %3218
  %3221 = fsub fast float %3219, %3218
  %3222 = bitcast float %3221 to i32
  %3223 = sub nsw i32 2129859010, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3224, %3220
  %3226 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  br label %3227

; <label>:3227                                    ; preds = %3181, %3176
  %3228 = phi float [ %3226, %3181 ], [ %694, %3176 ]
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 128
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3249, label %3233

; <label>:3233                                    ; preds = %3227
  %3234 = add i32 %56, 436
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = add i32 %3236, 0
  %3238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3238, %dx.types.Handle %105, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 524288
  %3244 = icmp ne i32 %3243, 0
  %3245 = fcmp fast ogt float %3240, 0x3FE0101020000000
  %3246 = select i1 %3245, float 1.000000e+00, float 0.000000e+00
  %3247 = select i1 %3244, float %3246, float %3240
  %3248 = fmul fast float %3247, %3228
  br label %3249

; <label>:3249                                    ; preds = %3233, %3227
  %3250 = phi float [ %3248, %3233 ], [ %3228, %3227 ]
  %3251 = fcmp fast ult float %3250, 0x3F70101020000000
  br i1 %3251, label %3922, label %3252

; <label>:3252                                    ; preds = %3249
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 16
  %3256 = icmp eq i32 %3255, 0
  br i1 %3256, label %3455, label %3257

; <label>:3257                                    ; preds = %3252
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = add i32 %56, 388
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = add i32 %3262, 0
  %3264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3264, %dx.types.Handle %104, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.ResRet.f32 %3265, 2
  %3269 = extractvalue %dx.types.ResRet.f32 %3265, 3
  %3270 = and i32 %3259, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = lshr i32 %3259, 8
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3269, %3271
  %3276 = fadd fast float %3275, %3274
  %3277 = fmul fast float %3276, 0x3F70101000000000
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 512
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3290, label %3282

; <label>:3282                                    ; preds = %3257
  %3283 = add i32 %56, 472
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = add i32 %3285, 0
  %3287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3287, %dx.types.Handle %105, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  br label %3290

; <label>:3290                                    ; preds = %3282, %3257
  %3291 = phi float [ %3289, %3282 ], [ 1.000000e+00, %3257 ]
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 33554432
  %3295 = icmp eq i32 %3294, 0
  br i1 %3295, label %3402, label %3296

; <label>:3296                                    ; preds = %3290
  %3297 = add i32 %56, 272
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 65535
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = lshr i32 %3299, 16
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = add i32 %56, 276
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 65535
  %3308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3307)  ; LegacyF16ToF32(value)
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = lshr i32 %3310, 24
  %3312 = uitofp i32 %3311 to float
  %3313 = fmul fast float %3312, 0x3F70101020000000
  %3314 = and i32 %3310, 255
  %3315 = uitofp i32 %3314 to float
  %3316 = fmul fast float %3315, 0x3F70101020000000
  %3317 = lshr i32 %3310, 8
  %3318 = and i32 %3317, 255
  %3319 = uitofp i32 %3318 to float
  %3320 = fmul fast float %3319, 0x3F70101020000000
  %3321 = lshr i32 %3310, 16
  %3322 = and i32 %3321, 255
  %3323 = uitofp i32 %3322 to float
  %3324 = fmul fast float %3323, 0x3F70101020000000
  %3325 = add i32 %56, 268
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = lshr i32 %3327, 24
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3329, 0x3F70101020000000
  %3331 = and i32 %3327, 255
  %3332 = uitofp i32 %3331 to float
  %3333 = fmul fast float %3332, 0x3F70101020000000
  %3334 = lshr i32 %3327, 8
  %3335 = and i32 %3334, 255
  %3336 = uitofp i32 %3335 to float
  %3337 = fmul fast float %3336, 0x3F70101020000000
  %3338 = lshr i32 %3327, 16
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 0x3F70101020000000
  %3342 = bitcast float %3266 to i32
  %3343 = ashr i32 %3342, 1
  %3344 = sub nsw i32 1597463174, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = fmul fast float %3266, 5.000000e-01
  %3347 = fmul fast float %3345, %3345
  %3348 = fmul fast float %3347, %3346
  %3349 = fsub fast float 1.500000e+00, %3348
  %3350 = fmul fast float %3345, %3266
  %3351 = fmul fast float %3350, %3349
  %3352 = bitcast float %3267 to i32
  %3353 = ashr i32 %3352, 1
  %3354 = sub nsw i32 1597463174, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = fmul fast float %3267, 5.000000e-01
  %3357 = fmul fast float %3355, %3355
  %3358 = fmul fast float %3357, %3356
  %3359 = fsub fast float 1.500000e+00, %3358
  %3360 = fmul fast float %3355, %3267
  %3361 = fmul fast float %3360, %3359
  %3362 = bitcast float %3268 to i32
  %3363 = ashr i32 %3362, 1
  %3364 = sub nsw i32 1597463174, %3363
  %3365 = bitcast i32 %3364 to float
  %3366 = fmul fast float %3268, 5.000000e-01
  %3367 = fmul fast float %3365, %3365
  %3368 = fmul fast float %3367, %3366
  %3369 = fsub fast float 1.500000e+00, %3368
  %3370 = fmul fast float %3365, %3268
  %3371 = fmul fast float %3370, %3369
  %3372 = fsub fast float %3351, %3333
  %3373 = fsub fast float %3361, %3337
  %3374 = fsub fast float %3371, %3341
  %3375 = fmul fast float %3372, %3301
  %3376 = fmul fast float %3373, %3303
  %3377 = fmul fast float %3374, %3308
  %3378 = fadd fast float %3375, %3316
  %3379 = fadd fast float %3376, %3320
  %3380 = fadd fast float %3377, %3324
  %3381 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  %3382 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3384 = fmul fast float %3381, %3381
  %3385 = fmul fast float %3382, %3382
  %3386 = fmul fast float %3383, %3383
  %3387 = fsub fast float %3384, %3266
  %3388 = fsub fast float %3385, %3267
  %3389 = fsub fast float %3386, %3268
  %3390 = fmul fast float %3387, %3291
  %3391 = fmul fast float %3388, %3291
  %3392 = fmul fast float %3389, %3291
  %3393 = fadd fast float %3390, %3266
  %3394 = fadd fast float %3391, %3267
  %3395 = fadd fast float %3392, %3268
  %3396 = fadd fast float %3313, %3277
  %3397 = fsub fast float %3396, %3330
  %3398 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3399 = fsub fast float %3398, %3277
  %3400 = fmul fast float %3399, %3291
  %3401 = fadd fast float %3400, %3277
  br label %3455

; <label>:3402                                    ; preds = %3290
  %3403 = and i32 %3293, 134217728
  %3404 = icmp eq i32 %3403, 0
  br i1 %3404, label %3439, label %3405

; <label>:3405                                    ; preds = %3402
  %3406 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %3407 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %3408 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %3409 = fadd fast float %3406, -5.000000e-01
  %3410 = fadd fast float %3407, -5.000000e-01
  %3411 = fadd fast float %3408, -5.000000e-01
  %3412 = fmul fast float %3409, %3291
  %3413 = fmul fast float %3410, %3291
  %3414 = fmul fast float %3411, %3291
  %3415 = fadd fast float %3412, 5.000000e-01
  %3416 = fadd fast float %3413, 5.000000e-01
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = call float @dx.op.unary.f32(i32 24, float %3266)  ; Sqrt(value)
  %3419 = call float @dx.op.unary.f32(i32 24, float %3267)  ; Sqrt(value)
  %3420 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3421 = fmul fast float %3415, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3418
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3418
  %3426 = fmul fast float %3416, 2.000000e+00
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3419
  %3429 = fadd fast float %3428, %3426
  %3430 = fmul fast float %3429, %3419
  %3431 = fmul fast float %3417, 2.000000e+00
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3432, %3420
  %3434 = fadd fast float %3433, %3431
  %3435 = fmul fast float %3434, %3420
  %3436 = fmul fast float %3425, %3425
  %3437 = fmul fast float %3430, %3430
  %3438 = fmul fast float %3435, %3435
  br label %3455

; <label>:3439                                    ; preds = %3402
  %3440 = fmul fast float %610, %610
  %3441 = fmul fast float %611, %611
  %3442 = fmul fast float %612, %612
  %3443 = fadd fast float %3440, -1.000000e+00
  %3444 = fadd fast float %3441, -1.000000e+00
  %3445 = fadd fast float %3442, -1.000000e+00
  %3446 = fmul fast float %3291, %3443
  %3447 = fmul fast float %3291, %3444
  %3448 = fmul fast float %3291, %3445
  %3449 = fadd fast float %3446, 1.000000e+00
  %3450 = fadd fast float %3447, 1.000000e+00
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fmul fast float %3449, %3266
  %3453 = fmul fast float %3450, %3267
  %3454 = fmul fast float %3451, %3268
  br label %3455

; <label>:3455                                    ; preds = %3439, %3405, %3296, %3252
  %3456 = phi float [ %3401, %3296 ], [ %3277, %3405 ], [ %3277, %3439 ], [ 0x3FA23C0BE0000000, %3252 ]
  %3457 = phi float [ %3393, %3296 ], [ %3436, %3405 ], [ %3452, %3439 ], [ 1.000000e+00, %3252 ]
  %3458 = phi float [ %3394, %3296 ], [ %3437, %3405 ], [ %3453, %3439 ], [ 1.000000e+00, %3252 ]
  %3459 = phi float [ %3395, %3296 ], [ %3438, %3405 ], [ %3454, %3439 ], [ 1.000000e+00, %3252 ]
  %3460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.i32 %3460, 1
  %3462 = and i32 %3461, 1
  %3463 = icmp ne i32 %3462, 0
  %3464 = add i32 %56, 356
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 32
  %3468 = icmp ne i32 %3467, 0
  %3469 = and i1 %3463, %3468
  %3470 = select i1 %3469, float 1.000000e+00, float %3457
  %3471 = select i1 %3469, float 0x3FD3333340000000, float %3458
  %3472 = select i1 %3469, float 0x3FD3333340000000, float %3459
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 32
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3549, label %3477

; <label>:3477                                    ; preds = %3455
  %3478 = add i32 %56, 140
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %56, 404
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = add i32 %3483, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3485, %dx.types.Handle %104, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = and i32 %3480, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = lshr i32 %3480, 8
  %3494 = and i32 %3493, 255
  %3495 = uitofp i32 %3494 to float
  %3496 = lshr i32 %3480, 16
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101000000000
  %3500 = fmul fast float %3487, %3492
  %3501 = fadd fast float %3500, %3495
  %3502 = fmul fast float %3501, 0x3F70101000000000
  %3503 = fadd fast float %3488, -5.000000e-01
  %3504 = fadd fast float %3490, -5.000000e-01
  %3505 = fmul fast float %3503, %3499
  %3506 = fmul fast float %3504, %3499
  %3507 = fadd fast float %3505, 5.000000e-01
  %3508 = fadd fast float %3506, 5.000000e-01
  %3509 = fmul fast float %3507, 2.000000e+00
  %3510 = fadd fast float %3509, -1.000000e+00
  %3511 = fmul fast float %3508, 2.000000e+00
  %3512 = fadd fast float %3511, -1.000000e+00
  %3513 = fadd fast float %3510, %3512
  %3514 = fmul fast float %3513, 5.000000e-01
  %3515 = fsub fast float %3510, %3512
  %3516 = fmul fast float %3515, 5.000000e-01
  %3517 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3518 = fsub fast float 1.000000e+00, %3517
  %3519 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3520 = fsub fast float %3518, %3519
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3516, float %3520, float %3514, float %3516, float %3520)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.unary.f32(i32 25, float %3521)  ; Rsqrt(value)
  %3523 = fmul fast float %3514, %3522
  %3524 = fmul fast float %3516, %3522
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 67108864
  %3528 = icmp eq i32 %3527, 0
  br i1 %3528, label %3545, label %3529

; <label>:3529                                    ; preds = %3477
  %3530 = add i32 %56, 328
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 65535
  %3534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3533)  ; LegacyF16ToF32(value)
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 65535
  %3538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3537)  ; LegacyF16ToF32(value)
  %3539 = lshr i32 %3532, 16
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = fsub fast float %3502, %3540
  %3542 = fmul fast float %3541, %3534
  %3543 = fadd fast float %3542, %3538
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  br label %3545

; <label>:3545                                    ; preds = %3529, %3477
  %3546 = phi float [ %3544, %3529 ], [ %3502, %3477 ]
  %3547 = call float @dx.op.dot2.f32(i32 54, float %3523, float %3524, float %3081, float %3082)  ; Dot2(ax,ay,bx,by)
  %3548 = call float @dx.op.dot2.f32(i32 54, float %3523, float %3524, float %3083, float %3084)  ; Dot2(ax,ay,bx,by)
  br label %3549

; <label>:3549                                    ; preds = %3545, %3455
  %3550 = phi float [ %3546, %3545 ], [ 0x3FD6666660000000, %3455 ]
  %3551 = phi float [ %3547, %3545 ], [ 0.000000e+00, %3455 ]
  %3552 = phi float [ %3548, %3545 ], [ 0.000000e+00, %3455 ]
  %3553 = phi float [ %3489, %3545 ], [ 1.000000e+00, %3455 ]
  %3554 = add i32 %56, 208
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = lshr i32 %3556, 22
  %3558 = shl nuw nsw i32 %3557, 5
  %3559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3558)  ; LegacyF16ToF32(value)
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 64
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3597, label %3564

; <label>:3564                                    ; preds = %3549
  %3565 = add i32 %56, 420
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = add i32 %3567, 0
  %3569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 131072
  %3573 = icmp eq i32 %3572, 0
  %3574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3569, %dx.types.Handle %104, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = fmul fast float %593, %3575
  %3579 = fmul fast float %594, %3576
  %3580 = fmul fast float %595, %3577
  br i1 %3573, label %3587, label %3581

; <label>:3581                                    ; preds = %3564
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 0
  %3584 = fmul fast float %3583, %3578
  %3585 = fmul fast float %3583, %3579
  %3586 = fmul fast float %3583, %3580
  br label %3587

; <label>:3587                                    ; preds = %3581, %3564
  %3588 = phi float [ %3584, %3581 ], [ %3578, %3564 ]
  %3589 = phi float [ %3585, %3581 ], [ %3579, %3564 ]
  %3590 = phi float [ %3586, %3581 ], [ %3580, %3564 ]
  %3591 = fmul fast float %3588, %3559
  %3592 = select i1 %261, float %3591, float %3588
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3592, float %3589, float %3590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = select i1 %261, float 0.000000e+00, float %3588
  %3595 = select i1 %261, float %3593, float %3589
  %3596 = select i1 %261, float 0.000000e+00, float %3590
  br label %3597

; <label>:3597                                    ; preds = %3587, %3549
  %3598 = phi float [ %3594, %3587 ], [ 0.000000e+00, %3549 ]
  %3599 = phi float [ %3595, %3587 ], [ 0.000000e+00, %3549 ]
  %3600 = phi float [ %3596, %3587 ], [ 0.000000e+00, %3549 ]
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = and i32 %3602, 1024
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3635, label %3605

; <label>:3605                                    ; preds = %3597
  %3606 = add i32 %56, 200
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = fmul fast float %3610, 0x3F70101020000000
  %3612 = lshr i32 %3608, 8
  %3613 = and i32 %3612, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = fmul fast float %3614, 0x3F70101020000000
  %3616 = lshr i32 %3608, 16
  %3617 = and i32 %3616, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = fmul fast float %3618, 0x3F70101020000000
  %3620 = fmul fast float %3611, %3611
  %3621 = fmul fast float %3615, %3615
  %3622 = fmul fast float %3619, %3619
  %3623 = add i32 %56, 488
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = add i32 %3625, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3627, %dx.types.Handle %105, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = fmul fast float %3620, %3629
  %3633 = fmul fast float %3621, %3630
  %3634 = fmul fast float %3622, %3631
  br label %3635

; <label>:3635                                    ; preds = %3605, %3597
  %3636 = phi float [ %3632, %3605 ], [ 0.000000e+00, %3597 ]
  %3637 = phi float [ %3633, %3605 ], [ 0.000000e+00, %3597 ]
  %3638 = phi float [ %3634, %3605 ], [ 0.000000e+00, %3597 ]
  %3639 = fcmp fast ogt float %3636, 0.000000e+00
  %3640 = fcmp fast ogt float %3637, 0.000000e+00
  %3641 = fcmp fast ogt float %3638, 0.000000e+00
  %3642 = call float @dx.op.unary.f32(i32 23, float %3636)  ; Log(value)
  %3643 = call float @dx.op.unary.f32(i32 23, float %3637)  ; Log(value)
  %3644 = call float @dx.op.unary.f32(i32 23, float %3638)  ; Log(value)
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = lshr i32 %3646, 7
  %3648 = and i32 %3647, 32752
  %3649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3648)  ; LegacyF16ToF32(value)
  %3650 = fmul fast float %3642, 0xBFE62E4300000000
  %3651 = fmul fast float %3650, %3649
  %3652 = fmul fast float %3643, 0xBFE62E4300000000
  %3653 = fmul fast float %3652, %3649
  %3654 = fmul fast float %3644, 0xBFE62E4300000000
  %3655 = fmul fast float %3654, %3649
  %3656 = select i1 %3639, float %3651, float 1.270000e+02
  %3657 = select i1 %3640, float %3653, float 1.270000e+02
  %3658 = select i1 %3641, float %3655, float 1.270000e+02
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 10240
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3683, label %3663

; <label>:3663                                    ; preds = %3635
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 2048
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3683, label %3668

; <label>:3668                                    ; preds = %3663
  %3669 = add i32 %56, 504
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = add i32 %3671, 0
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3673, %dx.types.Handle %105, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = shl i32 %3677, 4
  %3679 = and i32 %3678, 32752
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = fmul fast float %3680, %3675
  %3682 = call float @dx.op.binary.f32(i32 35, float %3681, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3683

; <label>:3683                                    ; preds = %3668, %3663, %3635
  %3684 = phi float [ %3682, %3668 ], [ 0x3F70101020000000, %3663 ], [ 0x3F70101020000000, %3635 ]
  br i1 %3069, label %3685, label %3720

; <label>:3685                                    ; preds = %3683
  %3686 = fmul fast float %3684, 2.000000e+00
  %3687 = fcmp fast olt float %3656, 1.270000e+02
  %3688 = fcmp fast olt float %3657, 1.270000e+02
  %3689 = fcmp fast olt float %3658, 1.270000e+02
  %3690 = fmul fast float %3656, 0xBFF7154760000000
  %3691 = fmul fast float %3690, %3686
  %3692 = fmul fast float %3657, 0xBFF7154760000000
  %3693 = fmul fast float %3692, %3686
  %3694 = fmul fast float %3658, 0xBFF7154760000000
  %3695 = fmul fast float %3694, %3686
  %3696 = call float @dx.op.unary.f32(i32 21, float %3691)  ; Exp(value)
  %3697 = call float @dx.op.unary.f32(i32 21, float %3693)  ; Exp(value)
  %3698 = call float @dx.op.unary.f32(i32 21, float %3695)  ; Exp(value)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3701 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3702 = fadd fast float %3699, -1.000000e+00
  %3703 = select i1 %3687, float %3702, float -1.000000e+00
  %3704 = fadd fast float %3700, -1.000000e+00
  %3705 = select i1 %3688, float %3704, float -1.000000e+00
  %3706 = fadd fast float %3701, -1.000000e+00
  %3707 = select i1 %3689, float %3706, float -1.000000e+00
  %3708 = fmul fast float %3703, %3250
  %3709 = fmul fast float %3705, %3250
  %3710 = fmul fast float %3707, %3250
  %3711 = fadd fast float %3708, 1.000000e+00
  %3712 = fadd fast float %3709, 1.000000e+00
  %3713 = fadd fast float %3710, 1.000000e+00
  %3714 = fmul fast float %3711, %3055
  %3715 = fmul fast float %3712, %3056
  %3716 = fmul fast float %3713, %3057
  %3717 = fmul fast float %3711, %3058
  %3718 = fmul fast float %3712, %3059
  %3719 = fmul fast float %3713, %3060
  br label %3720

; <label>:3720                                    ; preds = %3685, %3683
  %3721 = phi float [ %3714, %3685 ], [ %3055, %3683 ]
  %3722 = phi float [ %3715, %3685 ], [ %3056, %3683 ]
  %3723 = phi float [ %3716, %3685 ], [ %3057, %3683 ]
  %3724 = phi float [ %3717, %3685 ], [ %3058, %3683 ]
  %3725 = phi float [ %3718, %3685 ], [ %3059, %3683 ]
  %3726 = phi float [ %3719, %3685 ], [ %3060, %3683 ]
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 3
  %3730 = icmp eq i32 %3729, 3
  br i1 %3730, label %3806, label %3731

; <label>:3731                                    ; preds = %3720
  %3732 = and i32 %3728, 16
  %3733 = icmp ne i32 %3732, 0
  %3734 = select i1 %3733, float %3250, float 0.000000e+00
  %3735 = icmp eq i32 %3729, 0
  br i1 %3735, label %3736, label %3761

; <label>:3736                                    ; preds = %3731
  %3737 = and i32 %3728, 64
  %3738 = icmp ne i32 %3737, 0
  %3739 = select i1 %3738, float %3250, float 0.000000e+00
  %3740 = fsub fast float %3470, %3721
  %3741 = fsub fast float %3471, %3722
  %3742 = fsub fast float %3472, %3723
  %3743 = fmul fast float %3734, %3740
  %3744 = fmul fast float %3734, %3741
  %3745 = fmul fast float %3734, %3742
  %3746 = fadd fast float %3743, %3721
  %3747 = fadd fast float %3744, %3722
  %3748 = fadd fast float %3745, %3723
  %3749 = fsub fast float %3456, %3064
  %3750 = fmul fast float %3734, %3749
  %3751 = fadd fast float %3750, %3064
  %3752 = fsub fast float %3598, %3724
  %3753 = fsub fast float %3599, %3725
  %3754 = fsub fast float %3600, %3726
  %3755 = fmul fast float %3739, %3752
  %3756 = fmul fast float %3739, %3753
  %3757 = fmul fast float %3739, %3754
  %3758 = fadd fast float %3755, %3724
  %3759 = fadd fast float %3756, %3725
  %3760 = fadd fast float %3757, %3726
  br label %3806

; <label>:3761                                    ; preds = %3731
  %3762 = icmp eq i32 %3729, 1
  br i1 %3762, label %3763, label %3776

; <label>:3763                                    ; preds = %3761
  %3764 = fadd fast float %3470, -1.000000e+00
  %3765 = fadd fast float %3471, -1.000000e+00
  %3766 = fadd fast float %3472, -1.000000e+00
  %3767 = fmul fast float %3734, %3764
  %3768 = fmul fast float %3734, %3765
  %3769 = fmul fast float %3734, %3766
  %3770 = fadd fast float %3767, 1.000000e+00
  %3771 = fadd fast float %3768, 1.000000e+00
  %3772 = fadd fast float %3769, 1.000000e+00
  %3773 = fmul fast float %3770, %3721
  %3774 = fmul fast float %3771, %3722
  %3775 = fmul fast float %3772, %3723
  br label %3806

; <label>:3776                                    ; preds = %3761
  %3777 = icmp eq i32 %3729, 2
  br i1 %3777, label %3778, label %3806

; <label>:3778                                    ; preds = %3776
  %3779 = call float @dx.op.unary.f32(i32 24, float %3470)  ; Sqrt(value)
  %3780 = call float @dx.op.unary.f32(i32 24, float %3471)  ; Sqrt(value)
  %3781 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3782 = fadd fast float %3779, -5.000000e-01
  %3783 = fadd fast float %3780, -5.000000e-01
  %3784 = fadd fast float %3781, -5.000000e-01
  %3785 = fmul fast float %3782, %3734
  %3786 = fmul fast float %3783, %3734
  %3787 = fmul fast float %3784, %3734
  %3788 = fadd fast float %3785, 5.000000e-01
  %3789 = fadd fast float %3786, 5.000000e-01
  %3790 = fadd fast float %3787, 5.000000e-01
  %3791 = fmul fast float %3788, 2.000000e+00
  %3792 = fsub fast float 1.000000e+00, %3791
  %3793 = fmul fast float %3792, %3721
  %3794 = fadd fast float %3793, %3791
  %3795 = fmul fast float %3794, %3721
  %3796 = fmul fast float %3789, 2.000000e+00
  %3797 = fsub fast float 1.000000e+00, %3796
  %3798 = fmul fast float %3797, %3722
  %3799 = fadd fast float %3798, %3796
  %3800 = fmul fast float %3799, %3722
  %3801 = fmul fast float %3790, 2.000000e+00
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = fmul fast float %3802, %3723
  %3804 = fadd fast float %3803, %3801
  %3805 = fmul fast float %3804, %3723
  br label %3806

; <label>:3806                                    ; preds = %3778, %3776, %3763, %3736, %3720
  %3807 = phi float [ %3721, %3720 ], [ %3795, %3778 ], [ %3721, %3776 ], [ %3773, %3763 ], [ %3746, %3736 ]
  %3808 = phi float [ %3722, %3720 ], [ %3800, %3778 ], [ %3722, %3776 ], [ %3774, %3763 ], [ %3747, %3736 ]
  %3809 = phi float [ %3723, %3720 ], [ %3805, %3778 ], [ %3723, %3776 ], [ %3775, %3763 ], [ %3748, %3736 ]
  %3810 = phi float [ %3724, %3720 ], [ %3724, %3778 ], [ %3724, %3776 ], [ %3724, %3763 ], [ %3758, %3736 ]
  %3811 = phi float [ %3725, %3720 ], [ %3725, %3778 ], [ %3725, %3776 ], [ %3725, %3763 ], [ %3759, %3736 ]
  %3812 = phi float [ %3726, %3720 ], [ %3726, %3778 ], [ %3726, %3776 ], [ %3726, %3763 ], [ %3760, %3736 ]
  %3813 = phi float [ %3064, %3720 ], [ %3064, %3778 ], [ %3064, %3776 ], [ %3064, %3763 ], [ %3751, %3736 ]
  %3814 = and i32 %3728, 12
  %3815 = icmp eq i32 %3814, 12
  br i1 %3815, label %3922, label %3816

; <label>:3816                                    ; preds = %3806
  %3817 = and i32 %3728, 2097184
  %3818 = icmp eq i32 %3817, 2097184
  %3819 = select i1 %3818, float %3250, float 0.000000e+00
  %3820 = and i32 %3728, 4194336
  %3821 = icmp eq i32 %3820, 4194336
  %3822 = select i1 %3821, float %3250, float 0.000000e+00
  %3823 = and i32 %3728, 8388640
  %3824 = icmp eq i32 %3823, 8388640
  %3825 = select i1 %3824, float %3250, float 0.000000e+00
  %3826 = and i32 %3728, 1024
  %3827 = icmp ne i32 %3826, 0
  %3828 = select i1 %3827, float %3250, float 0.000000e+00
  %3829 = and i32 %3728, 2048
  %3830 = icmp ne i32 %3829, 0
  %3831 = select i1 %3830, float %3250, float 0.000000e+00
  %3832 = icmp eq i32 %3814, 0
  br i1 %3832, label %3833, label %3858

; <label>:3833                                    ; preds = %3816
  %3834 = fsub fast float %3551, %3053
  %3835 = fsub fast float %3552, %3054
  %3836 = fmul fast float %3819, %3834
  %3837 = fmul fast float %3819, %3835
  %3838 = fadd fast float %3836, %3053
  %3839 = fadd fast float %3837, %3054
  %3840 = fsub fast float %3553, %3066
  %3841 = fmul fast float %3822, %3840
  %3842 = fadd fast float %3841, %3066
  %3843 = fsub fast float %3550, %3065
  %3844 = fmul fast float %3825, %3843
  %3845 = fadd fast float %3844, %3065
  %3846 = fsub fast float %3656, %3061
  %3847 = fsub fast float %3657, %3062
  %3848 = fsub fast float %3658, %3063
  %3849 = fmul fast float %3828, %3846
  %3850 = fmul fast float %3828, %3847
  %3851 = fmul fast float %3828, %3848
  %3852 = fadd fast float %3849, %3061
  %3853 = fadd fast float %3850, %3062
  %3854 = fadd fast float %3851, %3063
  %3855 = fsub fast float %3684, %3067
  %3856 = fmul fast float %3831, %3855
  %3857 = fadd fast float %3856, %3067
  br label %3922

; <label>:3858                                    ; preds = %3816
  %3859 = icmp eq i32 %3814, 4
  br i1 %3859, label %3860, label %3900

; <label>:3860                                    ; preds = %3858
  %3861 = fmul fast float %3819, %3551
  %3862 = fmul fast float %3819, %3552
  %3863 = fadd fast float %3861, %3053
  %3864 = fadd fast float %3862, %3054
  %3865 = call float @dx.op.binary.f32(i32 36, float %3066, float %3553)  ; FMin(a,b)
  %3866 = fsub fast float %3865, %3066
  %3867 = fmul fast float %3866, %3822
  %3868 = fadd fast float %3867, %3066
  %3869 = fadd fast float %3550, %3065
  %3870 = fmul fast float %3869, 0x3FF337FAE0000000
  %3871 = fmul fast float %3065, %3065
  %3872 = fmul fast float %3550, %3550
  %3873 = fadd fast float %3872, %3871
  %3874 = fmul fast float %3873, 0x3FE5152B00000000
  %3875 = fmul fast float %3065, 0xBFCC1F85E0000000
  %3876 = fmul fast float %3875, %3550
  %3877 = fadd fast float %3876, 0xBFE1363700000000
  %3878 = fadd fast float %3877, %3870
  %3879 = fsub fast float %3878, %3874
  %3880 = fmul fast float %3869, 0x3FBA6F0D00000000
  %3881 = fmul fast float %3873, 0x3FD0432880000000
  %3882 = fmul fast float %3065, 0xBFEF110800000000
  %3883 = fmul fast float %3882, %3550
  %3884 = fadd fast float %3883, 1.000000e+00
  %3885 = fsub fast float %3884, %3880
  %3886 = fadd fast float %3885, %3881
  %3887 = fdiv fast float %3879, %3886
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fsub fast float %3888, %3065
  %3890 = fmul fast float %3889, %3825
  %3891 = fadd fast float %3890, %3065
  %3892 = fmul fast float %3828, %3656
  %3893 = fmul fast float %3828, %3657
  %3894 = fmul fast float %3828, %3658
  %3895 = fadd fast float %3892, %3061
  %3896 = fadd fast float %3893, %3062
  %3897 = fadd fast float %3894, %3063
  %3898 = fmul fast float %3831, %3684
  %3899 = fadd fast float %3898, %3067
  br label %3922

; <label>:3900                                    ; preds = %3858
  %3901 = icmp eq i32 %3814, 8
  br i1 %3901, label %3902, label %3922

; <label>:3902                                    ; preds = %3900
  %3903 = fmul fast float %3819, %3551
  %3904 = fmul fast float %3819, %3552
  %3905 = fadd fast float %3903, %3053
  %3906 = fadd fast float %3904, %3054
  %3907 = call float @dx.op.binary.f32(i32 36, float %3066, float %3553)  ; FMin(a,b)
  %3908 = fsub fast float %3907, %3066
  %3909 = fmul fast float %3908, %3822
  %3910 = fadd fast float %3909, %3066
  %3911 = fsub fast float %3550, %3065
  %3912 = fmul fast float %3825, %3911
  %3913 = fadd fast float %3912, %3065
  %3914 = fmul fast float %3828, %3656
  %3915 = fmul fast float %3828, %3657
  %3916 = fmul fast float %3828, %3658
  %3917 = fadd fast float %3914, %3061
  %3918 = fadd fast float %3915, %3062
  %3919 = fadd fast float %3916, %3063
  %3920 = fmul fast float %3831, %3684
  %3921 = fadd fast float %3920, %3067
  br label %3922

; <label>:3922                                    ; preds = %3902, %3900, %3860, %3833, %3806, %3249, %3068, %3052
  %3923 = phi float [ %3053, %3806 ], [ %3053, %3249 ], [ %3053, %3052 ], [ %3053, %3068 ], [ %3838, %3833 ], [ %3863, %3860 ], [ %3053, %3900 ], [ %3905, %3902 ]
  %3924 = phi float [ %3054, %3806 ], [ %3054, %3249 ], [ %3054, %3052 ], [ %3054, %3068 ], [ %3839, %3833 ], [ %3864, %3860 ], [ %3054, %3900 ], [ %3906, %3902 ]
  %3925 = phi float [ %3807, %3806 ], [ %3055, %3249 ], [ %3055, %3052 ], [ %3055, %3068 ], [ %3807, %3833 ], [ %3807, %3860 ], [ %3807, %3900 ], [ %3807, %3902 ]
  %3926 = phi float [ %3808, %3806 ], [ %3056, %3249 ], [ %3056, %3052 ], [ %3056, %3068 ], [ %3808, %3833 ], [ %3808, %3860 ], [ %3808, %3900 ], [ %3808, %3902 ]
  %3927 = phi float [ %3809, %3806 ], [ %3057, %3249 ], [ %3057, %3052 ], [ %3057, %3068 ], [ %3809, %3833 ], [ %3809, %3860 ], [ %3809, %3900 ], [ %3809, %3902 ]
  %3928 = phi float [ %3810, %3806 ], [ %3058, %3249 ], [ %3058, %3052 ], [ %3058, %3068 ], [ %3810, %3833 ], [ %3810, %3860 ], [ %3810, %3900 ], [ %3810, %3902 ]
  %3929 = phi float [ %3811, %3806 ], [ %3059, %3249 ], [ %3059, %3052 ], [ %3059, %3068 ], [ %3811, %3833 ], [ %3811, %3860 ], [ %3811, %3900 ], [ %3811, %3902 ]
  %3930 = phi float [ %3812, %3806 ], [ %3060, %3249 ], [ %3060, %3052 ], [ %3060, %3068 ], [ %3812, %3833 ], [ %3812, %3860 ], [ %3812, %3900 ], [ %3812, %3902 ]
  %3931 = phi float [ %3061, %3806 ], [ %3061, %3249 ], [ %3061, %3052 ], [ %3061, %3068 ], [ %3852, %3833 ], [ %3895, %3860 ], [ %3061, %3900 ], [ %3917, %3902 ]
  %3932 = phi float [ %3062, %3806 ], [ %3062, %3249 ], [ %3062, %3052 ], [ %3062, %3068 ], [ %3853, %3833 ], [ %3896, %3860 ], [ %3062, %3900 ], [ %3918, %3902 ]
  %3933 = phi float [ %3063, %3806 ], [ %3063, %3249 ], [ %3063, %3052 ], [ %3063, %3068 ], [ %3854, %3833 ], [ %3897, %3860 ], [ %3063, %3900 ], [ %3919, %3902 ]
  %3934 = phi float [ %3813, %3806 ], [ %3064, %3249 ], [ %3064, %3052 ], [ %3064, %3068 ], [ %3813, %3833 ], [ %3813, %3860 ], [ %3813, %3900 ], [ %3813, %3902 ]
  %3935 = phi float [ %3065, %3806 ], [ %3065, %3249 ], [ %3065, %3052 ], [ %3065, %3068 ], [ %3845, %3833 ], [ %3891, %3860 ], [ %3065, %3900 ], [ %3913, %3902 ]
  %3936 = phi float [ %3066, %3806 ], [ %3066, %3249 ], [ %3066, %3052 ], [ %3066, %3068 ], [ %3842, %3833 ], [ %3868, %3860 ], [ %3066, %3900 ], [ %3910, %3902 ]
  %3937 = phi float [ %3067, %3806 ], [ %3067, %3249 ], [ %3067, %3052 ], [ %3067, %3068 ], [ %3857, %3833 ], [ %3899, %3860 ], [ %3067, %3900 ], [ %3921, %3902 ]
  %3938 = and i32 %201, 65535
  %3939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3938)  ; LegacyF16ToF32(value)
  %3940 = lshr i32 %201, 16
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = and i32 %202, 65535
  %3943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3942)  ; LegacyF16ToF32(value)
  %3944 = fmul fast float %3939, %3925
  %3945 = fmul fast float %3941, %3926
  %3946 = fmul fast float %3943, %3927
  %3947 = shl i32 %203, 4
  %3948 = and i32 %3947, 32752
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = lshr i32 %203, 7
  %3951 = and i32 %3950, 32752
  %3952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3951)  ; LegacyF16ToF32(value)
  %3953 = lshr i32 %203, 22
  %3954 = shl nuw nsw i32 %3953, 5
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = and i32 %204, 65535
  %3957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3956)  ; LegacyF16ToF32(value)
  %3958 = fmul fast float %3949, %3928
  %3959 = fmul fast float %3958, %3957
  %3960 = fmul fast float %3952, %3929
  %3961 = fmul fast float %3960, %3957
  %3962 = fmul fast float %3955, %3930
  %3963 = fmul fast float %3962, %3957
  %3964 = call float @dx.op.dot2.f32(i32 54, float %3923, float %3924, float %3923, float %3924)  ; Dot2(ax,ay,bx,by)
  %3965 = fmul fast float %3964, 0x3FE3333340000000
  %3966 = fsub fast float 1.000000e+00, %3965
  %3967 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3924, float %3966, float %3923, float %3924, float %3966)  ; Dot3(ax,ay,az,bx,by,bz)
  %3968 = call float @dx.op.unary.f32(i32 25, float %3967)  ; Rsqrt(value)
  %3969 = fmul fast float %3968, %3923
  %3970 = fmul fast float %3968, %3924
  %3971 = fmul fast float %3966, %3968
  %3972 = fmul fast float %3971, %115
  %3973 = fmul fast float %3971, %116
  %3974 = fmul fast float %3971, %117
  %3975 = fmul fast float %3969, %83
  %3976 = fmul fast float %3969, %84
  %3977 = fmul fast float %3969, %85
  %3978 = fadd fast float %3972, %3975
  %3979 = fadd fast float %3973, %3976
  %3980 = fadd fast float %3974, %3977
  %3981 = fmul fast float %127, %3970
  %3982 = fmul fast float %128, %3970
  %3983 = fmul fast float %129, %3970
  %3984 = fadd fast float %3978, %3981
  %3985 = fadd fast float %3979, %3982
  %3986 = fadd fast float %3980, %3983
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3984, float %3985, float %3986, float %3984, float %3985, float %3986)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3984, %3988
  %3990 = fmul fast float %3985, %3988
  %3991 = fmul fast float %3986, %3988
  %3992 = icmp ne i32 %59, 65535
  %3993 = add i32 %56, 512
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = add i32 %3995, 0
  %3997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3997, %dx.types.Handle %47, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = fcmp fast ogt float %3999, 0.000000e+00
  %4001 = and i1 %3992, %4000
  br i1 %4001, label %4002, label %4518

; <label>:4002                                    ; preds = %3922
  %4003 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4004 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4005 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4006 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4007 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4008 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4009 = fadd fast float %4003, %60
  %4010 = fadd fast float %4004, %61
  %4011 = fadd fast float %4005, %62
  %4012 = fadd fast float %4006, %60
  %4013 = fadd fast float %4007, %61
  %4014 = fadd fast float %4008, %62
  %4015 = mul i32 %59, 48
  %4016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = add i32 %4015, 16
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = add i32 %4015, 32
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = bitcast float %4030 to i32
  %4032 = fmul fast float %4017, %60
  %4033 = fmul fast float %4018, %61
  %4034 = fmul fast float %4019, %62
  %4035 = fsub fast float %4032, %4022
  %4036 = fsub fast float %4033, %4023
  %4037 = fsub fast float %4034, %4024
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = fmul fast float %4038, %4027
  %4042 = fmul fast float %4039, %4028
  %4043 = fmul fast float %4040, %4029
  %4044 = fadd fast float %4027, -1.000000e+00
  %4045 = fadd fast float %4028, -1.000000e+00
  %4046 = fadd fast float %4029, -1.000000e+00
  %4047 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4048 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4049 = call float @dx.op.unary.f32(i32 27, float %4043)  ; Round_ni(value)
  %4050 = call float @dx.op.binary.f32(i32 36, float %4047, float %4044)  ; FMin(a,b)
  %4051 = call float @dx.op.binary.f32(i32 36, float %4048, float %4045)  ; FMin(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %4049, float %4046)  ; FMin(a,b)
  %4053 = fmul fast float %4052, %4028
  %4054 = fadd fast float %4053, %4051
  %4055 = fmul fast float %4054, %4027
  %4056 = fadd fast float %4055, %4050
  %4057 = fptosi float %4056 to i32
  %4058 = add nsw i32 %4057, %4031
  %4059 = shl nsw i32 %4058, 2
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = lshr i32 %4061, 16
  %4063 = icmp eq i32 %4062, 0
  br i1 %4063, label %4486, label %4064

; <label>:4064                                    ; preds = %4002
  br label %4065

; <label>:4065                                    ; preds = %4186, %4064
  %4066 = phi i32 [ %4089, %4186 ], [ %4062, %4064 ]
  %4067 = phi float [ %4187, %4186 ], [ 0.000000e+00, %4064 ]
  %4068 = phi float [ %4188, %4186 ], [ %3931, %4064 ]
  %4069 = phi float [ %4189, %4186 ], [ %3932, %4064 ]
  %4070 = phi float [ %4190, %4186 ], [ %3933, %4064 ]
  %4071 = phi float [ %4191, %4186 ], [ 0.000000e+00, %4064 ]
  %4072 = phi float [ %4192, %4186 ], [ 0.000000e+00, %4064 ]
  %4073 = phi float [ %4193, %4186 ], [ %3959, %4064 ]
  %4074 = phi float [ %4194, %4186 ], [ %3961, %4064 ]
  %4075 = phi float [ %4195, %4186 ], [ %3963, %4064 ]
  %4076 = phi float [ %4196, %4186 ], [ %3989, %4064 ]
  %4077 = phi float [ %4197, %4186 ], [ %3990, %4064 ]
  %4078 = phi float [ %4198, %4186 ], [ %3991, %4064 ]
  %4079 = phi float [ %4199, %4186 ], [ %3936, %4064 ]
  %4080 = phi float [ %4200, %4186 ], [ %3935, %4064 ]
  %4081 = phi float [ %4201, %4186 ], [ 0.000000e+00, %4064 ]
  %4082 = phi float [ %4202, %4186 ], [ %3934, %4064 ]
  %4083 = phi float [ %4203, %4186 ], [ %3944, %4064 ]
  %4084 = phi float [ %4204, %4186 ], [ %3945, %4064 ]
  %4085 = phi float [ %4205, %4186 ], [ %3946, %4064 ]
  %4086 = shl nuw nsw i32 %4066, 2
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = lshr i32 %4088, 16
  %4090 = shl i32 %4088, 8
  %4091 = and i32 %4090, 16776960
  %4092 = or i32 %4091, 48
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4097 = or i32 %4091, 64
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.i32 %4098, 1
  %4101 = or i32 %4091, 80
  %4102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 2
  %4104 = extractvalue %dx.types.ResRet.f32 %4102, 3
  %4105 = or i32 %4091, 96
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = or i32 %4091, 112
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4114 = or i32 %4091, 128
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4120 = or i32 %4091, 144
  %4121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4125 = extractvalue %dx.types.ResRet.f32 %4121, 3
  %4126 = or i32 %4091, 160
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4131 = or i32 %4091, 192
  %4132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.i32 %4132, 0
  %4134 = or i32 %4091, 208
  %4135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = or i32 %4091, 248
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = call float @dx.op.dot4.f32(i32 56, float %4142, float %4143, float %4144, float %4145, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4147 = or i32 %4091, 16
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4153 = call float @dx.op.dot4.f32(i32 56, float %4149, float %4150, float %4151, float %4152, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4154 = or i32 %4091, 32
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.ResRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.ResRet.f32 %4155, 2
  %4159 = extractvalue %dx.types.ResRet.f32 %4155, 3
  %4160 = call float @dx.op.dot4.f32(i32 56, float %4156, float %4157, float %4158, float %4159, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4161 = call float @dx.op.unary.f32(i32 27, float %4146)  ; Round_ni(value)
  %4162 = call float @dx.op.unary.f32(i32 6, float %4161)  ; FAbs(value)
  %4163 = call float @dx.op.unary.f32(i32 27, float %4153)  ; Round_ni(value)
  %4164 = call float @dx.op.unary.f32(i32 6, float %4163)  ; FAbs(value)
  %4165 = call float @dx.op.unary.f32(i32 6, float %4160)  ; FAbs(value)
  %4166 = call float @dx.op.unary.f32(i32 27, float %4165)  ; Round_ni(value)
  %4167 = fadd fast float %4164, %4162
  %4168 = fadd fast float %4167, %4166
  %4169 = fcmp fast oeq float %4168, 0.000000e+00
  %4170 = call float @dx.op.dot4.f32(i32 56, float %4142, float %4143, float %4144, float %4145, float %4009, float %4010, float %4011, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4171 = call float @dx.op.dot4.f32(i32 56, float %4149, float %4150, float %4151, float %4152, float %4009, float %4010, float %4011, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4172 = call float @dx.op.dot4.f32(i32 56, float %4142, float %4143, float %4144, float %4145, float %4012, float %4013, float %4014, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4173 = call float @dx.op.dot4.f32(i32 56, float %4149, float %4150, float %4151, float %4152, float %4012, float %4013, float %4014, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4174 = fsub fast float %4170, %4146
  %4175 = fsub fast float %4172, %4146
  %4176 = fsub fast float %4171, %4153
  %4177 = fsub fast float %4173, %4153
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4094, float %4095, float %4096, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4181 = fadd fast float %4180, %4178
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4184 = fcmp fast ogt float %4182, %4183
  %4185 = and i1 %4169, %4184
  br i1 %4185, label %4207, label %4186

; <label>:4186                                    ; preds = %4472, %4290, %4207, %4065
  %4187 = phi float [ %4067, %4207 ], [ %4293, %4290 ], [ %4293, %4472 ], [ %4067, %4065 ]
  %4188 = phi float [ %4068, %4207 ], [ %4068, %4290 ], [ %4446, %4472 ], [ %4068, %4065 ]
  %4189 = phi float [ %4069, %4207 ], [ %4069, %4290 ], [ %4447, %4472 ], [ %4069, %4065 ]
  %4190 = phi float [ %4070, %4207 ], [ %4070, %4290 ], [ %4448, %4472 ], [ %4070, %4065 ]
  %4191 = phi float [ %4071, %4207 ], [ %4071, %4290 ], [ %4417, %4472 ], [ %4071, %4065 ]
  %4192 = phi float [ %4072, %4207 ], [ %4072, %4290 ], [ %4415, %4472 ], [ %4072, %4065 ]
  %4193 = phi float [ %4073, %4207 ], [ %4073, %4290 ], [ %4482, %4472 ], [ %4073, %4065 ]
  %4194 = phi float [ %4074, %4207 ], [ %4074, %4290 ], [ %4483, %4472 ], [ %4074, %4065 ]
  %4195 = phi float [ %4075, %4207 ], [ %4075, %4290 ], [ %4484, %4472 ], [ %4075, %4065 ]
  %4196 = phi float [ %4076, %4207 ], [ %4076, %4290 ], [ %4396, %4472 ], [ %4076, %4065 ]
  %4197 = phi float [ %4077, %4207 ], [ %4077, %4290 ], [ %4397, %4472 ], [ %4077, %4065 ]
  %4198 = phi float [ %4078, %4207 ], [ %4078, %4290 ], [ %4398, %4472 ], [ %4078, %4065 ]
  %4199 = phi float [ %4079, %4207 ], [ %4079, %4290 ], [ %4426, %4472 ], [ %4079, %4065 ]
  %4200 = phi float [ %4080, %4207 ], [ %4080, %4290 ], [ %4423, %4472 ], [ %4080, %4065 ]
  %4201 = phi float [ %4081, %4207 ], [ %4081, %4290 ], [ %4420, %4472 ], [ %4081, %4065 ]
  %4202 = phi float [ %4082, %4207 ], [ %4082, %4290 ], [ %4413, %4472 ], [ %4082, %4065 ]
  %4203 = phi float [ %4083, %4207 ], [ %4083, %4290 ], [ %4408, %4472 ], [ %4083, %4065 ]
  %4204 = phi float [ %4084, %4207 ], [ %4084, %4290 ], [ %4409, %4472 ], [ %4084, %4065 ]
  %4205 = phi float [ %4085, %4207 ], [ %4085, %4290 ], [ %4410, %4472 ], [ %4085, %4065 ]
  %4206 = icmp eq i32 %4089, 0
  br i1 %4206, label %4485, label %4065

; <label>:4207                                    ; preds = %4065
  %4208 = extractvalue %dx.types.ResRet.f32 %4093, 3
  %4209 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4210 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4212 = extractvalue %dx.types.ResRet.f32 %4102, 1
  %4213 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4214 = extractvalue %dx.types.ResRet.i32 %4098, 3
  %4215 = extractvalue %dx.types.ResRet.i32 %4098, 2
  %4216 = bitcast float %4208 to i32
  %4217 = add i32 %4214, 0
  %4218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4220 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4218, %dx.types.Handle %4219, float %4146, float %4153, float undef, float undef, i32 0, i32 0, i32 undef, float %4174, float %4176, float undef, float %4175, float %4177, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = fmul fast float %4221, %4213
  %4223 = fadd fast float %4222, %4212
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = fmul fast float %4146, %4107
  %4226 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4153, float %4225)  ; FMad(a,b,c)
  %4227 = fadd fast float %4226, %4211
  %4228 = fmul fast float %4146, %4109
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4153, float %4228)  ; FMad(a,b,c)
  %4230 = fadd fast float %4229, %4210
  %4231 = fmul fast float %4174, %4107
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4176, float %4231)  ; FMad(a,b,c)
  %4233 = fmul fast float %4174, %4109
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4176, float %4233)  ; FMad(a,b,c)
  %4235 = fmul fast float %4175, %4107
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4177, float %4235)  ; FMad(a,b,c)
  %4237 = fmul fast float %4175, %4109
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4177, float %4237)  ; FMad(a,b,c)
  %4239 = add i32 %4215, 0
  %4240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4240, %dx.types.Handle %4219, float %4227, float %4230, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4234, float undef, float %4236, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = and i32 %4216, 1024
  %4244 = icmp ne i32 %4243, 0
  %4245 = fcmp fast ogt float %4242, 0x3FE0101020000000
  %4246 = uitofp i1 %4245 to float
  %4247 = select i1 %4244, float %4246, float %4242
  %4248 = and i32 %4216, 8192
  %4249 = icmp ne i32 %4248, 0
  %4250 = select i1 %4249, float %4209, float 1.000000e+00
  %4251 = fmul fast float %4146, 2.000000e+00
  %4252 = fadd fast float %4251, -1.000000e+00
  %4253 = call float @dx.op.unary.f32(i32 6, float %4252)  ; FAbs(value)
  %4254 = fmul fast float %4253, %4139
  %4255 = fsub fast float %4254, %4139
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4153, 2.000000e+00
  %4258 = fadd fast float %4257, -1.000000e+00
  %4259 = call float @dx.op.unary.f32(i32 6, float %4258)  ; FAbs(value)
  %4260 = fmul fast float %4259, %4140
  %4261 = fsub fast float %4260, %4140
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fmul fast float %4165, %4103
  %4264 = fsub fast float %4263, %4103
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fmul fast float %4224, %4250
  %4267 = fmul fast float %4266, %4221
  %4268 = fmul fast float %4267, %4256
  %4269 = fmul fast float %4268, %4247
  %4270 = fmul fast float %4269, %4262
  %4271 = fmul fast float %4270, %4265
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4274 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4275 = fsub fast float %4182, %4274
  %4276 = fmul fast float %4275, %4273
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fmul fast float %4271, %4104
  %4279 = fadd fast float %4271, %4104
  %4280 = fmul fast float %4279, %4113
  %4281 = fsub fast float %4280, %4113
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = and i32 %4216, 128
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %4282, float %4278
  %4286 = fmul fast float %4285, %4277
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = fcmp fast ugt float %4286, %4288
  br i1 %4289, label %4290, label %4186

; <label>:4290                                    ; preds = %4207
  %4291 = select i1 %4249, float %4286, float 0.000000e+00
  %4292 = fadd fast float %4291, %4067
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  br i1 %4249, label %4186, label %4294

; <label>:4294                                    ; preds = %4290
  %4295 = and i32 %4216, 4
  %4296 = and i32 %4216, 8
  %4297 = add i32 %4099, 0
  %4298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4298, %dx.types.Handle %4299, float %4227, float %4230, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4234, float undef, float %4236, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4300, 3
  %4305 = bitcast float %4125 to i32
  %4306 = and i32 %4305, 255
  %4307 = uitofp i32 %4306 to float
  %4308 = lshr i32 %4305, 8
  %4309 = and i32 %4308, 255
  %4310 = uitofp i32 %4309 to float
  %4311 = fmul fast float %4304, %4307
  %4312 = fadd fast float %4311, %4310
  %4313 = fmul fast float %4312, 0x3F70101000000000
  %4314 = add i32 %4100, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4315, %dx.types.Handle %4299, float %4227, float %4230, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4234, float undef, float %4236, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.ResRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.ResRet.f32 %4316, 2
  %4320 = extractvalue %dx.types.ResRet.f32 %4316, 3
  %4321 = bitcast float %4119 to i32
  %4322 = and i32 %4321, 255
  %4323 = uitofp i32 %4322 to float
  %4324 = lshr i32 %4321, 8
  %4325 = and i32 %4324, 255
  %4326 = uitofp i32 %4325 to float
  %4327 = lshr i32 %4321, 16
  %4328 = and i32 %4327, 255
  %4329 = uitofp i32 %4328 to float
  %4330 = fmul fast float %4329, 0x3F70101000000000
  %4331 = fmul fast float %4317, %4323
  %4332 = fadd fast float %4331, %4326
  %4333 = fmul fast float %4332, 0x3F70101000000000
  %4334 = fadd fast float %4318, -5.000000e-01
  %4335 = fadd fast float %4320, -5.000000e-01
  %4336 = fmul fast float %4334, %4330
  %4337 = fmul fast float %4335, %4330
  %4338 = fadd fast float %4336, 5.000000e-01
  %4339 = fadd fast float %4337, 5.000000e-01
  %4340 = fmul fast float %4301, %4128
  %4341 = fmul fast float %4302, %4129
  %4342 = fmul fast float %4303, %4130
  %4343 = fmul fast float %4338, 2.000000e+00
  %4344 = fadd fast float %4343, -1.000000e+00
  %4345 = fmul fast float %4339, 2.000000e+00
  %4346 = fadd fast float %4345, -1.000000e+00
  %4347 = fadd fast float %4344, %4346
  %4348 = fmul fast float %4347, 5.000000e-01
  %4349 = fsub fast float %4344, %4346
  %4350 = fmul fast float %4349, 5.000000e-01
  %4351 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4352 = fsub fast float 1.000000e+00, %4351
  %4353 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4354 = fsub fast float %4352, %4353
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4348, float %4350, float %4354, float %4348, float %4350, float %4354)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = call float @dx.op.unary.f32(i32 25, float %4355)  ; Rsqrt(value)
  %4357 = fmul fast float %4348, %4356
  %4358 = fmul fast float %4350, %4356
  %4359 = fmul fast float %4356, %4354
  %4360 = fmul fast float %4359, %4094
  %4361 = fmul fast float %4359, %4095
  %4362 = fmul fast float %4359, %4096
  %4363 = fmul fast float %4357, %4116
  %4364 = fmul fast float %4357, %4117
  %4365 = fmul fast float %4357, %4118
  %4366 = fadd fast float %4363, %4360
  %4367 = fadd fast float %4364, %4361
  %4368 = fadd fast float %4365, %4362
  %4369 = fmul fast float %4358, %4122
  %4370 = fmul fast float %4358, %4123
  %4371 = fmul fast float %4358, %4124
  %4372 = fadd fast float %4366, %4369
  %4373 = fadd fast float %4367, %4370
  %4374 = fadd fast float %4368, %4371
  %4375 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %4372, float %4373, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 25, float %4375)  ; Rsqrt(value)
  %4377 = fmul fast float %4372, %4376
  %4378 = fmul fast float %4373, %4376
  %4379 = fmul fast float %4374, %4376
  %4380 = icmp ne i32 %4296, 0
  %4381 = select i1 %4380, float 1.000000e+00, float 0.000000e+00
  %4382 = fmul fast float %4286, %4381
  %4383 = and i32 %4216, 1
  %4384 = icmp eq i32 %4383, 0
  br i1 %4384, label %4385, label %4389

; <label>:4385                                    ; preds = %4294
  %4386 = fsub fast float %4377, %4076
  %4387 = fsub fast float %4378, %4077
  %4388 = fsub fast float %4379, %4078
  br label %4389

; <label>:4389                                    ; preds = %4385, %4294
  %4390 = phi float [ %4386, %4385 ], [ %4377, %4294 ]
  %4391 = phi float [ %4387, %4385 ], [ %4378, %4294 ]
  %4392 = phi float [ %4388, %4385 ], [ %4379, %4294 ]
  %4393 = fmul float %4392, %4382
  %4394 = fmul float %4391, %4382
  %4395 = fmul float %4390, %4382
  %4396 = fadd fast float %4395, %4076
  %4397 = fadd fast float %4394, %4077
  %4398 = fadd fast float %4393, %4078
  %4399 = icmp ne i32 %4295, 0
  %4400 = select i1 %4399, float 1.000000e+00, float 0.000000e+00
  %4401 = fmul fast float %4286, %4400
  %4402 = fsub fast float %4340, %4083
  %4403 = fsub fast float %4341, %4084
  %4404 = fsub fast float %4342, %4085
  %4405 = fmul fast float %4402, %4401
  %4406 = fmul fast float %4403, %4401
  %4407 = fmul fast float %4404, %4401
  %4408 = fadd fast float %4405, %4083
  %4409 = fadd fast float %4406, %4084
  %4410 = fadd fast float %4407, %4085
  %4411 = fsub fast float %4313, %4082
  %4412 = fmul fast float %4411, %4401
  %4413 = fadd fast float %4412, %4082
  %4414 = fmul fast float %4401, %4072
  %4415 = fsub fast float %4072, %4414
  %4416 = fmul fast float %4401, %4071
  %4417 = fsub fast float %4071, %4416
  %4418 = bitcast float %4136 to i32
  %4419 = fadd fast float %4286, %4081
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fsub fast float %4333, %4080
  %4422 = fmul fast float %4421, %4382
  %4423 = fadd fast float %4422, %4080
  %4424 = fsub fast float %4319, %4079
  %4425 = fmul fast float %4424, %4382
  %4426 = fadd fast float %4425, %4079
  br i1 %4384, label %4435, label %4427

; <label>:4427                                    ; preds = %4389
  %4428 = and i32 %4216, 32768
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4445, label %4430

; <label>:4430                                    ; preds = %4427
  %4431 = fmul fast float %4382, 1.270000e+02
  %4432 = fadd fast float %4431, %4068
  %4433 = fadd fast float %4431, %4069
  %4434 = fadd fast float %4431, %4070
  br label %4445

; <label>:4435                                    ; preds = %4389
  %4436 = fsub fast float 1.270000e+02, %4068
  %4437 = fsub fast float 1.270000e+02, %4069
  %4438 = fsub fast float 1.270000e+02, %4070
  %4439 = fmul fast float %4382, %4436
  %4440 = fmul fast float %4382, %4437
  %4441 = fmul fast float %4382, %4438
  %4442 = fadd fast float %4439, %4068
  %4443 = fadd fast float %4440, %4069
  %4444 = fadd fast float %4441, %4070
  br label %4445

; <label>:4445                                    ; preds = %4435, %4430, %4427
  %4446 = phi float [ %4432, %4430 ], [ %4068, %4427 ], [ %4442, %4435 ]
  %4447 = phi float [ %4433, %4430 ], [ %4069, %4427 ], [ %4443, %4435 ]
  %4448 = phi float [ %4434, %4430 ], [ %4070, %4427 ], [ %4444, %4435 ]
  %4449 = and i32 %4216, 16
  %4450 = icmp eq i32 %4449, 0
  br i1 %4450, label %4472, label %4451

; <label>:4451                                    ; preds = %4445
  %4452 = add i32 %4133, 0
  %4453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4453, %dx.types.Handle %4299, float %4227, float %4230, float undef, float undef, i32 0, i32 0, i32 undef, float %4232, float %4234, float undef, float %4236, float %4238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4455 = extractvalue %dx.types.ResRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.ResRet.f32 %4454, 2
  %4458 = and i32 %4418, 65535
  %4459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4458)  ; LegacyF16ToF32(value)
  %4460 = fmul fast float %4455, %4128
  %4461 = fmul fast float %4456, %4129
  %4462 = fmul fast float %4457, %4130
  %4463 = and i32 %4216, 16384
  %4464 = icmp ne i32 %4463, 0
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = select i1 %4464, float %4466, float 1.000000e+00
  %4468 = fmul fast float %4467, %4459
  %4469 = fmul fast float %4460, %4468
  %4470 = fmul fast float %4461, %4468
  %4471 = fmul fast float %4462, %4468
  br label %4472

; <label>:4472                                    ; preds = %4451, %4445
  %4473 = phi float [ %4469, %4451 ], [ 0.000000e+00, %4445 ]
  %4474 = phi float [ %4470, %4451 ], [ 0.000000e+00, %4445 ]
  %4475 = phi float [ %4471, %4451 ], [ 0.000000e+00, %4445 ]
  %4476 = fsub fast float %4473, %4073
  %4477 = fsub fast float %4474, %4074
  %4478 = fsub fast float %4475, %4075
  %4479 = fmul fast float %4476, %4286
  %4480 = fmul fast float %4477, %4286
  %4481 = fmul fast float %4478, %4286
  %4482 = fadd fast float %4479, %4073
  %4483 = fadd fast float %4480, %4074
  %4484 = fadd fast float %4481, %4075
  br label %4186

; <label>:4485                                    ; preds = %4186
  br label %4486

; <label>:4486                                    ; preds = %4485, %4002
  %4487 = phi float [ 0.000000e+00, %4002 ], [ %4187, %4485 ]
  %4488 = phi float [ %3931, %4002 ], [ %4188, %4485 ]
  %4489 = phi float [ %3932, %4002 ], [ %4189, %4485 ]
  %4490 = phi float [ %3933, %4002 ], [ %4190, %4485 ]
  %4491 = phi float [ 0.000000e+00, %4002 ], [ %4191, %4485 ]
  %4492 = phi float [ 0.000000e+00, %4002 ], [ %4192, %4485 ]
  %4493 = phi float [ %3959, %4002 ], [ %4193, %4485 ]
  %4494 = phi float [ %3961, %4002 ], [ %4194, %4485 ]
  %4495 = phi float [ %3963, %4002 ], [ %4195, %4485 ]
  %4496 = phi float [ %3989, %4002 ], [ %4196, %4485 ]
  %4497 = phi float [ %3990, %4002 ], [ %4197, %4485 ]
  %4498 = phi float [ %3991, %4002 ], [ %4198, %4485 ]
  %4499 = phi float [ %3936, %4002 ], [ %4199, %4485 ]
  %4500 = phi float [ %3935, %4002 ], [ %4200, %4485 ]
  %4501 = phi float [ 0.000000e+00, %4002 ], [ %4201, %4485 ]
  %4502 = phi float [ %3934, %4002 ], [ %4202, %4485 ]
  %4503 = phi float [ %3944, %4002 ], [ %4203, %4485 ]
  %4504 = phi float [ %3945, %4002 ], [ %4204, %4485 ]
  %4505 = phi float [ %3946, %4002 ], [ %4205, %4485 ]
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4498, float %4496, float %4497, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = call float @dx.op.unary.f32(i32 25, float %4506)  ; Rsqrt(value)
  %4508 = fmul fast float %4507, %4496
  %4509 = fmul fast float %4507, %4497
  %4510 = fmul fast float %4507, %4498
  %4511 = fadd fast float %4501, %1324
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float %4508, float %4509, float %4510)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 25, float %4513)  ; Rsqrt(value)
  %4515 = fmul fast float %4514, %4508
  %4516 = fmul fast float %4514, %4509
  %4517 = fmul fast float %4514, %4510
  br label %4518

; <label>:4518                                    ; preds = %4486, %3922
  %4519 = phi float [ %4515, %4486 ], [ %3989, %3922 ]
  %4520 = phi float [ %4516, %4486 ], [ %3990, %3922 ]
  %4521 = phi float [ %4517, %4486 ], [ %3991, %3922 ]
  %4522 = phi float [ %4503, %4486 ], [ %3944, %3922 ]
  %4523 = phi float [ %4504, %4486 ], [ %3945, %3922 ]
  %4524 = phi float [ %4505, %4486 ], [ %3946, %3922 ]
  %4525 = phi float [ %4493, %4486 ], [ %3959, %3922 ]
  %4526 = phi float [ %4494, %4486 ], [ %3961, %3922 ]
  %4527 = phi float [ %4495, %4486 ], [ %3963, %3922 ]
  %4528 = phi float [ %4488, %4486 ], [ %3931, %3922 ]
  %4529 = phi float [ %4489, %4486 ], [ %3932, %3922 ]
  %4530 = phi float [ %4490, %4486 ], [ %3933, %3922 ]
  %4531 = phi float [ %4502, %4486 ], [ %3934, %3922 ]
  %4532 = phi float [ %4512, %4486 ], [ %1324, %3922 ]
  %4533 = phi float [ %4500, %4486 ], [ %3935, %3922 ]
  %4534 = phi float [ %4499, %4486 ], [ %3936, %3922 ]
  %4535 = phi float [ %4492, %4486 ], [ 0.000000e+00, %3922 ]
  %4536 = phi float [ %4491, %4486 ], [ 0.000000e+00, %3922 ]
  %4537 = phi float [ %4487, %4486 ], [ 0.000000e+00, %3922 ]
  %4538 = fadd fast float %4531, 0xBFB99999A0000000
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4539, 0x3FF1C71C80000000
  %4541 = call float @dx.op.binary.f32(i32 36, float %4531, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4542 = fsub fast float 1.000000e+00, %4540
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = fmul fast float %4543, %4522
  %4545 = fmul fast float %4543, %4523
  %4546 = fmul fast float %4543, %4524
  %4547 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4548 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4549 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4550 = fmul fast float %4540, %4522
  %4551 = fmul fast float %4540, %4523
  %4552 = fmul fast float %4540, %4524
  %4553 = fadd fast float %4550, %4541
  %4554 = fadd fast float %4551, %4541
  %4555 = fadd fast float %4552, %4541
  %4556 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4557 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4560 = call float @dx.op.binary.f32(i32 36, float %4528, float 1.270000e+02)  ; FMin(a,b)
  %4561 = call float @dx.op.binary.f32(i32 36, float %4529, float 1.270000e+02)  ; FMin(a,b)
  %4562 = call float @dx.op.binary.f32(i32 36, float %4530, float 1.270000e+02)  ; FMin(a,b)
  %4563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.i32 %4563, 3
  %4565 = and i32 %4564, 8
  %4566 = icmp ne i32 %4565, 0
  %4567 = call float @dx.op.binary.f32(i32 35, float %4547, float %4522)  ; FMax(a,b)
  %4568 = call float @dx.op.binary.f32(i32 35, float %4548, float %4522)  ; FMax(a,b)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4549, float %4522)  ; FMax(a,b)
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = select i1 %261, float %4522, float %4547
  %4572 = select i1 %261, float %4570, float %4548
  %4573 = select i1 %261, float 1.000000e+00, float %4549
  %4574 = select i1 %4566, float %4567, float %4571
  %4575 = select i1 %4566, float %4568, float %4572
  %4576 = select i1 %4566, float %4569, float %4573
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.CBufRet.f32 %4577, 2
  %4581 = fadd fast float %4578, %195
  %4582 = fadd fast float %4579, %196
  %4583 = fadd fast float %4580, %197
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = fsub fast float %4581, %4585
  %4588 = fsub fast float %4582, %4586
  %4589 = fmul fast float %4587, %4587
  %4590 = fmul fast float %4588, %4588
  %4591 = fadd fast float %4589, %4590
  %4592 = call float @dx.op.unary.f32(i32 24, float %4591)  ; Sqrt(value)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4594 = fcmp fast olt float %4592, %4593
  br i1 %4594, label %4595, label %4662

; <label>:4595                                    ; preds = %4518
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4600, 1
  %4605 = extractvalue %dx.types.CBufRet.f32 %4596, 3
  %4606 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4607 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4608 = fadd fast float %4605, %4581
  %4609 = fadd fast float %4606, %4582
  %4610 = fadd fast float %4607, %4583
  %4611 = fmul fast float %4608, %4597
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4609, float %4599, float %4611)  ; FMad(a,b,c)
  %4613 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4601, float %4612)  ; FMad(a,b,c)
  %4614 = fmul fast float %4608, %4602
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4609, float %4603, float %4614)  ; FMad(a,b,c)
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4604, float %4615)  ; FMad(a,b,c)
  %4617 = fsub fast float %4613, %4605
  %4618 = fsub fast float %4616, %4606
  %4619 = fsub fast float %4617, %4585
  %4620 = fadd fast float %4619, %4593
  %4621 = fsub fast float %4618, %4586
  %4622 = fadd fast float %4621, %4593
  %4623 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4624 = fmul fast float %4620, %4623
  %4625 = fmul fast float %4622, %4623
  %4626 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4627 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4628 = fsub fast float 1.000000e+00, %4626
  %4629 = fsub fast float 1.000000e+00, %4627
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = fcmp fast ugt float %4631, 0.000000e+00
  br i1 %4632, label %4633, label %4936

; <label>:4633                                    ; preds = %4595
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 2
  %4636 = fmul fast float %4635, %4631
  %4637 = extractvalue %dx.types.CBufRet.f32 %4634, 3
  %4638 = fadd fast float %4637, %4636
  %4639 = extractvalue %dx.types.CBufRet.f32 %4600, 2
  %4640 = fadd fast float %4638, %4607
  %4641 = fmul fast float %4613, %4601
  %4642 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4604, float %4641)  ; FMad(a,b,c)
  %4643 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4639, float %4642)  ; FMad(a,b,c)
  %4644 = fsub fast float %4643, %4607
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 2
  %4647 = fsub fast float %4644, %4646
  %4648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.f32 %4648, 2
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %50, float %4628, float %4629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = extractvalue %dx.types.ResRet.f32 %4652, 1
  %4655 = extractvalue %dx.types.ResRet.f32 %4652, 2
  %4656 = fadd fast float %4653, %4649
  %4657 = fmul fast float %4656, 0x3F847AE140000000
  %4658 = fadd fast float %4654, %4650
  %4659 = fmul fast float %4658, 0x3F847AE140000000
  %4660 = fadd fast float %4655, %4651
  %4661 = fmul fast float %4660, 0x3F847AE140000000
  br label %4936

; <label>:4662                                    ; preds = %4518
  %4663 = and i32 %240, 1
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %4936, label %4665

; <label>:4665                                    ; preds = %4662
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 0
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.CBufRet.f32 %4666, 1
  %4673 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4674 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4675 = extractvalue %dx.types.CBufRet.f32 %4666, 3
  %4676 = extractvalue %dx.types.CBufRet.f32 %4668, 3
  %4677 = extractvalue %dx.types.CBufRet.f32 %4670, 3
  %4678 = fadd fast float %4675, %4581
  %4679 = fadd fast float %4676, %4582
  %4680 = fadd fast float %4677, %4583
  %4681 = fmul fast float %4678, %4667
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4669, float %4681)  ; FMad(a,b,c)
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4671, float %4682)  ; FMad(a,b,c)
  %4684 = fmul fast float %4678, %4672
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4679, float %4673, float %4684)  ; FMad(a,b,c)
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4674, float %4685)  ; FMad(a,b,c)
  %4687 = fsub fast float %4683, %4675
  %4688 = fsub fast float %4686, %4676
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.CBufRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.CBufRet.f32 %4689, 2
  %4693 = extractvalue %dx.types.CBufRet.f32 %4689, 3
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.i32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.i32 %4696, 1
  %4699 = udiv i32 %4698, %4697
  %4700 = fsub fast float %4687, %4690
  %4701 = fsub fast float %4688, %4691
  %4702 = call float @dx.op.binary.f32(i32 35, float %4700, float 0.000000e+00)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4701, float 0.000000e+00)  ; FMax(a,b)
  %4704 = call float @dx.op.binary.f32(i32 36, float %4702, float %4692)  ; FMin(a,b)
  %4705 = call float @dx.op.binary.f32(i32 36, float %4703, float %4693)  ; FMin(a,b)
  %4706 = add i32 %4697, -1
  %4707 = add i32 %4699, -1
  %4708 = fmul fast float %4704, %4695
  %4709 = fmul fast float %4705, %4695
  %4710 = fptoui float %4708 to i32
  %4711 = fptoui float %4709 to i32
  %4712 = call i32 @dx.op.binary.i32(i32 40, i32 %4710, i32 %4706)  ; UMin(a,b)
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4711, i32 %4707)  ; UMin(a,b)
  %4714 = mul i32 %4713, %4697
  %4715 = add i32 %4714, %4712
  %4716 = shl i32 %4715, 2
  %4717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.i32 %4717, 0
  %4719 = icmp eq i32 %4718, -1
  br i1 %4719, label %4936, label %4720

; <label>:4720                                    ; preds = %4665
  %4721 = mul i32 %4718, 148
  %4722 = add i32 %4721, 4
  %4723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = add i32 %4721, 8
  %4726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.f32 %4726, 0
  %4728 = add i32 %4721, 36
  %4729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4728, i32 undef)  ; BufferLoad(srv,index,wot)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = add i32 %4721, 60
  %4732 = add i32 %4721, 92
  %4733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.i32 %4733, 0
  %4735 = add i32 %4721, 116
  %4736 = fsub fast float %4687, %4724
  %4737 = fsub fast float %4688, %4727
  %4738 = fmul fast float %4695, %4736
  %4739 = fmul fast float %4695, %4737
  %4740 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 2
  %4745 = call float @dx.op.unary.f32(i32 83, float %4740)  ; DerivCoarseX(value)
  %4746 = call float @dx.op.unary.f32(i32 83, float %4742)  ; DerivCoarseX(value)
  %4747 = call float @dx.op.unary.f32(i32 84, float %4740)  ; DerivCoarseY(value)
  %4748 = call float @dx.op.unary.f32(i32 84, float %4742)  ; DerivCoarseY(value)
  %4749 = fmul fast float %4745, %4744
  %4750 = fmul fast float %4746, %4744
  %4751 = fmul fast float %4747, %4744
  %4752 = fmul fast float %4748, %4744
  %4753 = call float @dx.op.dot2.f32(i32 54, float %4751, float %4752, float %4751, float %4752)  ; Dot2(ax,ay,bx,by)
  %4754 = call float @dx.op.dot2.f32(i32 54, float %4749, float %4750, float %4749, float %4750)  ; Dot2(ax,ay,bx,by)
  %4755 = call float @dx.op.binary.f32(i32 35, float %4754, float %4753)  ; FMax(a,b)
  %4756 = call float @dx.op.unary.f32(i32 23, float %4755)  ; Log(value)
  %4757 = fmul fast float %4756, 5.000000e-01
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 1
  %4760 = fadd fast float %4759, %4757
  %4761 = call float @dx.op.binary.f32(i32 35, float %4760, float 0.000000e+00)  ; FMax(a,b)
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4764 = fadd fast float %4763, %4761
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4767 = fadd fast float %4764, %4766
  %4768 = add i32 %4734, 0
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4769, i32 0)  ; GetDimensions(handle,mipLevel)
  %4771 = extractvalue %dx.types.Dimensions %4770, 0
  %4772 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4771)  ; FirstbitLo(value)
  %4773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.i32 %4773, 1
  %4775 = sub nsw i32 %4774, %4772
  %4776 = sitofp i32 %4775 to float
  %4777 = fsub fast float %4767, %4776
  %4778 = call float @dx.op.binary.f32(i32 35, float %4777, float 0.000000e+00)  ; FMax(a,b)
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4769, %dx.types.Handle %48, float %4740, float %4742, float %4730, float undef, i32 0, i32 0, i32 undef, float %4778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = fcmp ule float %4780, 0x3FE0101020000000
  %4782 = extractvalue %dx.types.CBufRet.i32 %4773, 0
  %4783 = and i32 %4782, 128
  %4784 = icmp ne i32 %4783, 0
  %4785 = and i1 %4781, %4784
  br i1 %4785, label %4936, label %4786

; <label>:4786                                    ; preds = %4720
  %4787 = add i32 %4721, 20
  %4788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4787, i32 undef)  ; BufferLoad(srv,index,wot)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = add i32 %4721, 24
  %4791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4790, i32 undef)  ; BufferLoad(srv,index,wot)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = add i32 %4721, 40
  %4794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4793, i32 undef)  ; BufferLoad(srv,index,wot)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = add i32 %4721, 96
  %4797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.i32 %4797, 0
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 2
  %4801 = fmul fast float %4800, %4740
  %4802 = fmul fast float %4800, %4742
  %4803 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4804 = fadd fast float %4801, %4803
  %4805 = fadd fast float %4802, %4803
  %4806 = add i32 %4798, 0
  %4807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4808 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4807, i32 0)  ; GetDimensions(handle,mipLevel)
  %4809 = extractvalue %dx.types.Dimensions %4808, 0
  %4810 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4809)  ; FirstbitLo(value)
  %4811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.i32 %4811, 1
  %4813 = sub nsw i32 %4812, %4810
  %4814 = sitofp i32 %4813 to float
  %4815 = fsub fast float %4764, %4814
  %4816 = call float @dx.op.binary.f32(i32 35, float %4815, float 0.000000e+00)  ; FMax(a,b)
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4807, %dx.types.Handle %48, float %4804, float %4805, float %4795, float undef, i32 0, i32 0, i32 undef, float %4816)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = fmul fast float %4818, %4789
  %4820 = fadd fast float %4819, %4792
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.CBufRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.CBufRet.f32 %4821, 2
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4829 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4830 = fadd fast float %4826, %4687
  %4831 = fadd fast float %4828, %4688
  %4832 = fadd fast float %4820, %4829
  %4833 = fmul fast float %4830, %4822
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4831, float %4823, float %4833)  ; FMad(a,b,c)
  %4835 = call float @dx.op.tertiary.f32(i32 46, float %4832, float %4824, float %4834)  ; FMad(a,b,c)
  %4836 = fsub fast float %4835, %4829
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4839 = fsub fast float %4836, %4838
  %4840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.i32 %4840, 0
  %4842 = call i32 @dx.op.binary.i32(i32 40, i32 %4718, i32 %4841)  ; UMin(a,b)
  %4843 = mul i32 %4842, 36
  %4844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4843, i32 undef)  ; BufferLoad(srv,index,wot)
  %4845 = extractvalue %dx.types.ResRet.i32 %4844, 0
  %4846 = add i32 %4843, 4
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = fmul fast float %4848, %4740
  %4850 = fmul fast float %4848, %4742
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4852 = fadd fast float %4849, %4851
  %4853 = fadd fast float %4850, %4851
  %4854 = icmp eq i32 %4845, 0
  br i1 %4854, label %4923, label %4855

; <label>:4855                                    ; preds = %4786
  br label %4856

; <label>:4856                                    ; preds = %4913, %4855
  %4857 = phi float [ %4914, %4913 ], [ 0.000000e+00, %4855 ]
  %4858 = phi float [ %4915, %4913 ], [ 0.000000e+00, %4855 ]
  %4859 = phi float [ %4916, %4913 ], [ 0.000000e+00, %4855 ]
  %4860 = phi float [ %4917, %4913 ], [ 0.000000e+00, %4855 ]
  %4861 = phi float [ %4918, %4913 ], [ 0.000000e+00, %4855 ]
  %4862 = phi float [ %4919, %4913 ], [ 0.000000e+00, %4855 ]
  %4863 = phi i32 [ %4920, %4913 ], [ 0, %4855 ]
  %4864 = shl i32 %4863, 2
  %4865 = add i32 %4731, %4864
  %4866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4865, i32 undef)  ; BufferLoad(srv,index,wot)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = add i32 %4735, %4864
  %4869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4868, i32 undef)  ; BufferLoad(srv,index,wot)
  %4870 = extractvalue %dx.types.ResRet.i32 %4869, 0
  %4871 = add i32 %4870, 0
  %4872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4871, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4873 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4872, i32 0)  ; GetDimensions(handle,mipLevel)
  %4874 = extractvalue %dx.types.Dimensions %4873, 0
  %4875 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4874)  ; FirstbitLo(value)
  %4876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.i32 %4876, 1
  %4878 = sub nsw i32 %4877, %4875
  %4879 = sitofp i32 %4878 to float
  %4880 = fsub fast float %4764, %4879
  %4881 = call float @dx.op.binary.f32(i32 35, float %4880, float 0.000000e+00)  ; FMax(a,b)
  %4882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4872, %dx.types.Handle %48, float %4852, float %4853, float %4867, float undef, i32 0, i32 0, i32 undef, float %4881)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = fcmp fast ogt float %4883, 0.000000e+00
  br i1 %4884, label %4885, label %4913

; <label>:4885                                    ; preds = %4856
  %4886 = add i32 %4846, %4864
  %4887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4886, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.i32 %4887, 0
  %4889 = and i32 %4888, 32767
  %4890 = mul nuw nsw i32 %4889, 928
  %4891 = add nuw nsw i32 %4890, 48
  %4892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4891, i32 undef)  ; BufferLoad(srv,index,wot)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.ResRet.f32 %4892, 2
  %4896 = add nuw nsw i32 %4890, 60
  %4897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = fmul fast float %4893, %4883
  %4902 = fmul fast float %4894, %4883
  %4903 = fmul fast float %4895, %4883
  %4904 = fadd fast float %4901, %4857
  %4905 = fadd fast float %4902, %4858
  %4906 = fadd fast float %4903, %4859
  %4907 = fmul fast float %4898, %4883
  %4908 = fmul fast float %4899, %4883
  %4909 = fmul fast float %4900, %4883
  %4910 = fadd fast float %4907, %4860
  %4911 = fadd fast float %4908, %4861
  %4912 = fadd fast float %4909, %4862
  br label %4913

; <label>:4913                                    ; preds = %4885, %4856
  %4914 = phi float [ %4904, %4885 ], [ %4857, %4856 ]
  %4915 = phi float [ %4905, %4885 ], [ %4858, %4856 ]
  %4916 = phi float [ %4906, %4885 ], [ %4859, %4856 ]
  %4917 = phi float [ %4910, %4885 ], [ %4860, %4856 ]
  %4918 = phi float [ %4911, %4885 ], [ %4861, %4856 ]
  %4919 = phi float [ %4912, %4885 ], [ %4862, %4856 ]
  %4920 = add nuw i32 %4863, 1
  %4921 = icmp eq i32 %4920, %4845
  br i1 %4921, label %4922, label %4856

; <label>:4922                                    ; preds = %4913
  br label %4923

; <label>:4923                                    ; preds = %4922, %4786
  %4924 = phi float [ 0.000000e+00, %4786 ], [ %4914, %4922 ]
  %4925 = phi float [ 0.000000e+00, %4786 ], [ %4915, %4922 ]
  %4926 = phi float [ 0.000000e+00, %4786 ], [ %4916, %4922 ]
  %4927 = phi float [ 0.000000e+00, %4786 ], [ %4917, %4922 ]
  %4928 = phi float [ 0.000000e+00, %4786 ], [ %4918, %4922 ]
  %4929 = phi float [ 0.000000e+00, %4786 ], [ %4919, %4922 ]
  %4930 = fadd fast float %4927, %4924
  %4931 = fmul fast float %4930, 0x3F847AE140000000
  %4932 = fadd fast float %4928, %4925
  %4933 = fmul fast float %4932, 0x3F847AE140000000
  %4934 = fadd fast float %4929, %4926
  %4935 = fmul fast float %4934, 0x3F847AE140000000
  br label %4936

; <label>:4936                                    ; preds = %4923, %4720, %4665, %4662, %4633, %4595
  %4937 = phi float [ %4647, %4633 ], [ -1.310720e+05, %4595 ], [ %4839, %4923 ], [ -1.310720e+05, %4665 ], [ -1.310720e+05, %4720 ], [ -1.310720e+05, %4662 ]
  %4938 = phi float [ %4657, %4633 ], [ 0.000000e+00, %4595 ], [ %4931, %4923 ], [ 0.000000e+00, %4665 ], [ 0.000000e+00, %4720 ], [ 0.000000e+00, %4662 ]
  %4939 = phi float [ %4659, %4633 ], [ 0.000000e+00, %4595 ], [ %4933, %4923 ], [ 0.000000e+00, %4665 ], [ 0.000000e+00, %4720 ], [ 0.000000e+00, %4662 ]
  %4940 = phi float [ %4661, %4633 ], [ 0.000000e+00, %4595 ], [ %4935, %4923 ], [ 0.000000e+00, %4665 ], [ 0.000000e+00, %4720 ], [ 0.000000e+00, %4662 ]
  %4941 = phi i1 [ true, %4633 ], [ false, %4595 ], [ true, %4923 ], [ false, %4665 ], [ false, %4720 ], [ false, %4662 ]
  %4942 = and i32 %240, 3
  %4943 = icmp eq i32 %4942, 1
  %4944 = select i1 %4943, float 1.000000e+00, float 0.000000e+00
  %4945 = fsub fast float %4937, %197
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = select i1 %4941, float %4946, float 1.000000e+00
  %4948 = fmul fast float %4947, %4944
  %4949 = icmp eq i32 %4942, 3
  %4950 = select i1 %4949, float 1.000000e+00, float %4948
  %4951 = call float @dx.op.binary.f32(i32 35, float %4537, float %4950)  ; FMax(a,b)
  %4952 = fcmp fast olt float %4950, 1.000000e+00
  %4953 = fcmp uge float %73, 0.000000e+00
  %4954 = and i1 %4953, %4952
  br i1 %4954, label %4955, label %4965

; <label>:4955                                    ; preds = %4936
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = fadd fast float %4957, %4951
  %4961 = fcmp ule float %72, 0.000000e+00
  %4962 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = select i1 %4961, float %4962, float 1.000000e+00
  %4964 = fmul fast float %4963, %4959
  br label %4965

; <label>:4965                                    ; preds = %4955, %4936
  %4966 = phi float [ %4960, %4955 ], [ %4951, %4936 ]
  %4967 = phi float [ %4958, %4955 ], [ 0.000000e+00, %4936 ]
  %4968 = phi float [ %4964, %4955 ], [ 0.000000e+00, %4936 ]
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4972 = fcmp fast une float %4970, 0.000000e+00
  %4973 = fcmp fast une float %4971, 0.000000e+00
  %4974 = or i1 %4972, %4973
  br i1 %4974, label %4975, label %5534

; <label>:4975                                    ; preds = %4965
  br i1 %4972, label %4976, label %5249

; <label>:4976                                    ; preds = %4975
  %4977 = call float @dx.op.unary.f32(i32 23, float %4534)  ; Log(value)
  %4978 = fmul fast float %4977, 4.000000e+00
  %4979 = call float @dx.op.unary.f32(i32 21, float %4978)  ; Exp(value)
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 0
  %4982 = fmul fast float %4981, %60
  %4983 = fmul fast float %4981, %61
  %4984 = fmul fast float %4981, %62
  %4985 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4986 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4987 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4988 = call float @dx.op.unary.f32(i32 23, float %4985)  ; Log(value)
  %4989 = call float @dx.op.unary.f32(i32 23, float %4986)  ; Log(value)
  %4990 = call float @dx.op.unary.f32(i32 23, float %4987)  ; Log(value)
  %4991 = fmul fast float %4988, 4.000000e+00
  %4992 = fmul fast float %4989, 4.000000e+00
  %4993 = fmul fast float %4990, 4.000000e+00
  %4994 = call float @dx.op.unary.f32(i32 21, float %4991)  ; Exp(value)
  %4995 = call float @dx.op.unary.f32(i32 21, float %4992)  ; Exp(value)
  %4996 = call float @dx.op.unary.f32(i32 21, float %4993)  ; Exp(value)
  %4997 = fadd fast float %4995, %4994
  %4998 = fadd fast float %4997, %4996
  %4999 = fdiv fast float 1.000000e+00, %4998
  %5000 = fmul fast float %4999, %4994
  %5001 = fcmp fast ogt float %69, 0.000000e+00
  %5002 = fcmp fast ogt float %70, 0.000000e+00
  %5003 = fcmp fast ogt float %71, 0.000000e+00
  %5004 = fcmp fast olt float %69, 0.000000e+00
  %5005 = fcmp fast olt float %70, 0.000000e+00
  %5006 = fcmp fast olt float %71, 0.000000e+00
  %5007 = zext i1 %5001 to i32
  %5008 = zext i1 %5002 to i32
  %5009 = zext i1 %5003 to i32
  %5010 = zext i1 %5004 to i32
  %5011 = zext i1 %5005 to i32
  %5012 = zext i1 %5006 to i32
  %5013 = sub nsw i32 %5007, %5010
  %5014 = sub nsw i32 %5008, %5011
  %5015 = sub nsw i32 %5009, %5012
  %5016 = call float @dx.op.unary.f32(i32 83, float %4982)  ; DerivCoarseX(value)
  %5017 = call float @dx.op.unary.f32(i32 83, float %4983)  ; DerivCoarseX(value)
  %5018 = call float @dx.op.unary.f32(i32 83, float %4984)  ; DerivCoarseX(value)
  %5019 = call float @dx.op.unary.f32(i32 84, float %4982)  ; DerivCoarseY(value)
  %5020 = call float @dx.op.unary.f32(i32 84, float %4983)  ; DerivCoarseY(value)
  %5021 = call float @dx.op.unary.f32(i32 84, float %4984)  ; DerivCoarseY(value)
  %5022 = fcmp fast ole float %272, %5000
  %5023 = fmul fast float %4999, %4997
  %5024 = fcmp fast ole float %272, %5023
  %5025 = select i1 %5024, float %4984, float %4982
  %5026 = select i1 %5024, float %4982, float %4983
  %5027 = select i1 %5022, float %4983, float %5025
  %5028 = select i1 %5022, float %4984, float %5026
  %5029 = select i1 %5024, float %5018, float %5016
  %5030 = select i1 %5024, float %5016, float %5017
  %5031 = select i1 %5022, float %5017, float %5029
  %5032 = select i1 %5022, float %5018, float %5030
  %5033 = select i1 %5024, float %5021, float %5019
  %5034 = select i1 %5024, float %5019, float %5020
  %5035 = select i1 %5022, float %5020, float %5033
  %5036 = select i1 %5022, float %5021, float %5034
  %5037 = call float @dx.op.unary.f32(i32 27, float %5027)  ; Round_ni(value)
  %5038 = call float @dx.op.unary.f32(i32 27, float %5028)  ; Round_ni(value)
  %5039 = fptosi float %5037 to i32
  %5040 = fptosi float %5038 to i32
  %5041 = xor i32 %5040, %5039
  %5042 = sitofp i32 %5041 to float
  %5043 = fptosi float %5042 to i32
  %5044 = sitofp i32 %5043 to float
  %5045 = fmul fast float %5044, 0x3FE3C6EF40000000
  %5046 = frem fast float %5037, 2.560000e+02
  %5047 = frem fast float %5038, 2.560000e+02
  %5048 = fptoui float %5046 to i32
  %5049 = fptoui float %5047 to i32
  %5050 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5048, i32 %5049, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = fadd fast float %5051, %5045
  %5055 = fadd fast float %5052, %5045
  %5056 = fadd fast float %5053, %5045
  %5057 = call float @dx.op.unary.f32(i32 22, float %5054)  ; Frc(value)
  %5058 = call float @dx.op.unary.f32(i32 22, float %5055)  ; Frc(value)
  %5059 = call float @dx.op.unary.f32(i32 22, float %5056)  ; Frc(value)
  %5060 = fmul fast float %5059, 0x401921FB60000000
  %5061 = call float @dx.op.unary.f32(i32 13, float %5060)  ; Sin(value)
  %5062 = call float @dx.op.unary.f32(i32 12, float %5060)  ; Cos(value)
  %5063 = fsub fast float -0.000000e+00, %5062
  %5064 = fmul fast float %5062, %5027
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %5028, float %5064)  ; FMad(a,b,c)
  %5066 = fmul fast float %5061, %5027
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %5063, float %5028, float %5066)  ; FMad(a,b,c)
  %5068 = fadd fast float %5065, %5057
  %5069 = fadd fast float %5067, %5058
  %5070 = extractvalue %dx.types.CBufRet.f32 %4980, 3
  %5071 = bitcast float %5070 to i32
  %5072 = icmp eq i32 %5071, 0
  br i1 %5072, label %5111, label %5073

; <label>:5073                                    ; preds = %4976
  %5074 = add i32 %5071, 0
  %5075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5076 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5075, %dx.types.Handle %105, float %5068, float %5069, float undef, float undef, i32 0, i32 0, i32 undef, float %5031, float %5032, float undef, float %5035, float %5036, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5077 = extractvalue %dx.types.ResRet.f32 %5076, 0
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5081 = fsub fast float 1.000000e+00, %4970
  %5082 = call float @dx.op.binary.f32(i32 35, float %5081, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5083 = bitcast float %4970 to i32
  %5084 = sitofp i32 %5083 to float
  %5085 = fadd fast float %5084, 0xC1CFBF8940000000
  %5086 = fmul fast float %5080, %5085
  %5087 = fadd fast float %5086, 0x41CFBF8940000000
  %5088 = fptosi float %5087 to i32
  %5089 = bitcast i32 %5088 to float
  %5090 = bitcast float %5082 to i32
  %5091 = sitofp i32 %5090 to float
  %5092 = fadd fast float %5091, 0xC1CFBF8940000000
  %5093 = fmul fast float %5092, %5080
  %5094 = fadd fast float %5093, 0x41CFBF8940000000
  %5095 = fptosi float %5094 to i32
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5089, %5079
  %5098 = fmul fast float %5096, %5079
  %5099 = fsub fast float %5082, %5097
  %5100 = fadd fast float %5098, %5082
  %5101 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5103 = fsub fast float %5077, %5101
  %5104 = fsub fast float %5102, %5101
  %5105 = bitcast float %5104 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = fmul fast float %5107, %5103
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fcmp fast olt float %5109, 0x3F70101020000000
  br i1 %5110, label %5249, label %5111

; <label>:5111                                    ; preds = %5073, %4976
  %5112 = phi float [ %5109, %5073 ], [ %4970, %4976 ]
  %5113 = fmul fast float %5112, %4979
  %5114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.i32 %5114, 1
  %5116 = extractvalue %dx.types.CBufRet.i32 %5114, 0
  %5117 = add i32 %5116, 0
  %5118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5118, %dx.types.Handle %104, float %5068, float %5069, float undef, float undef, i32 0, i32 0, i32 undef, float %5031, float %5032, float undef, float %5035, float %5036, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.ResRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.ResRet.f32 %5119, 2
  %5123 = extractvalue %dx.types.ResRet.f32 %5119, 3
  %5124 = and i32 %5115, 255
  %5125 = uitofp i32 %5124 to float
  %5126 = lshr i32 %5115, 8
  %5127 = and i32 %5126, 255
  %5128 = uitofp i32 %5127 to float
  %5129 = fmul fast float %5123, %5125
  %5130 = fadd fast float %5129, %5128
  %5131 = fmul fast float %5130, 0x3F70101000000000
  %5132 = fadd fast float %5131, 0xBFB99999A0000000
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, 0x3FF1C71C80000000
  %5135 = call float @dx.op.binary.f32(i32 36, float %5131, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5136 = fsub fast float 1.000000e+00, %5134
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, %5120
  %5139 = fmul fast float %5137, %5121
  %5140 = fmul fast float %5137, %5122
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = fmul fast float %5134, %5120
  %5145 = fmul fast float %5134, %5121
  %5146 = fmul fast float %5134, %5122
  %5147 = fadd fast float %5144, %5135
  %5148 = fadd fast float %5145, %5135
  %5149 = fadd fast float %5146, %5135
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.i32 %5153, 3
  %5155 = extractvalue %dx.types.CBufRet.i32 %5153, 2
  %5156 = add i32 %5155, 0
  %5157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5157, %dx.types.Handle %104, float %5068, float %5069, float undef, float undef, i32 0, i32 0, i32 undef, float %5031, float %5032, float undef, float %5035, float %5036, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5158, 3
  %5163 = and i32 %5154, 255
  %5164 = uitofp i32 %5163 to float
  %5165 = lshr i32 %5154, 8
  %5166 = and i32 %5165, 255
  %5167 = uitofp i32 %5166 to float
  %5168 = lshr i32 %5154, 16
  %5169 = and i32 %5168, 255
  %5170 = uitofp i32 %5169 to float
  %5171 = fmul fast float %5170, 0x3F70101000000000
  %5172 = fmul fast float %5159, %5164
  %5173 = fadd fast float %5172, %5167
  %5174 = fmul fast float %5173, 0x3F70101000000000
  %5175 = fadd fast float %5160, -5.000000e-01
  %5176 = fadd fast float %5162, -5.000000e-01
  %5177 = fmul fast float %5175, %5171
  %5178 = fmul fast float %5176, %5171
  %5179 = fadd fast float %5177, 5.000000e-01
  %5180 = fadd fast float %5178, 5.000000e-01
  %5181 = fmul fast float %5179, 2.000000e+00
  %5182 = fadd fast float %5181, -1.000000e+00
  %5183 = fmul fast float %5180, 2.000000e+00
  %5184 = fadd fast float %5183, -1.000000e+00
  %5185 = fadd fast float %5182, %5184
  %5186 = fmul fast float %5185, 5.000000e-01
  %5187 = fsub fast float %5182, %5184
  %5188 = fmul fast float %5187, 5.000000e-01
  %5189 = call float @dx.op.unary.f32(i32 6, float %5186)  ; FAbs(value)
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = call float @dx.op.unary.f32(i32 6, float %5188)  ; FAbs(value)
  %5192 = fsub fast float %5190, %5191
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5186, float %5188, float %5192, float %5186, float %5188, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.unary.f32(i32 25, float %5193)  ; Rsqrt(value)
  %5195 = fmul fast float %5186, %5194
  %5196 = fmul fast float %5188, %5194
  %5197 = select i1 %5024, i32 %5014, i32 %5015
  %5198 = select i1 %5022, i32 %5013, i32 %5197
  %5199 = sitofp i32 %5198 to float
  %5200 = fmul fast float %5192, %5199
  %5201 = fmul fast float %5200, %5194
  %5202 = select i1 %5024, float %5201, float %5196
  %5203 = select i1 %5024, float %5196, float %5201
  %5204 = select i1 %5022, float %5201, float %5195
  %5205 = select i1 %5022, float %5196, float %5202
  %5206 = select i1 %5022, float %5195, float %5203
  %5207 = fsub fast float %5141, %4574
  %5208 = fsub fast float %5142, %4575
  %5209 = fsub fast float %5143, %4576
  %5210 = fmul fast float %5207, %5113
  %5211 = fmul fast float %5208, %5113
  %5212 = fmul fast float %5209, %5113
  %5213 = fadd fast float %5210, %4574
  %5214 = fadd fast float %5211, %4575
  %5215 = fadd fast float %5212, %4576
  %5216 = fsub fast float %5150, %4556
  %5217 = fsub fast float %5151, %4557
  %5218 = fsub fast float %5152, %4558
  %5219 = fmul fast float %5216, %5113
  %5220 = fmul fast float %5217, %5113
  %5221 = fmul fast float %5218, %5113
  %5222 = fadd fast float %5219, %4556
  %5223 = fadd fast float %5220, %4557
  %5224 = fadd fast float %5221, %4558
  %5225 = fadd fast float %5204, %4519
  %5226 = fadd fast float %5205, %4520
  %5227 = fadd fast float %5206, %4521
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.unary.f32(i32 25, float %5228)  ; Rsqrt(value)
  %5230 = fmul fast float %5225, %5229
  %5231 = fmul fast float %5226, %5229
  %5232 = fmul fast float %5227, %5229
  %5233 = fsub fast float %5230, %4519
  %5234 = fsub fast float %5231, %4520
  %5235 = fsub fast float %5232, %4521
  %5236 = fmul fast float %5233, %5113
  %5237 = fmul fast float %5234, %5113
  %5238 = fmul fast float %5235, %5113
  %5239 = fadd fast float %5236, %4519
  %5240 = fadd fast float %5237, %4520
  %5241 = fadd fast float %5238, %4521
  %5242 = call float @dx.op.binary.f32(i32 36, float %4534, float %5161)  ; FMin(a,b)
  %5243 = fsub fast float %5242, %4534
  %5244 = fmul fast float %5243, %5113
  %5245 = fadd fast float %5244, %4534
  %5246 = fsub fast float %5174, %4559
  %5247 = fmul fast float %5246, %5113
  %5248 = fadd fast float %5247, %4559
  br label %5249

; <label>:5249                                    ; preds = %5111, %5073, %4975
  %5250 = phi float [ %5213, %5111 ], [ %4574, %5073 ], [ %4574, %4975 ]
  %5251 = phi float [ %5214, %5111 ], [ %4575, %5073 ], [ %4575, %4975 ]
  %5252 = phi float [ %5215, %5111 ], [ %4576, %5073 ], [ %4576, %4975 ]
  %5253 = phi float [ %5222, %5111 ], [ %4556, %5073 ], [ %4556, %4975 ]
  %5254 = phi float [ %5223, %5111 ], [ %4557, %5073 ], [ %4557, %4975 ]
  %5255 = phi float [ %5224, %5111 ], [ %4558, %5073 ], [ %4558, %4975 ]
  %5256 = phi float [ %5239, %5111 ], [ %4519, %5073 ], [ %4519, %4975 ]
  %5257 = phi float [ %5240, %5111 ], [ %4520, %5073 ], [ %4520, %4975 ]
  %5258 = phi float [ %5241, %5111 ], [ %4521, %5073 ], [ %4521, %4975 ]
  %5259 = phi float [ %5248, %5111 ], [ %4559, %5073 ], [ %4559, %4975 ]
  %5260 = phi float [ %5245, %5111 ], [ %4534, %5073 ], [ %4534, %4975 ]
  br i1 %4973, label %5261, label %5534

; <label>:5261                                    ; preds = %5249
  %5262 = call float @dx.op.unary.f32(i32 23, float %5260)  ; Log(value)
  %5263 = fmul fast float %5262, 4.000000e+00
  %5264 = call float @dx.op.unary.f32(i32 21, float %5263)  ; Exp(value)
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = fmul fast float %5266, %60
  %5268 = fmul fast float %5266, %61
  %5269 = fmul fast float %5266, %62
  %5270 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5271 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5272 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5273 = call float @dx.op.unary.f32(i32 23, float %5270)  ; Log(value)
  %5274 = call float @dx.op.unary.f32(i32 23, float %5271)  ; Log(value)
  %5275 = call float @dx.op.unary.f32(i32 23, float %5272)  ; Log(value)
  %5276 = fmul fast float %5273, 4.000000e+00
  %5277 = fmul fast float %5274, 4.000000e+00
  %5278 = fmul fast float %5275, 4.000000e+00
  %5279 = call float @dx.op.unary.f32(i32 21, float %5276)  ; Exp(value)
  %5280 = call float @dx.op.unary.f32(i32 21, float %5277)  ; Exp(value)
  %5281 = call float @dx.op.unary.f32(i32 21, float %5278)  ; Exp(value)
  %5282 = fadd fast float %5280, %5279
  %5283 = fadd fast float %5282, %5281
  %5284 = fdiv fast float 1.000000e+00, %5283
  %5285 = fmul fast float %5284, %5279
  %5286 = fcmp fast ogt float %69, 0.000000e+00
  %5287 = fcmp fast ogt float %70, 0.000000e+00
  %5288 = fcmp fast ogt float %71, 0.000000e+00
  %5289 = fcmp fast olt float %69, 0.000000e+00
  %5290 = fcmp fast olt float %70, 0.000000e+00
  %5291 = fcmp fast olt float %71, 0.000000e+00
  %5292 = zext i1 %5286 to i32
  %5293 = zext i1 %5287 to i32
  %5294 = zext i1 %5288 to i32
  %5295 = zext i1 %5289 to i32
  %5296 = zext i1 %5290 to i32
  %5297 = zext i1 %5291 to i32
  %5298 = sub nsw i32 %5292, %5295
  %5299 = sub nsw i32 %5293, %5296
  %5300 = sub nsw i32 %5294, %5297
  %5301 = call float @dx.op.unary.f32(i32 83, float %5267)  ; DerivCoarseX(value)
  %5302 = call float @dx.op.unary.f32(i32 83, float %5268)  ; DerivCoarseX(value)
  %5303 = call float @dx.op.unary.f32(i32 83, float %5269)  ; DerivCoarseX(value)
  %5304 = call float @dx.op.unary.f32(i32 84, float %5267)  ; DerivCoarseY(value)
  %5305 = call float @dx.op.unary.f32(i32 84, float %5268)  ; DerivCoarseY(value)
  %5306 = call float @dx.op.unary.f32(i32 84, float %5269)  ; DerivCoarseY(value)
  %5307 = fcmp fast ole float %272, %5285
  %5308 = fmul fast float %5284, %5282
  %5309 = fcmp fast ole float %272, %5308
  %5310 = select i1 %5309, float %5269, float %5267
  %5311 = select i1 %5309, float %5267, float %5268
  %5312 = select i1 %5307, float %5268, float %5310
  %5313 = select i1 %5307, float %5269, float %5311
  %5314 = select i1 %5309, float %5303, float %5301
  %5315 = select i1 %5309, float %5301, float %5302
  %5316 = select i1 %5307, float %5302, float %5314
  %5317 = select i1 %5307, float %5303, float %5315
  %5318 = select i1 %5309, float %5306, float %5304
  %5319 = select i1 %5309, float %5304, float %5305
  %5320 = select i1 %5307, float %5305, float %5318
  %5321 = select i1 %5307, float %5306, float %5319
  %5322 = call float @dx.op.unary.f32(i32 27, float %5312)  ; Round_ni(value)
  %5323 = call float @dx.op.unary.f32(i32 27, float %5313)  ; Round_ni(value)
  %5324 = fptosi float %5322 to i32
  %5325 = fptosi float %5323 to i32
  %5326 = xor i32 %5325, %5324
  %5327 = sitofp i32 %5326 to float
  %5328 = fptosi float %5327 to i32
  %5329 = sitofp i32 %5328 to float
  %5330 = fmul fast float %5329, 0x3FE3C6EF40000000
  %5331 = frem fast float %5322, 2.560000e+02
  %5332 = frem fast float %5323, 2.560000e+02
  %5333 = fptoui float %5331 to i32
  %5334 = fptoui float %5332 to i32
  %5335 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5333, i32 %5334, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = fadd fast float %5336, %5330
  %5340 = fadd fast float %5337, %5330
  %5341 = fadd fast float %5338, %5330
  %5342 = call float @dx.op.unary.f32(i32 22, float %5339)  ; Frc(value)
  %5343 = call float @dx.op.unary.f32(i32 22, float %5340)  ; Frc(value)
  %5344 = call float @dx.op.unary.f32(i32 22, float %5341)  ; Frc(value)
  %5345 = fmul fast float %5344, 0x401921FB60000000
  %5346 = call float @dx.op.unary.f32(i32 13, float %5345)  ; Sin(value)
  %5347 = call float @dx.op.unary.f32(i32 12, float %5345)  ; Cos(value)
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fmul fast float %5347, %5312
  %5350 = call float @dx.op.tertiary.f32(i32 46, float %5346, float %5313, float %5349)  ; FMad(a,b,c)
  %5351 = fmul fast float %5346, %5312
  %5352 = call float @dx.op.tertiary.f32(i32 46, float %5348, float %5313, float %5351)  ; FMad(a,b,c)
  %5353 = fadd fast float %5350, %5342
  %5354 = fadd fast float %5352, %5343
  %5355 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5356 = bitcast float %5355 to i32
  %5357 = icmp eq i32 %5356, 0
  br i1 %5357, label %5396, label %5358

; <label>:5358                                    ; preds = %5261
  %5359 = add i32 %5356, 0
  %5360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5361 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5360, %dx.types.Handle %105, float %5353, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float %5316, float %5317, float undef, float %5320, float %5321, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5362 = extractvalue %dx.types.ResRet.f32 %5361, 0
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 1
  %5365 = extractvalue %dx.types.CBufRet.f32 %5363, 2
  %5366 = fsub fast float 1.000000e+00, %4971
  %5367 = call float @dx.op.binary.f32(i32 35, float %5366, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5368 = bitcast float %4971 to i32
  %5369 = sitofp i32 %5368 to float
  %5370 = fadd fast float %5369, 0xC1CFBF8940000000
  %5371 = fmul fast float %5365, %5370
  %5372 = fadd fast float %5371, 0x41CFBF8940000000
  %5373 = fptosi float %5372 to i32
  %5374 = bitcast i32 %5373 to float
  %5375 = bitcast float %5367 to i32
  %5376 = sitofp i32 %5375 to float
  %5377 = fadd fast float %5376, 0xC1CFBF8940000000
  %5378 = fmul fast float %5377, %5365
  %5379 = fadd fast float %5378, 0x41CFBF8940000000
  %5380 = fptosi float %5379 to i32
  %5381 = bitcast i32 %5380 to float
  %5382 = fmul fast float %5374, %5364
  %5383 = fmul fast float %5381, %5364
  %5384 = fsub fast float %5367, %5382
  %5385 = fadd fast float %5383, %5367
  %5386 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5388 = fsub fast float %5362, %5386
  %5389 = fsub fast float %5387, %5386
  %5390 = bitcast float %5389 to i32
  %5391 = sub nsw i32 2129859010, %5390
  %5392 = bitcast i32 %5391 to float
  %5393 = fmul fast float %5392, %5388
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fcmp fast olt float %5394, 0x3F70101020000000
  br i1 %5395, label %5534, label %5396

; <label>:5396                                    ; preds = %5358, %5261
  %5397 = phi float [ %5394, %5358 ], [ %4971, %5261 ]
  %5398 = fmul fast float %5397, %5264
  %5399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.i32 %5399, 1
  %5401 = extractvalue %dx.types.CBufRet.i32 %5399, 0
  %5402 = add i32 %5401, 0
  %5403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5404 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5403, %dx.types.Handle %104, float %5353, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float %5316, float %5317, float undef, float %5320, float %5321, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.ResRet.f32 %5404, 2
  %5408 = extractvalue %dx.types.ResRet.f32 %5404, 3
  %5409 = and i32 %5400, 255
  %5410 = uitofp i32 %5409 to float
  %5411 = lshr i32 %5400, 8
  %5412 = and i32 %5411, 255
  %5413 = uitofp i32 %5412 to float
  %5414 = fmul fast float %5408, %5410
  %5415 = fadd fast float %5414, %5413
  %5416 = fmul fast float %5415, 0x3F70101000000000
  %5417 = fadd fast float %5416, 0xBFB99999A0000000
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fmul fast float %5418, 0x3FF1C71C80000000
  %5420 = call float @dx.op.binary.f32(i32 36, float %5416, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5421 = fsub fast float 1.000000e+00, %5419
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = fmul fast float %5422, %5405
  %5424 = fmul fast float %5422, %5406
  %5425 = fmul fast float %5422, %5407
  %5426 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5427 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5428 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5429 = fmul fast float %5419, %5405
  %5430 = fmul fast float %5419, %5406
  %5431 = fmul fast float %5419, %5407
  %5432 = fadd fast float %5429, %5420
  %5433 = fadd fast float %5430, %5420
  %5434 = fadd fast float %5431, %5420
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5436 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.i32 %5438, 3
  %5440 = extractvalue %dx.types.CBufRet.i32 %5438, 2
  %5441 = add i32 %5440, 0
  %5442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5443 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5442, %dx.types.Handle %104, float %5353, float %5354, float undef, float undef, i32 0, i32 0, i32 undef, float %5316, float %5317, float undef, float %5320, float %5321, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5447 = extractvalue %dx.types.ResRet.f32 %5443, 3
  %5448 = and i32 %5439, 255
  %5449 = uitofp i32 %5448 to float
  %5450 = lshr i32 %5439, 8
  %5451 = and i32 %5450, 255
  %5452 = uitofp i32 %5451 to float
  %5453 = lshr i32 %5439, 16
  %5454 = and i32 %5453, 255
  %5455 = uitofp i32 %5454 to float
  %5456 = fmul fast float %5455, 0x3F70101000000000
  %5457 = fmul fast float %5444, %5449
  %5458 = fadd fast float %5457, %5452
  %5459 = fmul fast float %5458, 0x3F70101000000000
  %5460 = fadd fast float %5445, -5.000000e-01
  %5461 = fadd fast float %5447, -5.000000e-01
  %5462 = fmul fast float %5460, %5456
  %5463 = fmul fast float %5461, %5456
  %5464 = fadd fast float %5462, 5.000000e-01
  %5465 = fadd fast float %5463, 5.000000e-01
  %5466 = fmul fast float %5464, 2.000000e+00
  %5467 = fadd fast float %5466, -1.000000e+00
  %5468 = fmul fast float %5465, 2.000000e+00
  %5469 = fadd fast float %5468, -1.000000e+00
  %5470 = fadd fast float %5467, %5469
  %5471 = fmul fast float %5470, 5.000000e-01
  %5472 = fsub fast float %5467, %5469
  %5473 = fmul fast float %5472, 5.000000e-01
  %5474 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5475 = fsub fast float 1.000000e+00, %5474
  %5476 = call float @dx.op.unary.f32(i32 6, float %5473)  ; FAbs(value)
  %5477 = fsub fast float %5475, %5476
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5473, float %5477, float %5471, float %5473, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 25, float %5478)  ; Rsqrt(value)
  %5480 = fmul fast float %5471, %5479
  %5481 = fmul fast float %5473, %5479
  %5482 = select i1 %5309, i32 %5299, i32 %5300
  %5483 = select i1 %5307, i32 %5298, i32 %5482
  %5484 = sitofp i32 %5483 to float
  %5485 = fmul fast float %5477, %5484
  %5486 = fmul fast float %5485, %5479
  %5487 = select i1 %5309, float %5486, float %5481
  %5488 = select i1 %5309, float %5481, float %5486
  %5489 = select i1 %5307, float %5486, float %5480
  %5490 = select i1 %5307, float %5481, float %5487
  %5491 = select i1 %5307, float %5480, float %5488
  %5492 = fsub fast float %5426, %5250
  %5493 = fsub fast float %5427, %5251
  %5494 = fsub fast float %5428, %5252
  %5495 = fmul fast float %5492, %5398
  %5496 = fmul fast float %5493, %5398
  %5497 = fmul fast float %5494, %5398
  %5498 = fadd fast float %5495, %5250
  %5499 = fadd fast float %5496, %5251
  %5500 = fadd fast float %5497, %5252
  %5501 = fsub fast float %5435, %5253
  %5502 = fsub fast float %5436, %5254
  %5503 = fsub fast float %5437, %5255
  %5504 = fmul fast float %5501, %5398
  %5505 = fmul fast float %5502, %5398
  %5506 = fmul fast float %5503, %5398
  %5507 = fadd fast float %5504, %5253
  %5508 = fadd fast float %5505, %5254
  %5509 = fadd fast float %5506, %5255
  %5510 = fadd fast float %5489, %5256
  %5511 = fadd fast float %5490, %5257
  %5512 = fadd fast float %5491, %5258
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call float @dx.op.unary.f32(i32 25, float %5513)  ; Rsqrt(value)
  %5515 = fmul fast float %5510, %5514
  %5516 = fmul fast float %5511, %5514
  %5517 = fmul fast float %5512, %5514
  %5518 = fsub fast float %5515, %5256
  %5519 = fsub fast float %5516, %5257
  %5520 = fsub fast float %5517, %5258
  %5521 = fmul fast float %5518, %5398
  %5522 = fmul fast float %5519, %5398
  %5523 = fmul fast float %5520, %5398
  %5524 = fadd fast float %5521, %5256
  %5525 = fadd fast float %5522, %5257
  %5526 = fadd fast float %5523, %5258
  %5527 = call float @dx.op.binary.f32(i32 36, float %5260, float %5446)  ; FMin(a,b)
  %5528 = fsub fast float %5527, %5260
  %5529 = fmul fast float %5528, %5398
  %5530 = fadd fast float %5529, %5260
  %5531 = fsub fast float %5459, %5259
  %5532 = fmul fast float %5531, %5398
  %5533 = fadd fast float %5532, %5259
  br label %5534

; <label>:5534                                    ; preds = %5396, %5358, %5249, %4965
  %5535 = phi float [ %5498, %5396 ], [ %5250, %5358 ], [ %5250, %5249 ], [ %4574, %4965 ]
  %5536 = phi float [ %5499, %5396 ], [ %5251, %5358 ], [ %5251, %5249 ], [ %4575, %4965 ]
  %5537 = phi float [ %5500, %5396 ], [ %5252, %5358 ], [ %5252, %5249 ], [ %4576, %4965 ]
  %5538 = phi float [ %5507, %5396 ], [ %5253, %5358 ], [ %5253, %5249 ], [ %4556, %4965 ]
  %5539 = phi float [ %5508, %5396 ], [ %5254, %5358 ], [ %5254, %5249 ], [ %4557, %4965 ]
  %5540 = phi float [ %5509, %5396 ], [ %5255, %5358 ], [ %5255, %5249 ], [ %4558, %4965 ]
  %5541 = phi float [ %5524, %5396 ], [ %5256, %5358 ], [ %5256, %5249 ], [ %4519, %4965 ]
  %5542 = phi float [ %5525, %5396 ], [ %5257, %5358 ], [ %5257, %5249 ], [ %4520, %4965 ]
  %5543 = phi float [ %5526, %5396 ], [ %5258, %5358 ], [ %5258, %5249 ], [ %4521, %4965 ]
  %5544 = phi float [ %5533, %5396 ], [ %5259, %5358 ], [ %5259, %5249 ], [ %4559, %4965 ]
  %5545 = phi float [ %5530, %5396 ], [ %5260, %5358 ], [ %5260, %5249 ], [ %4534, %4965 ]
  %5546 = fcmp fast une float %4969, 0.000000e+00
  br i1 %5546, label %5547, label %5716

; <label>:5547                                    ; preds = %5534
  %5548 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 25, float %5548)  ; Rsqrt(value)
  %5550 = fmul fast float %195, %5549
  %5551 = fsub fast float -0.000000e+00, %5550
  %5552 = fmul fast float %196, %5549
  %5553 = fsub fast float -0.000000e+00, %5552
  %5554 = fmul fast float %197, %5549
  %5555 = fsub fast float -0.000000e+00, %5554
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5553, float %5555, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fmul fast float %4969, 2.500000e+00
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fmul fast float %4969, 0x4013FFFFE0000000
  %5560 = fadd fast float %5559, 0xBFFFFFFFE0000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fmul fast float %4969, 0x4004000020000000
  %5563 = fadd fast float %5562, 0xBFF8000040000000
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fmul fast float %4538, 1.000000e+01
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = fmul fast float %5566, 2.000000e+00
  %5568 = fsub fast float 3.000000e+00, %5567
  %5569 = fmul fast float %5566, %5566
  %5570 = fmul fast float %5569, %5568
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = fsub fast float 0x3FE3333340000000, %5544
  %5573 = fmul fast float %5572, 0x400AAAAAA0000000
  %5574 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5575 = fmul fast float %5571, %5574
  %5576 = fmul fast float %5535, 0x3FEA2B8620000000
  %5577 = fmul fast float %5536, 0x3FEA2B8620000000
  %5578 = fmul fast float %5537, 0x3FEA2B8620000000
  %5579 = fadd fast float %5576, 0x3FC81DFBA0000000
  %5580 = fmul fast float %5579, %5535
  %5581 = fadd fast float %5580, 0x3F910E6020000000
  %5582 = fadd fast float %5577, 0x3FC81DFBA0000000
  %5583 = fmul fast float %5582, %5536
  %5584 = fadd fast float %5583, 0x3F910E6020000000
  %5585 = fadd fast float %5578, 0x3FC81DFBA0000000
  %5586 = fmul fast float %5585, %5537
  %5587 = fadd fast float %5586, 0x3F910E6020000000
  %5588 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5591 = fsub fast float %5588, %5535
  %5592 = fsub fast float %5589, %5536
  %5593 = fsub fast float %5590, %5537
  %5594 = fmul fast float %5591, %5558
  %5595 = fmul fast float %5594, %5575
  %5596 = fmul fast float %5592, %5558
  %5597 = fmul fast float %5596, %5575
  %5598 = fmul fast float %5593, %5558
  %5599 = fmul fast float %5598, %5575
  %5600 = fadd fast float %5595, %5535
  %5601 = fadd fast float %5597, %5536
  %5602 = fadd fast float %5599, %5537
  %5603 = fmul fast float %5545, %5545
  %5604 = fmul fast float %5603, %5603
  %5605 = fadd fast float %5561, 1.000000e+00
  %5606 = fsub fast float %5605, %5575
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fsub fast float 1.000000e+00, %5604
  %5611 = call float @dx.op.binary.f32(i32 36, float %5607, float %5610)  ; FMin(a,b)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5611, float %5612)  ; FMax(a,b)
  %5614 = fadd fast float %5609, 0xBFE4CCCCC0000000
  %5615 = fmul fast float %5614, 0x4006DB6DA0000000
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, 2.000000e+00
  %5618 = fsub fast float 3.000000e+00, %5617
  %5619 = bitcast float %5538 to i32
  %5620 = ashr i32 %5619, 1
  %5621 = add nsw i32 %5620, 532487669
  %5622 = bitcast i32 %5621 to float
  %5623 = fsub fast float 1.000000e+00, %5622
  %5624 = bitcast float %5623 to i32
  %5625 = sub nsw i32 2129859010, %5624
  %5626 = bitcast i32 %5625 to float
  %5627 = fmul fast float %5626, 2.000000e+00
  %5628 = bitcast float %5539 to i32
  %5629 = ashr i32 %5628, 1
  %5630 = add nsw i32 %5629, 532487669
  %5631 = bitcast i32 %5630 to float
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = bitcast float %5632 to i32
  %5634 = sub nsw i32 2129859010, %5633
  %5635 = bitcast i32 %5634 to float
  %5636 = fmul fast float %5635, 2.000000e+00
  %5637 = bitcast float %5540 to i32
  %5638 = ashr i32 %5637, 1
  %5639 = add nsw i32 %5638, 532487669
  %5640 = bitcast i32 %5639 to float
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, 2.000000e+00
  %5646 = fsub fast float 0x4002A9FBE0000000, %5627
  %5647 = fadd fast float %5627, 0x3FD54FDF00000000
  %5648 = bitcast float %5647 to i32
  %5649 = sub nsw i32 2129859010, %5648
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5650, %5646
  %5652 = fmul fast float %5651, %5651
  %5653 = fsub fast float 0x4002A9FBE0000000, %5636
  %5654 = fadd fast float %5636, 0x3FD54FDF00000000
  %5655 = bitcast float %5654 to i32
  %5656 = sub nsw i32 2129859010, %5655
  %5657 = bitcast i32 %5656 to float
  %5658 = fmul fast float %5657, %5653
  %5659 = fmul fast float %5658, %5658
  %5660 = fsub fast float 0x4002A9FBE0000000, %5645
  %5661 = fadd fast float %5645, 0x3FD54FDF00000000
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, %5660
  %5666 = fmul fast float %5665, %5665
  %5667 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5652)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5659)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5666)  ; FMax(a,b)
  %5670 = fsub fast float 1.000000e+00, %5556
  %5671 = fadd fast float %5670, %5571
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fsub fast float 1.000000e+00, %4950
  %5674 = fmul fast float %5613, %5673
  %5675 = fmul fast float %5616, %5616
  %5676 = fmul fast float %5675, %5674
  %5677 = fmul fast float %5676, %5618
  %5678 = fmul fast float %5673, 0xBFE99999A0000000
  %5679 = fmul fast float %5678, %5558
  %5680 = fmul fast float %5679, %5575
  %5681 = fadd fast float %5680, 1.000000e+00
  %5682 = fadd fast float %5544, -1.000000e+00
  %5683 = fmul fast float %5681, %5682
  %5684 = fadd fast float %5683, 1.000000e+00
  %5685 = fsub fast float %5667, %5538
  %5686 = fsub fast float %5668, %5539
  %5687 = fsub fast float %5669, %5540
  %5688 = fmul fast float %5677, %5685
  %5689 = fmul fast float %5677, %5686
  %5690 = fmul fast float %5677, %5687
  %5691 = fadd fast float %5688, %5538
  %5692 = fadd fast float %5689, %5539
  %5693 = fadd fast float %5690, %5540
  %5694 = fsub fast float %115, %5541
  %5695 = fsub fast float %116, %5542
  %5696 = fsub fast float %117, %5543
  %5697 = fmul fast float %5677, %5694
  %5698 = fmul fast float %5677, %5695
  %5699 = fmul fast float %5677, %5696
  %5700 = fadd fast float %5697, %5541
  %5701 = fadd fast float %5698, %5542
  %5702 = fadd fast float %5699, %5543
  %5703 = fmul fast float %5677, %5672
  %5704 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = fmul fast float %5703, %5705
  %5707 = fadd fast float %5706, %5704
  %5708 = fsub fast float 1.000000e+00, %5545
  %5709 = fmul fast float %5677, %5708
  %5710 = fadd fast float %5709, %5545
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5701, float %5702, float %5700, float %5701, float %5702)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = call float @dx.op.unary.f32(i32 25, float %5711)  ; Rsqrt(value)
  %5713 = fmul fast float %5700, %5712
  %5714 = fmul fast float %5701, %5712
  %5715 = fmul fast float %5702, %5712
  br label %5716

; <label>:5716                                    ; preds = %5547, %5534
  %5717 = phi float [ %5600, %5547 ], [ %5535, %5534 ]
  %5718 = phi float [ %5601, %5547 ], [ %5536, %5534 ]
  %5719 = phi float [ %5602, %5547 ], [ %5537, %5534 ]
  %5720 = phi float [ %5691, %5547 ], [ %5538, %5534 ]
  %5721 = phi float [ %5692, %5547 ], [ %5539, %5534 ]
  %5722 = phi float [ %5693, %5547 ], [ %5540, %5534 ]
  %5723 = phi float [ %5713, %5547 ], [ %5541, %5534 ]
  %5724 = phi float [ %5714, %5547 ], [ %5542, %5534 ]
  %5725 = phi float [ %5715, %5547 ], [ %5543, %5534 ]
  %5726 = phi float [ %5707, %5547 ], [ %5544, %5534 ]
  %5727 = phi float [ %5710, %5547 ], [ %5545, %5534 ]
  %5728 = icmp eq i32 %58, 0
  br i1 %5728, label %5759, label %5729

; <label>:5729                                    ; preds = %5716
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5733 = fmul fast float %5731, %108
  %5734 = fmul fast float %5732, %109
  %5735 = fmul fast float %5733, 1.024000e+03
  %5736 = fmul fast float %5734, 1.024000e+03
  %5737 = fadd fast float %5735, -5.120000e+02
  %5738 = fadd fast float %5736, -5.120000e+02
  %5739 = fmul fast float %5733, 0x4081BEDF00000000
  %5740 = fadd fast float %5739, 0xC071BEDF00000000
  %5741 = call float @dx.op.unary.f32(i32 22, float %5740)  ; Frc(value)
  %5742 = fmul fast float %5737, %5741
  %5743 = fadd fast float %5742, %5738
  %5744 = fmul fast float %5734, 0x4073BEBE20000000
  %5745 = fadd fast float %5744, 0xC063BEBE20000000
  %5746 = call float @dx.op.unary.f32(i32 22, float %5745)  ; Frc(value)
  %5747 = fmul fast float %5738, %5746
  %5748 = fadd fast float %5747, %5737
  %5749 = fmul fast float %5743, %5748
  %5750 = call float @dx.op.unary.f32(i32 22, float %5749)  ; Frc(value)
  %5751 = add i32 %315, 12
  %5752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5751, i32 undef)  ; BufferLoad(srv,index,wot)
  %5753 = extractvalue %dx.types.ResRet.i32 %5752, 0
  %5754 = and i32 %5753, 255
  %5755 = uitofp i32 %5754 to float
  %5756 = fmul fast float %5755, 0x3F70101020000000
  %5757 = fcmp fast olt float %5750, %5756
  br i1 %5757, label %5758, label %5759

; <label>:5758                                    ; preds = %5729
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5759

; <label>:5759                                    ; preds = %5758, %5729, %5716
  %5760 = fsub fast float -0.000000e+00, %197
  %5761 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = call float @dx.op.unary.f32(i32 25, float %5761)  ; Rsqrt(value)
  %5763 = fmul fast float %5762, %195
  %5764 = fmul fast float %5762, %196
  %5765 = fmul fast float %5762, %197
  %5766 = fsub fast float -0.000000e+00, %5763
  %5767 = fsub fast float -0.000000e+00, %5764
  %5768 = fsub fast float -0.000000e+00, %5765
  %5769 = select i1 %261, float 0.000000e+00, float %5722
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fmul fast float %5772, 2.000000e+00
  %5774 = fmul fast float %5773, %5723
  %5775 = fmul fast float %5773, %5724
  %5776 = fmul fast float %5773, %5725
  %5777 = fsub fast float %5763, %5774
  %5778 = fsub fast float %5764, %5775
  %5779 = fsub fast float %5765, %5776
  %5780 = call float @dx.op.binary.f32(i32 36, float %5727, float 1.000000e+00)  ; FMin(a,b)
  %5781 = fsub fast float 1.000000e+00, %5727
  %5782 = bitcast float %5781 to i32
  %5783 = sub nsw i32 2129859010, %5782
  %5784 = bitcast i32 %5783 to float
  %5785 = fsub fast float 1.000000e+00, %79
  %5786 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = call float @dx.op.binary.f32(i32 35, float %5786, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5788 = fdiv fast float %5785, %5787
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = fmul fast float %5790, 5.000000e-01
  %5792 = fadd fast float %5791, 5.000000e-01
  %5793 = fmul fast float %5792, %79
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fmul fast float %5795, %5788
  %5797 = fadd fast float %5793, %5796
  %5798 = fsub fast float 5.000000e-01, %5791
  %5799 = fmul fast float %5798, %5717
  %5800 = fmul fast float %5798, %5718
  %5801 = fmul fast float %5798, %5719
  %5802 = fadd fast float %5797, %5799
  %5803 = fadd fast float %5797, %5800
  %5804 = fadd fast float %5797, %5801
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5806, 5.000000e-01
  %5808 = fadd fast float %5807, 5.000000e-01
  %5809 = fmul fast float %5808, %79
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fmul fast float %5811, %5788
  %5813 = fadd fast float %5809, %5812
  %5814 = fsub fast float 5.000000e-01, %5807
  %5815 = fmul fast float %5814, %5717
  %5816 = fmul fast float %5814, %5718
  %5817 = fmul fast float %5814, %5719
  %5818 = fadd fast float %5813, %5815
  %5819 = fadd fast float %5813, %5816
  %5820 = fadd fast float %5813, %5817
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5823 = call float @dx.op.binary.f32(i32 36, float %5717, float %5822)  ; FMin(a,b)
  %5824 = fsub fast float 1.000000e+00, %5780
  %5825 = fmul fast float %5823, %5824
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = bitcast float %5826 to i32
  %5828 = sub nsw i32 2129859010, %5827
  %5829 = bitcast i32 %5828 to float
  %5830 = call float @dx.op.binary.f32(i32 36, float %5718, float %5822)  ; FMin(a,b)
  %5831 = fmul fast float %5830, %5824
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = bitcast float %5832 to i32
  %5834 = sub nsw i32 2129859010, %5833
  %5835 = bitcast i32 %5834 to float
  %5836 = call float @dx.op.binary.f32(i32 36, float %5719, float %5822)  ; FMin(a,b)
  %5837 = fmul fast float %5836, %5824
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = bitcast float %5838 to i32
  %5840 = sub nsw i32 2129859010, %5839
  %5841 = bitcast i32 %5840 to float
  %5842 = fmul fast float %5780, %80
  %5843 = fmul fast float %5842, %5802
  %5844 = fmul fast float %5843, %5829
  %5845 = fmul fast float %5780, %81
  %5846 = fmul fast float %5845, %5803
  %5847 = fmul fast float %5846, %5835
  %5848 = fmul fast float %5780, %82
  %5849 = fmul fast float %5848, %5804
  %5850 = fmul fast float %5849, %5841
  %5851 = call float @dx.op.binary.f32(i32 36, float %5720, float %5822)  ; FMin(a,b)
  %5852 = fmul fast float %5851, %5824
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = bitcast float %5853 to i32
  %5855 = sub nsw i32 2129859010, %5854
  %5856 = bitcast i32 %5855 to float
  %5857 = call float @dx.op.binary.f32(i32 36, float %5721, float %5822)  ; FMin(a,b)
  %5858 = fmul fast float %5857, %5824
  %5859 = fsub fast float 1.000000e+00, %5858
  %5860 = bitcast float %5859 to i32
  %5861 = sub nsw i32 2129859010, %5860
  %5862 = bitcast i32 %5861 to float
  %5863 = call float @dx.op.binary.f32(i32 36, float %5769, float %5822)  ; FMin(a,b)
  %5864 = fmul fast float %5863, %5824
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = bitcast float %5865 to i32
  %5867 = sub nsw i32 2129859010, %5866
  %5868 = bitcast i32 %5867 to float
  %5869 = fmul fast float %5842, %5818
  %5870 = fmul fast float %5869, %5856
  %5871 = fmul fast float %5845, %5819
  %5872 = fmul fast float %5871, %5862
  %5873 = fmul fast float %5848, %5820
  %5874 = fmul fast float %5873, %5868
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5847, float %5850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = select i1 %261, float 0.000000e+00, float %5844
  %5877 = select i1 %261, float %5875, float %5847
  %5878 = select i1 %261, float 0.000000e+00, float %5850
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5872, float %5874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = select i1 %261, float 0.000000e+00, float %5870
  %5881 = select i1 %261, float %5879, float %5872
  %5882 = select i1 %261, float 0.000000e+00, float %5874
  %5883 = fmul fast float %3937, %3937
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = fmul fast float %5771, 9.843750e-01
  %5886 = fmul fast float %5726, 9.843750e-01
  %5887 = fadd fast float %5885, 7.812500e-03
  %5888 = fadd fast float %5886, 7.812500e-03
  %5889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %5887, float %5888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.ResRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.ResRet.f32 %5889, 2
  %5893 = extractvalue %dx.types.ResRet.f32 %5889, 3
  %5894 = fsub fast float 1.000000e+00, %5884
  %5895 = fsub fast float %5892, %5890
  %5896 = fsub fast float %5893, %5891
  %5897 = fmul fast float %5895, %5894
  %5898 = fmul fast float %5896, %5894
  %5899 = fadd fast float %5897, %5890
  %5900 = fadd fast float %5898, %5891
  %5901 = fmul fast float %5899, %5720
  %5902 = fmul fast float %5899, %5721
  %5903 = fmul fast float %5899, %5769
  %5904 = fadd fast float %5901, %5900
  %5905 = fadd fast float %5902, %5900
  %5906 = fadd fast float %5903, %5900
  %5907 = fcmp fast ogt float %4535, 0.000000e+00
  br i1 %5907, label %5908, label %5934

; <label>:5908                                    ; preds = %5759
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4535, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = fadd fast float %5910, -5.000000e-01
  %5914 = fadd fast float %5911, -5.000000e-01
  %5915 = fadd fast float %5912, -5.000000e-01
  %5916 = fsub fast float 1.000000e+00, %5720
  %5917 = fsub fast float 1.000000e+00, %5721
  %5918 = fsub fast float 1.000000e+00, %5769
  %5919 = fmul fast float %5720, 4.000000e+00
  %5920 = fmul fast float %5919, %5916
  %5921 = fmul fast float %5920, %5913
  %5922 = fmul fast float %5721, 4.000000e+00
  %5923 = fmul fast float %5922, %5917
  %5924 = fmul fast float %5923, %5914
  %5925 = fmul fast float %5769, 4.000000e+00
  %5926 = fmul fast float %5925, %5918
  %5927 = fmul fast float %5926, %5915
  %5928 = fadd fast float %5921, %5904
  %5929 = fadd fast float %5924, %5905
  %5930 = fadd fast float %5927, %5906
  %5931 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  br label %5934

; <label>:5934                                    ; preds = %5908, %5759
  %5935 = phi float [ %5931, %5908 ], [ %5904, %5759 ]
  %5936 = phi float [ %5932, %5908 ], [ %5905, %5759 ]
  %5937 = phi float [ %5933, %5908 ], [ %5906, %5759 ]
  %5938 = call float @dx.op.binary.f32(i32 35, float %5936, float %5937)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 35, float %5935, float %5938)  ; FMax(a,b)
  %5940 = fsub fast float 1.000000e+00, %5939
  %5941 = fmul fast float %5940, %5876
  %5942 = fmul fast float %5940, %5877
  %5943 = fmul fast float %5940, %5878
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5718, float %5719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fcmp fast ogt float %5944, 0x3E7FF19E20000000
  %5946 = fdiv fast float 1.000000e+00, %5944
  %5947 = select i1 %5945, float %5946, float 0.000000e+00
  %5948 = fmul fast float %5947, %5717
  %5949 = fmul fast float %5947, %5718
  %5950 = fmul fast float %5947, %5719
  %5951 = fadd fast float %5948, -1.000000e+00
  %5952 = fadd fast float %5949, -1.000000e+00
  %5953 = fadd fast float %5950, -1.000000e+00
  %5954 = fmul fast float %5951, 5.000000e-01
  %5955 = fmul fast float %5952, 5.000000e-01
  %5956 = fmul fast float %5953, 5.000000e-01
  %5957 = fadd fast float %5954, 1.000000e+00
  %5958 = fadd fast float %5955, 1.000000e+00
  %5959 = fadd fast float %5956, 1.000000e+00
  %5960 = call float @dx.op.binary.f32(i32 35, float %5771, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5961 = fdiv fast float %3937, %5960
  %5962 = fcmp fast olt float %4560, 1.270000e+02
  %5963 = fcmp fast olt float %4561, 1.270000e+02
  %5964 = fcmp fast olt float %4562, 1.270000e+02
  %5965 = fmul fast float %4560, 0xBFF7154760000000
  %5966 = fmul fast float %5965, %5961
  %5967 = fmul fast float %4561, 0xBFF7154760000000
  %5968 = fmul fast float %5967, %5961
  %5969 = fmul fast float %4562, 0xBFF7154760000000
  %5970 = fmul fast float %5969, %5961
  %5971 = call float @dx.op.unary.f32(i32 21, float %5966)  ; Exp(value)
  %5972 = call float @dx.op.unary.f32(i32 21, float %5968)  ; Exp(value)
  %5973 = call float @dx.op.unary.f32(i32 21, float %5970)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = select i1 %5962, float %5974, float 0.000000e+00
  %5978 = select i1 %5963, float %5975, float 0.000000e+00
  %5979 = select i1 %5964, float %5976, float 0.000000e+00
  %5980 = fmul fast float %5977, %5940
  %5981 = fmul fast float %5978, %5940
  %5982 = fmul fast float %5979, %5940
  %5983 = fadd fast float %5980, -1.000000e+00
  %5984 = fadd fast float %5981, -1.000000e+00
  %5985 = fadd fast float %5982, -1.000000e+00
  %5986 = fmul fast float %5935, %5880
  %5987 = fmul fast float %5936, %5881
  %5988 = fmul fast float %5937, %5882
  %5989 = fsub fast float 1.000000e+00, %5771
  %5990 = bitcast float %5989 to i32
  %5991 = sitofp i32 %5990 to float
  %5992 = fmul fast float %5991, 5.000000e+00
  %5993 = fadd fast float %5992, 0xC1EFBF8940000000
  %5994 = fptosi float %5993 to i32
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5995, %4536
  %5997 = fmul fast float %5876, %5996
  %5998 = fmul fast float %5997, %5940
  %5999 = fmul fast float %5998, %5957
  %6000 = fmul fast float %5877, %5996
  %6001 = fmul fast float %6000, %5940
  %6002 = fmul fast float %6001, %5958
  %6003 = fmul fast float %5878, %5996
  %6004 = fmul fast float %6003, %5940
  %6005 = fmul fast float %6004, %5959
  %6006 = fmul fast float %5941, %4532
  %6007 = fmul fast float %5942, %4532
  %6008 = fmul fast float %5943, %4532
  %6009 = fadd fast float %5986, %4525
  %6010 = fadd fast float %6009, %5999
  %6011 = fmul fast float %6010, %4532
  %6012 = fadd fast float %5987, %4526
  %6013 = fadd fast float %6012, %6002
  %6014 = fmul fast float %6013, %4532
  %6015 = fadd fast float %5988, %4527
  %6016 = fadd fast float %6015, %6005
  %6017 = fmul fast float %6016, %4532
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 3
  %6020 = fcmp fast oeq float %6019, 0.000000e+00
  br i1 %6020, label %7117, label %6021

; <label>:6021                                    ; preds = %5934
  %6022 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6018, 2
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.CBufRet.f32 %6029, 1
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = select i1 %261, float %6030, float %6026
  %6034 = select i1 %261, float %6032, float %6027
  %6035 = select i1 %261, float %6031, float %6028
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 2
  %6038 = fmul fast float %6037, %115
  %6039 = fmul fast float %6037, %116
  %6040 = fmul fast float %6037, %117
  %6041 = fadd fast float %6038, %195
  %6042 = fadd fast float %6039, %196
  %6043 = fadd fast float %6040, %197
  %6044 = fcmp fast olt float %6019, 0.000000e+00
  br i1 %6044, label %6684, label %6045

; <label>:6045                                    ; preds = %6021
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6050 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.CBufRet.f32 %6051, 2
  %6055 = extractvalue %dx.types.CBufRet.f32 %6051, 3
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6061 = fmul fast float %6047, %6041
  %6062 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6048, float %6061)  ; FMad(a,b,c)
  %6063 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6049, float %6062)  ; FMad(a,b,c)
  %6064 = fadd fast float %6063, %6050
  %6065 = fmul fast float %6052, %6041
  %6066 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6053, float %6065)  ; FMad(a,b,c)
  %6067 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6054, float %6066)  ; FMad(a,b,c)
  %6068 = fadd fast float %6067, %6055
  %6069 = fmul fast float %6057, %6041
  %6070 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6058, float %6069)  ; FMad(a,b,c)
  %6071 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6059, float %6070)  ; FMad(a,b,c)
  %6072 = fadd fast float %6071, %6060
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 0
  %6075 = fcmp fast une float %6074, 0.000000e+00
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6080 = fmul fast float %6079, %6064
  %6081 = fmul fast float %6079, %6068
  %6082 = fadd fast float %6080, %6077
  %6083 = fadd fast float %6081, %6078
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 3
  %6088 = fmul fast float %6087, %6064
  %6089 = fmul fast float %6087, %6068
  %6090 = fadd fast float %6088, %6085
  %6091 = fadd fast float %6089, %6086
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6094 = fsub fast float %6093, %6072
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = fmul fast float %6094, %6095
  %6097 = fsub fast float 1.000000e+00, %6096
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  br i1 %6075, label %6159, label %6099

; <label>:6099                                    ; preds = %6045
  %6100 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6103 = fadd fast float %6102, %6100
  %6104 = fcmp fast ogt float %6103, 0.000000e+00
  br i1 %6104, label %6105, label %6129

; <label>:6105                                    ; preds = %6099
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = fsub fast float %6090, %6107
  %6110 = fsub fast float %6091, %6108
  %6111 = fcmp fast olt float %6109, 0.000000e+00
  %6112 = fcmp fast olt float %6110, 0.000000e+00
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6118 = select i1 %6111, float %6114, float %6116
  %6119 = select i1 %6112, float %6115, float %6117
  %6120 = fmul fast float %6118, %6109
  %6121 = fmul fast float %6119, %6110
  %6122 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6125 = call float @dx.op.binary.f32(i32 35, float %6122, float %6123)  ; FMax(a,b)
  %6126 = fsub fast float %6124, %6125
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = fmul fast float %6127, %6098
  br label %6129

; <label>:6129                                    ; preds = %6105, %6099
  %6130 = phi float [ %6128, %6105 ], [ 0.000000e+00, %6099 ]
  %6131 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6101, 1
  %6133 = fadd fast float %6132, %6131
  %6134 = fcmp fast ogt float %6133, 0.000000e+00
  br i1 %6134, label %6135, label %6159

; <label>:6135                                    ; preds = %6129
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6139 = fsub fast float %6082, %6137
  %6140 = fsub fast float %6083, %6138
  %6141 = fcmp fast olt float %6139, 0.000000e+00
  %6142 = fcmp fast olt float %6140, 0.000000e+00
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6147 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6148 = select i1 %6141, float %6144, float %6146
  %6149 = select i1 %6142, float %6145, float %6147
  %6150 = fmul fast float %6148, %6139
  %6151 = fmul fast float %6149, %6140
  %6152 = call float @dx.op.unary.f32(i32 6, float %6150)  ; FAbs(value)
  %6153 = call float @dx.op.unary.f32(i32 6, float %6151)  ; FAbs(value)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6155 = call float @dx.op.binary.f32(i32 35, float %6152, float %6153)  ; FMax(a,b)
  %6156 = fsub fast float %6154, %6155
  %6157 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6158 = fmul fast float %6157, %6098
  br label %6159

; <label>:6159                                    ; preds = %6135, %6129, %6045
  %6160 = phi float [ 0.000000e+00, %6045 ], [ %6158, %6135 ], [ 0.000000e+00, %6129 ]
  %6161 = phi float [ 0.000000e+00, %6045 ], [ %6130, %6135 ], [ %6130, %6129 ]
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6164 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = fsub fast float %6064, %6166
  %6169 = fsub fast float %6068, %6167
  %6170 = fcmp fast olt float %6168, 0.000000e+00
  %6171 = fcmp fast olt float %6169, 0.000000e+00
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6183 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6184 = call float @dx.op.binary.f32(i32 35, float %6181, float %6182)  ; FMax(a,b)
  %6185 = fsub fast float %6183, %6184
  %6186 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  %6187 = call float @dx.op.binary.f32(i32 36, float %6186, float %6164)  ; FMin(a,b)
  %6188 = fmul fast float %6187, %6098
  %6189 = fsub fast float %6160, %6188
  %6190 = fsub fast float %6161, %6160
  %6191 = fsub fast float %6190, %6188
  %6192 = call float @dx.op.binary.f32(i32 35, float %6160, float %6161)  ; FMax(a,b)
  %6193 = call float @dx.op.binary.f32(i32 35, float %6188, float %6192)  ; FMax(a,b)
  %6194 = fcmp fast olt float %6193, 1.000000e+00
  br i1 %6194, label %6195, label %6593, !dx.controlflow.hints !99

; <label>:6195                                    ; preds = %6159
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = fcmp fast une float %6197, 0.000000e+00
  br i1 %6198, label %6199, label %6593, !dx.controlflow.hints !100

; <label>:6199                                    ; preds = %6195
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6200, 2
  %6204 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = fmul fast float %6201, %6041
  %6216 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6202, float %6215)  ; FMad(a,b,c)
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6203, float %6216)  ; FMad(a,b,c)
  %6218 = fadd fast float %6217, %6204
  %6219 = fmul fast float %6206, %6041
  %6220 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6207, float %6219)  ; FMad(a,b,c)
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6208, float %6220)  ; FMad(a,b,c)
  %6222 = fadd fast float %6221, %6209
  %6223 = fmul fast float %6211, %6041
  %6224 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6212, float %6223)  ; FMad(a,b,c)
  %6225 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6213, float %6224)  ; FMad(a,b,c)
  %6226 = fadd fast float %6225, %6214
  %6227 = fcmp fast oge float %6218, 1.000000e+00
  %6228 = fcmp fast oge float %6222, 1.000000e+00
  %6229 = or i1 %6227, %6228
  %6230 = fcmp fast olt float %6218, 0.000000e+00
  %6231 = fcmp fast olt float %6222, 0.000000e+00
  %6232 = or i1 %6230, %6231
  %6233 = or i1 %6229, %6232
  br i1 %6233, label %6593, label %6234, !dx.controlflow.hints !101

; <label>:6234                                    ; preds = %6199
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.i32 %6239, 2
  %6241 = uitofp i32 %6240 to float
  %6242 = extractvalue %dx.types.CBufRet.i32 %6239, 3
  %6243 = uitofp i32 %6242 to float
  %6244 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6245 = fmul fast float %6244, 2.000000e+00
  %6246 = fsub fast float %6218, %6236
  %6247 = fsub fast float %6222, %6237
  %6248 = fmul fast float %6245, %6246
  %6249 = fmul fast float %6245, %6247
  %6250 = fdiv fast float 1.000000e+00, %6024
  %6251 = fmul fast float %6249, %6250
  %6252 = call float @dx.op.unary.f32(i32 6, float %6251)  ; FAbs(value)
  %6253 = fmul fast float %6238, %6043
  %6254 = fmul fast float %6253, %6245
  %6255 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6256 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6255, float %6252)  ; FMax(a,b)
  %6258 = call float @dx.op.binary.f32(i32 35, float %6256, float %6257)  ; FMax(a,b)
  %6259 = fmul fast float %6258, 2.000000e+00
  %6260 = call float @dx.op.unary.f32(i32 23, float %6259)  ; Log(value)
  %6261 = call float @dx.op.binary.f32(i32 35, float %6260, float %6241)  ; FMax(a,b)
  %6262 = call float @dx.op.unary.f32(i32 22, float %6261)  ; Frc(value)
  %6263 = fadd fast float %6262, 0xBFEA666660000000
  %6264 = fmul fast float %6263, 8.000000e+00
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6266 = call float @dx.op.unary.f32(i32 27, float %6261)  ; Round_ni(value)
  %6267 = fadd fast float %6266, %6265
  %6268 = call float @dx.op.binary.f32(i32 36, float %6267, float %6243)  ; FMin(a,b)
  %6269 = call float @dx.op.unary.f32(i32 27, float %6268)  ; Round_ni(value)
  %6270 = fsub fast float -0.000000e+00, %6269
  %6271 = call float @dx.op.unary.f32(i32 21, float %6270)  ; Exp(value)
  %6272 = fmul fast float %6271, %6245
  %6273 = fmul fast float %6272, %6218
  %6274 = fmul fast float %6272, %6222
  %6275 = fmul fast float %6273, 2.500000e-01
  %6276 = fmul fast float %6274, 2.500000e-01
  %6277 = fadd fast float %6275, 5.000000e-01
  %6278 = fadd fast float %6276, 5.000000e-01
  %6279 = fsub fast float %6243, %6241
  %6280 = fptoui float %6279 to i32
  %6281 = add i32 %6280, 320
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6281)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = fcmp fast une float %6268, %6243
  %6286 = fsub fast float %6218, %6283
  %6287 = fsub fast float %6222, %6284
  %6288 = call float @dx.op.unary.f32(i32 6, float %6286)  ; FAbs(value)
  %6289 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6290 = fmul fast float %6288, %6272
  %6291 = fmul fast float %6289, %6272
  %6292 = fcmp fast olt float %6290, 1.000000e+00
  %6293 = fcmp fast olt float %6291, 1.000000e+00
  %6294 = and i1 %6292, %6293
  %6295 = or i1 %6285, %6294
  br i1 %6295, label %6296, label %6593, !dx.controlflow.hints !102

; <label>:6296                                    ; preds = %6234
  %6297 = fmul fast float %6274, 5.000000e-01
  %6298 = fmul fast float %6273, 5.000000e-01
  %6299 = fadd fast float %6297, 5.000000e-01
  %6300 = fadd fast float %6298, 5.000000e-01
  %6301 = sitofp i32 %6240 to float
  %6302 = fsub fast float %6268, %6301
  %6303 = call float @dx.op.unary.f32(i32 27, float %6302)  ; Round_ni(value)
  %6304 = call float @dx.op.unary.f32(i32 22, float %6268)  ; Frc(value)
  %6305 = call float @dx.op.unary.f32(i32 22, float %6300)  ; Frc(value)
  %6306 = call float @dx.op.unary.f32(i32 22, float %6299)  ; Frc(value)
  %6307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6305, float %6306, float %6303, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.ResRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.ResRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.ResRet.f32 %6307, 3
  %6312 = fcmp fast ogt float %6304, 0.000000e+00
  br i1 %6312, label %6313, label %6334, !dx.controlflow.hints !103

; <label>:6313                                    ; preds = %6296
  %6314 = fadd fast float %6303, 1.000000e+00
  %6315 = call float @dx.op.unary.f32(i32 22, float %6277)  ; Frc(value)
  %6316 = call float @dx.op.unary.f32(i32 22, float %6278)  ; Frc(value)
  %6317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %6315, float %6316, float %6314, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6321 = extractvalue %dx.types.ResRet.f32 %6317, 3
  %6322 = fsub fast float %6318, %6308
  %6323 = fsub fast float %6319, %6309
  %6324 = fsub fast float %6320, %6310
  %6325 = fsub fast float %6321, %6311
  %6326 = fmul fast float %6322, %6304
  %6327 = fmul fast float %6323, %6304
  %6328 = fmul fast float %6324, %6304
  %6329 = fmul fast float %6325, %6304
  %6330 = fadd fast float %6326, %6308
  %6331 = fadd fast float %6327, %6309
  %6332 = fadd fast float %6328, %6310
  %6333 = fadd fast float %6329, %6311
  br label %6334

; <label>:6334                                    ; preds = %6313, %6296
  %6335 = phi float [ %6330, %6313 ], [ %6308, %6296 ]
  %6336 = phi float [ %6331, %6313 ], [ %6309, %6296 ]
  %6337 = phi float [ %6332, %6313 ], [ %6310, %6296 ]
  %6338 = phi float [ %6333, %6313 ], [ %6311, %6296 ]
  %6339 = fadd fast float %6335, -5.000000e-01
  %6340 = fadd fast float %6337, -5.000000e-01
  %6341 = fmul fast float %6339, 0xBFD5555560000000
  %6342 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6340, float %6341)  ; FMad(a,b,c)
  %6343 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6336, float 0.000000e+00)  ; FMad(a,b,c)
  %6344 = fadd fast float %6343, %6338
  %6345 = fmul fast float %6339, -7.500000e-01
  %6346 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6340, float %6345)  ; FMad(a,b,c)
  %6347 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6336, float 0.000000e+00)  ; FMad(a,b,c)
  %6348 = fadd fast float %6347, %6338
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = fsub fast float %6352, %6342
  %6357 = fsub fast float %6353, %6344
  %6358 = fsub fast float %6354, %6346
  %6359 = fsub fast float %6355, %6348
  %6360 = fmul fast float %6356, %6350
  %6361 = fmul fast float %6357, %6350
  %6362 = fmul fast float %6358, %6350
  %6363 = fmul fast float %6359, %6350
  %6364 = fadd fast float %6360, %6342
  %6365 = fadd fast float %6361, %6344
  %6366 = fadd fast float %6362, %6346
  %6367 = fadd fast float %6363, %6348
  %6368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6369 = extractvalue %dx.types.ResRet.i32 %6368, 0
  %6370 = and i32 %6369, 536870911
  %6371 = uitofp i32 %6370 to float
  %6372 = fmul fast float %6371, %6218
  %6373 = fmul fast float %6371, %6222
  %6374 = fptoui float %6372 to i32
  %6375 = fptoui float %6373 to i32
  %6376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6377 = extractvalue %dx.types.ResRet.i32 %6376, 0
  %6378 = and i32 %6377, 31
  %6379 = lshr i32 %6374, %6378
  %6380 = lshr i32 %6375, %6378
  %6381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6382 = extractvalue %dx.types.ResRet.i32 %6381, 0
  %6383 = and i32 %6382, 31
  %6384 = shl i32 1, %6383
  %6385 = call i32 @dx.op.binary.i32(i32 40, i32 %6384, i32 4)  ; UMin(a,b)
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = extractvalue %dx.types.ResRet.i32 %6386, 1
  %6389 = icmp eq i32 %6385, 0
  br i1 %6389, label %6431, label %6390

; <label>:6390                                    ; preds = %6334
  br label %6391

; <label>:6391                                    ; preds = %6419, %6390
  %6392 = phi i32 [ %6422, %6419 ], [ 0, %6390 ]
  %6393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6394 = extractvalue %dx.types.ResRet.i32 %6393, 0
  %6395 = lshr i32 %6394, 16
  %6396 = and i32 %6395, 31
  %6397 = shl i32 %6380, %6396
  %6398 = add i32 %6397, %6379
  %6399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6400 = extractvalue %dx.types.ResRet.i32 %6399, 0
  %6401 = and i32 %6400, 31
  %6402 = shl i32 %6398, %6401
  %6403 = add i32 %6402, %6392
  %6404 = shl i32 %6403, 2
  %6405 = add i32 %6404, 32
  %6406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6405, i32 undef)  ; BufferLoad(srv,index,wot)
  %6407 = extractvalue %dx.types.ResRet.i32 %6406, 0
  %6408 = icmp slt i32 %6407, 0
  %6409 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6392
  %6410 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6392
  %6411 = bitcast float* %6409 to i32*
  %6412 = bitcast float* %6410 to i32*
  br i1 %6408, label %6413, label %6419

; <label>:6413                                    ; preds = %6391
  %6414 = and i32 %6407, 1073741823
  %6415 = add nuw nsw i32 %6414, 20
  %6416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6415, i32 undef)  ; BufferLoad(srv,index,wot)
  %6417 = extractvalue %dx.types.ResRet.i32 %6416, 0
  %6418 = extractvalue %dx.types.ResRet.i32 %6416, 1
  br label %6419

; <label>:6419                                    ; preds = %6413, %6391
  %6420 = phi i32 [ %6417, %6413 ], [ %6387, %6391 ]
  %6421 = phi i32 [ %6418, %6413 ], [ %6388, %6391 ]
  store i32 %6420, i32* %6411, align 4
  store i32 %6421, i32* %6412, align 4
  %6422 = add nuw i32 %6392, 1
  %6423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.i32 %6423, 2
  %6425 = icmp eq i32 %6424, 0
  %6426 = icmp ugt i32 %6407, -1073741825
  %6427 = and i1 %6426, %6425
  %6428 = icmp ult i32 %6422, %6385
  %6429 = and i1 %6427, %6428
  br i1 %6429, label %6391, label %6430

; <label>:6430                                    ; preds = %6419
  br label %6431

; <label>:6431                                    ; preds = %6430, %6334
  %6432 = phi i32 [ 0, %6334 ], [ %6422, %6430 ]
  %6433 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6434 = fptoui float %6433 to i32
  %6435 = icmp eq i32 %6434, 0
  br i1 %6435, label %6487, label %6436

; <label>:6436                                    ; preds = %6431
  br label %6437

; <label>:6437                                    ; preds = %6482, %6436
  %6438 = phi i32 [ %6483, %6482 ], [ %6432, %6436 ]
  %6439 = phi i32 [ %6484, %6482 ], [ 0, %6436 ]
  %6440 = lshr i32 %6439, 2
  %6441 = and i32 %6439, 3
  %6442 = add nuw nsw i32 %6440, 83
  %6443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6442)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.i32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.i32 %6443, 1
  %6446 = extractvalue %dx.types.CBufRet.i32 %6443, 2
  %6447 = extractvalue %dx.types.CBufRet.i32 %6443, 3
  %6448 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6444, i32* %6448, align 4
  %6449 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6445, i32* %6449, align 4
  %6450 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6446, i32* %6450, align 4
  %6451 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6447, i32* %6451, align 4
  %6452 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6441
  %6453 = load i32, i32* %6452, align 4, !tbaa !104, !noalias !108
  %6454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6455 = extractvalue %dx.types.ResRet.i32 %6454, 0
  %6456 = lshr i32 %6455, 16
  %6457 = and i32 %6456, 31
  %6458 = shl i32 %6380, %6457
  %6459 = add i32 %6458, %6379
  %6460 = shl i32 %6459, 2
  %6461 = add i32 %6460, %6453
  %6462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6461, i32 undef)  ; BufferLoad(srv,index,wot)
  %6463 = extractvalue %dx.types.ResRet.i32 %6462, 0
  %6464 = icmp eq i32 %6463, 0
  br i1 %6464, label %6482, label %6465

; <label>:6465                                    ; preds = %6437
  %6466 = icmp slt i32 %6463, 0
  %6467 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6438
  %6468 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6438
  %6469 = bitcast float* %6467 to i32*
  %6470 = bitcast float* %6468 to i32*
  br i1 %6466, label %6471, label %6478

; <label>:6471                                    ; preds = %6465
  %6472 = and i32 %6463, 1073741823
  %6473 = add i32 %6453, 20
  %6474 = add i32 %6473, %6472
  %6475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6474, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.i32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.i32 %6475, 1
  br label %6478

; <label>:6478                                    ; preds = %6471, %6465
  %6479 = phi i32 [ %6476, %6471 ], [ %6387, %6465 ]
  %6480 = phi i32 [ %6477, %6471 ], [ %6388, %6465 ]
  store i32 %6479, i32* %6469, align 4
  store i32 %6480, i32* %6470, align 4
  %6481 = add i32 %6438, 1
  br label %6482

; <label>:6482                                    ; preds = %6478, %6437
  %6483 = phi i32 [ %6438, %6437 ], [ %6481, %6478 ]
  %6484 = add nuw i32 %6439, 1
  %6485 = icmp eq i32 %6484, %6434
  br i1 %6485, label %6486, label %6437

; <label>:6486                                    ; preds = %6482
  br label %6487

; <label>:6487                                    ; preds = %6486, %6431
  %6488 = phi i32 [ %6432, %6431 ], [ %6483, %6486 ]
  %6489 = icmp eq i32 %6488, 1
  %6490 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6491 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6489, label %6492, label %6495

; <label>:6492                                    ; preds = %6487
  %6493 = load float, float* %6490, align 4
  %6494 = load float, float* %6491, align 4
  br label %6522

; <label>:6495                                    ; preds = %6487
  %6496 = load float, float* %6490, align 4
  %6497 = load float, float* %6491, align 4
  %6498 = fdiv fast float 1.000000e+00, %6497
  %6499 = fsub fast float %6496, %6498
  %6500 = icmp ugt i32 %6488, 1
  br i1 %6500, label %6501, label %6517

; <label>:6501                                    ; preds = %6495
  br label %6502

; <label>:6502                                    ; preds = %6502, %6501
  %6503 = phi float [ %6512, %6502 ], [ %6499, %6501 ]
  %6504 = phi float [ %6513, %6502 ], [ %6496, %6501 ]
  %6505 = phi i32 [ %6514, %6502 ], [ 1, %6501 ]
  %6506 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6505
  %6507 = load float, float* %6506, align 4
  %6508 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6505
  %6509 = load float, float* %6508, align 4
  %6510 = fdiv fast float 1.000000e+00, %6509
  %6511 = fsub fast float %6507, %6510
  %6512 = call float @dx.op.binary.f32(i32 36, float %6503, float %6511)  ; FMin(a,b)
  %6513 = call float @dx.op.binary.f32(i32 35, float %6504, float %6507)  ; FMax(a,b)
  %6514 = add nuw i32 %6505, 1
  %6515 = icmp eq i32 %6514, %6488
  br i1 %6515, label %6516, label %6502

; <label>:6516                                    ; preds = %6502
  br label %6517

; <label>:6517                                    ; preds = %6516, %6495
  %6518 = phi float [ %6499, %6495 ], [ %6512, %6516 ]
  %6519 = phi float [ %6496, %6495 ], [ %6513, %6516 ]
  %6520 = fsub fast float %6519, %6518
  %6521 = fdiv fast float 1.000000e+00, %6520
  br label %6522

; <label>:6522                                    ; preds = %6517, %6492
  %6523 = phi float [ %6493, %6492 ], [ %6519, %6517 ]
  %6524 = phi float [ %6494, %6492 ], [ %6521, %6517 ]
  %6525 = fadd fast float %6226, %6523
  %6526 = fmul fast float %6525, %6524
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = fmul fast float %6527, 2.000000e+00
  %6529 = fsub fast float 1.000000e+00, %6528
  %6530 = fmul fast float %6364, %6364
  %6531 = fsub fast float %6365, %6530
  %6532 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6531)  ; FMax(a,b)
  %6533 = fdiv fast float 1.000000e+00, %6532
  %6534 = fmul fast float %6365, %6364
  %6535 = fsub fast float %6366, %6534
  %6536 = fsub fast float %6529, %6364
  %6537 = fmul fast float %6529, %6529
  %6538 = fsub fast float %6537, %6365
  %6539 = fmul fast float %6533, %6535
  %6540 = fmul fast float %6539, %6536
  %6541 = fsub fast float %6538, %6540
  %6542 = fmul fast float %6365, %6365
  %6543 = fsub fast float %6367, %6542
  %6544 = fmul fast float %6535, %6535
  %6545 = fmul fast float %6544, %6533
  %6546 = fsub fast float %6543, %6545
  %6547 = fdiv fast float %6541, %6546
  %6548 = fmul fast float %6547, %6535
  %6549 = fsub fast float %6536, %6548
  %6550 = fmul fast float %6549, %6533
  %6551 = fmul fast float %6550, %6364
  %6552 = fsub fast float 1.000000e+00, %6551
  %6553 = fmul fast float %6547, %6365
  %6554 = fsub fast float %6552, %6553
  %6555 = fmul fast float %6550, %6550
  %6556 = fmul fast float %6547, 4.000000e+00
  %6557 = fmul fast float %6556, %6554
  %6558 = fsub fast float %6555, %6557
  %6559 = call float @dx.op.unary.f32(i32 24, float %6558)  ; Sqrt(value)
  %6560 = fcmp fast oge float %6550, 0.000000e+00
  %6561 = fsub fast float -0.000000e+00, %6559
  %6562 = select i1 %6560, float %6561, float %6559
  %6563 = fsub fast float %6562, %6550
  %6564 = fdiv fast float %6563, %6547
  %6565 = fdiv fast float %6554, %6563
  %6566 = fmul fast float %6564, 5.000000e-01
  %6567 = fmul fast float %6565, 2.000000e+00
  %6568 = select i1 %6560, float %6566, float %6567
  %6569 = select i1 %6560, float %6567, float %6566
  %6570 = call float @dx.op.binary.f32(i32 35, float %6568, float %6569)  ; FMax(a,b)
  %6571 = call float @dx.op.binary.f32(i32 36, float %6568, float %6569)  ; FMin(a,b)
  %6572 = fcmp fast ogt float %6529, %6570
  %6573 = fsub fast float %6529, %6571
  %6574 = fsub fast float %6529, %6570
  %6575 = fsub fast float %6570, %6571
  %6576 = select i1 %6572, float %6574, float %6575
  %6577 = fmul float %6573, %6576
  %6578 = select i1 %6572, float %6571, float %6529
  %6579 = fcmp fast ogt float %6529, %6571
  %6580 = fmul fast float %6578, %6570
  %6581 = fadd fast float %6578, %6570
  %6582 = fmul fast float %6581, %6364
  %6583 = fadd fast float %6580, %6365
  %6584 = fsub fast float %6583, %6582
  %6585 = fdiv fast float %6584, %6577
  %6586 = select i1 %6579, float %6585, float 0.000000e+00
  %6587 = fsub fast float 1.000000e+00, %6586
  %6588 = select i1 %6572, float %6587, float %6586
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6591 = fmul fast float %6590, %6589
  %6592 = fsub fast float 1.000000e+00, %6591
  br label %6593

; <label>:6593                                    ; preds = %6522, %6234, %6199, %6195, %6159
  %6594 = phi float [ 1.000000e+00, %6159 ], [ %6592, %6522 ], [ 1.000000e+00, %6199 ], [ 1.000000e+00, %6234 ], [ 1.000000e+00, %6195 ]
  %6595 = fcmp fast ogt float %6191, 0.000000e+00
  br i1 %6595, label %6596, label %6604, !dx.controlflow.hints !117

; <label>:6596                                    ; preds = %6593
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 2
  %6599 = fadd fast float %6598, %6072
  %6600 = call float @dx.op.binary.f32(i32 35, float %6599, float 0.000000e+00)  ; FMax(a,b)
  %6601 = fadd fast float %6600, 0x3F10000000000000
  %6602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6090, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float %6601)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  br label %6604

; <label>:6604                                    ; preds = %6596, %6593
  %6605 = phi float [ %6603, %6596 ], [ 1.000000e+00, %6593 ]
  %6606 = fcmp fast ogt float %6189, 0.000000e+00
  br i1 %6606, label %6607, label %6615, !dx.controlflow.hints !118

; <label>:6607                                    ; preds = %6604
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 1
  %6610 = fadd fast float %6609, %6072
  %6611 = call float @dx.op.binary.f32(i32 35, float %6610, float 0.000000e+00)  ; FMax(a,b)
  %6612 = fadd fast float %6611, 0x3F10000000000000
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6082, float %6083, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  br label %6615

; <label>:6615                                    ; preds = %6607, %6604
  %6616 = phi float [ %6614, %6607 ], [ 1.000000e+00, %6604 ]
  %6617 = fcmp fast ogt float %6188, 0.000000e+00
  br i1 %6617, label %6618, label %6630, !dx.controlflow.hints !119

; <label>:6618                                    ; preds = %6615
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = fadd fast float %6620, %6072
  %6622 = call float @dx.op.binary.f32(i32 35, float %6621, float 0.000000e+00)  ; FMax(a,b)
  %6623 = fadd fast float %6622, 0x3F10000000000000
  br i1 %6075, label %6624, label %6627, !dx.controlflow.hints !120

; <label>:6624                                    ; preds = %6618
  %6625 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6064, float %6068, float undef, float undef, i32 0, i32 0, i32 undef, float %6623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6626 = extractvalue %dx.types.ResRet.f32 %6625, 0
  br label %6630

; <label>:6627                                    ; preds = %6618
  %6628 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6064, float %6068, float undef, float undef, i32 0, i32 0, i32 undef, float %6623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6629 = extractvalue %dx.types.ResRet.f32 %6628, 0
  br label %6630

; <label>:6630                                    ; preds = %6627, %6624, %6615
  %6631 = phi float [ %6626, %6624 ], [ %6629, %6627 ], [ 1.000000e+00, %6615 ]
  %6632 = fsub fast float %6605, %6594
  %6633 = fmul fast float %6632, %6161
  %6634 = fadd fast float %6633, %6594
  %6635 = fsub fast float %6616, %6634
  %6636 = fmul fast float %6635, %6160
  %6637 = fadd fast float %6636, %6634
  %6638 = fsub fast float %6631, %6637
  %6639 = fmul fast float %6638, %6188
  %6640 = fadd fast float %6639, %6637
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6643 = fcmp fast ogt float %6642, 0.000000e+00
  br i1 %6643, label %6644, label %6684, !dx.controlflow.hints !121

; <label>:6644                                    ; preds = %6630
  %6645 = fcmp fast ugt float %6642, 0.000000e+00
  br i1 %6645, label %6646, label %6681

; <label>:6646                                    ; preds = %6644
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6656 = extractvalue %dx.types.CBufRet.f32 %6652, 3
  %6657 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = fadd fast float %6660, %6041
  %6664 = fadd fast float %6661, %6042
  %6665 = fadd fast float %6662, %6043
  %6666 = fmul fast float %6663, %6648
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6649, float %6664, float %6666)  ; FMad(a,b,c)
  %6668 = call float @dx.op.tertiary.f32(i32 46, float %6650, float %6665, float %6667)  ; FMad(a,b,c)
  %6669 = fadd fast float %6668, %6651
  %6670 = fmul fast float %6663, %6653
  %6671 = call float @dx.op.tertiary.f32(i32 46, float %6654, float %6664, float %6670)  ; FMad(a,b,c)
  %6672 = call float @dx.op.tertiary.f32(i32 46, float %6655, float %6665, float %6671)  ; FMad(a,b,c)
  %6673 = fadd fast float %6672, %6656
  %6674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6669, float %6673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = fmul fast float %6675, %6658
  %6677 = fadd fast float %6676, %6657
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = fmul fast float %6678, %6642
  %6680 = fsub fast float 1.000000e+00, %6679
  br label %6681

; <label>:6681                                    ; preds = %6646, %6644
  %6682 = phi float [ %6680, %6646 ], [ 1.000000e+00, %6644 ]
  %6683 = fmul fast float %6682, %6640
  br label %6684

; <label>:6684                                    ; preds = %6681, %6630, %6021
  %6685 = phi float [ 1.000000e+00, %6021 ], [ %6683, %6681 ], [ %6640, %6630 ]
  %6686 = call float @dx.op.binary.f32(i32 36, float %6685, float %6685)  ; FMin(a,b)
  %6687 = call float @dx.op.binary.f32(i32 36, float %6685, float %6686)  ; FMin(a,b)
  %6688 = fcmp fast ogt float %6687, 0.000000e+00
  br i1 %6688, label %6689, label %6849, !dx.controlflow.hints !122

; <label>:6689                                    ; preds = %6684
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6699 = extractvalue %dx.types.CBufRet.f32 %6695, 3
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6703 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6700, 3
  %6705 = fmul fast float %6691, %6041
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6692, float %6705)  ; FMad(a,b,c)
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6693, float %6706)  ; FMad(a,b,c)
  %6708 = fadd fast float %6707, %6694
  %6709 = fmul fast float %6696, %6041
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6697, float %6709)  ; FMad(a,b,c)
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6698, float %6710)  ; FMad(a,b,c)
  %6712 = fadd fast float %6711, %6699
  %6713 = fmul fast float %6701, %6041
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6042, float %6702, float %6713)  ; FMad(a,b,c)
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6043, float %6703, float %6714)  ; FMad(a,b,c)
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6720 = fmul fast float %6719, %6708
  %6721 = fmul fast float %6719, %6712
  %6722 = fadd fast float %6720, %6717
  %6723 = fadd fast float %6721, %6718
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6727 = fsub fast float %6722, %6725
  %6728 = fsub fast float %6723, %6726
  %6729 = fcmp fast olt float %6727, 0.000000e+00
  %6730 = fcmp fast olt float %6728, 0.000000e+00
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6735 = extractvalue %dx.types.CBufRet.f32 %6731, 3
  %6736 = select i1 %6729, float %6732, float %6734
  %6737 = select i1 %6730, float %6733, float %6735
  %6738 = fmul fast float %6736, %6727
  %6739 = fmul fast float %6737, %6728
  %6740 = call float @dx.op.unary.f32(i32 6, float %6738)  ; FAbs(value)
  %6741 = call float @dx.op.unary.f32(i32 6, float %6739)  ; FAbs(value)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6743 = call float @dx.op.binary.f32(i32 35, float %6740, float %6741)  ; FMax(a,b)
  %6744 = fsub fast float %6742, %6743
  %6745 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6746 = fcmp fast ogt float %6745, 0.000000e+00
  br i1 %6746, label %6747, label %6788, !dx.controlflow.hints !123

; <label>:6747                                    ; preds = %6689
  %6748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6722, float %6723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6749 = extractvalue %dx.types.ResRet.f32 %6748, 1
  %6750 = fcmp fast ogt float %6749, 0.000000e+00
  br i1 %6750, label %6751, label %6783

; <label>:6751                                    ; preds = %6747
  %6752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6722, float %6723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.ResRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.ResRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.ResRet.f32 %6752, 3
  %6757 = fsub fast float 1.000000e+00, %6704
  %6758 = fsub fast float %6757, %6715
  %6759 = fmul fast float %6758, 0x400921FB60000000
  %6760 = fadd fast float %6759, 0x3FF921FB60000000
  %6761 = call float @dx.op.unary.f32(i32 13, float %6760)  ; Sin(value)
  %6762 = fadd fast float %6761, -1.000000e+00
  %6763 = fmul fast float %6762, 0x3FD45F3060000000
  %6764 = fmul fast float %6758, 0x401921FB60000000
  %6765 = fadd fast float %6764, 0x400921FB60000000
  %6766 = call float @dx.op.unary.f32(i32 13, float %6765)  ; Sin(value)
  %6767 = fadd fast float %6766, 0x3E7777A5C0000000
  %6768 = fmul fast float %6767, 0x3FC45F3060000000
  %6769 = fmul fast float %6758, 0x4022D97C80000000
  %6770 = fadd fast float %6769, 0x4012D97C80000000
  %6771 = call float @dx.op.unary.f32(i32 13, float %6770)  ; Sin(value)
  %6772 = fadd fast float %6771, 1.000000e+00
  %6773 = fmul fast float %6772, 0x3FBB2995E0000000
  %6774 = fmul fast float %6758, 0x402921FB60000000
  %6775 = fadd fast float %6774, 0x401921FB60000000
  %6776 = call float @dx.op.unary.f32(i32 13, float %6775)  ; Sin(value)
  %6777 = fadd fast float %6776, 0xBE8777A5C0000000
  %6778 = fmul fast float %6777, 0x3FB45F3060000000
  %6779 = call float @dx.op.dot4.f32(i32 56, float %6753, float %6754, float %6755, float %6756, float %6763, float %6768, float %6773, float %6778)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6780 = fmul fast float %6779, 0xBFF7154760000000
  %6781 = call float @dx.op.unary.f32(i32 21, float %6780)  ; Exp(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  br label %6783

; <label>:6783                                    ; preds = %6751, %6747
  %6784 = phi float [ %6782, %6751 ], [ 1.000000e+00, %6747 ]
  %6785 = fadd fast float %6784, -1.000000e+00
  %6786 = fmul fast float %6785, %6745
  %6787 = fadd fast float %6786, 1.000000e+00
  br label %6788

; <label>:6788                                    ; preds = %6783, %6689
  %6789 = phi float [ %6787, %6783 ], [ 1.000000e+00, %6689 ]
  %6790 = fmul fast float %6789, %6685
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6794 = extractvalue %dx.types.CBufRet.f32 %6791, 2
  %6795 = fadd fast float %6792, %195
  %6796 = fadd fast float %6793, %196
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 1
  %6799 = fsub fast float -0.000000e+00, %6795
  %6800 = fsub fast float -0.000000e+00, %6796
  %6801 = fsub fast float %5760, %6794
  %6802 = fadd fast float %6801, %6798
  %6803 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6799, float %6800, float %6802)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6022, float %6023, float %6024)  ; Dot3(ax,ay,az,bx,by,bz)
  %6805 = fdiv fast float 1.000000e+00, %6804
  %6806 = fmul fast float %6805, %6803
  %6807 = fmul fast float %6022, %6806
  %6808 = fmul fast float %6023, %6806
  %6809 = fadd fast float %6807, %6795
  %6810 = fadd fast float %6808, %6796
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = fsub fast float %6809, %6812
  %6815 = fsub fast float %6810, %6813
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6819 = fmul fast float %6814, %6817
  %6820 = fmul fast float %6815, %6818
  %6821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.i32 %6821, 3
  %6823 = icmp eq i32 %6822, 0
  br i1 %6823, label %6829, label %6824

; <label>:6824                                    ; preds = %6788
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6819, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  br label %6834

; <label>:6829                                    ; preds = %6788
  %6830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %6819, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.ResRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.ResRet.f32 %6830, 2
  br label %6834

; <label>:6834                                    ; preds = %6829, %6824
  %6835 = phi float [ %6826, %6824 ], [ %6831, %6829 ]
  %6836 = phi float [ %6827, %6824 ], [ %6832, %6829 ]
  %6837 = phi float [ %6828, %6824 ], [ %6833, %6829 ]
  %6838 = extractvalue %dx.types.CBufRet.f32 %6797, 2
  %6839 = fmul fast float %6838, %6835
  %6840 = extractvalue %dx.types.CBufRet.f32 %6797, 0
  %6841 = fsub fast float %6806, %6840
  %6842 = fsub fast float %6841, %6839
  %6843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6842)  ; FMax(a,b)
  %6844 = fmul fast float %6843, %6836
  %6845 = call float @dx.op.binary.f32(i32 36, float %6837, float %6844)  ; FMin(a,b)
  %6846 = fmul fast float %6845, 0xBFF7154760000000
  %6847 = call float @dx.op.unary.f32(i32 21, float %6846)  ; Exp(value)
  %6848 = fmul fast float %6790, %6847
  br label %6849

; <label>:6849                                    ; preds = %6834, %6684
  %6850 = phi float [ %6848, %6834 ], [ %6685, %6684 ]
  %6851 = call float @dx.op.binary.f32(i32 36, float %6850, float %6850)  ; FMin(a,b)
  %6852 = call float @dx.op.binary.f32(i32 36, float %6850, float %6851)  ; FMin(a,b)
  %6853 = fcmp fast ogt float %6852, 0.000000e+00
  br i1 %6853, label %6854, label %7117, !dx.controlflow.hints !124

; <label>:6854                                    ; preds = %6849
  %6855 = fmul fast float %6850, %6033
  %6856 = fmul fast float %6850, %6034
  %6857 = fmul fast float %6850, %6035
  %6858 = fsub fast float %197, %4937
  %6859 = fcmp fast ogt float %6858, 0.000000e+00
  %6860 = fmul fast float %6022, 5.120000e+02
  %6861 = fmul fast float %6023, 5.120000e+02
  %6862 = fmul fast float %6024, 5.120000e+02
  %6863 = fadd fast float %6862, %197
  %6864 = fsub fast float %4937, %6863
  %6865 = fmul fast float %6864, 2.000000e+00
  %6866 = fadd fast float %6865, %6863
  %6867 = select i1 %6859, float %6866, float %6863
  %6868 = fsub fast float %6867, %197
  %6869 = call float @dx.op.dot3.f32(i32 55, float %6860, float %6861, float %6868, float %6860, float %6861, float %6868)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = call float @dx.op.unary.f32(i32 25, float %6869)  ; Rsqrt(value)
  %6871 = fmul fast float %6870, %6860
  %6872 = fmul fast float %6870, %6861
  %6873 = fmul fast float %6870, %6868
  %6874 = fsub fast float %4937, %197
  %6875 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6874)  ; Dot3(ax,ay,az,bx,by,bz)
  %6876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6871, float %6872, float %6873)  ; Dot3(ax,ay,az,bx,by,bz)
  %6877 = fdiv fast float 1.000000e+00, %6876
  %6878 = fmul fast float %6877, %6875
  %6879 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6858, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6880 = fcmp fast ogt float %6879, 0.000000e+00
  %6881 = fcmp fast olt float %6879, 0.000000e+00
  %6882 = zext i1 %6880 to i32
  %6883 = zext i1 %6881 to i32
  %6884 = sub nsw i32 %6882, %6883
  %6885 = sitofp i32 %6884 to float
  %6886 = fsub fast float %6867, %4937
  %6887 = call float @dx.op.dot3.f32(i32 55, float %6860, float %6861, float %6886, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6888 = fcmp fast ogt float %6887, 0.000000e+00
  %6889 = fcmp fast olt float %6887, 0.000000e+00
  %6890 = zext i1 %6888 to i32
  %6891 = zext i1 %6889 to i32
  %6892 = sub nsw i32 %6890, %6891
  %6893 = sitofp i32 %6892 to float
  %6894 = fcmp fast une float %6885, %6893
  br i1 %6894, label %6895, label %6905

; <label>:6895                                    ; preds = %6854
  %6896 = fmul fast float %6878, %6873
  %6897 = fmul fast float %6878, %6872
  %6898 = fmul fast float %6878, %6871
  %6899 = fmul fast float %6898, %6898
  %6900 = fmul fast float %6897, %6897
  %6901 = fadd fast float %6899, %6900
  %6902 = fmul fast float %6896, %6896
  %6903 = fadd fast float %6901, %6902
  %6904 = call float @dx.op.unary.f32(i32 24, float %6903)  ; Sqrt(value)
  br label %6915

; <label>:6905                                    ; preds = %6854
  %6906 = icmp slt i32 %6884, 0
  br i1 %6906, label %6907, label %6915

; <label>:6907                                    ; preds = %6905
  %6908 = fsub fast float %197, %6867
  %6909 = fmul fast float %6860, %6860
  %6910 = fmul fast float %6861, %6861
  %6911 = fadd fast float %6909, %6910
  %6912 = fmul fast float %6908, %6908
  %6913 = fadd fast float %6911, %6912
  %6914 = call float @dx.op.unary.f32(i32 24, float %6913)  ; Sqrt(value)
  br label %6915

; <label>:6915                                    ; preds = %6907, %6905, %6895
  %6916 = phi float [ %6904, %6895 ], [ %6914, %6907 ], [ 0.000000e+00, %6905 ]
  %6917 = fsub fast float -0.000000e+00, %6916
  %6918 = select i1 %6859, float -0.000000e+00, float %6917
  %6919 = fmul fast float %4938, 0x3FF7154760000000
  %6920 = fmul fast float %6919, %6918
  %6921 = fmul fast float %4939, 0x3FF7154760000000
  %6922 = fmul fast float %6921, %6918
  %6923 = fmul fast float %4940, 0x3FF7154760000000
  %6924 = fmul fast float %6923, %6918
  %6925 = call float @dx.op.unary.f32(i32 21, float %6920)  ; Exp(value)
  %6926 = call float @dx.op.unary.f32(i32 21, float %6922)  ; Exp(value)
  %6927 = call float @dx.op.unary.f32(i32 21, float %6924)  ; Exp(value)
  %6928 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6929 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6931 = fmul fast float %6855, %6928
  %6932 = fmul fast float %6856, %6929
  %6933 = fmul fast float %6857, %6930
  %6934 = fsub fast float %6022, %5763
  %6935 = fsub fast float %6023, %5764
  %6936 = fsub fast float %6024, %5765
  %6937 = call float @dx.op.dot3.f32(i32 55, float %6934, float %6935, float %6936, float %6934, float %6935, float %6936)  ; Dot3(ax,ay,az,bx,by,bz)
  %6938 = call float @dx.op.unary.f32(i32 25, float %6937)  ; Rsqrt(value)
  %6939 = fmul fast float %6938, %6934
  %6940 = fmul fast float %6938, %6935
  %6941 = fmul fast float %6938, %6936
  %6942 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6024, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %6943 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %6939, float %6940, float %6941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6944 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6945 = fmul fast float %6944, %6944
  %6946 = fmul fast float %6945, %5784
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = fmul fast float %6947, %6944
  %6949 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %6939, float %6940, float %6941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6950 = fmul fast float %6949, %6949
  %6951 = call float @dx.op.unary.f32(i32 6, float %6942)  ; FAbs(value)
  %6952 = fsub fast float 1.000000e+00, %5726
  %6953 = call float @dx.op.binary.f32(i32 35, float %6952, float 0x3F847AE140000000)  ; FMax(a,b)
  %6954 = fmul fast float %6953, %6953
  %6955 = fmul fast float %6954, %6954
  %6956 = fsub fast float 1.000000e+00, %6955
  %6957 = fmul fast float %5771, %5771
  %6958 = fmul fast float %6957, %6956
  %6959 = fadd fast float %6958, %6955
  %6960 = bitcast float %6959 to i32
  %6961 = ashr i32 %6960, 1
  %6962 = add nsw i32 %6961, 532487669
  %6963 = bitcast i32 %6962 to float
  %6964 = fadd fast float %6963, %5771
  %6965 = fmul fast float %6955, %6950
  %6966 = fsub fast float 1.000000e+00, %6950
  %6967 = fadd fast float %6966, %6965
  %6968 = fmul fast float %6951, %6951
  %6969 = fmul fast float %6968, %6956
  %6970 = fadd fast float %6969, %6955
  %6971 = bitcast float %6970 to i32
  %6972 = ashr i32 %6971, 1
  %6973 = add nsw i32 %6972, 532487669
  %6974 = bitcast i32 %6973 to float
  %6975 = fadd fast float %6974, %6951
  %6976 = fmul fast float %6967, %6967
  %6977 = fmul fast float %6976, %6964
  %6978 = fmul fast float %6977, %6975
  %6979 = fdiv fast float 0x3FF0A00000000000, %6978
  %6980 = fmul fast float %6979, %6955
  %6981 = fmul fast float %5884, 0x3FF9999980000000
  %6982 = fsub fast float 5.000000e+00, %6981
  %6983 = call float @dx.op.unary.f32(i32 6, float %6943)  ; FAbs(value)
  %6984 = fsub fast float 1.000000e+00, %6983
  %6985 = fmul fast float %5884, 0x41D9660740000000
  %6986 = fadd fast float %6985, 0xC1EFBF8940000000
  %6987 = bitcast float %6984 to i32
  %6988 = sitofp i32 %6987 to float
  %6989 = fmul fast float %6988, %6982
  %6990 = fadd fast float %6986, %6989
  %6991 = fptosi float %6990 to i32
  %6992 = bitcast i32 %6991 to float
  %6993 = fsub fast float 1.000000e+00, %5720
  %6994 = fsub fast float 1.000000e+00, %5721
  %6995 = fsub fast float 1.000000e+00, %5769
  %6996 = fmul fast float %6992, %6993
  %6997 = fmul fast float %6992, %6994
  %6998 = fmul fast float %6992, %6995
  %6999 = fadd fast float %6996, %5720
  %7000 = fadd fast float %6997, %5721
  %7001 = fadd fast float %6998, %5769
  br i1 %5907, label %7002, label %7025

; <label>:7002                                    ; preds = %6915
  %7003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4535, float %6983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7004 = extractvalue %dx.types.ResRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.ResRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.ResRet.f32 %7003, 2
  %7007 = fadd fast float %7004, -5.000000e-01
  %7008 = fadd fast float %7005, -5.000000e-01
  %7009 = fadd fast float %7006, -5.000000e-01
  %7010 = fmul fast float %5720, 4.000000e+00
  %7011 = fmul fast float %7010, %6993
  %7012 = fmul fast float %7011, %7007
  %7013 = fmul fast float %5721, 4.000000e+00
  %7014 = fmul fast float %7013, %6994
  %7015 = fmul fast float %7014, %7008
  %7016 = fmul fast float %5769, 4.000000e+00
  %7017 = fmul fast float %7016, %6995
  %7018 = fmul fast float %7017, %7009
  %7019 = fadd fast float %7012, %6999
  %7020 = fadd fast float %7015, %7000
  %7021 = fadd fast float %7018, %7001
  %7022 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7023 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7024 = call float @dx.op.unary.f32(i32 7, float %7021)  ; Saturate(value)
  br label %7025

; <label>:7025                                    ; preds = %7002, %6915
  %7026 = phi float [ %7022, %7002 ], [ %6999, %6915 ]
  %7027 = phi float [ %7023, %7002 ], [ %7000, %6915 ]
  %7028 = phi float [ %7024, %7002 ], [ %7001, %6915 ]
  %7029 = fmul fast float %6942, 9.843750e-01
  %7030 = fadd fast float %7029, 7.812500e-03
  %7031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7030, float %5888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = extractvalue %dx.types.ResRet.f32 %7031, 1
  %7034 = extractvalue %dx.types.ResRet.f32 %7031, 2
  %7035 = extractvalue %dx.types.ResRet.f32 %7031, 3
  %7036 = fsub fast float %7034, %7032
  %7037 = fsub fast float %7035, %7033
  %7038 = fmul fast float %7036, %5894
  %7039 = fmul fast float %7037, %5894
  %7040 = fadd fast float %7038, %7032
  %7041 = fadd fast float %7039, %7033
  %7042 = fmul fast float %7040, %5720
  %7043 = fmul fast float %7040, %5721
  %7044 = fmul fast float %7040, %5769
  %7045 = fadd fast float %7042, %7041
  %7046 = fadd fast float %7043, %7041
  %7047 = fadd fast float %7044, %7041
  br i1 %5907, label %7048, label %7071

; <label>:7048                                    ; preds = %7025
  %7049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4535, float %6942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.ResRet.f32 %7049, 2
  %7053 = fadd fast float %7050, -5.000000e-01
  %7054 = fadd fast float %7051, -5.000000e-01
  %7055 = fadd fast float %7052, -5.000000e-01
  %7056 = fmul fast float %5720, 4.000000e+00
  %7057 = fmul fast float %7056, %6993
  %7058 = fmul fast float %7057, %7053
  %7059 = fmul fast float %5721, 4.000000e+00
  %7060 = fmul fast float %7059, %6994
  %7061 = fmul fast float %7060, %7054
  %7062 = fmul fast float %5769, 4.000000e+00
  %7063 = fmul fast float %7062, %6995
  %7064 = fmul fast float %7063, %7055
  %7065 = fadd fast float %7058, %7045
  %7066 = fadd fast float %7061, %7046
  %7067 = fadd fast float %7064, %7047
  %7068 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7070 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  br label %7071

; <label>:7071                                    ; preds = %7048, %7025
  %7072 = phi float [ %7068, %7048 ], [ %7045, %7025 ]
  %7073 = phi float [ %7069, %7048 ], [ %7046, %7025 ]
  %7074 = phi float [ %7070, %7048 ], [ %7047, %7025 ]
  %7075 = call float @dx.op.binary.f32(i32 35, float %7073, float %7074)  ; FMax(a,b)
  %7076 = call float @dx.op.binary.f32(i32 35, float %7072, float %7075)  ; FMax(a,b)
  %7077 = fsub fast float 1.000000e+00, %7076
  %7078 = fmul fast float %7026, %6980
  %7079 = fmul fast float %7027, %6980
  %7080 = fmul fast float %7028, %6980
  %7081 = fsub fast float 1.000000e+00, %6943
  %7082 = bitcast float %7081 to i32
  %7083 = sitofp i32 %7082 to float
  %7084 = fmul fast float %7083, 5.000000e+00
  %7085 = fadd fast float %7084, 0xC1EFBF8940000000
  %7086 = fptosi float %7085 to i32
  %7087 = bitcast i32 %7086 to float
  %7088 = fmul fast float %7087, %4536
  %7089 = fmul fast float %7077, %7088
  %7090 = fmul fast float %7089, %5957
  %7091 = fmul fast float %7089, %5958
  %7092 = fmul fast float %7089, %5959
  %7093 = fadd fast float %7090, %7078
  %7094 = fadd fast float %7091, %7079
  %7095 = fadd fast float %7092, %7080
  %7096 = fmul fast float %6948, %6931
  %7097 = fmul fast float %7096, %7077
  %7098 = fmul fast float %6948, %6932
  %7099 = fmul fast float %7098, %7077
  %7100 = fmul fast float %6948, %6933
  %7101 = fmul fast float %7100, %7077
  %7102 = fmul fast float %7096, %7093
  %7103 = fmul fast float %7098, %7094
  %7104 = fmul fast float %7100, %7095
  %7105 = fadd fast float %7097, %5941
  %7106 = fmul fast float %7105, %4532
  %7107 = fadd fast float %7099, %5942
  %7108 = fmul fast float %7107, %4532
  %7109 = fadd fast float %7101, %5943
  %7110 = fmul fast float %7109, %4532
  %7111 = fadd fast float %7102, %6010
  %7112 = fmul fast float %7111, %4532
  %7113 = fadd fast float %7103, %6013
  %7114 = fmul fast float %7113, %4532
  %7115 = fadd fast float %7104, %6016
  %7116 = fmul fast float %7115, %4532
  br label %7117

; <label>:7117                                    ; preds = %7071, %6849, %5934
  %7118 = phi float [ %6011, %5934 ], [ %6011, %6849 ], [ %7112, %7071 ]
  %7119 = phi float [ %6014, %5934 ], [ %6014, %6849 ], [ %7114, %7071 ]
  %7120 = phi float [ %6017, %5934 ], [ %6017, %6849 ], [ %7116, %7071 ]
  %7121 = phi float [ %6006, %5934 ], [ %6006, %6849 ], [ %7106, %7071 ]
  %7122 = phi float [ %6007, %5934 ], [ %6007, %6849 ], [ %7108, %7071 ]
  %7123 = phi float [ %6008, %5934 ], [ %6008, %6849 ], [ %7110, %7071 ]
  %7124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.i32 %7124, 0
  %7126 = icmp eq i32 %7125, 0
  br i1 %7126, label %7759, label %7127

; <label>:7127                                    ; preds = %7117
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7131 = fmul fast float %7129, %108
  %7132 = fmul fast float %7130, %109
  %7133 = fptoui float %7131 to i32
  %7134 = fptoui float %7132 to i32
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7138 = extractvalue %dx.types.CBufRet.f32 %7135, 3
  %7139 = fadd fast float %99, -4.000000e+00
  %7140 = call float @dx.op.binary.f32(i32 35, float %7139, float 0.000000e+00)  ; FMax(a,b)
  %7141 = fadd fast float %7140, %7136
  %7142 = fmul fast float %7141, %7137
  %7143 = call float @dx.op.unary.f32(i32 23, float %7142)  ; Log(value)
  %7144 = fmul fast float %7143, %7138
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7147 = fmul fast float %7144, %7146
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.i32 %7149, 1
  %7151 = add i32 %7150, -1
  %7152 = uitofp i32 %7150 to float
  %7153 = fmul fast float %7152, %7148
  %7154 = fptoui float %7153 to i32
  %7155 = call i32 @dx.op.binary.i32(i32 40, i32 %7154, i32 %7151)  ; UMin(a,b)
  %7156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.i32 %7156, 2
  %7158 = extractvalue %dx.types.CBufRet.i32 %7156, 3
  %7159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7134, i32 %7157, i32 %7133)  ; UMad(a,b,c)
  %7160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7155, i32 %7158, i32 %7159)  ; UMad(a,b,c)
  %7161 = add nsw i32 %7125, -1
  %7162 = call i32 @dx.op.binary.i32(i32 37, i32 %7161, i32 0)  ; IMax(a,b)
  %7163 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7164 = fptoui float %7163 to i32
  %7165 = lshr i32 %7164, 5
  %7166 = call i32 @dx.op.binary.i32(i32 40, i32 %7165, i32 8191)  ; UMin(a,b)
  %7167 = shl i32 %7166, 2
  %7168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7167, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.i32 %7168, 0
  %7170 = lshr i32 %7169, 16
  %7171 = and i32 %7169, 65535
  %7172 = lshr i32 %7169, 21
  %7173 = lshr i32 %7171, 5
  %7174 = call i32 @dx.op.binary.i32(i32 40, i32 %7173, i32 %7162)  ; UMin(a,b)
  %7175 = icmp ugt i32 %7172, %7174
  br i1 %7175, label %7759, label %7176

; <label>:7176                                    ; preds = %7127
  br label %7177

; <label>:7177                                    ; preds = %7749, %7176
  %7178 = phi i32 [ %7756, %7749 ], [ %7172, %7176 ]
  %7179 = phi float [ %7750, %7749 ], [ %7118, %7176 ]
  %7180 = phi float [ %7751, %7749 ], [ %7119, %7176 ]
  %7181 = phi float [ %7752, %7749 ], [ %7120, %7176 ]
  %7182 = phi float [ %7753, %7749 ], [ %7121, %7176 ]
  %7183 = phi float [ %7754, %7749 ], [ %7122, %7176 ]
  %7184 = phi float [ %7755, %7749 ], [ %7123, %7176 ]
  %7185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.i32 %7185, 0
  %7187 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7160, i32 %7186, i32 %7178)  ; UMad(a,b,c)
  %7188 = shl i32 %7187, 2
  %7189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7188, i32 undef)  ; BufferLoad(srv,index,wot)
  %7190 = extractvalue %dx.types.ResRet.i32 %7189, 0
  %7191 = shl i32 %7178, 5
  %7192 = sub nsw i32 %7170, %7191
  %7193 = call i32 @dx.op.binary.i32(i32 37, i32 %7192, i32 0)  ; IMax(a,b)
  %7194 = call i32 @dx.op.binary.i32(i32 38, i32 %7193, i32 31)  ; IMin(a,b)
  %7195 = sub nsw i32 1, %7170
  %7196 = add nsw i32 %7195, %7171
  %7197 = call i32 @dx.op.binary.i32(i32 37, i32 %7196, i32 0)  ; IMax(a,b)
  %7198 = call i32 @dx.op.binary.i32(i32 38, i32 %7197, i32 32)  ; IMin(a,b)
  %7199 = and i32 %7198, 31
  %7200 = shl i32 -1, %7199
  %7201 = xor i32 %7200, -1
  %7202 = and i32 %7194, 31
  %7203 = shl i32 %7201, %7202
  %7204 = icmp eq i32 %7198, 32
  %7205 = select i1 %7204, i32 -1, i32 %7203
  %7206 = and i32 %7205, %7190
  %7207 = icmp eq i32 %7206, 0
  br i1 %7207, label %7749, label %7208

; <label>:7208                                    ; preds = %7177
  br label %7209

; <label>:7209                                    ; preds = %7343, %7208
  %7210 = phi i32 [ %7221, %7343 ], [ %7206, %7208 ]
  %7211 = phi float [ %7344, %7343 ], [ %7179, %7208 ]
  %7212 = phi float [ %7345, %7343 ], [ %7180, %7208 ]
  %7213 = phi float [ %7346, %7343 ], [ %7181, %7208 ]
  %7214 = phi float [ %7347, %7343 ], [ %7182, %7208 ]
  %7215 = phi float [ %7348, %7343 ], [ %7183, %7208 ]
  %7216 = phi float [ %7349, %7343 ], [ %7184, %7208 ]
  %7217 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7210)  ; FirstbitLo(value)
  %7218 = add i32 %7217, %7191
  %7219 = and i32 %7217, 31
  %7220 = shl i32 1, %7219
  %7221 = xor i32 %7220, %7210
  %7222 = mul i32 %7218, 112
  %7223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7222, i32 undef)  ; BufferLoad(srv,index,wot)
  %7224 = extractvalue %dx.types.ResRet.f32 %7223, 0
  %7225 = extractvalue %dx.types.ResRet.f32 %7223, 1
  %7226 = extractvalue %dx.types.ResRet.f32 %7223, 2
  %7227 = or i32 %7222, 12
  %7228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7227, i32 undef)  ; BufferLoad(srv,index,wot)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = add i32 %7222, 16
  %7231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7230, i32 undef)  ; BufferLoad(srv,index,wot)
  %7232 = extractvalue %dx.types.ResRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.ResRet.f32 %7231, 1
  %7234 = extractvalue %dx.types.ResRet.f32 %7231, 2
  %7235 = add i32 %7222, 28
  %7236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7235, i32 undef)  ; BufferLoad(srv,index,wot)
  %7237 = extractvalue %dx.types.ResRet.i32 %7236, 0
  %7238 = add i32 %7222, 44
  %7239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7238, i32 undef)  ; BufferLoad(srv,index,wot)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = add i32 %7222, 48
  %7242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7241, i32 undef)  ; BufferLoad(srv,index,wot)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = extractvalue %dx.types.ResRet.f32 %7242, 3
  %7247 = add i32 %7222, 64
  %7248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7247, i32 undef)  ; BufferLoad(srv,index,wot)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 0
  %7250 = extractvalue %dx.types.ResRet.f32 %7248, 1
  %7251 = extractvalue %dx.types.ResRet.f32 %7248, 2
  %7252 = extractvalue %dx.types.ResRet.f32 %7248, 3
  %7253 = add i32 %7222, 80
  %7254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7253, i32 undef)  ; BufferLoad(srv,index,wot)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 1
  %7256 = extractvalue %dx.types.ResRet.f32 %7254, 2
  %7257 = add i32 %7222, 92
  %7258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7257, i32 undef)  ; BufferLoad(srv,index,wot)
  %7259 = extractvalue %dx.types.ResRet.i32 %7258, 0
  %7260 = call float @dx.op.dot3.f32(i32 55, float %7224, float %7225, float %7226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7261 = select i1 %261, float %7255, float %7224
  %7262 = select i1 %261, float %7260, float %7225
  %7263 = select i1 %261, float %7256, float %7226
  %7264 = and i32 %7259, 65535
  %7265 = uitofp i32 %7264 to float
  %7266 = lshr i32 %7259, 16
  %7267 = uitofp i32 %7266 to float
  %7268 = and i32 %7237, 65535
  %7269 = and i32 %7237, 50331648
  %7270 = icmp eq i32 %7269, 33554432
  %7271 = fsub fast float %7243, %195
  %7272 = fsub fast float %7244, %196
  %7273 = fsub fast float %7245, %197
  %7274 = call float @dx.op.dot3.f32(i32 55, float %7271, float %7272, float %7273, float %7271, float %7272, float %7273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = call float @dx.op.unary.f32(i32 24, float %7274)  ; Sqrt(value)
  %7276 = fdiv fast float 1.000000e+00, %7275
  %7277 = fmul fast float %7276, %7271
  %7278 = fmul fast float %7276, %7272
  %7279 = fmul fast float %7276, %7273
  %7280 = fadd fast float %7275, %7229
  %7281 = fdiv fast float 1.000000e+00, %7280
  %7282 = fmul float %7240, %7281
  %7283 = fmul float %7282, %7282
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  br i1 %7270, label %7285, label %7306

; <label>:7285                                    ; preds = %7209
  %7286 = fmul fast float %7251, %7232
  %7287 = fmul fast float %7251, %7233
  %7288 = fmul fast float %7251, %7234
  %7289 = fadd fast float %7271, %7286
  %7290 = fadd fast float %7272, %7287
  %7291 = fadd fast float %7273, %7288
  %7292 = call float @dx.op.dot3.f32(i32 55, float %7289, float %7290, float %7291, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = call float @dx.op.unary.f32(i32 25, float %7292)  ; Rsqrt(value)
  %7294 = fmul fast float %7293, %7289
  %7295 = fmul fast float %7293, %7290
  %7296 = fmul fast float %7293, %7291
  %7297 = fsub fast float %195, %7243
  %7298 = fsub fast float %196, %7244
  %7299 = fsub fast float %197, %7245
  %7300 = fsub fast float -0.000000e+00, %7297
  %7301 = fsub fast float -0.000000e+00, %7298
  %7302 = fsub fast float -0.000000e+00, %7299
  %7303 = call float @dx.op.dot3.f32(i32 55, float %7300, float %7301, float %7302, float %7232, float %7233, float %7234)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = fcmp fast ogt float %7303, 0.000000e+00
  %7305 = uitofp i1 %7304 to float
  br label %7306

; <label>:7306                                    ; preds = %7285, %7209
  %7307 = phi float [ %7305, %7285 ], [ 1.000000e+00, %7209 ]
  %7308 = phi float [ %7294, %7285 ], [ %7277, %7209 ]
  %7309 = phi float [ %7295, %7285 ], [ %7278, %7209 ]
  %7310 = phi float [ %7296, %7285 ], [ %7279, %7209 ]
  %7311 = call float @dx.op.dot3.f32(i32 55, float %7232, float %7233, float %7234, float %7308, float %7309, float %7310)  ; Dot3(ax,ay,az,bx,by,bz)
  %7312 = fmul fast float %7311, %7311
  %7313 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  %7314 = fsub fast float 1.000000e+00, %7313
  %7315 = fmul fast float %7314, 5.000000e-01
  %7316 = fcmp fast ogt float %7311, 0.000000e+00
  %7317 = fsub fast float 1.000000e+00, %7315
  %7318 = select i1 %7316, float %7315, float %7317
  %7319 = fmul fast float %7318, %7267
  %7320 = fadd fast float %7319, %7265
  %7321 = fmul fast float %7320, 0x3EF0001000000000
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7321, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = fmul fast float %7311, %7249
  %7325 = fadd fast float %7324, %7250
  %7326 = call float @dx.op.unary.f32(i32 7, float %7325)  ; Saturate(value)
  %7327 = select i1 %7270, float 1.000000e+00, float %7326
  %7328 = select i1 %7270, float %7326, float 1.000000e+00
  %7329 = fmul fast float %7275, %7246
  %7330 = fsub fast float 1.000000e+00, %7329
  %7331 = fmul fast float %7330, %7252
  %7332 = call float @dx.op.unary.f32(i32 7, float %7331)  ; Saturate(value)
  %7333 = fmul fast float %7332, %7328
  %7334 = fmul fast float %7333, 2.000000e+00
  %7335 = fsub fast float 3.000000e+00, %7334
  %7336 = fmul fast float %7323, %7307
  %7337 = fmul fast float %7333, %7333
  %7338 = fmul fast float %7337, %7336
  %7339 = fmul fast float %7338, %7335
  %7340 = call float @dx.op.binary.f32(i32 36, float %7339, float %7339)  ; FMin(a,b)
  %7341 = call float @dx.op.binary.f32(i32 36, float %7339, float %7340)  ; FMin(a,b)
  %7342 = fcmp fast ogt float %7341, 0.000000e+00
  br i1 %7342, label %7351, label %7343, !dx.controlflow.hints !125

; <label>:7343                                    ; preds = %7705, %7451, %7306
  %7344 = phi float [ %7211, %7451 ], [ %7211, %7306 ], [ %7745, %7705 ]
  %7345 = phi float [ %7212, %7451 ], [ %7212, %7306 ], [ %7746, %7705 ]
  %7346 = phi float [ %7213, %7451 ], [ %7213, %7306 ], [ %7747, %7705 ]
  %7347 = phi float [ %7214, %7451 ], [ %7214, %7306 ], [ %7739, %7705 ]
  %7348 = phi float [ %7215, %7451 ], [ %7215, %7306 ], [ %7740, %7705 ]
  %7349 = phi float [ %7216, %7451 ], [ %7216, %7306 ], [ %7741, %7705 ]
  %7350 = icmp eq i32 %7210, %7220
  br i1 %7350, label %7748, label %7209

; <label>:7351                                    ; preds = %7306
  %7352 = icmp eq i32 %7268, 255
  br i1 %7352, label %7451, label %7353, !dx.controlflow.hints !126

; <label>:7353                                    ; preds = %7351
  %7354 = mul nuw nsw i32 %7268, 176
  %7355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7354, i32 undef)  ; BufferLoad(srv,index,wot)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  %7359 = extractvalue %dx.types.ResRet.f32 %7355, 3
  %7360 = add nuw nsw i32 %7354, 16
  %7361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7360, i32 undef)  ; BufferLoad(srv,index,wot)
  %7362 = extractvalue %dx.types.ResRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.ResRet.f32 %7361, 1
  %7364 = add nuw nsw i32 %7354, 32
  %7365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7364, i32 undef)  ; BufferLoad(srv,index,wot)
  %7366 = extractvalue %dx.types.ResRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.ResRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.ResRet.f32 %7365, 2
  %7369 = add nuw nsw i32 %7354, 48
  %7370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7369, i32 undef)  ; BufferLoad(srv,index,wot)
  %7371 = extractvalue %dx.types.ResRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.ResRet.f32 %7370, 1
  %7373 = extractvalue %dx.types.ResRet.f32 %7370, 2
  %7374 = extractvalue %dx.types.ResRet.f32 %7370, 3
  %7375 = add nuw nsw i32 %7354, 64
  %7376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7375, i32 undef)  ; BufferLoad(srv,index,wot)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = extractvalue %dx.types.ResRet.f32 %7376, 3
  %7381 = add nuw nsw i32 %7354, 80
  %7382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7381, i32 undef)  ; BufferLoad(srv,index,wot)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.ResRet.f32 %7382, 2
  %7386 = extractvalue %dx.types.ResRet.f32 %7382, 3
  %7387 = add nuw nsw i32 %7354, 96
  %7388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7387, i32 undef)  ; BufferLoad(srv,index,wot)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.ResRet.f32 %7388, 3
  %7393 = bitcast float %7363 to i32
  %7394 = fmul fast float %7368, %115
  %7395 = fmul fast float %7368, %116
  %7396 = fmul fast float %7368, %117
  %7397 = fadd fast float %7394, %195
  %7398 = fadd fast float %7395, %196
  %7399 = fadd fast float %7396, %197
  %7400 = fmul fast float %7397, %7371
  %7401 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7377, float %7400)  ; FMad(a,b,c)
  %7402 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7383, float %7401)  ; FMad(a,b,c)
  %7403 = fadd fast float %7402, %7389
  %7404 = fmul fast float %7397, %7372
  %7405 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7378, float %7404)  ; FMad(a,b,c)
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7384, float %7405)  ; FMad(a,b,c)
  %7407 = fadd fast float %7406, %7390
  %7408 = fmul fast float %7397, %7373
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7379, float %7408)  ; FMad(a,b,c)
  %7410 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7385, float %7409)  ; FMad(a,b,c)
  %7411 = fadd fast float %7410, %7391
  %7412 = fmul fast float %7397, %7374
  %7413 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7380, float %7412)  ; FMad(a,b,c)
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7386, float %7413)  ; FMad(a,b,c)
  %7415 = fadd fast float %7414, %7392
  %7416 = fdiv fast float %7403, %7415
  %7417 = fdiv fast float %7407, %7415
  %7418 = fdiv fast float %7411, %7415
  %7419 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7418)  ; FMax(a,b)
  %7420 = fmul fast float %272, 0x401921FB60000000
  %7421 = call float @dx.op.unary.f32(i32 13, float %7420)  ; Sin(value)
  %7422 = call float @dx.op.unary.f32(i32 12, float %7420)  ; Cos(value)
  %7423 = fsub fast float -0.000000e+00, %7421
  %7424 = fmul fast float %7358, 5.000000e-01
  %7425 = call float @dx.op.dot2.f32(i32 54, float %272, float %272, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7426 = call float @dx.op.unary.f32(i32 22, float %7425)  ; Frc(value)
  %7427 = fmul fast float %7426, 0x404A7DD040000000
  %7428 = call float @dx.op.unary.f32(i32 22, float %7427)  ; Frc(value)
  %7429 = fmul fast float %7428, %7367
  %7430 = fadd fast float %7429, %7424
  %7431 = call float @dx.op.tertiary.f32(i32 46, float %7430, float %7423, float 0.000000e+00)  ; FMad(a,b,c)
  %7432 = call float @dx.op.tertiary.f32(i32 46, float %7430, float %7422, float 0.000000e+00)  ; FMad(a,b,c)
  %7433 = fadd fast float %7431, %7416
  %7434 = fadd fast float %7432, %7417
  %7435 = fmul fast float %7433, %7362
  %7436 = fmul fast float %7434, %7362
  %7437 = call float @dx.op.binary.f32(i32 35, float %7435, float %7358)  ; FMax(a,b)
  %7438 = call float @dx.op.binary.f32(i32 35, float %7436, float %7358)  ; FMax(a,b)
  %7439 = call float @dx.op.binary.f32(i32 36, float %7437, float %7359)  ; FMin(a,b)
  %7440 = call float @dx.op.binary.f32(i32 36, float %7438, float %7359)  ; FMin(a,b)
  %7441 = fadd fast float %7439, %7356
  %7442 = fadd fast float %7440, %7357
  %7443 = uitofp i32 %7393 to float
  %7444 = fadd fast float %7419, %7366
  %7445 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %52, float %7441, float %7442, float %7443, float undef, i32 0, i32 0, i32 undef, float %7444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = fadd fast float %7446, -1.000000e+00
  %7448 = fmul fast float %7447, %7327
  %7449 = fadd fast float %7448, 1.000000e+00
  %7450 = fmul fast float %7449, %7339
  br label %7451

; <label>:7451                                    ; preds = %7353, %7351
  %7452 = phi float [ %7450, %7353 ], [ %7339, %7351 ]
  %7453 = call float @dx.op.binary.f32(i32 36, float %7452, float %7452)  ; FMin(a,b)
  %7454 = call float @dx.op.binary.f32(i32 36, float %7452, float %7453)  ; FMin(a,b)
  %7455 = fcmp fast ogt float %7454, 0.000000e+00
  br i1 %7455, label %7456, label %7343, !dx.controlflow.hints !127

; <label>:7456                                    ; preds = %7451
  %7457 = fmul fast float %7452, %7261
  %7458 = fmul fast float %7452, %7262
  %7459 = fmul fast float %7452, %7263
  %7460 = fsub fast float %7245, %4937
  %7461 = fcmp fast ogt float %7460, 0.000000e+00
  %7462 = fsub fast float %197, %4937
  %7463 = fcmp fast ogt float %7462, 0.000000e+00
  %7464 = xor i1 %7463, %7461
  %7465 = fsub fast float %4937, %7245
  %7466 = fmul fast float %7465, 2.000000e+00
  %7467 = fadd fast float %7466, %7245
  %7468 = select i1 %7464, float %7245, float %7467
  %7469 = fsub fast float %7468, %197
  %7470 = call float @dx.op.dot3.f32(i32 55, float %7271, float %7272, float %7469, float %7271, float %7272, float %7469)  ; Dot3(ax,ay,az,bx,by,bz)
  %7471 = call float @dx.op.unary.f32(i32 25, float %7470)  ; Rsqrt(value)
  %7472 = fmul fast float %7471, %7271
  %7473 = fmul fast float %7471, %7272
  %7474 = fmul fast float %7471, %7469
  %7475 = fsub fast float %4937, %197
  %7476 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7475)  ; Dot3(ax,ay,az,bx,by,bz)
  %7477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7472, float %7473, float %7474)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = fdiv fast float 1.000000e+00, %7477
  %7479 = fmul fast float %7478, %7476
  %7480 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7462, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7481 = fcmp fast ogt float %7480, 0.000000e+00
  %7482 = fcmp fast olt float %7480, 0.000000e+00
  %7483 = zext i1 %7481 to i32
  %7484 = zext i1 %7482 to i32
  %7485 = sub nsw i32 %7483, %7484
  %7486 = sitofp i32 %7485 to float
  %7487 = fsub fast float %7468, %4937
  %7488 = call float @dx.op.dot3.f32(i32 55, float %7271, float %7272, float %7487, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7489 = fcmp fast ogt float %7488, 0.000000e+00
  %7490 = fcmp fast olt float %7488, 0.000000e+00
  %7491 = zext i1 %7489 to i32
  %7492 = zext i1 %7490 to i32
  %7493 = sub nsw i32 %7491, %7492
  %7494 = sitofp i32 %7493 to float
  %7495 = fcmp fast une float %7486, %7494
  br i1 %7495, label %7496, label %7506

; <label>:7496                                    ; preds = %7456
  %7497 = fmul fast float %7479, %7474
  %7498 = fmul fast float %7479, %7473
  %7499 = fmul fast float %7479, %7472
  %7500 = fmul fast float %7499, %7499
  %7501 = fmul fast float %7498, %7498
  %7502 = fadd fast float %7500, %7501
  %7503 = fmul fast float %7497, %7497
  %7504 = fadd fast float %7502, %7503
  %7505 = call float @dx.op.unary.f32(i32 24, float %7504)  ; Sqrt(value)
  br label %7518

; <label>:7506                                    ; preds = %7456
  %7507 = icmp slt i32 %7485, 0
  br i1 %7507, label %7508, label %7518

; <label>:7508                                    ; preds = %7506
  %7509 = fsub fast float %195, %7243
  %7510 = fsub fast float %196, %7244
  %7511 = fsub fast float %197, %7468
  %7512 = fmul fast float %7509, %7509
  %7513 = fmul fast float %7510, %7510
  %7514 = fadd fast float %7512, %7513
  %7515 = fmul fast float %7511, %7511
  %7516 = fadd fast float %7514, %7515
  %7517 = call float @dx.op.unary.f32(i32 24, float %7516)  ; Sqrt(value)
  br label %7518

; <label>:7518                                    ; preds = %7508, %7506, %7496
  %7519 = phi float [ %7505, %7496 ], [ %7517, %7508 ], [ 0.000000e+00, %7506 ]
  %7520 = and i1 %7463, %7461
  %7521 = fsub fast float -0.000000e+00, %7519
  %7522 = select i1 %7520, float -0.000000e+00, float %7521
  %7523 = fmul fast float %4938, 0x3FF7154760000000
  %7524 = fmul fast float %7523, %7522
  %7525 = fmul fast float %4939, 0x3FF7154760000000
  %7526 = fmul fast float %7525, %7522
  %7527 = fmul fast float %4940, 0x3FF7154760000000
  %7528 = fmul fast float %7527, %7522
  %7529 = call float @dx.op.unary.f32(i32 21, float %7524)  ; Exp(value)
  %7530 = call float @dx.op.unary.f32(i32 21, float %7526)  ; Exp(value)
  %7531 = call float @dx.op.unary.f32(i32 21, float %7528)  ; Exp(value)
  %7532 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7533 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7534 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7535 = fmul fast float %7457, %7532
  %7536 = fmul fast float %7458, %7533
  %7537 = fmul fast float %7459, %7534
  %7538 = fsub fast float %7277, %5763
  %7539 = fsub fast float %7278, %5764
  %7540 = fsub fast float %7279, %5765
  %7541 = call float @dx.op.dot3.f32(i32 55, float %7538, float %7539, float %7540, float %7538, float %7539, float %7540)  ; Dot3(ax,ay,az,bx,by,bz)
  %7542 = call float @dx.op.unary.f32(i32 25, float %7541)  ; Rsqrt(value)
  %7543 = fmul fast float %7542, %7538
  %7544 = fmul fast float %7542, %7539
  %7545 = fmul fast float %7542, %7540
  %7546 = call float @dx.op.dot3.f32(i32 55, float %7277, float %7278, float %7279, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %7547 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %7543, float %7544, float %7545)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7549 = fmul fast float %7548, %7284
  %7550 = fmul fast float %7548, %7548
  %7551 = fmul fast float %7550, %5784
  %7552 = call float @dx.op.unary.f32(i32 7, float %7551)  ; Saturate(value)
  %7553 = fmul fast float %7549, %7552
  %7554 = bitcast float %7274 to i32
  %7555 = ashr i32 %7554, 1
  %7556 = sub nsw i32 1597463007, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7271
  %7559 = fmul fast float %7557, %7272
  %7560 = fmul fast float %7557, %7273
  %7561 = fsub fast float %7558, %5763
  %7562 = fsub fast float %7559, %5764
  %7563 = fsub fast float %7560, %5765
  %7564 = call float @dx.op.dot3.f32(i32 55, float %7561, float %7562, float %7563, float %7561, float %7562, float %7563)  ; Dot3(ax,ay,az,bx,by,bz)
  %7565 = call float @dx.op.unary.f32(i32 25, float %7564)  ; Rsqrt(value)
  %7566 = fmul fast float %7561, %7565
  %7567 = fmul fast float %7562, %7565
  %7568 = fmul fast float %7563, %7565
  %7569 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %7566, float %7567, float %7568)  ; Dot3(ax,ay,az,bx,by,bz)
  %7570 = fmul fast float %7569, %7569
  %7571 = call float @dx.op.unary.f32(i32 6, float %7546)  ; FAbs(value)
  %7572 = fsub fast float 1.000000e+00, %5726
  %7573 = call float @dx.op.binary.f32(i32 35, float %7572, float 0x3F847AE140000000)  ; FMax(a,b)
  %7574 = fmul fast float %7573, %7573
  %7575 = fmul fast float %7574, %7574
  %7576 = fsub fast float 1.000000e+00, %7575
  %7577 = fmul fast float %5771, %5771
  %7578 = fmul fast float %7577, %7576
  %7579 = fadd fast float %7578, %7575
  %7580 = bitcast float %7579 to i32
  %7581 = ashr i32 %7580, 1
  %7582 = add nsw i32 %7581, 532487669
  %7583 = bitcast i32 %7582 to float
  %7584 = fadd fast float %7583, %5771
  %7585 = fmul fast float %7575, %7570
  %7586 = fsub fast float 1.000000e+00, %7570
  %7587 = fadd fast float %7586, %7585
  %7588 = fmul fast float %7571, %7571
  %7589 = fmul fast float %7588, %7576
  %7590 = fadd fast float %7589, %7575
  %7591 = bitcast float %7590 to i32
  %7592 = ashr i32 %7591, 1
  %7593 = add nsw i32 %7592, 532487669
  %7594 = bitcast i32 %7593 to float
  %7595 = fadd fast float %7594, %7571
  %7596 = fmul fast float %7587, %7587
  %7597 = fmul fast float %7596, %7584
  %7598 = fmul fast float %7597, %7595
  %7599 = fdiv fast float 1.000000e+00, %7598
  %7600 = bitcast float %7575 to i32
  %7601 = sitofp i32 %7600 to float
  %7602 = fmul fast float %7601, 0x3FE7F73180000000
  %7603 = fadd fast float %7602, 0x41AFE27C40000000
  %7604 = fptosi float %7603 to i32
  %7605 = bitcast i32 %7604 to float
  %7606 = fmul fast float %7240, 0x3FD80E9D60000000
  %7607 = fmul fast float %7606, %7557
  %7608 = fadd fast float %7605, %7607
  %7609 = bitcast float %7608 to i32
  %7610 = sub nsw i32 2129859010, %7609
  %7611 = bitcast i32 %7610 to float
  %7612 = fmul fast float %7575, %7599
  %7613 = fmul fast float %7612, %7605
  %7614 = fmul fast float %7613, %7611
  %7615 = fmul fast float %5884, 0x3FF9999980000000
  %7616 = fsub fast float 5.000000e+00, %7615
  %7617 = call float @dx.op.unary.f32(i32 6, float %7547)  ; FAbs(value)
  %7618 = fsub fast float 1.000000e+00, %7617
  %7619 = fmul fast float %5884, 0x41D9660740000000
  %7620 = fadd fast float %7619, 0xC1EFBF8940000000
  %7621 = bitcast float %7618 to i32
  %7622 = sitofp i32 %7621 to float
  %7623 = fmul fast float %7622, %7616
  %7624 = fadd fast float %7620, %7623
  %7625 = fptosi float %7624 to i32
  %7626 = bitcast i32 %7625 to float
  %7627 = fsub fast float 1.000000e+00, %5720
  %7628 = fsub fast float 1.000000e+00, %5721
  %7629 = fsub fast float 1.000000e+00, %5769
  %7630 = fmul fast float %7626, %7627
  %7631 = fmul fast float %7626, %7628
  %7632 = fmul fast float %7626, %7629
  %7633 = fadd fast float %7630, %5720
  %7634 = fadd fast float %7631, %5721
  %7635 = fadd fast float %7632, %5769
  br i1 %5907, label %7636, label %7659

; <label>:7636                                    ; preds = %7518
  %7637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4535, float %7617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = fadd fast float %7638, -5.000000e-01
  %7642 = fadd fast float %7639, -5.000000e-01
  %7643 = fadd fast float %7640, -5.000000e-01
  %7644 = fmul fast float %5720, 4.000000e+00
  %7645 = fmul fast float %7644, %7627
  %7646 = fmul fast float %7645, %7641
  %7647 = fmul fast float %5721, 4.000000e+00
  %7648 = fmul fast float %7647, %7628
  %7649 = fmul fast float %7648, %7642
  %7650 = fmul fast float %5769, 4.000000e+00
  %7651 = fmul fast float %7650, %7629
  %7652 = fmul fast float %7651, %7643
  %7653 = fadd fast float %7646, %7633
  %7654 = fadd fast float %7649, %7634
  %7655 = fadd fast float %7652, %7635
  %7656 = call float @dx.op.unary.f32(i32 7, float %7653)  ; Saturate(value)
  %7657 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7658 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  br label %7659

; <label>:7659                                    ; preds = %7636, %7518
  %7660 = phi float [ %7656, %7636 ], [ %7633, %7518 ]
  %7661 = phi float [ %7657, %7636 ], [ %7634, %7518 ]
  %7662 = phi float [ %7658, %7636 ], [ %7635, %7518 ]
  %7663 = fmul fast float %7546, 9.843750e-01
  %7664 = fadd fast float %7663, 7.812500e-03
  %7665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %50, float %7664, float %5888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.ResRet.f32 %7665, 3
  %7670 = fsub fast float %7668, %7666
  %7671 = fsub fast float %7669, %7667
  %7672 = fmul fast float %7670, %5894
  %7673 = fmul fast float %7671, %5894
  %7674 = fadd fast float %7672, %7666
  %7675 = fadd fast float %7673, %7667
  %7676 = fmul fast float %7674, %5720
  %7677 = fmul fast float %7674, %5721
  %7678 = fmul fast float %7674, %5769
  %7679 = fadd fast float %7676, %7675
  %7680 = fadd fast float %7677, %7675
  %7681 = fadd fast float %7678, %7675
  br i1 %5907, label %7682, label %7705

; <label>:7682                                    ; preds = %7659
  %7683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4535, float %7546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7684 = extractvalue %dx.types.ResRet.f32 %7683, 0
  %7685 = extractvalue %dx.types.ResRet.f32 %7683, 1
  %7686 = extractvalue %dx.types.ResRet.f32 %7683, 2
  %7687 = fadd fast float %7684, -5.000000e-01
  %7688 = fadd fast float %7685, -5.000000e-01
  %7689 = fadd fast float %7686, -5.000000e-01
  %7690 = fmul fast float %5720, 4.000000e+00
  %7691 = fmul fast float %7690, %7627
  %7692 = fmul fast float %7691, %7687
  %7693 = fmul fast float %5721, 4.000000e+00
  %7694 = fmul fast float %7693, %7628
  %7695 = fmul fast float %7694, %7688
  %7696 = fmul fast float %5769, 4.000000e+00
  %7697 = fmul fast float %7696, %7629
  %7698 = fmul fast float %7697, %7689
  %7699 = fadd fast float %7692, %7679
  %7700 = fadd fast float %7695, %7680
  %7701 = fadd fast float %7698, %7681
  %7702 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7703 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  br label %7705

; <label>:7705                                    ; preds = %7682, %7659
  %7706 = phi float [ %7702, %7682 ], [ %7679, %7659 ]
  %7707 = phi float [ %7703, %7682 ], [ %7680, %7659 ]
  %7708 = phi float [ %7704, %7682 ], [ %7681, %7659 ]
  %7709 = call float @dx.op.binary.f32(i32 35, float %7707, float %7708)  ; FMax(a,b)
  %7710 = call float @dx.op.binary.f32(i32 35, float %7706, float %7709)  ; FMax(a,b)
  %7711 = fsub fast float 1.000000e+00, %7710
  %7712 = fmul fast float %7660, %7614
  %7713 = fmul fast float %7661, %7614
  %7714 = fmul fast float %7662, %7614
  %7715 = fsub fast float 1.000000e+00, %7547
  %7716 = bitcast float %7715 to i32
  %7717 = sitofp i32 %7716 to float
  %7718 = fmul fast float %7717, 5.000000e+00
  %7719 = fadd fast float %7718, 0xC1EFBF8940000000
  %7720 = fptosi float %7719 to i32
  %7721 = bitcast i32 %7720 to float
  %7722 = fmul fast float %7721, %4536
  %7723 = fmul fast float %7711, %7722
  %7724 = fmul fast float %7723, %5957
  %7725 = fmul fast float %7723, %5958
  %7726 = fmul fast float %7723, %5959
  %7727 = fadd fast float %7724, %7712
  %7728 = fadd fast float %7725, %7713
  %7729 = fadd fast float %7726, %7714
  %7730 = fmul fast float %7535, %4532
  %7731 = fmul fast float %7730, %7553
  %7732 = fmul fast float %7731, %7711
  %7733 = fmul fast float %7536, %4532
  %7734 = fmul fast float %7733, %7553
  %7735 = fmul fast float %7734, %7711
  %7736 = fmul fast float %7537, %4532
  %7737 = fmul fast float %7736, %7553
  %7738 = fmul fast float %7737, %7711
  %7739 = fadd fast float %7732, %7214
  %7740 = fadd fast float %7735, %7215
  %7741 = fadd fast float %7738, %7216
  %7742 = fmul fast float %7731, %7727
  %7743 = fmul fast float %7734, %7728
  %7744 = fmul fast float %7737, %7729
  %7745 = fadd fast float %7742, %7211
  %7746 = fadd fast float %7743, %7212
  %7747 = fadd fast float %7744, %7213
  br label %7343

; <label>:7748                                    ; preds = %7343
  br label %7749

; <label>:7749                                    ; preds = %7748, %7177
  %7750 = phi float [ %7179, %7177 ], [ %7344, %7748 ]
  %7751 = phi float [ %7180, %7177 ], [ %7345, %7748 ]
  %7752 = phi float [ %7181, %7177 ], [ %7346, %7748 ]
  %7753 = phi float [ %7182, %7177 ], [ %7347, %7748 ]
  %7754 = phi float [ %7183, %7177 ], [ %7348, %7748 ]
  %7755 = phi float [ %7184, %7177 ], [ %7349, %7748 ]
  %7756 = add i32 %7178, 1
  %7757 = icmp ugt i32 %7756, %7174
  br i1 %7757, label %7758, label %7177

; <label>:7758                                    ; preds = %7749
  br label %7759

; <label>:7759                                    ; preds = %7758, %7127, %7117
  %7760 = phi float [ %7118, %7117 ], [ %7118, %7127 ], [ %7750, %7758 ]
  %7761 = phi float [ %7119, %7117 ], [ %7119, %7127 ], [ %7751, %7758 ]
  %7762 = phi float [ %7120, %7117 ], [ %7120, %7127 ], [ %7752, %7758 ]
  %7763 = phi float [ %7121, %7117 ], [ %7121, %7127 ], [ %7753, %7758 ]
  %7764 = phi float [ %7122, %7117 ], [ %7122, %7127 ], [ %7754, %7758 ]
  %7765 = phi float [ %7123, %7117 ], [ %7123, %7127 ], [ %7755, %7758 ]
  %7766 = fmul fast float %4532, %4532
  %7767 = fmul fast float %7766, %5983
  %7768 = fsub fast float -0.000000e+00, %7767
  %7769 = fmul fast float %7766, %5984
  %7770 = fsub fast float -0.000000e+00, %7769
  %7771 = fmul fast float %7766, %5985
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 3
  %7775 = fmul fast float %7763, %5717
  %7776 = fmul fast float %7764, %5718
  %7777 = fmul fast float %7765, %5719
  %7778 = fcmp fast ogt float %99, %224
  %7779 = and i1 %7778, %4943
  %7780 = or i1 %4949, %7779
  %7781 = icmp eq i32 %4942, 2
  %7782 = fcmp fast ole float %99, %224
  %7783 = and i1 %7782, %7781
  %7784 = or i1 %7783, %7780
  br i1 %7779, label %7785, label %8042

; <label>:7785                                    ; preds = %7759
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 3
  %7789 = fmul fast float %7787, %108
  %7790 = fmul fast float %7788, %109
  %7791 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7792 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7793 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7791, float %7792, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.ResRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.ResRet.f32 %7793, 2
  %7797 = extractvalue %dx.types.ResRet.f32 %7793, 3
  %7798 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7791, float %7792, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7799 = extractvalue %dx.types.ResRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.ResRet.f32 %7798, 1
  %7801 = extractvalue %dx.types.ResRet.f32 %7798, 2
  %7802 = extractvalue %dx.types.ResRet.f32 %7798, 3
  %7803 = call float @dx.op.binary.f32(i32 35, float %7795, float %7796)  ; FMax(a,b)
  %7804 = call float @dx.op.binary.f32(i32 35, float %7794, float %7803)  ; FMax(a,b)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7804, float %7797)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 36, float %7800, float %7801)  ; FMin(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7799, float %7806)  ; FMin(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7807, float %7802)  ; FMin(a,b)
  %7809 = fmul fast float %7805, 2.550000e+02
  %7810 = fadd fast float %7809, 0x3F70101020000000
  %7811 = fptoui float %7810 to i32
  %7812 = fmul fast float %7808, 2.550000e+02
  %7813 = fadd fast float %7812, 0x3F70101020000000
  %7814 = fptoui float %7813 to i32
  %7815 = icmp ult i32 %7811, %7814
  br i1 %7815, label %7816, label %7984

; <label>:7816                                    ; preds = %7785
  %7817 = fcmp fast ogt float %98, 9.843750e-01
  %7818 = fadd fast float %99, -4.000000e+00
  %7819 = select i1 %7817, float -4.000000e+00, float %7818
  %7820 = call float @dx.op.binary.f32(i32 35, float %7819, float 0.000000e+00)  ; FMax(a,b)
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = fadd fast float %7822, %7820
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = fmul fast float %7823, %7824
  %7826 = call float @dx.op.unary.f32(i32 23, float %7825)  ; Log(value)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7828 = fmul fast float %7827, %7826
  %7829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7830 = extractvalue %dx.types.CBufRet.f32 %7829, 2
  %7831 = fmul fast float %7828, %7830
  %7832 = call float @dx.op.unary.f32(i32 7, float %7831)  ; Saturate(value)
  %7833 = uitofp i32 %7811 to float
  %7834 = uitofp i32 %7814 to float
  %7835 = fadd fast float %7833, 5.000000e-01
  %7836 = fadd fast float %7834, 5.000000e-01
  %7837 = fmul fast float %7830, %7835
  %7838 = fmul fast float %7830, %7836
  %7839 = fadd fast float %7837, 0x3F0FFB4800000000
  %7840 = fadd fast float %7838, 0xBF0FFB4800000000
  %7841 = call float @dx.op.binary.f32(i32 35, float %7832, float %7839)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7841, float %7840)  ; FMin(a,b)
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7843, 2
  %7846 = extractvalue %dx.types.CBufRet.f32 %7843, 0
  %7847 = fmul fast float %7844, %7842
  %7848 = fadd fast float %7846, %7847
  %7849 = fadd fast float %7846, %7845
  %7850 = fsub fast float %7844, %7845
  %7851 = fadd fast float %7850, %7846
  %7852 = call float @dx.op.binary.f32(i32 35, float %7848, float %7849)  ; FMax(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7852, float %7851)  ; FMin(a,b)
  %7854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7791, float %7792, float %7853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7855 = extractvalue %dx.types.ResRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.ResRet.f32 %7854, 1
  %7857 = extractvalue %dx.types.ResRet.f32 %7854, 2
  %7858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.i32 %7858, 0
  %7860 = extractvalue %dx.types.CBufRet.i32 %7858, 1
  %7861 = uitofp i32 %7859 to float
  %7862 = uitofp i32 %7860 to float
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.CBufRet.f32 %7863, 1
  %7866 = fmul fast float %7861, %7791
  %7867 = fmul fast float %7862, %7792
  %7868 = fadd fast float %7866, -5.000000e-01
  %7869 = fadd fast float %7867, -5.000000e-01
  %7870 = call float @dx.op.unary.f32(i32 22, float %7868)  ; Frc(value)
  %7871 = call float @dx.op.unary.f32(i32 22, float %7869)  ; Frc(value)
  %7872 = fmul fast float %7870, %7870
  %7873 = fmul fast float %7872, %7870
  %7874 = fsub fast float 3.000000e+00, %7870
  %7875 = fmul fast float %7872, %7874
  %7876 = fmul fast float %7870, 3.000000e+00
  %7877 = fmul fast float %7873, 3.000000e+00
  %7878 = fmul fast float %7872, 6.000000e+00
  %7879 = fsub fast float %7877, %7878
  %7880 = fadd fast float %7879, 4.000000e+00
  %7881 = fmul fast float %7880, 0x3FC5555560000000
  %7882 = fmul fast float %7873, -3.000000e+00
  %7883 = fadd fast float %7872, %7870
  %7884 = fmul fast float %7883, 3.000000e+00
  %7885 = fadd fast float %7882, 1.000000e+00
  %7886 = fadd fast float %7885, %7884
  %7887 = fmul fast float %7873, 0x3FC5555560000000
  %7888 = fmul fast float %7871, %7871
  %7889 = fmul fast float %7888, %7871
  %7890 = fsub fast float 3.000000e+00, %7871
  %7891 = fmul fast float %7888, %7890
  %7892 = fmul fast float %7871, 3.000000e+00
  %7893 = fmul fast float %7889, 3.000000e+00
  %7894 = fmul fast float %7888, 6.000000e+00
  %7895 = fsub fast float %7893, %7894
  %7896 = fadd fast float %7895, 4.000000e+00
  %7897 = fmul fast float %7896, 0x3FC5555560000000
  %7898 = fmul fast float %7889, -3.000000e+00
  %7899 = fadd fast float %7888, %7871
  %7900 = fmul fast float %7899, 3.000000e+00
  %7901 = fadd fast float %7898, 1.000000e+00
  %7902 = fadd fast float %7901, %7900
  %7903 = fmul fast float %7889, 0x3FC5555560000000
  %7904 = fadd fast float %7870, 1.000000e+00
  %7905 = fsub fast float 1.000000e+00, %7876
  %7906 = fadd fast float %7905, %7875
  %7907 = fadd fast float %7906, %7880
  %7908 = fmul fast float %7907, 0x3FC5555560000000
  %7909 = fdiv fast float %7881, %7908
  %7910 = fsub fast float %7904, %7909
  %7911 = fsub fast float 1.000000e+00, %7870
  %7912 = fadd fast float %7886, %7873
  %7913 = fmul fast float %7912, 0x3FC5555560000000
  %7914 = fdiv fast float %7887, %7913
  %7915 = fadd fast float %7911, %7914
  %7916 = fadd fast float %7871, 1.000000e+00
  %7917 = fsub fast float 1.000000e+00, %7892
  %7918 = fadd fast float %7917, %7891
  %7919 = fadd fast float %7918, %7896
  %7920 = fmul fast float %7919, 0x3FC5555560000000
  %7921 = fdiv fast float %7897, %7920
  %7922 = fsub fast float %7916, %7921
  %7923 = fsub fast float 1.000000e+00, %7871
  %7924 = fadd fast float %7902, %7889
  %7925 = fmul fast float %7924, 0x3FC5555560000000
  %7926 = fdiv fast float %7903, %7925
  %7927 = fadd fast float %7926, %7923
  %7928 = fmul fast float %7910, %7864
  %7929 = fsub fast float %7791, %7928
  %7930 = fmul fast float %7915, %7864
  %7931 = fadd fast float %7930, %7791
  %7932 = fmul fast float %7927, %7865
  %7933 = fadd fast float %7932, %7792
  %7934 = fmul fast float %7922, %7865
  %7935 = fsub fast float %7792, %7934
  %7936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7929, float %7935, float %7853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.ResRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.ResRet.f32 %7936, 2
  %7940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7931, float %7935, float %7853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7941 = extractvalue %dx.types.ResRet.f32 %7940, 0
  %7942 = extractvalue %dx.types.ResRet.f32 %7940, 1
  %7943 = extractvalue %dx.types.ResRet.f32 %7940, 2
  %7944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7929, float %7933, float %7853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7945 = extractvalue %dx.types.ResRet.f32 %7944, 0
  %7946 = extractvalue %dx.types.ResRet.f32 %7944, 1
  %7947 = extractvalue %dx.types.ResRet.f32 %7944, 2
  %7948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7931, float %7933, float %7853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7949 = extractvalue %dx.types.ResRet.f32 %7948, 0
  %7950 = extractvalue %dx.types.ResRet.f32 %7948, 1
  %7951 = extractvalue %dx.types.ResRet.f32 %7948, 2
  %7952 = fsub fast float %7945, %7937
  %7953 = fsub fast float %7946, %7938
  %7954 = fsub fast float %7947, %7939
  %7955 = fmul fast float %7952, %7925
  %7956 = fmul fast float %7953, %7925
  %7957 = fmul fast float %7954, %7925
  %7958 = fadd fast float %7955, %7937
  %7959 = fadd fast float %7956, %7938
  %7960 = fadd fast float %7957, %7939
  %7961 = fsub fast float %7949, %7941
  %7962 = fsub fast float %7950, %7942
  %7963 = fsub fast float %7951, %7943
  %7964 = fmul fast float %7961, %7925
  %7965 = fmul fast float %7962, %7925
  %7966 = fmul fast float %7963, %7925
  %7967 = fsub fast float %7941, %7958
  %7968 = fadd fast float %7967, %7964
  %7969 = fsub fast float %7942, %7959
  %7970 = fadd fast float %7969, %7965
  %7971 = fsub fast float %7943, %7960
  %7972 = fadd fast float %7971, %7966
  %7973 = fmul fast float %7968, %7913
  %7974 = fmul fast float %7970, %7913
  %7975 = fmul fast float %7972, %7913
  %7976 = fadd fast float %7973, %7958
  %7977 = fadd fast float %7974, %7959
  %7978 = fadd fast float %7975, %7960
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7981 = fmul fast float %7976, %7980
  %7982 = fmul fast float %7977, %7980
  %7983 = fmul fast float %7978, %7980
  br label %7984

; <label>:7984                                    ; preds = %7816, %7785
  %7985 = phi float [ %7855, %7816 ], [ 1.000000e+00, %7785 ]
  %7986 = phi float [ %7856, %7816 ], [ 1.000000e+00, %7785 ]
  %7987 = phi float [ %7857, %7816 ], [ 1.000000e+00, %7785 ]
  %7988 = phi float [ %7981, %7816 ], [ 0.000000e+00, %7785 ]
  %7989 = phi float [ %7982, %7816 ], [ 0.000000e+00, %7785 ]
  %7990 = phi float [ %7983, %7816 ], [ 0.000000e+00, %7785 ]
  %7991 = fmul fast float %7988, %7768
  %7992 = fmul fast float %7989, %7770
  %7993 = fmul fast float %7990, %7772
  %7994 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call float @dx.op.dot3.f32(i32 55, float %7991, float %7992, float %7993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7996 = select i1 %261, float %7994, float %7985
  %7997 = select i1 %261, float %7994, float %7986
  %7998 = select i1 %261, float 1.000000e+00, float %7987
  %7999 = select i1 %261, float %7995, float %7991
  %8000 = select i1 %261, float 0.000000e+00, float %7992
  %8001 = select i1 %261, float 0.000000e+00, float %7993
  %8002 = fmul fast float %7996, %7775
  %8003 = fmul fast float %7997, %7776
  %8004 = fmul fast float %7998, %7777
  %8005 = fadd fast float %8002, %7999
  %8006 = fadd fast float %8003, %8000
  %8007 = fadd fast float %8001, %8004
  %8008 = fmul fast float %7996, %7760
  %8009 = fmul fast float %7997, %7761
  %8010 = fmul fast float %7998, %7762
  %8011 = fmul fast float %144, %7787
  %8012 = fmul fast float %146, %7788
  %8013 = fsub fast float 1.000000e+00, %8011
  %8014 = fsub fast float 1.000000e+00, %8012
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.CBufRet.f32 %8015, 2
  %8019 = fmul fast float %8013, %8016
  %8020 = fmul fast float %8013, %8017
  %8021 = fmul fast float %8013, %8018
  %8022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8023 = extractvalue %dx.types.CBufRet.f32 %8022, 0
  %8024 = extractvalue %dx.types.CBufRet.f32 %8022, 1
  %8025 = extractvalue %dx.types.CBufRet.f32 %8022, 2
  %8026 = fmul fast float %8014, %8023
  %8027 = fmul fast float %8014, %8024
  %8028 = fmul fast float %8014, %8025
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8033 = fadd fast float %8026, %8030
  %8034 = fadd fast float %8033, %8019
  %8035 = fadd fast float %8027, %8031
  %8036 = fadd fast float %8035, %8020
  %8037 = fadd fast float %8028, %8032
  %8038 = fadd fast float %8037, %8021
  %8039 = fmul fast float %8034, %224
  %8040 = fmul fast float %8036, %224
  %8041 = fmul fast float %8038, %224
  br label %8042

; <label>:8042                                    ; preds = %7984, %7759
  %8043 = phi float [ %8039, %7984 ], [ %195, %7759 ]
  %8044 = phi float [ %8040, %7984 ], [ %196, %7759 ]
  %8045 = phi float [ %8041, %7984 ], [ %197, %7759 ]
  %8046 = phi float [ %224, %7984 ], [ %99, %7759 ]
  %8047 = phi float [ %8005, %7984 ], [ %7775, %7759 ]
  %8048 = phi float [ %8006, %7984 ], [ %7776, %7759 ]
  %8049 = phi float [ %8007, %7984 ], [ %7777, %7759 ]
  %8050 = phi float [ %8008, %7984 ], [ %7760, %7759 ]
  %8051 = phi float [ %8009, %7984 ], [ %7761, %7759 ]
  %8052 = phi float [ %8010, %7984 ], [ %7762, %7759 ]
  br i1 %7784, label %9205, label %8053

; <label>:8053                                    ; preds = %8042
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.CBufRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.CBufRet.f32 %8054, 2
  %8058 = extractvalue %dx.types.CBufRet.f32 %8054, 3
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.CBufRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.CBufRet.f32 %8059, 2
  %8063 = extractvalue %dx.types.CBufRet.f32 %8059, 3
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.CBufRet.f32 %8064, 3
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 0
  %8071 = extractvalue %dx.types.CBufRet.f32 %8069, 1
  %8072 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8073 = extractvalue %dx.types.CBufRet.f32 %8069, 3
  %8074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.f32 %8074, 3
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 3
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8080 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8081 = fcmp fast olt float %8080, -5.000000e-01
  %8082 = call float @dx.op.dot3.f32(i32 55, float %8043, float %8044, float %8045, float %8043, float %8044, float %8045)  ; Dot3(ax,ay,az,bx,by,bz)
  %8083 = call float @dx.op.unary.f32(i32 25, float %8082)  ; Rsqrt(value)
  %8084 = fmul fast float %8083, %8082
  %8085 = fmul fast float %8083, %8043
  %8086 = fmul fast float %8083, %8044
  %8087 = fmul fast float %8083, %8045
  %8088 = fadd fast float %8084, %8058
  %8089 = call float @dx.op.dot3.f32(i32 55, float %8085, float %8086, float %8087, float %8055, float %8056, float %8057)  ; Dot3(ax,ay,az,bx,by,bz)
  %8090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.i32 %8090, 1
  %8092 = and i32 %8091, 1
  %8093 = icmp ne i32 %8092, 0
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8096 = fcmp fast ogt float %8095, 0.000000e+00
  %8097 = and i1 %8093, %8096
  br i1 %8097, label %8098, label %8504, !dx.controlflow.hints !128

; <label>:8098                                    ; preds = %8053
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.f32 %8101, 2
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 2
  %8105 = fsub fast float %8102, %8104
  %8106 = and i32 %8091, 2
  %8107 = extractvalue %dx.types.CBufRet.i32 %8090, 0
  %8108 = call i32 @dx.op.binary.i32(i32 40, i32 %8107, i32 3)  ; UMin(a,b)
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 0
  %8111 = extractvalue %dx.types.CBufRet.f32 %8109, 1
  %8112 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %8114 = fsub fast float %8110, %8112
  %8115 = fsub fast float %8111, %8113
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 0
  %8118 = fcmp fast ogt float %8117, 0.000000e+00
  %8119 = fsub fast float -0.000000e+00, %8114
  %8120 = fsub fast float -0.000000e+00, %8115
  %8121 = call float @dx.op.dot2.f32(i32 54, float %8085, float %8086, float %8085, float %8086)  ; Dot2(ax,ay,bx,by)
  %8122 = call float @dx.op.dot2.f32(i32 54, float %8085, float %8086, float %8119, float %8120)  ; Dot2(ax,ay,bx,by)
  %8123 = fmul fast float %8122, 2.000000e+00
  %8124 = call float @dx.op.dot2.f32(i32 54, float %8119, float %8120, float %8119, float %8120)  ; Dot2(ax,ay,bx,by)
  %8125 = fmul fast float %8117, %8117
  %8126 = fsub fast float %8124, %8125
  %8127 = fmul fast float %8123, %8123
  %8128 = fmul fast float %8121, 4.000000e+00
  %8129 = fmul fast float %8128, %8126
  %8130 = fsub fast float %8127, %8129
  %8131 = fcmp fast ogt float %8130, 0.000000e+00
  br i1 %8131, label %8132, label %8147

; <label>:8132                                    ; preds = %8098
  %8133 = fcmp fast ogt float %8123, 0.000000e+00
  %8134 = call float @dx.op.unary.f32(i32 24, float %8130)  ; Sqrt(value)
  %8135 = fsub fast float -0.000000e+00, %8134
  %8136 = select i1 %8133, float %8134, float %8135
  %8137 = fadd fast float %8136, %8123
  %8138 = fmul float %8137, -5.000000e-01
  %8139 = fdiv fast float %8138, %8121
  %8140 = call float @dx.op.binary.f32(i32 35, float %8139, float 0.000000e+00)  ; FMax(a,b)
  %8141 = call float @dx.op.binary.f32(i32 36, float %8084, float %8140)  ; FMin(a,b)
  %8142 = fdiv fast float %8126, %8138
  %8143 = call float @dx.op.binary.f32(i32 35, float %8142, float 0.000000e+00)  ; FMax(a,b)
  %8144 = call float @dx.op.binary.f32(i32 36, float %8084, float %8143)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8141, float %8144)  ; FMin(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8141, float %8144)  ; FMax(a,b)
  br label %8147

; <label>:8147                                    ; preds = %8132, %8098
  %8148 = phi float [ %8146, %8132 ], [ -1.000000e+00, %8098 ]
  %8149 = phi float [ %8145, %8132 ], [ -1.000000e+00, %8098 ]
  %8150 = phi i1 [ true, %8132 ], [ false, %8098 ]
  %8151 = and i1 %8118, %8150
  br i1 %8151, label %8152, label %8154

; <label>:8152                                    ; preds = %8147
  %8153 = fcmp fast oeq float %8149, %8148
  br i1 %8153, label %8457, label %8155

; <label>:8154                                    ; preds = %8147
  br i1 %8118, label %8457, label %8155

; <label>:8155                                    ; preds = %8154, %8152
  %8156 = phi float [ %8084, %8154 ], [ %8148, %8152 ]
  %8157 = phi float [ 0.000000e+00, %8154 ], [ %8149, %8152 ]
  %8158 = icmp ne i32 %8106, 0
  %8159 = fmul fast float %8156, %8087
  %8160 = fadd fast float %8159, %8100
  %8161 = fmul fast float %8160, %8156
  %8162 = select i1 %8158, float 0.000000e+00, float %8161
  %8163 = fcmp fast oeq float %8087, 0.000000e+00
  %8164 = fdiv fast float %8105, %8087
  %8165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8164)  ; FMax(a,b)
  %8166 = select i1 %8163, float %8156, float %8165
  %8167 = call float @dx.op.binary.f32(i32 36, float %8156, float %8166)  ; FMin(a,b)
  %8168 = fcmp fast ogt float %8087, 0.000000e+00
  %8169 = fcmp fast olt float %8105, 0.000000e+00
  br i1 %8168, label %8170, label %8227

; <label>:8170                                    ; preds = %8155
  %8171 = icmp eq i32 %8106, 0
  br i1 %8169, label %8172, label %8216

; <label>:8172                                    ; preds = %8170
  %8173 = select i1 %8171, float %8156, float 0.000000e+00
  %8174 = fsub fast float -0.000000e+00, %8173
  %8175 = call float @dx.op.unary.f32(i32 6, float %8174)  ; FAbs(value)
  %8176 = fmul fast float %8173, %8087
  %8177 = fadd fast float %8176, %8100
  %8178 = fmul fast float %8175, %8177
  %8179 = fsub fast float %8162, %8178
  %8180 = fsub fast float %8156, %8175
  %8181 = select i1 %8171, float %8180, float 0.000000e+00
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = extractvalue %dx.types.CBufRet.f32 %8182, 1
  %8185 = extractvalue %dx.types.CBufRet.f32 %8182, 2
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.CBufRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.CBufRet.f32 %8186, 2
  %8190 = extractvalue %dx.types.CBufRet.f32 %8186, 3
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 3
  %8193 = call float @dx.op.binary.f32(i32 36, float %8179, float %8192)  ; FMin(a,b)
  %8194 = fmul fast float %8190, %8181
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fsub fast float %8187, %8183
  %8197 = fsub fast float %8188, %8184
  %8198 = fsub fast float %8189, %8185
  %8199 = fmul fast float %8195, %8196
  %8200 = fmul fast float %8195, %8197
  %8201 = fmul fast float %8195, %8198
  %8202 = fadd fast float %8199, %8183
  %8203 = fadd fast float %8200, %8184
  %8204 = fadd fast float %8201, %8185
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = fadd fast float %8207, %8206
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8205, 2
  %8211 = extractvalue %dx.types.CBufRet.f32 %8205, 3
  %8212 = fadd fast float %8211, %8210
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = fmul fast float %8209, %8193
  %8215 = fmul fast float %8214, %8213
  br label %8457

; <label>:8216                                    ; preds = %8170
  br i1 %8171, label %8217, label %8238

; <label>:8217                                    ; preds = %8216
  %8218 = call float @dx.op.binary.f32(i32 36, float %8167, float %8157)  ; FMin(a,b)
  %8219 = fsub fast float %8167, %8218
  %8220 = fsub fast float %8219, %8156
  %8221 = call float @dx.op.unary.f32(i32 6, float %8220)  ; FAbs(value)
  %8222 = fadd fast float %8219, %8156
  %8223 = fmul fast float %8222, %8087
  %8224 = fadd fast float %8223, %8100
  %8225 = fmul fast float %8224, %8221
  %8226 = fsub fast float %8162, %8225
  br label %8238

; <label>:8227                                    ; preds = %8155
  br i1 %8169, label %8228, label %8238

; <label>:8228                                    ; preds = %8227
  %8229 = call float @dx.op.binary.f32(i32 35, float %8157, float %8167)  ; FMax(a,b)
  %8230 = icmp eq i32 %8106, 0
  %8231 = select i1 %8230, float %8167, float 0.000000e+00
  %8232 = fsub fast float -0.000000e+00, %8231
  %8233 = call float @dx.op.unary.f32(i32 6, float %8232)  ; FAbs(value)
  %8234 = fmul fast float %8231, %8087
  %8235 = fadd fast float %8234, %8100
  %8236 = fmul fast float %8233, %8235
  %8237 = fsub fast float %8162, %8236
  br label %8238

; <label>:8238                                    ; preds = %8228, %8227, %8217, %8216
  %8239 = phi float [ %8157, %8216 ], [ %8157, %8217 ], [ %8229, %8228 ], [ %8157, %8227 ]
  %8240 = phi float [ 0.000000e+00, %8216 ], [ %8221, %8217 ], [ %8233, %8228 ], [ 0.000000e+00, %8227 ]
  %8241 = phi float [ %8162, %8216 ], [ %8226, %8217 ], [ %8237, %8228 ], [ %8162, %8227 ]
  %8242 = phi float [ %8167, %8216 ], [ %8167, %8217 ], [ %8156, %8228 ], [ %8156, %8227 ]
  %8243 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8243, align 4, !tbaa !129, !noalias !131
  %8244 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8244, align 4, !tbaa !129, !noalias !131
  %8245 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8245, align 4, !tbaa !129, !noalias !131
  %8246 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8246, align 4, !tbaa !129, !noalias !131
  %8247 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8247, align 4, !tbaa !129, !noalias !131
  %8248 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8248, align 4, !tbaa !129, !noalias !131
  %8249 = icmp sgt i32 %8108, 0
  br i1 %8249, label %8250, label %8311

; <label>:8250                                    ; preds = %8238
  br label %8251

; <label>:8251                                    ; preds = %8300, %8250
  %8252 = phi i32 [ %8301, %8300 ], [ 0, %8250 ]
  %8253 = phi i32 [ %8302, %8300 ], [ 0, %8250 ]
  %8254 = add nuw i32 %8253, 171
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8254)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 0
  %8260 = extractvalue %dx.types.CBufRet.f32 %8258, 1
  %8261 = fsub fast float %8256, %8259
  %8262 = fsub fast float %8257, %8260
  %8263 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8264 = fsub fast float -0.000000e+00, %8261
  %8265 = fsub fast float -0.000000e+00, %8262
  %8266 = call float @dx.op.dot2.f32(i32 54, float %8085, float %8086, float %8264, float %8265)  ; Dot2(ax,ay,bx,by)
  %8267 = fmul fast float %8266, 2.000000e+00
  %8268 = call float @dx.op.dot2.f32(i32 54, float %8264, float %8265, float %8264, float %8265)  ; Dot2(ax,ay,bx,by)
  %8269 = fmul fast float %8263, %8263
  %8270 = fsub fast float %8268, %8269
  %8271 = fmul fast float %8267, %8267
  %8272 = fmul fast float %8128, %8270
  %8273 = fsub fast float %8271, %8272
  %8274 = fcmp fast ogt float %8273, 0.000000e+00
  br i1 %8274, label %8275, label %8290

; <label>:8275                                    ; preds = %8251
  %8276 = fcmp fast ogt float %8267, 0.000000e+00
  %8277 = call float @dx.op.unary.f32(i32 24, float %8273)  ; Sqrt(value)
  %8278 = fsub fast float -0.000000e+00, %8277
  %8279 = select i1 %8276, float %8277, float %8278
  %8280 = fadd fast float %8279, %8267
  %8281 = fmul float %8280, -5.000000e-01
  %8282 = fdiv fast float %8281, %8121
  %8283 = call float @dx.op.binary.f32(i32 35, float %8282, float 0.000000e+00)  ; FMax(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8156, float %8283)  ; FMin(a,b)
  %8285 = fdiv fast float %8270, %8281
  %8286 = call float @dx.op.binary.f32(i32 35, float %8285, float 0.000000e+00)  ; FMax(a,b)
  %8287 = call float @dx.op.binary.f32(i32 36, float %8156, float %8286)  ; FMin(a,b)
  %8288 = call float @dx.op.binary.f32(i32 36, float %8284, float %8287)  ; FMin(a,b)
  %8289 = call float @dx.op.binary.f32(i32 35, float %8284, float %8287)  ; FMax(a,b)
  br label %8290

; <label>:8290                                    ; preds = %8275, %8251
  %8291 = phi float [ %8289, %8275 ], [ -1.000000e+00, %8251 ]
  %8292 = phi float [ %8288, %8275 ], [ -1.000000e+00, %8251 ]
  %8293 = phi i1 [ true, %8275 ], [ false, %8251 ]
  br i1 %8293, label %8294, label %8300

; <label>:8294                                    ; preds = %8290
  %8295 = call float @dx.op.binary.f32(i32 35, float %8239, float %8292)  ; FMax(a,b)
  %8296 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8253
  store float %8295, float* %8296, align 4, !tbaa !129, !noalias !131
  %8297 = call float @dx.op.binary.f32(i32 35, float %8239, float %8291)  ; FMax(a,b)
  %8298 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8253
  store float %8297, float* %8298, align 4, !tbaa !129, !noalias !131
  %8299 = add nsw i32 %8252, 1
  br label %8300

; <label>:8300                                    ; preds = %8294, %8290
  %8301 = phi i32 [ %8299, %8294 ], [ %8252, %8290 ]
  %8302 = add nuw nsw i32 %8253, 1
  %8303 = icmp eq i32 %8302, %8108
  br i1 %8303, label %8304, label %8251

; <label>:8304                                    ; preds = %8300
  %8305 = load float, float* %8245, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8306 = load float, float* %8244, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8307 = load float, float* %8243, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8308 = load float, float* %8248, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8309 = load float, float* %8247, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8310 = load float, float* %8246, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8311

; <label>:8311                                    ; preds = %8304, %8238
  %8312 = phi float [ -1.000000e+00, %8238 ], [ %8310, %8304 ]
  %8313 = phi float [ -1.000000e+00, %8238 ], [ %8309, %8304 ]
  %8314 = phi float [ -1.000000e+00, %8238 ], [ %8308, %8304 ]
  %8315 = phi float [ -1.000000e+00, %8238 ], [ %8307, %8304 ]
  %8316 = phi float [ -1.000000e+00, %8238 ], [ %8306, %8304 ]
  %8317 = phi float [ -1.000000e+00, %8238 ], [ %8305, %8304 ]
  %8318 = phi i32 [ 0, %8238 ], [ %8301, %8304 ]
  %8319 = call float @dx.op.binary.f32(i32 36, float %8316, float %8317)  ; FMin(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8315, float %8319)  ; FMin(a,b)
  %8321 = call float @dx.op.binary.f32(i32 35, float %8315, float %8316)  ; FMax(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8321, float %8317)  ; FMin(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8315, float %8316)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 35, float %8323, float %8322)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8316, float %8317)  ; FMax(a,b)
  %8326 = call float @dx.op.binary.f32(i32 35, float %8315, float %8325)  ; FMax(a,b)
  store float %8320, float* %8243, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8324, float* %8244, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8326, float* %8245, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8327 = call float @dx.op.binary.f32(i32 36, float %8313, float %8314)  ; FMin(a,b)
  %8328 = call float @dx.op.binary.f32(i32 36, float %8312, float %8327)  ; FMin(a,b)
  %8329 = call float @dx.op.binary.f32(i32 35, float %8312, float %8313)  ; FMax(a,b)
  %8330 = call float @dx.op.binary.f32(i32 36, float %8329, float %8314)  ; FMin(a,b)
  %8331 = call float @dx.op.binary.f32(i32 36, float %8312, float %8313)  ; FMin(a,b)
  %8332 = call float @dx.op.binary.f32(i32 35, float %8331, float %8330)  ; FMax(a,b)
  %8333 = call float @dx.op.binary.f32(i32 35, float %8313, float %8314)  ; FMax(a,b)
  %8334 = call float @dx.op.binary.f32(i32 35, float %8312, float %8333)  ; FMax(a,b)
  store float %8328, float* %8246, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8332, float* %8247, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8334, float* %8248, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8335 = sub nsw i32 3, %8318
  %8336 = icmp sgt i32 %8335, 2
  br i1 %8336, label %8337, label %8375

; <label>:8337                                    ; preds = %8311
  %8338 = icmp eq i32 %8106, 0
  %8339 = fsub fast float %8156, %8240
  %8340 = select i1 %8338, float %8339, float %8240
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.CBufRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.CBufRet.f32 %8345, 2
  %8349 = extractvalue %dx.types.CBufRet.f32 %8345, 3
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8352 = call float @dx.op.binary.f32(i32 36, float %8241, float %8351)  ; FMin(a,b)
  %8353 = fmul fast float %8349, %8340
  %8354 = call float @dx.op.unary.f32(i32 7, float %8353)  ; Saturate(value)
  %8355 = fsub fast float %8346, %8342
  %8356 = fsub fast float %8347, %8343
  %8357 = fsub fast float %8348, %8344
  %8358 = fmul fast float %8354, %8355
  %8359 = fmul fast float %8354, %8356
  %8360 = fmul fast float %8354, %8357
  %8361 = fadd fast float %8358, %8342
  %8362 = fadd fast float %8359, %8343
  %8363 = fadd fast float %8360, %8344
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 0
  %8366 = extractvalue %dx.types.CBufRet.f32 %8364, 1
  %8367 = fadd fast float %8366, %8365
  %8368 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8370 = extractvalue %dx.types.CBufRet.f32 %8364, 3
  %8371 = fadd fast float %8370, %8369
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fmul fast float %8368, %8352
  %8374 = fmul fast float %8373, %8372
  br label %8457

; <label>:8375                                    ; preds = %8311
  %8376 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8335
  %8377 = load float, float* %8376, align 4, !tbaa !129, !noalias !131
  %8378 = fcmp fast olt float %8377, %8242
  %8379 = icmp sgt i32 %8318, 0
  %8380 = and i1 %8379, %8378
  br i1 %8380, label %8381, label %8418

; <label>:8381                                    ; preds = %8375
  br label %8382

; <label>:8382                                    ; preds = %8411, %8381
  %8383 = phi float [ %8412, %8411 ], [ %8240, %8381 ]
  %8384 = phi float [ %8413, %8411 ], [ %8241, %8381 ]
  %8385 = phi float [ %8393, %8411 ], [ %8377, %8381 ]
  %8386 = phi i32 [ %8390, %8411 ], [ %8335, %8381 ]
  %8387 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8386
  %8388 = load float, float* %8387, align 4, !tbaa !129, !noalias !131
  %8389 = icmp slt i32 %8386, 2
  %8390 = add nsw i32 %8386, 1
  %8391 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8390
  %8392 = load float, float* %8391, align 4, !tbaa !129, !noalias !131
  %8393 = select i1 %8389, float %8392, float %8156
  %8394 = call float @dx.op.binary.f32(i32 36, float %8393, float %8388)  ; FMin(a,b)
  %8395 = call float @dx.op.binary.f32(i32 36, float %8242, float %8394)  ; FMin(a,b)
  %8396 = icmp eq i32 %8106, 0
  %8397 = fadd fast float %8395, %8385
  %8398 = fmul fast float %8397, %8087
  %8399 = fadd fast float %8398, %8100
  br i1 %8396, label %8405, label %8400

; <label>:8400                                    ; preds = %8382
  %8401 = fsub fast float %8395, %8385
  %8402 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8401)  ; FMax(a,b)
  %8403 = fmul fast float %8402, %8399
  %8404 = fadd fast float %8403, %8384
  br label %8411

; <label>:8405                                    ; preds = %8382
  %8406 = fsub fast float %8385, %8395
  %8407 = call float @dx.op.unary.f32(i32 6, float %8406)  ; FAbs(value)
  %8408 = fadd fast float %8407, %8383
  %8409 = fmul fast float %8407, %8399
  %8410 = fsub fast float %8384, %8409
  br label %8411

; <label>:8411                                    ; preds = %8405, %8400
  %8412 = phi float [ %8402, %8400 ], [ %8408, %8405 ]
  %8413 = phi float [ %8404, %8400 ], [ %8410, %8405 ]
  %8414 = fcmp fast olt float %8393, %8242
  %8415 = icmp slt i32 %8390, 3
  %8416 = and i1 %8415, %8414
  br i1 %8416, label %8382, label %8417

; <label>:8417                                    ; preds = %8411
  br label %8418

; <label>:8418                                    ; preds = %8417, %8375
  %8419 = phi float [ %8240, %8375 ], [ %8412, %8417 ]
  %8420 = phi float [ %8241, %8375 ], [ %8413, %8417 ]
  %8421 = fsub fast float %8156, %8419
  %8422 = select i1 %8158, float %8419, float %8421
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 0
  %8425 = extractvalue %dx.types.CBufRet.f32 %8423, 1
  %8426 = extractvalue %dx.types.CBufRet.f32 %8423, 2
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8430 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %8431 = extractvalue %dx.types.CBufRet.f32 %8427, 3
  %8432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.f32 %8432, 3
  %8434 = call float @dx.op.binary.f32(i32 36, float %8420, float %8433)  ; FMin(a,b)
  %8435 = fmul fast float %8431, %8422
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = fsub fast float %8428, %8424
  %8438 = fsub fast float %8429, %8425
  %8439 = fsub fast float %8430, %8426
  %8440 = fmul fast float %8436, %8437
  %8441 = fmul fast float %8436, %8438
  %8442 = fmul fast float %8436, %8439
  %8443 = fadd fast float %8440, %8424
  %8444 = fadd fast float %8441, %8425
  %8445 = fadd fast float %8442, %8426
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8449 = fadd fast float %8448, %8447
  %8450 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8446, 2
  %8452 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8453 = fadd fast float %8452, %8451
  %8454 = call float @dx.op.unary.f32(i32 7, float %8453)  ; Saturate(value)
  %8455 = fmul fast float %8450, %8434
  %8456 = fmul fast float %8455, %8454
  br label %8457

; <label>:8457                                    ; preds = %8418, %8337, %8172, %8154, %8152
  %8458 = phi float [ %8181, %8172 ], [ %8340, %8337 ], [ %8422, %8418 ], [ 0.000000e+00, %8152 ], [ 0.000000e+00, %8154 ]
  %8459 = phi float [ %8215, %8172 ], [ %8374, %8337 ], [ %8456, %8418 ], [ 0.000000e+00, %8152 ], [ 0.000000e+00, %8154 ]
  %8460 = phi float [ %8202, %8172 ], [ %8361, %8337 ], [ %8443, %8418 ], [ 0.000000e+00, %8152 ], [ 0.000000e+00, %8154 ]
  %8461 = phi float [ %8203, %8172 ], [ %8362, %8337 ], [ %8444, %8418 ], [ 0.000000e+00, %8152 ], [ 0.000000e+00, %8154 ]
  %8462 = phi float [ %8204, %8172 ], [ %8363, %8337 ], [ %8445, %8418 ], [ 0.000000e+00, %8152 ], [ 0.000000e+00, %8154 ]
  %8463 = fmul fast float %8095, %8459
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8466 = fsub fast float %8102, %8465
  %8467 = fcmp fast olt float %8463, -2.000000e+01
  %8468 = call float @dx.op.unary.f32(i32 21, float %8463)  ; Exp(value)
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8471 = extractvalue %dx.types.CBufRet.f32 %8469, 3
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8474 = fmul fast float %8471, %8466
  %8475 = call float @dx.op.unary.f32(i32 7, float %8474)  ; Saturate(value)
  %8476 = fsub fast float 1.000000e+00, %8475
  %8477 = fmul fast float %8087, 5.000000e-01
  %8478 = fadd fast float %8477, 5.000000e-01
  %8479 = call float @dx.op.unary.f32(i32 7, float %8478)  ; Saturate(value)
  %8480 = fsub fast float 1.000000e+00, %8479
  %8481 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8476)  ; FMax(a,b)
  %8482 = fdiv fast float %8480, %8481
  %8483 = fsub fast float %8466, %8045
  %8484 = call float @dx.op.unary.f32(i32 6, float %8483)  ; FAbs(value)
  %8485 = fmul fast float %8484, %8470
  %8486 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8487 = fsub fast float 1.000000e+00, %8485
  %8488 = fmul fast float %8487, %8486
  %8489 = fadd fast float %8488, %8485
  %8490 = fmul fast float %8473, %8466
  %8491 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8492 = fsub fast float 1.000000e+00, %8489
  %8493 = fmul fast float %8492, %8491
  %8494 = fadd fast float %8493, %8489
  %8495 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8496 = fadd fast float %8468, -1.000000e+00
  %8497 = select i1 %8467, float -1.000000e+00, float %8496
  %8498 = fmul fast float %8495, %8497
  %8499 = fadd fast float %8498, 1.000000e+00
  %8500 = fsub fast float -0.000000e+00, %8498
  %8501 = fmul fast float %8460, %8500
  %8502 = fmul fast float %8461, %8500
  %8503 = fmul fast float %8462, %8500
  br label %8504

; <label>:8504                                    ; preds = %8457, %8053
  %8505 = phi float [ %8458, %8457 ], [ 0.000000e+00, %8053 ]
  %8506 = phi float [ %8499, %8457 ], [ 1.000000e+00, %8053 ]
  %8507 = phi float [ %8501, %8457 ], [ 0.000000e+00, %8053 ]
  %8508 = phi float [ %8502, %8457 ], [ 0.000000e+00, %8053 ]
  %8509 = phi float [ %8503, %8457 ], [ 0.000000e+00, %8053 ]
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 1
  %8512 = fsub fast float 1.000000e+00, %8506
  %8513 = fmul fast float %8512, %8088
  %8514 = fmul fast float %8513, %8511
  %8515 = fsub fast float %8088, %8514
  br i1 %8081, label %8516, label %8545, !dx.controlflow.hints !167

; <label>:8516                                    ; preds = %8504
  %8517 = fmul fast float %8089, %8078
  %8518 = fadd fast float %8517, %8079
  %8519 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8520 = fmul fast float %8060, %8515
  %8521 = fsub fast float -0.000000e+00, %8520
  %8522 = fmul fast float %8061, %8515
  %8523 = fsub fast float -0.000000e+00, %8522
  %8524 = call float @dx.op.unary.f32(i32 21, float %8521)  ; Exp(value)
  %8525 = call float @dx.op.unary.f32(i32 21, float %8523)  ; Exp(value)
  %8526 = call float @dx.op.binary.f32(i32 35, float %8068, float %8524)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8068, float %8525)  ; FMax(a,b)
  %8528 = fsub fast float %8527, %8526
  %8529 = fmul fast float %8528, %8519
  %8530 = fadd fast float %8529, %8526
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fsub fast float %8065, %8070
  %8533 = fsub fast float %8066, %8071
  %8534 = fsub fast float %8067, %8072
  %8535 = fmul fast float %8519, %8532
  %8536 = fmul fast float %8519, %8533
  %8537 = fmul fast float %8519, %8534
  %8538 = fadd fast float %8535, %8070
  %8539 = fadd fast float %8536, %8071
  %8540 = fadd fast float %8537, %8072
  %8541 = fsub fast float 1.000000e+00, %8531
  %8542 = fmul fast float %8541, %8538
  %8543 = fmul fast float %8541, %8539
  %8544 = fmul fast float %8541, %8540
  br label %8604

; <label>:8545                                    ; preds = %8504
  %8546 = fmul fast float %8515, %8077
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  %8548 = fsub fast float 2.000000e+00, %8547
  %8549 = fmul fast float %8547, 9.921875e-01
  %8550 = fmul fast float %8549, %8548
  %8551 = fadd fast float %8550, 3.906250e-03
  %8552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8551, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8553 = extractvalue %dx.types.ResRet.f32 %8552, 0
  %8554 = fsub fast float %8547, %8553
  %8555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8554)  ; FMax(a,b)
  %8556 = fmul fast float %8063, %8045
  %8557 = call float @dx.op.unary.f32(i32 6, float %8556)  ; FAbs(value)
  %8558 = fcmp fast ogt float %8557, 0x3EB0C6F7A0000000
  br i1 %8558, label %8559, label %8565, !dx.controlflow.hints !168

; <label>:8559                                    ; preds = %8545
  %8560 = fmul fast float %8556, 0xBFF7154760000000
  %8561 = call float @dx.op.unary.f32(i32 21, float %8560)  ; Exp(value)
  %8562 = fsub fast float 1.000000e+00, %8561
  %8563 = fdiv fast float %8562, %8556
  %8564 = fmul fast float %8563, %8073
  br label %8565

; <label>:8565                                    ; preds = %8559, %8545
  %8566 = phi float [ %8564, %8559 ], [ %8073, %8545 ]
  %8567 = fadd fast float %8566, %8075
  %8568 = fmul fast float %8567, %8555
  %8569 = fmul fast float %8060, %8568
  %8570 = fsub fast float -0.000000e+00, %8569
  %8571 = fmul fast float %8061, %8568
  %8572 = fsub fast float -0.000000e+00, %8571
  %8573 = fmul fast float %8062, %8568
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = call float @dx.op.unary.f32(i32 21, float %8570)  ; Exp(value)
  %8576 = call float @dx.op.unary.f32(i32 21, float %8572)  ; Exp(value)
  %8577 = call float @dx.op.unary.f32(i32 21, float %8574)  ; Exp(value)
  %8578 = fmul fast float %8089, %8089
  %8579 = fadd fast float %8578, 1.000000e+00
  %8580 = fmul fast float %8579, 0x3FAE8EC8A0000000
  %8581 = fmul fast float %8580, %8070
  %8582 = fmul fast float %8580, %8071
  %8583 = fmul fast float %8580, %8072
  %8584 = fmul fast float %8089, %8068
  %8585 = fsub fast float 1.000000e+00, %8584
  %8586 = fmul fast float %8068, %8068
  %8587 = fsub fast float 1.000000e+00, %8586
  %8588 = fmul fast float %8587, 0x3FB45F3060000000
  %8589 = fmul fast float %8585, %8585
  %8590 = fdiv fast float 1.000000e+00, %8589
  %8591 = fmul fast float %8588, %8590
  %8592 = fmul fast float %8591, %8065
  %8593 = fmul fast float %8591, %8066
  %8594 = fmul fast float %8591, %8067
  %8595 = fadd fast float %8592, %8581
  %8596 = fadd fast float %8593, %8582
  %8597 = fadd fast float %8594, %8583
  %8598 = fsub fast float 1.000000e+00, %8575
  %8599 = fsub fast float 1.000000e+00, %8576
  %8600 = fsub fast float 1.000000e+00, %8577
  %8601 = fmul fast float %8595, %8598
  %8602 = fmul fast float %8596, %8599
  %8603 = fmul fast float %8597, %8600
  br label %8604

; <label>:8604                                    ; preds = %8565, %8516
  %8605 = phi float [ %8542, %8516 ], [ %8601, %8565 ]
  %8606 = phi float [ %8543, %8516 ], [ %8602, %8565 ]
  %8607 = phi float [ %8544, %8516 ], [ %8603, %8565 ]
  %8608 = phi float [ %8531, %8516 ], [ %8575, %8565 ]
  %8609 = phi float [ %8531, %8516 ], [ %8576, %8565 ]
  %8610 = phi float [ %8531, %8516 ], [ %8577, %8565 ]
  br i1 %8097, label %8611, label %8809, !dx.controlflow.hints !169

; <label>:8611                                    ; preds = %8604
  %8612 = extractvalue %dx.types.CBufRet.f32 %8510, 0
  %8613 = fmul fast float %8612, %8512
  %8614 = fsub fast float %8507, %8605
  %8615 = fsub fast float %8508, %8606
  %8616 = fsub fast float %8509, %8607
  %8617 = fmul fast float %8613, %8614
  %8618 = fmul fast float %8613, %8615
  %8619 = fmul fast float %8613, %8616
  %8620 = fadd fast float %8617, %8605
  %8621 = fadd fast float %8618, %8606
  %8622 = fadd fast float %8619, %8607
  %8623 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8608)  ; FMax(a,b)
  %8624 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8609)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8610)  ; FMax(a,b)
  %8626 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8506)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 35, float %8505, float %8515)  ; FMax(a,b)
  %8628 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8627)  ; FMax(a,b)
  %8629 = fdiv fast float %8505, %8628
  %8630 = call float @dx.op.unary.f32(i32 7, float %8629)  ; Saturate(value)
  %8631 = fdiv fast float %8515, %8628
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fcmp fast une float %8626, 1.000000e+00
  br i1 %8633, label %8634, label %8647, !dx.controlflow.hints !170

; <label>:8634                                    ; preds = %8611
  %8635 = call float @dx.op.unary.f32(i32 23, float %8626)  ; Log(value)
  %8636 = fmul fast float %8635, 0x3FE62E4300000000
  %8637 = fmul fast float %8507, %8636
  %8638 = fsub fast float -0.000000e+00, %8637
  %8639 = fmul fast float %8508, %8636
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = fmul fast float %8509, %8636
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = fsub fast float 1.000000e+00, %8626
  %8644 = fdiv fast float %8638, %8643
  %8645 = fdiv fast float %8640, %8643
  %8646 = fdiv fast float %8642, %8643
  br label %8647

; <label>:8647                                    ; preds = %8634, %8611
  %8648 = phi float [ %8644, %8634 ], [ %8507, %8611 ]
  %8649 = phi float [ %8645, %8634 ], [ %8508, %8611 ]
  %8650 = phi float [ %8646, %8634 ], [ %8509, %8611 ]
  %8651 = phi float [ %8636, %8634 ], [ 0.000000e+00, %8611 ]
  %8652 = fcmp fast une float %8623, 1.000000e+00
  br i1 %8652, label %8653, label %8660, !dx.controlflow.hints !171

; <label>:8653                                    ; preds = %8647
  %8654 = call float @dx.op.unary.f32(i32 23, float %8623)  ; Log(value)
  %8655 = fmul fast float %8654, 0x3FE62E4300000000
  %8656 = fmul fast float %8620, %8655
  %8657 = fsub fast float -0.000000e+00, %8656
  %8658 = fsub fast float 1.000000e+00, %8623
  %8659 = fdiv fast float %8657, %8658
  br label %8660

; <label>:8660                                    ; preds = %8653, %8647
  %8661 = phi float [ %8659, %8653 ], [ %8620, %8647 ]
  %8662 = phi float [ %8655, %8653 ], [ 0.000000e+00, %8647 ]
  %8663 = fcmp fast une float %8624, 1.000000e+00
  br i1 %8663, label %8664, label %8671, !dx.controlflow.hints !171

; <label>:8664                                    ; preds = %8660
  %8665 = call float @dx.op.unary.f32(i32 23, float %8624)  ; Log(value)
  %8666 = fmul fast float %8665, 0x3FE62E4300000000
  %8667 = fmul fast float %8621, %8666
  %8668 = fsub fast float -0.000000e+00, %8667
  %8669 = fsub fast float 1.000000e+00, %8624
  %8670 = fdiv fast float %8668, %8669
  br label %8671

; <label>:8671                                    ; preds = %8664, %8660
  %8672 = phi float [ %8670, %8664 ], [ %8621, %8660 ]
  %8673 = phi float [ %8666, %8664 ], [ 0.000000e+00, %8660 ]
  %8674 = fcmp fast une float %8625, 1.000000e+00
  br i1 %8674, label %8675, label %8682, !dx.controlflow.hints !171

; <label>:8675                                    ; preds = %8671
  %8676 = call float @dx.op.unary.f32(i32 23, float %8625)  ; Log(value)
  %8677 = fmul fast float %8676, 0x3FE62E4300000000
  %8678 = fmul fast float %8622, %8677
  %8679 = fsub fast float -0.000000e+00, %8678
  %8680 = fsub fast float 1.000000e+00, %8625
  %8681 = fdiv fast float %8679, %8680
  br label %8682

; <label>:8682                                    ; preds = %8675, %8671
  %8683 = phi float [ %8681, %8675 ], [ %8622, %8671 ]
  %8684 = phi float [ %8677, %8675 ], [ 0.000000e+00, %8671 ]
  %8685 = fmul fast float %8648, %8632
  %8686 = fmul fast float %8649, %8632
  %8687 = fmul fast float %8650, %8632
  %8688 = fmul fast float %8651, %8632
  %8689 = fmul fast float %8661, %8630
  %8690 = fmul fast float %8672, %8630
  %8691 = fmul fast float %8683, %8630
  %8692 = fmul fast float %8662, %8630
  %8693 = fmul fast float %8673, %8630
  %8694 = fmul fast float %8684, %8630
  %8695 = fadd fast float %8689, %8685
  %8696 = fadd fast float %8690, %8686
  %8697 = fadd fast float %8691, %8687
  %8698 = fadd fast float %8692, %8688
  %8699 = fadd fast float %8693, %8688
  %8700 = fadd fast float %8694, %8688
  %8701 = fcmp fast une float %8698, 0.000000e+00
  br i1 %8701, label %8702, label %8709, !dx.controlflow.hints !172

; <label>:8702                                    ; preds = %8682
  %8703 = fmul fast float %8698, 0x3FF7154760000000
  %8704 = call float @dx.op.unary.f32(i32 21, float %8703)  ; Exp(value)
  %8705 = fsub fast float 1.000000e+00, %8704
  %8706 = fmul fast float %8695, %8705
  %8707 = fsub fast float -0.000000e+00, %8706
  %8708 = fdiv fast float %8707, %8698
  br label %8709

; <label>:8709                                    ; preds = %8702, %8682
  %8710 = phi float [ %8704, %8702 ], [ 1.000000e+00, %8682 ]
  %8711 = phi float [ %8708, %8702 ], [ %8695, %8682 ]
  %8712 = fcmp fast une float %8699, 0.000000e+00
  br i1 %8712, label %8713, label %8720, !dx.controlflow.hints !172

; <label>:8713                                    ; preds = %8709
  %8714 = fmul fast float %8699, 0x3FF7154760000000
  %8715 = call float @dx.op.unary.f32(i32 21, float %8714)  ; Exp(value)
  %8716 = fsub fast float 1.000000e+00, %8715
  %8717 = fmul fast float %8696, %8716
  %8718 = fsub fast float -0.000000e+00, %8717
  %8719 = fdiv fast float %8718, %8699
  br label %8720

; <label>:8720                                    ; preds = %8713, %8709
  %8721 = phi float [ %8715, %8713 ], [ 1.000000e+00, %8709 ]
  %8722 = phi float [ %8719, %8713 ], [ %8696, %8709 ]
  %8723 = fcmp fast une float %8700, 0.000000e+00
  br i1 %8723, label %8724, label %8731, !dx.controlflow.hints !172

; <label>:8724                                    ; preds = %8720
  %8725 = fmul fast float %8700, 0x3FF7154760000000
  %8726 = call float @dx.op.unary.f32(i32 21, float %8725)  ; Exp(value)
  %8727 = fsub fast float 1.000000e+00, %8726
  %8728 = fmul fast float %8697, %8727
  %8729 = fsub fast float -0.000000e+00, %8728
  %8730 = fdiv fast float %8729, %8700
  br label %8731

; <label>:8731                                    ; preds = %8724, %8720
  %8732 = phi float [ %8726, %8724 ], [ 1.000000e+00, %8720 ]
  %8733 = phi float [ %8730, %8724 ], [ %8697, %8720 ]
  %8734 = fcmp fast ogt float %8630, %8632
  br i1 %8734, label %8735, label %8755

; <label>:8735                                    ; preds = %8731
  %8736 = fsub fast float 1.000000e+00, %8632
  %8737 = fmul fast float %8648, %8736
  %8738 = fmul fast float %8649, %8736
  %8739 = fmul fast float %8650, %8736
  %8740 = fmul fast float %8651, %8736
  %8741 = fcmp fast une float %8740, 0.000000e+00
  br i1 %8741, label %8742, label %8793, !dx.controlflow.hints !173

; <label>:8742                                    ; preds = %8735
  %8743 = fmul fast float %8740, 0x3FF7154760000000
  %8744 = call float @dx.op.unary.f32(i32 21, float %8743)  ; Exp(value)
  %8745 = fsub fast float 1.000000e+00, %8744
  %8746 = fmul fast float %8737, %8745
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = fmul fast float %8738, %8745
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = fmul fast float %8739, %8745
  %8751 = fsub fast float -0.000000e+00, %8750
  %8752 = fdiv fast float %8747, %8740
  %8753 = fdiv fast float %8749, %8740
  %8754 = fdiv fast float %8751, %8740
  br label %8793

; <label>:8755                                    ; preds = %8731
  %8756 = fsub fast float 1.000000e+00, %8630
  %8757 = fmul fast float %8661, %8756
  %8758 = fmul fast float %8672, %8756
  %8759 = fmul fast float %8683, %8756
  %8760 = fmul fast float %8662, %8756
  %8761 = fmul fast float %8673, %8756
  %8762 = fmul fast float %8684, %8756
  %8763 = fcmp fast une float %8760, 0.000000e+00
  br i1 %8763, label %8764, label %8771, !dx.controlflow.hints !172

; <label>:8764                                    ; preds = %8755
  %8765 = fmul fast float %8760, 0x3FF7154760000000
  %8766 = call float @dx.op.unary.f32(i32 21, float %8765)  ; Exp(value)
  %8767 = fsub fast float 1.000000e+00, %8766
  %8768 = fmul fast float %8757, %8767
  %8769 = fsub fast float -0.000000e+00, %8768
  %8770 = fdiv fast float %8769, %8760
  br label %8771

; <label>:8771                                    ; preds = %8764, %8755
  %8772 = phi float [ %8770, %8764 ], [ %8757, %8755 ]
  %8773 = phi float [ %8766, %8764 ], [ 1.000000e+00, %8755 ]
  %8774 = fcmp fast une float %8761, 0.000000e+00
  br i1 %8774, label %8775, label %8782, !dx.controlflow.hints !172

; <label>:8775                                    ; preds = %8771
  %8776 = fmul fast float %8761, 0x3FF7154760000000
  %8777 = call float @dx.op.unary.f32(i32 21, float %8776)  ; Exp(value)
  %8778 = fsub fast float 1.000000e+00, %8777
  %8779 = fmul fast float %8758, %8778
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = fdiv fast float %8780, %8761
  br label %8782

; <label>:8782                                    ; preds = %8775, %8771
  %8783 = phi float [ %8781, %8775 ], [ %8758, %8771 ]
  %8784 = phi float [ %8777, %8775 ], [ 1.000000e+00, %8771 ]
  %8785 = fcmp fast une float %8762, 0.000000e+00
  br i1 %8785, label %8786, label %8793, !dx.controlflow.hints !172

; <label>:8786                                    ; preds = %8782
  %8787 = fmul fast float %8762, 0x3FF7154760000000
  %8788 = call float @dx.op.unary.f32(i32 21, float %8787)  ; Exp(value)
  %8789 = fsub fast float 1.000000e+00, %8788
  %8790 = fmul fast float %8759, %8789
  %8791 = fsub fast float -0.000000e+00, %8790
  %8792 = fdiv fast float %8791, %8762
  br label %8793

; <label>:8793                                    ; preds = %8786, %8782, %8742, %8735
  %8794 = phi float [ %8792, %8786 ], [ %8754, %8742 ], [ %8739, %8735 ], [ %8759, %8782 ]
  %8795 = phi float [ %8783, %8786 ], [ %8753, %8742 ], [ %8738, %8735 ], [ %8783, %8782 ]
  %8796 = phi float [ %8772, %8786 ], [ %8752, %8742 ], [ %8737, %8735 ], [ %8772, %8782 ]
  %8797 = phi float [ %8788, %8786 ], [ %8744, %8742 ], [ 1.000000e+00, %8735 ], [ 1.000000e+00, %8782 ]
  %8798 = phi float [ %8784, %8786 ], [ %8744, %8742 ], [ 1.000000e+00, %8735 ], [ %8784, %8782 ]
  %8799 = phi float [ %8773, %8786 ], [ %8744, %8742 ], [ 1.000000e+00, %8735 ], [ %8773, %8782 ]
  %8800 = fmul fast float %8799, %8711
  %8801 = fmul fast float %8798, %8722
  %8802 = fmul fast float %8797, %8733
  %8803 = fadd fast float %8800, %8796
  %8804 = fadd fast float %8801, %8795
  %8805 = fadd fast float %8802, %8794
  %8806 = fmul fast float %8799, %8710
  %8807 = fmul fast float %8798, %8721
  %8808 = fmul fast float %8797, %8732
  br label %8809

; <label>:8809                                    ; preds = %8793, %8604
  %8810 = phi float [ %8808, %8793 ], [ %8610, %8604 ]
  %8811 = phi float [ %8807, %8793 ], [ %8609, %8604 ]
  %8812 = phi float [ %8806, %8793 ], [ %8608, %8604 ]
  %8813 = phi float [ %8805, %8793 ], [ %8607, %8604 ]
  %8814 = phi float [ %8804, %8793 ], [ %8606, %8604 ]
  %8815 = phi float [ %8803, %8793 ], [ %8605, %8604 ]
  %8816 = fmul fast float %8815, %7768
  %8817 = fmul fast float %8814, %7770
  %8818 = fmul fast float %8813, %7772
  %8819 = call float @dx.op.dot3.f32(i32 55, float %8812, float %8811, float %8810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8820 = call float @dx.op.dot3.f32(i32 55, float %8816, float %8817, float %8818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8821 = select i1 %261, float %8819, float %8812
  %8822 = select i1 %261, float %8819, float %8811
  %8823 = select i1 %261, float 1.000000e+00, float %8810
  %8824 = select i1 %261, float %8820, float %8816
  %8825 = select i1 %261, float 0.000000e+00, float %8817
  %8826 = select i1 %261, float 0.000000e+00, float %8818
  %8827 = fmul fast float %8821, %8047
  %8828 = fmul fast float %8822, %8048
  %8829 = fmul fast float %8823, %8049
  %8830 = fadd fast float %8827, %8824
  %8831 = fadd fast float %8828, %8825
  %8832 = fadd fast float %8826, %8829
  %8833 = fmul fast float %8821, %8050
  %8834 = fmul fast float %8822, %8051
  %8835 = fmul fast float %8823, %8052
  %8836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.i32 %8836, 0
  %8838 = icmp eq i32 %8837, 0
  br i1 %8838, label %9205, label %8839, !dx.controlflow.hints !174

; <label>:8839                                    ; preds = %8809
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %8842 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8843 = fmul fast float %8841, %108
  %8844 = fmul fast float %8842, %109
  %8845 = fmul fast float %8843, 2.000000e+00
  %8846 = fmul fast float %8844, 2.000000e+00
  %8847 = fsub fast float 1.000000e+00, %8845
  %8848 = fsub fast float 1.000000e+00, %8846
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8853 = fmul fast float %8847, %8850
  %8854 = fmul fast float %8847, %8851
  %8855 = fmul fast float %8847, %8852
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 0
  %8858 = extractvalue %dx.types.CBufRet.f32 %8856, 1
  %8859 = extractvalue %dx.types.CBufRet.f32 %8856, 2
  %8860 = fmul fast float %8848, %8857
  %8861 = fmul fast float %8848, %8858
  %8862 = fmul fast float %8848, %8859
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8867 = fadd fast float %8860, %8864
  %8868 = fadd fast float %8867, %8853
  %8869 = fadd fast float %8861, %8865
  %8870 = fadd fast float %8869, %8854
  %8871 = fadd fast float %8862, %8866
  %8872 = fadd fast float %8871, %8855
  %8873 = fmul fast float %8868, %8046
  %8874 = fmul fast float %8870, %8046
  %8875 = fmul fast float %8872, %8046
  %8876 = fmul fast float %8873, %8873
  %8877 = fmul fast float %8874, %8874
  %8878 = fadd fast float %8876, %8877
  %8879 = fmul fast float %8875, %8875
  %8880 = fadd fast float %8878, %8879
  %8881 = call float @dx.op.unary.f32(i32 24, float %8880)  ; Sqrt(value)
  %8882 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %8883 = fsub fast float %8881, %8882
  %8884 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %8885 = fmul fast float %8883, %8884
  %8886 = call float @dx.op.unary.f32(i32 7, float %8885)  ; Saturate(value)
  %8887 = fadd fast float %8886, -5.000000e-01
  %8888 = fmul fast float %8887, 2.000000e+00
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 2
  %8891 = call float @dx.op.binary.f32(i32 36, float %8890, float %8888)  ; FMin(a,b)
  %8892 = fsub fast float -0.000000e+00, %8890
  %8893 = fcmp fast ogt float %8891, %8892
  br i1 %8893, label %8894, label %9205, !dx.controlflow.hints !175

; <label>:8894                                    ; preds = %8839
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8897 = fcmp fast ogt float %8896, 0.000000e+00
  br i1 %8897, label %8898, label %8973, !dx.controlflow.hints !176

; <label>:8898                                    ; preds = %8894
  %8899 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8900 = extractvalue %dx.types.Dimensions %8899, 0
  %8901 = sitofp i32 %8900 to float
  %8902 = extractvalue %dx.types.Dimensions %8899, 1
  %8903 = sitofp i32 %8902 to float
  %8904 = fmul fast float %8843, %8901
  %8905 = fmul fast float %8844, %8903
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 1
  %8908 = fsub fast float -0.000000e+00, %8907
  %8909 = fptoui float %8908 to i32
  %8910 = fptoui float %8904 to i32
  %8911 = fptoui float %8905 to i32
  %8912 = and i32 %8909, 31
  %8913 = lshr i32 %8910, %8912
  %8914 = lshr i32 %8911, %8912
  %8915 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8909, i32 %8913, i32 %8914, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8916 = extractvalue %dx.types.ResRet.f32 %8915, 0
  %8917 = fcmp fast olt float %8916, -1.000000e+00
  %8918 = fcmp fast ogt float %8916, -1.000000e+00
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8921 = select i1 %8918, float %8920, float 1.000000e+00
  %8922 = fadd fast float %8916, 1.000000e+00
  %8923 = fmul fast float %8921, %8922
  %8924 = call float @dx.op.unary.f32(i32 6, float %8923)  ; FAbs(value)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8919, 3
  %8926 = fcmp fast oge float %8924, %8925
  %8927 = select i1 %8926, float 0x4197782600000000, float %8924
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8932 = select i1 %8917, float %8929, float %8850
  %8933 = select i1 %8917, float %8930, float %8851
  %8934 = select i1 %8917, float %8931, float %8852
  %8935 = fmul fast float %8932, %8847
  %8936 = fmul fast float %8933, %8847
  %8937 = fmul fast float %8934, %8847
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8942 = select i1 %8917, float %8939, float %8857
  %8943 = select i1 %8917, float %8940, float %8858
  %8944 = select i1 %8917, float %8941, float %8859
  %8945 = fmul fast float %8942, %8848
  %8946 = fmul fast float %8943, %8848
  %8947 = fmul fast float %8944, %8848
  %8948 = fadd fast float %8945, %8935
  %8949 = fadd fast float %8946, %8936
  %8950 = fadd fast float %8947, %8937
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  %8953 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8954 = extractvalue %dx.types.CBufRet.f32 %8951, 2
  %8955 = select i1 %8917, float %8952, float %8864
  %8956 = select i1 %8917, float %8953, float %8865
  %8957 = select i1 %8917, float %8954, float %8866
  %8958 = fadd fast float %8948, %8955
  %8959 = fadd fast float %8949, %8956
  %8960 = fadd fast float %8950, %8957
  %8961 = fmul fast float %8958, %8927
  %8962 = fmul fast float %8959, %8927
  %8963 = fmul fast float %8960, %8927
  %8964 = fmul fast float %8961, %8961
  %8965 = fmul fast float %8962, %8962
  %8966 = fadd fast float %8964, %8965
  %8967 = fmul fast float %8963, %8963
  %8968 = fadd fast float %8966, %8967
  %8969 = call float @dx.op.unary.f32(i32 24, float %8968)  ; Sqrt(value)
  %8970 = fsub fast float %8969, %8882
  %8971 = fmul fast float %8970, %8884
  %8972 = call float @dx.op.unary.f32(i32 7, float %8971)  ; Saturate(value)
  br label %8973

; <label>:8973                                    ; preds = %8898, %8894
  %8974 = phi float [ %8972, %8898 ], [ 1.000000e+00, %8894 ]
  %8975 = fmul fast float %8891, 5.000000e-01
  %8976 = fadd fast float %8975, 5.000000e-01
  %8977 = call float @dx.op.unary.f32(i32 22, float %8976)  ; Frc(value)
  %8978 = call float @dx.op.unary.f32(i32 27, float %8977)  ; Round_ni(value)
  %8979 = call float @dx.op.unary.f32(i32 22, float %8977)  ; Frc(value)
  %8980 = fmul fast float %8979, 2.000000e+00
  %8981 = fadd fast float %8980, -1.000000e+00
  %8982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %8843, float %8844, float %8978, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8983 = extractvalue %dx.types.ResRet.f32 %8982, 0
  %8984 = extractvalue %dx.types.ResRet.f32 %8982, 1
  %8985 = extractvalue %dx.types.ResRet.f32 %8982, 2
  %8986 = extractvalue %dx.types.ResRet.f32 %8982, 3
  %8987 = fadd fast float %8983, -5.000000e-01
  %8988 = fadd fast float %8985, -5.000000e-01
  %8989 = fmul fast float %8987, 0xBFD5555560000000
  %8990 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8988, float %8989)  ; FMad(a,b,c)
  %8991 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8984, float 0.000000e+00)  ; FMad(a,b,c)
  %8992 = fadd fast float %8991, %8986
  %8993 = fmul fast float %8987, -7.500000e-01
  %8994 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8988, float %8993)  ; FMad(a,b,c)
  %8995 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8984, float 0.000000e+00)  ; FMad(a,b,c)
  %8996 = fadd fast float %8995, %8986
  %8997 = call float @dx.op.binary.f32(i32 35, float %8990, float -1.000000e+00)  ; FMax(a,b)
  %8998 = call float @dx.op.binary.f32(i32 35, float %8992, float -1.000000e+00)  ; FMax(a,b)
  %8999 = call float @dx.op.binary.f32(i32 35, float %8994, float -1.000000e+00)  ; FMax(a,b)
  %9000 = call float @dx.op.binary.f32(i32 35, float %8996, float -1.000000e+00)  ; FMax(a,b)
  %9001 = call float @dx.op.binary.f32(i32 36, float %8997, float 1.000000e+00)  ; FMin(a,b)
  %9002 = call float @dx.op.binary.f32(i32 36, float %8998, float 1.000000e+00)  ; FMin(a,b)
  %9003 = call float @dx.op.binary.f32(i32 36, float %8999, float 1.000000e+00)  ; FMin(a,b)
  %9004 = call float @dx.op.binary.f32(i32 36, float %9000, float 1.000000e+00)  ; FMin(a,b)
  %9005 = fcmp fast olt float %9001, 0x3FEFFF8020000000
  br i1 %9005, label %9006, label %9121, !dx.controlflow.hints !177

; <label>:9006                                    ; preds = %8973
  %9007 = extractvalue %dx.types.CBufRet.f32 %8889, 3
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9013 = fsub fast float %9009, %9001
  %9014 = fsub fast float %9010, %9002
  %9015 = fsub fast float %9011, %9003
  %9016 = fsub fast float %9012, %9004
  %9017 = fmul fast float %9013, %9007
  %9018 = fmul fast float %9014, %9007
  %9019 = fmul fast float %9015, %9007
  %9020 = fmul fast float %9016, %9007
  %9021 = fadd fast float %9017, %9001
  %9022 = fadd fast float %9018, %9002
  %9023 = fsub fast float -0.000000e+00, %9022
  %9024 = fadd fast float %9019, %9003
  %9025 = fadd fast float %9020, %9004
  %9026 = fmul fast float %9021, %9021
  %9027 = fsub fast float %9022, %9026
  %9028 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9027)  ; FMax(a,b)
  %9029 = fdiv fast float 1.000000e+00, %9028
  %9030 = fmul fast float %9022, %9021
  %9031 = fsub fast float %9024, %9030
  %9032 = fsub fast float %8981, %9021
  %9033 = fmul fast float %8981, %8981
  %9034 = fsub fast float %9033, %9022
  %9035 = fmul fast float %9032, %9029
  %9036 = fmul fast float %9035, %9031
  %9037 = fsub fast float %9034, %9036
  %9038 = fmul fast float %9022, %9022
  %9039 = fsub fast float %9025, %9038
  %9040 = fmul fast float %9031, %9031
  %9041 = fmul fast float %9040, %9029
  %9042 = fsub fast float %9039, %9041
  %9043 = fdiv fast float %9037, %9042
  %9044 = fmul fast float %9031, %9043
  %9045 = fsub fast float %9032, %9044
  %9046 = fmul fast float %9045, %9029
  %9047 = fmul fast float %9046, %9021
  %9048 = fsub fast float 1.000000e+00, %9047
  %9049 = fmul fast float %9022, %9043
  %9050 = fsub fast float %9048, %9049
  %9051 = fmul fast float %9046, %9046
  %9052 = fmul fast float %9043, 4.000000e+00
  %9053 = fmul fast float %9052, %9050
  %9054 = fsub fast float %9051, %9053
  %9055 = call float @dx.op.unary.f32(i32 24, float %9054)  ; Sqrt(value)
  %9056 = fcmp fast oge float %9046, 0.000000e+00
  %9057 = fsub fast float -0.000000e+00, %9055
  %9058 = select i1 %9056, float %9057, float %9055
  %9059 = fsub fast float %9058, %9046
  %9060 = fdiv fast float %9059, %9043
  %9061 = fdiv fast float %9050, %9059
  %9062 = fmul fast float %9060, 5.000000e-01
  %9063 = fmul fast float %9061, 2.000000e+00
  %9064 = select i1 %9056, float %9062, float %9063
  %9065 = select i1 %9056, float %9063, float %9062
  %9066 = call float @dx.op.binary.f32(i32 35, float %9064, float %9065)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 36, float %9064, float %9065)  ; FMin(a,b)
  %9068 = fcmp fast ogt float %8981, %9067
  br i1 %9068, label %9069, label %9079

; <label>:9069                                    ; preds = %9006
  %9070 = fsub fast float %8981, %9067
  %9071 = fsub fast float %9066, %9067
  %9072 = fmul fast float %9070, %9071
  %9073 = fmul fast float %9066, %8981
  %9074 = fadd fast float %9066, %8981
  %9075 = fmul fast float %9074, %9021
  %9076 = fadd fast float %9073, %9022
  %9077 = fsub fast float %9076, %9075
  %9078 = fdiv fast float %9077, %9072
  br label %9079

; <label>:9079                                    ; preds = %9069, %9006
  %9080 = phi float [ %9078, %9069 ], [ 0.000000e+00, %9006 ]
  %9081 = fcmp fast ogt float %8981, %9066
  %9082 = fsub fast float %8981, %9066
  br i1 %9081, label %9083, label %9093

; <label>:9083                                    ; preds = %9079
  %9084 = fsub fast float %9066, %9067
  %9085 = fmul fast float %9084, %9082
  %9086 = fmul fast float %9067, %8981
  %9087 = fadd fast float %9067, %8981
  %9088 = fmul fast float %9087, %9021
  %9089 = fsub fast float %9023, %9086
  %9090 = fadd fast float %9089, %9088
  %9091 = fdiv fast float %9090, %9085
  %9092 = fadd fast float %9091, %9080
  br label %9093

; <label>:9093                                    ; preds = %9083, %9079
  %9094 = phi float [ %9092, %9083 ], [ %9080, %9079 ]
  %9095 = fsub fast float %8981, %9067
  %9096 = fmul fast float %9095, %9082
  %9097 = fmul fast float %9067, %9066
  %9098 = fadd fast float %9067, %9066
  %9099 = fmul fast float %9098, %9021
  %9100 = fadd fast float %9097, %9022
  %9101 = fsub fast float %9100, %9099
  %9102 = fdiv fast float %9101, %9096
  %9103 = call float @dx.op.unary.f32(i32 7, float %9094)  ; Saturate(value)
  %9104 = fcmp fast oeq float %7774, 0.000000e+00
  %9105 = extractvalue %dx.types.CBufRet.f32 %8889, 0
  %9106 = fcmp fast oeq float %9105, 0.000000e+00
  %9107 = or i1 %9104, %9106
  %9108 = fmul fast float %9105, 2.000000e+00
  %9109 = fadd fast float %8890, %8891
  %9110 = fdiv fast float %9109, %9108
  %9111 = call float @dx.op.unary.f32(i32 7, float %9110)  ; Saturate(value)
  %9112 = fmul fast float %9111, 2.000000e+00
  %9113 = fsub fast float 3.000000e+00, %9112
  %9114 = fmul fast float %9111, %9111
  %9115 = fmul fast float %9114, %9113
  %9116 = select i1 %9107, float 1.000000e+00, float %9115
  %9117 = fmul fast float %9102, %7774
  %9118 = fadd fast float %9103, %9117
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = fmul fast float %9116, %9119
  br label %9121

; <label>:9121                                    ; preds = %9093, %8973
  %9122 = phi float [ %9120, %9093 ], [ 0.000000e+00, %8973 ]
  %9123 = fsub fast float 1.000000e+00, %9122
  %9124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %8843, float %8844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9125 = extractvalue %dx.types.ResRet.f32 %9124, 0
  %9126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.i32 %9126, 2
  %9128 = icmp eq i32 %9127, 0
  br i1 %9128, label %9134, label %9129

; <label>:9129                                    ; preds = %9121
  %9130 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9131 = fadd fast float %9125, -1.000000e+00
  %9132 = fmul fast float %9130, %9131
  %9133 = fadd fast float %9132, 1.000000e+00
  br label %9134

; <label>:9134                                    ; preds = %9129, %9121
  %9135 = phi float [ %9133, %9129 ], [ %9123, %9121 ]
  br i1 %8897, label %9136, label %9154

; <label>:9136                                    ; preds = %9134
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9139 = fsub fast float %8974, %9138
  %9140 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9141 = fsub fast float %8974, %8896
  %9142 = call float @dx.op.unary.f32(i32 7, float %9141)  ; Saturate(value)
  %9143 = fsub fast float %9140, %9142
  %9144 = fsub fast float %8976, %9142
  %9145 = fdiv fast float %9144, %9143
  %9146 = call float @dx.op.unary.f32(i32 7, float %9145)  ; Saturate(value)
  %9147 = fmul fast float %9146, 2.000000e+00
  %9148 = fsub fast float 3.000000e+00, %9147
  %9149 = fsub fast float %9125, %9135
  %9150 = fmul fast float %9146, %9146
  %9151 = fmul fast float %9150, %9149
  %9152 = fmul fast float %9151, %9148
  %9153 = fadd fast float %9152, %9135
  br label %9154

; <label>:9154                                    ; preds = %9136, %9134
  %9155 = phi float [ %9153, %9136 ], [ %9135, %9134 ]
  %9156 = call float @dx.op.binary.f32(i32 35, float %9125, float %9155)  ; FMax(a,b)
  %9157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9158 = extractvalue %dx.types.CBufRet.i32 %9157, 2
  %9159 = and i32 %9158, 1
  %9160 = icmp eq i32 %9159, 0
  %9161 = fcmp fast une float %9156, 1.000000e+00
  %9162 = and i1 %9161, %9160
  br i1 %9162, label %9163, label %9182

; <label>:9163                                    ; preds = %9154
  %9164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %8843, float %8844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9165 = extractvalue %dx.types.ResRet.f32 %9164, 0
  %9166 = extractvalue %dx.types.ResRet.f32 %9164, 1
  %9167 = extractvalue %dx.types.ResRet.f32 %9164, 2
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 1
  %9170 = fmul fast float %9169, %9165
  %9171 = fmul fast float %9169, %9166
  %9172 = fmul fast float %9169, %9167
  %9173 = fcmp fast ogt float %9125, 0x3FEFFF2E40000000
  %9174 = fsub fast float 1.000000e+00, %9156
  %9175 = fsub fast float 1.000000e+00, %9125
  %9176 = fdiv fast float %9174, %9175
  %9177 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  %9178 = select i1 %9173, float 0.000000e+00, float %9177
  %9179 = fmul fast float %9170, %9178
  %9180 = fmul fast float %9171, %9178
  %9181 = fmul fast float %9172, %9178
  br label %9182

; <label>:9182                                    ; preds = %9163, %9154
  %9183 = phi float [ 0.000000e+00, %9154 ], [ %9179, %9163 ]
  %9184 = phi float [ 0.000000e+00, %9154 ], [ %9180, %9163 ]
  %9185 = phi float [ 0.000000e+00, %9154 ], [ %9181, %9163 ]
  %9186 = fmul fast float %9183, %7768
  %9187 = fmul fast float %9184, %7770
  %9188 = fmul fast float %9185, %7772
  %9189 = call float @dx.op.dot3.f32(i32 55, float %9156, float %9156, float %9156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9190 = call float @dx.op.dot3.f32(i32 55, float %9186, float %9187, float %9188, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9191 = select i1 %261, float %9189, float %9156
  %9192 = select i1 %261, float 1.000000e+00, float %9156
  %9193 = select i1 %261, float %9190, float %9186
  %9194 = select i1 %261, float 0.000000e+00, float %9187
  %9195 = select i1 %261, float 0.000000e+00, float %9188
  %9196 = fmul fast float %9191, %8830
  %9197 = fmul fast float %9191, %8831
  %9198 = fmul fast float %9192, %8832
  %9199 = fadd fast float %9196, %9193
  %9200 = fadd fast float %9197, %9194
  %9201 = fadd fast float %9195, %9198
  %9202 = fmul fast float %9191, %8833
  %9203 = fmul fast float %9191, %8834
  %9204 = fmul fast float %9192, %8835
  br label %9205

; <label>:9205                                    ; preds = %9182, %8839, %8809, %8042
  %9206 = phi float [ %8047, %8042 ], [ %8830, %8809 ], [ %9199, %9182 ], [ %8830, %8839 ]
  %9207 = phi float [ %8048, %8042 ], [ %8831, %8809 ], [ %9200, %9182 ], [ %8831, %8839 ]
  %9208 = phi float [ %8049, %8042 ], [ %8832, %8809 ], [ %9201, %9182 ], [ %8832, %8839 ]
  %9209 = phi float [ %8050, %8042 ], [ %8833, %8809 ], [ %9202, %9182 ], [ %8833, %8839 ]
  %9210 = phi float [ %8051, %8042 ], [ %8834, %8809 ], [ %9203, %9182 ], [ %8834, %8839 ]
  %9211 = phi float [ %8052, %8042 ], [ %8835, %8809 ], [ %9204, %9182 ], [ %8835, %8839 ]
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 2
  %9214 = extractvalue %dx.types.CBufRet.f32 %9212, 3
  %9215 = fmul fast float %9213, %108
  %9216 = fmul fast float %9214, %109
  %9217 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9218 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9219 = select i1 %7784, i32 2, i32 0
  %9220 = or i32 %9219, 1
  %9221 = uitofp i32 %9220 to float
  %9222 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9217, float %9218, float %9221, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9223 = extractvalue %dx.types.ResRet.f32 %9222, 0
  %9224 = extractvalue %dx.types.ResRet.f32 %9222, 1
  %9225 = extractvalue %dx.types.ResRet.f32 %9222, 2
  %9226 = extractvalue %dx.types.ResRet.f32 %9222, 3
  %9227 = add nuw nsw i32 %9219, 2
  %9228 = uitofp i32 %9227 to float
  %9229 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9217, float %9218, float %9228, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9230 = extractvalue %dx.types.ResRet.f32 %9229, 0
  %9231 = extractvalue %dx.types.ResRet.f32 %9229, 1
  %9232 = extractvalue %dx.types.ResRet.f32 %9229, 2
  %9233 = extractvalue %dx.types.ResRet.f32 %9229, 3
  %9234 = call float @dx.op.binary.f32(i32 35, float %9224, float %9225)  ; FMax(a,b)
  %9235 = call float @dx.op.binary.f32(i32 35, float %9223, float %9234)  ; FMax(a,b)
  %9236 = call float @dx.op.binary.f32(i32 35, float %9235, float %9226)  ; FMax(a,b)
  %9237 = call float @dx.op.binary.f32(i32 36, float %9231, float %9232)  ; FMin(a,b)
  %9238 = call float @dx.op.binary.f32(i32 36, float %9230, float %9237)  ; FMin(a,b)
  %9239 = call float @dx.op.binary.f32(i32 36, float %9238, float %9233)  ; FMin(a,b)
  %9240 = fmul fast float %9236, 2.550000e+02
  %9241 = fadd fast float %9240, 0x3F70101020000000
  %9242 = fptoui float %9241 to i32
  %9243 = fmul fast float %9239, 2.550000e+02
  %9244 = fadd fast float %9243, 0x3F70101020000000
  %9245 = fptoui float %9244 to i32
  %9246 = icmp ult i32 %9242, %9245
  br i1 %9246, label %9247, label %9416

; <label>:9247                                    ; preds = %9205
  %9248 = fcmp fast ogt float %98, 9.843750e-01
  %9249 = fadd fast float %8046, -4.000000e+00
  %9250 = select i1 %9248, float -4.000000e+00, float %9249
  %9251 = call float @dx.op.binary.f32(i32 35, float %9250, float 0.000000e+00)  ; FMax(a,b)
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 0
  %9254 = fadd fast float %9253, %9251
  %9255 = extractvalue %dx.types.CBufRet.f32 %9252, 2
  %9256 = fmul fast float %9254, %9255
  %9257 = call float @dx.op.unary.f32(i32 23, float %9256)  ; Log(value)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9252, 3
  %9259 = fmul fast float %9258, %9257
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 2
  %9262 = fmul fast float %9259, %9261
  %9263 = call float @dx.op.unary.f32(i32 7, float %9262)  ; Saturate(value)
  %9264 = uitofp i32 %9242 to float
  %9265 = uitofp i32 %9245 to float
  %9266 = fadd fast float %9264, 5.000000e-01
  %9267 = fadd fast float %9265, 5.000000e-01
  %9268 = fmul fast float %9261, %9266
  %9269 = fmul fast float %9261, %9267
  %9270 = fadd fast float %9268, 0x3F0FFB4800000000
  %9271 = fadd fast float %9269, 0xBF0FFB4800000000
  %9272 = call float @dx.op.binary.f32(i32 35, float %9263, float %9270)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 36, float %9272, float %9271)  ; FMin(a,b)
  %9274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9274, 1
  %9276 = extractvalue %dx.types.CBufRet.f32 %9274, 2
  %9277 = extractvalue %dx.types.CBufRet.f32 %9274, 0
  %9278 = select i1 %7784, float %9277, float 0.000000e+00
  %9279 = fmul fast float %9275, %9273
  %9280 = fadd fast float %9278, %9279
  %9281 = fadd fast float %9278, %9276
  %9282 = fsub fast float %9275, %9276
  %9283 = fadd fast float %9282, %9278
  %9284 = call float @dx.op.binary.f32(i32 35, float %9280, float %9281)  ; FMax(a,b)
  %9285 = call float @dx.op.binary.f32(i32 36, float %9284, float %9283)  ; FMin(a,b)
  %9286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9217, float %9218, float %9285, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9287 = extractvalue %dx.types.ResRet.f32 %9286, 0
  %9288 = extractvalue %dx.types.ResRet.f32 %9286, 1
  %9289 = extractvalue %dx.types.ResRet.f32 %9286, 2
  %9290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.i32 %9290, 0
  %9292 = extractvalue %dx.types.CBufRet.i32 %9290, 1
  %9293 = uitofp i32 %9291 to float
  %9294 = uitofp i32 %9292 to float
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.CBufRet.f32 %9295, 1
  %9298 = fmul fast float %9293, %9217
  %9299 = fmul fast float %9294, %9218
  %9300 = fadd fast float %9298, -5.000000e-01
  %9301 = fadd fast float %9299, -5.000000e-01
  %9302 = call float @dx.op.unary.f32(i32 22, float %9300)  ; Frc(value)
  %9303 = call float @dx.op.unary.f32(i32 22, float %9301)  ; Frc(value)
  %9304 = fmul fast float %9302, %9302
  %9305 = fmul fast float %9304, %9302
  %9306 = fsub fast float 3.000000e+00, %9302
  %9307 = fmul fast float %9304, %9306
  %9308 = fmul fast float %9302, 3.000000e+00
  %9309 = fmul fast float %9305, 3.000000e+00
  %9310 = fmul fast float %9304, 6.000000e+00
  %9311 = fsub fast float %9309, %9310
  %9312 = fadd fast float %9311, 4.000000e+00
  %9313 = fmul fast float %9312, 0x3FC5555560000000
  %9314 = fmul fast float %9305, -3.000000e+00
  %9315 = fadd fast float %9304, %9302
  %9316 = fmul fast float %9315, 3.000000e+00
  %9317 = fadd fast float %9314, 1.000000e+00
  %9318 = fadd fast float %9317, %9316
  %9319 = fmul fast float %9305, 0x3FC5555560000000
  %9320 = fmul fast float %9303, %9303
  %9321 = fmul fast float %9320, %9303
  %9322 = fsub fast float 3.000000e+00, %9303
  %9323 = fmul fast float %9320, %9322
  %9324 = fmul fast float %9303, 3.000000e+00
  %9325 = fmul fast float %9321, 3.000000e+00
  %9326 = fmul fast float %9320, 6.000000e+00
  %9327 = fsub fast float %9325, %9326
  %9328 = fadd fast float %9327, 4.000000e+00
  %9329 = fmul fast float %9328, 0x3FC5555560000000
  %9330 = fmul fast float %9321, -3.000000e+00
  %9331 = fadd fast float %9320, %9303
  %9332 = fmul fast float %9331, 3.000000e+00
  %9333 = fadd fast float %9330, 1.000000e+00
  %9334 = fadd fast float %9333, %9332
  %9335 = fmul fast float %9321, 0x3FC5555560000000
  %9336 = fadd fast float %9302, 1.000000e+00
  %9337 = fsub fast float 1.000000e+00, %9308
  %9338 = fadd fast float %9337, %9307
  %9339 = fadd fast float %9338, %9312
  %9340 = fmul fast float %9339, 0x3FC5555560000000
  %9341 = fdiv fast float %9313, %9340
  %9342 = fsub fast float %9336, %9341
  %9343 = fsub fast float 1.000000e+00, %9302
  %9344 = fadd fast float %9318, %9305
  %9345 = fmul fast float %9344, 0x3FC5555560000000
  %9346 = fdiv fast float %9319, %9345
  %9347 = fadd fast float %9343, %9346
  %9348 = fadd fast float %9303, 1.000000e+00
  %9349 = fsub fast float 1.000000e+00, %9324
  %9350 = fadd fast float %9349, %9323
  %9351 = fadd fast float %9350, %9328
  %9352 = fmul fast float %9351, 0x3FC5555560000000
  %9353 = fdiv fast float %9329, %9352
  %9354 = fsub fast float %9348, %9353
  %9355 = fsub fast float 1.000000e+00, %9303
  %9356 = fadd fast float %9334, %9321
  %9357 = fmul fast float %9356, 0x3FC5555560000000
  %9358 = fdiv fast float %9335, %9357
  %9359 = fadd fast float %9358, %9355
  %9360 = fmul fast float %9342, %9296
  %9361 = fsub fast float %9217, %9360
  %9362 = fmul fast float %9347, %9296
  %9363 = fadd fast float %9362, %9217
  %9364 = fmul fast float %9359, %9297
  %9365 = fadd fast float %9364, %9218
  %9366 = fmul fast float %9354, %9297
  %9367 = fsub fast float %9218, %9366
  %9368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9361, float %9367, float %9285, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9369 = extractvalue %dx.types.ResRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.ResRet.f32 %9368, 1
  %9371 = extractvalue %dx.types.ResRet.f32 %9368, 2
  %9372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9363, float %9367, float %9285, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9373 = extractvalue %dx.types.ResRet.f32 %9372, 0
  %9374 = extractvalue %dx.types.ResRet.f32 %9372, 1
  %9375 = extractvalue %dx.types.ResRet.f32 %9372, 2
  %9376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9361, float %9365, float %9285, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9377 = extractvalue %dx.types.ResRet.f32 %9376, 0
  %9378 = extractvalue %dx.types.ResRet.f32 %9376, 1
  %9379 = extractvalue %dx.types.ResRet.f32 %9376, 2
  %9380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9363, float %9365, float %9285, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9381 = extractvalue %dx.types.ResRet.f32 %9380, 0
  %9382 = extractvalue %dx.types.ResRet.f32 %9380, 1
  %9383 = extractvalue %dx.types.ResRet.f32 %9380, 2
  %9384 = fsub fast float %9377, %9369
  %9385 = fsub fast float %9378, %9370
  %9386 = fsub fast float %9379, %9371
  %9387 = fmul fast float %9384, %9357
  %9388 = fmul fast float %9385, %9357
  %9389 = fmul fast float %9386, %9357
  %9390 = fadd fast float %9387, %9369
  %9391 = fadd fast float %9388, %9370
  %9392 = fadd fast float %9389, %9371
  %9393 = fsub fast float %9381, %9373
  %9394 = fsub fast float %9382, %9374
  %9395 = fsub fast float %9383, %9375
  %9396 = fmul fast float %9393, %9357
  %9397 = fmul fast float %9394, %9357
  %9398 = fmul fast float %9395, %9357
  %9399 = fsub fast float %9373, %9390
  %9400 = fadd fast float %9399, %9396
  %9401 = fsub fast float %9374, %9391
  %9402 = fadd fast float %9401, %9397
  %9403 = fsub fast float %9375, %9392
  %9404 = fadd fast float %9403, %9398
  %9405 = fmul fast float %9400, %9345
  %9406 = fmul fast float %9402, %9345
  %9407 = fmul fast float %9404, %9345
  %9408 = fadd fast float %9405, %9390
  %9409 = fadd fast float %9406, %9391
  %9410 = fadd fast float %9407, %9392
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 1
  %9413 = fmul fast float %9408, %9412
  %9414 = fmul fast float %9409, %9412
  %9415 = fmul fast float %9410, %9412
  br label %9416

; <label>:9416                                    ; preds = %9247, %9205
  %9417 = phi float [ %9287, %9247 ], [ 1.000000e+00, %9205 ]
  %9418 = phi float [ %9288, %9247 ], [ 1.000000e+00, %9205 ]
  %9419 = phi float [ %9289, %9247 ], [ 1.000000e+00, %9205 ]
  %9420 = phi float [ %9413, %9247 ], [ 0.000000e+00, %9205 ]
  %9421 = phi float [ %9414, %9247 ], [ 0.000000e+00, %9205 ]
  %9422 = phi float [ %9415, %9247 ], [ 0.000000e+00, %9205 ]
  %9423 = fmul fast float %9420, %7768
  %9424 = fmul fast float %9421, %7770
  %9425 = fmul fast float %9422, %7772
  %9426 = call float @dx.op.dot3.f32(i32 55, float %9417, float %9418, float %9419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9427 = call float @dx.op.dot3.f32(i32 55, float %9423, float %9424, float %9425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9428 = select i1 %261, float %9426, float %9417
  %9429 = select i1 %261, float %9426, float %9418
  %9430 = select i1 %261, float %9427, float %9423
  %9431 = select i1 %261, float 0.000000e+00, float %9424
  %9432 = fadd fast float %9209, %9206
  %9433 = fmul fast float %9428, %9432
  %9434 = fadd fast float %9433, %9430
  %9435 = fadd fast float %9210, %9207
  %9436 = fmul fast float %9429, %9435
  %9437 = fadd fast float %9436, %9431
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  br i1 %261, label %9440, label %9443

; <label>:9440                                    ; preds = %9416
  %9441 = fadd fast float %9434, %9437
  %9442 = fmul fast float %9439, %9441
  br label %9469

; <label>:9443                                    ; preds = %9416
  %9444 = fadd fast float %9211, %9208
  %9445 = fmul fast float %9419, %9444
  %9446 = fadd fast float %9445, %9425
  %9447 = fmul fast float %9439, %9434
  %9448 = fmul fast float %9439, %9437
  %9449 = fmul fast float %9439, %9446
  %9450 = call float @dx.op.binary.f32(i32 35, float %9448, float %9449)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 35, float %9447, float %9450)  ; FMax(a,b)
  %9452 = call float @dx.op.binary.f32(i32 35, float %7770, float %7772)  ; FMax(a,b)
  %9453 = call float @dx.op.binary.f32(i32 35, float %7768, float %9452)  ; FMax(a,b)
  %9454 = call float @dx.op.binary.f32(i32 35, float %9451, float %9453)  ; FMax(a,b)
  %9455 = fcmp fast ugt float %9454, 0x3F10000000000000
  br i1 %9455, label %9457, label %9456

; <label>:9456                                    ; preds = %9443
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9457

; <label>:9457                                    ; preds = %9456, %9443
  %9458 = add i32 %56, 356
  %9459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9458, i32 undef)  ; BufferLoad(srv,index,wot)
  %9460 = extractvalue %dx.types.ResRet.i32 %9459, 0
  %9461 = and i32 %9460, 32
  %9462 = icmp eq i32 %9461, 0
  br i1 %9462, label %9469, label %9463

; <label>:9463                                    ; preds = %9457
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 0
  %9466 = fmul fast float %9465, 0x3FE99999A0000000
  %9467 = fadd fast float %9465, %9447
  %9468 = fadd fast float %9466, %9449
  br label %9469

; <label>:9469                                    ; preds = %9463, %9457, %9440
  %9470 = phi float [ 0.000000e+00, %9440 ], [ %7770, %9463 ], [ %7770, %9457 ]
  %9471 = phi float [ 0.000000e+00, %9440 ], [ %7772, %9463 ], [ %7772, %9457 ]
  %9472 = phi float [ %9442, %9440 ], [ %9467, %9463 ], [ %9447, %9457 ]
  %9473 = phi float [ 0.000000e+00, %9440 ], [ %9448, %9463 ], [ %9448, %9457 ]
  %9474 = phi float [ 0.000000e+00, %9440 ], [ %9468, %9463 ], [ %9449, %9457 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9475 = call float @dx.op.binary.f32(i32 36, float %9472, float 3.225500e+04)  ; FMin(a,b)
  %9476 = call float @dx.op.binary.f32(i32 36, float %9473, float 3.225500e+04)  ; FMin(a,b)
  %9477 = call float @dx.op.binary.f32(i32 36, float %9474, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9476)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9478 = call float @dx.op.binary.f32(i32 36, float %7768, float 3.225500e+04)  ; FMin(a,b)
  %9479 = call float @dx.op.binary.f32(i32 36, float %9470, float 3.225500e+04)  ; FMin(a,b)
  %9480 = call float @dx.op.binary.f32(i32 36, float %9471, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9480)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

