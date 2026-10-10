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
; SV_IsFrontFace           0    y         13    FFACE    uint    y  
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
; shader hash: 3e936db756bb7fc0f7d8dfae3655b668
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t18,space1     1
;                                   texture    byte         r/o     T12     t19,space1     1
;                                   texture    byte         r/o     T13     t20,space1     1
;                                   texture    byte         r/o     T14     t21,space1     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31      t1,space1     1
;                                   texture     f32          1d     T32     t32,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture     f32          2d     T34      t1,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture    byte         r/o     T44     t12,space1     1
;                                   texture    byte         r/o     T45     t13,space1     1
;                                   texture     f32          1d     T46     t30,space2     1
;                                   texture     f32          3d     T47     t44,space2     1
;                                   texture     f32          3d     T48     t45,space2     1
;                                   texture     f32     2darray     T49     t47,space2     1
;                                   textureunorm_f32     2darray     T50     t85,space2     1
;                                   texture     f32          2d     T51     t83,space2     1
;                                   texture     f32          2d     T52     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = alloca [12 x float], align 4
  %110 = alloca [12 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [4 x float], align 4
  %115 = alloca [3 x float], align 4
  %116 = alloca [3 x float], align 4
  %117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = fmul fast float %120, %105
  %122 = fmul fast float %120, %106
  %123 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %124 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = bitcast float %124 to i32
  %126 = ashr i32 %125, 1
  %127 = sub nsw i32 1597250115, %126
  %128 = bitcast i32 %127 to float
  %129 = fmul fast float %96, %123
  %130 = fmul fast float %129, %128
  %131 = fmul fast float %97, %123
  %132 = fmul fast float %131, %128
  %133 = fmul fast float %98, %123
  %134 = fmul fast float %133, %128
  %135 = fmul fast float %97, %94
  %136 = fmul fast float %98, %93
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %98, %92
  %139 = fmul fast float %96, %94
  %140 = fsub fast float %138, %139
  %141 = fmul fast float %96, %93
  %142 = fmul fast float %97, %92
  %143 = fsub fast float %141, %142
  %144 = fmul fast float %137, %95
  %145 = fmul fast float %140, %95
  %146 = fmul fast float %143, %95
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = fcmp fast une float %148, 0.000000e+00
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %121, 2.000000e+00
  %154 = fmul fast float %153, %151
  %155 = fmul fast float %122, 2.000000e+00
  %156 = fmul fast float %155, %152
  %157 = fsub fast float 1.000000e+00, %154
  %158 = fsub fast float 1.000000e+00, %156
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = select i1 %149, float %160, float %164
  %168 = select i1 %149, float %161, float %165
  %169 = select i1 %149, float %162, float %166
  %170 = fmul fast float %167, %157
  %171 = fmul fast float %168, %157
  %172 = fmul fast float %169, %157
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = select i1 %149, float %174, float %178
  %182 = select i1 %149, float %175, float %179
  %183 = select i1 %149, float %176, float %180
  %184 = fmul fast float %181, %158
  %185 = fmul fast float %182, %158
  %186 = fmul fast float %183, %158
  %187 = fadd fast float %184, %170
  %188 = fadd fast float %185, %171
  %189 = fadd fast float %186, %172
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = select i1 %149, float %191, float %195
  %199 = select i1 %149, float %192, float %196
  %200 = select i1 %149, float %193, float %197
  %201 = fadd fast float %187, %198
  %202 = fadd fast float %188, %199
  %203 = fadd fast float %189, %200
  %204 = fmul fast float %201, %108
  %205 = fmul fast float %202, %108
  %206 = fmul fast float %203, %108
  %207 = fmul fast float %121, 5.000000e-01
  %208 = fmul fast float %122, 5.000000e-01
  %209 = fptosi float %207 to i32
  %210 = fptosi float %208 to i32
  %211 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 18
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F4C00EBA0000000
  %216 = call float @dx.op.unary.f32(i32 21, float %215)  ; Exp(value)
  %217 = fadd fast float %216, -1.000000e+00
  %218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %219 = extractvalue %dx.types.Dimensions %218, 0
  %220 = sitofp i32 %219 to float
  %221 = extractvalue %dx.types.Dimensions %218, 1
  %222 = sitofp i32 %221 to float
  %223 = fcmp fast oge float %207, %220
  %224 = fcmp fast oge float %208, %222
  %225 = or i1 %223, %224
  %226 = select i1 %225, float 0x4197782600000000, float %217
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %230 = fmul fast float %228, %121
  %231 = fmul fast float %229, %122
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 114688
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %235, float %230, float 0.000000e+00
  %237 = select i1 %235, float %231, float 0.000000e+00
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %236, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fmul fast float %239, 2.550000e+02
  %241 = fptoui float %240 to i32
  %242 = select i1 %235, i32 %241, i32 0
  %243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.i32 %243, 3
  %245 = and i32 %244, 3
  %246 = icmp ne i32 %245, 0
  %247 = and i32 %244, 4
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %246, %248
  br i1 %249, label %250, label %259

; <label>:250                                     ; preds = %0
  %251 = fmul fast float %152, %122
  %252 = fmul fast float %151, %121
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %252, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fsub fast float 1.000000e+00, %254
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = fcmp fast olt float %255, %257
  br label %262

; <label>:259                                     ; preds = %0
  %260 = icmp eq i32 %247, 0
  %261 = and i1 %246, %260
  br label %262

; <label>:262                                     ; preds = %259, %250
  %263 = phi i1 [ %258, %250 ], [ %261, %259 ]
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = fmul fast float %265, 0x3FE3C6EF40000000
  %267 = frem fast float %121, 2.560000e+02
  %268 = frem fast float %122, 2.560000e+02
  %269 = fptoui float %267 to i32
  %270 = fptoui float %268 to i32
  %271 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %269, i32 %270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fadd fast float %272, %266
  %274 = call float @dx.op.unary.f32(i32 22, float %273)  ; Frc(value)
  %275 = add i32 %62, 156
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 4
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %277, 7
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %277, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %62, 216
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %289, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %289, 16
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = add i32 %62, 36
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %62, 288
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %312, 0x3F50624DE0000000
  %316 = fmul fast float %314, 0x3F50624DE0000000
  %317 = add i32 %62, 172
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %62, 232
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %331, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %331, 16
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = add i32 %62, 52
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %62, 304
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = fmul fast float %354, 0x3F50624DE0000000
  %358 = fmul fast float %356, 0x3F50624DE0000000
  %359 = add i32 %62, 188
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %371 = add i32 %62, 248
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %373, 8
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %373, 16
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = add i32 %62, 68
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %387, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = add i32 %62, 320
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = fmul fast float %396, 0x3F50624DE0000000
  %400 = fmul fast float %398, 0x3F50624DE0000000
  %401 = add i32 %62, 204
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = shl i32 %403, 4
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %403, 7
  %408 = and i32 %407, 32752
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %403, 22
  %411 = shl nuw nsw i32 %410, 5
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = add i32 %62, 264
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %415, 8
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %415, 16
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = add i32 %62, 84
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %429, 16
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = add i32 %62, 336
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 65535
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %436, 16
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = fmul fast float %438, 0x3F50624DE0000000
  %442 = fmul fast float %440, 0x3F50624DE0000000
  %443 = add i32 %62, 348
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 32
  %447 = icmp eq i32 %446, 0
  %448 = and i32 %445, 64
  %449 = icmp eq i32 %448, 0
  %450 = and i32 %445, 128
  %451 = icmp eq i32 %450, 0
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 2
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %471, label %456

; <label>:456                                     ; preds = %262
  %457 = add i32 %62, 472
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %459, 0
  %461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %461, %dx.types.Handle %118, float %99, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = fmul fast float %466, %101
  %468 = fmul fast float %463, %102
  %469 = fmul fast float %464, %103
  %470 = fmul fast float %465, %104
  br label %471

; <label>:471                                     ; preds = %456, %262
  %472 = phi float [ %104, %262 ], [ %470, %456 ]
  %473 = phi float [ %103, %262 ], [ %469, %456 ]
  %474 = phi float [ %102, %262 ], [ %468, %456 ]
  %475 = phi float [ %101, %262 ], [ %467, %456 ]
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 2
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %499, label %480

; <label>:480                                     ; preds = %471
  %481 = add i32 %62, 44
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %474, float 1.000000e+00
  %487 = add i32 %62, 60
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %473, float 1.000000e+00
  %493 = add i32 %62, 76
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %472, float 1.000000e+00
  br label %499

; <label>:499                                     ; preds = %480, %471
  %500 = phi float [ %472, %471 ], [ %498, %480 ]
  %501 = phi float [ %473, %471 ], [ %492, %480 ]
  %502 = phi float [ %474, %471 ], [ %486, %480 ]
  %503 = lshr i32 %477, 20
  %504 = and i32 %503, 3
  %505 = add nuw nsw i32 %504, 1
  %506 = add i32 %62, 24
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = add i32 %62, 28
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = or i32 %511, %508
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %1048, label %514

; <label>:514                                     ; preds = %499
  %515 = and i32 %508, 262144
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %67, float 1.000000e+00
  %518 = select i1 %516, float %68, float 0.000000e+00
  %519 = select i1 %516, float %69, float 0.000000e+00
  %520 = select i1 %516, float %70, float 1.000000e+00
  %521 = select i1 %516, float %71, float %99
  %522 = select i1 %516, float %72, float %100
  %523 = add i32 %62, 284
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = lshr i32 %525, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = fmul fast float %527, 0x3F50624DE0000000
  %529 = add i32 %62, 88
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = and i32 %532, 255
  %534 = lshr i32 %531, 24
  %535 = add i32 %62, 292
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 65535
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %537, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = add i32 %62, 32
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 22
  %546 = shl nuw nsw i32 %545, 5
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = shl i32 %544, 4
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 7
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %556 = fmul fast float %555, 1.000000e+03
  %557 = fmul fast float %315, %556
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fadd fast float %558, %305
  %560 = fmul fast float %316, %556
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = fadd fast float %561, %307
  %563 = fmul fast float %528, %556
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fmul fast float %564, 0x401921FB60000000
  %566 = fadd fast float %565, %547
  %567 = call float @dx.op.unary.f32(i32 13, float %566)  ; Sin(value)
  %568 = call float @dx.op.unary.f32(i32 12, float %566)  ; Cos(value)
  %569 = fsub fast float -0.000000e+00, %567
  %570 = fadd fast float %521, -5.000000e-01
  %571 = fadd fast float %522, -5.000000e-01
  %572 = fmul fast float %539, %570
  %573 = fmul fast float %541, %571
  %574 = fadd fast float %572, 5.000000e-01
  %575 = fadd fast float %573, 5.000000e-01
  %576 = fmul fast float %550, %574
  %577 = fmul fast float %553, %575
  %578 = fmul fast float %568, %576
  %579 = call float @dx.op.tertiary.f32(i32 46, float %569, float %577, float %578)  ; FMad(a,b,c)
  %580 = fmul fast float %567, %576
  %581 = call float @dx.op.tertiary.f32(i32 46, float %568, float %577, float %580)  ; FMad(a,b,c)
  %582 = fadd fast float %559, %579
  %583 = fadd fast float %562, %581
  %584 = icmp ugt i32 %533, 1
  %585 = icmp ugt i32 %531, 33554431
  %586 = or i1 %585, %584
  br i1 %586, label %587, label %612

; <label>:587                                     ; preds = %514
  %588 = add i32 %62, 228
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = fmul fast float %555, %592
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = mul nuw nsw i32 %533, %534
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %594, %596
  %598 = call float @dx.op.unary.f32(i32 27, float %597)  ; Round_ni(value)
  %599 = fptoui float %598 to i32
  %600 = urem i32 %599, %533
  %601 = udiv i32 %599, %534
  %602 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %603 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %604 = uitofp i32 %600 to float
  %605 = uitofp i32 %601 to float
  %606 = fadd fast float %602, %604
  %607 = fadd fast float %603, %605
  %608 = uitofp i32 %533 to float
  %609 = uitofp i32 %534 to float
  %610 = fdiv fast float %606, %608
  %611 = fdiv fast float %607, %609
  br label %612

; <label>:612                                     ; preds = %587, %514
  %613 = phi float [ %610, %587 ], [ %582, %514 ]
  %614 = phi float [ %611, %587 ], [ %583, %514 ]
  %615 = and i32 %508, 256
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %663, label %617

; <label>:617                                     ; preds = %612
  %618 = add i32 %62, 424
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = add i32 %620, 0
  %622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %622, %dx.types.Handle %118, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = add i32 %62, 100
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = shl i32 %627, 4
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %627, 7
  %632 = and i32 %631, 32752
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = fsub fast float 1.000000e+00, %475
  %635 = call float @dx.op.binary.f32(i32 35, float %634, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %636 = bitcast float %475 to i32
  %637 = sitofp i32 %636 to float
  %638 = fadd fast float %637, 0xC1CFBF8940000000
  %639 = fmul fast float %633, %638
  %640 = fadd fast float %639, 0x41CFBF8940000000
  %641 = fptosi float %640 to i32
  %642 = bitcast i32 %641 to float
  %643 = bitcast float %635 to i32
  %644 = sitofp i32 %643 to float
  %645 = fadd fast float %644, 0xC1CFBF8940000000
  %646 = fmul fast float %645, %633
  %647 = fadd fast float %646, 0x41CFBF8940000000
  %648 = fptosi float %647 to i32
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %642, %630
  %651 = fmul fast float %649, %630
  %652 = fsub fast float %635, %650
  %653 = fadd fast float %651, %635
  %654 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %656 = fsub fast float %624, %654
  %657 = fsub fast float %655, %654
  %658 = bitcast float %657 to i32
  %659 = sub nsw i32 2129859010, %658
  %660 = bitcast i32 %659 to float
  %661 = fmul fast float %660, %656
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  br label %663

; <label>:663                                     ; preds = %617, %612
  %664 = phi float [ %662, %617 ], [ %475, %612 ]
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 128
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %685, label %669

; <label>:669                                     ; preds = %663
  %670 = add i32 %62, 408
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %118, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 524288
  %680 = icmp ne i32 %679, 0
  %681 = fcmp fast ogt float %676, 0x3FE0101020000000
  %682 = select i1 %681, float 1.000000e+00, float 0.000000e+00
  %683 = select i1 %680, float %682, float %676
  %684 = fmul fast float %683, %664
  br label %685

; <label>:685                                     ; preds = %669, %663
  %686 = phi float [ %684, %669 ], [ %664, %663 ]
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 16
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %889, label %691

; <label>:691                                     ; preds = %685
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %62, 360
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %117, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = and i32 %693, 255
  %705 = uitofp i32 %704 to float
  %706 = lshr i32 %693, 8
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %703, %705
  %710 = fadd fast float %709, %708
  %711 = fmul fast float %710, 0x3F70101000000000
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 512
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %724, label %716

; <label>:716                                     ; preds = %691
  %717 = add i32 %62, 440
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %118, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  br label %724

; <label>:724                                     ; preds = %716, %691
  %725 = phi float [ %723, %716 ], [ 1.000000e+00, %691 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 33554432
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %836, label %730

; <label>:730                                     ; preds = %724
  %731 = add i32 %62, 224
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 65535
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %733, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = add i32 %62, 228
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 65535
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = lshr i32 %744, 24
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = and i32 %744, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = lshr i32 %744, 8
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %744, 16
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = add i32 %62, 220
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = lshr i32 %761, 24
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = and i32 %761, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %761, 8
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %761, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = bitcast float %700 to i32
  %777 = ashr i32 %776, 1
  %778 = sub nsw i32 1597463174, %777
  %779 = bitcast i32 %778 to float
  %780 = fmul fast float %700, 5.000000e-01
  %781 = fmul fast float %779, %779
  %782 = fmul fast float %781, %780
  %783 = fsub fast float 1.500000e+00, %782
  %784 = fmul fast float %779, %700
  %785 = fmul fast float %784, %783
  %786 = bitcast float %701 to i32
  %787 = ashr i32 %786, 1
  %788 = sub nsw i32 1597463174, %787
  %789 = bitcast i32 %788 to float
  %790 = fmul fast float %701, 5.000000e-01
  %791 = fmul fast float %789, %789
  %792 = fmul fast float %791, %790
  %793 = fsub fast float 1.500000e+00, %792
  %794 = fmul fast float %789, %701
  %795 = fmul fast float %794, %793
  %796 = bitcast float %702 to i32
  %797 = ashr i32 %796, 1
  %798 = sub nsw i32 1597463174, %797
  %799 = bitcast i32 %798 to float
  %800 = fmul fast float %702, 5.000000e-01
  %801 = fmul fast float %799, %799
  %802 = fmul fast float %801, %800
  %803 = fsub fast float 1.500000e+00, %802
  %804 = fmul fast float %799, %702
  %805 = fmul fast float %804, %803
  %806 = fsub fast float %785, %767
  %807 = fsub fast float %795, %771
  %808 = fsub fast float %805, %775
  %809 = fmul fast float %806, %735
  %810 = fmul fast float %807, %737
  %811 = fmul fast float %808, %742
  %812 = fadd fast float %809, %750
  %813 = fadd fast float %810, %754
  %814 = fadd fast float %811, %758
  %815 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %817 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %818 = fmul fast float %815, %815
  %819 = fmul fast float %816, %816
  %820 = fmul fast float %817, %817
  %821 = fsub fast float %818, %700
  %822 = fsub fast float %819, %701
  %823 = fsub fast float %820, %702
  %824 = fmul fast float %821, %725
  %825 = fmul fast float %822, %725
  %826 = fmul fast float %823, %725
  %827 = fadd fast float %824, %700
  %828 = fadd fast float %825, %701
  %829 = fadd fast float %826, %702
  %830 = fadd fast float %747, %711
  %831 = fsub fast float %830, %764
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = fsub fast float %832, %711
  %834 = fmul fast float %833, %725
  %835 = fadd fast float %834, %711
  br label %889

; <label>:836                                     ; preds = %724
  %837 = and i32 %727, 134217728
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %873, label %839

; <label>:839                                     ; preds = %836
  %840 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %842 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %843 = fadd fast float %840, -5.000000e-01
  %844 = fadd fast float %841, -5.000000e-01
  %845 = fadd fast float %842, -5.000000e-01
  %846 = fmul fast float %843, %725
  %847 = fmul fast float %844, %725
  %848 = fmul fast float %845, %725
  %849 = fadd fast float %846, 5.000000e-01
  %850 = fadd fast float %847, 5.000000e-01
  %851 = fadd fast float %848, 5.000000e-01
  %852 = call float @dx.op.unary.f32(i32 24, float %700)  ; Sqrt(value)
  %853 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %854 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %855 = fmul fast float %849, 2.000000e+00
  %856 = fsub fast float 1.000000e+00, %855
  %857 = fmul fast float %856, %852
  %858 = fadd fast float %857, %855
  %859 = fmul fast float %858, %852
  %860 = fmul fast float %850, 2.000000e+00
  %861 = fsub fast float 1.000000e+00, %860
  %862 = fmul fast float %861, %853
  %863 = fadd fast float %862, %860
  %864 = fmul fast float %863, %853
  %865 = fmul fast float %851, 2.000000e+00
  %866 = fsub fast float 1.000000e+00, %865
  %867 = fmul fast float %866, %854
  %868 = fadd fast float %867, %865
  %869 = fmul fast float %868, %854
  %870 = fmul fast float %859, %859
  %871 = fmul fast float %864, %864
  %872 = fmul fast float %869, %869
  br label %889

; <label>:873                                     ; preds = %836
  %874 = fmul fast float %292, %292
  %875 = fmul fast float %296, %296
  %876 = fmul fast float %300, %300
  %877 = fadd fast float %874, -1.000000e+00
  %878 = fadd fast float %875, -1.000000e+00
  %879 = fadd fast float %876, -1.000000e+00
  %880 = fmul fast float %725, %877
  %881 = fmul fast float %725, %878
  %882 = fmul fast float %725, %879
  %883 = fadd fast float %880, 1.000000e+00
  %884 = fadd fast float %881, 1.000000e+00
  %885 = fadd fast float %882, 1.000000e+00
  %886 = fmul fast float %883, %700
  %887 = fmul fast float %884, %701
  %888 = fmul fast float %885, %702
  br label %889

; <label>:889                                     ; preds = %873, %839, %730, %685
  %890 = phi float [ %835, %730 ], [ %711, %839 ], [ %711, %873 ], [ 0x3FA23C0BE0000000, %685 ]
  %891 = phi float [ %827, %730 ], [ %870, %839 ], [ %886, %873 ], [ 1.000000e+00, %685 ]
  %892 = phi float [ %828, %730 ], [ %871, %839 ], [ %887, %873 ], [ 1.000000e+00, %685 ]
  %893 = phi float [ %829, %730 ], [ %872, %839 ], [ %888, %873 ], [ 1.000000e+00, %685 ]
  %894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.i32 %894, 1
  %896 = and i32 %895, 1
  %897 = icmp ne i32 %896, 0
  %898 = add i32 %62, 356
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 32
  %902 = icmp ne i32 %901, 0
  %903 = and i1 %897, %902
  %904 = select i1 %903, float 1.000000e+00, float %891
  %905 = select i1 %903, float 0x3FD3333340000000, float %892
  %906 = select i1 %903, float 0x3FD3333340000000, float %893
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = and i32 %908, 32
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %983, label %911

; <label>:911                                     ; preds = %889
  %912 = add i32 %62, 92
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %62, 376
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %117, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = extractvalue %dx.types.ResRet.f32 %920, 3
  %925 = and i32 %914, 255
  %926 = uitofp i32 %925 to float
  %927 = lshr i32 %914, 8
  %928 = and i32 %927, 255
  %929 = uitofp i32 %928 to float
  %930 = lshr i32 %914, 16
  %931 = and i32 %930, 255
  %932 = uitofp i32 %931 to float
  %933 = fmul fast float %932, 0x3F70101000000000
  %934 = fmul fast float %921, %926
  %935 = fadd fast float %934, %929
  %936 = fmul fast float %935, 0x3F70101000000000
  %937 = fadd fast float %922, -5.000000e-01
  %938 = fadd fast float %924, -5.000000e-01
  %939 = fmul fast float %937, %933
  %940 = fmul fast float %938, %933
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fadd fast float %940, 5.000000e-01
  %943 = fmul fast float %941, 2.000000e+00
  %944 = fadd fast float %943, -1.000000e+00
  %945 = fmul fast float %942, 2.000000e+00
  %946 = fadd fast float %945, -1.000000e+00
  %947 = fadd fast float %944, %946
  %948 = fmul fast float %947, 5.000000e-01
  %949 = fsub fast float %944, %946
  %950 = fmul fast float %949, 5.000000e-01
  %951 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %952 = fsub fast float 1.000000e+00, %951
  %953 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %954 = fsub fast float %952, %953
  %955 = call float @dx.op.dot3.f32(i32 55, float %948, float %950, float %954, float %948, float %950, float %954)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = call float @dx.op.unary.f32(i32 25, float %955)  ; Rsqrt(value)
  %957 = fmul fast float %948, %956
  %958 = fmul fast float %950, %956
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 67108864
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %979, label %963

; <label>:963                                     ; preds = %911
  %964 = add i32 %62, 280
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %966, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = fsub fast float %936, %974
  %976 = fmul fast float %975, %968
  %977 = fadd fast float %976, %972
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  br label %979

; <label>:979                                     ; preds = %963, %911
  %980 = phi float [ %978, %963 ], [ %936, %911 ]
  %981 = call float @dx.op.dot2.f32(i32 54, float %957, float %958, float %517, float %518)  ; Dot2(ax,ay,bx,by)
  %982 = call float @dx.op.dot2.f32(i32 54, float %957, float %958, float %519, float %520)  ; Dot2(ax,ay,bx,by)
  br label %983

; <label>:983                                     ; preds = %979, %889
  %984 = phi float [ %980, %979 ], [ 0x3FD6666660000000, %889 ]
  %985 = phi float [ %981, %979 ], [ 0.000000e+00, %889 ]
  %986 = phi float [ %982, %979 ], [ 0.000000e+00, %889 ]
  %987 = phi float [ %923, %979 ], [ 1.000000e+00, %889 ]
  %988 = add i32 %62, 160
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 22
  %992 = shl nuw nsw i32 %991, 5
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 64
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1031, label %998

; <label>:998                                     ; preds = %983
  %999 = add i32 %62, 392
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %1001, 0
  %1003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 131072
  %1007 = icmp eq i32 %1006, 0
  %1008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1003, %dx.types.Handle %117, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = fmul fast float %1009, %280
  %1013 = fmul fast float %1010, %283
  %1014 = fmul fast float %1011, %286
  br i1 %1007, label %1021, label %1015

; <label>:1015                                    ; preds = %998
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = fmul fast float %1017, %1012
  %1019 = fmul fast float %1017, %1013
  %1020 = fmul fast float %1017, %1014
  br label %1021

; <label>:1021                                    ; preds = %1015, %998
  %1022 = phi float [ %1018, %1015 ], [ %1012, %998 ]
  %1023 = phi float [ %1019, %1015 ], [ %1013, %998 ]
  %1024 = phi float [ %1020, %1015 ], [ %1014, %998 ]
  %1025 = fmul fast float %1022, %993
  %1026 = select i1 %263, float %1025, float %1022
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1023, float %1024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = select i1 %263, float 0.000000e+00, float %1022
  %1029 = select i1 %263, float %1027, float %1023
  %1030 = select i1 %263, float 0.000000e+00, float %1024
  br label %1031

; <label>:1031                                    ; preds = %1021, %983
  %1032 = phi float [ %1028, %1021 ], [ 0.000000e+00, %983 ]
  %1033 = phi float [ %1029, %1021 ], [ 0.000000e+00, %983 ]
  %1034 = phi float [ %1030, %1021 ], [ 0.000000e+00, %983 ]
  %1035 = add i32 %62, 96
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1037, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = fmul fast float %1042, %1043
  %1045 = fadd fast float %1044, %1039
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  br label %1048

; <label>:1048                                    ; preds = %1031, %499
  %1049 = phi float [ 0.000000e+00, %499 ], [ %985, %1031 ]
  %1050 = phi float [ 0.000000e+00, %499 ], [ %986, %1031 ]
  %1051 = phi float [ 0.000000e+00, %499 ], [ %904, %1031 ]
  %1052 = phi float [ 0.000000e+00, %499 ], [ %905, %1031 ]
  %1053 = phi float [ 0.000000e+00, %499 ], [ %906, %1031 ]
  %1054 = phi float [ 0.000000e+00, %499 ], [ %1032, %1031 ]
  %1055 = phi float [ 0.000000e+00, %499 ], [ %1033, %1031 ]
  %1056 = phi float [ 0.000000e+00, %499 ], [ %1034, %1031 ]
  %1057 = phi float [ 0.000000e+00, %499 ], [ %890, %1031 ]
  %1058 = phi float [ 0.000000e+00, %499 ], [ %686, %1031 ]
  %1059 = phi float [ 0.000000e+00, %499 ], [ %984, %1031 ]
  %1060 = phi float [ 0.000000e+00, %499 ], [ %987, %1031 ]
  %1061 = phi float [ 0.000000e+00, %499 ], [ %1047, %1031 ]
  br i1 %447, label %1788, label %1062

; <label>:1062                                    ; preds = %1048
  %1063 = icmp ult i32 %505, 2
  %1064 = add i32 %62, 40
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = add i32 %62, 44
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = or i32 %1069, %1066
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1788, label %1072

; <label>:1072                                    ; preds = %1062
  %1073 = and i32 %1066, 262144
  %1074 = icmp ne i32 %1073, 0
  %1075 = select i1 %1074, float %67, float 1.000000e+00
  %1076 = select i1 %1074, float %68, float 0.000000e+00
  %1077 = select i1 %1074, float %69, float 0.000000e+00
  %1078 = select i1 %1074, float %70, float 1.000000e+00
  %1079 = select i1 %1074, float %71, float %99
  %1080 = select i1 %1074, float %72, float %100
  %1081 = add i32 %62, 300
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1085, 0x3F50624DE0000000
  %1087 = add i32 %62, 104
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 16
  %1091 = and i32 %1090, 255
  %1092 = lshr i32 %1089, 24
  %1093 = add i32 %62, 308
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 65535
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = lshr i32 %1095, 16
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = add i32 %62, 48
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = lshr i32 %1102, 22
  %1104 = shl nuw nsw i32 %1103, 5
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = shl i32 %1102, 4
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1102, 7
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1114 = fmul fast float %1113, 1.000000e+03
  %1115 = fmul fast float %357, %1114
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = fadd fast float %1116, %347
  %1118 = fmul fast float %358, %1114
  %1119 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1120 = fadd fast float %1119, %349
  %1121 = fmul fast float %1086, %1114
  %1122 = call float @dx.op.unary.f32(i32 22, float %1121)  ; Frc(value)
  %1123 = fmul fast float %1122, 0x401921FB60000000
  %1124 = fadd fast float %1123, %1105
  %1125 = call float @dx.op.unary.f32(i32 13, float %1124)  ; Sin(value)
  %1126 = call float @dx.op.unary.f32(i32 12, float %1124)  ; Cos(value)
  %1127 = fsub fast float -0.000000e+00, %1125
  %1128 = fadd fast float %1079, -5.000000e-01
  %1129 = fadd fast float %1080, -5.000000e-01
  %1130 = fmul fast float %1097, %1128
  %1131 = fmul fast float %1099, %1129
  %1132 = fadd fast float %1130, 5.000000e-01
  %1133 = fadd fast float %1131, 5.000000e-01
  %1134 = fmul fast float %1108, %1132
  %1135 = fmul fast float %1111, %1133
  %1136 = fmul fast float %1126, %1134
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1135, float %1136)  ; FMad(a,b,c)
  %1138 = fmul fast float %1125, %1134
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1135, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1117, %1137
  %1141 = fadd fast float %1120, %1139
  %1142 = icmp ugt i32 %1091, 1
  %1143 = icmp ugt i32 %1089, 33554431
  %1144 = or i1 %1143, %1142
  br i1 %1144, label %1145, label %1170

; <label>:1145                                    ; preds = %1072
  %1146 = add i32 %62, 244
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fmul fast float %1113, %1150
  %1152 = call float @dx.op.unary.f32(i32 22, float %1151)  ; Frc(value)
  %1153 = mul nuw nsw i32 %1091, %1092
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1152, %1154
  %1156 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1157 = fptoui float %1156 to i32
  %1158 = urem i32 %1157, %1091
  %1159 = udiv i32 %1157, %1092
  %1160 = call float @dx.op.unary.f32(i32 22, float %1140)  ; Frc(value)
  %1161 = call float @dx.op.unary.f32(i32 22, float %1141)  ; Frc(value)
  %1162 = uitofp i32 %1158 to float
  %1163 = uitofp i32 %1159 to float
  %1164 = fadd fast float %1160, %1162
  %1165 = fadd fast float %1161, %1163
  %1166 = uitofp i32 %1091 to float
  %1167 = uitofp i32 %1092 to float
  %1168 = fdiv fast float %1164, %1166
  %1169 = fdiv fast float %1165, %1167
  br label %1170

; <label>:1170                                    ; preds = %1145, %1072
  %1171 = phi float [ %1168, %1145 ], [ %1140, %1072 ]
  %1172 = phi float [ %1169, %1145 ], [ %1141, %1072 ]
  %1173 = and i32 %1066, 256
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1221, label %1175

; <label>:1175                                    ; preds = %1170
  %1176 = add i32 %62, 428
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %1178, 0
  %1180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1180, %dx.types.Handle %118, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = add i32 %62, 116
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = shl i32 %1185, 4
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1185, 7
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = fsub fast float 1.000000e+00, %502
  %1193 = call float @dx.op.binary.f32(i32 35, float %1192, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1194 = bitcast float %502 to i32
  %1195 = sitofp i32 %1194 to float
  %1196 = fadd fast float %1195, 0xC1CFBF8940000000
  %1197 = fmul fast float %1191, %1196
  %1198 = fadd fast float %1197, 0x41CFBF8940000000
  %1199 = fptosi float %1198 to i32
  %1200 = bitcast i32 %1199 to float
  %1201 = bitcast float %1193 to i32
  %1202 = sitofp i32 %1201 to float
  %1203 = fadd fast float %1202, 0xC1CFBF8940000000
  %1204 = fmul fast float %1203, %1191
  %1205 = fadd fast float %1204, 0x41CFBF8940000000
  %1206 = fptosi float %1205 to i32
  %1207 = bitcast i32 %1206 to float
  %1208 = fmul fast float %1200, %1188
  %1209 = fmul fast float %1207, %1188
  %1210 = fsub fast float %1193, %1208
  %1211 = fadd fast float %1209, %1193
  %1212 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1213 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1214 = fsub fast float %1182, %1212
  %1215 = fsub fast float %1213, %1212
  %1216 = bitcast float %1215 to i32
  %1217 = sub nsw i32 2129859010, %1216
  %1218 = bitcast i32 %1217 to float
  %1219 = fmul fast float %1218, %1214
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  br label %1221

; <label>:1221                                    ; preds = %1175, %1170
  %1222 = phi float [ %1220, %1175 ], [ %502, %1170 ]
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 128
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1243, label %1227

; <label>:1227                                    ; preds = %1221
  %1228 = add i32 %62, 412
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = add i32 %1230, 0
  %1232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1232, %dx.types.Handle %118, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 524288
  %1238 = icmp ne i32 %1237, 0
  %1239 = fcmp fast ogt float %1234, 0x3FE0101020000000
  %1240 = select i1 %1239, float 1.000000e+00, float 0.000000e+00
  %1241 = select i1 %1238, float %1240, float %1234
  %1242 = fmul fast float %1241, %1222
  br label %1243

; <label>:1243                                    ; preds = %1227, %1221
  %1244 = phi float [ %1242, %1227 ], [ %1222, %1221 ]
  %1245 = fcmp fast ult float %1244, 0x3F70101020000000
  br i1 %1245, label %1788, label %1246

; <label>:1246                                    ; preds = %1243
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 16
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1449, label %1251

; <label>:1251                                    ; preds = %1246
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %62, 364
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1256, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1258, %dx.types.Handle %117, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.f32 %1259, 3
  %1264 = and i32 %1253, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1253, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1263, %1265
  %1270 = fadd fast float %1269, %1268
  %1271 = fmul fast float %1270, 0x3F70101000000000
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 512
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1284, label %1276

; <label>:1276                                    ; preds = %1251
  %1277 = add i32 %62, 444
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = add i32 %1279, 0
  %1281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1281, %dx.types.Handle %118, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  br label %1284

; <label>:1284                                    ; preds = %1276, %1251
  %1285 = phi float [ %1283, %1276 ], [ 1.000000e+00, %1251 ]
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 33554432
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1396, label %1290

; <label>:1290                                    ; preds = %1284
  %1291 = add i32 %62, 240
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 65535
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1293, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = add i32 %62, 244
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = and i32 %1300, 65535
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 24
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = and i32 %1304, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = lshr i32 %1304, 8
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1304, 16
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = add i32 %62, 236
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = lshr i32 %1321, 24
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = and i32 %1321, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = lshr i32 %1321, 8
  %1329 = and i32 %1328, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101020000000
  %1332 = lshr i32 %1321, 16
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = bitcast float %1260 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1260, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1260
  %1345 = fmul fast float %1344, %1343
  %1346 = bitcast float %1261 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1261, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1261
  %1355 = fmul fast float %1354, %1353
  %1356 = bitcast float %1262 to i32
  %1357 = ashr i32 %1356, 1
  %1358 = sub nsw i32 1597463174, %1357
  %1359 = bitcast i32 %1358 to float
  %1360 = fmul fast float %1262, 5.000000e-01
  %1361 = fmul fast float %1359, %1359
  %1362 = fmul fast float %1361, %1360
  %1363 = fsub fast float 1.500000e+00, %1362
  %1364 = fmul fast float %1359, %1262
  %1365 = fmul fast float %1364, %1363
  %1366 = fsub fast float %1345, %1327
  %1367 = fsub fast float %1355, %1331
  %1368 = fsub fast float %1365, %1335
  %1369 = fmul fast float %1366, %1295
  %1370 = fmul fast float %1367, %1297
  %1371 = fmul fast float %1368, %1302
  %1372 = fadd fast float %1369, %1310
  %1373 = fadd fast float %1370, %1314
  %1374 = fadd fast float %1371, %1318
  %1375 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1376 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1377 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1378 = fmul fast float %1375, %1375
  %1379 = fmul fast float %1376, %1376
  %1380 = fmul fast float %1377, %1377
  %1381 = fsub fast float %1378, %1260
  %1382 = fsub fast float %1379, %1261
  %1383 = fsub fast float %1380, %1262
  %1384 = fmul fast float %1381, %1285
  %1385 = fmul fast float %1382, %1285
  %1386 = fmul fast float %1383, %1285
  %1387 = fadd fast float %1384, %1260
  %1388 = fadd fast float %1385, %1261
  %1389 = fadd fast float %1386, %1262
  %1390 = fadd fast float %1307, %1271
  %1391 = fsub fast float %1390, %1324
  %1392 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1393 = fsub fast float %1392, %1271
  %1394 = fmul fast float %1393, %1285
  %1395 = fadd fast float %1394, %1271
  br label %1449

; <label>:1396                                    ; preds = %1284
  %1397 = and i32 %1287, 134217728
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1433, label %1399

; <label>:1399                                    ; preds = %1396
  %1400 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1401 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %1403 = fadd fast float %1400, -5.000000e-01
  %1404 = fadd fast float %1401, -5.000000e-01
  %1405 = fadd fast float %1402, -5.000000e-01
  %1406 = fmul fast float %1403, %1285
  %1407 = fmul fast float %1404, %1285
  %1408 = fmul fast float %1405, %1285
  %1409 = fadd fast float %1406, 5.000000e-01
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1413 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1414 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1415 = fmul fast float %1409, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1416, %1412
  %1418 = fadd fast float %1417, %1415
  %1419 = fmul fast float %1418, %1412
  %1420 = fmul fast float %1410, 2.000000e+00
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = fmul fast float %1421, %1413
  %1423 = fadd fast float %1422, %1420
  %1424 = fmul fast float %1423, %1413
  %1425 = fmul fast float %1411, 2.000000e+00
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = fmul fast float %1426, %1414
  %1428 = fadd fast float %1427, %1425
  %1429 = fmul fast float %1428, %1414
  %1430 = fmul fast float %1419, %1419
  %1431 = fmul fast float %1424, %1424
  %1432 = fmul fast float %1429, %1429
  br label %1449

; <label>:1433                                    ; preds = %1396
  %1434 = fmul fast float %334, %334
  %1435 = fmul fast float %338, %338
  %1436 = fmul fast float %342, %342
  %1437 = fadd fast float %1434, -1.000000e+00
  %1438 = fadd fast float %1435, -1.000000e+00
  %1439 = fadd fast float %1436, -1.000000e+00
  %1440 = fmul fast float %1285, %1437
  %1441 = fmul fast float %1285, %1438
  %1442 = fmul fast float %1285, %1439
  %1443 = fadd fast float %1440, 1.000000e+00
  %1444 = fadd fast float %1441, 1.000000e+00
  %1445 = fadd fast float %1442, 1.000000e+00
  %1446 = fmul fast float %1443, %1260
  %1447 = fmul fast float %1444, %1261
  %1448 = fmul fast float %1445, %1262
  br label %1449

; <label>:1449                                    ; preds = %1433, %1399, %1290, %1246
  %1450 = phi float [ %1395, %1290 ], [ %1271, %1399 ], [ %1271, %1433 ], [ 0x3FA23C0BE0000000, %1246 ]
  %1451 = phi float [ %1387, %1290 ], [ %1430, %1399 ], [ %1446, %1433 ], [ 1.000000e+00, %1246 ]
  %1452 = phi float [ %1388, %1290 ], [ %1431, %1399 ], [ %1447, %1433 ], [ 1.000000e+00, %1246 ]
  %1453 = phi float [ %1389, %1290 ], [ %1432, %1399 ], [ %1448, %1433 ], [ 1.000000e+00, %1246 ]
  %1454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.i32 %1454, 1
  %1456 = and i32 %1455, 1
  %1457 = icmp ne i32 %1456, 0
  %1458 = add i32 %62, 356
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 32
  %1462 = icmp ne i32 %1461, 0
  %1463 = and i1 %1457, %1462
  %1464 = select i1 %1463, float 1.000000e+00, float %1451
  %1465 = select i1 %1463, float 0x3FD3333340000000, float %1452
  %1466 = select i1 %1463, float 0x3FD3333340000000, float %1453
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 32
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1543, label %1471

; <label>:1471                                    ; preds = %1449
  %1472 = add i32 %62, 108
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %62, 380
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %1477, 0
  %1479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1479, %dx.types.Handle %117, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.f32 %1480, 1
  %1483 = extractvalue %dx.types.ResRet.f32 %1480, 2
  %1484 = extractvalue %dx.types.ResRet.f32 %1480, 3
  %1485 = and i32 %1474, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = lshr i32 %1474, 8
  %1488 = and i32 %1487, 255
  %1489 = uitofp i32 %1488 to float
  %1490 = lshr i32 %1474, 16
  %1491 = and i32 %1490, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = fmul fast float %1492, 0x3F70101000000000
  %1494 = fmul fast float %1481, %1486
  %1495 = fadd fast float %1494, %1489
  %1496 = fmul fast float %1495, 0x3F70101000000000
  %1497 = fadd fast float %1482, -5.000000e-01
  %1498 = fadd fast float %1484, -5.000000e-01
  %1499 = fmul fast float %1497, %1493
  %1500 = fmul fast float %1498, %1493
  %1501 = fadd fast float %1499, 5.000000e-01
  %1502 = fadd fast float %1500, 5.000000e-01
  %1503 = fmul fast float %1501, 2.000000e+00
  %1504 = fadd fast float %1503, -1.000000e+00
  %1505 = fmul fast float %1502, 2.000000e+00
  %1506 = fadd fast float %1505, -1.000000e+00
  %1507 = fadd fast float %1504, %1506
  %1508 = fmul fast float %1507, 5.000000e-01
  %1509 = fsub fast float %1504, %1506
  %1510 = fmul fast float %1509, 5.000000e-01
  %1511 = call float @dx.op.unary.f32(i32 6, float %1508)  ; FAbs(value)
  %1512 = fsub fast float 1.000000e+00, %1511
  %1513 = call float @dx.op.unary.f32(i32 6, float %1510)  ; FAbs(value)
  %1514 = fsub fast float %1512, %1513
  %1515 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1510, float %1514, float %1508, float %1510, float %1514)  ; Dot3(ax,ay,az,bx,by,bz)
  %1516 = call float @dx.op.unary.f32(i32 25, float %1515)  ; Rsqrt(value)
  %1517 = fmul fast float %1508, %1516
  %1518 = fmul fast float %1510, %1516
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 67108864
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1539, label %1523

; <label>:1523                                    ; preds = %1471
  %1524 = add i32 %62, 296
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 65535
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 65535
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = lshr i32 %1526, 16
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = fsub fast float %1496, %1534
  %1536 = fmul fast float %1535, %1528
  %1537 = fadd fast float %1536, %1532
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  br label %1539

; <label>:1539                                    ; preds = %1523, %1471
  %1540 = phi float [ %1538, %1523 ], [ %1496, %1471 ]
  %1541 = call float @dx.op.dot2.f32(i32 54, float %1517, float %1518, float %1075, float %1076)  ; Dot2(ax,ay,bx,by)
  %1542 = call float @dx.op.dot2.f32(i32 54, float %1517, float %1518, float %1077, float %1078)  ; Dot2(ax,ay,bx,by)
  br label %1543

; <label>:1543                                    ; preds = %1539, %1449
  %1544 = phi float [ %1540, %1539 ], [ 0x3FD6666660000000, %1449 ]
  %1545 = phi float [ %1541, %1539 ], [ 0.000000e+00, %1449 ]
  %1546 = phi float [ %1542, %1539 ], [ 0.000000e+00, %1449 ]
  %1547 = phi float [ %1483, %1539 ], [ 1.000000e+00, %1449 ]
  %1548 = add i32 %62, 176
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = lshr i32 %1550, 22
  %1552 = shl nuw nsw i32 %1551, 5
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 64
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1591, label %1558

; <label>:1558                                    ; preds = %1543
  %1559 = add i32 %62, 396
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %1561, 0
  %1563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 131072
  %1567 = icmp eq i32 %1566, 0
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1563, %dx.types.Handle %117, float %1171, float %1172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = fmul fast float %1569, %322
  %1573 = fmul fast float %1570, %325
  %1574 = fmul fast float %1571, %328
  br i1 %1567, label %1581, label %1575

; <label>:1575                                    ; preds = %1558
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = fmul fast float %1577, %1572
  %1579 = fmul fast float %1577, %1573
  %1580 = fmul fast float %1577, %1574
  br label %1581

; <label>:1581                                    ; preds = %1575, %1558
  %1582 = phi float [ %1578, %1575 ], [ %1572, %1558 ]
  %1583 = phi float [ %1579, %1575 ], [ %1573, %1558 ]
  %1584 = phi float [ %1580, %1575 ], [ %1574, %1558 ]
  %1585 = fmul fast float %1582, %1553
  %1586 = select i1 %263, float %1585, float %1582
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1586, float %1583, float %1584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = select i1 %263, float 0.000000e+00, float %1582
  %1589 = select i1 %263, float %1587, float %1583
  %1590 = select i1 %263, float 0.000000e+00, float %1584
  br label %1591

; <label>:1591                                    ; preds = %1581, %1543
  %1592 = phi float [ %1588, %1581 ], [ 0.000000e+00, %1543 ]
  %1593 = phi float [ %1589, %1581 ], [ 0.000000e+00, %1543 ]
  %1594 = phi float [ %1590, %1581 ], [ 0.000000e+00, %1543 ]
  %1595 = add i32 %62, 112
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = lshr i32 %1597, 8
  %1601 = and i32 %1600, 255
  %1602 = uitofp i32 %1601 to float
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1464, float %1465, float %1466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = fmul fast float %1602, %1603
  %1605 = fadd fast float %1604, %1599
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  br i1 %1063, label %1608, label %1616

; <label>:1608                                    ; preds = %1591
  %1609 = fsub fast float 1.000000e+00, %1244
  %1610 = fmul fast float %1609, %1051
  %1611 = fmul fast float %1609, %1052
  %1612 = fmul fast float %1609, %1053
  %1613 = fmul fast float %1609, %1054
  %1614 = fmul fast float %1609, %1055
  %1615 = fmul fast float %1609, %1056
  br label %1616

; <label>:1616                                    ; preds = %1608, %1591
  %1617 = phi float [ %1610, %1608 ], [ %1051, %1591 ]
  %1618 = phi float [ %1611, %1608 ], [ %1052, %1591 ]
  %1619 = phi float [ %1612, %1608 ], [ %1053, %1591 ]
  %1620 = phi float [ %1613, %1608 ], [ %1054, %1591 ]
  %1621 = phi float [ %1614, %1608 ], [ %1055, %1591 ]
  %1622 = phi float [ %1615, %1608 ], [ %1056, %1591 ]
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = and i32 %1624, 3
  %1626 = icmp eq i32 %1625, 3
  br i1 %1626, label %1705, label %1627

; <label>:1627                                    ; preds = %1616
  %1628 = and i32 %1624, 16
  %1629 = icmp ne i32 %1628, 0
  %1630 = select i1 %1629, float %1244, float 0.000000e+00
  %1631 = icmp eq i32 %1625, 0
  br i1 %1631, label %1632, label %1660

; <label>:1632                                    ; preds = %1627
  %1633 = and i32 %1624, 64
  %1634 = icmp ne i32 %1633, 0
  %1635 = select i1 %1634, float %1244, float 0.000000e+00
  %1636 = fsub fast float %1464, %1617
  %1637 = fsub fast float %1465, %1618
  %1638 = fsub fast float %1466, %1619
  %1639 = fmul fast float %1630, %1636
  %1640 = fmul fast float %1630, %1637
  %1641 = fmul fast float %1630, %1638
  %1642 = fadd fast float %1639, %1617
  %1643 = fadd fast float %1640, %1618
  %1644 = fadd fast float %1641, %1619
  %1645 = fsub fast float %1450, %1057
  %1646 = fmul fast float %1630, %1645
  %1647 = fadd fast float %1646, %1057
  %1648 = fsub fast float %1592, %1620
  %1649 = fsub fast float %1593, %1621
  %1650 = fsub fast float %1594, %1622
  %1651 = fmul fast float %1635, %1648
  %1652 = fmul fast float %1635, %1649
  %1653 = fmul fast float %1635, %1650
  %1654 = fadd fast float %1651, %1620
  %1655 = fadd fast float %1652, %1621
  %1656 = fadd fast float %1653, %1622
  %1657 = fsub fast float %1607, %1061
  %1658 = fmul fast float %1630, %1657
  %1659 = fadd fast float %1658, %1061
  br label %1705

; <label>:1660                                    ; preds = %1627
  %1661 = icmp eq i32 %1625, 1
  br i1 %1661, label %1662, label %1675

; <label>:1662                                    ; preds = %1660
  %1663 = fadd fast float %1464, -1.000000e+00
  %1664 = fadd fast float %1465, -1.000000e+00
  %1665 = fadd fast float %1466, -1.000000e+00
  %1666 = fmul fast float %1630, %1663
  %1667 = fmul fast float %1630, %1664
  %1668 = fmul fast float %1630, %1665
  %1669 = fadd fast float %1666, 1.000000e+00
  %1670 = fadd fast float %1667, 1.000000e+00
  %1671 = fadd fast float %1668, 1.000000e+00
  %1672 = fmul fast float %1669, %1617
  %1673 = fmul fast float %1670, %1618
  %1674 = fmul fast float %1671, %1619
  br label %1705

; <label>:1675                                    ; preds = %1660
  %1676 = icmp eq i32 %1625, 2
  br i1 %1676, label %1677, label %1705

; <label>:1677                                    ; preds = %1675
  %1678 = call float @dx.op.unary.f32(i32 24, float %1464)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1680 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1681 = fadd fast float %1678, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fadd fast float %1680, -5.000000e-01
  %1684 = fmul fast float %1681, %1630
  %1685 = fmul fast float %1682, %1630
  %1686 = fmul fast float %1683, %1630
  %1687 = fadd fast float %1684, 5.000000e-01
  %1688 = fadd fast float %1685, 5.000000e-01
  %1689 = fadd fast float %1686, 5.000000e-01
  %1690 = fmul fast float %1687, 2.000000e+00
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1691, %1617
  %1693 = fadd fast float %1692, %1690
  %1694 = fmul fast float %1693, %1617
  %1695 = fmul fast float %1688, 2.000000e+00
  %1696 = fsub fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1696, %1618
  %1698 = fadd fast float %1697, %1695
  %1699 = fmul fast float %1698, %1618
  %1700 = fmul fast float %1689, 2.000000e+00
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1701, %1619
  %1703 = fadd fast float %1702, %1700
  %1704 = fmul fast float %1703, %1619
  br label %1705

; <label>:1705                                    ; preds = %1677, %1675, %1662, %1632, %1616
  %1706 = phi float [ %1617, %1616 ], [ %1694, %1677 ], [ %1617, %1675 ], [ %1672, %1662 ], [ %1642, %1632 ]
  %1707 = phi float [ %1618, %1616 ], [ %1699, %1677 ], [ %1618, %1675 ], [ %1673, %1662 ], [ %1643, %1632 ]
  %1708 = phi float [ %1619, %1616 ], [ %1704, %1677 ], [ %1619, %1675 ], [ %1674, %1662 ], [ %1644, %1632 ]
  %1709 = phi float [ %1620, %1616 ], [ %1620, %1677 ], [ %1620, %1675 ], [ %1620, %1662 ], [ %1654, %1632 ]
  %1710 = phi float [ %1621, %1616 ], [ %1621, %1677 ], [ %1621, %1675 ], [ %1621, %1662 ], [ %1655, %1632 ]
  %1711 = phi float [ %1622, %1616 ], [ %1622, %1677 ], [ %1622, %1675 ], [ %1622, %1662 ], [ %1656, %1632 ]
  %1712 = phi float [ %1057, %1616 ], [ %1057, %1677 ], [ %1057, %1675 ], [ %1057, %1662 ], [ %1647, %1632 ]
  %1713 = phi float [ %1061, %1616 ], [ %1061, %1677 ], [ %1061, %1675 ], [ %1061, %1662 ], [ %1659, %1632 ]
  %1714 = and i32 %1624, 12
  %1715 = icmp eq i32 %1714, 12
  br i1 %1715, label %1788, label %1716

; <label>:1716                                    ; preds = %1705
  %1717 = and i32 %1624, 2097184
  %1718 = icmp eq i32 %1717, 2097184
  %1719 = select i1 %1718, float %1244, float 0.000000e+00
  %1720 = and i32 %1624, 4194336
  %1721 = icmp eq i32 %1720, 4194336
  %1722 = select i1 %1721, float %1244, float 0.000000e+00
  %1723 = and i32 %1624, 8388640
  %1724 = icmp eq i32 %1723, 8388640
  %1725 = select i1 %1724, float %1244, float 0.000000e+00
  %1726 = icmp eq i32 %1714, 0
  br i1 %1726, label %1727, label %1740

; <label>:1727                                    ; preds = %1716
  %1728 = fsub fast float %1545, %1049
  %1729 = fsub fast float %1546, %1050
  %1730 = fmul fast float %1719, %1728
  %1731 = fmul fast float %1719, %1729
  %1732 = fadd fast float %1730, %1049
  %1733 = fadd fast float %1731, %1050
  %1734 = fsub fast float %1547, %1060
  %1735 = fmul fast float %1722, %1734
  %1736 = fadd fast float %1735, %1060
  %1737 = fsub fast float %1544, %1059
  %1738 = fmul fast float %1725, %1737
  %1739 = fadd fast float %1738, %1059
  br label %1788

; <label>:1740                                    ; preds = %1716
  %1741 = icmp eq i32 %1714, 4
  br i1 %1741, label %1742, label %1774

; <label>:1742                                    ; preds = %1740
  %1743 = fmul fast float %1719, %1545
  %1744 = fmul fast float %1719, %1546
  %1745 = fadd fast float %1743, %1049
  %1746 = fadd fast float %1744, %1050
  %1747 = call float @dx.op.binary.f32(i32 36, float %1060, float %1547)  ; FMin(a,b)
  %1748 = fsub fast float %1747, %1060
  %1749 = fmul fast float %1748, %1722
  %1750 = fadd fast float %1749, %1060
  %1751 = fadd fast float %1544, %1059
  %1752 = fmul fast float %1751, 0x3FF337FAE0000000
  %1753 = fmul fast float %1059, %1059
  %1754 = fmul fast float %1544, %1544
  %1755 = fadd fast float %1754, %1753
  %1756 = fmul fast float %1755, 0x3FE5152B00000000
  %1757 = fmul fast float %1059, 0xBFCC1F85E0000000
  %1758 = fmul fast float %1757, %1544
  %1759 = fadd fast float %1758, 0xBFE1363700000000
  %1760 = fadd fast float %1759, %1752
  %1761 = fsub fast float %1760, %1756
  %1762 = fmul fast float %1751, 0x3FBA6F0D00000000
  %1763 = fmul fast float %1755, 0x3FD0432880000000
  %1764 = fmul fast float %1059, 0xBFEF110800000000
  %1765 = fmul fast float %1764, %1544
  %1766 = fadd fast float %1765, 1.000000e+00
  %1767 = fsub fast float %1766, %1762
  %1768 = fadd fast float %1767, %1763
  %1769 = fdiv fast float %1761, %1768
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fsub fast float %1770, %1059
  %1772 = fmul fast float %1771, %1725
  %1773 = fadd fast float %1772, %1059
  br label %1788

; <label>:1774                                    ; preds = %1740
  %1775 = icmp eq i32 %1714, 8
  br i1 %1775, label %1776, label %1788

; <label>:1776                                    ; preds = %1774
  %1777 = fmul fast float %1719, %1545
  %1778 = fmul fast float %1719, %1546
  %1779 = fadd fast float %1777, %1049
  %1780 = fadd fast float %1778, %1050
  %1781 = call float @dx.op.binary.f32(i32 36, float %1060, float %1547)  ; FMin(a,b)
  %1782 = fsub fast float %1781, %1060
  %1783 = fmul fast float %1782, %1722
  %1784 = fadd fast float %1783, %1060
  %1785 = fsub fast float %1544, %1059
  %1786 = fmul fast float %1725, %1785
  %1787 = fadd fast float %1786, %1059
  br label %1788

; <label>:1788                                    ; preds = %1776, %1774, %1742, %1727, %1705, %1243, %1062, %1048
  %1789 = phi float [ %1049, %1705 ], [ %1049, %1243 ], [ %1049, %1048 ], [ %1779, %1776 ], [ %1049, %1774 ], [ %1745, %1742 ], [ %1732, %1727 ], [ %1049, %1062 ]
  %1790 = phi float [ %1050, %1705 ], [ %1050, %1243 ], [ %1050, %1048 ], [ %1780, %1776 ], [ %1050, %1774 ], [ %1746, %1742 ], [ %1733, %1727 ], [ %1050, %1062 ]
  %1791 = phi float [ %1706, %1705 ], [ %1051, %1243 ], [ %1051, %1048 ], [ %1706, %1776 ], [ %1706, %1774 ], [ %1706, %1742 ], [ %1706, %1727 ], [ %1051, %1062 ]
  %1792 = phi float [ %1707, %1705 ], [ %1052, %1243 ], [ %1052, %1048 ], [ %1707, %1776 ], [ %1707, %1774 ], [ %1707, %1742 ], [ %1707, %1727 ], [ %1052, %1062 ]
  %1793 = phi float [ %1708, %1705 ], [ %1053, %1243 ], [ %1053, %1048 ], [ %1708, %1776 ], [ %1708, %1774 ], [ %1708, %1742 ], [ %1708, %1727 ], [ %1053, %1062 ]
  %1794 = phi float [ %1709, %1705 ], [ %1054, %1243 ], [ %1054, %1048 ], [ %1709, %1776 ], [ %1709, %1774 ], [ %1709, %1742 ], [ %1709, %1727 ], [ %1054, %1062 ]
  %1795 = phi float [ %1710, %1705 ], [ %1055, %1243 ], [ %1055, %1048 ], [ %1710, %1776 ], [ %1710, %1774 ], [ %1710, %1742 ], [ %1710, %1727 ], [ %1055, %1062 ]
  %1796 = phi float [ %1711, %1705 ], [ %1056, %1243 ], [ %1056, %1048 ], [ %1711, %1776 ], [ %1711, %1774 ], [ %1711, %1742 ], [ %1711, %1727 ], [ %1056, %1062 ]
  %1797 = phi float [ %1712, %1705 ], [ %1057, %1243 ], [ %1057, %1048 ], [ %1712, %1776 ], [ %1712, %1774 ], [ %1712, %1742 ], [ %1712, %1727 ], [ %1057, %1062 ]
  %1798 = phi float [ %1059, %1705 ], [ %1059, %1243 ], [ %1059, %1048 ], [ %1787, %1776 ], [ %1059, %1774 ], [ %1773, %1742 ], [ %1739, %1727 ], [ %1059, %1062 ]
  %1799 = phi float [ %1060, %1705 ], [ %1060, %1243 ], [ %1060, %1048 ], [ %1784, %1776 ], [ %1060, %1774 ], [ %1750, %1742 ], [ %1736, %1727 ], [ %1060, %1062 ]
  %1800 = phi float [ %1713, %1705 ], [ %1061, %1243 ], [ %1061, %1048 ], [ %1713, %1776 ], [ %1713, %1774 ], [ %1713, %1742 ], [ %1713, %1727 ], [ %1061, %1062 ]
  br i1 %449, label %2527, label %1801

; <label>:1801                                    ; preds = %1788
  %1802 = icmp ult i32 %505, 3
  %1803 = add i32 %62, 56
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = add i32 %62, 60
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = or i32 %1808, %1805
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %2527, label %1811

; <label>:1811                                    ; preds = %1801
  %1812 = and i32 %1805, 262144
  %1813 = icmp ne i32 %1812, 0
  %1814 = select i1 %1813, float %67, float 1.000000e+00
  %1815 = select i1 %1813, float %68, float 0.000000e+00
  %1816 = select i1 %1813, float %69, float 0.000000e+00
  %1817 = select i1 %1813, float %70, float 1.000000e+00
  %1818 = select i1 %1813, float %71, float %99
  %1819 = select i1 %1813, float %72, float %100
  %1820 = add i32 %62, 316
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = lshr i32 %1822, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fmul fast float %1824, 0x3F50624DE0000000
  %1826 = add i32 %62, 120
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 16
  %1830 = and i32 %1829, 255
  %1831 = lshr i32 %1828, 24
  %1832 = add i32 %62, 324
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 65535
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = lshr i32 %1834, 16
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = add i32 %62, 64
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = lshr i32 %1841, 22
  %1843 = shl nuw nsw i32 %1842, 5
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = shl i32 %1841, 4
  %1846 = and i32 %1845, 32752
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = lshr i32 %1841, 7
  %1849 = and i32 %1848, 32752
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = fmul fast float %1852, 1.000000e+03
  %1854 = fmul fast float %399, %1853
  %1855 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1856 = fadd fast float %1855, %389
  %1857 = fmul fast float %400, %1853
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = fadd fast float %1858, %391
  %1860 = fmul fast float %1825, %1853
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = fmul fast float %1861, 0x401921FB60000000
  %1863 = fadd fast float %1862, %1844
  %1864 = call float @dx.op.unary.f32(i32 13, float %1863)  ; Sin(value)
  %1865 = call float @dx.op.unary.f32(i32 12, float %1863)  ; Cos(value)
  %1866 = fsub fast float -0.000000e+00, %1864
  %1867 = fadd fast float %1818, -5.000000e-01
  %1868 = fadd fast float %1819, -5.000000e-01
  %1869 = fmul fast float %1836, %1867
  %1870 = fmul fast float %1838, %1868
  %1871 = fadd fast float %1869, 5.000000e-01
  %1872 = fadd fast float %1870, 5.000000e-01
  %1873 = fmul fast float %1847, %1871
  %1874 = fmul fast float %1850, %1872
  %1875 = fmul fast float %1865, %1873
  %1876 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1874, float %1875)  ; FMad(a,b,c)
  %1877 = fmul fast float %1864, %1873
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1865, float %1874, float %1877)  ; FMad(a,b,c)
  %1879 = fadd fast float %1856, %1876
  %1880 = fadd fast float %1859, %1878
  %1881 = icmp ugt i32 %1830, 1
  %1882 = icmp ugt i32 %1828, 33554431
  %1883 = or i1 %1882, %1881
  br i1 %1883, label %1884, label %1909

; <label>:1884                                    ; preds = %1811
  %1885 = add i32 %62, 260
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = lshr i32 %1887, 16
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = fmul fast float %1852, %1889
  %1891 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1892 = mul nuw nsw i32 %1830, %1831
  %1893 = uitofp i32 %1892 to float
  %1894 = fmul fast float %1891, %1893
  %1895 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1896 = fptoui float %1895 to i32
  %1897 = urem i32 %1896, %1830
  %1898 = udiv i32 %1896, %1831
  %1899 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1900 = call float @dx.op.unary.f32(i32 22, float %1880)  ; Frc(value)
  %1901 = uitofp i32 %1897 to float
  %1902 = uitofp i32 %1898 to float
  %1903 = fadd fast float %1899, %1901
  %1904 = fadd fast float %1900, %1902
  %1905 = uitofp i32 %1830 to float
  %1906 = uitofp i32 %1831 to float
  %1907 = fdiv fast float %1903, %1905
  %1908 = fdiv fast float %1904, %1906
  br label %1909

; <label>:1909                                    ; preds = %1884, %1811
  %1910 = phi float [ %1907, %1884 ], [ %1879, %1811 ]
  %1911 = phi float [ %1908, %1884 ], [ %1880, %1811 ]
  %1912 = and i32 %1805, 256
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1960, label %1914

; <label>:1914                                    ; preds = %1909
  %1915 = add i32 %62, 432
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = add i32 %1917, 0
  %1919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1919, %dx.types.Handle %118, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = add i32 %62, 132
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = shl i32 %1924, 4
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = lshr i32 %1924, 7
  %1929 = and i32 %1928, 32752
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = fsub fast float 1.000000e+00, %501
  %1932 = call float @dx.op.binary.f32(i32 35, float %1931, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1933 = bitcast float %501 to i32
  %1934 = sitofp i32 %1933 to float
  %1935 = fadd fast float %1934, 0xC1CFBF8940000000
  %1936 = fmul fast float %1930, %1935
  %1937 = fadd fast float %1936, 0x41CFBF8940000000
  %1938 = fptosi float %1937 to i32
  %1939 = bitcast i32 %1938 to float
  %1940 = bitcast float %1932 to i32
  %1941 = sitofp i32 %1940 to float
  %1942 = fadd fast float %1941, 0xC1CFBF8940000000
  %1943 = fmul fast float %1942, %1930
  %1944 = fadd fast float %1943, 0x41CFBF8940000000
  %1945 = fptosi float %1944 to i32
  %1946 = bitcast i32 %1945 to float
  %1947 = fmul fast float %1939, %1927
  %1948 = fmul fast float %1946, %1927
  %1949 = fsub fast float %1932, %1947
  %1950 = fadd fast float %1948, %1932
  %1951 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1952 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1953 = fsub fast float %1921, %1951
  %1954 = fsub fast float %1952, %1951
  %1955 = bitcast float %1954 to i32
  %1956 = sub nsw i32 2129859010, %1955
  %1957 = bitcast i32 %1956 to float
  %1958 = fmul fast float %1957, %1953
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  br label %1960

; <label>:1960                                    ; preds = %1914, %1909
  %1961 = phi float [ %1959, %1914 ], [ %501, %1909 ]
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %1963, 128
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %1982, label %1966

; <label>:1966                                    ; preds = %1960
  %1967 = add i32 %62, 416
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %118, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 524288
  %1977 = icmp ne i32 %1976, 0
  %1978 = fcmp fast ogt float %1973, 0x3FE0101020000000
  %1979 = select i1 %1978, float 1.000000e+00, float 0.000000e+00
  %1980 = select i1 %1977, float %1979, float %1973
  %1981 = fmul fast float %1980, %1961
  br label %1982

; <label>:1982                                    ; preds = %1966, %1960
  %1983 = phi float [ %1981, %1966 ], [ %1961, %1960 ]
  %1984 = fcmp fast ult float %1983, 0x3F70101020000000
  br i1 %1984, label %2527, label %1985

; <label>:1985                                    ; preds = %1982
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 16
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2188, label %1990

; <label>:1990                                    ; preds = %1985
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %62, 368
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %1995, 0
  %1997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1997, %dx.types.Handle %117, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = extractvalue %dx.types.ResRet.f32 %1998, 1
  %2001 = extractvalue %dx.types.ResRet.f32 %1998, 2
  %2002 = extractvalue %dx.types.ResRet.f32 %1998, 3
  %2003 = and i32 %1992, 255
  %2004 = uitofp i32 %2003 to float
  %2005 = lshr i32 %1992, 8
  %2006 = and i32 %2005, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = fmul fast float %2002, %2004
  %2009 = fadd fast float %2008, %2007
  %2010 = fmul fast float %2009, 0x3F70101000000000
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = and i32 %2012, 512
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2023, label %2015

; <label>:2015                                    ; preds = %1990
  %2016 = add i32 %62, 448
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %2018, 0
  %2020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2020, %dx.types.Handle %118, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  br label %2023

; <label>:2023                                    ; preds = %2015, %1990
  %2024 = phi float [ %2022, %2015 ], [ 1.000000e+00, %1990 ]
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 33554432
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2135, label %2029

; <label>:2029                                    ; preds = %2023
  %2030 = add i32 %62, 256
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 65535
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2032, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = add i32 %62, 260
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 65535
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = lshr i32 %2043, 24
  %2045 = uitofp i32 %2044 to float
  %2046 = fmul fast float %2045, 0x3F70101020000000
  %2047 = and i32 %2043, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = fmul fast float %2048, 0x3F70101020000000
  %2050 = lshr i32 %2043, 8
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2043, 16
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = add i32 %62, 252
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = lshr i32 %2060, 24
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = and i32 %2060, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = lshr i32 %2060, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = lshr i32 %2060, 16
  %2072 = and i32 %2071, 255
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2073, 0x3F70101020000000
  %2075 = bitcast float %1999 to i32
  %2076 = ashr i32 %2075, 1
  %2077 = sub nsw i32 1597463174, %2076
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %1999, 5.000000e-01
  %2080 = fmul fast float %2078, %2078
  %2081 = fmul fast float %2080, %2079
  %2082 = fsub fast float 1.500000e+00, %2081
  %2083 = fmul fast float %2078, %1999
  %2084 = fmul fast float %2083, %2082
  %2085 = bitcast float %2000 to i32
  %2086 = ashr i32 %2085, 1
  %2087 = sub nsw i32 1597463174, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2000, 5.000000e-01
  %2090 = fmul fast float %2088, %2088
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float 1.500000e+00, %2091
  %2093 = fmul fast float %2088, %2000
  %2094 = fmul fast float %2093, %2092
  %2095 = bitcast float %2001 to i32
  %2096 = ashr i32 %2095, 1
  %2097 = sub nsw i32 1597463174, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2001, 5.000000e-01
  %2100 = fmul fast float %2098, %2098
  %2101 = fmul fast float %2100, %2099
  %2102 = fsub fast float 1.500000e+00, %2101
  %2103 = fmul fast float %2098, %2001
  %2104 = fmul fast float %2103, %2102
  %2105 = fsub fast float %2084, %2066
  %2106 = fsub fast float %2094, %2070
  %2107 = fsub fast float %2104, %2074
  %2108 = fmul fast float %2105, %2034
  %2109 = fmul fast float %2106, %2036
  %2110 = fmul fast float %2107, %2041
  %2111 = fadd fast float %2108, %2049
  %2112 = fadd fast float %2109, %2053
  %2113 = fadd fast float %2110, %2057
  %2114 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2115 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2116 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2117 = fmul fast float %2114, %2114
  %2118 = fmul fast float %2115, %2115
  %2119 = fmul fast float %2116, %2116
  %2120 = fsub fast float %2117, %1999
  %2121 = fsub fast float %2118, %2000
  %2122 = fsub fast float %2119, %2001
  %2123 = fmul fast float %2120, %2024
  %2124 = fmul fast float %2121, %2024
  %2125 = fmul fast float %2122, %2024
  %2126 = fadd fast float %2123, %1999
  %2127 = fadd fast float %2124, %2000
  %2128 = fadd fast float %2125, %2001
  %2129 = fadd fast float %2046, %2010
  %2130 = fsub fast float %2129, %2063
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = fsub fast float %2131, %2010
  %2133 = fmul fast float %2132, %2024
  %2134 = fadd fast float %2133, %2010
  br label %2188

; <label>:2135                                    ; preds = %2023
  %2136 = and i32 %2026, 134217728
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2172, label %2138

; <label>:2138                                    ; preds = %2135
  %2139 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2140 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2141 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %2142 = fadd fast float %2139, -5.000000e-01
  %2143 = fadd fast float %2140, -5.000000e-01
  %2144 = fadd fast float %2141, -5.000000e-01
  %2145 = fmul fast float %2142, %2024
  %2146 = fmul fast float %2143, %2024
  %2147 = fmul fast float %2144, %2024
  %2148 = fadd fast float %2145, 5.000000e-01
  %2149 = fadd fast float %2146, 5.000000e-01
  %2150 = fadd fast float %2147, 5.000000e-01
  %2151 = call float @dx.op.unary.f32(i32 24, float %1999)  ; Sqrt(value)
  %2152 = call float @dx.op.unary.f32(i32 24, float %2000)  ; Sqrt(value)
  %2153 = call float @dx.op.unary.f32(i32 24, float %2001)  ; Sqrt(value)
  %2154 = fmul fast float %2148, 2.000000e+00
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fmul fast float %2155, %2151
  %2157 = fadd fast float %2156, %2154
  %2158 = fmul fast float %2157, %2151
  %2159 = fmul fast float %2149, 2.000000e+00
  %2160 = fsub fast float 1.000000e+00, %2159
  %2161 = fmul fast float %2160, %2152
  %2162 = fadd fast float %2161, %2159
  %2163 = fmul fast float %2162, %2152
  %2164 = fmul fast float %2150, 2.000000e+00
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %2165, %2153
  %2167 = fadd fast float %2166, %2164
  %2168 = fmul fast float %2167, %2153
  %2169 = fmul fast float %2158, %2158
  %2170 = fmul fast float %2163, %2163
  %2171 = fmul fast float %2168, %2168
  br label %2188

; <label>:2172                                    ; preds = %2135
  %2173 = fmul fast float %376, %376
  %2174 = fmul fast float %380, %380
  %2175 = fmul fast float %384, %384
  %2176 = fadd fast float %2173, -1.000000e+00
  %2177 = fadd fast float %2174, -1.000000e+00
  %2178 = fadd fast float %2175, -1.000000e+00
  %2179 = fmul fast float %2024, %2176
  %2180 = fmul fast float %2024, %2177
  %2181 = fmul fast float %2024, %2178
  %2182 = fadd fast float %2179, 1.000000e+00
  %2183 = fadd fast float %2180, 1.000000e+00
  %2184 = fadd fast float %2181, 1.000000e+00
  %2185 = fmul fast float %2182, %1999
  %2186 = fmul fast float %2183, %2000
  %2187 = fmul fast float %2184, %2001
  br label %2188

; <label>:2188                                    ; preds = %2172, %2138, %2029, %1985
  %2189 = phi float [ %2134, %2029 ], [ %2010, %2138 ], [ %2010, %2172 ], [ 0x3FA23C0BE0000000, %1985 ]
  %2190 = phi float [ %2126, %2029 ], [ %2169, %2138 ], [ %2185, %2172 ], [ 1.000000e+00, %1985 ]
  %2191 = phi float [ %2127, %2029 ], [ %2170, %2138 ], [ %2186, %2172 ], [ 1.000000e+00, %1985 ]
  %2192 = phi float [ %2128, %2029 ], [ %2171, %2138 ], [ %2187, %2172 ], [ 1.000000e+00, %1985 ]
  %2193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.i32 %2193, 1
  %2195 = and i32 %2194, 1
  %2196 = icmp ne i32 %2195, 0
  %2197 = add i32 %62, 356
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 32
  %2201 = icmp ne i32 %2200, 0
  %2202 = and i1 %2196, %2201
  %2203 = select i1 %2202, float 1.000000e+00, float %2190
  %2204 = select i1 %2202, float 0x3FD3333340000000, float %2191
  %2205 = select i1 %2202, float 0x3FD3333340000000, float %2192
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 32
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2282, label %2210

; <label>:2210                                    ; preds = %2188
  %2211 = add i32 %62, 124
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %62, 384
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %2216, 0
  %2218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2218, %dx.types.Handle %117, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2220 = extractvalue %dx.types.ResRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.ResRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.ResRet.f32 %2219, 2
  %2223 = extractvalue %dx.types.ResRet.f32 %2219, 3
  %2224 = and i32 %2213, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = lshr i32 %2213, 8
  %2227 = and i32 %2226, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = lshr i32 %2213, 16
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2231, 0x3F70101000000000
  %2233 = fmul fast float %2220, %2225
  %2234 = fadd fast float %2233, %2228
  %2235 = fmul fast float %2234, 0x3F70101000000000
  %2236 = fadd fast float %2221, -5.000000e-01
  %2237 = fadd fast float %2223, -5.000000e-01
  %2238 = fmul fast float %2236, %2232
  %2239 = fmul fast float %2237, %2232
  %2240 = fadd fast float %2238, 5.000000e-01
  %2241 = fadd fast float %2239, 5.000000e-01
  %2242 = fmul fast float %2240, 2.000000e+00
  %2243 = fadd fast float %2242, -1.000000e+00
  %2244 = fmul fast float %2241, 2.000000e+00
  %2245 = fadd fast float %2244, -1.000000e+00
  %2246 = fadd fast float %2243, %2245
  %2247 = fmul fast float %2246, 5.000000e-01
  %2248 = fsub fast float %2243, %2245
  %2249 = fmul fast float %2248, 5.000000e-01
  %2250 = call float @dx.op.unary.f32(i32 6, float %2247)  ; FAbs(value)
  %2251 = fsub fast float 1.000000e+00, %2250
  %2252 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2253 = fsub fast float %2251, %2252
  %2254 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2249, float %2253, float %2247, float %2249, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %2255 = call float @dx.op.unary.f32(i32 25, float %2254)  ; Rsqrt(value)
  %2256 = fmul fast float %2247, %2255
  %2257 = fmul fast float %2249, %2255
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 67108864
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2278, label %2262

; <label>:2262                                    ; preds = %2210
  %2263 = add i32 %62, 312
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 65535
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 65535
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2265, 16
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = fsub fast float %2235, %2273
  %2275 = fmul fast float %2274, %2267
  %2276 = fadd fast float %2275, %2271
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  br label %2278

; <label>:2278                                    ; preds = %2262, %2210
  %2279 = phi float [ %2277, %2262 ], [ %2235, %2210 ]
  %2280 = call float @dx.op.dot2.f32(i32 54, float %2256, float %2257, float %1814, float %1815)  ; Dot2(ax,ay,bx,by)
  %2281 = call float @dx.op.dot2.f32(i32 54, float %2256, float %2257, float %1816, float %1817)  ; Dot2(ax,ay,bx,by)
  br label %2282

; <label>:2282                                    ; preds = %2278, %2188
  %2283 = phi float [ %2279, %2278 ], [ 0x3FD6666660000000, %2188 ]
  %2284 = phi float [ %2280, %2278 ], [ 0.000000e+00, %2188 ]
  %2285 = phi float [ %2281, %2278 ], [ 0.000000e+00, %2188 ]
  %2286 = phi float [ %2222, %2278 ], [ 1.000000e+00, %2188 ]
  %2287 = add i32 %62, 192
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = lshr i32 %2289, 22
  %2291 = shl nuw nsw i32 %2290, 5
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 64
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2330, label %2297

; <label>:2297                                    ; preds = %2282
  %2298 = add i32 %62, 400
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 131072
  %2306 = icmp eq i32 %2305, 0
  %2307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %117, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  %2309 = extractvalue %dx.types.ResRet.f32 %2307, 1
  %2310 = extractvalue %dx.types.ResRet.f32 %2307, 2
  %2311 = fmul fast float %2308, %364
  %2312 = fmul fast float %2309, %367
  %2313 = fmul fast float %2310, %370
  br i1 %2306, label %2320, label %2314

; <label>:2314                                    ; preds = %2297
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = fmul fast float %2316, %2311
  %2318 = fmul fast float %2316, %2312
  %2319 = fmul fast float %2316, %2313
  br label %2320

; <label>:2320                                    ; preds = %2314, %2297
  %2321 = phi float [ %2317, %2314 ], [ %2311, %2297 ]
  %2322 = phi float [ %2318, %2314 ], [ %2312, %2297 ]
  %2323 = phi float [ %2319, %2314 ], [ %2313, %2297 ]
  %2324 = fmul fast float %2321, %2292
  %2325 = select i1 %263, float %2324, float %2321
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2322, float %2323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = select i1 %263, float 0.000000e+00, float %2321
  %2328 = select i1 %263, float %2326, float %2322
  %2329 = select i1 %263, float 0.000000e+00, float %2323
  br label %2330

; <label>:2330                                    ; preds = %2320, %2282
  %2331 = phi float [ %2327, %2320 ], [ 0.000000e+00, %2282 ]
  %2332 = phi float [ %2328, %2320 ], [ 0.000000e+00, %2282 ]
  %2333 = phi float [ %2329, %2320 ], [ 0.000000e+00, %2282 ]
  %2334 = add i32 %62, 128
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = lshr i32 %2336, 8
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2203, float %2204, float %2205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = fmul fast float %2341, %2342
  %2344 = fadd fast float %2343, %2338
  %2345 = fmul fast float %2344, 0x3F70101020000000
  %2346 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  br i1 %1802, label %2347, label %2355

; <label>:2347                                    ; preds = %2330
  %2348 = fsub fast float 1.000000e+00, %1983
  %2349 = fmul fast float %2348, %1791
  %2350 = fmul fast float %2348, %1792
  %2351 = fmul fast float %2348, %1793
  %2352 = fmul fast float %2348, %1794
  %2353 = fmul fast float %2348, %1795
  %2354 = fmul fast float %2348, %1796
  br label %2355

; <label>:2355                                    ; preds = %2347, %2330
  %2356 = phi float [ %2349, %2347 ], [ %1791, %2330 ]
  %2357 = phi float [ %2350, %2347 ], [ %1792, %2330 ]
  %2358 = phi float [ %2351, %2347 ], [ %1793, %2330 ]
  %2359 = phi float [ %2352, %2347 ], [ %1794, %2330 ]
  %2360 = phi float [ %2353, %2347 ], [ %1795, %2330 ]
  %2361 = phi float [ %2354, %2347 ], [ %1796, %2330 ]
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 3
  %2365 = icmp eq i32 %2364, 3
  br i1 %2365, label %2444, label %2366

; <label>:2366                                    ; preds = %2355
  %2367 = and i32 %2363, 16
  %2368 = icmp ne i32 %2367, 0
  %2369 = select i1 %2368, float %1983, float 0.000000e+00
  %2370 = icmp eq i32 %2364, 0
  br i1 %2370, label %2371, label %2399

; <label>:2371                                    ; preds = %2366
  %2372 = and i32 %2363, 64
  %2373 = icmp ne i32 %2372, 0
  %2374 = select i1 %2373, float %1983, float 0.000000e+00
  %2375 = fsub fast float %2203, %2356
  %2376 = fsub fast float %2204, %2357
  %2377 = fsub fast float %2205, %2358
  %2378 = fmul fast float %2369, %2375
  %2379 = fmul fast float %2369, %2376
  %2380 = fmul fast float %2369, %2377
  %2381 = fadd fast float %2378, %2356
  %2382 = fadd fast float %2379, %2357
  %2383 = fadd fast float %2380, %2358
  %2384 = fsub fast float %2189, %1797
  %2385 = fmul fast float %2369, %2384
  %2386 = fadd fast float %2385, %1797
  %2387 = fsub fast float %2331, %2359
  %2388 = fsub fast float %2332, %2360
  %2389 = fsub fast float %2333, %2361
  %2390 = fmul fast float %2374, %2387
  %2391 = fmul fast float %2374, %2388
  %2392 = fmul fast float %2374, %2389
  %2393 = fadd fast float %2390, %2359
  %2394 = fadd fast float %2391, %2360
  %2395 = fadd fast float %2392, %2361
  %2396 = fsub fast float %2346, %1800
  %2397 = fmul fast float %2369, %2396
  %2398 = fadd fast float %2397, %1800
  br label %2444

; <label>:2399                                    ; preds = %2366
  %2400 = icmp eq i32 %2364, 1
  br i1 %2400, label %2401, label %2414

; <label>:2401                                    ; preds = %2399
  %2402 = fadd fast float %2203, -1.000000e+00
  %2403 = fadd fast float %2204, -1.000000e+00
  %2404 = fadd fast float %2205, -1.000000e+00
  %2405 = fmul fast float %2369, %2402
  %2406 = fmul fast float %2369, %2403
  %2407 = fmul fast float %2369, %2404
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fadd fast float %2406, 1.000000e+00
  %2410 = fadd fast float %2407, 1.000000e+00
  %2411 = fmul fast float %2408, %2356
  %2412 = fmul fast float %2409, %2357
  %2413 = fmul fast float %2410, %2358
  br label %2444

; <label>:2414                                    ; preds = %2399
  %2415 = icmp eq i32 %2364, 2
  br i1 %2415, label %2416, label %2444

; <label>:2416                                    ; preds = %2414
  %2417 = call float @dx.op.unary.f32(i32 24, float %2203)  ; Sqrt(value)
  %2418 = call float @dx.op.unary.f32(i32 24, float %2204)  ; Sqrt(value)
  %2419 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2420 = fadd fast float %2417, -5.000000e-01
  %2421 = fadd fast float %2418, -5.000000e-01
  %2422 = fadd fast float %2419, -5.000000e-01
  %2423 = fmul fast float %2420, %2369
  %2424 = fmul fast float %2421, %2369
  %2425 = fmul fast float %2422, %2369
  %2426 = fadd fast float %2423, 5.000000e-01
  %2427 = fadd fast float %2424, 5.000000e-01
  %2428 = fadd fast float %2425, 5.000000e-01
  %2429 = fmul fast float %2426, 2.000000e+00
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2430, %2356
  %2432 = fadd fast float %2431, %2429
  %2433 = fmul fast float %2432, %2356
  %2434 = fmul fast float %2427, 2.000000e+00
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = fmul fast float %2435, %2357
  %2437 = fadd fast float %2436, %2434
  %2438 = fmul fast float %2437, %2357
  %2439 = fmul fast float %2428, 2.000000e+00
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2358
  %2442 = fadd fast float %2441, %2439
  %2443 = fmul fast float %2442, %2358
  br label %2444

; <label>:2444                                    ; preds = %2416, %2414, %2401, %2371, %2355
  %2445 = phi float [ %2356, %2355 ], [ %2433, %2416 ], [ %2356, %2414 ], [ %2411, %2401 ], [ %2381, %2371 ]
  %2446 = phi float [ %2357, %2355 ], [ %2438, %2416 ], [ %2357, %2414 ], [ %2412, %2401 ], [ %2382, %2371 ]
  %2447 = phi float [ %2358, %2355 ], [ %2443, %2416 ], [ %2358, %2414 ], [ %2413, %2401 ], [ %2383, %2371 ]
  %2448 = phi float [ %2359, %2355 ], [ %2359, %2416 ], [ %2359, %2414 ], [ %2359, %2401 ], [ %2393, %2371 ]
  %2449 = phi float [ %2360, %2355 ], [ %2360, %2416 ], [ %2360, %2414 ], [ %2360, %2401 ], [ %2394, %2371 ]
  %2450 = phi float [ %2361, %2355 ], [ %2361, %2416 ], [ %2361, %2414 ], [ %2361, %2401 ], [ %2395, %2371 ]
  %2451 = phi float [ %1797, %2355 ], [ %1797, %2416 ], [ %1797, %2414 ], [ %1797, %2401 ], [ %2386, %2371 ]
  %2452 = phi float [ %1800, %2355 ], [ %1800, %2416 ], [ %1800, %2414 ], [ %1800, %2401 ], [ %2398, %2371 ]
  %2453 = and i32 %2363, 12
  %2454 = icmp eq i32 %2453, 12
  br i1 %2454, label %2527, label %2455

; <label>:2455                                    ; preds = %2444
  %2456 = and i32 %2363, 2097184
  %2457 = icmp eq i32 %2456, 2097184
  %2458 = select i1 %2457, float %1983, float 0.000000e+00
  %2459 = and i32 %2363, 4194336
  %2460 = icmp eq i32 %2459, 4194336
  %2461 = select i1 %2460, float %1983, float 0.000000e+00
  %2462 = and i32 %2363, 8388640
  %2463 = icmp eq i32 %2462, 8388640
  %2464 = select i1 %2463, float %1983, float 0.000000e+00
  %2465 = icmp eq i32 %2453, 0
  br i1 %2465, label %2466, label %2479

; <label>:2466                                    ; preds = %2455
  %2467 = fsub fast float %2284, %1789
  %2468 = fsub fast float %2285, %1790
  %2469 = fmul fast float %2458, %2467
  %2470 = fmul fast float %2458, %2468
  %2471 = fadd fast float %2469, %1789
  %2472 = fadd fast float %2470, %1790
  %2473 = fsub fast float %2286, %1799
  %2474 = fmul fast float %2461, %2473
  %2475 = fadd fast float %2474, %1799
  %2476 = fsub fast float %2283, %1798
  %2477 = fmul fast float %2464, %2476
  %2478 = fadd fast float %2477, %1798
  br label %2527

; <label>:2479                                    ; preds = %2455
  %2480 = icmp eq i32 %2453, 4
  br i1 %2480, label %2481, label %2513

; <label>:2481                                    ; preds = %2479
  %2482 = fmul fast float %2458, %2284
  %2483 = fmul fast float %2458, %2285
  %2484 = fadd fast float %2482, %1789
  %2485 = fadd fast float %2483, %1790
  %2486 = call float @dx.op.binary.f32(i32 36, float %1799, float %2286)  ; FMin(a,b)
  %2487 = fsub fast float %2486, %1799
  %2488 = fmul fast float %2487, %2461
  %2489 = fadd fast float %2488, %1799
  %2490 = fadd fast float %2283, %1798
  %2491 = fmul fast float %2490, 0x3FF337FAE0000000
  %2492 = fmul fast float %1798, %1798
  %2493 = fmul fast float %2283, %2283
  %2494 = fadd fast float %2493, %2492
  %2495 = fmul fast float %2494, 0x3FE5152B00000000
  %2496 = fmul fast float %1798, 0xBFCC1F85E0000000
  %2497 = fmul fast float %2496, %2283
  %2498 = fadd fast float %2497, 0xBFE1363700000000
  %2499 = fadd fast float %2498, %2491
  %2500 = fsub fast float %2499, %2495
  %2501 = fmul fast float %2490, 0x3FBA6F0D00000000
  %2502 = fmul fast float %2494, 0x3FD0432880000000
  %2503 = fmul fast float %1798, 0xBFEF110800000000
  %2504 = fmul fast float %2503, %2283
  %2505 = fadd fast float %2504, 1.000000e+00
  %2506 = fsub fast float %2505, %2501
  %2507 = fadd fast float %2506, %2502
  %2508 = fdiv fast float %2500, %2507
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fsub fast float %2509, %1798
  %2511 = fmul fast float %2510, %2464
  %2512 = fadd fast float %2511, %1798
  br label %2527

; <label>:2513                                    ; preds = %2479
  %2514 = icmp eq i32 %2453, 8
  br i1 %2514, label %2515, label %2527

; <label>:2515                                    ; preds = %2513
  %2516 = fmul fast float %2458, %2284
  %2517 = fmul fast float %2458, %2285
  %2518 = fadd fast float %2516, %1789
  %2519 = fadd fast float %2517, %1790
  %2520 = call float @dx.op.binary.f32(i32 36, float %1799, float %2286)  ; FMin(a,b)
  %2521 = fsub fast float %2520, %1799
  %2522 = fmul fast float %2521, %2461
  %2523 = fadd fast float %2522, %1799
  %2524 = fsub fast float %2283, %1798
  %2525 = fmul fast float %2464, %2524
  %2526 = fadd fast float %2525, %1798
  br label %2527

; <label>:2527                                    ; preds = %2515, %2513, %2481, %2466, %2444, %1982, %1801, %1788
  %2528 = phi float [ %1789, %2444 ], [ %1789, %1982 ], [ %1789, %1788 ], [ %2518, %2515 ], [ %1789, %2513 ], [ %2484, %2481 ], [ %2471, %2466 ], [ %1789, %1801 ]
  %2529 = phi float [ %1790, %2444 ], [ %1790, %1982 ], [ %1790, %1788 ], [ %2519, %2515 ], [ %1790, %2513 ], [ %2485, %2481 ], [ %2472, %2466 ], [ %1790, %1801 ]
  %2530 = phi float [ %2445, %2444 ], [ %1791, %1982 ], [ %1791, %1788 ], [ %2445, %2515 ], [ %2445, %2513 ], [ %2445, %2481 ], [ %2445, %2466 ], [ %1791, %1801 ]
  %2531 = phi float [ %2446, %2444 ], [ %1792, %1982 ], [ %1792, %1788 ], [ %2446, %2515 ], [ %2446, %2513 ], [ %2446, %2481 ], [ %2446, %2466 ], [ %1792, %1801 ]
  %2532 = phi float [ %2447, %2444 ], [ %1793, %1982 ], [ %1793, %1788 ], [ %2447, %2515 ], [ %2447, %2513 ], [ %2447, %2481 ], [ %2447, %2466 ], [ %1793, %1801 ]
  %2533 = phi float [ %2448, %2444 ], [ %1794, %1982 ], [ %1794, %1788 ], [ %2448, %2515 ], [ %2448, %2513 ], [ %2448, %2481 ], [ %2448, %2466 ], [ %1794, %1801 ]
  %2534 = phi float [ %2449, %2444 ], [ %1795, %1982 ], [ %1795, %1788 ], [ %2449, %2515 ], [ %2449, %2513 ], [ %2449, %2481 ], [ %2449, %2466 ], [ %1795, %1801 ]
  %2535 = phi float [ %2450, %2444 ], [ %1796, %1982 ], [ %1796, %1788 ], [ %2450, %2515 ], [ %2450, %2513 ], [ %2450, %2481 ], [ %2450, %2466 ], [ %1796, %1801 ]
  %2536 = phi float [ %2451, %2444 ], [ %1797, %1982 ], [ %1797, %1788 ], [ %2451, %2515 ], [ %2451, %2513 ], [ %2451, %2481 ], [ %2451, %2466 ], [ %1797, %1801 ]
  %2537 = phi float [ %1798, %2444 ], [ %1798, %1982 ], [ %1798, %1788 ], [ %2526, %2515 ], [ %1798, %2513 ], [ %2512, %2481 ], [ %2478, %2466 ], [ %1798, %1801 ]
  %2538 = phi float [ %1799, %2444 ], [ %1799, %1982 ], [ %1799, %1788 ], [ %2523, %2515 ], [ %1799, %2513 ], [ %2489, %2481 ], [ %2475, %2466 ], [ %1799, %1801 ]
  %2539 = phi float [ %2452, %2444 ], [ %1800, %1982 ], [ %1800, %1788 ], [ %2452, %2515 ], [ %2452, %2513 ], [ %2452, %2481 ], [ %2452, %2466 ], [ %1800, %1801 ]
  br i1 %451, label %3266, label %2540

; <label>:2540                                    ; preds = %2527
  %2541 = icmp ult i32 %505, 4
  %2542 = add i32 %62, 72
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = add i32 %62, 76
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = or i32 %2547, %2544
  %2549 = icmp eq i32 %2548, 0
  br i1 %2549, label %3266, label %2550

; <label>:2550                                    ; preds = %2540
  %2551 = and i32 %2544, 262144
  %2552 = icmp ne i32 %2551, 0
  %2553 = select i1 %2552, float %67, float 1.000000e+00
  %2554 = select i1 %2552, float %68, float 0.000000e+00
  %2555 = select i1 %2552, float %69, float 0.000000e+00
  %2556 = select i1 %2552, float %70, float 1.000000e+00
  %2557 = select i1 %2552, float %71, float %99
  %2558 = select i1 %2552, float %72, float %100
  %2559 = add i32 %62, 332
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = lshr i32 %2561, 16
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = fmul fast float %2563, 0x3F50624DE0000000
  %2565 = add i32 %62, 136
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = lshr i32 %2567, 16
  %2569 = and i32 %2568, 255
  %2570 = lshr i32 %2567, 24
  %2571 = add i32 %62, 340
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 65535
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = lshr i32 %2573, 16
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = add i32 %62, 80
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = lshr i32 %2580, 22
  %2582 = shl nuw nsw i32 %2581, 5
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = shl i32 %2580, 4
  %2585 = and i32 %2584, 32752
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = lshr i32 %2580, 7
  %2588 = and i32 %2587, 32752
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2592 = fmul fast float %2591, 1.000000e+03
  %2593 = fmul fast float %441, %2592
  %2594 = call float @dx.op.unary.f32(i32 22, float %2593)  ; Frc(value)
  %2595 = fadd fast float %2594, %431
  %2596 = fmul fast float %442, %2592
  %2597 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2598 = fadd fast float %2597, %433
  %2599 = fmul fast float %2564, %2592
  %2600 = call float @dx.op.unary.f32(i32 22, float %2599)  ; Frc(value)
  %2601 = fmul fast float %2600, 0x401921FB60000000
  %2602 = fadd fast float %2601, %2583
  %2603 = call float @dx.op.unary.f32(i32 13, float %2602)  ; Sin(value)
  %2604 = call float @dx.op.unary.f32(i32 12, float %2602)  ; Cos(value)
  %2605 = fsub fast float -0.000000e+00, %2603
  %2606 = fadd fast float %2557, -5.000000e-01
  %2607 = fadd fast float %2558, -5.000000e-01
  %2608 = fmul fast float %2575, %2606
  %2609 = fmul fast float %2577, %2607
  %2610 = fadd fast float %2608, 5.000000e-01
  %2611 = fadd fast float %2609, 5.000000e-01
  %2612 = fmul fast float %2586, %2610
  %2613 = fmul fast float %2589, %2611
  %2614 = fmul fast float %2604, %2612
  %2615 = call float @dx.op.tertiary.f32(i32 46, float %2605, float %2613, float %2614)  ; FMad(a,b,c)
  %2616 = fmul fast float %2603, %2612
  %2617 = call float @dx.op.tertiary.f32(i32 46, float %2604, float %2613, float %2616)  ; FMad(a,b,c)
  %2618 = fadd fast float %2595, %2615
  %2619 = fadd fast float %2598, %2617
  %2620 = icmp ugt i32 %2569, 1
  %2621 = icmp ugt i32 %2567, 33554431
  %2622 = or i1 %2621, %2620
  br i1 %2622, label %2623, label %2648

; <label>:2623                                    ; preds = %2550
  %2624 = add i32 %62, 276
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = fmul fast float %2591, %2628
  %2630 = call float @dx.op.unary.f32(i32 22, float %2629)  ; Frc(value)
  %2631 = mul nuw nsw i32 %2569, %2570
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2630, %2632
  %2634 = call float @dx.op.unary.f32(i32 27, float %2633)  ; Round_ni(value)
  %2635 = fptoui float %2634 to i32
  %2636 = urem i32 %2635, %2569
  %2637 = udiv i32 %2635, %2570
  %2638 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2639 = call float @dx.op.unary.f32(i32 22, float %2619)  ; Frc(value)
  %2640 = uitofp i32 %2636 to float
  %2641 = uitofp i32 %2637 to float
  %2642 = fadd fast float %2638, %2640
  %2643 = fadd fast float %2639, %2641
  %2644 = uitofp i32 %2569 to float
  %2645 = uitofp i32 %2570 to float
  %2646 = fdiv fast float %2642, %2644
  %2647 = fdiv fast float %2643, %2645
  br label %2648

; <label>:2648                                    ; preds = %2623, %2550
  %2649 = phi float [ %2646, %2623 ], [ %2618, %2550 ]
  %2650 = phi float [ %2647, %2623 ], [ %2619, %2550 ]
  %2651 = and i32 %2544, 256
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2699, label %2653

; <label>:2653                                    ; preds = %2648
  %2654 = add i32 %62, 436
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2656, 0
  %2658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2658, %dx.types.Handle %118, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = add i32 %62, 148
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = shl i32 %2663, 4
  %2665 = and i32 %2664, 32752
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = lshr i32 %2663, 7
  %2668 = and i32 %2667, 32752
  %2669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2668)  ; LegacyF16ToF32(value)
  %2670 = fsub fast float 1.000000e+00, %500
  %2671 = call float @dx.op.binary.f32(i32 35, float %2670, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2672 = bitcast float %500 to i32
  %2673 = sitofp i32 %2672 to float
  %2674 = fadd fast float %2673, 0xC1CFBF8940000000
  %2675 = fmul fast float %2669, %2674
  %2676 = fadd fast float %2675, 0x41CFBF8940000000
  %2677 = fptosi float %2676 to i32
  %2678 = bitcast i32 %2677 to float
  %2679 = bitcast float %2671 to i32
  %2680 = sitofp i32 %2679 to float
  %2681 = fadd fast float %2680, 0xC1CFBF8940000000
  %2682 = fmul fast float %2681, %2669
  %2683 = fadd fast float %2682, 0x41CFBF8940000000
  %2684 = fptosi float %2683 to i32
  %2685 = bitcast i32 %2684 to float
  %2686 = fmul fast float %2678, %2666
  %2687 = fmul fast float %2685, %2666
  %2688 = fsub fast float %2671, %2686
  %2689 = fadd fast float %2687, %2671
  %2690 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2691 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2692 = fsub fast float %2660, %2690
  %2693 = fsub fast float %2691, %2690
  %2694 = bitcast float %2693 to i32
  %2695 = sub nsw i32 2129859010, %2694
  %2696 = bitcast i32 %2695 to float
  %2697 = fmul fast float %2696, %2692
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  br label %2699

; <label>:2699                                    ; preds = %2653, %2648
  %2700 = phi float [ %2698, %2653 ], [ %500, %2648 ]
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 128
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2721, label %2705

; <label>:2705                                    ; preds = %2699
  %2706 = add i32 %62, 420
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = add i32 %2708, 0
  %2710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2710, %dx.types.Handle %118, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 524288
  %2716 = icmp ne i32 %2715, 0
  %2717 = fcmp fast ogt float %2712, 0x3FE0101020000000
  %2718 = select i1 %2717, float 1.000000e+00, float 0.000000e+00
  %2719 = select i1 %2716, float %2718, float %2712
  %2720 = fmul fast float %2719, %2700
  br label %2721

; <label>:2721                                    ; preds = %2705, %2699
  %2722 = phi float [ %2720, %2705 ], [ %2700, %2699 ]
  %2723 = fcmp fast ult float %2722, 0x3F70101020000000
  br i1 %2723, label %3266, label %2724

; <label>:2724                                    ; preds = %2721
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 16
  %2728 = icmp eq i32 %2727, 0
  br i1 %2728, label %2927, label %2729

; <label>:2729                                    ; preds = %2724
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %62, 372
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = add i32 %2734, 0
  %2736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2736, %dx.types.Handle %117, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = extractvalue %dx.types.ResRet.f32 %2737, 3
  %2742 = and i32 %2731, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = lshr i32 %2731, 8
  %2745 = and i32 %2744, 255
  %2746 = uitofp i32 %2745 to float
  %2747 = fmul fast float %2741, %2743
  %2748 = fadd fast float %2747, %2746
  %2749 = fmul fast float %2748, 0x3F70101000000000
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %2751, 512
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2762, label %2754

; <label>:2754                                    ; preds = %2729
  %2755 = add i32 %62, 452
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = add i32 %2757, 0
  %2759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2759, %dx.types.Handle %118, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  br label %2762

; <label>:2762                                    ; preds = %2754, %2729
  %2763 = phi float [ %2761, %2754 ], [ 1.000000e+00, %2729 ]
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 33554432
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2874, label %2768

; <label>:2768                                    ; preds = %2762
  %2769 = add i32 %62, 272
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = and i32 %2771, 65535
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = lshr i32 %2771, 16
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = add i32 %62, 276
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 65535
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = lshr i32 %2782, 24
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = and i32 %2782, 255
  %2787 = uitofp i32 %2786 to float
  %2788 = fmul fast float %2787, 0x3F70101020000000
  %2789 = lshr i32 %2782, 8
  %2790 = and i32 %2789, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = lshr i32 %2782, 16
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = add i32 %62, 268
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = lshr i32 %2799, 24
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, 0x3F70101020000000
  %2803 = and i32 %2799, 255
  %2804 = uitofp i32 %2803 to float
  %2805 = fmul fast float %2804, 0x3F70101020000000
  %2806 = lshr i32 %2799, 8
  %2807 = and i32 %2806, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = fmul fast float %2808, 0x3F70101020000000
  %2810 = lshr i32 %2799, 16
  %2811 = and i32 %2810, 255
  %2812 = uitofp i32 %2811 to float
  %2813 = fmul fast float %2812, 0x3F70101020000000
  %2814 = bitcast float %2738 to i32
  %2815 = ashr i32 %2814, 1
  %2816 = sub nsw i32 1597463174, %2815
  %2817 = bitcast i32 %2816 to float
  %2818 = fmul fast float %2738, 5.000000e-01
  %2819 = fmul fast float %2817, %2817
  %2820 = fmul fast float %2819, %2818
  %2821 = fsub fast float 1.500000e+00, %2820
  %2822 = fmul fast float %2817, %2738
  %2823 = fmul fast float %2822, %2821
  %2824 = bitcast float %2739 to i32
  %2825 = ashr i32 %2824, 1
  %2826 = sub nsw i32 1597463174, %2825
  %2827 = bitcast i32 %2826 to float
  %2828 = fmul fast float %2739, 5.000000e-01
  %2829 = fmul fast float %2827, %2827
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float 1.500000e+00, %2830
  %2832 = fmul fast float %2827, %2739
  %2833 = fmul fast float %2832, %2831
  %2834 = bitcast float %2740 to i32
  %2835 = ashr i32 %2834, 1
  %2836 = sub nsw i32 1597463174, %2835
  %2837 = bitcast i32 %2836 to float
  %2838 = fmul fast float %2740, 5.000000e-01
  %2839 = fmul fast float %2837, %2837
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float 1.500000e+00, %2840
  %2842 = fmul fast float %2837, %2740
  %2843 = fmul fast float %2842, %2841
  %2844 = fsub fast float %2823, %2805
  %2845 = fsub fast float %2833, %2809
  %2846 = fsub fast float %2843, %2813
  %2847 = fmul fast float %2844, %2773
  %2848 = fmul fast float %2845, %2775
  %2849 = fmul fast float %2846, %2780
  %2850 = fadd fast float %2847, %2788
  %2851 = fadd fast float %2848, %2792
  %2852 = fadd fast float %2849, %2796
  %2853 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2854 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2855 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2856 = fmul fast float %2853, %2853
  %2857 = fmul fast float %2854, %2854
  %2858 = fmul fast float %2855, %2855
  %2859 = fsub fast float %2856, %2738
  %2860 = fsub fast float %2857, %2739
  %2861 = fsub fast float %2858, %2740
  %2862 = fmul fast float %2859, %2763
  %2863 = fmul fast float %2860, %2763
  %2864 = fmul fast float %2861, %2763
  %2865 = fadd fast float %2862, %2738
  %2866 = fadd fast float %2863, %2739
  %2867 = fadd fast float %2864, %2740
  %2868 = fadd fast float %2785, %2749
  %2869 = fsub fast float %2868, %2802
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = fsub fast float %2870, %2749
  %2872 = fmul fast float %2871, %2763
  %2873 = fadd fast float %2872, %2749
  br label %2927

; <label>:2874                                    ; preds = %2762
  %2875 = and i32 %2765, 134217728
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2911, label %2877

; <label>:2877                                    ; preds = %2874
  %2878 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %2879 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %2880 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %2881 = fadd fast float %2878, -5.000000e-01
  %2882 = fadd fast float %2879, -5.000000e-01
  %2883 = fadd fast float %2880, -5.000000e-01
  %2884 = fmul fast float %2881, %2763
  %2885 = fmul fast float %2882, %2763
  %2886 = fmul fast float %2883, %2763
  %2887 = fadd fast float %2884, 5.000000e-01
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = call float @dx.op.unary.f32(i32 24, float %2738)  ; Sqrt(value)
  %2891 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %2892 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %2893 = fmul fast float %2887, 2.000000e+00
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = fmul fast float %2894, %2890
  %2896 = fadd fast float %2895, %2893
  %2897 = fmul fast float %2896, %2890
  %2898 = fmul fast float %2888, 2.000000e+00
  %2899 = fsub fast float 1.000000e+00, %2898
  %2900 = fmul fast float %2899, %2891
  %2901 = fadd fast float %2900, %2898
  %2902 = fmul fast float %2901, %2891
  %2903 = fmul fast float %2889, 2.000000e+00
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2904, %2892
  %2906 = fadd fast float %2905, %2903
  %2907 = fmul fast float %2906, %2892
  %2908 = fmul fast float %2897, %2897
  %2909 = fmul fast float %2902, %2902
  %2910 = fmul fast float %2907, %2907
  br label %2927

; <label>:2911                                    ; preds = %2874
  %2912 = fmul fast float %418, %418
  %2913 = fmul fast float %422, %422
  %2914 = fmul fast float %426, %426
  %2915 = fadd fast float %2912, -1.000000e+00
  %2916 = fadd fast float %2913, -1.000000e+00
  %2917 = fadd fast float %2914, -1.000000e+00
  %2918 = fmul fast float %2763, %2915
  %2919 = fmul fast float %2763, %2916
  %2920 = fmul fast float %2763, %2917
  %2921 = fadd fast float %2918, 1.000000e+00
  %2922 = fadd fast float %2919, 1.000000e+00
  %2923 = fadd fast float %2920, 1.000000e+00
  %2924 = fmul fast float %2921, %2738
  %2925 = fmul fast float %2922, %2739
  %2926 = fmul fast float %2923, %2740
  br label %2927

; <label>:2927                                    ; preds = %2911, %2877, %2768, %2724
  %2928 = phi float [ %2873, %2768 ], [ %2749, %2877 ], [ %2749, %2911 ], [ 0x3FA23C0BE0000000, %2724 ]
  %2929 = phi float [ %2865, %2768 ], [ %2908, %2877 ], [ %2924, %2911 ], [ 1.000000e+00, %2724 ]
  %2930 = phi float [ %2866, %2768 ], [ %2909, %2877 ], [ %2925, %2911 ], [ 1.000000e+00, %2724 ]
  %2931 = phi float [ %2867, %2768 ], [ %2910, %2877 ], [ %2926, %2911 ], [ 1.000000e+00, %2724 ]
  %2932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.i32 %2932, 1
  %2934 = and i32 %2933, 1
  %2935 = icmp ne i32 %2934, 0
  %2936 = add i32 %62, 356
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 32
  %2940 = icmp ne i32 %2939, 0
  %2941 = and i1 %2935, %2940
  %2942 = select i1 %2941, float 1.000000e+00, float %2929
  %2943 = select i1 %2941, float 0x3FD3333340000000, float %2930
  %2944 = select i1 %2941, float 0x3FD3333340000000, float %2931
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 32
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %3021, label %2949

; <label>:2949                                    ; preds = %2927
  %2950 = add i32 %62, 140
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %62, 388
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %2955, 0
  %2957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2957, %dx.types.Handle %117, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = and i32 %2952, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = lshr i32 %2952, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = lshr i32 %2952, 16
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101000000000
  %2972 = fmul fast float %2959, %2964
  %2973 = fadd fast float %2972, %2967
  %2974 = fmul fast float %2973, 0x3F70101000000000
  %2975 = fadd fast float %2960, -5.000000e-01
  %2976 = fadd fast float %2962, -5.000000e-01
  %2977 = fmul fast float %2975, %2971
  %2978 = fmul fast float %2976, %2971
  %2979 = fadd fast float %2977, 5.000000e-01
  %2980 = fadd fast float %2978, 5.000000e-01
  %2981 = fmul fast float %2979, 2.000000e+00
  %2982 = fadd fast float %2981, -1.000000e+00
  %2983 = fmul fast float %2980, 2.000000e+00
  %2984 = fadd fast float %2983, -1.000000e+00
  %2985 = fadd fast float %2982, %2984
  %2986 = fmul fast float %2985, 5.000000e-01
  %2987 = fsub fast float %2982, %2984
  %2988 = fmul fast float %2987, 5.000000e-01
  %2989 = call float @dx.op.unary.f32(i32 6, float %2986)  ; FAbs(value)
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = call float @dx.op.unary.f32(i32 6, float %2988)  ; FAbs(value)
  %2992 = fsub fast float %2990, %2991
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2986, float %2988, float %2992, float %2986, float %2988, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.unary.f32(i32 25, float %2993)  ; Rsqrt(value)
  %2995 = fmul fast float %2986, %2994
  %2996 = fmul fast float %2988, %2994
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 67108864
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3017, label %3001

; <label>:3001                                    ; preds = %2949
  %3002 = add i32 %62, 328
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 65535
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 65535
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = lshr i32 %3004, 16
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = fsub fast float %2974, %3012
  %3014 = fmul fast float %3013, %3006
  %3015 = fadd fast float %3014, %3010
  %3016 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  br label %3017

; <label>:3017                                    ; preds = %3001, %2949
  %3018 = phi float [ %3016, %3001 ], [ %2974, %2949 ]
  %3019 = call float @dx.op.dot2.f32(i32 54, float %2995, float %2996, float %2553, float %2554)  ; Dot2(ax,ay,bx,by)
  %3020 = call float @dx.op.dot2.f32(i32 54, float %2995, float %2996, float %2555, float %2556)  ; Dot2(ax,ay,bx,by)
  br label %3021

; <label>:3021                                    ; preds = %3017, %2927
  %3022 = phi float [ %3018, %3017 ], [ 0x3FD6666660000000, %2927 ]
  %3023 = phi float [ %3019, %3017 ], [ 0.000000e+00, %2927 ]
  %3024 = phi float [ %3020, %3017 ], [ 0.000000e+00, %2927 ]
  %3025 = phi float [ %2961, %3017 ], [ 1.000000e+00, %2927 ]
  %3026 = add i32 %62, 208
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = lshr i32 %3028, 22
  %3030 = shl nuw nsw i32 %3029, 5
  %3031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3030)  ; LegacyF16ToF32(value)
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 64
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3069, label %3036

; <label>:3036                                    ; preds = %3021
  %3037 = add i32 %62, 404
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = add i32 %3039, 0
  %3041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 131072
  %3045 = icmp eq i32 %3044, 0
  %3046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3041, %dx.types.Handle %117, float %2649, float %2650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3047 = extractvalue %dx.types.ResRet.f32 %3046, 0
  %3048 = extractvalue %dx.types.ResRet.f32 %3046, 1
  %3049 = extractvalue %dx.types.ResRet.f32 %3046, 2
  %3050 = fmul fast float %3047, %406
  %3051 = fmul fast float %3048, %409
  %3052 = fmul fast float %3049, %412
  br i1 %3045, label %3059, label %3053

; <label>:3053                                    ; preds = %3036
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 0
  %3056 = fmul fast float %3055, %3050
  %3057 = fmul fast float %3055, %3051
  %3058 = fmul fast float %3055, %3052
  br label %3059

; <label>:3059                                    ; preds = %3053, %3036
  %3060 = phi float [ %3056, %3053 ], [ %3050, %3036 ]
  %3061 = phi float [ %3057, %3053 ], [ %3051, %3036 ]
  %3062 = phi float [ %3058, %3053 ], [ %3052, %3036 ]
  %3063 = fmul fast float %3060, %3031
  %3064 = select i1 %263, float %3063, float %3060
  %3065 = call float @dx.op.dot3.f32(i32 55, float %3064, float %3061, float %3062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3066 = select i1 %263, float 0.000000e+00, float %3060
  %3067 = select i1 %263, float %3065, float %3061
  %3068 = select i1 %263, float 0.000000e+00, float %3062
  br label %3069

; <label>:3069                                    ; preds = %3059, %3021
  %3070 = phi float [ %3066, %3059 ], [ 0.000000e+00, %3021 ]
  %3071 = phi float [ %3067, %3059 ], [ 0.000000e+00, %3021 ]
  %3072 = phi float [ %3068, %3059 ], [ 0.000000e+00, %3021 ]
  %3073 = add i32 %62, 144
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = lshr i32 %3075, 8
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = call float @dx.op.dot3.f32(i32 55, float %2942, float %2943, float %2944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3082 = fmul fast float %3080, %3081
  %3083 = fadd fast float %3082, %3077
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  br i1 %2541, label %3086, label %3094

; <label>:3086                                    ; preds = %3069
  %3087 = fsub fast float 1.000000e+00, %2722
  %3088 = fmul fast float %3087, %2530
  %3089 = fmul fast float %3087, %2531
  %3090 = fmul fast float %3087, %2532
  %3091 = fmul fast float %3087, %2533
  %3092 = fmul fast float %3087, %2534
  %3093 = fmul fast float %3087, %2535
  br label %3094

; <label>:3094                                    ; preds = %3086, %3069
  %3095 = phi float [ %3088, %3086 ], [ %2530, %3069 ]
  %3096 = phi float [ %3089, %3086 ], [ %2531, %3069 ]
  %3097 = phi float [ %3090, %3086 ], [ %2532, %3069 ]
  %3098 = phi float [ %3091, %3086 ], [ %2533, %3069 ]
  %3099 = phi float [ %3092, %3086 ], [ %2534, %3069 ]
  %3100 = phi float [ %3093, %3086 ], [ %2535, %3069 ]
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 3
  %3104 = icmp eq i32 %3103, 3
  br i1 %3104, label %3183, label %3105

; <label>:3105                                    ; preds = %3094
  %3106 = and i32 %3102, 16
  %3107 = icmp ne i32 %3106, 0
  %3108 = select i1 %3107, float %2722, float 0.000000e+00
  %3109 = icmp eq i32 %3103, 0
  br i1 %3109, label %3110, label %3138

; <label>:3110                                    ; preds = %3105
  %3111 = and i32 %3102, 64
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %2722, float 0.000000e+00
  %3114 = fsub fast float %2942, %3095
  %3115 = fsub fast float %2943, %3096
  %3116 = fsub fast float %2944, %3097
  %3117 = fmul fast float %3108, %3114
  %3118 = fmul fast float %3108, %3115
  %3119 = fmul fast float %3108, %3116
  %3120 = fadd fast float %3117, %3095
  %3121 = fadd fast float %3118, %3096
  %3122 = fadd fast float %3119, %3097
  %3123 = fsub fast float %2928, %2536
  %3124 = fmul fast float %3108, %3123
  %3125 = fadd fast float %3124, %2536
  %3126 = fsub fast float %3070, %3098
  %3127 = fsub fast float %3071, %3099
  %3128 = fsub fast float %3072, %3100
  %3129 = fmul fast float %3113, %3126
  %3130 = fmul fast float %3113, %3127
  %3131 = fmul fast float %3113, %3128
  %3132 = fadd fast float %3129, %3098
  %3133 = fadd fast float %3130, %3099
  %3134 = fadd fast float %3131, %3100
  %3135 = fsub fast float %3085, %2539
  %3136 = fmul fast float %3108, %3135
  %3137 = fadd fast float %3136, %2539
  br label %3183

; <label>:3138                                    ; preds = %3105
  %3139 = icmp eq i32 %3103, 1
  br i1 %3139, label %3140, label %3153

; <label>:3140                                    ; preds = %3138
  %3141 = fadd fast float %2942, -1.000000e+00
  %3142 = fadd fast float %2943, -1.000000e+00
  %3143 = fadd fast float %2944, -1.000000e+00
  %3144 = fmul fast float %3108, %3141
  %3145 = fmul fast float %3108, %3142
  %3146 = fmul fast float %3108, %3143
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fadd fast float %3145, 1.000000e+00
  %3149 = fadd fast float %3146, 1.000000e+00
  %3150 = fmul fast float %3147, %3095
  %3151 = fmul fast float %3148, %3096
  %3152 = fmul fast float %3149, %3097
  br label %3183

; <label>:3153                                    ; preds = %3138
  %3154 = icmp eq i32 %3103, 2
  br i1 %3154, label %3155, label %3183

; <label>:3155                                    ; preds = %3153
  %3156 = call float @dx.op.unary.f32(i32 24, float %2942)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %2943)  ; Sqrt(value)
  %3158 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %3159 = fadd fast float %3156, -5.000000e-01
  %3160 = fadd fast float %3157, -5.000000e-01
  %3161 = fadd fast float %3158, -5.000000e-01
  %3162 = fmul fast float %3159, %3108
  %3163 = fmul fast float %3160, %3108
  %3164 = fmul fast float %3161, %3108
  %3165 = fadd fast float %3162, 5.000000e-01
  %3166 = fadd fast float %3163, 5.000000e-01
  %3167 = fadd fast float %3164, 5.000000e-01
  %3168 = fmul fast float %3165, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3095
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3095
  %3173 = fmul fast float %3166, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3096
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3096
  %3178 = fmul fast float %3167, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3097
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3097
  br label %3183

; <label>:3183                                    ; preds = %3155, %3153, %3140, %3110, %3094
  %3184 = phi float [ %3095, %3094 ], [ %3172, %3155 ], [ %3095, %3153 ], [ %3150, %3140 ], [ %3120, %3110 ]
  %3185 = phi float [ %3096, %3094 ], [ %3177, %3155 ], [ %3096, %3153 ], [ %3151, %3140 ], [ %3121, %3110 ]
  %3186 = phi float [ %3097, %3094 ], [ %3182, %3155 ], [ %3097, %3153 ], [ %3152, %3140 ], [ %3122, %3110 ]
  %3187 = phi float [ %3098, %3094 ], [ %3098, %3155 ], [ %3098, %3153 ], [ %3098, %3140 ], [ %3132, %3110 ]
  %3188 = phi float [ %3099, %3094 ], [ %3099, %3155 ], [ %3099, %3153 ], [ %3099, %3140 ], [ %3133, %3110 ]
  %3189 = phi float [ %3100, %3094 ], [ %3100, %3155 ], [ %3100, %3153 ], [ %3100, %3140 ], [ %3134, %3110 ]
  %3190 = phi float [ %2536, %3094 ], [ %2536, %3155 ], [ %2536, %3153 ], [ %2536, %3140 ], [ %3125, %3110 ]
  %3191 = phi float [ %2539, %3094 ], [ %2539, %3155 ], [ %2539, %3153 ], [ %2539, %3140 ], [ %3137, %3110 ]
  %3192 = and i32 %3102, 12
  %3193 = icmp eq i32 %3192, 12
  br i1 %3193, label %3266, label %3194

; <label>:3194                                    ; preds = %3183
  %3195 = and i32 %3102, 2097184
  %3196 = icmp eq i32 %3195, 2097184
  %3197 = select i1 %3196, float %2722, float 0.000000e+00
  %3198 = and i32 %3102, 4194336
  %3199 = icmp eq i32 %3198, 4194336
  %3200 = select i1 %3199, float %2722, float 0.000000e+00
  %3201 = and i32 %3102, 8388640
  %3202 = icmp eq i32 %3201, 8388640
  %3203 = select i1 %3202, float %2722, float 0.000000e+00
  %3204 = icmp eq i32 %3192, 0
  br i1 %3204, label %3205, label %3218

; <label>:3205                                    ; preds = %3194
  %3206 = fsub fast float %3023, %2528
  %3207 = fsub fast float %3024, %2529
  %3208 = fmul fast float %3197, %3206
  %3209 = fmul fast float %3197, %3207
  %3210 = fadd fast float %3208, %2528
  %3211 = fadd fast float %3209, %2529
  %3212 = fsub fast float %3025, %2538
  %3213 = fmul fast float %3200, %3212
  %3214 = fadd fast float %3213, %2538
  %3215 = fsub fast float %3022, %2537
  %3216 = fmul fast float %3203, %3215
  %3217 = fadd fast float %3216, %2537
  br label %3266

; <label>:3218                                    ; preds = %3194
  %3219 = icmp eq i32 %3192, 4
  br i1 %3219, label %3220, label %3252

; <label>:3220                                    ; preds = %3218
  %3221 = fmul fast float %3197, %3023
  %3222 = fmul fast float %3197, %3024
  %3223 = fadd fast float %3221, %2528
  %3224 = fadd fast float %3222, %2529
  %3225 = call float @dx.op.binary.f32(i32 36, float %2538, float %3025)  ; FMin(a,b)
  %3226 = fsub fast float %3225, %2538
  %3227 = fmul fast float %3226, %3200
  %3228 = fadd fast float %3227, %2538
  %3229 = fadd fast float %3022, %2537
  %3230 = fmul fast float %3229, 0x3FF337FAE0000000
  %3231 = fmul fast float %2537, %2537
  %3232 = fmul fast float %3022, %3022
  %3233 = fadd fast float %3232, %3231
  %3234 = fmul fast float %3233, 0x3FE5152B00000000
  %3235 = fmul fast float %2537, 0xBFCC1F85E0000000
  %3236 = fmul fast float %3235, %3022
  %3237 = fadd fast float %3236, 0xBFE1363700000000
  %3238 = fadd fast float %3237, %3230
  %3239 = fsub fast float %3238, %3234
  %3240 = fmul fast float %3229, 0x3FBA6F0D00000000
  %3241 = fmul fast float %3233, 0x3FD0432880000000
  %3242 = fmul fast float %2537, 0xBFEF110800000000
  %3243 = fmul fast float %3242, %3022
  %3244 = fadd fast float %3243, 1.000000e+00
  %3245 = fsub fast float %3244, %3240
  %3246 = fadd fast float %3245, %3241
  %3247 = fdiv fast float %3239, %3246
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3249 = fsub fast float %3248, %2537
  %3250 = fmul fast float %3249, %3203
  %3251 = fadd fast float %3250, %2537
  br label %3266

; <label>:3252                                    ; preds = %3218
  %3253 = icmp eq i32 %3192, 8
  br i1 %3253, label %3254, label %3266

; <label>:3254                                    ; preds = %3252
  %3255 = fmul fast float %3197, %3023
  %3256 = fmul fast float %3197, %3024
  %3257 = fadd fast float %3255, %2528
  %3258 = fadd fast float %3256, %2529
  %3259 = call float @dx.op.binary.f32(i32 36, float %2538, float %3025)  ; FMin(a,b)
  %3260 = fsub fast float %3259, %2538
  %3261 = fmul fast float %3260, %3200
  %3262 = fadd fast float %3261, %2538
  %3263 = fsub fast float %3022, %2537
  %3264 = fmul fast float %3203, %3263
  %3265 = fadd fast float %3264, %2537
  br label %3266

; <label>:3266                                    ; preds = %3254, %3252, %3220, %3205, %3183, %2721, %2540, %2527
  %3267 = phi float [ %2528, %3183 ], [ %2528, %2721 ], [ %2528, %2527 ], [ %2528, %2540 ], [ %3210, %3205 ], [ %3223, %3220 ], [ %2528, %3252 ], [ %3257, %3254 ]
  %3268 = phi float [ %2529, %3183 ], [ %2529, %2721 ], [ %2529, %2527 ], [ %2529, %2540 ], [ %3211, %3205 ], [ %3224, %3220 ], [ %2529, %3252 ], [ %3258, %3254 ]
  %3269 = phi float [ %3184, %3183 ], [ %2530, %2721 ], [ %2530, %2527 ], [ %2530, %2540 ], [ %3184, %3205 ], [ %3184, %3220 ], [ %3184, %3252 ], [ %3184, %3254 ]
  %3270 = phi float [ %3185, %3183 ], [ %2531, %2721 ], [ %2531, %2527 ], [ %2531, %2540 ], [ %3185, %3205 ], [ %3185, %3220 ], [ %3185, %3252 ], [ %3185, %3254 ]
  %3271 = phi float [ %3186, %3183 ], [ %2532, %2721 ], [ %2532, %2527 ], [ %2532, %2540 ], [ %3186, %3205 ], [ %3186, %3220 ], [ %3186, %3252 ], [ %3186, %3254 ]
  %3272 = phi float [ %3187, %3183 ], [ %2533, %2721 ], [ %2533, %2527 ], [ %2533, %2540 ], [ %3187, %3205 ], [ %3187, %3220 ], [ %3187, %3252 ], [ %3187, %3254 ]
  %3273 = phi float [ %3188, %3183 ], [ %2534, %2721 ], [ %2534, %2527 ], [ %2534, %2540 ], [ %3188, %3205 ], [ %3188, %3220 ], [ %3188, %3252 ], [ %3188, %3254 ]
  %3274 = phi float [ %3189, %3183 ], [ %2535, %2721 ], [ %2535, %2527 ], [ %2535, %2540 ], [ %3189, %3205 ], [ %3189, %3220 ], [ %3189, %3252 ], [ %3189, %3254 ]
  %3275 = phi float [ %3190, %3183 ], [ %2536, %2721 ], [ %2536, %2527 ], [ %2536, %2540 ], [ %3190, %3205 ], [ %3190, %3220 ], [ %3190, %3252 ], [ %3190, %3254 ]
  %3276 = phi float [ %2537, %3183 ], [ %2537, %2721 ], [ %2537, %2527 ], [ %2537, %2540 ], [ %3217, %3205 ], [ %3251, %3220 ], [ %2537, %3252 ], [ %3265, %3254 ]
  %3277 = phi float [ %2538, %3183 ], [ %2538, %2721 ], [ %2538, %2527 ], [ %2538, %2540 ], [ %3214, %3205 ], [ %3228, %3220 ], [ %2538, %3252 ], [ %3262, %3254 ]
  %3278 = phi float [ %3191, %3183 ], [ %2539, %2721 ], [ %2539, %2527 ], [ %2539, %2540 ], [ %3191, %3205 ], [ %3191, %3220 ], [ %3191, %3252 ], [ %3191, %3254 ]
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = call float @dx.op.dot2.f32(i32 54, float %3267, float %3268, float %3267, float %3268)  ; Dot2(ax,ay,bx,by)
  %3282 = fmul fast float %3281, 0x3FE3333340000000
  %3283 = fsub fast float 1.000000e+00, %3282
  %3284 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3268, float %3283, float %3267, float %3268, float %3283)  ; Dot3(ax,ay,az,bx,by,bz)
  %3285 = call float @dx.op.unary.f32(i32 25, float %3284)  ; Rsqrt(value)
  %3286 = fmul fast float %3285, %3267
  %3287 = fmul fast float %3285, %3268
  %3288 = fmul fast float %3283, %3285
  %3289 = fmul fast float %3288, %130
  %3290 = fmul fast float %3288, %132
  %3291 = fmul fast float %3288, %134
  %3292 = fmul fast float %3286, %92
  %3293 = fmul fast float %3286, %93
  %3294 = fmul fast float %3286, %94
  %3295 = fadd fast float %3289, %3292
  %3296 = fadd fast float %3290, %3293
  %3297 = fadd fast float %3291, %3294
  %3298 = fmul fast float %144, %3287
  %3299 = fmul fast float %145, %3287
  %3300 = fmul fast float %146, %3287
  %3301 = fadd fast float %3295, %3298
  %3302 = fadd fast float %3296, %3299
  %3303 = fadd fast float %3297, %3300
  %3304 = call float @dx.op.dot3.f32(i32 55, float %3301, float %3302, float %3303, float %3301, float %3302, float %3303)  ; Dot3(ax,ay,az,bx,by,bz)
  %3305 = call float @dx.op.unary.f32(i32 25, float %3304)  ; Rsqrt(value)
  %3306 = fmul fast float %3301, %3305
  %3307 = fmul fast float %3302, %3305
  %3308 = fmul fast float %3303, %3305
  %3309 = icmp eq i32 %63, 65535
  br i1 %3309, label %3824, label %3310

; <label>:3310                                    ; preds = %3266
  %3311 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3312 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3313 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3314 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3315 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3316 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3317 = fadd fast float %3311, %64
  %3318 = fadd fast float %3312, %65
  %3319 = fadd fast float %3313, %66
  %3320 = fadd fast float %3314, %64
  %3321 = fadd fast float %3315, %65
  %3322 = fadd fast float %3316, %66
  %3323 = mul i32 %63, 48
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = add i32 %3323, 16
  %3329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.ResRet.f32 %3329, 1
  %3332 = extractvalue %dx.types.ResRet.f32 %3329, 2
  %3333 = add i32 %3323, 32
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3334, 3
  %3339 = bitcast float %3338 to i32
  %3340 = fmul fast float %3325, %64
  %3341 = fmul fast float %3326, %65
  %3342 = fmul fast float %3327, %66
  %3343 = fsub fast float %3340, %3330
  %3344 = fsub fast float %3341, %3331
  %3345 = fsub fast float %3342, %3332
  %3346 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3347 = call float @dx.op.unary.f32(i32 7, float %3344)  ; Saturate(value)
  %3348 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3349 = fmul fast float %3346, %3335
  %3350 = fmul fast float %3347, %3336
  %3351 = fmul fast float %3348, %3337
  %3352 = fadd fast float %3335, -1.000000e+00
  %3353 = fadd fast float %3336, -1.000000e+00
  %3354 = fadd fast float %3337, -1.000000e+00
  %3355 = call float @dx.op.unary.f32(i32 27, float %3349)  ; Round_ni(value)
  %3356 = call float @dx.op.unary.f32(i32 27, float %3350)  ; Round_ni(value)
  %3357 = call float @dx.op.unary.f32(i32 27, float %3351)  ; Round_ni(value)
  %3358 = call float @dx.op.binary.f32(i32 36, float %3355, float %3352)  ; FMin(a,b)
  %3359 = call float @dx.op.binary.f32(i32 36, float %3356, float %3353)  ; FMin(a,b)
  %3360 = call float @dx.op.binary.f32(i32 36, float %3357, float %3354)  ; FMin(a,b)
  %3361 = fmul fast float %3360, %3336
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3335
  %3364 = fadd fast float %3363, %3358
  %3365 = fptosi float %3364 to i32
  %3366 = add nsw i32 %3365, %3339
  %3367 = shl nsw i32 %3366, 2
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = lshr i32 %3369, 16
  %3371 = icmp eq i32 %3370, 0
  br i1 %3371, label %3793, label %3372

; <label>:3372                                    ; preds = %3310
  br label %3373

; <label>:3373                                    ; preds = %3494, %3372
  %3374 = phi i32 [ %3396, %3494 ], [ %3370, %3372 ]
  %3375 = phi float [ %3495, %3494 ], [ 0.000000e+00, %3372 ]
  %3376 = phi float [ %3496, %3494 ], [ %3280, %3372 ]
  %3377 = phi float [ %3497, %3494 ], [ %3278, %3372 ]
  %3378 = phi float [ %3498, %3494 ], [ 0.000000e+00, %3372 ]
  %3379 = phi float [ %3499, %3494 ], [ 0.000000e+00, %3372 ]
  %3380 = phi float [ %3500, %3494 ], [ %3272, %3372 ]
  %3381 = phi float [ %3501, %3494 ], [ %3273, %3372 ]
  %3382 = phi float [ %3502, %3494 ], [ %3274, %3372 ]
  %3383 = phi float [ %3503, %3494 ], [ %3306, %3372 ]
  %3384 = phi float [ %3504, %3494 ], [ %3307, %3372 ]
  %3385 = phi float [ %3505, %3494 ], [ %3308, %3372 ]
  %3386 = phi float [ %3506, %3494 ], [ %3277, %3372 ]
  %3387 = phi float [ %3507, %3494 ], [ %3276, %3372 ]
  %3388 = phi float [ %3508, %3494 ], [ 0.000000e+00, %3372 ]
  %3389 = phi float [ %3509, %3494 ], [ %3275, %3372 ]
  %3390 = phi float [ %3510, %3494 ], [ %3269, %3372 ]
  %3391 = phi float [ %3511, %3494 ], [ %3270, %3372 ]
  %3392 = phi float [ %3512, %3494 ], [ %3271, %3372 ]
  %3393 = shl nuw nsw i32 %3374, 2
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 16
  %3397 = shl i32 %3395, 8
  %3398 = and i32 %3397, 16776960
  %3399 = or i32 %3398, 48
  %3400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = or i32 %3398, 64
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.i32 %3405, 1
  %3408 = or i32 %3398, 80
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 3
  %3412 = or i32 %3398, 96
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3418 = or i32 %3398, 112
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3421 = or i32 %3398, 128
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = extractvalue %dx.types.ResRet.f32 %3422, 2
  %3426 = extractvalue %dx.types.ResRet.f32 %3422, 3
  %3427 = or i32 %3398, 144
  %3428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  %3430 = extractvalue %dx.types.ResRet.f32 %3428, 1
  %3431 = extractvalue %dx.types.ResRet.f32 %3428, 2
  %3432 = extractvalue %dx.types.ResRet.f32 %3428, 3
  %3433 = or i32 %3398, 160
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = extractvalue %dx.types.ResRet.f32 %3434, 3
  %3439 = or i32 %3398, 192
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = or i32 %3398, 208
  %3443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.f32 %3443, 0
  %3445 = or i32 %3398, 248
  %3446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.f32 %3449, 1
  %3452 = extractvalue %dx.types.ResRet.f32 %3449, 2
  %3453 = extractvalue %dx.types.ResRet.f32 %3449, 3
  %3454 = call float @dx.op.dot4.f32(i32 56, float %3450, float %3451, float %3452, float %3453, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3455 = or i32 %3398, 16
  %3456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.f32 %3456, 1
  %3459 = extractvalue %dx.types.ResRet.f32 %3456, 2
  %3460 = extractvalue %dx.types.ResRet.f32 %3456, 3
  %3461 = call float @dx.op.dot4.f32(i32 56, float %3457, float %3458, float %3459, float %3460, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3462 = or i32 %3398, 32
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = extractvalue %dx.types.ResRet.f32 %3463, 3
  %3468 = call float @dx.op.dot4.f32(i32 56, float %3464, float %3465, float %3466, float %3467, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3469 = call float @dx.op.unary.f32(i32 27, float %3454)  ; Round_ni(value)
  %3470 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3471 = call float @dx.op.unary.f32(i32 27, float %3461)  ; Round_ni(value)
  %3472 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3473 = call float @dx.op.unary.f32(i32 6, float %3468)  ; FAbs(value)
  %3474 = call float @dx.op.unary.f32(i32 27, float %3473)  ; Round_ni(value)
  %3475 = fadd fast float %3472, %3470
  %3476 = fadd fast float %3475, %3474
  %3477 = fcmp fast oeq float %3476, 0.000000e+00
  %3478 = call float @dx.op.dot4.f32(i32 56, float %3450, float %3451, float %3452, float %3453, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3479 = call float @dx.op.dot4.f32(i32 56, float %3457, float %3458, float %3459, float %3460, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3480 = call float @dx.op.dot4.f32(i32 56, float %3450, float %3451, float %3452, float %3453, float %3320, float %3321, float %3322, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3457, float %3458, float %3459, float %3460, float %3320, float %3321, float %3322, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = fsub fast float %3478, %3454
  %3483 = fsub fast float %3480, %3454
  %3484 = fsub fast float %3479, %3461
  %3485 = fsub fast float %3481, %3461
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3401, float %3402, float %3403, float %130, float %132, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3489 = fadd fast float %3488, %3486
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3492 = fcmp fast ogt float %3490, %3491
  %3493 = and i1 %3477, %3492
  br i1 %3493, label %3514, label %3494

; <label>:3494                                    ; preds = %3779, %3597, %3514, %3373
  %3495 = phi float [ %3375, %3514 ], [ %3600, %3597 ], [ %3600, %3779 ], [ %3375, %3373 ]
  %3496 = phi float [ %3376, %3514 ], [ %3376, %3597 ], [ %3754, %3779 ], [ %3376, %3373 ]
  %3497 = phi float [ %3377, %3514 ], [ %3377, %3597 ], [ %3752, %3779 ], [ %3377, %3373 ]
  %3498 = phi float [ %3378, %3514 ], [ %3378, %3597 ], [ %3724, %3779 ], [ %3378, %3373 ]
  %3499 = phi float [ %3379, %3514 ], [ %3379, %3597 ], [ %3722, %3779 ], [ %3379, %3373 ]
  %3500 = phi float [ %3380, %3514 ], [ %3380, %3597 ], [ %3789, %3779 ], [ %3380, %3373 ]
  %3501 = phi float [ %3381, %3514 ], [ %3381, %3597 ], [ %3790, %3779 ], [ %3381, %3373 ]
  %3502 = phi float [ %3382, %3514 ], [ %3382, %3597 ], [ %3791, %3779 ], [ %3382, %3373 ]
  %3503 = phi float [ %3383, %3514 ], [ %3383, %3597 ], [ %3703, %3779 ], [ %3383, %3373 ]
  %3504 = phi float [ %3384, %3514 ], [ %3384, %3597 ], [ %3704, %3779 ], [ %3384, %3373 ]
  %3505 = phi float [ %3385, %3514 ], [ %3385, %3597 ], [ %3705, %3779 ], [ %3385, %3373 ]
  %3506 = phi float [ %3386, %3514 ], [ %3386, %3597 ], [ %3732, %3779 ], [ %3386, %3373 ]
  %3507 = phi float [ %3387, %3514 ], [ %3387, %3597 ], [ %3729, %3779 ], [ %3387, %3373 ]
  %3508 = phi float [ %3388, %3514 ], [ %3388, %3597 ], [ %3726, %3779 ], [ %3388, %3373 ]
  %3509 = phi float [ %3389, %3514 ], [ %3389, %3597 ], [ %3720, %3779 ], [ %3389, %3373 ]
  %3510 = phi float [ %3390, %3514 ], [ %3390, %3597 ], [ %3715, %3779 ], [ %3390, %3373 ]
  %3511 = phi float [ %3391, %3514 ], [ %3391, %3597 ], [ %3716, %3779 ], [ %3391, %3373 ]
  %3512 = phi float [ %3392, %3514 ], [ %3392, %3597 ], [ %3717, %3779 ], [ %3392, %3373 ]
  %3513 = icmp eq i32 %3396, 0
  br i1 %3513, label %3792, label %3373

; <label>:3514                                    ; preds = %3373
  %3515 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3516 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3517 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3521 = extractvalue %dx.types.ResRet.i32 %3405, 3
  %3522 = extractvalue %dx.types.ResRet.i32 %3405, 2
  %3523 = bitcast float %3515 to i32
  %3524 = add i32 %3521, 0
  %3525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3524, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3527 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3525, %dx.types.Handle %3526, float %3454, float %3461, float undef, float undef, i32 0, i32 0, i32 undef, float %3482, float %3484, float undef, float %3483, float %3485, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = fmul fast float %3528, %3520
  %3530 = fadd fast float %3529, %3519
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = fmul fast float %3454, %3414
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3461, float %3532)  ; FMad(a,b,c)
  %3534 = fadd fast float %3533, %3518
  %3535 = fmul fast float %3454, %3416
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3417, float %3461, float %3535)  ; FMad(a,b,c)
  %3537 = fadd fast float %3536, %3517
  %3538 = fmul fast float %3482, %3414
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3484, float %3538)  ; FMad(a,b,c)
  %3540 = fmul fast float %3482, %3416
  %3541 = call float @dx.op.tertiary.f32(i32 46, float %3417, float %3484, float %3540)  ; FMad(a,b,c)
  %3542 = fmul fast float %3483, %3414
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3485, float %3542)  ; FMad(a,b,c)
  %3544 = fmul fast float %3483, %3416
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3417, float %3485, float %3544)  ; FMad(a,b,c)
  %3546 = add i32 %3522, 0
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3546, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3547, %dx.types.Handle %3526, float %3534, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %3539, float %3541, float undef, float %3543, float %3545, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = and i32 %3523, 1024
  %3551 = icmp ne i32 %3550, 0
  %3552 = fcmp fast ogt float %3549, 0x3FE0101020000000
  %3553 = uitofp i1 %3552 to float
  %3554 = select i1 %3551, float %3553, float %3549
  %3555 = and i32 %3523, 8192
  %3556 = icmp ne i32 %3555, 0
  %3557 = select i1 %3556, float %3516, float 1.000000e+00
  %3558 = fmul fast float %3454, 2.000000e+00
  %3559 = fadd fast float %3558, -1.000000e+00
  %3560 = call float @dx.op.unary.f32(i32 6, float %3559)  ; FAbs(value)
  %3561 = fmul fast float %3560, %3447
  %3562 = fsub fast float %3561, %3447
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3461, 2.000000e+00
  %3565 = fadd fast float %3564, -1.000000e+00
  %3566 = call float @dx.op.unary.f32(i32 6, float %3565)  ; FAbs(value)
  %3567 = fmul fast float %3566, %3448
  %3568 = fsub fast float %3567, %3448
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3570 = fmul fast float %3473, %3410
  %3571 = fsub fast float %3570, %3410
  %3572 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3573 = fmul fast float %3531, %3557
  %3574 = fmul fast float %3573, %3528
  %3575 = fmul fast float %3574, %3563
  %3576 = fmul fast float %3575, %3554
  %3577 = fmul fast float %3576, %3569
  %3578 = fmul fast float %3577, %3572
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 1
  %3581 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3582 = fsub fast float %3490, %3581
  %3583 = fmul fast float %3582, %3580
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3578, %3411
  %3586 = fadd fast float %3578, %3411
  %3587 = fmul fast float %3586, %3420
  %3588 = fsub fast float %3587, %3420
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3590 = and i32 %3523, 128
  %3591 = icmp ne i32 %3590, 0
  %3592 = select i1 %3591, float %3589, float %3585
  %3593 = fmul fast float %3592, %3584
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = fcmp fast ugt float %3593, %3595
  br i1 %3596, label %3597, label %3494

; <label>:3597                                    ; preds = %3514
  %3598 = select i1 %3556, float %3593, float 0.000000e+00
  %3599 = fadd fast float %3598, %3375
  %3600 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  br i1 %3556, label %3494, label %3601

; <label>:3601                                    ; preds = %3597
  %3602 = and i32 %3523, 4
  %3603 = and i32 %3523, 8
  %3604 = add i32 %3406, 0
  %3605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3604, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3605, %dx.types.Handle %3606, float %3534, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %3539, float %3541, float undef, float %3543, float %3545, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = bitcast float %3432 to i32
  %3613 = and i32 %3612, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = lshr i32 %3612, 8
  %3616 = and i32 %3615, 255
  %3617 = uitofp i32 %3616 to float
  %3618 = fmul fast float %3611, %3614
  %3619 = fadd fast float %3618, %3617
  %3620 = fmul fast float %3619, 0x3F70101000000000
  %3621 = add i32 %3407, 0
  %3622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3621, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3623 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3622, %dx.types.Handle %3606, float %3534, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %3539, float %3541, float undef, float %3543, float %3545, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = bitcast float %3426 to i32
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = lshr i32 %3628, 8
  %3632 = and i32 %3631, 255
  %3633 = uitofp i32 %3632 to float
  %3634 = lshr i32 %3628, 16
  %3635 = and i32 %3634, 255
  %3636 = uitofp i32 %3635 to float
  %3637 = fmul fast float %3636, 0x3F70101000000000
  %3638 = fmul fast float %3624, %3630
  %3639 = fadd fast float %3638, %3633
  %3640 = fmul fast float %3639, 0x3F70101000000000
  %3641 = fadd fast float %3625, -5.000000e-01
  %3642 = fadd fast float %3627, -5.000000e-01
  %3643 = fmul fast float %3641, %3637
  %3644 = fmul fast float %3642, %3637
  %3645 = fadd fast float %3643, 5.000000e-01
  %3646 = fadd fast float %3644, 5.000000e-01
  %3647 = fmul fast float %3608, %3435
  %3648 = fmul fast float %3609, %3436
  %3649 = fmul fast float %3610, %3437
  %3650 = fmul fast float %3645, 2.000000e+00
  %3651 = fadd fast float %3650, -1.000000e+00
  %3652 = fmul fast float %3646, 2.000000e+00
  %3653 = fadd fast float %3652, -1.000000e+00
  %3654 = fadd fast float %3651, %3653
  %3655 = fmul fast float %3654, 5.000000e-01
  %3656 = fsub fast float %3651, %3653
  %3657 = fmul fast float %3656, 5.000000e-01
  %3658 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3659 = fsub fast float 1.000000e+00, %3658
  %3660 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3661 = fsub fast float %3659, %3660
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3655, float %3657, float %3661, float %3655, float %3657, float %3661)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = call float @dx.op.unary.f32(i32 25, float %3662)  ; Rsqrt(value)
  %3664 = fmul fast float %3655, %3663
  %3665 = fmul fast float %3657, %3663
  %3666 = fmul fast float %3663, %3661
  %3667 = fmul fast float %3666, %3401
  %3668 = fmul fast float %3666, %3402
  %3669 = fmul fast float %3666, %3403
  %3670 = fmul fast float %3664, %3423
  %3671 = fmul fast float %3664, %3424
  %3672 = fmul fast float %3664, %3425
  %3673 = fadd fast float %3670, %3667
  %3674 = fadd fast float %3671, %3668
  %3675 = fadd fast float %3672, %3669
  %3676 = fmul fast float %3665, %3429
  %3677 = fmul fast float %3665, %3430
  %3678 = fmul fast float %3665, %3431
  %3679 = fadd fast float %3673, %3676
  %3680 = fadd fast float %3674, %3677
  %3681 = fadd fast float %3675, %3678
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3679, float %3680, float %3681, float %3679, float %3680, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.unary.f32(i32 25, float %3682)  ; Rsqrt(value)
  %3684 = fmul fast float %3679, %3683
  %3685 = fmul fast float %3680, %3683
  %3686 = fmul fast float %3681, %3683
  %3687 = icmp ne i32 %3603, 0
  %3688 = select i1 %3687, float 1.000000e+00, float 0.000000e+00
  %3689 = fmul fast float %3593, %3688
  %3690 = and i32 %3523, 1
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3692, label %3696

; <label>:3692                                    ; preds = %3601
  %3693 = fsub fast float %3684, %3383
  %3694 = fsub fast float %3685, %3384
  %3695 = fsub fast float %3686, %3385
  br label %3696

; <label>:3696                                    ; preds = %3692, %3601
  %3697 = phi float [ %3693, %3692 ], [ %3684, %3601 ]
  %3698 = phi float [ %3694, %3692 ], [ %3685, %3601 ]
  %3699 = phi float [ %3695, %3692 ], [ %3686, %3601 ]
  %3700 = fmul float %3699, %3689
  %3701 = fmul float %3698, %3689
  %3702 = fmul float %3697, %3689
  %3703 = fadd fast float %3702, %3383
  %3704 = fadd fast float %3701, %3384
  %3705 = fadd fast float %3700, %3385
  %3706 = icmp ne i32 %3602, 0
  %3707 = select i1 %3706, float 1.000000e+00, float 0.000000e+00
  %3708 = fmul fast float %3593, %3707
  %3709 = fsub fast float %3647, %3390
  %3710 = fsub fast float %3648, %3391
  %3711 = fsub fast float %3649, %3392
  %3712 = fmul fast float %3709, %3708
  %3713 = fmul fast float %3710, %3708
  %3714 = fmul fast float %3711, %3708
  %3715 = fadd fast float %3712, %3390
  %3716 = fadd fast float %3713, %3391
  %3717 = fadd fast float %3714, %3392
  %3718 = fsub fast float %3620, %3389
  %3719 = fmul fast float %3718, %3708
  %3720 = fadd fast float %3719, %3389
  %3721 = fmul fast float %3708, %3379
  %3722 = fsub fast float %3379, %3721
  %3723 = fmul fast float %3708, %3378
  %3724 = fsub fast float %3378, %3723
  %3725 = fadd fast float %3593, %3388
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fsub fast float %3640, %3387
  %3728 = fmul fast float %3727, %3689
  %3729 = fadd fast float %3728, %3387
  %3730 = fsub fast float %3626, %3386
  %3731 = fmul fast float %3730, %3689
  %3732 = fadd fast float %3731, %3386
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.CBufRet.f32 %3734, 1
  %3737 = fmul fast float %3736, %3733
  %3738 = fadd fast float %3737, %3735
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = bitcast float %3438 to i32
  %3741 = and i32 %3740, 65535
  %3742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3741)  ; LegacyF16ToF32(value)
  %3743 = lshr i32 %3740, 16
  %3744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3743)  ; LegacyF16ToF32(value)
  %3745 = fcmp fast oge float %3742, 0.000000e+00
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = select i1 %3745, float %3742, float %3747
  %3749 = fadd fast float %3748, %3744
  %3750 = fsub fast float %3739, %3377
  %3751 = fmul fast float %3750, %3593
  %3752 = fadd fast float %3751, %3377
  %3753 = fmul fast float %3749, %3593
  %3754 = call float @dx.op.binary.f32(i32 35, float %3376, float %3753)  ; FMax(a,b)
  %3755 = and i32 %3523, 16
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3779, label %3757

; <label>:3757                                    ; preds = %3696
  %3758 = bitcast float %3444 to i32
  %3759 = add i32 %3441, 0
  %3760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3759, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3760, %dx.types.Handle %3606, float %3534, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %3539, float %3541, float undef, float %3543, float %3545, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = and i32 %3758, 65535
  %3766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3765)  ; LegacyF16ToF32(value)
  %3767 = fmul fast float %3762, %3435
  %3768 = fmul fast float %3763, %3436
  %3769 = fmul fast float %3764, %3437
  %3770 = and i32 %3523, 16384
  %3771 = icmp ne i32 %3770, 0
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = select i1 %3771, float %3773, float 1.000000e+00
  %3775 = fmul fast float %3774, %3766
  %3776 = fmul fast float %3767, %3775
  %3777 = fmul fast float %3768, %3775
  %3778 = fmul fast float %3769, %3775
  br label %3779

; <label>:3779                                    ; preds = %3757, %3696
  %3780 = phi float [ %3776, %3757 ], [ 0.000000e+00, %3696 ]
  %3781 = phi float [ %3777, %3757 ], [ 0.000000e+00, %3696 ]
  %3782 = phi float [ %3778, %3757 ], [ 0.000000e+00, %3696 ]
  %3783 = fsub fast float %3780, %3380
  %3784 = fsub fast float %3781, %3381
  %3785 = fsub fast float %3782, %3382
  %3786 = fmul fast float %3783, %3593
  %3787 = fmul fast float %3784, %3593
  %3788 = fmul fast float %3785, %3593
  %3789 = fadd fast float %3786, %3380
  %3790 = fadd fast float %3787, %3381
  %3791 = fadd fast float %3788, %3382
  br label %3494

; <label>:3792                                    ; preds = %3494
  br label %3793

; <label>:3793                                    ; preds = %3792, %3310
  %3794 = phi float [ 0.000000e+00, %3310 ], [ %3495, %3792 ]
  %3795 = phi float [ %3280, %3310 ], [ %3496, %3792 ]
  %3796 = phi float [ %3278, %3310 ], [ %3497, %3792 ]
  %3797 = phi float [ 0.000000e+00, %3310 ], [ %3498, %3792 ]
  %3798 = phi float [ 0.000000e+00, %3310 ], [ %3499, %3792 ]
  %3799 = phi float [ %3272, %3310 ], [ %3500, %3792 ]
  %3800 = phi float [ %3273, %3310 ], [ %3501, %3792 ]
  %3801 = phi float [ %3274, %3310 ], [ %3502, %3792 ]
  %3802 = phi float [ %3306, %3310 ], [ %3503, %3792 ]
  %3803 = phi float [ %3307, %3310 ], [ %3504, %3792 ]
  %3804 = phi float [ %3308, %3310 ], [ %3505, %3792 ]
  %3805 = phi float [ %3277, %3310 ], [ %3506, %3792 ]
  %3806 = phi float [ %3276, %3310 ], [ %3507, %3792 ]
  %3807 = phi float [ 0.000000e+00, %3310 ], [ %3508, %3792 ]
  %3808 = phi float [ %3275, %3310 ], [ %3509, %3792 ]
  %3809 = phi float [ %3269, %3310 ], [ %3510, %3792 ]
  %3810 = phi float [ %3270, %3310 ], [ %3511, %3792 ]
  %3811 = phi float [ %3271, %3310 ], [ %3512, %3792 ]
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %3802, float %3803, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.unary.f32(i32 25, float %3812)  ; Rsqrt(value)
  %3814 = fmul fast float %3813, %3802
  %3815 = fmul fast float %3813, %3803
  %3816 = fmul fast float %3813, %3804
  %3817 = fadd fast float %3807, %1058
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3816, float %3814, float %3815, float %3816)  ; Dot3(ax,ay,az,bx,by,bz)
  %3820 = call float @dx.op.unary.f32(i32 25, float %3819)  ; Rsqrt(value)
  %3821 = fmul fast float %3820, %3814
  %3822 = fmul fast float %3820, %3815
  %3823 = fmul fast float %3820, %3816
  br label %3824

; <label>:3824                                    ; preds = %3793, %3266
  %3825 = phi float [ %3821, %3793 ], [ %3306, %3266 ]
  %3826 = phi float [ %3822, %3793 ], [ %3307, %3266 ]
  %3827 = phi float [ %3823, %3793 ], [ %3308, %3266 ]
  %3828 = phi float [ %3809, %3793 ], [ %3269, %3266 ]
  %3829 = phi float [ %3810, %3793 ], [ %3270, %3266 ]
  %3830 = phi float [ %3811, %3793 ], [ %3271, %3266 ]
  %3831 = phi float [ %3799, %3793 ], [ %3272, %3266 ]
  %3832 = phi float [ %3800, %3793 ], [ %3273, %3266 ]
  %3833 = phi float [ %3801, %3793 ], [ %3274, %3266 ]
  %3834 = phi float [ %3808, %3793 ], [ %3275, %3266 ]
  %3835 = phi float [ %3818, %3793 ], [ %1058, %3266 ]
  %3836 = phi float [ %3806, %3793 ], [ %3276, %3266 ]
  %3837 = phi float [ %3805, %3793 ], [ %3277, %3266 ]
  %3838 = phi float [ %3798, %3793 ], [ 0.000000e+00, %3266 ]
  %3839 = phi float [ %3797, %3793 ], [ 0.000000e+00, %3266 ]
  %3840 = phi float [ %3794, %3793 ], [ 0.000000e+00, %3266 ]
  %3841 = phi float [ %3795, %3793 ], [ %3280, %3266 ]
  %3842 = phi float [ %3796, %3793 ], [ %3278, %3266 ]
  %3843 = fadd fast float %3834, 0xBFB99999A0000000
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = fmul fast float %3844, 0x3FF1C71C80000000
  %3846 = call float @dx.op.binary.f32(i32 36, float %3834, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3847 = fsub fast float 1.000000e+00, %3845
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = fmul fast float %3848, %3828
  %3850 = fmul fast float %3848, %3829
  %3851 = fmul fast float %3848, %3830
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = fmul fast float %3845, %3828
  %3856 = fmul fast float %3845, %3829
  %3857 = fmul fast float %3845, %3830
  %3858 = fadd fast float %3855, %3846
  %3859 = fadd fast float %3856, %3846
  %3860 = fadd fast float %3857, %3846
  %3861 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.i32 %3865, 3
  %3867 = and i32 %3866, 8
  %3868 = icmp ne i32 %3867, 0
  %3869 = call float @dx.op.binary.f32(i32 35, float %3852, float %3828)  ; FMax(a,b)
  %3870 = call float @dx.op.binary.f32(i32 35, float %3853, float %3828)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3854, float %3828)  ; FMax(a,b)
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3852, float %3853, float %3854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = select i1 %263, float %3828, float %3852
  %3874 = select i1 %263, float %3872, float %3853
  %3875 = select i1 %263, float 1.000000e+00, float %3854
  %3876 = select i1 %3868, float %3869, float %3873
  %3877 = select i1 %3868, float %3870, float %3874
  %3878 = select i1 %3868, float %3871, float %3875
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.CBufRet.f32 %3879, 2
  %3883 = fadd fast float %3880, %204
  %3884 = fadd fast float %3881, %205
  %3885 = fadd fast float %3882, %206
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3889 = fsub fast float %3883, %3887
  %3890 = fsub fast float %3884, %3888
  %3891 = fmul fast float %3889, %3889
  %3892 = fmul fast float %3890, %3890
  %3893 = fadd fast float %3891, %3892
  %3894 = call float @dx.op.unary.f32(i32 24, float %3893)  ; Sqrt(value)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3896 = fcmp fast olt float %3894, %3895
  br i1 %3896, label %3897, label %3964

; <label>:3897                                    ; preds = %3824
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3905 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3906 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3907 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3908 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3909 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3910 = fadd fast float %3907, %3883
  %3911 = fadd fast float %3908, %3884
  %3912 = fadd fast float %3909, %3885
  %3913 = fmul fast float %3910, %3899
  %3914 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3901, float %3913)  ; FMad(a,b,c)
  %3915 = call float @dx.op.tertiary.f32(i32 46, float %3912, float %3903, float %3914)  ; FMad(a,b,c)
  %3916 = fmul fast float %3910, %3904
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3905, float %3916)  ; FMad(a,b,c)
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3912, float %3906, float %3917)  ; FMad(a,b,c)
  %3919 = fsub fast float %3915, %3907
  %3920 = fsub fast float %3918, %3908
  %3921 = fsub fast float %3919, %3887
  %3922 = fadd fast float %3921, %3895
  %3923 = fsub fast float %3920, %3888
  %3924 = fadd fast float %3923, %3895
  %3925 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3926 = fmul fast float %3922, %3925
  %3927 = fmul fast float %3924, %3925
  %3928 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3930 = fsub fast float 1.000000e+00, %3928
  %3931 = fsub fast float 1.000000e+00, %3929
  %3932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3930, float %3931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = fcmp fast ugt float %3933, 0.000000e+00
  br i1 %3934, label %3935, label %4238

; <label>:3935                                    ; preds = %3897
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3938 = fmul fast float %3937, %3933
  %3939 = extractvalue %dx.types.CBufRet.f32 %3936, 3
  %3940 = fadd fast float %3939, %3938
  %3941 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3942 = fadd fast float %3940, %3909
  %3943 = fmul fast float %3915, %3903
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3918, float %3906, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3941, float %3944)  ; FMad(a,b,c)
  %3946 = fsub fast float %3945, %3909
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3949 = fsub fast float %3946, %3948
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3930, float %3931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3930, float %3931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = fadd fast float %3955, %3951
  %3959 = fmul fast float %3958, 0x3F847AE140000000
  %3960 = fadd fast float %3956, %3952
  %3961 = fmul fast float %3960, 0x3F847AE140000000
  %3962 = fadd fast float %3957, %3953
  %3963 = fmul fast float %3962, 0x3F847AE140000000
  br label %4238

; <label>:3964                                    ; preds = %3824
  %3965 = and i32 %242, 1
  %3966 = icmp eq i32 %3965, 0
  br i1 %3966, label %4238, label %3967

; <label>:3967                                    ; preds = %3964
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3975 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %3978 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3979 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3980 = fadd fast float %3977, %3883
  %3981 = fadd fast float %3978, %3884
  %3982 = fadd fast float %3979, %3885
  %3983 = fmul fast float %3980, %3969
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3971, float %3983)  ; FMad(a,b,c)
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3973, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3980, %3974
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3975, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3976, float %3987)  ; FMad(a,b,c)
  %3989 = fsub fast float %3985, %3977
  %3990 = fsub fast float %3988, %3978
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3995 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %3998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.i32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.i32 %3998, 1
  %4001 = udiv i32 %4000, %3999
  %4002 = fsub fast float %3989, %3992
  %4003 = fsub fast float %3990, %3993
  %4004 = call float @dx.op.binary.f32(i32 35, float %4002, float 0.000000e+00)  ; FMax(a,b)
  %4005 = call float @dx.op.binary.f32(i32 35, float %4003, float 0.000000e+00)  ; FMax(a,b)
  %4006 = call float @dx.op.binary.f32(i32 36, float %4004, float %3994)  ; FMin(a,b)
  %4007 = call float @dx.op.binary.f32(i32 36, float %4005, float %3995)  ; FMin(a,b)
  %4008 = add i32 %3999, -1
  %4009 = add i32 %4001, -1
  %4010 = fmul fast float %4006, %3997
  %4011 = fmul fast float %4007, %3997
  %4012 = fptoui float %4010 to i32
  %4013 = fptoui float %4011 to i32
  %4014 = call i32 @dx.op.binary.i32(i32 40, i32 %4012, i32 %4008)  ; UMin(a,b)
  %4015 = call i32 @dx.op.binary.i32(i32 40, i32 %4013, i32 %4009)  ; UMin(a,b)
  %4016 = mul i32 %4015, %3999
  %4017 = add i32 %4016, %4014
  %4018 = shl i32 %4017, 2
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = icmp eq i32 %4020, -1
  br i1 %4021, label %4238, label %4022

; <label>:4022                                    ; preds = %3967
  %4023 = mul i32 %4020, 148
  %4024 = add i32 %4023, 4
  %4025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = add i32 %4023, 8
  %4028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = add i32 %4023, 36
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = add i32 %4023, 60
  %4034 = add i32 %4023, 92
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = add i32 %4023, 116
  %4038 = fsub fast float %3989, %4026
  %4039 = fsub fast float %3990, %4029
  %4040 = fmul fast float %3997, %4038
  %4041 = fmul fast float %3997, %4039
  %4042 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4044 = fsub fast float 1.000000e+00, %4043
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 2
  %4047 = call float @dx.op.unary.f32(i32 83, float %4042)  ; DerivCoarseX(value)
  %4048 = call float @dx.op.unary.f32(i32 83, float %4044)  ; DerivCoarseX(value)
  %4049 = call float @dx.op.unary.f32(i32 84, float %4042)  ; DerivCoarseY(value)
  %4050 = call float @dx.op.unary.f32(i32 84, float %4044)  ; DerivCoarseY(value)
  %4051 = fmul fast float %4047, %4046
  %4052 = fmul fast float %4048, %4046
  %4053 = fmul fast float %4049, %4046
  %4054 = fmul fast float %4050, %4046
  %4055 = call float @dx.op.dot2.f32(i32 54, float %4053, float %4054, float %4053, float %4054)  ; Dot2(ax,ay,bx,by)
  %4056 = call float @dx.op.dot2.f32(i32 54, float %4051, float %4052, float %4051, float %4052)  ; Dot2(ax,ay,bx,by)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4056, float %4055)  ; FMax(a,b)
  %4058 = call float @dx.op.unary.f32(i32 23, float %4057)  ; Log(value)
  %4059 = fmul fast float %4058, 5.000000e-01
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4062 = fadd fast float %4061, %4059
  %4063 = call float @dx.op.binary.f32(i32 35, float %4062, float 0.000000e+00)  ; FMax(a,b)
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4066 = fadd fast float %4065, %4063
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 3
  %4069 = fadd fast float %4066, %4068
  %4070 = add i32 %4036, 0
  %4071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4070, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4072 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4071, i32 0)  ; GetDimensions(handle,mipLevel)
  %4073 = extractvalue %dx.types.Dimensions %4072, 0
  %4074 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4073)  ; FirstbitLo(value)
  %4075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.i32 %4075, 1
  %4077 = sub nsw i32 %4076, %4074
  %4078 = sitofp i32 %4077 to float
  %4079 = fsub fast float %4069, %4078
  %4080 = call float @dx.op.binary.f32(i32 35, float %4079, float 0.000000e+00)  ; FMax(a,b)
  %4081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4071, %dx.types.Handle %52, float %4042, float %4044, float %4032, float undef, i32 0, i32 0, i32 undef, float %4080)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = fcmp ule float %4082, 0x3FE0101020000000
  %4084 = extractvalue %dx.types.CBufRet.i32 %4075, 0
  %4085 = and i32 %4084, 128
  %4086 = icmp ne i32 %4085, 0
  %4087 = and i1 %4083, %4086
  br i1 %4087, label %4238, label %4088

; <label>:4088                                    ; preds = %4022
  %4089 = add i32 %4023, 20
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4023, 24
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %4023, 40
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = add i32 %4023, 96
  %4099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.i32 %4099, 0
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4103 = fmul fast float %4102, %4042
  %4104 = fmul fast float %4102, %4044
  %4105 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4106 = fadd fast float %4103, %4105
  %4107 = fadd fast float %4104, %4105
  %4108 = add i32 %4100, 0
  %4109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4110 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4109, i32 0)  ; GetDimensions(handle,mipLevel)
  %4111 = extractvalue %dx.types.Dimensions %4110, 0
  %4112 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4111)  ; FirstbitLo(value)
  %4113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.i32 %4113, 1
  %4115 = sub nsw i32 %4114, %4112
  %4116 = sitofp i32 %4115 to float
  %4117 = fsub fast float %4066, %4116
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4109, %dx.types.Handle %52, float %4106, float %4107, float %4097, float undef, i32 0, i32 0, i32 undef, float %4118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = fmul fast float %4120, %4091
  %4122 = fadd fast float %4121, %4094
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4131 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4132 = fadd fast float %4128, %3989
  %4133 = fadd fast float %4130, %3990
  %4134 = fadd fast float %4122, %4131
  %4135 = fmul fast float %4132, %4124
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4125, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4126, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4137, %4131
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4141 = fsub fast float %4138, %4140
  %4142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.i32 %4142, 0
  %4144 = call i32 @dx.op.binary.i32(i32 40, i32 %4020, i32 %4143)  ; UMin(a,b)
  %4145 = mul i32 %4144, 36
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = add i32 %4145, 4
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = fmul fast float %4150, %4042
  %4152 = fmul fast float %4150, %4044
  %4153 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4154 = fadd fast float %4151, %4153
  %4155 = fadd fast float %4152, %4153
  %4156 = icmp eq i32 %4147, 0
  br i1 %4156, label %4225, label %4157

; <label>:4157                                    ; preds = %4088
  br label %4158

; <label>:4158                                    ; preds = %4215, %4157
  %4159 = phi float [ %4216, %4215 ], [ 0.000000e+00, %4157 ]
  %4160 = phi float [ %4217, %4215 ], [ 0.000000e+00, %4157 ]
  %4161 = phi float [ %4218, %4215 ], [ 0.000000e+00, %4157 ]
  %4162 = phi float [ %4219, %4215 ], [ 0.000000e+00, %4157 ]
  %4163 = phi float [ %4220, %4215 ], [ 0.000000e+00, %4157 ]
  %4164 = phi float [ %4221, %4215 ], [ 0.000000e+00, %4157 ]
  %4165 = phi i32 [ %4222, %4215 ], [ 0, %4157 ]
  %4166 = shl i32 %4165, 2
  %4167 = add i32 %4033, %4166
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = add i32 %4037, %4166
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = add i32 %4172, 0
  %4174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4174, i32 0)  ; GetDimensions(handle,mipLevel)
  %4176 = extractvalue %dx.types.Dimensions %4175, 0
  %4177 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4176)  ; FirstbitLo(value)
  %4178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.i32 %4178, 1
  %4180 = sub nsw i32 %4179, %4177
  %4181 = sitofp i32 %4180 to float
  %4182 = fsub fast float %4066, %4181
  %4183 = call float @dx.op.binary.f32(i32 35, float %4182, float 0.000000e+00)  ; FMax(a,b)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4174, %dx.types.Handle %52, float %4154, float %4155, float %4169, float undef, i32 0, i32 0, i32 undef, float %4183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fcmp fast ogt float %4185, 0.000000e+00
  br i1 %4186, label %4187, label %4215

; <label>:4187                                    ; preds = %4158
  %4188 = add i32 %4148, %4166
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = and i32 %4190, 32767
  %4192 = mul nuw nsw i32 %4191, 928
  %4193 = add nuw nsw i32 %4192, 48
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = add nuw nsw i32 %4192, 60
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = fmul fast float %4195, %4185
  %4204 = fmul fast float %4196, %4185
  %4205 = fmul fast float %4197, %4185
  %4206 = fadd fast float %4203, %4159
  %4207 = fadd fast float %4204, %4160
  %4208 = fadd fast float %4205, %4161
  %4209 = fmul fast float %4200, %4185
  %4210 = fmul fast float %4201, %4185
  %4211 = fmul fast float %4202, %4185
  %4212 = fadd fast float %4209, %4162
  %4213 = fadd fast float %4210, %4163
  %4214 = fadd fast float %4211, %4164
  br label %4215

; <label>:4215                                    ; preds = %4187, %4158
  %4216 = phi float [ %4206, %4187 ], [ %4159, %4158 ]
  %4217 = phi float [ %4207, %4187 ], [ %4160, %4158 ]
  %4218 = phi float [ %4208, %4187 ], [ %4161, %4158 ]
  %4219 = phi float [ %4212, %4187 ], [ %4162, %4158 ]
  %4220 = phi float [ %4213, %4187 ], [ %4163, %4158 ]
  %4221 = phi float [ %4214, %4187 ], [ %4164, %4158 ]
  %4222 = add nuw i32 %4165, 1
  %4223 = icmp eq i32 %4222, %4147
  br i1 %4223, label %4224, label %4158

; <label>:4224                                    ; preds = %4215
  br label %4225

; <label>:4225                                    ; preds = %4224, %4088
  %4226 = phi float [ 0.000000e+00, %4088 ], [ %4216, %4224 ]
  %4227 = phi float [ 0.000000e+00, %4088 ], [ %4217, %4224 ]
  %4228 = phi float [ 0.000000e+00, %4088 ], [ %4218, %4224 ]
  %4229 = phi float [ 0.000000e+00, %4088 ], [ %4219, %4224 ]
  %4230 = phi float [ 0.000000e+00, %4088 ], [ %4220, %4224 ]
  %4231 = phi float [ 0.000000e+00, %4088 ], [ %4221, %4224 ]
  %4232 = fadd fast float %4229, %4226
  %4233 = fmul fast float %4232, 0x3F847AE140000000
  %4234 = fadd fast float %4230, %4227
  %4235 = fmul fast float %4234, 0x3F847AE140000000
  %4236 = fadd fast float %4231, %4228
  %4237 = fmul fast float %4236, 0x3F847AE140000000
  br label %4238

; <label>:4238                                    ; preds = %4225, %4022, %3967, %3964, %3935, %3897
  %4239 = phi float [ %3959, %3935 ], [ 0.000000e+00, %3897 ], [ %4233, %4225 ], [ 0.000000e+00, %3967 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %3964 ]
  %4240 = phi float [ %3961, %3935 ], [ 0.000000e+00, %3897 ], [ %4235, %4225 ], [ 0.000000e+00, %3967 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %3964 ]
  %4241 = phi float [ %3963, %3935 ], [ 0.000000e+00, %3897 ], [ %4237, %4225 ], [ 0.000000e+00, %3967 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %3964 ]
  %4242 = phi float [ %3949, %3935 ], [ -1.310720e+05, %3897 ], [ %4141, %4225 ], [ -1.310720e+05, %3967 ], [ -1.310720e+05, %4022 ], [ -1.310720e+05, %3964 ]
  %4243 = phi i1 [ true, %3935 ], [ false, %3897 ], [ true, %4225 ], [ false, %3967 ], [ false, %4022 ], [ false, %3964 ]
  %4244 = and i32 %242, 3
  %4245 = icmp eq i32 %4244, 1
  %4246 = select i1 %4245, float 1.000000e+00, float 0.000000e+00
  %4247 = fsub fast float %4242, %206
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = select i1 %4243, float %4248, float 1.000000e+00
  %4250 = fmul fast float %4249, %4246
  %4251 = icmp eq i32 %4244, 3
  %4252 = select i1 %4251, float 1.000000e+00, float %4250
  %4253 = call float @dx.op.binary.f32(i32 35, float %3840, float %4252)  ; FMax(a,b)
  %4254 = fcmp fast olt float %4252, 1.000000e+00
  %4255 = fcmp uge float %77, 0.000000e+00
  %4256 = and i1 %4255, %4254
  br i1 %4256, label %4257, label %4267

; <label>:4257                                    ; preds = %4238
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = fadd fast float %4259, %4253
  %4263 = fcmp ule float %76, 0.000000e+00
  %4264 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = select i1 %4263, float %4264, float 1.000000e+00
  %4266 = fmul fast float %4265, %4261
  br label %4267

; <label>:4267                                    ; preds = %4257, %4238
  %4268 = phi float [ %4262, %4257 ], [ %4253, %4238 ]
  %4269 = phi float [ %4260, %4257 ], [ 0.000000e+00, %4238 ]
  %4270 = phi float [ %4266, %4257 ], [ 0.000000e+00, %4238 ]
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = fcmp fast une float %4272, 0.000000e+00
  %4275 = fcmp fast une float %4273, 0.000000e+00
  %4276 = or i1 %4274, %4275
  br i1 %4276, label %4277, label %4836

; <label>:4277                                    ; preds = %4267
  br i1 %4274, label %4278, label %4551

; <label>:4278                                    ; preds = %4277
  %4279 = call float @dx.op.unary.f32(i32 23, float %3837)  ; Log(value)
  %4280 = fmul fast float %4279, 4.000000e+00
  %4281 = call float @dx.op.unary.f32(i32 21, float %4280)  ; Exp(value)
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = fmul fast float %4283, %64
  %4285 = fmul fast float %4283, %65
  %4286 = fmul fast float %4283, %66
  %4287 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4288 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4289 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4290 = call float @dx.op.unary.f32(i32 23, float %4287)  ; Log(value)
  %4291 = call float @dx.op.unary.f32(i32 23, float %4288)  ; Log(value)
  %4292 = call float @dx.op.unary.f32(i32 23, float %4289)  ; Log(value)
  %4293 = fmul fast float %4290, 4.000000e+00
  %4294 = fmul fast float %4291, 4.000000e+00
  %4295 = fmul fast float %4292, 4.000000e+00
  %4296 = call float @dx.op.unary.f32(i32 21, float %4293)  ; Exp(value)
  %4297 = call float @dx.op.unary.f32(i32 21, float %4294)  ; Exp(value)
  %4298 = call float @dx.op.unary.f32(i32 21, float %4295)  ; Exp(value)
  %4299 = fadd fast float %4297, %4296
  %4300 = fadd fast float %4299, %4298
  %4301 = fdiv fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4301, %4296
  %4303 = fcmp fast ogt float %73, 0.000000e+00
  %4304 = fcmp fast ogt float %74, 0.000000e+00
  %4305 = fcmp fast ogt float %75, 0.000000e+00
  %4306 = fcmp fast olt float %73, 0.000000e+00
  %4307 = fcmp fast olt float %74, 0.000000e+00
  %4308 = fcmp fast olt float %75, 0.000000e+00
  %4309 = zext i1 %4303 to i32
  %4310 = zext i1 %4304 to i32
  %4311 = zext i1 %4305 to i32
  %4312 = zext i1 %4306 to i32
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = sub nsw i32 %4309, %4312
  %4316 = sub nsw i32 %4310, %4313
  %4317 = sub nsw i32 %4311, %4314
  %4318 = call float @dx.op.unary.f32(i32 83, float %4284)  ; DerivCoarseX(value)
  %4319 = call float @dx.op.unary.f32(i32 83, float %4285)  ; DerivCoarseX(value)
  %4320 = call float @dx.op.unary.f32(i32 83, float %4286)  ; DerivCoarseX(value)
  %4321 = call float @dx.op.unary.f32(i32 84, float %4284)  ; DerivCoarseY(value)
  %4322 = call float @dx.op.unary.f32(i32 84, float %4285)  ; DerivCoarseY(value)
  %4323 = call float @dx.op.unary.f32(i32 84, float %4286)  ; DerivCoarseY(value)
  %4324 = fcmp fast ole float %274, %4302
  %4325 = fmul fast float %4301, %4299
  %4326 = fcmp fast ole float %274, %4325
  %4327 = select i1 %4326, float %4286, float %4284
  %4328 = select i1 %4326, float %4284, float %4285
  %4329 = select i1 %4324, float %4285, float %4327
  %4330 = select i1 %4324, float %4286, float %4328
  %4331 = select i1 %4326, float %4320, float %4318
  %4332 = select i1 %4326, float %4318, float %4319
  %4333 = select i1 %4324, float %4319, float %4331
  %4334 = select i1 %4324, float %4320, float %4332
  %4335 = select i1 %4326, float %4323, float %4321
  %4336 = select i1 %4326, float %4321, float %4322
  %4337 = select i1 %4324, float %4322, float %4335
  %4338 = select i1 %4324, float %4323, float %4336
  %4339 = call float @dx.op.unary.f32(i32 27, float %4329)  ; Round_ni(value)
  %4340 = call float @dx.op.unary.f32(i32 27, float %4330)  ; Round_ni(value)
  %4341 = fptosi float %4339 to i32
  %4342 = fptosi float %4340 to i32
  %4343 = xor i32 %4342, %4341
  %4344 = sitofp i32 %4343 to float
  %4345 = fptosi float %4344 to i32
  %4346 = sitofp i32 %4345 to float
  %4347 = fmul fast float %4346, 0x3FE3C6EF40000000
  %4348 = frem fast float %4339, 2.560000e+02
  %4349 = frem fast float %4340, 2.560000e+02
  %4350 = fptoui float %4348 to i32
  %4351 = fptoui float %4349 to i32
  %4352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4350, i32 %4351, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4356 = fadd fast float %4353, %4347
  %4357 = fadd fast float %4354, %4347
  %4358 = fadd fast float %4355, %4347
  %4359 = call float @dx.op.unary.f32(i32 22, float %4356)  ; Frc(value)
  %4360 = call float @dx.op.unary.f32(i32 22, float %4357)  ; Frc(value)
  %4361 = call float @dx.op.unary.f32(i32 22, float %4358)  ; Frc(value)
  %4362 = fmul fast float %4361, 0x401921FB60000000
  %4363 = call float @dx.op.unary.f32(i32 13, float %4362)  ; Sin(value)
  %4364 = call float @dx.op.unary.f32(i32 12, float %4362)  ; Cos(value)
  %4365 = fsub fast float -0.000000e+00, %4364
  %4366 = fmul fast float %4364, %4329
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4330, float %4366)  ; FMad(a,b,c)
  %4368 = fmul fast float %4363, %4329
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4330, float %4368)  ; FMad(a,b,c)
  %4370 = fadd fast float %4367, %4359
  %4371 = fadd fast float %4369, %4360
  %4372 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4373 = bitcast float %4372 to i32
  %4374 = icmp eq i32 %4373, 0
  br i1 %4374, label %4413, label %4375

; <label>:4375                                    ; preds = %4278
  %4376 = add i32 %4373, 0
  %4377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4377, %dx.types.Handle %118, float %4370, float %4371, float undef, float undef, i32 0, i32 0, i32 undef, float %4333, float %4334, float undef, float %4337, float %4338, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4383 = fsub fast float 1.000000e+00, %4272
  %4384 = call float @dx.op.binary.f32(i32 35, float %4383, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4385 = bitcast float %4272 to i32
  %4386 = sitofp i32 %4385 to float
  %4387 = fadd fast float %4386, 0xC1CFBF8940000000
  %4388 = fmul fast float %4382, %4387
  %4389 = fadd fast float %4388, 0x41CFBF8940000000
  %4390 = fptosi float %4389 to i32
  %4391 = bitcast i32 %4390 to float
  %4392 = bitcast float %4384 to i32
  %4393 = sitofp i32 %4392 to float
  %4394 = fadd fast float %4393, 0xC1CFBF8940000000
  %4395 = fmul fast float %4394, %4382
  %4396 = fadd fast float %4395, 0x41CFBF8940000000
  %4397 = fptosi float %4396 to i32
  %4398 = bitcast i32 %4397 to float
  %4399 = fmul fast float %4391, %4381
  %4400 = fmul fast float %4398, %4381
  %4401 = fsub fast float %4384, %4399
  %4402 = fadd fast float %4400, %4384
  %4403 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4405 = fsub fast float %4379, %4403
  %4406 = fsub fast float %4404, %4403
  %4407 = bitcast float %4406 to i32
  %4408 = sub nsw i32 2129859010, %4407
  %4409 = bitcast i32 %4408 to float
  %4410 = fmul fast float %4409, %4405
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fcmp fast olt float %4411, 0x3F70101020000000
  br i1 %4412, label %4551, label %4413

; <label>:4413                                    ; preds = %4375, %4278
  %4414 = phi float [ %4411, %4375 ], [ %4272, %4278 ]
  %4415 = fmul fast float %4414, %4281
  %4416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.i32 %4416, 1
  %4418 = extractvalue %dx.types.CBufRet.i32 %4416, 0
  %4419 = add i32 %4418, 0
  %4420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4420, %dx.types.Handle %117, float %4370, float %4371, float undef, float undef, i32 0, i32 0, i32 undef, float %4333, float %4334, float undef, float %4337, float %4338, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.ResRet.f32 %4421, 2
  %4425 = extractvalue %dx.types.ResRet.f32 %4421, 3
  %4426 = and i32 %4417, 255
  %4427 = uitofp i32 %4426 to float
  %4428 = lshr i32 %4417, 8
  %4429 = and i32 %4428, 255
  %4430 = uitofp i32 %4429 to float
  %4431 = fmul fast float %4425, %4427
  %4432 = fadd fast float %4431, %4430
  %4433 = fmul fast float %4432, 0x3F70101000000000
  %4434 = fadd fast float %4433, 0xBFB99999A0000000
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4435, 0x3FF1C71C80000000
  %4437 = call float @dx.op.binary.f32(i32 36, float %4433, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4438 = fsub fast float 1.000000e+00, %4436
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, %4422
  %4441 = fmul fast float %4439, %4423
  %4442 = fmul fast float %4439, %4424
  %4443 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4446 = fmul fast float %4436, %4422
  %4447 = fmul fast float %4436, %4423
  %4448 = fmul fast float %4436, %4424
  %4449 = fadd fast float %4446, %4437
  %4450 = fadd fast float %4447, %4437
  %4451 = fadd fast float %4448, %4437
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4453 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 3
  %4457 = extractvalue %dx.types.CBufRet.i32 %4455, 2
  %4458 = add i32 %4457, 0
  %4459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4459, %dx.types.Handle %117, float %4370, float %4371, float undef, float undef, i32 0, i32 0, i32 undef, float %4333, float %4334, float undef, float %4337, float %4338, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.ResRet.f32 %4460, 1
  %4463 = extractvalue %dx.types.ResRet.f32 %4460, 2
  %4464 = extractvalue %dx.types.ResRet.f32 %4460, 3
  %4465 = and i32 %4456, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = lshr i32 %4456, 8
  %4468 = and i32 %4467, 255
  %4469 = uitofp i32 %4468 to float
  %4470 = lshr i32 %4456, 16
  %4471 = and i32 %4470, 255
  %4472 = uitofp i32 %4471 to float
  %4473 = fmul fast float %4472, 0x3F70101000000000
  %4474 = fmul fast float %4461, %4466
  %4475 = fadd fast float %4474, %4469
  %4476 = fmul fast float %4475, 0x3F70101000000000
  %4477 = fadd fast float %4462, -5.000000e-01
  %4478 = fadd fast float %4464, -5.000000e-01
  %4479 = fmul fast float %4477, %4473
  %4480 = fmul fast float %4478, %4473
  %4481 = fadd fast float %4479, 5.000000e-01
  %4482 = fadd fast float %4480, 5.000000e-01
  %4483 = fmul fast float %4481, 2.000000e+00
  %4484 = fadd fast float %4483, -1.000000e+00
  %4485 = fmul fast float %4482, 2.000000e+00
  %4486 = fadd fast float %4485, -1.000000e+00
  %4487 = fadd fast float %4484, %4486
  %4488 = fmul fast float %4487, 5.000000e-01
  %4489 = fsub fast float %4484, %4486
  %4490 = fmul fast float %4489, 5.000000e-01
  %4491 = call float @dx.op.unary.f32(i32 6, float %4488)  ; FAbs(value)
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = call float @dx.op.unary.f32(i32 6, float %4490)  ; FAbs(value)
  %4494 = fsub fast float %4492, %4493
  %4495 = call float @dx.op.dot3.f32(i32 55, float %4488, float %4490, float %4494, float %4488, float %4490, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4496 = call float @dx.op.unary.f32(i32 25, float %4495)  ; Rsqrt(value)
  %4497 = fmul fast float %4488, %4496
  %4498 = fmul fast float %4490, %4496
  %4499 = select i1 %4326, i32 %4316, i32 %4317
  %4500 = select i1 %4324, i32 %4315, i32 %4499
  %4501 = sitofp i32 %4500 to float
  %4502 = fmul fast float %4494, %4501
  %4503 = fmul fast float %4502, %4496
  %4504 = select i1 %4326, float %4503, float %4498
  %4505 = select i1 %4326, float %4498, float %4503
  %4506 = select i1 %4324, float %4503, float %4497
  %4507 = select i1 %4324, float %4498, float %4504
  %4508 = select i1 %4324, float %4497, float %4505
  %4509 = fsub fast float %4443, %3876
  %4510 = fsub fast float %4444, %3877
  %4511 = fsub fast float %4445, %3878
  %4512 = fmul fast float %4509, %4415
  %4513 = fmul fast float %4510, %4415
  %4514 = fmul fast float %4511, %4415
  %4515 = fadd fast float %4512, %3876
  %4516 = fadd fast float %4513, %3877
  %4517 = fadd fast float %4514, %3878
  %4518 = fsub fast float %4452, %3861
  %4519 = fsub fast float %4453, %3862
  %4520 = fsub fast float %4454, %3863
  %4521 = fmul fast float %4518, %4415
  %4522 = fmul fast float %4519, %4415
  %4523 = fmul fast float %4520, %4415
  %4524 = fadd fast float %4521, %3861
  %4525 = fadd fast float %4522, %3862
  %4526 = fadd fast float %4523, %3863
  %4527 = fadd fast float %4506, %3825
  %4528 = fadd fast float %4507, %3826
  %4529 = fadd fast float %4508, %3827
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4527, float %4528, float %4529, float %4527, float %4528, float %4529)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 25, float %4530)  ; Rsqrt(value)
  %4532 = fmul fast float %4527, %4531
  %4533 = fmul fast float %4528, %4531
  %4534 = fmul fast float %4529, %4531
  %4535 = fsub fast float %4532, %3825
  %4536 = fsub fast float %4533, %3826
  %4537 = fsub fast float %4534, %3827
  %4538 = fmul fast float %4535, %4415
  %4539 = fmul fast float %4536, %4415
  %4540 = fmul fast float %4537, %4415
  %4541 = fadd fast float %4538, %3825
  %4542 = fadd fast float %4539, %3826
  %4543 = fadd fast float %4540, %3827
  %4544 = call float @dx.op.binary.f32(i32 36, float %3837, float %4463)  ; FMin(a,b)
  %4545 = fsub fast float %4544, %3837
  %4546 = fmul fast float %4545, %4415
  %4547 = fadd fast float %4546, %3837
  %4548 = fsub fast float %4476, %3864
  %4549 = fmul fast float %4548, %4415
  %4550 = fadd fast float %4549, %3864
  br label %4551

; <label>:4551                                    ; preds = %4413, %4375, %4277
  %4552 = phi float [ %4515, %4413 ], [ %3876, %4375 ], [ %3876, %4277 ]
  %4553 = phi float [ %4516, %4413 ], [ %3877, %4375 ], [ %3877, %4277 ]
  %4554 = phi float [ %4517, %4413 ], [ %3878, %4375 ], [ %3878, %4277 ]
  %4555 = phi float [ %4524, %4413 ], [ %3861, %4375 ], [ %3861, %4277 ]
  %4556 = phi float [ %4525, %4413 ], [ %3862, %4375 ], [ %3862, %4277 ]
  %4557 = phi float [ %4526, %4413 ], [ %3863, %4375 ], [ %3863, %4277 ]
  %4558 = phi float [ %4541, %4413 ], [ %3825, %4375 ], [ %3825, %4277 ]
  %4559 = phi float [ %4542, %4413 ], [ %3826, %4375 ], [ %3826, %4277 ]
  %4560 = phi float [ %4543, %4413 ], [ %3827, %4375 ], [ %3827, %4277 ]
  %4561 = phi float [ %4550, %4413 ], [ %3864, %4375 ], [ %3864, %4277 ]
  %4562 = phi float [ %4547, %4413 ], [ %3837, %4375 ], [ %3837, %4277 ]
  br i1 %4275, label %4563, label %4836

; <label>:4563                                    ; preds = %4551
  %4564 = call float @dx.op.unary.f32(i32 23, float %4562)  ; Log(value)
  %4565 = fmul fast float %4564, 4.000000e+00
  %4566 = call float @dx.op.unary.f32(i32 21, float %4565)  ; Exp(value)
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 0
  %4569 = fmul fast float %4568, %64
  %4570 = fmul fast float %4568, %65
  %4571 = fmul fast float %4568, %66
  %4572 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4573 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4574 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4575 = call float @dx.op.unary.f32(i32 23, float %4572)  ; Log(value)
  %4576 = call float @dx.op.unary.f32(i32 23, float %4573)  ; Log(value)
  %4577 = call float @dx.op.unary.f32(i32 23, float %4574)  ; Log(value)
  %4578 = fmul fast float %4575, 4.000000e+00
  %4579 = fmul fast float %4576, 4.000000e+00
  %4580 = fmul fast float %4577, 4.000000e+00
  %4581 = call float @dx.op.unary.f32(i32 21, float %4578)  ; Exp(value)
  %4582 = call float @dx.op.unary.f32(i32 21, float %4579)  ; Exp(value)
  %4583 = call float @dx.op.unary.f32(i32 21, float %4580)  ; Exp(value)
  %4584 = fadd fast float %4582, %4581
  %4585 = fadd fast float %4584, %4583
  %4586 = fdiv fast float 1.000000e+00, %4585
  %4587 = fmul fast float %4586, %4581
  %4588 = fcmp fast ogt float %73, 0.000000e+00
  %4589 = fcmp fast ogt float %74, 0.000000e+00
  %4590 = fcmp fast ogt float %75, 0.000000e+00
  %4591 = fcmp fast olt float %73, 0.000000e+00
  %4592 = fcmp fast olt float %74, 0.000000e+00
  %4593 = fcmp fast olt float %75, 0.000000e+00
  %4594 = zext i1 %4588 to i32
  %4595 = zext i1 %4589 to i32
  %4596 = zext i1 %4590 to i32
  %4597 = zext i1 %4591 to i32
  %4598 = zext i1 %4592 to i32
  %4599 = zext i1 %4593 to i32
  %4600 = sub nsw i32 %4594, %4597
  %4601 = sub nsw i32 %4595, %4598
  %4602 = sub nsw i32 %4596, %4599
  %4603 = call float @dx.op.unary.f32(i32 83, float %4569)  ; DerivCoarseX(value)
  %4604 = call float @dx.op.unary.f32(i32 83, float %4570)  ; DerivCoarseX(value)
  %4605 = call float @dx.op.unary.f32(i32 83, float %4571)  ; DerivCoarseX(value)
  %4606 = call float @dx.op.unary.f32(i32 84, float %4569)  ; DerivCoarseY(value)
  %4607 = call float @dx.op.unary.f32(i32 84, float %4570)  ; DerivCoarseY(value)
  %4608 = call float @dx.op.unary.f32(i32 84, float %4571)  ; DerivCoarseY(value)
  %4609 = fcmp fast ole float %274, %4587
  %4610 = fmul fast float %4586, %4584
  %4611 = fcmp fast ole float %274, %4610
  %4612 = select i1 %4611, float %4571, float %4569
  %4613 = select i1 %4611, float %4569, float %4570
  %4614 = select i1 %4609, float %4570, float %4612
  %4615 = select i1 %4609, float %4571, float %4613
  %4616 = select i1 %4611, float %4605, float %4603
  %4617 = select i1 %4611, float %4603, float %4604
  %4618 = select i1 %4609, float %4604, float %4616
  %4619 = select i1 %4609, float %4605, float %4617
  %4620 = select i1 %4611, float %4608, float %4606
  %4621 = select i1 %4611, float %4606, float %4607
  %4622 = select i1 %4609, float %4607, float %4620
  %4623 = select i1 %4609, float %4608, float %4621
  %4624 = call float @dx.op.unary.f32(i32 27, float %4614)  ; Round_ni(value)
  %4625 = call float @dx.op.unary.f32(i32 27, float %4615)  ; Round_ni(value)
  %4626 = fptosi float %4624 to i32
  %4627 = fptosi float %4625 to i32
  %4628 = xor i32 %4627, %4626
  %4629 = sitofp i32 %4628 to float
  %4630 = fptosi float %4629 to i32
  %4631 = sitofp i32 %4630 to float
  %4632 = fmul fast float %4631, 0x3FE3C6EF40000000
  %4633 = frem fast float %4624, 2.560000e+02
  %4634 = frem fast float %4625, 2.560000e+02
  %4635 = fptoui float %4633 to i32
  %4636 = fptoui float %4634 to i32
  %4637 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4635, i32 %4636, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = fadd fast float %4638, %4632
  %4642 = fadd fast float %4639, %4632
  %4643 = fadd fast float %4640, %4632
  %4644 = call float @dx.op.unary.f32(i32 22, float %4641)  ; Frc(value)
  %4645 = call float @dx.op.unary.f32(i32 22, float %4642)  ; Frc(value)
  %4646 = call float @dx.op.unary.f32(i32 22, float %4643)  ; Frc(value)
  %4647 = fmul fast float %4646, 0x401921FB60000000
  %4648 = call float @dx.op.unary.f32(i32 13, float %4647)  ; Sin(value)
  %4649 = call float @dx.op.unary.f32(i32 12, float %4647)  ; Cos(value)
  %4650 = fsub fast float -0.000000e+00, %4649
  %4651 = fmul fast float %4649, %4614
  %4652 = call float @dx.op.tertiary.f32(i32 46, float %4648, float %4615, float %4651)  ; FMad(a,b,c)
  %4653 = fmul fast float %4648, %4614
  %4654 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4615, float %4653)  ; FMad(a,b,c)
  %4655 = fadd fast float %4652, %4644
  %4656 = fadd fast float %4654, %4645
  %4657 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4658 = bitcast float %4657 to i32
  %4659 = icmp eq i32 %4658, 0
  br i1 %4659, label %4698, label %4660

; <label>:4660                                    ; preds = %4563
  %4661 = add i32 %4658, 0
  %4662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4662, %dx.types.Handle %118, float %4655, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float %4618, float %4619, float undef, float %4622, float %4623, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4668 = fsub fast float 1.000000e+00, %4273
  %4669 = call float @dx.op.binary.f32(i32 35, float %4668, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4670 = bitcast float %4273 to i32
  %4671 = sitofp i32 %4670 to float
  %4672 = fadd fast float %4671, 0xC1CFBF8940000000
  %4673 = fmul fast float %4667, %4672
  %4674 = fadd fast float %4673, 0x41CFBF8940000000
  %4675 = fptosi float %4674 to i32
  %4676 = bitcast i32 %4675 to float
  %4677 = bitcast float %4669 to i32
  %4678 = sitofp i32 %4677 to float
  %4679 = fadd fast float %4678, 0xC1CFBF8940000000
  %4680 = fmul fast float %4679, %4667
  %4681 = fadd fast float %4680, 0x41CFBF8940000000
  %4682 = fptosi float %4681 to i32
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4676, %4666
  %4685 = fmul fast float %4683, %4666
  %4686 = fsub fast float %4669, %4684
  %4687 = fadd fast float %4685, %4669
  %4688 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4690 = fsub fast float %4664, %4688
  %4691 = fsub fast float %4689, %4688
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fmul fast float %4694, %4690
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fcmp fast olt float %4696, 0x3F70101020000000
  br i1 %4697, label %4836, label %4698

; <label>:4698                                    ; preds = %4660, %4563
  %4699 = phi float [ %4696, %4660 ], [ %4273, %4563 ]
  %4700 = fmul fast float %4699, %4566
  %4701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.i32 %4701, 1
  %4703 = extractvalue %dx.types.CBufRet.i32 %4701, 0
  %4704 = add i32 %4703, 0
  %4705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4706 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4705, %dx.types.Handle %117, float %4655, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float %4618, float %4619, float undef, float %4622, float %4623, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.ResRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.ResRet.f32 %4706, 2
  %4710 = extractvalue %dx.types.ResRet.f32 %4706, 3
  %4711 = and i32 %4702, 255
  %4712 = uitofp i32 %4711 to float
  %4713 = lshr i32 %4702, 8
  %4714 = and i32 %4713, 255
  %4715 = uitofp i32 %4714 to float
  %4716 = fmul fast float %4710, %4712
  %4717 = fadd fast float %4716, %4715
  %4718 = fmul fast float %4717, 0x3F70101000000000
  %4719 = fadd fast float %4718, 0xBFB99999A0000000
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4720, 0x3FF1C71C80000000
  %4722 = call float @dx.op.binary.f32(i32 36, float %4718, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4723 = fsub fast float 1.000000e+00, %4721
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4724, %4707
  %4726 = fmul fast float %4724, %4708
  %4727 = fmul fast float %4724, %4709
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = fmul fast float %4721, %4707
  %4732 = fmul fast float %4721, %4708
  %4733 = fmul fast float %4721, %4709
  %4734 = fadd fast float %4731, %4722
  %4735 = fadd fast float %4732, %4722
  %4736 = fadd fast float %4733, %4722
  %4737 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4738 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.i32 %4740, 3
  %4742 = extractvalue %dx.types.CBufRet.i32 %4740, 2
  %4743 = add i32 %4742, 0
  %4744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4744, %dx.types.Handle %117, float %4655, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float %4618, float %4619, float undef, float %4622, float %4623, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.ResRet.f32 %4745, 1
  %4748 = extractvalue %dx.types.ResRet.f32 %4745, 2
  %4749 = extractvalue %dx.types.ResRet.f32 %4745, 3
  %4750 = and i32 %4741, 255
  %4751 = uitofp i32 %4750 to float
  %4752 = lshr i32 %4741, 8
  %4753 = and i32 %4752, 255
  %4754 = uitofp i32 %4753 to float
  %4755 = lshr i32 %4741, 16
  %4756 = and i32 %4755, 255
  %4757 = uitofp i32 %4756 to float
  %4758 = fmul fast float %4757, 0x3F70101000000000
  %4759 = fmul fast float %4746, %4751
  %4760 = fadd fast float %4759, %4754
  %4761 = fmul fast float %4760, 0x3F70101000000000
  %4762 = fadd fast float %4747, -5.000000e-01
  %4763 = fadd fast float %4749, -5.000000e-01
  %4764 = fmul fast float %4762, %4758
  %4765 = fmul fast float %4763, %4758
  %4766 = fadd fast float %4764, 5.000000e-01
  %4767 = fadd fast float %4765, 5.000000e-01
  %4768 = fmul fast float %4766, 2.000000e+00
  %4769 = fadd fast float %4768, -1.000000e+00
  %4770 = fmul fast float %4767, 2.000000e+00
  %4771 = fadd fast float %4770, -1.000000e+00
  %4772 = fadd fast float %4769, %4771
  %4773 = fmul fast float %4772, 5.000000e-01
  %4774 = fsub fast float %4769, %4771
  %4775 = fmul fast float %4774, 5.000000e-01
  %4776 = call float @dx.op.unary.f32(i32 6, float %4773)  ; FAbs(value)
  %4777 = fsub fast float 1.000000e+00, %4776
  %4778 = call float @dx.op.unary.f32(i32 6, float %4775)  ; FAbs(value)
  %4779 = fsub fast float %4777, %4778
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4775, float %4779, float %4773, float %4775, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 25, float %4780)  ; Rsqrt(value)
  %4782 = fmul fast float %4773, %4781
  %4783 = fmul fast float %4775, %4781
  %4784 = select i1 %4611, i32 %4601, i32 %4602
  %4785 = select i1 %4609, i32 %4600, i32 %4784
  %4786 = sitofp i32 %4785 to float
  %4787 = fmul fast float %4779, %4786
  %4788 = fmul fast float %4787, %4781
  %4789 = select i1 %4611, float %4788, float %4783
  %4790 = select i1 %4611, float %4783, float %4788
  %4791 = select i1 %4609, float %4788, float %4782
  %4792 = select i1 %4609, float %4783, float %4789
  %4793 = select i1 %4609, float %4782, float %4790
  %4794 = fsub fast float %4728, %4552
  %4795 = fsub fast float %4729, %4553
  %4796 = fsub fast float %4730, %4554
  %4797 = fmul fast float %4794, %4700
  %4798 = fmul fast float %4795, %4700
  %4799 = fmul fast float %4796, %4700
  %4800 = fadd fast float %4797, %4552
  %4801 = fadd fast float %4798, %4553
  %4802 = fadd fast float %4799, %4554
  %4803 = fsub fast float %4737, %4555
  %4804 = fsub fast float %4738, %4556
  %4805 = fsub fast float %4739, %4557
  %4806 = fmul fast float %4803, %4700
  %4807 = fmul fast float %4804, %4700
  %4808 = fmul fast float %4805, %4700
  %4809 = fadd fast float %4806, %4555
  %4810 = fadd fast float %4807, %4556
  %4811 = fadd fast float %4808, %4557
  %4812 = fadd fast float %4791, %4558
  %4813 = fadd fast float %4792, %4559
  %4814 = fadd fast float %4793, %4560
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %4814, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = call float @dx.op.unary.f32(i32 25, float %4815)  ; Rsqrt(value)
  %4817 = fmul fast float %4812, %4816
  %4818 = fmul fast float %4813, %4816
  %4819 = fmul fast float %4814, %4816
  %4820 = fsub fast float %4817, %4558
  %4821 = fsub fast float %4818, %4559
  %4822 = fsub fast float %4819, %4560
  %4823 = fmul fast float %4820, %4700
  %4824 = fmul fast float %4821, %4700
  %4825 = fmul fast float %4822, %4700
  %4826 = fadd fast float %4823, %4558
  %4827 = fadd fast float %4824, %4559
  %4828 = fadd fast float %4825, %4560
  %4829 = call float @dx.op.binary.f32(i32 36, float %4562, float %4748)  ; FMin(a,b)
  %4830 = fsub fast float %4829, %4562
  %4831 = fmul fast float %4830, %4700
  %4832 = fadd fast float %4831, %4562
  %4833 = fsub fast float %4761, %4561
  %4834 = fmul fast float %4833, %4700
  %4835 = fadd fast float %4834, %4561
  br label %4836

; <label>:4836                                    ; preds = %4698, %4660, %4551, %4267
  %4837 = phi float [ %4800, %4698 ], [ %4552, %4660 ], [ %4552, %4551 ], [ %3876, %4267 ]
  %4838 = phi float [ %4801, %4698 ], [ %4553, %4660 ], [ %4553, %4551 ], [ %3877, %4267 ]
  %4839 = phi float [ %4802, %4698 ], [ %4554, %4660 ], [ %4554, %4551 ], [ %3878, %4267 ]
  %4840 = phi float [ %4809, %4698 ], [ %4555, %4660 ], [ %4555, %4551 ], [ %3861, %4267 ]
  %4841 = phi float [ %4810, %4698 ], [ %4556, %4660 ], [ %4556, %4551 ], [ %3862, %4267 ]
  %4842 = phi float [ %4811, %4698 ], [ %4557, %4660 ], [ %4557, %4551 ], [ %3863, %4267 ]
  %4843 = phi float [ %4826, %4698 ], [ %4558, %4660 ], [ %4558, %4551 ], [ %3825, %4267 ]
  %4844 = phi float [ %4827, %4698 ], [ %4559, %4660 ], [ %4559, %4551 ], [ %3826, %4267 ]
  %4845 = phi float [ %4828, %4698 ], [ %4560, %4660 ], [ %4560, %4551 ], [ %3827, %4267 ]
  %4846 = phi float [ %4835, %4698 ], [ %4561, %4660 ], [ %4561, %4551 ], [ %3864, %4267 ]
  %4847 = phi float [ %4832, %4698 ], [ %4562, %4660 ], [ %4562, %4551 ], [ %3837, %4267 ]
  %4848 = fcmp fast une float %4271, 0.000000e+00
  %4849 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 25, float %4849)  ; Rsqrt(value)
  br i1 %4848, label %4858, label %4851

; <label>:4851                                    ; preds = %4836
  %4852 = fmul fast float %4850, %204
  %4853 = fmul fast float %4850, %205
  %4854 = fmul fast float %4850, %206
  %4855 = fsub fast float -0.000000e+00, %4852
  %4856 = fsub fast float -0.000000e+00, %4853
  %4857 = fsub fast float -0.000000e+00, %4854
  br label %5025

; <label>:4858                                    ; preds = %4836
  %4859 = fmul fast float %204, %4850
  %4860 = fsub fast float -0.000000e+00, %4859
  %4861 = fmul fast float %205, %4850
  %4862 = fsub fast float -0.000000e+00, %4861
  %4863 = fmul fast float %206, %4850
  %4864 = fsub fast float -0.000000e+00, %4863
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4862, float %4864, float %130, float %132, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = fmul fast float %4271, 2.500000e+00
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fmul fast float %4271, 0x4013FFFFE0000000
  %4869 = fadd fast float %4868, 0xBFFFFFFFE0000000
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4271, 0x4004000020000000
  %4872 = fadd fast float %4871, 0xBFF8000040000000
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = fmul fast float %3843, 1.000000e+01
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %4875, 2.000000e+00
  %4877 = fsub fast float 3.000000e+00, %4876
  %4878 = fmul fast float %4875, %4875
  %4879 = fmul fast float %4878, %4877
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = fsub fast float 0x3FE3333340000000, %4846
  %4882 = fmul fast float %4881, 0x400AAAAAA0000000
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4880, %4883
  %4885 = fmul fast float %4837, 0x3FEA2B8620000000
  %4886 = fmul fast float %4838, 0x3FEA2B8620000000
  %4887 = fmul fast float %4839, 0x3FEA2B8620000000
  %4888 = fadd fast float %4885, 0x3FC81DFBA0000000
  %4889 = fmul fast float %4888, %4837
  %4890 = fadd fast float %4889, 0x3F910E6020000000
  %4891 = fadd fast float %4886, 0x3FC81DFBA0000000
  %4892 = fmul fast float %4891, %4838
  %4893 = fadd fast float %4892, 0x3F910E6020000000
  %4894 = fadd fast float %4887, 0x3FC81DFBA0000000
  %4895 = fmul fast float %4894, %4839
  %4896 = fadd fast float %4895, 0x3F910E6020000000
  %4897 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = fsub fast float %4897, %4837
  %4901 = fsub fast float %4898, %4838
  %4902 = fsub fast float %4899, %4839
  %4903 = fmul fast float %4900, %4867
  %4904 = fmul fast float %4903, %4884
  %4905 = fmul fast float %4901, %4867
  %4906 = fmul fast float %4905, %4884
  %4907 = fmul fast float %4902, %4867
  %4908 = fmul fast float %4907, %4884
  %4909 = fadd fast float %4904, %4837
  %4910 = fadd fast float %4906, %4838
  %4911 = fadd fast float %4908, %4839
  %4912 = fmul fast float %4847, %4847
  %4913 = fmul fast float %4912, %4912
  %4914 = fadd fast float %4870, 1.000000e+00
  %4915 = fsub fast float %4914, %4884
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = call float @dx.op.dot3.f32(i32 55, float %130, float %132, float %134, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fsub fast float 1.000000e+00, %4913
  %4920 = call float @dx.op.binary.f32(i32 36, float %4916, float %4919)  ; FMin(a,b)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4920, float %4921)  ; FMax(a,b)
  %4923 = fadd fast float %4918, 0xBFE4CCCCC0000000
  %4924 = fmul fast float %4923, 0x4006DB6DA0000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4925, 2.000000e+00
  %4927 = fsub fast float 3.000000e+00, %4926
  %4928 = bitcast float %4840 to i32
  %4929 = ashr i32 %4928, 1
  %4930 = add nsw i32 %4929, 532487669
  %4931 = bitcast i32 %4930 to float
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = bitcast float %4932 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = fmul fast float %4935, 2.000000e+00
  %4937 = bitcast float %4841 to i32
  %4938 = ashr i32 %4937, 1
  %4939 = add nsw i32 %4938, 532487669
  %4940 = bitcast i32 %4939 to float
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = bitcast float %4941 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = bitcast i32 %4943 to float
  %4945 = fmul fast float %4944, 2.000000e+00
  %4946 = bitcast float %4842 to i32
  %4947 = ashr i32 %4946, 1
  %4948 = add nsw i32 %4947, 532487669
  %4949 = bitcast i32 %4948 to float
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, 2.000000e+00
  %4955 = fsub fast float 0x4002A9FBE0000000, %4936
  %4956 = fadd fast float %4936, 0x3FD54FDF00000000
  %4957 = bitcast float %4956 to i32
  %4958 = sub nsw i32 2129859010, %4957
  %4959 = bitcast i32 %4958 to float
  %4960 = fmul fast float %4959, %4955
  %4961 = fmul fast float %4960, %4960
  %4962 = fsub fast float 0x4002A9FBE0000000, %4945
  %4963 = fadd fast float %4945, 0x3FD54FDF00000000
  %4964 = bitcast float %4963 to i32
  %4965 = sub nsw i32 2129859010, %4964
  %4966 = bitcast i32 %4965 to float
  %4967 = fmul fast float %4966, %4962
  %4968 = fmul fast float %4967, %4967
  %4969 = fsub fast float 0x4002A9FBE0000000, %4954
  %4970 = fadd fast float %4954, 0x3FD54FDF00000000
  %4971 = bitcast float %4970 to i32
  %4972 = sub nsw i32 2129859010, %4971
  %4973 = bitcast i32 %4972 to float
  %4974 = fmul fast float %4973, %4969
  %4975 = fmul fast float %4974, %4974
  %4976 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4961)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4968)  ; FMax(a,b)
  %4978 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4975)  ; FMax(a,b)
  %4979 = fsub fast float 1.000000e+00, %4865
  %4980 = fadd fast float %4979, %4880
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fsub fast float 1.000000e+00, %4252
  %4983 = fmul fast float %4922, %4982
  %4984 = fmul fast float %4925, %4925
  %4985 = fmul fast float %4984, %4983
  %4986 = fmul fast float %4985, %4927
  %4987 = fmul fast float %4982, 0xBFE99999A0000000
  %4988 = fmul fast float %4987, %4867
  %4989 = fmul fast float %4988, %4884
  %4990 = fadd fast float %4989, 1.000000e+00
  %4991 = fadd fast float %4846, -1.000000e+00
  %4992 = fmul fast float %4990, %4991
  %4993 = fadd fast float %4992, 1.000000e+00
  %4994 = fsub fast float %4976, %4840
  %4995 = fsub fast float %4977, %4841
  %4996 = fsub fast float %4978, %4842
  %4997 = fmul fast float %4986, %4994
  %4998 = fmul fast float %4986, %4995
  %4999 = fmul fast float %4986, %4996
  %5000 = fadd fast float %4997, %4840
  %5001 = fadd fast float %4998, %4841
  %5002 = fadd fast float %4999, %4842
  %5003 = fsub fast float %130, %4843
  %5004 = fsub fast float %132, %4844
  %5005 = fsub fast float %134, %4845
  %5006 = fmul fast float %4986, %5003
  %5007 = fmul fast float %4986, %5004
  %5008 = fmul fast float %4986, %5005
  %5009 = fadd fast float %5006, %4843
  %5010 = fadd fast float %5007, %4844
  %5011 = fadd fast float %5008, %4845
  %5012 = fmul fast float %4986, %4981
  %5013 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %5014 = fsub fast float 1.000000e+00, %5013
  %5015 = fmul fast float %5012, %5014
  %5016 = fadd fast float %5015, %5013
  %5017 = fsub fast float 1.000000e+00, %4847
  %5018 = fmul fast float %4986, %5017
  %5019 = fadd fast float %5018, %4847
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float %5009, float %5010, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.unary.f32(i32 25, float %5020)  ; Rsqrt(value)
  %5022 = fmul fast float %5009, %5021
  %5023 = fmul fast float %5010, %5021
  %5024 = fmul fast float %5011, %5021
  br label %5025

; <label>:5025                                    ; preds = %4858, %4851
  %5026 = phi float [ %4857, %4851 ], [ %4864, %4858 ]
  %5027 = phi float [ %4856, %4851 ], [ %4862, %4858 ]
  %5028 = phi float [ %4855, %4851 ], [ %4860, %4858 ]
  %5029 = phi float [ %4854, %4851 ], [ %4863, %4858 ]
  %5030 = phi float [ %4853, %4851 ], [ %4861, %4858 ]
  %5031 = phi float [ %4852, %4851 ], [ %4859, %4858 ]
  %5032 = phi float [ %4837, %4851 ], [ %4909, %4858 ]
  %5033 = phi float [ %4838, %4851 ], [ %4910, %4858 ]
  %5034 = phi float [ %4839, %4851 ], [ %4911, %4858 ]
  %5035 = phi float [ %4840, %4851 ], [ %5000, %4858 ]
  %5036 = phi float [ %4841, %4851 ], [ %5001, %4858 ]
  %5037 = phi float [ %4842, %4851 ], [ %5002, %4858 ]
  %5038 = phi float [ %4843, %4851 ], [ %5022, %4858 ]
  %5039 = phi float [ %4844, %4851 ], [ %5023, %4858 ]
  %5040 = phi float [ %4845, %4851 ], [ %5024, %4858 ]
  %5041 = phi float [ %4846, %4851 ], [ %5016, %4858 ]
  %5042 = phi float [ %4847, %4851 ], [ %5019, %4858 ]
  %5043 = fsub fast float -0.000000e+00, %206
  %5044 = select i1 %263, float 0.000000e+00, float %5037
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %5028, float %5027, float %5026)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5030, float %5029, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = fmul fast float %5047, 2.000000e+00
  %5049 = fmul fast float %5048, %5038
  %5050 = fmul fast float %5048, %5039
  %5051 = fmul fast float %5048, %5040
  %5052 = fsub fast float %5031, %5049
  %5053 = fsub fast float %5030, %5050
  %5054 = fsub fast float %5029, %5051
  %5055 = call float @dx.op.binary.f32(i32 36, float %5042, float 1.000000e+00)  ; FMin(a,b)
  %5056 = fsub fast float 1.000000e+00, %5055
  %5057 = bitcast float %5056 to i32
  %5058 = ashr i32 %5057, 1
  %5059 = add nsw i32 %5058, 532487669
  %5060 = bitcast i32 %5059 to float
  %5061 = fsub fast float 1.000000e+00, %5041
  %5062 = call float @dx.op.binary.f32(i32 35, float %5061, float 0x3F847AE140000000)  ; FMax(a,b)
  %5063 = fmul fast float %5062, %5062
  %5064 = fmul fast float %5063, %5063
  %5065 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5060, float %5064, float %5065, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = fsub fast float 1.000000e+00, %5042
  %5069 = bitcast float %5068 to i32
  %5070 = sub nsw i32 2129859010, %5069
  %5071 = call float @dx.op.dot3.f32(i32 55, float %88, float %84, float %80, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = fmul fast float %5071, 0x3FD20DD760000000
  %5073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %88)  ; FMax(a,b)
  %5074 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = fcmp fast oeq float %5074, 0.000000e+00
  %5076 = fcmp fast oeq float %5073, 0.000000e+00
  %5077 = or i1 %5076, %5075
  br i1 %5077, label %5107, label %5078

; <label>:5078                                    ; preds = %5025
  %5079 = fsub fast float -0.000000e+00, %91
  %5080 = fsub fast float -0.000000e+00, %89
  %5081 = call float @dx.op.unary.f32(i32 24, float %5074)  ; Sqrt(value)
  %5082 = fdiv fast float %5081, %5073
  %5083 = fcmp fast ogt float %5082, 0x3FFB6F8900000000
  %5084 = select i1 %5083, float 0x3FFB6F8900000000, float %5082
  %5085 = fmul fast float %5084, 0x3FE8A23460000000
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = call float @dx.op.binary.f32(i32 35, float %5084, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5088 = fmul fast float %5086, %5073
  %5089 = fmul fast float %5087, 0x3FF279A740000000
  %5090 = fadd fast float %5089, -1.000000e+00
  %5091 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %90, float %5079, float %5080, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = call float @dx.op.unary.f32(i32 25, float %5091)  ; Rsqrt(value)
  %5093 = fmul fast float %5092, %5079
  %5094 = fmul fast float %5092, %5080
  %5095 = fmul fast float %5092, %90
  %5096 = fmul fast float %5090, %5090
  %5097 = fsub fast float 1.000000e+00, %5096
  %5098 = fmul fast float %5087, 0x40005F8BE0000000
  %5099 = fsub fast float 0x400C5BF8A0000000, %5098
  %5100 = fdiv fast float %5088, %5099
  %5101 = fmul fast float %5100, 0x3FEE31C3C0000000
  %5102 = fmul fast float %5101, %5097
  %5103 = fmul fast float %5087, 0x3FDACB7480000000
  %5104 = fadd fast float %5103, 0xBFD7347680000000
  %5105 = fmul fast float %5104, %5100
  %5106 = fmul fast float %5105, %5097
  br label %5107

; <label>:5107                                    ; preds = %5078, %5025
  %5108 = phi float [ %5093, %5078 ], [ 0.000000e+00, %5025 ]
  %5109 = phi float [ %5094, %5078 ], [ 0.000000e+00, %5025 ]
  %5110 = phi float [ %5095, %5078 ], [ 0.000000e+00, %5025 ]
  %5111 = phi float [ %5102, %5078 ], [ 0.000000e+00, %5025 ]
  %5112 = phi float [ %5106, %5078 ], [ 0.000000e+00, %5025 ]
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = fmul fast float %5113, %5113
  %5115 = fmul fast float %5114, 0x3FEE471020000000
  %5116 = fadd fast float %5115, 0xBFD42F6020000000
  %5117 = fmul fast float %5073, 0x3FD20DD760000000
  %5118 = fmul fast float %5116, %5112
  %5119 = fmul fast float %5111, 0x3FDF454380000000
  %5120 = fmul fast float %5119, %5113
  %5121 = fadd fast float %5120, %5117
  %5122 = fadd fast float %5121, %5118
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = fmul fast float %5123, 0x3FDF454380000000
  %5125 = fmul fast float %5123, %5123
  %5126 = fmul fast float %5125, 0x3FEE471020000000
  %5127 = fadd fast float %5126, 0xBFD42F6020000000
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5111, float %5112, float 0x3FD20DD760000000, float %5124, float %5127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5130 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = fcmp fast oeq float %5130, 0.000000e+00
  %5132 = fcmp fast oeq float %5129, 0.000000e+00
  %5133 = or i1 %5132, %5131
  br i1 %5133, label %5163, label %5134

; <label>:5134                                    ; preds = %5107
  %5135 = fsub fast float -0.000000e+00, %87
  %5136 = fsub fast float -0.000000e+00, %85
  %5137 = call float @dx.op.unary.f32(i32 24, float %5130)  ; Sqrt(value)
  %5138 = fdiv fast float %5137, %5129
  %5139 = fcmp fast ogt float %5138, 0x3FFB6F8900000000
  %5140 = select i1 %5139, float 0x3FFB6F8900000000, float %5138
  %5141 = fmul fast float %5140, 0x3FE8A23460000000
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5140, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5144 = fmul fast float %5142, %5129
  %5145 = fmul fast float %5143, 0x3FF279A740000000
  %5146 = fadd fast float %5145, -1.000000e+00
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %86, float %5135, float %5136, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 25, float %5147)  ; Rsqrt(value)
  %5149 = fmul fast float %5148, %5135
  %5150 = fmul fast float %5148, %5136
  %5151 = fmul fast float %5148, %86
  %5152 = fmul fast float %5146, %5146
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = fmul fast float %5143, 0x40005F8BE0000000
  %5155 = fsub fast float 0x400C5BF8A0000000, %5154
  %5156 = fdiv fast float %5144, %5155
  %5157 = fmul fast float %5156, 0x3FEE31C3C0000000
  %5158 = fmul fast float %5157, %5153
  %5159 = fmul fast float %5143, 0x3FDACB7480000000
  %5160 = fadd fast float %5159, 0xBFD7347680000000
  %5161 = fmul fast float %5160, %5156
  %5162 = fmul fast float %5161, %5153
  br label %5163

; <label>:5163                                    ; preds = %5134, %5107
  %5164 = phi float [ %5149, %5134 ], [ 0.000000e+00, %5107 ]
  %5165 = phi float [ %5150, %5134 ], [ 0.000000e+00, %5107 ]
  %5166 = phi float [ %5151, %5134 ], [ 0.000000e+00, %5107 ]
  %5167 = phi float [ %5158, %5134 ], [ 0.000000e+00, %5107 ]
  %5168 = phi float [ %5162, %5134 ], [ 0.000000e+00, %5107 ]
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = fmul fast float %5169, %5169
  %5171 = fmul fast float %5170, 0x3FEE471020000000
  %5172 = fadd fast float %5171, 0xBFD42F6020000000
  %5173 = fmul fast float %5129, 0x3FD20DD760000000
  %5174 = fmul fast float %5172, %5168
  %5175 = fmul fast float %5167, 0x3FDF454380000000
  %5176 = fmul fast float %5175, %5169
  %5177 = fadd fast float %5176, %5173
  %5178 = fadd fast float %5177, %5174
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = fmul fast float %5179, 0x3FDF454380000000
  %5181 = fmul fast float %5179, %5179
  %5182 = fmul fast float %5181, 0x3FEE471020000000
  %5183 = fadd fast float %5182, 0xBFD42F6020000000
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5167, float %5168, float 0x3FD20DD760000000, float %5180, float %5183)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5186 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = fcmp fast oeq float %5186, 0.000000e+00
  %5188 = fcmp fast oeq float %5185, 0.000000e+00
  %5189 = or i1 %5188, %5187
  br i1 %5189, label %5219, label %5190

; <label>:5190                                    ; preds = %5163
  %5191 = fsub fast float -0.000000e+00, %83
  %5192 = fsub fast float -0.000000e+00, %81
  %5193 = call float @dx.op.unary.f32(i32 24, float %5186)  ; Sqrt(value)
  %5194 = fdiv fast float %5193, %5185
  %5195 = fcmp fast ogt float %5194, 0x3FFB6F8900000000
  %5196 = select i1 %5195, float 0x3FFB6F8900000000, float %5194
  %5197 = fmul fast float %5196, 0x3FE8A23460000000
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = call float @dx.op.binary.f32(i32 35, float %5196, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5200 = fmul fast float %5198, %5185
  %5201 = fmul fast float %5199, 0x3FF279A740000000
  %5202 = fadd fast float %5201, -1.000000e+00
  %5203 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %82, float %5191, float %5192, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = call float @dx.op.unary.f32(i32 25, float %5203)  ; Rsqrt(value)
  %5205 = fmul fast float %5204, %5191
  %5206 = fmul fast float %5204, %5192
  %5207 = fmul fast float %5204, %82
  %5208 = fmul fast float %5202, %5202
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = fmul fast float %5199, 0x40005F8BE0000000
  %5211 = fsub fast float 0x400C5BF8A0000000, %5210
  %5212 = fdiv fast float %5200, %5211
  %5213 = fmul fast float %5212, 0x3FEE31C3C0000000
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5199, 0x3FDACB7480000000
  %5216 = fadd fast float %5215, 0xBFD7347680000000
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5217, %5209
  br label %5219

; <label>:5219                                    ; preds = %5190, %5163
  %5220 = phi float [ %5205, %5190 ], [ 0.000000e+00, %5163 ]
  %5221 = phi float [ %5206, %5190 ], [ 0.000000e+00, %5163 ]
  %5222 = phi float [ %5207, %5190 ], [ 0.000000e+00, %5163 ]
  %5223 = phi float [ %5214, %5190 ], [ 0.000000e+00, %5163 ]
  %5224 = phi float [ %5218, %5190 ], [ 0.000000e+00, %5163 ]
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = fmul fast float %5225, %5225
  %5227 = fmul fast float %5226, 0x3FEE471020000000
  %5228 = fadd fast float %5227, 0xBFD42F6020000000
  %5229 = fmul fast float %5185, 0x3FD20DD760000000
  %5230 = fmul fast float %5228, %5224
  %5231 = fmul fast float %5223, 0x3FDF454380000000
  %5232 = fmul fast float %5231, %5225
  %5233 = fadd fast float %5232, %5229
  %5234 = fadd fast float %5233, %5230
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5235, 0x3FDF454380000000
  %5237 = fmul fast float %5235, %5235
  %5238 = fmul fast float %5237, 0x3FEE471020000000
  %5239 = fadd fast float %5238, 0xBFD42F6020000000
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5223, float %5224, float 0x3FD20DD760000000, float %5236, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5122, float 0.000000e+00)  ; FMax(a,b)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5178, float 0.000000e+00)  ; FMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 35, float %5234, float 0.000000e+00)  ; FMax(a,b)
  %5244 = call float @dx.op.binary.f32(i32 35, float %5128, float 0.000000e+00)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5184, float 0.000000e+00)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5240, float 0.000000e+00)  ; FMax(a,b)
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = call float @dx.op.binary.f32(i32 36, float %5032, float %5248)  ; FMin(a,b)
  %5250 = fmul fast float %5249, %5056
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = call float @dx.op.binary.f32(i32 36, float %5033, float %5248)  ; FMin(a,b)
  %5256 = fmul fast float %5255, %5056
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = bitcast float %5257 to i32
  %5259 = sub nsw i32 2129859010, %5258
  %5260 = bitcast i32 %5259 to float
  %5261 = call float @dx.op.binary.f32(i32 36, float %5034, float %5248)  ; FMin(a,b)
  %5262 = fmul fast float %5261, %5056
  %5263 = fsub fast float 1.000000e+00, %5262
  %5264 = bitcast float %5263 to i32
  %5265 = sub nsw i32 2129859010, %5264
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %5241, %5055
  %5268 = fmul fast float %5267, %5254
  %5269 = fmul fast float %5242, %5055
  %5270 = fmul fast float %5269, %5260
  %5271 = fmul fast float %5243, %5055
  %5272 = fmul fast float %5271, %5266
  %5273 = call float @dx.op.binary.f32(i32 36, float %5035, float %5248)  ; FMin(a,b)
  %5274 = fmul fast float %5273, %5056
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = bitcast float %5275 to i32
  %5277 = sub nsw i32 2129859010, %5276
  %5278 = bitcast i32 %5277 to float
  %5279 = call float @dx.op.binary.f32(i32 36, float %5036, float %5248)  ; FMin(a,b)
  %5280 = fmul fast float %5279, %5056
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = bitcast float %5281 to i32
  %5283 = sub nsw i32 2129859010, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = call float @dx.op.binary.f32(i32 36, float %5044, float %5248)  ; FMin(a,b)
  %5286 = fmul fast float %5285, %5056
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = bitcast float %5287 to i32
  %5289 = sub nsw i32 2129859010, %5288
  %5290 = bitcast i32 %5289 to float
  %5291 = fmul fast float %5244, %5055
  %5292 = fmul fast float %5291, %5278
  %5293 = fmul fast float %5245, %5055
  %5294 = fmul fast float %5293, %5284
  %5295 = fmul fast float %5246, %5055
  %5296 = fmul fast float %5295, %5290
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5270, float %5272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = select i1 %263, float 0.000000e+00, float %5268
  %5299 = select i1 %263, float %5297, float %5270
  %5300 = select i1 %263, float 0.000000e+00, float %5272
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5294, float %5296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = select i1 %263, float 0.000000e+00, float %5292
  %5303 = select i1 %263, float %5301, float %5294
  %5304 = select i1 %263, float 0.000000e+00, float %5296
  %5305 = fmul fast float %5046, 9.843750e-01
  %5306 = fmul fast float %5041, 9.843750e-01
  %5307 = fadd fast float %5305, 7.812500e-03
  %5308 = fadd fast float %5306, 7.812500e-03
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 3
  %5312 = fmul fast float %5310, %5035
  %5313 = fmul fast float %5310, %5036
  %5314 = fmul fast float %5310, %5044
  %5315 = fadd fast float %5312, %5311
  %5316 = fadd fast float %5313, %5311
  %5317 = fadd fast float %5314, %5311
  %5318 = fcmp fast ogt float %3838, 0.000000e+00
  br i1 %5318, label %5319, label %5345

; <label>:5319                                    ; preds = %5219
  %5320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3838, float %5046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5324 = fadd fast float %5321, -5.000000e-01
  %5325 = fadd fast float %5322, -5.000000e-01
  %5326 = fadd fast float %5323, -5.000000e-01
  %5327 = fsub fast float 1.000000e+00, %5035
  %5328 = fsub fast float 1.000000e+00, %5036
  %5329 = fsub fast float 1.000000e+00, %5044
  %5330 = fmul fast float %5035, 4.000000e+00
  %5331 = fmul fast float %5330, %5327
  %5332 = fmul fast float %5331, %5324
  %5333 = fmul fast float %5036, 4.000000e+00
  %5334 = fmul fast float %5333, %5328
  %5335 = fmul fast float %5334, %5325
  %5336 = fmul fast float %5044, 4.000000e+00
  %5337 = fmul fast float %5336, %5329
  %5338 = fmul fast float %5337, %5326
  %5339 = fadd fast float %5332, %5315
  %5340 = fadd fast float %5335, %5316
  %5341 = fadd fast float %5338, %5317
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  br label %5345

; <label>:5345                                    ; preds = %5319, %5219
  %5346 = phi float [ %5342, %5319 ], [ %5315, %5219 ]
  %5347 = phi float [ %5343, %5319 ], [ %5316, %5219 ]
  %5348 = phi float [ %5344, %5319 ], [ %5317, %5219 ]
  %5349 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float %5346, float %5349)  ; FMax(a,b)
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5350, %5041
  %5353 = fadd fast float %5352, %5041
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 3
  %5357 = fmul fast float %5353, %5355
  %5358 = fadd fast float %5357, %5356
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fsub fast float 1.000000e+00, %5067
  %5361 = fadd fast float %5360, %5359
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fcmp fast olt float %5362, 1.000000e+00
  br i1 %5363, label %5364, label %5840

; <label>:5364                                    ; preds = %5345
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5367 = extractvalue %dx.types.CBufRet.f32 %5365, 3
  %5368 = fmul fast float %5366, %121
  %5369 = fmul fast float %5367, %122
  %5370 = fptoui float %5368 to i32
  %5371 = fptoui float %5369 to i32
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5375 = extractvalue %dx.types.CBufRet.f32 %5372, 3
  %5376 = fadd fast float %108, -4.000000e+00
  %5377 = call float @dx.op.binary.f32(i32 35, float %5376, float 0.000000e+00)  ; FMax(a,b)
  %5378 = fadd fast float %5377, %5373
  %5379 = fmul fast float %5378, %5374
  %5380 = call float @dx.op.unary.f32(i32 23, float %5379)  ; Log(value)
  %5381 = fmul fast float %5380, %5375
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5384 = fmul fast float %5381, %5383
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.i32 %5386, 1
  %5388 = add i32 %5387, -1
  %5389 = uitofp i32 %5387 to float
  %5390 = fmul fast float %5389, %5385
  %5391 = fptoui float %5390 to i32
  %5392 = call i32 @dx.op.binary.i32(i32 40, i32 %5391, i32 %5388)  ; UMin(a,b)
  %5393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.i32 %5393, 2
  %5395 = extractvalue %dx.types.CBufRet.i32 %5393, 3
  %5396 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5371, i32 %5394, i32 %5370)  ; UMad(a,b,c)
  %5397 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5392, i32 %5395, i32 %5396)  ; UMad(a,b,c)
  %5398 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %5399 = fptoui float %5398 to i32
  %5400 = lshr i32 %5399, 5
  %5401 = call i32 @dx.op.binary.i32(i32 40, i32 %5400, i32 8191)  ; UMin(a,b)
  %5402 = fsub fast float %4242, %206
  %5403 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5404 = fcmp fast ogt float %5403, 0.000000e+00
  %5405 = fcmp fast ogt float %5054, 0.000000e+00
  %5406 = and i1 %5405, %5404
  br i1 %5406, label %5407, label %5436

; <label>:5407                                    ; preds = %5364
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5053, float %5054, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call float @dx.op.binary.f32(i32 35, float %5408, float -1.000000e+00)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5409, float 1.000000e+00)  ; FMin(a,b)
  %5411 = fmul fast float %5410, %5410
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = fmul fast float %5412, 0x3FFC6E2300000000
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fcmp fast ogt float %5414, 0.000000e+00
  %5416 = call float @dx.op.unary.f32(i32 24, float %5414)  ; Sqrt(value)
  %5417 = fsub fast float 1.000000e+00, %5416
  %5418 = call float @dx.op.unary.f32(i32 23, float %5417)  ; Log(value)
  %5419 = fmul fast float %5418, 5.000000e+00
  %5420 = call float @dx.op.unary.f32(i32 21, float %5419)  ; Exp(value)
  %5421 = fmul fast float %5420, 0x3FEF591A60000000
  %5422 = fadd fast float %5421, 0x3F94DCB540000000
  %5423 = select i1 %5415, float %5422, float 1.000000e+00
  %5424 = fcmp fast oge float %5423, 1.000000e+00
  %5425 = fmul fast float %5408, 2.000000e+00
  %5426 = fadd fast float %5425, %5054
  %5427 = select i1 %5424, float %5426, float %5054
  %5428 = fsub fast float %5427, %5054
  %5429 = fmul fast float %5428, %5403
  %5430 = fadd fast float %5429, %5054
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5053, float %5430, float %5052, float %5053, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.unary.f32(i32 25, float %5431)  ; Rsqrt(value)
  %5433 = fmul fast float %5432, %5052
  %5434 = fmul fast float %5432, %5053
  %5435 = fmul fast float %5430, %5432
  br label %5436

; <label>:5436                                    ; preds = %5407, %5364
  %5437 = phi float [ %5433, %5407 ], [ %5052, %5364 ]
  %5438 = phi float [ %5434, %5407 ], [ %5053, %5364 ]
  %5439 = phi float [ %5435, %5407 ], [ %5054, %5364 ]
  %5440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.i32 %5440, 2
  %5442 = add nsw i32 %5441, -1
  %5443 = call i32 @dx.op.binary.i32(i32 37, i32 %5442, i32 0)  ; IMax(a,b)
  %5444 = shl i32 %5401, 2
  %5445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.i32 %5445, 0
  %5447 = lshr i32 %5446, 16
  %5448 = and i32 %5446, 65535
  %5449 = lshr i32 %5446, 21
  %5450 = lshr i32 %5448, 5
  %5451 = call i32 @dx.op.binary.i32(i32 40, i32 %5450, i32 %5443)  ; UMin(a,b)
  %5452 = icmp ugt i32 %5449, %5451
  br i1 %5452, label %5816, label %5453

; <label>:5453                                    ; preds = %5436
  br label %5454

; <label>:5454                                    ; preds = %5808, %5453
  %5455 = phi float [ %5809, %5808 ], [ 0.000000e+00, %5453 ]
  %5456 = phi float [ %5810, %5808 ], [ 0.000000e+00, %5453 ]
  %5457 = phi float [ %5811, %5808 ], [ 0.000000e+00, %5453 ]
  %5458 = phi float [ %5812, %5808 ], [ 1.000000e+00, %5453 ]
  %5459 = phi i32 [ %5813, %5808 ], [ %5449, %5453 ]
  %5460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.i32 %5460, 2
  %5462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5397, i32 %5461, i32 %5459)  ; UMad(a,b,c)
  %5463 = shl i32 %5462, 2
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = shl i32 %5459, 5
  %5467 = sub nsw i32 %5447, %5466
  %5468 = call i32 @dx.op.binary.i32(i32 37, i32 %5467, i32 0)  ; IMax(a,b)
  %5469 = call i32 @dx.op.binary.i32(i32 38, i32 %5468, i32 31)  ; IMin(a,b)
  %5470 = sub nsw i32 1, %5447
  %5471 = add nsw i32 %5470, %5448
  %5472 = call i32 @dx.op.binary.i32(i32 37, i32 %5471, i32 0)  ; IMax(a,b)
  %5473 = call i32 @dx.op.binary.i32(i32 38, i32 %5472, i32 32)  ; IMin(a,b)
  %5474 = and i32 %5473, 31
  %5475 = shl i32 -1, %5474
  %5476 = xor i32 %5475, -1
  %5477 = and i32 %5469, 31
  %5478 = shl i32 %5476, %5477
  %5479 = icmp eq i32 %5473, 32
  %5480 = select i1 %5479, i32 -1, i32 %5478
  %5481 = and i32 %5480, %5465
  %5482 = icmp eq i32 %5481, 0
  br i1 %5482, label %5808, label %5483

; <label>:5483                                    ; preds = %5454
  br label %5484

; <label>:5484                                    ; preds = %5591, %5483
  %5485 = phi float [ %5592, %5591 ], [ %5455, %5483 ]
  %5486 = phi float [ %5593, %5591 ], [ %5456, %5483 ]
  %5487 = phi float [ %5594, %5591 ], [ %5457, %5483 ]
  %5488 = phi float [ %5595, %5591 ], [ %5458, %5483 ]
  %5489 = phi i32 [ %5494, %5591 ], [ %5481, %5483 ]
  %5490 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5489)  ; FirstbitLo(value)
  %5491 = add i32 %5490, %5466
  %5492 = and i32 %5490, 31
  %5493 = shl i32 1, %5492
  %5494 = xor i32 %5493, %5489
  %5495 = mul i32 %5491, 72
  %5496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5495, i32 undef)  ; BufferLoad(srv,index,wot)
  %5497 = extractvalue %dx.types.ResRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.ResRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.ResRet.f32 %5496, 2
  %5500 = add i32 %5495, 12
  %5501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.i32 %5501, 0
  %5503 = add i32 %5495, 16
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.ResRet.f32 %5504, 2
  %5508 = add i32 %5495, 28
  %5509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = add i32 %5495, 32
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = extractvalue %dx.types.ResRet.f32 %5512, 3
  %5517 = add i32 %5495, 48
  %5518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5517, i32 undef)  ; BufferLoad(srv,index,wot)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = add i32 %5495, 56
  %5522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.ResRet.f32 %5522, 1
  %5525 = add i32 %5495, 64
  %5526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5525, i32 undef)  ; BufferLoad(srv,index,wot)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 1
  %5529 = mul i32 %5491, 60
  %5530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = add i32 %5529, 12
  %5535 = add i32 %5529, 48
  %5536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5535, i32 undef)  ; BufferLoad(srv,index,wot)
  %5537 = extractvalue %dx.types.ResRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.ResRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.ResRet.f32 %5536, 2
  %5540 = and i32 %5502, 32767
  %5541 = bitcast float %5497 to i32
  %5542 = icmp eq i32 %5541, -1
  %5543 = bitcast float %5498 to i32
  %5544 = and i32 %5502, 32768
  %5545 = icmp ne i32 %5544, 0
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5550 = fsub fast float %5531, %5547
  %5551 = fsub fast float %5532, %5548
  %5552 = fsub fast float %5533, %5549
  %5553 = fsub fast float %204, %5550
  %5554 = fsub fast float %205, %5551
  %5555 = fsub fast float %206, %5552
  %5556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.ResRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.ResRet.f32 %5556, 2
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = add i32 %5529, 24
  %5562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5561, i32 undef)  ; BufferLoad(srv,index,wot)
  %5563 = extractvalue %dx.types.ResRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.ResRet.f32 %5562, 1
  %5565 = extractvalue %dx.types.ResRet.f32 %5562, 2
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5563, float %5564, float %5565)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = add i32 %5529, 36
  %5568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5567, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5569, float %5570, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5560)  ; FAbs(value)
  %5574 = call float @dx.op.unary.f32(i32 6, float %5566)  ; FAbs(value)
  %5575 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5576 = fsub fast float %5537, %5573
  %5577 = fsub fast float %5538, %5574
  %5578 = fsub fast float %5539, %5575
  %5579 = fmul fast float %5576, %5505
  %5580 = fmul fast float %5577, %5506
  %5581 = fmul fast float %5578, %5507
  %5582 = call float @dx.op.binary.f32(i32 36, float %5580, float %5581)  ; FMin(a,b)
  %5583 = call float @dx.op.binary.f32(i32 36, float %5579, float %5582)  ; FMin(a,b)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = call float @dx.op.binary.f32(i32 36, float %5488, float %5584)  ; FMin(a,b)
  %5586 = uitofp i1 %5545 to float
  %5587 = fadd fast float %5403, 1.000000e+00
  %5588 = fsub fast float %5587, %5586
  %5589 = fmul fast float %5585, %5588
  %5590 = fcmp fast ogt float %5589, 0.000000e+00
  br i1 %5590, label %5597, label %5591

; <label>:5591                                    ; preds = %5739, %5484
  %5592 = phi float [ %5803, %5739 ], [ %5485, %5484 ]
  %5593 = phi float [ %5804, %5739 ], [ %5486, %5484 ]
  %5594 = phi float [ %5805, %5739 ], [ %5487, %5484 ]
  %5595 = phi float [ %5806, %5739 ], [ %5488, %5484 ]
  %5596 = icmp eq i32 %5489, %5493
  br i1 %5596, label %5807, label %5484

; <label>:5597                                    ; preds = %5484
  br i1 %5542, label %5655, label %5598

; <label>:5598                                    ; preds = %5597
  %5599 = fsub fast float -0.000000e+00, %5557
  %5600 = fsub fast float -0.000000e+00, %5558
  %5601 = fsub fast float -0.000000e+00, %5559
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = fsub fast float -0.000000e+00, %5602
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fadd fast float %5604, %5520
  %5606 = fadd fast float %5519, %5604
  %5607 = fsub fast float -0.000000e+00, %5606
  %5608 = fcmp ogt float %5602, -0.000000e+00
  %5609 = select i1 %5608, float %5607, float %5605
  %5610 = call float @dx.op.unary.f32(i32 6, float %5603)  ; FAbs(value)
  %5611 = fdiv fast float 1.000000e+00, %5610
  %5612 = fmul fast float %5609, %5611
  %5613 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5614 = fsub fast float -0.000000e+00, %5563
  %5615 = fsub fast float -0.000000e+00, %5564
  %5616 = fsub fast float -0.000000e+00, %5565
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fsub fast float -0.000000e+00, %5617
  %5619 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5620 = fadd fast float %5619, %5524
  %5621 = fadd fast float %5523, %5619
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = fcmp ogt float %5617, -0.000000e+00
  %5624 = select i1 %5623, float %5622, float %5620
  %5625 = call float @dx.op.unary.f32(i32 6, float %5618)  ; FAbs(value)
  %5626 = fdiv fast float 1.000000e+00, %5625
  %5627 = fmul fast float %5624, %5626
  %5628 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5629 = fsub fast float -0.000000e+00, %5569
  %5630 = fsub fast float -0.000000e+00, %5570
  %5631 = fsub fast float -0.000000e+00, %5571
  %5632 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5629, float %5630, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = fsub fast float -0.000000e+00, %5632
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5629, float %5630, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = fadd fast float %5634, %5528
  %5636 = fadd fast float %5527, %5634
  %5637 = fsub fast float -0.000000e+00, %5636
  %5638 = fcmp ogt float %5632, -0.000000e+00
  %5639 = select i1 %5638, float %5637, float %5635
  %5640 = call float @dx.op.unary.f32(i32 6, float %5633)  ; FAbs(value)
  %5641 = fdiv fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5639, %5641
  %5643 = call float @dx.op.binary.f32(i32 35, float %5642, float 0.000000e+00)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 36, float %5628, float %5643)  ; FMin(a,b)
  %5645 = call float @dx.op.binary.f32(i32 36, float %5613, float %5644)  ; FMin(a,b)
  %5646 = fmul fast float %5645, %5437
  %5647 = fmul fast float %5645, %5438
  %5648 = fmul fast float %5645, %5439
  %5649 = fadd fast float %5646, %204
  %5650 = fadd fast float %5647, %205
  %5651 = fadd fast float %5648, %206
  %5652 = fsub fast float %5649, %5497
  %5653 = fsub fast float %5650, %5498
  %5654 = fsub fast float %5651, %5499
  br label %5662

; <label>:5655                                    ; preds = %5597
  %5656 = fmul fast float %5437, 8.096000e+03
  %5657 = fmul fast float %5438, 8.096000e+03
  %5658 = fmul fast float %5439, 8.096000e+03
  %5659 = fadd fast float %5656, %204
  %5660 = fadd fast float %5657, %205
  %5661 = fadd fast float %5658, %206
  br label %5662

; <label>:5662                                    ; preds = %5655, %5598
  %5663 = phi float [ %5437, %5655 ], [ %5652, %5598 ]
  %5664 = phi float [ %5438, %5655 ], [ %5653, %5598 ]
  %5665 = phi float [ %5439, %5655 ], [ %5654, %5598 ]
  %5666 = phi float [ %5659, %5655 ], [ %5649, %5598 ]
  %5667 = phi float [ %5660, %5655 ], [ %5650, %5598 ]
  %5668 = phi float [ %5661, %5655 ], [ %5651, %5598 ]
  %5669 = fcmp fast olt float %5516, 1.000000e+00
  br i1 %5669, label %5670, label %5701, !dx.controlflow.hints !102

; <label>:5670                                    ; preds = %5662
  %5671 = fmul fast float %5665, %5514
  %5672 = fmul fast float %5664, %5515
  %5673 = fsub fast float %5671, %5672
  %5674 = fmul fast float %5663, %5515
  %5675 = fmul fast float %5665, %5513
  %5676 = fsub fast float %5674, %5675
  %5677 = fmul fast float %5664, %5513
  %5678 = fmul fast float %5663, %5514
  %5679 = fsub fast float %5677, %5678
  %5680 = fmul fast float %5673, 2.000000e+00
  %5681 = fmul fast float %5676, 2.000000e+00
  %5682 = fmul fast float %5679, 2.000000e+00
  %5683 = fmul fast float %5680, %5516
  %5684 = fmul fast float %5681, %5516
  %5685 = fmul fast float %5682, %5516
  %5686 = fmul fast float %5682, %5514
  %5687 = fmul fast float %5681, %5515
  %5688 = fmul fast float %5680, %5515
  %5689 = fmul fast float %5682, %5513
  %5690 = fmul fast float %5681, %5513
  %5691 = fmul fast float %5680, %5514
  %5692 = fadd fast float %5686, %5663
  %5693 = fadd fast float %5692, %5683
  %5694 = fsub fast float %5693, %5687
  %5695 = fsub fast float %5664, %5689
  %5696 = fadd fast float %5695, %5684
  %5697 = fadd fast float %5696, %5688
  %5698 = fadd fast float %5685, %5665
  %5699 = fsub fast float %5698, %5691
  %5700 = fadd fast float %5699, %5690
  br label %5701

; <label>:5701                                    ; preds = %5670, %5662
  %5702 = phi float [ %5694, %5670 ], [ %5663, %5662 ]
  %5703 = phi float [ %5697, %5670 ], [ %5664, %5662 ]
  %5704 = phi float [ %5700, %5670 ], [ %5665, %5662 ]
  br i1 %5542, label %5736, label %5705

; <label>:5705                                    ; preds = %5701
  %5706 = fmul fast float %5041, 0x400187C840000000
  %5707 = fadd fast float %5706, 0xC00EFC2120000000
  %5708 = fmul fast float %5707, %5041
  %5709 = fadd fast float %5708, 0x3FE5D16340000000
  %5710 = fmul fast float %5709, %5041
  %5711 = fadd fast float %5710, 1.000000e+00
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fsub fast float %5666, %204
  %5714 = fsub fast float %5667, %205
  %5715 = fsub fast float %5668, %206
  %5716 = fsub fast float %5666, %5497
  %5717 = fsub fast float %5667, %5498
  %5718 = fsub fast float %5668, %5499
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fadd fast float %5720, 0x3EE4F8B580000000
  %5722 = fdiv fast float %5719, %5721
  %5723 = bitcast float %5722 to i32
  %5724 = ashr i32 %5723, 1
  %5725 = add nsw i32 %5724, 532487669
  %5726 = bitcast i32 %5725 to float
  %5727 = fmul fast float %5726, %5712
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = fmul fast float %5728, 0x4009981AE0000000
  %5730 = fsub fast float 0x40111BBD80000000, %5729
  %5731 = fmul fast float %5730, %5728
  %5732 = fadd fast float %5731, 0xC0009F6020000000
  %5733 = fmul fast float %5732, %5728
  %5734 = fadd fast float %5733, 1.000000e+00
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  br label %5739

; <label>:5736                                    ; preds = %5701
  %5737 = icmp ne i32 %5543, -1
  %5738 = zext i1 %5737 to i32
  br label %5739

; <label>:5739                                    ; preds = %5736, %5705
  %5740 = phi float [ %5041, %5736 ], [ %5735, %5705 ]
  %5741 = phi i32 [ %5738, %5736 ], [ 0, %5705 ]
  %5742 = fmul float %5740, 5.000000e+00
  %5743 = fsub float 5.000000e+00, %5742
  %5744 = icmp ne i32 %5741, 0
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5747 = fadd fast float %5746, %5743
  %5748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5747)  ; FMax(a,b)
  %5749 = call float @dx.op.unary.f32(i32 6, float %5702)  ; FAbs(value)
  %5750 = call float @dx.op.unary.f32(i32 6, float %5703)  ; FAbs(value)
  %5751 = fadd fast float %5750, %5749
  %5752 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5753 = fadd fast float %5751, %5752
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fdiv fast float 1.000000e+00, %5753
  %5756 = select i1 %5754, float 1.000000e+00, float %5755
  %5757 = fmul fast float %5756, %5702
  %5758 = fmul fast float %5756, %5703
  %5759 = call float @dx.op.unary.f32(i32 6, float %5758)  ; FAbs(value)
  %5760 = call float @dx.op.unary.f32(i32 6, float %5757)  ; FAbs(value)
  %5761 = fsub fast float 1.000000e+00, %5759
  %5762 = fsub fast float 1.000000e+00, %5760
  %5763 = fcmp fast oge float %5757, 0.000000e+00
  %5764 = fcmp fast oge float %5758, 0.000000e+00
  %5765 = select i1 %5763, float 1.000000e+00, float -1.000000e+00
  %5766 = select i1 %5764, float 1.000000e+00, float -1.000000e+00
  %5767 = fcmp fast ole float %5704, 0.000000e+00
  %5768 = fmul fast float %5765, %5761
  %5769 = fmul fast float %5766, %5762
  %5770 = select i1 %5767, float %5768, float %5757
  %5771 = select i1 %5767, float %5769, float %5758
  %5772 = fmul fast float %5770, 5.000000e-01
  %5773 = fmul fast float %5771, 5.000000e-01
  %5774 = fadd fast float %5772, 5.000000e-01
  %5775 = fadd fast float %5773, 5.000000e-01
  %5776 = uitofp i32 %5540 to float
  %5777 = call float @dx.op.binary.f32(i32 36, float %5748, float 3.000000e+00)  ; FMin(a,b)
  %5778 = fadd fast float %5777, 2.000000e+00
  %5779 = call float @dx.op.unary.f32(i32 21, float %5778)  ; Exp(value)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5781 = fmul fast float %5780, %5779
  %5782 = fmul fast float %5781, 2.000000e+00
  %5783 = fsub fast float 1.000000e+00, %5782
  %5784 = fmul fast float %5774, %5783
  %5785 = fmul fast float %5775, %5783
  %5786 = fadd fast float %5784, %5781
  %5787 = fadd fast float %5785, %5781
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5786, float %5787, float %5776, float undef, i32 0, i32 0, i32 undef, float %5748)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5794 = fmul fast float %5793, %5510
  %5795 = call float @dx.op.binary.f32(i32 36, float %5072, float %5794)  ; FMin(a,b)
  %5796 = select i1 %5744, float %5795, float %5794
  %5797 = fmul fast float %5789, %5589
  %5798 = fmul fast float %5797, %5796
  %5799 = fmul fast float %5790, %5589
  %5800 = fmul fast float %5799, %5796
  %5801 = fmul fast float %5791, %5589
  %5802 = fmul fast float %5801, %5796
  %5803 = fadd fast float %5798, %5485
  %5804 = fadd fast float %5800, %5486
  %5805 = fadd fast float %5802, %5487
  %5806 = fsub fast float %5488, %5589
  br label %5591

; <label>:5807                                    ; preds = %5591
  br label %5808

; <label>:5808                                    ; preds = %5807, %5454
  %5809 = phi float [ %5455, %5454 ], [ %5592, %5807 ]
  %5810 = phi float [ %5456, %5454 ], [ %5593, %5807 ]
  %5811 = phi float [ %5457, %5454 ], [ %5594, %5807 ]
  %5812 = phi float [ %5458, %5454 ], [ %5595, %5807 ]
  %5813 = add i32 %5459, 1
  %5814 = icmp ugt i32 %5813, %5451
  br i1 %5814, label %5815, label %5454, !llvm.loop !103

; <label>:5815                                    ; preds = %5808
  br label %5816

; <label>:5816                                    ; preds = %5815, %5436
  %5817 = phi float [ 0.000000e+00, %5436 ], [ %5809, %5815 ]
  %5818 = phi float [ 0.000000e+00, %5436 ], [ %5810, %5815 ]
  %5819 = phi float [ 0.000000e+00, %5436 ], [ %5811, %5815 ]
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5818, float %5819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = select i1 %263, float 0.000000e+00, float %5817
  %5822 = select i1 %263, float %5820, float %5818
  %5823 = select i1 %263, float 0.000000e+00, float %5819
  %5824 = fcmp fast olt float %5362, 0.000000e+00
  %5825 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5826 = fmul fast float %5825, %5302
  %5827 = fmul fast float %5825, %5303
  %5828 = fmul fast float %5825, %5304
  %5829 = select i1 %5824, float %5302, float %5826
  %5830 = select i1 %5824, float %5303, float %5827
  %5831 = select i1 %5824, float %5304, float %5828
  %5832 = fsub fast float 1.000000e+00, %5825
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = fmul fast float %5833, %5821
  %5835 = fmul fast float %5833, %5822
  %5836 = fmul fast float %5833, %5823
  %5837 = fadd fast float %5829, %5834
  %5838 = fadd fast float %5830, %5835
  %5839 = fadd fast float %5831, %5836
  br label %5840

; <label>:5840                                    ; preds = %5816, %5345
  %5841 = phi float [ %5302, %5345 ], [ %5837, %5816 ]
  %5842 = phi float [ %5303, %5345 ], [ %5838, %5816 ]
  %5843 = phi float [ %5304, %5345 ], [ %5839, %5816 ]
  %5844 = fmul fast float %5351, %5298
  %5845 = fmul fast float %5351, %5299
  %5846 = fmul fast float %5351, %5300
  %5847 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fcmp fast ogt float %5847, 0x3E7FF19E20000000
  %5849 = fdiv fast float 1.000000e+00, %5847
  %5850 = select i1 %5848, float %5849, float 0.000000e+00
  %5851 = fmul fast float %5850, %5032
  %5852 = fmul fast float %5850, %5033
  %5853 = fmul fast float %5850, %5034
  %5854 = fadd fast float %5851, -1.000000e+00
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fadd fast float %5853, -1.000000e+00
  %5857 = fmul fast float %5854, 5.000000e-01
  %5858 = fmul fast float %5855, 5.000000e-01
  %5859 = fmul fast float %5856, 5.000000e-01
  %5860 = fadd fast float %5857, 1.000000e+00
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fmul fast float %5841, %5346
  %5864 = fmul fast float %5842, %5347
  %5865 = fmul fast float %5843, %5348
  %5866 = fsub fast float 1.000000e+00, %5046
  %5867 = bitcast float %5866 to i32
  %5868 = sitofp i32 %5867 to float
  %5869 = fmul fast float %5868, 5.000000e+00
  %5870 = fadd fast float %5869, 0xC1EFBF8940000000
  %5871 = fptosi float %5870 to i32
  %5872 = bitcast i32 %5871 to float
  %5873 = fmul fast float %5872, %3839
  %5874 = fmul fast float %5298, %5873
  %5875 = fmul fast float %5874, %5351
  %5876 = fmul fast float %5875, %5860
  %5877 = fmul fast float %5299, %5873
  %5878 = fmul fast float %5877, %5351
  %5879 = fmul fast float %5878, %5861
  %5880 = fmul fast float %5300, %5873
  %5881 = fmul fast float %5880, %5351
  %5882 = fmul fast float %5881, %5862
  %5883 = fmul fast float %5844, %3835
  %5884 = fmul fast float %5845, %3835
  %5885 = fmul fast float %5846, %3835
  %5886 = fadd fast float %5863, %3831
  %5887 = fadd fast float %5886, %5876
  %5888 = fmul fast float %5887, %3835
  %5889 = fadd fast float %5864, %3832
  %5890 = fadd fast float %5889, %5879
  %5891 = fmul fast float %5890, %3835
  %5892 = fadd fast float %5865, %3833
  %5893 = fadd fast float %5892, %5882
  %5894 = fmul fast float %5893, %3835
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 3
  %5897 = fcmp fast oeq float %5896, 0.000000e+00
  br i1 %5897, label %7602, label %5898

; <label>:5898                                    ; preds = %5840
  %5899 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5900 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5901 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = select i1 %263, float %5907, float %5903
  %5911 = select i1 %263, float %5909, float %5904
  %5912 = select i1 %263, float %5908, float %5905
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5915 = fmul fast float %5914, %130
  %5916 = fmul fast float %5914, %132
  %5917 = fmul fast float %5914, %134
  %5918 = fadd fast float %5915, %204
  %5919 = fadd fast float %5916, %205
  %5920 = fadd fast float %5917, %206
  %5921 = fcmp fast olt float %5896, 0.000000e+00
  br i1 %5921, label %7179, label %5922

; <label>:5922                                    ; preds = %5898
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5927 = extractvalue %dx.types.CBufRet.f32 %5923, 3
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5932 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = fmul fast float %5924, %5918
  %5939 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %5925, float %5938)  ; FMad(a,b,c)
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %5926, float %5939)  ; FMad(a,b,c)
  %5941 = fadd fast float %5940, %5927
  %5942 = fmul fast float %5929, %5918
  %5943 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %5930, float %5942)  ; FMad(a,b,c)
  %5944 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %5931, float %5943)  ; FMad(a,b,c)
  %5945 = fadd fast float %5944, %5932
  %5946 = fmul fast float %5934, %5918
  %5947 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %5935, float %5946)  ; FMad(a,b,c)
  %5948 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %5936, float %5947)  ; FMad(a,b,c)
  %5949 = fadd fast float %5948, %5937
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = fcmp fast une float %5951, 0.000000e+00
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5957 = fmul fast float %5956, %5941
  %5958 = fmul fast float %5956, %5945
  %5959 = fadd fast float %5957, %5954
  %5960 = fadd fast float %5958, %5955
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5965 = fmul fast float %5964, %5941
  %5966 = fmul fast float %5964, %5945
  %5967 = fadd fast float %5965, %5962
  %5968 = fadd fast float %5966, %5963
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5971 = fsub fast float %5970, %5949
  %5972 = extractvalue %dx.types.CBufRet.f32 %5969, 2
  %5973 = fmul fast float %5971, %5972
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  br i1 %5952, label %6036, label %5976

; <label>:5976                                    ; preds = %5922
  %5977 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5980 = fadd fast float %5979, %5977
  %5981 = fcmp fast ogt float %5980, 0.000000e+00
  br i1 %5981, label %5982, label %6006

; <label>:5982                                    ; preds = %5976
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = fsub fast float %5967, %5984
  %5987 = fsub fast float %5968, %5985
  %5988 = fcmp fast olt float %5986, 0.000000e+00
  %5989 = fcmp fast olt float %5987, 0.000000e+00
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = select i1 %5988, float %5991, float %5993
  %5996 = select i1 %5989, float %5992, float %5994
  %5997 = fmul fast float %5995, %5986
  %5998 = fmul fast float %5996, %5987
  %5999 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %6000 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6001 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %6002 = call float @dx.op.binary.f32(i32 35, float %5999, float %6000)  ; FMax(a,b)
  %6003 = fsub fast float %6001, %6002
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = fmul fast float %6004, %5975
  br label %6006

; <label>:6006                                    ; preds = %5982, %5976
  %6007 = phi float [ %6005, %5982 ], [ 0.000000e+00, %5976 ]
  %6008 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %6009 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %6010 = fadd fast float %6009, %6008
  %6011 = fcmp fast ogt float %6010, 0.000000e+00
  br i1 %6011, label %6012, label %6036

; <label>:6012                                    ; preds = %6006
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.CBufRet.f32 %6013, 1
  %6016 = fsub fast float %5959, %6014
  %6017 = fsub fast float %5960, %6015
  %6018 = fcmp fast olt float %6016, 0.000000e+00
  %6019 = fcmp fast olt float %6017, 0.000000e+00
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.CBufRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6020, 3
  %6025 = select i1 %6018, float %6021, float %6023
  %6026 = select i1 %6019, float %6022, float %6024
  %6027 = fmul fast float %6025, %6016
  %6028 = fmul fast float %6026, %6017
  %6029 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6030 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6031 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %6032 = call float @dx.op.binary.f32(i32 35, float %6029, float %6030)  ; FMax(a,b)
  %6033 = fsub fast float %6031, %6032
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = fmul fast float %6034, %5975
  br label %6036

; <label>:6036                                    ; preds = %6012, %6006, %5922
  %6037 = phi float [ 0.000000e+00, %5922 ], [ %6035, %6012 ], [ 0.000000e+00, %6006 ]
  %6038 = phi float [ 0.000000e+00, %5922 ], [ %6007, %6012 ], [ %6007, %6006 ]
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = fsub fast float %5941, %6043
  %6046 = fsub fast float %5945, %6044
  %6047 = fcmp fast olt float %6045, 0.000000e+00
  %6048 = fcmp fast olt float %6046, 0.000000e+00
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6053 = extractvalue %dx.types.CBufRet.f32 %6049, 3
  %6054 = select i1 %6047, float %6050, float %6052
  %6055 = select i1 %6048, float %6051, float %6053
  %6056 = fmul fast float %6054, %6045
  %6057 = fmul fast float %6055, %6046
  %6058 = call float @dx.op.unary.f32(i32 6, float %6056)  ; FAbs(value)
  %6059 = call float @dx.op.unary.f32(i32 6, float %6057)  ; FAbs(value)
  %6060 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %6061 = call float @dx.op.binary.f32(i32 35, float %6058, float %6059)  ; FMax(a,b)
  %6062 = fsub fast float %6060, %6061
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = call float @dx.op.binary.f32(i32 36, float %6063, float %6041)  ; FMin(a,b)
  %6065 = fmul fast float %6064, %5975
  %6066 = fsub fast float %6037, %6065
  %6067 = fsub fast float %6038, %6037
  %6068 = fsub fast float %6067, %6065
  %6069 = call float @dx.op.binary.f32(i32 35, float %6037, float %6038)  ; FMax(a,b)
  %6070 = call float @dx.op.binary.f32(i32 35, float %6065, float %6069)  ; FMax(a,b)
  %6071 = fcmp fast olt float %6070, 1.000000e+00
  br i1 %6071, label %6072, label %6470, !dx.controlflow.hints !105

; <label>:6072                                    ; preds = %6036
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 0
  %6075 = fcmp fast une float %6074, 0.000000e+00
  br i1 %6075, label %6076, label %6470, !dx.controlflow.hints !106

; <label>:6076                                    ; preds = %6072
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6081 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6092 = fmul fast float %6078, %5918
  %6093 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %6079, float %6092)  ; FMad(a,b,c)
  %6094 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %6080, float %6093)  ; FMad(a,b,c)
  %6095 = fadd fast float %6094, %6081
  %6096 = fmul fast float %6083, %5918
  %6097 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %6084, float %6096)  ; FMad(a,b,c)
  %6098 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %6085, float %6097)  ; FMad(a,b,c)
  %6099 = fadd fast float %6098, %6086
  %6100 = fmul fast float %6088, %5918
  %6101 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %6089, float %6100)  ; FMad(a,b,c)
  %6102 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %6090, float %6101)  ; FMad(a,b,c)
  %6103 = fadd fast float %6102, %6091
  %6104 = fcmp fast oge float %6095, 1.000000e+00
  %6105 = fcmp fast oge float %6099, 1.000000e+00
  %6106 = or i1 %6104, %6105
  %6107 = fcmp fast olt float %6095, 0.000000e+00
  %6108 = fcmp fast olt float %6099, 0.000000e+00
  %6109 = or i1 %6107, %6108
  %6110 = or i1 %6106, %6109
  br i1 %6110, label %6470, label %6111, !dx.controlflow.hints !107

; <label>:6111                                    ; preds = %6076
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.i32 %6116, 2
  %6118 = uitofp i32 %6117 to float
  %6119 = extractvalue %dx.types.CBufRet.i32 %6116, 3
  %6120 = uitofp i32 %6119 to float
  %6121 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6122 = fmul fast float %6121, 2.000000e+00
  %6123 = fsub fast float %6095, %6113
  %6124 = fsub fast float %6099, %6114
  %6125 = fmul fast float %6122, %6123
  %6126 = fmul fast float %6122, %6124
  %6127 = fdiv fast float 1.000000e+00, %5901
  %6128 = fmul fast float %6126, %6127
  %6129 = call float @dx.op.unary.f32(i32 6, float %6128)  ; FAbs(value)
  %6130 = fmul fast float %6115, %5920
  %6131 = fmul fast float %6130, %6122
  %6132 = call float @dx.op.unary.f32(i32 6, float %6131)  ; FAbs(value)
  %6133 = call float @dx.op.unary.f32(i32 6, float %6125)  ; FAbs(value)
  %6134 = call float @dx.op.binary.f32(i32 35, float %6132, float %6129)  ; FMax(a,b)
  %6135 = call float @dx.op.binary.f32(i32 35, float %6133, float %6134)  ; FMax(a,b)
  %6136 = fmul fast float %6135, 2.000000e+00
  %6137 = call float @dx.op.unary.f32(i32 23, float %6136)  ; Log(value)
  %6138 = call float @dx.op.binary.f32(i32 35, float %6137, float %6118)  ; FMax(a,b)
  %6139 = call float @dx.op.unary.f32(i32 22, float %6138)  ; Frc(value)
  %6140 = fadd fast float %6139, 0xBFEA666660000000
  %6141 = fmul fast float %6140, 8.000000e+00
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = call float @dx.op.unary.f32(i32 27, float %6138)  ; Round_ni(value)
  %6144 = fadd fast float %6143, %6142
  %6145 = call float @dx.op.binary.f32(i32 36, float %6144, float %6120)  ; FMin(a,b)
  %6146 = call float @dx.op.unary.f32(i32 27, float %6145)  ; Round_ni(value)
  %6147 = fsub fast float -0.000000e+00, %6146
  %6148 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6149 = fmul fast float %6148, %6122
  %6150 = fmul fast float %6149, %6095
  %6151 = fmul fast float %6149, %6099
  %6152 = fmul fast float %6150, 2.500000e-01
  %6153 = fmul fast float %6151, 2.500000e-01
  %6154 = fadd fast float %6152, 5.000000e-01
  %6155 = fadd fast float %6153, 5.000000e-01
  %6156 = fsub fast float %6120, %6118
  %6157 = fptoui float %6156 to i32
  %6158 = add i32 %6157, 320
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6158)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = fcmp fast une float %6145, %6120
  %6163 = fsub fast float %6095, %6160
  %6164 = fsub fast float %6099, %6161
  %6165 = call float @dx.op.unary.f32(i32 6, float %6163)  ; FAbs(value)
  %6166 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6167 = fmul fast float %6165, %6149
  %6168 = fmul fast float %6166, %6149
  %6169 = fcmp fast olt float %6167, 1.000000e+00
  %6170 = fcmp fast olt float %6168, 1.000000e+00
  %6171 = and i1 %6169, %6170
  %6172 = or i1 %6162, %6171
  br i1 %6172, label %6173, label %6470, !dx.controlflow.hints !108

; <label>:6173                                    ; preds = %6111
  %6174 = fmul fast float %6151, 5.000000e-01
  %6175 = fmul fast float %6150, 5.000000e-01
  %6176 = fadd fast float %6174, 5.000000e-01
  %6177 = fadd fast float %6175, 5.000000e-01
  %6178 = sitofp i32 %6117 to float
  %6179 = fsub fast float %6145, %6178
  %6180 = call float @dx.op.unary.f32(i32 27, float %6179)  ; Round_ni(value)
  %6181 = call float @dx.op.unary.f32(i32 22, float %6145)  ; Frc(value)
  %6182 = call float @dx.op.unary.f32(i32 22, float %6177)  ; Frc(value)
  %6183 = call float @dx.op.unary.f32(i32 22, float %6176)  ; Frc(value)
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6182, float %6183, float %6180, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = extractvalue %dx.types.ResRet.f32 %6184, 3
  %6189 = fcmp fast ogt float %6181, 0.000000e+00
  br i1 %6189, label %6190, label %6211, !dx.controlflow.hints !109

; <label>:6190                                    ; preds = %6173
  %6191 = fadd fast float %6180, 1.000000e+00
  %6192 = call float @dx.op.unary.f32(i32 22, float %6154)  ; Frc(value)
  %6193 = call float @dx.op.unary.f32(i32 22, float %6155)  ; Frc(value)
  %6194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6192, float %6193, float %6191, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.ResRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.ResRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.ResRet.f32 %6194, 3
  %6199 = fsub fast float %6195, %6185
  %6200 = fsub fast float %6196, %6186
  %6201 = fsub fast float %6197, %6187
  %6202 = fsub fast float %6198, %6188
  %6203 = fmul fast float %6199, %6181
  %6204 = fmul fast float %6200, %6181
  %6205 = fmul fast float %6201, %6181
  %6206 = fmul fast float %6202, %6181
  %6207 = fadd fast float %6203, %6185
  %6208 = fadd fast float %6204, %6186
  %6209 = fadd fast float %6205, %6187
  %6210 = fadd fast float %6206, %6188
  br label %6211

; <label>:6211                                    ; preds = %6190, %6173
  %6212 = phi float [ %6207, %6190 ], [ %6185, %6173 ]
  %6213 = phi float [ %6208, %6190 ], [ %6186, %6173 ]
  %6214 = phi float [ %6209, %6190 ], [ %6187, %6173 ]
  %6215 = phi float [ %6210, %6190 ], [ %6188, %6173 ]
  %6216 = fadd fast float %6212, -5.000000e-01
  %6217 = fadd fast float %6214, -5.000000e-01
  %6218 = fmul fast float %6216, 0xBFD5555560000000
  %6219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6217, float %6218)  ; FMad(a,b,c)
  %6220 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6213, float 0.000000e+00)  ; FMad(a,b,c)
  %6221 = fadd fast float %6220, %6215
  %6222 = fmul fast float %6216, -7.500000e-01
  %6223 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6217, float %6222)  ; FMad(a,b,c)
  %6224 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6213, float 0.000000e+00)  ; FMad(a,b,c)
  %6225 = fadd fast float %6224, %6215
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = fsub fast float %6229, %6219
  %6234 = fsub fast float %6230, %6221
  %6235 = fsub fast float %6231, %6223
  %6236 = fsub fast float %6232, %6225
  %6237 = fmul fast float %6233, %6227
  %6238 = fmul fast float %6234, %6227
  %6239 = fmul fast float %6235, %6227
  %6240 = fmul fast float %6236, %6227
  %6241 = fadd fast float %6237, %6219
  %6242 = fadd fast float %6238, %6221
  %6243 = fadd fast float %6239, %6223
  %6244 = fadd fast float %6240, %6225
  %6245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.i32 %6245, 0
  %6247 = and i32 %6246, 536870911
  %6248 = uitofp i32 %6247 to float
  %6249 = fmul fast float %6248, %6095
  %6250 = fmul fast float %6248, %6099
  %6251 = fptoui float %6249 to i32
  %6252 = fptoui float %6250 to i32
  %6253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.i32 %6253, 0
  %6255 = and i32 %6254, 31
  %6256 = lshr i32 %6251, %6255
  %6257 = lshr i32 %6252, %6255
  %6258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.i32 %6258, 0
  %6260 = and i32 %6259, 31
  %6261 = shl i32 1, %6260
  %6262 = call i32 @dx.op.binary.i32(i32 40, i32 %6261, i32 4)  ; UMin(a,b)
  %6263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.i32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.i32 %6263, 1
  %6266 = icmp eq i32 %6262, 0
  br i1 %6266, label %6308, label %6267

; <label>:6267                                    ; preds = %6211
  br label %6268

; <label>:6268                                    ; preds = %6296, %6267
  %6269 = phi i32 [ %6299, %6296 ], [ 0, %6267 ]
  %6270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6271 = extractvalue %dx.types.ResRet.i32 %6270, 0
  %6272 = lshr i32 %6271, 16
  %6273 = and i32 %6272, 31
  %6274 = shl i32 %6257, %6273
  %6275 = add i32 %6274, %6256
  %6276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.i32 %6276, 0
  %6278 = and i32 %6277, 31
  %6279 = shl i32 %6275, %6278
  %6280 = add i32 %6279, %6269
  %6281 = shl i32 %6280, 2
  %6282 = add i32 %6281, 32
  %6283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6282, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.i32 %6283, 0
  %6285 = icmp slt i32 %6284, 0
  %6286 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6269
  %6287 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6269
  %6288 = bitcast float* %6286 to i32*
  %6289 = bitcast float* %6287 to i32*
  br i1 %6285, label %6290, label %6296

; <label>:6290                                    ; preds = %6268
  %6291 = and i32 %6284, 1073741823
  %6292 = add nuw nsw i32 %6291, 20
  %6293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6292, i32 undef)  ; BufferLoad(srv,index,wot)
  %6294 = extractvalue %dx.types.ResRet.i32 %6293, 0
  %6295 = extractvalue %dx.types.ResRet.i32 %6293, 1
  br label %6296

; <label>:6296                                    ; preds = %6290, %6268
  %6297 = phi i32 [ %6294, %6290 ], [ %6264, %6268 ]
  %6298 = phi i32 [ %6295, %6290 ], [ %6265, %6268 ]
  store i32 %6297, i32* %6288, align 4
  store i32 %6298, i32* %6289, align 4
  %6299 = add nuw i32 %6269, 1
  %6300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.i32 %6300, 2
  %6302 = icmp eq i32 %6301, 0
  %6303 = icmp ugt i32 %6284, -1073741825
  %6304 = and i1 %6303, %6302
  %6305 = icmp ult i32 %6299, %6262
  %6306 = and i1 %6304, %6305
  br i1 %6306, label %6268, label %6307

; <label>:6307                                    ; preds = %6296
  br label %6308

; <label>:6308                                    ; preds = %6307, %6211
  %6309 = phi i32 [ 0, %6211 ], [ %6299, %6307 ]
  %6310 = extractvalue %dx.types.CBufRet.f32 %6073, 2
  %6311 = fptoui float %6310 to i32
  %6312 = icmp eq i32 %6311, 0
  br i1 %6312, label %6364, label %6313

; <label>:6313                                    ; preds = %6308
  br label %6314

; <label>:6314                                    ; preds = %6359, %6313
  %6315 = phi i32 [ %6360, %6359 ], [ %6309, %6313 ]
  %6316 = phi i32 [ %6361, %6359 ], [ 0, %6313 ]
  %6317 = lshr i32 %6316, 2
  %6318 = and i32 %6316, 3
  %6319 = add nuw nsw i32 %6317, 83
  %6320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6319)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.i32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.i32 %6320, 1
  %6323 = extractvalue %dx.types.CBufRet.i32 %6320, 2
  %6324 = extractvalue %dx.types.CBufRet.i32 %6320, 3
  %6325 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6321, i32* %6325, align 4
  %6326 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6322, i32* %6326, align 4
  %6327 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6323, i32* %6327, align 4
  %6328 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6324, i32* %6328, align 4
  %6329 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6318
  %6330 = load i32, i32* %6329, align 4, !tbaa !110, !noalias !114
  %6331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6332 = extractvalue %dx.types.ResRet.i32 %6331, 0
  %6333 = lshr i32 %6332, 16
  %6334 = and i32 %6333, 31
  %6335 = shl i32 %6257, %6334
  %6336 = add i32 %6335, %6256
  %6337 = shl i32 %6336, 2
  %6338 = add i32 %6337, %6330
  %6339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6338, i32 undef)  ; BufferLoad(srv,index,wot)
  %6340 = extractvalue %dx.types.ResRet.i32 %6339, 0
  %6341 = icmp eq i32 %6340, 0
  br i1 %6341, label %6359, label %6342

; <label>:6342                                    ; preds = %6314
  %6343 = icmp slt i32 %6340, 0
  %6344 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6315
  %6345 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6315
  %6346 = bitcast float* %6344 to i32*
  %6347 = bitcast float* %6345 to i32*
  br i1 %6343, label %6348, label %6355

; <label>:6348                                    ; preds = %6342
  %6349 = and i32 %6340, 1073741823
  %6350 = add i32 %6330, 20
  %6351 = add i32 %6350, %6349
  %6352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6351, i32 undef)  ; BufferLoad(srv,index,wot)
  %6353 = extractvalue %dx.types.ResRet.i32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.i32 %6352, 1
  br label %6355

; <label>:6355                                    ; preds = %6348, %6342
  %6356 = phi i32 [ %6353, %6348 ], [ %6264, %6342 ]
  %6357 = phi i32 [ %6354, %6348 ], [ %6265, %6342 ]
  store i32 %6356, i32* %6346, align 4
  store i32 %6357, i32* %6347, align 4
  %6358 = add i32 %6315, 1
  br label %6359

; <label>:6359                                    ; preds = %6355, %6314
  %6360 = phi i32 [ %6315, %6314 ], [ %6358, %6355 ]
  %6361 = add nuw i32 %6316, 1
  %6362 = icmp eq i32 %6361, %6311
  br i1 %6362, label %6363, label %6314

; <label>:6363                                    ; preds = %6359
  br label %6364

; <label>:6364                                    ; preds = %6363, %6308
  %6365 = phi i32 [ %6309, %6308 ], [ %6360, %6363 ]
  %6366 = icmp eq i32 %6365, 1
  %6367 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  %6368 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 0
  br i1 %6366, label %6369, label %6372

; <label>:6369                                    ; preds = %6364
  %6370 = load float, float* %6367, align 4
  %6371 = load float, float* %6368, align 4
  br label %6399

; <label>:6372                                    ; preds = %6364
  %6373 = load float, float* %6367, align 4
  %6374 = load float, float* %6368, align 4
  %6375 = fdiv fast float 1.000000e+00, %6374
  %6376 = fsub fast float %6373, %6375
  %6377 = icmp ugt i32 %6365, 1
  br i1 %6377, label %6378, label %6394

; <label>:6378                                    ; preds = %6372
  br label %6379

; <label>:6379                                    ; preds = %6379, %6378
  %6380 = phi float [ %6389, %6379 ], [ %6376, %6378 ]
  %6381 = phi float [ %6390, %6379 ], [ %6373, %6378 ]
  %6382 = phi i32 [ %6391, %6379 ], [ 1, %6378 ]
  %6383 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6382
  %6384 = load float, float* %6383, align 4
  %6385 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6382
  %6386 = load float, float* %6385, align 4
  %6387 = fdiv fast float 1.000000e+00, %6386
  %6388 = fsub fast float %6384, %6387
  %6389 = call float @dx.op.binary.f32(i32 36, float %6380, float %6388)  ; FMin(a,b)
  %6390 = call float @dx.op.binary.f32(i32 35, float %6381, float %6384)  ; FMax(a,b)
  %6391 = add nuw i32 %6382, 1
  %6392 = icmp eq i32 %6391, %6365
  br i1 %6392, label %6393, label %6379

; <label>:6393                                    ; preds = %6379
  br label %6394

; <label>:6394                                    ; preds = %6393, %6372
  %6395 = phi float [ %6376, %6372 ], [ %6389, %6393 ]
  %6396 = phi float [ %6373, %6372 ], [ %6390, %6393 ]
  %6397 = fsub fast float %6396, %6395
  %6398 = fdiv fast float 1.000000e+00, %6397
  br label %6399

; <label>:6399                                    ; preds = %6394, %6369
  %6400 = phi float [ %6370, %6369 ], [ %6396, %6394 ]
  %6401 = phi float [ %6371, %6369 ], [ %6398, %6394 ]
  %6402 = fadd fast float %6103, %6400
  %6403 = fmul fast float %6402, %6401
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = fmul fast float %6404, 2.000000e+00
  %6406 = fsub fast float 1.000000e+00, %6405
  %6407 = fmul fast float %6241, %6241
  %6408 = fsub fast float %6242, %6407
  %6409 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6408)  ; FMax(a,b)
  %6410 = fdiv fast float 1.000000e+00, %6409
  %6411 = fmul fast float %6242, %6241
  %6412 = fsub fast float %6243, %6411
  %6413 = fsub fast float %6406, %6241
  %6414 = fmul fast float %6406, %6406
  %6415 = fsub fast float %6414, %6242
  %6416 = fmul fast float %6410, %6412
  %6417 = fmul fast float %6416, %6413
  %6418 = fsub fast float %6415, %6417
  %6419 = fmul fast float %6242, %6242
  %6420 = fsub fast float %6244, %6419
  %6421 = fmul fast float %6412, %6412
  %6422 = fmul fast float %6421, %6410
  %6423 = fsub fast float %6420, %6422
  %6424 = fdiv fast float %6418, %6423
  %6425 = fmul fast float %6424, %6412
  %6426 = fsub fast float %6413, %6425
  %6427 = fmul fast float %6426, %6410
  %6428 = fmul fast float %6427, %6241
  %6429 = fsub fast float 1.000000e+00, %6428
  %6430 = fmul fast float %6424, %6242
  %6431 = fsub fast float %6429, %6430
  %6432 = fmul fast float %6427, %6427
  %6433 = fmul fast float %6424, 4.000000e+00
  %6434 = fmul fast float %6433, %6431
  %6435 = fsub fast float %6432, %6434
  %6436 = call float @dx.op.unary.f32(i32 24, float %6435)  ; Sqrt(value)
  %6437 = fcmp fast oge float %6427, 0.000000e+00
  %6438 = fsub fast float -0.000000e+00, %6436
  %6439 = select i1 %6437, float %6438, float %6436
  %6440 = fsub fast float %6439, %6427
  %6441 = fdiv fast float %6440, %6424
  %6442 = fdiv fast float %6431, %6440
  %6443 = fmul fast float %6441, 5.000000e-01
  %6444 = fmul fast float %6442, 2.000000e+00
  %6445 = select i1 %6437, float %6443, float %6444
  %6446 = select i1 %6437, float %6444, float %6443
  %6447 = call float @dx.op.binary.f32(i32 35, float %6445, float %6446)  ; FMax(a,b)
  %6448 = call float @dx.op.binary.f32(i32 36, float %6445, float %6446)  ; FMin(a,b)
  %6449 = fcmp fast ogt float %6406, %6447
  %6450 = fsub fast float %6406, %6448
  %6451 = fsub fast float %6406, %6447
  %6452 = fsub fast float %6447, %6448
  %6453 = select i1 %6449, float %6451, float %6452
  %6454 = fmul float %6450, %6453
  %6455 = select i1 %6449, float %6448, float %6406
  %6456 = fcmp fast ogt float %6406, %6448
  %6457 = fmul fast float %6455, %6447
  %6458 = fadd fast float %6455, %6447
  %6459 = fmul fast float %6458, %6241
  %6460 = fadd fast float %6457, %6242
  %6461 = fsub fast float %6460, %6459
  %6462 = fdiv fast float %6461, %6454
  %6463 = select i1 %6456, float %6462, float 0.000000e+00
  %6464 = fsub fast float 1.000000e+00, %6463
  %6465 = select i1 %6449, float %6464, float %6463
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6468 = fmul fast float %6467, %6466
  %6469 = fsub fast float 1.000000e+00, %6468
  br label %6470

; <label>:6470                                    ; preds = %6399, %6111, %6076, %6072, %6036
  %6471 = phi float [ 1.000000e+00, %6036 ], [ %6469, %6399 ], [ 1.000000e+00, %6076 ], [ 1.000000e+00, %6111 ], [ 1.000000e+00, %6072 ]
  %6472 = fcmp fast ogt float %6068, 0.000000e+00
  br i1 %6472, label %6473, label %6637, !dx.controlflow.hints !123

; <label>:6473                                    ; preds = %6470
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6476 = fadd fast float %6475, %5949
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 2
  %6479 = extractvalue %dx.types.CBufRet.f32 %6477, 3
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 2
  %6482 = call float @dx.op.binary.f32(i32 35, float %6476, float 0.000000e+00)  ; FMax(a,b)
  %6483 = fadd fast float %6482, 0x3F10000000000000
  %6484 = fcmp fast oeq float %6481, 0.000000e+00
  br i1 %6484, label %6485, label %6552

; <label>:6485                                    ; preds = %6473
  %6486 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6477, 0
  %6488 = fmul fast float %6487, %5967
  %6489 = fmul fast float %6486, %5968
  %6490 = fadd fast float %6488, 5.000000e-01
  %6491 = call float @dx.op.unary.f32(i32 27, float %6490)  ; Round_ni(value)
  %6492 = fadd fast float %6489, 5.000000e-01
  %6493 = call float @dx.op.unary.f32(i32 27, float %6492)  ; Round_ni(value)
  %6494 = fsub fast float %6490, %6491
  %6495 = fsub fast float %6492, %6493
  %6496 = fadd fast float %6491, -5.000000e-01
  %6497 = fadd fast float %6493, -5.000000e-01
  %6498 = fmul fast float %6494, 2.000000e+00
  %6499 = fsub fast float 3.000000e+00, %6498
  %6500 = fadd fast float %6498, 1.000000e+00
  %6501 = fsub fast float 2.000000e+00, %6494
  %6502 = bitcast float %6499 to i32
  %6503 = sub nsw i32 2129859010, %6502
  %6504 = bitcast i32 %6503 to float
  %6505 = fmul fast float %6504, %6501
  %6506 = fadd fast float %6505, -1.000000e+00
  %6507 = bitcast float %6500 to i32
  %6508 = sub nsw i32 2129859010, %6507
  %6509 = bitcast i32 %6508 to float
  %6510 = fmul fast float %6509, %6494
  %6511 = fadd fast float %6510, 1.000000e+00
  %6512 = fmul fast float %6495, 2.000000e+00
  %6513 = fsub fast float 3.000000e+00, %6512
  %6514 = fadd fast float %6512, 1.000000e+00
  %6515 = fsub fast float 2.000000e+00, %6495
  %6516 = bitcast float %6513 to i32
  %6517 = sub nsw i32 2129859010, %6516
  %6518 = bitcast i32 %6517 to float
  %6519 = fmul fast float %6518, %6515
  %6520 = fadd fast float %6519, -1.000000e+00
  %6521 = bitcast float %6514 to i32
  %6522 = sub nsw i32 2129859010, %6521
  %6523 = bitcast i32 %6522 to float
  %6524 = fmul fast float %6523, %6495
  %6525 = fadd fast float %6524, 1.000000e+00
  %6526 = fadd fast float %6506, %6496
  %6527 = fmul fast float %6526, %6478
  %6528 = fadd fast float %6520, %6497
  %6529 = fmul fast float %6528, %6479
  %6530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6527, float %6529, float undef, float undef, i32 0, i32 0, i32 undef, float %6483)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6531 = extractvalue %dx.types.ResRet.f32 %6530, 0
  %6532 = fmul fast float %6531, %6499
  %6533 = fadd fast float %6511, %6496
  %6534 = fmul fast float %6533, %6478
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6534, float %6529, float undef, float undef, i32 0, i32 0, i32 undef, float %6483)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = fmul fast float %6536, %6500
  %6538 = fadd fast float %6525, %6497
  %6539 = fmul fast float %6538, %6479
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6527, float %6539, float undef, float undef, i32 0, i32 0, i32 undef, float %6483)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = fmul fast float %6541, %6499
  %6543 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6534, float %6539, float undef, float undef, i32 0, i32 0, i32 undef, float %6483)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6544 = extractvalue %dx.types.ResRet.f32 %6543, 0
  %6545 = fmul fast float %6544, %6500
  %6546 = fadd fast float %6545, %6542
  %6547 = fmul fast float %6546, %6514
  %6548 = fadd fast float %6537, %6532
  %6549 = fmul fast float %6548, %6513
  %6550 = fadd fast float %6549, %6547
  %6551 = fmul fast float %6550, 6.250000e-02
  br label %6637

; <label>:6552                                    ; preds = %6473
  %6553 = fmul fast float %274, 0x401921FB60000000
  %6554 = call float @dx.op.unary.f32(i32 13, float %6553)  ; Sin(value)
  %6555 = call float @dx.op.unary.f32(i32 12, float %6553)  ; Cos(value)
  %6556 = fsub fast float -0.000000e+00, %6554
  br label %6557

; <label>:6557                                    ; preds = %6606, %6552
  %6558 = phi float [ 0.000000e+00, %6552 ], [ %6601, %6606 ]
  %6559 = phi float [ 0.000000e+00, %6552 ], [ %6603, %6606 ]
  %6560 = phi i32 [ 0, %6552 ], [ %6607, %6606 ]
  %6561 = mul i32 %6560, 2
  %6562 = add i32 0, %6561
  %6563 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6562
  %6564 = load float, float* %6563, align 4
  %6565 = mul i32 %6560, 2
  %6566 = add i32 1, %6565
  %6567 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6566
  %6568 = load float, float* %6567, align 4
  %6569 = fmul fast float %6564, %6555
  %6570 = call float @dx.op.tertiary.f32(i32 46, float %6568, float %6556, float %6569)  ; FMad(a,b,c)
  %6571 = fmul fast float %6564, %6554
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6568, float %6555, float %6571)  ; FMad(a,b,c)
  %6573 = fmul fast float %6570, %6481
  %6574 = fmul fast float %6572, %6481
  %6575 = fadd fast float %6573, %5967
  %6576 = fadd fast float %6574, %5968
  %6577 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6575, float %6576, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = extractvalue %dx.types.ResRet.f32 %6577, 1
  %6580 = extractvalue %dx.types.ResRet.f32 %6577, 2
  %6581 = extractvalue %dx.types.ResRet.f32 %6577, 3
  %6582 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %6578, float* %6582, align 4
  %6583 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %6579, float* %6583, align 4
  %6584 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %6580, float* %6584, align 4
  %6585 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %6581, float* %6585, align 4
  %6586 = fsub fast float %6578, %6483
  %6587 = fcmp fast olt float %6586, 0.000000e+00
  %6588 = select i1 %6587, float 0.000000e+00, float 1.000000e+00
  %6589 = fadd fast float %6588, %6558
  %6590 = fmul fast float %6588, %6586
  %6591 = fadd fast float %6590, %6559
  br label %6592

; <label>:6592                                    ; preds = %6592, %6557
  %6593 = phi i32 [ 1, %6557 ], [ %6604, %6592 ]
  %6594 = phi float [ %6591, %6557 ], [ %6603, %6592 ]
  %6595 = phi float [ %6589, %6557 ], [ %6601, %6592 ]
  %6596 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %6593
  %6597 = load float, float* %6596, align 4, !tbaa !124, !noalias !114
  %6598 = fsub fast float %6597, %6483
  %6599 = fcmp fast olt float %6598, 0.000000e+00
  %6600 = select i1 %6599, float 0.000000e+00, float 1.000000e+00
  %6601 = fadd fast float %6600, %6595
  %6602 = fmul fast float %6600, %6598
  %6603 = fadd fast float %6602, %6594
  %6604 = add nuw nsw i32 %6593, 1
  %6605 = icmp eq i32 %6604, 4
  br i1 %6605, label %6606, label %6592, !llvm.loop !126

; <label>:6606                                    ; preds = %6592
  %6607 = add nuw nsw i32 %6560, 1
  %6608 = icmp eq i32 %6607, 8
  br i1 %6608, label %6609, label %6557, !llvm.loop !127

; <label>:6609                                    ; preds = %6606
  %6610 = fdiv fast float 1.000000e+00, %6601
  %6611 = fmul fast float %6610, %6603
  %6612 = fdiv fast float 1.000000e+00, %6483
  %6613 = fmul fast float %6611, %6612
  %6614 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6614, float 0.000000e+00)  ; FMax(a,b)
  %6616 = fmul fast float %6601, 3.125000e-02
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = fmul fast float %6617, 2.000000e+00
  %6619 = fadd fast float %6618, -1.000000e+00
  %6620 = fcmp fast ogt float %6619, 0.000000e+00
  %6621 = fcmp fast olt float %6619, 0.000000e+00
  %6622 = zext i1 %6620 to i32
  %6623 = zext i1 %6621 to i32
  %6624 = sub nsw i32 %6622, %6623
  %6625 = sitofp i32 %6624 to float
  %6626 = fmul fast float %6625, %6619
  %6627 = fsub fast float 1.000000e+00, %6626
  %6628 = fmul fast float %6627, %6627
  %6629 = fmul fast float %6628, %6627
  %6630 = fsub fast float %6627, %6629
  %6631 = fmul fast float %6630, %6615
  %6632 = fsub fast float 1.000000e+00, %6629
  %6633 = fsub fast float %6632, %6631
  %6634 = fmul fast float %6625, 5.000000e-01
  %6635 = fmul fast float %6634, %6633
  %6636 = fsub fast float 5.000000e-01, %6635
  br label %6637

; <label>:6637                                    ; preds = %6609, %6485, %6470
  %6638 = phi float [ 1.000000e+00, %6470 ], [ %6551, %6485 ], [ %6636, %6609 ]
  %6639 = fcmp fast ogt float %6066, 0.000000e+00
  br i1 %6639, label %6640, label %6804, !dx.controlflow.hints !128

; <label>:6640                                    ; preds = %6637
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6643 = fadd fast float %6642, %5949
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %6646 = extractvalue %dx.types.CBufRet.f32 %6644, 3
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6649 = call float @dx.op.binary.f32(i32 35, float %6643, float 0.000000e+00)  ; FMax(a,b)
  %6650 = fadd fast float %6649, 0x3F10000000000000
  %6651 = fcmp fast oeq float %6648, 0.000000e+00
  br i1 %6651, label %6652, label %6719

; <label>:6652                                    ; preds = %6640
  %6653 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6654 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6655 = fmul fast float %6654, %5959
  %6656 = fmul fast float %6653, %5960
  %6657 = fadd fast float %6655, 5.000000e-01
  %6658 = call float @dx.op.unary.f32(i32 27, float %6657)  ; Round_ni(value)
  %6659 = fadd fast float %6656, 5.000000e-01
  %6660 = call float @dx.op.unary.f32(i32 27, float %6659)  ; Round_ni(value)
  %6661 = fsub fast float %6657, %6658
  %6662 = fsub fast float %6659, %6660
  %6663 = fadd fast float %6658, -5.000000e-01
  %6664 = fadd fast float %6660, -5.000000e-01
  %6665 = fmul fast float %6661, 2.000000e+00
  %6666 = fsub fast float 3.000000e+00, %6665
  %6667 = fadd fast float %6665, 1.000000e+00
  %6668 = fsub fast float 2.000000e+00, %6661
  %6669 = bitcast float %6666 to i32
  %6670 = sub nsw i32 2129859010, %6669
  %6671 = bitcast i32 %6670 to float
  %6672 = fmul fast float %6671, %6668
  %6673 = fadd fast float %6672, -1.000000e+00
  %6674 = bitcast float %6667 to i32
  %6675 = sub nsw i32 2129859010, %6674
  %6676 = bitcast i32 %6675 to float
  %6677 = fmul fast float %6676, %6661
  %6678 = fadd fast float %6677, 1.000000e+00
  %6679 = fmul fast float %6662, 2.000000e+00
  %6680 = fsub fast float 3.000000e+00, %6679
  %6681 = fadd fast float %6679, 1.000000e+00
  %6682 = fsub fast float 2.000000e+00, %6662
  %6683 = bitcast float %6680 to i32
  %6684 = sub nsw i32 2129859010, %6683
  %6685 = bitcast i32 %6684 to float
  %6686 = fmul fast float %6685, %6682
  %6687 = fadd fast float %6686, -1.000000e+00
  %6688 = bitcast float %6681 to i32
  %6689 = sub nsw i32 2129859010, %6688
  %6690 = bitcast i32 %6689 to float
  %6691 = fmul fast float %6690, %6662
  %6692 = fadd fast float %6691, 1.000000e+00
  %6693 = fadd fast float %6673, %6663
  %6694 = fmul fast float %6693, %6645
  %6695 = fadd fast float %6687, %6664
  %6696 = fmul fast float %6695, %6646
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6694, float %6696, float undef, float undef, i32 0, i32 0, i32 undef, float %6650)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  %6699 = fmul fast float %6698, %6666
  %6700 = fadd fast float %6678, %6663
  %6701 = fmul fast float %6700, %6645
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6701, float %6696, float undef, float undef, i32 0, i32 0, i32 undef, float %6650)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = fmul fast float %6703, %6667
  %6705 = fadd fast float %6692, %6664
  %6706 = fmul fast float %6705, %6646
  %6707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6694, float %6706, float undef, float undef, i32 0, i32 0, i32 undef, float %6650)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6708 = extractvalue %dx.types.ResRet.f32 %6707, 0
  %6709 = fmul fast float %6708, %6666
  %6710 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6701, float %6706, float undef, float undef, i32 0, i32 0, i32 undef, float %6650)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6711 = extractvalue %dx.types.ResRet.f32 %6710, 0
  %6712 = fmul fast float %6711, %6667
  %6713 = fadd fast float %6712, %6709
  %6714 = fmul fast float %6713, %6681
  %6715 = fadd fast float %6704, %6699
  %6716 = fmul fast float %6715, %6680
  %6717 = fadd fast float %6716, %6714
  %6718 = fmul fast float %6717, 6.250000e-02
  br label %6804

; <label>:6719                                    ; preds = %6640
  %6720 = fmul fast float %274, 0x401921FB60000000
  %6721 = call float @dx.op.unary.f32(i32 13, float %6720)  ; Sin(value)
  %6722 = call float @dx.op.unary.f32(i32 12, float %6720)  ; Cos(value)
  %6723 = fsub fast float -0.000000e+00, %6721
  br label %6724

; <label>:6724                                    ; preds = %6773, %6719
  %6725 = phi float [ 0.000000e+00, %6719 ], [ %6768, %6773 ]
  %6726 = phi float [ 0.000000e+00, %6719 ], [ %6770, %6773 ]
  %6727 = phi i32 [ 0, %6719 ], [ %6774, %6773 ]
  %6728 = mul i32 %6727, 2
  %6729 = add i32 0, %6728
  %6730 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6729
  %6731 = load float, float* %6730, align 4
  %6732 = mul i32 %6727, 2
  %6733 = add i32 1, %6732
  %6734 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6733
  %6735 = load float, float* %6734, align 4
  %6736 = fmul fast float %6731, %6722
  %6737 = call float @dx.op.tertiary.f32(i32 46, float %6735, float %6723, float %6736)  ; FMad(a,b,c)
  %6738 = fmul fast float %6731, %6721
  %6739 = call float @dx.op.tertiary.f32(i32 46, float %6735, float %6722, float %6738)  ; FMad(a,b,c)
  %6740 = fmul fast float %6737, %6648
  %6741 = fmul fast float %6739, %6648
  %6742 = fadd fast float %6740, %5959
  %6743 = fadd fast float %6741, %5960
  %6744 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6742, float %6743, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.ResRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.ResRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.ResRet.f32 %6744, 3
  %6749 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6745, float* %6749, align 4
  %6750 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6746, float* %6750, align 4
  %6751 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6747, float* %6751, align 4
  %6752 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6748, float* %6752, align 4
  %6753 = fsub fast float %6745, %6650
  %6754 = fcmp fast olt float %6753, 0.000000e+00
  %6755 = select i1 %6754, float 0.000000e+00, float 1.000000e+00
  %6756 = fadd fast float %6755, %6725
  %6757 = fmul fast float %6755, %6753
  %6758 = fadd fast float %6757, %6726
  br label %6759

; <label>:6759                                    ; preds = %6759, %6724
  %6760 = phi i32 [ 1, %6724 ], [ %6771, %6759 ]
  %6761 = phi float [ %6758, %6724 ], [ %6770, %6759 ]
  %6762 = phi float [ %6756, %6724 ], [ %6768, %6759 ]
  %6763 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6760
  %6764 = load float, float* %6763, align 4, !tbaa !124, !noalias !114
  %6765 = fsub fast float %6764, %6650
  %6766 = fcmp fast olt float %6765, 0.000000e+00
  %6767 = select i1 %6766, float 0.000000e+00, float 1.000000e+00
  %6768 = fadd fast float %6767, %6762
  %6769 = fmul fast float %6767, %6765
  %6770 = fadd fast float %6769, %6761
  %6771 = add nuw nsw i32 %6760, 1
  %6772 = icmp eq i32 %6771, 4
  br i1 %6772, label %6773, label %6759, !llvm.loop !126

; <label>:6773                                    ; preds = %6759
  %6774 = add nuw nsw i32 %6727, 1
  %6775 = icmp eq i32 %6774, 8
  br i1 %6775, label %6776, label %6724, !llvm.loop !127

; <label>:6776                                    ; preds = %6773
  %6777 = fdiv fast float 1.000000e+00, %6768
  %6778 = fmul fast float %6777, %6770
  %6779 = fdiv fast float 1.000000e+00, %6650
  %6780 = fmul fast float %6778, %6779
  %6781 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6782 = call float @dx.op.binary.f32(i32 35, float %6781, float 0.000000e+00)  ; FMax(a,b)
  %6783 = fmul fast float %6768, 3.125000e-02
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fmul fast float %6784, 2.000000e+00
  %6786 = fadd fast float %6785, -1.000000e+00
  %6787 = fcmp fast ogt float %6786, 0.000000e+00
  %6788 = fcmp fast olt float %6786, 0.000000e+00
  %6789 = zext i1 %6787 to i32
  %6790 = zext i1 %6788 to i32
  %6791 = sub nsw i32 %6789, %6790
  %6792 = sitofp i32 %6791 to float
  %6793 = fmul fast float %6792, %6786
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = fmul fast float %6794, %6794
  %6796 = fmul fast float %6795, %6794
  %6797 = fsub fast float %6794, %6796
  %6798 = fmul fast float %6797, %6782
  %6799 = fsub fast float 1.000000e+00, %6796
  %6800 = fsub fast float %6799, %6798
  %6801 = fmul fast float %6792, 5.000000e-01
  %6802 = fmul fast float %6801, %6800
  %6803 = fsub fast float 5.000000e-01, %6802
  br label %6804

; <label>:6804                                    ; preds = %6776, %6652, %6637
  %6805 = phi float [ 1.000000e+00, %6637 ], [ %6718, %6652 ], [ %6803, %6776 ]
  %6806 = fcmp fast ogt float %6065, 0.000000e+00
  br i1 %6806, label %6807, label %7125, !dx.controlflow.hints !129

; <label>:6807                                    ; preds = %6804
  %6808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6808, 0
  %6810 = fadd fast float %6809, %5949
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = call float @dx.op.binary.f32(i32 35, float %6810, float 0.000000e+00)  ; FMax(a,b)
  %6817 = fadd fast float %6816, 0x3F10000000000000
  %6818 = fcmp fast oeq float %6815, 0.000000e+00
  br i1 %5952, label %6819, label %6972, !dx.controlflow.hints !130

; <label>:6819                                    ; preds = %6807
  br i1 %6818, label %6820, label %6887

; <label>:6820                                    ; preds = %6819
  %6821 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6823 = fmul fast float %6822, %5941
  %6824 = fmul fast float %6821, %5945
  %6825 = fadd fast float %6823, 5.000000e-01
  %6826 = call float @dx.op.unary.f32(i32 27, float %6825)  ; Round_ni(value)
  %6827 = fadd fast float %6824, 5.000000e-01
  %6828 = call float @dx.op.unary.f32(i32 27, float %6827)  ; Round_ni(value)
  %6829 = fsub fast float %6825, %6826
  %6830 = fsub fast float %6827, %6828
  %6831 = fadd fast float %6826, -5.000000e-01
  %6832 = fadd fast float %6828, -5.000000e-01
  %6833 = fmul fast float %6829, 2.000000e+00
  %6834 = fsub fast float 3.000000e+00, %6833
  %6835 = fadd fast float %6833, 1.000000e+00
  %6836 = fsub fast float 2.000000e+00, %6829
  %6837 = bitcast float %6834 to i32
  %6838 = sub nsw i32 2129859010, %6837
  %6839 = bitcast i32 %6838 to float
  %6840 = fmul fast float %6839, %6836
  %6841 = fadd fast float %6840, -1.000000e+00
  %6842 = bitcast float %6835 to i32
  %6843 = sub nsw i32 2129859010, %6842
  %6844 = bitcast i32 %6843 to float
  %6845 = fmul fast float %6844, %6829
  %6846 = fadd fast float %6845, 1.000000e+00
  %6847 = fmul fast float %6830, 2.000000e+00
  %6848 = fsub fast float 3.000000e+00, %6847
  %6849 = fadd fast float %6847, 1.000000e+00
  %6850 = fsub fast float 2.000000e+00, %6830
  %6851 = bitcast float %6848 to i32
  %6852 = sub nsw i32 2129859010, %6851
  %6853 = bitcast i32 %6852 to float
  %6854 = fmul fast float %6853, %6850
  %6855 = fadd fast float %6854, -1.000000e+00
  %6856 = bitcast float %6849 to i32
  %6857 = sub nsw i32 2129859010, %6856
  %6858 = bitcast i32 %6857 to float
  %6859 = fmul fast float %6858, %6830
  %6860 = fadd fast float %6859, 1.000000e+00
  %6861 = fadd fast float %6841, %6831
  %6862 = fmul fast float %6861, %6812
  %6863 = fadd fast float %6855, %6832
  %6864 = fmul fast float %6863, %6813
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6862, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = fmul fast float %6866, %6834
  %6868 = fadd fast float %6846, %6831
  %6869 = fmul fast float %6868, %6812
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6869, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6835
  %6873 = fadd fast float %6860, %6832
  %6874 = fmul fast float %6873, %6813
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6862, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %6834
  %6878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6869, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6879 = extractvalue %dx.types.ResRet.f32 %6878, 0
  %6880 = fmul fast float %6879, %6835
  %6881 = fadd fast float %6880, %6877
  %6882 = fmul fast float %6881, %6849
  %6883 = fadd fast float %6872, %6867
  %6884 = fmul fast float %6883, %6848
  %6885 = fadd fast float %6884, %6882
  %6886 = fmul fast float %6885, 6.250000e-02
  br label %7125

; <label>:6887                                    ; preds = %6819
  %6888 = fmul fast float %274, 0x401921FB60000000
  %6889 = call float @dx.op.unary.f32(i32 13, float %6888)  ; Sin(value)
  %6890 = call float @dx.op.unary.f32(i32 12, float %6888)  ; Cos(value)
  %6891 = fsub fast float -0.000000e+00, %6889
  br label %6892

; <label>:6892                                    ; preds = %6941, %6887
  %6893 = phi float [ 0.000000e+00, %6887 ], [ %6936, %6941 ]
  %6894 = phi float [ 0.000000e+00, %6887 ], [ %6938, %6941 ]
  %6895 = phi i32 [ 0, %6887 ], [ %6942, %6941 ]
  %6896 = mul i32 %6895, 2
  %6897 = add i32 0, %6896
  %6898 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6897
  %6899 = load float, float* %6898, align 4
  %6900 = mul i32 %6895, 2
  %6901 = add i32 1, %6900
  %6902 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6901
  %6903 = load float, float* %6902, align 4
  %6904 = fmul fast float %6899, %6890
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6891, float %6904)  ; FMad(a,b,c)
  %6906 = fmul fast float %6899, %6889
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6890, float %6906)  ; FMad(a,b,c)
  %6908 = fmul fast float %6905, %6815
  %6909 = fmul fast float %6907, %6815
  %6910 = fadd fast float %6908, %5941
  %6911 = fadd fast float %6909, %5945
  %6912 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6910, float %6911, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.ResRet.f32 %6912, 3
  %6917 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6913, float* %6917, align 4
  %6918 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6914, float* %6918, align 4
  %6919 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6915, float* %6919, align 4
  %6920 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6916, float* %6920, align 4
  %6921 = fsub fast float %6913, %6817
  %6922 = fcmp fast olt float %6921, 0.000000e+00
  %6923 = select i1 %6922, float 0.000000e+00, float 1.000000e+00
  %6924 = fadd fast float %6923, %6893
  %6925 = fmul fast float %6923, %6921
  %6926 = fadd fast float %6925, %6894
  br label %6927

; <label>:6927                                    ; preds = %6927, %6892
  %6928 = phi i32 [ 1, %6892 ], [ %6939, %6927 ]
  %6929 = phi float [ %6926, %6892 ], [ %6938, %6927 ]
  %6930 = phi float [ %6924, %6892 ], [ %6936, %6927 ]
  %6931 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6928
  %6932 = load float, float* %6931, align 4, !tbaa !124, !noalias !114
  %6933 = fsub fast float %6932, %6817
  %6934 = fcmp fast olt float %6933, 0.000000e+00
  %6935 = select i1 %6934, float 0.000000e+00, float 1.000000e+00
  %6936 = fadd fast float %6935, %6930
  %6937 = fmul fast float %6935, %6933
  %6938 = fadd fast float %6937, %6929
  %6939 = add nuw nsw i32 %6928, 1
  %6940 = icmp eq i32 %6939, 4
  br i1 %6940, label %6941, label %6927, !llvm.loop !126

; <label>:6941                                    ; preds = %6927
  %6942 = add nuw nsw i32 %6895, 1
  %6943 = icmp eq i32 %6942, 8
  br i1 %6943, label %6944, label %6892, !llvm.loop !127

; <label>:6944                                    ; preds = %6941
  %6945 = fdiv fast float 1.000000e+00, %6936
  %6946 = fmul fast float %6945, %6938
  %6947 = fdiv fast float 1.000000e+00, %6817
  %6948 = fmul fast float %6946, %6947
  %6949 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6950 = call float @dx.op.binary.f32(i32 35, float %6949, float 0.000000e+00)  ; FMax(a,b)
  %6951 = fmul fast float %6936, 3.125000e-02
  %6952 = call float @dx.op.unary.f32(i32 7, float %6951)  ; Saturate(value)
  %6953 = fmul fast float %6952, 2.000000e+00
  %6954 = fadd fast float %6953, -1.000000e+00
  %6955 = fcmp fast ogt float %6954, 0.000000e+00
  %6956 = fcmp fast olt float %6954, 0.000000e+00
  %6957 = zext i1 %6955 to i32
  %6958 = zext i1 %6956 to i32
  %6959 = sub nsw i32 %6957, %6958
  %6960 = sitofp i32 %6959 to float
  %6961 = fmul fast float %6960, %6954
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = fmul fast float %6962, %6962
  %6964 = fmul fast float %6963, %6962
  %6965 = fsub fast float %6962, %6964
  %6966 = fmul fast float %6965, %6950
  %6967 = fsub fast float 1.000000e+00, %6964
  %6968 = fsub fast float %6967, %6966
  %6969 = fmul fast float %6960, 5.000000e-01
  %6970 = fmul fast float %6969, %6968
  %6971 = fsub fast float 5.000000e-01, %6970
  br label %7125

; <label>:6972                                    ; preds = %6807
  br i1 %6818, label %6973, label %7040

; <label>:6973                                    ; preds = %6972
  %6974 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6975 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6976 = fmul fast float %6975, %5941
  %6977 = fmul fast float %6974, %5945
  %6978 = fadd fast float %6976, 5.000000e-01
  %6979 = call float @dx.op.unary.f32(i32 27, float %6978)  ; Round_ni(value)
  %6980 = fadd fast float %6977, 5.000000e-01
  %6981 = call float @dx.op.unary.f32(i32 27, float %6980)  ; Round_ni(value)
  %6982 = fsub fast float %6978, %6979
  %6983 = fsub fast float %6980, %6981
  %6984 = fadd fast float %6979, -5.000000e-01
  %6985 = fadd fast float %6981, -5.000000e-01
  %6986 = fmul fast float %6982, 2.000000e+00
  %6987 = fsub fast float 3.000000e+00, %6986
  %6988 = fadd fast float %6986, 1.000000e+00
  %6989 = fsub fast float 2.000000e+00, %6982
  %6990 = bitcast float %6987 to i32
  %6991 = sub nsw i32 2129859010, %6990
  %6992 = bitcast i32 %6991 to float
  %6993 = fmul fast float %6992, %6989
  %6994 = fadd fast float %6993, -1.000000e+00
  %6995 = bitcast float %6988 to i32
  %6996 = sub nsw i32 2129859010, %6995
  %6997 = bitcast i32 %6996 to float
  %6998 = fmul fast float %6997, %6982
  %6999 = fadd fast float %6998, 1.000000e+00
  %7000 = fmul fast float %6983, 2.000000e+00
  %7001 = fsub fast float 3.000000e+00, %7000
  %7002 = fadd fast float %7000, 1.000000e+00
  %7003 = fsub fast float 2.000000e+00, %6983
  %7004 = bitcast float %7001 to i32
  %7005 = sub nsw i32 2129859010, %7004
  %7006 = bitcast i32 %7005 to float
  %7007 = fmul fast float %7006, %7003
  %7008 = fadd fast float %7007, -1.000000e+00
  %7009 = bitcast float %7002 to i32
  %7010 = sub nsw i32 2129859010, %7009
  %7011 = bitcast i32 %7010 to float
  %7012 = fmul fast float %7011, %6983
  %7013 = fadd fast float %7012, 1.000000e+00
  %7014 = fadd fast float %6994, %6984
  %7015 = fmul fast float %7014, %6812
  %7016 = fadd fast float %7008, %6985
  %7017 = fmul fast float %7016, %6813
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7015, float %7017, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = fmul fast float %7019, %6987
  %7021 = fadd fast float %6999, %6984
  %7022 = fmul fast float %7021, %6812
  %7023 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7022, float %7017, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = fmul fast float %7024, %6988
  %7026 = fadd fast float %7013, %6985
  %7027 = fmul fast float %7026, %6813
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7015, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = fmul fast float %7029, %6987
  %7031 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7022, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float %6817)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = fmul fast float %7032, %6988
  %7034 = fadd fast float %7033, %7030
  %7035 = fmul fast float %7034, %7002
  %7036 = fadd fast float %7025, %7020
  %7037 = fmul fast float %7036, %7001
  %7038 = fadd fast float %7037, %7035
  %7039 = fmul fast float %7038, 6.250000e-02
  br label %7125

; <label>:7040                                    ; preds = %6972
  %7041 = fmul fast float %274, 0x401921FB60000000
  %7042 = call float @dx.op.unary.f32(i32 13, float %7041)  ; Sin(value)
  %7043 = call float @dx.op.unary.f32(i32 12, float %7041)  ; Cos(value)
  %7044 = fsub fast float -0.000000e+00, %7042
  br label %7045

; <label>:7045                                    ; preds = %7094, %7040
  %7046 = phi float [ 0.000000e+00, %7040 ], [ %7089, %7094 ]
  %7047 = phi float [ 0.000000e+00, %7040 ], [ %7091, %7094 ]
  %7048 = phi i32 [ 0, %7040 ], [ %7095, %7094 ]
  %7049 = mul i32 %7048, 2
  %7050 = add i32 0, %7049
  %7051 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7050
  %7052 = load float, float* %7051, align 4
  %7053 = mul i32 %7048, 2
  %7054 = add i32 1, %7053
  %7055 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7054
  %7056 = load float, float* %7055, align 4
  %7057 = fmul fast float %7052, %7043
  %7058 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7044, float %7057)  ; FMad(a,b,c)
  %7059 = fmul fast float %7052, %7042
  %7060 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7043, float %7059)  ; FMad(a,b,c)
  %7061 = fmul fast float %7058, %6815
  %7062 = fmul fast float %7060, %6815
  %7063 = fadd fast float %7061, %5941
  %7064 = fadd fast float %7062, %5945
  %7065 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7063, float %7064, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.ResRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7065, 2
  %7069 = extractvalue %dx.types.ResRet.f32 %7065, 3
  %7070 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7066, float* %7070, align 4
  %7071 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7067, float* %7071, align 4
  %7072 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7068, float* %7072, align 4
  %7073 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7069, float* %7073, align 4
  %7074 = fsub fast float %7066, %6817
  %7075 = fcmp fast olt float %7074, 0.000000e+00
  %7076 = select i1 %7075, float 0.000000e+00, float 1.000000e+00
  %7077 = fadd fast float %7076, %7046
  %7078 = fmul fast float %7076, %7074
  %7079 = fadd fast float %7078, %7047
  br label %7080

; <label>:7080                                    ; preds = %7080, %7045
  %7081 = phi i32 [ 1, %7045 ], [ %7092, %7080 ]
  %7082 = phi float [ %7079, %7045 ], [ %7091, %7080 ]
  %7083 = phi float [ %7077, %7045 ], [ %7089, %7080 ]
  %7084 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7081
  %7085 = load float, float* %7084, align 4, !tbaa !124, !noalias !114
  %7086 = fsub fast float %7085, %6817
  %7087 = fcmp fast olt float %7086, 0.000000e+00
  %7088 = select i1 %7087, float 0.000000e+00, float 1.000000e+00
  %7089 = fadd fast float %7088, %7083
  %7090 = fmul fast float %7088, %7086
  %7091 = fadd fast float %7090, %7082
  %7092 = add nuw nsw i32 %7081, 1
  %7093 = icmp eq i32 %7092, 4
  br i1 %7093, label %7094, label %7080, !llvm.loop !126

; <label>:7094                                    ; preds = %7080
  %7095 = add nuw nsw i32 %7048, 1
  %7096 = icmp eq i32 %7095, 8
  br i1 %7096, label %7097, label %7045, !llvm.loop !127

; <label>:7097                                    ; preds = %7094
  %7098 = fdiv fast float 1.000000e+00, %7089
  %7099 = fmul fast float %7098, %7091
  %7100 = fdiv fast float 1.000000e+00, %6817
  %7101 = fmul fast float %7099, %7100
  %7102 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  %7103 = call float @dx.op.binary.f32(i32 35, float %7102, float 0.000000e+00)  ; FMax(a,b)
  %7104 = fmul fast float %7089, 3.125000e-02
  %7105 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7106 = fmul fast float %7105, 2.000000e+00
  %7107 = fadd fast float %7106, -1.000000e+00
  %7108 = fcmp fast ogt float %7107, 0.000000e+00
  %7109 = fcmp fast olt float %7107, 0.000000e+00
  %7110 = zext i1 %7108 to i32
  %7111 = zext i1 %7109 to i32
  %7112 = sub nsw i32 %7110, %7111
  %7113 = sitofp i32 %7112 to float
  %7114 = fmul fast float %7113, %7107
  %7115 = fsub fast float 1.000000e+00, %7114
  %7116 = fmul fast float %7115, %7115
  %7117 = fmul fast float %7116, %7115
  %7118 = fsub fast float %7115, %7117
  %7119 = fmul fast float %7118, %7103
  %7120 = fsub fast float 1.000000e+00, %7117
  %7121 = fsub fast float %7120, %7119
  %7122 = fmul fast float %7113, 5.000000e-01
  %7123 = fmul fast float %7122, %7121
  %7124 = fsub fast float 5.000000e-01, %7123
  br label %7125

; <label>:7125                                    ; preds = %7097, %6973, %6944, %6820, %6804
  %7126 = phi float [ 1.000000e+00, %6804 ], [ %6886, %6820 ], [ %6971, %6944 ], [ %7039, %6973 ], [ %7124, %7097 ]
  %7127 = fsub fast float %6638, %6471
  %7128 = fmul fast float %7127, %6038
  %7129 = fadd fast float %7128, %6471
  %7130 = fsub fast float %6805, %7129
  %7131 = fmul fast float %7130, %6037
  %7132 = fadd fast float %7131, %7129
  %7133 = fsub fast float %7126, %7132
  %7134 = fmul fast float %7133, %6065
  %7135 = fadd fast float %7134, %7132
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7138 = fcmp fast ogt float %7137, 0.000000e+00
  br i1 %7138, label %7139, label %7179, !dx.controlflow.hints !131

; <label>:7139                                    ; preds = %7125
  %7140 = fcmp fast ugt float %7137, 0.000000e+00
  br i1 %7140, label %7141, label %7176

; <label>:7141                                    ; preds = %7139
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.CBufRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.CBufRet.f32 %7142, 2
  %7146 = extractvalue %dx.types.CBufRet.f32 %7142, 3
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.CBufRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7151 = extractvalue %dx.types.CBufRet.f32 %7147, 3
  %7152 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7155 = extractvalue %dx.types.CBufRet.f32 %7154, 0
  %7156 = extractvalue %dx.types.CBufRet.f32 %7154, 1
  %7157 = extractvalue %dx.types.CBufRet.f32 %7154, 2
  %7158 = fadd fast float %7155, %5918
  %7159 = fadd fast float %7156, %5919
  %7160 = fadd fast float %7157, %5920
  %7161 = fmul fast float %7158, %7143
  %7162 = call float @dx.op.tertiary.f32(i32 46, float %7144, float %7159, float %7161)  ; FMad(a,b,c)
  %7163 = call float @dx.op.tertiary.f32(i32 46, float %7145, float %7160, float %7162)  ; FMad(a,b,c)
  %7164 = fadd fast float %7163, %7146
  %7165 = fmul fast float %7158, %7148
  %7166 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7159, float %7165)  ; FMad(a,b,c)
  %7167 = call float @dx.op.tertiary.f32(i32 46, float %7150, float %7160, float %7166)  ; FMad(a,b,c)
  %7168 = fadd fast float %7167, %7151
  %7169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7164, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = fmul fast float %7170, %7153
  %7172 = fadd fast float %7171, %7152
  %7173 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7174 = fmul fast float %7173, %7137
  %7175 = fsub fast float 1.000000e+00, %7174
  br label %7176

; <label>:7176                                    ; preds = %7141, %7139
  %7177 = phi float [ %7175, %7141 ], [ 1.000000e+00, %7139 ]
  %7178 = fmul fast float %7177, %7135
  br label %7179

; <label>:7179                                    ; preds = %7176, %7125, %5898
  %7180 = phi float [ 1.000000e+00, %5898 ], [ %7178, %7176 ], [ %7135, %7125 ]
  %7181 = call float @dx.op.binary.f32(i32 36, float %7180, float %7180)  ; FMin(a,b)
  %7182 = call float @dx.op.binary.f32(i32 36, float %7180, float %7181)  ; FMin(a,b)
  %7183 = fcmp fast ogt float %7182, 0.000000e+00
  br i1 %7183, label %7184, label %7349, !dx.controlflow.hints !132

; <label>:7184                                    ; preds = %7179
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.CBufRet.f32 %7185, 2
  %7189 = extractvalue %dx.types.CBufRet.f32 %7185, 3
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7190, 2
  %7194 = extractvalue %dx.types.CBufRet.f32 %7190, 3
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7198 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7199 = extractvalue %dx.types.CBufRet.f32 %7195, 3
  %7200 = fmul fast float %7186, %5918
  %7201 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %7187, float %7200)  ; FMad(a,b,c)
  %7202 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %7188, float %7201)  ; FMad(a,b,c)
  %7203 = fadd fast float %7202, %7189
  %7204 = fmul fast float %7191, %5918
  %7205 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %7192, float %7204)  ; FMad(a,b,c)
  %7206 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %7193, float %7205)  ; FMad(a,b,c)
  %7207 = fadd fast float %7206, %7194
  %7208 = fmul fast float %7196, %5918
  %7209 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %7197, float %7208)  ; FMad(a,b,c)
  %7210 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %7198, float %7209)  ; FMad(a,b,c)
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 0
  %7213 = extractvalue %dx.types.CBufRet.f32 %7211, 1
  %7214 = extractvalue %dx.types.CBufRet.f32 %7211, 3
  %7215 = fmul fast float %7214, %7203
  %7216 = fmul fast float %7214, %7207
  %7217 = fadd fast float %7215, %7212
  %7218 = fadd fast float %7216, %7213
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7222 = fsub fast float %7217, %7220
  %7223 = fsub fast float %7218, %7221
  %7224 = fcmp fast olt float %7222, 0.000000e+00
  %7225 = fcmp fast olt float %7223, 0.000000e+00
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7230 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7231 = select i1 %7224, float %7227, float %7229
  %7232 = select i1 %7225, float %7228, float %7230
  %7233 = fmul fast float %7231, %7222
  %7234 = fmul fast float %7232, %7223
  %7235 = call float @dx.op.unary.f32(i32 6, float %7233)  ; FAbs(value)
  %7236 = call float @dx.op.unary.f32(i32 6, float %7234)  ; FAbs(value)
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7239 = call float @dx.op.binary.f32(i32 35, float %7235, float %7236)  ; FMax(a,b)
  %7240 = fsub fast float %7238, %7239
  %7241 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7242 = fcmp fast ogt float %7241, 0.000000e+00
  br i1 %7242, label %7243, label %7284, !dx.controlflow.hints !133

; <label>:7243                                    ; preds = %7184
  %7244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 1
  %7246 = fcmp fast ogt float %7245, 0.000000e+00
  br i1 %7246, label %7247, label %7279

; <label>:7247                                    ; preds = %7243
  %7248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 0
  %7250 = extractvalue %dx.types.ResRet.f32 %7248, 1
  %7251 = extractvalue %dx.types.ResRet.f32 %7248, 2
  %7252 = extractvalue %dx.types.ResRet.f32 %7248, 3
  %7253 = fsub fast float 1.000000e+00, %7199
  %7254 = fsub fast float %7253, %7210
  %7255 = fmul fast float %7254, 0x400921FB60000000
  %7256 = fadd fast float %7255, 0x3FF921FB60000000
  %7257 = call float @dx.op.unary.f32(i32 13, float %7256)  ; Sin(value)
  %7258 = fadd fast float %7257, -1.000000e+00
  %7259 = fmul fast float %7258, 0x3FD45F3060000000
  %7260 = fmul fast float %7254, 0x401921FB60000000
  %7261 = fadd fast float %7260, 0x400921FB60000000
  %7262 = call float @dx.op.unary.f32(i32 13, float %7261)  ; Sin(value)
  %7263 = fadd fast float %7262, 0x3E7777A5C0000000
  %7264 = fmul fast float %7263, 0x3FC45F3060000000
  %7265 = fmul fast float %7254, 0x4022D97C80000000
  %7266 = fadd fast float %7265, 0x4012D97C80000000
  %7267 = call float @dx.op.unary.f32(i32 13, float %7266)  ; Sin(value)
  %7268 = fadd fast float %7267, 1.000000e+00
  %7269 = fmul fast float %7268, 0x3FBB2995E0000000
  %7270 = fmul fast float %7254, 0x402921FB60000000
  %7271 = fadd fast float %7270, 0x401921FB60000000
  %7272 = call float @dx.op.unary.f32(i32 13, float %7271)  ; Sin(value)
  %7273 = fadd fast float %7272, 0xBE8777A5C0000000
  %7274 = fmul fast float %7273, 0x3FB45F3060000000
  %7275 = call float @dx.op.dot4.f32(i32 56, float %7249, float %7250, float %7251, float %7252, float %7259, float %7264, float %7269, float %7274)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7276 = fmul fast float %7275, 0xBFF7154760000000
  %7277 = call float @dx.op.unary.f32(i32 21, float %7276)  ; Exp(value)
  %7278 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  br label %7279

; <label>:7279                                    ; preds = %7247, %7243
  %7280 = phi float [ %7278, %7247 ], [ 1.000000e+00, %7243 ]
  %7281 = fadd fast float %7280, -1.000000e+00
  %7282 = fmul fast float %7281, %7241
  %7283 = fadd fast float %7282, 1.000000e+00
  br label %7284

; <label>:7284                                    ; preds = %7279, %7184
  %7285 = phi float [ %7283, %7279 ], [ 1.000000e+00, %7184 ]
  %7286 = fmul fast float %7285, %7180
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7291 = fadd fast float %7288, %204
  %7292 = fadd fast float %7289, %205
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 1
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = fsub fast float -0.000000e+00, %7291
  %7300 = fsub fast float -0.000000e+00, %7292
  %7301 = fsub fast float %5043, %7290
  %7302 = fadd fast float %7301, %7294
  %7303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7299, float %7300, float %7302)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7296, float %7297, float %7298)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = fdiv fast float 1.000000e+00, %7304
  %7306 = fmul fast float %7305, %7303
  %7307 = fmul fast float %7296, %7306
  %7308 = fmul fast float %7297, %7306
  %7309 = fadd fast float %7307, %7291
  %7310 = fadd fast float %7308, %7292
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7314 = fsub fast float %7309, %7312
  %7315 = fsub fast float %7310, %7313
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 2
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 3
  %7319 = fmul fast float %7314, %7317
  %7320 = fmul fast float %7315, %7318
  %7321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.i32 %7321, 3
  %7323 = icmp eq i32 %7322, 0
  br i1 %7323, label %7329, label %7324

; <label>:7324                                    ; preds = %7284
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7319, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  br label %7334

; <label>:7329                                    ; preds = %7284
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7319, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  br label %7334

; <label>:7334                                    ; preds = %7329, %7324
  %7335 = phi float [ %7326, %7324 ], [ %7331, %7329 ]
  %7336 = phi float [ %7327, %7324 ], [ %7332, %7329 ]
  %7337 = phi float [ %7328, %7324 ], [ %7333, %7329 ]
  %7338 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7339 = fmul fast float %7338, %7335
  %7340 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7341 = fsub fast float %7306, %7340
  %7342 = fsub fast float %7341, %7339
  %7343 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7342)  ; FMax(a,b)
  %7344 = fmul fast float %7343, %7336
  %7345 = call float @dx.op.binary.f32(i32 36, float %7337, float %7344)  ; FMin(a,b)
  %7346 = fmul fast float %7345, 0xBFF7154760000000
  %7347 = call float @dx.op.unary.f32(i32 21, float %7346)  ; Exp(value)
  %7348 = fmul fast float %7286, %7347
  br label %7349

; <label>:7349                                    ; preds = %7334, %7179
  %7350 = phi float [ %7348, %7334 ], [ %7180, %7179 ]
  %7351 = call float @dx.op.binary.f32(i32 36, float %7350, float %7350)  ; FMin(a,b)
  %7352 = call float @dx.op.binary.f32(i32 36, float %7350, float %7351)  ; FMin(a,b)
  %7353 = fcmp fast ogt float %7352, 0.000000e+00
  br i1 %7353, label %7354, label %7602, !dx.controlflow.hints !134

; <label>:7354                                    ; preds = %7349
  %7355 = fmul fast float %7350, %5910
  %7356 = fmul fast float %7350, %5911
  %7357 = fmul fast float %7350, %5912
  %7358 = fsub fast float %206, %4242
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  %7360 = fmul fast float %5899, 5.120000e+02
  %7361 = fmul fast float %5900, 5.120000e+02
  %7362 = fmul fast float %5901, 5.120000e+02
  %7363 = fadd fast float %7362, %206
  %7364 = fsub fast float %4242, %7363
  %7365 = fmul fast float %7364, 2.000000e+00
  %7366 = fadd fast float %7365, %7363
  %7367 = select i1 %7359, float %7366, float %7363
  %7368 = fsub fast float %7367, %206
  %7369 = call float @dx.op.dot3.f32(i32 55, float %7360, float %7361, float %7368, float %7360, float %7361, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = call float @dx.op.unary.f32(i32 25, float %7369)  ; Rsqrt(value)
  %7371 = fmul fast float %7370, %7360
  %7372 = fmul fast float %7370, %7361
  %7373 = fmul fast float %7370, %7368
  %7374 = fsub fast float %4242, %206
  %7375 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7374)  ; Dot3(ax,ay,az,bx,by,bz)
  %7376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7371, float %7372, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = fdiv fast float 1.000000e+00, %7376
  %7378 = fmul fast float %7377, %7375
  %7379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7358, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = zext i1 %7380 to i32
  %7383 = zext i1 %7381 to i32
  %7384 = sub nsw i32 %7382, %7383
  %7385 = sitofp i32 %7384 to float
  %7386 = fsub fast float %7367, %4242
  %7387 = call float @dx.op.dot3.f32(i32 55, float %7360, float %7361, float %7386, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7388 = fcmp fast ogt float %7387, 0.000000e+00
  %7389 = fcmp fast olt float %7387, 0.000000e+00
  %7390 = zext i1 %7388 to i32
  %7391 = zext i1 %7389 to i32
  %7392 = sub nsw i32 %7390, %7391
  %7393 = sitofp i32 %7392 to float
  %7394 = fcmp fast une float %7385, %7393
  br i1 %7394, label %7395, label %7405

; <label>:7395                                    ; preds = %7354
  %7396 = fmul fast float %7378, %7373
  %7397 = fmul fast float %7378, %7372
  %7398 = fmul fast float %7378, %7371
  %7399 = fmul fast float %7398, %7398
  %7400 = fmul fast float %7397, %7397
  %7401 = fadd fast float %7399, %7400
  %7402 = fmul fast float %7396, %7396
  %7403 = fadd fast float %7401, %7402
  %7404 = call float @dx.op.unary.f32(i32 24, float %7403)  ; Sqrt(value)
  br label %7415

; <label>:7405                                    ; preds = %7354
  %7406 = icmp slt i32 %7384, 0
  br i1 %7406, label %7407, label %7415

; <label>:7407                                    ; preds = %7405
  %7408 = fsub fast float %206, %7367
  %7409 = fmul fast float %7360, %7360
  %7410 = fmul fast float %7361, %7361
  %7411 = fadd fast float %7409, %7410
  %7412 = fmul fast float %7408, %7408
  %7413 = fadd fast float %7411, %7412
  %7414 = call float @dx.op.unary.f32(i32 24, float %7413)  ; Sqrt(value)
  br label %7415

; <label>:7415                                    ; preds = %7407, %7405, %7395
  %7416 = phi float [ %7404, %7395 ], [ %7414, %7407 ], [ 0.000000e+00, %7405 ]
  %7417 = fsub fast float -0.000000e+00, %7416
  %7418 = select i1 %7359, float -0.000000e+00, float %7417
  %7419 = fmul fast float %4239, 0x3FF7154760000000
  %7420 = fmul fast float %7419, %7418
  %7421 = fmul fast float %4240, 0x3FF7154760000000
  %7422 = fmul fast float %7421, %7418
  %7423 = fmul fast float %4241, 0x3FF7154760000000
  %7424 = fmul fast float %7423, %7418
  %7425 = call float @dx.op.unary.f32(i32 21, float %7420)  ; Exp(value)
  %7426 = call float @dx.op.unary.f32(i32 21, float %7422)  ; Exp(value)
  %7427 = call float @dx.op.unary.f32(i32 21, float %7424)  ; Exp(value)
  %7428 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7429 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7430 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  %7431 = fmul fast float %7355, %7428
  %7432 = fmul fast float %7356, %7429
  %7433 = fmul fast float %7357, %7430
  %7434 = fsub fast float %5899, %5031
  %7435 = fsub fast float %5900, %5030
  %7436 = fsub fast float %5901, %5029
  %7437 = call float @dx.op.dot3.f32(i32 55, float %7434, float %7435, float %7436, float %7434, float %7435, float %7436)  ; Dot3(ax,ay,az,bx,by,bz)
  %7438 = call float @dx.op.unary.f32(i32 25, float %7437)  ; Rsqrt(value)
  %7439 = fmul fast float %7438, %7434
  %7440 = fmul fast float %7438, %7435
  %7441 = fmul fast float %7438, %7436
  %7442 = call float @dx.op.dot3.f32(i32 55, float %5899, float %5900, float %5901, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %7443 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5027, float %5026, float %7439, float %7440, float %7441)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7445 = bitcast i32 %5070 to float
  %7446 = fmul fast float %7444, %7444
  %7447 = fmul fast float %7446, %7445
  %7448 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7449 = fmul fast float %7448, %7444
  %7450 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %7439, float %7440, float %7441)  ; Dot3(ax,ay,az,bx,by,bz)
  %7451 = fmul fast float %7450, %7450
  %7452 = call float @dx.op.unary.f32(i32 6, float %7442)  ; FAbs(value)
  %7453 = fsub fast float 1.000000e+00, %5064
  %7454 = fmul fast float %5046, %5046
  %7455 = fmul fast float %7454, %7453
  %7456 = fadd fast float %7455, %5064
  %7457 = bitcast float %7456 to i32
  %7458 = ashr i32 %7457, 1
  %7459 = add nsw i32 %7458, 532487669
  %7460 = bitcast i32 %7459 to float
  %7461 = fadd fast float %7460, %5046
  %7462 = fmul fast float %5064, %7451
  %7463 = fsub fast float 1.000000e+00, %7451
  %7464 = fadd fast float %7463, %7462
  %7465 = fmul fast float %7452, %7452
  %7466 = fmul fast float %7465, %7453
  %7467 = fadd fast float %7466, %5064
  %7468 = bitcast float %7467 to i32
  %7469 = ashr i32 %7468, 1
  %7470 = add nsw i32 %7469, 532487669
  %7471 = bitcast i32 %7470 to float
  %7472 = fadd fast float %7471, %7452
  %7473 = fmul fast float %7464, %7464
  %7474 = fmul fast float %7473, %7461
  %7475 = fmul fast float %7474, %7472
  %7476 = fdiv fast float 0x3FF0A00000000000, %7475
  %7477 = fmul fast float %7476, %5064
  %7478 = call float @dx.op.unary.f32(i32 6, float %7443)  ; FAbs(value)
  %7479 = fsub fast float 1.000000e+00, %7478
  %7480 = bitcast float %7479 to i32
  %7481 = sitofp i32 %7480 to float
  %7482 = fmul fast float %7481, 5.000000e+00
  %7483 = fadd fast float %7482, 0xC1EFBF8940000000
  %7484 = fptosi float %7483 to i32
  %7485 = bitcast i32 %7484 to float
  %7486 = fsub fast float 1.000000e+00, %5035
  %7487 = fsub fast float 1.000000e+00, %5036
  %7488 = fsub fast float 1.000000e+00, %5044
  %7489 = fmul fast float %7485, %7486
  %7490 = fmul fast float %7485, %7487
  %7491 = fmul fast float %7485, %7488
  %7492 = fadd fast float %7489, %5035
  %7493 = fadd fast float %7490, %5036
  %7494 = fadd fast float %7491, %5044
  br i1 %5318, label %7495, label %7518

; <label>:7495                                    ; preds = %7415
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3838, float %7478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.ResRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.ResRet.f32 %7496, 2
  %7500 = fadd fast float %7497, -5.000000e-01
  %7501 = fadd fast float %7498, -5.000000e-01
  %7502 = fadd fast float %7499, -5.000000e-01
  %7503 = fmul fast float %5035, 4.000000e+00
  %7504 = fmul fast float %7503, %7486
  %7505 = fmul fast float %7504, %7500
  %7506 = fmul fast float %5036, 4.000000e+00
  %7507 = fmul fast float %7506, %7487
  %7508 = fmul fast float %7507, %7501
  %7509 = fmul fast float %5044, 4.000000e+00
  %7510 = fmul fast float %7509, %7488
  %7511 = fmul fast float %7510, %7502
  %7512 = fadd fast float %7505, %7492
  %7513 = fadd fast float %7508, %7493
  %7514 = fadd fast float %7511, %7494
  %7515 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7516 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  %7517 = call float @dx.op.unary.f32(i32 7, float %7514)  ; Saturate(value)
  br label %7518

; <label>:7518                                    ; preds = %7495, %7415
  %7519 = phi float [ %7515, %7495 ], [ %7492, %7415 ]
  %7520 = phi float [ %7516, %7495 ], [ %7493, %7415 ]
  %7521 = phi float [ %7517, %7495 ], [ %7494, %7415 ]
  %7522 = fmul fast float %7442, 9.843750e-01
  %7523 = fadd fast float %7522, 7.812500e-03
  %7524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7523, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 2
  %7526 = extractvalue %dx.types.ResRet.f32 %7524, 3
  %7527 = fmul fast float %7525, %5035
  %7528 = fmul fast float %7525, %5036
  %7529 = fmul fast float %7525, %5044
  %7530 = fadd fast float %7527, %7526
  %7531 = fadd fast float %7528, %7526
  %7532 = fadd fast float %7529, %7526
  br i1 %5318, label %7533, label %7556

; <label>:7533                                    ; preds = %7518
  %7534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3838, float %7442, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.ResRet.f32 %7534, 2
  %7538 = fadd fast float %7535, -5.000000e-01
  %7539 = fadd fast float %7536, -5.000000e-01
  %7540 = fadd fast float %7537, -5.000000e-01
  %7541 = fmul fast float %5035, 4.000000e+00
  %7542 = fmul fast float %7541, %7486
  %7543 = fmul fast float %7542, %7538
  %7544 = fmul fast float %5036, 4.000000e+00
  %7545 = fmul fast float %7544, %7487
  %7546 = fmul fast float %7545, %7539
  %7547 = fmul fast float %5044, 4.000000e+00
  %7548 = fmul fast float %7547, %7488
  %7549 = fmul fast float %7548, %7540
  %7550 = fadd fast float %7543, %7530
  %7551 = fadd fast float %7546, %7531
  %7552 = fadd fast float %7549, %7532
  %7553 = call float @dx.op.unary.f32(i32 7, float %7550)  ; Saturate(value)
  %7554 = call float @dx.op.unary.f32(i32 7, float %7551)  ; Saturate(value)
  %7555 = call float @dx.op.unary.f32(i32 7, float %7552)  ; Saturate(value)
  br label %7556

; <label>:7556                                    ; preds = %7533, %7518
  %7557 = phi float [ %7553, %7533 ], [ %7530, %7518 ]
  %7558 = phi float [ %7554, %7533 ], [ %7531, %7518 ]
  %7559 = phi float [ %7555, %7533 ], [ %7532, %7518 ]
  %7560 = call float @dx.op.binary.f32(i32 35, float %7558, float %7559)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 35, float %7557, float %7560)  ; FMax(a,b)
  %7562 = fsub fast float 1.000000e+00, %7561
  %7563 = fmul fast float %7519, %7477
  %7564 = fmul fast float %7520, %7477
  %7565 = fmul fast float %7521, %7477
  %7566 = fsub fast float 1.000000e+00, %7443
  %7567 = bitcast float %7566 to i32
  %7568 = sitofp i32 %7567 to float
  %7569 = fmul fast float %7568, 5.000000e+00
  %7570 = fadd fast float %7569, 0xC1EFBF8940000000
  %7571 = fptosi float %7570 to i32
  %7572 = bitcast i32 %7571 to float
  %7573 = fmul fast float %7572, %3839
  %7574 = fmul fast float %7562, %7573
  %7575 = fmul fast float %7574, %5860
  %7576 = fmul fast float %7574, %5861
  %7577 = fmul fast float %7574, %5862
  %7578 = fadd fast float %7575, %7563
  %7579 = fadd fast float %7576, %7564
  %7580 = fadd fast float %7577, %7565
  %7581 = fmul fast float %7449, %7431
  %7582 = fmul fast float %7581, %7562
  %7583 = fmul fast float %7449, %7432
  %7584 = fmul fast float %7583, %7562
  %7585 = fmul fast float %7449, %7433
  %7586 = fmul fast float %7585, %7562
  %7587 = fmul fast float %7581, %7578
  %7588 = fmul fast float %7583, %7579
  %7589 = fmul fast float %7585, %7580
  %7590 = fadd fast float %7582, %5844
  %7591 = fmul fast float %7590, %3835
  %7592 = fadd fast float %7584, %5845
  %7593 = fmul fast float %7592, %3835
  %7594 = fadd fast float %7586, %5846
  %7595 = fmul fast float %7594, %3835
  %7596 = fadd fast float %7587, %5887
  %7597 = fmul fast float %7596, %3835
  %7598 = fadd fast float %7588, %5890
  %7599 = fmul fast float %7598, %3835
  %7600 = fadd fast float %7589, %5893
  %7601 = fmul fast float %7600, %3835
  br label %7602

; <label>:7602                                    ; preds = %7556, %7349, %5840
  %7603 = phi float [ %5888, %5840 ], [ %5888, %7349 ], [ %7597, %7556 ]
  %7604 = phi float [ %5891, %5840 ], [ %5891, %7349 ], [ %7599, %7556 ]
  %7605 = phi float [ %5894, %5840 ], [ %5894, %7349 ], [ %7601, %7556 ]
  %7606 = phi float [ %5883, %5840 ], [ %5883, %7349 ], [ %7591, %7556 ]
  %7607 = phi float [ %5884, %5840 ], [ %5884, %7349 ], [ %7593, %7556 ]
  %7608 = phi float [ %5885, %5840 ], [ %5885, %7349 ], [ %7595, %7556 ]
  %7609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.i32 %7609, 0
  %7611 = icmp eq i32 %7610, 0
  br i1 %7611, label %8275, label %7612

; <label>:7612                                    ; preds = %7602
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 2
  %7615 = extractvalue %dx.types.CBufRet.f32 %7613, 3
  %7616 = fmul fast float %7614, %121
  %7617 = fmul fast float %7615, %122
  %7618 = fptoui float %7616 to i32
  %7619 = fptoui float %7617 to i32
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7624 = fadd fast float %108, -4.000000e+00
  %7625 = call float @dx.op.binary.f32(i32 35, float %7624, float 0.000000e+00)  ; FMax(a,b)
  %7626 = fadd fast float %7625, %7621
  %7627 = fmul fast float %7626, %7622
  %7628 = call float @dx.op.unary.f32(i32 23, float %7627)  ; Log(value)
  %7629 = fmul fast float %7628, %7623
  %7630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.f32 %7630, 2
  %7632 = fmul fast float %7629, %7631
  %7633 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.i32 %7634, 1
  %7636 = add i32 %7635, -1
  %7637 = uitofp i32 %7635 to float
  %7638 = fmul fast float %7637, %7633
  %7639 = fptoui float %7638 to i32
  %7640 = call i32 @dx.op.binary.i32(i32 40, i32 %7639, i32 %7636)  ; UMin(a,b)
  %7641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.i32 %7641, 2
  %7643 = extractvalue %dx.types.CBufRet.i32 %7641, 3
  %7644 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7619, i32 %7642, i32 %7618)  ; UMad(a,b,c)
  %7645 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7640, i32 %7643, i32 %7644)  ; UMad(a,b,c)
  %7646 = add nsw i32 %7610, -1
  %7647 = call i32 @dx.op.binary.i32(i32 37, i32 %7646, i32 0)  ; IMax(a,b)
  %7648 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %7649 = fptoui float %7648 to i32
  %7650 = lshr i32 %7649, 5
  %7651 = call i32 @dx.op.binary.i32(i32 40, i32 %7650, i32 8191)  ; UMin(a,b)
  %7652 = shl i32 %7651, 2
  %7653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.i32 %7653, 0
  %7655 = lshr i32 %7654, 16
  %7656 = and i32 %7654, 65535
  %7657 = lshr i32 %7654, 21
  %7658 = lshr i32 %7656, 5
  %7659 = call i32 @dx.op.binary.i32(i32 40, i32 %7658, i32 %7647)  ; UMin(a,b)
  %7660 = icmp ugt i32 %7657, %7659
  br i1 %7660, label %8275, label %7661

; <label>:7661                                    ; preds = %7612
  br label %7662

; <label>:7662                                    ; preds = %8265, %7661
  %7663 = phi i32 [ %8272, %8265 ], [ %7657, %7661 ]
  %7664 = phi float [ %8266, %8265 ], [ %7603, %7661 ]
  %7665 = phi float [ %8267, %8265 ], [ %7604, %7661 ]
  %7666 = phi float [ %8268, %8265 ], [ %7605, %7661 ]
  %7667 = phi float [ %8269, %8265 ], [ %7606, %7661 ]
  %7668 = phi float [ %8270, %8265 ], [ %7607, %7661 ]
  %7669 = phi float [ %8271, %8265 ], [ %7608, %7661 ]
  %7670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.i32 %7670, 0
  %7672 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7645, i32 %7671, i32 %7663)  ; UMad(a,b,c)
  %7673 = shl i32 %7672, 2
  %7674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7673, i32 undef)  ; BufferLoad(srv,index,wot)
  %7675 = extractvalue %dx.types.ResRet.i32 %7674, 0
  %7676 = shl i32 %7663, 5
  %7677 = sub nsw i32 %7655, %7676
  %7678 = call i32 @dx.op.binary.i32(i32 37, i32 %7677, i32 0)  ; IMax(a,b)
  %7679 = call i32 @dx.op.binary.i32(i32 38, i32 %7678, i32 31)  ; IMin(a,b)
  %7680 = sub nsw i32 1, %7655
  %7681 = add nsw i32 %7680, %7656
  %7682 = call i32 @dx.op.binary.i32(i32 37, i32 %7681, i32 0)  ; IMax(a,b)
  %7683 = call i32 @dx.op.binary.i32(i32 38, i32 %7682, i32 32)  ; IMin(a,b)
  %7684 = and i32 %7683, 31
  %7685 = shl i32 -1, %7684
  %7686 = xor i32 %7685, -1
  %7687 = and i32 %7679, 31
  %7688 = shl i32 %7686, %7687
  %7689 = icmp eq i32 %7683, 32
  %7690 = select i1 %7689, i32 -1, i32 %7688
  %7691 = and i32 %7690, %7675
  %7692 = icmp eq i32 %7691, 0
  br i1 %7692, label %8265, label %7693

; <label>:7693                                    ; preds = %7662
  br label %7694

; <label>:7694                                    ; preds = %7828, %7693
  %7695 = phi i32 [ %7706, %7828 ], [ %7691, %7693 ]
  %7696 = phi float [ %7829, %7828 ], [ %7664, %7693 ]
  %7697 = phi float [ %7830, %7828 ], [ %7665, %7693 ]
  %7698 = phi float [ %7831, %7828 ], [ %7666, %7693 ]
  %7699 = phi float [ %7832, %7828 ], [ %7667, %7693 ]
  %7700 = phi float [ %7833, %7828 ], [ %7668, %7693 ]
  %7701 = phi float [ %7834, %7828 ], [ %7669, %7693 ]
  %7702 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7695)  ; FirstbitLo(value)
  %7703 = add i32 %7702, %7676
  %7704 = and i32 %7702, 31
  %7705 = shl i32 1, %7704
  %7706 = xor i32 %7705, %7695
  %7707 = mul i32 %7703, 112
  %7708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7707, i32 undef)  ; BufferLoad(srv,index,wot)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = or i32 %7707, 12
  %7713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7712, i32 undef)  ; BufferLoad(srv,index,wot)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = add i32 %7707, 16
  %7716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7715, i32 undef)  ; BufferLoad(srv,index,wot)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = extractvalue %dx.types.ResRet.f32 %7716, 1
  %7719 = extractvalue %dx.types.ResRet.f32 %7716, 2
  %7720 = add i32 %7707, 28
  %7721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7720, i32 undef)  ; BufferLoad(srv,index,wot)
  %7722 = extractvalue %dx.types.ResRet.i32 %7721, 0
  %7723 = add i32 %7707, 44
  %7724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7723, i32 undef)  ; BufferLoad(srv,index,wot)
  %7725 = extractvalue %dx.types.ResRet.f32 %7724, 0
  %7726 = add i32 %7707, 48
  %7727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7726, i32 undef)  ; BufferLoad(srv,index,wot)
  %7728 = extractvalue %dx.types.ResRet.f32 %7727, 0
  %7729 = extractvalue %dx.types.ResRet.f32 %7727, 1
  %7730 = extractvalue %dx.types.ResRet.f32 %7727, 2
  %7731 = extractvalue %dx.types.ResRet.f32 %7727, 3
  %7732 = add i32 %7707, 64
  %7733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7732, i32 undef)  ; BufferLoad(srv,index,wot)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.ResRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.ResRet.f32 %7733, 2
  %7737 = extractvalue %dx.types.ResRet.f32 %7733, 3
  %7738 = add i32 %7707, 80
  %7739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7738, i32 undef)  ; BufferLoad(srv,index,wot)
  %7740 = extractvalue %dx.types.ResRet.f32 %7739, 1
  %7741 = extractvalue %dx.types.ResRet.f32 %7739, 2
  %7742 = add i32 %7707, 92
  %7743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7742, i32 undef)  ; BufferLoad(srv,index,wot)
  %7744 = extractvalue %dx.types.ResRet.i32 %7743, 0
  %7745 = call float @dx.op.dot3.f32(i32 55, float %7709, float %7710, float %7711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7746 = select i1 %263, float %7740, float %7709
  %7747 = select i1 %263, float %7745, float %7710
  %7748 = select i1 %263, float %7741, float %7711
  %7749 = and i32 %7744, 65535
  %7750 = uitofp i32 %7749 to float
  %7751 = lshr i32 %7744, 16
  %7752 = uitofp i32 %7751 to float
  %7753 = and i32 %7722, 65535
  %7754 = and i32 %7722, 50331648
  %7755 = icmp eq i32 %7754, 33554432
  %7756 = fsub fast float %7728, %204
  %7757 = fsub fast float %7729, %205
  %7758 = fsub fast float %7730, %206
  %7759 = call float @dx.op.dot3.f32(i32 55, float %7756, float %7757, float %7758, float %7756, float %7757, float %7758)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = call float @dx.op.unary.f32(i32 24, float %7759)  ; Sqrt(value)
  %7761 = fdiv fast float 1.000000e+00, %7760
  %7762 = fmul fast float %7761, %7756
  %7763 = fmul fast float %7761, %7757
  %7764 = fmul fast float %7761, %7758
  %7765 = fadd fast float %7760, %7714
  %7766 = fdiv fast float 1.000000e+00, %7765
  %7767 = fmul float %7725, %7766
  %7768 = fmul float %7767, %7767
  %7769 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  br i1 %7755, label %7770, label %7791

; <label>:7770                                    ; preds = %7694
  %7771 = fmul fast float %7736, %7717
  %7772 = fmul fast float %7736, %7718
  %7773 = fmul fast float %7736, %7719
  %7774 = fadd fast float %7756, %7771
  %7775 = fadd fast float %7757, %7772
  %7776 = fadd fast float %7758, %7773
  %7777 = call float @dx.op.dot3.f32(i32 55, float %7774, float %7775, float %7776, float %7774, float %7775, float %7776)  ; Dot3(ax,ay,az,bx,by,bz)
  %7778 = call float @dx.op.unary.f32(i32 25, float %7777)  ; Rsqrt(value)
  %7779 = fmul fast float %7778, %7774
  %7780 = fmul fast float %7778, %7775
  %7781 = fmul fast float %7778, %7776
  %7782 = fsub fast float %204, %7728
  %7783 = fsub fast float %205, %7729
  %7784 = fsub fast float %206, %7730
  %7785 = fsub fast float -0.000000e+00, %7782
  %7786 = fsub fast float -0.000000e+00, %7783
  %7787 = fsub fast float -0.000000e+00, %7784
  %7788 = call float @dx.op.dot3.f32(i32 55, float %7785, float %7786, float %7787, float %7717, float %7718, float %7719)  ; Dot3(ax,ay,az,bx,by,bz)
  %7789 = fcmp fast ogt float %7788, 0.000000e+00
  %7790 = uitofp i1 %7789 to float
  br label %7791

; <label>:7791                                    ; preds = %7770, %7694
  %7792 = phi float [ %7790, %7770 ], [ 1.000000e+00, %7694 ]
  %7793 = phi float [ %7779, %7770 ], [ %7762, %7694 ]
  %7794 = phi float [ %7780, %7770 ], [ %7763, %7694 ]
  %7795 = phi float [ %7781, %7770 ], [ %7764, %7694 ]
  %7796 = call float @dx.op.dot3.f32(i32 55, float %7717, float %7718, float %7719, float %7793, float %7794, float %7795)  ; Dot3(ax,ay,az,bx,by,bz)
  %7797 = fmul fast float %7796, %7796
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = fmul fast float %7799, 5.000000e-01
  %7801 = fcmp fast ogt float %7796, 0.000000e+00
  %7802 = fsub fast float 1.000000e+00, %7800
  %7803 = select i1 %7801, float %7800, float %7802
  %7804 = fmul fast float %7803, %7752
  %7805 = fadd fast float %7804, %7750
  %7806 = fmul fast float %7805, 0x3EF0001000000000
  %7807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7806, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7808 = extractvalue %dx.types.ResRet.f32 %7807, 0
  %7809 = fmul fast float %7796, %7734
  %7810 = fadd fast float %7809, %7735
  %7811 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7812 = select i1 %7755, float 1.000000e+00, float %7811
  %7813 = select i1 %7755, float %7811, float 1.000000e+00
  %7814 = fmul fast float %7760, %7731
  %7815 = fsub fast float 1.000000e+00, %7814
  %7816 = fmul fast float %7815, %7737
  %7817 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7818 = fmul fast float %7817, %7813
  %7819 = fmul fast float %7818, 2.000000e+00
  %7820 = fsub fast float 3.000000e+00, %7819
  %7821 = fmul fast float %7808, %7792
  %7822 = fmul fast float %7818, %7818
  %7823 = fmul fast float %7822, %7821
  %7824 = fmul fast float %7823, %7820
  %7825 = call float @dx.op.binary.f32(i32 36, float %7824, float %7824)  ; FMin(a,b)
  %7826 = call float @dx.op.binary.f32(i32 36, float %7824, float %7825)  ; FMin(a,b)
  %7827 = fcmp fast ogt float %7826, 0.000000e+00
  br i1 %7827, label %7836, label %7828, !dx.controlflow.hints !135

; <label>:7828                                    ; preds = %8221, %7982, %7791
  %7829 = phi float [ %7696, %7982 ], [ %7696, %7791 ], [ %8261, %8221 ]
  %7830 = phi float [ %7697, %7982 ], [ %7697, %7791 ], [ %8262, %8221 ]
  %7831 = phi float [ %7698, %7982 ], [ %7698, %7791 ], [ %8263, %8221 ]
  %7832 = phi float [ %7699, %7982 ], [ %7699, %7791 ], [ %8255, %8221 ]
  %7833 = phi float [ %7700, %7982 ], [ %7700, %7791 ], [ %8256, %8221 ]
  %7834 = phi float [ %7701, %7982 ], [ %7701, %7791 ], [ %8257, %8221 ]
  %7835 = icmp eq i32 %7695, %7705
  br i1 %7835, label %8264, label %7694

; <label>:7836                                    ; preds = %7791
  %7837 = icmp eq i32 %7753, 255
  br i1 %7837, label %7982, label %7838, !dx.controlflow.hints !136

; <label>:7838                                    ; preds = %7836
  %7839 = mul nuw nsw i32 %7753, 176
  %7840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7839, i32 undef)  ; BufferLoad(srv,index,wot)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.ResRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.ResRet.f32 %7840, 2
  %7844 = extractvalue %dx.types.ResRet.f32 %7840, 3
  %7845 = add nuw nsw i32 %7839, 16
  %7846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7845, i32 undef)  ; BufferLoad(srv,index,wot)
  %7847 = extractvalue %dx.types.ResRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.ResRet.f32 %7846, 1
  %7849 = add nuw nsw i32 %7839, 32
  %7850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7849, i32 undef)  ; BufferLoad(srv,index,wot)
  %7851 = extractvalue %dx.types.ResRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.ResRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.ResRet.f32 %7850, 2
  %7854 = add nuw nsw i32 %7839, 48
  %7855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7854, i32 undef)  ; BufferLoad(srv,index,wot)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = extractvalue %dx.types.ResRet.f32 %7855, 3
  %7860 = add nuw nsw i32 %7839, 64
  %7861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7860, i32 undef)  ; BufferLoad(srv,index,wot)
  %7862 = extractvalue %dx.types.ResRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.ResRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.ResRet.f32 %7861, 2
  %7865 = extractvalue %dx.types.ResRet.f32 %7861, 3
  %7866 = add nuw nsw i32 %7839, 80
  %7867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7866, i32 undef)  ; BufferLoad(srv,index,wot)
  %7868 = extractvalue %dx.types.ResRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.ResRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.ResRet.f32 %7867, 2
  %7871 = extractvalue %dx.types.ResRet.f32 %7867, 3
  %7872 = add nuw nsw i32 %7839, 96
  %7873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7872, i32 undef)  ; BufferLoad(srv,index,wot)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = extractvalue %dx.types.ResRet.f32 %7873, 1
  %7876 = extractvalue %dx.types.ResRet.f32 %7873, 2
  %7877 = extractvalue %dx.types.ResRet.f32 %7873, 3
  %7878 = bitcast float %7848 to i32
  %7879 = fmul fast float %7853, %130
  %7880 = fmul fast float %7853, %132
  %7881 = fmul fast float %7853, %134
  %7882 = fadd fast float %7879, %204
  %7883 = fadd fast float %7880, %205
  %7884 = fadd fast float %7881, %206
  %7885 = fmul fast float %7882, %7856
  %7886 = call float @dx.op.tertiary.f32(i32 46, float %7883, float %7862, float %7885)  ; FMad(a,b,c)
  %7887 = call float @dx.op.tertiary.f32(i32 46, float %7884, float %7868, float %7886)  ; FMad(a,b,c)
  %7888 = fadd fast float %7887, %7874
  %7889 = fmul fast float %7882, %7857
  %7890 = call float @dx.op.tertiary.f32(i32 46, float %7883, float %7863, float %7889)  ; FMad(a,b,c)
  %7891 = call float @dx.op.tertiary.f32(i32 46, float %7884, float %7869, float %7890)  ; FMad(a,b,c)
  %7892 = fadd fast float %7891, %7875
  %7893 = fmul fast float %7882, %7858
  %7894 = call float @dx.op.tertiary.f32(i32 46, float %7883, float %7864, float %7893)  ; FMad(a,b,c)
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %7884, float %7870, float %7894)  ; FMad(a,b,c)
  %7896 = fadd fast float %7895, %7876
  %7897 = fmul fast float %7882, %7859
  %7898 = call float @dx.op.tertiary.f32(i32 46, float %7883, float %7865, float %7897)  ; FMad(a,b,c)
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %7884, float %7871, float %7898)  ; FMad(a,b,c)
  %7900 = fadd fast float %7899, %7877
  %7901 = fdiv fast float %7888, %7900
  %7902 = fdiv fast float %7892, %7900
  %7903 = fdiv fast float %7896, %7900
  %7904 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7903)  ; FMax(a,b)
  %7905 = fmul fast float %274, 0x401921FB60000000
  %7906 = call float @dx.op.unary.f32(i32 13, float %7905)  ; Sin(value)
  %7907 = call float @dx.op.unary.f32(i32 12, float %7905)  ; Cos(value)
  %7908 = fmul fast float %7907, %7852
  %7909 = call float @dx.op.tertiary.f32(i32 46, float %7906, float %7852, float 0.000000e+00)  ; FMad(a,b,c)
  %7910 = fmul fast float %7852, %7906
  %7911 = fsub fast float -0.000000e+00, %7910
  %7912 = call float @dx.op.tertiary.f32(i32 46, float %7907, float %7852, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7913

; <label>:7913                                    ; preds = %7913, %7838
  %7914 = phi float [ 0.000000e+00, %7838 ], [ %7946, %7913 ]
  %7915 = phi float [ 0.000000e+00, %7838 ], [ %7948, %7913 ]
  %7916 = phi i32 [ 0, %7838 ], [ %7949, %7913 ]
  %7917 = mul i32 %7916, 2
  %7918 = add i32 0, %7917
  %7919 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7918
  %7920 = load float, float* %7919, align 4
  %7921 = mul i32 %7916, 2
  %7922 = add i32 1, %7921
  %7923 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7922
  %7924 = load float, float* %7923, align 4
  %7925 = fmul fast float %7908, %7920
  %7926 = call float @dx.op.tertiary.f32(i32 46, float %7924, float %7911, float %7925)  ; FMad(a,b,c)
  %7927 = fmul fast float %7920, %7909
  %7928 = call float @dx.op.tertiary.f32(i32 46, float %7924, float %7912, float %7927)  ; FMad(a,b,c)
  %7929 = fadd fast float %7926, %7901
  %7930 = fadd fast float %7928, %7902
  %7931 = fmul fast float %7929, %7847
  %7932 = fmul fast float %7930, %7847
  %7933 = call float @dx.op.binary.f32(i32 35, float %7931, float %7843)  ; FMax(a,b)
  %7934 = call float @dx.op.binary.f32(i32 35, float %7932, float %7843)  ; FMax(a,b)
  %7935 = call float @dx.op.binary.f32(i32 36, float %7933, float %7844)  ; FMin(a,b)
  %7936 = call float @dx.op.binary.f32(i32 36, float %7934, float %7844)  ; FMin(a,b)
  %7937 = fadd fast float %7935, %7841
  %7938 = fadd fast float %7936, %7842
  %7939 = uitofp i32 %7878 to float
  %7940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7937, float %7938, float %7939, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7941 = extractvalue %dx.types.ResRet.f32 %7940, 0
  %7942 = fsub fast float %7941, %7904
  %7943 = fsub fast float %7942, %7851
  %7944 = fcmp fast ogt float %7943, 0.000000e+00
  %7945 = select i1 %7944, float 1.000000e+00, float 0.000000e+00
  %7946 = fadd fast float %7945, %7914
  %7947 = select i1 %7944, float %7943, float 0.000000e+00
  %7948 = fadd fast float %7947, %7915
  %7949 = add nuw nsw i32 %7916, 1
  %7950 = icmp eq i32 %7949, 8
  br i1 %7950, label %7951, label %7913

; <label>:7951                                    ; preds = %7913
  %7952 = fdiv fast float 1.000000e+00, %7946
  %7953 = fmul fast float %7952, %7948
  %7954 = fdiv fast float 1.000000e+00, %7904
  %7955 = fmul fast float %7953, %7954
  %7956 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7957 = call float @dx.op.binary.f32(i32 35, float %7956, float 0.000000e+00)  ; FMax(a,b)
  %7958 = fmul fast float %7946, 1.250000e-01
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = fmul fast float %7959, 2.000000e+00
  %7961 = fadd fast float %7960, -1.000000e+00
  %7962 = fcmp fast ogt float %7961, 0.000000e+00
  %7963 = fcmp fast olt float %7961, 0.000000e+00
  %7964 = zext i1 %7962 to i32
  %7965 = zext i1 %7963 to i32
  %7966 = sub nsw i32 %7964, %7965
  %7967 = sitofp i32 %7966 to float
  %7968 = fmul fast float %7967, %7961
  %7969 = fsub fast float 1.000000e+00, %7968
  %7970 = fmul fast float %7969, %7969
  %7971 = fmul fast float %7970, %7969
  %7972 = fsub fast float %7969, %7971
  %7973 = fmul fast float %7972, %7957
  %7974 = fsub fast float 1.000000e+00, %7971
  %7975 = fsub fast float %7974, %7973
  %7976 = fmul fast float %7967, 5.000000e-01
  %7977 = fmul fast float %7976, %7975
  %7978 = fsub fast float -5.000000e-01, %7977
  %7979 = fmul fast float %7978, %7812
  %7980 = fadd fast float %7979, 1.000000e+00
  %7981 = fmul fast float %7980, %7824
  br label %7982

; <label>:7982                                    ; preds = %7951, %7836
  %7983 = phi float [ %7981, %7951 ], [ %7824, %7836 ]
  %7984 = call float @dx.op.binary.f32(i32 36, float %7983, float %7983)  ; FMin(a,b)
  %7985 = call float @dx.op.binary.f32(i32 36, float %7983, float %7984)  ; FMin(a,b)
  %7986 = fcmp fast ogt float %7985, 0.000000e+00
  br i1 %7986, label %7987, label %7828, !dx.controlflow.hints !137

; <label>:7987                                    ; preds = %7982
  %7988 = fmul fast float %7983, %7746
  %7989 = fmul fast float %7983, %7747
  %7990 = fmul fast float %7983, %7748
  %7991 = fsub fast float %7730, %4242
  %7992 = fcmp fast ogt float %7991, 0.000000e+00
  %7993 = fsub fast float %206, %4242
  %7994 = fcmp fast ogt float %7993, 0.000000e+00
  %7995 = xor i1 %7994, %7992
  %7996 = fsub fast float %4242, %7730
  %7997 = fmul fast float %7996, 2.000000e+00
  %7998 = fadd fast float %7997, %7730
  %7999 = select i1 %7995, float %7730, float %7998
  %8000 = fsub fast float %7999, %206
  %8001 = call float @dx.op.dot3.f32(i32 55, float %7756, float %7757, float %8000, float %7756, float %7757, float %8000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = call float @dx.op.unary.f32(i32 25, float %8001)  ; Rsqrt(value)
  %8003 = fmul fast float %8002, %7756
  %8004 = fmul fast float %8002, %7757
  %8005 = fmul fast float %8002, %8000
  %8006 = fsub fast float %4242, %206
  %8007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8006)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8003, float %8004, float %8005)  ; Dot3(ax,ay,az,bx,by,bz)
  %8009 = fdiv fast float 1.000000e+00, %8008
  %8010 = fmul fast float %8009, %8007
  %8011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7993, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = fcmp fast ogt float %8011, 0.000000e+00
  %8013 = fcmp fast olt float %8011, 0.000000e+00
  %8014 = zext i1 %8012 to i32
  %8015 = zext i1 %8013 to i32
  %8016 = sub nsw i32 %8014, %8015
  %8017 = sitofp i32 %8016 to float
  %8018 = fsub fast float %7999, %4242
  %8019 = call float @dx.op.dot3.f32(i32 55, float %7756, float %7757, float %8018, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8020 = fcmp fast ogt float %8019, 0.000000e+00
  %8021 = fcmp fast olt float %8019, 0.000000e+00
  %8022 = zext i1 %8020 to i32
  %8023 = zext i1 %8021 to i32
  %8024 = sub nsw i32 %8022, %8023
  %8025 = sitofp i32 %8024 to float
  %8026 = fcmp fast une float %8017, %8025
  br i1 %8026, label %8027, label %8037

; <label>:8027                                    ; preds = %7987
  %8028 = fmul fast float %8010, %8005
  %8029 = fmul fast float %8010, %8004
  %8030 = fmul fast float %8010, %8003
  %8031 = fmul fast float %8030, %8030
  %8032 = fmul fast float %8029, %8029
  %8033 = fadd fast float %8031, %8032
  %8034 = fmul fast float %8028, %8028
  %8035 = fadd fast float %8033, %8034
  %8036 = call float @dx.op.unary.f32(i32 24, float %8035)  ; Sqrt(value)
  br label %8049

; <label>:8037                                    ; preds = %7987
  %8038 = icmp slt i32 %8016, 0
  br i1 %8038, label %8039, label %8049

; <label>:8039                                    ; preds = %8037
  %8040 = fsub fast float %204, %7728
  %8041 = fsub fast float %205, %7729
  %8042 = fsub fast float %206, %7999
  %8043 = fmul fast float %8040, %8040
  %8044 = fmul fast float %8041, %8041
  %8045 = fadd fast float %8043, %8044
  %8046 = fmul fast float %8042, %8042
  %8047 = fadd fast float %8045, %8046
  %8048 = call float @dx.op.unary.f32(i32 24, float %8047)  ; Sqrt(value)
  br label %8049

; <label>:8049                                    ; preds = %8039, %8037, %8027
  %8050 = phi float [ %8036, %8027 ], [ %8048, %8039 ], [ 0.000000e+00, %8037 ]
  %8051 = and i1 %7994, %7992
  %8052 = fsub fast float -0.000000e+00, %8050
  %8053 = select i1 %8051, float -0.000000e+00, float %8052
  %8054 = fmul fast float %4239, 0x3FF7154760000000
  %8055 = fmul fast float %8054, %8053
  %8056 = fmul fast float %4240, 0x3FF7154760000000
  %8057 = fmul fast float %8056, %8053
  %8058 = fmul fast float %4241, 0x3FF7154760000000
  %8059 = fmul fast float %8058, %8053
  %8060 = call float @dx.op.unary.f32(i32 21, float %8055)  ; Exp(value)
  %8061 = call float @dx.op.unary.f32(i32 21, float %8057)  ; Exp(value)
  %8062 = call float @dx.op.unary.f32(i32 21, float %8059)  ; Exp(value)
  %8063 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8064 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8065 = call float @dx.op.unary.f32(i32 7, float %8062)  ; Saturate(value)
  %8066 = fmul fast float %7988, %8063
  %8067 = fmul fast float %7989, %8064
  %8068 = fmul fast float %7990, %8065
  %8069 = fsub fast float %7762, %5031
  %8070 = fsub fast float %7763, %5030
  %8071 = fsub fast float %7764, %5029
  %8072 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8070, float %8071, float %8069, float %8070, float %8071)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = call float @dx.op.unary.f32(i32 25, float %8072)  ; Rsqrt(value)
  %8074 = fmul fast float %8073, %8069
  %8075 = fmul fast float %8073, %8070
  %8076 = fmul fast float %8073, %8071
  %8077 = call float @dx.op.dot3.f32(i32 55, float %7762, float %7763, float %7764, float %5038, float %5039, float %5040)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5027, float %5026, float %8074, float %8075, float %8076)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8080 = fmul fast float %8079, %7769
  %8081 = bitcast i32 %5070 to float
  %8082 = fmul fast float %8079, %8079
  %8083 = fmul fast float %8082, %8081
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fmul fast float %8080, %8084
  %8086 = bitcast float %7759 to i32
  %8087 = ashr i32 %8086, 1
  %8088 = sub nsw i32 1597463007, %8087
  %8089 = bitcast i32 %8088 to float
  %8090 = fmul fast float %8089, %7756
  %8091 = fmul fast float %8089, %7757
  %8092 = fmul fast float %8089, %7758
  %8093 = fsub fast float %8090, %5031
  %8094 = fsub fast float %8091, %5030
  %8095 = fsub fast float %8092, %5029
  %8096 = call float @dx.op.dot3.f32(i32 55, float %8093, float %8094, float %8095, float %8093, float %8094, float %8095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8097 = call float @dx.op.unary.f32(i32 25, float %8096)  ; Rsqrt(value)
  %8098 = fmul fast float %8093, %8097
  %8099 = fmul fast float %8094, %8097
  %8100 = fmul fast float %8095, %8097
  %8101 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %8098, float %8099, float %8100)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = fmul fast float %8101, %8101
  %8103 = call float @dx.op.unary.f32(i32 6, float %8077)  ; FAbs(value)
  %8104 = fsub fast float 1.000000e+00, %5064
  %8105 = fmul fast float %5046, %5046
  %8106 = fmul fast float %8105, %8104
  %8107 = fadd fast float %8106, %5064
  %8108 = bitcast float %8107 to i32
  %8109 = ashr i32 %8108, 1
  %8110 = add nsw i32 %8109, 532487669
  %8111 = bitcast i32 %8110 to float
  %8112 = fadd fast float %8111, %5046
  %8113 = fmul fast float %5064, %8102
  %8114 = fsub fast float 1.000000e+00, %8102
  %8115 = fadd fast float %8114, %8113
  %8116 = fmul fast float %8103, %8103
  %8117 = fmul fast float %8116, %8104
  %8118 = fadd fast float %8117, %5064
  %8119 = bitcast float %8118 to i32
  %8120 = ashr i32 %8119, 1
  %8121 = add nsw i32 %8120, 532487669
  %8122 = bitcast i32 %8121 to float
  %8123 = fadd fast float %8122, %8103
  %8124 = fmul fast float %8115, %8115
  %8125 = fmul fast float %8124, %8112
  %8126 = fmul fast float %8125, %8123
  %8127 = fdiv fast float 1.000000e+00, %8126
  %8128 = bitcast float %5064 to i32
  %8129 = sitofp i32 %8128 to float
  %8130 = fmul fast float %8129, 0x3FE7F73180000000
  %8131 = fadd fast float %8130, 0x41AFE27C40000000
  %8132 = fptosi float %8131 to i32
  %8133 = bitcast i32 %8132 to float
  %8134 = fmul fast float %7725, 0x3FD80E9D60000000
  %8135 = fmul fast float %8134, %8089
  %8136 = fadd fast float %8133, %8135
  %8137 = bitcast float %8136 to i32
  %8138 = sub nsw i32 2129859010, %8137
  %8139 = bitcast i32 %8138 to float
  %8140 = fmul fast float %5064, %8127
  %8141 = fmul fast float %8140, %8133
  %8142 = fmul fast float %8141, %8139
  %8143 = call float @dx.op.unary.f32(i32 6, float %8078)  ; FAbs(value)
  %8144 = fsub fast float 1.000000e+00, %8143
  %8145 = bitcast float %8144 to i32
  %8146 = sitofp i32 %8145 to float
  %8147 = fmul fast float %8146, 5.000000e+00
  %8148 = fadd fast float %8147, 0xC1EFBF8940000000
  %8149 = fptosi float %8148 to i32
  %8150 = bitcast i32 %8149 to float
  %8151 = fsub fast float 1.000000e+00, %5035
  %8152 = fsub fast float 1.000000e+00, %5036
  %8153 = fsub fast float 1.000000e+00, %5044
  %8154 = fmul fast float %8150, %8151
  %8155 = fmul fast float %8150, %8152
  %8156 = fmul fast float %8150, %8153
  %8157 = fadd fast float %8154, %5035
  %8158 = fadd fast float %8155, %5036
  %8159 = fadd fast float %8156, %5044
  br i1 %5318, label %8160, label %8183

; <label>:8160                                    ; preds = %8049
  %8161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3838, float %8143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8162 = extractvalue %dx.types.ResRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.ResRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.ResRet.f32 %8161, 2
  %8165 = fadd fast float %8162, -5.000000e-01
  %8166 = fadd fast float %8163, -5.000000e-01
  %8167 = fadd fast float %8164, -5.000000e-01
  %8168 = fmul fast float %5035, 4.000000e+00
  %8169 = fmul fast float %8168, %8151
  %8170 = fmul fast float %8169, %8165
  %8171 = fmul fast float %5036, 4.000000e+00
  %8172 = fmul fast float %8171, %8152
  %8173 = fmul fast float %8172, %8166
  %8174 = fmul fast float %5044, 4.000000e+00
  %8175 = fmul fast float %8174, %8153
  %8176 = fmul fast float %8175, %8167
  %8177 = fadd fast float %8170, %8157
  %8178 = fadd fast float %8173, %8158
  %8179 = fadd fast float %8176, %8159
  %8180 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8182 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  br label %8183

; <label>:8183                                    ; preds = %8160, %8049
  %8184 = phi float [ %8180, %8160 ], [ %8157, %8049 ]
  %8185 = phi float [ %8181, %8160 ], [ %8158, %8049 ]
  %8186 = phi float [ %8182, %8160 ], [ %8159, %8049 ]
  %8187 = fmul fast float %8077, 9.843750e-01
  %8188 = fadd fast float %8187, 7.812500e-03
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8188, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8192 = fmul fast float %8190, %5035
  %8193 = fmul fast float %8190, %5036
  %8194 = fmul fast float %8190, %5044
  %8195 = fadd fast float %8192, %8191
  %8196 = fadd fast float %8193, %8191
  %8197 = fadd fast float %8194, %8191
  br i1 %5318, label %8198, label %8221

; <label>:8198                                    ; preds = %8183
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3838, float %8077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = fadd fast float %8200, -5.000000e-01
  %8204 = fadd fast float %8201, -5.000000e-01
  %8205 = fadd fast float %8202, -5.000000e-01
  %8206 = fmul fast float %5035, 4.000000e+00
  %8207 = fmul fast float %8206, %8151
  %8208 = fmul fast float %8207, %8203
  %8209 = fmul fast float %5036, 4.000000e+00
  %8210 = fmul fast float %8209, %8152
  %8211 = fmul fast float %8210, %8204
  %8212 = fmul fast float %5044, 4.000000e+00
  %8213 = fmul fast float %8212, %8153
  %8214 = fmul fast float %8213, %8205
  %8215 = fadd fast float %8208, %8195
  %8216 = fadd fast float %8211, %8196
  %8217 = fadd fast float %8214, %8197
  %8218 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8219 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8220 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  br label %8221

; <label>:8221                                    ; preds = %8198, %8183
  %8222 = phi float [ %8218, %8198 ], [ %8195, %8183 ]
  %8223 = phi float [ %8219, %8198 ], [ %8196, %8183 ]
  %8224 = phi float [ %8220, %8198 ], [ %8197, %8183 ]
  %8225 = call float @dx.op.binary.f32(i32 35, float %8223, float %8224)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8222, float %8225)  ; FMax(a,b)
  %8227 = fsub fast float 1.000000e+00, %8226
  %8228 = fmul fast float %8184, %8142
  %8229 = fmul fast float %8185, %8142
  %8230 = fmul fast float %8186, %8142
  %8231 = fsub fast float 1.000000e+00, %8078
  %8232 = bitcast float %8231 to i32
  %8233 = sitofp i32 %8232 to float
  %8234 = fmul fast float %8233, 5.000000e+00
  %8235 = fadd fast float %8234, 0xC1EFBF8940000000
  %8236 = fptosi float %8235 to i32
  %8237 = bitcast i32 %8236 to float
  %8238 = fmul fast float %8237, %3839
  %8239 = fmul fast float %8227, %8238
  %8240 = fmul fast float %8239, %5860
  %8241 = fmul fast float %8239, %5861
  %8242 = fmul fast float %8239, %5862
  %8243 = fadd fast float %8240, %8228
  %8244 = fadd fast float %8241, %8229
  %8245 = fadd fast float %8242, %8230
  %8246 = fmul fast float %8066, %3835
  %8247 = fmul fast float %8246, %8085
  %8248 = fmul fast float %8247, %8227
  %8249 = fmul fast float %8067, %3835
  %8250 = fmul fast float %8249, %8085
  %8251 = fmul fast float %8250, %8227
  %8252 = fmul fast float %8068, %3835
  %8253 = fmul fast float %8252, %8085
  %8254 = fmul fast float %8253, %8227
  %8255 = fadd fast float %8248, %7699
  %8256 = fadd fast float %8251, %7700
  %8257 = fadd fast float %8254, %7701
  %8258 = fmul fast float %8247, %8243
  %8259 = fmul fast float %8250, %8244
  %8260 = fmul fast float %8253, %8245
  %8261 = fadd fast float %8258, %7696
  %8262 = fadd fast float %8259, %7697
  %8263 = fadd fast float %8260, %7698
  br label %7828

; <label>:8264                                    ; preds = %7828
  br label %8265

; <label>:8265                                    ; preds = %8264, %7662
  %8266 = phi float [ %7664, %7662 ], [ %7829, %8264 ]
  %8267 = phi float [ %7665, %7662 ], [ %7830, %8264 ]
  %8268 = phi float [ %7666, %7662 ], [ %7831, %8264 ]
  %8269 = phi float [ %7667, %7662 ], [ %7832, %8264 ]
  %8270 = phi float [ %7668, %7662 ], [ %7833, %8264 ]
  %8271 = phi float [ %7669, %7662 ], [ %7834, %8264 ]
  %8272 = add i32 %7663, 1
  %8273 = icmp ugt i32 %8272, %7659
  br i1 %8273, label %8274, label %7662

; <label>:8274                                    ; preds = %8265
  br label %8275

; <label>:8275                                    ; preds = %8274, %7612, %7602
  %8276 = phi float [ %7603, %7602 ], [ %7603, %7612 ], [ %8266, %8274 ]
  %8277 = phi float [ %7604, %7602 ], [ %7604, %7612 ], [ %8267, %8274 ]
  %8278 = phi float [ %7605, %7602 ], [ %7605, %7612 ], [ %8268, %8274 ]
  %8279 = phi float [ %7606, %7602 ], [ %7606, %7612 ], [ %8269, %8274 ]
  %8280 = phi float [ %7607, %7602 ], [ %7607, %7612 ], [ %8270, %8274 ]
  %8281 = phi float [ %7608, %7602 ], [ %7608, %7612 ], [ %8271, %8274 ]
  %8282 = fmul fast float %3835, %3835
  %8283 = fsub fast float 1.000000e+00, %8282
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8283, float %8283, float %8283, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = fsub fast float 1.000000e+00, %8284
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = fmul fast float %8287, %5866
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 3
  %8291 = fsub fast float 1.000000e+00, %3842
  %8292 = call float @dx.op.unary.f32(i32 7, float %8291)  ; Saturate(value)
  %8293 = fadd fast float %8281, %3841
  %8294 = fmul fast float %8293, %3842
  %8295 = fmul fast float %8292, %8290
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 3
  %8298 = fmul fast float %8279, %5032
  %8299 = fmul fast float %8280, %5033
  %8300 = fmul fast float %8281, %5034
  %8301 = fcmp fast ogt float %108, %226
  %8302 = and i1 %8301, %4245
  %8303 = or i1 %4251, %8302
  %8304 = icmp eq i32 %4244, 2
  %8305 = fcmp fast ole float %108, %226
  %8306 = and i1 %8305, %8304
  %8307 = or i1 %8306, %8303
  br i1 %8302, label %8308, label %8565

; <label>:8308                                    ; preds = %8275
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 2
  %8311 = extractvalue %dx.types.CBufRet.f32 %8309, 3
  %8312 = fmul fast float %8310, %121
  %8313 = fmul fast float %8311, %122
  %8314 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8315 = call float @dx.op.unary.f32(i32 7, float %8313)  ; Saturate(value)
  %8316 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8314, float %8315, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8317 = extractvalue %dx.types.ResRet.f32 %8316, 0
  %8318 = extractvalue %dx.types.ResRet.f32 %8316, 1
  %8319 = extractvalue %dx.types.ResRet.f32 %8316, 2
  %8320 = extractvalue %dx.types.ResRet.f32 %8316, 3
  %8321 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8314, float %8315, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8322 = extractvalue %dx.types.ResRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.ResRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.ResRet.f32 %8321, 2
  %8325 = extractvalue %dx.types.ResRet.f32 %8321, 3
  %8326 = call float @dx.op.binary.f32(i32 35, float %8318, float %8319)  ; FMax(a,b)
  %8327 = call float @dx.op.binary.f32(i32 35, float %8317, float %8326)  ; FMax(a,b)
  %8328 = call float @dx.op.binary.f32(i32 35, float %8327, float %8320)  ; FMax(a,b)
  %8329 = call float @dx.op.binary.f32(i32 36, float %8323, float %8324)  ; FMin(a,b)
  %8330 = call float @dx.op.binary.f32(i32 36, float %8322, float %8329)  ; FMin(a,b)
  %8331 = call float @dx.op.binary.f32(i32 36, float %8330, float %8325)  ; FMin(a,b)
  %8332 = fmul fast float %8328, 2.550000e+02
  %8333 = fadd fast float %8332, 0x3F70101020000000
  %8334 = fptoui float %8333 to i32
  %8335 = fmul fast float %8331, 2.550000e+02
  %8336 = fadd fast float %8335, 0x3F70101020000000
  %8337 = fptoui float %8336 to i32
  %8338 = icmp ult i32 %8334, %8337
  br i1 %8338, label %8339, label %8507

; <label>:8339                                    ; preds = %8308
  %8340 = fcmp fast ogt float %107, 9.843750e-01
  %8341 = fadd fast float %108, -4.000000e+00
  %8342 = select i1 %8340, float -4.000000e+00, float %8341
  %8343 = call float @dx.op.binary.f32(i32 35, float %8342, float 0.000000e+00)  ; FMax(a,b)
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = fadd fast float %8345, %8343
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = fmul fast float %8346, %8347
  %8349 = call float @dx.op.unary.f32(i32 23, float %8348)  ; Log(value)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8351 = fmul fast float %8350, %8349
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8354 = fmul fast float %8351, %8353
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = uitofp i32 %8334 to float
  %8357 = uitofp i32 %8337 to float
  %8358 = fadd fast float %8356, 5.000000e-01
  %8359 = fadd fast float %8357, 5.000000e-01
  %8360 = fmul fast float %8353, %8358
  %8361 = fmul fast float %8353, %8359
  %8362 = fadd fast float %8360, 0x3F0FFB4800000000
  %8363 = fadd fast float %8361, 0xBF0FFB4800000000
  %8364 = call float @dx.op.binary.f32(i32 35, float %8355, float %8362)  ; FMax(a,b)
  %8365 = call float @dx.op.binary.f32(i32 36, float %8364, float %8363)  ; FMin(a,b)
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 1
  %8368 = extractvalue %dx.types.CBufRet.f32 %8366, 2
  %8369 = extractvalue %dx.types.CBufRet.f32 %8366, 0
  %8370 = fmul fast float %8367, %8365
  %8371 = fadd fast float %8369, %8370
  %8372 = fadd fast float %8369, %8368
  %8373 = fsub fast float %8367, %8368
  %8374 = fadd fast float %8373, %8369
  %8375 = call float @dx.op.binary.f32(i32 35, float %8371, float %8372)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 36, float %8375, float %8374)  ; FMin(a,b)
  %8377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8314, float %8315, float %8376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8378 = extractvalue %dx.types.ResRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.ResRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.ResRet.f32 %8377, 2
  %8381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.i32 %8381, 0
  %8383 = extractvalue %dx.types.CBufRet.i32 %8381, 1
  %8384 = uitofp i32 %8382 to float
  %8385 = uitofp i32 %8383 to float
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.CBufRet.f32 %8386, 1
  %8389 = fmul fast float %8384, %8314
  %8390 = fmul fast float %8385, %8315
  %8391 = fadd fast float %8389, -5.000000e-01
  %8392 = fadd fast float %8390, -5.000000e-01
  %8393 = call float @dx.op.unary.f32(i32 22, float %8391)  ; Frc(value)
  %8394 = call float @dx.op.unary.f32(i32 22, float %8392)  ; Frc(value)
  %8395 = fmul fast float %8393, %8393
  %8396 = fmul fast float %8395, %8393
  %8397 = fsub fast float 3.000000e+00, %8393
  %8398 = fmul fast float %8395, %8397
  %8399 = fmul fast float %8393, 3.000000e+00
  %8400 = fmul fast float %8396, 3.000000e+00
  %8401 = fmul fast float %8395, 6.000000e+00
  %8402 = fsub fast float %8400, %8401
  %8403 = fadd fast float %8402, 4.000000e+00
  %8404 = fmul fast float %8403, 0x3FC5555560000000
  %8405 = fmul fast float %8396, -3.000000e+00
  %8406 = fadd fast float %8395, %8393
  %8407 = fmul fast float %8406, 3.000000e+00
  %8408 = fadd fast float %8405, 1.000000e+00
  %8409 = fadd fast float %8408, %8407
  %8410 = fmul fast float %8396, 0x3FC5555560000000
  %8411 = fmul fast float %8394, %8394
  %8412 = fmul fast float %8411, %8394
  %8413 = fsub fast float 3.000000e+00, %8394
  %8414 = fmul fast float %8411, %8413
  %8415 = fmul fast float %8394, 3.000000e+00
  %8416 = fmul fast float %8412, 3.000000e+00
  %8417 = fmul fast float %8411, 6.000000e+00
  %8418 = fsub fast float %8416, %8417
  %8419 = fadd fast float %8418, 4.000000e+00
  %8420 = fmul fast float %8419, 0x3FC5555560000000
  %8421 = fmul fast float %8412, -3.000000e+00
  %8422 = fadd fast float %8411, %8394
  %8423 = fmul fast float %8422, 3.000000e+00
  %8424 = fadd fast float %8421, 1.000000e+00
  %8425 = fadd fast float %8424, %8423
  %8426 = fmul fast float %8412, 0x3FC5555560000000
  %8427 = fadd fast float %8393, 1.000000e+00
  %8428 = fsub fast float 1.000000e+00, %8399
  %8429 = fadd fast float %8428, %8398
  %8430 = fadd fast float %8429, %8403
  %8431 = fmul fast float %8430, 0x3FC5555560000000
  %8432 = fdiv fast float %8404, %8431
  %8433 = fsub fast float %8427, %8432
  %8434 = fsub fast float 1.000000e+00, %8393
  %8435 = fadd fast float %8409, %8396
  %8436 = fmul fast float %8435, 0x3FC5555560000000
  %8437 = fdiv fast float %8410, %8436
  %8438 = fadd fast float %8434, %8437
  %8439 = fadd fast float %8394, 1.000000e+00
  %8440 = fsub fast float 1.000000e+00, %8415
  %8441 = fadd fast float %8440, %8414
  %8442 = fadd fast float %8441, %8419
  %8443 = fmul fast float %8442, 0x3FC5555560000000
  %8444 = fdiv fast float %8420, %8443
  %8445 = fsub fast float %8439, %8444
  %8446 = fsub fast float 1.000000e+00, %8394
  %8447 = fadd fast float %8425, %8412
  %8448 = fmul fast float %8447, 0x3FC5555560000000
  %8449 = fdiv fast float %8426, %8448
  %8450 = fadd fast float %8449, %8446
  %8451 = fmul fast float %8433, %8387
  %8452 = fsub fast float %8314, %8451
  %8453 = fmul fast float %8438, %8387
  %8454 = fadd fast float %8453, %8314
  %8455 = fmul fast float %8450, %8388
  %8456 = fadd fast float %8455, %8315
  %8457 = fmul fast float %8445, %8388
  %8458 = fsub fast float %8315, %8457
  %8459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8452, float %8458, float %8376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8460 = extractvalue %dx.types.ResRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.ResRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.ResRet.f32 %8459, 2
  %8463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8454, float %8458, float %8376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8464 = extractvalue %dx.types.ResRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.ResRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.ResRet.f32 %8463, 2
  %8467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8452, float %8456, float %8376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8468 = extractvalue %dx.types.ResRet.f32 %8467, 0
  %8469 = extractvalue %dx.types.ResRet.f32 %8467, 1
  %8470 = extractvalue %dx.types.ResRet.f32 %8467, 2
  %8471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8454, float %8456, float %8376, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8472 = extractvalue %dx.types.ResRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.ResRet.f32 %8471, 1
  %8474 = extractvalue %dx.types.ResRet.f32 %8471, 2
  %8475 = fsub fast float %8468, %8460
  %8476 = fsub fast float %8469, %8461
  %8477 = fsub fast float %8470, %8462
  %8478 = fmul fast float %8475, %8448
  %8479 = fmul fast float %8476, %8448
  %8480 = fmul fast float %8477, %8448
  %8481 = fadd fast float %8478, %8460
  %8482 = fadd fast float %8479, %8461
  %8483 = fadd fast float %8480, %8462
  %8484 = fsub fast float %8472, %8464
  %8485 = fsub fast float %8473, %8465
  %8486 = fsub fast float %8474, %8466
  %8487 = fmul fast float %8484, %8448
  %8488 = fmul fast float %8485, %8448
  %8489 = fmul fast float %8486, %8448
  %8490 = fsub fast float %8464, %8481
  %8491 = fadd fast float %8490, %8487
  %8492 = fsub fast float %8465, %8482
  %8493 = fadd fast float %8492, %8488
  %8494 = fsub fast float %8466, %8483
  %8495 = fadd fast float %8494, %8489
  %8496 = fmul fast float %8491, %8436
  %8497 = fmul fast float %8493, %8436
  %8498 = fmul fast float %8495, %8436
  %8499 = fadd fast float %8496, %8481
  %8500 = fadd fast float %8497, %8482
  %8501 = fadd fast float %8498, %8483
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8504 = fmul fast float %8499, %8503
  %8505 = fmul fast float %8500, %8503
  %8506 = fmul fast float %8501, %8503
  br label %8507

; <label>:8507                                    ; preds = %8339, %8308
  %8508 = phi float [ %8378, %8339 ], [ 1.000000e+00, %8308 ]
  %8509 = phi float [ %8379, %8339 ], [ 1.000000e+00, %8308 ]
  %8510 = phi float [ %8380, %8339 ], [ 1.000000e+00, %8308 ]
  %8511 = phi float [ %8504, %8339 ], [ 0.000000e+00, %8308 ]
  %8512 = phi float [ %8505, %8339 ], [ 0.000000e+00, %8308 ]
  %8513 = phi float [ %8506, %8339 ], [ 0.000000e+00, %8308 ]
  %8514 = fmul fast float %8511, %8285
  %8515 = fmul fast float %8512, %8285
  %8516 = fmul fast float %8513, %8285
  %8517 = call float @dx.op.dot3.f32(i32 55, float %8508, float %8509, float %8510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8518 = call float @dx.op.dot3.f32(i32 55, float %8514, float %8515, float %8516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8519 = select i1 %263, float %8517, float %8508
  %8520 = select i1 %263, float %8517, float %8509
  %8521 = select i1 %263, float 1.000000e+00, float %8510
  %8522 = select i1 %263, float %8518, float %8514
  %8523 = select i1 %263, float 0.000000e+00, float %8515
  %8524 = select i1 %263, float 0.000000e+00, float %8516
  %8525 = fmul fast float %8519, %8298
  %8526 = fmul fast float %8520, %8299
  %8527 = fmul fast float %8521, %8300
  %8528 = fadd fast float %8525, %8522
  %8529 = fadd fast float %8526, %8523
  %8530 = fadd fast float %8524, %8527
  %8531 = fmul fast float %8519, %8276
  %8532 = fmul fast float %8520, %8277
  %8533 = fmul fast float %8521, %8278
  %8534 = fmul fast float %153, %8310
  %8535 = fmul fast float %155, %8311
  %8536 = fsub fast float 1.000000e+00, %8534
  %8537 = fsub fast float 1.000000e+00, %8535
  %8538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8539 = extractvalue %dx.types.CBufRet.f32 %8538, 0
  %8540 = extractvalue %dx.types.CBufRet.f32 %8538, 1
  %8541 = extractvalue %dx.types.CBufRet.f32 %8538, 2
  %8542 = fmul fast float %8536, %8539
  %8543 = fmul fast float %8536, %8540
  %8544 = fmul fast float %8536, %8541
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = extractvalue %dx.types.CBufRet.f32 %8545, 2
  %8549 = fmul fast float %8537, %8546
  %8550 = fmul fast float %8537, %8547
  %8551 = fmul fast float %8537, %8548
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = fadd fast float %8549, %8553
  %8557 = fadd fast float %8556, %8542
  %8558 = fadd fast float %8550, %8554
  %8559 = fadd fast float %8558, %8543
  %8560 = fadd fast float %8551, %8555
  %8561 = fadd fast float %8560, %8544
  %8562 = fmul fast float %8557, %226
  %8563 = fmul fast float %8559, %226
  %8564 = fmul fast float %8561, %226
  br label %8565

; <label>:8565                                    ; preds = %8507, %8275
  %8566 = phi float [ %8562, %8507 ], [ %204, %8275 ]
  %8567 = phi float [ %8563, %8507 ], [ %205, %8275 ]
  %8568 = phi float [ %8564, %8507 ], [ %206, %8275 ]
  %8569 = phi float [ %226, %8507 ], [ %108, %8275 ]
  %8570 = phi float [ %8528, %8507 ], [ %8298, %8275 ]
  %8571 = phi float [ %8529, %8507 ], [ %8299, %8275 ]
  %8572 = phi float [ %8530, %8507 ], [ %8300, %8275 ]
  %8573 = phi float [ %8531, %8507 ], [ %8276, %8275 ]
  %8574 = phi float [ %8532, %8507 ], [ %8277, %8275 ]
  %8575 = phi float [ %8533, %8507 ], [ %8278, %8275 ]
  %8576 = phi float [ %8508, %8507 ], [ 1.000000e+00, %8275 ]
  br i1 %8307, label %9731, label %8577

; <label>:8577                                    ; preds = %8565
  %8578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8579 = extractvalue %dx.types.CBufRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.CBufRet.f32 %8578, 1
  %8581 = extractvalue %dx.types.CBufRet.f32 %8578, 2
  %8582 = extractvalue %dx.types.CBufRet.f32 %8578, 3
  %8583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8584 = extractvalue %dx.types.CBufRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.CBufRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.CBufRet.f32 %8583, 2
  %8587 = extractvalue %dx.types.CBufRet.f32 %8583, 3
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8592 = extractvalue %dx.types.CBufRet.f32 %8588, 3
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.CBufRet.f32 %8593, 2
  %8597 = extractvalue %dx.types.CBufRet.f32 %8593, 3
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 3
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 3
  %8602 = extractvalue %dx.types.CBufRet.f32 %8600, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8600, 1
  %8604 = extractvalue %dx.types.CBufRet.f32 %8600, 2
  %8605 = fcmp fast olt float %8604, -5.000000e-01
  %8606 = call float @dx.op.dot3.f32(i32 55, float %8566, float %8567, float %8568, float %8566, float %8567, float %8568)  ; Dot3(ax,ay,az,bx,by,bz)
  %8607 = call float @dx.op.unary.f32(i32 25, float %8606)  ; Rsqrt(value)
  %8608 = fmul fast float %8607, %8606
  %8609 = fmul fast float %8607, %8566
  %8610 = fmul fast float %8607, %8567
  %8611 = fmul fast float %8607, %8568
  %8612 = fadd fast float %8608, %8582
  %8613 = call float @dx.op.dot3.f32(i32 55, float %8609, float %8610, float %8611, float %8579, float %8580, float %8581)  ; Dot3(ax,ay,az,bx,by,bz)
  %8614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.i32 %8614, 1
  %8616 = and i32 %8615, 1
  %8617 = icmp ne i32 %8616, 0
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 2
  %8620 = fcmp fast ogt float %8619, 0.000000e+00
  %8621 = and i1 %8617, %8620
  br i1 %8621, label %8622, label %9028, !dx.controlflow.hints !138

; <label>:8622                                    ; preds = %8577
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8625, 2
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8629 = fsub fast float %8626, %8628
  %8630 = and i32 %8615, 2
  %8631 = extractvalue %dx.types.CBufRet.i32 %8614, 0
  %8632 = call i32 @dx.op.binary.i32(i32 40, i32 %8631, i32 3)  ; UMin(a,b)
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.CBufRet.f32 %8633, 1
  %8636 = extractvalue %dx.types.CBufRet.f32 %8627, 0
  %8637 = extractvalue %dx.types.CBufRet.f32 %8627, 1
  %8638 = fsub fast float %8634, %8636
  %8639 = fsub fast float %8635, %8637
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = fcmp fast ogt float %8641, 0.000000e+00
  %8643 = fsub fast float -0.000000e+00, %8638
  %8644 = fsub fast float -0.000000e+00, %8639
  %8645 = call float @dx.op.dot2.f32(i32 54, float %8609, float %8610, float %8609, float %8610)  ; Dot2(ax,ay,bx,by)
  %8646 = call float @dx.op.dot2.f32(i32 54, float %8609, float %8610, float %8643, float %8644)  ; Dot2(ax,ay,bx,by)
  %8647 = fmul fast float %8646, 2.000000e+00
  %8648 = call float @dx.op.dot2.f32(i32 54, float %8643, float %8644, float %8643, float %8644)  ; Dot2(ax,ay,bx,by)
  %8649 = fmul fast float %8641, %8641
  %8650 = fsub fast float %8648, %8649
  %8651 = fmul fast float %8647, %8647
  %8652 = fmul fast float %8645, 4.000000e+00
  %8653 = fmul fast float %8652, %8650
  %8654 = fsub fast float %8651, %8653
  %8655 = fcmp fast ogt float %8654, 0.000000e+00
  br i1 %8655, label %8656, label %8671

; <label>:8656                                    ; preds = %8622
  %8657 = fcmp fast ogt float %8647, 0.000000e+00
  %8658 = call float @dx.op.unary.f32(i32 24, float %8654)  ; Sqrt(value)
  %8659 = fsub fast float -0.000000e+00, %8658
  %8660 = select i1 %8657, float %8658, float %8659
  %8661 = fadd fast float %8660, %8647
  %8662 = fmul float %8661, -5.000000e-01
  %8663 = fdiv fast float %8662, %8645
  %8664 = call float @dx.op.binary.f32(i32 35, float %8663, float 0.000000e+00)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 36, float %8608, float %8664)  ; FMin(a,b)
  %8666 = fdiv fast float %8650, %8662
  %8667 = call float @dx.op.binary.f32(i32 35, float %8666, float 0.000000e+00)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 36, float %8608, float %8667)  ; FMin(a,b)
  %8669 = call float @dx.op.binary.f32(i32 36, float %8665, float %8668)  ; FMin(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8665, float %8668)  ; FMax(a,b)
  br label %8671

; <label>:8671                                    ; preds = %8656, %8622
  %8672 = phi float [ %8670, %8656 ], [ -1.000000e+00, %8622 ]
  %8673 = phi float [ %8669, %8656 ], [ -1.000000e+00, %8622 ]
  %8674 = phi i1 [ true, %8656 ], [ false, %8622 ]
  %8675 = and i1 %8642, %8674
  br i1 %8675, label %8676, label %8678

; <label>:8676                                    ; preds = %8671
  %8677 = fcmp fast oeq float %8673, %8672
  br i1 %8677, label %8981, label %8679

; <label>:8678                                    ; preds = %8671
  br i1 %8642, label %8981, label %8679

; <label>:8679                                    ; preds = %8678, %8676
  %8680 = phi float [ %8608, %8678 ], [ %8672, %8676 ]
  %8681 = phi float [ 0.000000e+00, %8678 ], [ %8673, %8676 ]
  %8682 = icmp ne i32 %8630, 0
  %8683 = fmul fast float %8680, %8611
  %8684 = fadd fast float %8683, %8624
  %8685 = fmul fast float %8684, %8680
  %8686 = select i1 %8682, float 0.000000e+00, float %8685
  %8687 = fcmp fast oeq float %8611, 0.000000e+00
  %8688 = fdiv fast float %8629, %8611
  %8689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8688)  ; FMax(a,b)
  %8690 = select i1 %8687, float %8680, float %8689
  %8691 = call float @dx.op.binary.f32(i32 36, float %8680, float %8690)  ; FMin(a,b)
  %8692 = fcmp fast ogt float %8611, 0.000000e+00
  %8693 = fcmp fast olt float %8629, 0.000000e+00
  br i1 %8692, label %8694, label %8751

; <label>:8694                                    ; preds = %8679
  %8695 = icmp eq i32 %8630, 0
  br i1 %8693, label %8696, label %8740

; <label>:8696                                    ; preds = %8694
  %8697 = select i1 %8695, float %8680, float 0.000000e+00
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = call float @dx.op.unary.f32(i32 6, float %8698)  ; FAbs(value)
  %8700 = fmul fast float %8697, %8611
  %8701 = fadd fast float %8700, %8624
  %8702 = fmul fast float %8699, %8701
  %8703 = fsub fast float %8686, %8702
  %8704 = fsub fast float %8680, %8699
  %8705 = select i1 %8695, float %8704, float 0.000000e+00
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 0
  %8708 = extractvalue %dx.types.CBufRet.f32 %8706, 1
  %8709 = extractvalue %dx.types.CBufRet.f32 %8706, 2
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8714 = extractvalue %dx.types.CBufRet.f32 %8710, 3
  %8715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.f32 %8715, 3
  %8717 = call float @dx.op.binary.f32(i32 36, float %8703, float %8716)  ; FMin(a,b)
  %8718 = fmul fast float %8714, %8705
  %8719 = call float @dx.op.unary.f32(i32 7, float %8718)  ; Saturate(value)
  %8720 = fsub fast float %8711, %8707
  %8721 = fsub fast float %8712, %8708
  %8722 = fsub fast float %8713, %8709
  %8723 = fmul fast float %8719, %8720
  %8724 = fmul fast float %8719, %8721
  %8725 = fmul fast float %8719, %8722
  %8726 = fadd fast float %8723, %8707
  %8727 = fadd fast float %8724, %8708
  %8728 = fadd fast float %8725, %8709
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.CBufRet.f32 %8729, 1
  %8732 = fadd fast float %8731, %8730
  %8733 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8729, 2
  %8735 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8736 = fadd fast float %8735, %8734
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = fmul fast float %8733, %8717
  %8739 = fmul fast float %8738, %8737
  br label %8981

; <label>:8740                                    ; preds = %8694
  br i1 %8695, label %8741, label %8762

; <label>:8741                                    ; preds = %8740
  %8742 = call float @dx.op.binary.f32(i32 36, float %8691, float %8681)  ; FMin(a,b)
  %8743 = fsub fast float %8691, %8742
  %8744 = fsub fast float %8743, %8680
  %8745 = call float @dx.op.unary.f32(i32 6, float %8744)  ; FAbs(value)
  %8746 = fadd fast float %8743, %8680
  %8747 = fmul fast float %8746, %8611
  %8748 = fadd fast float %8747, %8624
  %8749 = fmul fast float %8748, %8745
  %8750 = fsub fast float %8686, %8749
  br label %8762

; <label>:8751                                    ; preds = %8679
  br i1 %8693, label %8752, label %8762

; <label>:8752                                    ; preds = %8751
  %8753 = call float @dx.op.binary.f32(i32 35, float %8681, float %8691)  ; FMax(a,b)
  %8754 = icmp eq i32 %8630, 0
  %8755 = select i1 %8754, float %8691, float 0.000000e+00
  %8756 = fsub fast float -0.000000e+00, %8755
  %8757 = call float @dx.op.unary.f32(i32 6, float %8756)  ; FAbs(value)
  %8758 = fmul fast float %8755, %8611
  %8759 = fadd fast float %8758, %8624
  %8760 = fmul fast float %8757, %8759
  %8761 = fsub fast float %8686, %8760
  br label %8762

; <label>:8762                                    ; preds = %8752, %8751, %8741, %8740
  %8763 = phi float [ %8681, %8740 ], [ %8681, %8741 ], [ %8753, %8752 ], [ %8681, %8751 ]
  %8764 = phi float [ 0.000000e+00, %8740 ], [ %8745, %8741 ], [ %8757, %8752 ], [ 0.000000e+00, %8751 ]
  %8765 = phi float [ %8686, %8740 ], [ %8750, %8741 ], [ %8761, %8752 ], [ %8686, %8751 ]
  %8766 = phi float [ %8691, %8740 ], [ %8691, %8741 ], [ %8680, %8752 ], [ %8680, %8751 ]
  %8767 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8767, align 4, !tbaa !124, !noalias !139
  %8768 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8768, align 4, !tbaa !124, !noalias !139
  %8769 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8769, align 4, !tbaa !124, !noalias !139
  %8770 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 0
  store float -1.000000e+00, float* %8770, align 4, !tbaa !124, !noalias !139
  %8771 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 1
  store float -1.000000e+00, float* %8771, align 4, !tbaa !124, !noalias !139
  %8772 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 2
  store float -1.000000e+00, float* %8772, align 4, !tbaa !124, !noalias !139
  %8773 = icmp sgt i32 %8632, 0
  br i1 %8773, label %8774, label %8835

; <label>:8774                                    ; preds = %8762
  br label %8775

; <label>:8775                                    ; preds = %8824, %8774
  %8776 = phi i32 [ %8825, %8824 ], [ 0, %8774 ]
  %8777 = phi i32 [ %8826, %8824 ], [ 0, %8774 ]
  %8778 = add nuw i32 %8777, 171
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8778)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 0
  %8781 = extractvalue %dx.types.CBufRet.f32 %8779, 1
  %8782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8783 = extractvalue %dx.types.CBufRet.f32 %8782, 0
  %8784 = extractvalue %dx.types.CBufRet.f32 %8782, 1
  %8785 = fsub fast float %8780, %8783
  %8786 = fsub fast float %8781, %8784
  %8787 = extractvalue %dx.types.CBufRet.f32 %8779, 2
  %8788 = fsub fast float -0.000000e+00, %8785
  %8789 = fsub fast float -0.000000e+00, %8786
  %8790 = call float @dx.op.dot2.f32(i32 54, float %8609, float %8610, float %8788, float %8789)  ; Dot2(ax,ay,bx,by)
  %8791 = fmul fast float %8790, 2.000000e+00
  %8792 = call float @dx.op.dot2.f32(i32 54, float %8788, float %8789, float %8788, float %8789)  ; Dot2(ax,ay,bx,by)
  %8793 = fmul fast float %8787, %8787
  %8794 = fsub fast float %8792, %8793
  %8795 = fmul fast float %8791, %8791
  %8796 = fmul fast float %8652, %8794
  %8797 = fsub fast float %8795, %8796
  %8798 = fcmp fast ogt float %8797, 0.000000e+00
  br i1 %8798, label %8799, label %8814

; <label>:8799                                    ; preds = %8775
  %8800 = fcmp fast ogt float %8791, 0.000000e+00
  %8801 = call float @dx.op.unary.f32(i32 24, float %8797)  ; Sqrt(value)
  %8802 = fsub fast float -0.000000e+00, %8801
  %8803 = select i1 %8800, float %8801, float %8802
  %8804 = fadd fast float %8803, %8791
  %8805 = fmul float %8804, -5.000000e-01
  %8806 = fdiv fast float %8805, %8645
  %8807 = call float @dx.op.binary.f32(i32 35, float %8806, float 0.000000e+00)  ; FMax(a,b)
  %8808 = call float @dx.op.binary.f32(i32 36, float %8680, float %8807)  ; FMin(a,b)
  %8809 = fdiv fast float %8794, %8805
  %8810 = call float @dx.op.binary.f32(i32 35, float %8809, float 0.000000e+00)  ; FMax(a,b)
  %8811 = call float @dx.op.binary.f32(i32 36, float %8680, float %8810)  ; FMin(a,b)
  %8812 = call float @dx.op.binary.f32(i32 36, float %8808, float %8811)  ; FMin(a,b)
  %8813 = call float @dx.op.binary.f32(i32 35, float %8808, float %8811)  ; FMax(a,b)
  br label %8814

; <label>:8814                                    ; preds = %8799, %8775
  %8815 = phi float [ %8813, %8799 ], [ -1.000000e+00, %8775 ]
  %8816 = phi float [ %8812, %8799 ], [ -1.000000e+00, %8775 ]
  %8817 = phi i1 [ true, %8799 ], [ false, %8775 ]
  br i1 %8817, label %8818, label %8824

; <label>:8818                                    ; preds = %8814
  %8819 = call float @dx.op.binary.f32(i32 35, float %8763, float %8816)  ; FMax(a,b)
  %8820 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8777
  store float %8819, float* %8820, align 4, !tbaa !124, !noalias !139
  %8821 = call float @dx.op.binary.f32(i32 35, float %8763, float %8815)  ; FMax(a,b)
  %8822 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8777
  store float %8821, float* %8822, align 4, !tbaa !124, !noalias !139
  %8823 = add nsw i32 %8776, 1
  br label %8824

; <label>:8824                                    ; preds = %8818, %8814
  %8825 = phi i32 [ %8823, %8818 ], [ %8776, %8814 ]
  %8826 = add nuw nsw i32 %8777, 1
  %8827 = icmp eq i32 %8826, %8632
  br i1 %8827, label %8828, label %8775

; <label>:8828                                    ; preds = %8824
  %8829 = load float, float* %8769, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8830 = load float, float* %8768, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %8831 = load float, float* %8767, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %8832 = load float, float* %8772, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8833 = load float, float* %8771, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %8834 = load float, float* %8770, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %8835

; <label>:8835                                    ; preds = %8828, %8762
  %8836 = phi float [ -1.000000e+00, %8762 ], [ %8834, %8828 ]
  %8837 = phi float [ -1.000000e+00, %8762 ], [ %8833, %8828 ]
  %8838 = phi float [ -1.000000e+00, %8762 ], [ %8832, %8828 ]
  %8839 = phi float [ -1.000000e+00, %8762 ], [ %8831, %8828 ]
  %8840 = phi float [ -1.000000e+00, %8762 ], [ %8830, %8828 ]
  %8841 = phi float [ -1.000000e+00, %8762 ], [ %8829, %8828 ]
  %8842 = phi i32 [ 0, %8762 ], [ %8825, %8828 ]
  %8843 = call float @dx.op.binary.f32(i32 36, float %8840, float %8841)  ; FMin(a,b)
  %8844 = call float @dx.op.binary.f32(i32 36, float %8839, float %8843)  ; FMin(a,b)
  %8845 = call float @dx.op.binary.f32(i32 35, float %8839, float %8840)  ; FMax(a,b)
  %8846 = call float @dx.op.binary.f32(i32 36, float %8845, float %8841)  ; FMin(a,b)
  %8847 = call float @dx.op.binary.f32(i32 36, float %8839, float %8840)  ; FMin(a,b)
  %8848 = call float @dx.op.binary.f32(i32 35, float %8847, float %8846)  ; FMax(a,b)
  %8849 = call float @dx.op.binary.f32(i32 35, float %8840, float %8841)  ; FMax(a,b)
  %8850 = call float @dx.op.binary.f32(i32 35, float %8839, float %8849)  ; FMax(a,b)
  store float %8844, float* %8767, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %8848, float* %8768, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %8850, float* %8769, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8851 = call float @dx.op.binary.f32(i32 36, float %8837, float %8838)  ; FMin(a,b)
  %8852 = call float @dx.op.binary.f32(i32 36, float %8836, float %8851)  ; FMin(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8836, float %8837)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 36, float %8853, float %8838)  ; FMin(a,b)
  %8855 = call float @dx.op.binary.f32(i32 36, float %8836, float %8837)  ; FMin(a,b)
  %8856 = call float @dx.op.binary.f32(i32 35, float %8855, float %8854)  ; FMax(a,b)
  %8857 = call float @dx.op.binary.f32(i32 35, float %8837, float %8838)  ; FMax(a,b)
  %8858 = call float @dx.op.binary.f32(i32 35, float %8836, float %8857)  ; FMax(a,b)
  store float %8852, float* %8770, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %8856, float* %8771, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %8858, float* %8772, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8859 = sub nsw i32 3, %8842
  %8860 = icmp sgt i32 %8859, 2
  br i1 %8860, label %8861, label %8899

; <label>:8861                                    ; preds = %8835
  %8862 = icmp eq i32 %8630, 0
  %8863 = fsub fast float %8680, %8764
  %8864 = select i1 %8862, float %8863, float %8764
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.CBufRet.f32 %8869, 1
  %8872 = extractvalue %dx.types.CBufRet.f32 %8869, 2
  %8873 = extractvalue %dx.types.CBufRet.f32 %8869, 3
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 3
  %8876 = call float @dx.op.binary.f32(i32 36, float %8765, float %8875)  ; FMin(a,b)
  %8877 = fmul fast float %8873, %8864
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = fsub fast float %8870, %8866
  %8880 = fsub fast float %8871, %8867
  %8881 = fsub fast float %8872, %8868
  %8882 = fmul fast float %8878, %8879
  %8883 = fmul fast float %8878, %8880
  %8884 = fmul fast float %8878, %8881
  %8885 = fadd fast float %8882, %8866
  %8886 = fadd fast float %8883, %8867
  %8887 = fadd fast float %8884, %8868
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8891 = fadd fast float %8890, %8889
  %8892 = call float @dx.op.unary.f32(i32 7, float %8891)  ; Saturate(value)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8895 = fadd fast float %8894, %8893
  %8896 = call float @dx.op.unary.f32(i32 7, float %8895)  ; Saturate(value)
  %8897 = fmul fast float %8892, %8876
  %8898 = fmul fast float %8897, %8896
  br label %8981

; <label>:8899                                    ; preds = %8835
  %8900 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8859
  %8901 = load float, float* %8900, align 4, !tbaa !124, !noalias !139
  %8902 = fcmp fast olt float %8901, %8766
  %8903 = icmp sgt i32 %8842, 0
  %8904 = and i1 %8903, %8902
  br i1 %8904, label %8905, label %8942

; <label>:8905                                    ; preds = %8899
  br label %8906

; <label>:8906                                    ; preds = %8935, %8905
  %8907 = phi float [ %8936, %8935 ], [ %8764, %8905 ]
  %8908 = phi float [ %8937, %8935 ], [ %8765, %8905 ]
  %8909 = phi float [ %8917, %8935 ], [ %8901, %8905 ]
  %8910 = phi i32 [ %8914, %8935 ], [ %8859, %8905 ]
  %8911 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8910
  %8912 = load float, float* %8911, align 4, !tbaa !124, !noalias !139
  %8913 = icmp slt i32 %8910, 2
  %8914 = add nsw i32 %8910, 1
  %8915 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8914
  %8916 = load float, float* %8915, align 4, !tbaa !124, !noalias !139
  %8917 = select i1 %8913, float %8916, float %8680
  %8918 = call float @dx.op.binary.f32(i32 36, float %8917, float %8912)  ; FMin(a,b)
  %8919 = call float @dx.op.binary.f32(i32 36, float %8766, float %8918)  ; FMin(a,b)
  %8920 = icmp eq i32 %8630, 0
  %8921 = fadd fast float %8919, %8909
  %8922 = fmul fast float %8921, %8611
  %8923 = fadd fast float %8922, %8624
  br i1 %8920, label %8929, label %8924

; <label>:8924                                    ; preds = %8906
  %8925 = fsub fast float %8919, %8909
  %8926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8925)  ; FMax(a,b)
  %8927 = fmul fast float %8926, %8923
  %8928 = fadd fast float %8927, %8908
  br label %8935

; <label>:8929                                    ; preds = %8906
  %8930 = fsub fast float %8909, %8919
  %8931 = call float @dx.op.unary.f32(i32 6, float %8930)  ; FAbs(value)
  %8932 = fadd fast float %8931, %8907
  %8933 = fmul fast float %8931, %8923
  %8934 = fsub fast float %8908, %8933
  br label %8935

; <label>:8935                                    ; preds = %8929, %8924
  %8936 = phi float [ %8926, %8924 ], [ %8932, %8929 ]
  %8937 = phi float [ %8928, %8924 ], [ %8934, %8929 ]
  %8938 = fcmp fast olt float %8917, %8766
  %8939 = icmp slt i32 %8914, 3
  %8940 = and i1 %8939, %8938
  br i1 %8940, label %8906, label %8941

; <label>:8941                                    ; preds = %8935
  br label %8942

; <label>:8942                                    ; preds = %8941, %8899
  %8943 = phi float [ %8764, %8899 ], [ %8936, %8941 ]
  %8944 = phi float [ %8765, %8899 ], [ %8937, %8941 ]
  %8945 = fsub fast float %8680, %8943
  %8946 = select i1 %8682, float %8943, float %8945
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 0
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8950 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  %8953 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8954 = extractvalue %dx.types.CBufRet.f32 %8951, 2
  %8955 = extractvalue %dx.types.CBufRet.f32 %8951, 3
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 3
  %8958 = call float @dx.op.binary.f32(i32 36, float %8944, float %8957)  ; FMin(a,b)
  %8959 = fmul fast float %8955, %8946
  %8960 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8961 = fsub fast float %8952, %8948
  %8962 = fsub fast float %8953, %8949
  %8963 = fsub fast float %8954, %8950
  %8964 = fmul fast float %8960, %8961
  %8965 = fmul fast float %8960, %8962
  %8966 = fmul fast float %8960, %8963
  %8967 = fadd fast float %8964, %8948
  %8968 = fadd fast float %8965, %8949
  %8969 = fadd fast float %8966, %8950
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = extractvalue %dx.types.CBufRet.f32 %8970, 1
  %8973 = fadd fast float %8972, %8971
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8970, 2
  %8976 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8977 = fadd fast float %8976, %8975
  %8978 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8979 = fmul fast float %8974, %8958
  %8980 = fmul fast float %8979, %8978
  br label %8981

; <label>:8981                                    ; preds = %8942, %8861, %8696, %8678, %8676
  %8982 = phi float [ %8705, %8696 ], [ %8864, %8861 ], [ %8946, %8942 ], [ 0.000000e+00, %8676 ], [ 0.000000e+00, %8678 ]
  %8983 = phi float [ %8739, %8696 ], [ %8898, %8861 ], [ %8980, %8942 ], [ 0.000000e+00, %8676 ], [ 0.000000e+00, %8678 ]
  %8984 = phi float [ %8726, %8696 ], [ %8885, %8861 ], [ %8967, %8942 ], [ 0.000000e+00, %8676 ], [ 0.000000e+00, %8678 ]
  %8985 = phi float [ %8727, %8696 ], [ %8886, %8861 ], [ %8968, %8942 ], [ 0.000000e+00, %8676 ], [ 0.000000e+00, %8678 ]
  %8986 = phi float [ %8728, %8696 ], [ %8887, %8861 ], [ %8969, %8942 ], [ 0.000000e+00, %8676 ], [ 0.000000e+00, %8678 ]
  %8987 = fmul fast float %8619, %8983
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8990 = fsub fast float %8626, %8989
  %8991 = fcmp fast olt float %8987, -2.000000e+01
  %8992 = call float @dx.op.unary.f32(i32 21, float %8987)  ; Exp(value)
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8995 = extractvalue %dx.types.CBufRet.f32 %8993, 3
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %8998 = fmul fast float %8995, %8990
  %8999 = call float @dx.op.unary.f32(i32 7, float %8998)  ; Saturate(value)
  %9000 = fsub fast float 1.000000e+00, %8999
  %9001 = fmul fast float %8611, 5.000000e-01
  %9002 = fadd fast float %9001, 5.000000e-01
  %9003 = call float @dx.op.unary.f32(i32 7, float %9002)  ; Saturate(value)
  %9004 = fsub fast float 1.000000e+00, %9003
  %9005 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9000)  ; FMax(a,b)
  %9006 = fdiv fast float %9004, %9005
  %9007 = fsub fast float %8990, %8568
  %9008 = call float @dx.op.unary.f32(i32 6, float %9007)  ; FAbs(value)
  %9009 = fmul fast float %9008, %8994
  %9010 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  %9011 = fsub fast float 1.000000e+00, %9009
  %9012 = fmul fast float %9011, %9010
  %9013 = fadd fast float %9012, %9009
  %9014 = fmul fast float %8997, %8990
  %9015 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9016 = fsub fast float 1.000000e+00, %9013
  %9017 = fmul fast float %9016, %9015
  %9018 = fadd fast float %9017, %9013
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fadd fast float %8992, -1.000000e+00
  %9021 = select i1 %8991, float -1.000000e+00, float %9020
  %9022 = fmul fast float %9019, %9021
  %9023 = fadd fast float %9022, 1.000000e+00
  %9024 = fsub fast float -0.000000e+00, %9022
  %9025 = fmul fast float %8984, %9024
  %9026 = fmul fast float %8985, %9024
  %9027 = fmul fast float %8986, %9024
  br label %9028

; <label>:9028                                    ; preds = %8981, %8577
  %9029 = phi float [ %8982, %8981 ], [ 0.000000e+00, %8577 ]
  %9030 = phi float [ %9023, %8981 ], [ 1.000000e+00, %8577 ]
  %9031 = phi float [ %9025, %8981 ], [ 0.000000e+00, %8577 ]
  %9032 = phi float [ %9026, %8981 ], [ 0.000000e+00, %8577 ]
  %9033 = phi float [ %9027, %8981 ], [ 0.000000e+00, %8577 ]
  %9034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9035 = extractvalue %dx.types.CBufRet.f32 %9034, 1
  %9036 = fsub fast float 1.000000e+00, %9030
  %9037 = fmul fast float %9036, %8612
  %9038 = fmul fast float %9037, %9035
  %9039 = fsub fast float %8612, %9038
  br i1 %8605, label %9040, label %9069, !dx.controlflow.hints !175

; <label>:9040                                    ; preds = %9028
  %9041 = fmul fast float %8613, %8602
  %9042 = fadd fast float %9041, %8603
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fmul fast float %8584, %9039
  %9045 = fsub fast float -0.000000e+00, %9044
  %9046 = fmul fast float %8585, %9039
  %9047 = fsub fast float -0.000000e+00, %9046
  %9048 = call float @dx.op.unary.f32(i32 21, float %9045)  ; Exp(value)
  %9049 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9050 = call float @dx.op.binary.f32(i32 35, float %8592, float %9048)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float %8592, float %9049)  ; FMax(a,b)
  %9052 = fsub fast float %9051, %9050
  %9053 = fmul fast float %9052, %9043
  %9054 = fadd fast float %9053, %9050
  %9055 = call float @dx.op.unary.f32(i32 7, float %9054)  ; Saturate(value)
  %9056 = fsub fast float %8589, %8594
  %9057 = fsub fast float %8590, %8595
  %9058 = fsub fast float %8591, %8596
  %9059 = fmul fast float %9043, %9056
  %9060 = fmul fast float %9043, %9057
  %9061 = fmul fast float %9043, %9058
  %9062 = fadd fast float %9059, %8594
  %9063 = fadd fast float %9060, %8595
  %9064 = fadd fast float %9061, %8596
  %9065 = fsub fast float 1.000000e+00, %9055
  %9066 = fmul fast float %9065, %9062
  %9067 = fmul fast float %9065, %9063
  %9068 = fmul fast float %9065, %9064
  br label %9128

; <label>:9069                                    ; preds = %9028
  %9070 = fmul fast float %9039, %8601
  %9071 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9072 = fsub fast float 2.000000e+00, %9071
  %9073 = fmul fast float %9071, 9.921875e-01
  %9074 = fmul fast float %9073, %9072
  %9075 = fadd fast float %9074, 3.906250e-03
  %9076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9075, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9077 = extractvalue %dx.types.ResRet.f32 %9076, 0
  %9078 = fsub fast float %9071, %9077
  %9079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9078)  ; FMax(a,b)
  %9080 = fmul fast float %8587, %8568
  %9081 = call float @dx.op.unary.f32(i32 6, float %9080)  ; FAbs(value)
  %9082 = fcmp fast ogt float %9081, 0x3EB0C6F7A0000000
  br i1 %9082, label %9083, label %9089, !dx.controlflow.hints !176

; <label>:9083                                    ; preds = %9069
  %9084 = fmul fast float %9080, 0xBFF7154760000000
  %9085 = call float @dx.op.unary.f32(i32 21, float %9084)  ; Exp(value)
  %9086 = fsub fast float 1.000000e+00, %9085
  %9087 = fdiv fast float %9086, %9080
  %9088 = fmul fast float %9087, %8597
  br label %9089

; <label>:9089                                    ; preds = %9083, %9069
  %9090 = phi float [ %9088, %9083 ], [ %8597, %9069 ]
  %9091 = fadd fast float %9090, %8599
  %9092 = fmul fast float %9091, %9079
  %9093 = fmul fast float %8584, %9092
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = fmul fast float %8585, %9092
  %9096 = fsub fast float -0.000000e+00, %9095
  %9097 = fmul fast float %8586, %9092
  %9098 = fsub fast float -0.000000e+00, %9097
  %9099 = call float @dx.op.unary.f32(i32 21, float %9094)  ; Exp(value)
  %9100 = call float @dx.op.unary.f32(i32 21, float %9096)  ; Exp(value)
  %9101 = call float @dx.op.unary.f32(i32 21, float %9098)  ; Exp(value)
  %9102 = fmul fast float %8613, %8613
  %9103 = fadd fast float %9102, 1.000000e+00
  %9104 = fmul fast float %9103, 0x3FAE8EC8A0000000
  %9105 = fmul fast float %9104, %8594
  %9106 = fmul fast float %9104, %8595
  %9107 = fmul fast float %9104, %8596
  %9108 = fmul fast float %8613, %8592
  %9109 = fsub fast float 1.000000e+00, %9108
  %9110 = fmul fast float %8592, %8592
  %9111 = fsub fast float 1.000000e+00, %9110
  %9112 = fmul fast float %9111, 0x3FB45F3060000000
  %9113 = fmul fast float %9109, %9109
  %9114 = fdiv fast float 1.000000e+00, %9113
  %9115 = fmul fast float %9112, %9114
  %9116 = fmul fast float %9115, %8589
  %9117 = fmul fast float %9115, %8590
  %9118 = fmul fast float %9115, %8591
  %9119 = fadd fast float %9116, %9105
  %9120 = fadd fast float %9117, %9106
  %9121 = fadd fast float %9118, %9107
  %9122 = fsub fast float 1.000000e+00, %9099
  %9123 = fsub fast float 1.000000e+00, %9100
  %9124 = fsub fast float 1.000000e+00, %9101
  %9125 = fmul fast float %9119, %9122
  %9126 = fmul fast float %9120, %9123
  %9127 = fmul fast float %9121, %9124
  br label %9128

; <label>:9128                                    ; preds = %9089, %9040
  %9129 = phi float [ %9066, %9040 ], [ %9125, %9089 ]
  %9130 = phi float [ %9067, %9040 ], [ %9126, %9089 ]
  %9131 = phi float [ %9068, %9040 ], [ %9127, %9089 ]
  %9132 = phi float [ %9055, %9040 ], [ %9099, %9089 ]
  %9133 = phi float [ %9055, %9040 ], [ %9100, %9089 ]
  %9134 = phi float [ %9055, %9040 ], [ %9101, %9089 ]
  br i1 %8621, label %9135, label %9333, !dx.controlflow.hints !177

; <label>:9135                                    ; preds = %9128
  %9136 = extractvalue %dx.types.CBufRet.f32 %9034, 0
  %9137 = fmul fast float %9136, %9036
  %9138 = fsub fast float %9031, %9129
  %9139 = fsub fast float %9032, %9130
  %9140 = fsub fast float %9033, %9131
  %9141 = fmul fast float %9137, %9138
  %9142 = fmul fast float %9137, %9139
  %9143 = fmul fast float %9137, %9140
  %9144 = fadd fast float %9141, %9129
  %9145 = fadd fast float %9142, %9130
  %9146 = fadd fast float %9143, %9131
  %9147 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9132)  ; FMax(a,b)
  %9148 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9133)  ; FMax(a,b)
  %9149 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9134)  ; FMax(a,b)
  %9150 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9030)  ; FMax(a,b)
  %9151 = call float @dx.op.binary.f32(i32 35, float %9029, float %9039)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9151)  ; FMax(a,b)
  %9153 = fdiv fast float %9029, %9152
  %9154 = call float @dx.op.unary.f32(i32 7, float %9153)  ; Saturate(value)
  %9155 = fdiv fast float %9039, %9152
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fcmp fast une float %9150, 1.000000e+00
  br i1 %9157, label %9158, label %9171, !dx.controlflow.hints !178

; <label>:9158                                    ; preds = %9135
  %9159 = call float @dx.op.unary.f32(i32 23, float %9150)  ; Log(value)
  %9160 = fmul fast float %9159, 0x3FE62E4300000000
  %9161 = fmul fast float %9031, %9160
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = fmul fast float %9032, %9160
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = fmul fast float %9033, %9160
  %9166 = fsub fast float -0.000000e+00, %9165
  %9167 = fsub fast float 1.000000e+00, %9150
  %9168 = fdiv fast float %9162, %9167
  %9169 = fdiv fast float %9164, %9167
  %9170 = fdiv fast float %9166, %9167
  br label %9171

; <label>:9171                                    ; preds = %9158, %9135
  %9172 = phi float [ %9168, %9158 ], [ %9031, %9135 ]
  %9173 = phi float [ %9169, %9158 ], [ %9032, %9135 ]
  %9174 = phi float [ %9170, %9158 ], [ %9033, %9135 ]
  %9175 = phi float [ %9160, %9158 ], [ 0.000000e+00, %9135 ]
  %9176 = fcmp fast une float %9147, 1.000000e+00
  br i1 %9176, label %9177, label %9184, !dx.controlflow.hints !179

; <label>:9177                                    ; preds = %9171
  %9178 = call float @dx.op.unary.f32(i32 23, float %9147)  ; Log(value)
  %9179 = fmul fast float %9178, 0x3FE62E4300000000
  %9180 = fmul fast float %9144, %9179
  %9181 = fsub fast float -0.000000e+00, %9180
  %9182 = fsub fast float 1.000000e+00, %9147
  %9183 = fdiv fast float %9181, %9182
  br label %9184

; <label>:9184                                    ; preds = %9177, %9171
  %9185 = phi float [ %9183, %9177 ], [ %9144, %9171 ]
  %9186 = phi float [ %9179, %9177 ], [ 0.000000e+00, %9171 ]
  %9187 = fcmp fast une float %9148, 1.000000e+00
  br i1 %9187, label %9188, label %9195, !dx.controlflow.hints !179

; <label>:9188                                    ; preds = %9184
  %9189 = call float @dx.op.unary.f32(i32 23, float %9148)  ; Log(value)
  %9190 = fmul fast float %9189, 0x3FE62E4300000000
  %9191 = fmul fast float %9145, %9190
  %9192 = fsub fast float -0.000000e+00, %9191
  %9193 = fsub fast float 1.000000e+00, %9148
  %9194 = fdiv fast float %9192, %9193
  br label %9195

; <label>:9195                                    ; preds = %9188, %9184
  %9196 = phi float [ %9194, %9188 ], [ %9145, %9184 ]
  %9197 = phi float [ %9190, %9188 ], [ 0.000000e+00, %9184 ]
  %9198 = fcmp fast une float %9149, 1.000000e+00
  br i1 %9198, label %9199, label %9206, !dx.controlflow.hints !179

; <label>:9199                                    ; preds = %9195
  %9200 = call float @dx.op.unary.f32(i32 23, float %9149)  ; Log(value)
  %9201 = fmul fast float %9200, 0x3FE62E4300000000
  %9202 = fmul fast float %9146, %9201
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = fsub fast float 1.000000e+00, %9149
  %9205 = fdiv fast float %9203, %9204
  br label %9206

; <label>:9206                                    ; preds = %9199, %9195
  %9207 = phi float [ %9205, %9199 ], [ %9146, %9195 ]
  %9208 = phi float [ %9201, %9199 ], [ 0.000000e+00, %9195 ]
  %9209 = fmul fast float %9172, %9156
  %9210 = fmul fast float %9173, %9156
  %9211 = fmul fast float %9174, %9156
  %9212 = fmul fast float %9175, %9156
  %9213 = fmul fast float %9185, %9154
  %9214 = fmul fast float %9196, %9154
  %9215 = fmul fast float %9207, %9154
  %9216 = fmul fast float %9186, %9154
  %9217 = fmul fast float %9197, %9154
  %9218 = fmul fast float %9208, %9154
  %9219 = fadd fast float %9213, %9209
  %9220 = fadd fast float %9214, %9210
  %9221 = fadd fast float %9215, %9211
  %9222 = fadd fast float %9216, %9212
  %9223 = fadd fast float %9217, %9212
  %9224 = fadd fast float %9218, %9212
  %9225 = fcmp fast une float %9222, 0.000000e+00
  br i1 %9225, label %9226, label %9233, !dx.controlflow.hints !180

; <label>:9226                                    ; preds = %9206
  %9227 = fmul fast float %9222, 0x3FF7154760000000
  %9228 = call float @dx.op.unary.f32(i32 21, float %9227)  ; Exp(value)
  %9229 = fsub fast float 1.000000e+00, %9228
  %9230 = fmul fast float %9219, %9229
  %9231 = fsub fast float -0.000000e+00, %9230
  %9232 = fdiv fast float %9231, %9222
  br label %9233

; <label>:9233                                    ; preds = %9226, %9206
  %9234 = phi float [ %9228, %9226 ], [ 1.000000e+00, %9206 ]
  %9235 = phi float [ %9232, %9226 ], [ %9219, %9206 ]
  %9236 = fcmp fast une float %9223, 0.000000e+00
  br i1 %9236, label %9237, label %9244, !dx.controlflow.hints !180

; <label>:9237                                    ; preds = %9233
  %9238 = fmul fast float %9223, 0x3FF7154760000000
  %9239 = call float @dx.op.unary.f32(i32 21, float %9238)  ; Exp(value)
  %9240 = fsub fast float 1.000000e+00, %9239
  %9241 = fmul fast float %9220, %9240
  %9242 = fsub fast float -0.000000e+00, %9241
  %9243 = fdiv fast float %9242, %9223
  br label %9244

; <label>:9244                                    ; preds = %9237, %9233
  %9245 = phi float [ %9239, %9237 ], [ 1.000000e+00, %9233 ]
  %9246 = phi float [ %9243, %9237 ], [ %9220, %9233 ]
  %9247 = fcmp fast une float %9224, 0.000000e+00
  br i1 %9247, label %9248, label %9255, !dx.controlflow.hints !180

; <label>:9248                                    ; preds = %9244
  %9249 = fmul fast float %9224, 0x3FF7154760000000
  %9250 = call float @dx.op.unary.f32(i32 21, float %9249)  ; Exp(value)
  %9251 = fsub fast float 1.000000e+00, %9250
  %9252 = fmul fast float %9221, %9251
  %9253 = fsub fast float -0.000000e+00, %9252
  %9254 = fdiv fast float %9253, %9224
  br label %9255

; <label>:9255                                    ; preds = %9248, %9244
  %9256 = phi float [ %9250, %9248 ], [ 1.000000e+00, %9244 ]
  %9257 = phi float [ %9254, %9248 ], [ %9221, %9244 ]
  %9258 = fcmp fast ogt float %9154, %9156
  br i1 %9258, label %9259, label %9279

; <label>:9259                                    ; preds = %9255
  %9260 = fsub fast float 1.000000e+00, %9156
  %9261 = fmul fast float %9172, %9260
  %9262 = fmul fast float %9173, %9260
  %9263 = fmul fast float %9174, %9260
  %9264 = fmul fast float %9175, %9260
  %9265 = fcmp fast une float %9264, 0.000000e+00
  br i1 %9265, label %9266, label %9317, !dx.controlflow.hints !181

; <label>:9266                                    ; preds = %9259
  %9267 = fmul fast float %9264, 0x3FF7154760000000
  %9268 = call float @dx.op.unary.f32(i32 21, float %9267)  ; Exp(value)
  %9269 = fsub fast float 1.000000e+00, %9268
  %9270 = fmul fast float %9261, %9269
  %9271 = fsub fast float -0.000000e+00, %9270
  %9272 = fmul fast float %9262, %9269
  %9273 = fsub fast float -0.000000e+00, %9272
  %9274 = fmul fast float %9263, %9269
  %9275 = fsub fast float -0.000000e+00, %9274
  %9276 = fdiv fast float %9271, %9264
  %9277 = fdiv fast float %9273, %9264
  %9278 = fdiv fast float %9275, %9264
  br label %9317

; <label>:9279                                    ; preds = %9255
  %9280 = fsub fast float 1.000000e+00, %9154
  %9281 = fmul fast float %9185, %9280
  %9282 = fmul fast float %9196, %9280
  %9283 = fmul fast float %9207, %9280
  %9284 = fmul fast float %9186, %9280
  %9285 = fmul fast float %9197, %9280
  %9286 = fmul fast float %9208, %9280
  %9287 = fcmp fast une float %9284, 0.000000e+00
  br i1 %9287, label %9288, label %9295, !dx.controlflow.hints !180

; <label>:9288                                    ; preds = %9279
  %9289 = fmul fast float %9284, 0x3FF7154760000000
  %9290 = call float @dx.op.unary.f32(i32 21, float %9289)  ; Exp(value)
  %9291 = fsub fast float 1.000000e+00, %9290
  %9292 = fmul fast float %9281, %9291
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = fdiv fast float %9293, %9284
  br label %9295

; <label>:9295                                    ; preds = %9288, %9279
  %9296 = phi float [ %9294, %9288 ], [ %9281, %9279 ]
  %9297 = phi float [ %9290, %9288 ], [ 1.000000e+00, %9279 ]
  %9298 = fcmp fast une float %9285, 0.000000e+00
  br i1 %9298, label %9299, label %9306, !dx.controlflow.hints !180

; <label>:9299                                    ; preds = %9295
  %9300 = fmul fast float %9285, 0x3FF7154760000000
  %9301 = call float @dx.op.unary.f32(i32 21, float %9300)  ; Exp(value)
  %9302 = fsub fast float 1.000000e+00, %9301
  %9303 = fmul fast float %9282, %9302
  %9304 = fsub fast float -0.000000e+00, %9303
  %9305 = fdiv fast float %9304, %9285
  br label %9306

; <label>:9306                                    ; preds = %9299, %9295
  %9307 = phi float [ %9305, %9299 ], [ %9282, %9295 ]
  %9308 = phi float [ %9301, %9299 ], [ 1.000000e+00, %9295 ]
  %9309 = fcmp fast une float %9286, 0.000000e+00
  br i1 %9309, label %9310, label %9317, !dx.controlflow.hints !180

; <label>:9310                                    ; preds = %9306
  %9311 = fmul fast float %9286, 0x3FF7154760000000
  %9312 = call float @dx.op.unary.f32(i32 21, float %9311)  ; Exp(value)
  %9313 = fsub fast float 1.000000e+00, %9312
  %9314 = fmul fast float %9283, %9313
  %9315 = fsub fast float -0.000000e+00, %9314
  %9316 = fdiv fast float %9315, %9286
  br label %9317

; <label>:9317                                    ; preds = %9310, %9306, %9266, %9259
  %9318 = phi float [ %9316, %9310 ], [ %9278, %9266 ], [ %9263, %9259 ], [ %9283, %9306 ]
  %9319 = phi float [ %9307, %9310 ], [ %9277, %9266 ], [ %9262, %9259 ], [ %9307, %9306 ]
  %9320 = phi float [ %9296, %9310 ], [ %9276, %9266 ], [ %9261, %9259 ], [ %9296, %9306 ]
  %9321 = phi float [ %9312, %9310 ], [ %9268, %9266 ], [ 1.000000e+00, %9259 ], [ 1.000000e+00, %9306 ]
  %9322 = phi float [ %9308, %9310 ], [ %9268, %9266 ], [ 1.000000e+00, %9259 ], [ %9308, %9306 ]
  %9323 = phi float [ %9297, %9310 ], [ %9268, %9266 ], [ 1.000000e+00, %9259 ], [ %9297, %9306 ]
  %9324 = fmul fast float %9323, %9235
  %9325 = fmul fast float %9322, %9246
  %9326 = fmul fast float %9321, %9257
  %9327 = fadd fast float %9324, %9320
  %9328 = fadd fast float %9325, %9319
  %9329 = fadd fast float %9326, %9318
  %9330 = fmul fast float %9323, %9234
  %9331 = fmul fast float %9322, %9245
  %9332 = fmul fast float %9321, %9256
  br label %9333

; <label>:9333                                    ; preds = %9317, %9128
  %9334 = phi float [ %9332, %9317 ], [ %9134, %9128 ]
  %9335 = phi float [ %9331, %9317 ], [ %9133, %9128 ]
  %9336 = phi float [ %9330, %9317 ], [ %9132, %9128 ]
  %9337 = phi float [ %9329, %9317 ], [ %9131, %9128 ]
  %9338 = phi float [ %9328, %9317 ], [ %9130, %9128 ]
  %9339 = phi float [ %9327, %9317 ], [ %9129, %9128 ]
  %9340 = fmul fast float %9339, %8285
  %9341 = fmul fast float %9338, %8285
  %9342 = fmul fast float %9337, %8285
  %9343 = fmul fast float %9336, %8576
  %9344 = call float @dx.op.dot3.f32(i32 55, float %9336, float %9335, float %9334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9345 = call float @dx.op.dot3.f32(i32 55, float %9340, float %9341, float %9342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9346 = select i1 %263, float %9344, float %9336
  %9347 = select i1 %263, float %9344, float %9335
  %9348 = select i1 %263, float 1.000000e+00, float %9334
  %9349 = select i1 %263, float %9345, float %9340
  %9350 = select i1 %263, float 0.000000e+00, float %9341
  %9351 = select i1 %263, float 0.000000e+00, float %9342
  %9352 = fmul fast float %9346, %8570
  %9353 = fmul fast float %9347, %8571
  %9354 = fmul fast float %9348, %8572
  %9355 = fadd fast float %9352, %9349
  %9356 = fadd fast float %9353, %9350
  %9357 = fadd fast float %9351, %9354
  %9358 = fmul fast float %9346, %8573
  %9359 = fmul fast float %9347, %8574
  %9360 = fmul fast float %9348, %8575
  %9361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.i32 %9361, 0
  %9363 = icmp eq i32 %9362, 0
  br i1 %9363, label %9731, label %9364, !dx.controlflow.hints !182

; <label>:9364                                    ; preds = %9333
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9368 = fmul fast float %9366, %121
  %9369 = fmul fast float %9367, %122
  %9370 = fmul fast float %9368, 2.000000e+00
  %9371 = fmul fast float %9369, 2.000000e+00
  %9372 = fsub fast float 1.000000e+00, %9370
  %9373 = fsub fast float 1.000000e+00, %9371
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 0
  %9376 = extractvalue %dx.types.CBufRet.f32 %9374, 1
  %9377 = extractvalue %dx.types.CBufRet.f32 %9374, 2
  %9378 = fmul fast float %9372, %9375
  %9379 = fmul fast float %9372, %9376
  %9380 = fmul fast float %9372, %9377
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 0
  %9383 = extractvalue %dx.types.CBufRet.f32 %9381, 1
  %9384 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9385 = fmul fast float %9373, %9382
  %9386 = fmul fast float %9373, %9383
  %9387 = fmul fast float %9373, %9384
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = fadd fast float %9385, %9389
  %9393 = fadd fast float %9392, %9378
  %9394 = fadd fast float %9386, %9390
  %9395 = fadd fast float %9394, %9379
  %9396 = fadd fast float %9387, %9391
  %9397 = fadd fast float %9396, %9380
  %9398 = fmul fast float %9393, %8569
  %9399 = fmul fast float %9395, %8569
  %9400 = fmul fast float %9397, %8569
  %9401 = fmul fast float %9398, %9398
  %9402 = fmul fast float %9399, %9399
  %9403 = fadd fast float %9401, %9402
  %9404 = fmul fast float %9400, %9400
  %9405 = fadd fast float %9403, %9404
  %9406 = call float @dx.op.unary.f32(i32 24, float %9405)  ; Sqrt(value)
  %9407 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %9408 = fsub fast float %9406, %9407
  %9409 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %9410 = fmul fast float %9408, %9409
  %9411 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  %9412 = fadd fast float %9411, -5.000000e-01
  %9413 = fmul fast float %9412, 2.000000e+00
  %9414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9415 = extractvalue %dx.types.CBufRet.f32 %9414, 2
  %9416 = call float @dx.op.binary.f32(i32 36, float %9415, float %9413)  ; FMin(a,b)
  %9417 = fsub fast float -0.000000e+00, %9415
  %9418 = fcmp fast ogt float %9416, %9417
  br i1 %9418, label %9419, label %9731, !dx.controlflow.hints !183

; <label>:9419                                    ; preds = %9364
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 3
  %9422 = fcmp fast ogt float %9421, 0.000000e+00
  br i1 %9422, label %9423, label %9498, !dx.controlflow.hints !184

; <label>:9423                                    ; preds = %9419
  %9424 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9425 = extractvalue %dx.types.Dimensions %9424, 0
  %9426 = sitofp i32 %9425 to float
  %9427 = extractvalue %dx.types.Dimensions %9424, 1
  %9428 = sitofp i32 %9427 to float
  %9429 = fmul fast float %9368, %9426
  %9430 = fmul fast float %9369, %9428
  %9431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.f32 %9431, 1
  %9433 = fsub fast float -0.000000e+00, %9432
  %9434 = fptoui float %9433 to i32
  %9435 = fptoui float %9429 to i32
  %9436 = fptoui float %9430 to i32
  %9437 = and i32 %9434, 31
  %9438 = lshr i32 %9435, %9437
  %9439 = lshr i32 %9436, %9437
  %9440 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9434, i32 %9438, i32 %9439, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9441 = extractvalue %dx.types.ResRet.f32 %9440, 0
  %9442 = fcmp fast olt float %9441, -1.000000e+00
  %9443 = fcmp fast ogt float %9441, -1.000000e+00
  %9444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9445 = extractvalue %dx.types.CBufRet.f32 %9444, 1
  %9446 = select i1 %9443, float %9445, float 1.000000e+00
  %9447 = fadd fast float %9441, 1.000000e+00
  %9448 = fmul fast float %9446, %9447
  %9449 = call float @dx.op.unary.f32(i32 6, float %9448)  ; FAbs(value)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9444, 3
  %9451 = fcmp fast oge float %9449, %9450
  %9452 = select i1 %9451, float 0x4197782600000000, float %9449
  %9453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9454 = extractvalue %dx.types.CBufRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.CBufRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.CBufRet.f32 %9453, 2
  %9457 = select i1 %9442, float %9454, float %9375
  %9458 = select i1 %9442, float %9455, float %9376
  %9459 = select i1 %9442, float %9456, float %9377
  %9460 = fmul fast float %9457, %9372
  %9461 = fmul fast float %9458, %9372
  %9462 = fmul fast float %9459, %9372
  %9463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9464 = extractvalue %dx.types.CBufRet.f32 %9463, 0
  %9465 = extractvalue %dx.types.CBufRet.f32 %9463, 1
  %9466 = extractvalue %dx.types.CBufRet.f32 %9463, 2
  %9467 = select i1 %9442, float %9464, float %9382
  %9468 = select i1 %9442, float %9465, float %9383
  %9469 = select i1 %9442, float %9466, float %9384
  %9470 = fmul fast float %9467, %9373
  %9471 = fmul fast float %9468, %9373
  %9472 = fmul fast float %9469, %9373
  %9473 = fadd fast float %9470, %9460
  %9474 = fadd fast float %9471, %9461
  %9475 = fadd fast float %9472, %9462
  %9476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.f32 %9476, 0
  %9478 = extractvalue %dx.types.CBufRet.f32 %9476, 1
  %9479 = extractvalue %dx.types.CBufRet.f32 %9476, 2
  %9480 = select i1 %9442, float %9477, float %9389
  %9481 = select i1 %9442, float %9478, float %9390
  %9482 = select i1 %9442, float %9479, float %9391
  %9483 = fadd fast float %9473, %9480
  %9484 = fadd fast float %9474, %9481
  %9485 = fadd fast float %9475, %9482
  %9486 = fmul fast float %9483, %9452
  %9487 = fmul fast float %9484, %9452
  %9488 = fmul fast float %9485, %9452
  %9489 = fmul fast float %9486, %9486
  %9490 = fmul fast float %9487, %9487
  %9491 = fadd fast float %9489, %9490
  %9492 = fmul fast float %9488, %9488
  %9493 = fadd fast float %9491, %9492
  %9494 = call float @dx.op.unary.f32(i32 24, float %9493)  ; Sqrt(value)
  %9495 = fsub fast float %9494, %9407
  %9496 = fmul fast float %9495, %9409
  %9497 = call float @dx.op.unary.f32(i32 7, float %9496)  ; Saturate(value)
  br label %9498

; <label>:9498                                    ; preds = %9423, %9419
  %9499 = phi float [ %9497, %9423 ], [ 1.000000e+00, %9419 ]
  %9500 = fmul fast float %9416, 5.000000e-01
  %9501 = fadd fast float %9500, 5.000000e-01
  %9502 = call float @dx.op.unary.f32(i32 22, float %9501)  ; Frc(value)
  %9503 = call float @dx.op.unary.f32(i32 27, float %9502)  ; Round_ni(value)
  %9504 = call float @dx.op.unary.f32(i32 22, float %9502)  ; Frc(value)
  %9505 = fmul fast float %9504, 2.000000e+00
  %9506 = fadd fast float %9505, -1.000000e+00
  %9507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9368, float %9369, float %9503, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.ResRet.f32 %9507, 1
  %9510 = extractvalue %dx.types.ResRet.f32 %9507, 2
  %9511 = extractvalue %dx.types.ResRet.f32 %9507, 3
  %9512 = fadd fast float %9508, -5.000000e-01
  %9513 = fadd fast float %9510, -5.000000e-01
  %9514 = fmul fast float %9512, 0xBFD5555560000000
  %9515 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9513, float %9514)  ; FMad(a,b,c)
  %9516 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9509, float 0.000000e+00)  ; FMad(a,b,c)
  %9517 = fadd fast float %9516, %9511
  %9518 = fmul fast float %9512, -7.500000e-01
  %9519 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9513, float %9518)  ; FMad(a,b,c)
  %9520 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9509, float 0.000000e+00)  ; FMad(a,b,c)
  %9521 = fadd fast float %9520, %9511
  %9522 = call float @dx.op.binary.f32(i32 35, float %9515, float -1.000000e+00)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float %9517, float -1.000000e+00)  ; FMax(a,b)
  %9524 = call float @dx.op.binary.f32(i32 35, float %9519, float -1.000000e+00)  ; FMax(a,b)
  %9525 = call float @dx.op.binary.f32(i32 35, float %9521, float -1.000000e+00)  ; FMax(a,b)
  %9526 = call float @dx.op.binary.f32(i32 36, float %9522, float 1.000000e+00)  ; FMin(a,b)
  %9527 = call float @dx.op.binary.f32(i32 36, float %9523, float 1.000000e+00)  ; FMin(a,b)
  %9528 = call float @dx.op.binary.f32(i32 36, float %9524, float 1.000000e+00)  ; FMin(a,b)
  %9529 = call float @dx.op.binary.f32(i32 36, float %9525, float 1.000000e+00)  ; FMin(a,b)
  %9530 = fcmp fast olt float %9526, 0x3FEFFF8020000000
  br i1 %9530, label %9531, label %9646, !dx.controlflow.hints !185

; <label>:9531                                    ; preds = %9498
  %9532 = extractvalue %dx.types.CBufRet.f32 %9414, 3
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = extractvalue %dx.types.CBufRet.f32 %9533, 3
  %9538 = fsub fast float %9534, %9526
  %9539 = fsub fast float %9535, %9527
  %9540 = fsub fast float %9536, %9528
  %9541 = fsub fast float %9537, %9529
  %9542 = fmul fast float %9538, %9532
  %9543 = fmul fast float %9539, %9532
  %9544 = fmul fast float %9540, %9532
  %9545 = fmul fast float %9541, %9532
  %9546 = fadd fast float %9542, %9526
  %9547 = fadd fast float %9543, %9527
  %9548 = fsub fast float -0.000000e+00, %9547
  %9549 = fadd fast float %9544, %9528
  %9550 = fadd fast float %9545, %9529
  %9551 = fmul fast float %9546, %9546
  %9552 = fsub fast float %9547, %9551
  %9553 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9552)  ; FMax(a,b)
  %9554 = fdiv fast float 1.000000e+00, %9553
  %9555 = fmul fast float %9547, %9546
  %9556 = fsub fast float %9549, %9555
  %9557 = fsub fast float %9506, %9546
  %9558 = fmul fast float %9506, %9506
  %9559 = fsub fast float %9558, %9547
  %9560 = fmul fast float %9557, %9554
  %9561 = fmul fast float %9560, %9556
  %9562 = fsub fast float %9559, %9561
  %9563 = fmul fast float %9547, %9547
  %9564 = fsub fast float %9550, %9563
  %9565 = fmul fast float %9556, %9556
  %9566 = fmul fast float %9565, %9554
  %9567 = fsub fast float %9564, %9566
  %9568 = fdiv fast float %9562, %9567
  %9569 = fmul fast float %9556, %9568
  %9570 = fsub fast float %9557, %9569
  %9571 = fmul fast float %9570, %9554
  %9572 = fmul fast float %9571, %9546
  %9573 = fsub fast float 1.000000e+00, %9572
  %9574 = fmul fast float %9547, %9568
  %9575 = fsub fast float %9573, %9574
  %9576 = fmul fast float %9571, %9571
  %9577 = fmul fast float %9568, 4.000000e+00
  %9578 = fmul fast float %9577, %9575
  %9579 = fsub fast float %9576, %9578
  %9580 = call float @dx.op.unary.f32(i32 24, float %9579)  ; Sqrt(value)
  %9581 = fcmp fast oge float %9571, 0.000000e+00
  %9582 = fsub fast float -0.000000e+00, %9580
  %9583 = select i1 %9581, float %9582, float %9580
  %9584 = fsub fast float %9583, %9571
  %9585 = fdiv fast float %9584, %9568
  %9586 = fdiv fast float %9575, %9584
  %9587 = fmul fast float %9585, 5.000000e-01
  %9588 = fmul fast float %9586, 2.000000e+00
  %9589 = select i1 %9581, float %9587, float %9588
  %9590 = select i1 %9581, float %9588, float %9587
  %9591 = call float @dx.op.binary.f32(i32 35, float %9589, float %9590)  ; FMax(a,b)
  %9592 = call float @dx.op.binary.f32(i32 36, float %9589, float %9590)  ; FMin(a,b)
  %9593 = fcmp fast ogt float %9506, %9592
  br i1 %9593, label %9594, label %9604

; <label>:9594                                    ; preds = %9531
  %9595 = fsub fast float %9506, %9592
  %9596 = fsub fast float %9591, %9592
  %9597 = fmul fast float %9595, %9596
  %9598 = fmul fast float %9591, %9506
  %9599 = fadd fast float %9591, %9506
  %9600 = fmul fast float %9599, %9546
  %9601 = fadd fast float %9598, %9547
  %9602 = fsub fast float %9601, %9600
  %9603 = fdiv fast float %9602, %9597
  br label %9604

; <label>:9604                                    ; preds = %9594, %9531
  %9605 = phi float [ %9603, %9594 ], [ 0.000000e+00, %9531 ]
  %9606 = fcmp fast ogt float %9506, %9591
  %9607 = fsub fast float %9506, %9591
  br i1 %9606, label %9608, label %9618

; <label>:9608                                    ; preds = %9604
  %9609 = fsub fast float %9591, %9592
  %9610 = fmul fast float %9609, %9607
  %9611 = fmul fast float %9592, %9506
  %9612 = fadd fast float %9592, %9506
  %9613 = fmul fast float %9612, %9546
  %9614 = fsub fast float %9548, %9611
  %9615 = fadd fast float %9614, %9613
  %9616 = fdiv fast float %9615, %9610
  %9617 = fadd fast float %9616, %9605
  br label %9618

; <label>:9618                                    ; preds = %9608, %9604
  %9619 = phi float [ %9617, %9608 ], [ %9605, %9604 ]
  %9620 = fsub fast float %9506, %9592
  %9621 = fmul fast float %9620, %9607
  %9622 = fmul fast float %9592, %9591
  %9623 = fadd fast float %9592, %9591
  %9624 = fmul fast float %9623, %9546
  %9625 = fadd fast float %9622, %9547
  %9626 = fsub fast float %9625, %9624
  %9627 = fdiv fast float %9626, %9621
  %9628 = call float @dx.op.unary.f32(i32 7, float %9619)  ; Saturate(value)
  %9629 = fcmp fast oeq float %8297, 0.000000e+00
  %9630 = extractvalue %dx.types.CBufRet.f32 %9414, 0
  %9631 = fcmp fast oeq float %9630, 0.000000e+00
  %9632 = or i1 %9629, %9631
  %9633 = fmul fast float %9630, 2.000000e+00
  %9634 = fadd fast float %9415, %9416
  %9635 = fdiv fast float %9634, %9633
  %9636 = call float @dx.op.unary.f32(i32 7, float %9635)  ; Saturate(value)
  %9637 = fmul fast float %9636, 2.000000e+00
  %9638 = fsub fast float 3.000000e+00, %9637
  %9639 = fmul fast float %9636, %9636
  %9640 = fmul fast float %9639, %9638
  %9641 = select i1 %9632, float 1.000000e+00, float %9640
  %9642 = fmul fast float %9627, %8297
  %9643 = fadd fast float %9628, %9642
  %9644 = call float @dx.op.unary.f32(i32 7, float %9643)  ; Saturate(value)
  %9645 = fmul fast float %9641, %9644
  br label %9646

; <label>:9646                                    ; preds = %9618, %9498
  %9647 = phi float [ %9645, %9618 ], [ 0.000000e+00, %9498 ]
  %9648 = fsub fast float 1.000000e+00, %9647
  %9649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9368, float %9369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9650 = extractvalue %dx.types.ResRet.f32 %9649, 0
  %9651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.i32 %9651, 2
  %9653 = icmp eq i32 %9652, 0
  br i1 %9653, label %9659, label %9654

; <label>:9654                                    ; preds = %9646
  %9655 = call float @dx.op.unary.f32(i32 7, float %9647)  ; Saturate(value)
  %9656 = fadd fast float %9650, -1.000000e+00
  %9657 = fmul fast float %9655, %9656
  %9658 = fadd fast float %9657, 1.000000e+00
  br label %9659

; <label>:9659                                    ; preds = %9654, %9646
  %9660 = phi float [ %9658, %9654 ], [ %9648, %9646 ]
  br i1 %9422, label %9661, label %9679

; <label>:9661                                    ; preds = %9659
  %9662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9663 = extractvalue %dx.types.CBufRet.f32 %9662, 1
  %9664 = fsub fast float %9499, %9663
  %9665 = call float @dx.op.unary.f32(i32 7, float %9664)  ; Saturate(value)
  %9666 = fsub fast float %9499, %9421
  %9667 = call float @dx.op.unary.f32(i32 7, float %9666)  ; Saturate(value)
  %9668 = fsub fast float %9665, %9667
  %9669 = fsub fast float %9501, %9667
  %9670 = fdiv fast float %9669, %9668
  %9671 = call float @dx.op.unary.f32(i32 7, float %9670)  ; Saturate(value)
  %9672 = fmul fast float %9671, 2.000000e+00
  %9673 = fsub fast float 3.000000e+00, %9672
  %9674 = fsub fast float %9650, %9660
  %9675 = fmul fast float %9671, %9671
  %9676 = fmul fast float %9675, %9674
  %9677 = fmul fast float %9676, %9673
  %9678 = fadd fast float %9677, %9660
  br label %9679

; <label>:9679                                    ; preds = %9661, %9659
  %9680 = phi float [ %9678, %9661 ], [ %9660, %9659 ]
  %9681 = call float @dx.op.binary.f32(i32 35, float %9650, float %9680)  ; FMax(a,b)
  %9682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.i32 %9682, 2
  %9684 = and i32 %9683, 1
  %9685 = icmp eq i32 %9684, 0
  %9686 = fcmp fast une float %9681, 1.000000e+00
  %9687 = and i1 %9686, %9685
  br i1 %9687, label %9688, label %9707

; <label>:9688                                    ; preds = %9679
  %9689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9368, float %9369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9690 = extractvalue %dx.types.ResRet.f32 %9689, 0
  %9691 = extractvalue %dx.types.ResRet.f32 %9689, 1
  %9692 = extractvalue %dx.types.ResRet.f32 %9689, 2
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 1
  %9695 = fmul fast float %9694, %9690
  %9696 = fmul fast float %9694, %9691
  %9697 = fmul fast float %9694, %9692
  %9698 = fcmp fast ogt float %9650, 0x3FEFFF2E40000000
  %9699 = fsub fast float 1.000000e+00, %9681
  %9700 = fsub fast float 1.000000e+00, %9650
  %9701 = fdiv fast float %9699, %9700
  %9702 = call float @dx.op.unary.f32(i32 7, float %9701)  ; Saturate(value)
  %9703 = select i1 %9698, float 0.000000e+00, float %9702
  %9704 = fmul fast float %9695, %9703
  %9705 = fmul fast float %9696, %9703
  %9706 = fmul fast float %9697, %9703
  br label %9707

; <label>:9707                                    ; preds = %9688, %9679
  %9708 = phi float [ 0.000000e+00, %9679 ], [ %9704, %9688 ]
  %9709 = phi float [ 0.000000e+00, %9679 ], [ %9705, %9688 ]
  %9710 = phi float [ 0.000000e+00, %9679 ], [ %9706, %9688 ]
  %9711 = fmul fast float %9708, %8285
  %9712 = fmul fast float %9709, %8285
  %9713 = fmul fast float %9710, %8285
  %9714 = fmul fast float %9681, %9343
  %9715 = call float @dx.op.dot3.f32(i32 55, float %9681, float %9681, float %9681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9716 = call float @dx.op.dot3.f32(i32 55, float %9711, float %9712, float %9713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9717 = select i1 %263, float %9715, float %9681
  %9718 = select i1 %263, float 1.000000e+00, float %9681
  %9719 = select i1 %263, float %9716, float %9711
  %9720 = select i1 %263, float 0.000000e+00, float %9712
  %9721 = select i1 %263, float 0.000000e+00, float %9713
  %9722 = fmul fast float %9717, %9355
  %9723 = fmul fast float %9717, %9356
  %9724 = fmul fast float %9718, %9357
  %9725 = fadd fast float %9722, %9719
  %9726 = fadd fast float %9723, %9720
  %9727 = fadd fast float %9721, %9724
  %9728 = fmul fast float %9717, %9358
  %9729 = fmul fast float %9717, %9359
  %9730 = fmul fast float %9718, %9360
  br label %9731

; <label>:9731                                    ; preds = %9707, %9364, %9333, %8565
  %9732 = phi float [ %8570, %8565 ], [ %9355, %9333 ], [ %9725, %9707 ], [ %9355, %9364 ]
  %9733 = phi float [ %8571, %8565 ], [ %9356, %9333 ], [ %9726, %9707 ], [ %9356, %9364 ]
  %9734 = phi float [ %8572, %8565 ], [ %9357, %9333 ], [ %9727, %9707 ], [ %9357, %9364 ]
  %9735 = phi float [ %8573, %8565 ], [ %9358, %9333 ], [ %9728, %9707 ], [ %9358, %9364 ]
  %9736 = phi float [ %8574, %8565 ], [ %9359, %9333 ], [ %9729, %9707 ], [ %9359, %9364 ]
  %9737 = phi float [ %8575, %8565 ], [ %9360, %9333 ], [ %9730, %9707 ], [ %9360, %9364 ]
  %9738 = phi float [ %8576, %8565 ], [ %9343, %9333 ], [ %9714, %9707 ], [ %9343, %9364 ]
  %9739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9740 = extractvalue %dx.types.CBufRet.f32 %9739, 2
  %9741 = extractvalue %dx.types.CBufRet.f32 %9739, 3
  %9742 = fmul fast float %9740, %121
  %9743 = fmul fast float %9741, %122
  %9744 = call float @dx.op.unary.f32(i32 7, float %9742)  ; Saturate(value)
  %9745 = call float @dx.op.unary.f32(i32 7, float %9743)  ; Saturate(value)
  %9746 = select i1 %8307, i32 2, i32 0
  %9747 = or i32 %9746, 1
  %9748 = uitofp i32 %9747 to float
  %9749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9744, float %9745, float %9748, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9750 = extractvalue %dx.types.ResRet.f32 %9749, 0
  %9751 = extractvalue %dx.types.ResRet.f32 %9749, 1
  %9752 = extractvalue %dx.types.ResRet.f32 %9749, 2
  %9753 = extractvalue %dx.types.ResRet.f32 %9749, 3
  %9754 = add nuw nsw i32 %9746, 2
  %9755 = uitofp i32 %9754 to float
  %9756 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9744, float %9745, float %9755, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9757 = extractvalue %dx.types.ResRet.f32 %9756, 0
  %9758 = extractvalue %dx.types.ResRet.f32 %9756, 1
  %9759 = extractvalue %dx.types.ResRet.f32 %9756, 2
  %9760 = extractvalue %dx.types.ResRet.f32 %9756, 3
  %9761 = call float @dx.op.binary.f32(i32 35, float %9751, float %9752)  ; FMax(a,b)
  %9762 = call float @dx.op.binary.f32(i32 35, float %9750, float %9761)  ; FMax(a,b)
  %9763 = call float @dx.op.binary.f32(i32 35, float %9762, float %9753)  ; FMax(a,b)
  %9764 = call float @dx.op.binary.f32(i32 36, float %9758, float %9759)  ; FMin(a,b)
  %9765 = call float @dx.op.binary.f32(i32 36, float %9757, float %9764)  ; FMin(a,b)
  %9766 = call float @dx.op.binary.f32(i32 36, float %9765, float %9760)  ; FMin(a,b)
  %9767 = fmul fast float %9763, 2.550000e+02
  %9768 = fadd fast float %9767, 0x3F70101020000000
  %9769 = fptoui float %9768 to i32
  %9770 = fmul fast float %9766, 2.550000e+02
  %9771 = fadd fast float %9770, 0x3F70101020000000
  %9772 = fptoui float %9771 to i32
  %9773 = icmp ult i32 %9769, %9772
  br i1 %9773, label %9774, label %9943

; <label>:9774                                    ; preds = %9731
  %9775 = fcmp fast ogt float %107, 9.843750e-01
  %9776 = fadd fast float %8569, -4.000000e+00
  %9777 = select i1 %9775, float -4.000000e+00, float %9776
  %9778 = call float @dx.op.binary.f32(i32 35, float %9777, float 0.000000e+00)  ; FMax(a,b)
  %9779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9779, 0
  %9781 = fadd fast float %9780, %9778
  %9782 = extractvalue %dx.types.CBufRet.f32 %9779, 2
  %9783 = fmul fast float %9781, %9782
  %9784 = call float @dx.op.unary.f32(i32 23, float %9783)  ; Log(value)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9779, 3
  %9786 = fmul fast float %9785, %9784
  %9787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9788 = extractvalue %dx.types.CBufRet.f32 %9787, 2
  %9789 = fmul fast float %9786, %9788
  %9790 = call float @dx.op.unary.f32(i32 7, float %9789)  ; Saturate(value)
  %9791 = uitofp i32 %9769 to float
  %9792 = uitofp i32 %9772 to float
  %9793 = fadd fast float %9791, 5.000000e-01
  %9794 = fadd fast float %9792, 5.000000e-01
  %9795 = fmul fast float %9788, %9793
  %9796 = fmul fast float %9788, %9794
  %9797 = fadd fast float %9795, 0x3F0FFB4800000000
  %9798 = fadd fast float %9796, 0xBF0FFB4800000000
  %9799 = call float @dx.op.binary.f32(i32 35, float %9790, float %9797)  ; FMax(a,b)
  %9800 = call float @dx.op.binary.f32(i32 36, float %9799, float %9798)  ; FMin(a,b)
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 1
  %9803 = extractvalue %dx.types.CBufRet.f32 %9801, 2
  %9804 = extractvalue %dx.types.CBufRet.f32 %9801, 0
  %9805 = select i1 %8307, float %9804, float 0.000000e+00
  %9806 = fmul fast float %9802, %9800
  %9807 = fadd fast float %9805, %9806
  %9808 = fadd fast float %9805, %9803
  %9809 = fsub fast float %9802, %9803
  %9810 = fadd fast float %9809, %9805
  %9811 = call float @dx.op.binary.f32(i32 35, float %9807, float %9808)  ; FMax(a,b)
  %9812 = call float @dx.op.binary.f32(i32 36, float %9811, float %9810)  ; FMin(a,b)
  %9813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9744, float %9745, float %9812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9814 = extractvalue %dx.types.ResRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.ResRet.f32 %9813, 1
  %9816 = extractvalue %dx.types.ResRet.f32 %9813, 2
  %9817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9818 = extractvalue %dx.types.CBufRet.i32 %9817, 0
  %9819 = extractvalue %dx.types.CBufRet.i32 %9817, 1
  %9820 = uitofp i32 %9818 to float
  %9821 = uitofp i32 %9819 to float
  %9822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.f32 %9822, 0
  %9824 = extractvalue %dx.types.CBufRet.f32 %9822, 1
  %9825 = fmul fast float %9820, %9744
  %9826 = fmul fast float %9821, %9745
  %9827 = fadd fast float %9825, -5.000000e-01
  %9828 = fadd fast float %9826, -5.000000e-01
  %9829 = call float @dx.op.unary.f32(i32 22, float %9827)  ; Frc(value)
  %9830 = call float @dx.op.unary.f32(i32 22, float %9828)  ; Frc(value)
  %9831 = fmul fast float %9829, %9829
  %9832 = fmul fast float %9831, %9829
  %9833 = fsub fast float 3.000000e+00, %9829
  %9834 = fmul fast float %9831, %9833
  %9835 = fmul fast float %9829, 3.000000e+00
  %9836 = fmul fast float %9832, 3.000000e+00
  %9837 = fmul fast float %9831, 6.000000e+00
  %9838 = fsub fast float %9836, %9837
  %9839 = fadd fast float %9838, 4.000000e+00
  %9840 = fmul fast float %9839, 0x3FC5555560000000
  %9841 = fmul fast float %9832, -3.000000e+00
  %9842 = fadd fast float %9831, %9829
  %9843 = fmul fast float %9842, 3.000000e+00
  %9844 = fadd fast float %9841, 1.000000e+00
  %9845 = fadd fast float %9844, %9843
  %9846 = fmul fast float %9832, 0x3FC5555560000000
  %9847 = fmul fast float %9830, %9830
  %9848 = fmul fast float %9847, %9830
  %9849 = fsub fast float 3.000000e+00, %9830
  %9850 = fmul fast float %9847, %9849
  %9851 = fmul fast float %9830, 3.000000e+00
  %9852 = fmul fast float %9848, 3.000000e+00
  %9853 = fmul fast float %9847, 6.000000e+00
  %9854 = fsub fast float %9852, %9853
  %9855 = fadd fast float %9854, 4.000000e+00
  %9856 = fmul fast float %9855, 0x3FC5555560000000
  %9857 = fmul fast float %9848, -3.000000e+00
  %9858 = fadd fast float %9847, %9830
  %9859 = fmul fast float %9858, 3.000000e+00
  %9860 = fadd fast float %9857, 1.000000e+00
  %9861 = fadd fast float %9860, %9859
  %9862 = fmul fast float %9848, 0x3FC5555560000000
  %9863 = fadd fast float %9829, 1.000000e+00
  %9864 = fsub fast float 1.000000e+00, %9835
  %9865 = fadd fast float %9864, %9834
  %9866 = fadd fast float %9865, %9839
  %9867 = fmul fast float %9866, 0x3FC5555560000000
  %9868 = fdiv fast float %9840, %9867
  %9869 = fsub fast float %9863, %9868
  %9870 = fsub fast float 1.000000e+00, %9829
  %9871 = fadd fast float %9845, %9832
  %9872 = fmul fast float %9871, 0x3FC5555560000000
  %9873 = fdiv fast float %9846, %9872
  %9874 = fadd fast float %9870, %9873
  %9875 = fadd fast float %9830, 1.000000e+00
  %9876 = fsub fast float 1.000000e+00, %9851
  %9877 = fadd fast float %9876, %9850
  %9878 = fadd fast float %9877, %9855
  %9879 = fmul fast float %9878, 0x3FC5555560000000
  %9880 = fdiv fast float %9856, %9879
  %9881 = fsub fast float %9875, %9880
  %9882 = fsub fast float 1.000000e+00, %9830
  %9883 = fadd fast float %9861, %9848
  %9884 = fmul fast float %9883, 0x3FC5555560000000
  %9885 = fdiv fast float %9862, %9884
  %9886 = fadd fast float %9885, %9882
  %9887 = fmul fast float %9869, %9823
  %9888 = fsub fast float %9744, %9887
  %9889 = fmul fast float %9874, %9823
  %9890 = fadd fast float %9889, %9744
  %9891 = fmul fast float %9886, %9824
  %9892 = fadd fast float %9891, %9745
  %9893 = fmul fast float %9881, %9824
  %9894 = fsub fast float %9745, %9893
  %9895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9888, float %9894, float %9812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9896 = extractvalue %dx.types.ResRet.f32 %9895, 0
  %9897 = extractvalue %dx.types.ResRet.f32 %9895, 1
  %9898 = extractvalue %dx.types.ResRet.f32 %9895, 2
  %9899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9890, float %9894, float %9812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9900 = extractvalue %dx.types.ResRet.f32 %9899, 0
  %9901 = extractvalue %dx.types.ResRet.f32 %9899, 1
  %9902 = extractvalue %dx.types.ResRet.f32 %9899, 2
  %9903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9888, float %9892, float %9812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9904 = extractvalue %dx.types.ResRet.f32 %9903, 0
  %9905 = extractvalue %dx.types.ResRet.f32 %9903, 1
  %9906 = extractvalue %dx.types.ResRet.f32 %9903, 2
  %9907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9890, float %9892, float %9812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9908 = extractvalue %dx.types.ResRet.f32 %9907, 0
  %9909 = extractvalue %dx.types.ResRet.f32 %9907, 1
  %9910 = extractvalue %dx.types.ResRet.f32 %9907, 2
  %9911 = fsub fast float %9904, %9896
  %9912 = fsub fast float %9905, %9897
  %9913 = fsub fast float %9906, %9898
  %9914 = fmul fast float %9911, %9884
  %9915 = fmul fast float %9912, %9884
  %9916 = fmul fast float %9913, %9884
  %9917 = fadd fast float %9914, %9896
  %9918 = fadd fast float %9915, %9897
  %9919 = fadd fast float %9916, %9898
  %9920 = fsub fast float %9908, %9900
  %9921 = fsub fast float %9909, %9901
  %9922 = fsub fast float %9910, %9902
  %9923 = fmul fast float %9920, %9884
  %9924 = fmul fast float %9921, %9884
  %9925 = fmul fast float %9922, %9884
  %9926 = fsub fast float %9900, %9917
  %9927 = fadd fast float %9926, %9923
  %9928 = fsub fast float %9901, %9918
  %9929 = fadd fast float %9928, %9924
  %9930 = fsub fast float %9902, %9919
  %9931 = fadd fast float %9930, %9925
  %9932 = fmul fast float %9927, %9872
  %9933 = fmul fast float %9929, %9872
  %9934 = fmul fast float %9931, %9872
  %9935 = fadd fast float %9932, %9917
  %9936 = fadd fast float %9933, %9918
  %9937 = fadd fast float %9934, %9919
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 1
  %9940 = fmul fast float %9935, %9939
  %9941 = fmul fast float %9936, %9939
  %9942 = fmul fast float %9937, %9939
  br label %9943

; <label>:9943                                    ; preds = %9774, %9731
  %9944 = phi float [ %9814, %9774 ], [ 1.000000e+00, %9731 ]
  %9945 = phi float [ %9815, %9774 ], [ 1.000000e+00, %9731 ]
  %9946 = phi float [ %9816, %9774 ], [ 1.000000e+00, %9731 ]
  %9947 = phi float [ %9940, %9774 ], [ 0.000000e+00, %9731 ]
  %9948 = phi float [ %9941, %9774 ], [ 0.000000e+00, %9731 ]
  %9949 = phi float [ %9942, %9774 ], [ 0.000000e+00, %9731 ]
  %9950 = fmul fast float %9947, %8285
  %9951 = fmul fast float %9948, %8285
  %9952 = fmul fast float %9949, %8285
  %9953 = fmul fast float %9944, %9738
  %9954 = call float @dx.op.dot3.f32(i32 55, float %9944, float %9945, float %9946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9955 = call float @dx.op.dot3.f32(i32 55, float %9950, float %9951, float %9952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9956 = select i1 %263, float %9954, float %9944
  %9957 = select i1 %263, float %9954, float %9945
  %9958 = select i1 %263, float 1.000000e+00, float %9946
  %9959 = select i1 %263, float %9955, float %9950
  %9960 = select i1 %263, float 0.000000e+00, float %9951
  %9961 = select i1 %263, float 0.000000e+00, float %9952
  %9962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9963 = extractvalue %dx.types.CBufRet.i32 %9962, 3
  %9964 = and i32 %9963, 3
  %9965 = icmp ne i32 %9964, 0
  %9966 = and i32 %9963, 4
  %9967 = icmp ne i32 %9966, 0
  %9968 = and i1 %9965, %9967
  %9969 = and i1 %263, %9968
  br i1 %9969, label %9970, label %9976

; <label>:9970                                    ; preds = %9943
  %9971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9972 = extractvalue %dx.types.CBufRet.f32 %9971, 1
  %9973 = fadd fast float %9953, -1.000000e+00
  %9974 = fmul fast float %9972, %9973
  %9975 = fadd fast float %9974, 1.000000e+00
  br label %9976

; <label>:9976                                    ; preds = %9970, %9943
  %9977 = phi float [ %9975, %9970 ], [ %9953, %9943 ]
  %9978 = fadd fast float %9735, %9732
  %9979 = fmul fast float %9956, %9978
  %9980 = fadd fast float %9979, %9959
  %9981 = fadd fast float %9736, %9733
  %9982 = fmul fast float %9957, %9981
  %9983 = fadd fast float %9982, %9960
  %9984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9985 = extractvalue %dx.types.CBufRet.f32 %9984, 0
  br i1 %263, label %9986, label %10009

; <label>:9986                                    ; preds = %9976
  %9987 = fadd fast float %9980, %9983
  %9988 = fmul fast float %9985, %9987
  %9989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9990 = extractvalue %dx.types.CBufRet.f32 %9989, 3
  %9991 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %9992 = fsub fast float %8294, %8288
  %9993 = fadd fast float %9992, %8295
  %9994 = fsub fast float %9993, %9991
  %9995 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %9996 = fmul fast float %9994, %9995
  %9997 = call float @dx.op.unary.f32(i32 7, float %9996)  ; Saturate(value)
  %9998 = fsub fast float %9997, %9990
  %9999 = fmul fast float %9998, %9977
  %10000 = fadd fast float %9999, %9990
  %10001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10002 = extractvalue %dx.types.CBufRet.f32 %10001, 0
  %10003 = fsub fast float %10000, %10002
  %10004 = fmul fast float %10003, 1.000000e+01
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = fmul fast float %10005, %8284
  %10007 = fadd fast float %10006, %8285
  %10008 = fmul fast float %10007, %10000
  br label %10033

; <label>:10009                                   ; preds = %9976
  %10010 = fadd fast float %9737, %9734
  %10011 = fmul fast float %9958, %10010
  %10012 = fadd fast float %10011, %9961
  %10013 = fmul fast float %9985, %9980
  %10014 = fmul fast float %9985, %9983
  %10015 = fmul fast float %9985, %10012
  %10016 = call float @dx.op.binary.f32(i32 35, float %10014, float %10015)  ; FMax(a,b)
  %10017 = call float @dx.op.binary.f32(i32 35, float %10013, float %10016)  ; FMax(a,b)
  %10018 = call float @dx.op.binary.f32(i32 35, float %10017, float %8285)  ; FMax(a,b)
  %10019 = fcmp fast ugt float %10018, 0x3F10000000000000
  br i1 %10019, label %10021, label %10020

; <label>:10020                                   ; preds = %10009
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10021

; <label>:10021                                   ; preds = %10020, %10009
  %10022 = add i32 %62, 356
  %10023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10022, i32 undef)  ; BufferLoad(srv,index,wot)
  %10024 = extractvalue %dx.types.ResRet.i32 %10023, 0
  %10025 = and i32 %10024, 32
  %10026 = icmp eq i32 %10025, 0
  br i1 %10026, label %10033, label %10027

; <label>:10027                                   ; preds = %10021
  %10028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10029 = extractvalue %dx.types.CBufRet.f32 %10028, 0
  %10030 = fmul fast float %10029, 0x3FE99999A0000000
  %10031 = fadd fast float %10029, %10013
  %10032 = fadd fast float %10030, %10015
  br label %10033

; <label>:10033                                   ; preds = %10027, %10021, %9986
  %10034 = phi float [ %9988, %9986 ], [ %10031, %10027 ], [ %10013, %10021 ]
  %10035 = phi float [ %10008, %9986 ], [ %10014, %10027 ], [ %10014, %10021 ]
  %10036 = phi float [ %10007, %9986 ], [ %10032, %10027 ], [ %10015, %10021 ]
  %10037 = phi float [ %10007, %9986 ], [ %8285, %10027 ], [ %8285, %10021 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10038 = call float @dx.op.binary.f32(i32 36, float %10034, float 3.225500e+04)  ; FMin(a,b)
  %10039 = call float @dx.op.binary.f32(i32 36, float %10035, float 3.225500e+04)  ; FMin(a,b)
  %10040 = call float @dx.op.binary.f32(i32 36, float %10036, float 3.225500e+04)  ; FMin(a,b)
  %10041 = call float @dx.op.binary.f32(i32 36, float %10037, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10038)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10039)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10041)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !62, !65}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !34}
!34 = !{i32 0, i32 5}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!56 = !{i32 47, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!62 = !{!63, !64}
!63 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !101}
!75 = !{!76, !99, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 1, i8 0, !79}
!81 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"SH_RED", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 5, i8 0, !79}
!87 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!88 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 7, i8 0, !79}
!89 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 8, i8 0, !84}
!90 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 9, i8 0, !79}
!91 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 10, i8 0, !82}
!92 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!93 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 12, i8 0, !84}
!94 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 13, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !78, i8 1, i32 1, i8 4, i32 14, i8 0, !95}
!97 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !78, i8 1, i32 1, i8 1, i32 13, i8 1, !95}
!98 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!99 = !{!100}
!100 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !112, i64 0}
!126 = distinct !{!126, !104}
!127 = distinct !{!127, !104}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = !{!140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!140 = distinct !{!140, !141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!141 = distinct !{!141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!142 = distinct !{!142, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!143 = distinct !{!143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!144 = distinct !{!144, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!153 = distinct !{!153, !154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!154 = distinct !{!154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!163 = !{!159}
!164 = !{!160, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!165 = !{!166}
!166 = distinct !{!166, !167, !"\01?sort@@YAXAIAM00@Z: %c"}
!167 = distinct !{!167, !"\01?sort@@YAXAIAM00@Z"}
!168 = !{!169, !170, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!169 = distinct !{!169, !167, !"\01?sort@@YAXAIAM00@Z: %a"}
!170 = distinct !{!170, !167, !"\01?sort@@YAXAIAM00@Z: %b"}
!171 = !{!170}
!172 = !{!169, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!173 = !{!169}
!174 = !{!170, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 2}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}

