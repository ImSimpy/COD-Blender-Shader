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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 01642c2e1f17ca697366bc735ecfc6e0
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 53, 56 }
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
  br i1 %3309, label %3828, label %3310

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
  br i1 %3371, label %3796, label %3372

; <label>:3372                                    ; preds = %3310
  br label %3373

; <label>:3373                                    ; preds = %3495, %3372
  %3374 = phi i32 [ %3397, %3495 ], [ %3370, %3372 ]
  %3375 = phi float [ %3496, %3495 ], [ 0.000000e+00, %3372 ]
  %3376 = phi float [ %3497, %3495 ], [ %1058, %3372 ]
  %3377 = phi float [ %3498, %3495 ], [ %3280, %3372 ]
  %3378 = phi float [ %3499, %3495 ], [ %3278, %3372 ]
  %3379 = phi float [ %3500, %3495 ], [ 0.000000e+00, %3372 ]
  %3380 = phi float [ %3501, %3495 ], [ 0.000000e+00, %3372 ]
  %3381 = phi float [ %3502, %3495 ], [ %3272, %3372 ]
  %3382 = phi float [ %3503, %3495 ], [ %3273, %3372 ]
  %3383 = phi float [ %3504, %3495 ], [ %3274, %3372 ]
  %3384 = phi float [ %3505, %3495 ], [ %3306, %3372 ]
  %3385 = phi float [ %3506, %3495 ], [ %3307, %3372 ]
  %3386 = phi float [ %3507, %3495 ], [ %3308, %3372 ]
  %3387 = phi float [ %3508, %3495 ], [ %3277, %3372 ]
  %3388 = phi float [ %3509, %3495 ], [ %3276, %3372 ]
  %3389 = phi float [ %3510, %3495 ], [ 0.000000e+00, %3372 ]
  %3390 = phi float [ %3511, %3495 ], [ %3275, %3372 ]
  %3391 = phi float [ %3512, %3495 ], [ %3269, %3372 ]
  %3392 = phi float [ %3513, %3495 ], [ %3270, %3372 ]
  %3393 = phi float [ %3514, %3495 ], [ %3271, %3372 ]
  %3394 = shl nuw nsw i32 %3374, 2
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = lshr i32 %3396, 16
  %3398 = shl i32 %3396, 8
  %3399 = and i32 %3398, 16776960
  %3400 = or i32 %3399, 48
  %3401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3404 = extractvalue %dx.types.ResRet.f32 %3401, 2
  %3405 = or i32 %3399, 64
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.i32 %3406, 1
  %3409 = or i32 %3399, 80
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3413 = or i32 %3399, 96
  %3414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = extractvalue %dx.types.ResRet.f32 %3414, 3
  %3419 = or i32 %3399, 112
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3422 = or i32 %3399, 128
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = or i32 %3399, 144
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3434 = or i32 %3399, 160
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3439 = extractvalue %dx.types.ResRet.f32 %3435, 3
  %3440 = or i32 %3399, 192
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = or i32 %3399, 208
  %3444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = or i32 %3399, 248
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.ResRet.f32 %3450, 1
  %3453 = extractvalue %dx.types.ResRet.f32 %3450, 2
  %3454 = extractvalue %dx.types.ResRet.f32 %3450, 3
  %3455 = call float @dx.op.dot4.f32(i32 56, float %3451, float %3452, float %3453, float %3454, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3456 = or i32 %3399, 16
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = call float @dx.op.dot4.f32(i32 56, float %3458, float %3459, float %3460, float %3461, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3463 = or i32 %3399, 32
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = call float @dx.op.dot4.f32(i32 56, float %3465, float %3466, float %3467, float %3468, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3470 = call float @dx.op.unary.f32(i32 27, float %3455)  ; Round_ni(value)
  %3471 = call float @dx.op.unary.f32(i32 6, float %3470)  ; FAbs(value)
  %3472 = call float @dx.op.unary.f32(i32 27, float %3462)  ; Round_ni(value)
  %3473 = call float @dx.op.unary.f32(i32 6, float %3472)  ; FAbs(value)
  %3474 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3475 = call float @dx.op.unary.f32(i32 27, float %3474)  ; Round_ni(value)
  %3476 = fadd fast float %3473, %3471
  %3477 = fadd fast float %3476, %3475
  %3478 = fcmp fast oeq float %3477, 0.000000e+00
  %3479 = call float @dx.op.dot4.f32(i32 56, float %3451, float %3452, float %3453, float %3454, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3480 = call float @dx.op.dot4.f32(i32 56, float %3458, float %3459, float %3460, float %3461, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3451, float %3452, float %3453, float %3454, float %3320, float %3321, float %3322, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = call float @dx.op.dot4.f32(i32 56, float %3458, float %3459, float %3460, float %3461, float %3320, float %3321, float %3322, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3483 = fsub fast float %3479, %3455
  %3484 = fsub fast float %3481, %3455
  %3485 = fsub fast float %3480, %3462
  %3486 = fsub fast float %3482, %3462
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3403, float %3404, float %130, float %132, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 2
  %3490 = fadd fast float %3489, %3487
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3493 = fcmp fast ogt float %3491, %3492
  %3494 = and i1 %3478, %3493
  br i1 %3494, label %3516, label %3495

; <label>:3495                                    ; preds = %3782, %3599, %3516, %3373
  %3496 = phi float [ %3375, %3516 ], [ %3602, %3599 ], [ %3602, %3782 ], [ %3375, %3373 ]
  %3497 = phi float [ %3376, %3516 ], [ %3376, %3599 ], [ %3757, %3782 ], [ %3376, %3373 ]
  %3498 = phi float [ %3377, %3516 ], [ %3377, %3599 ], [ %3756, %3782 ], [ %3377, %3373 ]
  %3499 = phi float [ %3378, %3516 ], [ %3378, %3599 ], [ %3754, %3782 ], [ %3378, %3373 ]
  %3500 = phi float [ %3379, %3516 ], [ %3379, %3599 ], [ %3726, %3782 ], [ %3379, %3373 ]
  %3501 = phi float [ %3380, %3516 ], [ %3380, %3599 ], [ %3724, %3782 ], [ %3380, %3373 ]
  %3502 = phi float [ %3381, %3516 ], [ %3381, %3599 ], [ %3792, %3782 ], [ %3381, %3373 ]
  %3503 = phi float [ %3382, %3516 ], [ %3382, %3599 ], [ %3793, %3782 ], [ %3382, %3373 ]
  %3504 = phi float [ %3383, %3516 ], [ %3383, %3599 ], [ %3794, %3782 ], [ %3383, %3373 ]
  %3505 = phi float [ %3384, %3516 ], [ %3384, %3599 ], [ %3705, %3782 ], [ %3384, %3373 ]
  %3506 = phi float [ %3385, %3516 ], [ %3385, %3599 ], [ %3706, %3782 ], [ %3385, %3373 ]
  %3507 = phi float [ %3386, %3516 ], [ %3386, %3599 ], [ %3707, %3782 ], [ %3386, %3373 ]
  %3508 = phi float [ %3387, %3516 ], [ %3387, %3599 ], [ %3734, %3782 ], [ %3387, %3373 ]
  %3509 = phi float [ %3388, %3516 ], [ %3388, %3599 ], [ %3731, %3782 ], [ %3388, %3373 ]
  %3510 = phi float [ %3389, %3516 ], [ %3389, %3599 ], [ %3728, %3782 ], [ %3389, %3373 ]
  %3511 = phi float [ %3390, %3516 ], [ %3390, %3599 ], [ %3722, %3782 ], [ %3390, %3373 ]
  %3512 = phi float [ %3391, %3516 ], [ %3391, %3599 ], [ %3717, %3782 ], [ %3391, %3373 ]
  %3513 = phi float [ %3392, %3516 ], [ %3392, %3599 ], [ %3718, %3782 ], [ %3392, %3373 ]
  %3514 = phi float [ %3393, %3516 ], [ %3393, %3599 ], [ %3719, %3782 ], [ %3393, %3373 ]
  %3515 = icmp eq i32 %3397, 0
  br i1 %3515, label %3795, label %3373

; <label>:3516                                    ; preds = %3373
  %3517 = extractvalue %dx.types.ResRet.f32 %3401, 3
  %3518 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3519 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3523 = extractvalue %dx.types.ResRet.i32 %3406, 3
  %3524 = extractvalue %dx.types.ResRet.i32 %3406, 2
  %3525 = bitcast float %3517 to i32
  %3526 = add i32 %3523, 0
  %3527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3526, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3527, %dx.types.Handle %3528, float %3455, float %3462, float undef, float undef, i32 0, i32 0, i32 undef, float %3483, float %3485, float undef, float %3484, float %3486, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = fmul fast float %3530, %3522
  %3532 = fadd fast float %3531, %3521
  %3533 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3534 = fmul fast float %3455, %3415
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3416, float %3462, float %3534)  ; FMad(a,b,c)
  %3536 = fadd fast float %3535, %3520
  %3537 = fmul fast float %3455, %3417
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3418, float %3462, float %3537)  ; FMad(a,b,c)
  %3539 = fadd fast float %3538, %3519
  %3540 = fmul fast float %3483, %3415
  %3541 = call float @dx.op.tertiary.f32(i32 46, float %3416, float %3485, float %3540)  ; FMad(a,b,c)
  %3542 = fmul fast float %3483, %3417
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3418, float %3485, float %3542)  ; FMad(a,b,c)
  %3544 = fmul fast float %3484, %3415
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3416, float %3486, float %3544)  ; FMad(a,b,c)
  %3546 = fmul fast float %3484, %3417
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3418, float %3486, float %3546)  ; FMad(a,b,c)
  %3548 = add i32 %3524, 0
  %3549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3549, %dx.types.Handle %3528, float %3536, float %3539, float undef, float undef, i32 0, i32 0, i32 undef, float %3541, float %3543, float undef, float %3545, float %3547, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = and i32 %3525, 1024
  %3553 = icmp ne i32 %3552, 0
  %3554 = fcmp fast ogt float %3551, 0x3FE0101020000000
  %3555 = uitofp i1 %3554 to float
  %3556 = select i1 %3553, float %3555, float %3551
  %3557 = and i32 %3525, 8192
  %3558 = icmp ne i32 %3557, 0
  %3559 = select i1 %3558, float %3518, float 1.000000e+00
  %3560 = fmul fast float %3455, 2.000000e+00
  %3561 = fadd fast float %3560, -1.000000e+00
  %3562 = call float @dx.op.unary.f32(i32 6, float %3561)  ; FAbs(value)
  %3563 = fmul fast float %3562, %3448
  %3564 = fsub fast float %3563, %3448
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %3462, 2.000000e+00
  %3567 = fadd fast float %3566, -1.000000e+00
  %3568 = call float @dx.op.unary.f32(i32 6, float %3567)  ; FAbs(value)
  %3569 = fmul fast float %3568, %3449
  %3570 = fsub fast float %3569, %3449
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3572 = fmul fast float %3474, %3411
  %3573 = fsub fast float %3572, %3411
  %3574 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3575 = fmul fast float %3533, %3559
  %3576 = fmul fast float %3575, %3530
  %3577 = fmul fast float %3576, %3565
  %3578 = fmul fast float %3577, %3556
  %3579 = fmul fast float %3578, %3571
  %3580 = fmul fast float %3579, %3574
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 1
  %3583 = extractvalue %dx.types.CBufRet.f32 %3581, 0
  %3584 = fsub fast float %3491, %3583
  %3585 = fmul fast float %3584, %3582
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fmul fast float %3580, %3412
  %3588 = fadd fast float %3580, %3412
  %3589 = fmul fast float %3588, %3421
  %3590 = fsub fast float %3589, %3421
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = and i32 %3525, 128
  %3593 = icmp ne i32 %3592, 0
  %3594 = select i1 %3593, float %3591, float %3587
  %3595 = fmul fast float %3594, %3586
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = fcmp fast ugt float %3595, %3597
  br i1 %3598, label %3599, label %3495

; <label>:3599                                    ; preds = %3516
  %3600 = select i1 %3558, float %3595, float 0.000000e+00
  %3601 = fadd fast float %3600, %3375
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  br i1 %3558, label %3495, label %3603

; <label>:3603                                    ; preds = %3599
  %3604 = and i32 %3525, 4
  %3605 = and i32 %3525, 8
  %3606 = add i32 %3407, 0
  %3607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3606, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3607, %dx.types.Handle %3608, float %3536, float %3539, float undef, float undef, i32 0, i32 0, i32 undef, float %3541, float %3543, float undef, float %3545, float %3547, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = bitcast float %3433 to i32
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = lshr i32 %3614, 8
  %3618 = and i32 %3617, 255
  %3619 = uitofp i32 %3618 to float
  %3620 = fmul fast float %3613, %3616
  %3621 = fadd fast float %3620, %3619
  %3622 = fmul fast float %3621, 0x3F70101000000000
  %3623 = add i32 %3408, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3623, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3624, %dx.types.Handle %3608, float %3536, float %3539, float undef, float undef, i32 0, i32 0, i32 undef, float %3541, float %3543, float undef, float %3545, float %3547, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = bitcast float %3427 to i32
  %3631 = and i32 %3630, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = lshr i32 %3630, 8
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3630, 16
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fmul fast float %3638, 0x3F70101000000000
  %3640 = fmul fast float %3626, %3632
  %3641 = fadd fast float %3640, %3635
  %3642 = fmul fast float %3641, 0x3F70101000000000
  %3643 = fadd fast float %3627, -5.000000e-01
  %3644 = fadd fast float %3629, -5.000000e-01
  %3645 = fmul fast float %3643, %3639
  %3646 = fmul fast float %3644, %3639
  %3647 = fadd fast float %3645, 5.000000e-01
  %3648 = fadd fast float %3646, 5.000000e-01
  %3649 = fmul fast float %3610, %3436
  %3650 = fmul fast float %3611, %3437
  %3651 = fmul fast float %3612, %3438
  %3652 = fmul fast float %3647, 2.000000e+00
  %3653 = fadd fast float %3652, -1.000000e+00
  %3654 = fmul fast float %3648, 2.000000e+00
  %3655 = fadd fast float %3654, -1.000000e+00
  %3656 = fadd fast float %3653, %3655
  %3657 = fmul fast float %3656, 5.000000e-01
  %3658 = fsub fast float %3653, %3655
  %3659 = fmul fast float %3658, 5.000000e-01
  %3660 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3663 = fsub fast float %3661, %3662
  %3664 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3659, float %3663, float %3657, float %3659, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3665 = call float @dx.op.unary.f32(i32 25, float %3664)  ; Rsqrt(value)
  %3666 = fmul fast float %3657, %3665
  %3667 = fmul fast float %3659, %3665
  %3668 = fmul fast float %3665, %3663
  %3669 = fmul fast float %3668, %3402
  %3670 = fmul fast float %3668, %3403
  %3671 = fmul fast float %3668, %3404
  %3672 = fmul fast float %3666, %3424
  %3673 = fmul fast float %3666, %3425
  %3674 = fmul fast float %3666, %3426
  %3675 = fadd fast float %3672, %3669
  %3676 = fadd fast float %3673, %3670
  %3677 = fadd fast float %3674, %3671
  %3678 = fmul fast float %3667, %3430
  %3679 = fmul fast float %3667, %3431
  %3680 = fmul fast float %3667, %3432
  %3681 = fadd fast float %3675, %3678
  %3682 = fadd fast float %3676, %3679
  %3683 = fadd fast float %3677, %3680
  %3684 = call float @dx.op.dot3.f32(i32 55, float %3681, float %3682, float %3683, float %3681, float %3682, float %3683)  ; Dot3(ax,ay,az,bx,by,bz)
  %3685 = call float @dx.op.unary.f32(i32 25, float %3684)  ; Rsqrt(value)
  %3686 = fmul fast float %3681, %3685
  %3687 = fmul fast float %3682, %3685
  %3688 = fmul fast float %3683, %3685
  %3689 = icmp ne i32 %3605, 0
  %3690 = select i1 %3689, float 1.000000e+00, float 0.000000e+00
  %3691 = fmul fast float %3595, %3690
  %3692 = and i32 %3525, 1
  %3693 = icmp eq i32 %3692, 0
  br i1 %3693, label %3694, label %3698

; <label>:3694                                    ; preds = %3603
  %3695 = fsub fast float %3686, %3384
  %3696 = fsub fast float %3687, %3385
  %3697 = fsub fast float %3688, %3386
  br label %3698

; <label>:3698                                    ; preds = %3694, %3603
  %3699 = phi float [ %3695, %3694 ], [ %3686, %3603 ]
  %3700 = phi float [ %3696, %3694 ], [ %3687, %3603 ]
  %3701 = phi float [ %3697, %3694 ], [ %3688, %3603 ]
  %3702 = fmul float %3701, %3691
  %3703 = fmul float %3700, %3691
  %3704 = fmul float %3699, %3691
  %3705 = fadd fast float %3704, %3384
  %3706 = fadd fast float %3703, %3385
  %3707 = fadd fast float %3702, %3386
  %3708 = icmp ne i32 %3604, 0
  %3709 = select i1 %3708, float 1.000000e+00, float 0.000000e+00
  %3710 = fmul fast float %3595, %3709
  %3711 = fsub fast float %3649, %3391
  %3712 = fsub fast float %3650, %3392
  %3713 = fsub fast float %3651, %3393
  %3714 = fmul fast float %3711, %3710
  %3715 = fmul fast float %3712, %3710
  %3716 = fmul fast float %3713, %3710
  %3717 = fadd fast float %3714, %3391
  %3718 = fadd fast float %3715, %3392
  %3719 = fadd fast float %3716, %3393
  %3720 = fsub fast float %3622, %3390
  %3721 = fmul fast float %3720, %3710
  %3722 = fadd fast float %3721, %3390
  %3723 = fmul fast float %3710, %3380
  %3724 = fsub fast float %3380, %3723
  %3725 = fmul fast float %3710, %3379
  %3726 = fsub fast float %3379, %3725
  %3727 = fadd fast float %3595, %3389
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = fsub fast float %3642, %3388
  %3730 = fmul fast float %3729, %3691
  %3731 = fadd fast float %3730, %3388
  %3732 = fsub fast float %3628, %3387
  %3733 = fmul fast float %3732, %3691
  %3734 = fadd fast float %3733, %3387
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.CBufRet.f32 %3736, 1
  %3739 = fmul fast float %3738, %3735
  %3740 = fadd fast float %3739, %3737
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3742 = bitcast float %3439 to i32
  %3743 = and i32 %3742, 65535
  %3744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3743)  ; LegacyF16ToF32(value)
  %3745 = lshr i32 %3742, 16
  %3746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3745)  ; LegacyF16ToF32(value)
  %3747 = fcmp fast oge float %3744, 0.000000e+00
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = select i1 %3747, float %3744, float %3749
  %3751 = fadd fast float %3750, %3746
  %3752 = fsub fast float %3741, %3378
  %3753 = fmul fast float %3752, %3595
  %3754 = fadd fast float %3753, %3378
  %3755 = fmul fast float %3751, %3595
  %3756 = call float @dx.op.binary.f32(i32 35, float %3377, float %3755)  ; FMax(a,b)
  %3757 = call float @dx.op.binary.f32(i32 35, float %3376, float %3595)  ; FMax(a,b)
  %3758 = and i32 %3525, 16
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3782, label %3760

; <label>:3760                                    ; preds = %3698
  %3761 = bitcast float %3445 to i32
  %3762 = add i32 %3442, 0
  %3763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3763, %dx.types.Handle %3608, float %3536, float %3539, float undef, float undef, i32 0, i32 0, i32 undef, float %3541, float %3543, float undef, float %3545, float %3547, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = and i32 %3761, 65535
  %3769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3768)  ; LegacyF16ToF32(value)
  %3770 = fmul fast float %3765, %3436
  %3771 = fmul fast float %3766, %3437
  %3772 = fmul fast float %3767, %3438
  %3773 = and i32 %3525, 16384
  %3774 = icmp ne i32 %3773, 0
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = select i1 %3774, float %3776, float 1.000000e+00
  %3778 = fmul fast float %3777, %3769
  %3779 = fmul fast float %3770, %3778
  %3780 = fmul fast float %3771, %3778
  %3781 = fmul fast float %3772, %3778
  br label %3782

; <label>:3782                                    ; preds = %3760, %3698
  %3783 = phi float [ %3779, %3760 ], [ 0.000000e+00, %3698 ]
  %3784 = phi float [ %3780, %3760 ], [ 0.000000e+00, %3698 ]
  %3785 = phi float [ %3781, %3760 ], [ 0.000000e+00, %3698 ]
  %3786 = fsub fast float %3783, %3381
  %3787 = fsub fast float %3784, %3382
  %3788 = fsub fast float %3785, %3383
  %3789 = fmul fast float %3786, %3595
  %3790 = fmul fast float %3787, %3595
  %3791 = fmul fast float %3788, %3595
  %3792 = fadd fast float %3789, %3381
  %3793 = fadd fast float %3790, %3382
  %3794 = fadd fast float %3791, %3383
  br label %3495

; <label>:3795                                    ; preds = %3495
  br label %3796

; <label>:3796                                    ; preds = %3795, %3310
  %3797 = phi float [ 0.000000e+00, %3310 ], [ %3496, %3795 ]
  %3798 = phi float [ %1058, %3310 ], [ %3497, %3795 ]
  %3799 = phi float [ %3280, %3310 ], [ %3498, %3795 ]
  %3800 = phi float [ %3278, %3310 ], [ %3499, %3795 ]
  %3801 = phi float [ 0.000000e+00, %3310 ], [ %3500, %3795 ]
  %3802 = phi float [ 0.000000e+00, %3310 ], [ %3501, %3795 ]
  %3803 = phi float [ %3272, %3310 ], [ %3502, %3795 ]
  %3804 = phi float [ %3273, %3310 ], [ %3503, %3795 ]
  %3805 = phi float [ %3274, %3310 ], [ %3504, %3795 ]
  %3806 = phi float [ %3306, %3310 ], [ %3505, %3795 ]
  %3807 = phi float [ %3307, %3310 ], [ %3506, %3795 ]
  %3808 = phi float [ %3308, %3310 ], [ %3507, %3795 ]
  %3809 = phi float [ %3277, %3310 ], [ %3508, %3795 ]
  %3810 = phi float [ %3276, %3310 ], [ %3509, %3795 ]
  %3811 = phi float [ 0.000000e+00, %3310 ], [ %3510, %3795 ]
  %3812 = phi float [ %3275, %3310 ], [ %3511, %3795 ]
  %3813 = phi float [ %3269, %3310 ], [ %3512, %3795 ]
  %3814 = phi float [ %3270, %3310 ], [ %3513, %3795 ]
  %3815 = phi float [ %3271, %3310 ], [ %3514, %3795 ]
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %3806, float %3807, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3817, %3806
  %3819 = fmul fast float %3817, %3807
  %3820 = fmul fast float %3817, %3808
  %3821 = fadd fast float %3811, %1058
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3820, float %3818, float %3819, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.unary.f32(i32 25, float %3823)  ; Rsqrt(value)
  %3825 = fmul fast float %3824, %3818
  %3826 = fmul fast float %3824, %3819
  %3827 = fmul fast float %3824, %3820
  br label %3828

; <label>:3828                                    ; preds = %3796, %3266
  %3829 = phi float [ %3825, %3796 ], [ %3306, %3266 ]
  %3830 = phi float [ %3826, %3796 ], [ %3307, %3266 ]
  %3831 = phi float [ %3827, %3796 ], [ %3308, %3266 ]
  %3832 = phi float [ %3813, %3796 ], [ %3269, %3266 ]
  %3833 = phi float [ %3814, %3796 ], [ %3270, %3266 ]
  %3834 = phi float [ %3815, %3796 ], [ %3271, %3266 ]
  %3835 = phi float [ %3803, %3796 ], [ %3272, %3266 ]
  %3836 = phi float [ %3804, %3796 ], [ %3273, %3266 ]
  %3837 = phi float [ %3805, %3796 ], [ %3274, %3266 ]
  %3838 = phi float [ %3812, %3796 ], [ %3275, %3266 ]
  %3839 = phi float [ %3822, %3796 ], [ %1058, %3266 ]
  %3840 = phi float [ %3810, %3796 ], [ %3276, %3266 ]
  %3841 = phi float [ %3809, %3796 ], [ %3277, %3266 ]
  %3842 = phi float [ %3802, %3796 ], [ 0.000000e+00, %3266 ]
  %3843 = phi float [ %3801, %3796 ], [ 0.000000e+00, %3266 ]
  %3844 = phi float [ %3797, %3796 ], [ 0.000000e+00, %3266 ]
  %3845 = phi float [ %3799, %3796 ], [ %3280, %3266 ]
  %3846 = phi float [ %3798, %3796 ], [ %1058, %3266 ]
  %3847 = phi float [ %3800, %3796 ], [ %3278, %3266 ]
  %3848 = fadd fast float %3838, 0xBFB99999A0000000
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3850 = fmul fast float %3849, 0x3FF1C71C80000000
  %3851 = call float @dx.op.binary.f32(i32 36, float %3838, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3852 = fsub fast float 1.000000e+00, %3850
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = fmul fast float %3853, %3832
  %3855 = fmul fast float %3853, %3833
  %3856 = fmul fast float %3853, %3834
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3860 = fmul fast float %3850, %3832
  %3861 = fmul fast float %3850, %3833
  %3862 = fmul fast float %3850, %3834
  %3863 = fadd fast float %3860, %3851
  %3864 = fadd fast float %3861, %3851
  %3865 = fadd fast float %3862, %3851
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.i32 %3870, 3
  %3872 = and i32 %3871, 8
  %3873 = icmp ne i32 %3872, 0
  %3874 = call float @dx.op.binary.f32(i32 35, float %3857, float %3832)  ; FMax(a,b)
  %3875 = call float @dx.op.binary.f32(i32 35, float %3858, float %3832)  ; FMax(a,b)
  %3876 = call float @dx.op.binary.f32(i32 35, float %3859, float %3832)  ; FMax(a,b)
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3857, float %3858, float %3859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = select i1 %263, float %3832, float %3857
  %3879 = select i1 %263, float %3877, float %3858
  %3880 = select i1 %263, float 1.000000e+00, float %3859
  %3881 = select i1 %3873, float %3874, float %3878
  %3882 = select i1 %3873, float %3875, float %3879
  %3883 = select i1 %3873, float %3876, float %3880
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3887 = extractvalue %dx.types.CBufRet.f32 %3884, 2
  %3888 = fadd fast float %3885, %204
  %3889 = fadd fast float %3886, %205
  %3890 = fadd fast float %3887, %206
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.CBufRet.f32 %3891, 1
  %3894 = fsub fast float %3888, %3892
  %3895 = fsub fast float %3889, %3893
  %3896 = fmul fast float %3894, %3894
  %3897 = fmul fast float %3895, %3895
  %3898 = fadd fast float %3896, %3897
  %3899 = call float @dx.op.unary.f32(i32 24, float %3898)  ; Sqrt(value)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3891, 2
  %3901 = fcmp fast olt float %3899, %3900
  br i1 %3901, label %3902, label %3969

; <label>:3902                                    ; preds = %3828
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.CBufRet.f32 %3903, 1
  %3910 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3912 = extractvalue %dx.types.CBufRet.f32 %3903, 3
  %3913 = extractvalue %dx.types.CBufRet.f32 %3905, 3
  %3914 = extractvalue %dx.types.CBufRet.f32 %3907, 3
  %3915 = fadd fast float %3912, %3888
  %3916 = fadd fast float %3913, %3889
  %3917 = fadd fast float %3914, %3890
  %3918 = fmul fast float %3915, %3904
  %3919 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3906, float %3918)  ; FMad(a,b,c)
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3908, float %3919)  ; FMad(a,b,c)
  %3921 = fmul fast float %3915, %3909
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3910, float %3921)  ; FMad(a,b,c)
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3911, float %3922)  ; FMad(a,b,c)
  %3924 = fsub fast float %3920, %3912
  %3925 = fsub fast float %3923, %3913
  %3926 = fsub fast float %3924, %3892
  %3927 = fadd fast float %3926, %3900
  %3928 = fsub fast float %3925, %3893
  %3929 = fadd fast float %3928, %3900
  %3930 = extractvalue %dx.types.CBufRet.f32 %3891, 3
  %3931 = fmul fast float %3927, %3930
  %3932 = fmul fast float %3929, %3930
  %3933 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3935 = fsub fast float 1.000000e+00, %3933
  %3936 = fsub fast float 1.000000e+00, %3934
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3935, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = fcmp fast ugt float %3938, 0.000000e+00
  br i1 %3939, label %3940, label %4243

; <label>:3940                                    ; preds = %3902
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3943 = fmul fast float %3942, %3938
  %3944 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3945 = fadd fast float %3944, %3943
  %3946 = extractvalue %dx.types.CBufRet.f32 %3907, 2
  %3947 = fadd fast float %3945, %3914
  %3948 = fmul fast float %3920, %3908
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3923, float %3911, float %3948)  ; FMad(a,b,c)
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3947, float %3946, float %3949)  ; FMad(a,b,c)
  %3951 = fsub fast float %3950, %3914
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 2
  %3954 = fsub fast float %3951, %3953
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3935, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3935, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = fadd fast float %3960, %3956
  %3964 = fmul fast float %3963, 0x3F847AE140000000
  %3965 = fadd fast float %3961, %3957
  %3966 = fmul fast float %3965, 0x3F847AE140000000
  %3967 = fadd fast float %3962, %3958
  %3968 = fmul fast float %3967, 0x3F847AE140000000
  br label %4243

; <label>:3969                                    ; preds = %3828
  %3970 = and i32 %242, 1
  %3971 = icmp eq i32 %3970, 0
  br i1 %3971, label %4243, label %3972

; <label>:3972                                    ; preds = %3969
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3973, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3975, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %3983 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3984 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3985 = fadd fast float %3982, %3888
  %3986 = fadd fast float %3983, %3889
  %3987 = fadd fast float %3984, %3890
  %3988 = fmul fast float %3985, %3974
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3976, float %3988)  ; FMad(a,b,c)
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3978, float %3989)  ; FMad(a,b,c)
  %3991 = fmul fast float %3985, %3979
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3980, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3981, float %3992)  ; FMad(a,b,c)
  %3994 = fsub fast float %3990, %3982
  %3995 = fsub fast float %3993, %3983
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.CBufRet.f32 %3996, 3
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.i32 %4003, 0
  %4005 = extractvalue %dx.types.CBufRet.i32 %4003, 1
  %4006 = udiv i32 %4005, %4004
  %4007 = fsub fast float %3994, %3997
  %4008 = fsub fast float %3995, %3998
  %4009 = call float @dx.op.binary.f32(i32 35, float %4007, float 0.000000e+00)  ; FMax(a,b)
  %4010 = call float @dx.op.binary.f32(i32 35, float %4008, float 0.000000e+00)  ; FMax(a,b)
  %4011 = call float @dx.op.binary.f32(i32 36, float %4009, float %3999)  ; FMin(a,b)
  %4012 = call float @dx.op.binary.f32(i32 36, float %4010, float %4000)  ; FMin(a,b)
  %4013 = add i32 %4004, -1
  %4014 = add i32 %4006, -1
  %4015 = fmul fast float %4011, %4002
  %4016 = fmul fast float %4012, %4002
  %4017 = fptoui float %4015 to i32
  %4018 = fptoui float %4016 to i32
  %4019 = call i32 @dx.op.binary.i32(i32 40, i32 %4017, i32 %4013)  ; UMin(a,b)
  %4020 = call i32 @dx.op.binary.i32(i32 40, i32 %4018, i32 %4014)  ; UMin(a,b)
  %4021 = mul i32 %4020, %4004
  %4022 = add i32 %4021, %4019
  %4023 = shl i32 %4022, 2
  %4024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.i32 %4024, 0
  %4026 = icmp eq i32 %4025, -1
  br i1 %4026, label %4243, label %4027

; <label>:4027                                    ; preds = %3972
  %4028 = mul i32 %4025, 148
  %4029 = add i32 %4028, 4
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = add i32 %4028, 8
  %4033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = add i32 %4028, 36
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = add i32 %4028, 60
  %4039 = add i32 %4028, 92
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = add i32 %4028, 116
  %4043 = fsub fast float %3994, %4031
  %4044 = fsub fast float %3995, %4034
  %4045 = fmul fast float %4002, %4043
  %4046 = fmul fast float %4002, %4044
  %4047 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 2
  %4052 = call float @dx.op.unary.f32(i32 83, float %4047)  ; DerivCoarseX(value)
  %4053 = call float @dx.op.unary.f32(i32 83, float %4049)  ; DerivCoarseX(value)
  %4054 = call float @dx.op.unary.f32(i32 84, float %4047)  ; DerivCoarseY(value)
  %4055 = call float @dx.op.unary.f32(i32 84, float %4049)  ; DerivCoarseY(value)
  %4056 = fmul fast float %4052, %4051
  %4057 = fmul fast float %4053, %4051
  %4058 = fmul fast float %4054, %4051
  %4059 = fmul fast float %4055, %4051
  %4060 = call float @dx.op.dot2.f32(i32 54, float %4058, float %4059, float %4058, float %4059)  ; Dot2(ax,ay,bx,by)
  %4061 = call float @dx.op.dot2.f32(i32 54, float %4056, float %4057, float %4056, float %4057)  ; Dot2(ax,ay,bx,by)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4061, float %4060)  ; FMax(a,b)
  %4063 = call float @dx.op.unary.f32(i32 23, float %4062)  ; Log(value)
  %4064 = fmul fast float %4063, 5.000000e-01
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4067 = fadd fast float %4066, %4064
  %4068 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 3
  %4071 = fadd fast float %4070, %4068
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4074 = fadd fast float %4071, %4073
  %4075 = add i32 %4041, 0
  %4076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4075, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4077 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4076, i32 0)  ; GetDimensions(handle,mipLevel)
  %4078 = extractvalue %dx.types.Dimensions %4077, 0
  %4079 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4078)  ; FirstbitLo(value)
  %4080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.i32 %4080, 1
  %4082 = sub nsw i32 %4081, %4079
  %4083 = sitofp i32 %4082 to float
  %4084 = fsub fast float %4074, %4083
  %4085 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4076, %dx.types.Handle %52, float %4047, float %4049, float %4037, float undef, i32 0, i32 0, i32 undef, float %4085)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = fcmp ule float %4087, 0x3FE0101020000000
  %4089 = extractvalue %dx.types.CBufRet.i32 %4080, 0
  %4090 = and i32 %4089, 128
  %4091 = icmp ne i32 %4090, 0
  %4092 = and i1 %4088, %4091
  br i1 %4092, label %4243, label %4093

; <label>:4093                                    ; preds = %4027
  %4094 = add i32 %4028, 20
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = add i32 %4028, 24
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = add i32 %4028, 40
  %4101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = add i32 %4028, 96
  %4104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.i32 %4104, 0
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = fmul fast float %4107, %4047
  %4109 = fmul fast float %4107, %4049
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4111 = fadd fast float %4108, %4110
  %4112 = fadd fast float %4109, %4110
  %4113 = add i32 %4105, 0
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4113, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4114, i32 0)  ; GetDimensions(handle,mipLevel)
  %4116 = extractvalue %dx.types.Dimensions %4115, 0
  %4117 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4116)  ; FirstbitLo(value)
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.i32 %4118, 1
  %4120 = sub nsw i32 %4119, %4117
  %4121 = sitofp i32 %4120 to float
  %4122 = fsub fast float %4071, %4121
  %4123 = call float @dx.op.binary.f32(i32 35, float %4122, float 0.000000e+00)  ; FMax(a,b)
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4114, %dx.types.Handle %52, float %4111, float %4112, float %4102, float undef, i32 0, i32 0, i32 undef, float %4123)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = fmul fast float %4125, %4096
  %4127 = fadd fast float %4126, %4099
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4136 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4137 = fadd fast float %4133, %3994
  %4138 = fadd fast float %4135, %3995
  %4139 = fadd fast float %4127, %4136
  %4140 = fmul fast float %4137, %4129
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %4138, float %4130, float %4140)  ; FMad(a,b,c)
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4131, float %4141)  ; FMad(a,b,c)
  %4143 = fsub fast float %4142, %4136
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 2
  %4146 = fsub fast float %4143, %4145
  %4147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.i32 %4147, 0
  %4149 = call i32 @dx.op.binary.i32(i32 40, i32 %4025, i32 %4148)  ; UMin(a,b)
  %4150 = mul i32 %4149, 36
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = add i32 %4150, 4
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = fmul fast float %4155, %4047
  %4157 = fmul fast float %4155, %4049
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4159 = fadd fast float %4156, %4158
  %4160 = fadd fast float %4157, %4158
  %4161 = icmp eq i32 %4152, 0
  br i1 %4161, label %4230, label %4162

; <label>:4162                                    ; preds = %4093
  br label %4163

; <label>:4163                                    ; preds = %4220, %4162
  %4164 = phi float [ %4221, %4220 ], [ 0.000000e+00, %4162 ]
  %4165 = phi float [ %4222, %4220 ], [ 0.000000e+00, %4162 ]
  %4166 = phi float [ %4223, %4220 ], [ 0.000000e+00, %4162 ]
  %4167 = phi float [ %4224, %4220 ], [ 0.000000e+00, %4162 ]
  %4168 = phi float [ %4225, %4220 ], [ 0.000000e+00, %4162 ]
  %4169 = phi float [ %4226, %4220 ], [ 0.000000e+00, %4162 ]
  %4170 = phi i32 [ %4227, %4220 ], [ 0, %4162 ]
  %4171 = shl i32 %4170, 2
  %4172 = add i32 %4038, %4171
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = add i32 %4042, %4171
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = add i32 %4177, 0
  %4179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4178, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4179, i32 0)  ; GetDimensions(handle,mipLevel)
  %4181 = extractvalue %dx.types.Dimensions %4180, 0
  %4182 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4181)  ; FirstbitLo(value)
  %4183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.i32 %4183, 1
  %4185 = sub nsw i32 %4184, %4182
  %4186 = sitofp i32 %4185 to float
  %4187 = fsub fast float %4071, %4186
  %4188 = call float @dx.op.binary.f32(i32 35, float %4187, float 0.000000e+00)  ; FMax(a,b)
  %4189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4179, %dx.types.Handle %52, float %4159, float %4160, float %4174, float undef, i32 0, i32 0, i32 undef, float %4188)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = fcmp fast ogt float %4190, 0.000000e+00
  br i1 %4191, label %4192, label %4220

; <label>:4192                                    ; preds = %4163
  %4193 = add i32 %4153, %4171
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = and i32 %4195, 32767
  %4197 = mul nuw nsw i32 %4196, 928
  %4198 = add nuw nsw i32 %4197, 48
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = add nuw nsw i32 %4197, 60
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = fmul fast float %4200, %4190
  %4209 = fmul fast float %4201, %4190
  %4210 = fmul fast float %4202, %4190
  %4211 = fadd fast float %4208, %4164
  %4212 = fadd fast float %4209, %4165
  %4213 = fadd fast float %4210, %4166
  %4214 = fmul fast float %4205, %4190
  %4215 = fmul fast float %4206, %4190
  %4216 = fmul fast float %4207, %4190
  %4217 = fadd fast float %4214, %4167
  %4218 = fadd fast float %4215, %4168
  %4219 = fadd fast float %4216, %4169
  br label %4220

; <label>:4220                                    ; preds = %4192, %4163
  %4221 = phi float [ %4211, %4192 ], [ %4164, %4163 ]
  %4222 = phi float [ %4212, %4192 ], [ %4165, %4163 ]
  %4223 = phi float [ %4213, %4192 ], [ %4166, %4163 ]
  %4224 = phi float [ %4217, %4192 ], [ %4167, %4163 ]
  %4225 = phi float [ %4218, %4192 ], [ %4168, %4163 ]
  %4226 = phi float [ %4219, %4192 ], [ %4169, %4163 ]
  %4227 = add nuw i32 %4170, 1
  %4228 = icmp eq i32 %4227, %4152
  br i1 %4228, label %4229, label %4163

; <label>:4229                                    ; preds = %4220
  br label %4230

; <label>:4230                                    ; preds = %4229, %4093
  %4231 = phi float [ 0.000000e+00, %4093 ], [ %4221, %4229 ]
  %4232 = phi float [ 0.000000e+00, %4093 ], [ %4222, %4229 ]
  %4233 = phi float [ 0.000000e+00, %4093 ], [ %4223, %4229 ]
  %4234 = phi float [ 0.000000e+00, %4093 ], [ %4224, %4229 ]
  %4235 = phi float [ 0.000000e+00, %4093 ], [ %4225, %4229 ]
  %4236 = phi float [ 0.000000e+00, %4093 ], [ %4226, %4229 ]
  %4237 = fadd fast float %4234, %4231
  %4238 = fmul fast float %4237, 0x3F847AE140000000
  %4239 = fadd fast float %4235, %4232
  %4240 = fmul fast float %4239, 0x3F847AE140000000
  %4241 = fadd fast float %4236, %4233
  %4242 = fmul fast float %4241, 0x3F847AE140000000
  br label %4243

; <label>:4243                                    ; preds = %4230, %4027, %3972, %3969, %3940, %3902
  %4244 = phi float [ %3964, %3940 ], [ 0.000000e+00, %3902 ], [ %4238, %4230 ], [ 0.000000e+00, %3972 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %3969 ]
  %4245 = phi float [ %3966, %3940 ], [ 0.000000e+00, %3902 ], [ %4240, %4230 ], [ 0.000000e+00, %3972 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %3969 ]
  %4246 = phi float [ %3968, %3940 ], [ 0.000000e+00, %3902 ], [ %4242, %4230 ], [ 0.000000e+00, %3972 ], [ 0.000000e+00, %4027 ], [ 0.000000e+00, %3969 ]
  %4247 = phi float [ %3954, %3940 ], [ -1.310720e+05, %3902 ], [ %4146, %4230 ], [ -1.310720e+05, %3972 ], [ -1.310720e+05, %4027 ], [ -1.310720e+05, %3969 ]
  %4248 = phi i1 [ true, %3940 ], [ false, %3902 ], [ true, %4230 ], [ false, %3972 ], [ false, %4027 ], [ false, %3969 ]
  %4249 = and i32 %242, 3
  %4250 = icmp eq i32 %4249, 1
  %4251 = select i1 %4250, float 1.000000e+00, float 0.000000e+00
  %4252 = fsub fast float %4247, %206
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = select i1 %4248, float %4253, float 1.000000e+00
  %4255 = fmul fast float %4254, %4251
  %4256 = icmp eq i32 %4249, 3
  %4257 = select i1 %4256, float 1.000000e+00, float %4255
  %4258 = call float @dx.op.binary.f32(i32 35, float %3844, float %4257)  ; FMax(a,b)
  %4259 = fcmp fast olt float %4257, 1.000000e+00
  %4260 = fcmp uge float %77, 0.000000e+00
  %4261 = and i1 %4260, %4259
  br i1 %4261, label %4262, label %4272

; <label>:4262                                    ; preds = %4243
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4267 = fadd fast float %4264, %4258
  %4268 = fcmp ule float %76, 0.000000e+00
  %4269 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = select i1 %4268, float %4269, float 1.000000e+00
  %4271 = fmul fast float %4270, %4266
  br label %4272

; <label>:4272                                    ; preds = %4262, %4243
  %4273 = phi float [ %4267, %4262 ], [ %4258, %4243 ]
  %4274 = phi float [ %4265, %4262 ], [ 0.000000e+00, %4243 ]
  %4275 = phi float [ %4271, %4262 ], [ 0.000000e+00, %4243 ]
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = fcmp fast une float %4277, 0.000000e+00
  %4280 = fcmp fast une float %4278, 0.000000e+00
  %4281 = or i1 %4279, %4280
  br i1 %4281, label %4282, label %4841

; <label>:4282                                    ; preds = %4272
  br i1 %4279, label %4283, label %4556

; <label>:4283                                    ; preds = %4282
  %4284 = call float @dx.op.unary.f32(i32 23, float %3841)  ; Log(value)
  %4285 = fmul fast float %4284, 4.000000e+00
  %4286 = call float @dx.op.unary.f32(i32 21, float %4285)  ; Exp(value)
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = fmul fast float %4288, %64
  %4290 = fmul fast float %4288, %65
  %4291 = fmul fast float %4288, %66
  %4292 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4294 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4295 = call float @dx.op.unary.f32(i32 23, float %4292)  ; Log(value)
  %4296 = call float @dx.op.unary.f32(i32 23, float %4293)  ; Log(value)
  %4297 = call float @dx.op.unary.f32(i32 23, float %4294)  ; Log(value)
  %4298 = fmul fast float %4295, 4.000000e+00
  %4299 = fmul fast float %4296, 4.000000e+00
  %4300 = fmul fast float %4297, 4.000000e+00
  %4301 = call float @dx.op.unary.f32(i32 21, float %4298)  ; Exp(value)
  %4302 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4303 = call float @dx.op.unary.f32(i32 21, float %4300)  ; Exp(value)
  %4304 = fadd fast float %4302, %4301
  %4305 = fadd fast float %4304, %4303
  %4306 = fdiv fast float 1.000000e+00, %4305
  %4307 = fmul fast float %4306, %4301
  %4308 = fcmp fast ogt float %73, 0.000000e+00
  %4309 = fcmp fast ogt float %74, 0.000000e+00
  %4310 = fcmp fast ogt float %75, 0.000000e+00
  %4311 = fcmp fast olt float %73, 0.000000e+00
  %4312 = fcmp fast olt float %74, 0.000000e+00
  %4313 = fcmp fast olt float %75, 0.000000e+00
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = zext i1 %4311 to i32
  %4318 = zext i1 %4312 to i32
  %4319 = zext i1 %4313 to i32
  %4320 = sub nsw i32 %4314, %4317
  %4321 = sub nsw i32 %4315, %4318
  %4322 = sub nsw i32 %4316, %4319
  %4323 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4324 = call float @dx.op.unary.f32(i32 83, float %4290)  ; DerivCoarseX(value)
  %4325 = call float @dx.op.unary.f32(i32 83, float %4291)  ; DerivCoarseX(value)
  %4326 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4327 = call float @dx.op.unary.f32(i32 84, float %4290)  ; DerivCoarseY(value)
  %4328 = call float @dx.op.unary.f32(i32 84, float %4291)  ; DerivCoarseY(value)
  %4329 = fcmp fast ole float %274, %4307
  %4330 = fmul fast float %4306, %4304
  %4331 = fcmp fast ole float %274, %4330
  %4332 = select i1 %4331, float %4291, float %4289
  %4333 = select i1 %4331, float %4289, float %4290
  %4334 = select i1 %4329, float %4290, float %4332
  %4335 = select i1 %4329, float %4291, float %4333
  %4336 = select i1 %4331, float %4325, float %4323
  %4337 = select i1 %4331, float %4323, float %4324
  %4338 = select i1 %4329, float %4324, float %4336
  %4339 = select i1 %4329, float %4325, float %4337
  %4340 = select i1 %4331, float %4328, float %4326
  %4341 = select i1 %4331, float %4326, float %4327
  %4342 = select i1 %4329, float %4327, float %4340
  %4343 = select i1 %4329, float %4328, float %4341
  %4344 = call float @dx.op.unary.f32(i32 27, float %4334)  ; Round_ni(value)
  %4345 = call float @dx.op.unary.f32(i32 27, float %4335)  ; Round_ni(value)
  %4346 = fptosi float %4344 to i32
  %4347 = fptosi float %4345 to i32
  %4348 = xor i32 %4347, %4346
  %4349 = sitofp i32 %4348 to float
  %4350 = fptosi float %4349 to i32
  %4351 = sitofp i32 %4350 to float
  %4352 = fmul fast float %4351, 0x3FE3C6EF40000000
  %4353 = frem fast float %4344, 2.560000e+02
  %4354 = frem fast float %4345, 2.560000e+02
  %4355 = fptoui float %4353 to i32
  %4356 = fptoui float %4354 to i32
  %4357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4355, i32 %4356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4361 = fadd fast float %4358, %4352
  %4362 = fadd fast float %4359, %4352
  %4363 = fadd fast float %4360, %4352
  %4364 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4365 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  %4366 = call float @dx.op.unary.f32(i32 22, float %4363)  ; Frc(value)
  %4367 = fmul fast float %4366, 0x401921FB60000000
  %4368 = call float @dx.op.unary.f32(i32 13, float %4367)  ; Sin(value)
  %4369 = call float @dx.op.unary.f32(i32 12, float %4367)  ; Cos(value)
  %4370 = fsub fast float -0.000000e+00, %4369
  %4371 = fmul fast float %4369, %4334
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4368, float %4335, float %4371)  ; FMad(a,b,c)
  %4373 = fmul fast float %4368, %4334
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4335, float %4373)  ; FMad(a,b,c)
  %4375 = fadd fast float %4372, %4364
  %4376 = fadd fast float %4374, %4365
  %4377 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4378 = bitcast float %4377 to i32
  %4379 = icmp eq i32 %4378, 0
  br i1 %4379, label %4418, label %4380

; <label>:4380                                    ; preds = %4283
  %4381 = add i32 %4378, 0
  %4382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4382, %dx.types.Handle %118, float %4375, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4338, float %4339, float undef, float %4342, float %4343, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4388 = fsub fast float 1.000000e+00, %4277
  %4389 = call float @dx.op.binary.f32(i32 35, float %4388, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4390 = bitcast float %4277 to i32
  %4391 = sitofp i32 %4390 to float
  %4392 = fadd fast float %4391, 0xC1CFBF8940000000
  %4393 = fmul fast float %4387, %4392
  %4394 = fadd fast float %4393, 0x41CFBF8940000000
  %4395 = fptosi float %4394 to i32
  %4396 = bitcast i32 %4395 to float
  %4397 = bitcast float %4389 to i32
  %4398 = sitofp i32 %4397 to float
  %4399 = fadd fast float %4398, 0xC1CFBF8940000000
  %4400 = fmul fast float %4399, %4387
  %4401 = fadd fast float %4400, 0x41CFBF8940000000
  %4402 = fptosi float %4401 to i32
  %4403 = bitcast i32 %4402 to float
  %4404 = fmul fast float %4396, %4386
  %4405 = fmul fast float %4403, %4386
  %4406 = fsub fast float %4389, %4404
  %4407 = fadd fast float %4405, %4389
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4410 = fsub fast float %4384, %4408
  %4411 = fsub fast float %4409, %4408
  %4412 = bitcast float %4411 to i32
  %4413 = sub nsw i32 2129859010, %4412
  %4414 = bitcast i32 %4413 to float
  %4415 = fmul fast float %4414, %4410
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = fcmp fast olt float %4416, 0x3F70101020000000
  br i1 %4417, label %4556, label %4418

; <label>:4418                                    ; preds = %4380, %4283
  %4419 = phi float [ %4416, %4380 ], [ %4277, %4283 ]
  %4420 = fmul fast float %4419, %4286
  %4421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.i32 %4421, 1
  %4423 = extractvalue %dx.types.CBufRet.i32 %4421, 0
  %4424 = add i32 %4423, 0
  %4425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4425, %dx.types.Handle %117, float %4375, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4338, float %4339, float undef, float %4342, float %4343, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.ResRet.f32 %4426, 1
  %4429 = extractvalue %dx.types.ResRet.f32 %4426, 2
  %4430 = extractvalue %dx.types.ResRet.f32 %4426, 3
  %4431 = and i32 %4422, 255
  %4432 = uitofp i32 %4431 to float
  %4433 = lshr i32 %4422, 8
  %4434 = and i32 %4433, 255
  %4435 = uitofp i32 %4434 to float
  %4436 = fmul fast float %4430, %4432
  %4437 = fadd fast float %4436, %4435
  %4438 = fmul fast float %4437, 0x3F70101000000000
  %4439 = fadd fast float %4438, 0xBFB99999A0000000
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4440, 0x3FF1C71C80000000
  %4442 = call float @dx.op.binary.f32(i32 36, float %4438, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4443 = fsub fast float 1.000000e+00, %4441
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fmul fast float %4444, %4427
  %4446 = fmul fast float %4444, %4428
  %4447 = fmul fast float %4444, %4429
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = fmul fast float %4441, %4427
  %4452 = fmul fast float %4441, %4428
  %4453 = fmul fast float %4441, %4429
  %4454 = fadd fast float %4451, %4442
  %4455 = fadd fast float %4452, %4442
  %4456 = fadd fast float %4453, %4442
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.i32 %4460, 3
  %4462 = extractvalue %dx.types.CBufRet.i32 %4460, 2
  %4463 = add i32 %4462, 0
  %4464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4464, %dx.types.Handle %117, float %4375, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4338, float %4339, float undef, float %4342, float %4343, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.ResRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.ResRet.f32 %4465, 2
  %4469 = extractvalue %dx.types.ResRet.f32 %4465, 3
  %4470 = and i32 %4461, 255
  %4471 = uitofp i32 %4470 to float
  %4472 = lshr i32 %4461, 8
  %4473 = and i32 %4472, 255
  %4474 = uitofp i32 %4473 to float
  %4475 = lshr i32 %4461, 16
  %4476 = and i32 %4475, 255
  %4477 = uitofp i32 %4476 to float
  %4478 = fmul fast float %4477, 0x3F70101000000000
  %4479 = fmul fast float %4466, %4471
  %4480 = fadd fast float %4479, %4474
  %4481 = fmul fast float %4480, 0x3F70101000000000
  %4482 = fadd fast float %4467, -5.000000e-01
  %4483 = fadd fast float %4469, -5.000000e-01
  %4484 = fmul fast float %4482, %4478
  %4485 = fmul fast float %4483, %4478
  %4486 = fadd fast float %4484, 5.000000e-01
  %4487 = fadd fast float %4485, 5.000000e-01
  %4488 = fmul fast float %4486, 2.000000e+00
  %4489 = fadd fast float %4488, -1.000000e+00
  %4490 = fmul fast float %4487, 2.000000e+00
  %4491 = fadd fast float %4490, -1.000000e+00
  %4492 = fadd fast float %4489, %4491
  %4493 = fmul fast float %4492, 5.000000e-01
  %4494 = fsub fast float %4489, %4491
  %4495 = fmul fast float %4494, 5.000000e-01
  %4496 = call float @dx.op.unary.f32(i32 6, float %4493)  ; FAbs(value)
  %4497 = fsub fast float 1.000000e+00, %4496
  %4498 = call float @dx.op.unary.f32(i32 6, float %4495)  ; FAbs(value)
  %4499 = fsub fast float %4497, %4498
  %4500 = call float @dx.op.dot3.f32(i32 55, float %4493, float %4495, float %4499, float %4493, float %4495, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = call float @dx.op.unary.f32(i32 25, float %4500)  ; Rsqrt(value)
  %4502 = fmul fast float %4493, %4501
  %4503 = fmul fast float %4495, %4501
  %4504 = select i1 %4331, i32 %4321, i32 %4322
  %4505 = select i1 %4329, i32 %4320, i32 %4504
  %4506 = sitofp i32 %4505 to float
  %4507 = fmul fast float %4499, %4506
  %4508 = fmul fast float %4507, %4501
  %4509 = select i1 %4331, float %4508, float %4503
  %4510 = select i1 %4331, float %4503, float %4508
  %4511 = select i1 %4329, float %4508, float %4502
  %4512 = select i1 %4329, float %4503, float %4509
  %4513 = select i1 %4329, float %4502, float %4510
  %4514 = fsub fast float %4448, %3881
  %4515 = fsub fast float %4449, %3882
  %4516 = fsub fast float %4450, %3883
  %4517 = fmul fast float %4514, %4420
  %4518 = fmul fast float %4515, %4420
  %4519 = fmul fast float %4516, %4420
  %4520 = fadd fast float %4517, %3881
  %4521 = fadd fast float %4518, %3882
  %4522 = fadd fast float %4519, %3883
  %4523 = fsub fast float %4457, %3866
  %4524 = fsub fast float %4458, %3867
  %4525 = fsub fast float %4459, %3868
  %4526 = fmul fast float %4523, %4420
  %4527 = fmul fast float %4524, %4420
  %4528 = fmul fast float %4525, %4420
  %4529 = fadd fast float %4526, %3866
  %4530 = fadd fast float %4527, %3867
  %4531 = fadd fast float %4528, %3868
  %4532 = fadd fast float %4511, %3829
  %4533 = fadd fast float %4512, %3830
  %4534 = fadd fast float %4513, %3831
  %4535 = call float @dx.op.dot3.f32(i32 55, float %4532, float %4533, float %4534, float %4532, float %4533, float %4534)  ; Dot3(ax,ay,az,bx,by,bz)
  %4536 = call float @dx.op.unary.f32(i32 25, float %4535)  ; Rsqrt(value)
  %4537 = fmul fast float %4532, %4536
  %4538 = fmul fast float %4533, %4536
  %4539 = fmul fast float %4534, %4536
  %4540 = fsub fast float %4537, %3829
  %4541 = fsub fast float %4538, %3830
  %4542 = fsub fast float %4539, %3831
  %4543 = fmul fast float %4540, %4420
  %4544 = fmul fast float %4541, %4420
  %4545 = fmul fast float %4542, %4420
  %4546 = fadd fast float %4543, %3829
  %4547 = fadd fast float %4544, %3830
  %4548 = fadd fast float %4545, %3831
  %4549 = call float @dx.op.binary.f32(i32 36, float %3841, float %4468)  ; FMin(a,b)
  %4550 = fsub fast float %4549, %3841
  %4551 = fmul fast float %4550, %4420
  %4552 = fadd fast float %4551, %3841
  %4553 = fsub fast float %4481, %3869
  %4554 = fmul fast float %4553, %4420
  %4555 = fadd fast float %4554, %3869
  br label %4556

; <label>:4556                                    ; preds = %4418, %4380, %4282
  %4557 = phi float [ %4520, %4418 ], [ %3881, %4380 ], [ %3881, %4282 ]
  %4558 = phi float [ %4521, %4418 ], [ %3882, %4380 ], [ %3882, %4282 ]
  %4559 = phi float [ %4522, %4418 ], [ %3883, %4380 ], [ %3883, %4282 ]
  %4560 = phi float [ %4529, %4418 ], [ %3866, %4380 ], [ %3866, %4282 ]
  %4561 = phi float [ %4530, %4418 ], [ %3867, %4380 ], [ %3867, %4282 ]
  %4562 = phi float [ %4531, %4418 ], [ %3868, %4380 ], [ %3868, %4282 ]
  %4563 = phi float [ %4546, %4418 ], [ %3829, %4380 ], [ %3829, %4282 ]
  %4564 = phi float [ %4547, %4418 ], [ %3830, %4380 ], [ %3830, %4282 ]
  %4565 = phi float [ %4548, %4418 ], [ %3831, %4380 ], [ %3831, %4282 ]
  %4566 = phi float [ %4555, %4418 ], [ %3869, %4380 ], [ %3869, %4282 ]
  %4567 = phi float [ %4552, %4418 ], [ %3841, %4380 ], [ %3841, %4282 ]
  br i1 %4280, label %4568, label %4841

; <label>:4568                                    ; preds = %4556
  %4569 = call float @dx.op.unary.f32(i32 23, float %4567)  ; Log(value)
  %4570 = fmul fast float %4569, 4.000000e+00
  %4571 = call float @dx.op.unary.f32(i32 21, float %4570)  ; Exp(value)
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = fmul fast float %4573, %64
  %4575 = fmul fast float %4573, %65
  %4576 = fmul fast float %4573, %66
  %4577 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4578 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4579 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4580 = call float @dx.op.unary.f32(i32 23, float %4577)  ; Log(value)
  %4581 = call float @dx.op.unary.f32(i32 23, float %4578)  ; Log(value)
  %4582 = call float @dx.op.unary.f32(i32 23, float %4579)  ; Log(value)
  %4583 = fmul fast float %4580, 4.000000e+00
  %4584 = fmul fast float %4581, 4.000000e+00
  %4585 = fmul fast float %4582, 4.000000e+00
  %4586 = call float @dx.op.unary.f32(i32 21, float %4583)  ; Exp(value)
  %4587 = call float @dx.op.unary.f32(i32 21, float %4584)  ; Exp(value)
  %4588 = call float @dx.op.unary.f32(i32 21, float %4585)  ; Exp(value)
  %4589 = fadd fast float %4587, %4586
  %4590 = fadd fast float %4589, %4588
  %4591 = fdiv fast float 1.000000e+00, %4590
  %4592 = fmul fast float %4591, %4586
  %4593 = fcmp fast ogt float %73, 0.000000e+00
  %4594 = fcmp fast ogt float %74, 0.000000e+00
  %4595 = fcmp fast ogt float %75, 0.000000e+00
  %4596 = fcmp fast olt float %73, 0.000000e+00
  %4597 = fcmp fast olt float %74, 0.000000e+00
  %4598 = fcmp fast olt float %75, 0.000000e+00
  %4599 = zext i1 %4593 to i32
  %4600 = zext i1 %4594 to i32
  %4601 = zext i1 %4595 to i32
  %4602 = zext i1 %4596 to i32
  %4603 = zext i1 %4597 to i32
  %4604 = zext i1 %4598 to i32
  %4605 = sub nsw i32 %4599, %4602
  %4606 = sub nsw i32 %4600, %4603
  %4607 = sub nsw i32 %4601, %4604
  %4608 = call float @dx.op.unary.f32(i32 83, float %4574)  ; DerivCoarseX(value)
  %4609 = call float @dx.op.unary.f32(i32 83, float %4575)  ; DerivCoarseX(value)
  %4610 = call float @dx.op.unary.f32(i32 83, float %4576)  ; DerivCoarseX(value)
  %4611 = call float @dx.op.unary.f32(i32 84, float %4574)  ; DerivCoarseY(value)
  %4612 = call float @dx.op.unary.f32(i32 84, float %4575)  ; DerivCoarseY(value)
  %4613 = call float @dx.op.unary.f32(i32 84, float %4576)  ; DerivCoarseY(value)
  %4614 = fcmp fast ole float %274, %4592
  %4615 = fmul fast float %4591, %4589
  %4616 = fcmp fast ole float %274, %4615
  %4617 = select i1 %4616, float %4576, float %4574
  %4618 = select i1 %4616, float %4574, float %4575
  %4619 = select i1 %4614, float %4575, float %4617
  %4620 = select i1 %4614, float %4576, float %4618
  %4621 = select i1 %4616, float %4610, float %4608
  %4622 = select i1 %4616, float %4608, float %4609
  %4623 = select i1 %4614, float %4609, float %4621
  %4624 = select i1 %4614, float %4610, float %4622
  %4625 = select i1 %4616, float %4613, float %4611
  %4626 = select i1 %4616, float %4611, float %4612
  %4627 = select i1 %4614, float %4612, float %4625
  %4628 = select i1 %4614, float %4613, float %4626
  %4629 = call float @dx.op.unary.f32(i32 27, float %4619)  ; Round_ni(value)
  %4630 = call float @dx.op.unary.f32(i32 27, float %4620)  ; Round_ni(value)
  %4631 = fptosi float %4629 to i32
  %4632 = fptosi float %4630 to i32
  %4633 = xor i32 %4632, %4631
  %4634 = sitofp i32 %4633 to float
  %4635 = fptosi float %4634 to i32
  %4636 = sitofp i32 %4635 to float
  %4637 = fmul fast float %4636, 0x3FE3C6EF40000000
  %4638 = frem fast float %4629, 2.560000e+02
  %4639 = frem fast float %4630, 2.560000e+02
  %4640 = fptoui float %4638 to i32
  %4641 = fptoui float %4639 to i32
  %4642 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4640, i32 %4641, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.ResRet.f32 %4642, 1
  %4645 = extractvalue %dx.types.ResRet.f32 %4642, 2
  %4646 = fadd fast float %4643, %4637
  %4647 = fadd fast float %4644, %4637
  %4648 = fadd fast float %4645, %4637
  %4649 = call float @dx.op.unary.f32(i32 22, float %4646)  ; Frc(value)
  %4650 = call float @dx.op.unary.f32(i32 22, float %4647)  ; Frc(value)
  %4651 = call float @dx.op.unary.f32(i32 22, float %4648)  ; Frc(value)
  %4652 = fmul fast float %4651, 0x401921FB60000000
  %4653 = call float @dx.op.unary.f32(i32 13, float %4652)  ; Sin(value)
  %4654 = call float @dx.op.unary.f32(i32 12, float %4652)  ; Cos(value)
  %4655 = fsub fast float -0.000000e+00, %4654
  %4656 = fmul fast float %4654, %4619
  %4657 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4620, float %4656)  ; FMad(a,b,c)
  %4658 = fmul fast float %4653, %4619
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4655, float %4620, float %4658)  ; FMad(a,b,c)
  %4660 = fadd fast float %4657, %4649
  %4661 = fadd fast float %4659, %4650
  %4662 = extractvalue %dx.types.CBufRet.f32 %4572, 3
  %4663 = bitcast float %4662 to i32
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %4703, label %4665

; <label>:4665                                    ; preds = %4568
  %4666 = add i32 %4663, 0
  %4667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4667, %dx.types.Handle %118, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float %4623, float %4624, float undef, float %4627, float %4628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4672 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4673 = fsub fast float 1.000000e+00, %4278
  %4674 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4675 = bitcast float %4278 to i32
  %4676 = sitofp i32 %4675 to float
  %4677 = fadd fast float %4676, 0xC1CFBF8940000000
  %4678 = fmul fast float %4672, %4677
  %4679 = fadd fast float %4678, 0x41CFBF8940000000
  %4680 = fptosi float %4679 to i32
  %4681 = bitcast i32 %4680 to float
  %4682 = bitcast float %4674 to i32
  %4683 = sitofp i32 %4682 to float
  %4684 = fadd fast float %4683, 0xC1CFBF8940000000
  %4685 = fmul fast float %4684, %4672
  %4686 = fadd fast float %4685, 0x41CFBF8940000000
  %4687 = fptosi float %4686 to i32
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4681, %4671
  %4690 = fmul fast float %4688, %4671
  %4691 = fsub fast float %4674, %4689
  %4692 = fadd fast float %4690, %4674
  %4693 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4695 = fsub fast float %4669, %4693
  %4696 = fsub fast float %4694, %4693
  %4697 = bitcast float %4696 to i32
  %4698 = sub nsw i32 2129859010, %4697
  %4699 = bitcast i32 %4698 to float
  %4700 = fmul fast float %4699, %4695
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fcmp fast olt float %4701, 0x3F70101020000000
  br i1 %4702, label %4841, label %4703

; <label>:4703                                    ; preds = %4665, %4568
  %4704 = phi float [ %4701, %4665 ], [ %4278, %4568 ]
  %4705 = fmul fast float %4704, %4571
  %4706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.i32 %4706, 1
  %4708 = extractvalue %dx.types.CBufRet.i32 %4706, 0
  %4709 = add i32 %4708, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %117, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float %4623, float %4624, float undef, float %4627, float %4628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4715 = extractvalue %dx.types.ResRet.f32 %4711, 3
  %4716 = and i32 %4707, 255
  %4717 = uitofp i32 %4716 to float
  %4718 = lshr i32 %4707, 8
  %4719 = and i32 %4718, 255
  %4720 = uitofp i32 %4719 to float
  %4721 = fmul fast float %4715, %4717
  %4722 = fadd fast float %4721, %4720
  %4723 = fmul fast float %4722, 0x3F70101000000000
  %4724 = fadd fast float %4723, 0xBFB99999A0000000
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fmul fast float %4725, 0x3FF1C71C80000000
  %4727 = call float @dx.op.binary.f32(i32 36, float %4723, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4728 = fsub fast float 1.000000e+00, %4726
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, %4712
  %4731 = fmul fast float %4729, %4713
  %4732 = fmul fast float %4729, %4714
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4736 = fmul fast float %4726, %4712
  %4737 = fmul fast float %4726, %4713
  %4738 = fmul fast float %4726, %4714
  %4739 = fadd fast float %4736, %4727
  %4740 = fadd fast float %4737, %4727
  %4741 = fadd fast float %4738, %4727
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.i32 %4745, 3
  %4747 = extractvalue %dx.types.CBufRet.i32 %4745, 2
  %4748 = add i32 %4747, 0
  %4749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4750 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4749, %dx.types.Handle %117, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float %4623, float %4624, float undef, float %4627, float %4628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4751 = extractvalue %dx.types.ResRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.ResRet.f32 %4750, 1
  %4753 = extractvalue %dx.types.ResRet.f32 %4750, 2
  %4754 = extractvalue %dx.types.ResRet.f32 %4750, 3
  %4755 = and i32 %4746, 255
  %4756 = uitofp i32 %4755 to float
  %4757 = lshr i32 %4746, 8
  %4758 = and i32 %4757, 255
  %4759 = uitofp i32 %4758 to float
  %4760 = lshr i32 %4746, 16
  %4761 = and i32 %4760, 255
  %4762 = uitofp i32 %4761 to float
  %4763 = fmul fast float %4762, 0x3F70101000000000
  %4764 = fmul fast float %4751, %4756
  %4765 = fadd fast float %4764, %4759
  %4766 = fmul fast float %4765, 0x3F70101000000000
  %4767 = fadd fast float %4752, -5.000000e-01
  %4768 = fadd fast float %4754, -5.000000e-01
  %4769 = fmul fast float %4767, %4763
  %4770 = fmul fast float %4768, %4763
  %4771 = fadd fast float %4769, 5.000000e-01
  %4772 = fadd fast float %4770, 5.000000e-01
  %4773 = fmul fast float %4771, 2.000000e+00
  %4774 = fadd fast float %4773, -1.000000e+00
  %4775 = fmul fast float %4772, 2.000000e+00
  %4776 = fadd fast float %4775, -1.000000e+00
  %4777 = fadd fast float %4774, %4776
  %4778 = fmul fast float %4777, 5.000000e-01
  %4779 = fsub fast float %4774, %4776
  %4780 = fmul fast float %4779, 5.000000e-01
  %4781 = call float @dx.op.unary.f32(i32 6, float %4778)  ; FAbs(value)
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = call float @dx.op.unary.f32(i32 6, float %4780)  ; FAbs(value)
  %4784 = fsub fast float %4782, %4783
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4780, float %4784, float %4778, float %4780, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.unary.f32(i32 25, float %4785)  ; Rsqrt(value)
  %4787 = fmul fast float %4778, %4786
  %4788 = fmul fast float %4780, %4786
  %4789 = select i1 %4616, i32 %4606, i32 %4607
  %4790 = select i1 %4614, i32 %4605, i32 %4789
  %4791 = sitofp i32 %4790 to float
  %4792 = fmul fast float %4784, %4791
  %4793 = fmul fast float %4792, %4786
  %4794 = select i1 %4616, float %4793, float %4788
  %4795 = select i1 %4616, float %4788, float %4793
  %4796 = select i1 %4614, float %4793, float %4787
  %4797 = select i1 %4614, float %4788, float %4794
  %4798 = select i1 %4614, float %4787, float %4795
  %4799 = fsub fast float %4733, %4557
  %4800 = fsub fast float %4734, %4558
  %4801 = fsub fast float %4735, %4559
  %4802 = fmul fast float %4799, %4705
  %4803 = fmul fast float %4800, %4705
  %4804 = fmul fast float %4801, %4705
  %4805 = fadd fast float %4802, %4557
  %4806 = fadd fast float %4803, %4558
  %4807 = fadd fast float %4804, %4559
  %4808 = fsub fast float %4742, %4560
  %4809 = fsub fast float %4743, %4561
  %4810 = fsub fast float %4744, %4562
  %4811 = fmul fast float %4808, %4705
  %4812 = fmul fast float %4809, %4705
  %4813 = fmul fast float %4810, %4705
  %4814 = fadd fast float %4811, %4560
  %4815 = fadd fast float %4812, %4561
  %4816 = fadd fast float %4813, %4562
  %4817 = fadd fast float %4796, %4563
  %4818 = fadd fast float %4797, %4564
  %4819 = fadd fast float %4798, %4565
  %4820 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = call float @dx.op.unary.f32(i32 25, float %4820)  ; Rsqrt(value)
  %4822 = fmul fast float %4817, %4821
  %4823 = fmul fast float %4818, %4821
  %4824 = fmul fast float %4819, %4821
  %4825 = fsub fast float %4822, %4563
  %4826 = fsub fast float %4823, %4564
  %4827 = fsub fast float %4824, %4565
  %4828 = fmul fast float %4825, %4705
  %4829 = fmul fast float %4826, %4705
  %4830 = fmul fast float %4827, %4705
  %4831 = fadd fast float %4828, %4563
  %4832 = fadd fast float %4829, %4564
  %4833 = fadd fast float %4830, %4565
  %4834 = call float @dx.op.binary.f32(i32 36, float %4567, float %4753)  ; FMin(a,b)
  %4835 = fsub fast float %4834, %4567
  %4836 = fmul fast float %4835, %4705
  %4837 = fadd fast float %4836, %4567
  %4838 = fsub fast float %4766, %4566
  %4839 = fmul fast float %4838, %4705
  %4840 = fadd fast float %4839, %4566
  br label %4841

; <label>:4841                                    ; preds = %4703, %4665, %4556, %4272
  %4842 = phi float [ %4805, %4703 ], [ %4557, %4665 ], [ %4557, %4556 ], [ %3881, %4272 ]
  %4843 = phi float [ %4806, %4703 ], [ %4558, %4665 ], [ %4558, %4556 ], [ %3882, %4272 ]
  %4844 = phi float [ %4807, %4703 ], [ %4559, %4665 ], [ %4559, %4556 ], [ %3883, %4272 ]
  %4845 = phi float [ %4814, %4703 ], [ %4560, %4665 ], [ %4560, %4556 ], [ %3866, %4272 ]
  %4846 = phi float [ %4815, %4703 ], [ %4561, %4665 ], [ %4561, %4556 ], [ %3867, %4272 ]
  %4847 = phi float [ %4816, %4703 ], [ %4562, %4665 ], [ %4562, %4556 ], [ %3868, %4272 ]
  %4848 = phi float [ %4831, %4703 ], [ %4563, %4665 ], [ %4563, %4556 ], [ %3829, %4272 ]
  %4849 = phi float [ %4832, %4703 ], [ %4564, %4665 ], [ %4564, %4556 ], [ %3830, %4272 ]
  %4850 = phi float [ %4833, %4703 ], [ %4565, %4665 ], [ %4565, %4556 ], [ %3831, %4272 ]
  %4851 = phi float [ %4840, %4703 ], [ %4566, %4665 ], [ %4566, %4556 ], [ %3869, %4272 ]
  %4852 = phi float [ %4837, %4703 ], [ %4567, %4665 ], [ %4567, %4556 ], [ %3841, %4272 ]
  %4853 = fcmp fast une float %4276, 0.000000e+00
  %4854 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 25, float %4854)  ; Rsqrt(value)
  br i1 %4853, label %4863, label %4856

; <label>:4856                                    ; preds = %4841
  %4857 = fmul fast float %4855, %204
  %4858 = fmul fast float %4855, %205
  %4859 = fmul fast float %4855, %206
  %4860 = fsub fast float -0.000000e+00, %4857
  %4861 = fsub fast float -0.000000e+00, %4858
  %4862 = fsub fast float -0.000000e+00, %4859
  br label %5030

; <label>:4863                                    ; preds = %4841
  %4864 = fmul fast float %204, %4855
  %4865 = fsub fast float -0.000000e+00, %4864
  %4866 = fmul fast float %205, %4855
  %4867 = fsub fast float -0.000000e+00, %4866
  %4868 = fmul fast float %206, %4855
  %4869 = fsub fast float -0.000000e+00, %4868
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4867, float %4869, float %130, float %132, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = fmul fast float %4276, 2.500000e+00
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4276, 0x4013FFFFE0000000
  %4874 = fadd fast float %4873, 0xBFFFFFFFE0000000
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %4276, 0x4004000020000000
  %4877 = fadd fast float %4876, 0xBFF8000040000000
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %3848, 1.000000e+01
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4880, 2.000000e+00
  %4882 = fsub fast float 3.000000e+00, %4881
  %4883 = fmul fast float %4880, %4880
  %4884 = fmul fast float %4883, %4882
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = fsub fast float 0x3FE3333340000000, %4851
  %4887 = fmul fast float %4886, 0x400AAAAAA0000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4885, %4888
  %4890 = fmul fast float %4842, 0x3FEA2B8620000000
  %4891 = fmul fast float %4843, 0x3FEA2B8620000000
  %4892 = fmul fast float %4844, 0x3FEA2B8620000000
  %4893 = fadd fast float %4890, 0x3FC81DFBA0000000
  %4894 = fmul fast float %4893, %4842
  %4895 = fadd fast float %4894, 0x3F910E6020000000
  %4896 = fadd fast float %4891, 0x3FC81DFBA0000000
  %4897 = fmul fast float %4896, %4843
  %4898 = fadd fast float %4897, 0x3F910E6020000000
  %4899 = fadd fast float %4892, 0x3FC81DFBA0000000
  %4900 = fmul fast float %4899, %4844
  %4901 = fadd fast float %4900, 0x3F910E6020000000
  %4902 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = fsub fast float %4902, %4842
  %4906 = fsub fast float %4903, %4843
  %4907 = fsub fast float %4904, %4844
  %4908 = fmul fast float %4905, %4872
  %4909 = fmul fast float %4908, %4889
  %4910 = fmul fast float %4906, %4872
  %4911 = fmul fast float %4910, %4889
  %4912 = fmul fast float %4907, %4872
  %4913 = fmul fast float %4912, %4889
  %4914 = fadd fast float %4909, %4842
  %4915 = fadd fast float %4911, %4843
  %4916 = fadd fast float %4913, %4844
  %4917 = fmul fast float %4852, %4852
  %4918 = fmul fast float %4917, %4917
  %4919 = fadd fast float %4875, 1.000000e+00
  %4920 = fsub fast float %4919, %4889
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = call float @dx.op.dot3.f32(i32 55, float %130, float %132, float %134, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fsub fast float 1.000000e+00, %4918
  %4925 = call float @dx.op.binary.f32(i32 36, float %4921, float %4924)  ; FMin(a,b)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4925, float %4926)  ; FMax(a,b)
  %4928 = fadd fast float %4923, 0xBFE4CCCCC0000000
  %4929 = fmul fast float %4928, 0x4006DB6DA0000000
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 2.000000e+00
  %4932 = fsub fast float 3.000000e+00, %4931
  %4933 = bitcast float %4845 to i32
  %4934 = ashr i32 %4933, 1
  %4935 = add nsw i32 %4934, 532487669
  %4936 = bitcast i32 %4935 to float
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = bitcast float %4937 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = bitcast float %4846 to i32
  %4943 = ashr i32 %4942, 1
  %4944 = add nsw i32 %4943, 532487669
  %4945 = bitcast i32 %4944 to float
  %4946 = fsub fast float 1.000000e+00, %4945
  %4947 = bitcast float %4946 to i32
  %4948 = sub nsw i32 2129859010, %4947
  %4949 = bitcast i32 %4948 to float
  %4950 = fmul fast float %4949, 2.000000e+00
  %4951 = bitcast float %4847 to i32
  %4952 = ashr i32 %4951, 1
  %4953 = add nsw i32 %4952, 532487669
  %4954 = bitcast i32 %4953 to float
  %4955 = fsub fast float 1.000000e+00, %4954
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, 2.000000e+00
  %4960 = fsub fast float 0x4002A9FBE0000000, %4941
  %4961 = fadd fast float %4941, 0x3FD54FDF00000000
  %4962 = bitcast float %4961 to i32
  %4963 = sub nsw i32 2129859010, %4962
  %4964 = bitcast i32 %4963 to float
  %4965 = fmul fast float %4964, %4960
  %4966 = fmul fast float %4965, %4965
  %4967 = fsub fast float 0x4002A9FBE0000000, %4950
  %4968 = fadd fast float %4950, 0x3FD54FDF00000000
  %4969 = bitcast float %4968 to i32
  %4970 = sub nsw i32 2129859010, %4969
  %4971 = bitcast i32 %4970 to float
  %4972 = fmul fast float %4971, %4967
  %4973 = fmul fast float %4972, %4972
  %4974 = fsub fast float 0x4002A9FBE0000000, %4959
  %4975 = fadd fast float %4959, 0x3FD54FDF00000000
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, %4974
  %4980 = fmul fast float %4979, %4979
  %4981 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4966)  ; FMax(a,b)
  %4982 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4973)  ; FMax(a,b)
  %4983 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4980)  ; FMax(a,b)
  %4984 = fsub fast float 1.000000e+00, %4870
  %4985 = fadd fast float %4984, %4885
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fsub fast float 1.000000e+00, %4257
  %4988 = fmul fast float %4927, %4987
  %4989 = fmul fast float %4930, %4930
  %4990 = fmul fast float %4989, %4988
  %4991 = fmul fast float %4990, %4932
  %4992 = fmul fast float %4987, 0xBFE99999A0000000
  %4993 = fmul fast float %4992, %4872
  %4994 = fmul fast float %4993, %4889
  %4995 = fadd fast float %4994, 1.000000e+00
  %4996 = fadd fast float %4851, -1.000000e+00
  %4997 = fmul fast float %4995, %4996
  %4998 = fadd fast float %4997, 1.000000e+00
  %4999 = fsub fast float %4981, %4845
  %5000 = fsub fast float %4982, %4846
  %5001 = fsub fast float %4983, %4847
  %5002 = fmul fast float %4991, %4999
  %5003 = fmul fast float %4991, %5000
  %5004 = fmul fast float %4991, %5001
  %5005 = fadd fast float %5002, %4845
  %5006 = fadd fast float %5003, %4846
  %5007 = fadd fast float %5004, %4847
  %5008 = fsub fast float %130, %4848
  %5009 = fsub fast float %132, %4849
  %5010 = fsub fast float %134, %4850
  %5011 = fmul fast float %4991, %5008
  %5012 = fmul fast float %4991, %5009
  %5013 = fmul fast float %4991, %5010
  %5014 = fadd fast float %5011, %4848
  %5015 = fadd fast float %5012, %4849
  %5016 = fadd fast float %5013, %4850
  %5017 = fmul fast float %4991, %4986
  %5018 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5019 = fsub fast float 1.000000e+00, %5018
  %5020 = fmul fast float %5017, %5019
  %5021 = fadd fast float %5020, %5018
  %5022 = fsub fast float 1.000000e+00, %4852
  %5023 = fmul fast float %4991, %5022
  %5024 = fadd fast float %5023, %4852
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5015, float %5016, float %5014, float %5015, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 25, float %5025)  ; Rsqrt(value)
  %5027 = fmul fast float %5014, %5026
  %5028 = fmul fast float %5015, %5026
  %5029 = fmul fast float %5016, %5026
  br label %5030

; <label>:5030                                    ; preds = %4863, %4856
  %5031 = phi float [ %4862, %4856 ], [ %4869, %4863 ]
  %5032 = phi float [ %4861, %4856 ], [ %4867, %4863 ]
  %5033 = phi float [ %4860, %4856 ], [ %4865, %4863 ]
  %5034 = phi float [ %4859, %4856 ], [ %4868, %4863 ]
  %5035 = phi float [ %4858, %4856 ], [ %4866, %4863 ]
  %5036 = phi float [ %4857, %4856 ], [ %4864, %4863 ]
  %5037 = phi float [ %4842, %4856 ], [ %4914, %4863 ]
  %5038 = phi float [ %4843, %4856 ], [ %4915, %4863 ]
  %5039 = phi float [ %4844, %4856 ], [ %4916, %4863 ]
  %5040 = phi float [ %4845, %4856 ], [ %5005, %4863 ]
  %5041 = phi float [ %4846, %4856 ], [ %5006, %4863 ]
  %5042 = phi float [ %4847, %4856 ], [ %5007, %4863 ]
  %5043 = phi float [ %4848, %4856 ], [ %5027, %4863 ]
  %5044 = phi float [ %4849, %4856 ], [ %5028, %4863 ]
  %5045 = phi float [ %4850, %4856 ], [ %5029, %4863 ]
  %5046 = phi float [ %4851, %4856 ], [ %5021, %4863 ]
  %5047 = phi float [ %4852, %4856 ], [ %5024, %4863 ]
  %5048 = fsub fast float -0.000000e+00, %206
  %5049 = select i1 %263, float 0.000000e+00, float %5042
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5033, float %5032, float %5031)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5035, float %5034, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = fmul fast float %5052, 2.000000e+00
  %5054 = fmul fast float %5053, %5043
  %5055 = fmul fast float %5053, %5044
  %5056 = fmul fast float %5053, %5045
  %5057 = fsub fast float %5036, %5054
  %5058 = fsub fast float %5035, %5055
  %5059 = fsub fast float %5034, %5056
  %5060 = call float @dx.op.binary.f32(i32 36, float %5047, float 1.000000e+00)  ; FMin(a,b)
  %5061 = fsub fast float 1.000000e+00, %5060
  %5062 = bitcast float %5061 to i32
  %5063 = ashr i32 %5062, 1
  %5064 = add nsw i32 %5063, 532487669
  %5065 = bitcast i32 %5064 to float
  %5066 = fsub fast float 1.000000e+00, %5046
  %5067 = call float @dx.op.binary.f32(i32 35, float %5066, float 0x3F847AE140000000)  ; FMax(a,b)
  %5068 = fmul fast float %5067, %5067
  %5069 = fmul fast float %5068, %5068
  %5070 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5065, float %5069, float %5070, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = fsub fast float 1.000000e+00, %5047
  %5074 = bitcast float %5073 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = call float @dx.op.dot3.f32(i32 55, float %88, float %84, float %80, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = fmul fast float %5076, 0x3FD20DD760000000
  %5078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %88)  ; FMax(a,b)
  %5079 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fcmp fast oeq float %5079, 0.000000e+00
  %5081 = fcmp fast oeq float %5078, 0.000000e+00
  %5082 = or i1 %5081, %5080
  br i1 %5082, label %5112, label %5083

; <label>:5083                                    ; preds = %5030
  %5084 = fsub fast float -0.000000e+00, %91
  %5085 = fsub fast float -0.000000e+00, %89
  %5086 = call float @dx.op.unary.f32(i32 24, float %5079)  ; Sqrt(value)
  %5087 = fdiv fast float %5086, %5078
  %5088 = fcmp fast ogt float %5087, 0x3FFB6F8900000000
  %5089 = select i1 %5088, float 0x3FFB6F8900000000, float %5087
  %5090 = fmul fast float %5089, 0x3FE8A23460000000
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5089, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5093 = fmul fast float %5091, %5078
  %5094 = fmul fast float %5092, 0x3FF279A740000000
  %5095 = fadd fast float %5094, -1.000000e+00
  %5096 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %90, float %5084, float %5085, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = call float @dx.op.unary.f32(i32 25, float %5096)  ; Rsqrt(value)
  %5098 = fmul fast float %5097, %5084
  %5099 = fmul fast float %5097, %5085
  %5100 = fmul fast float %5097, %90
  %5101 = fmul fast float %5095, %5095
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = fmul fast float %5092, 0x40005F8BE0000000
  %5104 = fsub fast float 0x400C5BF8A0000000, %5103
  %5105 = fdiv fast float %5093, %5104
  %5106 = fmul fast float %5105, 0x3FEE31C3C0000000
  %5107 = fmul fast float %5106, %5102
  %5108 = fmul fast float %5092, 0x3FDACB7480000000
  %5109 = fadd fast float %5108, 0xBFD7347680000000
  %5110 = fmul fast float %5109, %5105
  %5111 = fmul fast float %5110, %5102
  br label %5112

; <label>:5112                                    ; preds = %5083, %5030
  %5113 = phi float [ %5098, %5083 ], [ 0.000000e+00, %5030 ]
  %5114 = phi float [ %5099, %5083 ], [ 0.000000e+00, %5030 ]
  %5115 = phi float [ %5100, %5083 ], [ 0.000000e+00, %5030 ]
  %5116 = phi float [ %5107, %5083 ], [ 0.000000e+00, %5030 ]
  %5117 = phi float [ %5111, %5083 ], [ 0.000000e+00, %5030 ]
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5114, float %5115, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = fmul fast float %5118, %5118
  %5120 = fmul fast float %5119, 0x3FEE471020000000
  %5121 = fadd fast float %5120, 0xBFD42F6020000000
  %5122 = fmul fast float %5078, 0x3FD20DD760000000
  %5123 = fmul fast float %5121, %5117
  %5124 = fmul fast float %5116, 0x3FDF454380000000
  %5125 = fmul fast float %5124, %5118
  %5126 = fadd fast float %5125, %5122
  %5127 = fadd fast float %5126, %5123
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5114, float %5115, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = fmul fast float %5128, 0x3FDF454380000000
  %5130 = fmul fast float %5128, %5128
  %5131 = fmul fast float %5130, 0x3FEE471020000000
  %5132 = fadd fast float %5131, 0xBFD42F6020000000
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5116, float %5117, float 0x3FD20DD760000000, float %5129, float %5132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5135 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = fcmp fast oeq float %5135, 0.000000e+00
  %5137 = fcmp fast oeq float %5134, 0.000000e+00
  %5138 = or i1 %5137, %5136
  br i1 %5138, label %5168, label %5139

; <label>:5139                                    ; preds = %5112
  %5140 = fsub fast float -0.000000e+00, %87
  %5141 = fsub fast float -0.000000e+00, %85
  %5142 = call float @dx.op.unary.f32(i32 24, float %5135)  ; Sqrt(value)
  %5143 = fdiv fast float %5142, %5134
  %5144 = fcmp fast ogt float %5143, 0x3FFB6F8900000000
  %5145 = select i1 %5144, float 0x3FFB6F8900000000, float %5143
  %5146 = fmul fast float %5145, 0x3FE8A23460000000
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = call float @dx.op.binary.f32(i32 35, float %5145, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5149 = fmul fast float %5147, %5134
  %5150 = fmul fast float %5148, 0x3FF279A740000000
  %5151 = fadd fast float %5150, -1.000000e+00
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5141, float %86, float %5140, float %5141, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = call float @dx.op.unary.f32(i32 25, float %5152)  ; Rsqrt(value)
  %5154 = fmul fast float %5153, %5140
  %5155 = fmul fast float %5153, %5141
  %5156 = fmul fast float %5153, %86
  %5157 = fmul fast float %5151, %5151
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = fmul fast float %5148, 0x40005F8BE0000000
  %5160 = fsub fast float 0x400C5BF8A0000000, %5159
  %5161 = fdiv fast float %5149, %5160
  %5162 = fmul fast float %5161, 0x3FEE31C3C0000000
  %5163 = fmul fast float %5162, %5158
  %5164 = fmul fast float %5148, 0x3FDACB7480000000
  %5165 = fadd fast float %5164, 0xBFD7347680000000
  %5166 = fmul fast float %5165, %5161
  %5167 = fmul fast float %5166, %5158
  br label %5168

; <label>:5168                                    ; preds = %5139, %5112
  %5169 = phi float [ %5154, %5139 ], [ 0.000000e+00, %5112 ]
  %5170 = phi float [ %5155, %5139 ], [ 0.000000e+00, %5112 ]
  %5171 = phi float [ %5156, %5139 ], [ 0.000000e+00, %5112 ]
  %5172 = phi float [ %5163, %5139 ], [ 0.000000e+00, %5112 ]
  %5173 = phi float [ %5167, %5139 ], [ 0.000000e+00, %5112 ]
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = fmul fast float %5174, %5174
  %5176 = fmul fast float %5175, 0x3FEE471020000000
  %5177 = fadd fast float %5176, 0xBFD42F6020000000
  %5178 = fmul fast float %5134, 0x3FD20DD760000000
  %5179 = fmul fast float %5177, %5173
  %5180 = fmul fast float %5172, 0x3FDF454380000000
  %5181 = fmul fast float %5180, %5174
  %5182 = fadd fast float %5181, %5178
  %5183 = fadd fast float %5182, %5179
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = fmul fast float %5184, 0x3FDF454380000000
  %5186 = fmul fast float %5184, %5184
  %5187 = fmul fast float %5186, 0x3FEE471020000000
  %5188 = fadd fast float %5187, 0xBFD42F6020000000
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5172, float %5173, float 0x3FD20DD760000000, float %5185, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5191 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = fcmp fast oeq float %5191, 0.000000e+00
  %5193 = fcmp fast oeq float %5190, 0.000000e+00
  %5194 = or i1 %5193, %5192
  br i1 %5194, label %5224, label %5195

; <label>:5195                                    ; preds = %5168
  %5196 = fsub fast float -0.000000e+00, %83
  %5197 = fsub fast float -0.000000e+00, %81
  %5198 = call float @dx.op.unary.f32(i32 24, float %5191)  ; Sqrt(value)
  %5199 = fdiv fast float %5198, %5190
  %5200 = fcmp fast ogt float %5199, 0x3FFB6F8900000000
  %5201 = select i1 %5200, float 0x3FFB6F8900000000, float %5199
  %5202 = fmul fast float %5201, 0x3FE8A23460000000
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = call float @dx.op.binary.f32(i32 35, float %5201, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5205 = fmul fast float %5203, %5190
  %5206 = fmul fast float %5204, 0x3FF279A740000000
  %5207 = fadd fast float %5206, -1.000000e+00
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5197, float %82, float %5196, float %5197, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = call float @dx.op.unary.f32(i32 25, float %5208)  ; Rsqrt(value)
  %5210 = fmul fast float %5209, %5196
  %5211 = fmul fast float %5209, %5197
  %5212 = fmul fast float %5209, %82
  %5213 = fmul fast float %5207, %5207
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5204, 0x40005F8BE0000000
  %5216 = fsub fast float 0x400C5BF8A0000000, %5215
  %5217 = fdiv fast float %5205, %5216
  %5218 = fmul fast float %5217, 0x3FEE31C3C0000000
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %5204, 0x3FDACB7480000000
  %5221 = fadd fast float %5220, 0xBFD7347680000000
  %5222 = fmul fast float %5221, %5217
  %5223 = fmul fast float %5222, %5214
  br label %5224

; <label>:5224                                    ; preds = %5195, %5168
  %5225 = phi float [ %5210, %5195 ], [ 0.000000e+00, %5168 ]
  %5226 = phi float [ %5211, %5195 ], [ 0.000000e+00, %5168 ]
  %5227 = phi float [ %5212, %5195 ], [ 0.000000e+00, %5168 ]
  %5228 = phi float [ %5219, %5195 ], [ 0.000000e+00, %5168 ]
  %5229 = phi float [ %5223, %5195 ], [ 0.000000e+00, %5168 ]
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = fmul fast float %5230, %5230
  %5232 = fmul fast float %5231, 0x3FEE471020000000
  %5233 = fadd fast float %5232, 0xBFD42F6020000000
  %5234 = fmul fast float %5190, 0x3FD20DD760000000
  %5235 = fmul fast float %5233, %5229
  %5236 = fmul fast float %5228, 0x3FDF454380000000
  %5237 = fmul fast float %5236, %5230
  %5238 = fadd fast float %5237, %5234
  %5239 = fadd fast float %5238, %5235
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = fmul fast float %5240, 0x3FDF454380000000
  %5242 = fmul fast float %5240, %5240
  %5243 = fmul fast float %5242, 0x3FEE471020000000
  %5244 = fadd fast float %5243, 0xBFD42F6020000000
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5228, float %5229, float 0x3FD20DD760000000, float %5241, float %5244)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5127, float 0.000000e+00)  ; FMax(a,b)
  %5247 = call float @dx.op.binary.f32(i32 35, float %5183, float 0.000000e+00)  ; FMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5133, float 0.000000e+00)  ; FMax(a,b)
  %5250 = call float @dx.op.binary.f32(i32 35, float %5189, float 0.000000e+00)  ; FMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %5245, float 0.000000e+00)  ; FMax(a,b)
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = call float @dx.op.binary.f32(i32 36, float %5037, float %5253)  ; FMin(a,b)
  %5255 = fmul fast float %5254, %5061
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = bitcast float %5256 to i32
  %5258 = sub nsw i32 2129859010, %5257
  %5259 = bitcast i32 %5258 to float
  %5260 = call float @dx.op.binary.f32(i32 36, float %5038, float %5253)  ; FMin(a,b)
  %5261 = fmul fast float %5260, %5061
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = bitcast float %5262 to i32
  %5264 = sub nsw i32 2129859010, %5263
  %5265 = bitcast i32 %5264 to float
  %5266 = call float @dx.op.binary.f32(i32 36, float %5039, float %5253)  ; FMin(a,b)
  %5267 = fmul fast float %5266, %5061
  %5268 = fsub fast float 1.000000e+00, %5267
  %5269 = bitcast float %5268 to i32
  %5270 = sub nsw i32 2129859010, %5269
  %5271 = bitcast i32 %5270 to float
  %5272 = fmul fast float %5246, %5060
  %5273 = fmul fast float %5272, %5259
  %5274 = fmul fast float %5247, %5060
  %5275 = fmul fast float %5274, %5265
  %5276 = fmul fast float %5248, %5060
  %5277 = fmul fast float %5276, %5271
  %5278 = call float @dx.op.binary.f32(i32 36, float %5040, float %5253)  ; FMin(a,b)
  %5279 = fmul fast float %5278, %5061
  %5280 = fsub fast float 1.000000e+00, %5279
  %5281 = bitcast float %5280 to i32
  %5282 = sub nsw i32 2129859010, %5281
  %5283 = bitcast i32 %5282 to float
  %5284 = call float @dx.op.binary.f32(i32 36, float %5041, float %5253)  ; FMin(a,b)
  %5285 = fmul fast float %5284, %5061
  %5286 = fsub fast float 1.000000e+00, %5285
  %5287 = bitcast float %5286 to i32
  %5288 = sub nsw i32 2129859010, %5287
  %5289 = bitcast i32 %5288 to float
  %5290 = call float @dx.op.binary.f32(i32 36, float %5049, float %5253)  ; FMin(a,b)
  %5291 = fmul fast float %5290, %5061
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = bitcast float %5292 to i32
  %5294 = sub nsw i32 2129859010, %5293
  %5295 = bitcast i32 %5294 to float
  %5296 = fmul fast float %5249, %5060
  %5297 = fmul fast float %5296, %5283
  %5298 = fmul fast float %5250, %5060
  %5299 = fmul fast float %5298, %5289
  %5300 = fmul fast float %5251, %5060
  %5301 = fmul fast float %5300, %5295
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5275, float %5277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = select i1 %263, float 0.000000e+00, float %5273
  %5304 = select i1 %263, float %5302, float %5275
  %5305 = select i1 %263, float 0.000000e+00, float %5277
  %5306 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5299, float %5301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = select i1 %263, float 0.000000e+00, float %5297
  %5308 = select i1 %263, float %5306, float %5299
  %5309 = select i1 %263, float 0.000000e+00, float %5301
  %5310 = fmul fast float %5051, 9.843750e-01
  %5311 = fmul fast float %5046, 9.843750e-01
  %5312 = fadd fast float %5310, 7.812500e-03
  %5313 = fadd fast float %5311, 7.812500e-03
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5312, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 3
  %5317 = fmul fast float %5315, %5040
  %5318 = fmul fast float %5315, %5041
  %5319 = fmul fast float %5315, %5049
  %5320 = fadd fast float %5317, %5316
  %5321 = fadd fast float %5318, %5316
  %5322 = fadd fast float %5319, %5316
  %5323 = fcmp fast ogt float %3842, 0.000000e+00
  br i1 %5323, label %5324, label %5350

; <label>:5324                                    ; preds = %5224
  %5325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3842, float %5051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = fadd fast float %5326, -5.000000e-01
  %5330 = fadd fast float %5327, -5.000000e-01
  %5331 = fadd fast float %5328, -5.000000e-01
  %5332 = fsub fast float 1.000000e+00, %5040
  %5333 = fsub fast float 1.000000e+00, %5041
  %5334 = fsub fast float 1.000000e+00, %5049
  %5335 = fmul fast float %5040, 4.000000e+00
  %5336 = fmul fast float %5335, %5332
  %5337 = fmul fast float %5336, %5329
  %5338 = fmul fast float %5041, 4.000000e+00
  %5339 = fmul fast float %5338, %5333
  %5340 = fmul fast float %5339, %5330
  %5341 = fmul fast float %5049, 4.000000e+00
  %5342 = fmul fast float %5341, %5334
  %5343 = fmul fast float %5342, %5331
  %5344 = fadd fast float %5337, %5320
  %5345 = fadd fast float %5340, %5321
  %5346 = fadd fast float %5343, %5322
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  br label %5350

; <label>:5350                                    ; preds = %5324, %5224
  %5351 = phi float [ %5347, %5324 ], [ %5320, %5224 ]
  %5352 = phi float [ %5348, %5324 ], [ %5321, %5224 ]
  %5353 = phi float [ %5349, %5324 ], [ %5322, %5224 ]
  %5354 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5351, float %5354)  ; FMax(a,b)
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = fmul fast float %5355, %5046
  %5358 = fadd fast float %5357, %5046
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5362 = fmul fast float %5358, %5360
  %5363 = fadd fast float %5362, %5361
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fsub fast float 1.000000e+00, %5072
  %5366 = fadd fast float %5365, %5364
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fcmp fast olt float %5367, 1.000000e+00
  br i1 %5368, label %5369, label %5845

; <label>:5369                                    ; preds = %5350
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5373 = fmul fast float %5371, %121
  %5374 = fmul fast float %5372, %122
  %5375 = fptoui float %5373 to i32
  %5376 = fptoui float %5374 to i32
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5380 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5381 = fadd fast float %108, -4.000000e+00
  %5382 = call float @dx.op.binary.f32(i32 35, float %5381, float 0.000000e+00)  ; FMax(a,b)
  %5383 = fadd fast float %5382, %5378
  %5384 = fmul fast float %5383, %5379
  %5385 = call float @dx.op.unary.f32(i32 23, float %5384)  ; Log(value)
  %5386 = fmul fast float %5385, %5380
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 2
  %5389 = fmul fast float %5386, %5388
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.i32 %5391, 1
  %5393 = add i32 %5392, -1
  %5394 = uitofp i32 %5392 to float
  %5395 = fmul fast float %5394, %5390
  %5396 = fptoui float %5395 to i32
  %5397 = call i32 @dx.op.binary.i32(i32 40, i32 %5396, i32 %5393)  ; UMin(a,b)
  %5398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.i32 %5398, 2
  %5400 = extractvalue %dx.types.CBufRet.i32 %5398, 3
  %5401 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5376, i32 %5399, i32 %5375)  ; UMad(a,b,c)
  %5402 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5397, i32 %5400, i32 %5401)  ; UMad(a,b,c)
  %5403 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %5404 = fptoui float %5403 to i32
  %5405 = lshr i32 %5404, 5
  %5406 = call i32 @dx.op.binary.i32(i32 40, i32 %5405, i32 8191)  ; UMin(a,b)
  %5407 = fsub fast float %4247, %206
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = fcmp fast ogt float %5408, 0.000000e+00
  %5410 = fcmp fast ogt float %5059, 0.000000e+00
  %5411 = and i1 %5410, %5409
  br i1 %5411, label %5412, label %5441

; <label>:5412                                    ; preds = %5369
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.binary.f32(i32 35, float %5413, float -1.000000e+00)  ; FMax(a,b)
  %5415 = call float @dx.op.binary.f32(i32 36, float %5414, float 1.000000e+00)  ; FMin(a,b)
  %5416 = fmul fast float %5415, %5415
  %5417 = fsub fast float 1.000000e+00, %5416
  %5418 = fmul fast float %5417, 0x3FFC6E2300000000
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fcmp fast ogt float %5419, 0.000000e+00
  %5421 = call float @dx.op.unary.f32(i32 24, float %5419)  ; Sqrt(value)
  %5422 = fsub fast float 1.000000e+00, %5421
  %5423 = call float @dx.op.unary.f32(i32 23, float %5422)  ; Log(value)
  %5424 = fmul fast float %5423, 5.000000e+00
  %5425 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5426 = fmul fast float %5425, 0x3FEF591A60000000
  %5427 = fadd fast float %5426, 0x3F94DCB540000000
  %5428 = select i1 %5420, float %5427, float 1.000000e+00
  %5429 = fcmp fast oge float %5428, 1.000000e+00
  %5430 = fmul fast float %5413, 2.000000e+00
  %5431 = fadd fast float %5430, %5059
  %5432 = select i1 %5429, float %5431, float %5059
  %5433 = fsub fast float %5432, %5059
  %5434 = fmul fast float %5433, %5408
  %5435 = fadd fast float %5434, %5059
  %5436 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5435, float %5057, float %5058, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = call float @dx.op.unary.f32(i32 25, float %5436)  ; Rsqrt(value)
  %5438 = fmul fast float %5437, %5057
  %5439 = fmul fast float %5437, %5058
  %5440 = fmul fast float %5435, %5437
  br label %5441

; <label>:5441                                    ; preds = %5412, %5369
  %5442 = phi float [ %5438, %5412 ], [ %5057, %5369 ]
  %5443 = phi float [ %5439, %5412 ], [ %5058, %5369 ]
  %5444 = phi float [ %5440, %5412 ], [ %5059, %5369 ]
  %5445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.i32 %5445, 2
  %5447 = add nsw i32 %5446, -1
  %5448 = call i32 @dx.op.binary.i32(i32 37, i32 %5447, i32 0)  ; IMax(a,b)
  %5449 = shl i32 %5406, 2
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = lshr i32 %5451, 16
  %5453 = and i32 %5451, 65535
  %5454 = lshr i32 %5451, 21
  %5455 = lshr i32 %5453, 5
  %5456 = call i32 @dx.op.binary.i32(i32 40, i32 %5455, i32 %5448)  ; UMin(a,b)
  %5457 = icmp ugt i32 %5454, %5456
  br i1 %5457, label %5821, label %5458

; <label>:5458                                    ; preds = %5441
  br label %5459

; <label>:5459                                    ; preds = %5813, %5458
  %5460 = phi float [ %5814, %5813 ], [ 0.000000e+00, %5458 ]
  %5461 = phi float [ %5815, %5813 ], [ 0.000000e+00, %5458 ]
  %5462 = phi float [ %5816, %5813 ], [ 0.000000e+00, %5458 ]
  %5463 = phi float [ %5817, %5813 ], [ 1.000000e+00, %5458 ]
  %5464 = phi i32 [ %5818, %5813 ], [ %5454, %5458 ]
  %5465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.i32 %5465, 2
  %5467 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5402, i32 %5466, i32 %5464)  ; UMad(a,b,c)
  %5468 = shl i32 %5467, 2
  %5469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = shl i32 %5464, 5
  %5472 = sub nsw i32 %5452, %5471
  %5473 = call i32 @dx.op.binary.i32(i32 37, i32 %5472, i32 0)  ; IMax(a,b)
  %5474 = call i32 @dx.op.binary.i32(i32 38, i32 %5473, i32 31)  ; IMin(a,b)
  %5475 = sub nsw i32 1, %5452
  %5476 = add nsw i32 %5475, %5453
  %5477 = call i32 @dx.op.binary.i32(i32 37, i32 %5476, i32 0)  ; IMax(a,b)
  %5478 = call i32 @dx.op.binary.i32(i32 38, i32 %5477, i32 32)  ; IMin(a,b)
  %5479 = and i32 %5478, 31
  %5480 = shl i32 -1, %5479
  %5481 = xor i32 %5480, -1
  %5482 = and i32 %5474, 31
  %5483 = shl i32 %5481, %5482
  %5484 = icmp eq i32 %5478, 32
  %5485 = select i1 %5484, i32 -1, i32 %5483
  %5486 = and i32 %5485, %5470
  %5487 = icmp eq i32 %5486, 0
  br i1 %5487, label %5813, label %5488

; <label>:5488                                    ; preds = %5459
  br label %5489

; <label>:5489                                    ; preds = %5596, %5488
  %5490 = phi float [ %5597, %5596 ], [ %5460, %5488 ]
  %5491 = phi float [ %5598, %5596 ], [ %5461, %5488 ]
  %5492 = phi float [ %5599, %5596 ], [ %5462, %5488 ]
  %5493 = phi float [ %5600, %5596 ], [ %5463, %5488 ]
  %5494 = phi i32 [ %5499, %5596 ], [ %5486, %5488 ]
  %5495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5494)  ; FirstbitLo(value)
  %5496 = add i32 %5495, %5471
  %5497 = and i32 %5495, 31
  %5498 = shl i32 1, %5497
  %5499 = xor i32 %5498, %5494
  %5500 = mul i32 %5496, 72
  %5501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = add i32 %5500, 12
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = add i32 %5500, 16
  %5509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.ResRet.f32 %5509, 1
  %5512 = extractvalue %dx.types.ResRet.f32 %5509, 2
  %5513 = add i32 %5500, 28
  %5514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = add i32 %5500, 32
  %5517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = extractvalue %dx.types.ResRet.f32 %5517, 3
  %5522 = add i32 %5500, 48
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = add i32 %5500, 56
  %5527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5526, i32 undef)  ; BufferLoad(srv,index,wot)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 1
  %5530 = add i32 %5500, 64
  %5531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5530, i32 undef)  ; BufferLoad(srv,index,wot)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.ResRet.f32 %5531, 1
  %5534 = mul i32 %5496, 60
  %5535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.ResRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.ResRet.f32 %5535, 2
  %5539 = add i32 %5534, 12
  %5540 = add i32 %5534, 48
  %5541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5540, i32 undef)  ; BufferLoad(srv,index,wot)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.ResRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.ResRet.f32 %5541, 2
  %5545 = and i32 %5507, 32767
  %5546 = bitcast float %5502 to i32
  %5547 = icmp eq i32 %5546, -1
  %5548 = bitcast float %5503 to i32
  %5549 = and i32 %5507, 32768
  %5550 = icmp ne i32 %5549, 0
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5555 = fsub fast float %5536, %5552
  %5556 = fsub fast float %5537, %5553
  %5557 = fsub fast float %5538, %5554
  %5558 = fsub fast float %204, %5555
  %5559 = fsub fast float %205, %5556
  %5560 = fsub fast float %206, %5557
  %5561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5539, i32 undef)  ; BufferLoad(srv,index,wot)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5562, float %5563, float %5564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = add i32 %5534, 24
  %5567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5566, i32 undef)  ; BufferLoad(srv,index,wot)
  %5568 = extractvalue %dx.types.ResRet.f32 %5567, 0
  %5569 = extractvalue %dx.types.ResRet.f32 %5567, 1
  %5570 = extractvalue %dx.types.ResRet.f32 %5567, 2
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5568, float %5569, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = add i32 %5534, 36
  %5573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5572, i32 undef)  ; BufferLoad(srv,index,wot)
  %5574 = extractvalue %dx.types.ResRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.ResRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.ResRet.f32 %5573, 2
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5574, float %5575, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.unary.f32(i32 6, float %5565)  ; FAbs(value)
  %5579 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5580 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5581 = fsub fast float %5542, %5578
  %5582 = fsub fast float %5543, %5579
  %5583 = fsub fast float %5544, %5580
  %5584 = fmul fast float %5581, %5510
  %5585 = fmul fast float %5582, %5511
  %5586 = fmul fast float %5583, %5512
  %5587 = call float @dx.op.binary.f32(i32 36, float %5585, float %5586)  ; FMin(a,b)
  %5588 = call float @dx.op.binary.f32(i32 36, float %5584, float %5587)  ; FMin(a,b)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = call float @dx.op.binary.f32(i32 36, float %5493, float %5589)  ; FMin(a,b)
  %5591 = uitofp i1 %5550 to float
  %5592 = fadd fast float %5408, 1.000000e+00
  %5593 = fsub fast float %5592, %5591
  %5594 = fmul fast float %5590, %5593
  %5595 = fcmp fast ogt float %5594, 0.000000e+00
  br i1 %5595, label %5602, label %5596

; <label>:5596                                    ; preds = %5744, %5489
  %5597 = phi float [ %5808, %5744 ], [ %5490, %5489 ]
  %5598 = phi float [ %5809, %5744 ], [ %5491, %5489 ]
  %5599 = phi float [ %5810, %5744 ], [ %5492, %5489 ]
  %5600 = phi float [ %5811, %5744 ], [ %5493, %5489 ]
  %5601 = icmp eq i32 %5494, %5498
  br i1 %5601, label %5812, label %5489

; <label>:5602                                    ; preds = %5489
  br i1 %5547, label %5660, label %5603

; <label>:5603                                    ; preds = %5602
  %5604 = fsub fast float -0.000000e+00, %5562
  %5605 = fsub fast float -0.000000e+00, %5563
  %5606 = fsub fast float -0.000000e+00, %5564
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fsub fast float -0.000000e+00, %5607
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = fadd fast float %5609, %5525
  %5611 = fadd fast float %5524, %5609
  %5612 = fsub fast float -0.000000e+00, %5611
  %5613 = fcmp ogt float %5607, -0.000000e+00
  %5614 = select i1 %5613, float %5612, float %5610
  %5615 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5616 = fdiv fast float 1.000000e+00, %5615
  %5617 = fmul fast float %5614, %5616
  %5618 = call float @dx.op.binary.f32(i32 35, float %5617, float 0.000000e+00)  ; FMax(a,b)
  %5619 = fsub fast float -0.000000e+00, %5568
  %5620 = fsub fast float -0.000000e+00, %5569
  %5621 = fsub fast float -0.000000e+00, %5570
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fsub fast float -0.000000e+00, %5622
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = fadd fast float %5624, %5529
  %5626 = fadd fast float %5528, %5624
  %5627 = fsub fast float -0.000000e+00, %5626
  %5628 = fcmp ogt float %5622, -0.000000e+00
  %5629 = select i1 %5628, float %5627, float %5625
  %5630 = call float @dx.op.unary.f32(i32 6, float %5623)  ; FAbs(value)
  %5631 = fdiv fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5629, %5631
  %5633 = call float @dx.op.binary.f32(i32 35, float %5632, float 0.000000e+00)  ; FMax(a,b)
  %5634 = fsub fast float -0.000000e+00, %5574
  %5635 = fsub fast float -0.000000e+00, %5575
  %5636 = fsub fast float -0.000000e+00, %5576
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5634, float %5635, float %5636)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = fsub fast float -0.000000e+00, %5637
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5634, float %5635, float %5636)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = fadd fast float %5639, %5533
  %5641 = fadd fast float %5532, %5639
  %5642 = fsub fast float -0.000000e+00, %5641
  %5643 = fcmp ogt float %5637, -0.000000e+00
  %5644 = select i1 %5643, float %5642, float %5640
  %5645 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5646 = fdiv fast float 1.000000e+00, %5645
  %5647 = fmul fast float %5644, %5646
  %5648 = call float @dx.op.binary.f32(i32 35, float %5647, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 36, float %5633, float %5648)  ; FMin(a,b)
  %5650 = call float @dx.op.binary.f32(i32 36, float %5618, float %5649)  ; FMin(a,b)
  %5651 = fmul fast float %5650, %5442
  %5652 = fmul fast float %5650, %5443
  %5653 = fmul fast float %5650, %5444
  %5654 = fadd fast float %5651, %204
  %5655 = fadd fast float %5652, %205
  %5656 = fadd fast float %5653, %206
  %5657 = fsub fast float %5654, %5502
  %5658 = fsub fast float %5655, %5503
  %5659 = fsub fast float %5656, %5504
  br label %5667

; <label>:5660                                    ; preds = %5602
  %5661 = fmul fast float %5442, 8.096000e+03
  %5662 = fmul fast float %5443, 8.096000e+03
  %5663 = fmul fast float %5444, 8.096000e+03
  %5664 = fadd fast float %5661, %204
  %5665 = fadd fast float %5662, %205
  %5666 = fadd fast float %5663, %206
  br label %5667

; <label>:5667                                    ; preds = %5660, %5603
  %5668 = phi float [ %5442, %5660 ], [ %5657, %5603 ]
  %5669 = phi float [ %5443, %5660 ], [ %5658, %5603 ]
  %5670 = phi float [ %5444, %5660 ], [ %5659, %5603 ]
  %5671 = phi float [ %5664, %5660 ], [ %5654, %5603 ]
  %5672 = phi float [ %5665, %5660 ], [ %5655, %5603 ]
  %5673 = phi float [ %5666, %5660 ], [ %5656, %5603 ]
  %5674 = fcmp fast olt float %5521, 1.000000e+00
  br i1 %5674, label %5675, label %5706, !dx.controlflow.hints !104

; <label>:5675                                    ; preds = %5667
  %5676 = fmul fast float %5670, %5519
  %5677 = fmul fast float %5669, %5520
  %5678 = fsub fast float %5676, %5677
  %5679 = fmul fast float %5668, %5520
  %5680 = fmul fast float %5670, %5518
  %5681 = fsub fast float %5679, %5680
  %5682 = fmul fast float %5669, %5518
  %5683 = fmul fast float %5668, %5519
  %5684 = fsub fast float %5682, %5683
  %5685 = fmul fast float %5678, 2.000000e+00
  %5686 = fmul fast float %5681, 2.000000e+00
  %5687 = fmul fast float %5684, 2.000000e+00
  %5688 = fmul fast float %5685, %5521
  %5689 = fmul fast float %5686, %5521
  %5690 = fmul fast float %5687, %5521
  %5691 = fmul fast float %5687, %5519
  %5692 = fmul fast float %5686, %5520
  %5693 = fmul fast float %5685, %5520
  %5694 = fmul fast float %5687, %5518
  %5695 = fmul fast float %5686, %5518
  %5696 = fmul fast float %5685, %5519
  %5697 = fadd fast float %5691, %5668
  %5698 = fadd fast float %5697, %5688
  %5699 = fsub fast float %5698, %5692
  %5700 = fsub fast float %5669, %5694
  %5701 = fadd fast float %5700, %5689
  %5702 = fadd fast float %5701, %5693
  %5703 = fadd fast float %5690, %5670
  %5704 = fsub fast float %5703, %5696
  %5705 = fadd fast float %5704, %5695
  br label %5706

; <label>:5706                                    ; preds = %5675, %5667
  %5707 = phi float [ %5699, %5675 ], [ %5668, %5667 ]
  %5708 = phi float [ %5702, %5675 ], [ %5669, %5667 ]
  %5709 = phi float [ %5705, %5675 ], [ %5670, %5667 ]
  br i1 %5547, label %5741, label %5710

; <label>:5710                                    ; preds = %5706
  %5711 = fmul fast float %5046, 0x400187C840000000
  %5712 = fadd fast float %5711, 0xC00EFC2120000000
  %5713 = fmul fast float %5712, %5046
  %5714 = fadd fast float %5713, 0x3FE5D16340000000
  %5715 = fmul fast float %5714, %5046
  %5716 = fadd fast float %5715, 1.000000e+00
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fsub fast float %5671, %204
  %5719 = fsub fast float %5672, %205
  %5720 = fsub fast float %5673, %206
  %5721 = fsub fast float %5671, %5502
  %5722 = fsub fast float %5672, %5503
  %5723 = fsub fast float %5673, %5504
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5718, float %5719, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fadd fast float %5725, 0x3EE4F8B580000000
  %5727 = fdiv fast float %5724, %5726
  %5728 = bitcast float %5727 to i32
  %5729 = ashr i32 %5728, 1
  %5730 = add nsw i32 %5729, 532487669
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5731, %5717
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = fmul fast float %5733, 0x4009981AE0000000
  %5735 = fsub fast float 0x40111BBD80000000, %5734
  %5736 = fmul fast float %5735, %5733
  %5737 = fadd fast float %5736, 0xC0009F6020000000
  %5738 = fmul fast float %5737, %5733
  %5739 = fadd fast float %5738, 1.000000e+00
  %5740 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  br label %5744

; <label>:5741                                    ; preds = %5706
  %5742 = icmp ne i32 %5548, -1
  %5743 = zext i1 %5742 to i32
  br label %5744

; <label>:5744                                    ; preds = %5741, %5710
  %5745 = phi float [ %5046, %5741 ], [ %5740, %5710 ]
  %5746 = phi i32 [ %5743, %5741 ], [ 0, %5710 ]
  %5747 = fmul float %5745, 5.000000e+00
  %5748 = fsub float 5.000000e+00, %5747
  %5749 = icmp ne i32 %5746, 0
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5752 = fadd fast float %5751, %5748
  %5753 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5752)  ; FMax(a,b)
  %5754 = call float @dx.op.unary.f32(i32 6, float %5707)  ; FAbs(value)
  %5755 = call float @dx.op.unary.f32(i32 6, float %5708)  ; FAbs(value)
  %5756 = fadd fast float %5755, %5754
  %5757 = call float @dx.op.unary.f32(i32 6, float %5709)  ; FAbs(value)
  %5758 = fadd fast float %5756, %5757
  %5759 = fcmp fast oeq float %5758, 0.000000e+00
  %5760 = fdiv fast float 1.000000e+00, %5758
  %5761 = select i1 %5759, float 1.000000e+00, float %5760
  %5762 = fmul fast float %5761, %5707
  %5763 = fmul fast float %5761, %5708
  %5764 = call float @dx.op.unary.f32(i32 6, float %5763)  ; FAbs(value)
  %5765 = call float @dx.op.unary.f32(i32 6, float %5762)  ; FAbs(value)
  %5766 = fsub fast float 1.000000e+00, %5764
  %5767 = fsub fast float 1.000000e+00, %5765
  %5768 = fcmp fast oge float %5762, 0.000000e+00
  %5769 = fcmp fast oge float %5763, 0.000000e+00
  %5770 = select i1 %5768, float 1.000000e+00, float -1.000000e+00
  %5771 = select i1 %5769, float 1.000000e+00, float -1.000000e+00
  %5772 = fcmp fast ole float %5709, 0.000000e+00
  %5773 = fmul fast float %5770, %5766
  %5774 = fmul fast float %5771, %5767
  %5775 = select i1 %5772, float %5773, float %5762
  %5776 = select i1 %5772, float %5774, float %5763
  %5777 = fmul fast float %5775, 5.000000e-01
  %5778 = fmul fast float %5776, 5.000000e-01
  %5779 = fadd fast float %5777, 5.000000e-01
  %5780 = fadd fast float %5778, 5.000000e-01
  %5781 = uitofp i32 %5545 to float
  %5782 = call float @dx.op.binary.f32(i32 36, float %5753, float 3.000000e+00)  ; FMin(a,b)
  %5783 = fadd fast float %5782, 2.000000e+00
  %5784 = call float @dx.op.unary.f32(i32 21, float %5783)  ; Exp(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5786 = fmul fast float %5785, %5784
  %5787 = fmul fast float %5786, 2.000000e+00
  %5788 = fsub fast float 1.000000e+00, %5787
  %5789 = fmul fast float %5779, %5788
  %5790 = fmul fast float %5780, %5788
  %5791 = fadd fast float %5789, %5786
  %5792 = fadd fast float %5790, %5786
  %5793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5791, float %5792, float %5781, float undef, i32 0, i32 0, i32 undef, float %5753)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.ResRet.f32 %5793, 1
  %5796 = extractvalue %dx.types.ResRet.f32 %5793, 2
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 3
  %5799 = fmul fast float %5798, %5515
  %5800 = call float @dx.op.binary.f32(i32 36, float %5077, float %5799)  ; FMin(a,b)
  %5801 = select i1 %5749, float %5800, float %5799
  %5802 = fmul fast float %5794, %5594
  %5803 = fmul fast float %5802, %5801
  %5804 = fmul fast float %5795, %5594
  %5805 = fmul fast float %5804, %5801
  %5806 = fmul fast float %5796, %5594
  %5807 = fmul fast float %5806, %5801
  %5808 = fadd fast float %5803, %5490
  %5809 = fadd fast float %5805, %5491
  %5810 = fadd fast float %5807, %5492
  %5811 = fsub fast float %5493, %5594
  br label %5596

; <label>:5812                                    ; preds = %5596
  br label %5813

; <label>:5813                                    ; preds = %5812, %5459
  %5814 = phi float [ %5460, %5459 ], [ %5597, %5812 ]
  %5815 = phi float [ %5461, %5459 ], [ %5598, %5812 ]
  %5816 = phi float [ %5462, %5459 ], [ %5599, %5812 ]
  %5817 = phi float [ %5463, %5459 ], [ %5600, %5812 ]
  %5818 = add i32 %5464, 1
  %5819 = icmp ugt i32 %5818, %5456
  br i1 %5819, label %5820, label %5459, !llvm.loop !105

; <label>:5820                                    ; preds = %5813
  br label %5821

; <label>:5821                                    ; preds = %5820, %5441
  %5822 = phi float [ 0.000000e+00, %5441 ], [ %5814, %5820 ]
  %5823 = phi float [ 0.000000e+00, %5441 ], [ %5815, %5820 ]
  %5824 = phi float [ 0.000000e+00, %5441 ], [ %5816, %5820 ]
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = select i1 %263, float 0.000000e+00, float %5822
  %5827 = select i1 %263, float %5825, float %5823
  %5828 = select i1 %263, float 0.000000e+00, float %5824
  %5829 = fcmp fast olt float %5367, 0.000000e+00
  %5830 = call float @dx.op.unary.f32(i32 6, float %5367)  ; FAbs(value)
  %5831 = fmul fast float %5830, %5307
  %5832 = fmul fast float %5830, %5308
  %5833 = fmul fast float %5830, %5309
  %5834 = select i1 %5829, float %5307, float %5831
  %5835 = select i1 %5829, float %5308, float %5832
  %5836 = select i1 %5829, float %5309, float %5833
  %5837 = fsub fast float 1.000000e+00, %5830
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = fmul fast float %5838, %5826
  %5840 = fmul fast float %5838, %5827
  %5841 = fmul fast float %5838, %5828
  %5842 = fadd fast float %5834, %5839
  %5843 = fadd fast float %5835, %5840
  %5844 = fadd fast float %5836, %5841
  br label %5845

; <label>:5845                                    ; preds = %5821, %5350
  %5846 = phi float [ %5307, %5350 ], [ %5842, %5821 ]
  %5847 = phi float [ %5308, %5350 ], [ %5843, %5821 ]
  %5848 = phi float [ %5309, %5350 ], [ %5844, %5821 ]
  %5849 = fmul fast float %5356, %5303
  %5850 = fmul fast float %5356, %5304
  %5851 = fmul fast float %5356, %5305
  %5852 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = fcmp fast ogt float %5852, 0x3E7FF19E20000000
  %5854 = fdiv fast float 1.000000e+00, %5852
  %5855 = select i1 %5853, float %5854, float 0.000000e+00
  %5856 = fmul fast float %5855, %5037
  %5857 = fmul fast float %5855, %5038
  %5858 = fmul fast float %5855, %5039
  %5859 = fadd fast float %5856, -1.000000e+00
  %5860 = fadd fast float %5857, -1.000000e+00
  %5861 = fadd fast float %5858, -1.000000e+00
  %5862 = fmul fast float %5859, 5.000000e-01
  %5863 = fmul fast float %5860, 5.000000e-01
  %5864 = fmul fast float %5861, 5.000000e-01
  %5865 = fadd fast float %5862, 1.000000e+00
  %5866 = fadd fast float %5863, 1.000000e+00
  %5867 = fadd fast float %5864, 1.000000e+00
  %5868 = fmul fast float %5846, %5351
  %5869 = fmul fast float %5847, %5352
  %5870 = fmul fast float %5848, %5353
  %5871 = fsub fast float 1.000000e+00, %5051
  %5872 = bitcast float %5871 to i32
  %5873 = sitofp i32 %5872 to float
  %5874 = fmul fast float %5873, 5.000000e+00
  %5875 = fadd fast float %5874, 0xC1EFBF8940000000
  %5876 = fptosi float %5875 to i32
  %5877 = bitcast i32 %5876 to float
  %5878 = fmul fast float %5877, %3843
  %5879 = fmul fast float %5303, %5878
  %5880 = fmul fast float %5879, %5356
  %5881 = fmul fast float %5880, %5865
  %5882 = fmul fast float %5304, %5878
  %5883 = fmul fast float %5882, %5356
  %5884 = fmul fast float %5883, %5866
  %5885 = fmul fast float %5305, %5878
  %5886 = fmul fast float %5885, %5356
  %5887 = fmul fast float %5886, %5867
  %5888 = fmul fast float %5849, %3839
  %5889 = fmul fast float %5850, %3839
  %5890 = fmul fast float %5851, %3839
  %5891 = fadd fast float %5868, %3835
  %5892 = fadd fast float %5891, %5881
  %5893 = fmul fast float %5892, %3839
  %5894 = fadd fast float %5869, %3836
  %5895 = fadd fast float %5894, %5884
  %5896 = fmul fast float %5895, %3839
  %5897 = fadd fast float %5870, %3837
  %5898 = fadd fast float %5897, %5887
  %5899 = fmul fast float %5898, %3839
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5902 = fcmp fast oeq float %5901, 0.000000e+00
  br i1 %5902, label %7607, label %5903

; <label>:5903                                    ; preds = %5845
  %5904 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = select i1 %263, float %5912, float %5908
  %5916 = select i1 %263, float %5914, float %5909
  %5917 = select i1 %263, float %5913, float %5910
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5920 = fmul fast float %5919, %130
  %5921 = fmul fast float %5919, %132
  %5922 = fmul fast float %5919, %134
  %5923 = fadd fast float %5920, %204
  %5924 = fadd fast float %5921, %205
  %5925 = fadd fast float %5922, %206
  %5926 = fcmp fast olt float %5901, 0.000000e+00
  br i1 %5926, label %7184, label %5927

; <label>:5927                                    ; preds = %5903
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5932 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = fmul fast float %5929, %5923
  %5944 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %5930, float %5943)  ; FMad(a,b,c)
  %5945 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5931, float %5944)  ; FMad(a,b,c)
  %5946 = fadd fast float %5945, %5932
  %5947 = fmul fast float %5934, %5923
  %5948 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %5935, float %5947)  ; FMad(a,b,c)
  %5949 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5936, float %5948)  ; FMad(a,b,c)
  %5950 = fadd fast float %5949, %5937
  %5951 = fmul fast float %5939, %5923
  %5952 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %5940, float %5951)  ; FMad(a,b,c)
  %5953 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5941, float %5952)  ; FMad(a,b,c)
  %5954 = fadd fast float %5953, %5942
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = fcmp fast une float %5956, 0.000000e+00
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5962 = fmul fast float %5961, %5946
  %5963 = fmul fast float %5961, %5950
  %5964 = fadd fast float %5962, %5959
  %5965 = fadd fast float %5963, %5960
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5970 = fmul fast float %5969, %5946
  %5971 = fmul fast float %5969, %5950
  %5972 = fadd fast float %5970, %5967
  %5973 = fadd fast float %5971, %5968
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5976 = fsub fast float %5975, %5954
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = fmul fast float %5976, %5977
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  br i1 %5957, label %6041, label %5981

; <label>:5981                                    ; preds = %5927
  %5982 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5985 = fadd fast float %5984, %5982
  %5986 = fcmp fast ogt float %5985, 0.000000e+00
  br i1 %5986, label %5987, label %6011

; <label>:5987                                    ; preds = %5981
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = fsub fast float %5972, %5989
  %5992 = fsub fast float %5973, %5990
  %5993 = fcmp fast olt float %5991, 0.000000e+00
  %5994 = fcmp fast olt float %5992, 0.000000e+00
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5995, 3
  %6000 = select i1 %5993, float %5996, float %5998
  %6001 = select i1 %5994, float %5997, float %5999
  %6002 = fmul fast float %6000, %5991
  %6003 = fmul fast float %6001, %5992
  %6004 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6005 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6006 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %6007 = call float @dx.op.binary.f32(i32 35, float %6004, float %6005)  ; FMax(a,b)
  %6008 = fsub fast float %6006, %6007
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = fmul fast float %6009, %5980
  br label %6011

; <label>:6011                                    ; preds = %5987, %5981
  %6012 = phi float [ %6010, %5987 ], [ 0.000000e+00, %5981 ]
  %6013 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %6014 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %6015 = fadd fast float %6014, %6013
  %6016 = fcmp fast ogt float %6015, 0.000000e+00
  br i1 %6016, label %6017, label %6041

; <label>:6017                                    ; preds = %6011
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6021 = fsub fast float %5964, %6019
  %6022 = fsub fast float %5965, %6020
  %6023 = fcmp fast olt float %6021, 0.000000e+00
  %6024 = fcmp fast olt float %6022, 0.000000e+00
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6030 = select i1 %6023, float %6026, float %6028
  %6031 = select i1 %6024, float %6027, float %6029
  %6032 = fmul fast float %6030, %6021
  %6033 = fmul fast float %6031, %6022
  %6034 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6035 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6036 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %6037 = call float @dx.op.binary.f32(i32 35, float %6034, float %6035)  ; FMax(a,b)
  %6038 = fsub fast float %6036, %6037
  %6039 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6040 = fmul fast float %6039, %5980
  br label %6041

; <label>:6041                                    ; preds = %6017, %6011, %5927
  %6042 = phi float [ 0.000000e+00, %5927 ], [ %6040, %6017 ], [ 0.000000e+00, %6011 ]
  %6043 = phi float [ 0.000000e+00, %5927 ], [ %6012, %6017 ], [ %6012, %6011 ]
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = fsub fast float %5946, %6048
  %6051 = fsub fast float %5950, %6049
  %6052 = fcmp fast olt float %6050, 0.000000e+00
  %6053 = fcmp fast olt float %6051, 0.000000e+00
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6065 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %6066 = call float @dx.op.binary.f32(i32 35, float %6063, float %6064)  ; FMax(a,b)
  %6067 = fsub fast float %6065, %6066
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = call float @dx.op.binary.f32(i32 36, float %6068, float %6046)  ; FMin(a,b)
  %6070 = fmul fast float %6069, %5980
  %6071 = fsub fast float %6042, %6070
  %6072 = fsub fast float %6043, %6042
  %6073 = fsub fast float %6072, %6070
  %6074 = call float @dx.op.binary.f32(i32 35, float %6042, float %6043)  ; FMax(a,b)
  %6075 = call float @dx.op.binary.f32(i32 35, float %6070, float %6074)  ; FMax(a,b)
  %6076 = fcmp fast olt float %6075, 1.000000e+00
  br i1 %6076, label %6077, label %6475, !dx.controlflow.hints !107

; <label>:6077                                    ; preds = %6041
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = fcmp fast une float %6079, 0.000000e+00
  br i1 %6080, label %6081, label %6475, !dx.controlflow.hints !108

; <label>:6081                                    ; preds = %6077
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6097 = fmul fast float %6083, %5923
  %6098 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %6084, float %6097)  ; FMad(a,b,c)
  %6099 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %6085, float %6098)  ; FMad(a,b,c)
  %6100 = fadd fast float %6099, %6086
  %6101 = fmul fast float %6088, %5923
  %6102 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %6089, float %6101)  ; FMad(a,b,c)
  %6103 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %6090, float %6102)  ; FMad(a,b,c)
  %6104 = fadd fast float %6103, %6091
  %6105 = fmul fast float %6093, %5923
  %6106 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %6094, float %6105)  ; FMad(a,b,c)
  %6107 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %6095, float %6106)  ; FMad(a,b,c)
  %6108 = fadd fast float %6107, %6096
  %6109 = fcmp fast oge float %6100, 1.000000e+00
  %6110 = fcmp fast oge float %6104, 1.000000e+00
  %6111 = or i1 %6109, %6110
  %6112 = fcmp fast olt float %6100, 0.000000e+00
  %6113 = fcmp fast olt float %6104, 0.000000e+00
  %6114 = or i1 %6112, %6113
  %6115 = or i1 %6111, %6114
  br i1 %6115, label %6475, label %6116, !dx.controlflow.hints !109

; <label>:6116                                    ; preds = %6081
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.i32 %6121, 2
  %6123 = uitofp i32 %6122 to float
  %6124 = extractvalue %dx.types.CBufRet.i32 %6121, 3
  %6125 = uitofp i32 %6124 to float
  %6126 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6127 = fmul fast float %6126, 2.000000e+00
  %6128 = fsub fast float %6100, %6118
  %6129 = fsub fast float %6104, %6119
  %6130 = fmul fast float %6127, %6128
  %6131 = fmul fast float %6127, %6129
  %6132 = fdiv fast float 1.000000e+00, %5906
  %6133 = fmul fast float %6131, %6132
  %6134 = call float @dx.op.unary.f32(i32 6, float %6133)  ; FAbs(value)
  %6135 = fmul fast float %6120, %5925
  %6136 = fmul fast float %6135, %6127
  %6137 = call float @dx.op.unary.f32(i32 6, float %6136)  ; FAbs(value)
  %6138 = call float @dx.op.unary.f32(i32 6, float %6130)  ; FAbs(value)
  %6139 = call float @dx.op.binary.f32(i32 35, float %6137, float %6134)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6141 = fmul fast float %6140, 2.000000e+00
  %6142 = call float @dx.op.unary.f32(i32 23, float %6141)  ; Log(value)
  %6143 = call float @dx.op.binary.f32(i32 35, float %6142, float %6123)  ; FMax(a,b)
  %6144 = call float @dx.op.unary.f32(i32 22, float %6143)  ; Frc(value)
  %6145 = fadd fast float %6144, 0xBFEA666660000000
  %6146 = fmul fast float %6145, 8.000000e+00
  %6147 = call float @dx.op.unary.f32(i32 7, float %6146)  ; Saturate(value)
  %6148 = call float @dx.op.unary.f32(i32 27, float %6143)  ; Round_ni(value)
  %6149 = fadd fast float %6148, %6147
  %6150 = call float @dx.op.binary.f32(i32 36, float %6149, float %6125)  ; FMin(a,b)
  %6151 = call float @dx.op.unary.f32(i32 27, float %6150)  ; Round_ni(value)
  %6152 = fsub fast float -0.000000e+00, %6151
  %6153 = call float @dx.op.unary.f32(i32 21, float %6152)  ; Exp(value)
  %6154 = fmul fast float %6153, %6127
  %6155 = fmul fast float %6154, %6100
  %6156 = fmul fast float %6154, %6104
  %6157 = fmul fast float %6155, 2.500000e-01
  %6158 = fmul fast float %6156, 2.500000e-01
  %6159 = fadd fast float %6157, 5.000000e-01
  %6160 = fadd fast float %6158, 5.000000e-01
  %6161 = fsub fast float %6125, %6123
  %6162 = fptoui float %6161 to i32
  %6163 = add i32 %6162, 320
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6163)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = fcmp fast une float %6150, %6125
  %6168 = fsub fast float %6100, %6165
  %6169 = fsub fast float %6104, %6166
  %6170 = call float @dx.op.unary.f32(i32 6, float %6168)  ; FAbs(value)
  %6171 = call float @dx.op.unary.f32(i32 6, float %6169)  ; FAbs(value)
  %6172 = fmul fast float %6170, %6154
  %6173 = fmul fast float %6171, %6154
  %6174 = fcmp fast olt float %6172, 1.000000e+00
  %6175 = fcmp fast olt float %6173, 1.000000e+00
  %6176 = and i1 %6174, %6175
  %6177 = or i1 %6167, %6176
  br i1 %6177, label %6178, label %6475, !dx.controlflow.hints !110

; <label>:6178                                    ; preds = %6116
  %6179 = fmul fast float %6156, 5.000000e-01
  %6180 = fmul fast float %6155, 5.000000e-01
  %6181 = fadd fast float %6179, 5.000000e-01
  %6182 = fadd fast float %6180, 5.000000e-01
  %6183 = sitofp i32 %6122 to float
  %6184 = fsub fast float %6150, %6183
  %6185 = call float @dx.op.unary.f32(i32 27, float %6184)  ; Round_ni(value)
  %6186 = call float @dx.op.unary.f32(i32 22, float %6150)  ; Frc(value)
  %6187 = call float @dx.op.unary.f32(i32 22, float %6182)  ; Frc(value)
  %6188 = call float @dx.op.unary.f32(i32 22, float %6181)  ; Frc(value)
  %6189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6187, float %6188, float %6185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.ResRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.ResRet.f32 %6189, 2
  %6193 = extractvalue %dx.types.ResRet.f32 %6189, 3
  %6194 = fcmp fast ogt float %6186, 0.000000e+00
  br i1 %6194, label %6195, label %6216, !dx.controlflow.hints !111

; <label>:6195                                    ; preds = %6178
  %6196 = fadd fast float %6185, 1.000000e+00
  %6197 = call float @dx.op.unary.f32(i32 22, float %6159)  ; Frc(value)
  %6198 = call float @dx.op.unary.f32(i32 22, float %6160)  ; Frc(value)
  %6199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6197, float %6198, float %6196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6200 = extractvalue %dx.types.ResRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.ResRet.f32 %6199, 1
  %6202 = extractvalue %dx.types.ResRet.f32 %6199, 2
  %6203 = extractvalue %dx.types.ResRet.f32 %6199, 3
  %6204 = fsub fast float %6200, %6190
  %6205 = fsub fast float %6201, %6191
  %6206 = fsub fast float %6202, %6192
  %6207 = fsub fast float %6203, %6193
  %6208 = fmul fast float %6204, %6186
  %6209 = fmul fast float %6205, %6186
  %6210 = fmul fast float %6206, %6186
  %6211 = fmul fast float %6207, %6186
  %6212 = fadd fast float %6208, %6190
  %6213 = fadd fast float %6209, %6191
  %6214 = fadd fast float %6210, %6192
  %6215 = fadd fast float %6211, %6193
  br label %6216

; <label>:6216                                    ; preds = %6195, %6178
  %6217 = phi float [ %6212, %6195 ], [ %6190, %6178 ]
  %6218 = phi float [ %6213, %6195 ], [ %6191, %6178 ]
  %6219 = phi float [ %6214, %6195 ], [ %6192, %6178 ]
  %6220 = phi float [ %6215, %6195 ], [ %6193, %6178 ]
  %6221 = fadd fast float %6217, -5.000000e-01
  %6222 = fadd fast float %6219, -5.000000e-01
  %6223 = fmul fast float %6221, 0xBFD5555560000000
  %6224 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6222, float %6223)  ; FMad(a,b,c)
  %6225 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6218, float 0.000000e+00)  ; FMad(a,b,c)
  %6226 = fadd fast float %6225, %6220
  %6227 = fmul fast float %6221, -7.500000e-01
  %6228 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6222, float %6227)  ; FMad(a,b,c)
  %6229 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6218, float 0.000000e+00)  ; FMad(a,b,c)
  %6230 = fadd fast float %6229, %6220
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6233, 3
  %6238 = fsub fast float %6234, %6224
  %6239 = fsub fast float %6235, %6226
  %6240 = fsub fast float %6236, %6228
  %6241 = fsub fast float %6237, %6230
  %6242 = fmul fast float %6238, %6232
  %6243 = fmul fast float %6239, %6232
  %6244 = fmul fast float %6240, %6232
  %6245 = fmul fast float %6241, %6232
  %6246 = fadd fast float %6242, %6224
  %6247 = fadd fast float %6243, %6226
  %6248 = fadd fast float %6244, %6228
  %6249 = fadd fast float %6245, %6230
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = and i32 %6251, 536870911
  %6253 = uitofp i32 %6252 to float
  %6254 = fmul fast float %6253, %6100
  %6255 = fmul fast float %6253, %6104
  %6256 = fptoui float %6254 to i32
  %6257 = fptoui float %6255 to i32
  %6258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.i32 %6258, 0
  %6260 = and i32 %6259, 31
  %6261 = lshr i32 %6256, %6260
  %6262 = lshr i32 %6257, %6260
  %6263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.i32 %6263, 0
  %6265 = and i32 %6264, 31
  %6266 = shl i32 1, %6265
  %6267 = call i32 @dx.op.binary.i32(i32 40, i32 %6266, i32 4)  ; UMin(a,b)
  %6268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.i32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.i32 %6268, 1
  %6271 = icmp eq i32 %6267, 0
  br i1 %6271, label %6313, label %6272

; <label>:6272                                    ; preds = %6216
  br label %6273

; <label>:6273                                    ; preds = %6301, %6272
  %6274 = phi i32 [ %6304, %6301 ], [ 0, %6272 ]
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = lshr i32 %6276, 16
  %6278 = and i32 %6277, 31
  %6279 = shl i32 %6262, %6278
  %6280 = add i32 %6279, %6261
  %6281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6282 = extractvalue %dx.types.ResRet.i32 %6281, 0
  %6283 = and i32 %6282, 31
  %6284 = shl i32 %6280, %6283
  %6285 = add i32 %6284, %6274
  %6286 = shl i32 %6285, 2
  %6287 = add i32 %6286, 32
  %6288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6287, i32 undef)  ; BufferLoad(srv,index,wot)
  %6289 = extractvalue %dx.types.ResRet.i32 %6288, 0
  %6290 = icmp slt i32 %6289, 0
  %6291 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6274
  %6292 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6274
  %6293 = bitcast float* %6291 to i32*
  %6294 = bitcast float* %6292 to i32*
  br i1 %6290, label %6295, label %6301

; <label>:6295                                    ; preds = %6273
  %6296 = and i32 %6289, 1073741823
  %6297 = add nuw nsw i32 %6296, 20
  %6298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.i32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.i32 %6298, 1
  br label %6301

; <label>:6301                                    ; preds = %6295, %6273
  %6302 = phi i32 [ %6299, %6295 ], [ %6269, %6273 ]
  %6303 = phi i32 [ %6300, %6295 ], [ %6270, %6273 ]
  store i32 %6302, i32* %6293, align 4
  store i32 %6303, i32* %6294, align 4
  %6304 = add nuw i32 %6274, 1
  %6305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.i32 %6305, 2
  %6307 = icmp eq i32 %6306, 0
  %6308 = icmp ugt i32 %6289, -1073741825
  %6309 = and i1 %6308, %6307
  %6310 = icmp ult i32 %6304, %6267
  %6311 = and i1 %6309, %6310
  br i1 %6311, label %6273, label %6312

; <label>:6312                                    ; preds = %6301
  br label %6313

; <label>:6313                                    ; preds = %6312, %6216
  %6314 = phi i32 [ 0, %6216 ], [ %6304, %6312 ]
  %6315 = extractvalue %dx.types.CBufRet.f32 %6078, 2
  %6316 = fptoui float %6315 to i32
  %6317 = icmp eq i32 %6316, 0
  br i1 %6317, label %6369, label %6318

; <label>:6318                                    ; preds = %6313
  br label %6319

; <label>:6319                                    ; preds = %6364, %6318
  %6320 = phi i32 [ %6365, %6364 ], [ %6314, %6318 ]
  %6321 = phi i32 [ %6366, %6364 ], [ 0, %6318 ]
  %6322 = lshr i32 %6321, 2
  %6323 = and i32 %6321, 3
  %6324 = add nuw nsw i32 %6322, 83
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6324)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.i32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.i32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.i32 %6325, 3
  %6330 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6326, i32* %6330, align 4
  %6331 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6327, i32* %6331, align 4
  %6332 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6328, i32* %6332, align 4
  %6333 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6329, i32* %6333, align 4
  %6334 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6323
  %6335 = load i32, i32* %6334, align 4, !tbaa !112, !noalias !116
  %6336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6337 = extractvalue %dx.types.ResRet.i32 %6336, 0
  %6338 = lshr i32 %6337, 16
  %6339 = and i32 %6338, 31
  %6340 = shl i32 %6262, %6339
  %6341 = add i32 %6340, %6261
  %6342 = shl i32 %6341, 2
  %6343 = add i32 %6342, %6335
  %6344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6343, i32 undef)  ; BufferLoad(srv,index,wot)
  %6345 = extractvalue %dx.types.ResRet.i32 %6344, 0
  %6346 = icmp eq i32 %6345, 0
  br i1 %6346, label %6364, label %6347

; <label>:6347                                    ; preds = %6319
  %6348 = icmp slt i32 %6345, 0
  %6349 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6320
  %6350 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6320
  %6351 = bitcast float* %6349 to i32*
  %6352 = bitcast float* %6350 to i32*
  br i1 %6348, label %6353, label %6360

; <label>:6353                                    ; preds = %6347
  %6354 = and i32 %6345, 1073741823
  %6355 = add i32 %6335, 20
  %6356 = add i32 %6355, %6354
  %6357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6356, i32 undef)  ; BufferLoad(srv,index,wot)
  %6358 = extractvalue %dx.types.ResRet.i32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.i32 %6357, 1
  br label %6360

; <label>:6360                                    ; preds = %6353, %6347
  %6361 = phi i32 [ %6358, %6353 ], [ %6269, %6347 ]
  %6362 = phi i32 [ %6359, %6353 ], [ %6270, %6347 ]
  store i32 %6361, i32* %6351, align 4
  store i32 %6362, i32* %6352, align 4
  %6363 = add i32 %6320, 1
  br label %6364

; <label>:6364                                    ; preds = %6360, %6319
  %6365 = phi i32 [ %6320, %6319 ], [ %6363, %6360 ]
  %6366 = add nuw i32 %6321, 1
  %6367 = icmp eq i32 %6366, %6316
  br i1 %6367, label %6368, label %6319

; <label>:6368                                    ; preds = %6364
  br label %6369

; <label>:6369                                    ; preds = %6368, %6313
  %6370 = phi i32 [ %6314, %6313 ], [ %6365, %6368 ]
  %6371 = icmp eq i32 %6370, 1
  %6372 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  %6373 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 0
  br i1 %6371, label %6374, label %6377

; <label>:6374                                    ; preds = %6369
  %6375 = load float, float* %6372, align 4
  %6376 = load float, float* %6373, align 4
  br label %6404

; <label>:6377                                    ; preds = %6369
  %6378 = load float, float* %6372, align 4
  %6379 = load float, float* %6373, align 4
  %6380 = fdiv fast float 1.000000e+00, %6379
  %6381 = fsub fast float %6378, %6380
  %6382 = icmp ugt i32 %6370, 1
  br i1 %6382, label %6383, label %6399

; <label>:6383                                    ; preds = %6377
  br label %6384

; <label>:6384                                    ; preds = %6384, %6383
  %6385 = phi float [ %6394, %6384 ], [ %6381, %6383 ]
  %6386 = phi float [ %6395, %6384 ], [ %6378, %6383 ]
  %6387 = phi i32 [ %6396, %6384 ], [ 1, %6383 ]
  %6388 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6387
  %6389 = load float, float* %6388, align 4
  %6390 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %6387
  %6391 = load float, float* %6390, align 4
  %6392 = fdiv fast float 1.000000e+00, %6391
  %6393 = fsub fast float %6389, %6392
  %6394 = call float @dx.op.binary.f32(i32 36, float %6385, float %6393)  ; FMin(a,b)
  %6395 = call float @dx.op.binary.f32(i32 35, float %6386, float %6389)  ; FMax(a,b)
  %6396 = add nuw i32 %6387, 1
  %6397 = icmp eq i32 %6396, %6370
  br i1 %6397, label %6398, label %6384

; <label>:6398                                    ; preds = %6384
  br label %6399

; <label>:6399                                    ; preds = %6398, %6377
  %6400 = phi float [ %6381, %6377 ], [ %6394, %6398 ]
  %6401 = phi float [ %6378, %6377 ], [ %6395, %6398 ]
  %6402 = fsub fast float %6401, %6400
  %6403 = fdiv fast float 1.000000e+00, %6402
  br label %6404

; <label>:6404                                    ; preds = %6399, %6374
  %6405 = phi float [ %6375, %6374 ], [ %6401, %6399 ]
  %6406 = phi float [ %6376, %6374 ], [ %6403, %6399 ]
  %6407 = fadd fast float %6108, %6405
  %6408 = fmul fast float %6407, %6406
  %6409 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  %6410 = fmul fast float %6409, 2.000000e+00
  %6411 = fsub fast float 1.000000e+00, %6410
  %6412 = fmul fast float %6246, %6246
  %6413 = fsub fast float %6247, %6412
  %6414 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6413)  ; FMax(a,b)
  %6415 = fdiv fast float 1.000000e+00, %6414
  %6416 = fmul fast float %6247, %6246
  %6417 = fsub fast float %6248, %6416
  %6418 = fsub fast float %6411, %6246
  %6419 = fmul fast float %6411, %6411
  %6420 = fsub fast float %6419, %6247
  %6421 = fmul fast float %6415, %6417
  %6422 = fmul fast float %6421, %6418
  %6423 = fsub fast float %6420, %6422
  %6424 = fmul fast float %6247, %6247
  %6425 = fsub fast float %6249, %6424
  %6426 = fmul fast float %6417, %6417
  %6427 = fmul fast float %6426, %6415
  %6428 = fsub fast float %6425, %6427
  %6429 = fdiv fast float %6423, %6428
  %6430 = fmul fast float %6429, %6417
  %6431 = fsub fast float %6418, %6430
  %6432 = fmul fast float %6431, %6415
  %6433 = fmul fast float %6432, %6246
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = fmul fast float %6429, %6247
  %6436 = fsub fast float %6434, %6435
  %6437 = fmul fast float %6432, %6432
  %6438 = fmul fast float %6429, 4.000000e+00
  %6439 = fmul fast float %6438, %6436
  %6440 = fsub fast float %6437, %6439
  %6441 = call float @dx.op.unary.f32(i32 24, float %6440)  ; Sqrt(value)
  %6442 = fcmp fast oge float %6432, 0.000000e+00
  %6443 = fsub fast float -0.000000e+00, %6441
  %6444 = select i1 %6442, float %6443, float %6441
  %6445 = fsub fast float %6444, %6432
  %6446 = fdiv fast float %6445, %6429
  %6447 = fdiv fast float %6436, %6445
  %6448 = fmul fast float %6446, 5.000000e-01
  %6449 = fmul fast float %6447, 2.000000e+00
  %6450 = select i1 %6442, float %6448, float %6449
  %6451 = select i1 %6442, float %6449, float %6448
  %6452 = call float @dx.op.binary.f32(i32 35, float %6450, float %6451)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 36, float %6450, float %6451)  ; FMin(a,b)
  %6454 = fcmp fast ogt float %6411, %6452
  %6455 = fsub fast float %6411, %6453
  %6456 = fsub fast float %6411, %6452
  %6457 = fsub fast float %6452, %6453
  %6458 = select i1 %6454, float %6456, float %6457
  %6459 = fmul float %6455, %6458
  %6460 = select i1 %6454, float %6453, float %6411
  %6461 = fcmp fast ogt float %6411, %6453
  %6462 = fmul fast float %6460, %6452
  %6463 = fadd fast float %6460, %6452
  %6464 = fmul fast float %6463, %6246
  %6465 = fadd fast float %6462, %6247
  %6466 = fsub fast float %6465, %6464
  %6467 = fdiv fast float %6466, %6459
  %6468 = select i1 %6461, float %6467, float 0.000000e+00
  %6469 = fsub fast float 1.000000e+00, %6468
  %6470 = select i1 %6454, float %6469, float %6468
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6473 = fmul fast float %6472, %6471
  %6474 = fsub fast float 1.000000e+00, %6473
  br label %6475

; <label>:6475                                    ; preds = %6404, %6116, %6081, %6077, %6041
  %6476 = phi float [ 1.000000e+00, %6041 ], [ %6474, %6404 ], [ 1.000000e+00, %6081 ], [ 1.000000e+00, %6116 ], [ 1.000000e+00, %6077 ]
  %6477 = fcmp fast ogt float %6073, 0.000000e+00
  br i1 %6477, label %6478, label %6642, !dx.controlflow.hints !125

; <label>:6478                                    ; preds = %6475
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6481 = fadd fast float %6480, %5954
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6487 = call float @dx.op.binary.f32(i32 35, float %6481, float 0.000000e+00)  ; FMax(a,b)
  %6488 = fadd fast float %6487, 0x3F10000000000000
  %6489 = fcmp fast oeq float %6486, 0.000000e+00
  br i1 %6489, label %6490, label %6557

; <label>:6490                                    ; preds = %6478
  %6491 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6493 = fmul fast float %6492, %5972
  %6494 = fmul fast float %6491, %5973
  %6495 = fadd fast float %6493, 5.000000e-01
  %6496 = call float @dx.op.unary.f32(i32 27, float %6495)  ; Round_ni(value)
  %6497 = fadd fast float %6494, 5.000000e-01
  %6498 = call float @dx.op.unary.f32(i32 27, float %6497)  ; Round_ni(value)
  %6499 = fsub fast float %6495, %6496
  %6500 = fsub fast float %6497, %6498
  %6501 = fadd fast float %6496, -5.000000e-01
  %6502 = fadd fast float %6498, -5.000000e-01
  %6503 = fmul fast float %6499, 2.000000e+00
  %6504 = fsub fast float 3.000000e+00, %6503
  %6505 = fadd fast float %6503, 1.000000e+00
  %6506 = fsub fast float 2.000000e+00, %6499
  %6507 = bitcast float %6504 to i32
  %6508 = sub nsw i32 2129859010, %6507
  %6509 = bitcast i32 %6508 to float
  %6510 = fmul fast float %6509, %6506
  %6511 = fadd fast float %6510, -1.000000e+00
  %6512 = bitcast float %6505 to i32
  %6513 = sub nsw i32 2129859010, %6512
  %6514 = bitcast i32 %6513 to float
  %6515 = fmul fast float %6514, %6499
  %6516 = fadd fast float %6515, 1.000000e+00
  %6517 = fmul fast float %6500, 2.000000e+00
  %6518 = fsub fast float 3.000000e+00, %6517
  %6519 = fadd fast float %6517, 1.000000e+00
  %6520 = fsub fast float 2.000000e+00, %6500
  %6521 = bitcast float %6518 to i32
  %6522 = sub nsw i32 2129859010, %6521
  %6523 = bitcast i32 %6522 to float
  %6524 = fmul fast float %6523, %6520
  %6525 = fadd fast float %6524, -1.000000e+00
  %6526 = bitcast float %6519 to i32
  %6527 = sub nsw i32 2129859010, %6526
  %6528 = bitcast i32 %6527 to float
  %6529 = fmul fast float %6528, %6500
  %6530 = fadd fast float %6529, 1.000000e+00
  %6531 = fadd fast float %6511, %6501
  %6532 = fmul fast float %6531, %6483
  %6533 = fadd fast float %6525, %6502
  %6534 = fmul fast float %6533, %6484
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6532, float %6534, float undef, float undef, i32 0, i32 0, i32 undef, float %6488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = fmul fast float %6536, %6504
  %6538 = fadd fast float %6516, %6501
  %6539 = fmul fast float %6538, %6483
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6539, float %6534, float undef, float undef, i32 0, i32 0, i32 undef, float %6488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = fmul fast float %6541, %6505
  %6543 = fadd fast float %6530, %6502
  %6544 = fmul fast float %6543, %6484
  %6545 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6532, float %6544, float undef, float undef, i32 0, i32 0, i32 undef, float %6488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6546 = extractvalue %dx.types.ResRet.f32 %6545, 0
  %6547 = fmul fast float %6546, %6504
  %6548 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6539, float %6544, float undef, float undef, i32 0, i32 0, i32 undef, float %6488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = fmul fast float %6549, %6505
  %6551 = fadd fast float %6550, %6547
  %6552 = fmul fast float %6551, %6519
  %6553 = fadd fast float %6542, %6537
  %6554 = fmul fast float %6553, %6518
  %6555 = fadd fast float %6554, %6552
  %6556 = fmul fast float %6555, 6.250000e-02
  br label %6642

; <label>:6557                                    ; preds = %6478
  %6558 = fmul fast float %274, 0x401921FB60000000
  %6559 = call float @dx.op.unary.f32(i32 13, float %6558)  ; Sin(value)
  %6560 = call float @dx.op.unary.f32(i32 12, float %6558)  ; Cos(value)
  %6561 = fsub fast float -0.000000e+00, %6559
  br label %6562

; <label>:6562                                    ; preds = %6611, %6557
  %6563 = phi float [ 0.000000e+00, %6557 ], [ %6606, %6611 ]
  %6564 = phi float [ 0.000000e+00, %6557 ], [ %6608, %6611 ]
  %6565 = phi i32 [ 0, %6557 ], [ %6612, %6611 ]
  %6566 = mul i32 %6565, 2
  %6567 = add i32 0, %6566
  %6568 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6567
  %6569 = load float, float* %6568, align 4
  %6570 = mul i32 %6565, 2
  %6571 = add i32 1, %6570
  %6572 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6571
  %6573 = load float, float* %6572, align 4
  %6574 = fmul fast float %6569, %6560
  %6575 = call float @dx.op.tertiary.f32(i32 46, float %6573, float %6561, float %6574)  ; FMad(a,b,c)
  %6576 = fmul fast float %6569, %6559
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6573, float %6560, float %6576)  ; FMad(a,b,c)
  %6578 = fmul fast float %6575, %6486
  %6579 = fmul fast float %6577, %6486
  %6580 = fadd fast float %6578, %5972
  %6581 = fadd fast float %6579, %5973
  %6582 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6580, float %6581, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6583 = extractvalue %dx.types.ResRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.ResRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.ResRet.f32 %6582, 2
  %6586 = extractvalue %dx.types.ResRet.f32 %6582, 3
  %6587 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %6583, float* %6587, align 4
  %6588 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %6584, float* %6588, align 4
  %6589 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %6585, float* %6589, align 4
  %6590 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %6586, float* %6590, align 4
  %6591 = fsub fast float %6583, %6488
  %6592 = fcmp fast olt float %6591, 0.000000e+00
  %6593 = select i1 %6592, float 0.000000e+00, float 1.000000e+00
  %6594 = fadd fast float %6593, %6563
  %6595 = fmul fast float %6593, %6591
  %6596 = fadd fast float %6595, %6564
  br label %6597

; <label>:6597                                    ; preds = %6597, %6562
  %6598 = phi i32 [ 1, %6562 ], [ %6609, %6597 ]
  %6599 = phi float [ %6596, %6562 ], [ %6608, %6597 ]
  %6600 = phi float [ %6594, %6562 ], [ %6606, %6597 ]
  %6601 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %6598
  %6602 = load float, float* %6601, align 4, !tbaa !126, !noalias !116
  %6603 = fsub fast float %6602, %6488
  %6604 = fcmp fast olt float %6603, 0.000000e+00
  %6605 = select i1 %6604, float 0.000000e+00, float 1.000000e+00
  %6606 = fadd fast float %6605, %6600
  %6607 = fmul fast float %6605, %6603
  %6608 = fadd fast float %6607, %6599
  %6609 = add nuw nsw i32 %6598, 1
  %6610 = icmp eq i32 %6609, 4
  br i1 %6610, label %6611, label %6597, !llvm.loop !128

; <label>:6611                                    ; preds = %6597
  %6612 = add nuw nsw i32 %6565, 1
  %6613 = icmp eq i32 %6612, 8
  br i1 %6613, label %6614, label %6562, !llvm.loop !129

; <label>:6614                                    ; preds = %6611
  %6615 = fdiv fast float 1.000000e+00, %6606
  %6616 = fmul fast float %6615, %6608
  %6617 = fdiv fast float 1.000000e+00, %6488
  %6618 = fmul fast float %6616, %6617
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = call float @dx.op.binary.f32(i32 35, float %6619, float 0.000000e+00)  ; FMax(a,b)
  %6621 = fmul fast float %6606, 3.125000e-02
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6623 = fmul fast float %6622, 2.000000e+00
  %6624 = fadd fast float %6623, -1.000000e+00
  %6625 = fcmp fast ogt float %6624, 0.000000e+00
  %6626 = fcmp fast olt float %6624, 0.000000e+00
  %6627 = zext i1 %6625 to i32
  %6628 = zext i1 %6626 to i32
  %6629 = sub nsw i32 %6627, %6628
  %6630 = sitofp i32 %6629 to float
  %6631 = fmul fast float %6630, %6624
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6632, %6632
  %6634 = fmul fast float %6633, %6632
  %6635 = fsub fast float %6632, %6634
  %6636 = fmul fast float %6635, %6620
  %6637 = fsub fast float 1.000000e+00, %6634
  %6638 = fsub fast float %6637, %6636
  %6639 = fmul fast float %6630, 5.000000e-01
  %6640 = fmul fast float %6639, %6638
  %6641 = fsub fast float 5.000000e-01, %6640
  br label %6642

; <label>:6642                                    ; preds = %6614, %6490, %6475
  %6643 = phi float [ 1.000000e+00, %6475 ], [ %6556, %6490 ], [ %6641, %6614 ]
  %6644 = fcmp fast ogt float %6071, 0.000000e+00
  br i1 %6644, label %6645, label %6809, !dx.controlflow.hints !130

; <label>:6645                                    ; preds = %6642
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6648 = fadd fast float %6647, %5954
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6649, 3
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6654 = call float @dx.op.binary.f32(i32 35, float %6648, float 0.000000e+00)  ; FMax(a,b)
  %6655 = fadd fast float %6654, 0x3F10000000000000
  %6656 = fcmp fast oeq float %6653, 0.000000e+00
  br i1 %6656, label %6657, label %6724

; <label>:6657                                    ; preds = %6645
  %6658 = extractvalue %dx.types.CBufRet.f32 %6649, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6649, 0
  %6660 = fmul fast float %6659, %5964
  %6661 = fmul fast float %6658, %5965
  %6662 = fadd fast float %6660, 5.000000e-01
  %6663 = call float @dx.op.unary.f32(i32 27, float %6662)  ; Round_ni(value)
  %6664 = fadd fast float %6661, 5.000000e-01
  %6665 = call float @dx.op.unary.f32(i32 27, float %6664)  ; Round_ni(value)
  %6666 = fsub fast float %6662, %6663
  %6667 = fsub fast float %6664, %6665
  %6668 = fadd fast float %6663, -5.000000e-01
  %6669 = fadd fast float %6665, -5.000000e-01
  %6670 = fmul fast float %6666, 2.000000e+00
  %6671 = fsub fast float 3.000000e+00, %6670
  %6672 = fadd fast float %6670, 1.000000e+00
  %6673 = fsub fast float 2.000000e+00, %6666
  %6674 = bitcast float %6671 to i32
  %6675 = sub nsw i32 2129859010, %6674
  %6676 = bitcast i32 %6675 to float
  %6677 = fmul fast float %6676, %6673
  %6678 = fadd fast float %6677, -1.000000e+00
  %6679 = bitcast float %6672 to i32
  %6680 = sub nsw i32 2129859010, %6679
  %6681 = bitcast i32 %6680 to float
  %6682 = fmul fast float %6681, %6666
  %6683 = fadd fast float %6682, 1.000000e+00
  %6684 = fmul fast float %6667, 2.000000e+00
  %6685 = fsub fast float 3.000000e+00, %6684
  %6686 = fadd fast float %6684, 1.000000e+00
  %6687 = fsub fast float 2.000000e+00, %6667
  %6688 = bitcast float %6685 to i32
  %6689 = sub nsw i32 2129859010, %6688
  %6690 = bitcast i32 %6689 to float
  %6691 = fmul fast float %6690, %6687
  %6692 = fadd fast float %6691, -1.000000e+00
  %6693 = bitcast float %6686 to i32
  %6694 = sub nsw i32 2129859010, %6693
  %6695 = bitcast i32 %6694 to float
  %6696 = fmul fast float %6695, %6667
  %6697 = fadd fast float %6696, 1.000000e+00
  %6698 = fadd fast float %6678, %6668
  %6699 = fmul fast float %6698, %6650
  %6700 = fadd fast float %6692, %6669
  %6701 = fmul fast float %6700, %6651
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6699, float %6701, float undef, float undef, i32 0, i32 0, i32 undef, float %6655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = fmul fast float %6703, %6671
  %6705 = fadd fast float %6683, %6668
  %6706 = fmul fast float %6705, %6650
  %6707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6706, float %6701, float undef, float undef, i32 0, i32 0, i32 undef, float %6655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6708 = extractvalue %dx.types.ResRet.f32 %6707, 0
  %6709 = fmul fast float %6708, %6672
  %6710 = fadd fast float %6697, %6669
  %6711 = fmul fast float %6710, %6651
  %6712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6699, float %6711, float undef, float undef, i32 0, i32 0, i32 undef, float %6655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = fmul fast float %6713, %6671
  %6715 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6706, float %6711, float undef, float undef, i32 0, i32 0, i32 undef, float %6655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6716 = extractvalue %dx.types.ResRet.f32 %6715, 0
  %6717 = fmul fast float %6716, %6672
  %6718 = fadd fast float %6717, %6714
  %6719 = fmul fast float %6718, %6686
  %6720 = fadd fast float %6709, %6704
  %6721 = fmul fast float %6720, %6685
  %6722 = fadd fast float %6721, %6719
  %6723 = fmul fast float %6722, 6.250000e-02
  br label %6809

; <label>:6724                                    ; preds = %6645
  %6725 = fmul fast float %274, 0x401921FB60000000
  %6726 = call float @dx.op.unary.f32(i32 13, float %6725)  ; Sin(value)
  %6727 = call float @dx.op.unary.f32(i32 12, float %6725)  ; Cos(value)
  %6728 = fsub fast float -0.000000e+00, %6726
  br label %6729

; <label>:6729                                    ; preds = %6778, %6724
  %6730 = phi float [ 0.000000e+00, %6724 ], [ %6773, %6778 ]
  %6731 = phi float [ 0.000000e+00, %6724 ], [ %6775, %6778 ]
  %6732 = phi i32 [ 0, %6724 ], [ %6779, %6778 ]
  %6733 = mul i32 %6732, 2
  %6734 = add i32 0, %6733
  %6735 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6734
  %6736 = load float, float* %6735, align 4
  %6737 = mul i32 %6732, 2
  %6738 = add i32 1, %6737
  %6739 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6738
  %6740 = load float, float* %6739, align 4
  %6741 = fmul fast float %6736, %6727
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %6740, float %6728, float %6741)  ; FMad(a,b,c)
  %6743 = fmul fast float %6736, %6726
  %6744 = call float @dx.op.tertiary.f32(i32 46, float %6740, float %6727, float %6743)  ; FMad(a,b,c)
  %6745 = fmul fast float %6742, %6653
  %6746 = fmul fast float %6744, %6653
  %6747 = fadd fast float %6745, %5964
  %6748 = fadd fast float %6746, %5965
  %6749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6747, float %6748, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6750 = extractvalue %dx.types.ResRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.ResRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.ResRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.ResRet.f32 %6749, 3
  %6754 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6750, float* %6754, align 4
  %6755 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6751, float* %6755, align 4
  %6756 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6752, float* %6756, align 4
  %6757 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6753, float* %6757, align 4
  %6758 = fsub fast float %6750, %6655
  %6759 = fcmp fast olt float %6758, 0.000000e+00
  %6760 = select i1 %6759, float 0.000000e+00, float 1.000000e+00
  %6761 = fadd fast float %6760, %6730
  %6762 = fmul fast float %6760, %6758
  %6763 = fadd fast float %6762, %6731
  br label %6764

; <label>:6764                                    ; preds = %6764, %6729
  %6765 = phi i32 [ 1, %6729 ], [ %6776, %6764 ]
  %6766 = phi float [ %6763, %6729 ], [ %6775, %6764 ]
  %6767 = phi float [ %6761, %6729 ], [ %6773, %6764 ]
  %6768 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6765
  %6769 = load float, float* %6768, align 4, !tbaa !126, !noalias !116
  %6770 = fsub fast float %6769, %6655
  %6771 = fcmp fast olt float %6770, 0.000000e+00
  %6772 = select i1 %6771, float 0.000000e+00, float 1.000000e+00
  %6773 = fadd fast float %6772, %6767
  %6774 = fmul fast float %6772, %6770
  %6775 = fadd fast float %6774, %6766
  %6776 = add nuw nsw i32 %6765, 1
  %6777 = icmp eq i32 %6776, 4
  br i1 %6777, label %6778, label %6764, !llvm.loop !128

; <label>:6778                                    ; preds = %6764
  %6779 = add nuw nsw i32 %6732, 1
  %6780 = icmp eq i32 %6779, 8
  br i1 %6780, label %6781, label %6729, !llvm.loop !129

; <label>:6781                                    ; preds = %6778
  %6782 = fdiv fast float 1.000000e+00, %6773
  %6783 = fmul fast float %6782, %6775
  %6784 = fdiv fast float 1.000000e+00, %6655
  %6785 = fmul fast float %6783, %6784
  %6786 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6787 = call float @dx.op.binary.f32(i32 35, float %6786, float 0.000000e+00)  ; FMax(a,b)
  %6788 = fmul fast float %6773, 3.125000e-02
  %6789 = call float @dx.op.unary.f32(i32 7, float %6788)  ; Saturate(value)
  %6790 = fmul fast float %6789, 2.000000e+00
  %6791 = fadd fast float %6790, -1.000000e+00
  %6792 = fcmp fast ogt float %6791, 0.000000e+00
  %6793 = fcmp fast olt float %6791, 0.000000e+00
  %6794 = zext i1 %6792 to i32
  %6795 = zext i1 %6793 to i32
  %6796 = sub nsw i32 %6794, %6795
  %6797 = sitofp i32 %6796 to float
  %6798 = fmul fast float %6797, %6791
  %6799 = fsub fast float 1.000000e+00, %6798
  %6800 = fmul fast float %6799, %6799
  %6801 = fmul fast float %6800, %6799
  %6802 = fsub fast float %6799, %6801
  %6803 = fmul fast float %6802, %6787
  %6804 = fsub fast float 1.000000e+00, %6801
  %6805 = fsub fast float %6804, %6803
  %6806 = fmul fast float %6797, 5.000000e-01
  %6807 = fmul fast float %6806, %6805
  %6808 = fsub fast float 5.000000e-01, %6807
  br label %6809

; <label>:6809                                    ; preds = %6781, %6657, %6642
  %6810 = phi float [ 1.000000e+00, %6642 ], [ %6723, %6657 ], [ %6808, %6781 ]
  %6811 = fcmp fast ogt float %6070, 0.000000e+00
  br i1 %6811, label %6812, label %7130, !dx.controlflow.hints !131

; <label>:6812                                    ; preds = %6809
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = fadd fast float %6814, %5954
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = call float @dx.op.binary.f32(i32 35, float %6815, float 0.000000e+00)  ; FMax(a,b)
  %6822 = fadd fast float %6821, 0x3F10000000000000
  %6823 = fcmp fast oeq float %6820, 0.000000e+00
  br i1 %5957, label %6824, label %6977, !dx.controlflow.hints !132

; <label>:6824                                    ; preds = %6812
  br i1 %6823, label %6825, label %6892

; <label>:6825                                    ; preds = %6824
  %6826 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6827 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6828 = fmul fast float %6827, %5946
  %6829 = fmul fast float %6826, %5950
  %6830 = fadd fast float %6828, 5.000000e-01
  %6831 = call float @dx.op.unary.f32(i32 27, float %6830)  ; Round_ni(value)
  %6832 = fadd fast float %6829, 5.000000e-01
  %6833 = call float @dx.op.unary.f32(i32 27, float %6832)  ; Round_ni(value)
  %6834 = fsub fast float %6830, %6831
  %6835 = fsub fast float %6832, %6833
  %6836 = fadd fast float %6831, -5.000000e-01
  %6837 = fadd fast float %6833, -5.000000e-01
  %6838 = fmul fast float %6834, 2.000000e+00
  %6839 = fsub fast float 3.000000e+00, %6838
  %6840 = fadd fast float %6838, 1.000000e+00
  %6841 = fsub fast float 2.000000e+00, %6834
  %6842 = bitcast float %6839 to i32
  %6843 = sub nsw i32 2129859010, %6842
  %6844 = bitcast i32 %6843 to float
  %6845 = fmul fast float %6844, %6841
  %6846 = fadd fast float %6845, -1.000000e+00
  %6847 = bitcast float %6840 to i32
  %6848 = sub nsw i32 2129859010, %6847
  %6849 = bitcast i32 %6848 to float
  %6850 = fmul fast float %6849, %6834
  %6851 = fadd fast float %6850, 1.000000e+00
  %6852 = fmul fast float %6835, 2.000000e+00
  %6853 = fsub fast float 3.000000e+00, %6852
  %6854 = fadd fast float %6852, 1.000000e+00
  %6855 = fsub fast float 2.000000e+00, %6835
  %6856 = bitcast float %6853 to i32
  %6857 = sub nsw i32 2129859010, %6856
  %6858 = bitcast i32 %6857 to float
  %6859 = fmul fast float %6858, %6855
  %6860 = fadd fast float %6859, -1.000000e+00
  %6861 = bitcast float %6854 to i32
  %6862 = sub nsw i32 2129859010, %6861
  %6863 = bitcast i32 %6862 to float
  %6864 = fmul fast float %6863, %6835
  %6865 = fadd fast float %6864, 1.000000e+00
  %6866 = fadd fast float %6846, %6836
  %6867 = fmul fast float %6866, %6817
  %6868 = fadd fast float %6860, %6837
  %6869 = fmul fast float %6868, %6818
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6867, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6839
  %6873 = fadd fast float %6851, %6836
  %6874 = fmul fast float %6873, %6817
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6874, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %6840
  %6878 = fadd fast float %6865, %6837
  %6879 = fmul fast float %6878, %6818
  %6880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6867, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = fmul fast float %6881, %6839
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6874, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = fmul fast float %6884, %6840
  %6886 = fadd fast float %6885, %6882
  %6887 = fmul fast float %6886, %6854
  %6888 = fadd fast float %6877, %6872
  %6889 = fmul fast float %6888, %6853
  %6890 = fadd fast float %6889, %6887
  %6891 = fmul fast float %6890, 6.250000e-02
  br label %7130

; <label>:6892                                    ; preds = %6824
  %6893 = fmul fast float %274, 0x401921FB60000000
  %6894 = call float @dx.op.unary.f32(i32 13, float %6893)  ; Sin(value)
  %6895 = call float @dx.op.unary.f32(i32 12, float %6893)  ; Cos(value)
  %6896 = fsub fast float -0.000000e+00, %6894
  br label %6897

; <label>:6897                                    ; preds = %6946, %6892
  %6898 = phi float [ 0.000000e+00, %6892 ], [ %6941, %6946 ]
  %6899 = phi float [ 0.000000e+00, %6892 ], [ %6943, %6946 ]
  %6900 = phi i32 [ 0, %6892 ], [ %6947, %6946 ]
  %6901 = mul i32 %6900, 2
  %6902 = add i32 0, %6901
  %6903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6902
  %6904 = load float, float* %6903, align 4
  %6905 = mul i32 %6900, 2
  %6906 = add i32 1, %6905
  %6907 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6906
  %6908 = load float, float* %6907, align 4
  %6909 = fmul fast float %6904, %6895
  %6910 = call float @dx.op.tertiary.f32(i32 46, float %6908, float %6896, float %6909)  ; FMad(a,b,c)
  %6911 = fmul fast float %6904, %6894
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %6908, float %6895, float %6911)  ; FMad(a,b,c)
  %6913 = fmul fast float %6910, %6820
  %6914 = fmul fast float %6912, %6820
  %6915 = fadd fast float %6913, %5946
  %6916 = fadd fast float %6914, %5950
  %6917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6915, float %6916, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6918 = extractvalue %dx.types.ResRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.ResRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.ResRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.ResRet.f32 %6917, 3
  %6922 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6918, float* %6922, align 4
  %6923 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6919, float* %6923, align 4
  %6924 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6920, float* %6924, align 4
  %6925 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6921, float* %6925, align 4
  %6926 = fsub fast float %6918, %6822
  %6927 = fcmp fast olt float %6926, 0.000000e+00
  %6928 = select i1 %6927, float 0.000000e+00, float 1.000000e+00
  %6929 = fadd fast float %6928, %6898
  %6930 = fmul fast float %6928, %6926
  %6931 = fadd fast float %6930, %6899
  br label %6932

; <label>:6932                                    ; preds = %6932, %6897
  %6933 = phi i32 [ 1, %6897 ], [ %6944, %6932 ]
  %6934 = phi float [ %6931, %6897 ], [ %6943, %6932 ]
  %6935 = phi float [ %6929, %6897 ], [ %6941, %6932 ]
  %6936 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6933
  %6937 = load float, float* %6936, align 4, !tbaa !126, !noalias !116
  %6938 = fsub fast float %6937, %6822
  %6939 = fcmp fast olt float %6938, 0.000000e+00
  %6940 = select i1 %6939, float 0.000000e+00, float 1.000000e+00
  %6941 = fadd fast float %6940, %6935
  %6942 = fmul fast float %6940, %6938
  %6943 = fadd fast float %6942, %6934
  %6944 = add nuw nsw i32 %6933, 1
  %6945 = icmp eq i32 %6944, 4
  br i1 %6945, label %6946, label %6932, !llvm.loop !128

; <label>:6946                                    ; preds = %6932
  %6947 = add nuw nsw i32 %6900, 1
  %6948 = icmp eq i32 %6947, 8
  br i1 %6948, label %6949, label %6897, !llvm.loop !129

; <label>:6949                                    ; preds = %6946
  %6950 = fdiv fast float 1.000000e+00, %6941
  %6951 = fmul fast float %6950, %6943
  %6952 = fdiv fast float 1.000000e+00, %6822
  %6953 = fmul fast float %6951, %6952
  %6954 = call float @dx.op.unary.f32(i32 7, float %6953)  ; Saturate(value)
  %6955 = call float @dx.op.binary.f32(i32 35, float %6954, float 0.000000e+00)  ; FMax(a,b)
  %6956 = fmul fast float %6941, 3.125000e-02
  %6957 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6958 = fmul fast float %6957, 2.000000e+00
  %6959 = fadd fast float %6958, -1.000000e+00
  %6960 = fcmp fast ogt float %6959, 0.000000e+00
  %6961 = fcmp fast olt float %6959, 0.000000e+00
  %6962 = zext i1 %6960 to i32
  %6963 = zext i1 %6961 to i32
  %6964 = sub nsw i32 %6962, %6963
  %6965 = sitofp i32 %6964 to float
  %6966 = fmul fast float %6965, %6959
  %6967 = fsub fast float 1.000000e+00, %6966
  %6968 = fmul fast float %6967, %6967
  %6969 = fmul fast float %6968, %6967
  %6970 = fsub fast float %6967, %6969
  %6971 = fmul fast float %6970, %6955
  %6972 = fsub fast float 1.000000e+00, %6969
  %6973 = fsub fast float %6972, %6971
  %6974 = fmul fast float %6965, 5.000000e-01
  %6975 = fmul fast float %6974, %6973
  %6976 = fsub fast float 5.000000e-01, %6975
  br label %7130

; <label>:6977                                    ; preds = %6812
  br i1 %6823, label %6978, label %7045

; <label>:6978                                    ; preds = %6977
  %6979 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6980 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6981 = fmul fast float %6980, %5946
  %6982 = fmul fast float %6979, %5950
  %6983 = fadd fast float %6981, 5.000000e-01
  %6984 = call float @dx.op.unary.f32(i32 27, float %6983)  ; Round_ni(value)
  %6985 = fadd fast float %6982, 5.000000e-01
  %6986 = call float @dx.op.unary.f32(i32 27, float %6985)  ; Round_ni(value)
  %6987 = fsub fast float %6983, %6984
  %6988 = fsub fast float %6985, %6986
  %6989 = fadd fast float %6984, -5.000000e-01
  %6990 = fadd fast float %6986, -5.000000e-01
  %6991 = fmul fast float %6987, 2.000000e+00
  %6992 = fsub fast float 3.000000e+00, %6991
  %6993 = fadd fast float %6991, 1.000000e+00
  %6994 = fsub fast float 2.000000e+00, %6987
  %6995 = bitcast float %6992 to i32
  %6996 = sub nsw i32 2129859010, %6995
  %6997 = bitcast i32 %6996 to float
  %6998 = fmul fast float %6997, %6994
  %6999 = fadd fast float %6998, -1.000000e+00
  %7000 = bitcast float %6993 to i32
  %7001 = sub nsw i32 2129859010, %7000
  %7002 = bitcast i32 %7001 to float
  %7003 = fmul fast float %7002, %6987
  %7004 = fadd fast float %7003, 1.000000e+00
  %7005 = fmul fast float %6988, 2.000000e+00
  %7006 = fsub fast float 3.000000e+00, %7005
  %7007 = fadd fast float %7005, 1.000000e+00
  %7008 = fsub fast float 2.000000e+00, %6988
  %7009 = bitcast float %7006 to i32
  %7010 = sub nsw i32 2129859010, %7009
  %7011 = bitcast i32 %7010 to float
  %7012 = fmul fast float %7011, %7008
  %7013 = fadd fast float %7012, -1.000000e+00
  %7014 = bitcast float %7007 to i32
  %7015 = sub nsw i32 2129859010, %7014
  %7016 = bitcast i32 %7015 to float
  %7017 = fmul fast float %7016, %6988
  %7018 = fadd fast float %7017, 1.000000e+00
  %7019 = fadd fast float %6999, %6989
  %7020 = fmul fast float %7019, %6817
  %7021 = fadd fast float %7013, %6990
  %7022 = fmul fast float %7021, %6818
  %7023 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7020, float %7022, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = fmul fast float %7024, %6992
  %7026 = fadd fast float %7004, %6989
  %7027 = fmul fast float %7026, %6817
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7027, float %7022, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = fmul fast float %7029, %6993
  %7031 = fadd fast float %7018, %6990
  %7032 = fmul fast float %7031, %6818
  %7033 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7020, float %7032, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7034 = extractvalue %dx.types.ResRet.f32 %7033, 0
  %7035 = fmul fast float %7034, %6992
  %7036 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7027, float %7032, float undef, float undef, i32 0, i32 0, i32 undef, float %6822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7037 = extractvalue %dx.types.ResRet.f32 %7036, 0
  %7038 = fmul fast float %7037, %6993
  %7039 = fadd fast float %7038, %7035
  %7040 = fmul fast float %7039, %7007
  %7041 = fadd fast float %7030, %7025
  %7042 = fmul fast float %7041, %7006
  %7043 = fadd fast float %7042, %7040
  %7044 = fmul fast float %7043, 6.250000e-02
  br label %7130

; <label>:7045                                    ; preds = %6977
  %7046 = fmul fast float %274, 0x401921FB60000000
  %7047 = call float @dx.op.unary.f32(i32 13, float %7046)  ; Sin(value)
  %7048 = call float @dx.op.unary.f32(i32 12, float %7046)  ; Cos(value)
  %7049 = fsub fast float -0.000000e+00, %7047
  br label %7050

; <label>:7050                                    ; preds = %7099, %7045
  %7051 = phi float [ 0.000000e+00, %7045 ], [ %7094, %7099 ]
  %7052 = phi float [ 0.000000e+00, %7045 ], [ %7096, %7099 ]
  %7053 = phi i32 [ 0, %7045 ], [ %7100, %7099 ]
  %7054 = mul i32 %7053, 2
  %7055 = add i32 0, %7054
  %7056 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7055
  %7057 = load float, float* %7056, align 4
  %7058 = mul i32 %7053, 2
  %7059 = add i32 1, %7058
  %7060 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7059
  %7061 = load float, float* %7060, align 4
  %7062 = fmul fast float %7057, %7048
  %7063 = call float @dx.op.tertiary.f32(i32 46, float %7061, float %7049, float %7062)  ; FMad(a,b,c)
  %7064 = fmul fast float %7057, %7047
  %7065 = call float @dx.op.tertiary.f32(i32 46, float %7061, float %7048, float %7064)  ; FMad(a,b,c)
  %7066 = fmul fast float %7063, %6820
  %7067 = fmul fast float %7065, %6820
  %7068 = fadd fast float %7066, %5946
  %7069 = fadd fast float %7067, %5950
  %7070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7068, float %7069, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = extractvalue %dx.types.ResRet.f32 %7070, 3
  %7075 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7071, float* %7075, align 4
  %7076 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7072, float* %7076, align 4
  %7077 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7073, float* %7077, align 4
  %7078 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7074, float* %7078, align 4
  %7079 = fsub fast float %7071, %6822
  %7080 = fcmp fast olt float %7079, 0.000000e+00
  %7081 = select i1 %7080, float 0.000000e+00, float 1.000000e+00
  %7082 = fadd fast float %7081, %7051
  %7083 = fmul fast float %7081, %7079
  %7084 = fadd fast float %7083, %7052
  br label %7085

; <label>:7085                                    ; preds = %7085, %7050
  %7086 = phi i32 [ 1, %7050 ], [ %7097, %7085 ]
  %7087 = phi float [ %7084, %7050 ], [ %7096, %7085 ]
  %7088 = phi float [ %7082, %7050 ], [ %7094, %7085 ]
  %7089 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7086
  %7090 = load float, float* %7089, align 4, !tbaa !126, !noalias !116
  %7091 = fsub fast float %7090, %6822
  %7092 = fcmp fast olt float %7091, 0.000000e+00
  %7093 = select i1 %7092, float 0.000000e+00, float 1.000000e+00
  %7094 = fadd fast float %7093, %7088
  %7095 = fmul fast float %7093, %7091
  %7096 = fadd fast float %7095, %7087
  %7097 = add nuw nsw i32 %7086, 1
  %7098 = icmp eq i32 %7097, 4
  br i1 %7098, label %7099, label %7085, !llvm.loop !128

; <label>:7099                                    ; preds = %7085
  %7100 = add nuw nsw i32 %7053, 1
  %7101 = icmp eq i32 %7100, 8
  br i1 %7101, label %7102, label %7050, !llvm.loop !129

; <label>:7102                                    ; preds = %7099
  %7103 = fdiv fast float 1.000000e+00, %7094
  %7104 = fmul fast float %7103, %7096
  %7105 = fdiv fast float 1.000000e+00, %6822
  %7106 = fmul fast float %7104, %7105
  %7107 = call float @dx.op.unary.f32(i32 7, float %7106)  ; Saturate(value)
  %7108 = call float @dx.op.binary.f32(i32 35, float %7107, float 0.000000e+00)  ; FMax(a,b)
  %7109 = fmul fast float %7094, 3.125000e-02
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = fmul fast float %7110, 2.000000e+00
  %7112 = fadd fast float %7111, -1.000000e+00
  %7113 = fcmp fast ogt float %7112, 0.000000e+00
  %7114 = fcmp fast olt float %7112, 0.000000e+00
  %7115 = zext i1 %7113 to i32
  %7116 = zext i1 %7114 to i32
  %7117 = sub nsw i32 %7115, %7116
  %7118 = sitofp i32 %7117 to float
  %7119 = fmul fast float %7118, %7112
  %7120 = fsub fast float 1.000000e+00, %7119
  %7121 = fmul fast float %7120, %7120
  %7122 = fmul fast float %7121, %7120
  %7123 = fsub fast float %7120, %7122
  %7124 = fmul fast float %7123, %7108
  %7125 = fsub fast float 1.000000e+00, %7122
  %7126 = fsub fast float %7125, %7124
  %7127 = fmul fast float %7118, 5.000000e-01
  %7128 = fmul fast float %7127, %7126
  %7129 = fsub fast float 5.000000e-01, %7128
  br label %7130

; <label>:7130                                    ; preds = %7102, %6978, %6949, %6825, %6809
  %7131 = phi float [ 1.000000e+00, %6809 ], [ %6891, %6825 ], [ %6976, %6949 ], [ %7044, %6978 ], [ %7129, %7102 ]
  %7132 = fsub fast float %6643, %6476
  %7133 = fmul fast float %7132, %6043
  %7134 = fadd fast float %7133, %6476
  %7135 = fsub fast float %6810, %7134
  %7136 = fmul fast float %7135, %6042
  %7137 = fadd fast float %7136, %7134
  %7138 = fsub fast float %7131, %7137
  %7139 = fmul fast float %7138, %6070
  %7140 = fadd fast float %7139, %7137
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7143 = fcmp fast ogt float %7142, 0.000000e+00
  br i1 %7143, label %7144, label %7184, !dx.controlflow.hints !133

; <label>:7144                                    ; preds = %7130
  %7145 = fcmp fast ugt float %7142, 0.000000e+00
  br i1 %7145, label %7146, label %7181

; <label>:7146                                    ; preds = %7144
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.CBufRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7151 = extractvalue %dx.types.CBufRet.f32 %7147, 3
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.CBufRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.CBufRet.f32 %7152, 3
  %7157 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7158 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.CBufRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.CBufRet.f32 %7159, 2
  %7163 = fadd fast float %7160, %5923
  %7164 = fadd fast float %7161, %5924
  %7165 = fadd fast float %7162, %5925
  %7166 = fmul fast float %7163, %7148
  %7167 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7164, float %7166)  ; FMad(a,b,c)
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %7150, float %7165, float %7167)  ; FMad(a,b,c)
  %7169 = fadd fast float %7168, %7151
  %7170 = fmul fast float %7163, %7153
  %7171 = call float @dx.op.tertiary.f32(i32 46, float %7154, float %7164, float %7170)  ; FMad(a,b,c)
  %7172 = call float @dx.op.tertiary.f32(i32 46, float %7155, float %7165, float %7171)  ; FMad(a,b,c)
  %7173 = fadd fast float %7172, %7156
  %7174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7169, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = fmul fast float %7175, %7158
  %7177 = fadd fast float %7176, %7157
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = fmul fast float %7178, %7142
  %7180 = fsub fast float 1.000000e+00, %7179
  br label %7181

; <label>:7181                                    ; preds = %7146, %7144
  %7182 = phi float [ %7180, %7146 ], [ 1.000000e+00, %7144 ]
  %7183 = fmul fast float %7182, %7140
  br label %7184

; <label>:7184                                    ; preds = %7181, %7130, %5903
  %7185 = phi float [ 1.000000e+00, %5903 ], [ %7183, %7181 ], [ %7140, %7130 ]
  %7186 = call float @dx.op.binary.f32(i32 36, float %7185, float %7185)  ; FMin(a,b)
  %7187 = call float @dx.op.binary.f32(i32 36, float %7185, float %7186)  ; FMin(a,b)
  %7188 = fcmp fast ogt float %7187, 0.000000e+00
  br i1 %7188, label %7189, label %7354, !dx.controlflow.hints !134

; <label>:7189                                    ; preds = %7184
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7190, 2
  %7194 = extractvalue %dx.types.CBufRet.f32 %7190, 3
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7198 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7199 = extractvalue %dx.types.CBufRet.f32 %7195, 3
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.CBufRet.f32 %7200, 2
  %7204 = extractvalue %dx.types.CBufRet.f32 %7200, 3
  %7205 = fmul fast float %7191, %5923
  %7206 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %7192, float %7205)  ; FMad(a,b,c)
  %7207 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %7193, float %7206)  ; FMad(a,b,c)
  %7208 = fadd fast float %7207, %7194
  %7209 = fmul fast float %7196, %5923
  %7210 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %7197, float %7209)  ; FMad(a,b,c)
  %7211 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %7198, float %7210)  ; FMad(a,b,c)
  %7212 = fadd fast float %7211, %7199
  %7213 = fmul fast float %7201, %5923
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %7202, float %7213)  ; FMad(a,b,c)
  %7215 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %7203, float %7214)  ; FMad(a,b,c)
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.CBufRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.CBufRet.f32 %7216, 3
  %7220 = fmul fast float %7219, %7208
  %7221 = fmul fast float %7219, %7212
  %7222 = fadd fast float %7220, %7217
  %7223 = fadd fast float %7221, %7218
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %7227 = fsub fast float %7222, %7225
  %7228 = fsub fast float %7223, %7226
  %7229 = fcmp fast olt float %7227, 0.000000e+00
  %7230 = fcmp fast olt float %7228, 0.000000e+00
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7234 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %7235 = extractvalue %dx.types.CBufRet.f32 %7231, 3
  %7236 = select i1 %7229, float %7232, float %7234
  %7237 = select i1 %7230, float %7233, float %7235
  %7238 = fmul fast float %7236, %7227
  %7239 = fmul fast float %7237, %7228
  %7240 = call float @dx.op.unary.f32(i32 6, float %7238)  ; FAbs(value)
  %7241 = call float @dx.op.unary.f32(i32 6, float %7239)  ; FAbs(value)
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 0
  %7244 = call float @dx.op.binary.f32(i32 35, float %7240, float %7241)  ; FMax(a,b)
  %7245 = fsub fast float %7243, %7244
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = fcmp fast ogt float %7246, 0.000000e+00
  br i1 %7247, label %7248, label %7289, !dx.controlflow.hints !135

; <label>:7248                                    ; preds = %7189
  %7249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7222, float %7223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7251 = fcmp fast ogt float %7250, 0.000000e+00
  br i1 %7251, label %7252, label %7284

; <label>:7252                                    ; preds = %7248
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7222, float %7223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 0
  %7255 = extractvalue %dx.types.ResRet.f32 %7253, 1
  %7256 = extractvalue %dx.types.ResRet.f32 %7253, 2
  %7257 = extractvalue %dx.types.ResRet.f32 %7253, 3
  %7258 = fsub fast float 1.000000e+00, %7204
  %7259 = fsub fast float %7258, %7215
  %7260 = fmul fast float %7259, 0x400921FB60000000
  %7261 = fadd fast float %7260, 0x3FF921FB60000000
  %7262 = call float @dx.op.unary.f32(i32 13, float %7261)  ; Sin(value)
  %7263 = fadd fast float %7262, -1.000000e+00
  %7264 = fmul fast float %7263, 0x3FD45F3060000000
  %7265 = fmul fast float %7259, 0x401921FB60000000
  %7266 = fadd fast float %7265, 0x400921FB60000000
  %7267 = call float @dx.op.unary.f32(i32 13, float %7266)  ; Sin(value)
  %7268 = fadd fast float %7267, 0x3E7777A5C0000000
  %7269 = fmul fast float %7268, 0x3FC45F3060000000
  %7270 = fmul fast float %7259, 0x4022D97C80000000
  %7271 = fadd fast float %7270, 0x4012D97C80000000
  %7272 = call float @dx.op.unary.f32(i32 13, float %7271)  ; Sin(value)
  %7273 = fadd fast float %7272, 1.000000e+00
  %7274 = fmul fast float %7273, 0x3FBB2995E0000000
  %7275 = fmul fast float %7259, 0x402921FB60000000
  %7276 = fadd fast float %7275, 0x401921FB60000000
  %7277 = call float @dx.op.unary.f32(i32 13, float %7276)  ; Sin(value)
  %7278 = fadd fast float %7277, 0xBE8777A5C0000000
  %7279 = fmul fast float %7278, 0x3FB45F3060000000
  %7280 = call float @dx.op.dot4.f32(i32 56, float %7254, float %7255, float %7256, float %7257, float %7264, float %7269, float %7274, float %7279)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7281 = fmul fast float %7280, 0xBFF7154760000000
  %7282 = call float @dx.op.unary.f32(i32 21, float %7281)  ; Exp(value)
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  br label %7284

; <label>:7284                                    ; preds = %7252, %7248
  %7285 = phi float [ %7283, %7252 ], [ 1.000000e+00, %7248 ]
  %7286 = fadd fast float %7285, -1.000000e+00
  %7287 = fmul fast float %7286, %7246
  %7288 = fadd fast float %7287, 1.000000e+00
  br label %7289

; <label>:7289                                    ; preds = %7284, %7189
  %7290 = phi float [ %7288, %7284 ], [ 1.000000e+00, %7189 ]
  %7291 = fmul fast float %7290, %7185
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7296 = fadd fast float %7293, %204
  %7297 = fadd fast float %7294, %205
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7300, 0
  %7302 = extractvalue %dx.types.CBufRet.f32 %7300, 1
  %7303 = extractvalue %dx.types.CBufRet.f32 %7300, 2
  %7304 = fsub fast float -0.000000e+00, %7296
  %7305 = fsub fast float -0.000000e+00, %7297
  %7306 = fsub fast float %5048, %7295
  %7307 = fadd fast float %7306, %7299
  %7308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7304, float %7305, float %7307)  ; Dot3(ax,ay,az,bx,by,bz)
  %7309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = fdiv fast float 1.000000e+00, %7309
  %7311 = fmul fast float %7310, %7308
  %7312 = fmul fast float %7301, %7311
  %7313 = fmul fast float %7302, %7311
  %7314 = fadd fast float %7312, %7296
  %7315 = fadd fast float %7313, %7297
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7319 = fsub fast float %7314, %7317
  %7320 = fsub fast float %7315, %7318
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7324 = fmul fast float %7319, %7322
  %7325 = fmul fast float %7320, %7323
  %7326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.i32 %7326, 3
  %7328 = icmp eq i32 %7327, 0
  br i1 %7328, label %7334, label %7329

; <label>:7329                                    ; preds = %7289
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  br label %7339

; <label>:7334                                    ; preds = %7289
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  br label %7339

; <label>:7339                                    ; preds = %7334, %7329
  %7340 = phi float [ %7331, %7329 ], [ %7336, %7334 ]
  %7341 = phi float [ %7332, %7329 ], [ %7337, %7334 ]
  %7342 = phi float [ %7333, %7329 ], [ %7338, %7334 ]
  %7343 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7344 = fmul fast float %7343, %7340
  %7345 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7346 = fsub fast float %7311, %7345
  %7347 = fsub fast float %7346, %7344
  %7348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7347)  ; FMax(a,b)
  %7349 = fmul fast float %7348, %7341
  %7350 = call float @dx.op.binary.f32(i32 36, float %7342, float %7349)  ; FMin(a,b)
  %7351 = fmul fast float %7350, 0xBFF7154760000000
  %7352 = call float @dx.op.unary.f32(i32 21, float %7351)  ; Exp(value)
  %7353 = fmul fast float %7291, %7352
  br label %7354

; <label>:7354                                    ; preds = %7339, %7184
  %7355 = phi float [ %7353, %7339 ], [ %7185, %7184 ]
  %7356 = call float @dx.op.binary.f32(i32 36, float %7355, float %7355)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 36, float %7355, float %7356)  ; FMin(a,b)
  %7358 = fcmp fast ogt float %7357, 0.000000e+00
  br i1 %7358, label %7359, label %7607, !dx.controlflow.hints !136

; <label>:7359                                    ; preds = %7354
  %7360 = fmul fast float %7355, %5915
  %7361 = fmul fast float %7355, %5916
  %7362 = fmul fast float %7355, %5917
  %7363 = fsub fast float %206, %4247
  %7364 = fcmp fast ogt float %7363, 0.000000e+00
  %7365 = fmul fast float %5904, 5.120000e+02
  %7366 = fmul fast float %5905, 5.120000e+02
  %7367 = fmul fast float %5906, 5.120000e+02
  %7368 = fadd fast float %7367, %206
  %7369 = fsub fast float %4247, %7368
  %7370 = fmul fast float %7369, 2.000000e+00
  %7371 = fadd fast float %7370, %7368
  %7372 = select i1 %7364, float %7371, float %7368
  %7373 = fsub fast float %7372, %206
  %7374 = call float @dx.op.dot3.f32(i32 55, float %7365, float %7366, float %7373, float %7365, float %7366, float %7373)  ; Dot3(ax,ay,az,bx,by,bz)
  %7375 = call float @dx.op.unary.f32(i32 25, float %7374)  ; Rsqrt(value)
  %7376 = fmul fast float %7375, %7365
  %7377 = fmul fast float %7375, %7366
  %7378 = fmul fast float %7375, %7373
  %7379 = fsub fast float %4247, %206
  %7380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7379)  ; Dot3(ax,ay,az,bx,by,bz)
  %7381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7376, float %7377, float %7378)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = fdiv fast float 1.000000e+00, %7381
  %7383 = fmul fast float %7382, %7380
  %7384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7363, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7385 = fcmp fast ogt float %7384, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = zext i1 %7385 to i32
  %7388 = zext i1 %7386 to i32
  %7389 = sub nsw i32 %7387, %7388
  %7390 = sitofp i32 %7389 to float
  %7391 = fsub fast float %7372, %4247
  %7392 = call float @dx.op.dot3.f32(i32 55, float %7365, float %7366, float %7391, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7393 = fcmp fast ogt float %7392, 0.000000e+00
  %7394 = fcmp fast olt float %7392, 0.000000e+00
  %7395 = zext i1 %7393 to i32
  %7396 = zext i1 %7394 to i32
  %7397 = sub nsw i32 %7395, %7396
  %7398 = sitofp i32 %7397 to float
  %7399 = fcmp fast une float %7390, %7398
  br i1 %7399, label %7400, label %7410

; <label>:7400                                    ; preds = %7359
  %7401 = fmul fast float %7383, %7378
  %7402 = fmul fast float %7383, %7377
  %7403 = fmul fast float %7383, %7376
  %7404 = fmul fast float %7403, %7403
  %7405 = fmul fast float %7402, %7402
  %7406 = fadd fast float %7404, %7405
  %7407 = fmul fast float %7401, %7401
  %7408 = fadd fast float %7406, %7407
  %7409 = call float @dx.op.unary.f32(i32 24, float %7408)  ; Sqrt(value)
  br label %7420

; <label>:7410                                    ; preds = %7359
  %7411 = icmp slt i32 %7389, 0
  br i1 %7411, label %7412, label %7420

; <label>:7412                                    ; preds = %7410
  %7413 = fsub fast float %206, %7372
  %7414 = fmul fast float %7365, %7365
  %7415 = fmul fast float %7366, %7366
  %7416 = fadd fast float %7414, %7415
  %7417 = fmul fast float %7413, %7413
  %7418 = fadd fast float %7416, %7417
  %7419 = call float @dx.op.unary.f32(i32 24, float %7418)  ; Sqrt(value)
  br label %7420

; <label>:7420                                    ; preds = %7412, %7410, %7400
  %7421 = phi float [ %7409, %7400 ], [ %7419, %7412 ], [ 0.000000e+00, %7410 ]
  %7422 = fsub fast float -0.000000e+00, %7421
  %7423 = select i1 %7364, float -0.000000e+00, float %7422
  %7424 = fmul fast float %4244, 0x3FF7154760000000
  %7425 = fmul fast float %7424, %7423
  %7426 = fmul fast float %4245, 0x3FF7154760000000
  %7427 = fmul fast float %7426, %7423
  %7428 = fmul fast float %4246, 0x3FF7154760000000
  %7429 = fmul fast float %7428, %7423
  %7430 = call float @dx.op.unary.f32(i32 21, float %7425)  ; Exp(value)
  %7431 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7432 = call float @dx.op.unary.f32(i32 21, float %7429)  ; Exp(value)
  %7433 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7434 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7435 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7436 = fmul fast float %7360, %7433
  %7437 = fmul fast float %7361, %7434
  %7438 = fmul fast float %7362, %7435
  %7439 = fsub fast float %5904, %5036
  %7440 = fsub fast float %5905, %5035
  %7441 = fsub fast float %5906, %5034
  %7442 = call float @dx.op.dot3.f32(i32 55, float %7439, float %7440, float %7441, float %7439, float %7440, float %7441)  ; Dot3(ax,ay,az,bx,by,bz)
  %7443 = call float @dx.op.unary.f32(i32 25, float %7442)  ; Rsqrt(value)
  %7444 = fmul fast float %7443, %7439
  %7445 = fmul fast float %7443, %7440
  %7446 = fmul fast float %7443, %7441
  %7447 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5905, float %5906, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %7448 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5032, float %5031, float %7444, float %7445, float %7446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7449 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7450 = bitcast i32 %5075 to float
  %7451 = fmul fast float %7449, %7449
  %7452 = fmul fast float %7451, %7450
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fmul fast float %7453, %7449
  %7455 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %7444, float %7445, float %7446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7456 = fmul fast float %7455, %7455
  %7457 = call float @dx.op.unary.f32(i32 6, float %7447)  ; FAbs(value)
  %7458 = fsub fast float 1.000000e+00, %5069
  %7459 = fmul fast float %5051, %5051
  %7460 = fmul fast float %7459, %7458
  %7461 = fadd fast float %7460, %5069
  %7462 = bitcast float %7461 to i32
  %7463 = ashr i32 %7462, 1
  %7464 = add nsw i32 %7463, 532487669
  %7465 = bitcast i32 %7464 to float
  %7466 = fadd fast float %7465, %5051
  %7467 = fmul fast float %5069, %7456
  %7468 = fsub fast float 1.000000e+00, %7456
  %7469 = fadd fast float %7468, %7467
  %7470 = fmul fast float %7457, %7457
  %7471 = fmul fast float %7470, %7458
  %7472 = fadd fast float %7471, %5069
  %7473 = bitcast float %7472 to i32
  %7474 = ashr i32 %7473, 1
  %7475 = add nsw i32 %7474, 532487669
  %7476 = bitcast i32 %7475 to float
  %7477 = fadd fast float %7476, %7457
  %7478 = fmul fast float %7469, %7469
  %7479 = fmul fast float %7478, %7466
  %7480 = fmul fast float %7479, %7477
  %7481 = fdiv fast float 0x3FF0A00000000000, %7480
  %7482 = fmul fast float %7481, %5069
  %7483 = call float @dx.op.unary.f32(i32 6, float %7448)  ; FAbs(value)
  %7484 = fsub fast float 1.000000e+00, %7483
  %7485 = bitcast float %7484 to i32
  %7486 = sitofp i32 %7485 to float
  %7487 = fmul fast float %7486, 5.000000e+00
  %7488 = fadd fast float %7487, 0xC1EFBF8940000000
  %7489 = fptosi float %7488 to i32
  %7490 = bitcast i32 %7489 to float
  %7491 = fsub fast float 1.000000e+00, %5040
  %7492 = fsub fast float 1.000000e+00, %5041
  %7493 = fsub fast float 1.000000e+00, %5049
  %7494 = fmul fast float %7490, %7491
  %7495 = fmul fast float %7490, %7492
  %7496 = fmul fast float %7490, %7493
  %7497 = fadd fast float %7494, %5040
  %7498 = fadd fast float %7495, %5041
  %7499 = fadd fast float %7496, %5049
  br i1 %5323, label %7500, label %7523

; <label>:7500                                    ; preds = %7420
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3842, float %7483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = fadd fast float %7502, -5.000000e-01
  %7506 = fadd fast float %7503, -5.000000e-01
  %7507 = fadd fast float %7504, -5.000000e-01
  %7508 = fmul fast float %5040, 4.000000e+00
  %7509 = fmul fast float %7508, %7491
  %7510 = fmul fast float %7509, %7505
  %7511 = fmul fast float %5041, 4.000000e+00
  %7512 = fmul fast float %7511, %7492
  %7513 = fmul fast float %7512, %7506
  %7514 = fmul fast float %5049, 4.000000e+00
  %7515 = fmul fast float %7514, %7493
  %7516 = fmul fast float %7515, %7507
  %7517 = fadd fast float %7510, %7497
  %7518 = fadd fast float %7513, %7498
  %7519 = fadd fast float %7516, %7499
  %7520 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  %7521 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7522 = call float @dx.op.unary.f32(i32 7, float %7519)  ; Saturate(value)
  br label %7523

; <label>:7523                                    ; preds = %7500, %7420
  %7524 = phi float [ %7520, %7500 ], [ %7497, %7420 ]
  %7525 = phi float [ %7521, %7500 ], [ %7498, %7420 ]
  %7526 = phi float [ %7522, %7500 ], [ %7499, %7420 ]
  %7527 = fmul fast float %7447, 9.843750e-01
  %7528 = fadd fast float %7527, 7.812500e-03
  %7529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7528, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 2
  %7531 = extractvalue %dx.types.ResRet.f32 %7529, 3
  %7532 = fmul fast float %7530, %5040
  %7533 = fmul fast float %7530, %5041
  %7534 = fmul fast float %7530, %5049
  %7535 = fadd fast float %7532, %7531
  %7536 = fadd fast float %7533, %7531
  %7537 = fadd fast float %7534, %7531
  br i1 %5323, label %7538, label %7561

; <label>:7538                                    ; preds = %7523
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3842, float %7447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.ResRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.ResRet.f32 %7539, 2
  %7543 = fadd fast float %7540, -5.000000e-01
  %7544 = fadd fast float %7541, -5.000000e-01
  %7545 = fadd fast float %7542, -5.000000e-01
  %7546 = fmul fast float %5040, 4.000000e+00
  %7547 = fmul fast float %7546, %7491
  %7548 = fmul fast float %7547, %7543
  %7549 = fmul fast float %5041, 4.000000e+00
  %7550 = fmul fast float %7549, %7492
  %7551 = fmul fast float %7550, %7544
  %7552 = fmul fast float %5049, 4.000000e+00
  %7553 = fmul fast float %7552, %7493
  %7554 = fmul fast float %7553, %7545
  %7555 = fadd fast float %7548, %7535
  %7556 = fadd fast float %7551, %7536
  %7557 = fadd fast float %7554, %7537
  %7558 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7559 = call float @dx.op.unary.f32(i32 7, float %7556)  ; Saturate(value)
  %7560 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  br label %7561

; <label>:7561                                    ; preds = %7538, %7523
  %7562 = phi float [ %7558, %7538 ], [ %7535, %7523 ]
  %7563 = phi float [ %7559, %7538 ], [ %7536, %7523 ]
  %7564 = phi float [ %7560, %7538 ], [ %7537, %7523 ]
  %7565 = call float @dx.op.binary.f32(i32 35, float %7563, float %7564)  ; FMax(a,b)
  %7566 = call float @dx.op.binary.f32(i32 35, float %7562, float %7565)  ; FMax(a,b)
  %7567 = fsub fast float 1.000000e+00, %7566
  %7568 = fmul fast float %7524, %7482
  %7569 = fmul fast float %7525, %7482
  %7570 = fmul fast float %7526, %7482
  %7571 = fsub fast float 1.000000e+00, %7448
  %7572 = bitcast float %7571 to i32
  %7573 = sitofp i32 %7572 to float
  %7574 = fmul fast float %7573, 5.000000e+00
  %7575 = fadd fast float %7574, 0xC1EFBF8940000000
  %7576 = fptosi float %7575 to i32
  %7577 = bitcast i32 %7576 to float
  %7578 = fmul fast float %7577, %3843
  %7579 = fmul fast float %7567, %7578
  %7580 = fmul fast float %7579, %5865
  %7581 = fmul fast float %7579, %5866
  %7582 = fmul fast float %7579, %5867
  %7583 = fadd fast float %7580, %7568
  %7584 = fadd fast float %7581, %7569
  %7585 = fadd fast float %7582, %7570
  %7586 = fmul fast float %7454, %7436
  %7587 = fmul fast float %7586, %7567
  %7588 = fmul fast float %7454, %7437
  %7589 = fmul fast float %7588, %7567
  %7590 = fmul fast float %7454, %7438
  %7591 = fmul fast float %7590, %7567
  %7592 = fmul fast float %7586, %7583
  %7593 = fmul fast float %7588, %7584
  %7594 = fmul fast float %7590, %7585
  %7595 = fadd fast float %7587, %5849
  %7596 = fmul fast float %7595, %3839
  %7597 = fadd fast float %7589, %5850
  %7598 = fmul fast float %7597, %3839
  %7599 = fadd fast float %7591, %5851
  %7600 = fmul fast float %7599, %3839
  %7601 = fadd fast float %7592, %5892
  %7602 = fmul fast float %7601, %3839
  %7603 = fadd fast float %7593, %5895
  %7604 = fmul fast float %7603, %3839
  %7605 = fadd fast float %7594, %5898
  %7606 = fmul fast float %7605, %3839
  br label %7607

; <label>:7607                                    ; preds = %7561, %7354, %5845
  %7608 = phi float [ %5893, %5845 ], [ %5893, %7354 ], [ %7602, %7561 ]
  %7609 = phi float [ %5896, %5845 ], [ %5896, %7354 ], [ %7604, %7561 ]
  %7610 = phi float [ %5899, %5845 ], [ %5899, %7354 ], [ %7606, %7561 ]
  %7611 = phi float [ %5888, %5845 ], [ %5888, %7354 ], [ %7596, %7561 ]
  %7612 = phi float [ %5889, %5845 ], [ %5889, %7354 ], [ %7598, %7561 ]
  %7613 = phi float [ %5890, %5845 ], [ %5890, %7354 ], [ %7600, %7561 ]
  %7614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.i32 %7614, 0
  %7616 = icmp eq i32 %7615, 0
  br i1 %7616, label %8280, label %7617

; <label>:7617                                    ; preds = %7607
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7621 = fmul fast float %7619, %121
  %7622 = fmul fast float %7620, %122
  %7623 = fptoui float %7621 to i32
  %7624 = fptoui float %7622 to i32
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %7628 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7629 = fadd fast float %108, -4.000000e+00
  %7630 = call float @dx.op.binary.f32(i32 35, float %7629, float 0.000000e+00)  ; FMax(a,b)
  %7631 = fadd fast float %7630, %7626
  %7632 = fmul fast float %7631, %7627
  %7633 = call float @dx.op.unary.f32(i32 23, float %7632)  ; Log(value)
  %7634 = fmul fast float %7633, %7628
  %7635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7636 = extractvalue %dx.types.CBufRet.f32 %7635, 2
  %7637 = fmul fast float %7634, %7636
  %7638 = call float @dx.op.unary.f32(i32 7, float %7637)  ; Saturate(value)
  %7639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.i32 %7639, 1
  %7641 = add i32 %7640, -1
  %7642 = uitofp i32 %7640 to float
  %7643 = fmul fast float %7642, %7638
  %7644 = fptoui float %7643 to i32
  %7645 = call i32 @dx.op.binary.i32(i32 40, i32 %7644, i32 %7641)  ; UMin(a,b)
  %7646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7647 = extractvalue %dx.types.CBufRet.i32 %7646, 2
  %7648 = extractvalue %dx.types.CBufRet.i32 %7646, 3
  %7649 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7624, i32 %7647, i32 %7623)  ; UMad(a,b,c)
  %7650 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7645, i32 %7648, i32 %7649)  ; UMad(a,b,c)
  %7651 = add nsw i32 %7615, -1
  %7652 = call i32 @dx.op.binary.i32(i32 37, i32 %7651, i32 0)  ; IMax(a,b)
  %7653 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %7654 = fptoui float %7653 to i32
  %7655 = lshr i32 %7654, 5
  %7656 = call i32 @dx.op.binary.i32(i32 40, i32 %7655, i32 8191)  ; UMin(a,b)
  %7657 = shl i32 %7656, 2
  %7658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7657, i32 undef)  ; BufferLoad(srv,index,wot)
  %7659 = extractvalue %dx.types.ResRet.i32 %7658, 0
  %7660 = lshr i32 %7659, 16
  %7661 = and i32 %7659, 65535
  %7662 = lshr i32 %7659, 21
  %7663 = lshr i32 %7661, 5
  %7664 = call i32 @dx.op.binary.i32(i32 40, i32 %7663, i32 %7652)  ; UMin(a,b)
  %7665 = icmp ugt i32 %7662, %7664
  br i1 %7665, label %8280, label %7666

; <label>:7666                                    ; preds = %7617
  br label %7667

; <label>:7667                                    ; preds = %8270, %7666
  %7668 = phi i32 [ %8277, %8270 ], [ %7662, %7666 ]
  %7669 = phi float [ %8271, %8270 ], [ %7608, %7666 ]
  %7670 = phi float [ %8272, %8270 ], [ %7609, %7666 ]
  %7671 = phi float [ %8273, %8270 ], [ %7610, %7666 ]
  %7672 = phi float [ %8274, %8270 ], [ %7611, %7666 ]
  %7673 = phi float [ %8275, %8270 ], [ %7612, %7666 ]
  %7674 = phi float [ %8276, %8270 ], [ %7613, %7666 ]
  %7675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.i32 %7675, 0
  %7677 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7650, i32 %7676, i32 %7668)  ; UMad(a,b,c)
  %7678 = shl i32 %7677, 2
  %7679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7678, i32 undef)  ; BufferLoad(srv,index,wot)
  %7680 = extractvalue %dx.types.ResRet.i32 %7679, 0
  %7681 = shl i32 %7668, 5
  %7682 = sub nsw i32 %7660, %7681
  %7683 = call i32 @dx.op.binary.i32(i32 37, i32 %7682, i32 0)  ; IMax(a,b)
  %7684 = call i32 @dx.op.binary.i32(i32 38, i32 %7683, i32 31)  ; IMin(a,b)
  %7685 = sub nsw i32 1, %7660
  %7686 = add nsw i32 %7685, %7661
  %7687 = call i32 @dx.op.binary.i32(i32 37, i32 %7686, i32 0)  ; IMax(a,b)
  %7688 = call i32 @dx.op.binary.i32(i32 38, i32 %7687, i32 32)  ; IMin(a,b)
  %7689 = and i32 %7688, 31
  %7690 = shl i32 -1, %7689
  %7691 = xor i32 %7690, -1
  %7692 = and i32 %7684, 31
  %7693 = shl i32 %7691, %7692
  %7694 = icmp eq i32 %7688, 32
  %7695 = select i1 %7694, i32 -1, i32 %7693
  %7696 = and i32 %7695, %7680
  %7697 = icmp eq i32 %7696, 0
  br i1 %7697, label %8270, label %7698

; <label>:7698                                    ; preds = %7667
  br label %7699

; <label>:7699                                    ; preds = %7833, %7698
  %7700 = phi i32 [ %7711, %7833 ], [ %7696, %7698 ]
  %7701 = phi float [ %7834, %7833 ], [ %7669, %7698 ]
  %7702 = phi float [ %7835, %7833 ], [ %7670, %7698 ]
  %7703 = phi float [ %7836, %7833 ], [ %7671, %7698 ]
  %7704 = phi float [ %7837, %7833 ], [ %7672, %7698 ]
  %7705 = phi float [ %7838, %7833 ], [ %7673, %7698 ]
  %7706 = phi float [ %7839, %7833 ], [ %7674, %7698 ]
  %7707 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7700)  ; FirstbitLo(value)
  %7708 = add i32 %7707, %7681
  %7709 = and i32 %7707, 31
  %7710 = shl i32 1, %7709
  %7711 = xor i32 %7710, %7700
  %7712 = mul i32 %7708, 112
  %7713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7712, i32 undef)  ; BufferLoad(srv,index,wot)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.ResRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.ResRet.f32 %7713, 2
  %7717 = or i32 %7712, 12
  %7718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7717, i32 undef)  ; BufferLoad(srv,index,wot)
  %7719 = extractvalue %dx.types.ResRet.f32 %7718, 0
  %7720 = add i32 %7712, 16
  %7721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7720, i32 undef)  ; BufferLoad(srv,index,wot)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.ResRet.f32 %7721, 1
  %7724 = extractvalue %dx.types.ResRet.f32 %7721, 2
  %7725 = add i32 %7712, 28
  %7726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7725, i32 undef)  ; BufferLoad(srv,index,wot)
  %7727 = extractvalue %dx.types.ResRet.i32 %7726, 0
  %7728 = add i32 %7712, 44
  %7729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7728, i32 undef)  ; BufferLoad(srv,index,wot)
  %7730 = extractvalue %dx.types.ResRet.f32 %7729, 0
  %7731 = add i32 %7712, 48
  %7732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7731, i32 undef)  ; BufferLoad(srv,index,wot)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = extractvalue %dx.types.ResRet.f32 %7732, 3
  %7737 = add i32 %7712, 64
  %7738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7737, i32 undef)  ; BufferLoad(srv,index,wot)
  %7739 = extractvalue %dx.types.ResRet.f32 %7738, 0
  %7740 = extractvalue %dx.types.ResRet.f32 %7738, 1
  %7741 = extractvalue %dx.types.ResRet.f32 %7738, 2
  %7742 = extractvalue %dx.types.ResRet.f32 %7738, 3
  %7743 = add i32 %7712, 80
  %7744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7743, i32 undef)  ; BufferLoad(srv,index,wot)
  %7745 = extractvalue %dx.types.ResRet.f32 %7744, 1
  %7746 = extractvalue %dx.types.ResRet.f32 %7744, 2
  %7747 = add i32 %7712, 92
  %7748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7747, i32 undef)  ; BufferLoad(srv,index,wot)
  %7749 = extractvalue %dx.types.ResRet.i32 %7748, 0
  %7750 = call float @dx.op.dot3.f32(i32 55, float %7714, float %7715, float %7716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7751 = select i1 %263, float %7745, float %7714
  %7752 = select i1 %263, float %7750, float %7715
  %7753 = select i1 %263, float %7746, float %7716
  %7754 = and i32 %7749, 65535
  %7755 = uitofp i32 %7754 to float
  %7756 = lshr i32 %7749, 16
  %7757 = uitofp i32 %7756 to float
  %7758 = and i32 %7727, 65535
  %7759 = and i32 %7727, 50331648
  %7760 = icmp eq i32 %7759, 33554432
  %7761 = fsub fast float %7733, %204
  %7762 = fsub fast float %7734, %205
  %7763 = fsub fast float %7735, %206
  %7764 = call float @dx.op.dot3.f32(i32 55, float %7761, float %7762, float %7763, float %7761, float %7762, float %7763)  ; Dot3(ax,ay,az,bx,by,bz)
  %7765 = call float @dx.op.unary.f32(i32 24, float %7764)  ; Sqrt(value)
  %7766 = fdiv fast float 1.000000e+00, %7765
  %7767 = fmul fast float %7766, %7761
  %7768 = fmul fast float %7766, %7762
  %7769 = fmul fast float %7766, %7763
  %7770 = fadd fast float %7765, %7719
  %7771 = fdiv fast float 1.000000e+00, %7770
  %7772 = fmul float %7730, %7771
  %7773 = fmul float %7772, %7772
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  br i1 %7760, label %7775, label %7796

; <label>:7775                                    ; preds = %7699
  %7776 = fmul fast float %7741, %7722
  %7777 = fmul fast float %7741, %7723
  %7778 = fmul fast float %7741, %7724
  %7779 = fadd fast float %7761, %7776
  %7780 = fadd fast float %7762, %7777
  %7781 = fadd fast float %7763, %7778
  %7782 = call float @dx.op.dot3.f32(i32 55, float %7779, float %7780, float %7781, float %7779, float %7780, float %7781)  ; Dot3(ax,ay,az,bx,by,bz)
  %7783 = call float @dx.op.unary.f32(i32 25, float %7782)  ; Rsqrt(value)
  %7784 = fmul fast float %7783, %7779
  %7785 = fmul fast float %7783, %7780
  %7786 = fmul fast float %7783, %7781
  %7787 = fsub fast float %204, %7733
  %7788 = fsub fast float %205, %7734
  %7789 = fsub fast float %206, %7735
  %7790 = fsub fast float -0.000000e+00, %7787
  %7791 = fsub fast float -0.000000e+00, %7788
  %7792 = fsub fast float -0.000000e+00, %7789
  %7793 = call float @dx.op.dot3.f32(i32 55, float %7790, float %7791, float %7792, float %7722, float %7723, float %7724)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = fcmp fast ogt float %7793, 0.000000e+00
  %7795 = uitofp i1 %7794 to float
  br label %7796

; <label>:7796                                    ; preds = %7775, %7699
  %7797 = phi float [ %7795, %7775 ], [ 1.000000e+00, %7699 ]
  %7798 = phi float [ %7784, %7775 ], [ %7767, %7699 ]
  %7799 = phi float [ %7785, %7775 ], [ %7768, %7699 ]
  %7800 = phi float [ %7786, %7775 ], [ %7769, %7699 ]
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7722, float %7723, float %7724, float %7798, float %7799, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = fmul fast float %7801, %7801
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fsub fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7804, 5.000000e-01
  %7806 = fcmp fast ogt float %7801, 0.000000e+00
  %7807 = fsub fast float 1.000000e+00, %7805
  %7808 = select i1 %7806, float %7805, float %7807
  %7809 = fmul fast float %7808, %7757
  %7810 = fadd fast float %7809, %7755
  %7811 = fmul fast float %7810, 0x3EF0001000000000
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7811, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = fmul fast float %7801, %7739
  %7815 = fadd fast float %7814, %7740
  %7816 = call float @dx.op.unary.f32(i32 7, float %7815)  ; Saturate(value)
  %7817 = select i1 %7760, float 1.000000e+00, float %7816
  %7818 = select i1 %7760, float %7816, float 1.000000e+00
  %7819 = fmul fast float %7765, %7736
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = fmul fast float %7820, %7742
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = fmul fast float %7822, %7818
  %7824 = fmul fast float %7823, 2.000000e+00
  %7825 = fsub fast float 3.000000e+00, %7824
  %7826 = fmul fast float %7813, %7797
  %7827 = fmul fast float %7823, %7823
  %7828 = fmul fast float %7827, %7826
  %7829 = fmul fast float %7828, %7825
  %7830 = call float @dx.op.binary.f32(i32 36, float %7829, float %7829)  ; FMin(a,b)
  %7831 = call float @dx.op.binary.f32(i32 36, float %7829, float %7830)  ; FMin(a,b)
  %7832 = fcmp fast ogt float %7831, 0.000000e+00
  br i1 %7832, label %7841, label %7833, !dx.controlflow.hints !137

; <label>:7833                                    ; preds = %8226, %7987, %7796
  %7834 = phi float [ %7701, %7987 ], [ %7701, %7796 ], [ %8266, %8226 ]
  %7835 = phi float [ %7702, %7987 ], [ %7702, %7796 ], [ %8267, %8226 ]
  %7836 = phi float [ %7703, %7987 ], [ %7703, %7796 ], [ %8268, %8226 ]
  %7837 = phi float [ %7704, %7987 ], [ %7704, %7796 ], [ %8260, %8226 ]
  %7838 = phi float [ %7705, %7987 ], [ %7705, %7796 ], [ %8261, %8226 ]
  %7839 = phi float [ %7706, %7987 ], [ %7706, %7796 ], [ %8262, %8226 ]
  %7840 = icmp eq i32 %7700, %7710
  br i1 %7840, label %8269, label %7699

; <label>:7841                                    ; preds = %7796
  %7842 = icmp eq i32 %7758, 255
  br i1 %7842, label %7987, label %7843, !dx.controlflow.hints !138

; <label>:7843                                    ; preds = %7841
  %7844 = mul nuw nsw i32 %7758, 176
  %7845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7844, i32 undef)  ; BufferLoad(srv,index,wot)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.ResRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.ResRet.f32 %7845, 2
  %7849 = extractvalue %dx.types.ResRet.f32 %7845, 3
  %7850 = add nuw nsw i32 %7844, 16
  %7851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7850, i32 undef)  ; BufferLoad(srv,index,wot)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.ResRet.f32 %7851, 1
  %7854 = add nuw nsw i32 %7844, 32
  %7855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7854, i32 undef)  ; BufferLoad(srv,index,wot)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = add nuw nsw i32 %7844, 48
  %7860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7859, i32 undef)  ; BufferLoad(srv,index,wot)
  %7861 = extractvalue %dx.types.ResRet.f32 %7860, 0
  %7862 = extractvalue %dx.types.ResRet.f32 %7860, 1
  %7863 = extractvalue %dx.types.ResRet.f32 %7860, 2
  %7864 = extractvalue %dx.types.ResRet.f32 %7860, 3
  %7865 = add nuw nsw i32 %7844, 64
  %7866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7865, i32 undef)  ; BufferLoad(srv,index,wot)
  %7867 = extractvalue %dx.types.ResRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.ResRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.ResRet.f32 %7866, 2
  %7870 = extractvalue %dx.types.ResRet.f32 %7866, 3
  %7871 = add nuw nsw i32 %7844, 80
  %7872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7871, i32 undef)  ; BufferLoad(srv,index,wot)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = extractvalue %dx.types.ResRet.f32 %7872, 1
  %7875 = extractvalue %dx.types.ResRet.f32 %7872, 2
  %7876 = extractvalue %dx.types.ResRet.f32 %7872, 3
  %7877 = add nuw nsw i32 %7844, 96
  %7878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7877, i32 undef)  ; BufferLoad(srv,index,wot)
  %7879 = extractvalue %dx.types.ResRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.ResRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.ResRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.ResRet.f32 %7878, 3
  %7883 = bitcast float %7853 to i32
  %7884 = fmul fast float %7858, %130
  %7885 = fmul fast float %7858, %132
  %7886 = fmul fast float %7858, %134
  %7887 = fadd fast float %7884, %204
  %7888 = fadd fast float %7885, %205
  %7889 = fadd fast float %7886, %206
  %7890 = fmul fast float %7887, %7861
  %7891 = call float @dx.op.tertiary.f32(i32 46, float %7888, float %7867, float %7890)  ; FMad(a,b,c)
  %7892 = call float @dx.op.tertiary.f32(i32 46, float %7889, float %7873, float %7891)  ; FMad(a,b,c)
  %7893 = fadd fast float %7892, %7879
  %7894 = fmul fast float %7887, %7862
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %7888, float %7868, float %7894)  ; FMad(a,b,c)
  %7896 = call float @dx.op.tertiary.f32(i32 46, float %7889, float %7874, float %7895)  ; FMad(a,b,c)
  %7897 = fadd fast float %7896, %7880
  %7898 = fmul fast float %7887, %7863
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %7888, float %7869, float %7898)  ; FMad(a,b,c)
  %7900 = call float @dx.op.tertiary.f32(i32 46, float %7889, float %7875, float %7899)  ; FMad(a,b,c)
  %7901 = fadd fast float %7900, %7881
  %7902 = fmul fast float %7887, %7864
  %7903 = call float @dx.op.tertiary.f32(i32 46, float %7888, float %7870, float %7902)  ; FMad(a,b,c)
  %7904 = call float @dx.op.tertiary.f32(i32 46, float %7889, float %7876, float %7903)  ; FMad(a,b,c)
  %7905 = fadd fast float %7904, %7882
  %7906 = fdiv fast float %7893, %7905
  %7907 = fdiv fast float %7897, %7905
  %7908 = fdiv fast float %7901, %7905
  %7909 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7908)  ; FMax(a,b)
  %7910 = fmul fast float %274, 0x401921FB60000000
  %7911 = call float @dx.op.unary.f32(i32 13, float %7910)  ; Sin(value)
  %7912 = call float @dx.op.unary.f32(i32 12, float %7910)  ; Cos(value)
  %7913 = fmul fast float %7912, %7857
  %7914 = call float @dx.op.tertiary.f32(i32 46, float %7911, float %7857, float 0.000000e+00)  ; FMad(a,b,c)
  %7915 = fmul fast float %7857, %7911
  %7916 = fsub fast float -0.000000e+00, %7915
  %7917 = call float @dx.op.tertiary.f32(i32 46, float %7912, float %7857, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7918

; <label>:7918                                    ; preds = %7918, %7843
  %7919 = phi float [ 0.000000e+00, %7843 ], [ %7951, %7918 ]
  %7920 = phi float [ 0.000000e+00, %7843 ], [ %7953, %7918 ]
  %7921 = phi i32 [ 0, %7843 ], [ %7954, %7918 ]
  %7922 = mul i32 %7921, 2
  %7923 = add i32 0, %7922
  %7924 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7923
  %7925 = load float, float* %7924, align 4
  %7926 = mul i32 %7921, 2
  %7927 = add i32 1, %7926
  %7928 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7927
  %7929 = load float, float* %7928, align 4
  %7930 = fmul fast float %7913, %7925
  %7931 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7916, float %7930)  ; FMad(a,b,c)
  %7932 = fmul fast float %7925, %7914
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7917, float %7932)  ; FMad(a,b,c)
  %7934 = fadd fast float %7931, %7906
  %7935 = fadd fast float %7933, %7907
  %7936 = fmul fast float %7934, %7852
  %7937 = fmul fast float %7935, %7852
  %7938 = call float @dx.op.binary.f32(i32 35, float %7936, float %7848)  ; FMax(a,b)
  %7939 = call float @dx.op.binary.f32(i32 35, float %7937, float %7848)  ; FMax(a,b)
  %7940 = call float @dx.op.binary.f32(i32 36, float %7938, float %7849)  ; FMin(a,b)
  %7941 = call float @dx.op.binary.f32(i32 36, float %7939, float %7849)  ; FMin(a,b)
  %7942 = fadd fast float %7940, %7846
  %7943 = fadd fast float %7941, %7847
  %7944 = uitofp i32 %7883 to float
  %7945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7942, float %7943, float %7944, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7946 = extractvalue %dx.types.ResRet.f32 %7945, 0
  %7947 = fsub fast float %7946, %7909
  %7948 = fsub fast float %7947, %7856
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = select i1 %7949, float 1.000000e+00, float 0.000000e+00
  %7951 = fadd fast float %7950, %7919
  %7952 = select i1 %7949, float %7948, float 0.000000e+00
  %7953 = fadd fast float %7952, %7920
  %7954 = add nuw nsw i32 %7921, 1
  %7955 = icmp eq i32 %7954, 8
  br i1 %7955, label %7956, label %7918

; <label>:7956                                    ; preds = %7918
  %7957 = fdiv fast float 1.000000e+00, %7951
  %7958 = fmul fast float %7957, %7953
  %7959 = fdiv fast float 1.000000e+00, %7909
  %7960 = fmul fast float %7958, %7959
  %7961 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7962 = call float @dx.op.binary.f32(i32 35, float %7961, float 0.000000e+00)  ; FMax(a,b)
  %7963 = fmul fast float %7951, 1.250000e-01
  %7964 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7965 = fmul fast float %7964, 2.000000e+00
  %7966 = fadd fast float %7965, -1.000000e+00
  %7967 = fcmp fast ogt float %7966, 0.000000e+00
  %7968 = fcmp fast olt float %7966, 0.000000e+00
  %7969 = zext i1 %7967 to i32
  %7970 = zext i1 %7968 to i32
  %7971 = sub nsw i32 %7969, %7970
  %7972 = sitofp i32 %7971 to float
  %7973 = fmul fast float %7972, %7966
  %7974 = fsub fast float 1.000000e+00, %7973
  %7975 = fmul fast float %7974, %7974
  %7976 = fmul fast float %7975, %7974
  %7977 = fsub fast float %7974, %7976
  %7978 = fmul fast float %7977, %7962
  %7979 = fsub fast float 1.000000e+00, %7976
  %7980 = fsub fast float %7979, %7978
  %7981 = fmul fast float %7972, 5.000000e-01
  %7982 = fmul fast float %7981, %7980
  %7983 = fsub fast float -5.000000e-01, %7982
  %7984 = fmul fast float %7983, %7817
  %7985 = fadd fast float %7984, 1.000000e+00
  %7986 = fmul fast float %7985, %7829
  br label %7987

; <label>:7987                                    ; preds = %7956, %7841
  %7988 = phi float [ %7986, %7956 ], [ %7829, %7841 ]
  %7989 = call float @dx.op.binary.f32(i32 36, float %7988, float %7988)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7988, float %7989)  ; FMin(a,b)
  %7991 = fcmp fast ogt float %7990, 0.000000e+00
  br i1 %7991, label %7992, label %7833, !dx.controlflow.hints !139

; <label>:7992                                    ; preds = %7987
  %7993 = fmul fast float %7988, %7751
  %7994 = fmul fast float %7988, %7752
  %7995 = fmul fast float %7988, %7753
  %7996 = fsub fast float %7735, %4247
  %7997 = fcmp fast ogt float %7996, 0.000000e+00
  %7998 = fsub fast float %206, %4247
  %7999 = fcmp fast ogt float %7998, 0.000000e+00
  %8000 = xor i1 %7999, %7997
  %8001 = fsub fast float %4247, %7735
  %8002 = fmul fast float %8001, 2.000000e+00
  %8003 = fadd fast float %8002, %7735
  %8004 = select i1 %8000, float %7735, float %8003
  %8005 = fsub fast float %8004, %206
  %8006 = call float @dx.op.dot3.f32(i32 55, float %7761, float %7762, float %8005, float %7761, float %7762, float %8005)  ; Dot3(ax,ay,az,bx,by,bz)
  %8007 = call float @dx.op.unary.f32(i32 25, float %8006)  ; Rsqrt(value)
  %8008 = fmul fast float %8007, %7761
  %8009 = fmul fast float %8007, %7762
  %8010 = fmul fast float %8007, %8005
  %8011 = fsub fast float %4247, %206
  %8012 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8011)  ; Dot3(ax,ay,az,bx,by,bz)
  %8013 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8008, float %8009, float %8010)  ; Dot3(ax,ay,az,bx,by,bz)
  %8014 = fdiv fast float 1.000000e+00, %8013
  %8015 = fmul fast float %8014, %8012
  %8016 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7998, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = fcmp fast ogt float %8016, 0.000000e+00
  %8018 = fcmp fast olt float %8016, 0.000000e+00
  %8019 = zext i1 %8017 to i32
  %8020 = zext i1 %8018 to i32
  %8021 = sub nsw i32 %8019, %8020
  %8022 = sitofp i32 %8021 to float
  %8023 = fsub fast float %8004, %4247
  %8024 = call float @dx.op.dot3.f32(i32 55, float %7761, float %7762, float %8023, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8025 = fcmp fast ogt float %8024, 0.000000e+00
  %8026 = fcmp fast olt float %8024, 0.000000e+00
  %8027 = zext i1 %8025 to i32
  %8028 = zext i1 %8026 to i32
  %8029 = sub nsw i32 %8027, %8028
  %8030 = sitofp i32 %8029 to float
  %8031 = fcmp fast une float %8022, %8030
  br i1 %8031, label %8032, label %8042

; <label>:8032                                    ; preds = %7992
  %8033 = fmul fast float %8015, %8010
  %8034 = fmul fast float %8015, %8009
  %8035 = fmul fast float %8015, %8008
  %8036 = fmul fast float %8035, %8035
  %8037 = fmul fast float %8034, %8034
  %8038 = fadd fast float %8036, %8037
  %8039 = fmul fast float %8033, %8033
  %8040 = fadd fast float %8038, %8039
  %8041 = call float @dx.op.unary.f32(i32 24, float %8040)  ; Sqrt(value)
  br label %8054

; <label>:8042                                    ; preds = %7992
  %8043 = icmp slt i32 %8021, 0
  br i1 %8043, label %8044, label %8054

; <label>:8044                                    ; preds = %8042
  %8045 = fsub fast float %204, %7733
  %8046 = fsub fast float %205, %7734
  %8047 = fsub fast float %206, %8004
  %8048 = fmul fast float %8045, %8045
  %8049 = fmul fast float %8046, %8046
  %8050 = fadd fast float %8048, %8049
  %8051 = fmul fast float %8047, %8047
  %8052 = fadd fast float %8050, %8051
  %8053 = call float @dx.op.unary.f32(i32 24, float %8052)  ; Sqrt(value)
  br label %8054

; <label>:8054                                    ; preds = %8044, %8042, %8032
  %8055 = phi float [ %8041, %8032 ], [ %8053, %8044 ], [ 0.000000e+00, %8042 ]
  %8056 = and i1 %7999, %7997
  %8057 = fsub fast float -0.000000e+00, %8055
  %8058 = select i1 %8056, float -0.000000e+00, float %8057
  %8059 = fmul fast float %4244, 0x3FF7154760000000
  %8060 = fmul fast float %8059, %8058
  %8061 = fmul fast float %4245, 0x3FF7154760000000
  %8062 = fmul fast float %8061, %8058
  %8063 = fmul fast float %4246, 0x3FF7154760000000
  %8064 = fmul fast float %8063, %8058
  %8065 = call float @dx.op.unary.f32(i32 21, float %8060)  ; Exp(value)
  %8066 = call float @dx.op.unary.f32(i32 21, float %8062)  ; Exp(value)
  %8067 = call float @dx.op.unary.f32(i32 21, float %8064)  ; Exp(value)
  %8068 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8069 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8070 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8071 = fmul fast float %7993, %8068
  %8072 = fmul fast float %7994, %8069
  %8073 = fmul fast float %7995, %8070
  %8074 = fsub fast float %7767, %5036
  %8075 = fsub fast float %7768, %5035
  %8076 = fsub fast float %7769, %5034
  %8077 = call float @dx.op.dot3.f32(i32 55, float %8074, float %8075, float %8076, float %8074, float %8075, float %8076)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = call float @dx.op.unary.f32(i32 25, float %8077)  ; Rsqrt(value)
  %8079 = fmul fast float %8078, %8074
  %8080 = fmul fast float %8078, %8075
  %8081 = fmul fast float %8078, %8076
  %8082 = call float @dx.op.dot3.f32(i32 55, float %7767, float %7768, float %7769, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %8083 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5032, float %5031, float %8079, float %8080, float %8081)  ; Dot3(ax,ay,az,bx,by,bz)
  %8084 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8085 = fmul fast float %8084, %7774
  %8086 = bitcast i32 %5075 to float
  %8087 = fmul fast float %8084, %8084
  %8088 = fmul fast float %8087, %8086
  %8089 = call float @dx.op.unary.f32(i32 7, float %8088)  ; Saturate(value)
  %8090 = fmul fast float %8085, %8089
  %8091 = bitcast float %7764 to i32
  %8092 = ashr i32 %8091, 1
  %8093 = sub nsw i32 1597463007, %8092
  %8094 = bitcast i32 %8093 to float
  %8095 = fmul fast float %8094, %7761
  %8096 = fmul fast float %8094, %7762
  %8097 = fmul fast float %8094, %7763
  %8098 = fsub fast float %8095, %5036
  %8099 = fsub fast float %8096, %5035
  %8100 = fsub fast float %8097, %5034
  %8101 = call float @dx.op.dot3.f32(i32 55, float %8098, float %8099, float %8100, float %8098, float %8099, float %8100)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = call float @dx.op.unary.f32(i32 25, float %8101)  ; Rsqrt(value)
  %8103 = fmul fast float %8098, %8102
  %8104 = fmul fast float %8099, %8102
  %8105 = fmul fast float %8100, %8102
  %8106 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %8103, float %8104, float %8105)  ; Dot3(ax,ay,az,bx,by,bz)
  %8107 = fmul fast float %8106, %8106
  %8108 = call float @dx.op.unary.f32(i32 6, float %8082)  ; FAbs(value)
  %8109 = fsub fast float 1.000000e+00, %5069
  %8110 = fmul fast float %5051, %5051
  %8111 = fmul fast float %8110, %8109
  %8112 = fadd fast float %8111, %5069
  %8113 = bitcast float %8112 to i32
  %8114 = ashr i32 %8113, 1
  %8115 = add nsw i32 %8114, 532487669
  %8116 = bitcast i32 %8115 to float
  %8117 = fadd fast float %8116, %5051
  %8118 = fmul fast float %5069, %8107
  %8119 = fsub fast float 1.000000e+00, %8107
  %8120 = fadd fast float %8119, %8118
  %8121 = fmul fast float %8108, %8108
  %8122 = fmul fast float %8121, %8109
  %8123 = fadd fast float %8122, %5069
  %8124 = bitcast float %8123 to i32
  %8125 = ashr i32 %8124, 1
  %8126 = add nsw i32 %8125, 532487669
  %8127 = bitcast i32 %8126 to float
  %8128 = fadd fast float %8127, %8108
  %8129 = fmul fast float %8120, %8120
  %8130 = fmul fast float %8129, %8117
  %8131 = fmul fast float %8130, %8128
  %8132 = fdiv fast float 1.000000e+00, %8131
  %8133 = bitcast float %5069 to i32
  %8134 = sitofp i32 %8133 to float
  %8135 = fmul fast float %8134, 0x3FE7F73180000000
  %8136 = fadd fast float %8135, 0x41AFE27C40000000
  %8137 = fptosi float %8136 to i32
  %8138 = bitcast i32 %8137 to float
  %8139 = fmul fast float %7730, 0x3FD80E9D60000000
  %8140 = fmul fast float %8139, %8094
  %8141 = fadd fast float %8138, %8140
  %8142 = bitcast float %8141 to i32
  %8143 = sub nsw i32 2129859010, %8142
  %8144 = bitcast i32 %8143 to float
  %8145 = fmul fast float %5069, %8132
  %8146 = fmul fast float %8145, %8138
  %8147 = fmul fast float %8146, %8144
  %8148 = call float @dx.op.unary.f32(i32 6, float %8083)  ; FAbs(value)
  %8149 = fsub fast float 1.000000e+00, %8148
  %8150 = bitcast float %8149 to i32
  %8151 = sitofp i32 %8150 to float
  %8152 = fmul fast float %8151, 5.000000e+00
  %8153 = fadd fast float %8152, 0xC1EFBF8940000000
  %8154 = fptosi float %8153 to i32
  %8155 = bitcast i32 %8154 to float
  %8156 = fsub fast float 1.000000e+00, %5040
  %8157 = fsub fast float 1.000000e+00, %5041
  %8158 = fsub fast float 1.000000e+00, %5049
  %8159 = fmul fast float %8155, %8156
  %8160 = fmul fast float %8155, %8157
  %8161 = fmul fast float %8155, %8158
  %8162 = fadd fast float %8159, %5040
  %8163 = fadd fast float %8160, %5041
  %8164 = fadd fast float %8161, %5049
  br i1 %5323, label %8165, label %8188

; <label>:8165                                    ; preds = %8054
  %8166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3842, float %8148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8167 = extractvalue %dx.types.ResRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.ResRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.ResRet.f32 %8166, 2
  %8170 = fadd fast float %8167, -5.000000e-01
  %8171 = fadd fast float %8168, -5.000000e-01
  %8172 = fadd fast float %8169, -5.000000e-01
  %8173 = fmul fast float %5040, 4.000000e+00
  %8174 = fmul fast float %8173, %8156
  %8175 = fmul fast float %8174, %8170
  %8176 = fmul fast float %5041, 4.000000e+00
  %8177 = fmul fast float %8176, %8157
  %8178 = fmul fast float %8177, %8171
  %8179 = fmul fast float %5049, 4.000000e+00
  %8180 = fmul fast float %8179, %8158
  %8181 = fmul fast float %8180, %8172
  %8182 = fadd fast float %8175, %8162
  %8183 = fadd fast float %8178, %8163
  %8184 = fadd fast float %8181, %8164
  %8185 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8186 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8187 = call float @dx.op.unary.f32(i32 7, float %8184)  ; Saturate(value)
  br label %8188

; <label>:8188                                    ; preds = %8165, %8054
  %8189 = phi float [ %8185, %8165 ], [ %8162, %8054 ]
  %8190 = phi float [ %8186, %8165 ], [ %8163, %8054 ]
  %8191 = phi float [ %8187, %8165 ], [ %8164, %8054 ]
  %8192 = fmul fast float %8082, 9.843750e-01
  %8193 = fadd fast float %8192, 7.812500e-03
  %8194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8193, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8195 = extractvalue %dx.types.ResRet.f32 %8194, 2
  %8196 = extractvalue %dx.types.ResRet.f32 %8194, 3
  %8197 = fmul fast float %8195, %5040
  %8198 = fmul fast float %8195, %5041
  %8199 = fmul fast float %8195, %5049
  %8200 = fadd fast float %8197, %8196
  %8201 = fadd fast float %8198, %8196
  %8202 = fadd fast float %8199, %8196
  br i1 %5323, label %8203, label %8226

; <label>:8203                                    ; preds = %8188
  %8204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3842, float %8082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8205 = extractvalue %dx.types.ResRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.ResRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.ResRet.f32 %8204, 2
  %8208 = fadd fast float %8205, -5.000000e-01
  %8209 = fadd fast float %8206, -5.000000e-01
  %8210 = fadd fast float %8207, -5.000000e-01
  %8211 = fmul fast float %5040, 4.000000e+00
  %8212 = fmul fast float %8211, %8156
  %8213 = fmul fast float %8212, %8208
  %8214 = fmul fast float %5041, 4.000000e+00
  %8215 = fmul fast float %8214, %8157
  %8216 = fmul fast float %8215, %8209
  %8217 = fmul fast float %5049, 4.000000e+00
  %8218 = fmul fast float %8217, %8158
  %8219 = fmul fast float %8218, %8210
  %8220 = fadd fast float %8213, %8200
  %8221 = fadd fast float %8216, %8201
  %8222 = fadd fast float %8219, %8202
  %8223 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8224 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8225 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  br label %8226

; <label>:8226                                    ; preds = %8203, %8188
  %8227 = phi float [ %8223, %8203 ], [ %8200, %8188 ]
  %8228 = phi float [ %8224, %8203 ], [ %8201, %8188 ]
  %8229 = phi float [ %8225, %8203 ], [ %8202, %8188 ]
  %8230 = call float @dx.op.binary.f32(i32 35, float %8228, float %8229)  ; FMax(a,b)
  %8231 = call float @dx.op.binary.f32(i32 35, float %8227, float %8230)  ; FMax(a,b)
  %8232 = fsub fast float 1.000000e+00, %8231
  %8233 = fmul fast float %8189, %8147
  %8234 = fmul fast float %8190, %8147
  %8235 = fmul fast float %8191, %8147
  %8236 = fsub fast float 1.000000e+00, %8083
  %8237 = bitcast float %8236 to i32
  %8238 = sitofp i32 %8237 to float
  %8239 = fmul fast float %8238, 5.000000e+00
  %8240 = fadd fast float %8239, 0xC1EFBF8940000000
  %8241 = fptosi float %8240 to i32
  %8242 = bitcast i32 %8241 to float
  %8243 = fmul fast float %8242, %3843
  %8244 = fmul fast float %8232, %8243
  %8245 = fmul fast float %8244, %5865
  %8246 = fmul fast float %8244, %5866
  %8247 = fmul fast float %8244, %5867
  %8248 = fadd fast float %8245, %8233
  %8249 = fadd fast float %8246, %8234
  %8250 = fadd fast float %8247, %8235
  %8251 = fmul fast float %8071, %3839
  %8252 = fmul fast float %8251, %8090
  %8253 = fmul fast float %8252, %8232
  %8254 = fmul fast float %8072, %3839
  %8255 = fmul fast float %8254, %8090
  %8256 = fmul fast float %8255, %8232
  %8257 = fmul fast float %8073, %3839
  %8258 = fmul fast float %8257, %8090
  %8259 = fmul fast float %8258, %8232
  %8260 = fadd fast float %8253, %7704
  %8261 = fadd fast float %8256, %7705
  %8262 = fadd fast float %8259, %7706
  %8263 = fmul fast float %8252, %8248
  %8264 = fmul fast float %8255, %8249
  %8265 = fmul fast float %8258, %8250
  %8266 = fadd fast float %8263, %7701
  %8267 = fadd fast float %8264, %7702
  %8268 = fadd fast float %8265, %7703
  br label %7833

; <label>:8269                                    ; preds = %7833
  br label %8270

; <label>:8270                                    ; preds = %8269, %7667
  %8271 = phi float [ %7669, %7667 ], [ %7834, %8269 ]
  %8272 = phi float [ %7670, %7667 ], [ %7835, %8269 ]
  %8273 = phi float [ %7671, %7667 ], [ %7836, %8269 ]
  %8274 = phi float [ %7672, %7667 ], [ %7837, %8269 ]
  %8275 = phi float [ %7673, %7667 ], [ %7838, %8269 ]
  %8276 = phi float [ %7674, %7667 ], [ %7839, %8269 ]
  %8277 = add i32 %7668, 1
  %8278 = icmp ugt i32 %8277, %7664
  br i1 %8278, label %8279, label %7667

; <label>:8279                                    ; preds = %8270
  br label %8280

; <label>:8280                                    ; preds = %8279, %7617, %7607
  %8281 = phi float [ %7608, %7607 ], [ %7608, %7617 ], [ %8271, %8279 ]
  %8282 = phi float [ %7609, %7607 ], [ %7609, %7617 ], [ %8272, %8279 ]
  %8283 = phi float [ %7610, %7607 ], [ %7610, %7617 ], [ %8273, %8279 ]
  %8284 = phi float [ %7611, %7607 ], [ %7611, %7617 ], [ %8274, %8279 ]
  %8285 = phi float [ %7612, %7607 ], [ %7612, %7617 ], [ %8275, %8279 ]
  %8286 = phi float [ %7613, %7607 ], [ %7613, %7617 ], [ %8276, %8279 ]
  %8287 = fmul fast float %3839, %3839
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = fmul fast float %8289, %5871
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8293 = fsub fast float 1.000000e+00, %3847
  %8294 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  %8295 = fadd fast float %8286, %3845
  %8296 = fmul fast float %8295, %3847
  %8297 = fmul fast float %8294, %8292
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 3
  %8300 = fmul fast float %8284, %5037
  %8301 = fmul fast float %8285, %5038
  %8302 = fmul fast float %8286, %5039
  %8303 = fcmp fast ogt float %108, %226
  %8304 = and i1 %8303, %4250
  %8305 = or i1 %4256, %8304
  %8306 = icmp eq i32 %4249, 2
  %8307 = fcmp fast ole float %108, %226
  %8308 = and i1 %8307, %8306
  %8309 = or i1 %8308, %8305
  br i1 %8304, label %8310, label %8567

; <label>:8310                                    ; preds = %8280
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 2
  %8313 = extractvalue %dx.types.CBufRet.f32 %8311, 3
  %8314 = fmul fast float %8312, %121
  %8315 = fmul fast float %8313, %122
  %8316 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  %8317 = call float @dx.op.unary.f32(i32 7, float %8315)  ; Saturate(value)
  %8318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8316, float %8317, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8319 = extractvalue %dx.types.ResRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.ResRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.ResRet.f32 %8318, 2
  %8322 = extractvalue %dx.types.ResRet.f32 %8318, 3
  %8323 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8316, float %8317, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8324 = extractvalue %dx.types.ResRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.ResRet.f32 %8323, 1
  %8326 = extractvalue %dx.types.ResRet.f32 %8323, 2
  %8327 = extractvalue %dx.types.ResRet.f32 %8323, 3
  %8328 = call float @dx.op.binary.f32(i32 35, float %8320, float %8321)  ; FMax(a,b)
  %8329 = call float @dx.op.binary.f32(i32 35, float %8319, float %8328)  ; FMax(a,b)
  %8330 = call float @dx.op.binary.f32(i32 35, float %8329, float %8322)  ; FMax(a,b)
  %8331 = call float @dx.op.binary.f32(i32 36, float %8325, float %8326)  ; FMin(a,b)
  %8332 = call float @dx.op.binary.f32(i32 36, float %8324, float %8331)  ; FMin(a,b)
  %8333 = call float @dx.op.binary.f32(i32 36, float %8332, float %8327)  ; FMin(a,b)
  %8334 = fmul fast float %8330, 2.550000e+02
  %8335 = fadd fast float %8334, 0x3F70101020000000
  %8336 = fptoui float %8335 to i32
  %8337 = fmul fast float %8333, 2.550000e+02
  %8338 = fadd fast float %8337, 0x3F70101020000000
  %8339 = fptoui float %8338 to i32
  %8340 = icmp ult i32 %8336, %8339
  br i1 %8340, label %8341, label %8509

; <label>:8341                                    ; preds = %8310
  %8342 = fcmp fast ogt float %107, 9.843750e-01
  %8343 = fadd fast float %108, -4.000000e+00
  %8344 = select i1 %8342, float -4.000000e+00, float %8343
  %8345 = call float @dx.op.binary.f32(i32 35, float %8344, float 0.000000e+00)  ; FMax(a,b)
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = fadd fast float %8347, %8345
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = fmul fast float %8348, %8349
  %8351 = call float @dx.op.unary.f32(i32 23, float %8350)  ; Log(value)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8346, 3
  %8353 = fmul fast float %8352, %8351
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8356 = fmul fast float %8353, %8355
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = uitofp i32 %8336 to float
  %8359 = uitofp i32 %8339 to float
  %8360 = fadd fast float %8358, 5.000000e-01
  %8361 = fadd fast float %8359, 5.000000e-01
  %8362 = fmul fast float %8355, %8360
  %8363 = fmul fast float %8355, %8361
  %8364 = fadd fast float %8362, 0x3F0FFB4800000000
  %8365 = fadd fast float %8363, 0xBF0FFB4800000000
  %8366 = call float @dx.op.binary.f32(i32 35, float %8357, float %8364)  ; FMax(a,b)
  %8367 = call float @dx.op.binary.f32(i32 36, float %8366, float %8365)  ; FMin(a,b)
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8368, 2
  %8371 = extractvalue %dx.types.CBufRet.f32 %8368, 0
  %8372 = fmul fast float %8369, %8367
  %8373 = fadd fast float %8371, %8372
  %8374 = fadd fast float %8371, %8370
  %8375 = fsub fast float %8369, %8370
  %8376 = fadd fast float %8375, %8371
  %8377 = call float @dx.op.binary.f32(i32 35, float %8373, float %8374)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8377, float %8376)  ; FMin(a,b)
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8316, float %8317, float %8378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.ResRet.f32 %8379, 2
  %8383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.i32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.i32 %8383, 1
  %8386 = uitofp i32 %8384 to float
  %8387 = uitofp i32 %8385 to float
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.CBufRet.f32 %8388, 1
  %8391 = fmul fast float %8386, %8316
  %8392 = fmul fast float %8387, %8317
  %8393 = fadd fast float %8391, -5.000000e-01
  %8394 = fadd fast float %8392, -5.000000e-01
  %8395 = call float @dx.op.unary.f32(i32 22, float %8393)  ; Frc(value)
  %8396 = call float @dx.op.unary.f32(i32 22, float %8394)  ; Frc(value)
  %8397 = fmul fast float %8395, %8395
  %8398 = fmul fast float %8397, %8395
  %8399 = fsub fast float 3.000000e+00, %8395
  %8400 = fmul fast float %8397, %8399
  %8401 = fmul fast float %8395, 3.000000e+00
  %8402 = fmul fast float %8398, 3.000000e+00
  %8403 = fmul fast float %8397, 6.000000e+00
  %8404 = fsub fast float %8402, %8403
  %8405 = fadd fast float %8404, 4.000000e+00
  %8406 = fmul fast float %8405, 0x3FC5555560000000
  %8407 = fmul fast float %8398, -3.000000e+00
  %8408 = fadd fast float %8397, %8395
  %8409 = fmul fast float %8408, 3.000000e+00
  %8410 = fadd fast float %8407, 1.000000e+00
  %8411 = fadd fast float %8410, %8409
  %8412 = fmul fast float %8398, 0x3FC5555560000000
  %8413 = fmul fast float %8396, %8396
  %8414 = fmul fast float %8413, %8396
  %8415 = fsub fast float 3.000000e+00, %8396
  %8416 = fmul fast float %8413, %8415
  %8417 = fmul fast float %8396, 3.000000e+00
  %8418 = fmul fast float %8414, 3.000000e+00
  %8419 = fmul fast float %8413, 6.000000e+00
  %8420 = fsub fast float %8418, %8419
  %8421 = fadd fast float %8420, 4.000000e+00
  %8422 = fmul fast float %8421, 0x3FC5555560000000
  %8423 = fmul fast float %8414, -3.000000e+00
  %8424 = fadd fast float %8413, %8396
  %8425 = fmul fast float %8424, 3.000000e+00
  %8426 = fadd fast float %8423, 1.000000e+00
  %8427 = fadd fast float %8426, %8425
  %8428 = fmul fast float %8414, 0x3FC5555560000000
  %8429 = fadd fast float %8395, 1.000000e+00
  %8430 = fsub fast float 1.000000e+00, %8401
  %8431 = fadd fast float %8430, %8400
  %8432 = fadd fast float %8431, %8405
  %8433 = fmul fast float %8432, 0x3FC5555560000000
  %8434 = fdiv fast float %8406, %8433
  %8435 = fsub fast float %8429, %8434
  %8436 = fsub fast float 1.000000e+00, %8395
  %8437 = fadd fast float %8411, %8398
  %8438 = fmul fast float %8437, 0x3FC5555560000000
  %8439 = fdiv fast float %8412, %8438
  %8440 = fadd fast float %8436, %8439
  %8441 = fadd fast float %8396, 1.000000e+00
  %8442 = fsub fast float 1.000000e+00, %8417
  %8443 = fadd fast float %8442, %8416
  %8444 = fadd fast float %8443, %8421
  %8445 = fmul fast float %8444, 0x3FC5555560000000
  %8446 = fdiv fast float %8422, %8445
  %8447 = fsub fast float %8441, %8446
  %8448 = fsub fast float 1.000000e+00, %8396
  %8449 = fadd fast float %8427, %8414
  %8450 = fmul fast float %8449, 0x3FC5555560000000
  %8451 = fdiv fast float %8428, %8450
  %8452 = fadd fast float %8451, %8448
  %8453 = fmul fast float %8435, %8389
  %8454 = fsub fast float %8316, %8453
  %8455 = fmul fast float %8440, %8389
  %8456 = fadd fast float %8455, %8316
  %8457 = fmul fast float %8452, %8390
  %8458 = fadd fast float %8457, %8317
  %8459 = fmul fast float %8447, %8390
  %8460 = fsub fast float %8317, %8459
  %8461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8454, float %8460, float %8378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8462 = extractvalue %dx.types.ResRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.ResRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.ResRet.f32 %8461, 2
  %8465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8456, float %8460, float %8378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8466 = extractvalue %dx.types.ResRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.ResRet.f32 %8465, 1
  %8468 = extractvalue %dx.types.ResRet.f32 %8465, 2
  %8469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8454, float %8458, float %8378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8456, float %8458, float %8378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8474 = extractvalue %dx.types.ResRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.ResRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.ResRet.f32 %8473, 2
  %8477 = fsub fast float %8470, %8462
  %8478 = fsub fast float %8471, %8463
  %8479 = fsub fast float %8472, %8464
  %8480 = fmul fast float %8477, %8450
  %8481 = fmul fast float %8478, %8450
  %8482 = fmul fast float %8479, %8450
  %8483 = fadd fast float %8480, %8462
  %8484 = fadd fast float %8481, %8463
  %8485 = fadd fast float %8482, %8464
  %8486 = fsub fast float %8474, %8466
  %8487 = fsub fast float %8475, %8467
  %8488 = fsub fast float %8476, %8468
  %8489 = fmul fast float %8486, %8450
  %8490 = fmul fast float %8487, %8450
  %8491 = fmul fast float %8488, %8450
  %8492 = fsub fast float %8466, %8483
  %8493 = fadd fast float %8492, %8489
  %8494 = fsub fast float %8467, %8484
  %8495 = fadd fast float %8494, %8490
  %8496 = fsub fast float %8468, %8485
  %8497 = fadd fast float %8496, %8491
  %8498 = fmul fast float %8493, %8438
  %8499 = fmul fast float %8495, %8438
  %8500 = fmul fast float %8497, %8438
  %8501 = fadd fast float %8498, %8483
  %8502 = fadd fast float %8499, %8484
  %8503 = fadd fast float %8500, %8485
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8506 = fmul fast float %8501, %8505
  %8507 = fmul fast float %8502, %8505
  %8508 = fmul fast float %8503, %8505
  br label %8509

; <label>:8509                                    ; preds = %8341, %8310
  %8510 = phi float [ %8380, %8341 ], [ 1.000000e+00, %8310 ]
  %8511 = phi float [ %8381, %8341 ], [ 1.000000e+00, %8310 ]
  %8512 = phi float [ %8382, %8341 ], [ 1.000000e+00, %8310 ]
  %8513 = phi float [ %8506, %8341 ], [ 0.000000e+00, %8310 ]
  %8514 = phi float [ %8507, %8341 ], [ 0.000000e+00, %8310 ]
  %8515 = phi float [ %8508, %8341 ], [ 0.000000e+00, %8310 ]
  %8516 = fmul fast float %8513, %8287
  %8517 = fmul fast float %8514, %8287
  %8518 = fmul fast float %8515, %8287
  %8519 = call float @dx.op.dot3.f32(i32 55, float %8510, float %8511, float %8512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8520 = call float @dx.op.dot3.f32(i32 55, float %8516, float %8517, float %8518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8521 = select i1 %263, float %8519, float %8510
  %8522 = select i1 %263, float %8519, float %8511
  %8523 = select i1 %263, float 1.000000e+00, float %8512
  %8524 = select i1 %263, float %8520, float %8516
  %8525 = select i1 %263, float 0.000000e+00, float %8517
  %8526 = select i1 %263, float 0.000000e+00, float %8518
  %8527 = fmul fast float %8521, %8300
  %8528 = fmul fast float %8522, %8301
  %8529 = fmul fast float %8523, %8302
  %8530 = fadd fast float %8527, %8524
  %8531 = fadd fast float %8528, %8525
  %8532 = fadd fast float %8526, %8529
  %8533 = fmul fast float %8521, %8281
  %8534 = fmul fast float %8522, %8282
  %8535 = fmul fast float %8523, %8283
  %8536 = fmul fast float %153, %8312
  %8537 = fmul fast float %155, %8313
  %8538 = fsub fast float 1.000000e+00, %8536
  %8539 = fsub fast float 1.000000e+00, %8537
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8543 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8544 = fmul fast float %8538, %8541
  %8545 = fmul fast float %8538, %8542
  %8546 = fmul fast float %8538, %8543
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8551 = fmul fast float %8539, %8548
  %8552 = fmul fast float %8539, %8549
  %8553 = fmul fast float %8539, %8550
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8556 = extractvalue %dx.types.CBufRet.f32 %8554, 1
  %8557 = extractvalue %dx.types.CBufRet.f32 %8554, 2
  %8558 = fadd fast float %8551, %8555
  %8559 = fadd fast float %8558, %8544
  %8560 = fadd fast float %8552, %8556
  %8561 = fadd fast float %8560, %8545
  %8562 = fadd fast float %8553, %8557
  %8563 = fadd fast float %8562, %8546
  %8564 = fmul fast float %8559, %226
  %8565 = fmul fast float %8561, %226
  %8566 = fmul fast float %8563, %226
  br label %8567

; <label>:8567                                    ; preds = %8509, %8280
  %8568 = phi float [ %8564, %8509 ], [ %204, %8280 ]
  %8569 = phi float [ %8565, %8509 ], [ %205, %8280 ]
  %8570 = phi float [ %8566, %8509 ], [ %206, %8280 ]
  %8571 = phi float [ %226, %8509 ], [ %108, %8280 ]
  %8572 = phi float [ %8530, %8509 ], [ %8300, %8280 ]
  %8573 = phi float [ %8531, %8509 ], [ %8301, %8280 ]
  %8574 = phi float [ %8532, %8509 ], [ %8302, %8280 ]
  %8575 = phi float [ %8533, %8509 ], [ %8281, %8280 ]
  %8576 = phi float [ %8534, %8509 ], [ %8282, %8280 ]
  %8577 = phi float [ %8535, %8509 ], [ %8283, %8280 ]
  %8578 = phi float [ %8510, %8509 ], [ 1.000000e+00, %8280 ]
  br i1 %8309, label %9733, label %8579

; <label>:8579                                    ; preds = %8567
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = extractvalue %dx.types.CBufRet.f32 %8585, 3
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.f32 %8590, 1
  %8593 = extractvalue %dx.types.CBufRet.f32 %8590, 2
  %8594 = extractvalue %dx.types.CBufRet.f32 %8590, 3
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.CBufRet.f32 %8595, 1
  %8598 = extractvalue %dx.types.CBufRet.f32 %8595, 2
  %8599 = extractvalue %dx.types.CBufRet.f32 %8595, 3
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 3
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 3
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8606 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8607 = fcmp fast olt float %8606, -5.000000e-01
  %8608 = call float @dx.op.dot3.f32(i32 55, float %8568, float %8569, float %8570, float %8568, float %8569, float %8570)  ; Dot3(ax,ay,az,bx,by,bz)
  %8609 = call float @dx.op.unary.f32(i32 25, float %8608)  ; Rsqrt(value)
  %8610 = fmul fast float %8609, %8608
  %8611 = fmul fast float %8609, %8568
  %8612 = fmul fast float %8609, %8569
  %8613 = fmul fast float %8609, %8570
  %8614 = fadd fast float %8610, %8584
  %8615 = call float @dx.op.dot3.f32(i32 55, float %8611, float %8612, float %8613, float %8581, float %8582, float %8583)  ; Dot3(ax,ay,az,bx,by,bz)
  %8616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.i32 %8616, 1
  %8618 = and i32 %8617, 1
  %8619 = icmp ne i32 %8618, 0
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 2
  %8622 = fcmp fast ogt float %8621, 0.000000e+00
  %8623 = and i1 %8619, %8622
  br i1 %8623, label %8624, label %9030, !dx.controlflow.hints !140

; <label>:8624                                    ; preds = %8579
  %8625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8625, 3
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 2
  %8631 = fsub fast float %8628, %8630
  %8632 = and i32 %8617, 2
  %8633 = extractvalue %dx.types.CBufRet.i32 %8616, 0
  %8634 = call i32 @dx.op.binary.i32(i32 40, i32 %8633, i32 3)  ; UMin(a,b)
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.CBufRet.f32 %8635, 1
  %8638 = extractvalue %dx.types.CBufRet.f32 %8629, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8629, 1
  %8640 = fsub fast float %8636, %8638
  %8641 = fsub fast float %8637, %8639
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = fcmp fast ogt float %8643, 0.000000e+00
  %8645 = fsub fast float -0.000000e+00, %8640
  %8646 = fsub fast float -0.000000e+00, %8641
  %8647 = call float @dx.op.dot2.f32(i32 54, float %8611, float %8612, float %8611, float %8612)  ; Dot2(ax,ay,bx,by)
  %8648 = call float @dx.op.dot2.f32(i32 54, float %8611, float %8612, float %8645, float %8646)  ; Dot2(ax,ay,bx,by)
  %8649 = fmul fast float %8648, 2.000000e+00
  %8650 = call float @dx.op.dot2.f32(i32 54, float %8645, float %8646, float %8645, float %8646)  ; Dot2(ax,ay,bx,by)
  %8651 = fmul fast float %8643, %8643
  %8652 = fsub fast float %8650, %8651
  %8653 = fmul fast float %8649, %8649
  %8654 = fmul fast float %8647, 4.000000e+00
  %8655 = fmul fast float %8654, %8652
  %8656 = fsub fast float %8653, %8655
  %8657 = fcmp fast ogt float %8656, 0.000000e+00
  br i1 %8657, label %8658, label %8673

; <label>:8658                                    ; preds = %8624
  %8659 = fcmp fast ogt float %8649, 0.000000e+00
  %8660 = call float @dx.op.unary.f32(i32 24, float %8656)  ; Sqrt(value)
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = select i1 %8659, float %8660, float %8661
  %8663 = fadd fast float %8662, %8649
  %8664 = fmul float %8663, -5.000000e-01
  %8665 = fdiv fast float %8664, %8647
  %8666 = call float @dx.op.binary.f32(i32 35, float %8665, float 0.000000e+00)  ; FMax(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8610, float %8666)  ; FMin(a,b)
  %8668 = fdiv fast float %8652, %8664
  %8669 = call float @dx.op.binary.f32(i32 35, float %8668, float 0.000000e+00)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 36, float %8610, float %8669)  ; FMin(a,b)
  %8671 = call float @dx.op.binary.f32(i32 36, float %8667, float %8670)  ; FMin(a,b)
  %8672 = call float @dx.op.binary.f32(i32 35, float %8667, float %8670)  ; FMax(a,b)
  br label %8673

; <label>:8673                                    ; preds = %8658, %8624
  %8674 = phi float [ %8672, %8658 ], [ -1.000000e+00, %8624 ]
  %8675 = phi float [ %8671, %8658 ], [ -1.000000e+00, %8624 ]
  %8676 = phi i1 [ true, %8658 ], [ false, %8624 ]
  %8677 = and i1 %8644, %8676
  br i1 %8677, label %8678, label %8680

; <label>:8678                                    ; preds = %8673
  %8679 = fcmp fast oeq float %8675, %8674
  br i1 %8679, label %8983, label %8681

; <label>:8680                                    ; preds = %8673
  br i1 %8644, label %8983, label %8681

; <label>:8681                                    ; preds = %8680, %8678
  %8682 = phi float [ %8610, %8680 ], [ %8674, %8678 ]
  %8683 = phi float [ 0.000000e+00, %8680 ], [ %8675, %8678 ]
  %8684 = icmp ne i32 %8632, 0
  %8685 = fmul fast float %8682, %8613
  %8686 = fadd fast float %8685, %8626
  %8687 = fmul fast float %8686, %8682
  %8688 = select i1 %8684, float 0.000000e+00, float %8687
  %8689 = fcmp fast oeq float %8613, 0.000000e+00
  %8690 = fdiv fast float %8631, %8613
  %8691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8690)  ; FMax(a,b)
  %8692 = select i1 %8689, float %8682, float %8691
  %8693 = call float @dx.op.binary.f32(i32 36, float %8682, float %8692)  ; FMin(a,b)
  %8694 = fcmp fast ogt float %8613, 0.000000e+00
  %8695 = fcmp fast olt float %8631, 0.000000e+00
  br i1 %8694, label %8696, label %8753

; <label>:8696                                    ; preds = %8681
  %8697 = icmp eq i32 %8632, 0
  br i1 %8695, label %8698, label %8742

; <label>:8698                                    ; preds = %8696
  %8699 = select i1 %8697, float %8682, float 0.000000e+00
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = call float @dx.op.unary.f32(i32 6, float %8700)  ; FAbs(value)
  %8702 = fmul fast float %8699, %8613
  %8703 = fadd fast float %8702, %8626
  %8704 = fmul fast float %8701, %8703
  %8705 = fsub fast float %8688, %8704
  %8706 = fsub fast float %8682, %8701
  %8707 = select i1 %8697, float %8706, float 0.000000e+00
  %8708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.f32 %8708, 0
  %8710 = extractvalue %dx.types.CBufRet.f32 %8708, 1
  %8711 = extractvalue %dx.types.CBufRet.f32 %8708, 2
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 0
  %8714 = extractvalue %dx.types.CBufRet.f32 %8712, 1
  %8715 = extractvalue %dx.types.CBufRet.f32 %8712, 2
  %8716 = extractvalue %dx.types.CBufRet.f32 %8712, 3
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 3
  %8719 = call float @dx.op.binary.f32(i32 36, float %8705, float %8718)  ; FMin(a,b)
  %8720 = fmul fast float %8716, %8707
  %8721 = call float @dx.op.unary.f32(i32 7, float %8720)  ; Saturate(value)
  %8722 = fsub fast float %8713, %8709
  %8723 = fsub fast float %8714, %8710
  %8724 = fsub fast float %8715, %8711
  %8725 = fmul fast float %8721, %8722
  %8726 = fmul fast float %8721, %8723
  %8727 = fmul fast float %8721, %8724
  %8728 = fadd fast float %8725, %8709
  %8729 = fadd fast float %8726, %8710
  %8730 = fadd fast float %8727, %8711
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.CBufRet.f32 %8731, 1
  %8734 = fadd fast float %8733, %8732
  %8735 = call float @dx.op.unary.f32(i32 7, float %8734)  ; Saturate(value)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8731, 2
  %8737 = extractvalue %dx.types.CBufRet.f32 %8731, 3
  %8738 = fadd fast float %8737, %8736
  %8739 = call float @dx.op.unary.f32(i32 7, float %8738)  ; Saturate(value)
  %8740 = fmul fast float %8735, %8719
  %8741 = fmul fast float %8740, %8739
  br label %8983

; <label>:8742                                    ; preds = %8696
  br i1 %8697, label %8743, label %8764

; <label>:8743                                    ; preds = %8742
  %8744 = call float @dx.op.binary.f32(i32 36, float %8693, float %8683)  ; FMin(a,b)
  %8745 = fsub fast float %8693, %8744
  %8746 = fsub fast float %8745, %8682
  %8747 = call float @dx.op.unary.f32(i32 6, float %8746)  ; FAbs(value)
  %8748 = fadd fast float %8745, %8682
  %8749 = fmul fast float %8748, %8613
  %8750 = fadd fast float %8749, %8626
  %8751 = fmul fast float %8750, %8747
  %8752 = fsub fast float %8688, %8751
  br label %8764

; <label>:8753                                    ; preds = %8681
  br i1 %8695, label %8754, label %8764

; <label>:8754                                    ; preds = %8753
  %8755 = call float @dx.op.binary.f32(i32 35, float %8683, float %8693)  ; FMax(a,b)
  %8756 = icmp eq i32 %8632, 0
  %8757 = select i1 %8756, float %8693, float 0.000000e+00
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = call float @dx.op.unary.f32(i32 6, float %8758)  ; FAbs(value)
  %8760 = fmul fast float %8757, %8613
  %8761 = fadd fast float %8760, %8626
  %8762 = fmul fast float %8759, %8761
  %8763 = fsub fast float %8688, %8762
  br label %8764

; <label>:8764                                    ; preds = %8754, %8753, %8743, %8742
  %8765 = phi float [ %8683, %8742 ], [ %8683, %8743 ], [ %8755, %8754 ], [ %8683, %8753 ]
  %8766 = phi float [ 0.000000e+00, %8742 ], [ %8747, %8743 ], [ %8759, %8754 ], [ 0.000000e+00, %8753 ]
  %8767 = phi float [ %8688, %8742 ], [ %8752, %8743 ], [ %8763, %8754 ], [ %8688, %8753 ]
  %8768 = phi float [ %8693, %8742 ], [ %8693, %8743 ], [ %8682, %8754 ], [ %8682, %8753 ]
  %8769 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8769, align 4, !tbaa !126, !noalias !141
  %8770 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8770, align 4, !tbaa !126, !noalias !141
  %8771 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8771, align 4, !tbaa !126, !noalias !141
  %8772 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 0
  store float -1.000000e+00, float* %8772, align 4, !tbaa !126, !noalias !141
  %8773 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 1
  store float -1.000000e+00, float* %8773, align 4, !tbaa !126, !noalias !141
  %8774 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 2
  store float -1.000000e+00, float* %8774, align 4, !tbaa !126, !noalias !141
  %8775 = icmp sgt i32 %8634, 0
  br i1 %8775, label %8776, label %8837

; <label>:8776                                    ; preds = %8764
  br label %8777

; <label>:8777                                    ; preds = %8826, %8776
  %8778 = phi i32 [ %8827, %8826 ], [ 0, %8776 ]
  %8779 = phi i32 [ %8828, %8826 ], [ 0, %8776 ]
  %8780 = add nuw i32 %8779, 171
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8780)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8783 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  %8786 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8787 = fsub fast float %8782, %8785
  %8788 = fsub fast float %8783, %8786
  %8789 = extractvalue %dx.types.CBufRet.f32 %8781, 2
  %8790 = fsub fast float -0.000000e+00, %8787
  %8791 = fsub fast float -0.000000e+00, %8788
  %8792 = call float @dx.op.dot2.f32(i32 54, float %8611, float %8612, float %8790, float %8791)  ; Dot2(ax,ay,bx,by)
  %8793 = fmul fast float %8792, 2.000000e+00
  %8794 = call float @dx.op.dot2.f32(i32 54, float %8790, float %8791, float %8790, float %8791)  ; Dot2(ax,ay,bx,by)
  %8795 = fmul fast float %8789, %8789
  %8796 = fsub fast float %8794, %8795
  %8797 = fmul fast float %8793, %8793
  %8798 = fmul fast float %8654, %8796
  %8799 = fsub fast float %8797, %8798
  %8800 = fcmp fast ogt float %8799, 0.000000e+00
  br i1 %8800, label %8801, label %8816

; <label>:8801                                    ; preds = %8777
  %8802 = fcmp fast ogt float %8793, 0.000000e+00
  %8803 = call float @dx.op.unary.f32(i32 24, float %8799)  ; Sqrt(value)
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = select i1 %8802, float %8803, float %8804
  %8806 = fadd fast float %8805, %8793
  %8807 = fmul float %8806, -5.000000e-01
  %8808 = fdiv fast float %8807, %8647
  %8809 = call float @dx.op.binary.f32(i32 35, float %8808, float 0.000000e+00)  ; FMax(a,b)
  %8810 = call float @dx.op.binary.f32(i32 36, float %8682, float %8809)  ; FMin(a,b)
  %8811 = fdiv fast float %8796, %8807
  %8812 = call float @dx.op.binary.f32(i32 35, float %8811, float 0.000000e+00)  ; FMax(a,b)
  %8813 = call float @dx.op.binary.f32(i32 36, float %8682, float %8812)  ; FMin(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8810, float %8813)  ; FMin(a,b)
  %8815 = call float @dx.op.binary.f32(i32 35, float %8810, float %8813)  ; FMax(a,b)
  br label %8816

; <label>:8816                                    ; preds = %8801, %8777
  %8817 = phi float [ %8815, %8801 ], [ -1.000000e+00, %8777 ]
  %8818 = phi float [ %8814, %8801 ], [ -1.000000e+00, %8777 ]
  %8819 = phi i1 [ true, %8801 ], [ false, %8777 ]
  br i1 %8819, label %8820, label %8826

; <label>:8820                                    ; preds = %8816
  %8821 = call float @dx.op.binary.f32(i32 35, float %8765, float %8818)  ; FMax(a,b)
  %8822 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8779
  store float %8821, float* %8822, align 4, !tbaa !126, !noalias !141
  %8823 = call float @dx.op.binary.f32(i32 35, float %8765, float %8817)  ; FMax(a,b)
  %8824 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8779
  store float %8823, float* %8824, align 4, !tbaa !126, !noalias !141
  %8825 = add nsw i32 %8778, 1
  br label %8826

; <label>:8826                                    ; preds = %8820, %8816
  %8827 = phi i32 [ %8825, %8820 ], [ %8778, %8816 ]
  %8828 = add nuw nsw i32 %8779, 1
  %8829 = icmp eq i32 %8828, %8634
  br i1 %8829, label %8830, label %8777

; <label>:8830                                    ; preds = %8826
  %8831 = load float, float* %8771, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8832 = load float, float* %8770, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %8833 = load float, float* %8769, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %8834 = load float, float* %8774, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8835 = load float, float* %8773, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %8836 = load float, float* %8772, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %8837

; <label>:8837                                    ; preds = %8830, %8764
  %8838 = phi float [ -1.000000e+00, %8764 ], [ %8836, %8830 ]
  %8839 = phi float [ -1.000000e+00, %8764 ], [ %8835, %8830 ]
  %8840 = phi float [ -1.000000e+00, %8764 ], [ %8834, %8830 ]
  %8841 = phi float [ -1.000000e+00, %8764 ], [ %8833, %8830 ]
  %8842 = phi float [ -1.000000e+00, %8764 ], [ %8832, %8830 ]
  %8843 = phi float [ -1.000000e+00, %8764 ], [ %8831, %8830 ]
  %8844 = phi i32 [ 0, %8764 ], [ %8827, %8830 ]
  %8845 = call float @dx.op.binary.f32(i32 36, float %8842, float %8843)  ; FMin(a,b)
  %8846 = call float @dx.op.binary.f32(i32 36, float %8841, float %8845)  ; FMin(a,b)
  %8847 = call float @dx.op.binary.f32(i32 35, float %8841, float %8842)  ; FMax(a,b)
  %8848 = call float @dx.op.binary.f32(i32 36, float %8847, float %8843)  ; FMin(a,b)
  %8849 = call float @dx.op.binary.f32(i32 36, float %8841, float %8842)  ; FMin(a,b)
  %8850 = call float @dx.op.binary.f32(i32 35, float %8849, float %8848)  ; FMax(a,b)
  %8851 = call float @dx.op.binary.f32(i32 35, float %8842, float %8843)  ; FMax(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float %8841, float %8851)  ; FMax(a,b)
  store float %8846, float* %8769, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %8850, float* %8770, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %8852, float* %8771, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8853 = call float @dx.op.binary.f32(i32 36, float %8839, float %8840)  ; FMin(a,b)
  %8854 = call float @dx.op.binary.f32(i32 36, float %8838, float %8853)  ; FMin(a,b)
  %8855 = call float @dx.op.binary.f32(i32 35, float %8838, float %8839)  ; FMax(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8855, float %8840)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8838, float %8839)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 35, float %8857, float %8856)  ; FMax(a,b)
  %8859 = call float @dx.op.binary.f32(i32 35, float %8839, float %8840)  ; FMax(a,b)
  %8860 = call float @dx.op.binary.f32(i32 35, float %8838, float %8859)  ; FMax(a,b)
  store float %8854, float* %8772, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %8858, float* %8773, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %8860, float* %8774, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8861 = sub nsw i32 3, %8844
  %8862 = icmp sgt i32 %8861, 2
  br i1 %8862, label %8863, label %8901

; <label>:8863                                    ; preds = %8837
  %8864 = icmp eq i32 %8632, 0
  %8865 = fsub fast float %8682, %8766
  %8866 = select i1 %8864, float %8865, float %8766
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.CBufRet.f32 %8867, 2
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 0
  %8873 = extractvalue %dx.types.CBufRet.f32 %8871, 1
  %8874 = extractvalue %dx.types.CBufRet.f32 %8871, 2
  %8875 = extractvalue %dx.types.CBufRet.f32 %8871, 3
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8878 = call float @dx.op.binary.f32(i32 36, float %8767, float %8877)  ; FMin(a,b)
  %8879 = fmul fast float %8875, %8866
  %8880 = call float @dx.op.unary.f32(i32 7, float %8879)  ; Saturate(value)
  %8881 = fsub fast float %8872, %8868
  %8882 = fsub fast float %8873, %8869
  %8883 = fsub fast float %8874, %8870
  %8884 = fmul fast float %8880, %8881
  %8885 = fmul fast float %8880, %8882
  %8886 = fmul fast float %8880, %8883
  %8887 = fadd fast float %8884, %8868
  %8888 = fadd fast float %8885, %8869
  %8889 = fadd fast float %8886, %8870
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8892 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8893 = fadd fast float %8892, %8891
  %8894 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8896 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8897 = fadd fast float %8896, %8895
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fmul fast float %8894, %8878
  %8900 = fmul fast float %8899, %8898
  br label %8983

; <label>:8901                                    ; preds = %8837
  %8902 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8861
  %8903 = load float, float* %8902, align 4, !tbaa !126, !noalias !141
  %8904 = fcmp fast olt float %8903, %8768
  %8905 = icmp sgt i32 %8844, 0
  %8906 = and i1 %8905, %8904
  br i1 %8906, label %8907, label %8944

; <label>:8907                                    ; preds = %8901
  br label %8908

; <label>:8908                                    ; preds = %8937, %8907
  %8909 = phi float [ %8938, %8937 ], [ %8766, %8907 ]
  %8910 = phi float [ %8939, %8937 ], [ %8767, %8907 ]
  %8911 = phi float [ %8919, %8937 ], [ %8903, %8907 ]
  %8912 = phi i32 [ %8916, %8937 ], [ %8861, %8907 ]
  %8913 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8912
  %8914 = load float, float* %8913, align 4, !tbaa !126, !noalias !141
  %8915 = icmp slt i32 %8912, 2
  %8916 = add nsw i32 %8912, 1
  %8917 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8916
  %8918 = load float, float* %8917, align 4, !tbaa !126, !noalias !141
  %8919 = select i1 %8915, float %8918, float %8682
  %8920 = call float @dx.op.binary.f32(i32 36, float %8919, float %8914)  ; FMin(a,b)
  %8921 = call float @dx.op.binary.f32(i32 36, float %8768, float %8920)  ; FMin(a,b)
  %8922 = icmp eq i32 %8632, 0
  %8923 = fadd fast float %8921, %8911
  %8924 = fmul fast float %8923, %8613
  %8925 = fadd fast float %8924, %8626
  br i1 %8922, label %8931, label %8926

; <label>:8926                                    ; preds = %8908
  %8927 = fsub fast float %8921, %8911
  %8928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8927)  ; FMax(a,b)
  %8929 = fmul fast float %8928, %8925
  %8930 = fadd fast float %8929, %8910
  br label %8937

; <label>:8931                                    ; preds = %8908
  %8932 = fsub fast float %8911, %8921
  %8933 = call float @dx.op.unary.f32(i32 6, float %8932)  ; FAbs(value)
  %8934 = fadd fast float %8933, %8909
  %8935 = fmul fast float %8933, %8925
  %8936 = fsub fast float %8910, %8935
  br label %8937

; <label>:8937                                    ; preds = %8931, %8926
  %8938 = phi float [ %8928, %8926 ], [ %8934, %8931 ]
  %8939 = phi float [ %8930, %8926 ], [ %8936, %8931 ]
  %8940 = fcmp fast olt float %8919, %8768
  %8941 = icmp slt i32 %8916, 3
  %8942 = and i1 %8941, %8940
  br i1 %8942, label %8908, label %8943

; <label>:8943                                    ; preds = %8937
  br label %8944

; <label>:8944                                    ; preds = %8943, %8901
  %8945 = phi float [ %8766, %8901 ], [ %8938, %8943 ]
  %8946 = phi float [ %8767, %8901 ], [ %8939, %8943 ]
  %8947 = fsub fast float %8682, %8945
  %8948 = select i1 %8684, float %8945, float %8947
  %8949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8950 = extractvalue %dx.types.CBufRet.f32 %8949, 0
  %8951 = extractvalue %dx.types.CBufRet.f32 %8949, 1
  %8952 = extractvalue %dx.types.CBufRet.f32 %8949, 2
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8957 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 3
  %8960 = call float @dx.op.binary.f32(i32 36, float %8946, float %8959)  ; FMin(a,b)
  %8961 = fmul fast float %8957, %8948
  %8962 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8963 = fsub fast float %8954, %8950
  %8964 = fsub fast float %8955, %8951
  %8965 = fsub fast float %8956, %8952
  %8966 = fmul fast float %8962, %8963
  %8967 = fmul fast float %8962, %8964
  %8968 = fmul fast float %8962, %8965
  %8969 = fadd fast float %8966, %8950
  %8970 = fadd fast float %8967, %8951
  %8971 = fadd fast float %8968, %8952
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8975 = fadd fast float %8974, %8973
  %8976 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8972, 2
  %8978 = extractvalue %dx.types.CBufRet.f32 %8972, 3
  %8979 = fadd fast float %8978, %8977
  %8980 = call float @dx.op.unary.f32(i32 7, float %8979)  ; Saturate(value)
  %8981 = fmul fast float %8976, %8960
  %8982 = fmul fast float %8981, %8980
  br label %8983

; <label>:8983                                    ; preds = %8944, %8863, %8698, %8680, %8678
  %8984 = phi float [ %8707, %8698 ], [ %8866, %8863 ], [ %8948, %8944 ], [ 0.000000e+00, %8678 ], [ 0.000000e+00, %8680 ]
  %8985 = phi float [ %8741, %8698 ], [ %8900, %8863 ], [ %8982, %8944 ], [ 0.000000e+00, %8678 ], [ 0.000000e+00, %8680 ]
  %8986 = phi float [ %8728, %8698 ], [ %8887, %8863 ], [ %8969, %8944 ], [ 0.000000e+00, %8678 ], [ 0.000000e+00, %8680 ]
  %8987 = phi float [ %8729, %8698 ], [ %8888, %8863 ], [ %8970, %8944 ], [ 0.000000e+00, %8678 ], [ 0.000000e+00, %8680 ]
  %8988 = phi float [ %8730, %8698 ], [ %8889, %8863 ], [ %8971, %8944 ], [ 0.000000e+00, %8678 ], [ 0.000000e+00, %8680 ]
  %8989 = fmul fast float %8621, %8985
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8992 = fsub fast float %8628, %8991
  %8993 = fcmp fast olt float %8989, -2.000000e+01
  %8994 = call float @dx.op.unary.f32(i32 21, float %8989)  ; Exp(value)
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 2
  %8997 = extractvalue %dx.types.CBufRet.f32 %8995, 3
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9000 = fmul fast float %8997, %8992
  %9001 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9002 = fsub fast float 1.000000e+00, %9001
  %9003 = fmul fast float %8613, 5.000000e-01
  %9004 = fadd fast float %9003, 5.000000e-01
  %9005 = call float @dx.op.unary.f32(i32 7, float %9004)  ; Saturate(value)
  %9006 = fsub fast float 1.000000e+00, %9005
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9002)  ; FMax(a,b)
  %9008 = fdiv fast float %9006, %9007
  %9009 = fsub fast float %8992, %8570
  %9010 = call float @dx.op.unary.f32(i32 6, float %9009)  ; FAbs(value)
  %9011 = fmul fast float %9010, %8996
  %9012 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  %9013 = fsub fast float 1.000000e+00, %9011
  %9014 = fmul fast float %9013, %9012
  %9015 = fadd fast float %9014, %9011
  %9016 = fmul fast float %8999, %8992
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = fsub fast float 1.000000e+00, %9015
  %9019 = fmul fast float %9018, %9017
  %9020 = fadd fast float %9019, %9015
  %9021 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9022 = fadd fast float %8994, -1.000000e+00
  %9023 = select i1 %8993, float -1.000000e+00, float %9022
  %9024 = fmul fast float %9021, %9023
  %9025 = fadd fast float %9024, 1.000000e+00
  %9026 = fsub fast float -0.000000e+00, %9024
  %9027 = fmul fast float %8986, %9026
  %9028 = fmul fast float %8987, %9026
  %9029 = fmul fast float %8988, %9026
  br label %9030

; <label>:9030                                    ; preds = %8983, %8579
  %9031 = phi float [ %8984, %8983 ], [ 0.000000e+00, %8579 ]
  %9032 = phi float [ %9025, %8983 ], [ 1.000000e+00, %8579 ]
  %9033 = phi float [ %9027, %8983 ], [ 0.000000e+00, %8579 ]
  %9034 = phi float [ %9028, %8983 ], [ 0.000000e+00, %8579 ]
  %9035 = phi float [ %9029, %8983 ], [ 0.000000e+00, %8579 ]
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9038 = fsub fast float 1.000000e+00, %9032
  %9039 = fmul fast float %9038, %8614
  %9040 = fmul fast float %9039, %9037
  %9041 = fsub fast float %8614, %9040
  br i1 %8607, label %9042, label %9071, !dx.controlflow.hints !177

; <label>:9042                                    ; preds = %9030
  %9043 = fmul fast float %8615, %8604
  %9044 = fadd fast float %9043, %8605
  %9045 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9046 = fmul fast float %8586, %9041
  %9047 = fsub fast float -0.000000e+00, %9046
  %9048 = fmul fast float %8587, %9041
  %9049 = fsub fast float -0.000000e+00, %9048
  %9050 = call float @dx.op.unary.f32(i32 21, float %9047)  ; Exp(value)
  %9051 = call float @dx.op.unary.f32(i32 21, float %9049)  ; Exp(value)
  %9052 = call float @dx.op.binary.f32(i32 35, float %8594, float %9050)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 35, float %8594, float %9051)  ; FMax(a,b)
  %9054 = fsub fast float %9053, %9052
  %9055 = fmul fast float %9054, %9045
  %9056 = fadd fast float %9055, %9052
  %9057 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  %9058 = fsub fast float %8591, %8596
  %9059 = fsub fast float %8592, %8597
  %9060 = fsub fast float %8593, %8598
  %9061 = fmul fast float %9045, %9058
  %9062 = fmul fast float %9045, %9059
  %9063 = fmul fast float %9045, %9060
  %9064 = fadd fast float %9061, %8596
  %9065 = fadd fast float %9062, %8597
  %9066 = fadd fast float %9063, %8598
  %9067 = fsub fast float 1.000000e+00, %9057
  %9068 = fmul fast float %9067, %9064
  %9069 = fmul fast float %9067, %9065
  %9070 = fmul fast float %9067, %9066
  br label %9130

; <label>:9071                                    ; preds = %9030
  %9072 = fmul fast float %9041, %8603
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = fsub fast float 2.000000e+00, %9073
  %9075 = fmul fast float %9073, 9.921875e-01
  %9076 = fmul fast float %9075, %9074
  %9077 = fadd fast float %9076, 3.906250e-03
  %9078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9077, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9079 = extractvalue %dx.types.ResRet.f32 %9078, 0
  %9080 = fsub fast float %9073, %9079
  %9081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9080)  ; FMax(a,b)
  %9082 = fmul fast float %8589, %8570
  %9083 = call float @dx.op.unary.f32(i32 6, float %9082)  ; FAbs(value)
  %9084 = fcmp fast ogt float %9083, 0x3EB0C6F7A0000000
  br i1 %9084, label %9085, label %9091, !dx.controlflow.hints !178

; <label>:9085                                    ; preds = %9071
  %9086 = fmul fast float %9082, 0xBFF7154760000000
  %9087 = call float @dx.op.unary.f32(i32 21, float %9086)  ; Exp(value)
  %9088 = fsub fast float 1.000000e+00, %9087
  %9089 = fdiv fast float %9088, %9082
  %9090 = fmul fast float %9089, %8599
  br label %9091

; <label>:9091                                    ; preds = %9085, %9071
  %9092 = phi float [ %9090, %9085 ], [ %8599, %9071 ]
  %9093 = fadd fast float %9092, %8601
  %9094 = fmul fast float %9093, %9081
  %9095 = fmul fast float %8586, %9094
  %9096 = fsub fast float -0.000000e+00, %9095
  %9097 = fmul fast float %8587, %9094
  %9098 = fsub fast float -0.000000e+00, %9097
  %9099 = fmul fast float %8588, %9094
  %9100 = fsub fast float -0.000000e+00, %9099
  %9101 = call float @dx.op.unary.f32(i32 21, float %9096)  ; Exp(value)
  %9102 = call float @dx.op.unary.f32(i32 21, float %9098)  ; Exp(value)
  %9103 = call float @dx.op.unary.f32(i32 21, float %9100)  ; Exp(value)
  %9104 = fmul fast float %8615, %8615
  %9105 = fadd fast float %9104, 1.000000e+00
  %9106 = fmul fast float %9105, 0x3FAE8EC8A0000000
  %9107 = fmul fast float %9106, %8596
  %9108 = fmul fast float %9106, %8597
  %9109 = fmul fast float %9106, %8598
  %9110 = fmul fast float %8615, %8594
  %9111 = fsub fast float 1.000000e+00, %9110
  %9112 = fmul fast float %8594, %8594
  %9113 = fsub fast float 1.000000e+00, %9112
  %9114 = fmul fast float %9113, 0x3FB45F3060000000
  %9115 = fmul fast float %9111, %9111
  %9116 = fdiv fast float 1.000000e+00, %9115
  %9117 = fmul fast float %9114, %9116
  %9118 = fmul fast float %9117, %8591
  %9119 = fmul fast float %9117, %8592
  %9120 = fmul fast float %9117, %8593
  %9121 = fadd fast float %9118, %9107
  %9122 = fadd fast float %9119, %9108
  %9123 = fadd fast float %9120, %9109
  %9124 = fsub fast float 1.000000e+00, %9101
  %9125 = fsub fast float 1.000000e+00, %9102
  %9126 = fsub fast float 1.000000e+00, %9103
  %9127 = fmul fast float %9121, %9124
  %9128 = fmul fast float %9122, %9125
  %9129 = fmul fast float %9123, %9126
  br label %9130

; <label>:9130                                    ; preds = %9091, %9042
  %9131 = phi float [ %9068, %9042 ], [ %9127, %9091 ]
  %9132 = phi float [ %9069, %9042 ], [ %9128, %9091 ]
  %9133 = phi float [ %9070, %9042 ], [ %9129, %9091 ]
  %9134 = phi float [ %9057, %9042 ], [ %9101, %9091 ]
  %9135 = phi float [ %9057, %9042 ], [ %9102, %9091 ]
  %9136 = phi float [ %9057, %9042 ], [ %9103, %9091 ]
  br i1 %8623, label %9137, label %9335, !dx.controlflow.hints !179

; <label>:9137                                    ; preds = %9130
  %9138 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9139 = fmul fast float %9138, %9038
  %9140 = fsub fast float %9033, %9131
  %9141 = fsub fast float %9034, %9132
  %9142 = fsub fast float %9035, %9133
  %9143 = fmul fast float %9139, %9140
  %9144 = fmul fast float %9139, %9141
  %9145 = fmul fast float %9139, %9142
  %9146 = fadd fast float %9143, %9131
  %9147 = fadd fast float %9144, %9132
  %9148 = fadd fast float %9145, %9133
  %9149 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9134)  ; FMax(a,b)
  %9150 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9135)  ; FMax(a,b)
  %9151 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9136)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9032)  ; FMax(a,b)
  %9153 = call float @dx.op.binary.f32(i32 35, float %9031, float %9041)  ; FMax(a,b)
  %9154 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9153)  ; FMax(a,b)
  %9155 = fdiv fast float %9031, %9154
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fdiv fast float %9041, %9154
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fcmp fast une float %9152, 1.000000e+00
  br i1 %9159, label %9160, label %9173, !dx.controlflow.hints !180

; <label>:9160                                    ; preds = %9137
  %9161 = call float @dx.op.unary.f32(i32 23, float %9152)  ; Log(value)
  %9162 = fmul fast float %9161, 0x3FE62E4300000000
  %9163 = fmul fast float %9033, %9162
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = fmul fast float %9034, %9162
  %9166 = fsub fast float -0.000000e+00, %9165
  %9167 = fmul fast float %9035, %9162
  %9168 = fsub fast float -0.000000e+00, %9167
  %9169 = fsub fast float 1.000000e+00, %9152
  %9170 = fdiv fast float %9164, %9169
  %9171 = fdiv fast float %9166, %9169
  %9172 = fdiv fast float %9168, %9169
  br label %9173

; <label>:9173                                    ; preds = %9160, %9137
  %9174 = phi float [ %9170, %9160 ], [ %9033, %9137 ]
  %9175 = phi float [ %9171, %9160 ], [ %9034, %9137 ]
  %9176 = phi float [ %9172, %9160 ], [ %9035, %9137 ]
  %9177 = phi float [ %9162, %9160 ], [ 0.000000e+00, %9137 ]
  %9178 = fcmp fast une float %9149, 1.000000e+00
  br i1 %9178, label %9179, label %9186, !dx.controlflow.hints !181

; <label>:9179                                    ; preds = %9173
  %9180 = call float @dx.op.unary.f32(i32 23, float %9149)  ; Log(value)
  %9181 = fmul fast float %9180, 0x3FE62E4300000000
  %9182 = fmul fast float %9146, %9181
  %9183 = fsub fast float -0.000000e+00, %9182
  %9184 = fsub fast float 1.000000e+00, %9149
  %9185 = fdiv fast float %9183, %9184
  br label %9186

; <label>:9186                                    ; preds = %9179, %9173
  %9187 = phi float [ %9185, %9179 ], [ %9146, %9173 ]
  %9188 = phi float [ %9181, %9179 ], [ 0.000000e+00, %9173 ]
  %9189 = fcmp fast une float %9150, 1.000000e+00
  br i1 %9189, label %9190, label %9197, !dx.controlflow.hints !181

; <label>:9190                                    ; preds = %9186
  %9191 = call float @dx.op.unary.f32(i32 23, float %9150)  ; Log(value)
  %9192 = fmul fast float %9191, 0x3FE62E4300000000
  %9193 = fmul fast float %9147, %9192
  %9194 = fsub fast float -0.000000e+00, %9193
  %9195 = fsub fast float 1.000000e+00, %9150
  %9196 = fdiv fast float %9194, %9195
  br label %9197

; <label>:9197                                    ; preds = %9190, %9186
  %9198 = phi float [ %9196, %9190 ], [ %9147, %9186 ]
  %9199 = phi float [ %9192, %9190 ], [ 0.000000e+00, %9186 ]
  %9200 = fcmp fast une float %9151, 1.000000e+00
  br i1 %9200, label %9201, label %9208, !dx.controlflow.hints !181

; <label>:9201                                    ; preds = %9197
  %9202 = call float @dx.op.unary.f32(i32 23, float %9151)  ; Log(value)
  %9203 = fmul fast float %9202, 0x3FE62E4300000000
  %9204 = fmul fast float %9148, %9203
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = fsub fast float 1.000000e+00, %9151
  %9207 = fdiv fast float %9205, %9206
  br label %9208

; <label>:9208                                    ; preds = %9201, %9197
  %9209 = phi float [ %9207, %9201 ], [ %9148, %9197 ]
  %9210 = phi float [ %9203, %9201 ], [ 0.000000e+00, %9197 ]
  %9211 = fmul fast float %9174, %9158
  %9212 = fmul fast float %9175, %9158
  %9213 = fmul fast float %9176, %9158
  %9214 = fmul fast float %9177, %9158
  %9215 = fmul fast float %9187, %9156
  %9216 = fmul fast float %9198, %9156
  %9217 = fmul fast float %9209, %9156
  %9218 = fmul fast float %9188, %9156
  %9219 = fmul fast float %9199, %9156
  %9220 = fmul fast float %9210, %9156
  %9221 = fadd fast float %9215, %9211
  %9222 = fadd fast float %9216, %9212
  %9223 = fadd fast float %9217, %9213
  %9224 = fadd fast float %9218, %9214
  %9225 = fadd fast float %9219, %9214
  %9226 = fadd fast float %9220, %9214
  %9227 = fcmp fast une float %9224, 0.000000e+00
  br i1 %9227, label %9228, label %9235, !dx.controlflow.hints !182

; <label>:9228                                    ; preds = %9208
  %9229 = fmul fast float %9224, 0x3FF7154760000000
  %9230 = call float @dx.op.unary.f32(i32 21, float %9229)  ; Exp(value)
  %9231 = fsub fast float 1.000000e+00, %9230
  %9232 = fmul fast float %9221, %9231
  %9233 = fsub fast float -0.000000e+00, %9232
  %9234 = fdiv fast float %9233, %9224
  br label %9235

; <label>:9235                                    ; preds = %9228, %9208
  %9236 = phi float [ %9230, %9228 ], [ 1.000000e+00, %9208 ]
  %9237 = phi float [ %9234, %9228 ], [ %9221, %9208 ]
  %9238 = fcmp fast une float %9225, 0.000000e+00
  br i1 %9238, label %9239, label %9246, !dx.controlflow.hints !182

; <label>:9239                                    ; preds = %9235
  %9240 = fmul fast float %9225, 0x3FF7154760000000
  %9241 = call float @dx.op.unary.f32(i32 21, float %9240)  ; Exp(value)
  %9242 = fsub fast float 1.000000e+00, %9241
  %9243 = fmul fast float %9222, %9242
  %9244 = fsub fast float -0.000000e+00, %9243
  %9245 = fdiv fast float %9244, %9225
  br label %9246

; <label>:9246                                    ; preds = %9239, %9235
  %9247 = phi float [ %9241, %9239 ], [ 1.000000e+00, %9235 ]
  %9248 = phi float [ %9245, %9239 ], [ %9222, %9235 ]
  %9249 = fcmp fast une float %9226, 0.000000e+00
  br i1 %9249, label %9250, label %9257, !dx.controlflow.hints !182

; <label>:9250                                    ; preds = %9246
  %9251 = fmul fast float %9226, 0x3FF7154760000000
  %9252 = call float @dx.op.unary.f32(i32 21, float %9251)  ; Exp(value)
  %9253 = fsub fast float 1.000000e+00, %9252
  %9254 = fmul fast float %9223, %9253
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fdiv fast float %9255, %9226
  br label %9257

; <label>:9257                                    ; preds = %9250, %9246
  %9258 = phi float [ %9252, %9250 ], [ 1.000000e+00, %9246 ]
  %9259 = phi float [ %9256, %9250 ], [ %9223, %9246 ]
  %9260 = fcmp fast ogt float %9156, %9158
  br i1 %9260, label %9261, label %9281

; <label>:9261                                    ; preds = %9257
  %9262 = fsub fast float 1.000000e+00, %9158
  %9263 = fmul fast float %9174, %9262
  %9264 = fmul fast float %9175, %9262
  %9265 = fmul fast float %9176, %9262
  %9266 = fmul fast float %9177, %9262
  %9267 = fcmp fast une float %9266, 0.000000e+00
  br i1 %9267, label %9268, label %9319, !dx.controlflow.hints !183

; <label>:9268                                    ; preds = %9261
  %9269 = fmul fast float %9266, 0x3FF7154760000000
  %9270 = call float @dx.op.unary.f32(i32 21, float %9269)  ; Exp(value)
  %9271 = fsub fast float 1.000000e+00, %9270
  %9272 = fmul fast float %9263, %9271
  %9273 = fsub fast float -0.000000e+00, %9272
  %9274 = fmul fast float %9264, %9271
  %9275 = fsub fast float -0.000000e+00, %9274
  %9276 = fmul fast float %9265, %9271
  %9277 = fsub fast float -0.000000e+00, %9276
  %9278 = fdiv fast float %9273, %9266
  %9279 = fdiv fast float %9275, %9266
  %9280 = fdiv fast float %9277, %9266
  br label %9319

; <label>:9281                                    ; preds = %9257
  %9282 = fsub fast float 1.000000e+00, %9156
  %9283 = fmul fast float %9187, %9282
  %9284 = fmul fast float %9198, %9282
  %9285 = fmul fast float %9209, %9282
  %9286 = fmul fast float %9188, %9282
  %9287 = fmul fast float %9199, %9282
  %9288 = fmul fast float %9210, %9282
  %9289 = fcmp fast une float %9286, 0.000000e+00
  br i1 %9289, label %9290, label %9297, !dx.controlflow.hints !182

; <label>:9290                                    ; preds = %9281
  %9291 = fmul fast float %9286, 0x3FF7154760000000
  %9292 = call float @dx.op.unary.f32(i32 21, float %9291)  ; Exp(value)
  %9293 = fsub fast float 1.000000e+00, %9292
  %9294 = fmul fast float %9283, %9293
  %9295 = fsub fast float -0.000000e+00, %9294
  %9296 = fdiv fast float %9295, %9286
  br label %9297

; <label>:9297                                    ; preds = %9290, %9281
  %9298 = phi float [ %9296, %9290 ], [ %9283, %9281 ]
  %9299 = phi float [ %9292, %9290 ], [ 1.000000e+00, %9281 ]
  %9300 = fcmp fast une float %9287, 0.000000e+00
  br i1 %9300, label %9301, label %9308, !dx.controlflow.hints !182

; <label>:9301                                    ; preds = %9297
  %9302 = fmul fast float %9287, 0x3FF7154760000000
  %9303 = call float @dx.op.unary.f32(i32 21, float %9302)  ; Exp(value)
  %9304 = fsub fast float 1.000000e+00, %9303
  %9305 = fmul fast float %9284, %9304
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fdiv fast float %9306, %9287
  br label %9308

; <label>:9308                                    ; preds = %9301, %9297
  %9309 = phi float [ %9307, %9301 ], [ %9284, %9297 ]
  %9310 = phi float [ %9303, %9301 ], [ 1.000000e+00, %9297 ]
  %9311 = fcmp fast une float %9288, 0.000000e+00
  br i1 %9311, label %9312, label %9319, !dx.controlflow.hints !182

; <label>:9312                                    ; preds = %9308
  %9313 = fmul fast float %9288, 0x3FF7154760000000
  %9314 = call float @dx.op.unary.f32(i32 21, float %9313)  ; Exp(value)
  %9315 = fsub fast float 1.000000e+00, %9314
  %9316 = fmul fast float %9285, %9315
  %9317 = fsub fast float -0.000000e+00, %9316
  %9318 = fdiv fast float %9317, %9288
  br label %9319

; <label>:9319                                    ; preds = %9312, %9308, %9268, %9261
  %9320 = phi float [ %9318, %9312 ], [ %9280, %9268 ], [ %9265, %9261 ], [ %9285, %9308 ]
  %9321 = phi float [ %9309, %9312 ], [ %9279, %9268 ], [ %9264, %9261 ], [ %9309, %9308 ]
  %9322 = phi float [ %9298, %9312 ], [ %9278, %9268 ], [ %9263, %9261 ], [ %9298, %9308 ]
  %9323 = phi float [ %9314, %9312 ], [ %9270, %9268 ], [ 1.000000e+00, %9261 ], [ 1.000000e+00, %9308 ]
  %9324 = phi float [ %9310, %9312 ], [ %9270, %9268 ], [ 1.000000e+00, %9261 ], [ %9310, %9308 ]
  %9325 = phi float [ %9299, %9312 ], [ %9270, %9268 ], [ 1.000000e+00, %9261 ], [ %9299, %9308 ]
  %9326 = fmul fast float %9325, %9237
  %9327 = fmul fast float %9324, %9248
  %9328 = fmul fast float %9323, %9259
  %9329 = fadd fast float %9326, %9322
  %9330 = fadd fast float %9327, %9321
  %9331 = fadd fast float %9328, %9320
  %9332 = fmul fast float %9325, %9236
  %9333 = fmul fast float %9324, %9247
  %9334 = fmul fast float %9323, %9258
  br label %9335

; <label>:9335                                    ; preds = %9319, %9130
  %9336 = phi float [ %9334, %9319 ], [ %9136, %9130 ]
  %9337 = phi float [ %9333, %9319 ], [ %9135, %9130 ]
  %9338 = phi float [ %9332, %9319 ], [ %9134, %9130 ]
  %9339 = phi float [ %9331, %9319 ], [ %9133, %9130 ]
  %9340 = phi float [ %9330, %9319 ], [ %9132, %9130 ]
  %9341 = phi float [ %9329, %9319 ], [ %9131, %9130 ]
  %9342 = fmul fast float %9341, %8287
  %9343 = fmul fast float %9340, %8287
  %9344 = fmul fast float %9339, %8287
  %9345 = fmul fast float %9338, %8578
  %9346 = call float @dx.op.dot3.f32(i32 55, float %9338, float %9337, float %9336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9347 = call float @dx.op.dot3.f32(i32 55, float %9342, float %9343, float %9344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9348 = select i1 %263, float %9346, float %9338
  %9349 = select i1 %263, float %9346, float %9337
  %9350 = select i1 %263, float 1.000000e+00, float %9336
  %9351 = select i1 %263, float %9347, float %9342
  %9352 = select i1 %263, float 0.000000e+00, float %9343
  %9353 = select i1 %263, float 0.000000e+00, float %9344
  %9354 = fmul fast float %9348, %8572
  %9355 = fmul fast float %9349, %8573
  %9356 = fmul fast float %9350, %8574
  %9357 = fadd fast float %9354, %9351
  %9358 = fadd fast float %9355, %9352
  %9359 = fadd fast float %9353, %9356
  %9360 = fmul fast float %9348, %8575
  %9361 = fmul fast float %9349, %8576
  %9362 = fmul fast float %9350, %8577
  %9363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9364 = extractvalue %dx.types.CBufRet.i32 %9363, 0
  %9365 = icmp eq i32 %9364, 0
  br i1 %9365, label %9733, label %9366, !dx.controlflow.hints !184

; <label>:9366                                    ; preds = %9335
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 2
  %9369 = extractvalue %dx.types.CBufRet.f32 %9367, 3
  %9370 = fmul fast float %9368, %121
  %9371 = fmul fast float %9369, %122
  %9372 = fmul fast float %9370, 2.000000e+00
  %9373 = fmul fast float %9371, 2.000000e+00
  %9374 = fsub fast float 1.000000e+00, %9372
  %9375 = fsub fast float 1.000000e+00, %9373
  %9376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9377 = extractvalue %dx.types.CBufRet.f32 %9376, 0
  %9378 = extractvalue %dx.types.CBufRet.f32 %9376, 1
  %9379 = extractvalue %dx.types.CBufRet.f32 %9376, 2
  %9380 = fmul fast float %9374, %9377
  %9381 = fmul fast float %9374, %9378
  %9382 = fmul fast float %9374, %9379
  %9383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9384 = extractvalue %dx.types.CBufRet.f32 %9383, 0
  %9385 = extractvalue %dx.types.CBufRet.f32 %9383, 1
  %9386 = extractvalue %dx.types.CBufRet.f32 %9383, 2
  %9387 = fmul fast float %9375, %9384
  %9388 = fmul fast float %9375, %9385
  %9389 = fmul fast float %9375, %9386
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9393 = extractvalue %dx.types.CBufRet.f32 %9390, 2
  %9394 = fadd fast float %9387, %9391
  %9395 = fadd fast float %9394, %9380
  %9396 = fadd fast float %9388, %9392
  %9397 = fadd fast float %9396, %9381
  %9398 = fadd fast float %9389, %9393
  %9399 = fadd fast float %9398, %9382
  %9400 = fmul fast float %9395, %8571
  %9401 = fmul fast float %9397, %8571
  %9402 = fmul fast float %9399, %8571
  %9403 = fmul fast float %9400, %9400
  %9404 = fmul fast float %9401, %9401
  %9405 = fadd fast float %9403, %9404
  %9406 = fmul fast float %9402, %9402
  %9407 = fadd fast float %9405, %9406
  %9408 = call float @dx.op.unary.f32(i32 24, float %9407)  ; Sqrt(value)
  %9409 = extractvalue %dx.types.CBufRet.f32 %8298, 0
  %9410 = fsub fast float %9408, %9409
  %9411 = extractvalue %dx.types.CBufRet.f32 %8298, 2
  %9412 = fmul fast float %9410, %9411
  %9413 = call float @dx.op.unary.f32(i32 7, float %9412)  ; Saturate(value)
  %9414 = fadd fast float %9413, -5.000000e-01
  %9415 = fmul fast float %9414, 2.000000e+00
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 2
  %9418 = call float @dx.op.binary.f32(i32 36, float %9417, float %9415)  ; FMin(a,b)
  %9419 = fsub fast float -0.000000e+00, %9417
  %9420 = fcmp fast ogt float %9418, %9419
  br i1 %9420, label %9421, label %9733, !dx.controlflow.hints !185

; <label>:9421                                    ; preds = %9366
  %9422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9423 = extractvalue %dx.types.CBufRet.f32 %9422, 3
  %9424 = fcmp fast ogt float %9423, 0.000000e+00
  br i1 %9424, label %9425, label %9500, !dx.controlflow.hints !186

; <label>:9425                                    ; preds = %9421
  %9426 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9427 = extractvalue %dx.types.Dimensions %9426, 0
  %9428 = sitofp i32 %9427 to float
  %9429 = extractvalue %dx.types.Dimensions %9426, 1
  %9430 = sitofp i32 %9429 to float
  %9431 = fmul fast float %9370, %9428
  %9432 = fmul fast float %9371, %9430
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9435 = fsub fast float -0.000000e+00, %9434
  %9436 = fptoui float %9435 to i32
  %9437 = fptoui float %9431 to i32
  %9438 = fptoui float %9432 to i32
  %9439 = and i32 %9436, 31
  %9440 = lshr i32 %9437, %9439
  %9441 = lshr i32 %9438, %9439
  %9442 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9436, i32 %9440, i32 %9441, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9443 = extractvalue %dx.types.ResRet.f32 %9442, 0
  %9444 = fcmp fast olt float %9443, -1.000000e+00
  %9445 = fcmp fast ogt float %9443, -1.000000e+00
  %9446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9447 = extractvalue %dx.types.CBufRet.f32 %9446, 1
  %9448 = select i1 %9445, float %9447, float 1.000000e+00
  %9449 = fadd fast float %9443, 1.000000e+00
  %9450 = fmul fast float %9448, %9449
  %9451 = call float @dx.op.unary.f32(i32 6, float %9450)  ; FAbs(value)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9446, 3
  %9453 = fcmp fast oge float %9451, %9452
  %9454 = select i1 %9453, float 0x4197782600000000, float %9451
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.CBufRet.f32 %9455, 2
  %9459 = select i1 %9444, float %9456, float %9377
  %9460 = select i1 %9444, float %9457, float %9378
  %9461 = select i1 %9444, float %9458, float %9379
  %9462 = fmul fast float %9459, %9374
  %9463 = fmul fast float %9460, %9374
  %9464 = fmul fast float %9461, %9374
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 0
  %9467 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9468 = extractvalue %dx.types.CBufRet.f32 %9465, 2
  %9469 = select i1 %9444, float %9466, float %9384
  %9470 = select i1 %9444, float %9467, float %9385
  %9471 = select i1 %9444, float %9468, float %9386
  %9472 = fmul fast float %9469, %9375
  %9473 = fmul fast float %9470, %9375
  %9474 = fmul fast float %9471, %9375
  %9475 = fadd fast float %9472, %9462
  %9476 = fadd fast float %9473, %9463
  %9477 = fadd fast float %9474, %9464
  %9478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9478, 0
  %9480 = extractvalue %dx.types.CBufRet.f32 %9478, 1
  %9481 = extractvalue %dx.types.CBufRet.f32 %9478, 2
  %9482 = select i1 %9444, float %9479, float %9391
  %9483 = select i1 %9444, float %9480, float %9392
  %9484 = select i1 %9444, float %9481, float %9393
  %9485 = fadd fast float %9475, %9482
  %9486 = fadd fast float %9476, %9483
  %9487 = fadd fast float %9477, %9484
  %9488 = fmul fast float %9485, %9454
  %9489 = fmul fast float %9486, %9454
  %9490 = fmul fast float %9487, %9454
  %9491 = fmul fast float %9488, %9488
  %9492 = fmul fast float %9489, %9489
  %9493 = fadd fast float %9491, %9492
  %9494 = fmul fast float %9490, %9490
  %9495 = fadd fast float %9493, %9494
  %9496 = call float @dx.op.unary.f32(i32 24, float %9495)  ; Sqrt(value)
  %9497 = fsub fast float %9496, %9409
  %9498 = fmul fast float %9497, %9411
  %9499 = call float @dx.op.unary.f32(i32 7, float %9498)  ; Saturate(value)
  br label %9500

; <label>:9500                                    ; preds = %9425, %9421
  %9501 = phi float [ %9499, %9425 ], [ 1.000000e+00, %9421 ]
  %9502 = fmul fast float %9418, 5.000000e-01
  %9503 = fadd fast float %9502, 5.000000e-01
  %9504 = call float @dx.op.unary.f32(i32 22, float %9503)  ; Frc(value)
  %9505 = call float @dx.op.unary.f32(i32 27, float %9504)  ; Round_ni(value)
  %9506 = call float @dx.op.unary.f32(i32 22, float %9504)  ; Frc(value)
  %9507 = fmul fast float %9506, 2.000000e+00
  %9508 = fadd fast float %9507, -1.000000e+00
  %9509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9370, float %9371, float %9505, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9510 = extractvalue %dx.types.ResRet.f32 %9509, 0
  %9511 = extractvalue %dx.types.ResRet.f32 %9509, 1
  %9512 = extractvalue %dx.types.ResRet.f32 %9509, 2
  %9513 = extractvalue %dx.types.ResRet.f32 %9509, 3
  %9514 = fadd fast float %9510, -5.000000e-01
  %9515 = fadd fast float %9512, -5.000000e-01
  %9516 = fmul fast float %9514, 0xBFD5555560000000
  %9517 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9515, float %9516)  ; FMad(a,b,c)
  %9518 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9511, float 0.000000e+00)  ; FMad(a,b,c)
  %9519 = fadd fast float %9518, %9513
  %9520 = fmul fast float %9514, -7.500000e-01
  %9521 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9515, float %9520)  ; FMad(a,b,c)
  %9522 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9511, float 0.000000e+00)  ; FMad(a,b,c)
  %9523 = fadd fast float %9522, %9513
  %9524 = call float @dx.op.binary.f32(i32 35, float %9517, float -1.000000e+00)  ; FMax(a,b)
  %9525 = call float @dx.op.binary.f32(i32 35, float %9519, float -1.000000e+00)  ; FMax(a,b)
  %9526 = call float @dx.op.binary.f32(i32 35, float %9521, float -1.000000e+00)  ; FMax(a,b)
  %9527 = call float @dx.op.binary.f32(i32 35, float %9523, float -1.000000e+00)  ; FMax(a,b)
  %9528 = call float @dx.op.binary.f32(i32 36, float %9524, float 1.000000e+00)  ; FMin(a,b)
  %9529 = call float @dx.op.binary.f32(i32 36, float %9525, float 1.000000e+00)  ; FMin(a,b)
  %9530 = call float @dx.op.binary.f32(i32 36, float %9526, float 1.000000e+00)  ; FMin(a,b)
  %9531 = call float @dx.op.binary.f32(i32 36, float %9527, float 1.000000e+00)  ; FMin(a,b)
  %9532 = fcmp fast olt float %9528, 0x3FEFFF8020000000
  br i1 %9532, label %9533, label %9648, !dx.controlflow.hints !187

; <label>:9533                                    ; preds = %9500
  %9534 = extractvalue %dx.types.CBufRet.f32 %9416, 3
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 0
  %9537 = extractvalue %dx.types.CBufRet.f32 %9535, 1
  %9538 = extractvalue %dx.types.CBufRet.f32 %9535, 2
  %9539 = extractvalue %dx.types.CBufRet.f32 %9535, 3
  %9540 = fsub fast float %9536, %9528
  %9541 = fsub fast float %9537, %9529
  %9542 = fsub fast float %9538, %9530
  %9543 = fsub fast float %9539, %9531
  %9544 = fmul fast float %9540, %9534
  %9545 = fmul fast float %9541, %9534
  %9546 = fmul fast float %9542, %9534
  %9547 = fmul fast float %9543, %9534
  %9548 = fadd fast float %9544, %9528
  %9549 = fadd fast float %9545, %9529
  %9550 = fsub fast float -0.000000e+00, %9549
  %9551 = fadd fast float %9546, %9530
  %9552 = fadd fast float %9547, %9531
  %9553 = fmul fast float %9548, %9548
  %9554 = fsub fast float %9549, %9553
  %9555 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9554)  ; FMax(a,b)
  %9556 = fdiv fast float 1.000000e+00, %9555
  %9557 = fmul fast float %9549, %9548
  %9558 = fsub fast float %9551, %9557
  %9559 = fsub fast float %9508, %9548
  %9560 = fmul fast float %9508, %9508
  %9561 = fsub fast float %9560, %9549
  %9562 = fmul fast float %9559, %9556
  %9563 = fmul fast float %9562, %9558
  %9564 = fsub fast float %9561, %9563
  %9565 = fmul fast float %9549, %9549
  %9566 = fsub fast float %9552, %9565
  %9567 = fmul fast float %9558, %9558
  %9568 = fmul fast float %9567, %9556
  %9569 = fsub fast float %9566, %9568
  %9570 = fdiv fast float %9564, %9569
  %9571 = fmul fast float %9558, %9570
  %9572 = fsub fast float %9559, %9571
  %9573 = fmul fast float %9572, %9556
  %9574 = fmul fast float %9573, %9548
  %9575 = fsub fast float 1.000000e+00, %9574
  %9576 = fmul fast float %9549, %9570
  %9577 = fsub fast float %9575, %9576
  %9578 = fmul fast float %9573, %9573
  %9579 = fmul fast float %9570, 4.000000e+00
  %9580 = fmul fast float %9579, %9577
  %9581 = fsub fast float %9578, %9580
  %9582 = call float @dx.op.unary.f32(i32 24, float %9581)  ; Sqrt(value)
  %9583 = fcmp fast oge float %9573, 0.000000e+00
  %9584 = fsub fast float -0.000000e+00, %9582
  %9585 = select i1 %9583, float %9584, float %9582
  %9586 = fsub fast float %9585, %9573
  %9587 = fdiv fast float %9586, %9570
  %9588 = fdiv fast float %9577, %9586
  %9589 = fmul fast float %9587, 5.000000e-01
  %9590 = fmul fast float %9588, 2.000000e+00
  %9591 = select i1 %9583, float %9589, float %9590
  %9592 = select i1 %9583, float %9590, float %9589
  %9593 = call float @dx.op.binary.f32(i32 35, float %9591, float %9592)  ; FMax(a,b)
  %9594 = call float @dx.op.binary.f32(i32 36, float %9591, float %9592)  ; FMin(a,b)
  %9595 = fcmp fast ogt float %9508, %9594
  br i1 %9595, label %9596, label %9606

; <label>:9596                                    ; preds = %9533
  %9597 = fsub fast float %9508, %9594
  %9598 = fsub fast float %9593, %9594
  %9599 = fmul fast float %9597, %9598
  %9600 = fmul fast float %9593, %9508
  %9601 = fadd fast float %9593, %9508
  %9602 = fmul fast float %9601, %9548
  %9603 = fadd fast float %9600, %9549
  %9604 = fsub fast float %9603, %9602
  %9605 = fdiv fast float %9604, %9599
  br label %9606

; <label>:9606                                    ; preds = %9596, %9533
  %9607 = phi float [ %9605, %9596 ], [ 0.000000e+00, %9533 ]
  %9608 = fcmp fast ogt float %9508, %9593
  %9609 = fsub fast float %9508, %9593
  br i1 %9608, label %9610, label %9620

; <label>:9610                                    ; preds = %9606
  %9611 = fsub fast float %9593, %9594
  %9612 = fmul fast float %9611, %9609
  %9613 = fmul fast float %9594, %9508
  %9614 = fadd fast float %9594, %9508
  %9615 = fmul fast float %9614, %9548
  %9616 = fsub fast float %9550, %9613
  %9617 = fadd fast float %9616, %9615
  %9618 = fdiv fast float %9617, %9612
  %9619 = fadd fast float %9618, %9607
  br label %9620

; <label>:9620                                    ; preds = %9610, %9606
  %9621 = phi float [ %9619, %9610 ], [ %9607, %9606 ]
  %9622 = fsub fast float %9508, %9594
  %9623 = fmul fast float %9622, %9609
  %9624 = fmul fast float %9594, %9593
  %9625 = fadd fast float %9594, %9593
  %9626 = fmul fast float %9625, %9548
  %9627 = fadd fast float %9624, %9549
  %9628 = fsub fast float %9627, %9626
  %9629 = fdiv fast float %9628, %9623
  %9630 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  %9631 = fcmp fast oeq float %8299, 0.000000e+00
  %9632 = extractvalue %dx.types.CBufRet.f32 %9416, 0
  %9633 = fcmp fast oeq float %9632, 0.000000e+00
  %9634 = or i1 %9631, %9633
  %9635 = fmul fast float %9632, 2.000000e+00
  %9636 = fadd fast float %9417, %9418
  %9637 = fdiv fast float %9636, %9635
  %9638 = call float @dx.op.unary.f32(i32 7, float %9637)  ; Saturate(value)
  %9639 = fmul fast float %9638, 2.000000e+00
  %9640 = fsub fast float 3.000000e+00, %9639
  %9641 = fmul fast float %9638, %9638
  %9642 = fmul fast float %9641, %9640
  %9643 = select i1 %9634, float 1.000000e+00, float %9642
  %9644 = fmul fast float %9629, %8299
  %9645 = fadd fast float %9630, %9644
  %9646 = call float @dx.op.unary.f32(i32 7, float %9645)  ; Saturate(value)
  %9647 = fmul fast float %9643, %9646
  br label %9648

; <label>:9648                                    ; preds = %9620, %9500
  %9649 = phi float [ %9647, %9620 ], [ 0.000000e+00, %9500 ]
  %9650 = fsub fast float 1.000000e+00, %9649
  %9651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9370, float %9371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9652 = extractvalue %dx.types.ResRet.f32 %9651, 0
  %9653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.i32 %9653, 2
  %9655 = icmp eq i32 %9654, 0
  br i1 %9655, label %9661, label %9656

; <label>:9656                                    ; preds = %9648
  %9657 = call float @dx.op.unary.f32(i32 7, float %9649)  ; Saturate(value)
  %9658 = fadd fast float %9652, -1.000000e+00
  %9659 = fmul fast float %9657, %9658
  %9660 = fadd fast float %9659, 1.000000e+00
  br label %9661

; <label>:9661                                    ; preds = %9656, %9648
  %9662 = phi float [ %9660, %9656 ], [ %9650, %9648 ]
  br i1 %9424, label %9663, label %9681

; <label>:9663                                    ; preds = %9661
  %9664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9664, 1
  %9666 = fsub fast float %9501, %9665
  %9667 = call float @dx.op.unary.f32(i32 7, float %9666)  ; Saturate(value)
  %9668 = fsub fast float %9501, %9423
  %9669 = call float @dx.op.unary.f32(i32 7, float %9668)  ; Saturate(value)
  %9670 = fsub fast float %9667, %9669
  %9671 = fsub fast float %9503, %9669
  %9672 = fdiv fast float %9671, %9670
  %9673 = call float @dx.op.unary.f32(i32 7, float %9672)  ; Saturate(value)
  %9674 = fmul fast float %9673, 2.000000e+00
  %9675 = fsub fast float 3.000000e+00, %9674
  %9676 = fsub fast float %9652, %9662
  %9677 = fmul fast float %9673, %9673
  %9678 = fmul fast float %9677, %9676
  %9679 = fmul fast float %9678, %9675
  %9680 = fadd fast float %9679, %9662
  br label %9681

; <label>:9681                                    ; preds = %9663, %9661
  %9682 = phi float [ %9680, %9663 ], [ %9662, %9661 ]
  %9683 = call float @dx.op.binary.f32(i32 35, float %9652, float %9682)  ; FMax(a,b)
  %9684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9685 = extractvalue %dx.types.CBufRet.i32 %9684, 2
  %9686 = and i32 %9685, 1
  %9687 = icmp eq i32 %9686, 0
  %9688 = fcmp fast une float %9683, 1.000000e+00
  %9689 = and i1 %9688, %9687
  br i1 %9689, label %9690, label %9709

; <label>:9690                                    ; preds = %9681
  %9691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9370, float %9371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9692 = extractvalue %dx.types.ResRet.f32 %9691, 0
  %9693 = extractvalue %dx.types.ResRet.f32 %9691, 1
  %9694 = extractvalue %dx.types.ResRet.f32 %9691, 2
  %9695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9695, 1
  %9697 = fmul fast float %9696, %9692
  %9698 = fmul fast float %9696, %9693
  %9699 = fmul fast float %9696, %9694
  %9700 = fcmp fast ogt float %9652, 0x3FEFFF2E40000000
  %9701 = fsub fast float 1.000000e+00, %9683
  %9702 = fsub fast float 1.000000e+00, %9652
  %9703 = fdiv fast float %9701, %9702
  %9704 = call float @dx.op.unary.f32(i32 7, float %9703)  ; Saturate(value)
  %9705 = select i1 %9700, float 0.000000e+00, float %9704
  %9706 = fmul fast float %9697, %9705
  %9707 = fmul fast float %9698, %9705
  %9708 = fmul fast float %9699, %9705
  br label %9709

; <label>:9709                                    ; preds = %9690, %9681
  %9710 = phi float [ 0.000000e+00, %9681 ], [ %9706, %9690 ]
  %9711 = phi float [ 0.000000e+00, %9681 ], [ %9707, %9690 ]
  %9712 = phi float [ 0.000000e+00, %9681 ], [ %9708, %9690 ]
  %9713 = fmul fast float %9710, %8287
  %9714 = fmul fast float %9711, %8287
  %9715 = fmul fast float %9712, %8287
  %9716 = fmul fast float %9683, %9345
  %9717 = call float @dx.op.dot3.f32(i32 55, float %9683, float %9683, float %9683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9718 = call float @dx.op.dot3.f32(i32 55, float %9713, float %9714, float %9715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9719 = select i1 %263, float %9717, float %9683
  %9720 = select i1 %263, float 1.000000e+00, float %9683
  %9721 = select i1 %263, float %9718, float %9713
  %9722 = select i1 %263, float 0.000000e+00, float %9714
  %9723 = select i1 %263, float 0.000000e+00, float %9715
  %9724 = fmul fast float %9719, %9357
  %9725 = fmul fast float %9719, %9358
  %9726 = fmul fast float %9720, %9359
  %9727 = fadd fast float %9724, %9721
  %9728 = fadd fast float %9725, %9722
  %9729 = fadd fast float %9723, %9726
  %9730 = fmul fast float %9719, %9360
  %9731 = fmul fast float %9719, %9361
  %9732 = fmul fast float %9720, %9362
  br label %9733

; <label>:9733                                    ; preds = %9709, %9366, %9335, %8567
  %9734 = phi float [ %8572, %8567 ], [ %9357, %9335 ], [ %9727, %9709 ], [ %9357, %9366 ]
  %9735 = phi float [ %8573, %8567 ], [ %9358, %9335 ], [ %9728, %9709 ], [ %9358, %9366 ]
  %9736 = phi float [ %8574, %8567 ], [ %9359, %9335 ], [ %9729, %9709 ], [ %9359, %9366 ]
  %9737 = phi float [ %8575, %8567 ], [ %9360, %9335 ], [ %9730, %9709 ], [ %9360, %9366 ]
  %9738 = phi float [ %8576, %8567 ], [ %9361, %9335 ], [ %9731, %9709 ], [ %9361, %9366 ]
  %9739 = phi float [ %8577, %8567 ], [ %9362, %9335 ], [ %9732, %9709 ], [ %9362, %9366 ]
  %9740 = phi float [ %8578, %8567 ], [ %9345, %9335 ], [ %9716, %9709 ], [ %9345, %9366 ]
  %9741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9742 = extractvalue %dx.types.CBufRet.f32 %9741, 2
  %9743 = extractvalue %dx.types.CBufRet.f32 %9741, 3
  %9744 = fmul fast float %9742, %121
  %9745 = fmul fast float %9743, %122
  %9746 = call float @dx.op.unary.f32(i32 7, float %9744)  ; Saturate(value)
  %9747 = call float @dx.op.unary.f32(i32 7, float %9745)  ; Saturate(value)
  %9748 = select i1 %8309, i32 2, i32 0
  %9749 = or i32 %9748, 1
  %9750 = uitofp i32 %9749 to float
  %9751 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9746, float %9747, float %9750, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9752 = extractvalue %dx.types.ResRet.f32 %9751, 0
  %9753 = extractvalue %dx.types.ResRet.f32 %9751, 1
  %9754 = extractvalue %dx.types.ResRet.f32 %9751, 2
  %9755 = extractvalue %dx.types.ResRet.f32 %9751, 3
  %9756 = add nuw nsw i32 %9748, 2
  %9757 = uitofp i32 %9756 to float
  %9758 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9746, float %9747, float %9757, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9759 = extractvalue %dx.types.ResRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.ResRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.ResRet.f32 %9758, 2
  %9762 = extractvalue %dx.types.ResRet.f32 %9758, 3
  %9763 = call float @dx.op.binary.f32(i32 35, float %9753, float %9754)  ; FMax(a,b)
  %9764 = call float @dx.op.binary.f32(i32 35, float %9752, float %9763)  ; FMax(a,b)
  %9765 = call float @dx.op.binary.f32(i32 35, float %9764, float %9755)  ; FMax(a,b)
  %9766 = call float @dx.op.binary.f32(i32 36, float %9760, float %9761)  ; FMin(a,b)
  %9767 = call float @dx.op.binary.f32(i32 36, float %9759, float %9766)  ; FMin(a,b)
  %9768 = call float @dx.op.binary.f32(i32 36, float %9767, float %9762)  ; FMin(a,b)
  %9769 = fmul fast float %9765, 2.550000e+02
  %9770 = fadd fast float %9769, 0x3F70101020000000
  %9771 = fptoui float %9770 to i32
  %9772 = fmul fast float %9768, 2.550000e+02
  %9773 = fadd fast float %9772, 0x3F70101020000000
  %9774 = fptoui float %9773 to i32
  %9775 = icmp ult i32 %9771, %9774
  br i1 %9775, label %9776, label %9945

; <label>:9776                                    ; preds = %9733
  %9777 = fcmp fast ogt float %107, 9.843750e-01
  %9778 = fadd fast float %8571, -4.000000e+00
  %9779 = select i1 %9777, float -4.000000e+00, float %9778
  %9780 = call float @dx.op.binary.f32(i32 35, float %9779, float 0.000000e+00)  ; FMax(a,b)
  %9781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9781, 0
  %9783 = fadd fast float %9782, %9780
  %9784 = extractvalue %dx.types.CBufRet.f32 %9781, 2
  %9785 = fmul fast float %9783, %9784
  %9786 = call float @dx.op.unary.f32(i32 23, float %9785)  ; Log(value)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9781, 3
  %9788 = fmul fast float %9787, %9786
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 2
  %9791 = fmul fast float %9788, %9790
  %9792 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9793 = uitofp i32 %9771 to float
  %9794 = uitofp i32 %9774 to float
  %9795 = fadd fast float %9793, 5.000000e-01
  %9796 = fadd fast float %9794, 5.000000e-01
  %9797 = fmul fast float %9790, %9795
  %9798 = fmul fast float %9790, %9796
  %9799 = fadd fast float %9797, 0x3F0FFB4800000000
  %9800 = fadd fast float %9798, 0xBF0FFB4800000000
  %9801 = call float @dx.op.binary.f32(i32 35, float %9792, float %9799)  ; FMax(a,b)
  %9802 = call float @dx.op.binary.f32(i32 36, float %9801, float %9800)  ; FMin(a,b)
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9806 = extractvalue %dx.types.CBufRet.f32 %9803, 0
  %9807 = select i1 %8309, float %9806, float 0.000000e+00
  %9808 = fmul fast float %9804, %9802
  %9809 = fadd fast float %9807, %9808
  %9810 = fadd fast float %9807, %9805
  %9811 = fsub fast float %9804, %9805
  %9812 = fadd fast float %9811, %9807
  %9813 = call float @dx.op.binary.f32(i32 35, float %9809, float %9810)  ; FMax(a,b)
  %9814 = call float @dx.op.binary.f32(i32 36, float %9813, float %9812)  ; FMin(a,b)
  %9815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9746, float %9747, float %9814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9816 = extractvalue %dx.types.ResRet.f32 %9815, 0
  %9817 = extractvalue %dx.types.ResRet.f32 %9815, 1
  %9818 = extractvalue %dx.types.ResRet.f32 %9815, 2
  %9819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.i32 %9819, 0
  %9821 = extractvalue %dx.types.CBufRet.i32 %9819, 1
  %9822 = uitofp i32 %9820 to float
  %9823 = uitofp i32 %9821 to float
  %9824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9825 = extractvalue %dx.types.CBufRet.f32 %9824, 0
  %9826 = extractvalue %dx.types.CBufRet.f32 %9824, 1
  %9827 = fmul fast float %9822, %9746
  %9828 = fmul fast float %9823, %9747
  %9829 = fadd fast float %9827, -5.000000e-01
  %9830 = fadd fast float %9828, -5.000000e-01
  %9831 = call float @dx.op.unary.f32(i32 22, float %9829)  ; Frc(value)
  %9832 = call float @dx.op.unary.f32(i32 22, float %9830)  ; Frc(value)
  %9833 = fmul fast float %9831, %9831
  %9834 = fmul fast float %9833, %9831
  %9835 = fsub fast float 3.000000e+00, %9831
  %9836 = fmul fast float %9833, %9835
  %9837 = fmul fast float %9831, 3.000000e+00
  %9838 = fmul fast float %9834, 3.000000e+00
  %9839 = fmul fast float %9833, 6.000000e+00
  %9840 = fsub fast float %9838, %9839
  %9841 = fadd fast float %9840, 4.000000e+00
  %9842 = fmul fast float %9841, 0x3FC5555560000000
  %9843 = fmul fast float %9834, -3.000000e+00
  %9844 = fadd fast float %9833, %9831
  %9845 = fmul fast float %9844, 3.000000e+00
  %9846 = fadd fast float %9843, 1.000000e+00
  %9847 = fadd fast float %9846, %9845
  %9848 = fmul fast float %9834, 0x3FC5555560000000
  %9849 = fmul fast float %9832, %9832
  %9850 = fmul fast float %9849, %9832
  %9851 = fsub fast float 3.000000e+00, %9832
  %9852 = fmul fast float %9849, %9851
  %9853 = fmul fast float %9832, 3.000000e+00
  %9854 = fmul fast float %9850, 3.000000e+00
  %9855 = fmul fast float %9849, 6.000000e+00
  %9856 = fsub fast float %9854, %9855
  %9857 = fadd fast float %9856, 4.000000e+00
  %9858 = fmul fast float %9857, 0x3FC5555560000000
  %9859 = fmul fast float %9850, -3.000000e+00
  %9860 = fadd fast float %9849, %9832
  %9861 = fmul fast float %9860, 3.000000e+00
  %9862 = fadd fast float %9859, 1.000000e+00
  %9863 = fadd fast float %9862, %9861
  %9864 = fmul fast float %9850, 0x3FC5555560000000
  %9865 = fadd fast float %9831, 1.000000e+00
  %9866 = fsub fast float 1.000000e+00, %9837
  %9867 = fadd fast float %9866, %9836
  %9868 = fadd fast float %9867, %9841
  %9869 = fmul fast float %9868, 0x3FC5555560000000
  %9870 = fdiv fast float %9842, %9869
  %9871 = fsub fast float %9865, %9870
  %9872 = fsub fast float 1.000000e+00, %9831
  %9873 = fadd fast float %9847, %9834
  %9874 = fmul fast float %9873, 0x3FC5555560000000
  %9875 = fdiv fast float %9848, %9874
  %9876 = fadd fast float %9872, %9875
  %9877 = fadd fast float %9832, 1.000000e+00
  %9878 = fsub fast float 1.000000e+00, %9853
  %9879 = fadd fast float %9878, %9852
  %9880 = fadd fast float %9879, %9857
  %9881 = fmul fast float %9880, 0x3FC5555560000000
  %9882 = fdiv fast float %9858, %9881
  %9883 = fsub fast float %9877, %9882
  %9884 = fsub fast float 1.000000e+00, %9832
  %9885 = fadd fast float %9863, %9850
  %9886 = fmul fast float %9885, 0x3FC5555560000000
  %9887 = fdiv fast float %9864, %9886
  %9888 = fadd fast float %9887, %9884
  %9889 = fmul fast float %9871, %9825
  %9890 = fsub fast float %9746, %9889
  %9891 = fmul fast float %9876, %9825
  %9892 = fadd fast float %9891, %9746
  %9893 = fmul fast float %9888, %9826
  %9894 = fadd fast float %9893, %9747
  %9895 = fmul fast float %9883, %9826
  %9896 = fsub fast float %9747, %9895
  %9897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9890, float %9896, float %9814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9898 = extractvalue %dx.types.ResRet.f32 %9897, 0
  %9899 = extractvalue %dx.types.ResRet.f32 %9897, 1
  %9900 = extractvalue %dx.types.ResRet.f32 %9897, 2
  %9901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9892, float %9896, float %9814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9902 = extractvalue %dx.types.ResRet.f32 %9901, 0
  %9903 = extractvalue %dx.types.ResRet.f32 %9901, 1
  %9904 = extractvalue %dx.types.ResRet.f32 %9901, 2
  %9905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9890, float %9894, float %9814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9906 = extractvalue %dx.types.ResRet.f32 %9905, 0
  %9907 = extractvalue %dx.types.ResRet.f32 %9905, 1
  %9908 = extractvalue %dx.types.ResRet.f32 %9905, 2
  %9909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9892, float %9894, float %9814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9910 = extractvalue %dx.types.ResRet.f32 %9909, 0
  %9911 = extractvalue %dx.types.ResRet.f32 %9909, 1
  %9912 = extractvalue %dx.types.ResRet.f32 %9909, 2
  %9913 = fsub fast float %9906, %9898
  %9914 = fsub fast float %9907, %9899
  %9915 = fsub fast float %9908, %9900
  %9916 = fmul fast float %9913, %9886
  %9917 = fmul fast float %9914, %9886
  %9918 = fmul fast float %9915, %9886
  %9919 = fadd fast float %9916, %9898
  %9920 = fadd fast float %9917, %9899
  %9921 = fadd fast float %9918, %9900
  %9922 = fsub fast float %9910, %9902
  %9923 = fsub fast float %9911, %9903
  %9924 = fsub fast float %9912, %9904
  %9925 = fmul fast float %9922, %9886
  %9926 = fmul fast float %9923, %9886
  %9927 = fmul fast float %9924, %9886
  %9928 = fsub fast float %9902, %9919
  %9929 = fadd fast float %9928, %9925
  %9930 = fsub fast float %9903, %9920
  %9931 = fadd fast float %9930, %9926
  %9932 = fsub fast float %9904, %9921
  %9933 = fadd fast float %9932, %9927
  %9934 = fmul fast float %9929, %9874
  %9935 = fmul fast float %9931, %9874
  %9936 = fmul fast float %9933, %9874
  %9937 = fadd fast float %9934, %9919
  %9938 = fadd fast float %9935, %9920
  %9939 = fadd fast float %9936, %9921
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 1
  %9942 = fmul fast float %9937, %9941
  %9943 = fmul fast float %9938, %9941
  %9944 = fmul fast float %9939, %9941
  br label %9945

; <label>:9945                                    ; preds = %9776, %9733
  %9946 = phi float [ %9816, %9776 ], [ 1.000000e+00, %9733 ]
  %9947 = phi float [ %9817, %9776 ], [ 1.000000e+00, %9733 ]
  %9948 = phi float [ %9818, %9776 ], [ 1.000000e+00, %9733 ]
  %9949 = phi float [ %9942, %9776 ], [ 0.000000e+00, %9733 ]
  %9950 = phi float [ %9943, %9776 ], [ 0.000000e+00, %9733 ]
  %9951 = phi float [ %9944, %9776 ], [ 0.000000e+00, %9733 ]
  %9952 = fmul fast float %9949, %8287
  %9953 = fmul fast float %9950, %8287
  %9954 = fmul fast float %9951, %8287
  %9955 = fmul fast float %9946, %9740
  %9956 = call float @dx.op.dot3.f32(i32 55, float %9946, float %9947, float %9948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9957 = call float @dx.op.dot3.f32(i32 55, float %9952, float %9953, float %9954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9958 = select i1 %263, float %9956, float %9946
  %9959 = select i1 %263, float %9956, float %9947
  %9960 = select i1 %263, float 1.000000e+00, float %9948
  %9961 = select i1 %263, float %9957, float %9952
  %9962 = select i1 %263, float 0.000000e+00, float %9953
  %9963 = select i1 %263, float 0.000000e+00, float %9954
  %9964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9965 = extractvalue %dx.types.CBufRet.i32 %9964, 3
  %9966 = and i32 %9965, 3
  %9967 = icmp ne i32 %9966, 0
  %9968 = and i32 %9965, 4
  %9969 = icmp ne i32 %9968, 0
  %9970 = and i1 %9967, %9969
  %9971 = and i1 %263, %9970
  br i1 %9971, label %9972, label %9978

; <label>:9972                                    ; preds = %9945
  %9973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9974 = extractvalue %dx.types.CBufRet.f32 %9973, 1
  %9975 = fadd fast float %9955, -1.000000e+00
  %9976 = fmul fast float %9974, %9975
  %9977 = fadd fast float %9976, 1.000000e+00
  br label %9978

; <label>:9978                                    ; preds = %9972, %9945
  %9979 = phi float [ %9977, %9972 ], [ %9955, %9945 ]
  %9980 = fadd fast float %9737, %9734
  %9981 = fmul fast float %9958, %9980
  %9982 = fadd fast float %9981, %9961
  %9983 = fadd fast float %9738, %9735
  %9984 = fmul fast float %9959, %9983
  %9985 = fadd fast float %9984, %9962
  %9986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9987 = extractvalue %dx.types.CBufRet.f32 %9986, 0
  br i1 %263, label %9988, label %10004

; <label>:9988                                    ; preds = %9978
  %9989 = fadd fast float %9982, %9985
  %9990 = fmul fast float %9987, %9989
  %9991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.f32 %9991, 3
  %9993 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %9994 = fsub fast float %8296, %8290
  %9995 = fadd fast float %9994, %8297
  %9996 = fsub fast float %9995, %9993
  %9997 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %9998 = fmul fast float %9996, %9997
  %9999 = call float @dx.op.unary.f32(i32 7, float %9998)  ; Saturate(value)
  %10000 = fsub fast float %9999, %9992
  %10001 = fmul fast float %10000, %9979
  %10002 = fadd fast float %10001, %9992
  %10003 = fmul fast float %10002, %3846
  br label %10030

; <label>:10004                                   ; preds = %9978
  %10005 = fadd fast float %9739, %9736
  %10006 = fmul fast float %9960, %10005
  %10007 = fadd fast float %10006, %9963
  %10008 = fmul fast float %9987, %9982
  %10009 = fmul fast float %9987, %9985
  %10010 = fmul fast float %9987, %10007
  %10011 = call float @dx.op.binary.f32(i32 35, float %10009, float %10010)  ; FMax(a,b)
  %10012 = call float @dx.op.binary.f32(i32 35, float %10008, float %10011)  ; FMax(a,b)
  %10013 = call float @dx.op.binary.f32(i32 35, float %8287, float %8287)  ; FMax(a,b)
  %10014 = call float @dx.op.binary.f32(i32 35, float %8287, float %10013)  ; FMax(a,b)
  %10015 = call float @dx.op.binary.f32(i32 35, float %10012, float %10014)  ; FMax(a,b)
  %10016 = fcmp fast ugt float %10015, 0x3F10000000000000
  br i1 %10016, label %10018, label %10017

; <label>:10017                                   ; preds = %10004
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10018

; <label>:10018                                   ; preds = %10017, %10004
  %10019 = add i32 %62, 356
  %10020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10019, i32 undef)  ; BufferLoad(srv,index,wot)
  %10021 = extractvalue %dx.types.ResRet.i32 %10020, 0
  %10022 = and i32 %10021, 32
  %10023 = icmp eq i32 %10022, 0
  br i1 %10023, label %10030, label %10024

; <label>:10024                                   ; preds = %10018
  %10025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10026 = extractvalue %dx.types.CBufRet.f32 %10025, 0
  %10027 = fmul fast float %10026, 0x3FE99999A0000000
  %10028 = fadd fast float %10026, %10008
  %10029 = fadd fast float %10027, %10010
  br label %10030

; <label>:10030                                   ; preds = %10024, %10018, %9988
  %10031 = phi float [ %3846, %9988 ], [ %8287, %10024 ], [ %8287, %10018 ]
  %10032 = phi float [ %9990, %9988 ], [ %10028, %10024 ], [ %10008, %10018 ]
  %10033 = phi float [ %10003, %9988 ], [ %10009, %10024 ], [ %10009, %10018 ]
  %10034 = phi float [ %3846, %9988 ], [ %10029, %10024 ], [ %10010, %10018 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10035 = call float @dx.op.binary.f32(i32 36, float %10032, float 3.225500e+04)  ; FMin(a,b)
  %10036 = call float @dx.op.binary.f32(i32 36, float %10033, float 3.225500e+04)  ; FMin(a,b)
  %10037 = call float @dx.op.binary.f32(i32 36, float %10034, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10035)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10036)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10037)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10038 = call float @dx.op.binary.f32(i32 36, float %8287, float 3.225500e+04)  ; FMin(a,b)
  %10039 = call float @dx.op.binary.f32(i32 36, float %10031, float 3.225500e+04)  ; FMin(a,b)
  %10040 = call float @dx.op.binary.f32(i32 36, float %10031, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10038)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10039)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!73 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !103}
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
!99 = !{!100, !101}
!100 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!101 = !{i32 1, !"SV_Target", i8 9, i8 16, !102, i8 0, i32 1, i8 4, i32 1, i8 0, !79}
!102 = !{i32 1}
!103 = !{i32 0, i64 16}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !114, i64 0}
!128 = distinct !{!128, !106}
!129 = distinct !{!129, !106}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = !{!142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!142 = distinct !{!142, !143, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!143 = distinct !{!143, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!144 = distinct !{!144, !145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!145 = distinct !{!145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!146 = distinct !{!146, !145, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!152 = distinct !{!152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!153 = distinct !{!153, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!154 = distinct !{!154, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!155 = distinct !{!155, !156, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!156 = distinct !{!156, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!165 = !{!161}
!166 = !{!162, !158, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!167 = !{!168}
!168 = distinct !{!168, !169, !"\01?sort@@YAXAIAM00@Z: %c"}
!169 = distinct !{!169, !"\01?sort@@YAXAIAM00@Z"}
!170 = !{!171, !172, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!171 = distinct !{!171, !169, !"\01?sort@@YAXAIAM00@Z: %a"}
!172 = distinct !{!172, !169, !"\01?sort@@YAXAIAM00@Z: %b"}
!173 = !{!172}
!174 = !{!171, !168, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!175 = !{!171}
!176 = !{!172, !168, !142, !144, !146, !147, !149, !150, !151, !153, !154, !155}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 2}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}

