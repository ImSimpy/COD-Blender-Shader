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
; shader hash: e4ff7da6b4dc2e178708aef29ba4aafe
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %109 = alloca [4 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [3 x float], align 4
  %114 = alloca [3 x float], align 4
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fmul fast float %118, %103
  %120 = fmul fast float %118, %104
  %121 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %122 = bitcast float %121 to i32
  %123 = ashr i32 %122, 1
  %124 = sub nsw i32 1597250115, %123
  %125 = bitcast i32 %124 to float
  %126 = fmul fast float %125, %94
  %127 = fmul fast float %125, %95
  %128 = fmul fast float %125, %96
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast une float %142, 0.000000e+00
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %119, 2.000000e+00
  %148 = fmul fast float %147, %145
  %149 = fmul fast float %120, 2.000000e+00
  %150 = fmul fast float %149, %146
  %151 = fsub fast float 1.000000e+00, %148
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = select i1 %143, float %154, float %158
  %162 = select i1 %143, float %155, float %159
  %163 = select i1 %143, float %156, float %160
  %164 = fmul fast float %161, %151
  %165 = fmul fast float %162, %151
  %166 = fmul fast float %163, %151
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %201 = fmul fast float %119, 5.000000e-01
  %202 = fmul fast float %120, 5.000000e-01
  %203 = fptosi float %201 to i32
  %204 = fptosi float %202 to i32
  %205 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = lshr i32 %206, 18
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F4C00EBA0000000
  %210 = call float @dx.op.unary.f32(i32 21, float %209)  ; Exp(value)
  %211 = fadd fast float %210, -1.000000e+00
  %212 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %213 = extractvalue %dx.types.Dimensions %212, 0
  %214 = sitofp i32 %213 to float
  %215 = extractvalue %dx.types.Dimensions %212, 1
  %216 = sitofp i32 %215 to float
  %217 = fcmp fast oge float %201, %214
  %218 = fcmp fast oge float %202, %216
  %219 = or i1 %217, %218
  %220 = select i1 %219, float 0x4197782600000000, float %211
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %224 = fmul fast float %222, %119
  %225 = fmul fast float %223, %120
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 114688
  %229 = icmp ne i32 %228, 0
  %230 = select i1 %229, float %224, float 0.000000e+00
  %231 = select i1 %229, float %225, float 0.000000e+00
  %232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fmul fast float %233, 2.550000e+02
  %235 = fptoui float %234 to i32
  %236 = select i1 %229, i32 %235, i32 0
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 3
  %239 = and i32 %238, 3
  %240 = icmp ne i32 %239, 0
  %241 = and i32 %238, 4
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %240, %242
  br i1 %243, label %244, label %253

; <label>:244                                     ; preds = %0
  %245 = fmul fast float %146, %120
  %246 = fmul fast float %145, %119
  %247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %246, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fsub fast float 1.000000e+00, %248
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = fcmp fast olt float %249, %251
  br label %256

; <label>:253                                     ; preds = %0
  %254 = icmp eq i32 %241, 0
  %255 = and i1 %240, %254
  br label %256

; <label>:256                                     ; preds = %253, %244
  %257 = phi i1 [ %252, %244 ], [ %255, %253 ]
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %260 = fmul fast float %259, 0x3FE3C6EF40000000
  %261 = frem fast float %119, 2.560000e+02
  %262 = frem fast float %120, 2.560000e+02
  %263 = fptoui float %261 to i32
  %264 = fptoui float %262 to i32
  %265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %263, i32 %264, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fadd fast float %266, %260
  %268 = call float @dx.op.unary.f32(i32 22, float %267)  ; Frc(value)
  %269 = add i32 %60, 156
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %60, 216
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %60, 36
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %60, 288
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %60, 172
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %60, 232
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %60, 52
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %60, 304
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %60, 188
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %60, 248
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %60, 68
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %60, 320
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %60, 204
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = shl i32 %397, 4
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %397, 7
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %397, 22
  %405 = shl nuw nsw i32 %404, 5
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %60, 264
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %409, 8
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %409, 16
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = add i32 %60, 84
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %60, 336
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = fmul fast float %432, 0x3F50624DE0000000
  %436 = fmul fast float %434, 0x3F50624DE0000000
  %437 = add i32 %60, 348
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 32
  %441 = icmp eq i32 %440, 0
  %442 = and i32 %439, 64
  %443 = icmp eq i32 %442, 0
  %444 = and i32 %439, 128
  %445 = icmp eq i32 %444, 0
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 2
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %465, label %450

; <label>:450                                     ; preds = %256
  %451 = add i32 %60, 472
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = add i32 %453, 0
  %455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %455, %dx.types.Handle %116, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = extractvalue %dx.types.ResRet.f32 %456, 3
  %461 = fmul fast float %460, %99
  %462 = fmul fast float %457, %100
  %463 = fmul fast float %458, %101
  %464 = fmul fast float %459, %102
  br label %465

; <label>:465                                     ; preds = %450, %256
  %466 = phi float [ %102, %256 ], [ %464, %450 ]
  %467 = phi float [ %101, %256 ], [ %463, %450 ]
  %468 = phi float [ %100, %256 ], [ %462, %450 ]
  %469 = phi float [ %99, %256 ], [ %461, %450 ]
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 2
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %493, label %474

; <label>:474                                     ; preds = %465
  %475 = add i32 %60, 44
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 1
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %468, float 1.000000e+00
  %481 = add i32 %60, 60
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %467, float 1.000000e+00
  %487 = add i32 %60, 76
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %466, float 1.000000e+00
  br label %493

; <label>:493                                     ; preds = %474, %465
  %494 = phi float [ %466, %465 ], [ %492, %474 ]
  %495 = phi float [ %467, %465 ], [ %486, %474 ]
  %496 = phi float [ %468, %465 ], [ %480, %474 ]
  %497 = lshr i32 %471, 20
  %498 = and i32 %497, 3
  %499 = add nuw nsw i32 %498, 1
  %500 = add i32 %60, 24
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %60, 28
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = or i32 %505, %502
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %1095, label %508

; <label>:508                                     ; preds = %493
  %509 = and i32 %502, 262144
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %65, float 1.000000e+00
  %512 = select i1 %510, float %66, float 0.000000e+00
  %513 = select i1 %510, float %67, float 0.000000e+00
  %514 = select i1 %510, float %68, float 1.000000e+00
  %515 = select i1 %510, float %69, float %97
  %516 = select i1 %510, float %70, float %98
  %517 = add i32 %60, 284
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %519, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = fmul fast float %521, 0x3F50624DE0000000
  %523 = add i32 %60, 88
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = lshr i32 %525, 16
  %527 = and i32 %526, 255
  %528 = lshr i32 %525, 24
  %529 = add i32 %60, 292
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 65535
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %531, 16
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = add i32 %60, 32
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = lshr i32 %538, 22
  %540 = shl nuw nsw i32 %539, 5
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = shl i32 %538, 4
  %543 = and i32 %542, 32752
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %538, 7
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul fast float %549, 1.000000e+03
  %551 = fmul fast float %309, %550
  %552 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %553 = fadd fast float %552, %299
  %554 = fmul fast float %310, %550
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fadd fast float %555, %301
  %557 = fmul fast float %522, %550
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fmul fast float %558, 0x401921FB60000000
  %560 = fadd fast float %559, %541
  %561 = call float @dx.op.unary.f32(i32 13, float %560)  ; Sin(value)
  %562 = call float @dx.op.unary.f32(i32 12, float %560)  ; Cos(value)
  %563 = fsub fast float -0.000000e+00, %561
  %564 = fadd fast float %515, -5.000000e-01
  %565 = fadd fast float %516, -5.000000e-01
  %566 = fmul fast float %533, %564
  %567 = fmul fast float %535, %565
  %568 = fadd fast float %566, 5.000000e-01
  %569 = fadd fast float %567, 5.000000e-01
  %570 = fmul fast float %544, %568
  %571 = fmul fast float %547, %569
  %572 = fmul fast float %562, %570
  %573 = call float @dx.op.tertiary.f32(i32 46, float %563, float %571, float %572)  ; FMad(a,b,c)
  %574 = fmul fast float %561, %570
  %575 = call float @dx.op.tertiary.f32(i32 46, float %562, float %571, float %574)  ; FMad(a,b,c)
  %576 = fadd fast float %553, %573
  %577 = fadd fast float %556, %575
  %578 = icmp ugt i32 %527, 1
  %579 = icmp ugt i32 %525, 33554431
  %580 = or i1 %579, %578
  br i1 %580, label %581, label %606

; <label>:581                                     ; preds = %508
  %582 = add i32 %60, 228
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = lshr i32 %584, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = fmul fast float %549, %586
  %588 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %589 = mul nuw nsw i32 %527, %528
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %588, %590
  %592 = call float @dx.op.unary.f32(i32 27, float %591)  ; Round_ni(value)
  %593 = fptoui float %592 to i32
  %594 = urem i32 %593, %527
  %595 = udiv i32 %593, %528
  %596 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %597 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %598 = uitofp i32 %594 to float
  %599 = uitofp i32 %595 to float
  %600 = fadd fast float %596, %598
  %601 = fadd fast float %597, %599
  %602 = uitofp i32 %527 to float
  %603 = uitofp i32 %528 to float
  %604 = fdiv fast float %600, %602
  %605 = fdiv fast float %601, %603
  br label %606

; <label>:606                                     ; preds = %581, %508
  %607 = phi float [ %604, %581 ], [ %576, %508 ]
  %608 = phi float [ %605, %581 ], [ %577, %508 ]
  %609 = and i32 %502, 256
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %657, label %611

; <label>:611                                     ; preds = %606
  %612 = add i32 %60, 424
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = add i32 %614, 0
  %616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %616, %dx.types.Handle %116, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = add i32 %60, 100
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = shl i32 %621, 4
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %621, 7
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = fsub fast float 1.000000e+00, %469
  %629 = call float @dx.op.binary.f32(i32 35, float %628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %630 = bitcast float %469 to i32
  %631 = sitofp i32 %630 to float
  %632 = fadd fast float %631, 0xC1CFBF8940000000
  %633 = fmul fast float %627, %632
  %634 = fadd fast float %633, 0x41CFBF8940000000
  %635 = fptosi float %634 to i32
  %636 = bitcast i32 %635 to float
  %637 = bitcast float %629 to i32
  %638 = sitofp i32 %637 to float
  %639 = fadd fast float %638, 0xC1CFBF8940000000
  %640 = fmul fast float %639, %627
  %641 = fadd fast float %640, 0x41CFBF8940000000
  %642 = fptosi float %641 to i32
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %636, %624
  %645 = fmul fast float %643, %624
  %646 = fsub fast float %629, %644
  %647 = fadd fast float %645, %629
  %648 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %649 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %650 = fsub fast float %618, %648
  %651 = fsub fast float %649, %648
  %652 = bitcast float %651 to i32
  %653 = sub nsw i32 2129859010, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %654, %650
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  br label %657

; <label>:657                                     ; preds = %611, %606
  %658 = phi float [ %656, %611 ], [ %469, %606 ]
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 128
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %679, label %663

; <label>:663                                     ; preds = %657
  %664 = add i32 %60, 408
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %116, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 524288
  %674 = icmp ne i32 %673, 0
  %675 = fcmp fast ogt float %670, 0x3FE0101020000000
  %676 = select i1 %675, float 1.000000e+00, float 0.000000e+00
  %677 = select i1 %674, float %676, float %670
  %678 = fmul fast float %677, %658
  br label %679

; <label>:679                                     ; preds = %663, %657
  %680 = phi float [ %678, %663 ], [ %658, %657 ]
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 16
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %883, label %685

; <label>:685                                     ; preds = %679
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %60, 360
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %115, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  %698 = and i32 %687, 255
  %699 = uitofp i32 %698 to float
  %700 = lshr i32 %687, 8
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %697, %699
  %704 = fadd fast float %703, %702
  %705 = fmul fast float %704, 0x3F70101000000000
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 512
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %718, label %710

; <label>:710                                     ; preds = %685
  %711 = add i32 %60, 440
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %116, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  br label %718

; <label>:718                                     ; preds = %710, %685
  %719 = phi float [ %717, %710 ], [ 1.000000e+00, %685 ]
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 33554432
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %830, label %724

; <label>:724                                     ; preds = %718
  %725 = add i32 %60, 224
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = lshr i32 %727, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = add i32 %60, 228
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 24
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = and i32 %738, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = lshr i32 %738, 8
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = lshr i32 %738, 16
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = add i32 %60, 220
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = lshr i32 %755, 24
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = and i32 %755, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = lshr i32 %755, 8
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = lshr i32 %755, 16
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = bitcast float %694 to i32
  %771 = ashr i32 %770, 1
  %772 = sub nsw i32 1597463174, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %694, 5.000000e-01
  %775 = fmul fast float %773, %773
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.500000e+00, %776
  %778 = fmul fast float %773, %694
  %779 = fmul fast float %778, %777
  %780 = bitcast float %695 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %695, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %695
  %789 = fmul fast float %788, %787
  %790 = bitcast float %696 to i32
  %791 = ashr i32 %790, 1
  %792 = sub nsw i32 1597463174, %791
  %793 = bitcast i32 %792 to float
  %794 = fmul fast float %696, 5.000000e-01
  %795 = fmul fast float %793, %793
  %796 = fmul fast float %795, %794
  %797 = fsub fast float 1.500000e+00, %796
  %798 = fmul fast float %793, %696
  %799 = fmul fast float %798, %797
  %800 = fsub fast float %779, %761
  %801 = fsub fast float %789, %765
  %802 = fsub fast float %799, %769
  %803 = fmul fast float %800, %729
  %804 = fmul fast float %801, %731
  %805 = fmul fast float %802, %736
  %806 = fadd fast float %803, %744
  %807 = fadd fast float %804, %748
  %808 = fadd fast float %805, %752
  %809 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %811 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %812 = fmul fast float %809, %809
  %813 = fmul fast float %810, %810
  %814 = fmul fast float %811, %811
  %815 = fsub fast float %812, %694
  %816 = fsub fast float %813, %695
  %817 = fsub fast float %814, %696
  %818 = fmul fast float %815, %719
  %819 = fmul fast float %816, %719
  %820 = fmul fast float %817, %719
  %821 = fadd fast float %818, %694
  %822 = fadd fast float %819, %695
  %823 = fadd fast float %820, %696
  %824 = fadd fast float %741, %705
  %825 = fsub fast float %824, %758
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = fsub fast float %826, %705
  %828 = fmul fast float %827, %719
  %829 = fadd fast float %828, %705
  br label %883

; <label>:830                                     ; preds = %718
  %831 = and i32 %721, 134217728
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %867, label %833

; <label>:833                                     ; preds = %830
  %834 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %835 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %836 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %837 = fadd fast float %834, -5.000000e-01
  %838 = fadd fast float %835, -5.000000e-01
  %839 = fadd fast float %836, -5.000000e-01
  %840 = fmul fast float %837, %719
  %841 = fmul fast float %838, %719
  %842 = fmul fast float %839, %719
  %843 = fadd fast float %840, 5.000000e-01
  %844 = fadd fast float %841, 5.000000e-01
  %845 = fadd fast float %842, 5.000000e-01
  %846 = call float @dx.op.unary.f32(i32 24, float %694)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %695)  ; Sqrt(value)
  %848 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %849 = fmul fast float %843, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %846
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %846
  %854 = fmul fast float %844, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %847
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %847
  %859 = fmul fast float %845, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %848
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %848
  %864 = fmul fast float %853, %853
  %865 = fmul fast float %858, %858
  %866 = fmul fast float %863, %863
  br label %883

; <label>:867                                     ; preds = %830
  %868 = fmul fast float %286, %286
  %869 = fmul fast float %290, %290
  %870 = fmul fast float %294, %294
  %871 = fadd fast float %868, -1.000000e+00
  %872 = fadd fast float %869, -1.000000e+00
  %873 = fadd fast float %870, -1.000000e+00
  %874 = fmul fast float %719, %871
  %875 = fmul fast float %719, %872
  %876 = fmul fast float %719, %873
  %877 = fadd fast float %874, 1.000000e+00
  %878 = fadd fast float %875, 1.000000e+00
  %879 = fadd fast float %876, 1.000000e+00
  %880 = fmul fast float %877, %694
  %881 = fmul fast float %878, %695
  %882 = fmul fast float %879, %696
  br label %883

; <label>:883                                     ; preds = %867, %833, %724, %679
  %884 = phi float [ %829, %724 ], [ %705, %833 ], [ %705, %867 ], [ 0x3FA23C0BE0000000, %679 ]
  %885 = phi float [ %821, %724 ], [ %864, %833 ], [ %880, %867 ], [ 1.000000e+00, %679 ]
  %886 = phi float [ %822, %724 ], [ %865, %833 ], [ %881, %867 ], [ 1.000000e+00, %679 ]
  %887 = phi float [ %823, %724 ], [ %866, %833 ], [ %882, %867 ], [ 1.000000e+00, %679 ]
  %888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.i32 %888, 1
  %890 = and i32 %889, 1
  %891 = icmp ne i32 %890, 0
  %892 = add i32 %60, 356
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 32
  %896 = icmp ne i32 %895, 0
  %897 = and i1 %891, %896
  %898 = select i1 %897, float 1.000000e+00, float %885
  %899 = select i1 %897, float 0x3FD3333340000000, float %886
  %900 = select i1 %897, float 0x3FD3333340000000, float %887
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 32
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %977, label %905

; <label>:905                                     ; preds = %883
  %906 = add i32 %60, 92
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %60, 376
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %911, 0
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %913, %dx.types.Handle %115, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = extractvalue %dx.types.ResRet.f32 %914, 3
  %919 = and i32 %908, 255
  %920 = uitofp i32 %919 to float
  %921 = lshr i32 %908, 8
  %922 = and i32 %921, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %908, 16
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %926, 0x3F70101000000000
  %928 = fmul fast float %915, %920
  %929 = fadd fast float %928, %923
  %930 = fmul fast float %929, 0x3F70101000000000
  %931 = fadd fast float %916, -5.000000e-01
  %932 = fadd fast float %918, -5.000000e-01
  %933 = fmul fast float %931, %927
  %934 = fmul fast float %932, %927
  %935 = fadd fast float %933, 5.000000e-01
  %936 = fadd fast float %934, 5.000000e-01
  %937 = fmul fast float %935, 2.000000e+00
  %938 = fadd fast float %937, -1.000000e+00
  %939 = fmul fast float %936, 2.000000e+00
  %940 = fadd fast float %939, -1.000000e+00
  %941 = fadd fast float %938, %940
  %942 = fmul fast float %941, 5.000000e-01
  %943 = fsub fast float %938, %940
  %944 = fmul fast float %943, 5.000000e-01
  %945 = call float @dx.op.unary.f32(i32 6, float %942)  ; FAbs(value)
  %946 = fsub fast float 1.000000e+00, %945
  %947 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %948 = fsub fast float %946, %947
  %949 = call float @dx.op.dot3.f32(i32 55, float %942, float %944, float %948, float %942, float %944, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.unary.f32(i32 25, float %949)  ; Rsqrt(value)
  %951 = fmul fast float %942, %950
  %952 = fmul fast float %944, %950
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 67108864
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %973, label %957

; <label>:957                                     ; preds = %905
  %958 = add i32 %60, 280
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 65535
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 65535
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = lshr i32 %960, 16
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = fsub fast float %930, %968
  %970 = fmul fast float %969, %962
  %971 = fadd fast float %970, %966
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  br label %973

; <label>:973                                     ; preds = %957, %905
  %974 = phi float [ %972, %957 ], [ %930, %905 ]
  %975 = call float @dx.op.dot2.f32(i32 54, float %951, float %952, float %511, float %512)  ; Dot2(ax,ay,bx,by)
  %976 = call float @dx.op.dot2.f32(i32 54, float %951, float %952, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  br label %977

; <label>:977                                     ; preds = %973, %883
  %978 = phi float [ %974, %973 ], [ 0x3FD6666660000000, %883 ]
  %979 = phi float [ %975, %973 ], [ 0.000000e+00, %883 ]
  %980 = phi float [ %976, %973 ], [ 0.000000e+00, %883 ]
  %981 = phi float [ %917, %973 ], [ 1.000000e+00, %883 ]
  %982 = add i32 %60, 160
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = lshr i32 %984, 22
  %986 = shl nuw nsw i32 %985, 5
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 64
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1025, label %992

; <label>:992                                     ; preds = %977
  %993 = add i32 %60, 392
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %995, 0
  %997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 131072
  %1001 = icmp eq i32 %1000, 0
  %1002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %997, %dx.types.Handle %115, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = fmul fast float %1003, %274
  %1007 = fmul fast float %1004, %277
  %1008 = fmul fast float %1005, %280
  br i1 %1001, label %1015, label %1009

; <label>:1009                                    ; preds = %992
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = fmul fast float %1011, %1006
  %1013 = fmul fast float %1011, %1007
  %1014 = fmul fast float %1011, %1008
  br label %1015

; <label>:1015                                    ; preds = %1009, %992
  %1016 = phi float [ %1012, %1009 ], [ %1006, %992 ]
  %1017 = phi float [ %1013, %1009 ], [ %1007, %992 ]
  %1018 = phi float [ %1014, %1009 ], [ %1008, %992 ]
  %1019 = fmul fast float %1016, %987
  %1020 = select i1 %257, float %1019, float %1016
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1017, float %1018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = select i1 %257, float 0.000000e+00, float %1016
  %1023 = select i1 %257, float %1021, float %1017
  %1024 = select i1 %257, float 0.000000e+00, float %1018
  br label %1025

; <label>:1025                                    ; preds = %1015, %977
  %1026 = phi float [ %1022, %1015 ], [ 0.000000e+00, %977 ]
  %1027 = phi float [ %1023, %1015 ], [ 0.000000e+00, %977 ]
  %1028 = phi float [ %1024, %1015 ], [ 0.000000e+00, %977 ]
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 10240
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1077, label %1033

; <label>:1033                                    ; preds = %1025
  %1034 = add i32 %60, 456
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = add i32 %1036, 0
  %1038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1038, %dx.types.Handle %116, float %607, float %608, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 1048576
  %1045 = icmp ne i32 %1044, 0
  %1046 = and i32 %1043, 8192
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1063, label %1048

; <label>:1048                                    ; preds = %1033
  %1049 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1050 = select i1 %1045, float %1049, float %1040
  %1051 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1052 = select i1 %1045, float %1051, float %1040
  %1053 = add i32 %60, 96
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = lshr i32 %1055, 16
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = fmul fast float %1058, 0x3F80101020000000
  %1060 = fmul fast float %1059, %1052
  %1061 = fmul fast float %1059, %1040
  %1062 = fmul fast float %1059, %1050
  br label %1063

; <label>:1063                                    ; preds = %1048, %1033
  %1064 = phi float [ %1060, %1048 ], [ 0.000000e+00, %1033 ]
  %1065 = phi float [ %1061, %1048 ], [ 0.000000e+00, %1033 ]
  %1066 = phi float [ %1062, %1048 ], [ 0.000000e+00, %1033 ]
  %1067 = and i32 %1043, 2048
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1077, label %1069

; <label>:1069                                    ; preds = %1063
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = shl i32 %1071, 4
  %1073 = and i32 %1072, 32752
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = fmul fast float %1074, %1041
  %1076 = call float @dx.op.binary.f32(i32 35, float %1075, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1077

; <label>:1077                                    ; preds = %1069, %1063, %1025
  %1078 = phi float [ %1064, %1069 ], [ %1064, %1063 ], [ 0.000000e+00, %1025 ]
  %1079 = phi float [ %1065, %1069 ], [ %1065, %1063 ], [ 0.000000e+00, %1025 ]
  %1080 = phi float [ %1066, %1069 ], [ %1066, %1063 ], [ 0.000000e+00, %1025 ]
  %1081 = phi float [ %1076, %1069 ], [ 0x3F70101020000000, %1063 ], [ 0x3F70101020000000, %1025 ]
  %1082 = add i32 %60, 96
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = lshr i32 %1084, 8
  %1088 = and i32 %1087, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = call float @dx.op.dot3.f32(i32 55, float %898, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = fmul fast float %1089, %1090
  %1092 = fadd fast float %1091, %1086
  %1093 = fmul fast float %1092, 0x3F70101020000000
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  br label %1095

; <label>:1095                                    ; preds = %1077, %493
  %1096 = phi float [ 0.000000e+00, %493 ], [ %979, %1077 ]
  %1097 = phi float [ 0.000000e+00, %493 ], [ %980, %1077 ]
  %1098 = phi float [ 0.000000e+00, %493 ], [ %898, %1077 ]
  %1099 = phi float [ 0.000000e+00, %493 ], [ %899, %1077 ]
  %1100 = phi float [ 0.000000e+00, %493 ], [ %900, %1077 ]
  %1101 = phi float [ 0.000000e+00, %493 ], [ %1026, %1077 ]
  %1102 = phi float [ 0.000000e+00, %493 ], [ %1027, %1077 ]
  %1103 = phi float [ 0.000000e+00, %493 ], [ %1028, %1077 ]
  %1104 = phi float [ 0.000000e+00, %493 ], [ %1078, %1077 ]
  %1105 = phi float [ 0.000000e+00, %493 ], [ %1079, %1077 ]
  %1106 = phi float [ 0.000000e+00, %493 ], [ %1080, %1077 ]
  %1107 = phi float [ 0.000000e+00, %493 ], [ %884, %1077 ]
  %1108 = phi float [ 0.000000e+00, %493 ], [ %680, %1077 ]
  %1109 = phi float [ 0.000000e+00, %493 ], [ %978, %1077 ]
  %1110 = phi float [ 0.000000e+00, %493 ], [ %981, %1077 ]
  %1111 = phi float [ 0.000000e+00, %493 ], [ %1081, %1077 ]
  %1112 = phi float [ 0.000000e+00, %493 ], [ %1094, %1077 ]
  br i1 %441, label %1926, label %1113

; <label>:1113                                    ; preds = %1095
  %1114 = icmp ult i32 %499, 2
  %1115 = add i32 %60, 40
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %60, 44
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = or i32 %1120, %1117
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1926, label %1123

; <label>:1123                                    ; preds = %1113
  %1124 = and i32 %1117, 262144
  %1125 = icmp ne i32 %1124, 0
  %1126 = select i1 %1125, float %65, float 1.000000e+00
  %1127 = select i1 %1125, float %66, float 0.000000e+00
  %1128 = select i1 %1125, float %67, float 0.000000e+00
  %1129 = select i1 %1125, float %68, float 1.000000e+00
  %1130 = select i1 %1125, float %69, float %97
  %1131 = select i1 %1125, float %70, float %98
  %1132 = add i32 %60, 300
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = lshr i32 %1134, 16
  %1136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1135)  ; LegacyF16ToF32(value)
  %1137 = fmul fast float %1136, 0x3F50624DE0000000
  %1138 = add i32 %60, 104
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = lshr i32 %1140, 16
  %1142 = and i32 %1141, 255
  %1143 = lshr i32 %1140, 24
  %1144 = add i32 %60, 308
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 65535
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = lshr i32 %1146, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = add i32 %60, 48
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = lshr i32 %1153, 22
  %1155 = shl nuw nsw i32 %1154, 5
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = shl i32 %1153, 4
  %1158 = and i32 %1157, 32752
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = lshr i32 %1153, 7
  %1161 = and i32 %1160, 32752
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 3
  %1165 = fmul fast float %1164, 1.000000e+03
  %1166 = fmul fast float %351, %1165
  %1167 = call float @dx.op.unary.f32(i32 22, float %1166)  ; Frc(value)
  %1168 = fadd fast float %1167, %341
  %1169 = fmul fast float %352, %1165
  %1170 = call float @dx.op.unary.f32(i32 22, float %1169)  ; Frc(value)
  %1171 = fadd fast float %1170, %343
  %1172 = fmul fast float %1137, %1165
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = fmul fast float %1173, 0x401921FB60000000
  %1175 = fadd fast float %1174, %1156
  %1176 = call float @dx.op.unary.f32(i32 13, float %1175)  ; Sin(value)
  %1177 = call float @dx.op.unary.f32(i32 12, float %1175)  ; Cos(value)
  %1178 = fsub fast float -0.000000e+00, %1176
  %1179 = fadd fast float %1130, -5.000000e-01
  %1180 = fadd fast float %1131, -5.000000e-01
  %1181 = fmul fast float %1148, %1179
  %1182 = fmul fast float %1150, %1180
  %1183 = fadd fast float %1181, 5.000000e-01
  %1184 = fadd fast float %1182, 5.000000e-01
  %1185 = fmul fast float %1159, %1183
  %1186 = fmul fast float %1162, %1184
  %1187 = fmul fast float %1177, %1185
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %1178, float %1186, float %1187)  ; FMad(a,b,c)
  %1189 = fmul fast float %1176, %1185
  %1190 = call float @dx.op.tertiary.f32(i32 46, float %1177, float %1186, float %1189)  ; FMad(a,b,c)
  %1191 = fadd fast float %1168, %1188
  %1192 = fadd fast float %1171, %1190
  %1193 = icmp ugt i32 %1142, 1
  %1194 = icmp ugt i32 %1140, 33554431
  %1195 = or i1 %1194, %1193
  br i1 %1195, label %1196, label %1221

; <label>:1196                                    ; preds = %1123
  %1197 = add i32 %60, 244
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = lshr i32 %1199, 16
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = fmul fast float %1164, %1201
  %1203 = call float @dx.op.unary.f32(i32 22, float %1202)  ; Frc(value)
  %1204 = mul nuw nsw i32 %1142, %1143
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1203, %1205
  %1207 = call float @dx.op.unary.f32(i32 27, float %1206)  ; Round_ni(value)
  %1208 = fptoui float %1207 to i32
  %1209 = urem i32 %1208, %1142
  %1210 = udiv i32 %1208, %1143
  %1211 = call float @dx.op.unary.f32(i32 22, float %1191)  ; Frc(value)
  %1212 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1213 = uitofp i32 %1209 to float
  %1214 = uitofp i32 %1210 to float
  %1215 = fadd fast float %1211, %1213
  %1216 = fadd fast float %1212, %1214
  %1217 = uitofp i32 %1142 to float
  %1218 = uitofp i32 %1143 to float
  %1219 = fdiv fast float %1215, %1217
  %1220 = fdiv fast float %1216, %1218
  br label %1221

; <label>:1221                                    ; preds = %1196, %1123
  %1222 = phi float [ %1219, %1196 ], [ %1191, %1123 ]
  %1223 = phi float [ %1220, %1196 ], [ %1192, %1123 ]
  %1224 = and i32 %1117, 256
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1272, label %1226

; <label>:1226                                    ; preds = %1221
  %1227 = add i32 %60, 428
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %1229, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1231, %dx.types.Handle %116, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = add i32 %60, 116
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = shl i32 %1236, 4
  %1238 = and i32 %1237, 32752
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = lshr i32 %1236, 7
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = fsub fast float 1.000000e+00, %496
  %1244 = call float @dx.op.binary.f32(i32 35, float %1243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1245 = bitcast float %496 to i32
  %1246 = sitofp i32 %1245 to float
  %1247 = fadd fast float %1246, 0xC1CFBF8940000000
  %1248 = fmul fast float %1242, %1247
  %1249 = fadd fast float %1248, 0x41CFBF8940000000
  %1250 = fptosi float %1249 to i32
  %1251 = bitcast i32 %1250 to float
  %1252 = bitcast float %1244 to i32
  %1253 = sitofp i32 %1252 to float
  %1254 = fadd fast float %1253, 0xC1CFBF8940000000
  %1255 = fmul fast float %1254, %1242
  %1256 = fadd fast float %1255, 0x41CFBF8940000000
  %1257 = fptosi float %1256 to i32
  %1258 = bitcast i32 %1257 to float
  %1259 = fmul fast float %1251, %1239
  %1260 = fmul fast float %1258, %1239
  %1261 = fsub fast float %1244, %1259
  %1262 = fadd fast float %1260, %1244
  %1263 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1264 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1265 = fsub fast float %1233, %1263
  %1266 = fsub fast float %1264, %1263
  %1267 = bitcast float %1266 to i32
  %1268 = sub nsw i32 2129859010, %1267
  %1269 = bitcast i32 %1268 to float
  %1270 = fmul fast float %1269, %1265
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  br label %1272

; <label>:1272                                    ; preds = %1226, %1221
  %1273 = phi float [ %1271, %1226 ], [ %496, %1221 ]
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 128
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1294, label %1278

; <label>:1278                                    ; preds = %1272
  %1279 = add i32 %60, 412
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1283, %dx.types.Handle %116, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 524288
  %1289 = icmp ne i32 %1288, 0
  %1290 = fcmp fast ogt float %1285, 0x3FE0101020000000
  %1291 = select i1 %1290, float 1.000000e+00, float 0.000000e+00
  %1292 = select i1 %1289, float %1291, float %1285
  %1293 = fmul fast float %1292, %1273
  br label %1294

; <label>:1294                                    ; preds = %1278, %1272
  %1295 = phi float [ %1293, %1278 ], [ %1273, %1272 ]
  %1296 = fcmp fast ult float %1295, 0x3F70101020000000
  br i1 %1296, label %1926, label %1297

; <label>:1297                                    ; preds = %1294
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 16
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1500, label %1302

; <label>:1302                                    ; preds = %1297
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = add i32 %60, 364
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %1307, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1309, %dx.types.Handle %115, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = extractvalue %dx.types.ResRet.f32 %1310, 3
  %1315 = and i32 %1304, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = lshr i32 %1304, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1314, %1316
  %1321 = fadd fast float %1320, %1319
  %1322 = fmul fast float %1321, 0x3F70101000000000
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 512
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1335, label %1327

; <label>:1327                                    ; preds = %1302
  %1328 = add i32 %60, 444
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = add i32 %1330, 0
  %1332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1332, %dx.types.Handle %116, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  br label %1335

; <label>:1335                                    ; preds = %1327, %1302
  %1336 = phi float [ %1334, %1327 ], [ 1.000000e+00, %1302 ]
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 33554432
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1447, label %1341

; <label>:1341                                    ; preds = %1335
  %1342 = add i32 %60, 240
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 65535
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = lshr i32 %1344, 16
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = add i32 %60, 244
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 65535
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 24
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = and i32 %1355, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = lshr i32 %1355, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1355, 16
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = add i32 %60, 236
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = lshr i32 %1372, 24
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = and i32 %1372, 255
  %1377 = uitofp i32 %1376 to float
  %1378 = fmul fast float %1377, 0x3F70101020000000
  %1379 = lshr i32 %1372, 8
  %1380 = and i32 %1379, 255
  %1381 = uitofp i32 %1380 to float
  %1382 = fmul fast float %1381, 0x3F70101020000000
  %1383 = lshr i32 %1372, 16
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1385, 0x3F70101020000000
  %1387 = bitcast float %1311 to i32
  %1388 = ashr i32 %1387, 1
  %1389 = sub nsw i32 1597463174, %1388
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1311, 5.000000e-01
  %1392 = fmul fast float %1390, %1390
  %1393 = fmul fast float %1392, %1391
  %1394 = fsub fast float 1.500000e+00, %1393
  %1395 = fmul fast float %1390, %1311
  %1396 = fmul fast float %1395, %1394
  %1397 = bitcast float %1312 to i32
  %1398 = ashr i32 %1397, 1
  %1399 = sub nsw i32 1597463174, %1398
  %1400 = bitcast i32 %1399 to float
  %1401 = fmul fast float %1312, 5.000000e-01
  %1402 = fmul fast float %1400, %1400
  %1403 = fmul fast float %1402, %1401
  %1404 = fsub fast float 1.500000e+00, %1403
  %1405 = fmul fast float %1400, %1312
  %1406 = fmul fast float %1405, %1404
  %1407 = bitcast float %1313 to i32
  %1408 = ashr i32 %1407, 1
  %1409 = sub nsw i32 1597463174, %1408
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1313, 5.000000e-01
  %1412 = fmul fast float %1410, %1410
  %1413 = fmul fast float %1412, %1411
  %1414 = fsub fast float 1.500000e+00, %1413
  %1415 = fmul fast float %1410, %1313
  %1416 = fmul fast float %1415, %1414
  %1417 = fsub fast float %1396, %1378
  %1418 = fsub fast float %1406, %1382
  %1419 = fsub fast float %1416, %1386
  %1420 = fmul fast float %1417, %1346
  %1421 = fmul fast float %1418, %1348
  %1422 = fmul fast float %1419, %1353
  %1423 = fadd fast float %1420, %1361
  %1424 = fadd fast float %1421, %1365
  %1425 = fadd fast float %1422, %1369
  %1426 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1427 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1428 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1429 = fmul fast float %1426, %1426
  %1430 = fmul fast float %1427, %1427
  %1431 = fmul fast float %1428, %1428
  %1432 = fsub fast float %1429, %1311
  %1433 = fsub fast float %1430, %1312
  %1434 = fsub fast float %1431, %1313
  %1435 = fmul fast float %1432, %1336
  %1436 = fmul fast float %1433, %1336
  %1437 = fmul fast float %1434, %1336
  %1438 = fadd fast float %1435, %1311
  %1439 = fadd fast float %1436, %1312
  %1440 = fadd fast float %1437, %1313
  %1441 = fadd fast float %1358, %1322
  %1442 = fsub fast float %1441, %1375
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1444 = fsub fast float %1443, %1322
  %1445 = fmul fast float %1444, %1336
  %1446 = fadd fast float %1445, %1322
  br label %1500

; <label>:1447                                    ; preds = %1335
  %1448 = and i32 %1338, 134217728
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1484, label %1450

; <label>:1450                                    ; preds = %1447
  %1451 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1452 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1453 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1454 = fadd fast float %1451, -5.000000e-01
  %1455 = fadd fast float %1452, -5.000000e-01
  %1456 = fadd fast float %1453, -5.000000e-01
  %1457 = fmul fast float %1454, %1336
  %1458 = fmul fast float %1455, %1336
  %1459 = fmul fast float %1456, %1336
  %1460 = fadd fast float %1457, 5.000000e-01
  %1461 = fadd fast float %1458, 5.000000e-01
  %1462 = fadd fast float %1459, 5.000000e-01
  %1463 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1464 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  %1465 = call float @dx.op.unary.f32(i32 24, float %1313)  ; Sqrt(value)
  %1466 = fmul fast float %1460, 2.000000e+00
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul fast float %1467, %1463
  %1469 = fadd fast float %1468, %1466
  %1470 = fmul fast float %1469, %1463
  %1471 = fmul fast float %1461, 2.000000e+00
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1464
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1474, %1464
  %1476 = fmul fast float %1462, 2.000000e+00
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = fmul fast float %1477, %1465
  %1479 = fadd fast float %1478, %1476
  %1480 = fmul fast float %1479, %1465
  %1481 = fmul fast float %1470, %1470
  %1482 = fmul fast float %1475, %1475
  %1483 = fmul fast float %1480, %1480
  br label %1500

; <label>:1484                                    ; preds = %1447
  %1485 = fmul fast float %328, %328
  %1486 = fmul fast float %332, %332
  %1487 = fmul fast float %336, %336
  %1488 = fadd fast float %1485, -1.000000e+00
  %1489 = fadd fast float %1486, -1.000000e+00
  %1490 = fadd fast float %1487, -1.000000e+00
  %1491 = fmul fast float %1336, %1488
  %1492 = fmul fast float %1336, %1489
  %1493 = fmul fast float %1336, %1490
  %1494 = fadd fast float %1491, 1.000000e+00
  %1495 = fadd fast float %1492, 1.000000e+00
  %1496 = fadd fast float %1493, 1.000000e+00
  %1497 = fmul fast float %1494, %1311
  %1498 = fmul fast float %1495, %1312
  %1499 = fmul fast float %1496, %1313
  br label %1500

; <label>:1500                                    ; preds = %1484, %1450, %1341, %1297
  %1501 = phi float [ %1446, %1341 ], [ %1322, %1450 ], [ %1322, %1484 ], [ 0x3FA23C0BE0000000, %1297 ]
  %1502 = phi float [ %1438, %1341 ], [ %1481, %1450 ], [ %1497, %1484 ], [ 1.000000e+00, %1297 ]
  %1503 = phi float [ %1439, %1341 ], [ %1482, %1450 ], [ %1498, %1484 ], [ 1.000000e+00, %1297 ]
  %1504 = phi float [ %1440, %1341 ], [ %1483, %1450 ], [ %1499, %1484 ], [ 1.000000e+00, %1297 ]
  %1505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.i32 %1505, 1
  %1507 = and i32 %1506, 1
  %1508 = icmp ne i32 %1507, 0
  %1509 = add i32 %60, 356
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 32
  %1513 = icmp ne i32 %1512, 0
  %1514 = and i1 %1508, %1513
  %1515 = select i1 %1514, float 1.000000e+00, float %1502
  %1516 = select i1 %1514, float 0x3FD3333340000000, float %1503
  %1517 = select i1 %1514, float 0x3FD3333340000000, float %1504
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 32
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1594, label %1522

; <label>:1522                                    ; preds = %1500
  %1523 = add i32 %60, 108
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %60, 380
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %115, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = extractvalue %dx.types.ResRet.f32 %1531, 3
  %1536 = and i32 %1525, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = lshr i32 %1525, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = lshr i32 %1525, 16
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101000000000
  %1545 = fmul fast float %1532, %1537
  %1546 = fadd fast float %1545, %1540
  %1547 = fmul fast float %1546, 0x3F70101000000000
  %1548 = fadd fast float %1533, -5.000000e-01
  %1549 = fadd fast float %1535, -5.000000e-01
  %1550 = fmul fast float %1548, %1544
  %1551 = fmul fast float %1549, %1544
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fadd fast float %1551, 5.000000e-01
  %1554 = fmul fast float %1552, 2.000000e+00
  %1555 = fadd fast float %1554, -1.000000e+00
  %1556 = fmul fast float %1553, 2.000000e+00
  %1557 = fadd fast float %1556, -1.000000e+00
  %1558 = fadd fast float %1555, %1557
  %1559 = fmul fast float %1558, 5.000000e-01
  %1560 = fsub fast float %1555, %1557
  %1561 = fmul fast float %1560, 5.000000e-01
  %1562 = call float @dx.op.unary.f32(i32 6, float %1559)  ; FAbs(value)
  %1563 = fsub fast float 1.000000e+00, %1562
  %1564 = call float @dx.op.unary.f32(i32 6, float %1561)  ; FAbs(value)
  %1565 = fsub fast float %1563, %1564
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1559, float %1561, float %1565, float %1559, float %1561, float %1565)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 25, float %1566)  ; Rsqrt(value)
  %1568 = fmul fast float %1559, %1567
  %1569 = fmul fast float %1561, %1567
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 67108864
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1590, label %1574

; <label>:1574                                    ; preds = %1522
  %1575 = add i32 %60, 296
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 65535
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 65535
  %1583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1582)  ; LegacyF16ToF32(value)
  %1584 = lshr i32 %1577, 16
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = fsub fast float %1547, %1585
  %1587 = fmul fast float %1586, %1579
  %1588 = fadd fast float %1587, %1583
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  br label %1590

; <label>:1590                                    ; preds = %1574, %1522
  %1591 = phi float [ %1589, %1574 ], [ %1547, %1522 ]
  %1592 = call float @dx.op.dot2.f32(i32 54, float %1568, float %1569, float %1126, float %1127)  ; Dot2(ax,ay,bx,by)
  %1593 = call float @dx.op.dot2.f32(i32 54, float %1568, float %1569, float %1128, float %1129)  ; Dot2(ax,ay,bx,by)
  br label %1594

; <label>:1594                                    ; preds = %1590, %1500
  %1595 = phi float [ %1591, %1590 ], [ 0x3FD6666660000000, %1500 ]
  %1596 = phi float [ %1592, %1590 ], [ 0.000000e+00, %1500 ]
  %1597 = phi float [ %1593, %1590 ], [ 0.000000e+00, %1500 ]
  %1598 = phi float [ %1534, %1590 ], [ 1.000000e+00, %1500 ]
  %1599 = add i32 %60, 176
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = lshr i32 %1601, 22
  %1603 = shl nuw nsw i32 %1602, 5
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 64
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1642, label %1609

; <label>:1609                                    ; preds = %1594
  %1610 = add i32 %60, 396
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = add i32 %1612, 0
  %1614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 131072
  %1618 = icmp eq i32 %1617, 0
  %1619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1614, %dx.types.Handle %115, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = fmul fast float %1620, %316
  %1624 = fmul fast float %1621, %319
  %1625 = fmul fast float %1622, %322
  br i1 %1618, label %1632, label %1626

; <label>:1626                                    ; preds = %1609
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = fmul fast float %1628, %1623
  %1630 = fmul fast float %1628, %1624
  %1631 = fmul fast float %1628, %1625
  br label %1632

; <label>:1632                                    ; preds = %1626, %1609
  %1633 = phi float [ %1629, %1626 ], [ %1623, %1609 ]
  %1634 = phi float [ %1630, %1626 ], [ %1624, %1609 ]
  %1635 = phi float [ %1631, %1626 ], [ %1625, %1609 ]
  %1636 = fmul fast float %1633, %1604
  %1637 = select i1 %257, float %1636, float %1633
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1637, float %1634, float %1635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = select i1 %257, float 0.000000e+00, float %1633
  %1640 = select i1 %257, float %1638, float %1634
  %1641 = select i1 %257, float 0.000000e+00, float %1635
  br label %1642

; <label>:1642                                    ; preds = %1632, %1594
  %1643 = phi float [ %1639, %1632 ], [ 0.000000e+00, %1594 ]
  %1644 = phi float [ %1640, %1632 ], [ 0.000000e+00, %1594 ]
  %1645 = phi float [ %1641, %1632 ], [ 0.000000e+00, %1594 ]
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 10240
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1694, label %1650

; <label>:1650                                    ; preds = %1642
  %1651 = add i32 %60, 460
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = add i32 %1653, 0
  %1655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1655, %dx.types.Handle %116, float %1222, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1656, 3
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 1048576
  %1662 = icmp ne i32 %1661, 0
  %1663 = and i32 %1660, 8192
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1680, label %1665

; <label>:1665                                    ; preds = %1650
  %1666 = extractvalue %dx.types.ResRet.f32 %1656, 2
  %1667 = select i1 %1662, float %1666, float %1657
  %1668 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1669 = select i1 %1662, float %1668, float %1657
  %1670 = add i32 %60, 112
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = lshr i32 %1672, 16
  %1674 = and i32 %1673, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3F80101020000000
  %1677 = fmul fast float %1676, %1669
  %1678 = fmul fast float %1676, %1657
  %1679 = fmul fast float %1676, %1667
  br label %1680

; <label>:1680                                    ; preds = %1665, %1650
  %1681 = phi float [ %1677, %1665 ], [ 0.000000e+00, %1650 ]
  %1682 = phi float [ %1678, %1665 ], [ 0.000000e+00, %1650 ]
  %1683 = phi float [ %1679, %1665 ], [ 0.000000e+00, %1650 ]
  %1684 = and i32 %1660, 2048
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %1694, label %1686

; <label>:1686                                    ; preds = %1680
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = shl i32 %1688, 4
  %1690 = and i32 %1689, 32752
  %1691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1690)  ; LegacyF16ToF32(value)
  %1692 = fmul fast float %1691, %1658
  %1693 = call float @dx.op.binary.f32(i32 35, float %1692, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1694

; <label>:1694                                    ; preds = %1686, %1680, %1642
  %1695 = phi float [ %1681, %1686 ], [ %1681, %1680 ], [ 0.000000e+00, %1642 ]
  %1696 = phi float [ %1682, %1686 ], [ %1682, %1680 ], [ 0.000000e+00, %1642 ]
  %1697 = phi float [ %1683, %1686 ], [ %1683, %1680 ], [ 0.000000e+00, %1642 ]
  %1698 = phi float [ %1693, %1686 ], [ 0x3F70101020000000, %1680 ], [ 0x3F70101020000000, %1642 ]
  %1699 = add i32 %60, 112
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 255
  %1703 = uitofp i32 %1702 to float
  %1704 = lshr i32 %1701, 8
  %1705 = and i32 %1704, 255
  %1706 = uitofp i32 %1705 to float
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = fmul fast float %1706, %1707
  %1709 = fadd fast float %1708, %1703
  %1710 = fmul fast float %1709, 0x3F70101020000000
  %1711 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  br i1 %1114, label %1712, label %1720

; <label>:1712                                    ; preds = %1694
  %1713 = fsub fast float 1.000000e+00, %1295
  %1714 = fmul fast float %1713, %1098
  %1715 = fmul fast float %1713, %1099
  %1716 = fmul fast float %1713, %1100
  %1717 = fmul fast float %1713, %1101
  %1718 = fmul fast float %1713, %1102
  %1719 = fmul fast float %1713, %1103
  br label %1720

; <label>:1720                                    ; preds = %1712, %1694
  %1721 = phi float [ %1714, %1712 ], [ %1098, %1694 ]
  %1722 = phi float [ %1715, %1712 ], [ %1099, %1694 ]
  %1723 = phi float [ %1716, %1712 ], [ %1100, %1694 ]
  %1724 = phi float [ %1717, %1712 ], [ %1101, %1694 ]
  %1725 = phi float [ %1718, %1712 ], [ %1102, %1694 ]
  %1726 = phi float [ %1719, %1712 ], [ %1103, %1694 ]
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 3
  %1730 = icmp eq i32 %1729, 3
  br i1 %1730, label %1809, label %1731

; <label>:1731                                    ; preds = %1720
  %1732 = and i32 %1728, 16
  %1733 = icmp ne i32 %1732, 0
  %1734 = select i1 %1733, float %1295, float 0.000000e+00
  %1735 = icmp eq i32 %1729, 0
  br i1 %1735, label %1736, label %1764

; <label>:1736                                    ; preds = %1731
  %1737 = and i32 %1728, 64
  %1738 = icmp ne i32 %1737, 0
  %1739 = select i1 %1738, float %1295, float 0.000000e+00
  %1740 = fsub fast float %1515, %1721
  %1741 = fsub fast float %1516, %1722
  %1742 = fsub fast float %1517, %1723
  %1743 = fmul fast float %1734, %1740
  %1744 = fmul fast float %1734, %1741
  %1745 = fmul fast float %1734, %1742
  %1746 = fadd fast float %1743, %1721
  %1747 = fadd fast float %1744, %1722
  %1748 = fadd fast float %1745, %1723
  %1749 = fsub fast float %1501, %1107
  %1750 = fmul fast float %1734, %1749
  %1751 = fadd fast float %1750, %1107
  %1752 = fsub fast float %1643, %1724
  %1753 = fsub fast float %1644, %1725
  %1754 = fsub fast float %1645, %1726
  %1755 = fmul fast float %1739, %1752
  %1756 = fmul fast float %1739, %1753
  %1757 = fmul fast float %1739, %1754
  %1758 = fadd fast float %1755, %1724
  %1759 = fadd fast float %1756, %1725
  %1760 = fadd fast float %1757, %1726
  %1761 = fsub fast float %1711, %1112
  %1762 = fmul fast float %1734, %1761
  %1763 = fadd fast float %1762, %1112
  br label %1809

; <label>:1764                                    ; preds = %1731
  %1765 = icmp eq i32 %1729, 1
  br i1 %1765, label %1766, label %1779

; <label>:1766                                    ; preds = %1764
  %1767 = fadd fast float %1515, -1.000000e+00
  %1768 = fadd fast float %1516, -1.000000e+00
  %1769 = fadd fast float %1517, -1.000000e+00
  %1770 = fmul fast float %1734, %1767
  %1771 = fmul fast float %1734, %1768
  %1772 = fmul fast float %1734, %1769
  %1773 = fadd fast float %1770, 1.000000e+00
  %1774 = fadd fast float %1771, 1.000000e+00
  %1775 = fadd fast float %1772, 1.000000e+00
  %1776 = fmul fast float %1773, %1721
  %1777 = fmul fast float %1774, %1722
  %1778 = fmul fast float %1775, %1723
  br label %1809

; <label>:1779                                    ; preds = %1764
  %1780 = icmp eq i32 %1729, 2
  br i1 %1780, label %1781, label %1809

; <label>:1781                                    ; preds = %1779
  %1782 = call float @dx.op.unary.f32(i32 24, float %1515)  ; Sqrt(value)
  %1783 = call float @dx.op.unary.f32(i32 24, float %1516)  ; Sqrt(value)
  %1784 = call float @dx.op.unary.f32(i32 24, float %1517)  ; Sqrt(value)
  %1785 = fadd fast float %1782, -5.000000e-01
  %1786 = fadd fast float %1783, -5.000000e-01
  %1787 = fadd fast float %1784, -5.000000e-01
  %1788 = fmul fast float %1785, %1734
  %1789 = fmul fast float %1786, %1734
  %1790 = fmul fast float %1787, %1734
  %1791 = fadd fast float %1788, 5.000000e-01
  %1792 = fadd fast float %1789, 5.000000e-01
  %1793 = fadd fast float %1790, 5.000000e-01
  %1794 = fmul fast float %1791, 2.000000e+00
  %1795 = fsub fast float 1.000000e+00, %1794
  %1796 = fmul fast float %1795, %1721
  %1797 = fadd fast float %1796, %1794
  %1798 = fmul fast float %1797, %1721
  %1799 = fmul fast float %1792, 2.000000e+00
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = fmul fast float %1800, %1722
  %1802 = fadd fast float %1801, %1799
  %1803 = fmul fast float %1802, %1722
  %1804 = fmul fast float %1793, 2.000000e+00
  %1805 = fsub fast float 1.000000e+00, %1804
  %1806 = fmul fast float %1805, %1723
  %1807 = fadd fast float %1806, %1804
  %1808 = fmul fast float %1807, %1723
  br label %1809

; <label>:1809                                    ; preds = %1781, %1779, %1766, %1736, %1720
  %1810 = phi float [ %1721, %1720 ], [ %1798, %1781 ], [ %1721, %1779 ], [ %1776, %1766 ], [ %1746, %1736 ]
  %1811 = phi float [ %1722, %1720 ], [ %1803, %1781 ], [ %1722, %1779 ], [ %1777, %1766 ], [ %1747, %1736 ]
  %1812 = phi float [ %1723, %1720 ], [ %1808, %1781 ], [ %1723, %1779 ], [ %1778, %1766 ], [ %1748, %1736 ]
  %1813 = phi float [ %1724, %1720 ], [ %1724, %1781 ], [ %1724, %1779 ], [ %1724, %1766 ], [ %1758, %1736 ]
  %1814 = phi float [ %1725, %1720 ], [ %1725, %1781 ], [ %1725, %1779 ], [ %1725, %1766 ], [ %1759, %1736 ]
  %1815 = phi float [ %1726, %1720 ], [ %1726, %1781 ], [ %1726, %1779 ], [ %1726, %1766 ], [ %1760, %1736 ]
  %1816 = phi float [ %1107, %1720 ], [ %1107, %1781 ], [ %1107, %1779 ], [ %1107, %1766 ], [ %1751, %1736 ]
  %1817 = phi float [ %1112, %1720 ], [ %1112, %1781 ], [ %1112, %1779 ], [ %1112, %1766 ], [ %1763, %1736 ]
  %1818 = and i32 %1728, 12
  %1819 = icmp eq i32 %1818, 12
  br i1 %1819, label %1926, label %1820

; <label>:1820                                    ; preds = %1809
  %1821 = and i32 %1728, 2097184
  %1822 = icmp eq i32 %1821, 2097184
  %1823 = select i1 %1822, float %1295, float 0.000000e+00
  %1824 = and i32 %1728, 4194336
  %1825 = icmp eq i32 %1824, 4194336
  %1826 = select i1 %1825, float %1295, float 0.000000e+00
  %1827 = and i32 %1728, 8388640
  %1828 = icmp eq i32 %1827, 8388640
  %1829 = select i1 %1828, float %1295, float 0.000000e+00
  %1830 = and i32 %1728, 2048
  %1831 = icmp ne i32 %1830, 0
  %1832 = select i1 %1831, float %1295, float 0.000000e+00
  %1833 = and i32 %1728, 8192
  %1834 = icmp ne i32 %1833, 0
  %1835 = select i1 %1834, float %1295, float 0.000000e+00
  %1836 = icmp eq i32 %1818, 0
  br i1 %1836, label %1837, label %1862

; <label>:1837                                    ; preds = %1820
  %1838 = fsub fast float %1596, %1096
  %1839 = fsub fast float %1597, %1097
  %1840 = fmul fast float %1823, %1838
  %1841 = fmul fast float %1823, %1839
  %1842 = fadd fast float %1840, %1096
  %1843 = fadd fast float %1841, %1097
  %1844 = fsub fast float %1598, %1110
  %1845 = fmul fast float %1826, %1844
  %1846 = fadd fast float %1845, %1110
  %1847 = fsub fast float %1595, %1109
  %1848 = fmul fast float %1829, %1847
  %1849 = fadd fast float %1848, %1109
  %1850 = fsub fast float %1698, %1111
  %1851 = fmul fast float %1832, %1850
  %1852 = fadd fast float %1851, %1111
  %1853 = fsub fast float %1695, %1104
  %1854 = fsub fast float %1696, %1105
  %1855 = fsub fast float %1697, %1106
  %1856 = fmul fast float %1835, %1853
  %1857 = fmul fast float %1835, %1854
  %1858 = fmul fast float %1835, %1855
  %1859 = fadd fast float %1856, %1104
  %1860 = fadd fast float %1857, %1105
  %1861 = fadd fast float %1858, %1106
  br label %1926

; <label>:1862                                    ; preds = %1820
  %1863 = icmp eq i32 %1818, 4
  br i1 %1863, label %1864, label %1904

; <label>:1864                                    ; preds = %1862
  %1865 = fmul fast float %1823, %1596
  %1866 = fmul fast float %1823, %1597
  %1867 = fadd fast float %1865, %1096
  %1868 = fadd fast float %1866, %1097
  %1869 = call float @dx.op.binary.f32(i32 36, float %1110, float %1598)  ; FMin(a,b)
  %1870 = fsub fast float %1869, %1110
  %1871 = fmul fast float %1870, %1826
  %1872 = fadd fast float %1871, %1110
  %1873 = fadd fast float %1595, %1109
  %1874 = fmul fast float %1873, 0x3FF337FAE0000000
  %1875 = fmul fast float %1109, %1109
  %1876 = fmul fast float %1595, %1595
  %1877 = fadd fast float %1876, %1875
  %1878 = fmul fast float %1877, 0x3FE5152B00000000
  %1879 = fmul fast float %1109, 0xBFCC1F85E0000000
  %1880 = fmul fast float %1879, %1595
  %1881 = fadd fast float %1880, 0xBFE1363700000000
  %1882 = fadd fast float %1881, %1874
  %1883 = fsub fast float %1882, %1878
  %1884 = fmul fast float %1873, 0x3FBA6F0D00000000
  %1885 = fmul fast float %1877, 0x3FD0432880000000
  %1886 = fmul fast float %1109, 0xBFEF110800000000
  %1887 = fmul fast float %1886, %1595
  %1888 = fadd fast float %1887, 1.000000e+00
  %1889 = fsub fast float %1888, %1884
  %1890 = fadd fast float %1889, %1885
  %1891 = fdiv fast float %1883, %1890
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fsub fast float %1892, %1109
  %1894 = fmul fast float %1893, %1829
  %1895 = fadd fast float %1894, %1109
  %1896 = fmul fast float %1832, %1698
  %1897 = fadd fast float %1896, %1111
  %1898 = fmul fast float %1835, %1695
  %1899 = fmul fast float %1835, %1696
  %1900 = fmul fast float %1835, %1697
  %1901 = fadd fast float %1898, %1104
  %1902 = fadd fast float %1899, %1105
  %1903 = fadd fast float %1900, %1106
  br label %1926

; <label>:1904                                    ; preds = %1862
  %1905 = icmp eq i32 %1818, 8
  br i1 %1905, label %1906, label %1926

; <label>:1906                                    ; preds = %1904
  %1907 = fmul fast float %1823, %1596
  %1908 = fmul fast float %1823, %1597
  %1909 = fadd fast float %1907, %1096
  %1910 = fadd fast float %1908, %1097
  %1911 = call float @dx.op.binary.f32(i32 36, float %1110, float %1598)  ; FMin(a,b)
  %1912 = fsub fast float %1911, %1110
  %1913 = fmul fast float %1912, %1826
  %1914 = fadd fast float %1913, %1110
  %1915 = fsub fast float %1595, %1109
  %1916 = fmul fast float %1829, %1915
  %1917 = fadd fast float %1916, %1109
  %1918 = fmul fast float %1832, %1698
  %1919 = fadd fast float %1918, %1111
  %1920 = fmul fast float %1835, %1695
  %1921 = fmul fast float %1835, %1696
  %1922 = fmul fast float %1835, %1697
  %1923 = fadd fast float %1920, %1104
  %1924 = fadd fast float %1921, %1105
  %1925 = fadd fast float %1922, %1106
  br label %1926

; <label>:1926                                    ; preds = %1906, %1904, %1864, %1837, %1809, %1294, %1113, %1095
  %1927 = phi float [ %1096, %1809 ], [ %1096, %1294 ], [ %1096, %1095 ], [ %1909, %1906 ], [ %1096, %1904 ], [ %1867, %1864 ], [ %1842, %1837 ], [ %1096, %1113 ]
  %1928 = phi float [ %1097, %1809 ], [ %1097, %1294 ], [ %1097, %1095 ], [ %1910, %1906 ], [ %1097, %1904 ], [ %1868, %1864 ], [ %1843, %1837 ], [ %1097, %1113 ]
  %1929 = phi float [ %1810, %1809 ], [ %1098, %1294 ], [ %1098, %1095 ], [ %1810, %1906 ], [ %1810, %1904 ], [ %1810, %1864 ], [ %1810, %1837 ], [ %1098, %1113 ]
  %1930 = phi float [ %1811, %1809 ], [ %1099, %1294 ], [ %1099, %1095 ], [ %1811, %1906 ], [ %1811, %1904 ], [ %1811, %1864 ], [ %1811, %1837 ], [ %1099, %1113 ]
  %1931 = phi float [ %1812, %1809 ], [ %1100, %1294 ], [ %1100, %1095 ], [ %1812, %1906 ], [ %1812, %1904 ], [ %1812, %1864 ], [ %1812, %1837 ], [ %1100, %1113 ]
  %1932 = phi float [ %1813, %1809 ], [ %1101, %1294 ], [ %1101, %1095 ], [ %1813, %1906 ], [ %1813, %1904 ], [ %1813, %1864 ], [ %1813, %1837 ], [ %1101, %1113 ]
  %1933 = phi float [ %1814, %1809 ], [ %1102, %1294 ], [ %1102, %1095 ], [ %1814, %1906 ], [ %1814, %1904 ], [ %1814, %1864 ], [ %1814, %1837 ], [ %1102, %1113 ]
  %1934 = phi float [ %1815, %1809 ], [ %1103, %1294 ], [ %1103, %1095 ], [ %1815, %1906 ], [ %1815, %1904 ], [ %1815, %1864 ], [ %1815, %1837 ], [ %1103, %1113 ]
  %1935 = phi float [ %1104, %1809 ], [ %1104, %1294 ], [ %1104, %1095 ], [ %1923, %1906 ], [ %1104, %1904 ], [ %1901, %1864 ], [ %1859, %1837 ], [ %1104, %1113 ]
  %1936 = phi float [ %1105, %1809 ], [ %1105, %1294 ], [ %1105, %1095 ], [ %1924, %1906 ], [ %1105, %1904 ], [ %1902, %1864 ], [ %1860, %1837 ], [ %1105, %1113 ]
  %1937 = phi float [ %1106, %1809 ], [ %1106, %1294 ], [ %1106, %1095 ], [ %1925, %1906 ], [ %1106, %1904 ], [ %1903, %1864 ], [ %1861, %1837 ], [ %1106, %1113 ]
  %1938 = phi float [ %1816, %1809 ], [ %1107, %1294 ], [ %1107, %1095 ], [ %1816, %1906 ], [ %1816, %1904 ], [ %1816, %1864 ], [ %1816, %1837 ], [ %1107, %1113 ]
  %1939 = phi float [ %1109, %1809 ], [ %1109, %1294 ], [ %1109, %1095 ], [ %1917, %1906 ], [ %1109, %1904 ], [ %1895, %1864 ], [ %1849, %1837 ], [ %1109, %1113 ]
  %1940 = phi float [ %1110, %1809 ], [ %1110, %1294 ], [ %1110, %1095 ], [ %1914, %1906 ], [ %1110, %1904 ], [ %1872, %1864 ], [ %1846, %1837 ], [ %1110, %1113 ]
  %1941 = phi float [ %1111, %1809 ], [ %1111, %1294 ], [ %1111, %1095 ], [ %1919, %1906 ], [ %1111, %1904 ], [ %1897, %1864 ], [ %1852, %1837 ], [ %1111, %1113 ]
  %1942 = phi float [ %1817, %1809 ], [ %1112, %1294 ], [ %1112, %1095 ], [ %1817, %1906 ], [ %1817, %1904 ], [ %1817, %1864 ], [ %1817, %1837 ], [ %1112, %1113 ]
  br i1 %443, label %2756, label %1943

; <label>:1943                                    ; preds = %1926
  %1944 = icmp ult i32 %499, 3
  %1945 = add i32 %60, 56
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = add i32 %60, 60
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = or i32 %1950, %1947
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %2756, label %1953

; <label>:1953                                    ; preds = %1943
  %1954 = and i32 %1947, 262144
  %1955 = icmp ne i32 %1954, 0
  %1956 = select i1 %1955, float %65, float 1.000000e+00
  %1957 = select i1 %1955, float %66, float 0.000000e+00
  %1958 = select i1 %1955, float %67, float 0.000000e+00
  %1959 = select i1 %1955, float %68, float 1.000000e+00
  %1960 = select i1 %1955, float %69, float %97
  %1961 = select i1 %1955, float %70, float %98
  %1962 = add i32 %60, 316
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = lshr i32 %1964, 16
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1966, 0x3F50624DE0000000
  %1968 = add i32 %60, 120
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = lshr i32 %1970, 16
  %1972 = and i32 %1971, 255
  %1973 = lshr i32 %1970, 24
  %1974 = add i32 %60, 324
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %1976, 65535
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = lshr i32 %1976, 16
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = add i32 %60, 64
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = lshr i32 %1983, 22
  %1985 = shl nuw nsw i32 %1984, 5
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = shl i32 %1983, 4
  %1988 = and i32 %1987, 32752
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = lshr i32 %1983, 7
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1995 = fmul fast float %1994, 1.000000e+03
  %1996 = fmul fast float %393, %1995
  %1997 = call float @dx.op.unary.f32(i32 22, float %1996)  ; Frc(value)
  %1998 = fadd fast float %1997, %383
  %1999 = fmul fast float %394, %1995
  %2000 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2001 = fadd fast float %2000, %385
  %2002 = fmul fast float %1967, %1995
  %2003 = call float @dx.op.unary.f32(i32 22, float %2002)  ; Frc(value)
  %2004 = fmul fast float %2003, 0x401921FB60000000
  %2005 = fadd fast float %2004, %1986
  %2006 = call float @dx.op.unary.f32(i32 13, float %2005)  ; Sin(value)
  %2007 = call float @dx.op.unary.f32(i32 12, float %2005)  ; Cos(value)
  %2008 = fsub fast float -0.000000e+00, %2006
  %2009 = fadd fast float %1960, -5.000000e-01
  %2010 = fadd fast float %1961, -5.000000e-01
  %2011 = fmul fast float %1978, %2009
  %2012 = fmul fast float %1980, %2010
  %2013 = fadd fast float %2011, 5.000000e-01
  %2014 = fadd fast float %2012, 5.000000e-01
  %2015 = fmul fast float %1989, %2013
  %2016 = fmul fast float %1992, %2014
  %2017 = fmul fast float %2007, %2015
  %2018 = call float @dx.op.tertiary.f32(i32 46, float %2008, float %2016, float %2017)  ; FMad(a,b,c)
  %2019 = fmul fast float %2006, %2015
  %2020 = call float @dx.op.tertiary.f32(i32 46, float %2007, float %2016, float %2019)  ; FMad(a,b,c)
  %2021 = fadd fast float %1998, %2018
  %2022 = fadd fast float %2001, %2020
  %2023 = icmp ugt i32 %1972, 1
  %2024 = icmp ugt i32 %1970, 33554431
  %2025 = or i1 %2024, %2023
  br i1 %2025, label %2026, label %2051

; <label>:2026                                    ; preds = %1953
  %2027 = add i32 %60, 260
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = lshr i32 %2029, 16
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = fmul fast float %1994, %2031
  %2033 = call float @dx.op.unary.f32(i32 22, float %2032)  ; Frc(value)
  %2034 = mul nuw nsw i32 %1972, %1973
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2033, %2035
  %2037 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2038 = fptoui float %2037 to i32
  %2039 = urem i32 %2038, %1972
  %2040 = udiv i32 %2038, %1973
  %2041 = call float @dx.op.unary.f32(i32 22, float %2021)  ; Frc(value)
  %2042 = call float @dx.op.unary.f32(i32 22, float %2022)  ; Frc(value)
  %2043 = uitofp i32 %2039 to float
  %2044 = uitofp i32 %2040 to float
  %2045 = fadd fast float %2041, %2043
  %2046 = fadd fast float %2042, %2044
  %2047 = uitofp i32 %1972 to float
  %2048 = uitofp i32 %1973 to float
  %2049 = fdiv fast float %2045, %2047
  %2050 = fdiv fast float %2046, %2048
  br label %2051

; <label>:2051                                    ; preds = %2026, %1953
  %2052 = phi float [ %2049, %2026 ], [ %2021, %1953 ]
  %2053 = phi float [ %2050, %2026 ], [ %2022, %1953 ]
  %2054 = and i32 %1947, 256
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2102, label %2056

; <label>:2056                                    ; preds = %2051
  %2057 = add i32 %60, 432
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2061, %dx.types.Handle %116, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = add i32 %60, 132
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = shl i32 %2066, 4
  %2068 = and i32 %2067, 32752
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = lshr i32 %2066, 7
  %2071 = and i32 %2070, 32752
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fsub fast float 1.000000e+00, %495
  %2074 = call float @dx.op.binary.f32(i32 35, float %2073, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2075 = bitcast float %495 to i32
  %2076 = sitofp i32 %2075 to float
  %2077 = fadd fast float %2076, 0xC1CFBF8940000000
  %2078 = fmul fast float %2072, %2077
  %2079 = fadd fast float %2078, 0x41CFBF8940000000
  %2080 = fptosi float %2079 to i32
  %2081 = bitcast i32 %2080 to float
  %2082 = bitcast float %2074 to i32
  %2083 = sitofp i32 %2082 to float
  %2084 = fadd fast float %2083, 0xC1CFBF8940000000
  %2085 = fmul fast float %2084, %2072
  %2086 = fadd fast float %2085, 0x41CFBF8940000000
  %2087 = fptosi float %2086 to i32
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2081, %2069
  %2090 = fmul fast float %2088, %2069
  %2091 = fsub fast float %2074, %2089
  %2092 = fadd fast float %2090, %2074
  %2093 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2094 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2095 = fsub fast float %2063, %2093
  %2096 = fsub fast float %2094, %2093
  %2097 = bitcast float %2096 to i32
  %2098 = sub nsw i32 2129859010, %2097
  %2099 = bitcast i32 %2098 to float
  %2100 = fmul fast float %2099, %2095
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  br label %2102

; <label>:2102                                    ; preds = %2056, %2051
  %2103 = phi float [ %2101, %2056 ], [ %495, %2051 ]
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 128
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2124, label %2108

; <label>:2108                                    ; preds = %2102
  %2109 = add i32 %60, 416
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %2111, 0
  %2113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2113, %dx.types.Handle %116, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %2117, 524288
  %2119 = icmp ne i32 %2118, 0
  %2120 = fcmp fast ogt float %2115, 0x3FE0101020000000
  %2121 = select i1 %2120, float 1.000000e+00, float 0.000000e+00
  %2122 = select i1 %2119, float %2121, float %2115
  %2123 = fmul fast float %2122, %2103
  br label %2124

; <label>:2124                                    ; preds = %2108, %2102
  %2125 = phi float [ %2123, %2108 ], [ %2103, %2102 ]
  %2126 = fcmp fast ult float %2125, 0x3F70101020000000
  br i1 %2126, label %2756, label %2127

; <label>:2127                                    ; preds = %2124
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 16
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %2330, label %2132

; <label>:2132                                    ; preds = %2127
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = add i32 %60, 368
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2139, %dx.types.Handle %115, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.ResRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.ResRet.f32 %2140, 2
  %2144 = extractvalue %dx.types.ResRet.f32 %2140, 3
  %2145 = and i32 %2134, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = lshr i32 %2134, 8
  %2148 = and i32 %2147, 255
  %2149 = uitofp i32 %2148 to float
  %2150 = fmul fast float %2144, %2146
  %2151 = fadd fast float %2150, %2149
  %2152 = fmul fast float %2151, 0x3F70101000000000
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 512
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2165, label %2157

; <label>:2157                                    ; preds = %2132
  %2158 = add i32 %60, 448
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2162, %dx.types.Handle %116, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  br label %2165

; <label>:2165                                    ; preds = %2157, %2132
  %2166 = phi float [ %2164, %2157 ], [ 1.000000e+00, %2132 ]
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 33554432
  %2170 = icmp eq i32 %2169, 0
  br i1 %2170, label %2277, label %2171

; <label>:2171                                    ; preds = %2165
  %2172 = add i32 %60, 256
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 65535
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = lshr i32 %2174, 16
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = add i32 %60, 260
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 24
  %2187 = uitofp i32 %2186 to float
  %2188 = fmul fast float %2187, 0x3F70101020000000
  %2189 = and i32 %2185, 255
  %2190 = uitofp i32 %2189 to float
  %2191 = fmul fast float %2190, 0x3F70101020000000
  %2192 = lshr i32 %2185, 8
  %2193 = and i32 %2192, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = lshr i32 %2185, 16
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = add i32 %60, 252
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = lshr i32 %2202, 24
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = and i32 %2202, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2207, 0x3F70101020000000
  %2209 = lshr i32 %2202, 8
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2202, 16
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = bitcast float %2141 to i32
  %2218 = ashr i32 %2217, 1
  %2219 = sub nsw i32 1597463174, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2141, 5.000000e-01
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float 1.500000e+00, %2223
  %2225 = fmul fast float %2220, %2141
  %2226 = fmul fast float %2225, %2224
  %2227 = bitcast float %2142 to i32
  %2228 = ashr i32 %2227, 1
  %2229 = sub nsw i32 1597463174, %2228
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2142, 5.000000e-01
  %2232 = fmul fast float %2230, %2230
  %2233 = fmul fast float %2232, %2231
  %2234 = fsub fast float 1.500000e+00, %2233
  %2235 = fmul fast float %2230, %2142
  %2236 = fmul fast float %2235, %2234
  %2237 = bitcast float %2143 to i32
  %2238 = ashr i32 %2237, 1
  %2239 = sub nsw i32 1597463174, %2238
  %2240 = bitcast i32 %2239 to float
  %2241 = fmul fast float %2143, 5.000000e-01
  %2242 = fmul fast float %2240, %2240
  %2243 = fmul fast float %2242, %2241
  %2244 = fsub fast float 1.500000e+00, %2243
  %2245 = fmul fast float %2240, %2143
  %2246 = fmul fast float %2245, %2244
  %2247 = fsub fast float %2226, %2208
  %2248 = fsub fast float %2236, %2212
  %2249 = fsub fast float %2246, %2216
  %2250 = fmul fast float %2247, %2176
  %2251 = fmul fast float %2248, %2178
  %2252 = fmul fast float %2249, %2183
  %2253 = fadd fast float %2250, %2191
  %2254 = fadd fast float %2251, %2195
  %2255 = fadd fast float %2252, %2199
  %2256 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2259 = fmul fast float %2256, %2256
  %2260 = fmul fast float %2257, %2257
  %2261 = fmul fast float %2258, %2258
  %2262 = fsub fast float %2259, %2141
  %2263 = fsub fast float %2260, %2142
  %2264 = fsub fast float %2261, %2143
  %2265 = fmul fast float %2262, %2166
  %2266 = fmul fast float %2263, %2166
  %2267 = fmul fast float %2264, %2166
  %2268 = fadd fast float %2265, %2141
  %2269 = fadd fast float %2266, %2142
  %2270 = fadd fast float %2267, %2143
  %2271 = fadd fast float %2188, %2152
  %2272 = fsub fast float %2271, %2205
  %2273 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2274 = fsub fast float %2273, %2152
  %2275 = fmul fast float %2274, %2166
  %2276 = fadd fast float %2275, %2152
  br label %2330

; <label>:2277                                    ; preds = %2165
  %2278 = and i32 %2168, 134217728
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2314, label %2280

; <label>:2280                                    ; preds = %2277
  %2281 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2282 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2283 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2284 = fadd fast float %2281, -5.000000e-01
  %2285 = fadd fast float %2282, -5.000000e-01
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fmul fast float %2284, %2166
  %2288 = fmul fast float %2285, %2166
  %2289 = fmul fast float %2286, %2166
  %2290 = fadd fast float %2287, 5.000000e-01
  %2291 = fadd fast float %2288, 5.000000e-01
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = call float @dx.op.unary.f32(i32 24, float %2141)  ; Sqrt(value)
  %2294 = call float @dx.op.unary.f32(i32 24, float %2142)  ; Sqrt(value)
  %2295 = call float @dx.op.unary.f32(i32 24, float %2143)  ; Sqrt(value)
  %2296 = fmul fast float %2290, 2.000000e+00
  %2297 = fsub fast float 1.000000e+00, %2296
  %2298 = fmul fast float %2297, %2293
  %2299 = fadd fast float %2298, %2296
  %2300 = fmul fast float %2299, %2293
  %2301 = fmul fast float %2291, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2294
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2294
  %2306 = fmul fast float %2292, 2.000000e+00
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = fmul fast float %2307, %2295
  %2309 = fadd fast float %2308, %2306
  %2310 = fmul fast float %2309, %2295
  %2311 = fmul fast float %2300, %2300
  %2312 = fmul fast float %2305, %2305
  %2313 = fmul fast float %2310, %2310
  br label %2330

; <label>:2314                                    ; preds = %2277
  %2315 = fmul fast float %370, %370
  %2316 = fmul fast float %374, %374
  %2317 = fmul fast float %378, %378
  %2318 = fadd fast float %2315, -1.000000e+00
  %2319 = fadd fast float %2316, -1.000000e+00
  %2320 = fadd fast float %2317, -1.000000e+00
  %2321 = fmul fast float %2166, %2318
  %2322 = fmul fast float %2166, %2319
  %2323 = fmul fast float %2166, %2320
  %2324 = fadd fast float %2321, 1.000000e+00
  %2325 = fadd fast float %2322, 1.000000e+00
  %2326 = fadd fast float %2323, 1.000000e+00
  %2327 = fmul fast float %2324, %2141
  %2328 = fmul fast float %2325, %2142
  %2329 = fmul fast float %2326, %2143
  br label %2330

; <label>:2330                                    ; preds = %2314, %2280, %2171, %2127
  %2331 = phi float [ %2276, %2171 ], [ %2152, %2280 ], [ %2152, %2314 ], [ 0x3FA23C0BE0000000, %2127 ]
  %2332 = phi float [ %2268, %2171 ], [ %2311, %2280 ], [ %2327, %2314 ], [ 1.000000e+00, %2127 ]
  %2333 = phi float [ %2269, %2171 ], [ %2312, %2280 ], [ %2328, %2314 ], [ 1.000000e+00, %2127 ]
  %2334 = phi float [ %2270, %2171 ], [ %2313, %2280 ], [ %2329, %2314 ], [ 1.000000e+00, %2127 ]
  %2335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.i32 %2335, 1
  %2337 = and i32 %2336, 1
  %2338 = icmp ne i32 %2337, 0
  %2339 = add i32 %60, 356
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 32
  %2343 = icmp ne i32 %2342, 0
  %2344 = and i1 %2338, %2343
  %2345 = select i1 %2344, float 1.000000e+00, float %2332
  %2346 = select i1 %2344, float 0x3FD3333340000000, float %2333
  %2347 = select i1 %2344, float 0x3FD3333340000000, float %2334
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 32
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2424, label %2352

; <label>:2352                                    ; preds = %2330
  %2353 = add i32 %60, 124
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %60, 384
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2360, %dx.types.Handle %115, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.ResRet.f32 %2361, 3
  %2366 = and i32 %2355, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = lshr i32 %2355, 8
  %2369 = and i32 %2368, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = lshr i32 %2355, 16
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 0x3F70101000000000
  %2375 = fmul fast float %2362, %2367
  %2376 = fadd fast float %2375, %2370
  %2377 = fmul fast float %2376, 0x3F70101000000000
  %2378 = fadd fast float %2363, -5.000000e-01
  %2379 = fadd fast float %2365, -5.000000e-01
  %2380 = fmul fast float %2378, %2374
  %2381 = fmul fast float %2379, %2374
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = fmul fast float %2382, 2.000000e+00
  %2385 = fadd fast float %2384, -1.000000e+00
  %2386 = fmul fast float %2383, 2.000000e+00
  %2387 = fadd fast float %2386, -1.000000e+00
  %2388 = fadd fast float %2385, %2387
  %2389 = fmul fast float %2388, 5.000000e-01
  %2390 = fsub fast float %2385, %2387
  %2391 = fmul fast float %2390, 5.000000e-01
  %2392 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = call float @dx.op.unary.f32(i32 6, float %2391)  ; FAbs(value)
  %2395 = fsub fast float %2393, %2394
  %2396 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2391, float %2395, float %2389, float %2391, float %2395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2397 = call float @dx.op.unary.f32(i32 25, float %2396)  ; Rsqrt(value)
  %2398 = fmul fast float %2389, %2397
  %2399 = fmul fast float %2391, %2397
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 67108864
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2420, label %2404

; <label>:2404                                    ; preds = %2352
  %2405 = add i32 %60, 312
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 65535
  %2409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2408)  ; LegacyF16ToF32(value)
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = lshr i32 %2407, 16
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = fsub fast float %2377, %2415
  %2417 = fmul fast float %2416, %2409
  %2418 = fadd fast float %2417, %2413
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  br label %2420

; <label>:2420                                    ; preds = %2404, %2352
  %2421 = phi float [ %2419, %2404 ], [ %2377, %2352 ]
  %2422 = call float @dx.op.dot2.f32(i32 54, float %2398, float %2399, float %1956, float %1957)  ; Dot2(ax,ay,bx,by)
  %2423 = call float @dx.op.dot2.f32(i32 54, float %2398, float %2399, float %1958, float %1959)  ; Dot2(ax,ay,bx,by)
  br label %2424

; <label>:2424                                    ; preds = %2420, %2330
  %2425 = phi float [ %2421, %2420 ], [ 0x3FD6666660000000, %2330 ]
  %2426 = phi float [ %2422, %2420 ], [ 0.000000e+00, %2330 ]
  %2427 = phi float [ %2423, %2420 ], [ 0.000000e+00, %2330 ]
  %2428 = phi float [ %2364, %2420 ], [ 1.000000e+00, %2330 ]
  %2429 = add i32 %60, 192
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = lshr i32 %2431, 22
  %2433 = shl nuw nsw i32 %2432, 5
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 64
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2472, label %2439

; <label>:2439                                    ; preds = %2424
  %2440 = add i32 %60, 400
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2442, 0
  %2444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 131072
  %2448 = icmp eq i32 %2447, 0
  %2449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2444, %dx.types.Handle %115, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = fmul fast float %2450, %358
  %2454 = fmul fast float %2451, %361
  %2455 = fmul fast float %2452, %364
  br i1 %2448, label %2462, label %2456

; <label>:2456                                    ; preds = %2439
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = fmul fast float %2458, %2453
  %2460 = fmul fast float %2458, %2454
  %2461 = fmul fast float %2458, %2455
  br label %2462

; <label>:2462                                    ; preds = %2456, %2439
  %2463 = phi float [ %2459, %2456 ], [ %2453, %2439 ]
  %2464 = phi float [ %2460, %2456 ], [ %2454, %2439 ]
  %2465 = phi float [ %2461, %2456 ], [ %2455, %2439 ]
  %2466 = fmul fast float %2463, %2434
  %2467 = select i1 %257, float %2466, float %2463
  %2468 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2464, float %2465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2469 = select i1 %257, float 0.000000e+00, float %2463
  %2470 = select i1 %257, float %2468, float %2464
  %2471 = select i1 %257, float 0.000000e+00, float %2465
  br label %2472

; <label>:2472                                    ; preds = %2462, %2424
  %2473 = phi float [ %2469, %2462 ], [ 0.000000e+00, %2424 ]
  %2474 = phi float [ %2470, %2462 ], [ 0.000000e+00, %2424 ]
  %2475 = phi float [ %2471, %2462 ], [ 0.000000e+00, %2424 ]
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 10240
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2524, label %2480

; <label>:2480                                    ; preds = %2472
  %2481 = add i32 %60, 464
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2485, %dx.types.Handle %116, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 3
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %2490, 1048576
  %2492 = icmp ne i32 %2491, 0
  %2493 = and i32 %2490, 8192
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2510, label %2495

; <label>:2495                                    ; preds = %2480
  %2496 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2497 = select i1 %2492, float %2496, float %2487
  %2498 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2499 = select i1 %2492, float %2498, float %2487
  %2500 = add i32 %60, 128
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = lshr i32 %2502, 16
  %2504 = and i32 %2503, 255
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2505, 0x3F80101020000000
  %2507 = fmul fast float %2506, %2499
  %2508 = fmul fast float %2506, %2487
  %2509 = fmul fast float %2506, %2497
  br label %2510

; <label>:2510                                    ; preds = %2495, %2480
  %2511 = phi float [ %2507, %2495 ], [ 0.000000e+00, %2480 ]
  %2512 = phi float [ %2508, %2495 ], [ 0.000000e+00, %2480 ]
  %2513 = phi float [ %2509, %2495 ], [ 0.000000e+00, %2480 ]
  %2514 = and i32 %2490, 2048
  %2515 = icmp eq i32 %2514, 0
  br i1 %2515, label %2524, label %2516

; <label>:2516                                    ; preds = %2510
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = shl i32 %2518, 4
  %2520 = and i32 %2519, 32752
  %2521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2520)  ; LegacyF16ToF32(value)
  %2522 = fmul fast float %2521, %2488
  %2523 = call float @dx.op.binary.f32(i32 35, float %2522, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2524

; <label>:2524                                    ; preds = %2516, %2510, %2472
  %2525 = phi float [ %2511, %2516 ], [ %2511, %2510 ], [ 0.000000e+00, %2472 ]
  %2526 = phi float [ %2512, %2516 ], [ %2512, %2510 ], [ 0.000000e+00, %2472 ]
  %2527 = phi float [ %2513, %2516 ], [ %2513, %2510 ], [ 0.000000e+00, %2472 ]
  %2528 = phi float [ %2523, %2516 ], [ 0x3F70101020000000, %2510 ], [ 0x3F70101020000000, %2472 ]
  %2529 = add i32 %60, 128
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2531, 8
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2346, float %2347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2538 = fmul fast float %2536, %2537
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101020000000
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  br i1 %1944, label %2542, label %2550

; <label>:2542                                    ; preds = %2524
  %2543 = fsub fast float 1.000000e+00, %2125
  %2544 = fmul fast float %2543, %1929
  %2545 = fmul fast float %2543, %1930
  %2546 = fmul fast float %2543, %1931
  %2547 = fmul fast float %2543, %1932
  %2548 = fmul fast float %2543, %1933
  %2549 = fmul fast float %2543, %1934
  br label %2550

; <label>:2550                                    ; preds = %2542, %2524
  %2551 = phi float [ %2544, %2542 ], [ %1929, %2524 ]
  %2552 = phi float [ %2545, %2542 ], [ %1930, %2524 ]
  %2553 = phi float [ %2546, %2542 ], [ %1931, %2524 ]
  %2554 = phi float [ %2547, %2542 ], [ %1932, %2524 ]
  %2555 = phi float [ %2548, %2542 ], [ %1933, %2524 ]
  %2556 = phi float [ %2549, %2542 ], [ %1934, %2524 ]
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 3
  %2560 = icmp eq i32 %2559, 3
  br i1 %2560, label %2639, label %2561

; <label>:2561                                    ; preds = %2550
  %2562 = and i32 %2558, 16
  %2563 = icmp ne i32 %2562, 0
  %2564 = select i1 %2563, float %2125, float 0.000000e+00
  %2565 = icmp eq i32 %2559, 0
  br i1 %2565, label %2566, label %2594

; <label>:2566                                    ; preds = %2561
  %2567 = and i32 %2558, 64
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2125, float 0.000000e+00
  %2570 = fsub fast float %2345, %2551
  %2571 = fsub fast float %2346, %2552
  %2572 = fsub fast float %2347, %2553
  %2573 = fmul fast float %2564, %2570
  %2574 = fmul fast float %2564, %2571
  %2575 = fmul fast float %2564, %2572
  %2576 = fadd fast float %2573, %2551
  %2577 = fadd fast float %2574, %2552
  %2578 = fadd fast float %2575, %2553
  %2579 = fsub fast float %2331, %1938
  %2580 = fmul fast float %2564, %2579
  %2581 = fadd fast float %2580, %1938
  %2582 = fsub fast float %2473, %2554
  %2583 = fsub fast float %2474, %2555
  %2584 = fsub fast float %2475, %2556
  %2585 = fmul fast float %2569, %2582
  %2586 = fmul fast float %2569, %2583
  %2587 = fmul fast float %2569, %2584
  %2588 = fadd fast float %2585, %2554
  %2589 = fadd fast float %2586, %2555
  %2590 = fadd fast float %2587, %2556
  %2591 = fsub fast float %2541, %1942
  %2592 = fmul fast float %2564, %2591
  %2593 = fadd fast float %2592, %1942
  br label %2639

; <label>:2594                                    ; preds = %2561
  %2595 = icmp eq i32 %2559, 1
  br i1 %2595, label %2596, label %2609

; <label>:2596                                    ; preds = %2594
  %2597 = fadd fast float %2345, -1.000000e+00
  %2598 = fadd fast float %2346, -1.000000e+00
  %2599 = fadd fast float %2347, -1.000000e+00
  %2600 = fmul fast float %2564, %2597
  %2601 = fmul fast float %2564, %2598
  %2602 = fmul fast float %2564, %2599
  %2603 = fadd fast float %2600, 1.000000e+00
  %2604 = fadd fast float %2601, 1.000000e+00
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fmul fast float %2603, %2551
  %2607 = fmul fast float %2604, %2552
  %2608 = fmul fast float %2605, %2553
  br label %2639

; <label>:2609                                    ; preds = %2594
  %2610 = icmp eq i32 %2559, 2
  br i1 %2610, label %2611, label %2639

; <label>:2611                                    ; preds = %2609
  %2612 = call float @dx.op.unary.f32(i32 24, float %2345)  ; Sqrt(value)
  %2613 = call float @dx.op.unary.f32(i32 24, float %2346)  ; Sqrt(value)
  %2614 = call float @dx.op.unary.f32(i32 24, float %2347)  ; Sqrt(value)
  %2615 = fadd fast float %2612, -5.000000e-01
  %2616 = fadd fast float %2613, -5.000000e-01
  %2617 = fadd fast float %2614, -5.000000e-01
  %2618 = fmul fast float %2615, %2564
  %2619 = fmul fast float %2616, %2564
  %2620 = fmul fast float %2617, %2564
  %2621 = fadd fast float %2618, 5.000000e-01
  %2622 = fadd fast float %2619, 5.000000e-01
  %2623 = fadd fast float %2620, 5.000000e-01
  %2624 = fmul fast float %2621, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2551
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2551
  %2629 = fmul fast float %2622, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2552
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2552
  %2634 = fmul fast float %2623, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2553
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2553
  br label %2639

; <label>:2639                                    ; preds = %2611, %2609, %2596, %2566, %2550
  %2640 = phi float [ %2551, %2550 ], [ %2628, %2611 ], [ %2551, %2609 ], [ %2606, %2596 ], [ %2576, %2566 ]
  %2641 = phi float [ %2552, %2550 ], [ %2633, %2611 ], [ %2552, %2609 ], [ %2607, %2596 ], [ %2577, %2566 ]
  %2642 = phi float [ %2553, %2550 ], [ %2638, %2611 ], [ %2553, %2609 ], [ %2608, %2596 ], [ %2578, %2566 ]
  %2643 = phi float [ %2554, %2550 ], [ %2554, %2611 ], [ %2554, %2609 ], [ %2554, %2596 ], [ %2588, %2566 ]
  %2644 = phi float [ %2555, %2550 ], [ %2555, %2611 ], [ %2555, %2609 ], [ %2555, %2596 ], [ %2589, %2566 ]
  %2645 = phi float [ %2556, %2550 ], [ %2556, %2611 ], [ %2556, %2609 ], [ %2556, %2596 ], [ %2590, %2566 ]
  %2646 = phi float [ %1938, %2550 ], [ %1938, %2611 ], [ %1938, %2609 ], [ %1938, %2596 ], [ %2581, %2566 ]
  %2647 = phi float [ %1942, %2550 ], [ %1942, %2611 ], [ %1942, %2609 ], [ %1942, %2596 ], [ %2593, %2566 ]
  %2648 = and i32 %2558, 12
  %2649 = icmp eq i32 %2648, 12
  br i1 %2649, label %2756, label %2650

; <label>:2650                                    ; preds = %2639
  %2651 = and i32 %2558, 2097184
  %2652 = icmp eq i32 %2651, 2097184
  %2653 = select i1 %2652, float %2125, float 0.000000e+00
  %2654 = and i32 %2558, 4194336
  %2655 = icmp eq i32 %2654, 4194336
  %2656 = select i1 %2655, float %2125, float 0.000000e+00
  %2657 = and i32 %2558, 8388640
  %2658 = icmp eq i32 %2657, 8388640
  %2659 = select i1 %2658, float %2125, float 0.000000e+00
  %2660 = and i32 %2558, 2048
  %2661 = icmp ne i32 %2660, 0
  %2662 = select i1 %2661, float %2125, float 0.000000e+00
  %2663 = and i32 %2558, 8192
  %2664 = icmp ne i32 %2663, 0
  %2665 = select i1 %2664, float %2125, float 0.000000e+00
  %2666 = icmp eq i32 %2648, 0
  br i1 %2666, label %2667, label %2692

; <label>:2667                                    ; preds = %2650
  %2668 = fsub fast float %2426, %1927
  %2669 = fsub fast float %2427, %1928
  %2670 = fmul fast float %2653, %2668
  %2671 = fmul fast float %2653, %2669
  %2672 = fadd fast float %2670, %1927
  %2673 = fadd fast float %2671, %1928
  %2674 = fsub fast float %2428, %1940
  %2675 = fmul fast float %2656, %2674
  %2676 = fadd fast float %2675, %1940
  %2677 = fsub fast float %2425, %1939
  %2678 = fmul fast float %2659, %2677
  %2679 = fadd fast float %2678, %1939
  %2680 = fsub fast float %2528, %1941
  %2681 = fmul fast float %2662, %2680
  %2682 = fadd fast float %2681, %1941
  %2683 = fsub fast float %2525, %1935
  %2684 = fsub fast float %2526, %1936
  %2685 = fsub fast float %2527, %1937
  %2686 = fmul fast float %2665, %2683
  %2687 = fmul fast float %2665, %2684
  %2688 = fmul fast float %2665, %2685
  %2689 = fadd fast float %2686, %1935
  %2690 = fadd fast float %2687, %1936
  %2691 = fadd fast float %2688, %1937
  br label %2756

; <label>:2692                                    ; preds = %2650
  %2693 = icmp eq i32 %2648, 4
  br i1 %2693, label %2694, label %2734

; <label>:2694                                    ; preds = %2692
  %2695 = fmul fast float %2653, %2426
  %2696 = fmul fast float %2653, %2427
  %2697 = fadd fast float %2695, %1927
  %2698 = fadd fast float %2696, %1928
  %2699 = call float @dx.op.binary.f32(i32 36, float %1940, float %2428)  ; FMin(a,b)
  %2700 = fsub fast float %2699, %1940
  %2701 = fmul fast float %2700, %2656
  %2702 = fadd fast float %2701, %1940
  %2703 = fadd fast float %2425, %1939
  %2704 = fmul fast float %2703, 0x3FF337FAE0000000
  %2705 = fmul fast float %1939, %1939
  %2706 = fmul fast float %2425, %2425
  %2707 = fadd fast float %2706, %2705
  %2708 = fmul fast float %2707, 0x3FE5152B00000000
  %2709 = fmul fast float %1939, 0xBFCC1F85E0000000
  %2710 = fmul fast float %2709, %2425
  %2711 = fadd fast float %2710, 0xBFE1363700000000
  %2712 = fadd fast float %2711, %2704
  %2713 = fsub fast float %2712, %2708
  %2714 = fmul fast float %2703, 0x3FBA6F0D00000000
  %2715 = fmul fast float %2707, 0x3FD0432880000000
  %2716 = fmul fast float %1939, 0xBFEF110800000000
  %2717 = fmul fast float %2716, %2425
  %2718 = fadd fast float %2717, 1.000000e+00
  %2719 = fsub fast float %2718, %2714
  %2720 = fadd fast float %2719, %2715
  %2721 = fdiv fast float %2713, %2720
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fsub fast float %2722, %1939
  %2724 = fmul fast float %2723, %2659
  %2725 = fadd fast float %2724, %1939
  %2726 = fmul fast float %2662, %2528
  %2727 = fadd fast float %2726, %1941
  %2728 = fmul fast float %2665, %2525
  %2729 = fmul fast float %2665, %2526
  %2730 = fmul fast float %2665, %2527
  %2731 = fadd fast float %2728, %1935
  %2732 = fadd fast float %2729, %1936
  %2733 = fadd fast float %2730, %1937
  br label %2756

; <label>:2734                                    ; preds = %2692
  %2735 = icmp eq i32 %2648, 8
  br i1 %2735, label %2736, label %2756

; <label>:2736                                    ; preds = %2734
  %2737 = fmul fast float %2653, %2426
  %2738 = fmul fast float %2653, %2427
  %2739 = fadd fast float %2737, %1927
  %2740 = fadd fast float %2738, %1928
  %2741 = call float @dx.op.binary.f32(i32 36, float %1940, float %2428)  ; FMin(a,b)
  %2742 = fsub fast float %2741, %1940
  %2743 = fmul fast float %2742, %2656
  %2744 = fadd fast float %2743, %1940
  %2745 = fsub fast float %2425, %1939
  %2746 = fmul fast float %2659, %2745
  %2747 = fadd fast float %2746, %1939
  %2748 = fmul fast float %2662, %2528
  %2749 = fadd fast float %2748, %1941
  %2750 = fmul fast float %2665, %2525
  %2751 = fmul fast float %2665, %2526
  %2752 = fmul fast float %2665, %2527
  %2753 = fadd fast float %2750, %1935
  %2754 = fadd fast float %2751, %1936
  %2755 = fadd fast float %2752, %1937
  br label %2756

; <label>:2756                                    ; preds = %2736, %2734, %2694, %2667, %2639, %2124, %1943, %1926
  %2757 = phi float [ %1927, %2639 ], [ %1927, %2124 ], [ %1927, %1926 ], [ %2739, %2736 ], [ %1927, %2734 ], [ %2697, %2694 ], [ %2672, %2667 ], [ %1927, %1943 ]
  %2758 = phi float [ %1928, %2639 ], [ %1928, %2124 ], [ %1928, %1926 ], [ %2740, %2736 ], [ %1928, %2734 ], [ %2698, %2694 ], [ %2673, %2667 ], [ %1928, %1943 ]
  %2759 = phi float [ %2640, %2639 ], [ %1929, %2124 ], [ %1929, %1926 ], [ %2640, %2736 ], [ %2640, %2734 ], [ %2640, %2694 ], [ %2640, %2667 ], [ %1929, %1943 ]
  %2760 = phi float [ %2641, %2639 ], [ %1930, %2124 ], [ %1930, %1926 ], [ %2641, %2736 ], [ %2641, %2734 ], [ %2641, %2694 ], [ %2641, %2667 ], [ %1930, %1943 ]
  %2761 = phi float [ %2642, %2639 ], [ %1931, %2124 ], [ %1931, %1926 ], [ %2642, %2736 ], [ %2642, %2734 ], [ %2642, %2694 ], [ %2642, %2667 ], [ %1931, %1943 ]
  %2762 = phi float [ %2643, %2639 ], [ %1932, %2124 ], [ %1932, %1926 ], [ %2643, %2736 ], [ %2643, %2734 ], [ %2643, %2694 ], [ %2643, %2667 ], [ %1932, %1943 ]
  %2763 = phi float [ %2644, %2639 ], [ %1933, %2124 ], [ %1933, %1926 ], [ %2644, %2736 ], [ %2644, %2734 ], [ %2644, %2694 ], [ %2644, %2667 ], [ %1933, %1943 ]
  %2764 = phi float [ %2645, %2639 ], [ %1934, %2124 ], [ %1934, %1926 ], [ %2645, %2736 ], [ %2645, %2734 ], [ %2645, %2694 ], [ %2645, %2667 ], [ %1934, %1943 ]
  %2765 = phi float [ %1935, %2639 ], [ %1935, %2124 ], [ %1935, %1926 ], [ %2753, %2736 ], [ %1935, %2734 ], [ %2731, %2694 ], [ %2689, %2667 ], [ %1935, %1943 ]
  %2766 = phi float [ %1936, %2639 ], [ %1936, %2124 ], [ %1936, %1926 ], [ %2754, %2736 ], [ %1936, %2734 ], [ %2732, %2694 ], [ %2690, %2667 ], [ %1936, %1943 ]
  %2767 = phi float [ %1937, %2639 ], [ %1937, %2124 ], [ %1937, %1926 ], [ %2755, %2736 ], [ %1937, %2734 ], [ %2733, %2694 ], [ %2691, %2667 ], [ %1937, %1943 ]
  %2768 = phi float [ %2646, %2639 ], [ %1938, %2124 ], [ %1938, %1926 ], [ %2646, %2736 ], [ %2646, %2734 ], [ %2646, %2694 ], [ %2646, %2667 ], [ %1938, %1943 ]
  %2769 = phi float [ %1939, %2639 ], [ %1939, %2124 ], [ %1939, %1926 ], [ %2747, %2736 ], [ %1939, %2734 ], [ %2725, %2694 ], [ %2679, %2667 ], [ %1939, %1943 ]
  %2770 = phi float [ %1940, %2639 ], [ %1940, %2124 ], [ %1940, %1926 ], [ %2744, %2736 ], [ %1940, %2734 ], [ %2702, %2694 ], [ %2676, %2667 ], [ %1940, %1943 ]
  %2771 = phi float [ %1941, %2639 ], [ %1941, %2124 ], [ %1941, %1926 ], [ %2749, %2736 ], [ %1941, %2734 ], [ %2727, %2694 ], [ %2682, %2667 ], [ %1941, %1943 ]
  %2772 = phi float [ %2647, %2639 ], [ %1942, %2124 ], [ %1942, %1926 ], [ %2647, %2736 ], [ %2647, %2734 ], [ %2647, %2694 ], [ %2647, %2667 ], [ %1942, %1943 ]
  br i1 %445, label %3586, label %2773

; <label>:2773                                    ; preds = %2756
  %2774 = icmp ult i32 %499, 4
  %2775 = add i32 %60, 72
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = add i32 %60, 76
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = or i32 %2780, %2777
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %3586, label %2783

; <label>:2783                                    ; preds = %2773
  %2784 = and i32 %2777, 262144
  %2785 = icmp ne i32 %2784, 0
  %2786 = select i1 %2785, float %65, float 1.000000e+00
  %2787 = select i1 %2785, float %66, float 0.000000e+00
  %2788 = select i1 %2785, float %67, float 0.000000e+00
  %2789 = select i1 %2785, float %68, float 1.000000e+00
  %2790 = select i1 %2785, float %69, float %97
  %2791 = select i1 %2785, float %70, float %98
  %2792 = add i32 %60, 332
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = lshr i32 %2794, 16
  %2796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2795)  ; LegacyF16ToF32(value)
  %2797 = fmul fast float %2796, 0x3F50624DE0000000
  %2798 = add i32 %60, 136
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = lshr i32 %2800, 16
  %2802 = and i32 %2801, 255
  %2803 = lshr i32 %2800, 24
  %2804 = add i32 %60, 340
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 65535
  %2808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2807)  ; LegacyF16ToF32(value)
  %2809 = lshr i32 %2806, 16
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = add i32 %60, 80
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = lshr i32 %2813, 22
  %2815 = shl nuw nsw i32 %2814, 5
  %2816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2815)  ; LegacyF16ToF32(value)
  %2817 = shl i32 %2813, 4
  %2818 = and i32 %2817, 32752
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = lshr i32 %2813, 7
  %2821 = and i32 %2820, 32752
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 3
  %2825 = fmul fast float %2824, 1.000000e+03
  %2826 = fmul fast float %435, %2825
  %2827 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2828 = fadd fast float %2827, %425
  %2829 = fmul fast float %436, %2825
  %2830 = call float @dx.op.unary.f32(i32 22, float %2829)  ; Frc(value)
  %2831 = fadd fast float %2830, %427
  %2832 = fmul fast float %2797, %2825
  %2833 = call float @dx.op.unary.f32(i32 22, float %2832)  ; Frc(value)
  %2834 = fmul fast float %2833, 0x401921FB60000000
  %2835 = fadd fast float %2834, %2816
  %2836 = call float @dx.op.unary.f32(i32 13, float %2835)  ; Sin(value)
  %2837 = call float @dx.op.unary.f32(i32 12, float %2835)  ; Cos(value)
  %2838 = fsub fast float -0.000000e+00, %2836
  %2839 = fadd fast float %2790, -5.000000e-01
  %2840 = fadd fast float %2791, -5.000000e-01
  %2841 = fmul fast float %2808, %2839
  %2842 = fmul fast float %2810, %2840
  %2843 = fadd fast float %2841, 5.000000e-01
  %2844 = fadd fast float %2842, 5.000000e-01
  %2845 = fmul fast float %2819, %2843
  %2846 = fmul fast float %2822, %2844
  %2847 = fmul fast float %2837, %2845
  %2848 = call float @dx.op.tertiary.f32(i32 46, float %2838, float %2846, float %2847)  ; FMad(a,b,c)
  %2849 = fmul fast float %2836, %2845
  %2850 = call float @dx.op.tertiary.f32(i32 46, float %2837, float %2846, float %2849)  ; FMad(a,b,c)
  %2851 = fadd fast float %2828, %2848
  %2852 = fadd fast float %2831, %2850
  %2853 = icmp ugt i32 %2802, 1
  %2854 = icmp ugt i32 %2800, 33554431
  %2855 = or i1 %2854, %2853
  br i1 %2855, label %2856, label %2881

; <label>:2856                                    ; preds = %2783
  %2857 = add i32 %60, 276
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fmul fast float %2824, %2861
  %2863 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2864 = mul nuw nsw i32 %2802, %2803
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2863, %2865
  %2867 = call float @dx.op.unary.f32(i32 27, float %2866)  ; Round_ni(value)
  %2868 = fptoui float %2867 to i32
  %2869 = urem i32 %2868, %2802
  %2870 = udiv i32 %2868, %2803
  %2871 = call float @dx.op.unary.f32(i32 22, float %2851)  ; Frc(value)
  %2872 = call float @dx.op.unary.f32(i32 22, float %2852)  ; Frc(value)
  %2873 = uitofp i32 %2869 to float
  %2874 = uitofp i32 %2870 to float
  %2875 = fadd fast float %2871, %2873
  %2876 = fadd fast float %2872, %2874
  %2877 = uitofp i32 %2802 to float
  %2878 = uitofp i32 %2803 to float
  %2879 = fdiv fast float %2875, %2877
  %2880 = fdiv fast float %2876, %2878
  br label %2881

; <label>:2881                                    ; preds = %2856, %2783
  %2882 = phi float [ %2879, %2856 ], [ %2851, %2783 ]
  %2883 = phi float [ %2880, %2856 ], [ %2852, %2783 ]
  %2884 = and i32 %2777, 256
  %2885 = icmp eq i32 %2884, 0
  br i1 %2885, label %2932, label %2886

; <label>:2886                                    ; preds = %2881
  %2887 = add i32 %60, 436
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = add i32 %2889, 0
  %2891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2891, %dx.types.Handle %116, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 0
  %2894 = add i32 %60, 148
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = shl i32 %2896, 4
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2896, 7
  %2901 = and i32 %2900, 32752
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = fsub fast float 1.000000e+00, %494
  %2904 = call float @dx.op.binary.f32(i32 35, float %2903, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2905 = bitcast float %494 to i32
  %2906 = sitofp i32 %2905 to float
  %2907 = fadd fast float %2906, 0xC1CFBF8940000000
  %2908 = fmul fast float %2902, %2907
  %2909 = fadd fast float %2908, 0x41CFBF8940000000
  %2910 = fptosi float %2909 to i32
  %2911 = bitcast i32 %2910 to float
  %2912 = bitcast float %2904 to i32
  %2913 = sitofp i32 %2912 to float
  %2914 = fadd fast float %2913, 0xC1CFBF8940000000
  %2915 = fmul fast float %2914, %2902
  %2916 = fadd fast float %2915, 0x41CFBF8940000000
  %2917 = fptosi float %2916 to i32
  %2918 = bitcast i32 %2917 to float
  %2919 = fmul fast float %2911, %2899
  %2920 = fmul fast float %2918, %2899
  %2921 = fsub fast float %2904, %2919
  %2922 = fadd fast float %2920, %2904
  %2923 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2924 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2925 = fsub fast float %2893, %2923
  %2926 = fsub fast float %2924, %2923
  %2927 = bitcast float %2926 to i32
  %2928 = sub nsw i32 2129859010, %2927
  %2929 = bitcast i32 %2928 to float
  %2930 = fmul fast float %2929, %2925
  %2931 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  br label %2932

; <label>:2932                                    ; preds = %2886, %2881
  %2933 = phi float [ %2931, %2886 ], [ %494, %2881 ]
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 128
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %2954, label %2938

; <label>:2938                                    ; preds = %2932
  %2939 = add i32 %60, 420
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = add i32 %2941, 0
  %2943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2943, %dx.types.Handle %116, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 524288
  %2949 = icmp ne i32 %2948, 0
  %2950 = fcmp fast ogt float %2945, 0x3FE0101020000000
  %2951 = select i1 %2950, float 1.000000e+00, float 0.000000e+00
  %2952 = select i1 %2949, float %2951, float %2945
  %2953 = fmul fast float %2952, %2933
  br label %2954

; <label>:2954                                    ; preds = %2938, %2932
  %2955 = phi float [ %2953, %2938 ], [ %2933, %2932 ]
  %2956 = fcmp fast ult float %2955, 0x3F70101020000000
  br i1 %2956, label %3586, label %2957

; <label>:2957                                    ; preds = %2954
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 16
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %3160, label %2962

; <label>:2962                                    ; preds = %2957
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = add i32 %60, 372
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %2967, 0
  %2969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2969, %dx.types.Handle %115, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = extractvalue %dx.types.ResRet.f32 %2970, 3
  %2975 = and i32 %2964, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = lshr i32 %2964, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2974, %2976
  %2981 = fadd fast float %2980, %2979
  %2982 = fmul fast float %2981, 0x3F70101000000000
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 512
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %2995, label %2987

; <label>:2987                                    ; preds = %2962
  %2988 = add i32 %60, 452
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = add i32 %2990, 0
  %2992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2992, %dx.types.Handle %116, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  br label %2995

; <label>:2995                                    ; preds = %2987, %2962
  %2996 = phi float [ %2994, %2987 ], [ 1.000000e+00, %2962 ]
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 33554432
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3107, label %3001

; <label>:3001                                    ; preds = %2995
  %3002 = add i32 %60, 272
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 65535
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = lshr i32 %3004, 16
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = add i32 %60, 276
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, 65535
  %3013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3012)  ; LegacyF16ToF32(value)
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 24
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = and i32 %3015, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = lshr i32 %3015, 8
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = lshr i32 %3015, 16
  %3027 = and i32 %3026, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 0x3F70101020000000
  %3030 = add i32 %60, 268
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = lshr i32 %3032, 24
  %3034 = uitofp i32 %3033 to float
  %3035 = fmul fast float %3034, 0x3F70101020000000
  %3036 = and i32 %3032, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = fmul fast float %3037, 0x3F70101020000000
  %3039 = lshr i32 %3032, 8
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F70101020000000
  %3043 = lshr i32 %3032, 16
  %3044 = and i32 %3043, 255
  %3045 = uitofp i32 %3044 to float
  %3046 = fmul fast float %3045, 0x3F70101020000000
  %3047 = bitcast float %2971 to i32
  %3048 = ashr i32 %3047, 1
  %3049 = sub nsw i32 1597463174, %3048
  %3050 = bitcast i32 %3049 to float
  %3051 = fmul fast float %2971, 5.000000e-01
  %3052 = fmul fast float %3050, %3050
  %3053 = fmul fast float %3052, %3051
  %3054 = fsub fast float 1.500000e+00, %3053
  %3055 = fmul fast float %3050, %2971
  %3056 = fmul fast float %3055, %3054
  %3057 = bitcast float %2972 to i32
  %3058 = ashr i32 %3057, 1
  %3059 = sub nsw i32 1597463174, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = fmul fast float %2972, 5.000000e-01
  %3062 = fmul fast float %3060, %3060
  %3063 = fmul fast float %3062, %3061
  %3064 = fsub fast float 1.500000e+00, %3063
  %3065 = fmul fast float %3060, %2972
  %3066 = fmul fast float %3065, %3064
  %3067 = bitcast float %2973 to i32
  %3068 = ashr i32 %3067, 1
  %3069 = sub nsw i32 1597463174, %3068
  %3070 = bitcast i32 %3069 to float
  %3071 = fmul fast float %2973, 5.000000e-01
  %3072 = fmul fast float %3070, %3070
  %3073 = fmul fast float %3072, %3071
  %3074 = fsub fast float 1.500000e+00, %3073
  %3075 = fmul fast float %3070, %2973
  %3076 = fmul fast float %3075, %3074
  %3077 = fsub fast float %3056, %3038
  %3078 = fsub fast float %3066, %3042
  %3079 = fsub fast float %3076, %3046
  %3080 = fmul fast float %3077, %3006
  %3081 = fmul fast float %3078, %3008
  %3082 = fmul fast float %3079, %3013
  %3083 = fadd fast float %3080, %3021
  %3084 = fadd fast float %3081, %3025
  %3085 = fadd fast float %3082, %3029
  %3086 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3087 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3088 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3089 = fmul fast float %3086, %3086
  %3090 = fmul fast float %3087, %3087
  %3091 = fmul fast float %3088, %3088
  %3092 = fsub fast float %3089, %2971
  %3093 = fsub fast float %3090, %2972
  %3094 = fsub fast float %3091, %2973
  %3095 = fmul fast float %3092, %2996
  %3096 = fmul fast float %3093, %2996
  %3097 = fmul fast float %3094, %2996
  %3098 = fadd fast float %3095, %2971
  %3099 = fadd fast float %3096, %2972
  %3100 = fadd fast float %3097, %2973
  %3101 = fadd fast float %3018, %2982
  %3102 = fsub fast float %3101, %3035
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3104 = fsub fast float %3103, %2982
  %3105 = fmul fast float %3104, %2996
  %3106 = fadd fast float %3105, %2982
  br label %3160

; <label>:3107                                    ; preds = %2995
  %3108 = and i32 %2998, 134217728
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3144, label %3110

; <label>:3110                                    ; preds = %3107
  %3111 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3112 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %3113 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3114 = fadd fast float %3111, -5.000000e-01
  %3115 = fadd fast float %3112, -5.000000e-01
  %3116 = fadd fast float %3113, -5.000000e-01
  %3117 = fmul fast float %3114, %2996
  %3118 = fmul fast float %3115, %2996
  %3119 = fmul fast float %3116, %2996
  %3120 = fadd fast float %3117, 5.000000e-01
  %3121 = fadd fast float %3118, 5.000000e-01
  %3122 = fadd fast float %3119, 5.000000e-01
  %3123 = call float @dx.op.unary.f32(i32 24, float %2971)  ; Sqrt(value)
  %3124 = call float @dx.op.unary.f32(i32 24, float %2972)  ; Sqrt(value)
  %3125 = call float @dx.op.unary.f32(i32 24, float %2973)  ; Sqrt(value)
  %3126 = fmul fast float %3120, 2.000000e+00
  %3127 = fsub fast float 1.000000e+00, %3126
  %3128 = fmul fast float %3127, %3123
  %3129 = fadd fast float %3128, %3126
  %3130 = fmul fast float %3129, %3123
  %3131 = fmul fast float %3121, 2.000000e+00
  %3132 = fsub fast float 1.000000e+00, %3131
  %3133 = fmul fast float %3132, %3124
  %3134 = fadd fast float %3133, %3131
  %3135 = fmul fast float %3134, %3124
  %3136 = fmul fast float %3122, 2.000000e+00
  %3137 = fsub fast float 1.000000e+00, %3136
  %3138 = fmul fast float %3137, %3125
  %3139 = fadd fast float %3138, %3136
  %3140 = fmul fast float %3139, %3125
  %3141 = fmul fast float %3130, %3130
  %3142 = fmul fast float %3135, %3135
  %3143 = fmul fast float %3140, %3140
  br label %3160

; <label>:3144                                    ; preds = %3107
  %3145 = fmul fast float %412, %412
  %3146 = fmul fast float %416, %416
  %3147 = fmul fast float %420, %420
  %3148 = fadd fast float %3145, -1.000000e+00
  %3149 = fadd fast float %3146, -1.000000e+00
  %3150 = fadd fast float %3147, -1.000000e+00
  %3151 = fmul fast float %2996, %3148
  %3152 = fmul fast float %2996, %3149
  %3153 = fmul fast float %2996, %3150
  %3154 = fadd fast float %3151, 1.000000e+00
  %3155 = fadd fast float %3152, 1.000000e+00
  %3156 = fadd fast float %3153, 1.000000e+00
  %3157 = fmul fast float %3154, %2971
  %3158 = fmul fast float %3155, %2972
  %3159 = fmul fast float %3156, %2973
  br label %3160

; <label>:3160                                    ; preds = %3144, %3110, %3001, %2957
  %3161 = phi float [ %3106, %3001 ], [ %2982, %3110 ], [ %2982, %3144 ], [ 0x3FA23C0BE0000000, %2957 ]
  %3162 = phi float [ %3098, %3001 ], [ %3141, %3110 ], [ %3157, %3144 ], [ 1.000000e+00, %2957 ]
  %3163 = phi float [ %3099, %3001 ], [ %3142, %3110 ], [ %3158, %3144 ], [ 1.000000e+00, %2957 ]
  %3164 = phi float [ %3100, %3001 ], [ %3143, %3110 ], [ %3159, %3144 ], [ 1.000000e+00, %2957 ]
  %3165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.i32 %3165, 1
  %3167 = and i32 %3166, 1
  %3168 = icmp ne i32 %3167, 0
  %3169 = add i32 %60, 356
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 32
  %3173 = icmp ne i32 %3172, 0
  %3174 = and i1 %3168, %3173
  %3175 = select i1 %3174, float 1.000000e+00, float %3162
  %3176 = select i1 %3174, float 0x3FD3333340000000, float %3163
  %3177 = select i1 %3174, float 0x3FD3333340000000, float %3164
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 32
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3254, label %3182

; <label>:3182                                    ; preds = %3160
  %3183 = add i32 %60, 140
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %60, 388
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = add i32 %3188, 0
  %3190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3190, %dx.types.Handle %115, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = extractvalue %dx.types.ResRet.f32 %3191, 3
  %3196 = and i32 %3185, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = lshr i32 %3185, 8
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = lshr i32 %3185, 16
  %3202 = and i32 %3201, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101000000000
  %3205 = fmul fast float %3192, %3197
  %3206 = fadd fast float %3205, %3200
  %3207 = fmul fast float %3206, 0x3F70101000000000
  %3208 = fadd fast float %3193, -5.000000e-01
  %3209 = fadd fast float %3195, -5.000000e-01
  %3210 = fmul fast float %3208, %3204
  %3211 = fmul fast float %3209, %3204
  %3212 = fadd fast float %3210, 5.000000e-01
  %3213 = fadd fast float %3211, 5.000000e-01
  %3214 = fmul fast float %3212, 2.000000e+00
  %3215 = fadd fast float %3214, -1.000000e+00
  %3216 = fmul fast float %3213, 2.000000e+00
  %3217 = fadd fast float %3216, -1.000000e+00
  %3218 = fadd fast float %3215, %3217
  %3219 = fmul fast float %3218, 5.000000e-01
  %3220 = fsub fast float %3215, %3217
  %3221 = fmul fast float %3220, 5.000000e-01
  %3222 = call float @dx.op.unary.f32(i32 6, float %3219)  ; FAbs(value)
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = call float @dx.op.unary.f32(i32 6, float %3221)  ; FAbs(value)
  %3225 = fsub fast float %3223, %3224
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3221, float %3225, float %3219, float %3221, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = call float @dx.op.unary.f32(i32 25, float %3226)  ; Rsqrt(value)
  %3228 = fmul fast float %3219, %3227
  %3229 = fmul fast float %3221, %3227
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 67108864
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3250, label %3234

; <label>:3234                                    ; preds = %3182
  %3235 = add i32 %60, 328
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 65535
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 65535
  %3243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3242)  ; LegacyF16ToF32(value)
  %3244 = lshr i32 %3237, 16
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = fsub fast float %3207, %3245
  %3247 = fmul fast float %3246, %3239
  %3248 = fadd fast float %3247, %3243
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  br label %3250

; <label>:3250                                    ; preds = %3234, %3182
  %3251 = phi float [ %3249, %3234 ], [ %3207, %3182 ]
  %3252 = call float @dx.op.dot2.f32(i32 54, float %3228, float %3229, float %2786, float %2787)  ; Dot2(ax,ay,bx,by)
  %3253 = call float @dx.op.dot2.f32(i32 54, float %3228, float %3229, float %2788, float %2789)  ; Dot2(ax,ay,bx,by)
  br label %3254

; <label>:3254                                    ; preds = %3250, %3160
  %3255 = phi float [ %3251, %3250 ], [ 0x3FD6666660000000, %3160 ]
  %3256 = phi float [ %3252, %3250 ], [ 0.000000e+00, %3160 ]
  %3257 = phi float [ %3253, %3250 ], [ 0.000000e+00, %3160 ]
  %3258 = phi float [ %3194, %3250 ], [ 1.000000e+00, %3160 ]
  %3259 = add i32 %60, 208
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = lshr i32 %3261, 22
  %3263 = shl nuw nsw i32 %3262, 5
  %3264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3263)  ; LegacyF16ToF32(value)
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 64
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3302, label %3269

; <label>:3269                                    ; preds = %3254
  %3270 = add i32 %60, 404
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %3272, 0
  %3274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 131072
  %3278 = icmp eq i32 %3277, 0
  %3279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3274, %dx.types.Handle %115, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = fmul fast float %3280, %400
  %3284 = fmul fast float %3281, %403
  %3285 = fmul fast float %3282, %406
  br i1 %3278, label %3292, label %3286

; <label>:3286                                    ; preds = %3269
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3289 = fmul fast float %3288, %3283
  %3290 = fmul fast float %3288, %3284
  %3291 = fmul fast float %3288, %3285
  br label %3292

; <label>:3292                                    ; preds = %3286, %3269
  %3293 = phi float [ %3289, %3286 ], [ %3283, %3269 ]
  %3294 = phi float [ %3290, %3286 ], [ %3284, %3269 ]
  %3295 = phi float [ %3291, %3286 ], [ %3285, %3269 ]
  %3296 = fmul fast float %3293, %3264
  %3297 = select i1 %257, float %3296, float %3293
  %3298 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3294, float %3295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3299 = select i1 %257, float 0.000000e+00, float %3293
  %3300 = select i1 %257, float %3298, float %3294
  %3301 = select i1 %257, float 0.000000e+00, float %3295
  br label %3302

; <label>:3302                                    ; preds = %3292, %3254
  %3303 = phi float [ %3299, %3292 ], [ 0.000000e+00, %3254 ]
  %3304 = phi float [ %3300, %3292 ], [ 0.000000e+00, %3254 ]
  %3305 = phi float [ %3301, %3292 ], [ 0.000000e+00, %3254 ]
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = and i32 %3307, 10240
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %3354, label %3310

; <label>:3310                                    ; preds = %3302
  %3311 = add i32 %60, 468
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = add i32 %3313, 0
  %3315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3315, %dx.types.Handle %116, float %2882, float %2883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 1048576
  %3322 = icmp ne i32 %3321, 0
  %3323 = and i32 %3320, 8192
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3340, label %3325

; <label>:3325                                    ; preds = %3310
  %3326 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3327 = select i1 %3322, float %3326, float %3317
  %3328 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3329 = select i1 %3322, float %3328, float %3317
  %3330 = add i32 %60, 144
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = lshr i32 %3332, 16
  %3334 = and i32 %3333, 255
  %3335 = uitofp i32 %3334 to float
  %3336 = fmul fast float %3335, 0x3F80101020000000
  %3337 = fmul fast float %3336, %3329
  %3338 = fmul fast float %3336, %3317
  %3339 = fmul fast float %3336, %3327
  br label %3340

; <label>:3340                                    ; preds = %3325, %3310
  %3341 = phi float [ %3337, %3325 ], [ 0.000000e+00, %3310 ]
  %3342 = phi float [ %3338, %3325 ], [ 0.000000e+00, %3310 ]
  %3343 = phi float [ %3339, %3325 ], [ 0.000000e+00, %3310 ]
  %3344 = and i32 %3320, 2048
  %3345 = icmp eq i32 %3344, 0
  br i1 %3345, label %3354, label %3346

; <label>:3346                                    ; preds = %3340
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = shl i32 %3348, 4
  %3350 = and i32 %3349, 32752
  %3351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3350)  ; LegacyF16ToF32(value)
  %3352 = fmul fast float %3351, %3318
  %3353 = call float @dx.op.binary.f32(i32 35, float %3352, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3354

; <label>:3354                                    ; preds = %3346, %3340, %3302
  %3355 = phi float [ %3341, %3346 ], [ %3341, %3340 ], [ 0.000000e+00, %3302 ]
  %3356 = phi float [ %3342, %3346 ], [ %3342, %3340 ], [ 0.000000e+00, %3302 ]
  %3357 = phi float [ %3343, %3346 ], [ %3343, %3340 ], [ 0.000000e+00, %3302 ]
  %3358 = phi float [ %3353, %3346 ], [ 0x3F70101020000000, %3340 ], [ 0x3F70101020000000, %3302 ]
  %3359 = add i32 %60, 144
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 255
  %3363 = uitofp i32 %3362 to float
  %3364 = lshr i32 %3361, 8
  %3365 = and i32 %3364, 255
  %3366 = uitofp i32 %3365 to float
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = fmul fast float %3366, %3367
  %3369 = fadd fast float %3368, %3363
  %3370 = fmul fast float %3369, 0x3F70101020000000
  %3371 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  br i1 %2774, label %3372, label %3380

; <label>:3372                                    ; preds = %3354
  %3373 = fsub fast float 1.000000e+00, %2955
  %3374 = fmul fast float %3373, %2759
  %3375 = fmul fast float %3373, %2760
  %3376 = fmul fast float %3373, %2761
  %3377 = fmul fast float %3373, %2762
  %3378 = fmul fast float %3373, %2763
  %3379 = fmul fast float %3373, %2764
  br label %3380

; <label>:3380                                    ; preds = %3372, %3354
  %3381 = phi float [ %3374, %3372 ], [ %2759, %3354 ]
  %3382 = phi float [ %3375, %3372 ], [ %2760, %3354 ]
  %3383 = phi float [ %3376, %3372 ], [ %2761, %3354 ]
  %3384 = phi float [ %3377, %3372 ], [ %2762, %3354 ]
  %3385 = phi float [ %3378, %3372 ], [ %2763, %3354 ]
  %3386 = phi float [ %3379, %3372 ], [ %2764, %3354 ]
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 3
  %3390 = icmp eq i32 %3389, 3
  br i1 %3390, label %3469, label %3391

; <label>:3391                                    ; preds = %3380
  %3392 = and i32 %3388, 16
  %3393 = icmp ne i32 %3392, 0
  %3394 = select i1 %3393, float %2955, float 0.000000e+00
  %3395 = icmp eq i32 %3389, 0
  br i1 %3395, label %3396, label %3424

; <label>:3396                                    ; preds = %3391
  %3397 = and i32 %3388, 64
  %3398 = icmp ne i32 %3397, 0
  %3399 = select i1 %3398, float %2955, float 0.000000e+00
  %3400 = fsub fast float %3175, %3381
  %3401 = fsub fast float %3176, %3382
  %3402 = fsub fast float %3177, %3383
  %3403 = fmul fast float %3394, %3400
  %3404 = fmul fast float %3394, %3401
  %3405 = fmul fast float %3394, %3402
  %3406 = fadd fast float %3403, %3381
  %3407 = fadd fast float %3404, %3382
  %3408 = fadd fast float %3405, %3383
  %3409 = fsub fast float %3161, %2768
  %3410 = fmul fast float %3394, %3409
  %3411 = fadd fast float %3410, %2768
  %3412 = fsub fast float %3303, %3384
  %3413 = fsub fast float %3304, %3385
  %3414 = fsub fast float %3305, %3386
  %3415 = fmul fast float %3399, %3412
  %3416 = fmul fast float %3399, %3413
  %3417 = fmul fast float %3399, %3414
  %3418 = fadd fast float %3415, %3384
  %3419 = fadd fast float %3416, %3385
  %3420 = fadd fast float %3417, %3386
  %3421 = fsub fast float %3371, %2772
  %3422 = fmul fast float %3394, %3421
  %3423 = fadd fast float %3422, %2772
  br label %3469

; <label>:3424                                    ; preds = %3391
  %3425 = icmp eq i32 %3389, 1
  br i1 %3425, label %3426, label %3439

; <label>:3426                                    ; preds = %3424
  %3427 = fadd fast float %3175, -1.000000e+00
  %3428 = fadd fast float %3176, -1.000000e+00
  %3429 = fadd fast float %3177, -1.000000e+00
  %3430 = fmul fast float %3394, %3427
  %3431 = fmul fast float %3394, %3428
  %3432 = fmul fast float %3394, %3429
  %3433 = fadd fast float %3430, 1.000000e+00
  %3434 = fadd fast float %3431, 1.000000e+00
  %3435 = fadd fast float %3432, 1.000000e+00
  %3436 = fmul fast float %3433, %3381
  %3437 = fmul fast float %3434, %3382
  %3438 = fmul fast float %3435, %3383
  br label %3469

; <label>:3439                                    ; preds = %3424
  %3440 = icmp eq i32 %3389, 2
  br i1 %3440, label %3441, label %3469

; <label>:3441                                    ; preds = %3439
  %3442 = call float @dx.op.unary.f32(i32 24, float %3175)  ; Sqrt(value)
  %3443 = call float @dx.op.unary.f32(i32 24, float %3176)  ; Sqrt(value)
  %3444 = call float @dx.op.unary.f32(i32 24, float %3177)  ; Sqrt(value)
  %3445 = fadd fast float %3442, -5.000000e-01
  %3446 = fadd fast float %3443, -5.000000e-01
  %3447 = fadd fast float %3444, -5.000000e-01
  %3448 = fmul fast float %3445, %3394
  %3449 = fmul fast float %3446, %3394
  %3450 = fmul fast float %3447, %3394
  %3451 = fadd fast float %3448, 5.000000e-01
  %3452 = fadd fast float %3449, 5.000000e-01
  %3453 = fadd fast float %3450, 5.000000e-01
  %3454 = fmul fast float %3451, 2.000000e+00
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fmul fast float %3455, %3381
  %3457 = fadd fast float %3456, %3454
  %3458 = fmul fast float %3457, %3381
  %3459 = fmul fast float %3452, 2.000000e+00
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = fmul fast float %3460, %3382
  %3462 = fadd fast float %3461, %3459
  %3463 = fmul fast float %3462, %3382
  %3464 = fmul fast float %3453, 2.000000e+00
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3465, %3383
  %3467 = fadd fast float %3466, %3464
  %3468 = fmul fast float %3467, %3383
  br label %3469

; <label>:3469                                    ; preds = %3441, %3439, %3426, %3396, %3380
  %3470 = phi float [ %3381, %3380 ], [ %3458, %3441 ], [ %3381, %3439 ], [ %3436, %3426 ], [ %3406, %3396 ]
  %3471 = phi float [ %3382, %3380 ], [ %3463, %3441 ], [ %3382, %3439 ], [ %3437, %3426 ], [ %3407, %3396 ]
  %3472 = phi float [ %3383, %3380 ], [ %3468, %3441 ], [ %3383, %3439 ], [ %3438, %3426 ], [ %3408, %3396 ]
  %3473 = phi float [ %3384, %3380 ], [ %3384, %3441 ], [ %3384, %3439 ], [ %3384, %3426 ], [ %3418, %3396 ]
  %3474 = phi float [ %3385, %3380 ], [ %3385, %3441 ], [ %3385, %3439 ], [ %3385, %3426 ], [ %3419, %3396 ]
  %3475 = phi float [ %3386, %3380 ], [ %3386, %3441 ], [ %3386, %3439 ], [ %3386, %3426 ], [ %3420, %3396 ]
  %3476 = phi float [ %2768, %3380 ], [ %2768, %3441 ], [ %2768, %3439 ], [ %2768, %3426 ], [ %3411, %3396 ]
  %3477 = phi float [ %2772, %3380 ], [ %2772, %3441 ], [ %2772, %3439 ], [ %2772, %3426 ], [ %3423, %3396 ]
  %3478 = and i32 %3388, 12
  %3479 = icmp eq i32 %3478, 12
  br i1 %3479, label %3586, label %3480

; <label>:3480                                    ; preds = %3469
  %3481 = and i32 %3388, 2097184
  %3482 = icmp eq i32 %3481, 2097184
  %3483 = select i1 %3482, float %2955, float 0.000000e+00
  %3484 = and i32 %3388, 4194336
  %3485 = icmp eq i32 %3484, 4194336
  %3486 = select i1 %3485, float %2955, float 0.000000e+00
  %3487 = and i32 %3388, 8388640
  %3488 = icmp eq i32 %3487, 8388640
  %3489 = select i1 %3488, float %2955, float 0.000000e+00
  %3490 = and i32 %3388, 2048
  %3491 = icmp ne i32 %3490, 0
  %3492 = select i1 %3491, float %2955, float 0.000000e+00
  %3493 = and i32 %3388, 8192
  %3494 = icmp ne i32 %3493, 0
  %3495 = select i1 %3494, float %2955, float 0.000000e+00
  %3496 = icmp eq i32 %3478, 0
  br i1 %3496, label %3497, label %3522

; <label>:3497                                    ; preds = %3480
  %3498 = fsub fast float %3256, %2757
  %3499 = fsub fast float %3257, %2758
  %3500 = fmul fast float %3483, %3498
  %3501 = fmul fast float %3483, %3499
  %3502 = fadd fast float %3500, %2757
  %3503 = fadd fast float %3501, %2758
  %3504 = fsub fast float %3258, %2770
  %3505 = fmul fast float %3486, %3504
  %3506 = fadd fast float %3505, %2770
  %3507 = fsub fast float %3255, %2769
  %3508 = fmul fast float %3489, %3507
  %3509 = fadd fast float %3508, %2769
  %3510 = fsub fast float %3358, %2771
  %3511 = fmul fast float %3492, %3510
  %3512 = fadd fast float %3511, %2771
  %3513 = fsub fast float %3355, %2765
  %3514 = fsub fast float %3356, %2766
  %3515 = fsub fast float %3357, %2767
  %3516 = fmul fast float %3495, %3513
  %3517 = fmul fast float %3495, %3514
  %3518 = fmul fast float %3495, %3515
  %3519 = fadd fast float %3516, %2765
  %3520 = fadd fast float %3517, %2766
  %3521 = fadd fast float %3518, %2767
  br label %3586

; <label>:3522                                    ; preds = %3480
  %3523 = icmp eq i32 %3478, 4
  br i1 %3523, label %3524, label %3564

; <label>:3524                                    ; preds = %3522
  %3525 = fmul fast float %3483, %3256
  %3526 = fmul fast float %3483, %3257
  %3527 = fadd fast float %3525, %2757
  %3528 = fadd fast float %3526, %2758
  %3529 = call float @dx.op.binary.f32(i32 36, float %2770, float %3258)  ; FMin(a,b)
  %3530 = fsub fast float %3529, %2770
  %3531 = fmul fast float %3530, %3486
  %3532 = fadd fast float %3531, %2770
  %3533 = fadd fast float %3255, %2769
  %3534 = fmul fast float %3533, 0x3FF337FAE0000000
  %3535 = fmul fast float %2769, %2769
  %3536 = fmul fast float %3255, %3255
  %3537 = fadd fast float %3536, %3535
  %3538 = fmul fast float %3537, 0x3FE5152B00000000
  %3539 = fmul fast float %2769, 0xBFCC1F85E0000000
  %3540 = fmul fast float %3539, %3255
  %3541 = fadd fast float %3540, 0xBFE1363700000000
  %3542 = fadd fast float %3541, %3534
  %3543 = fsub fast float %3542, %3538
  %3544 = fmul fast float %3533, 0x3FBA6F0D00000000
  %3545 = fmul fast float %3537, 0x3FD0432880000000
  %3546 = fmul fast float %2769, 0xBFEF110800000000
  %3547 = fmul fast float %3546, %3255
  %3548 = fadd fast float %3547, 1.000000e+00
  %3549 = fsub fast float %3548, %3544
  %3550 = fadd fast float %3549, %3545
  %3551 = fdiv fast float %3543, %3550
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fsub fast float %3552, %2769
  %3554 = fmul fast float %3553, %3489
  %3555 = fadd fast float %3554, %2769
  %3556 = fmul fast float %3492, %3358
  %3557 = fadd fast float %3556, %2771
  %3558 = fmul fast float %3495, %3355
  %3559 = fmul fast float %3495, %3356
  %3560 = fmul fast float %3495, %3357
  %3561 = fadd fast float %3558, %2765
  %3562 = fadd fast float %3559, %2766
  %3563 = fadd fast float %3560, %2767
  br label %3586

; <label>:3564                                    ; preds = %3522
  %3565 = icmp eq i32 %3478, 8
  br i1 %3565, label %3566, label %3586

; <label>:3566                                    ; preds = %3564
  %3567 = fmul fast float %3483, %3256
  %3568 = fmul fast float %3483, %3257
  %3569 = fadd fast float %3567, %2757
  %3570 = fadd fast float %3568, %2758
  %3571 = call float @dx.op.binary.f32(i32 36, float %2770, float %3258)  ; FMin(a,b)
  %3572 = fsub fast float %3571, %2770
  %3573 = fmul fast float %3572, %3486
  %3574 = fadd fast float %3573, %2770
  %3575 = fsub fast float %3255, %2769
  %3576 = fmul fast float %3489, %3575
  %3577 = fadd fast float %3576, %2769
  %3578 = fmul fast float %3492, %3358
  %3579 = fadd fast float %3578, %2771
  %3580 = fmul fast float %3495, %3355
  %3581 = fmul fast float %3495, %3356
  %3582 = fmul fast float %3495, %3357
  %3583 = fadd fast float %3580, %2765
  %3584 = fadd fast float %3581, %2766
  %3585 = fadd fast float %3582, %2767
  br label %3586

; <label>:3586                                    ; preds = %3566, %3564, %3524, %3497, %3469, %2954, %2773, %2756
  %3587 = phi float [ %2757, %3469 ], [ %2757, %2954 ], [ %2757, %2756 ], [ %2757, %2773 ], [ %3502, %3497 ], [ %3527, %3524 ], [ %2757, %3564 ], [ %3569, %3566 ]
  %3588 = phi float [ %2758, %3469 ], [ %2758, %2954 ], [ %2758, %2756 ], [ %2758, %2773 ], [ %3503, %3497 ], [ %3528, %3524 ], [ %2758, %3564 ], [ %3570, %3566 ]
  %3589 = phi float [ %3470, %3469 ], [ %2759, %2954 ], [ %2759, %2756 ], [ %2759, %2773 ], [ %3470, %3497 ], [ %3470, %3524 ], [ %3470, %3564 ], [ %3470, %3566 ]
  %3590 = phi float [ %3471, %3469 ], [ %2760, %2954 ], [ %2760, %2756 ], [ %2760, %2773 ], [ %3471, %3497 ], [ %3471, %3524 ], [ %3471, %3564 ], [ %3471, %3566 ]
  %3591 = phi float [ %3472, %3469 ], [ %2761, %2954 ], [ %2761, %2756 ], [ %2761, %2773 ], [ %3472, %3497 ], [ %3472, %3524 ], [ %3472, %3564 ], [ %3472, %3566 ]
  %3592 = phi float [ %3473, %3469 ], [ %2762, %2954 ], [ %2762, %2756 ], [ %2762, %2773 ], [ %3473, %3497 ], [ %3473, %3524 ], [ %3473, %3564 ], [ %3473, %3566 ]
  %3593 = phi float [ %3474, %3469 ], [ %2763, %2954 ], [ %2763, %2756 ], [ %2763, %2773 ], [ %3474, %3497 ], [ %3474, %3524 ], [ %3474, %3564 ], [ %3474, %3566 ]
  %3594 = phi float [ %3475, %3469 ], [ %2764, %2954 ], [ %2764, %2756 ], [ %2764, %2773 ], [ %3475, %3497 ], [ %3475, %3524 ], [ %3475, %3564 ], [ %3475, %3566 ]
  %3595 = phi float [ %2765, %3469 ], [ %2765, %2954 ], [ %2765, %2756 ], [ %2765, %2773 ], [ %3519, %3497 ], [ %3561, %3524 ], [ %2765, %3564 ], [ %3583, %3566 ]
  %3596 = phi float [ %2766, %3469 ], [ %2766, %2954 ], [ %2766, %2756 ], [ %2766, %2773 ], [ %3520, %3497 ], [ %3562, %3524 ], [ %2766, %3564 ], [ %3584, %3566 ]
  %3597 = phi float [ %2767, %3469 ], [ %2767, %2954 ], [ %2767, %2756 ], [ %2767, %2773 ], [ %3521, %3497 ], [ %3563, %3524 ], [ %2767, %3564 ], [ %3585, %3566 ]
  %3598 = phi float [ %3476, %3469 ], [ %2768, %2954 ], [ %2768, %2756 ], [ %2768, %2773 ], [ %3476, %3497 ], [ %3476, %3524 ], [ %3476, %3564 ], [ %3476, %3566 ]
  %3599 = phi float [ %2769, %3469 ], [ %2769, %2954 ], [ %2769, %2756 ], [ %2769, %2773 ], [ %3509, %3497 ], [ %3555, %3524 ], [ %2769, %3564 ], [ %3577, %3566 ]
  %3600 = phi float [ %2770, %3469 ], [ %2770, %2954 ], [ %2770, %2756 ], [ %2770, %2773 ], [ %3506, %3497 ], [ %3532, %3524 ], [ %2770, %3564 ], [ %3574, %3566 ]
  %3601 = phi float [ %2771, %3469 ], [ %2771, %2954 ], [ %2771, %2756 ], [ %2771, %2773 ], [ %3512, %3497 ], [ %3557, %3524 ], [ %2771, %3564 ], [ %3579, %3566 ]
  %3602 = phi float [ %3477, %3469 ], [ %2772, %2954 ], [ %2772, %2756 ], [ %2772, %2773 ], [ %3477, %3497 ], [ %3477, %3524 ], [ %3477, %3564 ], [ %3477, %3566 ]
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = call float @dx.op.dot2.f32(i32 54, float %3587, float %3588, float %3587, float %3588)  ; Dot2(ax,ay,bx,by)
  %3606 = fmul fast float %3605, 0x3FE3333340000000
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3588, float %3607, float %3587, float %3588, float %3607)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = call float @dx.op.unary.f32(i32 25, float %3608)  ; Rsqrt(value)
  %3610 = fmul fast float %3609, %3587
  %3611 = fmul fast float %3609, %3588
  %3612 = fmul fast float %3607, %3609
  %3613 = fmul fast float %3612, %126
  %3614 = fmul fast float %3612, %127
  %3615 = fmul fast float %3612, %128
  %3616 = fmul fast float %3610, %90
  %3617 = fmul fast float %3610, %91
  %3618 = fmul fast float %3610, %92
  %3619 = fadd fast float %3613, %3616
  %3620 = fadd fast float %3614, %3617
  %3621 = fadd fast float %3615, %3618
  %3622 = fmul fast float %138, %3611
  %3623 = fmul fast float %139, %3611
  %3624 = fmul fast float %140, %3611
  %3625 = fadd fast float %3619, %3622
  %3626 = fadd fast float %3620, %3623
  %3627 = fadd fast float %3621, %3624
  %3628 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3626, float %3627, float %3625, float %3626, float %3627)  ; Dot3(ax,ay,az,bx,by,bz)
  %3629 = call float @dx.op.unary.f32(i32 25, float %3628)  ; Rsqrt(value)
  %3630 = fmul fast float %3625, %3629
  %3631 = fmul fast float %3626, %3629
  %3632 = fmul fast float %3627, %3629
  %3633 = icmp eq i32 %61, 65535
  br i1 %3633, label %4201, label %3634

; <label>:3634                                    ; preds = %3586
  %3635 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3636 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3637 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3638 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3639 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3640 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3641 = fadd fast float %3635, %62
  %3642 = fadd fast float %3636, %63
  %3643 = fadd fast float %3637, %64
  %3644 = fadd fast float %3638, %62
  %3645 = fadd fast float %3639, %63
  %3646 = fadd fast float %3640, %64
  %3647 = mul i32 %61, 48
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = add i32 %3647, 16
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = add i32 %3647, 32
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = bitcast float %3662 to i32
  %3664 = fmul fast float %3649, %62
  %3665 = fmul fast float %3650, %63
  %3666 = fmul fast float %3651, %64
  %3667 = fsub fast float %3664, %3654
  %3668 = fsub fast float %3665, %3655
  %3669 = fsub fast float %3666, %3656
  %3670 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3671 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3672 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3673 = fmul fast float %3670, %3659
  %3674 = fmul fast float %3671, %3660
  %3675 = fmul fast float %3672, %3661
  %3676 = fadd fast float %3659, -1.000000e+00
  %3677 = fadd fast float %3660, -1.000000e+00
  %3678 = fadd fast float %3661, -1.000000e+00
  %3679 = call float @dx.op.unary.f32(i32 27, float %3673)  ; Round_ni(value)
  %3680 = call float @dx.op.unary.f32(i32 27, float %3674)  ; Round_ni(value)
  %3681 = call float @dx.op.unary.f32(i32 27, float %3675)  ; Round_ni(value)
  %3682 = call float @dx.op.binary.f32(i32 36, float %3679, float %3676)  ; FMin(a,b)
  %3683 = call float @dx.op.binary.f32(i32 36, float %3680, float %3677)  ; FMin(a,b)
  %3684 = call float @dx.op.binary.f32(i32 36, float %3681, float %3678)  ; FMin(a,b)
  %3685 = fmul fast float %3684, %3660
  %3686 = fadd fast float %3685, %3683
  %3687 = fmul fast float %3686, %3659
  %3688 = fadd fast float %3687, %3682
  %3689 = fptosi float %3688 to i32
  %3690 = add nsw i32 %3689, %3663
  %3691 = shl nsw i32 %3690, 2
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = lshr i32 %3693, 16
  %3695 = icmp eq i32 %3694, 0
  br i1 %3695, label %4167, label %3696

; <label>:3696                                    ; preds = %3634
  br label %3697

; <label>:3697                                    ; preds = %3821, %3696
  %3698 = phi i32 [ %3723, %3821 ], [ %3694, %3696 ]
  %3699 = phi float [ %3822, %3821 ], [ 0.000000e+00, %3696 ]
  %3700 = phi float [ %3823, %3821 ], [ %3604, %3696 ]
  %3701 = phi float [ %3824, %3821 ], [ %3602, %3696 ]
  %3702 = phi float [ %3825, %3821 ], [ 0.000000e+00, %3696 ]
  %3703 = phi float [ %3826, %3821 ], [ 0.000000e+00, %3696 ]
  %3704 = phi float [ %3827, %3821 ], [ %3595, %3696 ]
  %3705 = phi float [ %3828, %3821 ], [ %3596, %3696 ]
  %3706 = phi float [ %3829, %3821 ], [ %3597, %3696 ]
  %3707 = phi float [ %3830, %3821 ], [ %3592, %3696 ]
  %3708 = phi float [ %3831, %3821 ], [ %3593, %3696 ]
  %3709 = phi float [ %3832, %3821 ], [ %3594, %3696 ]
  %3710 = phi float [ %3833, %3821 ], [ %3630, %3696 ]
  %3711 = phi float [ %3834, %3821 ], [ %3631, %3696 ]
  %3712 = phi float [ %3835, %3821 ], [ %3632, %3696 ]
  %3713 = phi float [ %3836, %3821 ], [ %3600, %3696 ]
  %3714 = phi float [ %3837, %3821 ], [ %3599, %3696 ]
  %3715 = phi float [ %3838, %3821 ], [ 0.000000e+00, %3696 ]
  %3716 = phi float [ %3839, %3821 ], [ %3598, %3696 ]
  %3717 = phi float [ %3840, %3821 ], [ %3589, %3696 ]
  %3718 = phi float [ %3841, %3821 ], [ %3590, %3696 ]
  %3719 = phi float [ %3842, %3821 ], [ %3591, %3696 ]
  %3720 = shl nuw nsw i32 %3698, 2
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = lshr i32 %3722, 16
  %3724 = shl i32 %3722, 8
  %3725 = and i32 %3724, 16776960
  %3726 = or i32 %3725, 48
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3731 = or i32 %3725, 64
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.i32 %3732, 1
  %3735 = or i32 %3725, 80
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3739 = or i32 %3725, 96
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3740, 2
  %3744 = extractvalue %dx.types.ResRet.f32 %3740, 3
  %3745 = or i32 %3725, 112
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3748 = or i32 %3725, 128
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.ResRet.f32 %3749, 2
  %3753 = extractvalue %dx.types.ResRet.f32 %3749, 3
  %3754 = or i32 %3725, 144
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = extractvalue %dx.types.ResRet.f32 %3755, 3
  %3760 = or i32 %3725, 160
  %3761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = or i32 %3725, 192
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = or i32 %3725, 208
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = or i32 %3725, 248
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3781 = call float @dx.op.dot4.f32(i32 56, float %3777, float %3778, float %3779, float %3780, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3782 = or i32 %3725, 16
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = extractvalue %dx.types.ResRet.f32 %3783, 3
  %3788 = call float @dx.op.dot4.f32(i32 56, float %3784, float %3785, float %3786, float %3787, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3789 = or i32 %3725, 32
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3795 = call float @dx.op.dot4.f32(i32 56, float %3791, float %3792, float %3793, float %3794, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3796 = call float @dx.op.unary.f32(i32 27, float %3781)  ; Round_ni(value)
  %3797 = call float @dx.op.unary.f32(i32 6, float %3796)  ; FAbs(value)
  %3798 = call float @dx.op.unary.f32(i32 27, float %3788)  ; Round_ni(value)
  %3799 = call float @dx.op.unary.f32(i32 6, float %3798)  ; FAbs(value)
  %3800 = call float @dx.op.unary.f32(i32 6, float %3795)  ; FAbs(value)
  %3801 = call float @dx.op.unary.f32(i32 27, float %3800)  ; Round_ni(value)
  %3802 = fadd fast float %3799, %3797
  %3803 = fadd fast float %3802, %3801
  %3804 = fcmp fast oeq float %3803, 0.000000e+00
  %3805 = call float @dx.op.dot4.f32(i32 56, float %3777, float %3778, float %3779, float %3780, float %3641, float %3642, float %3643, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3806 = call float @dx.op.dot4.f32(i32 56, float %3784, float %3785, float %3786, float %3787, float %3641, float %3642, float %3643, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3807 = call float @dx.op.dot4.f32(i32 56, float %3777, float %3778, float %3779, float %3780, float %3644, float %3645, float %3646, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3808 = call float @dx.op.dot4.f32(i32 56, float %3784, float %3785, float %3786, float %3787, float %3644, float %3645, float %3646, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3809 = fsub fast float %3805, %3781
  %3810 = fsub fast float %3807, %3781
  %3811 = fsub fast float %3806, %3788
  %3812 = fsub fast float %3808, %3788
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 2
  %3816 = fadd fast float %3815, %3813
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3819 = fcmp fast ogt float %3817, %3818
  %3820 = and i1 %3804, %3819
  br i1 %3820, label %3844, label %3821

; <label>:3821                                    ; preds = %4153, %3927, %3844, %3697
  %3822 = phi float [ %3699, %3844 ], [ %3930, %3927 ], [ %3930, %4153 ], [ %3699, %3697 ]
  %3823 = phi float [ %3700, %3844 ], [ %3700, %3927 ], [ %4129, %4153 ], [ %3700, %3697 ]
  %3824 = phi float [ %3701, %3844 ], [ %3701, %3927 ], [ %4127, %4153 ], [ %3701, %3697 ]
  %3825 = phi float [ %3702, %3844 ], [ %3702, %3927 ], [ %4054, %4153 ], [ %3702, %3697 ]
  %3826 = phi float [ %3703, %3844 ], [ %3703, %3927 ], [ %4052, %4153 ], [ %3703, %3697 ]
  %3827 = phi float [ %3704, %3844 ], [ %3704, %3927 ], [ %4097, %4153 ], [ %3704, %3697 ]
  %3828 = phi float [ %3705, %3844 ], [ %3705, %3927 ], [ %4098, %4153 ], [ %3705, %3697 ]
  %3829 = phi float [ %3706, %3844 ], [ %3706, %3927 ], [ %4099, %4153 ], [ %3706, %3697 ]
  %3830 = phi float [ %3707, %3844 ], [ %3707, %3927 ], [ %4163, %4153 ], [ %3707, %3697 ]
  %3831 = phi float [ %3708, %3844 ], [ %3708, %3927 ], [ %4164, %4153 ], [ %3708, %3697 ]
  %3832 = phi float [ %3709, %3844 ], [ %3709, %3927 ], [ %4165, %4153 ], [ %3709, %3697 ]
  %3833 = phi float [ %3710, %3844 ], [ %3710, %3927 ], [ %4033, %4153 ], [ %3710, %3697 ]
  %3834 = phi float [ %3711, %3844 ], [ %3711, %3927 ], [ %4034, %4153 ], [ %3711, %3697 ]
  %3835 = phi float [ %3712, %3844 ], [ %3712, %3927 ], [ %4035, %4153 ], [ %3712, %3697 ]
  %3836 = phi float [ %3713, %3844 ], [ %3713, %3927 ], [ %4107, %4153 ], [ %3713, %3697 ]
  %3837 = phi float [ %3714, %3844 ], [ %3714, %3927 ], [ %4104, %4153 ], [ %3714, %3697 ]
  %3838 = phi float [ %3715, %3844 ], [ %3715, %3927 ], [ %4101, %4153 ], [ %3715, %3697 ]
  %3839 = phi float [ %3716, %3844 ], [ %3716, %3927 ], [ %4050, %4153 ], [ %3716, %3697 ]
  %3840 = phi float [ %3717, %3844 ], [ %3717, %3927 ], [ %4045, %4153 ], [ %3717, %3697 ]
  %3841 = phi float [ %3718, %3844 ], [ %3718, %3927 ], [ %4046, %4153 ], [ %3718, %3697 ]
  %3842 = phi float [ %3719, %3844 ], [ %3719, %3927 ], [ %4047, %4153 ], [ %3719, %3697 ]
  %3843 = icmp eq i32 %3723, 0
  br i1 %3843, label %4166, label %3697

; <label>:3844                                    ; preds = %3697
  %3845 = extractvalue %dx.types.ResRet.f32 %3727, 3
  %3846 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3847 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3851 = extractvalue %dx.types.ResRet.i32 %3732, 3
  %3852 = extractvalue %dx.types.ResRet.i32 %3732, 2
  %3853 = bitcast float %3845 to i32
  %3854 = add i32 %3851, 0
  %3855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3854, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3855, %dx.types.Handle %3856, float %3781, float %3788, float undef, float undef, i32 0, i32 0, i32 undef, float %3809, float %3811, float undef, float %3810, float %3812, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = fmul fast float %3858, %3850
  %3860 = fadd fast float %3859, %3849
  %3861 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3862 = fmul fast float %3781, %3741
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3742, float %3788, float %3862)  ; FMad(a,b,c)
  %3864 = fadd fast float %3863, %3848
  %3865 = fmul fast float %3781, %3743
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3744, float %3788, float %3865)  ; FMad(a,b,c)
  %3867 = fadd fast float %3866, %3847
  %3868 = fmul fast float %3809, %3741
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3742, float %3811, float %3868)  ; FMad(a,b,c)
  %3870 = fmul fast float %3809, %3743
  %3871 = call float @dx.op.tertiary.f32(i32 46, float %3744, float %3811, float %3870)  ; FMad(a,b,c)
  %3872 = fmul fast float %3810, %3741
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3742, float %3812, float %3872)  ; FMad(a,b,c)
  %3874 = fmul fast float %3810, %3743
  %3875 = call float @dx.op.tertiary.f32(i32 46, float %3744, float %3812, float %3874)  ; FMad(a,b,c)
  %3876 = add i32 %3852, 0
  %3877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3877, %dx.types.Handle %3856, float %3864, float %3867, float undef, float undef, i32 0, i32 0, i32 undef, float %3869, float %3871, float undef, float %3873, float %3875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = and i32 %3853, 1024
  %3881 = icmp ne i32 %3880, 0
  %3882 = fcmp fast ogt float %3879, 0x3FE0101020000000
  %3883 = uitofp i1 %3882 to float
  %3884 = select i1 %3881, float %3883, float %3879
  %3885 = and i32 %3853, 8192
  %3886 = icmp ne i32 %3885, 0
  %3887 = select i1 %3886, float %3846, float 1.000000e+00
  %3888 = fmul fast float %3781, 2.000000e+00
  %3889 = fadd fast float %3888, -1.000000e+00
  %3890 = call float @dx.op.unary.f32(i32 6, float %3889)  ; FAbs(value)
  %3891 = fmul fast float %3890, %3774
  %3892 = fsub fast float %3891, %3774
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fmul fast float %3788, 2.000000e+00
  %3895 = fadd fast float %3894, -1.000000e+00
  %3896 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3897 = fmul fast float %3896, %3775
  %3898 = fsub fast float %3897, %3775
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3800, %3737
  %3901 = fsub fast float %3900, %3737
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fmul fast float %3861, %3887
  %3904 = fmul fast float %3903, %3858
  %3905 = fmul fast float %3904, %3893
  %3906 = fmul fast float %3905, %3884
  %3907 = fmul fast float %3906, %3899
  %3908 = fmul fast float %3907, %3902
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3912 = fsub fast float %3817, %3911
  %3913 = fmul fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fmul fast float %3908, %3738
  %3916 = fadd fast float %3908, %3738
  %3917 = fmul fast float %3916, %3747
  %3918 = fsub fast float %3917, %3747
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = and i32 %3853, 128
  %3921 = icmp ne i32 %3920, 0
  %3922 = select i1 %3921, float %3919, float %3915
  %3923 = fmul fast float %3922, %3914
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = fcmp fast ugt float %3923, %3925
  br i1 %3926, label %3927, label %3821

; <label>:3927                                    ; preds = %3844
  %3928 = select i1 %3886, float %3923, float 0.000000e+00
  %3929 = fadd fast float %3928, %3699
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  br i1 %3886, label %3821, label %3931

; <label>:3931                                    ; preds = %3927
  %3932 = and i32 %3853, 4
  %3933 = and i32 %3853, 8
  %3934 = add i32 %3733, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3936, float %3864, float %3867, float undef, float undef, i32 0, i32 0, i32 undef, float %3869, float %3871, float undef, float %3873, float %3875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = extractvalue %dx.types.ResRet.f32 %3937, 3
  %3942 = bitcast float %3759 to i32
  %3943 = and i32 %3942, 255
  %3944 = uitofp i32 %3943 to float
  %3945 = lshr i32 %3942, 8
  %3946 = and i32 %3945, 255
  %3947 = uitofp i32 %3946 to float
  %3948 = fmul fast float %3941, %3944
  %3949 = fadd fast float %3948, %3947
  %3950 = fmul fast float %3949, 0x3F70101000000000
  %3951 = add i32 %3734, 0
  %3952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3952, %dx.types.Handle %3936, float %3864, float %3867, float undef, float undef, i32 0, i32 0, i32 undef, float %3869, float %3871, float undef, float %3873, float %3875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = bitcast float %3753 to i32
  %3959 = and i32 %3958, 255
  %3960 = uitofp i32 %3959 to float
  %3961 = lshr i32 %3958, 8
  %3962 = and i32 %3961, 255
  %3963 = uitofp i32 %3962 to float
  %3964 = lshr i32 %3958, 16
  %3965 = and i32 %3964, 255
  %3966 = uitofp i32 %3965 to float
  %3967 = fmul fast float %3966, 0x3F70101000000000
  %3968 = fmul fast float %3954, %3960
  %3969 = fadd fast float %3968, %3963
  %3970 = fmul fast float %3969, 0x3F70101000000000
  %3971 = fadd fast float %3955, -5.000000e-01
  %3972 = fadd fast float %3957, -5.000000e-01
  %3973 = fmul fast float %3971, %3967
  %3974 = fmul fast float %3972, %3967
  %3975 = fadd fast float %3973, 5.000000e-01
  %3976 = fadd fast float %3974, 5.000000e-01
  %3977 = fmul fast float %3938, %3762
  %3978 = fmul fast float %3939, %3763
  %3979 = fmul fast float %3940, %3764
  %3980 = fmul fast float %3975, 2.000000e+00
  %3981 = fadd fast float %3980, -1.000000e+00
  %3982 = fmul fast float %3976, 2.000000e+00
  %3983 = fadd fast float %3982, -1.000000e+00
  %3984 = fadd fast float %3981, %3983
  %3985 = fmul fast float %3984, 5.000000e-01
  %3986 = fsub fast float %3981, %3983
  %3987 = fmul fast float %3986, 5.000000e-01
  %3988 = call float @dx.op.unary.f32(i32 6, float %3985)  ; FAbs(value)
  %3989 = fsub fast float 1.000000e+00, %3988
  %3990 = call float @dx.op.unary.f32(i32 6, float %3987)  ; FAbs(value)
  %3991 = fsub fast float %3989, %3990
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3987, float %3991, float %3985, float %3987, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call float @dx.op.unary.f32(i32 25, float %3992)  ; Rsqrt(value)
  %3994 = fmul fast float %3985, %3993
  %3995 = fmul fast float %3987, %3993
  %3996 = fmul fast float %3993, %3991
  %3997 = fmul fast float %3996, %3728
  %3998 = fmul fast float %3996, %3729
  %3999 = fmul fast float %3996, %3730
  %4000 = fmul fast float %3994, %3750
  %4001 = fmul fast float %3994, %3751
  %4002 = fmul fast float %3994, %3752
  %4003 = fadd fast float %4000, %3997
  %4004 = fadd fast float %4001, %3998
  %4005 = fadd fast float %4002, %3999
  %4006 = fmul fast float %3995, %3756
  %4007 = fmul fast float %3995, %3757
  %4008 = fmul fast float %3995, %3758
  %4009 = fadd fast float %4003, %4006
  %4010 = fadd fast float %4004, %4007
  %4011 = fadd fast float %4005, %4008
  %4012 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4010, float %4011, float %4009, float %4010, float %4011)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = call float @dx.op.unary.f32(i32 25, float %4012)  ; Rsqrt(value)
  %4014 = fmul fast float %4009, %4013
  %4015 = fmul fast float %4010, %4013
  %4016 = fmul fast float %4011, %4013
  %4017 = icmp ne i32 %3933, 0
  %4018 = select i1 %4017, float 1.000000e+00, float 0.000000e+00
  %4019 = fmul fast float %3923, %4018
  %4020 = and i32 %3853, 1
  %4021 = icmp eq i32 %4020, 0
  br i1 %4021, label %4022, label %4026

; <label>:4022                                    ; preds = %3931
  %4023 = fsub fast float %4014, %3710
  %4024 = fsub fast float %4015, %3711
  %4025 = fsub fast float %4016, %3712
  br label %4026

; <label>:4026                                    ; preds = %4022, %3931
  %4027 = phi float [ %4023, %4022 ], [ %4014, %3931 ]
  %4028 = phi float [ %4024, %4022 ], [ %4015, %3931 ]
  %4029 = phi float [ %4025, %4022 ], [ %4016, %3931 ]
  %4030 = fmul float %4029, %4019
  %4031 = fmul float %4028, %4019
  %4032 = fmul float %4027, %4019
  %4033 = fadd fast float %4032, %3710
  %4034 = fadd fast float %4031, %3711
  %4035 = fadd fast float %4030, %3712
  %4036 = icmp ne i32 %3932, 0
  %4037 = select i1 %4036, float 1.000000e+00, float 0.000000e+00
  %4038 = fmul fast float %3923, %4037
  %4039 = fsub fast float %3977, %3717
  %4040 = fsub fast float %3978, %3718
  %4041 = fsub fast float %3979, %3719
  %4042 = fmul fast float %4039, %4038
  %4043 = fmul fast float %4040, %4038
  %4044 = fmul fast float %4041, %4038
  %4045 = fadd fast float %4042, %3717
  %4046 = fadd fast float %4043, %3718
  %4047 = fadd fast float %4044, %3719
  %4048 = fsub fast float %3950, %3716
  %4049 = fmul fast float %4048, %4038
  %4050 = fadd fast float %4049, %3716
  %4051 = fmul fast float %4038, %3703
  %4052 = fsub fast float %3703, %4051
  %4053 = fmul fast float %4038, %3702
  %4054 = fsub fast float %3702, %4053
  %4055 = bitcast float %3771 to i32
  %4056 = lshr i32 %4055, 16
  %4057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4056)  ; LegacyF16ToF32(value)
  %4058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.i32 %4058, 0
  %4060 = and i32 %4059, 1
  %4061 = icmp eq i32 %4060, 0
  br i1 %4061, label %4062, label %4087

; <label>:4062                                    ; preds = %4026
  %4063 = fadd fast float %3950, 0xBFB99999A0000000
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fmul fast float %4064, 0x3FF1C71C80000000
  %4066 = fsub fast float 1.000000e+00, %4065
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4067, %3977
  %4069 = fmul fast float %4067, %3978
  %4070 = fmul fast float %4067, %3979
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = call float @dx.op.binary.f32(i32 35, float %4072, float %4073)  ; FMax(a,b)
  %4075 = call float @dx.op.binary.f32(i32 35, float %4071, float %4074)  ; FMax(a,b)
  %4076 = fcmp fast ogt float %4075, 0.000000e+00
  %4077 = bitcast float %4075 to i32
  %4078 = sub nsw i32 2129859010, %4077
  %4079 = bitcast i32 %4078 to float
  %4080 = select i1 %4076, float %4079, float 0.000000e+00
  %4081 = fmul fast float %4071, %4057
  %4082 = fmul fast float %4072, %4057
  %4083 = fmul fast float %4073, %4057
  %4084 = fmul fast float %4081, %4080
  %4085 = fmul fast float %4082, %4080
  %4086 = fmul fast float %4083, %4080
  br label %4087

; <label>:4087                                    ; preds = %4062, %4026
  %4088 = phi float [ %4057, %4026 ], [ %4084, %4062 ]
  %4089 = phi float [ %4057, %4026 ], [ %4085, %4062 ]
  %4090 = phi float [ %4057, %4026 ], [ %4086, %4062 ]
  %4091 = fsub fast float %4088, %3704
  %4092 = fsub fast float %4089, %3705
  %4093 = fsub fast float %4090, %3706
  %4094 = fmul fast float %4091, %4038
  %4095 = fmul fast float %4092, %4038
  %4096 = fmul fast float %4093, %4038
  %4097 = fadd fast float %4094, %3704
  %4098 = fadd fast float %4095, %3705
  %4099 = fadd fast float %4096, %3706
  %4100 = fadd fast float %3923, %3715
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fsub fast float %3970, %3714
  %4103 = fmul fast float %4102, %4019
  %4104 = fadd fast float %4103, %3714
  %4105 = fsub fast float %3956, %3713
  %4106 = fmul fast float %4105, %4019
  %4107 = fadd fast float %4106, %3713
  %4108 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = fmul fast float %4111, %4108
  %4113 = fadd fast float %4112, %4110
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = bitcast float %3765 to i32
  %4116 = and i32 %4115, 65535
  %4117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4116)  ; LegacyF16ToF32(value)
  %4118 = lshr i32 %4115, 16
  %4119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4118)  ; LegacyF16ToF32(value)
  %4120 = fcmp fast oge float %4117, 0.000000e+00
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = select i1 %4120, float %4117, float %4122
  %4124 = fadd fast float %4123, %4119
  %4125 = fsub fast float %4114, %3701
  %4126 = fmul fast float %4125, %3923
  %4127 = fadd fast float %4126, %3701
  %4128 = fmul fast float %4124, %3923
  %4129 = call float @dx.op.binary.f32(i32 35, float %3700, float %4128)  ; FMax(a,b)
  %4130 = and i32 %3853, 16
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4153, label %4132

; <label>:4132                                    ; preds = %4087
  %4133 = add i32 %3768, 0
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4133, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4134, %dx.types.Handle %3936, float %3864, float %3867, float undef, float undef, i32 0, i32 0, i32 undef, float %3869, float %3871, float undef, float %3873, float %3875, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = and i32 %4055, 65535
  %4140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4139)  ; LegacyF16ToF32(value)
  %4141 = fmul fast float %4136, %3762
  %4142 = fmul fast float %4137, %3763
  %4143 = fmul fast float %4138, %3764
  %4144 = and i32 %3853, 16384
  %4145 = icmp ne i32 %4144, 0
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = select i1 %4145, float %4147, float 1.000000e+00
  %4149 = fmul fast float %4148, %4140
  %4150 = fmul fast float %4141, %4149
  %4151 = fmul fast float %4142, %4149
  %4152 = fmul fast float %4143, %4149
  br label %4153

; <label>:4153                                    ; preds = %4132, %4087
  %4154 = phi float [ %4150, %4132 ], [ 0.000000e+00, %4087 ]
  %4155 = phi float [ %4151, %4132 ], [ 0.000000e+00, %4087 ]
  %4156 = phi float [ %4152, %4132 ], [ 0.000000e+00, %4087 ]
  %4157 = fsub fast float %4154, %3707
  %4158 = fsub fast float %4155, %3708
  %4159 = fsub fast float %4156, %3709
  %4160 = fmul fast float %4157, %3923
  %4161 = fmul fast float %4158, %3923
  %4162 = fmul fast float %4159, %3923
  %4163 = fadd fast float %4160, %3707
  %4164 = fadd fast float %4161, %3708
  %4165 = fadd fast float %4162, %3709
  br label %3821

; <label>:4166                                    ; preds = %3821
  br label %4167

; <label>:4167                                    ; preds = %4166, %3634
  %4168 = phi float [ 0.000000e+00, %3634 ], [ %3822, %4166 ]
  %4169 = phi float [ %3604, %3634 ], [ %3823, %4166 ]
  %4170 = phi float [ %3602, %3634 ], [ %3824, %4166 ]
  %4171 = phi float [ 0.000000e+00, %3634 ], [ %3825, %4166 ]
  %4172 = phi float [ 0.000000e+00, %3634 ], [ %3826, %4166 ]
  %4173 = phi float [ %3595, %3634 ], [ %3827, %4166 ]
  %4174 = phi float [ %3596, %3634 ], [ %3828, %4166 ]
  %4175 = phi float [ %3597, %3634 ], [ %3829, %4166 ]
  %4176 = phi float [ %3592, %3634 ], [ %3830, %4166 ]
  %4177 = phi float [ %3593, %3634 ], [ %3831, %4166 ]
  %4178 = phi float [ %3594, %3634 ], [ %3832, %4166 ]
  %4179 = phi float [ %3630, %3634 ], [ %3833, %4166 ]
  %4180 = phi float [ %3631, %3634 ], [ %3834, %4166 ]
  %4181 = phi float [ %3632, %3634 ], [ %3835, %4166 ]
  %4182 = phi float [ %3600, %3634 ], [ %3836, %4166 ]
  %4183 = phi float [ %3599, %3634 ], [ %3837, %4166 ]
  %4184 = phi float [ 0.000000e+00, %3634 ], [ %3838, %4166 ]
  %4185 = phi float [ %3598, %3634 ], [ %3839, %4166 ]
  %4186 = phi float [ %3589, %3634 ], [ %3840, %4166 ]
  %4187 = phi float [ %3590, %3634 ], [ %3841, %4166 ]
  %4188 = phi float [ %3591, %3634 ], [ %3842, %4166 ]
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float %4179, float %4180, float %4181)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = call float @dx.op.unary.f32(i32 25, float %4189)  ; Rsqrt(value)
  %4191 = fmul fast float %4190, %4179
  %4192 = fmul fast float %4190, %4180
  %4193 = fmul fast float %4190, %4181
  %4194 = fadd fast float %4184, %1108
  %4195 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4196 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float %4191, float %4192, float %4193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4197 = call float @dx.op.unary.f32(i32 25, float %4196)  ; Rsqrt(value)
  %4198 = fmul fast float %4197, %4191
  %4199 = fmul fast float %4197, %4192
  %4200 = fmul fast float %4197, %4193
  br label %4201

; <label>:4201                                    ; preds = %4167, %3586
  %4202 = phi float [ %4186, %4167 ], [ %3589, %3586 ]
  %4203 = phi float [ %4187, %4167 ], [ %3590, %3586 ]
  %4204 = phi float [ %4188, %4167 ], [ %3591, %3586 ]
  %4205 = phi float [ %4198, %4167 ], [ %3630, %3586 ]
  %4206 = phi float [ %4199, %4167 ], [ %3631, %3586 ]
  %4207 = phi float [ %4200, %4167 ], [ %3632, %3586 ]
  %4208 = phi float [ %4176, %4167 ], [ %3592, %3586 ]
  %4209 = phi float [ %4177, %4167 ], [ %3593, %3586 ]
  %4210 = phi float [ %4178, %4167 ], [ %3594, %3586 ]
  %4211 = phi float [ %4173, %4167 ], [ %3595, %3586 ]
  %4212 = phi float [ %4174, %4167 ], [ %3596, %3586 ]
  %4213 = phi float [ %4175, %4167 ], [ %3597, %3586 ]
  %4214 = phi float [ %4185, %4167 ], [ %3598, %3586 ]
  %4215 = phi float [ %4195, %4167 ], [ %1108, %3586 ]
  %4216 = phi float [ %4183, %4167 ], [ %3599, %3586 ]
  %4217 = phi float [ %4182, %4167 ], [ %3600, %3586 ]
  %4218 = phi float [ %4172, %4167 ], [ 0.000000e+00, %3586 ]
  %4219 = phi float [ %4171, %4167 ], [ 0.000000e+00, %3586 ]
  %4220 = phi float [ %4168, %4167 ], [ 0.000000e+00, %3586 ]
  %4221 = phi float [ %4169, %4167 ], [ %3604, %3586 ]
  %4222 = phi float [ %4170, %4167 ], [ %3602, %3586 ]
  %4223 = fadd fast float %4214, 0xBFB99999A0000000
  %4224 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4225 = fmul fast float %4224, 0x3FF1C71C80000000
  %4226 = call float @dx.op.binary.f32(i32 36, float %4214, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4227 = fsub fast float 1.000000e+00, %4225
  %4228 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4229 = fmul fast float %4228, %4202
  %4230 = fmul fast float %4228, %4203
  %4231 = fmul fast float %4228, %4204
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = fmul fast float %4225, %4202
  %4236 = fmul fast float %4225, %4203
  %4237 = fmul fast float %4225, %4204
  %4238 = fadd fast float %4235, %4226
  %4239 = fadd fast float %4236, %4226
  %4240 = fadd fast float %4237, %4226
  %4241 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.i32 %4245, 0
  %4247 = and i32 %4246, 1
  %4248 = icmp eq i32 %4247, 0
  br i1 %4248, label %4263, label %4249

; <label>:4249                                    ; preds = %4201
  %4250 = call float @dx.op.binary.f32(i32 35, float %4233, float %4234)  ; FMax(a,b)
  %4251 = call float @dx.op.binary.f32(i32 35, float %4232, float %4250)  ; FMax(a,b)
  %4252 = fcmp fast ogt float %4251, 0.000000e+00
  %4253 = bitcast float %4251 to i32
  %4254 = sub nsw i32 2129859010, %4253
  %4255 = bitcast i32 %4254 to float
  %4256 = select i1 %4252, float %4255, float 0.000000e+00
  %4257 = fmul fast float %4232, %4211
  %4258 = fmul fast float %4233, %4212
  %4259 = fmul fast float %4234, %4213
  %4260 = fmul fast float %4257, %4256
  %4261 = fmul fast float %4258, %4256
  %4262 = fmul fast float %4259, %4256
  br label %4263

; <label>:4263                                    ; preds = %4249, %4201
  %4264 = phi float [ %4260, %4249 ], [ %4211, %4201 ]
  %4265 = phi float [ %4261, %4249 ], [ %4212, %4201 ]
  %4266 = phi float [ %4262, %4249 ], [ %4213, %4201 ]
  %4267 = fadd fast float %4232, 0xBFD51EB860000000
  %4268 = fadd fast float %4233, 0xBFD51EB860000000
  %4269 = fadd fast float %4234, 0xBFD51EB860000000
  %4270 = fmul fast float %4267, %4267
  %4271 = fmul fast float %4268, %4268
  %4272 = fmul fast float %4269, %4269
  %4273 = fmul fast float %4270, %4270
  %4274 = fmul fast float %4273, 1.000000e+02
  %4275 = fmul fast float %4271, %4271
  %4276 = fmul fast float %4275, 1.000000e+02
  %4277 = fmul fast float %4272, %4272
  %4278 = fmul fast float %4277, 1.000000e+02
  %4279 = fadd fast float %4274, 3.500000e+00
  %4280 = fadd fast float %4276, 3.500000e+00
  %4281 = fadd fast float %4278, 3.500000e+00
  %4282 = call float @dx.op.binary.f32(i32 35, float %4264, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float %4265, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float %4266, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4285 = fdiv fast float %4279, %4282
  %4286 = fdiv fast float %4280, %4283
  %4287 = fdiv fast float %4281, %4284
  %4288 = fmul fast float %3601, 0xBFF7154760000000
  %4289 = fmul fast float %4288, %4285
  %4290 = call float @dx.op.unary.f32(i32 21, float %4289)  ; Exp(value)
  %4291 = fmul fast float %4290, 2.500000e-01
  %4292 = fmul fast float %3601, 0xBFDEC709E0000000
  %4293 = fmul fast float %4292, %4285
  %4294 = call float @dx.op.unary.f32(i32 21, float %4293)  ; Exp(value)
  %4295 = fmul fast float %4294, 7.500000e-01
  %4296 = fmul fast float %4288, %4286
  %4297 = call float @dx.op.unary.f32(i32 21, float %4296)  ; Exp(value)
  %4298 = fmul fast float %4297, 2.500000e-01
  %4299 = fmul fast float %4292, %4286
  %4300 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4301 = fmul fast float %4300, 7.500000e-01
  %4302 = fmul fast float %4288, %4287
  %4303 = call float @dx.op.unary.f32(i32 21, float %4302)  ; Exp(value)
  %4304 = fmul fast float %4303, 2.500000e-01
  %4305 = fmul fast float %4292, %4287
  %4306 = call float @dx.op.unary.f32(i32 21, float %4305)  ; Exp(value)
  %4307 = fmul fast float %4306, 7.500000e-01
  %4308 = fadd fast float %4291, %4295
  %4309 = fadd fast float %4298, %4301
  %4310 = fadd fast float %4304, %4307
  %4311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.i32 %4311, 3
  %4313 = and i32 %4312, 8
  %4314 = icmp ne i32 %4313, 0
  %4315 = call float @dx.op.binary.f32(i32 35, float %4232, float %4202)  ; FMax(a,b)
  %4316 = call float @dx.op.binary.f32(i32 35, float %4233, float %4202)  ; FMax(a,b)
  %4317 = call float @dx.op.binary.f32(i32 35, float %4234, float %4202)  ; FMax(a,b)
  %4318 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4319 = select i1 %257, float %4202, float %4232
  %4320 = select i1 %257, float %4318, float %4233
  %4321 = select i1 %257, float 1.000000e+00, float %4234
  %4322 = select i1 %4314, float %4315, float %4319
  %4323 = select i1 %4314, float %4316, float %4320
  %4324 = select i1 %4314, float %4317, float %4321
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4329 = fadd fast float %4326, %198
  %4330 = fadd fast float %4327, %199
  %4331 = fadd fast float %4328, %200
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = fsub fast float %4329, %4333
  %4336 = fsub fast float %4330, %4334
  %4337 = fmul fast float %4335, %4335
  %4338 = fmul fast float %4336, %4336
  %4339 = fadd fast float %4337, %4338
  %4340 = call float @dx.op.unary.f32(i32 24, float %4339)  ; Sqrt(value)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4342 = fcmp fast olt float %4340, %4341
  br i1 %4342, label %4343, label %4410

; <label>:4343                                    ; preds = %4263
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4346, 1
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4344, 3
  %4354 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4355 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4356 = fadd fast float %4353, %4329
  %4357 = fadd fast float %4354, %4330
  %4358 = fadd fast float %4355, %4331
  %4359 = fmul fast float %4356, %4345
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4347, float %4359)  ; FMad(a,b,c)
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4349, float %4360)  ; FMad(a,b,c)
  %4362 = fmul fast float %4356, %4350
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4357, float %4351, float %4362)  ; FMad(a,b,c)
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4352, float %4363)  ; FMad(a,b,c)
  %4365 = fsub fast float %4361, %4353
  %4366 = fsub fast float %4364, %4354
  %4367 = fsub fast float %4365, %4333
  %4368 = fadd fast float %4367, %4341
  %4369 = fsub fast float %4366, %4334
  %4370 = fadd fast float %4369, %4341
  %4371 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4372 = fmul fast float %4368, %4371
  %4373 = fmul fast float %4370, %4371
  %4374 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4375 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4376 = fsub fast float 1.000000e+00, %4374
  %4377 = fsub fast float 1.000000e+00, %4375
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4376, float %4377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = fcmp fast ugt float %4379, 0.000000e+00
  br i1 %4380, label %4381, label %4684

; <label>:4381                                    ; preds = %4343
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4384 = fmul fast float %4383, %4379
  %4385 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4386 = fadd fast float %4385, %4384
  %4387 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4388 = fadd fast float %4386, %4355
  %4389 = fmul fast float %4361, %4349
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4352, float %4389)  ; FMad(a,b,c)
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4388, float %4387, float %4390)  ; FMad(a,b,c)
  %4392 = fsub fast float %4391, %4355
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4395 = fsub fast float %4392, %4394
  %4396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4376, float %4377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4376, float %4377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = fadd fast float %4401, %4397
  %4405 = fmul fast float %4404, 0x3F847AE140000000
  %4406 = fadd fast float %4402, %4398
  %4407 = fmul fast float %4406, 0x3F847AE140000000
  %4408 = fadd fast float %4403, %4399
  %4409 = fmul fast float %4408, 0x3F847AE140000000
  br label %4684

; <label>:4410                                    ; preds = %4263
  %4411 = and i32 %236, 1
  %4412 = icmp eq i32 %4411, 0
  br i1 %4412, label %4684, label %4413

; <label>:4413                                    ; preds = %4410
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4421 = extractvalue %dx.types.CBufRet.f32 %4416, 1
  %4422 = extractvalue %dx.types.CBufRet.f32 %4418, 1
  %4423 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4424 = extractvalue %dx.types.CBufRet.f32 %4416, 3
  %4425 = extractvalue %dx.types.CBufRet.f32 %4418, 3
  %4426 = fadd fast float %4423, %4329
  %4427 = fadd fast float %4424, %4330
  %4428 = fadd fast float %4425, %4331
  %4429 = fmul fast float %4426, %4415
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4427, float %4417, float %4429)  ; FMad(a,b,c)
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4428, float %4419, float %4430)  ; FMad(a,b,c)
  %4432 = fmul fast float %4426, %4420
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4427, float %4421, float %4432)  ; FMad(a,b,c)
  %4434 = call float @dx.op.tertiary.f32(i32 46, float %4428, float %4422, float %4433)  ; FMad(a,b,c)
  %4435 = fsub fast float %4431, %4423
  %4436 = fsub fast float %4434, %4424
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.i32 %4444, 0
  %4446 = extractvalue %dx.types.CBufRet.i32 %4444, 1
  %4447 = udiv i32 %4446, %4445
  %4448 = fsub fast float %4435, %4438
  %4449 = fsub fast float %4436, %4439
  %4450 = call float @dx.op.binary.f32(i32 35, float %4448, float 0.000000e+00)  ; FMax(a,b)
  %4451 = call float @dx.op.binary.f32(i32 35, float %4449, float 0.000000e+00)  ; FMax(a,b)
  %4452 = call float @dx.op.binary.f32(i32 36, float %4450, float %4440)  ; FMin(a,b)
  %4453 = call float @dx.op.binary.f32(i32 36, float %4451, float %4441)  ; FMin(a,b)
  %4454 = add i32 %4445, -1
  %4455 = add i32 %4447, -1
  %4456 = fmul fast float %4452, %4443
  %4457 = fmul fast float %4453, %4443
  %4458 = fptoui float %4456 to i32
  %4459 = fptoui float %4457 to i32
  %4460 = call i32 @dx.op.binary.i32(i32 40, i32 %4458, i32 %4454)  ; UMin(a,b)
  %4461 = call i32 @dx.op.binary.i32(i32 40, i32 %4459, i32 %4455)  ; UMin(a,b)
  %4462 = mul i32 %4461, %4445
  %4463 = add i32 %4462, %4460
  %4464 = shl i32 %4463, 2
  %4465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4464, i32 undef)  ; BufferLoad(srv,index,wot)
  %4466 = extractvalue %dx.types.ResRet.i32 %4465, 0
  %4467 = icmp eq i32 %4466, -1
  br i1 %4467, label %4684, label %4468

; <label>:4468                                    ; preds = %4413
  %4469 = mul i32 %4466, 148
  %4470 = add i32 %4469, 4
  %4471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4470, i32 undef)  ; BufferLoad(srv,index,wot)
  %4472 = extractvalue %dx.types.ResRet.f32 %4471, 0
  %4473 = add i32 %4469, 8
  %4474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4473, i32 undef)  ; BufferLoad(srv,index,wot)
  %4475 = extractvalue %dx.types.ResRet.f32 %4474, 0
  %4476 = add i32 %4469, 36
  %4477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = add i32 %4469, 60
  %4480 = add i32 %4469, 92
  %4481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.i32 %4481, 0
  %4483 = add i32 %4469, 116
  %4484 = fsub fast float %4435, %4472
  %4485 = fsub fast float %4436, %4475
  %4486 = fmul fast float %4443, %4484
  %4487 = fmul fast float %4443, %4485
  %4488 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4493 = call float @dx.op.unary.f32(i32 83, float %4488)  ; DerivCoarseX(value)
  %4494 = call float @dx.op.unary.f32(i32 83, float %4490)  ; DerivCoarseX(value)
  %4495 = call float @dx.op.unary.f32(i32 84, float %4488)  ; DerivCoarseY(value)
  %4496 = call float @dx.op.unary.f32(i32 84, float %4490)  ; DerivCoarseY(value)
  %4497 = fmul fast float %4493, %4492
  %4498 = fmul fast float %4494, %4492
  %4499 = fmul fast float %4495, %4492
  %4500 = fmul fast float %4496, %4492
  %4501 = call float @dx.op.dot2.f32(i32 54, float %4499, float %4500, float %4499, float %4500)  ; Dot2(ax,ay,bx,by)
  %4502 = call float @dx.op.dot2.f32(i32 54, float %4497, float %4498, float %4497, float %4498)  ; Dot2(ax,ay,bx,by)
  %4503 = call float @dx.op.binary.f32(i32 35, float %4502, float %4501)  ; FMax(a,b)
  %4504 = call float @dx.op.unary.f32(i32 23, float %4503)  ; Log(value)
  %4505 = fmul fast float %4504, 5.000000e-01
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4508 = fadd fast float %4507, %4505
  %4509 = call float @dx.op.binary.f32(i32 35, float %4508, float 0.000000e+00)  ; FMax(a,b)
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4512 = fadd fast float %4511, %4509
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4515 = fadd fast float %4512, %4514
  %4516 = add i32 %4482, 0
  %4517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4518 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4517, i32 0)  ; GetDimensions(handle,mipLevel)
  %4519 = extractvalue %dx.types.Dimensions %4518, 0
  %4520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4519)  ; FirstbitLo(value)
  %4521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.i32 %4521, 1
  %4523 = sub nsw i32 %4522, %4520
  %4524 = sitofp i32 %4523 to float
  %4525 = fsub fast float %4515, %4524
  %4526 = call float @dx.op.binary.f32(i32 35, float %4525, float 0.000000e+00)  ; FMax(a,b)
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4517, %dx.types.Handle %52, float %4488, float %4490, float %4478, float undef, i32 0, i32 0, i32 undef, float %4526)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = fcmp ule float %4528, 0x3FE0101020000000
  %4530 = extractvalue %dx.types.CBufRet.i32 %4521, 0
  %4531 = and i32 %4530, 128
  %4532 = icmp ne i32 %4531, 0
  %4533 = and i1 %4529, %4532
  br i1 %4533, label %4684, label %4534

; <label>:4534                                    ; preds = %4468
  %4535 = add i32 %4469, 20
  %4536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = add i32 %4469, 24
  %4539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = add i32 %4469, 40
  %4542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = add i32 %4469, 96
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4549 = fmul fast float %4548, %4488
  %4550 = fmul fast float %4548, %4490
  %4551 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4552 = fadd fast float %4549, %4551
  %4553 = fadd fast float %4550, %4551
  %4554 = add i32 %4546, 0
  %4555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4554, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4556 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4555, i32 0)  ; GetDimensions(handle,mipLevel)
  %4557 = extractvalue %dx.types.Dimensions %4556, 0
  %4558 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4557)  ; FirstbitLo(value)
  %4559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.i32 %4559, 1
  %4561 = sub nsw i32 %4560, %4558
  %4562 = sitofp i32 %4561 to float
  %4563 = fsub fast float %4512, %4562
  %4564 = call float @dx.op.binary.f32(i32 35, float %4563, float 0.000000e+00)  ; FMax(a,b)
  %4565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4555, %dx.types.Handle %52, float %4552, float %4553, float %4543, float undef, i32 0, i32 0, i32 undef, float %4564)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = fmul fast float %4566, %4537
  %4568 = fadd fast float %4567, %4540
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.CBufRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 3
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 3
  %4577 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4578 = fadd fast float %4574, %4435
  %4579 = fadd fast float %4576, %4436
  %4580 = fadd fast float %4568, %4577
  %4581 = fmul fast float %4578, %4570
  %4582 = call float @dx.op.tertiary.f32(i32 46, float %4579, float %4571, float %4581)  ; FMad(a,b,c)
  %4583 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4572, float %4582)  ; FMad(a,b,c)
  %4584 = fsub fast float %4583, %4577
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4587 = fsub fast float %4584, %4586
  %4588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.i32 %4588, 0
  %4590 = call i32 @dx.op.binary.i32(i32 40, i32 %4466, i32 %4589)  ; UMin(a,b)
  %4591 = mul i32 %4590, 36
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = add i32 %4591, 4
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4597 = fmul fast float %4596, %4488
  %4598 = fmul fast float %4596, %4490
  %4599 = extractvalue %dx.types.CBufRet.f32 %4595, 1
  %4600 = fadd fast float %4597, %4599
  %4601 = fadd fast float %4598, %4599
  %4602 = icmp eq i32 %4593, 0
  br i1 %4602, label %4671, label %4603

; <label>:4603                                    ; preds = %4534
  br label %4604

; <label>:4604                                    ; preds = %4661, %4603
  %4605 = phi float [ %4662, %4661 ], [ 0.000000e+00, %4603 ]
  %4606 = phi float [ %4663, %4661 ], [ 0.000000e+00, %4603 ]
  %4607 = phi float [ %4664, %4661 ], [ 0.000000e+00, %4603 ]
  %4608 = phi float [ %4665, %4661 ], [ 0.000000e+00, %4603 ]
  %4609 = phi float [ %4666, %4661 ], [ 0.000000e+00, %4603 ]
  %4610 = phi float [ %4667, %4661 ], [ 0.000000e+00, %4603 ]
  %4611 = phi i32 [ %4668, %4661 ], [ 0, %4603 ]
  %4612 = shl i32 %4611, 2
  %4613 = add i32 %4479, %4612
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = add i32 %4483, %4612
  %4617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.i32 %4617, 0
  %4619 = add i32 %4618, 0
  %4620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4619, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4621 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4620, i32 0)  ; GetDimensions(handle,mipLevel)
  %4622 = extractvalue %dx.types.Dimensions %4621, 0
  %4623 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4622)  ; FirstbitLo(value)
  %4624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.i32 %4624, 1
  %4626 = sub nsw i32 %4625, %4623
  %4627 = sitofp i32 %4626 to float
  %4628 = fsub fast float %4512, %4627
  %4629 = call float @dx.op.binary.f32(i32 35, float %4628, float 0.000000e+00)  ; FMax(a,b)
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4620, %dx.types.Handle %52, float %4600, float %4601, float %4615, float undef, i32 0, i32 0, i32 undef, float %4629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = fcmp fast ogt float %4631, 0.000000e+00
  br i1 %4632, label %4633, label %4661

; <label>:4633                                    ; preds = %4604
  %4634 = add i32 %4594, %4612
  %4635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.i32 %4635, 0
  %4637 = and i32 %4636, 32767
  %4638 = mul nuw nsw i32 %4637, 928
  %4639 = add nuw nsw i32 %4638, 48
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = add nuw nsw i32 %4638, 60
  %4645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = fmul fast float %4641, %4631
  %4650 = fmul fast float %4642, %4631
  %4651 = fmul fast float %4643, %4631
  %4652 = fadd fast float %4649, %4605
  %4653 = fadd fast float %4650, %4606
  %4654 = fadd fast float %4651, %4607
  %4655 = fmul fast float %4646, %4631
  %4656 = fmul fast float %4647, %4631
  %4657 = fmul fast float %4648, %4631
  %4658 = fadd fast float %4655, %4608
  %4659 = fadd fast float %4656, %4609
  %4660 = fadd fast float %4657, %4610
  br label %4661

; <label>:4661                                    ; preds = %4633, %4604
  %4662 = phi float [ %4652, %4633 ], [ %4605, %4604 ]
  %4663 = phi float [ %4653, %4633 ], [ %4606, %4604 ]
  %4664 = phi float [ %4654, %4633 ], [ %4607, %4604 ]
  %4665 = phi float [ %4658, %4633 ], [ %4608, %4604 ]
  %4666 = phi float [ %4659, %4633 ], [ %4609, %4604 ]
  %4667 = phi float [ %4660, %4633 ], [ %4610, %4604 ]
  %4668 = add nuw i32 %4611, 1
  %4669 = icmp eq i32 %4668, %4593
  br i1 %4669, label %4670, label %4604

; <label>:4670                                    ; preds = %4661
  br label %4671

; <label>:4671                                    ; preds = %4670, %4534
  %4672 = phi float [ 0.000000e+00, %4534 ], [ %4662, %4670 ]
  %4673 = phi float [ 0.000000e+00, %4534 ], [ %4663, %4670 ]
  %4674 = phi float [ 0.000000e+00, %4534 ], [ %4664, %4670 ]
  %4675 = phi float [ 0.000000e+00, %4534 ], [ %4665, %4670 ]
  %4676 = phi float [ 0.000000e+00, %4534 ], [ %4666, %4670 ]
  %4677 = phi float [ 0.000000e+00, %4534 ], [ %4667, %4670 ]
  %4678 = fadd fast float %4675, %4672
  %4679 = fmul fast float %4678, 0x3F847AE140000000
  %4680 = fadd fast float %4676, %4673
  %4681 = fmul fast float %4680, 0x3F847AE140000000
  %4682 = fadd fast float %4677, %4674
  %4683 = fmul fast float %4682, 0x3F847AE140000000
  br label %4684

; <label>:4684                                    ; preds = %4671, %4468, %4413, %4410, %4381, %4343
  %4685 = phi float [ %4405, %4381 ], [ 0.000000e+00, %4343 ], [ %4679, %4671 ], [ 0.000000e+00, %4413 ], [ 0.000000e+00, %4468 ], [ 0.000000e+00, %4410 ]
  %4686 = phi float [ %4407, %4381 ], [ 0.000000e+00, %4343 ], [ %4681, %4671 ], [ 0.000000e+00, %4413 ], [ 0.000000e+00, %4468 ], [ 0.000000e+00, %4410 ]
  %4687 = phi float [ %4409, %4381 ], [ 0.000000e+00, %4343 ], [ %4683, %4671 ], [ 0.000000e+00, %4413 ], [ 0.000000e+00, %4468 ], [ 0.000000e+00, %4410 ]
  %4688 = phi float [ %4395, %4381 ], [ -1.310720e+05, %4343 ], [ %4587, %4671 ], [ -1.310720e+05, %4413 ], [ -1.310720e+05, %4468 ], [ -1.310720e+05, %4410 ]
  %4689 = phi i1 [ true, %4381 ], [ false, %4343 ], [ true, %4671 ], [ false, %4413 ], [ false, %4468 ], [ false, %4410 ]
  %4690 = and i32 %236, 3
  %4691 = icmp eq i32 %4690, 1
  %4692 = select i1 %4691, float 1.000000e+00, float 0.000000e+00
  %4693 = fsub fast float %4688, %200
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = select i1 %4689, float %4694, float 1.000000e+00
  %4696 = fmul fast float %4695, %4692
  %4697 = icmp eq i32 %4690, 3
  %4698 = select i1 %4697, float 1.000000e+00, float %4696
  %4699 = call float @dx.op.binary.f32(i32 35, float %4220, float %4698)  ; FMax(a,b)
  %4700 = fcmp fast olt float %4698, 1.000000e+00
  %4701 = fcmp uge float %75, 0.000000e+00
  %4702 = and i1 %4701, %4700
  br i1 %4702, label %4703, label %4713

; <label>:4703                                    ; preds = %4684
  %4704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4705 = extractvalue %dx.types.ResRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.ResRet.f32 %4704, 1
  %4707 = extractvalue %dx.types.ResRet.f32 %4704, 2
  %4708 = fadd fast float %4705, %4699
  %4709 = fcmp ule float %74, 0.000000e+00
  %4710 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = select i1 %4709, float %4710, float 1.000000e+00
  %4712 = fmul fast float %4711, %4707
  br label %4713

; <label>:4713                                    ; preds = %4703, %4684
  %4714 = phi float [ %4708, %4703 ], [ %4699, %4684 ]
  %4715 = phi float [ %4706, %4703 ], [ 0.000000e+00, %4684 ]
  %4716 = phi float [ %4712, %4703 ], [ 0.000000e+00, %4684 ]
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = fcmp fast une float %4718, 0.000000e+00
  %4721 = fcmp fast une float %4719, 0.000000e+00
  %4722 = or i1 %4720, %4721
  br i1 %4722, label %4723, label %5282

; <label>:4723                                    ; preds = %4713
  br i1 %4720, label %4724, label %4997

; <label>:4724                                    ; preds = %4723
  %4725 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4726 = fmul fast float %4725, 4.000000e+00
  %4727 = call float @dx.op.unary.f32(i32 21, float %4726)  ; Exp(value)
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 0
  %4730 = fmul fast float %4729, %62
  %4731 = fmul fast float %4729, %63
  %4732 = fmul fast float %4729, %64
  %4733 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4734 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4735 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4736 = call float @dx.op.unary.f32(i32 23, float %4733)  ; Log(value)
  %4737 = call float @dx.op.unary.f32(i32 23, float %4734)  ; Log(value)
  %4738 = call float @dx.op.unary.f32(i32 23, float %4735)  ; Log(value)
  %4739 = fmul fast float %4736, 4.000000e+00
  %4740 = fmul fast float %4737, 4.000000e+00
  %4741 = fmul fast float %4738, 4.000000e+00
  %4742 = call float @dx.op.unary.f32(i32 21, float %4739)  ; Exp(value)
  %4743 = call float @dx.op.unary.f32(i32 21, float %4740)  ; Exp(value)
  %4744 = call float @dx.op.unary.f32(i32 21, float %4741)  ; Exp(value)
  %4745 = fadd fast float %4743, %4742
  %4746 = fadd fast float %4745, %4744
  %4747 = fdiv fast float 1.000000e+00, %4746
  %4748 = fmul fast float %4747, %4742
  %4749 = fcmp fast ogt float %71, 0.000000e+00
  %4750 = fcmp fast ogt float %72, 0.000000e+00
  %4751 = fcmp fast ogt float %73, 0.000000e+00
  %4752 = fcmp fast olt float %71, 0.000000e+00
  %4753 = fcmp fast olt float %72, 0.000000e+00
  %4754 = fcmp fast olt float %73, 0.000000e+00
  %4755 = zext i1 %4749 to i32
  %4756 = zext i1 %4750 to i32
  %4757 = zext i1 %4751 to i32
  %4758 = zext i1 %4752 to i32
  %4759 = zext i1 %4753 to i32
  %4760 = zext i1 %4754 to i32
  %4761 = sub nsw i32 %4755, %4758
  %4762 = sub nsw i32 %4756, %4759
  %4763 = sub nsw i32 %4757, %4760
  %4764 = call float @dx.op.unary.f32(i32 83, float %4730)  ; DerivCoarseX(value)
  %4765 = call float @dx.op.unary.f32(i32 83, float %4731)  ; DerivCoarseX(value)
  %4766 = call float @dx.op.unary.f32(i32 83, float %4732)  ; DerivCoarseX(value)
  %4767 = call float @dx.op.unary.f32(i32 84, float %4730)  ; DerivCoarseY(value)
  %4768 = call float @dx.op.unary.f32(i32 84, float %4731)  ; DerivCoarseY(value)
  %4769 = call float @dx.op.unary.f32(i32 84, float %4732)  ; DerivCoarseY(value)
  %4770 = fcmp fast ole float %268, %4748
  %4771 = fmul fast float %4747, %4745
  %4772 = fcmp fast ole float %268, %4771
  %4773 = select i1 %4772, float %4732, float %4730
  %4774 = select i1 %4772, float %4730, float %4731
  %4775 = select i1 %4770, float %4731, float %4773
  %4776 = select i1 %4770, float %4732, float %4774
  %4777 = select i1 %4772, float %4766, float %4764
  %4778 = select i1 %4772, float %4764, float %4765
  %4779 = select i1 %4770, float %4765, float %4777
  %4780 = select i1 %4770, float %4766, float %4778
  %4781 = select i1 %4772, float %4769, float %4767
  %4782 = select i1 %4772, float %4767, float %4768
  %4783 = select i1 %4770, float %4768, float %4781
  %4784 = select i1 %4770, float %4769, float %4782
  %4785 = call float @dx.op.unary.f32(i32 27, float %4775)  ; Round_ni(value)
  %4786 = call float @dx.op.unary.f32(i32 27, float %4776)  ; Round_ni(value)
  %4787 = fptosi float %4785 to i32
  %4788 = fptosi float %4786 to i32
  %4789 = xor i32 %4788, %4787
  %4790 = sitofp i32 %4789 to float
  %4791 = fptosi float %4790 to i32
  %4792 = sitofp i32 %4791 to float
  %4793 = fmul fast float %4792, 0x3FE3C6EF40000000
  %4794 = frem fast float %4785, 2.560000e+02
  %4795 = frem fast float %4786, 2.560000e+02
  %4796 = fptoui float %4794 to i32
  %4797 = fptoui float %4795 to i32
  %4798 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4796, i32 %4797, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.ResRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.ResRet.f32 %4798, 2
  %4802 = fadd fast float %4799, %4793
  %4803 = fadd fast float %4800, %4793
  %4804 = fadd fast float %4801, %4793
  %4805 = call float @dx.op.unary.f32(i32 22, float %4802)  ; Frc(value)
  %4806 = call float @dx.op.unary.f32(i32 22, float %4803)  ; Frc(value)
  %4807 = call float @dx.op.unary.f32(i32 22, float %4804)  ; Frc(value)
  %4808 = fmul fast float %4807, 0x401921FB60000000
  %4809 = call float @dx.op.unary.f32(i32 13, float %4808)  ; Sin(value)
  %4810 = call float @dx.op.unary.f32(i32 12, float %4808)  ; Cos(value)
  %4811 = fsub fast float -0.000000e+00, %4810
  %4812 = fmul fast float %4810, %4775
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4809, float %4776, float %4812)  ; FMad(a,b,c)
  %4814 = fmul fast float %4809, %4775
  %4815 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4776, float %4814)  ; FMad(a,b,c)
  %4816 = fadd fast float %4813, %4805
  %4817 = fadd fast float %4815, %4806
  %4818 = extractvalue %dx.types.CBufRet.f32 %4728, 3
  %4819 = bitcast float %4818 to i32
  %4820 = icmp eq i32 %4819, 0
  br i1 %4820, label %4859, label %4821

; <label>:4821                                    ; preds = %4724
  %4822 = add i32 %4819, 0
  %4823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4824 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4823, %dx.types.Handle %116, float %4816, float %4817, float undef, float undef, i32 0, i32 0, i32 undef, float %4779, float %4780, float undef, float %4783, float %4784, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4829 = fsub fast float 1.000000e+00, %4718
  %4830 = call float @dx.op.binary.f32(i32 35, float %4829, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4831 = bitcast float %4718 to i32
  %4832 = sitofp i32 %4831 to float
  %4833 = fadd fast float %4832, 0xC1CFBF8940000000
  %4834 = fmul fast float %4828, %4833
  %4835 = fadd fast float %4834, 0x41CFBF8940000000
  %4836 = fptosi float %4835 to i32
  %4837 = bitcast i32 %4836 to float
  %4838 = bitcast float %4830 to i32
  %4839 = sitofp i32 %4838 to float
  %4840 = fadd fast float %4839, 0xC1CFBF8940000000
  %4841 = fmul fast float %4840, %4828
  %4842 = fadd fast float %4841, 0x41CFBF8940000000
  %4843 = fptosi float %4842 to i32
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4837, %4827
  %4846 = fmul fast float %4844, %4827
  %4847 = fsub fast float %4830, %4845
  %4848 = fadd fast float %4846, %4830
  %4849 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4851 = fsub fast float %4825, %4849
  %4852 = fsub fast float %4850, %4849
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = fmul fast float %4855, %4851
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fcmp fast olt float %4857, 0x3F70101020000000
  br i1 %4858, label %4997, label %4859

; <label>:4859                                    ; preds = %4821, %4724
  %4860 = phi float [ %4857, %4821 ], [ %4718, %4724 ]
  %4861 = fmul fast float %4860, %4727
  %4862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.i32 %4862, 1
  %4864 = extractvalue %dx.types.CBufRet.i32 %4862, 0
  %4865 = add i32 %4864, 0
  %4866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4867 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4866, %dx.types.Handle %115, float %4816, float %4817, float undef, float undef, i32 0, i32 0, i32 undef, float %4779, float %4780, float undef, float %4783, float %4784, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.ResRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.ResRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.ResRet.f32 %4867, 3
  %4872 = and i32 %4863, 255
  %4873 = uitofp i32 %4872 to float
  %4874 = lshr i32 %4863, 8
  %4875 = and i32 %4874, 255
  %4876 = uitofp i32 %4875 to float
  %4877 = fmul fast float %4871, %4873
  %4878 = fadd fast float %4877, %4876
  %4879 = fmul fast float %4878, 0x3F70101000000000
  %4880 = fadd fast float %4879, 0xBFB99999A0000000
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4881, 0x3FF1C71C80000000
  %4883 = call float @dx.op.binary.f32(i32 36, float %4879, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4884 = fsub fast float 1.000000e+00, %4882
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, %4868
  %4887 = fmul fast float %4885, %4869
  %4888 = fmul fast float %4885, %4870
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = fmul fast float %4882, %4868
  %4893 = fmul fast float %4882, %4869
  %4894 = fmul fast float %4882, %4870
  %4895 = fadd fast float %4892, %4883
  %4896 = fadd fast float %4893, %4883
  %4897 = fadd fast float %4894, %4883
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.i32 %4901, 3
  %4903 = extractvalue %dx.types.CBufRet.i32 %4901, 2
  %4904 = add i32 %4903, 0
  %4905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4905, %dx.types.Handle %115, float %4816, float %4817, float undef, float undef, i32 0, i32 0, i32 undef, float %4779, float %4780, float undef, float %4783, float %4784, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4910 = extractvalue %dx.types.ResRet.f32 %4906, 3
  %4911 = and i32 %4902, 255
  %4912 = uitofp i32 %4911 to float
  %4913 = lshr i32 %4902, 8
  %4914 = and i32 %4913, 255
  %4915 = uitofp i32 %4914 to float
  %4916 = lshr i32 %4902, 16
  %4917 = and i32 %4916, 255
  %4918 = uitofp i32 %4917 to float
  %4919 = fmul fast float %4918, 0x3F70101000000000
  %4920 = fmul fast float %4907, %4912
  %4921 = fadd fast float %4920, %4915
  %4922 = fmul fast float %4921, 0x3F70101000000000
  %4923 = fadd fast float %4908, -5.000000e-01
  %4924 = fadd fast float %4910, -5.000000e-01
  %4925 = fmul fast float %4923, %4919
  %4926 = fmul fast float %4924, %4919
  %4927 = fadd fast float %4925, 5.000000e-01
  %4928 = fadd fast float %4926, 5.000000e-01
  %4929 = fmul fast float %4927, 2.000000e+00
  %4930 = fadd fast float %4929, -1.000000e+00
  %4931 = fmul fast float %4928, 2.000000e+00
  %4932 = fadd fast float %4931, -1.000000e+00
  %4933 = fadd fast float %4930, %4932
  %4934 = fmul fast float %4933, 5.000000e-01
  %4935 = fsub fast float %4930, %4932
  %4936 = fmul fast float %4935, 5.000000e-01
  %4937 = call float @dx.op.unary.f32(i32 6, float %4934)  ; FAbs(value)
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = call float @dx.op.unary.f32(i32 6, float %4936)  ; FAbs(value)
  %4940 = fsub fast float %4938, %4939
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4936, float %4940, float %4934, float %4936, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.unary.f32(i32 25, float %4941)  ; Rsqrt(value)
  %4943 = fmul fast float %4934, %4942
  %4944 = fmul fast float %4936, %4942
  %4945 = select i1 %4772, i32 %4762, i32 %4763
  %4946 = select i1 %4770, i32 %4761, i32 %4945
  %4947 = sitofp i32 %4946 to float
  %4948 = fmul fast float %4940, %4947
  %4949 = fmul fast float %4948, %4942
  %4950 = select i1 %4772, float %4949, float %4944
  %4951 = select i1 %4772, float %4944, float %4949
  %4952 = select i1 %4770, float %4949, float %4943
  %4953 = select i1 %4770, float %4944, float %4950
  %4954 = select i1 %4770, float %4943, float %4951
  %4955 = fsub fast float %4889, %4322
  %4956 = fsub fast float %4890, %4323
  %4957 = fsub fast float %4891, %4324
  %4958 = fmul fast float %4955, %4861
  %4959 = fmul fast float %4956, %4861
  %4960 = fmul fast float %4957, %4861
  %4961 = fadd fast float %4958, %4322
  %4962 = fadd fast float %4959, %4323
  %4963 = fadd fast float %4960, %4324
  %4964 = fsub fast float %4898, %4241
  %4965 = fsub fast float %4899, %4242
  %4966 = fsub fast float %4900, %4243
  %4967 = fmul fast float %4964, %4861
  %4968 = fmul fast float %4965, %4861
  %4969 = fmul fast float %4966, %4861
  %4970 = fadd fast float %4967, %4241
  %4971 = fadd fast float %4968, %4242
  %4972 = fadd fast float %4969, %4243
  %4973 = fadd fast float %4952, %4205
  %4974 = fadd fast float %4953, %4206
  %4975 = fadd fast float %4954, %4207
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4975, float %4973, float %4974, float %4975)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = call float @dx.op.unary.f32(i32 25, float %4976)  ; Rsqrt(value)
  %4978 = fmul fast float %4973, %4977
  %4979 = fmul fast float %4974, %4977
  %4980 = fmul fast float %4975, %4977
  %4981 = fsub fast float %4978, %4205
  %4982 = fsub fast float %4979, %4206
  %4983 = fsub fast float %4980, %4207
  %4984 = fmul fast float %4981, %4861
  %4985 = fmul fast float %4982, %4861
  %4986 = fmul fast float %4983, %4861
  %4987 = fadd fast float %4984, %4205
  %4988 = fadd fast float %4985, %4206
  %4989 = fadd fast float %4986, %4207
  %4990 = call float @dx.op.binary.f32(i32 36, float %4217, float %4909)  ; FMin(a,b)
  %4991 = fsub fast float %4990, %4217
  %4992 = fmul fast float %4991, %4861
  %4993 = fadd fast float %4992, %4217
  %4994 = fsub fast float %4922, %4244
  %4995 = fmul fast float %4994, %4861
  %4996 = fadd fast float %4995, %4244
  br label %4997

; <label>:4997                                    ; preds = %4859, %4821, %4723
  %4998 = phi float [ %4970, %4859 ], [ %4241, %4821 ], [ %4241, %4723 ]
  %4999 = phi float [ %4971, %4859 ], [ %4242, %4821 ], [ %4242, %4723 ]
  %5000 = phi float [ %4972, %4859 ], [ %4243, %4821 ], [ %4243, %4723 ]
  %5001 = phi float [ %4961, %4859 ], [ %4322, %4821 ], [ %4322, %4723 ]
  %5002 = phi float [ %4962, %4859 ], [ %4323, %4821 ], [ %4323, %4723 ]
  %5003 = phi float [ %4963, %4859 ], [ %4324, %4821 ], [ %4324, %4723 ]
  %5004 = phi float [ %4987, %4859 ], [ %4205, %4821 ], [ %4205, %4723 ]
  %5005 = phi float [ %4988, %4859 ], [ %4206, %4821 ], [ %4206, %4723 ]
  %5006 = phi float [ %4989, %4859 ], [ %4207, %4821 ], [ %4207, %4723 ]
  %5007 = phi float [ %4996, %4859 ], [ %4244, %4821 ], [ %4244, %4723 ]
  %5008 = phi float [ %4993, %4859 ], [ %4217, %4821 ], [ %4217, %4723 ]
  br i1 %4721, label %5009, label %5282

; <label>:5009                                    ; preds = %4997
  %5010 = call float @dx.op.unary.f32(i32 23, float %5008)  ; Log(value)
  %5011 = fmul fast float %5010, 4.000000e+00
  %5012 = call float @dx.op.unary.f32(i32 21, float %5011)  ; Exp(value)
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 0
  %5015 = fmul fast float %5014, %62
  %5016 = fmul fast float %5014, %63
  %5017 = fmul fast float %5014, %64
  %5018 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5019 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5020 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5021 = call float @dx.op.unary.f32(i32 23, float %5018)  ; Log(value)
  %5022 = call float @dx.op.unary.f32(i32 23, float %5019)  ; Log(value)
  %5023 = call float @dx.op.unary.f32(i32 23, float %5020)  ; Log(value)
  %5024 = fmul fast float %5021, 4.000000e+00
  %5025 = fmul fast float %5022, 4.000000e+00
  %5026 = fmul fast float %5023, 4.000000e+00
  %5027 = call float @dx.op.unary.f32(i32 21, float %5024)  ; Exp(value)
  %5028 = call float @dx.op.unary.f32(i32 21, float %5025)  ; Exp(value)
  %5029 = call float @dx.op.unary.f32(i32 21, float %5026)  ; Exp(value)
  %5030 = fadd fast float %5028, %5027
  %5031 = fadd fast float %5030, %5029
  %5032 = fdiv fast float 1.000000e+00, %5031
  %5033 = fmul fast float %5032, %5027
  %5034 = fcmp fast ogt float %71, 0.000000e+00
  %5035 = fcmp fast ogt float %72, 0.000000e+00
  %5036 = fcmp fast ogt float %73, 0.000000e+00
  %5037 = fcmp fast olt float %71, 0.000000e+00
  %5038 = fcmp fast olt float %72, 0.000000e+00
  %5039 = fcmp fast olt float %73, 0.000000e+00
  %5040 = zext i1 %5034 to i32
  %5041 = zext i1 %5035 to i32
  %5042 = zext i1 %5036 to i32
  %5043 = zext i1 %5037 to i32
  %5044 = zext i1 %5038 to i32
  %5045 = zext i1 %5039 to i32
  %5046 = sub nsw i32 %5040, %5043
  %5047 = sub nsw i32 %5041, %5044
  %5048 = sub nsw i32 %5042, %5045
  %5049 = call float @dx.op.unary.f32(i32 83, float %5015)  ; DerivCoarseX(value)
  %5050 = call float @dx.op.unary.f32(i32 83, float %5016)  ; DerivCoarseX(value)
  %5051 = call float @dx.op.unary.f32(i32 83, float %5017)  ; DerivCoarseX(value)
  %5052 = call float @dx.op.unary.f32(i32 84, float %5015)  ; DerivCoarseY(value)
  %5053 = call float @dx.op.unary.f32(i32 84, float %5016)  ; DerivCoarseY(value)
  %5054 = call float @dx.op.unary.f32(i32 84, float %5017)  ; DerivCoarseY(value)
  %5055 = fcmp fast ole float %268, %5033
  %5056 = fmul fast float %5032, %5030
  %5057 = fcmp fast ole float %268, %5056
  %5058 = select i1 %5057, float %5017, float %5015
  %5059 = select i1 %5057, float %5015, float %5016
  %5060 = select i1 %5055, float %5016, float %5058
  %5061 = select i1 %5055, float %5017, float %5059
  %5062 = select i1 %5057, float %5051, float %5049
  %5063 = select i1 %5057, float %5049, float %5050
  %5064 = select i1 %5055, float %5050, float %5062
  %5065 = select i1 %5055, float %5051, float %5063
  %5066 = select i1 %5057, float %5054, float %5052
  %5067 = select i1 %5057, float %5052, float %5053
  %5068 = select i1 %5055, float %5053, float %5066
  %5069 = select i1 %5055, float %5054, float %5067
  %5070 = call float @dx.op.unary.f32(i32 27, float %5060)  ; Round_ni(value)
  %5071 = call float @dx.op.unary.f32(i32 27, float %5061)  ; Round_ni(value)
  %5072 = fptosi float %5070 to i32
  %5073 = fptosi float %5071 to i32
  %5074 = xor i32 %5073, %5072
  %5075 = sitofp i32 %5074 to float
  %5076 = fptosi float %5075 to i32
  %5077 = sitofp i32 %5076 to float
  %5078 = fmul fast float %5077, 0x3FE3C6EF40000000
  %5079 = frem fast float %5070, 2.560000e+02
  %5080 = frem fast float %5071, 2.560000e+02
  %5081 = fptoui float %5079 to i32
  %5082 = fptoui float %5080 to i32
  %5083 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5081, i32 %5082, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.f32 %5083, 2
  %5087 = fadd fast float %5084, %5078
  %5088 = fadd fast float %5085, %5078
  %5089 = fadd fast float %5086, %5078
  %5090 = call float @dx.op.unary.f32(i32 22, float %5087)  ; Frc(value)
  %5091 = call float @dx.op.unary.f32(i32 22, float %5088)  ; Frc(value)
  %5092 = call float @dx.op.unary.f32(i32 22, float %5089)  ; Frc(value)
  %5093 = fmul fast float %5092, 0x401921FB60000000
  %5094 = call float @dx.op.unary.f32(i32 13, float %5093)  ; Sin(value)
  %5095 = call float @dx.op.unary.f32(i32 12, float %5093)  ; Cos(value)
  %5096 = fsub fast float -0.000000e+00, %5095
  %5097 = fmul fast float %5095, %5060
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5094, float %5061, float %5097)  ; FMad(a,b,c)
  %5099 = fmul fast float %5094, %5060
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5061, float %5099)  ; FMad(a,b,c)
  %5101 = fadd fast float %5098, %5090
  %5102 = fadd fast float %5100, %5091
  %5103 = extractvalue %dx.types.CBufRet.f32 %5013, 3
  %5104 = bitcast float %5103 to i32
  %5105 = icmp eq i32 %5104, 0
  br i1 %5105, label %5144, label %5106

; <label>:5106                                    ; preds = %5009
  %5107 = add i32 %5104, 0
  %5108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5108, %dx.types.Handle %116, float %5101, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float %5064, float %5065, float undef, float %5068, float %5069, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5113 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5114 = fsub fast float 1.000000e+00, %4719
  %5115 = call float @dx.op.binary.f32(i32 35, float %5114, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5116 = bitcast float %4719 to i32
  %5117 = sitofp i32 %5116 to float
  %5118 = fadd fast float %5117, 0xC1CFBF8940000000
  %5119 = fmul fast float %5113, %5118
  %5120 = fadd fast float %5119, 0x41CFBF8940000000
  %5121 = fptosi float %5120 to i32
  %5122 = bitcast i32 %5121 to float
  %5123 = bitcast float %5115 to i32
  %5124 = sitofp i32 %5123 to float
  %5125 = fadd fast float %5124, 0xC1CFBF8940000000
  %5126 = fmul fast float %5125, %5113
  %5127 = fadd fast float %5126, 0x41CFBF8940000000
  %5128 = fptosi float %5127 to i32
  %5129 = bitcast i32 %5128 to float
  %5130 = fmul fast float %5122, %5112
  %5131 = fmul fast float %5129, %5112
  %5132 = fsub fast float %5115, %5130
  %5133 = fadd fast float %5131, %5115
  %5134 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5136 = fsub fast float %5110, %5134
  %5137 = fsub fast float %5135, %5134
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5140, %5136
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fcmp fast olt float %5142, 0x3F70101020000000
  br i1 %5143, label %5282, label %5144

; <label>:5144                                    ; preds = %5106, %5009
  %5145 = phi float [ %5142, %5106 ], [ %4719, %5009 ]
  %5146 = fmul fast float %5145, %5012
  %5147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.i32 %5147, 1
  %5149 = extractvalue %dx.types.CBufRet.i32 %5147, 0
  %5150 = add i32 %5149, 0
  %5151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5151, %dx.types.Handle %115, float %5101, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float %5064, float %5065, float undef, float %5068, float %5069, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.ResRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.ResRet.f32 %5152, 2
  %5156 = extractvalue %dx.types.ResRet.f32 %5152, 3
  %5157 = and i32 %5148, 255
  %5158 = uitofp i32 %5157 to float
  %5159 = lshr i32 %5148, 8
  %5160 = and i32 %5159, 255
  %5161 = uitofp i32 %5160 to float
  %5162 = fmul fast float %5156, %5158
  %5163 = fadd fast float %5162, %5161
  %5164 = fmul fast float %5163, 0x3F70101000000000
  %5165 = fadd fast float %5164, 0xBFB99999A0000000
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = fmul fast float %5166, 0x3FF1C71C80000000
  %5168 = call float @dx.op.binary.f32(i32 36, float %5164, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5169 = fsub fast float 1.000000e+00, %5167
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5170, %5153
  %5172 = fmul fast float %5170, %5154
  %5173 = fmul fast float %5170, %5155
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5177 = fmul fast float %5167, %5153
  %5178 = fmul fast float %5167, %5154
  %5179 = fmul fast float %5167, %5155
  %5180 = fadd fast float %5177, %5168
  %5181 = fadd fast float %5178, %5168
  %5182 = fadd fast float %5179, %5168
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5185 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.i32 %5186, 3
  %5188 = extractvalue %dx.types.CBufRet.i32 %5186, 2
  %5189 = add i32 %5188, 0
  %5190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5191 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5190, %dx.types.Handle %115, float %5101, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float %5064, float %5065, float undef, float %5068, float %5069, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.ResRet.f32 %5191, 1
  %5194 = extractvalue %dx.types.ResRet.f32 %5191, 2
  %5195 = extractvalue %dx.types.ResRet.f32 %5191, 3
  %5196 = and i32 %5187, 255
  %5197 = uitofp i32 %5196 to float
  %5198 = lshr i32 %5187, 8
  %5199 = and i32 %5198, 255
  %5200 = uitofp i32 %5199 to float
  %5201 = lshr i32 %5187, 16
  %5202 = and i32 %5201, 255
  %5203 = uitofp i32 %5202 to float
  %5204 = fmul fast float %5203, 0x3F70101000000000
  %5205 = fmul fast float %5192, %5197
  %5206 = fadd fast float %5205, %5200
  %5207 = fmul fast float %5206, 0x3F70101000000000
  %5208 = fadd fast float %5193, -5.000000e-01
  %5209 = fadd fast float %5195, -5.000000e-01
  %5210 = fmul fast float %5208, %5204
  %5211 = fmul fast float %5209, %5204
  %5212 = fadd fast float %5210, 5.000000e-01
  %5213 = fadd fast float %5211, 5.000000e-01
  %5214 = fmul fast float %5212, 2.000000e+00
  %5215 = fadd fast float %5214, -1.000000e+00
  %5216 = fmul fast float %5213, 2.000000e+00
  %5217 = fadd fast float %5216, -1.000000e+00
  %5218 = fadd fast float %5215, %5217
  %5219 = fmul fast float %5218, 5.000000e-01
  %5220 = fsub fast float %5215, %5217
  %5221 = fmul fast float %5220, 5.000000e-01
  %5222 = call float @dx.op.unary.f32(i32 6, float %5219)  ; FAbs(value)
  %5223 = fsub fast float 1.000000e+00, %5222
  %5224 = call float @dx.op.unary.f32(i32 6, float %5221)  ; FAbs(value)
  %5225 = fsub fast float %5223, %5224
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5221, float %5225, float %5219, float %5221, float %5225)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = call float @dx.op.unary.f32(i32 25, float %5226)  ; Rsqrt(value)
  %5228 = fmul fast float %5219, %5227
  %5229 = fmul fast float %5221, %5227
  %5230 = select i1 %5057, i32 %5047, i32 %5048
  %5231 = select i1 %5055, i32 %5046, i32 %5230
  %5232 = sitofp i32 %5231 to float
  %5233 = fmul fast float %5225, %5232
  %5234 = fmul fast float %5233, %5227
  %5235 = select i1 %5057, float %5234, float %5229
  %5236 = select i1 %5057, float %5229, float %5234
  %5237 = select i1 %5055, float %5234, float %5228
  %5238 = select i1 %5055, float %5229, float %5235
  %5239 = select i1 %5055, float %5228, float %5236
  %5240 = fsub fast float %5174, %5001
  %5241 = fsub fast float %5175, %5002
  %5242 = fsub fast float %5176, %5003
  %5243 = fmul fast float %5240, %5146
  %5244 = fmul fast float %5241, %5146
  %5245 = fmul fast float %5242, %5146
  %5246 = fadd fast float %5243, %5001
  %5247 = fadd fast float %5244, %5002
  %5248 = fadd fast float %5245, %5003
  %5249 = fsub fast float %5183, %4998
  %5250 = fsub fast float %5184, %4999
  %5251 = fsub fast float %5185, %5000
  %5252 = fmul fast float %5249, %5146
  %5253 = fmul fast float %5250, %5146
  %5254 = fmul fast float %5251, %5146
  %5255 = fadd fast float %5252, %4998
  %5256 = fadd fast float %5253, %4999
  %5257 = fadd fast float %5254, %5000
  %5258 = fadd fast float %5237, %5004
  %5259 = fadd fast float %5238, %5005
  %5260 = fadd fast float %5239, %5006
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = call float @dx.op.unary.f32(i32 25, float %5261)  ; Rsqrt(value)
  %5263 = fmul fast float %5258, %5262
  %5264 = fmul fast float %5259, %5262
  %5265 = fmul fast float %5260, %5262
  %5266 = fsub fast float %5263, %5004
  %5267 = fsub fast float %5264, %5005
  %5268 = fsub fast float %5265, %5006
  %5269 = fmul fast float %5266, %5146
  %5270 = fmul fast float %5267, %5146
  %5271 = fmul fast float %5268, %5146
  %5272 = fadd fast float %5269, %5004
  %5273 = fadd fast float %5270, %5005
  %5274 = fadd fast float %5271, %5006
  %5275 = call float @dx.op.binary.f32(i32 36, float %5008, float %5194)  ; FMin(a,b)
  %5276 = fsub fast float %5275, %5008
  %5277 = fmul fast float %5276, %5146
  %5278 = fadd fast float %5277, %5008
  %5279 = fsub fast float %5207, %5007
  %5280 = fmul fast float %5279, %5146
  %5281 = fadd fast float %5280, %5007
  br label %5282

; <label>:5282                                    ; preds = %5144, %5106, %4997, %4713
  %5283 = phi float [ %5255, %5144 ], [ %4998, %5106 ], [ %4998, %4997 ], [ %4241, %4713 ]
  %5284 = phi float [ %5256, %5144 ], [ %4999, %5106 ], [ %4999, %4997 ], [ %4242, %4713 ]
  %5285 = phi float [ %5257, %5144 ], [ %5000, %5106 ], [ %5000, %4997 ], [ %4243, %4713 ]
  %5286 = phi float [ %5246, %5144 ], [ %5001, %5106 ], [ %5001, %4997 ], [ %4322, %4713 ]
  %5287 = phi float [ %5247, %5144 ], [ %5002, %5106 ], [ %5002, %4997 ], [ %4323, %4713 ]
  %5288 = phi float [ %5248, %5144 ], [ %5003, %5106 ], [ %5003, %4997 ], [ %4324, %4713 ]
  %5289 = phi float [ %5272, %5144 ], [ %5004, %5106 ], [ %5004, %4997 ], [ %4205, %4713 ]
  %5290 = phi float [ %5273, %5144 ], [ %5005, %5106 ], [ %5005, %4997 ], [ %4206, %4713 ]
  %5291 = phi float [ %5274, %5144 ], [ %5006, %5106 ], [ %5006, %4997 ], [ %4207, %4713 ]
  %5292 = phi float [ %5281, %5144 ], [ %5007, %5106 ], [ %5007, %4997 ], [ %4244, %4713 ]
  %5293 = phi float [ %5278, %5144 ], [ %5008, %5106 ], [ %5008, %4997 ], [ %4217, %4713 ]
  %5294 = fcmp fast une float %4717, 0.000000e+00
  %5295 = call float @dx.op.dot3.f32(i32 55, float %198, float %199, float %200, float %198, float %199, float %200)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.unary.f32(i32 25, float %5295)  ; Rsqrt(value)
  br i1 %5294, label %5304, label %5297

; <label>:5297                                    ; preds = %5282
  %5298 = fmul fast float %5296, %198
  %5299 = fmul fast float %5296, %199
  %5300 = fmul fast float %5296, %200
  %5301 = fsub fast float -0.000000e+00, %5298
  %5302 = fsub fast float -0.000000e+00, %5299
  %5303 = fsub fast float -0.000000e+00, %5300
  br label %5471

; <label>:5304                                    ; preds = %5282
  %5305 = fmul fast float %198, %5296
  %5306 = fsub fast float -0.000000e+00, %5305
  %5307 = fmul fast float %199, %5296
  %5308 = fsub fast float -0.000000e+00, %5307
  %5309 = fmul fast float %200, %5296
  %5310 = fsub fast float -0.000000e+00, %5309
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5308, float %5310, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = fmul fast float %4717, 2.500000e+00
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = fmul fast float %4717, 0x4013FFFFE0000000
  %5315 = fadd fast float %5314, 0xBFFFFFFFE0000000
  %5316 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5317 = fmul fast float %4717, 0x4004000020000000
  %5318 = fadd fast float %5317, 0xBFF8000040000000
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fmul fast float %4223, 1.000000e+01
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = fmul fast float %5321, 2.000000e+00
  %5323 = fsub fast float 3.000000e+00, %5322
  %5324 = fmul fast float %5321, %5321
  %5325 = fmul fast float %5324, %5323
  %5326 = fsub fast float 1.000000e+00, %5325
  %5327 = fsub fast float 0x3FE3333340000000, %5292
  %5328 = fmul fast float %5327, 0x400AAAAAA0000000
  %5329 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5330 = fmul fast float %5326, %5329
  %5331 = fmul fast float %5286, 0x3FEA2B8620000000
  %5332 = fmul fast float %5287, 0x3FEA2B8620000000
  %5333 = fmul fast float %5288, 0x3FEA2B8620000000
  %5334 = fadd fast float %5331, 0x3FC81DFBA0000000
  %5335 = fmul fast float %5334, %5286
  %5336 = fadd fast float %5335, 0x3F910E6020000000
  %5337 = fadd fast float %5332, 0x3FC81DFBA0000000
  %5338 = fmul fast float %5337, %5287
  %5339 = fadd fast float %5338, 0x3F910E6020000000
  %5340 = fadd fast float %5333, 0x3FC81DFBA0000000
  %5341 = fmul fast float %5340, %5288
  %5342 = fadd fast float %5341, 0x3F910E6020000000
  %5343 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5345 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5346 = fsub fast float %5343, %5286
  %5347 = fsub fast float %5344, %5287
  %5348 = fsub fast float %5345, %5288
  %5349 = fmul fast float %5346, %5313
  %5350 = fmul fast float %5349, %5330
  %5351 = fmul fast float %5347, %5313
  %5352 = fmul fast float %5351, %5330
  %5353 = fmul fast float %5348, %5313
  %5354 = fmul fast float %5353, %5330
  %5355 = fadd fast float %5350, %5286
  %5356 = fadd fast float %5352, %5287
  %5357 = fadd fast float %5354, %5288
  %5358 = fmul fast float %5293, %5293
  %5359 = fmul fast float %5358, %5358
  %5360 = fadd fast float %5316, 1.000000e+00
  %5361 = fsub fast float %5360, %5330
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fsub fast float 1.000000e+00, %5359
  %5366 = call float @dx.op.binary.f32(i32 36, float %5362, float %5365)  ; FMin(a,b)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5368 = call float @dx.op.binary.f32(i32 35, float %5366, float %5367)  ; FMax(a,b)
  %5369 = fadd fast float %5364, 0xBFE4CCCCC0000000
  %5370 = fmul fast float %5369, 0x4006DB6DA0000000
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = fsub fast float 3.000000e+00, %5372
  %5374 = bitcast float %5283 to i32
  %5375 = ashr i32 %5374, 1
  %5376 = add nsw i32 %5375, 532487669
  %5377 = bitcast i32 %5376 to float
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = bitcast float %5378 to i32
  %5380 = sub nsw i32 2129859010, %5379
  %5381 = bitcast i32 %5380 to float
  %5382 = fmul fast float %5381, 2.000000e+00
  %5383 = bitcast float %5284 to i32
  %5384 = ashr i32 %5383, 1
  %5385 = add nsw i32 %5384, 532487669
  %5386 = bitcast i32 %5385 to float
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5390, 2.000000e+00
  %5392 = bitcast float %5285 to i32
  %5393 = ashr i32 %5392, 1
  %5394 = add nsw i32 %5393, 532487669
  %5395 = bitcast i32 %5394 to float
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = bitcast float %5396 to i32
  %5398 = sub nsw i32 2129859010, %5397
  %5399 = bitcast i32 %5398 to float
  %5400 = fmul fast float %5399, 2.000000e+00
  %5401 = fsub fast float 0x4002A9FBE0000000, %5382
  %5402 = fadd fast float %5382, 0x3FD54FDF00000000
  %5403 = bitcast float %5402 to i32
  %5404 = sub nsw i32 2129859010, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = fmul fast float %5405, %5401
  %5407 = fmul fast float %5406, %5406
  %5408 = fsub fast float 0x4002A9FBE0000000, %5391
  %5409 = fadd fast float %5391, 0x3FD54FDF00000000
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = fmul fast float %5412, %5408
  %5414 = fmul fast float %5413, %5413
  %5415 = fsub fast float 0x4002A9FBE0000000, %5400
  %5416 = fadd fast float %5400, 0x3FD54FDF00000000
  %5417 = bitcast float %5416 to i32
  %5418 = sub nsw i32 2129859010, %5417
  %5419 = bitcast i32 %5418 to float
  %5420 = fmul fast float %5419, %5415
  %5421 = fmul fast float %5420, %5420
  %5422 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5407)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5414)  ; FMax(a,b)
  %5424 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5421)  ; FMax(a,b)
  %5425 = fsub fast float 1.000000e+00, %5311
  %5426 = fadd fast float %5425, %5326
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = fsub fast float 1.000000e+00, %4698
  %5429 = fmul fast float %5368, %5428
  %5430 = fmul fast float %5371, %5371
  %5431 = fmul fast float %5430, %5429
  %5432 = fmul fast float %5431, %5373
  %5433 = fmul fast float %5428, 0xBFE99999A0000000
  %5434 = fmul fast float %5433, %5313
  %5435 = fmul fast float %5434, %5330
  %5436 = fadd fast float %5435, 1.000000e+00
  %5437 = fadd fast float %5292, -1.000000e+00
  %5438 = fmul fast float %5436, %5437
  %5439 = fadd fast float %5438, 1.000000e+00
  %5440 = fsub fast float %5422, %5283
  %5441 = fsub fast float %5423, %5284
  %5442 = fsub fast float %5424, %5285
  %5443 = fmul fast float %5432, %5440
  %5444 = fmul fast float %5432, %5441
  %5445 = fmul fast float %5432, %5442
  %5446 = fadd fast float %5443, %5283
  %5447 = fadd fast float %5444, %5284
  %5448 = fadd fast float %5445, %5285
  %5449 = fsub fast float %126, %5289
  %5450 = fsub fast float %127, %5290
  %5451 = fsub fast float %128, %5291
  %5452 = fmul fast float %5432, %5449
  %5453 = fmul fast float %5432, %5450
  %5454 = fmul fast float %5432, %5451
  %5455 = fadd fast float %5452, %5289
  %5456 = fadd fast float %5453, %5290
  %5457 = fadd fast float %5454, %5291
  %5458 = fmul fast float %5432, %5427
  %5459 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = fmul fast float %5458, %5460
  %5462 = fadd fast float %5461, %5459
  %5463 = fsub fast float 1.000000e+00, %5293
  %5464 = fmul fast float %5432, %5463
  %5465 = fadd fast float %5464, %5293
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 25, float %5466)  ; Rsqrt(value)
  %5468 = fmul fast float %5455, %5467
  %5469 = fmul fast float %5456, %5467
  %5470 = fmul fast float %5457, %5467
  br label %5471

; <label>:5471                                    ; preds = %5304, %5297
  %5472 = phi float [ %5303, %5297 ], [ %5310, %5304 ]
  %5473 = phi float [ %5302, %5297 ], [ %5308, %5304 ]
  %5474 = phi float [ %5301, %5297 ], [ %5306, %5304 ]
  %5475 = phi float [ %5300, %5297 ], [ %5309, %5304 ]
  %5476 = phi float [ %5299, %5297 ], [ %5307, %5304 ]
  %5477 = phi float [ %5298, %5297 ], [ %5305, %5304 ]
  %5478 = phi float [ %5283, %5297 ], [ %5446, %5304 ]
  %5479 = phi float [ %5284, %5297 ], [ %5447, %5304 ]
  %5480 = phi float [ %5285, %5297 ], [ %5448, %5304 ]
  %5481 = phi float [ %5286, %5297 ], [ %5355, %5304 ]
  %5482 = phi float [ %5287, %5297 ], [ %5356, %5304 ]
  %5483 = phi float [ %5288, %5297 ], [ %5357, %5304 ]
  %5484 = phi float [ %5289, %5297 ], [ %5468, %5304 ]
  %5485 = phi float [ %5290, %5297 ], [ %5469, %5304 ]
  %5486 = phi float [ %5291, %5297 ], [ %5470, %5304 ]
  %5487 = phi float [ %5292, %5297 ], [ %5462, %5304 ]
  %5488 = phi float [ %5293, %5297 ], [ %5465, %5304 ]
  %5489 = fsub fast float -0.000000e+00, %200
  %5490 = select i1 %257, float 0.000000e+00, float %5480
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %5474, float %5473, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5476, float %5475, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fmul fast float %5493, 2.000000e+00
  %5495 = fmul fast float %5494, %5484
  %5496 = fmul fast float %5494, %5485
  %5497 = fmul fast float %5494, %5486
  %5498 = fsub fast float %5477, %5495
  %5499 = fsub fast float %5476, %5496
  %5500 = fsub fast float %5475, %5497
  %5501 = call float @dx.op.binary.f32(i32 36, float %5488, float 1.000000e+00)  ; FMin(a,b)
  %5502 = fsub fast float 1.000000e+00, %5501
  %5503 = bitcast float %5502 to i32
  %5504 = ashr i32 %5503, 1
  %5505 = add nsw i32 %5504, 532487669
  %5506 = bitcast i32 %5505 to float
  %5507 = fsub fast float 1.000000e+00, %5487
  %5508 = call float @dx.op.binary.f32(i32 35, float %5507, float 0x3F847AE140000000)  ; FMax(a,b)
  %5509 = fmul fast float %5508, %5508
  %5510 = fmul fast float %5509, %5509
  %5511 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5506, float %5510, float %5511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = fsub fast float 1.000000e+00, %5488
  %5515 = bitcast float %5514 to i32
  %5516 = sub nsw i32 2129859010, %5515
  %5517 = bitcast i32 %5516 to float
  %5518 = call float @dx.op.dot3.f32(i32 55, float %86, float %82, float %78, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fmul fast float %5518, 0x3FD20DD760000000
  %5520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5521 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fcmp fast oeq float %5521, 0.000000e+00
  %5523 = fcmp fast oeq float %5520, 0.000000e+00
  %5524 = or i1 %5523, %5522
  br i1 %5524, label %5554, label %5525

; <label>:5525                                    ; preds = %5471
  %5526 = fsub fast float -0.000000e+00, %89
  %5527 = fsub fast float -0.000000e+00, %87
  %5528 = call float @dx.op.unary.f32(i32 24, float %5521)  ; Sqrt(value)
  %5529 = fdiv fast float %5528, %5520
  %5530 = fcmp fast ogt float %5529, 0x3FFB6F8900000000
  %5531 = select i1 %5530, float 0x3FFB6F8900000000, float %5529
  %5532 = fmul fast float %5531, 0x3FE8A23460000000
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5531, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5535 = fmul fast float %5533, %5520
  %5536 = fmul fast float %5534, 0x3FF279A740000000
  %5537 = fadd fast float %5536, -1.000000e+00
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %88, float %5526, float %5527, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = call float @dx.op.unary.f32(i32 25, float %5538)  ; Rsqrt(value)
  %5540 = fmul fast float %5539, %5526
  %5541 = fmul fast float %5539, %5527
  %5542 = fmul fast float %5539, %88
  %5543 = fmul fast float %5537, %5537
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = fmul fast float %5534, 0x40005F8BE0000000
  %5546 = fsub fast float 0x400C5BF8A0000000, %5545
  %5547 = fdiv fast float %5535, %5546
  %5548 = fmul fast float %5547, 0x3FEE31C3C0000000
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %5534, 0x3FDACB7480000000
  %5551 = fadd fast float %5550, 0xBFD7347680000000
  %5552 = fmul fast float %5551, %5547
  %5553 = fmul fast float %5552, %5544
  br label %5554

; <label>:5554                                    ; preds = %5525, %5471
  %5555 = phi float [ %5540, %5525 ], [ 0.000000e+00, %5471 ]
  %5556 = phi float [ %5541, %5525 ], [ 0.000000e+00, %5471 ]
  %5557 = phi float [ %5542, %5525 ], [ 0.000000e+00, %5471 ]
  %5558 = phi float [ %5549, %5525 ], [ 0.000000e+00, %5471 ]
  %5559 = phi float [ %5553, %5525 ], [ 0.000000e+00, %5471 ]
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %5557, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fmul fast float %5560, 0x3FDF454380000000
  %5562 = fmul fast float %5560, %5560
  %5563 = fmul fast float %5562, 0x3FEE471020000000
  %5564 = fadd fast float %5563, 0xBFD42F6020000000
  %5565 = fmul fast float %5520, 0x3FD20DD760000000
  %5566 = fmul fast float %5564, %5559
  %5567 = fadd fast float %5566, %5565
  %5568 = fmul fast float %5561, %5558
  %5569 = fadd fast float %5567, %5568
  %5570 = fsub fast float %5567, %5568
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5556, float %5557, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = fmul fast float %5571, 0x3FDF454380000000
  %5573 = fmul fast float %5571, %5571
  %5574 = fmul fast float %5573, 0x3FEE471020000000
  %5575 = fadd fast float %5574, 0xBFD42F6020000000
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5558, float %5559, float 0x3FD20DD760000000, float %5572, float %5575)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5578 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fcmp fast oeq float %5578, 0.000000e+00
  %5580 = fcmp fast oeq float %5577, 0.000000e+00
  %5581 = or i1 %5580, %5579
  br i1 %5581, label %5611, label %5582

; <label>:5582                                    ; preds = %5554
  %5583 = fsub fast float -0.000000e+00, %85
  %5584 = fsub fast float -0.000000e+00, %83
  %5585 = call float @dx.op.unary.f32(i32 24, float %5578)  ; Sqrt(value)
  %5586 = fdiv fast float %5585, %5577
  %5587 = fcmp fast ogt float %5586, 0x3FFB6F8900000000
  %5588 = select i1 %5587, float 0x3FFB6F8900000000, float %5586
  %5589 = fmul fast float %5588, 0x3FE8A23460000000
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5588, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5592 = fmul fast float %5590, %5577
  %5593 = fmul fast float %5591, 0x3FF279A740000000
  %5594 = fadd fast float %5593, -1.000000e+00
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %84, float %5583, float %5584, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 25, float %5595)  ; Rsqrt(value)
  %5597 = fmul fast float %5596, %5583
  %5598 = fmul fast float %5596, %5584
  %5599 = fmul fast float %5596, %84
  %5600 = fmul fast float %5594, %5594
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = fmul fast float %5591, 0x40005F8BE0000000
  %5603 = fsub fast float 0x400C5BF8A0000000, %5602
  %5604 = fdiv fast float %5592, %5603
  %5605 = fmul fast float %5604, 0x3FEE31C3C0000000
  %5606 = fmul fast float %5605, %5601
  %5607 = fmul fast float %5591, 0x3FDACB7480000000
  %5608 = fadd fast float %5607, 0xBFD7347680000000
  %5609 = fmul fast float %5608, %5604
  %5610 = fmul fast float %5609, %5601
  br label %5611

; <label>:5611                                    ; preds = %5582, %5554
  %5612 = phi float [ %5597, %5582 ], [ 0.000000e+00, %5554 ]
  %5613 = phi float [ %5598, %5582 ], [ 0.000000e+00, %5554 ]
  %5614 = phi float [ %5599, %5582 ], [ 0.000000e+00, %5554 ]
  %5615 = phi float [ %5606, %5582 ], [ 0.000000e+00, %5554 ]
  %5616 = phi float [ %5610, %5582 ], [ 0.000000e+00, %5554 ]
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fmul fast float %5617, 0x3FDF454380000000
  %5619 = fmul fast float %5617, %5617
  %5620 = fmul fast float %5619, 0x3FEE471020000000
  %5621 = fadd fast float %5620, 0xBFD42F6020000000
  %5622 = fmul fast float %5577, 0x3FD20DD760000000
  %5623 = fmul fast float %5621, %5616
  %5624 = fadd fast float %5623, %5622
  %5625 = fmul fast float %5618, %5615
  %5626 = fadd fast float %5624, %5625
  %5627 = fsub fast float %5624, %5625
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fmul fast float %5628, 0x3FDF454380000000
  %5630 = fmul fast float %5628, %5628
  %5631 = fmul fast float %5630, 0x3FEE471020000000
  %5632 = fadd fast float %5631, 0xBFD42F6020000000
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5577, float %5615, float %5616, float 0x3FD20DD760000000, float %5629, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5635 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = fcmp fast oeq float %5635, 0.000000e+00
  %5637 = fcmp fast oeq float %5634, 0.000000e+00
  %5638 = or i1 %5637, %5636
  br i1 %5638, label %5668, label %5639

; <label>:5639                                    ; preds = %5611
  %5640 = fsub fast float -0.000000e+00, %81
  %5641 = fsub fast float -0.000000e+00, %79
  %5642 = call float @dx.op.unary.f32(i32 24, float %5635)  ; Sqrt(value)
  %5643 = fdiv fast float %5642, %5634
  %5644 = fcmp fast ogt float %5643, 0x3FFB6F8900000000
  %5645 = select i1 %5644, float 0x3FFB6F8900000000, float %5643
  %5646 = fmul fast float %5645, 0x3FE8A23460000000
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5645, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5649 = fmul fast float %5647, %5634
  %5650 = fmul fast float %5648, 0x3FF279A740000000
  %5651 = fadd fast float %5650, -1.000000e+00
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %80, float %5640, float %5641, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.unary.f32(i32 25, float %5652)  ; Rsqrt(value)
  %5654 = fmul fast float %5653, %5640
  %5655 = fmul fast float %5653, %5641
  %5656 = fmul fast float %5653, %80
  %5657 = fmul fast float %5651, %5651
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = fmul fast float %5648, 0x40005F8BE0000000
  %5660 = fsub fast float 0x400C5BF8A0000000, %5659
  %5661 = fdiv fast float %5649, %5660
  %5662 = fmul fast float %5661, 0x3FEE31C3C0000000
  %5663 = fmul fast float %5662, %5658
  %5664 = fmul fast float %5648, 0x3FDACB7480000000
  %5665 = fadd fast float %5664, 0xBFD7347680000000
  %5666 = fmul fast float %5665, %5661
  %5667 = fmul fast float %5666, %5658
  br label %5668

; <label>:5668                                    ; preds = %5639, %5611
  %5669 = phi float [ %5654, %5639 ], [ 0.000000e+00, %5611 ]
  %5670 = phi float [ %5655, %5639 ], [ 0.000000e+00, %5611 ]
  %5671 = phi float [ %5656, %5639 ], [ 0.000000e+00, %5611 ]
  %5672 = phi float [ %5663, %5639 ], [ 0.000000e+00, %5611 ]
  %5673 = phi float [ %5667, %5639 ], [ 0.000000e+00, %5611 ]
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5674, 0x3FDF454380000000
  %5676 = fmul fast float %5674, %5674
  %5677 = fmul fast float %5676, 0x3FEE471020000000
  %5678 = fadd fast float %5677, 0xBFD42F6020000000
  %5679 = fmul fast float %5634, 0x3FD20DD760000000
  %5680 = fmul fast float %5678, %5673
  %5681 = fadd fast float %5680, %5679
  %5682 = fmul fast float %5675, %5672
  %5683 = fadd fast float %5681, %5682
  %5684 = fsub fast float %5681, %5682
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = fmul fast float %5685, 0x3FDF454380000000
  %5687 = fmul fast float %5685, %5685
  %5688 = fmul fast float %5687, 0x3FEE471020000000
  %5689 = fadd fast float %5688, 0xBFD42F6020000000
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5672, float %5673, float 0x3FD20DD760000000, float %5686, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5569, float 0.000000e+00)  ; FMax(a,b)
  %5692 = call float @dx.op.binary.f32(i32 35, float %5626, float 0.000000e+00)  ; FMax(a,b)
  %5693 = call float @dx.op.binary.f32(i32 35, float %5683, float 0.000000e+00)  ; FMax(a,b)
  %5694 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5695 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5696 = call float @dx.op.binary.f32(i32 35, float %5684, float 0.000000e+00)  ; FMax(a,b)
  %5697 = call float @dx.op.binary.f32(i32 35, float %5576, float 0.000000e+00)  ; FMax(a,b)
  %5698 = call float @dx.op.binary.f32(i32 35, float %5633, float 0.000000e+00)  ; FMax(a,b)
  %5699 = call float @dx.op.binary.f32(i32 35, float %5690, float 0.000000e+00)  ; FMax(a,b)
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 0
  %5702 = call float @dx.op.binary.f32(i32 36, float %5481, float %5701)  ; FMin(a,b)
  %5703 = fmul fast float %5702, %5502
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = bitcast float %5704 to i32
  %5706 = sub nsw i32 2129859010, %5705
  %5707 = bitcast i32 %5706 to float
  %5708 = call float @dx.op.binary.f32(i32 36, float %5482, float %5701)  ; FMin(a,b)
  %5709 = fmul fast float %5708, %5502
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = bitcast float %5710 to i32
  %5712 = sub nsw i32 2129859010, %5711
  %5713 = bitcast i32 %5712 to float
  %5714 = call float @dx.op.binary.f32(i32 36, float %5483, float %5701)  ; FMin(a,b)
  %5715 = fmul fast float %5714, %5502
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = bitcast float %5716 to i32
  %5718 = sub nsw i32 2129859010, %5717
  %5719 = bitcast i32 %5718 to float
  %5720 = fmul fast float %5691, %5501
  %5721 = fmul fast float %5720, %5707
  %5722 = fmul fast float %5692, %5501
  %5723 = fmul fast float %5722, %5713
  %5724 = fmul fast float %5693, %5501
  %5725 = fmul fast float %5724, %5719
  %5726 = call float @dx.op.binary.f32(i32 36, float %5478, float %5701)  ; FMin(a,b)
  %5727 = fmul fast float %5726, %5502
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = bitcast float %5728 to i32
  %5730 = sub nsw i32 2129859010, %5729
  %5731 = bitcast i32 %5730 to float
  %5732 = call float @dx.op.binary.f32(i32 36, float %5479, float %5701)  ; FMin(a,b)
  %5733 = fmul fast float %5732, %5502
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = sub nsw i32 2129859010, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = call float @dx.op.binary.f32(i32 36, float %5490, float %5701)  ; FMin(a,b)
  %5739 = fmul fast float %5738, %5502
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = bitcast float %5740 to i32
  %5742 = sub nsw i32 2129859010, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5697, %5501
  %5745 = fmul fast float %5744, %5731
  %5746 = fmul fast float %5698, %5501
  %5747 = fmul fast float %5746, %5737
  %5748 = fmul fast float %5699, %5501
  %5749 = fmul fast float %5748, %5743
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5723, float %5725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = select i1 %257, float 0.000000e+00, float %5721
  %5752 = select i1 %257, float %5750, float %5723
  %5753 = select i1 %257, float 0.000000e+00, float %5725
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = select i1 %257, float 0.000000e+00, float %5694
  %5756 = select i1 %257, float %5754, float %5695
  %5757 = select i1 %257, float 0.000000e+00, float %5696
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5747, float %5749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = select i1 %257, float 0.000000e+00, float %5745
  %5760 = select i1 %257, float %5758, float %5747
  %5761 = select i1 %257, float 0.000000e+00, float %5749
  %5762 = fmul fast float %5492, 9.843750e-01
  %5763 = fmul fast float %5487, 9.843750e-01
  %5764 = fadd fast float %5762, 7.812500e-03
  %5765 = fadd fast float %5763, 7.812500e-03
  %5766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5764, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 3
  %5769 = fmul fast float %5767, %5478
  %5770 = fmul fast float %5767, %5479
  %5771 = fmul fast float %5767, %5490
  %5772 = fadd fast float %5769, %5768
  %5773 = fadd fast float %5770, %5768
  %5774 = fadd fast float %5771, %5768
  %5775 = fcmp fast ogt float %4218, 0.000000e+00
  br i1 %5775, label %5776, label %5802

; <label>:5776                                    ; preds = %5668
  %5777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %5492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.ResRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.ResRet.f32 %5777, 2
  %5781 = fadd fast float %5778, -5.000000e-01
  %5782 = fadd fast float %5779, -5.000000e-01
  %5783 = fadd fast float %5780, -5.000000e-01
  %5784 = fsub fast float 1.000000e+00, %5478
  %5785 = fsub fast float 1.000000e+00, %5479
  %5786 = fsub fast float 1.000000e+00, %5490
  %5787 = fmul fast float %5478, 4.000000e+00
  %5788 = fmul fast float %5787, %5784
  %5789 = fmul fast float %5788, %5781
  %5790 = fmul fast float %5479, 4.000000e+00
  %5791 = fmul fast float %5790, %5785
  %5792 = fmul fast float %5791, %5782
  %5793 = fmul fast float %5490, 4.000000e+00
  %5794 = fmul fast float %5793, %5786
  %5795 = fmul fast float %5794, %5783
  %5796 = fadd fast float %5789, %5772
  %5797 = fadd fast float %5792, %5773
  %5798 = fadd fast float %5795, %5774
  %5799 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5800 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5801 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  br label %5802

; <label>:5802                                    ; preds = %5776, %5668
  %5803 = phi float [ %5799, %5776 ], [ %5772, %5668 ]
  %5804 = phi float [ %5800, %5776 ], [ %5773, %5668 ]
  %5805 = phi float [ %5801, %5776 ], [ %5774, %5668 ]
  %5806 = call float @dx.op.binary.f32(i32 35, float %5804, float %5805)  ; FMax(a,b)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5803, float %5806)  ; FMax(a,b)
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = fmul fast float %5807, %5487
  %5810 = fadd fast float %5809, %5487
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 3
  %5814 = fmul fast float %5810, %5812
  %5815 = fadd fast float %5814, %5813
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fsub fast float 1.000000e+00, %5513
  %5818 = fadd fast float %5817, %5816
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = fcmp fast olt float %5819, 1.000000e+00
  br i1 %5820, label %5821, label %6297

; <label>:5821                                    ; preds = %5802
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5825 = fmul fast float %5823, %119
  %5826 = fmul fast float %5824, %120
  %5827 = fptoui float %5825 to i32
  %5828 = fptoui float %5826 to i32
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5832 = extractvalue %dx.types.CBufRet.f32 %5829, 3
  %5833 = fadd fast float %106, -4.000000e+00
  %5834 = call float @dx.op.binary.f32(i32 35, float %5833, float 0.000000e+00)  ; FMax(a,b)
  %5835 = fadd fast float %5834, %5830
  %5836 = fmul fast float %5835, %5831
  %5837 = call float @dx.op.unary.f32(i32 23, float %5836)  ; Log(value)
  %5838 = fmul fast float %5837, %5832
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5841 = fmul fast float %5838, %5840
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.i32 %5843, 1
  %5845 = add i32 %5844, -1
  %5846 = uitofp i32 %5844 to float
  %5847 = fmul fast float %5846, %5842
  %5848 = fptoui float %5847 to i32
  %5849 = call i32 @dx.op.binary.i32(i32 40, i32 %5848, i32 %5845)  ; UMin(a,b)
  %5850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.i32 %5850, 2
  %5852 = extractvalue %dx.types.CBufRet.i32 %5850, 3
  %5853 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5828, i32 %5851, i32 %5827)  ; UMad(a,b,c)
  %5854 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5849, i32 %5852, i32 %5853)  ; UMad(a,b,c)
  %5855 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %5856 = fptoui float %5855 to i32
  %5857 = lshr i32 %5856, 5
  %5858 = call i32 @dx.op.binary.i32(i32 40, i32 %5857, i32 8191)  ; UMin(a,b)
  %5859 = fsub fast float %4688, %200
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fcmp fast ogt float %5860, 0.000000e+00
  %5862 = fcmp fast ogt float %5500, 0.000000e+00
  %5863 = and i1 %5862, %5861
  br i1 %5863, label %5864, label %5893

; <label>:5864                                    ; preds = %5821
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.binary.f32(i32 35, float %5865, float -1.000000e+00)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 36, float %5866, float 1.000000e+00)  ; FMin(a,b)
  %5868 = fmul fast float %5867, %5867
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fmul fast float %5869, 0x3FFC6E2300000000
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = fcmp fast ogt float %5871, 0.000000e+00
  %5873 = call float @dx.op.unary.f32(i32 24, float %5871)  ; Sqrt(value)
  %5874 = fsub fast float 1.000000e+00, %5873
  %5875 = call float @dx.op.unary.f32(i32 23, float %5874)  ; Log(value)
  %5876 = fmul fast float %5875, 5.000000e+00
  %5877 = call float @dx.op.unary.f32(i32 21, float %5876)  ; Exp(value)
  %5878 = fmul fast float %5877, 0x3FEF591A60000000
  %5879 = fadd fast float %5878, 0x3F94DCB540000000
  %5880 = select i1 %5872, float %5879, float 1.000000e+00
  %5881 = fcmp fast oge float %5880, 1.000000e+00
  %5882 = fmul fast float %5865, 2.000000e+00
  %5883 = fadd fast float %5882, %5500
  %5884 = select i1 %5881, float %5883, float %5500
  %5885 = fsub fast float %5884, %5500
  %5886 = fmul fast float %5885, %5860
  %5887 = fadd fast float %5886, %5500
  %5888 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5887, float %5498, float %5499, float %5887)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = call float @dx.op.unary.f32(i32 25, float %5888)  ; Rsqrt(value)
  %5890 = fmul fast float %5889, %5498
  %5891 = fmul fast float %5889, %5499
  %5892 = fmul fast float %5887, %5889
  br label %5893

; <label>:5893                                    ; preds = %5864, %5821
  %5894 = phi float [ %5890, %5864 ], [ %5498, %5821 ]
  %5895 = phi float [ %5891, %5864 ], [ %5499, %5821 ]
  %5896 = phi float [ %5892, %5864 ], [ %5500, %5821 ]
  %5897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.i32 %5897, 2
  %5899 = add nsw i32 %5898, -1
  %5900 = call i32 @dx.op.binary.i32(i32 37, i32 %5899, i32 0)  ; IMax(a,b)
  %5901 = shl i32 %5858, 2
  %5902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.i32 %5902, 0
  %5904 = lshr i32 %5903, 16
  %5905 = and i32 %5903, 65535
  %5906 = lshr i32 %5903, 21
  %5907 = lshr i32 %5905, 5
  %5908 = call i32 @dx.op.binary.i32(i32 40, i32 %5907, i32 %5900)  ; UMin(a,b)
  %5909 = icmp ugt i32 %5906, %5908
  br i1 %5909, label %6273, label %5910

; <label>:5910                                    ; preds = %5893
  br label %5911

; <label>:5911                                    ; preds = %6265, %5910
  %5912 = phi float [ %6266, %6265 ], [ 0.000000e+00, %5910 ]
  %5913 = phi float [ %6267, %6265 ], [ 0.000000e+00, %5910 ]
  %5914 = phi float [ %6268, %6265 ], [ 0.000000e+00, %5910 ]
  %5915 = phi float [ %6269, %6265 ], [ 1.000000e+00, %5910 ]
  %5916 = phi i32 [ %6270, %6265 ], [ %5906, %5910 ]
  %5917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.i32 %5917, 2
  %5919 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5854, i32 %5918, i32 %5916)  ; UMad(a,b,c)
  %5920 = shl i32 %5919, 2
  %5921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5920, i32 undef)  ; BufferLoad(srv,index,wot)
  %5922 = extractvalue %dx.types.ResRet.i32 %5921, 0
  %5923 = shl i32 %5916, 5
  %5924 = sub nsw i32 %5904, %5923
  %5925 = call i32 @dx.op.binary.i32(i32 37, i32 %5924, i32 0)  ; IMax(a,b)
  %5926 = call i32 @dx.op.binary.i32(i32 38, i32 %5925, i32 31)  ; IMin(a,b)
  %5927 = sub nsw i32 1, %5904
  %5928 = add nsw i32 %5927, %5905
  %5929 = call i32 @dx.op.binary.i32(i32 37, i32 %5928, i32 0)  ; IMax(a,b)
  %5930 = call i32 @dx.op.binary.i32(i32 38, i32 %5929, i32 32)  ; IMin(a,b)
  %5931 = and i32 %5930, 31
  %5932 = shl i32 -1, %5931
  %5933 = xor i32 %5932, -1
  %5934 = and i32 %5926, 31
  %5935 = shl i32 %5933, %5934
  %5936 = icmp eq i32 %5930, 32
  %5937 = select i1 %5936, i32 -1, i32 %5935
  %5938 = and i32 %5937, %5922
  %5939 = icmp eq i32 %5938, 0
  br i1 %5939, label %6265, label %5940

; <label>:5940                                    ; preds = %5911
  br label %5941

; <label>:5941                                    ; preds = %6048, %5940
  %5942 = phi float [ %6049, %6048 ], [ %5912, %5940 ]
  %5943 = phi float [ %6050, %6048 ], [ %5913, %5940 ]
  %5944 = phi float [ %6051, %6048 ], [ %5914, %5940 ]
  %5945 = phi float [ %6052, %6048 ], [ %5915, %5940 ]
  %5946 = phi i32 [ %5951, %6048 ], [ %5938, %5940 ]
  %5947 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5946)  ; FirstbitLo(value)
  %5948 = add i32 %5947, %5923
  %5949 = and i32 %5947, 31
  %5950 = shl i32 1, %5949
  %5951 = xor i32 %5950, %5946
  %5952 = mul i32 %5948, 72
  %5953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.ResRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.ResRet.f32 %5953, 2
  %5957 = add i32 %5952, 12
  %5958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.i32 %5958, 0
  %5960 = add i32 %5952, 16
  %5961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5960, i32 undef)  ; BufferLoad(srv,index,wot)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5965 = add i32 %5952, 28
  %5966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5965, i32 undef)  ; BufferLoad(srv,index,wot)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = add i32 %5952, 32
  %5969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5968, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = extractvalue %dx.types.ResRet.f32 %5969, 3
  %5974 = add i32 %5952, 48
  %5975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5974, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = add i32 %5952, 56
  %5979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = add i32 %5952, 64
  %5983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5982, i32 undef)  ; BufferLoad(srv,index,wot)
  %5984 = extractvalue %dx.types.ResRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.ResRet.f32 %5983, 1
  %5986 = mul i32 %5948, 60
  %5987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5986, i32 undef)  ; BufferLoad(srv,index,wot)
  %5988 = extractvalue %dx.types.ResRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.ResRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.ResRet.f32 %5987, 2
  %5991 = add i32 %5986, 12
  %5992 = add i32 %5986, 48
  %5993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.ResRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.ResRet.f32 %5993, 2
  %5997 = and i32 %5959, 32767
  %5998 = bitcast float %5954 to i32
  %5999 = icmp eq i32 %5998, -1
  %6000 = bitcast float %5955 to i32
  %6001 = and i32 %5959, 32768
  %6002 = icmp ne i32 %6001, 0
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.CBufRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6007 = fsub fast float %5988, %6004
  %6008 = fsub fast float %5989, %6005
  %6009 = fsub fast float %5990, %6006
  %6010 = fsub fast float %198, %6007
  %6011 = fsub fast float %199, %6008
  %6012 = fsub fast float %200, %6009
  %6013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5991, i32 undef)  ; BufferLoad(srv,index,wot)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.ResRet.f32 %6013, 1
  %6016 = extractvalue %dx.types.ResRet.f32 %6013, 2
  %6017 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = add i32 %5986, 24
  %6019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6018, i32 undef)  ; BufferLoad(srv,index,wot)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6020, float %6021, float %6022)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = add i32 %5986, 36
  %6025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6024, i32 undef)  ; BufferLoad(srv,index,wot)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6026, float %6027, float %6028)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = call float @dx.op.unary.f32(i32 6, float %6017)  ; FAbs(value)
  %6031 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6032 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6033 = fsub fast float %5994, %6030
  %6034 = fsub fast float %5995, %6031
  %6035 = fsub fast float %5996, %6032
  %6036 = fmul fast float %6033, %5962
  %6037 = fmul fast float %6034, %5963
  %6038 = fmul fast float %6035, %5964
  %6039 = call float @dx.op.binary.f32(i32 36, float %6037, float %6038)  ; FMin(a,b)
  %6040 = call float @dx.op.binary.f32(i32 36, float %6036, float %6039)  ; FMin(a,b)
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = call float @dx.op.binary.f32(i32 36, float %5945, float %6041)  ; FMin(a,b)
  %6043 = uitofp i1 %6002 to float
  %6044 = fadd fast float %5860, 1.000000e+00
  %6045 = fsub fast float %6044, %6043
  %6046 = fmul fast float %6042, %6045
  %6047 = fcmp fast ogt float %6046, 0.000000e+00
  br i1 %6047, label %6054, label %6048

; <label>:6048                                    ; preds = %6196, %5941
  %6049 = phi float [ %6260, %6196 ], [ %5942, %5941 ]
  %6050 = phi float [ %6261, %6196 ], [ %5943, %5941 ]
  %6051 = phi float [ %6262, %6196 ], [ %5944, %5941 ]
  %6052 = phi float [ %6263, %6196 ], [ %5945, %5941 ]
  %6053 = icmp eq i32 %5946, %5950
  br i1 %6053, label %6264, label %5941

; <label>:6054                                    ; preds = %5941
  br i1 %5999, label %6112, label %6055

; <label>:6055                                    ; preds = %6054
  %6056 = fsub fast float -0.000000e+00, %6014
  %6057 = fsub fast float -0.000000e+00, %6015
  %6058 = fsub fast float -0.000000e+00, %6016
  %6059 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = fsub fast float -0.000000e+00, %6059
  %6061 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fadd fast float %6061, %5977
  %6063 = fadd fast float %5976, %6061
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fcmp ogt float %6059, -0.000000e+00
  %6066 = select i1 %6065, float %6064, float %6062
  %6067 = call float @dx.op.unary.f32(i32 6, float %6060)  ; FAbs(value)
  %6068 = fdiv fast float 1.000000e+00, %6067
  %6069 = fmul fast float %6066, %6068
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float 0.000000e+00)  ; FMax(a,b)
  %6071 = fsub fast float -0.000000e+00, %6020
  %6072 = fsub fast float -0.000000e+00, %6021
  %6073 = fsub fast float -0.000000e+00, %6022
  %6074 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fsub fast float -0.000000e+00, %6074
  %6076 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = fadd fast float %6076, %5981
  %6078 = fadd fast float %5980, %6076
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = fcmp ogt float %6074, -0.000000e+00
  %6081 = select i1 %6080, float %6079, float %6077
  %6082 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6083 = fdiv fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6081, %6083
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0.000000e+00)  ; FMax(a,b)
  %6086 = fsub fast float -0.000000e+00, %6026
  %6087 = fsub fast float -0.000000e+00, %6027
  %6088 = fsub fast float -0.000000e+00, %6028
  %6089 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = fsub fast float -0.000000e+00, %6089
  %6091 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6011, float %6012, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = fadd fast float %6091, %5985
  %6093 = fadd fast float %5984, %6091
  %6094 = fsub fast float -0.000000e+00, %6093
  %6095 = fcmp ogt float %6089, -0.000000e+00
  %6096 = select i1 %6095, float %6094, float %6092
  %6097 = call float @dx.op.unary.f32(i32 6, float %6090)  ; FAbs(value)
  %6098 = fdiv fast float 1.000000e+00, %6097
  %6099 = fmul fast float %6096, %6098
  %6100 = call float @dx.op.binary.f32(i32 35, float %6099, float 0.000000e+00)  ; FMax(a,b)
  %6101 = call float @dx.op.binary.f32(i32 36, float %6085, float %6100)  ; FMin(a,b)
  %6102 = call float @dx.op.binary.f32(i32 36, float %6070, float %6101)  ; FMin(a,b)
  %6103 = fmul fast float %6102, %5894
  %6104 = fmul fast float %6102, %5895
  %6105 = fmul fast float %6102, %5896
  %6106 = fadd fast float %6103, %198
  %6107 = fadd fast float %6104, %199
  %6108 = fadd fast float %6105, %200
  %6109 = fsub fast float %6106, %5954
  %6110 = fsub fast float %6107, %5955
  %6111 = fsub fast float %6108, %5956
  br label %6119

; <label>:6112                                    ; preds = %6054
  %6113 = fmul fast float %5894, 8.096000e+03
  %6114 = fmul fast float %5895, 8.096000e+03
  %6115 = fmul fast float %5896, 8.096000e+03
  %6116 = fadd fast float %6113, %198
  %6117 = fadd fast float %6114, %199
  %6118 = fadd fast float %6115, %200
  br label %6119

; <label>:6119                                    ; preds = %6112, %6055
  %6120 = phi float [ %5894, %6112 ], [ %6109, %6055 ]
  %6121 = phi float [ %5895, %6112 ], [ %6110, %6055 ]
  %6122 = phi float [ %5896, %6112 ], [ %6111, %6055 ]
  %6123 = phi float [ %6116, %6112 ], [ %6106, %6055 ]
  %6124 = phi float [ %6117, %6112 ], [ %6107, %6055 ]
  %6125 = phi float [ %6118, %6112 ], [ %6108, %6055 ]
  %6126 = fcmp fast olt float %5973, 1.000000e+00
  br i1 %6126, label %6127, label %6158, !dx.controlflow.hints !101

; <label>:6127                                    ; preds = %6119
  %6128 = fmul fast float %6122, %5971
  %6129 = fmul fast float %6121, %5972
  %6130 = fsub fast float %6128, %6129
  %6131 = fmul fast float %6120, %5972
  %6132 = fmul fast float %6122, %5970
  %6133 = fsub fast float %6131, %6132
  %6134 = fmul fast float %6121, %5970
  %6135 = fmul fast float %6120, %5971
  %6136 = fsub fast float %6134, %6135
  %6137 = fmul fast float %6130, 2.000000e+00
  %6138 = fmul fast float %6133, 2.000000e+00
  %6139 = fmul fast float %6136, 2.000000e+00
  %6140 = fmul fast float %6137, %5973
  %6141 = fmul fast float %6138, %5973
  %6142 = fmul fast float %6139, %5973
  %6143 = fmul fast float %6139, %5971
  %6144 = fmul fast float %6138, %5972
  %6145 = fmul fast float %6137, %5972
  %6146 = fmul fast float %6139, %5970
  %6147 = fmul fast float %6138, %5970
  %6148 = fmul fast float %6137, %5971
  %6149 = fadd fast float %6143, %6120
  %6150 = fadd fast float %6149, %6140
  %6151 = fsub fast float %6150, %6144
  %6152 = fsub fast float %6121, %6146
  %6153 = fadd fast float %6152, %6141
  %6154 = fadd fast float %6153, %6145
  %6155 = fadd fast float %6142, %6122
  %6156 = fsub fast float %6155, %6148
  %6157 = fadd fast float %6156, %6147
  br label %6158

; <label>:6158                                    ; preds = %6127, %6119
  %6159 = phi float [ %6151, %6127 ], [ %6120, %6119 ]
  %6160 = phi float [ %6154, %6127 ], [ %6121, %6119 ]
  %6161 = phi float [ %6157, %6127 ], [ %6122, %6119 ]
  br i1 %5999, label %6193, label %6162

; <label>:6162                                    ; preds = %6158
  %6163 = fmul fast float %5487, 0x400187C840000000
  %6164 = fadd fast float %6163, 0xC00EFC2120000000
  %6165 = fmul fast float %6164, %5487
  %6166 = fadd fast float %6165, 0x3FE5D16340000000
  %6167 = fmul fast float %6166, %5487
  %6168 = fadd fast float %6167, 1.000000e+00
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = fsub fast float %6123, %198
  %6171 = fsub fast float %6124, %199
  %6172 = fsub fast float %6125, %200
  %6173 = fsub fast float %6123, %5954
  %6174 = fsub fast float %6124, %5955
  %6175 = fsub fast float %6125, %5956
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float %6170, float %6171, float %6172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = fadd fast float %6177, 0x3EE4F8B580000000
  %6179 = fdiv fast float %6176, %6178
  %6180 = bitcast float %6179 to i32
  %6181 = ashr i32 %6180, 1
  %6182 = add nsw i32 %6181, 532487669
  %6183 = bitcast i32 %6182 to float
  %6184 = fmul fast float %6183, %6169
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  %6186 = fmul fast float %6185, 0x4009981AE0000000
  %6187 = fsub fast float 0x40111BBD80000000, %6186
  %6188 = fmul fast float %6187, %6185
  %6189 = fadd fast float %6188, 0xC0009F6020000000
  %6190 = fmul fast float %6189, %6185
  %6191 = fadd fast float %6190, 1.000000e+00
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  br label %6196

; <label>:6193                                    ; preds = %6158
  %6194 = icmp ne i32 %6000, -1
  %6195 = zext i1 %6194 to i32
  br label %6196

; <label>:6196                                    ; preds = %6193, %6162
  %6197 = phi float [ %5487, %6193 ], [ %6192, %6162 ]
  %6198 = phi i32 [ %6195, %6193 ], [ 0, %6162 ]
  %6199 = fmul float %6197, 5.000000e+00
  %6200 = fsub float 5.000000e+00, %6199
  %6201 = icmp ne i32 %6198, 0
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6204 = fadd fast float %6203, %6200
  %6205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6204)  ; FMax(a,b)
  %6206 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6207 = call float @dx.op.unary.f32(i32 6, float %6160)  ; FAbs(value)
  %6208 = fadd fast float %6207, %6206
  %6209 = call float @dx.op.unary.f32(i32 6, float %6161)  ; FAbs(value)
  %6210 = fadd fast float %6208, %6209
  %6211 = fcmp fast oeq float %6210, 0.000000e+00
  %6212 = fdiv fast float 1.000000e+00, %6210
  %6213 = select i1 %6211, float 1.000000e+00, float %6212
  %6214 = fmul fast float %6213, %6159
  %6215 = fmul fast float %6213, %6160
  %6216 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6217 = call float @dx.op.unary.f32(i32 6, float %6214)  ; FAbs(value)
  %6218 = fsub fast float 1.000000e+00, %6216
  %6219 = fsub fast float 1.000000e+00, %6217
  %6220 = fcmp fast oge float %6214, 0.000000e+00
  %6221 = fcmp fast oge float %6215, 0.000000e+00
  %6222 = select i1 %6220, float 1.000000e+00, float -1.000000e+00
  %6223 = select i1 %6221, float 1.000000e+00, float -1.000000e+00
  %6224 = fcmp fast ole float %6161, 0.000000e+00
  %6225 = fmul fast float %6222, %6218
  %6226 = fmul fast float %6223, %6219
  %6227 = select i1 %6224, float %6225, float %6214
  %6228 = select i1 %6224, float %6226, float %6215
  %6229 = fmul fast float %6227, 5.000000e-01
  %6230 = fmul fast float %6228, 5.000000e-01
  %6231 = fadd fast float %6229, 5.000000e-01
  %6232 = fadd fast float %6230, 5.000000e-01
  %6233 = uitofp i32 %5997 to float
  %6234 = call float @dx.op.binary.f32(i32 36, float %6205, float 3.000000e+00)  ; FMin(a,b)
  %6235 = fadd fast float %6234, 2.000000e+00
  %6236 = call float @dx.op.unary.f32(i32 21, float %6235)  ; Exp(value)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6238 = fmul fast float %6237, %6236
  %6239 = fmul fast float %6238, 2.000000e+00
  %6240 = fsub fast float 1.000000e+00, %6239
  %6241 = fmul fast float %6231, %6240
  %6242 = fmul fast float %6232, %6240
  %6243 = fadd fast float %6241, %6238
  %6244 = fadd fast float %6242, %6238
  %6245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6243, float %6244, float %6233, float undef, i32 0, i32 0, i32 undef, float %6205)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6246 = extractvalue %dx.types.ResRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.ResRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.ResRet.f32 %6245, 2
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6251 = fmul fast float %6250, %5967
  %6252 = call float @dx.op.binary.f32(i32 36, float %5519, float %6251)  ; FMin(a,b)
  %6253 = select i1 %6201, float %6252, float %6251
  %6254 = fmul fast float %6246, %6046
  %6255 = fmul fast float %6254, %6253
  %6256 = fmul fast float %6247, %6046
  %6257 = fmul fast float %6256, %6253
  %6258 = fmul fast float %6248, %6046
  %6259 = fmul fast float %6258, %6253
  %6260 = fadd fast float %6255, %5942
  %6261 = fadd fast float %6257, %5943
  %6262 = fadd fast float %6259, %5944
  %6263 = fsub fast float %5945, %6046
  br label %6048

; <label>:6264                                    ; preds = %6048
  br label %6265

; <label>:6265                                    ; preds = %6264, %5911
  %6266 = phi float [ %5912, %5911 ], [ %6049, %6264 ]
  %6267 = phi float [ %5913, %5911 ], [ %6050, %6264 ]
  %6268 = phi float [ %5914, %5911 ], [ %6051, %6264 ]
  %6269 = phi float [ %5915, %5911 ], [ %6052, %6264 ]
  %6270 = add i32 %5916, 1
  %6271 = icmp ugt i32 %6270, %5908
  br i1 %6271, label %6272, label %5911, !llvm.loop !102

; <label>:6272                                    ; preds = %6265
  br label %6273

; <label>:6273                                    ; preds = %6272, %5893
  %6274 = phi float [ 0.000000e+00, %5893 ], [ %6266, %6272 ]
  %6275 = phi float [ 0.000000e+00, %5893 ], [ %6267, %6272 ]
  %6276 = phi float [ 0.000000e+00, %5893 ], [ %6268, %6272 ]
  %6277 = call float @dx.op.dot3.f32(i32 55, float %6274, float %6275, float %6276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6278 = select i1 %257, float 0.000000e+00, float %6274
  %6279 = select i1 %257, float %6277, float %6275
  %6280 = select i1 %257, float 0.000000e+00, float %6276
  %6281 = fcmp fast olt float %5819, 0.000000e+00
  %6282 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %6283 = fmul fast float %6282, %5759
  %6284 = fmul fast float %6282, %5760
  %6285 = fmul fast float %6282, %5761
  %6286 = select i1 %6281, float %5759, float %6283
  %6287 = select i1 %6281, float %5760, float %6284
  %6288 = select i1 %6281, float %5761, float %6285
  %6289 = fsub fast float 1.000000e+00, %6282
  %6290 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6291 = fmul fast float %6290, %6278
  %6292 = fmul fast float %6290, %6279
  %6293 = fmul fast float %6290, %6280
  %6294 = fadd fast float %6286, %6291
  %6295 = fadd fast float %6287, %6292
  %6296 = fadd fast float %6288, %6293
  br label %6297

; <label>:6297                                    ; preds = %6273, %5802
  %6298 = phi float [ %5759, %5802 ], [ %6294, %6273 ]
  %6299 = phi float [ %5760, %5802 ], [ %6295, %6273 ]
  %6300 = phi float [ %5761, %5802 ], [ %6296, %6273 ]
  %6301 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fcmp fast ogt float %6301, 0x3E7FF19E20000000
  %6303 = fdiv fast float 1.000000e+00, %6301
  %6304 = select i1 %6302, float %6303, float 0.000000e+00
  %6305 = fmul fast float %6304, %5481
  %6306 = fmul fast float %6304, %5482
  %6307 = fmul fast float %6304, %5483
  %6308 = fadd fast float %6305, -1.000000e+00
  %6309 = fadd fast float %6306, -1.000000e+00
  %6310 = fadd fast float %6307, -1.000000e+00
  %6311 = fmul fast float %6308, 5.000000e-01
  %6312 = fmul fast float %6309, 5.000000e-01
  %6313 = fmul fast float %6310, 5.000000e-01
  %6314 = fadd fast float %6311, 1.000000e+00
  %6315 = fadd fast float %6312, 1.000000e+00
  %6316 = fadd fast float %6313, 1.000000e+00
  %6317 = fmul fast float %5808, %4308
  %6318 = fmul fast float %5808, %4309
  %6319 = fmul fast float %5808, %4310
  %6320 = fadd fast float %6317, -1.000000e+00
  %6321 = fadd fast float %6318, -1.000000e+00
  %6322 = fadd fast float %6319, -1.000000e+00
  %6323 = fmul fast float %6320, %4215
  %6324 = fmul fast float %6321, %4215
  %6325 = fmul fast float %6322, %4215
  %6326 = fmul fast float %6298, %5803
  %6327 = fmul fast float %6299, %5804
  %6328 = fmul fast float %6300, %5805
  %6329 = fsub fast float 1.000000e+00, %5492
  %6330 = bitcast float %6329 to i32
  %6331 = sitofp i32 %6330 to float
  %6332 = fmul fast float %6331, 5.000000e+00
  %6333 = fadd fast float %6332, 0xC1EFBF8940000000
  %6334 = fptosi float %6333 to i32
  %6335 = bitcast i32 %6334 to float
  %6336 = fmul fast float %6335, %4219
  %6337 = fmul fast float %5751, %6336
  %6338 = fmul fast float %6337, %5808
  %6339 = fmul fast float %6338, %6314
  %6340 = fmul fast float %5752, %6336
  %6341 = fmul fast float %6340, %5808
  %6342 = fmul fast float %6341, %6315
  %6343 = fmul fast float %5753, %6336
  %6344 = fmul fast float %6343, %5808
  %6345 = fmul fast float %6344, %6316
  %6346 = fadd fast float %6326, %4208
  %6347 = fadd fast float %6346, %6339
  %6348 = fmul fast float %6347, %4215
  %6349 = fadd fast float %6327, %4209
  %6350 = fadd fast float %6349, %6342
  %6351 = fmul fast float %6350, %4215
  %6352 = fadd fast float %6328, %4210
  %6353 = fadd fast float %6352, %6345
  %6354 = fmul fast float %6353, %4215
  %6355 = fadd fast float %6325, 1.000000e+00
  %6356 = fadd fast float %6324, 1.000000e+00
  %6357 = fadd fast float %6323, 1.000000e+00
  %6358 = fmul fast float %5808, %5753
  %6359 = fmul fast float %5808, %5752
  %6360 = fmul fast float %5808, %5751
  %6361 = fmul fast float %6357, %5755
  %6362 = fmul fast float %6356, %5756
  %6363 = fmul fast float %6355, %5757
  %6364 = fadd fast float %6361, %6360
  %6365 = fmul fast float %6364, %4215
  %6366 = fadd fast float %6362, %6359
  %6367 = fmul fast float %6366, %4215
  %6368 = fadd fast float %6363, %6358
  %6369 = fmul fast float %6368, %4215
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 3
  %6372 = fcmp fast oeq float %6371, 0.000000e+00
  br i1 %6372, label %8130, label %6373

; <label>:6373                                    ; preds = %6297
  %6374 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6370, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = select i1 %257, float %6382, float %6378
  %6386 = select i1 %257, float %6384, float %6379
  %6387 = select i1 %257, float %6383, float %6380
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6390 = fmul fast float %6389, %126
  %6391 = fmul fast float %6389, %127
  %6392 = fmul fast float %6389, %128
  %6393 = fadd fast float %6390, %198
  %6394 = fadd fast float %6391, %199
  %6395 = fadd fast float %6392, %200
  %6396 = fcmp fast olt float %6371, 0.000000e+00
  br i1 %6396, label %7654, label %6397

; <label>:6397                                    ; preds = %6373
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = fmul fast float %6399, %6393
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6400, float %6413)  ; FMad(a,b,c)
  %6415 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6401, float %6414)  ; FMad(a,b,c)
  %6416 = fadd fast float %6415, %6402
  %6417 = fmul fast float %6404, %6393
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6405, float %6417)  ; FMad(a,b,c)
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6406, float %6418)  ; FMad(a,b,c)
  %6420 = fadd fast float %6419, %6407
  %6421 = fmul fast float %6409, %6393
  %6422 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6410, float %6421)  ; FMad(a,b,c)
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6411, float %6422)  ; FMad(a,b,c)
  %6424 = fadd fast float %6423, %6412
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = fcmp fast une float %6426, 0.000000e+00
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6428, 3
  %6432 = fmul fast float %6431, %6416
  %6433 = fmul fast float %6431, %6420
  %6434 = fadd fast float %6432, %6429
  %6435 = fadd fast float %6433, %6430
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6440 = fmul fast float %6439, %6416
  %6441 = fmul fast float %6439, %6420
  %6442 = fadd fast float %6440, %6437
  %6443 = fadd fast float %6441, %6438
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6446 = fsub fast float %6445, %6424
  %6447 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6448 = fmul fast float %6446, %6447
  %6449 = fsub fast float 1.000000e+00, %6448
  %6450 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  br i1 %6427, label %6511, label %6451

; <label>:6451                                    ; preds = %6397
  %6452 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6455 = fadd fast float %6454, %6452
  %6456 = fcmp fast ogt float %6455, 0.000000e+00
  br i1 %6456, label %6457, label %6481

; <label>:6457                                    ; preds = %6451
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.CBufRet.f32 %6458, 1
  %6461 = fsub fast float %6442, %6459
  %6462 = fsub fast float %6443, %6460
  %6463 = fcmp fast olt float %6461, 0.000000e+00
  %6464 = fcmp fast olt float %6462, 0.000000e+00
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6469 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6470 = select i1 %6463, float %6466, float %6468
  %6471 = select i1 %6464, float %6467, float %6469
  %6472 = fmul fast float %6470, %6461
  %6473 = fmul fast float %6471, %6462
  %6474 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6475 = call float @dx.op.unary.f32(i32 6, float %6473)  ; FAbs(value)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6477 = call float @dx.op.binary.f32(i32 35, float %6474, float %6475)  ; FMax(a,b)
  %6478 = fsub fast float %6476, %6477
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = fmul fast float %6479, %6450
  br label %6481

; <label>:6481                                    ; preds = %6457, %6451
  %6482 = phi float [ %6480, %6457 ], [ 0.000000e+00, %6451 ]
  %6483 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6484 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6485 = fadd fast float %6484, %6483
  %6486 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6486, label %6487, label %6511

; <label>:6487                                    ; preds = %6481
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = fsub fast float %6434, %6489
  %6492 = fsub fast float %6435, %6490
  %6493 = fcmp fast olt float %6491, 0.000000e+00
  %6494 = fcmp fast olt float %6492, 0.000000e+00
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6500 = select i1 %6493, float %6496, float %6498
  %6501 = select i1 %6494, float %6497, float %6499
  %6502 = fmul fast float %6500, %6491
  %6503 = fmul fast float %6501, %6492
  %6504 = call float @dx.op.unary.f32(i32 6, float %6502)  ; FAbs(value)
  %6505 = call float @dx.op.unary.f32(i32 6, float %6503)  ; FAbs(value)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6507 = call float @dx.op.binary.f32(i32 35, float %6504, float %6505)  ; FMax(a,b)
  %6508 = fsub fast float %6506, %6507
  %6509 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6510 = fmul fast float %6509, %6450
  br label %6511

; <label>:6511                                    ; preds = %6487, %6481, %6397
  %6512 = phi float [ 0.000000e+00, %6397 ], [ %6510, %6487 ], [ 0.000000e+00, %6481 ]
  %6513 = phi float [ 0.000000e+00, %6397 ], [ %6482, %6487 ], [ %6482, %6481 ]
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 1
  %6520 = fsub fast float %6416, %6518
  %6521 = fsub fast float %6420, %6519
  %6522 = fcmp fast olt float %6520, 0.000000e+00
  %6523 = fcmp fast olt float %6521, 0.000000e+00
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6529 = select i1 %6522, float %6525, float %6527
  %6530 = select i1 %6523, float %6526, float %6528
  %6531 = fmul fast float %6529, %6520
  %6532 = fmul fast float %6530, %6521
  %6533 = call float @dx.op.unary.f32(i32 6, float %6531)  ; FAbs(value)
  %6534 = call float @dx.op.unary.f32(i32 6, float %6532)  ; FAbs(value)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6536 = call float @dx.op.binary.f32(i32 35, float %6533, float %6534)  ; FMax(a,b)
  %6537 = fsub fast float %6535, %6536
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6539 = call float @dx.op.binary.f32(i32 36, float %6538, float %6516)  ; FMin(a,b)
  %6540 = fmul fast float %6539, %6450
  %6541 = fsub fast float %6512, %6540
  %6542 = fsub fast float %6513, %6512
  %6543 = fsub fast float %6542, %6540
  %6544 = call float @dx.op.binary.f32(i32 35, float %6512, float %6513)  ; FMax(a,b)
  %6545 = call float @dx.op.binary.f32(i32 35, float %6540, float %6544)  ; FMax(a,b)
  %6546 = fcmp fast olt float %6545, 1.000000e+00
  br i1 %6546, label %6547, label %6945, !dx.controlflow.hints !104

; <label>:6547                                    ; preds = %6511
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = fcmp fast une float %6549, 0.000000e+00
  br i1 %6550, label %6551, label %6945, !dx.controlflow.hints !105

; <label>:6551                                    ; preds = %6547
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6567 = fmul fast float %6553, %6393
  %6568 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6554, float %6567)  ; FMad(a,b,c)
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6555, float %6568)  ; FMad(a,b,c)
  %6570 = fadd fast float %6569, %6556
  %6571 = fmul fast float %6558, %6393
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6559, float %6571)  ; FMad(a,b,c)
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6560, float %6572)  ; FMad(a,b,c)
  %6574 = fadd fast float %6573, %6561
  %6575 = fmul fast float %6563, %6393
  %6576 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6564, float %6575)  ; FMad(a,b,c)
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6565, float %6576)  ; FMad(a,b,c)
  %6578 = fadd fast float %6577, %6566
  %6579 = fcmp fast oge float %6570, 1.000000e+00
  %6580 = fcmp fast oge float %6574, 1.000000e+00
  %6581 = or i1 %6579, %6580
  %6582 = fcmp fast olt float %6570, 0.000000e+00
  %6583 = fcmp fast olt float %6574, 0.000000e+00
  %6584 = or i1 %6582, %6583
  %6585 = or i1 %6581, %6584
  br i1 %6585, label %6945, label %6586, !dx.controlflow.hints !106

; <label>:6586                                    ; preds = %6551
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.CBufRet.f32 %6587, 2
  %6591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.i32 %6591, 2
  %6593 = uitofp i32 %6592 to float
  %6594 = extractvalue %dx.types.CBufRet.i32 %6591, 3
  %6595 = uitofp i32 %6594 to float
  %6596 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6597 = fmul fast float %6596, 2.000000e+00
  %6598 = fsub fast float %6570, %6588
  %6599 = fsub fast float %6574, %6589
  %6600 = fmul fast float %6597, %6598
  %6601 = fmul fast float %6597, %6599
  %6602 = fdiv fast float 1.000000e+00, %6376
  %6603 = fmul fast float %6601, %6602
  %6604 = call float @dx.op.unary.f32(i32 6, float %6603)  ; FAbs(value)
  %6605 = fmul fast float %6590, %6395
  %6606 = fmul fast float %6605, %6597
  %6607 = call float @dx.op.unary.f32(i32 6, float %6606)  ; FAbs(value)
  %6608 = call float @dx.op.unary.f32(i32 6, float %6600)  ; FAbs(value)
  %6609 = call float @dx.op.binary.f32(i32 35, float %6607, float %6604)  ; FMax(a,b)
  %6610 = call float @dx.op.binary.f32(i32 35, float %6608, float %6609)  ; FMax(a,b)
  %6611 = fmul fast float %6610, 2.000000e+00
  %6612 = call float @dx.op.unary.f32(i32 23, float %6611)  ; Log(value)
  %6613 = call float @dx.op.binary.f32(i32 35, float %6612, float %6593)  ; FMax(a,b)
  %6614 = call float @dx.op.unary.f32(i32 22, float %6613)  ; Frc(value)
  %6615 = fadd fast float %6614, 0xBFEA666660000000
  %6616 = fmul fast float %6615, 8.000000e+00
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 27, float %6613)  ; Round_ni(value)
  %6619 = fadd fast float %6618, %6617
  %6620 = call float @dx.op.binary.f32(i32 36, float %6619, float %6595)  ; FMin(a,b)
  %6621 = call float @dx.op.unary.f32(i32 27, float %6620)  ; Round_ni(value)
  %6622 = fsub fast float -0.000000e+00, %6621
  %6623 = call float @dx.op.unary.f32(i32 21, float %6622)  ; Exp(value)
  %6624 = fmul fast float %6623, %6597
  %6625 = fmul fast float %6624, %6570
  %6626 = fmul fast float %6624, %6574
  %6627 = fmul fast float %6625, 2.500000e-01
  %6628 = fmul fast float %6626, 2.500000e-01
  %6629 = fadd fast float %6627, 5.000000e-01
  %6630 = fadd fast float %6628, 5.000000e-01
  %6631 = fsub fast float %6595, %6593
  %6632 = fptoui float %6631 to i32
  %6633 = add i32 %6632, 320
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6633)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6637 = fcmp fast une float %6620, %6595
  %6638 = fsub fast float %6570, %6635
  %6639 = fsub fast float %6574, %6636
  %6640 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6641 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6642 = fmul fast float %6640, %6624
  %6643 = fmul fast float %6641, %6624
  %6644 = fcmp fast olt float %6642, 1.000000e+00
  %6645 = fcmp fast olt float %6643, 1.000000e+00
  %6646 = and i1 %6644, %6645
  %6647 = or i1 %6637, %6646
  br i1 %6647, label %6648, label %6945, !dx.controlflow.hints !107

; <label>:6648                                    ; preds = %6586
  %6649 = fmul fast float %6626, 5.000000e-01
  %6650 = fmul fast float %6625, 5.000000e-01
  %6651 = fadd fast float %6649, 5.000000e-01
  %6652 = fadd fast float %6650, 5.000000e-01
  %6653 = sitofp i32 %6592 to float
  %6654 = fsub fast float %6620, %6653
  %6655 = call float @dx.op.unary.f32(i32 27, float %6654)  ; Round_ni(value)
  %6656 = call float @dx.op.unary.f32(i32 22, float %6620)  ; Frc(value)
  %6657 = call float @dx.op.unary.f32(i32 22, float %6652)  ; Frc(value)
  %6658 = call float @dx.op.unary.f32(i32 22, float %6651)  ; Frc(value)
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6657, float %6658, float %6655, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = fcmp fast ogt float %6656, 0.000000e+00
  br i1 %6664, label %6665, label %6686, !dx.controlflow.hints !108

; <label>:6665                                    ; preds = %6648
  %6666 = fadd fast float %6655, 1.000000e+00
  %6667 = call float @dx.op.unary.f32(i32 22, float %6629)  ; Frc(value)
  %6668 = call float @dx.op.unary.f32(i32 22, float %6630)  ; Frc(value)
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6667, float %6668, float %6666, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6669, 3
  %6674 = fsub fast float %6670, %6660
  %6675 = fsub fast float %6671, %6661
  %6676 = fsub fast float %6672, %6662
  %6677 = fsub fast float %6673, %6663
  %6678 = fmul fast float %6674, %6656
  %6679 = fmul fast float %6675, %6656
  %6680 = fmul fast float %6676, %6656
  %6681 = fmul fast float %6677, %6656
  %6682 = fadd fast float %6678, %6660
  %6683 = fadd fast float %6679, %6661
  %6684 = fadd fast float %6680, %6662
  %6685 = fadd fast float %6681, %6663
  br label %6686

; <label>:6686                                    ; preds = %6665, %6648
  %6687 = phi float [ %6682, %6665 ], [ %6660, %6648 ]
  %6688 = phi float [ %6683, %6665 ], [ %6661, %6648 ]
  %6689 = phi float [ %6684, %6665 ], [ %6662, %6648 ]
  %6690 = phi float [ %6685, %6665 ], [ %6663, %6648 ]
  %6691 = fadd fast float %6687, -5.000000e-01
  %6692 = fadd fast float %6689, -5.000000e-01
  %6693 = fmul fast float %6691, 0xBFD5555560000000
  %6694 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6692, float %6693)  ; FMad(a,b,c)
  %6695 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6688, float 0.000000e+00)  ; FMad(a,b,c)
  %6696 = fadd fast float %6695, %6690
  %6697 = fmul fast float %6691, -7.500000e-01
  %6698 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6692, float %6697)  ; FMad(a,b,c)
  %6699 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6688, float 0.000000e+00)  ; FMad(a,b,c)
  %6700 = fadd fast float %6699, %6690
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6708 = fsub fast float %6704, %6694
  %6709 = fsub fast float %6705, %6696
  %6710 = fsub fast float %6706, %6698
  %6711 = fsub fast float %6707, %6700
  %6712 = fmul fast float %6708, %6702
  %6713 = fmul fast float %6709, %6702
  %6714 = fmul fast float %6710, %6702
  %6715 = fmul fast float %6711, %6702
  %6716 = fadd fast float %6712, %6694
  %6717 = fadd fast float %6713, %6696
  %6718 = fadd fast float %6714, %6698
  %6719 = fadd fast float %6715, %6700
  %6720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6721 = extractvalue %dx.types.ResRet.i32 %6720, 0
  %6722 = and i32 %6721, 536870911
  %6723 = uitofp i32 %6722 to float
  %6724 = fmul fast float %6723, %6570
  %6725 = fmul fast float %6723, %6574
  %6726 = fptoui float %6724 to i32
  %6727 = fptoui float %6725 to i32
  %6728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6729 = extractvalue %dx.types.ResRet.i32 %6728, 0
  %6730 = and i32 %6729, 31
  %6731 = lshr i32 %6726, %6730
  %6732 = lshr i32 %6727, %6730
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = and i32 %6734, 31
  %6736 = shl i32 1, %6735
  %6737 = call i32 @dx.op.binary.i32(i32 40, i32 %6736, i32 4)  ; UMin(a,b)
  %6738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.i32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.i32 %6738, 1
  %6741 = icmp eq i32 %6737, 0
  br i1 %6741, label %6783, label %6742

; <label>:6742                                    ; preds = %6686
  br label %6743

; <label>:6743                                    ; preds = %6771, %6742
  %6744 = phi i32 [ %6774, %6771 ], [ 0, %6742 ]
  %6745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6746 = extractvalue %dx.types.ResRet.i32 %6745, 0
  %6747 = lshr i32 %6746, 16
  %6748 = and i32 %6747, 31
  %6749 = shl i32 %6732, %6748
  %6750 = add i32 %6749, %6731
  %6751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.i32 %6751, 0
  %6753 = and i32 %6752, 31
  %6754 = shl i32 %6750, %6753
  %6755 = add i32 %6754, %6744
  %6756 = shl i32 %6755, 2
  %6757 = add i32 %6756, 32
  %6758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6757, i32 undef)  ; BufferLoad(srv,index,wot)
  %6759 = extractvalue %dx.types.ResRet.i32 %6758, 0
  %6760 = icmp slt i32 %6759, 0
  %6761 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6744
  %6762 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6744
  %6763 = bitcast float* %6761 to i32*
  %6764 = bitcast float* %6762 to i32*
  br i1 %6760, label %6765, label %6771

; <label>:6765                                    ; preds = %6743
  %6766 = and i32 %6759, 1073741823
  %6767 = add nuw nsw i32 %6766, 20
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.i32 %6768, 1
  br label %6771

; <label>:6771                                    ; preds = %6765, %6743
  %6772 = phi i32 [ %6769, %6765 ], [ %6739, %6743 ]
  %6773 = phi i32 [ %6770, %6765 ], [ %6740, %6743 ]
  store i32 %6772, i32* %6763, align 4
  store i32 %6773, i32* %6764, align 4
  %6774 = add nuw i32 %6744, 1
  %6775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.i32 %6775, 2
  %6777 = icmp eq i32 %6776, 0
  %6778 = icmp ugt i32 %6759, -1073741825
  %6779 = and i1 %6778, %6777
  %6780 = icmp ult i32 %6774, %6737
  %6781 = and i1 %6779, %6780
  br i1 %6781, label %6743, label %6782

; <label>:6782                                    ; preds = %6771
  br label %6783

; <label>:6783                                    ; preds = %6782, %6686
  %6784 = phi i32 [ 0, %6686 ], [ %6774, %6782 ]
  %6785 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6786 = fptoui float %6785 to i32
  %6787 = icmp eq i32 %6786, 0
  br i1 %6787, label %6839, label %6788

; <label>:6788                                    ; preds = %6783
  br label %6789

; <label>:6789                                    ; preds = %6834, %6788
  %6790 = phi i32 [ %6835, %6834 ], [ %6784, %6788 ]
  %6791 = phi i32 [ %6836, %6834 ], [ 0, %6788 ]
  %6792 = lshr i32 %6791, 2
  %6793 = and i32 %6791, 3
  %6794 = add nuw nsw i32 %6792, 83
  %6795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6794)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.i32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.i32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.i32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.i32 %6795, 3
  %6800 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6796, i32* %6800, align 4
  %6801 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6797, i32* %6801, align 4
  %6802 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6798, i32* %6802, align 4
  %6803 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6799, i32* %6803, align 4
  %6804 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6793
  %6805 = load i32, i32* %6804, align 4, !tbaa !109, !noalias !113
  %6806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.i32 %6806, 0
  %6808 = lshr i32 %6807, 16
  %6809 = and i32 %6808, 31
  %6810 = shl i32 %6732, %6809
  %6811 = add i32 %6810, %6731
  %6812 = shl i32 %6811, 2
  %6813 = add i32 %6812, %6805
  %6814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6813, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.i32 %6814, 0
  %6816 = icmp eq i32 %6815, 0
  br i1 %6816, label %6834, label %6817

; <label>:6817                                    ; preds = %6789
  %6818 = icmp slt i32 %6815, 0
  %6819 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6790
  %6820 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6790
  %6821 = bitcast float* %6819 to i32*
  %6822 = bitcast float* %6820 to i32*
  br i1 %6818, label %6823, label %6830

; <label>:6823                                    ; preds = %6817
  %6824 = and i32 %6815, 1073741823
  %6825 = add i32 %6805, 20
  %6826 = add i32 %6825, %6824
  %6827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6826, i32 undef)  ; BufferLoad(srv,index,wot)
  %6828 = extractvalue %dx.types.ResRet.i32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.i32 %6827, 1
  br label %6830

; <label>:6830                                    ; preds = %6823, %6817
  %6831 = phi i32 [ %6828, %6823 ], [ %6739, %6817 ]
  %6832 = phi i32 [ %6829, %6823 ], [ %6740, %6817 ]
  store i32 %6831, i32* %6821, align 4
  store i32 %6832, i32* %6822, align 4
  %6833 = add i32 %6790, 1
  br label %6834

; <label>:6834                                    ; preds = %6830, %6789
  %6835 = phi i32 [ %6790, %6789 ], [ %6833, %6830 ]
  %6836 = add nuw i32 %6791, 1
  %6837 = icmp eq i32 %6836, %6786
  br i1 %6837, label %6838, label %6789

; <label>:6838                                    ; preds = %6834
  br label %6839

; <label>:6839                                    ; preds = %6838, %6783
  %6840 = phi i32 [ %6784, %6783 ], [ %6835, %6838 ]
  %6841 = icmp eq i32 %6840, 1
  %6842 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6843 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6841, label %6844, label %6847

; <label>:6844                                    ; preds = %6839
  %6845 = load float, float* %6842, align 4
  %6846 = load float, float* %6843, align 4
  br label %6874

; <label>:6847                                    ; preds = %6839
  %6848 = load float, float* %6842, align 4
  %6849 = load float, float* %6843, align 4
  %6850 = fdiv fast float 1.000000e+00, %6849
  %6851 = fsub fast float %6848, %6850
  %6852 = icmp ugt i32 %6840, 1
  br i1 %6852, label %6853, label %6869

; <label>:6853                                    ; preds = %6847
  br label %6854

; <label>:6854                                    ; preds = %6854, %6853
  %6855 = phi float [ %6864, %6854 ], [ %6851, %6853 ]
  %6856 = phi float [ %6865, %6854 ], [ %6848, %6853 ]
  %6857 = phi i32 [ %6866, %6854 ], [ 1, %6853 ]
  %6858 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6857
  %6859 = load float, float* %6858, align 4
  %6860 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6857
  %6861 = load float, float* %6860, align 4
  %6862 = fdiv fast float 1.000000e+00, %6861
  %6863 = fsub fast float %6859, %6862
  %6864 = call float @dx.op.binary.f32(i32 36, float %6855, float %6863)  ; FMin(a,b)
  %6865 = call float @dx.op.binary.f32(i32 35, float %6856, float %6859)  ; FMax(a,b)
  %6866 = add nuw i32 %6857, 1
  %6867 = icmp eq i32 %6866, %6840
  br i1 %6867, label %6868, label %6854

; <label>:6868                                    ; preds = %6854
  br label %6869

; <label>:6869                                    ; preds = %6868, %6847
  %6870 = phi float [ %6851, %6847 ], [ %6864, %6868 ]
  %6871 = phi float [ %6848, %6847 ], [ %6865, %6868 ]
  %6872 = fsub fast float %6871, %6870
  %6873 = fdiv fast float 1.000000e+00, %6872
  br label %6874

; <label>:6874                                    ; preds = %6869, %6844
  %6875 = phi float [ %6845, %6844 ], [ %6871, %6869 ]
  %6876 = phi float [ %6846, %6844 ], [ %6873, %6869 ]
  %6877 = fadd fast float %6578, %6875
  %6878 = fmul fast float %6877, %6876
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = fmul fast float %6879, 2.000000e+00
  %6881 = fsub fast float 1.000000e+00, %6880
  %6882 = fmul fast float %6716, %6716
  %6883 = fsub fast float %6717, %6882
  %6884 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6883)  ; FMax(a,b)
  %6885 = fdiv fast float 1.000000e+00, %6884
  %6886 = fmul fast float %6717, %6716
  %6887 = fsub fast float %6718, %6886
  %6888 = fsub fast float %6881, %6716
  %6889 = fmul fast float %6881, %6881
  %6890 = fsub fast float %6889, %6717
  %6891 = fmul fast float %6885, %6887
  %6892 = fmul fast float %6891, %6888
  %6893 = fsub fast float %6890, %6892
  %6894 = fmul fast float %6717, %6717
  %6895 = fsub fast float %6719, %6894
  %6896 = fmul fast float %6887, %6887
  %6897 = fmul fast float %6896, %6885
  %6898 = fsub fast float %6895, %6897
  %6899 = fdiv fast float %6893, %6898
  %6900 = fmul fast float %6899, %6887
  %6901 = fsub fast float %6888, %6900
  %6902 = fmul fast float %6901, %6885
  %6903 = fmul fast float %6902, %6716
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6899, %6717
  %6906 = fsub fast float %6904, %6905
  %6907 = fmul fast float %6902, %6902
  %6908 = fmul fast float %6899, 4.000000e+00
  %6909 = fmul fast float %6908, %6906
  %6910 = fsub fast float %6907, %6909
  %6911 = call float @dx.op.unary.f32(i32 24, float %6910)  ; Sqrt(value)
  %6912 = fcmp fast oge float %6902, 0.000000e+00
  %6913 = fsub fast float -0.000000e+00, %6911
  %6914 = select i1 %6912, float %6913, float %6911
  %6915 = fsub fast float %6914, %6902
  %6916 = fdiv fast float %6915, %6899
  %6917 = fdiv fast float %6906, %6915
  %6918 = fmul fast float %6916, 5.000000e-01
  %6919 = fmul fast float %6917, 2.000000e+00
  %6920 = select i1 %6912, float %6918, float %6919
  %6921 = select i1 %6912, float %6919, float %6918
  %6922 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6923 = call float @dx.op.binary.f32(i32 36, float %6920, float %6921)  ; FMin(a,b)
  %6924 = fcmp fast ogt float %6881, %6922
  %6925 = fsub fast float %6881, %6923
  %6926 = fsub fast float %6881, %6922
  %6927 = fsub fast float %6922, %6923
  %6928 = select i1 %6924, float %6926, float %6927
  %6929 = fmul float %6925, %6928
  %6930 = select i1 %6924, float %6923, float %6881
  %6931 = fcmp fast ogt float %6881, %6923
  %6932 = fmul fast float %6930, %6922
  %6933 = fadd fast float %6930, %6922
  %6934 = fmul fast float %6933, %6716
  %6935 = fadd fast float %6932, %6717
  %6936 = fsub fast float %6935, %6934
  %6937 = fdiv fast float %6936, %6929
  %6938 = select i1 %6931, float %6937, float 0.000000e+00
  %6939 = fsub fast float 1.000000e+00, %6938
  %6940 = select i1 %6924, float %6939, float %6938
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6943 = fmul fast float %6942, %6941
  %6944 = fsub fast float 1.000000e+00, %6943
  br label %6945

; <label>:6945                                    ; preds = %6874, %6586, %6551, %6547, %6511
  %6946 = phi float [ 1.000000e+00, %6511 ], [ %6944, %6874 ], [ 1.000000e+00, %6551 ], [ 1.000000e+00, %6586 ], [ 1.000000e+00, %6547 ]
  %6947 = fcmp fast ogt float %6543, 0.000000e+00
  br i1 %6947, label %6948, label %7112, !dx.controlflow.hints !122

; <label>:6948                                    ; preds = %6945
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6951 = fadd fast float %6950, %6424
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6957 = call float @dx.op.binary.f32(i32 35, float %6951, float 0.000000e+00)  ; FMax(a,b)
  %6958 = fadd fast float %6957, 0x3F10000000000000
  %6959 = fcmp fast oeq float %6956, 0.000000e+00
  br i1 %6959, label %6960, label %7027

; <label>:6960                                    ; preds = %6948
  %6961 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6962 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6963 = fmul fast float %6962, %6442
  %6964 = fmul fast float %6961, %6443
  %6965 = fadd fast float %6963, 5.000000e-01
  %6966 = call float @dx.op.unary.f32(i32 27, float %6965)  ; Round_ni(value)
  %6967 = fadd fast float %6964, 5.000000e-01
  %6968 = call float @dx.op.unary.f32(i32 27, float %6967)  ; Round_ni(value)
  %6969 = fsub fast float %6965, %6966
  %6970 = fsub fast float %6967, %6968
  %6971 = fadd fast float %6966, -5.000000e-01
  %6972 = fadd fast float %6968, -5.000000e-01
  %6973 = fmul fast float %6969, 2.000000e+00
  %6974 = fsub fast float 3.000000e+00, %6973
  %6975 = fadd fast float %6973, 1.000000e+00
  %6976 = fsub fast float 2.000000e+00, %6969
  %6977 = bitcast float %6974 to i32
  %6978 = sub nsw i32 2129859010, %6977
  %6979 = bitcast i32 %6978 to float
  %6980 = fmul fast float %6979, %6976
  %6981 = fadd fast float %6980, -1.000000e+00
  %6982 = bitcast float %6975 to i32
  %6983 = sub nsw i32 2129859010, %6982
  %6984 = bitcast i32 %6983 to float
  %6985 = fmul fast float %6984, %6969
  %6986 = fadd fast float %6985, 1.000000e+00
  %6987 = fmul fast float %6970, 2.000000e+00
  %6988 = fsub fast float 3.000000e+00, %6987
  %6989 = fadd fast float %6987, 1.000000e+00
  %6990 = fsub fast float 2.000000e+00, %6970
  %6991 = bitcast float %6988 to i32
  %6992 = sub nsw i32 2129859010, %6991
  %6993 = bitcast i32 %6992 to float
  %6994 = fmul fast float %6993, %6990
  %6995 = fadd fast float %6994, -1.000000e+00
  %6996 = bitcast float %6989 to i32
  %6997 = sub nsw i32 2129859010, %6996
  %6998 = bitcast i32 %6997 to float
  %6999 = fmul fast float %6998, %6970
  %7000 = fadd fast float %6999, 1.000000e+00
  %7001 = fadd fast float %6981, %6971
  %7002 = fmul fast float %7001, %6953
  %7003 = fadd fast float %6995, %6972
  %7004 = fmul fast float %7003, %6954
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7002, float %7004, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = fmul fast float %7006, %6974
  %7008 = fadd fast float %6986, %6971
  %7009 = fmul fast float %7008, %6953
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7009, float %7004, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = fmul fast float %7011, %6975
  %7013 = fadd fast float %7000, %6972
  %7014 = fmul fast float %7013, %6954
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7002, float %7014, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = fmul fast float %7016, %6974
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7009, float %7014, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = fmul fast float %7019, %6975
  %7021 = fadd fast float %7020, %7017
  %7022 = fmul fast float %7021, %6989
  %7023 = fadd fast float %7012, %7007
  %7024 = fmul fast float %7023, %6988
  %7025 = fadd fast float %7024, %7022
  %7026 = fmul fast float %7025, 6.250000e-02
  br label %7112

; <label>:7027                                    ; preds = %6948
  %7028 = fmul fast float %268, 0x401921FB60000000
  %7029 = call float @dx.op.unary.f32(i32 13, float %7028)  ; Sin(value)
  %7030 = call float @dx.op.unary.f32(i32 12, float %7028)  ; Cos(value)
  %7031 = fsub fast float -0.000000e+00, %7029
  br label %7032

; <label>:7032                                    ; preds = %7081, %7027
  %7033 = phi float [ 0.000000e+00, %7027 ], [ %7076, %7081 ]
  %7034 = phi float [ 0.000000e+00, %7027 ], [ %7078, %7081 ]
  %7035 = phi i32 [ 0, %7027 ], [ %7082, %7081 ]
  %7036 = mul i32 %7035, 2
  %7037 = add i32 0, %7036
  %7038 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7037
  %7039 = load float, float* %7038, align 4
  %7040 = mul i32 %7035, 2
  %7041 = add i32 1, %7040
  %7042 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7041
  %7043 = load float, float* %7042, align 4
  %7044 = fmul fast float %7039, %7030
  %7045 = call float @dx.op.tertiary.f32(i32 46, float %7043, float %7031, float %7044)  ; FMad(a,b,c)
  %7046 = fmul fast float %7039, %7029
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %7043, float %7030, float %7046)  ; FMad(a,b,c)
  %7048 = fmul fast float %7045, %6956
  %7049 = fmul fast float %7047, %6956
  %7050 = fadd fast float %7048, %6442
  %7051 = fadd fast float %7049, %6443
  %7052 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7050, float %7051, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.ResRet.f32 %7052, 3
  %7057 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %7053, float* %7057, align 4
  %7058 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %7054, float* %7058, align 4
  %7059 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %7055, float* %7059, align 4
  %7060 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %7056, float* %7060, align 4
  %7061 = fsub fast float %7053, %6958
  %7062 = fcmp fast olt float %7061, 0.000000e+00
  %7063 = select i1 %7062, float 0.000000e+00, float 1.000000e+00
  %7064 = fadd fast float %7063, %7033
  %7065 = fmul fast float %7063, %7061
  %7066 = fadd fast float %7065, %7034
  br label %7067

; <label>:7067                                    ; preds = %7067, %7032
  %7068 = phi i32 [ 1, %7032 ], [ %7079, %7067 ]
  %7069 = phi float [ %7066, %7032 ], [ %7078, %7067 ]
  %7070 = phi float [ %7064, %7032 ], [ %7076, %7067 ]
  %7071 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %7068
  %7072 = load float, float* %7071, align 4, !tbaa !123, !noalias !113
  %7073 = fsub fast float %7072, %6958
  %7074 = fcmp fast olt float %7073, 0.000000e+00
  %7075 = select i1 %7074, float 0.000000e+00, float 1.000000e+00
  %7076 = fadd fast float %7075, %7070
  %7077 = fmul fast float %7075, %7073
  %7078 = fadd fast float %7077, %7069
  %7079 = add nuw nsw i32 %7068, 1
  %7080 = icmp eq i32 %7079, 4
  br i1 %7080, label %7081, label %7067, !llvm.loop !125

; <label>:7081                                    ; preds = %7067
  %7082 = add nuw nsw i32 %7035, 1
  %7083 = icmp eq i32 %7082, 8
  br i1 %7083, label %7084, label %7032, !llvm.loop !126

; <label>:7084                                    ; preds = %7081
  %7085 = fdiv fast float 1.000000e+00, %7076
  %7086 = fmul fast float %7085, %7078
  %7087 = fdiv fast float 1.000000e+00, %6958
  %7088 = fmul fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = call float @dx.op.binary.f32(i32 35, float %7089, float 0.000000e+00)  ; FMax(a,b)
  %7091 = fmul fast float %7076, 3.125000e-02
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = fmul fast float %7092, 2.000000e+00
  %7094 = fadd fast float %7093, -1.000000e+00
  %7095 = fcmp fast ogt float %7094, 0.000000e+00
  %7096 = fcmp fast olt float %7094, 0.000000e+00
  %7097 = zext i1 %7095 to i32
  %7098 = zext i1 %7096 to i32
  %7099 = sub nsw i32 %7097, %7098
  %7100 = sitofp i32 %7099 to float
  %7101 = fmul fast float %7100, %7094
  %7102 = fsub fast float 1.000000e+00, %7101
  %7103 = fmul fast float %7102, %7102
  %7104 = fmul fast float %7103, %7102
  %7105 = fsub fast float %7102, %7104
  %7106 = fmul fast float %7105, %7090
  %7107 = fsub fast float 1.000000e+00, %7104
  %7108 = fsub fast float %7107, %7106
  %7109 = fmul fast float %7100, 5.000000e-01
  %7110 = fmul fast float %7109, %7108
  %7111 = fsub fast float 5.000000e-01, %7110
  br label %7112

; <label>:7112                                    ; preds = %7084, %6960, %6945
  %7113 = phi float [ 1.000000e+00, %6945 ], [ %7026, %6960 ], [ %7111, %7084 ]
  %7114 = fcmp fast ogt float %6541, 0.000000e+00
  br i1 %7114, label %7115, label %7279, !dx.controlflow.hints !127

; <label>:7115                                    ; preds = %7112
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7118 = fadd fast float %7117, %6424
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 3
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7124 = call float @dx.op.binary.f32(i32 35, float %7118, float 0.000000e+00)  ; FMax(a,b)
  %7125 = fadd fast float %7124, 0x3F10000000000000
  %7126 = fcmp fast oeq float %7123, 0.000000e+00
  br i1 %7126, label %7127, label %7194

; <label>:7127                                    ; preds = %7115
  %7128 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7129 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7130 = fmul fast float %7129, %6434
  %7131 = fmul fast float %7128, %6435
  %7132 = fadd fast float %7130, 5.000000e-01
  %7133 = call float @dx.op.unary.f32(i32 27, float %7132)  ; Round_ni(value)
  %7134 = fadd fast float %7131, 5.000000e-01
  %7135 = call float @dx.op.unary.f32(i32 27, float %7134)  ; Round_ni(value)
  %7136 = fsub fast float %7132, %7133
  %7137 = fsub fast float %7134, %7135
  %7138 = fadd fast float %7133, -5.000000e-01
  %7139 = fadd fast float %7135, -5.000000e-01
  %7140 = fmul fast float %7136, 2.000000e+00
  %7141 = fsub fast float 3.000000e+00, %7140
  %7142 = fadd fast float %7140, 1.000000e+00
  %7143 = fsub fast float 2.000000e+00, %7136
  %7144 = bitcast float %7141 to i32
  %7145 = sub nsw i32 2129859010, %7144
  %7146 = bitcast i32 %7145 to float
  %7147 = fmul fast float %7146, %7143
  %7148 = fadd fast float %7147, -1.000000e+00
  %7149 = bitcast float %7142 to i32
  %7150 = sub nsw i32 2129859010, %7149
  %7151 = bitcast i32 %7150 to float
  %7152 = fmul fast float %7151, %7136
  %7153 = fadd fast float %7152, 1.000000e+00
  %7154 = fmul fast float %7137, 2.000000e+00
  %7155 = fsub fast float 3.000000e+00, %7154
  %7156 = fadd fast float %7154, 1.000000e+00
  %7157 = fsub fast float 2.000000e+00, %7137
  %7158 = bitcast float %7155 to i32
  %7159 = sub nsw i32 2129859010, %7158
  %7160 = bitcast i32 %7159 to float
  %7161 = fmul fast float %7160, %7157
  %7162 = fadd fast float %7161, -1.000000e+00
  %7163 = bitcast float %7156 to i32
  %7164 = sub nsw i32 2129859010, %7163
  %7165 = bitcast i32 %7164 to float
  %7166 = fmul fast float %7165, %7137
  %7167 = fadd fast float %7166, 1.000000e+00
  %7168 = fadd fast float %7148, %7138
  %7169 = fmul fast float %7168, %7120
  %7170 = fadd fast float %7162, %7139
  %7171 = fmul fast float %7170, %7121
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7169, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7141
  %7175 = fadd fast float %7153, %7138
  %7176 = fmul fast float %7175, %7120
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7176, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = fmul fast float %7178, %7142
  %7180 = fadd fast float %7167, %7139
  %7181 = fmul fast float %7180, %7121
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7169, float %7181, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = fmul fast float %7183, %7141
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7176, float %7181, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = fmul fast float %7186, %7142
  %7188 = fadd fast float %7187, %7184
  %7189 = fmul fast float %7188, %7156
  %7190 = fadd fast float %7179, %7174
  %7191 = fmul fast float %7190, %7155
  %7192 = fadd fast float %7191, %7189
  %7193 = fmul fast float %7192, 6.250000e-02
  br label %7279

; <label>:7194                                    ; preds = %7115
  %7195 = fmul fast float %268, 0x401921FB60000000
  %7196 = call float @dx.op.unary.f32(i32 13, float %7195)  ; Sin(value)
  %7197 = call float @dx.op.unary.f32(i32 12, float %7195)  ; Cos(value)
  %7198 = fsub fast float -0.000000e+00, %7196
  br label %7199

; <label>:7199                                    ; preds = %7248, %7194
  %7200 = phi float [ 0.000000e+00, %7194 ], [ %7243, %7248 ]
  %7201 = phi float [ 0.000000e+00, %7194 ], [ %7245, %7248 ]
  %7202 = phi i32 [ 0, %7194 ], [ %7249, %7248 ]
  %7203 = mul i32 %7202, 2
  %7204 = add i32 0, %7203
  %7205 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7204
  %7206 = load float, float* %7205, align 4
  %7207 = mul i32 %7202, 2
  %7208 = add i32 1, %7207
  %7209 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7208
  %7210 = load float, float* %7209, align 4
  %7211 = fmul fast float %7206, %7197
  %7212 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7198, float %7211)  ; FMad(a,b,c)
  %7213 = fmul fast float %7206, %7196
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7197, float %7213)  ; FMad(a,b,c)
  %7215 = fmul fast float %7212, %7123
  %7216 = fmul fast float %7214, %7123
  %7217 = fadd fast float %7215, %6434
  %7218 = fadd fast float %7216, %6435
  %7219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7220 = extractvalue %dx.types.ResRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.ResRet.f32 %7219, 1
  %7222 = extractvalue %dx.types.ResRet.f32 %7219, 2
  %7223 = extractvalue %dx.types.ResRet.f32 %7219, 3
  %7224 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %7220, float* %7224, align 4
  %7225 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %7221, float* %7225, align 4
  %7226 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %7222, float* %7226, align 4
  %7227 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %7223, float* %7227, align 4
  %7228 = fsub fast float %7220, %7125
  %7229 = fcmp fast olt float %7228, 0.000000e+00
  %7230 = select i1 %7229, float 0.000000e+00, float 1.000000e+00
  %7231 = fadd fast float %7230, %7200
  %7232 = fmul fast float %7230, %7228
  %7233 = fadd fast float %7232, %7201
  br label %7234

; <label>:7234                                    ; preds = %7234, %7199
  %7235 = phi i32 [ 1, %7199 ], [ %7246, %7234 ]
  %7236 = phi float [ %7233, %7199 ], [ %7245, %7234 ]
  %7237 = phi float [ %7231, %7199 ], [ %7243, %7234 ]
  %7238 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %7235
  %7239 = load float, float* %7238, align 4, !tbaa !123, !noalias !113
  %7240 = fsub fast float %7239, %7125
  %7241 = fcmp fast olt float %7240, 0.000000e+00
  %7242 = select i1 %7241, float 0.000000e+00, float 1.000000e+00
  %7243 = fadd fast float %7242, %7237
  %7244 = fmul fast float %7242, %7240
  %7245 = fadd fast float %7244, %7236
  %7246 = add nuw nsw i32 %7235, 1
  %7247 = icmp eq i32 %7246, 4
  br i1 %7247, label %7248, label %7234, !llvm.loop !125

; <label>:7248                                    ; preds = %7234
  %7249 = add nuw nsw i32 %7202, 1
  %7250 = icmp eq i32 %7249, 8
  br i1 %7250, label %7251, label %7199, !llvm.loop !126

; <label>:7251                                    ; preds = %7248
  %7252 = fdiv fast float 1.000000e+00, %7243
  %7253 = fmul fast float %7252, %7245
  %7254 = fdiv fast float 1.000000e+00, %7125
  %7255 = fmul fast float %7253, %7254
  %7256 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7257 = call float @dx.op.binary.f32(i32 35, float %7256, float 0.000000e+00)  ; FMax(a,b)
  %7258 = fmul fast float %7243, 3.125000e-02
  %7259 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  %7260 = fmul fast float %7259, 2.000000e+00
  %7261 = fadd fast float %7260, -1.000000e+00
  %7262 = fcmp fast ogt float %7261, 0.000000e+00
  %7263 = fcmp fast olt float %7261, 0.000000e+00
  %7264 = zext i1 %7262 to i32
  %7265 = zext i1 %7263 to i32
  %7266 = sub nsw i32 %7264, %7265
  %7267 = sitofp i32 %7266 to float
  %7268 = fmul fast float %7267, %7261
  %7269 = fsub fast float 1.000000e+00, %7268
  %7270 = fmul fast float %7269, %7269
  %7271 = fmul fast float %7270, %7269
  %7272 = fsub fast float %7269, %7271
  %7273 = fmul fast float %7272, %7257
  %7274 = fsub fast float 1.000000e+00, %7271
  %7275 = fsub fast float %7274, %7273
  %7276 = fmul fast float %7267, 5.000000e-01
  %7277 = fmul fast float %7276, %7275
  %7278 = fsub fast float 5.000000e-01, %7277
  br label %7279

; <label>:7279                                    ; preds = %7251, %7127, %7112
  %7280 = phi float [ 1.000000e+00, %7112 ], [ %7193, %7127 ], [ %7278, %7251 ]
  %7281 = fcmp fast ogt float %6540, 0.000000e+00
  br i1 %7281, label %7282, label %7600, !dx.controlflow.hints !128

; <label>:7282                                    ; preds = %7279
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = fadd fast float %7284, %6424
  %7286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7286, 2
  %7288 = extractvalue %dx.types.CBufRet.f32 %7286, 3
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = call float @dx.op.binary.f32(i32 35, float %7285, float 0.000000e+00)  ; FMax(a,b)
  %7292 = fadd fast float %7291, 0x3F10000000000000
  %7293 = fcmp fast oeq float %7290, 0.000000e+00
  br i1 %6427, label %7294, label %7447, !dx.controlflow.hints !129

; <label>:7294                                    ; preds = %7282
  br i1 %7293, label %7295, label %7362

; <label>:7295                                    ; preds = %7294
  %7296 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7298 = fmul fast float %7297, %6416
  %7299 = fmul fast float %7296, %6420
  %7300 = fadd fast float %7298, 5.000000e-01
  %7301 = call float @dx.op.unary.f32(i32 27, float %7300)  ; Round_ni(value)
  %7302 = fadd fast float %7299, 5.000000e-01
  %7303 = call float @dx.op.unary.f32(i32 27, float %7302)  ; Round_ni(value)
  %7304 = fsub fast float %7300, %7301
  %7305 = fsub fast float %7302, %7303
  %7306 = fadd fast float %7301, -5.000000e-01
  %7307 = fadd fast float %7303, -5.000000e-01
  %7308 = fmul fast float %7304, 2.000000e+00
  %7309 = fsub fast float 3.000000e+00, %7308
  %7310 = fadd fast float %7308, 1.000000e+00
  %7311 = fsub fast float 2.000000e+00, %7304
  %7312 = bitcast float %7309 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7311
  %7316 = fadd fast float %7315, -1.000000e+00
  %7317 = bitcast float %7310 to i32
  %7318 = sub nsw i32 2129859010, %7317
  %7319 = bitcast i32 %7318 to float
  %7320 = fmul fast float %7319, %7304
  %7321 = fadd fast float %7320, 1.000000e+00
  %7322 = fmul fast float %7305, 2.000000e+00
  %7323 = fsub fast float 3.000000e+00, %7322
  %7324 = fadd fast float %7322, 1.000000e+00
  %7325 = fsub fast float 2.000000e+00, %7305
  %7326 = bitcast float %7323 to i32
  %7327 = sub nsw i32 2129859010, %7326
  %7328 = bitcast i32 %7327 to float
  %7329 = fmul fast float %7328, %7325
  %7330 = fadd fast float %7329, -1.000000e+00
  %7331 = bitcast float %7324 to i32
  %7332 = sub nsw i32 2129859010, %7331
  %7333 = bitcast i32 %7332 to float
  %7334 = fmul fast float %7333, %7305
  %7335 = fadd fast float %7334, 1.000000e+00
  %7336 = fadd fast float %7316, %7306
  %7337 = fmul fast float %7336, %7287
  %7338 = fadd fast float %7330, %7307
  %7339 = fmul fast float %7338, %7288
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7337, float %7339, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = fmul fast float %7341, %7309
  %7343 = fadd fast float %7321, %7306
  %7344 = fmul fast float %7343, %7287
  %7345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7344, float %7339, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7310
  %7348 = fadd fast float %7335, %7307
  %7349 = fmul fast float %7348, %7288
  %7350 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7337, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = fmul fast float %7351, %7309
  %7353 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7344, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7354 = extractvalue %dx.types.ResRet.f32 %7353, 0
  %7355 = fmul fast float %7354, %7310
  %7356 = fadd fast float %7355, %7352
  %7357 = fmul fast float %7356, %7324
  %7358 = fadd fast float %7347, %7342
  %7359 = fmul fast float %7358, %7323
  %7360 = fadd fast float %7359, %7357
  %7361 = fmul fast float %7360, 6.250000e-02
  br label %7600

; <label>:7362                                    ; preds = %7294
  %7363 = fmul fast float %268, 0x401921FB60000000
  %7364 = call float @dx.op.unary.f32(i32 13, float %7363)  ; Sin(value)
  %7365 = call float @dx.op.unary.f32(i32 12, float %7363)  ; Cos(value)
  %7366 = fsub fast float -0.000000e+00, %7364
  br label %7367

; <label>:7367                                    ; preds = %7416, %7362
  %7368 = phi float [ 0.000000e+00, %7362 ], [ %7411, %7416 ]
  %7369 = phi float [ 0.000000e+00, %7362 ], [ %7413, %7416 ]
  %7370 = phi i32 [ 0, %7362 ], [ %7417, %7416 ]
  %7371 = mul i32 %7370, 2
  %7372 = add i32 0, %7371
  %7373 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7372
  %7374 = load float, float* %7373, align 4
  %7375 = mul i32 %7370, 2
  %7376 = add i32 1, %7375
  %7377 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7376
  %7378 = load float, float* %7377, align 4
  %7379 = fmul fast float %7374, %7365
  %7380 = call float @dx.op.tertiary.f32(i32 46, float %7378, float %7366, float %7379)  ; FMad(a,b,c)
  %7381 = fmul fast float %7374, %7364
  %7382 = call float @dx.op.tertiary.f32(i32 46, float %7378, float %7365, float %7381)  ; FMad(a,b,c)
  %7383 = fmul fast float %7380, %7290
  %7384 = fmul fast float %7382, %7290
  %7385 = fadd fast float %7383, %6416
  %7386 = fadd fast float %7384, %6420
  %7387 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7385, float %7386, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.ResRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.ResRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.ResRet.f32 %7387, 3
  %7392 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %7388, float* %7392, align 4
  %7393 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %7389, float* %7393, align 4
  %7394 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %7390, float* %7394, align 4
  %7395 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %7391, float* %7395, align 4
  %7396 = fsub fast float %7388, %7292
  %7397 = fcmp fast olt float %7396, 0.000000e+00
  %7398 = select i1 %7397, float 0.000000e+00, float 1.000000e+00
  %7399 = fadd fast float %7398, %7368
  %7400 = fmul fast float %7398, %7396
  %7401 = fadd fast float %7400, %7369
  br label %7402

; <label>:7402                                    ; preds = %7402, %7367
  %7403 = phi i32 [ 1, %7367 ], [ %7414, %7402 ]
  %7404 = phi float [ %7401, %7367 ], [ %7413, %7402 ]
  %7405 = phi float [ %7399, %7367 ], [ %7411, %7402 ]
  %7406 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %7403
  %7407 = load float, float* %7406, align 4, !tbaa !123, !noalias !113
  %7408 = fsub fast float %7407, %7292
  %7409 = fcmp fast olt float %7408, 0.000000e+00
  %7410 = select i1 %7409, float 0.000000e+00, float 1.000000e+00
  %7411 = fadd fast float %7410, %7405
  %7412 = fmul fast float %7410, %7408
  %7413 = fadd fast float %7412, %7404
  %7414 = add nuw nsw i32 %7403, 1
  %7415 = icmp eq i32 %7414, 4
  br i1 %7415, label %7416, label %7402, !llvm.loop !125

; <label>:7416                                    ; preds = %7402
  %7417 = add nuw nsw i32 %7370, 1
  %7418 = icmp eq i32 %7417, 8
  br i1 %7418, label %7419, label %7367, !llvm.loop !126

; <label>:7419                                    ; preds = %7416
  %7420 = fdiv fast float 1.000000e+00, %7411
  %7421 = fmul fast float %7420, %7413
  %7422 = fdiv fast float 1.000000e+00, %7292
  %7423 = fmul fast float %7421, %7422
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7424, float 0.000000e+00)  ; FMax(a,b)
  %7426 = fmul fast float %7411, 3.125000e-02
  %7427 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7428 = fmul fast float %7427, 2.000000e+00
  %7429 = fadd fast float %7428, -1.000000e+00
  %7430 = fcmp fast ogt float %7429, 0.000000e+00
  %7431 = fcmp fast olt float %7429, 0.000000e+00
  %7432 = zext i1 %7430 to i32
  %7433 = zext i1 %7431 to i32
  %7434 = sub nsw i32 %7432, %7433
  %7435 = sitofp i32 %7434 to float
  %7436 = fmul fast float %7435, %7429
  %7437 = fsub fast float 1.000000e+00, %7436
  %7438 = fmul fast float %7437, %7437
  %7439 = fmul fast float %7438, %7437
  %7440 = fsub fast float %7437, %7439
  %7441 = fmul fast float %7440, %7425
  %7442 = fsub fast float 1.000000e+00, %7439
  %7443 = fsub fast float %7442, %7441
  %7444 = fmul fast float %7435, 5.000000e-01
  %7445 = fmul fast float %7444, %7443
  %7446 = fsub fast float 5.000000e-01, %7445
  br label %7600

; <label>:7447                                    ; preds = %7282
  br i1 %7293, label %7448, label %7515

; <label>:7448                                    ; preds = %7447
  %7449 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7450 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7451 = fmul fast float %7450, %6416
  %7452 = fmul fast float %7449, %6420
  %7453 = fadd fast float %7451, 5.000000e-01
  %7454 = call float @dx.op.unary.f32(i32 27, float %7453)  ; Round_ni(value)
  %7455 = fadd fast float %7452, 5.000000e-01
  %7456 = call float @dx.op.unary.f32(i32 27, float %7455)  ; Round_ni(value)
  %7457 = fsub fast float %7453, %7454
  %7458 = fsub fast float %7455, %7456
  %7459 = fadd fast float %7454, -5.000000e-01
  %7460 = fadd fast float %7456, -5.000000e-01
  %7461 = fmul fast float %7457, 2.000000e+00
  %7462 = fsub fast float 3.000000e+00, %7461
  %7463 = fadd fast float %7461, 1.000000e+00
  %7464 = fsub fast float 2.000000e+00, %7457
  %7465 = bitcast float %7462 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7464
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = bitcast float %7463 to i32
  %7471 = sub nsw i32 2129859010, %7470
  %7472 = bitcast i32 %7471 to float
  %7473 = fmul fast float %7472, %7457
  %7474 = fadd fast float %7473, 1.000000e+00
  %7475 = fmul fast float %7458, 2.000000e+00
  %7476 = fsub fast float 3.000000e+00, %7475
  %7477 = fadd fast float %7475, 1.000000e+00
  %7478 = fsub fast float 2.000000e+00, %7458
  %7479 = bitcast float %7476 to i32
  %7480 = sub nsw i32 2129859010, %7479
  %7481 = bitcast i32 %7480 to float
  %7482 = fmul fast float %7481, %7478
  %7483 = fadd fast float %7482, -1.000000e+00
  %7484 = bitcast float %7477 to i32
  %7485 = sub nsw i32 2129859010, %7484
  %7486 = bitcast i32 %7485 to float
  %7487 = fmul fast float %7486, %7458
  %7488 = fadd fast float %7487, 1.000000e+00
  %7489 = fadd fast float %7469, %7459
  %7490 = fmul fast float %7489, %7287
  %7491 = fadd fast float %7483, %7460
  %7492 = fmul fast float %7491, %7288
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7490, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = fmul fast float %7494, %7462
  %7496 = fadd fast float %7474, %7459
  %7497 = fmul fast float %7496, %7287
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7497, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7463
  %7501 = fadd fast float %7488, %7460
  %7502 = fmul fast float %7501, %7288
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7490, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = fmul fast float %7504, %7462
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7497, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7463
  %7509 = fadd fast float %7508, %7505
  %7510 = fmul fast float %7509, %7477
  %7511 = fadd fast float %7500, %7495
  %7512 = fmul fast float %7511, %7476
  %7513 = fadd fast float %7512, %7510
  %7514 = fmul fast float %7513, 6.250000e-02
  br label %7600

; <label>:7515                                    ; preds = %7447
  %7516 = fmul fast float %268, 0x401921FB60000000
  %7517 = call float @dx.op.unary.f32(i32 13, float %7516)  ; Sin(value)
  %7518 = call float @dx.op.unary.f32(i32 12, float %7516)  ; Cos(value)
  %7519 = fsub fast float -0.000000e+00, %7517
  br label %7520

; <label>:7520                                    ; preds = %7569, %7515
  %7521 = phi float [ 0.000000e+00, %7515 ], [ %7564, %7569 ]
  %7522 = phi float [ 0.000000e+00, %7515 ], [ %7566, %7569 ]
  %7523 = phi i32 [ 0, %7515 ], [ %7570, %7569 ]
  %7524 = mul i32 %7523, 2
  %7525 = add i32 0, %7524
  %7526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7525
  %7527 = load float, float* %7526, align 4
  %7528 = mul i32 %7523, 2
  %7529 = add i32 1, %7528
  %7530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7529
  %7531 = load float, float* %7530, align 4
  %7532 = fmul fast float %7527, %7518
  %7533 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7519, float %7532)  ; FMad(a,b,c)
  %7534 = fmul fast float %7527, %7517
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7518, float %7534)  ; FMad(a,b,c)
  %7536 = fmul fast float %7533, %7290
  %7537 = fmul fast float %7535, %7290
  %7538 = fadd fast float %7536, %6416
  %7539 = fadd fast float %7537, %6420
  %7540 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7538, float %7539, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %7541, float* %7545, align 4
  %7546 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %7542, float* %7546, align 4
  %7547 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %7543, float* %7547, align 4
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %7544, float* %7548, align 4
  %7549 = fsub fast float %7541, %7292
  %7550 = fcmp fast olt float %7549, 0.000000e+00
  %7551 = select i1 %7550, float 0.000000e+00, float 1.000000e+00
  %7552 = fadd fast float %7551, %7521
  %7553 = fmul fast float %7551, %7549
  %7554 = fadd fast float %7553, %7522
  br label %7555

; <label>:7555                                    ; preds = %7555, %7520
  %7556 = phi i32 [ 1, %7520 ], [ %7567, %7555 ]
  %7557 = phi float [ %7554, %7520 ], [ %7566, %7555 ]
  %7558 = phi float [ %7552, %7520 ], [ %7564, %7555 ]
  %7559 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %7556
  %7560 = load float, float* %7559, align 4, !tbaa !123, !noalias !113
  %7561 = fsub fast float %7560, %7292
  %7562 = fcmp fast olt float %7561, 0.000000e+00
  %7563 = select i1 %7562, float 0.000000e+00, float 1.000000e+00
  %7564 = fadd fast float %7563, %7558
  %7565 = fmul fast float %7563, %7561
  %7566 = fadd fast float %7565, %7557
  %7567 = add nuw nsw i32 %7556, 1
  %7568 = icmp eq i32 %7567, 4
  br i1 %7568, label %7569, label %7555, !llvm.loop !125

; <label>:7569                                    ; preds = %7555
  %7570 = add nuw nsw i32 %7523, 1
  %7571 = icmp eq i32 %7570, 8
  br i1 %7571, label %7572, label %7520, !llvm.loop !126

; <label>:7572                                    ; preds = %7569
  %7573 = fdiv fast float 1.000000e+00, %7564
  %7574 = fmul fast float %7573, %7566
  %7575 = fdiv fast float 1.000000e+00, %7292
  %7576 = fmul fast float %7574, %7575
  %7577 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7577, float 0.000000e+00)  ; FMax(a,b)
  %7579 = fmul fast float %7564, 3.125000e-02
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = fmul fast float %7580, 2.000000e+00
  %7582 = fadd fast float %7581, -1.000000e+00
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  %7584 = fcmp fast olt float %7582, 0.000000e+00
  %7585 = zext i1 %7583 to i32
  %7586 = zext i1 %7584 to i32
  %7587 = sub nsw i32 %7585, %7586
  %7588 = sitofp i32 %7587 to float
  %7589 = fmul fast float %7588, %7582
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, %7590
  %7592 = fmul fast float %7591, %7590
  %7593 = fsub fast float %7590, %7592
  %7594 = fmul fast float %7593, %7578
  %7595 = fsub fast float 1.000000e+00, %7592
  %7596 = fsub fast float %7595, %7594
  %7597 = fmul fast float %7588, 5.000000e-01
  %7598 = fmul fast float %7597, %7596
  %7599 = fsub fast float 5.000000e-01, %7598
  br label %7600

; <label>:7600                                    ; preds = %7572, %7448, %7419, %7295, %7279
  %7601 = phi float [ 1.000000e+00, %7279 ], [ %7361, %7295 ], [ %7446, %7419 ], [ %7514, %7448 ], [ %7599, %7572 ]
  %7602 = fsub fast float %7113, %6946
  %7603 = fmul fast float %7602, %6513
  %7604 = fadd fast float %7603, %6946
  %7605 = fsub fast float %7280, %7604
  %7606 = fmul fast float %7605, %6512
  %7607 = fadd fast float %7606, %7604
  %7608 = fsub fast float %7601, %7607
  %7609 = fmul fast float %7608, %6540
  %7610 = fadd fast float %7609, %7607
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  br i1 %7613, label %7614, label %7654, !dx.controlflow.hints !130

; <label>:7614                                    ; preds = %7600
  %7615 = fcmp fast ugt float %7612, 0.000000e+00
  br i1 %7615, label %7616, label %7651

; <label>:7616                                    ; preds = %7614
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7627 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7628 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.CBufRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.CBufRet.f32 %7629, 2
  %7633 = fadd fast float %7630, %6393
  %7634 = fadd fast float %7631, %6394
  %7635 = fadd fast float %7632, %6395
  %7636 = fmul fast float %7633, %7618
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7619, float %7634, float %7636)  ; FMad(a,b,c)
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7635, float %7637)  ; FMad(a,b,c)
  %7639 = fadd fast float %7638, %7621
  %7640 = fmul fast float %7633, %7623
  %7641 = call float @dx.op.tertiary.f32(i32 46, float %7624, float %7634, float %7640)  ; FMad(a,b,c)
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7635, float %7641)  ; FMad(a,b,c)
  %7643 = fadd fast float %7642, %7626
  %7644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7639, float %7643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7645 = extractvalue %dx.types.ResRet.f32 %7644, 0
  %7646 = fmul fast float %7645, %7628
  %7647 = fadd fast float %7646, %7627
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = fmul fast float %7648, %7612
  %7650 = fsub fast float 1.000000e+00, %7649
  br label %7651

; <label>:7651                                    ; preds = %7616, %7614
  %7652 = phi float [ %7650, %7616 ], [ 1.000000e+00, %7614 ]
  %7653 = fmul fast float %7652, %7610
  br label %7654

; <label>:7654                                    ; preds = %7651, %7600, %6373
  %7655 = phi float [ 1.000000e+00, %6373 ], [ %7653, %7651 ], [ %7610, %7600 ]
  %7656 = call float @dx.op.binary.f32(i32 36, float %7655, float %7655)  ; FMin(a,b)
  %7657 = call float @dx.op.binary.f32(i32 36, float %7655, float %7656)  ; FMin(a,b)
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  br i1 %7658, label %7659, label %7824, !dx.controlflow.hints !131

; <label>:7659                                    ; preds = %7654
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7663 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %7664 = extractvalue %dx.types.CBufRet.f32 %7660, 3
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7675 = fmul fast float %7661, %6393
  %7676 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7662, float %7675)  ; FMad(a,b,c)
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7663, float %7676)  ; FMad(a,b,c)
  %7678 = fadd fast float %7677, %7664
  %7679 = fmul fast float %7666, %6393
  %7680 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7667, float %7679)  ; FMad(a,b,c)
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7668, float %7680)  ; FMad(a,b,c)
  %7682 = fadd fast float %7681, %7669
  %7683 = fmul fast float %7671, %6393
  %7684 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7672, float %7683)  ; FMad(a,b,c)
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7673, float %7684)  ; FMad(a,b,c)
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.CBufRet.f32 %7686, 3
  %7690 = fmul fast float %7689, %7678
  %7691 = fmul fast float %7689, %7682
  %7692 = fadd fast float %7690, %7687
  %7693 = fadd fast float %7691, %7688
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.CBufRet.f32 %7694, 1
  %7697 = fsub fast float %7692, %7695
  %7698 = fsub fast float %7693, %7696
  %7699 = fcmp fast olt float %7697, 0.000000e+00
  %7700 = fcmp fast olt float %7698, 0.000000e+00
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7706 = select i1 %7699, float %7702, float %7704
  %7707 = select i1 %7700, float %7703, float %7705
  %7708 = fmul fast float %7706, %7697
  %7709 = fmul fast float %7707, %7698
  %7710 = call float @dx.op.unary.f32(i32 6, float %7708)  ; FAbs(value)
  %7711 = call float @dx.op.unary.f32(i32 6, float %7709)  ; FAbs(value)
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = call float @dx.op.binary.f32(i32 35, float %7710, float %7711)  ; FMax(a,b)
  %7715 = fsub fast float %7713, %7714
  %7716 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7717 = fcmp fast ogt float %7716, 0.000000e+00
  br i1 %7717, label %7718, label %7759, !dx.controlflow.hints !132

; <label>:7718                                    ; preds = %7659
  %7719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7692, float %7693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7720 = extractvalue %dx.types.ResRet.f32 %7719, 1
  %7721 = fcmp fast ogt float %7720, 0.000000e+00
  br i1 %7721, label %7722, label %7754

; <label>:7722                                    ; preds = %7718
  %7723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7692, float %7693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7724 = extractvalue %dx.types.ResRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.ResRet.f32 %7723, 1
  %7726 = extractvalue %dx.types.ResRet.f32 %7723, 2
  %7727 = extractvalue %dx.types.ResRet.f32 %7723, 3
  %7728 = fsub fast float 1.000000e+00, %7674
  %7729 = fsub fast float %7728, %7685
  %7730 = fmul fast float %7729, 0x400921FB60000000
  %7731 = fadd fast float %7730, 0x3FF921FB60000000
  %7732 = call float @dx.op.unary.f32(i32 13, float %7731)  ; Sin(value)
  %7733 = fadd fast float %7732, -1.000000e+00
  %7734 = fmul fast float %7733, 0x3FD45F3060000000
  %7735 = fmul fast float %7729, 0x401921FB60000000
  %7736 = fadd fast float %7735, 0x400921FB60000000
  %7737 = call float @dx.op.unary.f32(i32 13, float %7736)  ; Sin(value)
  %7738 = fadd fast float %7737, 0x3E7777A5C0000000
  %7739 = fmul fast float %7738, 0x3FC45F3060000000
  %7740 = fmul fast float %7729, 0x4022D97C80000000
  %7741 = fadd fast float %7740, 0x4012D97C80000000
  %7742 = call float @dx.op.unary.f32(i32 13, float %7741)  ; Sin(value)
  %7743 = fadd fast float %7742, 1.000000e+00
  %7744 = fmul fast float %7743, 0x3FBB2995E0000000
  %7745 = fmul fast float %7729, 0x402921FB60000000
  %7746 = fadd fast float %7745, 0x401921FB60000000
  %7747 = call float @dx.op.unary.f32(i32 13, float %7746)  ; Sin(value)
  %7748 = fadd fast float %7747, 0xBE8777A5C0000000
  %7749 = fmul fast float %7748, 0x3FB45F3060000000
  %7750 = call float @dx.op.dot4.f32(i32 56, float %7724, float %7725, float %7726, float %7727, float %7734, float %7739, float %7744, float %7749)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7751 = fmul fast float %7750, 0xBFF7154760000000
  %7752 = call float @dx.op.unary.f32(i32 21, float %7751)  ; Exp(value)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  br label %7754

; <label>:7754                                    ; preds = %7722, %7718
  %7755 = phi float [ %7753, %7722 ], [ 1.000000e+00, %7718 ]
  %7756 = fadd fast float %7755, -1.000000e+00
  %7757 = fmul fast float %7756, %7716
  %7758 = fadd fast float %7757, 1.000000e+00
  br label %7759

; <label>:7759                                    ; preds = %7754, %7659
  %7760 = phi float [ %7758, %7754 ], [ 1.000000e+00, %7659 ]
  %7761 = fmul fast float %7760, %7655
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7766 = fadd fast float %7763, %198
  %7767 = fadd fast float %7764, %199
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 1
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7774 = fsub fast float -0.000000e+00, %7766
  %7775 = fsub fast float -0.000000e+00, %7767
  %7776 = fsub fast float %5489, %7765
  %7777 = fadd fast float %7776, %7769
  %7778 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7774, float %7775, float %7777)  ; Dot3(ax,ay,az,bx,by,bz)
  %7779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7771, float %7772, float %7773)  ; Dot3(ax,ay,az,bx,by,bz)
  %7780 = fdiv fast float 1.000000e+00, %7779
  %7781 = fmul fast float %7780, %7778
  %7782 = fmul fast float %7771, %7781
  %7783 = fmul fast float %7772, %7781
  %7784 = fadd fast float %7782, %7766
  %7785 = fadd fast float %7783, %7767
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = fsub fast float %7784, %7787
  %7790 = fsub fast float %7785, %7788
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 3
  %7794 = fmul fast float %7789, %7792
  %7795 = fmul fast float %7790, %7793
  %7796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.i32 %7796, 3
  %7798 = icmp eq i32 %7797, 0
  br i1 %7798, label %7804, label %7799

; <label>:7799                                    ; preds = %7759
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7794, float %7795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  br label %7809

; <label>:7804                                    ; preds = %7759
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7794, float %7795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 0
  %7807 = extractvalue %dx.types.ResRet.f32 %7805, 1
  %7808 = extractvalue %dx.types.ResRet.f32 %7805, 2
  br label %7809

; <label>:7809                                    ; preds = %7804, %7799
  %7810 = phi float [ %7801, %7799 ], [ %7806, %7804 ]
  %7811 = phi float [ %7802, %7799 ], [ %7807, %7804 ]
  %7812 = phi float [ %7803, %7799 ], [ %7808, %7804 ]
  %7813 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7814 = fmul fast float %7813, %7810
  %7815 = extractvalue %dx.types.CBufRet.f32 %7768, 0
  %7816 = fsub fast float %7781, %7815
  %7817 = fsub fast float %7816, %7814
  %7818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7817)  ; FMax(a,b)
  %7819 = fmul fast float %7818, %7811
  %7820 = call float @dx.op.binary.f32(i32 36, float %7812, float %7819)  ; FMin(a,b)
  %7821 = fmul fast float %7820, 0xBFF7154760000000
  %7822 = call float @dx.op.unary.f32(i32 21, float %7821)  ; Exp(value)
  %7823 = fmul fast float %7761, %7822
  br label %7824

; <label>:7824                                    ; preds = %7809, %7654
  %7825 = phi float [ %7823, %7809 ], [ %7655, %7654 ]
  %7826 = call float @dx.op.binary.f32(i32 36, float %7825, float %7825)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7825, float %7826)  ; FMin(a,b)
  %7828 = fcmp fast ogt float %7827, 0.000000e+00
  br i1 %7828, label %7829, label %8130, !dx.controlflow.hints !133

; <label>:7829                                    ; preds = %7824
  %7830 = fmul fast float %7825, %6385
  %7831 = fmul fast float %7825, %6386
  %7832 = fmul fast float %7825, %6387
  %7833 = fsub fast float %200, %4688
  %7834 = fcmp fast ogt float %7833, 0.000000e+00
  %7835 = fmul fast float %6374, 5.120000e+02
  %7836 = fmul fast float %6375, 5.120000e+02
  %7837 = fmul fast float %6376, 5.120000e+02
  %7838 = fadd fast float %7837, %200
  %7839 = fsub fast float %4688, %7838
  %7840 = fmul fast float %7839, 2.000000e+00
  %7841 = fadd fast float %7840, %7838
  %7842 = select i1 %7834, float %7841, float %7838
  %7843 = fsub fast float %7842, %200
  %7844 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7843, float %7835, float %7836, float %7843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = call float @dx.op.unary.f32(i32 25, float %7844)  ; Rsqrt(value)
  %7846 = fmul fast float %7845, %7835
  %7847 = fmul fast float %7845, %7836
  %7848 = fmul fast float %7845, %7843
  %7849 = fsub fast float %4688, %200
  %7850 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7846, float %7847, float %7848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = fdiv fast float 1.000000e+00, %7851
  %7853 = fmul fast float %7852, %7850
  %7854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7833, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  %7856 = fcmp fast olt float %7854, 0.000000e+00
  %7857 = zext i1 %7855 to i32
  %7858 = zext i1 %7856 to i32
  %7859 = sub nsw i32 %7857, %7858
  %7860 = sitofp i32 %7859 to float
  %7861 = fsub fast float %7842, %4688
  %7862 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7861, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7863 = fcmp fast ogt float %7862, 0.000000e+00
  %7864 = fcmp fast olt float %7862, 0.000000e+00
  %7865 = zext i1 %7863 to i32
  %7866 = zext i1 %7864 to i32
  %7867 = sub nsw i32 %7865, %7866
  %7868 = sitofp i32 %7867 to float
  %7869 = fcmp fast une float %7860, %7868
  br i1 %7869, label %7870, label %7880

; <label>:7870                                    ; preds = %7829
  %7871 = fmul fast float %7853, %7848
  %7872 = fmul fast float %7853, %7847
  %7873 = fmul fast float %7853, %7846
  %7874 = fmul fast float %7873, %7873
  %7875 = fmul fast float %7872, %7872
  %7876 = fadd fast float %7874, %7875
  %7877 = fmul fast float %7871, %7871
  %7878 = fadd fast float %7876, %7877
  %7879 = call float @dx.op.unary.f32(i32 24, float %7878)  ; Sqrt(value)
  br label %7890

; <label>:7880                                    ; preds = %7829
  %7881 = icmp slt i32 %7859, 0
  br i1 %7881, label %7882, label %7890

; <label>:7882                                    ; preds = %7880
  %7883 = fsub fast float %200, %7842
  %7884 = fmul fast float %7835, %7835
  %7885 = fmul fast float %7836, %7836
  %7886 = fadd fast float %7884, %7885
  %7887 = fmul fast float %7883, %7883
  %7888 = fadd fast float %7886, %7887
  %7889 = call float @dx.op.unary.f32(i32 24, float %7888)  ; Sqrt(value)
  br label %7890

; <label>:7890                                    ; preds = %7882, %7880, %7870
  %7891 = phi float [ %7879, %7870 ], [ %7889, %7882 ], [ 0.000000e+00, %7880 ]
  %7892 = fsub fast float -0.000000e+00, %7891
  %7893 = select i1 %7834, float -0.000000e+00, float %7892
  %7894 = fmul fast float %4685, 0x3FF7154760000000
  %7895 = fmul fast float %7894, %7893
  %7896 = fmul fast float %4686, 0x3FF7154760000000
  %7897 = fmul fast float %7896, %7893
  %7898 = fmul fast float %4687, 0x3FF7154760000000
  %7899 = fmul fast float %7898, %7893
  %7900 = call float @dx.op.unary.f32(i32 21, float %7895)  ; Exp(value)
  %7901 = call float @dx.op.unary.f32(i32 21, float %7897)  ; Exp(value)
  %7902 = call float @dx.op.unary.f32(i32 21, float %7899)  ; Exp(value)
  %7903 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7904 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7905 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7906 = fmul fast float %7830, %7903
  %7907 = fmul fast float %7831, %7904
  %7908 = fmul fast float %7832, %7905
  %7909 = fsub fast float %6374, %5477
  %7910 = fsub fast float %6375, %5476
  %7911 = fsub fast float %6376, %5475
  %7912 = call float @dx.op.dot3.f32(i32 55, float %7909, float %7910, float %7911, float %7909, float %7910, float %7911)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = call float @dx.op.unary.f32(i32 25, float %7912)  ; Rsqrt(value)
  %7914 = fmul fast float %7913, %7909
  %7915 = fmul fast float %7913, %7910
  %7916 = fmul fast float %7913, %7911
  %7917 = call float @dx.op.dot3.f32(i32 55, float %6374, float %6375, float %6376, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5473, float %5472, float %7914, float %7915, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7919 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7920 = fmul fast float %7919, %7919
  %7921 = fmul fast float %7920, %5517
  %7922 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7923 = fmul fast float %7922, %7919
  %7924 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %7914, float %7915, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7925 = fmul fast float %7924, %7924
  %7926 = call float @dx.op.unary.f32(i32 6, float %7917)  ; FAbs(value)
  %7927 = fsub fast float 1.000000e+00, %5510
  %7928 = fmul fast float %5492, %5492
  %7929 = fmul fast float %7928, %7927
  %7930 = fadd fast float %7929, %5510
  %7931 = bitcast float %7930 to i32
  %7932 = ashr i32 %7931, 1
  %7933 = add nsw i32 %7932, 532487669
  %7934 = bitcast i32 %7933 to float
  %7935 = fadd fast float %7934, %5492
  %7936 = fmul fast float %5510, %7925
  %7937 = fsub fast float 1.000000e+00, %7925
  %7938 = fadd fast float %7937, %7936
  %7939 = fmul fast float %7926, %7926
  %7940 = fmul fast float %7939, %7927
  %7941 = fadd fast float %7940, %5510
  %7942 = bitcast float %7941 to i32
  %7943 = ashr i32 %7942, 1
  %7944 = add nsw i32 %7943, 532487669
  %7945 = bitcast i32 %7944 to float
  %7946 = fadd fast float %7945, %7926
  %7947 = fmul fast float %7938, %7938
  %7948 = fmul fast float %7947, %7935
  %7949 = fmul fast float %7948, %7946
  %7950 = fdiv fast float 0x3FF0A00000000000, %7949
  %7951 = fmul fast float %7950, %5510
  %7952 = call float @dx.op.unary.f32(i32 6, float %7918)  ; FAbs(value)
  %7953 = fsub fast float 1.000000e+00, %7952
  %7954 = bitcast float %7953 to i32
  %7955 = sitofp i32 %7954 to float
  %7956 = fmul fast float %7955, 5.000000e+00
  %7957 = fadd fast float %7956, 0xC1EFBF8940000000
  %7958 = fptosi float %7957 to i32
  %7959 = bitcast i32 %7958 to float
  %7960 = fsub fast float 1.000000e+00, %5478
  %7961 = fsub fast float 1.000000e+00, %5479
  %7962 = fsub fast float 1.000000e+00, %5490
  %7963 = fmul fast float %7959, %7960
  %7964 = fmul fast float %7959, %7961
  %7965 = fmul fast float %7959, %7962
  %7966 = fadd fast float %7963, %5478
  %7967 = fadd fast float %7964, %5479
  %7968 = fadd fast float %7965, %5490
  br i1 %5775, label %7969, label %7992

; <label>:7969                                    ; preds = %7890
  %7970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %7952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7971 = extractvalue %dx.types.ResRet.f32 %7970, 0
  %7972 = extractvalue %dx.types.ResRet.f32 %7970, 1
  %7973 = extractvalue %dx.types.ResRet.f32 %7970, 2
  %7974 = fadd fast float %7971, -5.000000e-01
  %7975 = fadd fast float %7972, -5.000000e-01
  %7976 = fadd fast float %7973, -5.000000e-01
  %7977 = fmul fast float %5478, 4.000000e+00
  %7978 = fmul fast float %7977, %7960
  %7979 = fmul fast float %7978, %7974
  %7980 = fmul fast float %5479, 4.000000e+00
  %7981 = fmul fast float %7980, %7961
  %7982 = fmul fast float %7981, %7975
  %7983 = fmul fast float %5490, 4.000000e+00
  %7984 = fmul fast float %7983, %7962
  %7985 = fmul fast float %7984, %7976
  %7986 = fadd fast float %7979, %7966
  %7987 = fadd fast float %7982, %7967
  %7988 = fadd fast float %7985, %7968
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7991 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  br label %7992

; <label>:7992                                    ; preds = %7969, %7890
  %7993 = phi float [ %7989, %7969 ], [ %7966, %7890 ]
  %7994 = phi float [ %7990, %7969 ], [ %7967, %7890 ]
  %7995 = phi float [ %7991, %7969 ], [ %7968, %7890 ]
  %7996 = fmul fast float %7917, 9.843750e-01
  %7997 = fadd fast float %7996, 7.812500e-03
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7997, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 3
  %8001 = fmul fast float %7999, %5478
  %8002 = fmul fast float %7999, %5479
  %8003 = fmul fast float %7999, %5490
  %8004 = fadd fast float %8001, %8000
  %8005 = fadd fast float %8002, %8000
  %8006 = fadd fast float %8003, %8000
  br i1 %5775, label %8007, label %8030

; <label>:8007                                    ; preds = %7992
  %8008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %7917, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8009 = extractvalue %dx.types.ResRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.ResRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.ResRet.f32 %8008, 2
  %8012 = fadd fast float %8009, -5.000000e-01
  %8013 = fadd fast float %8010, -5.000000e-01
  %8014 = fadd fast float %8011, -5.000000e-01
  %8015 = fmul fast float %5478, 4.000000e+00
  %8016 = fmul fast float %8015, %7960
  %8017 = fmul fast float %8016, %8012
  %8018 = fmul fast float %5479, 4.000000e+00
  %8019 = fmul fast float %8018, %7961
  %8020 = fmul fast float %8019, %8013
  %8021 = fmul fast float %5490, 4.000000e+00
  %8022 = fmul fast float %8021, %7962
  %8023 = fmul fast float %8022, %8014
  %8024 = fadd fast float %8017, %8004
  %8025 = fadd fast float %8020, %8005
  %8026 = fadd fast float %8023, %8006
  %8027 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8028 = call float @dx.op.unary.f32(i32 7, float %8025)  ; Saturate(value)
  %8029 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  br label %8030

; <label>:8030                                    ; preds = %8007, %7992
  %8031 = phi float [ %8027, %8007 ], [ %8004, %7992 ]
  %8032 = phi float [ %8028, %8007 ], [ %8005, %7992 ]
  %8033 = phi float [ %8029, %8007 ], [ %8006, %7992 ]
  %8034 = call float @dx.op.binary.f32(i32 35, float %8032, float %8033)  ; FMax(a,b)
  %8035 = call float @dx.op.binary.f32(i32 35, float %8031, float %8034)  ; FMax(a,b)
  %8036 = fsub fast float 1.000000e+00, %8035
  %8037 = fsub fast float -0.000000e+00, %5484
  %8038 = fsub fast float -0.000000e+00, %5485
  %8039 = fsub fast float -0.000000e+00, %5486
  %8040 = call float @dx.op.dot3.f32(i32 55, float %6374, float %6375, float %6376, float %8037, float %8038, float %8039)  ; Dot3(ax,ay,az,bx,by,bz)
  %8041 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  %8042 = fmul fast float %8041, 9.843750e-01
  %8043 = fadd fast float %8042, 7.812500e-03
  %8044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8043, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8045 = extractvalue %dx.types.ResRet.f32 %8044, 2
  %8046 = extractvalue %dx.types.ResRet.f32 %8044, 3
  %8047 = fmul fast float %8045, %5478
  %8048 = fmul fast float %8045, %5479
  %8049 = fmul fast float %8045, %5490
  %8050 = fadd fast float %8047, %8046
  %8051 = fadd fast float %8048, %8046
  %8052 = fadd fast float %8049, %8046
  br i1 %5775, label %8053, label %8076

; <label>:8053                                    ; preds = %8030
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %8041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8058 = fadd fast float %8055, -5.000000e-01
  %8059 = fadd fast float %8056, -5.000000e-01
  %8060 = fadd fast float %8057, -5.000000e-01
  %8061 = fmul fast float %5478, 4.000000e+00
  %8062 = fmul fast float %8061, %7960
  %8063 = fmul fast float %8062, %8058
  %8064 = fmul fast float %5479, 4.000000e+00
  %8065 = fmul fast float %8064, %7961
  %8066 = fmul fast float %8065, %8059
  %8067 = fmul fast float %5490, 4.000000e+00
  %8068 = fmul fast float %8067, %7962
  %8069 = fmul fast float %8068, %8060
  %8070 = fadd fast float %8063, %8050
  %8071 = fadd fast float %8066, %8051
  %8072 = fadd fast float %8069, %8052
  %8073 = call float @dx.op.unary.f32(i32 7, float %8070)  ; Saturate(value)
  %8074 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8075 = call float @dx.op.unary.f32(i32 7, float %8072)  ; Saturate(value)
  br label %8076

; <label>:8076                                    ; preds = %8053, %8030
  %8077 = phi float [ %8073, %8053 ], [ %8050, %8030 ]
  %8078 = phi float [ %8074, %8053 ], [ %8051, %8030 ]
  %8079 = phi float [ %8075, %8053 ], [ %8052, %8030 ]
  %8080 = call float @dx.op.binary.f32(i32 35, float %8078, float %8079)  ; FMax(a,b)
  %8081 = call float @dx.op.binary.f32(i32 35, float %8077, float %8080)  ; FMax(a,b)
  %8082 = fsub fast float 1.000000e+00, %8081
  %8083 = fmul fast float %8082, %8041
  %8084 = fmul fast float %8083, %4308
  %8085 = fmul fast float %8083, %4309
  %8086 = fmul fast float %8083, %4310
  %8087 = fmul fast float %7993, %7951
  %8088 = fmul fast float %7994, %7951
  %8089 = fmul fast float %7995, %7951
  %8090 = fsub fast float 1.000000e+00, %7918
  %8091 = bitcast float %8090 to i32
  %8092 = sitofp i32 %8091 to float
  %8093 = fmul fast float %8092, 5.000000e+00
  %8094 = fadd fast float %8093, 0xC1EFBF8940000000
  %8095 = fptosi float %8094 to i32
  %8096 = bitcast i32 %8095 to float
  %8097 = fmul fast float %8096, %4219
  %8098 = fmul fast float %8036, %8097
  %8099 = fmul fast float %8098, %6314
  %8100 = fmul fast float %8098, %6315
  %8101 = fmul fast float %8098, %6316
  %8102 = fmul fast float %8036, %7923
  %8103 = fadd fast float %8099, %8087
  %8104 = fadd fast float %8100, %8088
  %8105 = fadd fast float %8101, %8089
  %8106 = fadd fast float %8084, %8102
  %8107 = fadd fast float %8085, %8102
  %8108 = fadd fast float %8086, %8102
  %8109 = fmul fast float %8106, %7906
  %8110 = fmul fast float %8107, %7907
  %8111 = fmul fast float %8108, %7908
  %8112 = fmul fast float %7923, %7906
  %8113 = fmul fast float %8112, %8103
  %8114 = fmul fast float %7923, %7907
  %8115 = fmul fast float %8114, %8104
  %8116 = fmul fast float %7923, %7908
  %8117 = fmul fast float %8116, %8105
  %8118 = fadd fast float %8109, %6364
  %8119 = fmul fast float %8118, %4215
  %8120 = fadd fast float %8110, %6366
  %8121 = fmul fast float %8120, %4215
  %8122 = fadd fast float %8111, %6368
  %8123 = fmul fast float %8122, %4215
  %8124 = fadd fast float %8113, %6347
  %8125 = fmul fast float %8124, %4215
  %8126 = fadd fast float %8115, %6350
  %8127 = fmul fast float %8126, %4215
  %8128 = fadd fast float %8117, %6353
  %8129 = fmul fast float %8128, %4215
  br label %8130

; <label>:8130                                    ; preds = %8076, %7824, %6297
  %8131 = phi float [ %6348, %6297 ], [ %6348, %7824 ], [ %8125, %8076 ]
  %8132 = phi float [ %6351, %6297 ], [ %6351, %7824 ], [ %8127, %8076 ]
  %8133 = phi float [ %6354, %6297 ], [ %6354, %7824 ], [ %8129, %8076 ]
  %8134 = phi float [ %6365, %6297 ], [ %6365, %7824 ], [ %8119, %8076 ]
  %8135 = phi float [ %6367, %6297 ], [ %6367, %7824 ], [ %8121, %8076 ]
  %8136 = phi float [ %6369, %6297 ], [ %6369, %7824 ], [ %8123, %8076 ]
  %8137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.i32 %8137, 0
  %8139 = icmp eq i32 %8138, 0
  br i1 %8139, label %8857, label %8140

; <label>:8140                                    ; preds = %8130
  %8141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8141, 2
  %8143 = extractvalue %dx.types.CBufRet.f32 %8141, 3
  %8144 = fmul fast float %8142, %119
  %8145 = fmul fast float %8143, %120
  %8146 = fptoui float %8144 to i32
  %8147 = fptoui float %8145 to i32
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 0
  %8150 = extractvalue %dx.types.CBufRet.f32 %8148, 2
  %8151 = extractvalue %dx.types.CBufRet.f32 %8148, 3
  %8152 = fadd fast float %106, -4.000000e+00
  %8153 = call float @dx.op.binary.f32(i32 35, float %8152, float 0.000000e+00)  ; FMax(a,b)
  %8154 = fadd fast float %8153, %8149
  %8155 = fmul fast float %8154, %8150
  %8156 = call float @dx.op.unary.f32(i32 23, float %8155)  ; Log(value)
  %8157 = fmul fast float %8156, %8151
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 2
  %8160 = fmul fast float %8157, %8159
  %8161 = call float @dx.op.unary.f32(i32 7, float %8160)  ; Saturate(value)
  %8162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.i32 %8162, 1
  %8164 = add i32 %8163, -1
  %8165 = uitofp i32 %8163 to float
  %8166 = fmul fast float %8165, %8161
  %8167 = fptoui float %8166 to i32
  %8168 = call i32 @dx.op.binary.i32(i32 40, i32 %8167, i32 %8164)  ; UMin(a,b)
  %8169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.i32 %8169, 2
  %8171 = extractvalue %dx.types.CBufRet.i32 %8169, 3
  %8172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8147, i32 %8170, i32 %8146)  ; UMad(a,b,c)
  %8173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8168, i32 %8171, i32 %8172)  ; UMad(a,b,c)
  %8174 = add nsw i32 %8138, -1
  %8175 = call i32 @dx.op.binary.i32(i32 37, i32 %8174, i32 0)  ; IMax(a,b)
  %8176 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %8177 = fptoui float %8176 to i32
  %8178 = lshr i32 %8177, 5
  %8179 = call i32 @dx.op.binary.i32(i32 40, i32 %8178, i32 8191)  ; UMin(a,b)
  %8180 = shl i32 %8179, 2
  %8181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8180, i32 undef)  ; BufferLoad(srv,index,wot)
  %8182 = extractvalue %dx.types.ResRet.i32 %8181, 0
  %8183 = lshr i32 %8182, 16
  %8184 = and i32 %8182, 65535
  %8185 = lshr i32 %8182, 21
  %8186 = lshr i32 %8184, 5
  %8187 = call i32 @dx.op.binary.i32(i32 40, i32 %8186, i32 %8175)  ; UMin(a,b)
  %8188 = icmp ugt i32 %8185, %8187
  br i1 %8188, label %8857, label %8189

; <label>:8189                                    ; preds = %8140
  br label %8190

; <label>:8190                                    ; preds = %8847, %8189
  %8191 = phi i32 [ %8854, %8847 ], [ %8185, %8189 ]
  %8192 = phi float [ %8848, %8847 ], [ %8131, %8189 ]
  %8193 = phi float [ %8849, %8847 ], [ %8132, %8189 ]
  %8194 = phi float [ %8850, %8847 ], [ %8133, %8189 ]
  %8195 = phi float [ %8851, %8847 ], [ %8134, %8189 ]
  %8196 = phi float [ %8852, %8847 ], [ %8135, %8189 ]
  %8197 = phi float [ %8853, %8847 ], [ %8136, %8189 ]
  %8198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.i32 %8198, 0
  %8200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8173, i32 %8199, i32 %8191)  ; UMad(a,b,c)
  %8201 = shl i32 %8200, 2
  %8202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8201, i32 undef)  ; BufferLoad(srv,index,wot)
  %8203 = extractvalue %dx.types.ResRet.i32 %8202, 0
  %8204 = shl i32 %8191, 5
  %8205 = sub nsw i32 %8183, %8204
  %8206 = call i32 @dx.op.binary.i32(i32 37, i32 %8205, i32 0)  ; IMax(a,b)
  %8207 = call i32 @dx.op.binary.i32(i32 38, i32 %8206, i32 31)  ; IMin(a,b)
  %8208 = sub nsw i32 1, %8183
  %8209 = add nsw i32 %8208, %8184
  %8210 = call i32 @dx.op.binary.i32(i32 37, i32 %8209, i32 0)  ; IMax(a,b)
  %8211 = call i32 @dx.op.binary.i32(i32 38, i32 %8210, i32 32)  ; IMin(a,b)
  %8212 = and i32 %8211, 31
  %8213 = shl i32 -1, %8212
  %8214 = xor i32 %8213, -1
  %8215 = and i32 %8207, 31
  %8216 = shl i32 %8214, %8215
  %8217 = icmp eq i32 %8211, 32
  %8218 = select i1 %8217, i32 -1, i32 %8216
  %8219 = and i32 %8218, %8203
  %8220 = icmp eq i32 %8219, 0
  br i1 %8220, label %8847, label %8221

; <label>:8221                                    ; preds = %8190
  br label %8222

; <label>:8222                                    ; preds = %8356, %8221
  %8223 = phi i32 [ %8234, %8356 ], [ %8219, %8221 ]
  %8224 = phi float [ %8357, %8356 ], [ %8192, %8221 ]
  %8225 = phi float [ %8358, %8356 ], [ %8193, %8221 ]
  %8226 = phi float [ %8359, %8356 ], [ %8194, %8221 ]
  %8227 = phi float [ %8360, %8356 ], [ %8195, %8221 ]
  %8228 = phi float [ %8361, %8356 ], [ %8196, %8221 ]
  %8229 = phi float [ %8362, %8356 ], [ %8197, %8221 ]
  %8230 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8223)  ; FirstbitLo(value)
  %8231 = add i32 %8230, %8204
  %8232 = and i32 %8230, 31
  %8233 = shl i32 1, %8232
  %8234 = xor i32 %8233, %8223
  %8235 = mul i32 %8231, 112
  %8236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8235, i32 undef)  ; BufferLoad(srv,index,wot)
  %8237 = extractvalue %dx.types.ResRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.ResRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.ResRet.f32 %8236, 2
  %8240 = or i32 %8235, 12
  %8241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8240, i32 undef)  ; BufferLoad(srv,index,wot)
  %8242 = extractvalue %dx.types.ResRet.f32 %8241, 0
  %8243 = add i32 %8235, 16
  %8244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8243, i32 undef)  ; BufferLoad(srv,index,wot)
  %8245 = extractvalue %dx.types.ResRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.ResRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.ResRet.f32 %8244, 2
  %8248 = add i32 %8235, 28
  %8249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8248, i32 undef)  ; BufferLoad(srv,index,wot)
  %8250 = extractvalue %dx.types.ResRet.i32 %8249, 0
  %8251 = add i32 %8235, 44
  %8252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8251, i32 undef)  ; BufferLoad(srv,index,wot)
  %8253 = extractvalue %dx.types.ResRet.f32 %8252, 0
  %8254 = add i32 %8235, 48
  %8255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8254, i32 undef)  ; BufferLoad(srv,index,wot)
  %8256 = extractvalue %dx.types.ResRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.ResRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.ResRet.f32 %8255, 2
  %8259 = extractvalue %dx.types.ResRet.f32 %8255, 3
  %8260 = add i32 %8235, 64
  %8261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8260, i32 undef)  ; BufferLoad(srv,index,wot)
  %8262 = extractvalue %dx.types.ResRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.ResRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.ResRet.f32 %8261, 2
  %8265 = extractvalue %dx.types.ResRet.f32 %8261, 3
  %8266 = add i32 %8235, 80
  %8267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8266, i32 undef)  ; BufferLoad(srv,index,wot)
  %8268 = extractvalue %dx.types.ResRet.f32 %8267, 1
  %8269 = extractvalue %dx.types.ResRet.f32 %8267, 2
  %8270 = add i32 %8235, 92
  %8271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8270, i32 undef)  ; BufferLoad(srv,index,wot)
  %8272 = extractvalue %dx.types.ResRet.i32 %8271, 0
  %8273 = call float @dx.op.dot3.f32(i32 55, float %8237, float %8238, float %8239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8274 = select i1 %257, float %8268, float %8237
  %8275 = select i1 %257, float %8273, float %8238
  %8276 = select i1 %257, float %8269, float %8239
  %8277 = and i32 %8272, 65535
  %8278 = uitofp i32 %8277 to float
  %8279 = lshr i32 %8272, 16
  %8280 = uitofp i32 %8279 to float
  %8281 = and i32 %8250, 65535
  %8282 = and i32 %8250, 50331648
  %8283 = icmp eq i32 %8282, 33554432
  %8284 = fsub fast float %8256, %198
  %8285 = fsub fast float %8257, %199
  %8286 = fsub fast float %8258, %200
  %8287 = call float @dx.op.dot3.f32(i32 55, float %8284, float %8285, float %8286, float %8284, float %8285, float %8286)  ; Dot3(ax,ay,az,bx,by,bz)
  %8288 = call float @dx.op.unary.f32(i32 24, float %8287)  ; Sqrt(value)
  %8289 = fdiv fast float 1.000000e+00, %8288
  %8290 = fmul fast float %8289, %8284
  %8291 = fmul fast float %8289, %8285
  %8292 = fmul fast float %8289, %8286
  %8293 = fadd fast float %8288, %8242
  %8294 = fdiv fast float 1.000000e+00, %8293
  %8295 = fmul float %8253, %8294
  %8296 = fmul float %8295, %8295
  %8297 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  br i1 %8283, label %8298, label %8319

; <label>:8298                                    ; preds = %8222
  %8299 = fmul fast float %8264, %8245
  %8300 = fmul fast float %8264, %8246
  %8301 = fmul fast float %8264, %8247
  %8302 = fadd fast float %8284, %8299
  %8303 = fadd fast float %8285, %8300
  %8304 = fadd fast float %8286, %8301
  %8305 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8304, float %8302, float %8303, float %8304)  ; Dot3(ax,ay,az,bx,by,bz)
  %8306 = call float @dx.op.unary.f32(i32 25, float %8305)  ; Rsqrt(value)
  %8307 = fmul fast float %8306, %8302
  %8308 = fmul fast float %8306, %8303
  %8309 = fmul fast float %8306, %8304
  %8310 = fsub fast float %198, %8256
  %8311 = fsub fast float %199, %8257
  %8312 = fsub fast float %200, %8258
  %8313 = fsub fast float -0.000000e+00, %8310
  %8314 = fsub fast float -0.000000e+00, %8311
  %8315 = fsub fast float -0.000000e+00, %8312
  %8316 = call float @dx.op.dot3.f32(i32 55, float %8313, float %8314, float %8315, float %8245, float %8246, float %8247)  ; Dot3(ax,ay,az,bx,by,bz)
  %8317 = fcmp fast ogt float %8316, 0.000000e+00
  %8318 = uitofp i1 %8317 to float
  br label %8319

; <label>:8319                                    ; preds = %8298, %8222
  %8320 = phi float [ %8318, %8298 ], [ 1.000000e+00, %8222 ]
  %8321 = phi float [ %8307, %8298 ], [ %8290, %8222 ]
  %8322 = phi float [ %8308, %8298 ], [ %8291, %8222 ]
  %8323 = phi float [ %8309, %8298 ], [ %8292, %8222 ]
  %8324 = call float @dx.op.dot3.f32(i32 55, float %8245, float %8246, float %8247, float %8321, float %8322, float %8323)  ; Dot3(ax,ay,az,bx,by,bz)
  %8325 = fmul fast float %8324, %8324
  %8326 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8327 = fsub fast float 1.000000e+00, %8326
  %8328 = fmul fast float %8327, 5.000000e-01
  %8329 = fcmp fast ogt float %8324, 0.000000e+00
  %8330 = fsub fast float 1.000000e+00, %8328
  %8331 = select i1 %8329, float %8328, float %8330
  %8332 = fmul fast float %8331, %8280
  %8333 = fadd fast float %8332, %8278
  %8334 = fmul fast float %8333, 0x3EF0001000000000
  %8335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8334, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8336 = extractvalue %dx.types.ResRet.f32 %8335, 0
  %8337 = fmul fast float %8324, %8262
  %8338 = fadd fast float %8337, %8263
  %8339 = call float @dx.op.unary.f32(i32 7, float %8338)  ; Saturate(value)
  %8340 = select i1 %8283, float 1.000000e+00, float %8339
  %8341 = select i1 %8283, float %8339, float 1.000000e+00
  %8342 = fmul fast float %8288, %8259
  %8343 = fsub fast float 1.000000e+00, %8342
  %8344 = fmul fast float %8343, %8265
  %8345 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8346 = fmul fast float %8345, %8341
  %8347 = fmul fast float %8346, 2.000000e+00
  %8348 = fsub fast float 3.000000e+00, %8347
  %8349 = fmul fast float %8336, %8320
  %8350 = fmul fast float %8346, %8346
  %8351 = fmul fast float %8350, %8349
  %8352 = fmul fast float %8351, %8348
  %8353 = call float @dx.op.binary.f32(i32 36, float %8352, float %8352)  ; FMin(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8352, float %8353)  ; FMin(a,b)
  %8355 = fcmp fast ogt float %8354, 0.000000e+00
  br i1 %8355, label %8364, label %8356, !dx.controlflow.hints !134

; <label>:8356                                    ; preds = %8795, %8510, %8319
  %8357 = phi float [ %8224, %8510 ], [ %8224, %8319 ], [ %8843, %8795 ]
  %8358 = phi float [ %8225, %8510 ], [ %8225, %8319 ], [ %8844, %8795 ]
  %8359 = phi float [ %8226, %8510 ], [ %8226, %8319 ], [ %8845, %8795 ]
  %8360 = phi float [ %8227, %8510 ], [ %8227, %8319 ], [ %8834, %8795 ]
  %8361 = phi float [ %8228, %8510 ], [ %8228, %8319 ], [ %8835, %8795 ]
  %8362 = phi float [ %8229, %8510 ], [ %8229, %8319 ], [ %8836, %8795 ]
  %8363 = icmp eq i32 %8223, %8233
  br i1 %8363, label %8846, label %8222

; <label>:8364                                    ; preds = %8319
  %8365 = icmp eq i32 %8281, 255
  br i1 %8365, label %8510, label %8366, !dx.controlflow.hints !135

; <label>:8366                                    ; preds = %8364
  %8367 = mul nuw nsw i32 %8281, 176
  %8368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8367, i32 undef)  ; BufferLoad(srv,index,wot)
  %8369 = extractvalue %dx.types.ResRet.f32 %8368, 0
  %8370 = extractvalue %dx.types.ResRet.f32 %8368, 1
  %8371 = extractvalue %dx.types.ResRet.f32 %8368, 2
  %8372 = extractvalue %dx.types.ResRet.f32 %8368, 3
  %8373 = add nuw nsw i32 %8367, 16
  %8374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8373, i32 undef)  ; BufferLoad(srv,index,wot)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.ResRet.f32 %8374, 1
  %8377 = add nuw nsw i32 %8367, 32
  %8378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8377, i32 undef)  ; BufferLoad(srv,index,wot)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = add nuw nsw i32 %8367, 48
  %8383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8382, i32 undef)  ; BufferLoad(srv,index,wot)
  %8384 = extractvalue %dx.types.ResRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.ResRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.ResRet.f32 %8383, 2
  %8387 = extractvalue %dx.types.ResRet.f32 %8383, 3
  %8388 = add nuw nsw i32 %8367, 64
  %8389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8388, i32 undef)  ; BufferLoad(srv,index,wot)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.ResRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.ResRet.f32 %8389, 2
  %8393 = extractvalue %dx.types.ResRet.f32 %8389, 3
  %8394 = add nuw nsw i32 %8367, 80
  %8395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8394, i32 undef)  ; BufferLoad(srv,index,wot)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = extractvalue %dx.types.ResRet.f32 %8395, 3
  %8400 = add nuw nsw i32 %8367, 96
  %8401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8400, i32 undef)  ; BufferLoad(srv,index,wot)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8405 = extractvalue %dx.types.ResRet.f32 %8401, 3
  %8406 = bitcast float %8376 to i32
  %8407 = fmul fast float %8381, %126
  %8408 = fmul fast float %8381, %127
  %8409 = fmul fast float %8381, %128
  %8410 = fadd fast float %8407, %198
  %8411 = fadd fast float %8408, %199
  %8412 = fadd fast float %8409, %200
  %8413 = fmul fast float %8410, %8384
  %8414 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8390, float %8413)  ; FMad(a,b,c)
  %8415 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8396, float %8414)  ; FMad(a,b,c)
  %8416 = fadd fast float %8415, %8402
  %8417 = fmul fast float %8410, %8385
  %8418 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8391, float %8417)  ; FMad(a,b,c)
  %8419 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8397, float %8418)  ; FMad(a,b,c)
  %8420 = fadd fast float %8419, %8403
  %8421 = fmul fast float %8410, %8386
  %8422 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8392, float %8421)  ; FMad(a,b,c)
  %8423 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8398, float %8422)  ; FMad(a,b,c)
  %8424 = fadd fast float %8423, %8404
  %8425 = fmul fast float %8410, %8387
  %8426 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8393, float %8425)  ; FMad(a,b,c)
  %8427 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8399, float %8426)  ; FMad(a,b,c)
  %8428 = fadd fast float %8427, %8405
  %8429 = fdiv fast float %8416, %8428
  %8430 = fdiv fast float %8420, %8428
  %8431 = fdiv fast float %8424, %8428
  %8432 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8431)  ; FMax(a,b)
  %8433 = fmul fast float %268, 0x401921FB60000000
  %8434 = call float @dx.op.unary.f32(i32 13, float %8433)  ; Sin(value)
  %8435 = call float @dx.op.unary.f32(i32 12, float %8433)  ; Cos(value)
  %8436 = fmul fast float %8435, %8380
  %8437 = call float @dx.op.tertiary.f32(i32 46, float %8434, float %8380, float 0.000000e+00)  ; FMad(a,b,c)
  %8438 = fmul fast float %8380, %8434
  %8439 = fsub fast float -0.000000e+00, %8438
  %8440 = call float @dx.op.tertiary.f32(i32 46, float %8435, float %8380, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8441

; <label>:8441                                    ; preds = %8441, %8366
  %8442 = phi float [ 0.000000e+00, %8366 ], [ %8474, %8441 ]
  %8443 = phi float [ 0.000000e+00, %8366 ], [ %8476, %8441 ]
  %8444 = phi i32 [ 0, %8366 ], [ %8477, %8441 ]
  %8445 = mul i32 %8444, 2
  %8446 = add i32 0, %8445
  %8447 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8446
  %8448 = load float, float* %8447, align 4
  %8449 = mul i32 %8444, 2
  %8450 = add i32 1, %8449
  %8451 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8450
  %8452 = load float, float* %8451, align 4
  %8453 = fmul fast float %8436, %8448
  %8454 = call float @dx.op.tertiary.f32(i32 46, float %8452, float %8439, float %8453)  ; FMad(a,b,c)
  %8455 = fmul fast float %8448, %8437
  %8456 = call float @dx.op.tertiary.f32(i32 46, float %8452, float %8440, float %8455)  ; FMad(a,b,c)
  %8457 = fadd fast float %8454, %8429
  %8458 = fadd fast float %8456, %8430
  %8459 = fmul fast float %8457, %8375
  %8460 = fmul fast float %8458, %8375
  %8461 = call float @dx.op.binary.f32(i32 35, float %8459, float %8371)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float %8460, float %8371)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8461, float %8372)  ; FMin(a,b)
  %8464 = call float @dx.op.binary.f32(i32 36, float %8462, float %8372)  ; FMin(a,b)
  %8465 = fadd fast float %8463, %8369
  %8466 = fadd fast float %8464, %8370
  %8467 = uitofp i32 %8406 to float
  %8468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8465, float %8466, float %8467, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 0
  %8470 = fsub fast float %8469, %8432
  %8471 = fsub fast float %8470, %8379
  %8472 = fcmp fast ogt float %8471, 0.000000e+00
  %8473 = select i1 %8472, float 1.000000e+00, float 0.000000e+00
  %8474 = fadd fast float %8473, %8442
  %8475 = select i1 %8472, float %8471, float 0.000000e+00
  %8476 = fadd fast float %8475, %8443
  %8477 = add nuw nsw i32 %8444, 1
  %8478 = icmp eq i32 %8477, 8
  br i1 %8478, label %8479, label %8441

; <label>:8479                                    ; preds = %8441
  %8480 = fdiv fast float 1.000000e+00, %8474
  %8481 = fmul fast float %8480, %8476
  %8482 = fdiv fast float 1.000000e+00, %8432
  %8483 = fmul fast float %8481, %8482
  %8484 = call float @dx.op.unary.f32(i32 7, float %8483)  ; Saturate(value)
  %8485 = call float @dx.op.binary.f32(i32 35, float %8484, float 0.000000e+00)  ; FMax(a,b)
  %8486 = fmul fast float %8474, 1.250000e-01
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fmul fast float %8487, 2.000000e+00
  %8489 = fadd fast float %8488, -1.000000e+00
  %8490 = fcmp fast ogt float %8489, 0.000000e+00
  %8491 = fcmp fast olt float %8489, 0.000000e+00
  %8492 = zext i1 %8490 to i32
  %8493 = zext i1 %8491 to i32
  %8494 = sub nsw i32 %8492, %8493
  %8495 = sitofp i32 %8494 to float
  %8496 = fmul fast float %8495, %8489
  %8497 = fsub fast float 1.000000e+00, %8496
  %8498 = fmul fast float %8497, %8497
  %8499 = fmul fast float %8498, %8497
  %8500 = fsub fast float %8497, %8499
  %8501 = fmul fast float %8500, %8485
  %8502 = fsub fast float 1.000000e+00, %8499
  %8503 = fsub fast float %8502, %8501
  %8504 = fmul fast float %8495, 5.000000e-01
  %8505 = fmul fast float %8504, %8503
  %8506 = fsub fast float -5.000000e-01, %8505
  %8507 = fmul fast float %8506, %8340
  %8508 = fadd fast float %8507, 1.000000e+00
  %8509 = fmul fast float %8508, %8352
  br label %8510

; <label>:8510                                    ; preds = %8479, %8364
  %8511 = phi float [ %8509, %8479 ], [ %8352, %8364 ]
  %8512 = call float @dx.op.binary.f32(i32 36, float %8511, float %8511)  ; FMin(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8511, float %8512)  ; FMin(a,b)
  %8514 = fcmp fast ogt float %8513, 0.000000e+00
  br i1 %8514, label %8515, label %8356, !dx.controlflow.hints !136

; <label>:8515                                    ; preds = %8510
  %8516 = fmul fast float %8511, %8274
  %8517 = fmul fast float %8511, %8275
  %8518 = fmul fast float %8511, %8276
  %8519 = fsub fast float %8258, %4688
  %8520 = fcmp fast ogt float %8519, 0.000000e+00
  %8521 = fsub fast float %200, %4688
  %8522 = fcmp fast ogt float %8521, 0.000000e+00
  %8523 = xor i1 %8522, %8520
  %8524 = fsub fast float %4688, %8258
  %8525 = fmul fast float %8524, 2.000000e+00
  %8526 = fadd fast float %8525, %8258
  %8527 = select i1 %8523, float %8258, float %8526
  %8528 = fsub fast float %8527, %200
  %8529 = call float @dx.op.dot3.f32(i32 55, float %8284, float %8285, float %8528, float %8284, float %8285, float %8528)  ; Dot3(ax,ay,az,bx,by,bz)
  %8530 = call float @dx.op.unary.f32(i32 25, float %8529)  ; Rsqrt(value)
  %8531 = fmul fast float %8530, %8284
  %8532 = fmul fast float %8530, %8285
  %8533 = fmul fast float %8530, %8528
  %8534 = fsub fast float %4688, %200
  %8535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8534)  ; Dot3(ax,ay,az,bx,by,bz)
  %8536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8531, float %8532, float %8533)  ; Dot3(ax,ay,az,bx,by,bz)
  %8537 = fdiv fast float 1.000000e+00, %8536
  %8538 = fmul fast float %8537, %8535
  %8539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8521, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8540 = fcmp fast ogt float %8539, 0.000000e+00
  %8541 = fcmp fast olt float %8539, 0.000000e+00
  %8542 = zext i1 %8540 to i32
  %8543 = zext i1 %8541 to i32
  %8544 = sub nsw i32 %8542, %8543
  %8545 = sitofp i32 %8544 to float
  %8546 = fsub fast float %8527, %4688
  %8547 = call float @dx.op.dot3.f32(i32 55, float %8284, float %8285, float %8546, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8548 = fcmp fast ogt float %8547, 0.000000e+00
  %8549 = fcmp fast olt float %8547, 0.000000e+00
  %8550 = zext i1 %8548 to i32
  %8551 = zext i1 %8549 to i32
  %8552 = sub nsw i32 %8550, %8551
  %8553 = sitofp i32 %8552 to float
  %8554 = fcmp fast une float %8545, %8553
  br i1 %8554, label %8555, label %8565

; <label>:8555                                    ; preds = %8515
  %8556 = fmul fast float %8538, %8533
  %8557 = fmul fast float %8538, %8532
  %8558 = fmul fast float %8538, %8531
  %8559 = fmul fast float %8558, %8558
  %8560 = fmul fast float %8557, %8557
  %8561 = fadd fast float %8559, %8560
  %8562 = fmul fast float %8556, %8556
  %8563 = fadd fast float %8561, %8562
  %8564 = call float @dx.op.unary.f32(i32 24, float %8563)  ; Sqrt(value)
  br label %8577

; <label>:8565                                    ; preds = %8515
  %8566 = icmp slt i32 %8544, 0
  br i1 %8566, label %8567, label %8577

; <label>:8567                                    ; preds = %8565
  %8568 = fsub fast float %198, %8256
  %8569 = fsub fast float %199, %8257
  %8570 = fsub fast float %200, %8527
  %8571 = fmul fast float %8568, %8568
  %8572 = fmul fast float %8569, %8569
  %8573 = fadd fast float %8571, %8572
  %8574 = fmul fast float %8570, %8570
  %8575 = fadd fast float %8573, %8574
  %8576 = call float @dx.op.unary.f32(i32 24, float %8575)  ; Sqrt(value)
  br label %8577

; <label>:8577                                    ; preds = %8567, %8565, %8555
  %8578 = phi float [ %8564, %8555 ], [ %8576, %8567 ], [ 0.000000e+00, %8565 ]
  %8579 = and i1 %8522, %8520
  %8580 = fsub fast float -0.000000e+00, %8578
  %8581 = select i1 %8579, float -0.000000e+00, float %8580
  %8582 = fmul fast float %4685, 0x3FF7154760000000
  %8583 = fmul fast float %8582, %8581
  %8584 = fmul fast float %4686, 0x3FF7154760000000
  %8585 = fmul fast float %8584, %8581
  %8586 = fmul fast float %4687, 0x3FF7154760000000
  %8587 = fmul fast float %8586, %8581
  %8588 = call float @dx.op.unary.f32(i32 21, float %8583)  ; Exp(value)
  %8589 = call float @dx.op.unary.f32(i32 21, float %8585)  ; Exp(value)
  %8590 = call float @dx.op.unary.f32(i32 21, float %8587)  ; Exp(value)
  %8591 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8592 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8593 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8594 = fmul fast float %8516, %8591
  %8595 = fmul fast float %8517, %8592
  %8596 = fmul fast float %8518, %8593
  %8597 = fsub fast float %8290, %5477
  %8598 = fsub fast float %8291, %5476
  %8599 = fsub fast float %8292, %5475
  %8600 = call float @dx.op.dot3.f32(i32 55, float %8597, float %8598, float %8599, float %8597, float %8598, float %8599)  ; Dot3(ax,ay,az,bx,by,bz)
  %8601 = call float @dx.op.unary.f32(i32 25, float %8600)  ; Rsqrt(value)
  %8602 = fmul fast float %8601, %8597
  %8603 = fmul fast float %8601, %8598
  %8604 = fmul fast float %8601, %8599
  %8605 = call float @dx.op.dot3.f32(i32 55, float %8290, float %8291, float %8292, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %8606 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5473, float %5472, float %8602, float %8603, float %8604)  ; Dot3(ax,ay,az,bx,by,bz)
  %8607 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8608 = fmul fast float %8607, %8297
  %8609 = fmul fast float %8607, %8607
  %8610 = fmul fast float %8609, %5517
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fmul fast float %8608, %8611
  %8613 = bitcast float %8287 to i32
  %8614 = ashr i32 %8613, 1
  %8615 = sub nsw i32 1597463007, %8614
  %8616 = bitcast i32 %8615 to float
  %8617 = fmul fast float %8616, %8284
  %8618 = fmul fast float %8616, %8285
  %8619 = fmul fast float %8616, %8286
  %8620 = fsub fast float %8617, %5477
  %8621 = fsub fast float %8618, %5476
  %8622 = fsub fast float %8619, %5475
  %8623 = call float @dx.op.dot3.f32(i32 55, float %8620, float %8621, float %8622, float %8620, float %8621, float %8622)  ; Dot3(ax,ay,az,bx,by,bz)
  %8624 = call float @dx.op.unary.f32(i32 25, float %8623)  ; Rsqrt(value)
  %8625 = fmul fast float %8620, %8624
  %8626 = fmul fast float %8621, %8624
  %8627 = fmul fast float %8622, %8624
  %8628 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %8625, float %8626, float %8627)  ; Dot3(ax,ay,az,bx,by,bz)
  %8629 = fmul fast float %8628, %8628
  %8630 = call float @dx.op.unary.f32(i32 6, float %8605)  ; FAbs(value)
  %8631 = fsub fast float 1.000000e+00, %5510
  %8632 = fmul fast float %5492, %5492
  %8633 = fmul fast float %8632, %8631
  %8634 = fadd fast float %8633, %5510
  %8635 = bitcast float %8634 to i32
  %8636 = ashr i32 %8635, 1
  %8637 = add nsw i32 %8636, 532487669
  %8638 = bitcast i32 %8637 to float
  %8639 = fadd fast float %8638, %5492
  %8640 = fmul fast float %5510, %8629
  %8641 = fsub fast float 1.000000e+00, %8629
  %8642 = fadd fast float %8641, %8640
  %8643 = fmul fast float %8630, %8630
  %8644 = fmul fast float %8643, %8631
  %8645 = fadd fast float %8644, %5510
  %8646 = bitcast float %8645 to i32
  %8647 = ashr i32 %8646, 1
  %8648 = add nsw i32 %8647, 532487669
  %8649 = bitcast i32 %8648 to float
  %8650 = fadd fast float %8649, %8630
  %8651 = fmul fast float %8642, %8642
  %8652 = fmul fast float %8651, %8639
  %8653 = fmul fast float %8652, %8650
  %8654 = fdiv fast float 1.000000e+00, %8653
  %8655 = bitcast float %5510 to i32
  %8656 = sitofp i32 %8655 to float
  %8657 = fmul fast float %8656, 0x3FE7F73180000000
  %8658 = fadd fast float %8657, 0x41AFE27C40000000
  %8659 = fptosi float %8658 to i32
  %8660 = bitcast i32 %8659 to float
  %8661 = fmul fast float %8253, 0x3FD80E9D60000000
  %8662 = fmul fast float %8661, %8616
  %8663 = fadd fast float %8660, %8662
  %8664 = bitcast float %8663 to i32
  %8665 = sub nsw i32 2129859010, %8664
  %8666 = bitcast i32 %8665 to float
  %8667 = fmul fast float %5510, %8654
  %8668 = fmul fast float %8667, %8660
  %8669 = fmul fast float %8668, %8666
  %8670 = call float @dx.op.unary.f32(i32 6, float %8606)  ; FAbs(value)
  %8671 = fsub fast float 1.000000e+00, %8670
  %8672 = bitcast float %8671 to i32
  %8673 = sitofp i32 %8672 to float
  %8674 = fmul fast float %8673, 5.000000e+00
  %8675 = fadd fast float %8674, 0xC1EFBF8940000000
  %8676 = fptosi float %8675 to i32
  %8677 = bitcast i32 %8676 to float
  %8678 = fsub fast float 1.000000e+00, %5478
  %8679 = fsub fast float 1.000000e+00, %5479
  %8680 = fsub fast float 1.000000e+00, %5490
  %8681 = fmul fast float %8677, %8678
  %8682 = fmul fast float %8677, %8679
  %8683 = fmul fast float %8677, %8680
  %8684 = fadd fast float %8681, %5478
  %8685 = fadd fast float %8682, %5479
  %8686 = fadd fast float %8683, %5490
  br i1 %5775, label %8687, label %8710

; <label>:8687                                    ; preds = %8577
  %8688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %8670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = fadd fast float %8689, -5.000000e-01
  %8693 = fadd fast float %8690, -5.000000e-01
  %8694 = fadd fast float %8691, -5.000000e-01
  %8695 = fmul fast float %5478, 4.000000e+00
  %8696 = fmul fast float %8695, %8678
  %8697 = fmul fast float %8696, %8692
  %8698 = fmul fast float %5479, 4.000000e+00
  %8699 = fmul fast float %8698, %8679
  %8700 = fmul fast float %8699, %8693
  %8701 = fmul fast float %5490, 4.000000e+00
  %8702 = fmul fast float %8701, %8680
  %8703 = fmul fast float %8702, %8694
  %8704 = fadd fast float %8697, %8684
  %8705 = fadd fast float %8700, %8685
  %8706 = fadd fast float %8703, %8686
  %8707 = call float @dx.op.unary.f32(i32 7, float %8704)  ; Saturate(value)
  %8708 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8709 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  br label %8710

; <label>:8710                                    ; preds = %8687, %8577
  %8711 = phi float [ %8707, %8687 ], [ %8684, %8577 ]
  %8712 = phi float [ %8708, %8687 ], [ %8685, %8577 ]
  %8713 = phi float [ %8709, %8687 ], [ %8686, %8577 ]
  %8714 = fmul fast float %8605, 9.843750e-01
  %8715 = fadd fast float %8714, 7.812500e-03
  %8716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8715, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8717 = extractvalue %dx.types.ResRet.f32 %8716, 2
  %8718 = extractvalue %dx.types.ResRet.f32 %8716, 3
  %8719 = fmul fast float %8717, %5478
  %8720 = fmul fast float %8717, %5479
  %8721 = fmul fast float %8717, %5490
  %8722 = fadd fast float %8719, %8718
  %8723 = fadd fast float %8720, %8718
  %8724 = fadd fast float %8721, %8718
  br i1 %5775, label %8725, label %8748

; <label>:8725                                    ; preds = %8710
  %8726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %8605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8727 = extractvalue %dx.types.ResRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.ResRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.ResRet.f32 %8726, 2
  %8730 = fadd fast float %8727, -5.000000e-01
  %8731 = fadd fast float %8728, -5.000000e-01
  %8732 = fadd fast float %8729, -5.000000e-01
  %8733 = fmul fast float %5478, 4.000000e+00
  %8734 = fmul fast float %8733, %8678
  %8735 = fmul fast float %8734, %8730
  %8736 = fmul fast float %5479, 4.000000e+00
  %8737 = fmul fast float %8736, %8679
  %8738 = fmul fast float %8737, %8731
  %8739 = fmul fast float %5490, 4.000000e+00
  %8740 = fmul fast float %8739, %8680
  %8741 = fmul fast float %8740, %8732
  %8742 = fadd fast float %8735, %8722
  %8743 = fadd fast float %8738, %8723
  %8744 = fadd fast float %8741, %8724
  %8745 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8746 = call float @dx.op.unary.f32(i32 7, float %8743)  ; Saturate(value)
  %8747 = call float @dx.op.unary.f32(i32 7, float %8744)  ; Saturate(value)
  br label %8748

; <label>:8748                                    ; preds = %8725, %8710
  %8749 = phi float [ %8745, %8725 ], [ %8722, %8710 ]
  %8750 = phi float [ %8746, %8725 ], [ %8723, %8710 ]
  %8751 = phi float [ %8747, %8725 ], [ %8724, %8710 ]
  %8752 = call float @dx.op.binary.f32(i32 35, float %8750, float %8751)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8749, float %8752)  ; FMax(a,b)
  %8754 = fsub fast float 1.000000e+00, %8753
  %8755 = fsub fast float -0.000000e+00, %5484
  %8756 = fsub fast float -0.000000e+00, %5485
  %8757 = fsub fast float -0.000000e+00, %5486
  %8758 = call float @dx.op.dot3.f32(i32 55, float %8290, float %8291, float %8292, float %8755, float %8756, float %8757)  ; Dot3(ax,ay,az,bx,by,bz)
  %8759 = call float @dx.op.unary.f32(i32 7, float %8758)  ; Saturate(value)
  %8760 = fmul fast float %8759, %8297
  %8761 = fmul fast float %8759, 9.843750e-01
  %8762 = fadd fast float %8761, 7.812500e-03
  %8763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8762, float %5765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8764 = extractvalue %dx.types.ResRet.f32 %8763, 2
  %8765 = extractvalue %dx.types.ResRet.f32 %8763, 3
  %8766 = fmul fast float %8764, %5478
  %8767 = fmul fast float %8764, %5479
  %8768 = fmul fast float %8764, %5490
  %8769 = fadd fast float %8766, %8765
  %8770 = fadd fast float %8767, %8765
  %8771 = fadd fast float %8768, %8765
  br i1 %5775, label %8772, label %8795

; <label>:8772                                    ; preds = %8748
  %8773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4218, float %8759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8774 = extractvalue %dx.types.ResRet.f32 %8773, 0
  %8775 = extractvalue %dx.types.ResRet.f32 %8773, 1
  %8776 = extractvalue %dx.types.ResRet.f32 %8773, 2
  %8777 = fadd fast float %8774, -5.000000e-01
  %8778 = fadd fast float %8775, -5.000000e-01
  %8779 = fadd fast float %8776, -5.000000e-01
  %8780 = fmul fast float %5478, 4.000000e+00
  %8781 = fmul fast float %8780, %8678
  %8782 = fmul fast float %8781, %8777
  %8783 = fmul fast float %5479, 4.000000e+00
  %8784 = fmul fast float %8783, %8679
  %8785 = fmul fast float %8784, %8778
  %8786 = fmul fast float %5490, 4.000000e+00
  %8787 = fmul fast float %8786, %8680
  %8788 = fmul fast float %8787, %8779
  %8789 = fadd fast float %8782, %8769
  %8790 = fadd fast float %8785, %8770
  %8791 = fadd fast float %8788, %8771
  %8792 = call float @dx.op.unary.f32(i32 7, float %8789)  ; Saturate(value)
  %8793 = call float @dx.op.unary.f32(i32 7, float %8790)  ; Saturate(value)
  %8794 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  br label %8795

; <label>:8795                                    ; preds = %8772, %8748
  %8796 = phi float [ %8792, %8772 ], [ %8769, %8748 ]
  %8797 = phi float [ %8793, %8772 ], [ %8770, %8748 ]
  %8798 = phi float [ %8794, %8772 ], [ %8771, %8748 ]
  %8799 = call float @dx.op.binary.f32(i32 35, float %8797, float %8798)  ; FMax(a,b)
  %8800 = call float @dx.op.binary.f32(i32 35, float %8796, float %8799)  ; FMax(a,b)
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8760, %8801
  %8803 = fmul fast float %8802, %4308
  %8804 = fmul fast float %8802, %4309
  %8805 = fmul fast float %8802, %4310
  %8806 = fmul fast float %8711, %8669
  %8807 = fmul fast float %8712, %8669
  %8808 = fmul fast float %8713, %8669
  %8809 = fsub fast float 1.000000e+00, %8606
  %8810 = bitcast float %8809 to i32
  %8811 = sitofp i32 %8810 to float
  %8812 = fmul fast float %8811, 5.000000e+00
  %8813 = fadd fast float %8812, 0xC1EFBF8940000000
  %8814 = fptosi float %8813 to i32
  %8815 = bitcast i32 %8814 to float
  %8816 = fmul fast float %8815, %4219
  %8817 = fmul fast float %8754, %8816
  %8818 = fmul fast float %8817, %6314
  %8819 = fmul fast float %8817, %6315
  %8820 = fmul fast float %8817, %6316
  %8821 = fmul fast float %8754, %8612
  %8822 = fadd fast float %8818, %8806
  %8823 = fadd fast float %8819, %8807
  %8824 = fadd fast float %8820, %8808
  %8825 = fadd fast float %8803, %8821
  %8826 = fadd fast float %8804, %8821
  %8827 = fadd fast float %8805, %8821
  %8828 = fmul fast float %8594, %4215
  %8829 = fmul fast float %8828, %8825
  %8830 = fmul fast float %8595, %4215
  %8831 = fmul fast float %8830, %8826
  %8832 = fmul fast float %8596, %4215
  %8833 = fmul fast float %8832, %8827
  %8834 = fadd fast float %8829, %8227
  %8835 = fadd fast float %8831, %8228
  %8836 = fadd fast float %8833, %8229
  %8837 = fmul fast float %8828, %8612
  %8838 = fmul fast float %8837, %8822
  %8839 = fmul fast float %8830, %8612
  %8840 = fmul fast float %8839, %8823
  %8841 = fmul fast float %8832, %8612
  %8842 = fmul fast float %8841, %8824
  %8843 = fadd fast float %8838, %8224
  %8844 = fadd fast float %8840, %8225
  %8845 = fadd fast float %8842, %8226
  br label %8356

; <label>:8846                                    ; preds = %8356
  br label %8847

; <label>:8847                                    ; preds = %8846, %8190
  %8848 = phi float [ %8192, %8190 ], [ %8357, %8846 ]
  %8849 = phi float [ %8193, %8190 ], [ %8358, %8846 ]
  %8850 = phi float [ %8194, %8190 ], [ %8359, %8846 ]
  %8851 = phi float [ %8195, %8190 ], [ %8360, %8846 ]
  %8852 = phi float [ %8196, %8190 ], [ %8361, %8846 ]
  %8853 = phi float [ %8197, %8190 ], [ %8362, %8846 ]
  %8854 = add i32 %8191, 1
  %8855 = icmp ugt i32 %8854, %8187
  br i1 %8855, label %8856, label %8190

; <label>:8856                                    ; preds = %8847
  br label %8857

; <label>:8857                                    ; preds = %8856, %8140, %8130
  %8858 = phi float [ %8131, %8130 ], [ %8131, %8140 ], [ %8848, %8856 ]
  %8859 = phi float [ %8132, %8130 ], [ %8132, %8140 ], [ %8849, %8856 ]
  %8860 = phi float [ %8133, %8130 ], [ %8133, %8140 ], [ %8850, %8856 ]
  %8861 = phi float [ %8134, %8130 ], [ %8134, %8140 ], [ %8851, %8856 ]
  %8862 = phi float [ %8135, %8130 ], [ %8135, %8140 ], [ %8852, %8856 ]
  %8863 = phi float [ %8136, %8130 ], [ %8136, %8140 ], [ %8853, %8856 ]
  %8864 = fmul fast float %6323, %4215
  %8865 = fmul fast float %6324, %4215
  %8866 = fmul fast float %6325, %4215
  %8867 = fadd fast float %8864, 1.000000e+00
  %8868 = fadd fast float %8865, 1.000000e+00
  %8869 = fadd fast float %8866, 1.000000e+00
  %8870 = call float @dx.op.dot3.f32(i32 55, float %8867, float %8868, float %8869, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8871 = fsub fast float 1.000000e+00, %8870
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = fmul fast float %8873, %6329
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 3
  %8877 = fsub fast float 1.000000e+00, %4222
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = fadd fast float %8863, %4221
  %8880 = fmul fast float %8879, %4222
  %8881 = fmul fast float %8878, %8876
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8884 = fmul fast float %8861, %5481
  %8885 = fmul fast float %8862, %5482
  %8886 = fmul fast float %8863, %5483
  %8887 = fcmp fast ogt float %106, %220
  %8888 = and i1 %8887, %4691
  %8889 = or i1 %4697, %8888
  %8890 = icmp eq i32 %4690, 2
  %8891 = fcmp fast ole float %106, %220
  %8892 = and i1 %8891, %8890
  %8893 = or i1 %8892, %8889
  br i1 %8888, label %8894, label %9151

; <label>:8894                                    ; preds = %8857
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8898 = fmul fast float %8896, %119
  %8899 = fmul fast float %8897, %120
  %8900 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8901 = call float @dx.op.unary.f32(i32 7, float %8899)  ; Saturate(value)
  %8902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8900, float %8901, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8903 = extractvalue %dx.types.ResRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.ResRet.f32 %8902, 1
  %8905 = extractvalue %dx.types.ResRet.f32 %8902, 2
  %8906 = extractvalue %dx.types.ResRet.f32 %8902, 3
  %8907 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8900, float %8901, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8908 = extractvalue %dx.types.ResRet.f32 %8907, 0
  %8909 = extractvalue %dx.types.ResRet.f32 %8907, 1
  %8910 = extractvalue %dx.types.ResRet.f32 %8907, 2
  %8911 = extractvalue %dx.types.ResRet.f32 %8907, 3
  %8912 = call float @dx.op.binary.f32(i32 35, float %8904, float %8905)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8903, float %8912)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8913, float %8906)  ; FMax(a,b)
  %8915 = call float @dx.op.binary.f32(i32 36, float %8909, float %8910)  ; FMin(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8908, float %8915)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8916, float %8911)  ; FMin(a,b)
  %8918 = fmul fast float %8914, 2.550000e+02
  %8919 = fadd fast float %8918, 0x3F70101020000000
  %8920 = fptoui float %8919 to i32
  %8921 = fmul fast float %8917, 2.550000e+02
  %8922 = fadd fast float %8921, 0x3F70101020000000
  %8923 = fptoui float %8922 to i32
  %8924 = icmp ult i32 %8920, %8923
  br i1 %8924, label %8925, label %9093

; <label>:8925                                    ; preds = %8894
  %8926 = fcmp fast ogt float %105, 9.843750e-01
  %8927 = fadd fast float %106, -4.000000e+00
  %8928 = select i1 %8926, float -4.000000e+00, float %8927
  %8929 = call float @dx.op.binary.f32(i32 35, float %8928, float 0.000000e+00)  ; FMax(a,b)
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = fadd fast float %8931, %8929
  %8933 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8934 = fmul fast float %8932, %8933
  %8935 = call float @dx.op.unary.f32(i32 23, float %8934)  ; Log(value)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8937 = fmul fast float %8936, %8935
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8940 = fmul fast float %8937, %8939
  %8941 = call float @dx.op.unary.f32(i32 7, float %8940)  ; Saturate(value)
  %8942 = uitofp i32 %8920 to float
  %8943 = uitofp i32 %8923 to float
  %8944 = fadd fast float %8942, 5.000000e-01
  %8945 = fadd fast float %8943, 5.000000e-01
  %8946 = fmul fast float %8939, %8944
  %8947 = fmul fast float %8939, %8945
  %8948 = fadd fast float %8946, 0x3F0FFB4800000000
  %8949 = fadd fast float %8947, 0xBF0FFB4800000000
  %8950 = call float @dx.op.binary.f32(i32 35, float %8941, float %8948)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8950, float %8949)  ; FMin(a,b)
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8954 = extractvalue %dx.types.CBufRet.f32 %8952, 2
  %8955 = extractvalue %dx.types.CBufRet.f32 %8952, 0
  %8956 = fmul fast float %8953, %8951
  %8957 = fadd fast float %8955, %8956
  %8958 = fadd fast float %8955, %8954
  %8959 = fsub fast float %8953, %8954
  %8960 = fadd fast float %8959, %8955
  %8961 = call float @dx.op.binary.f32(i32 35, float %8957, float %8958)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 36, float %8961, float %8960)  ; FMin(a,b)
  %8963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8900, float %8901, float %8962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8964 = extractvalue %dx.types.ResRet.f32 %8963, 0
  %8965 = extractvalue %dx.types.ResRet.f32 %8963, 1
  %8966 = extractvalue %dx.types.ResRet.f32 %8963, 2
  %8967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.i32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.i32 %8967, 1
  %8970 = uitofp i32 %8968 to float
  %8971 = uitofp i32 %8969 to float
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8975 = fmul fast float %8970, %8900
  %8976 = fmul fast float %8971, %8901
  %8977 = fadd fast float %8975, -5.000000e-01
  %8978 = fadd fast float %8976, -5.000000e-01
  %8979 = call float @dx.op.unary.f32(i32 22, float %8977)  ; Frc(value)
  %8980 = call float @dx.op.unary.f32(i32 22, float %8978)  ; Frc(value)
  %8981 = fmul fast float %8979, %8979
  %8982 = fmul fast float %8981, %8979
  %8983 = fsub fast float 3.000000e+00, %8979
  %8984 = fmul fast float %8981, %8983
  %8985 = fmul fast float %8979, 3.000000e+00
  %8986 = fmul fast float %8982, 3.000000e+00
  %8987 = fmul fast float %8981, 6.000000e+00
  %8988 = fsub fast float %8986, %8987
  %8989 = fadd fast float %8988, 4.000000e+00
  %8990 = fmul fast float %8989, 0x3FC5555560000000
  %8991 = fmul fast float %8982, -3.000000e+00
  %8992 = fadd fast float %8981, %8979
  %8993 = fmul fast float %8992, 3.000000e+00
  %8994 = fadd fast float %8991, 1.000000e+00
  %8995 = fadd fast float %8994, %8993
  %8996 = fmul fast float %8982, 0x3FC5555560000000
  %8997 = fmul fast float %8980, %8980
  %8998 = fmul fast float %8997, %8980
  %8999 = fsub fast float 3.000000e+00, %8980
  %9000 = fmul fast float %8997, %8999
  %9001 = fmul fast float %8980, 3.000000e+00
  %9002 = fmul fast float %8998, 3.000000e+00
  %9003 = fmul fast float %8997, 6.000000e+00
  %9004 = fsub fast float %9002, %9003
  %9005 = fadd fast float %9004, 4.000000e+00
  %9006 = fmul fast float %9005, 0x3FC5555560000000
  %9007 = fmul fast float %8998, -3.000000e+00
  %9008 = fadd fast float %8997, %8980
  %9009 = fmul fast float %9008, 3.000000e+00
  %9010 = fadd fast float %9007, 1.000000e+00
  %9011 = fadd fast float %9010, %9009
  %9012 = fmul fast float %8998, 0x3FC5555560000000
  %9013 = fadd fast float %8979, 1.000000e+00
  %9014 = fsub fast float 1.000000e+00, %8985
  %9015 = fadd fast float %9014, %8984
  %9016 = fadd fast float %9015, %8989
  %9017 = fmul fast float %9016, 0x3FC5555560000000
  %9018 = fdiv fast float %8990, %9017
  %9019 = fsub fast float %9013, %9018
  %9020 = fsub fast float 1.000000e+00, %8979
  %9021 = fadd fast float %8995, %8982
  %9022 = fmul fast float %9021, 0x3FC5555560000000
  %9023 = fdiv fast float %8996, %9022
  %9024 = fadd fast float %9020, %9023
  %9025 = fadd fast float %8980, 1.000000e+00
  %9026 = fsub fast float 1.000000e+00, %9001
  %9027 = fadd fast float %9026, %9000
  %9028 = fadd fast float %9027, %9005
  %9029 = fmul fast float %9028, 0x3FC5555560000000
  %9030 = fdiv fast float %9006, %9029
  %9031 = fsub fast float %9025, %9030
  %9032 = fsub fast float 1.000000e+00, %8980
  %9033 = fadd fast float %9011, %8998
  %9034 = fmul fast float %9033, 0x3FC5555560000000
  %9035 = fdiv fast float %9012, %9034
  %9036 = fadd fast float %9035, %9032
  %9037 = fmul fast float %9019, %8973
  %9038 = fsub fast float %8900, %9037
  %9039 = fmul fast float %9024, %8973
  %9040 = fadd fast float %9039, %8900
  %9041 = fmul fast float %9036, %8974
  %9042 = fadd fast float %9041, %8901
  %9043 = fmul fast float %9031, %8974
  %9044 = fsub fast float %8901, %9043
  %9045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9038, float %9044, float %8962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9046 = extractvalue %dx.types.ResRet.f32 %9045, 0
  %9047 = extractvalue %dx.types.ResRet.f32 %9045, 1
  %9048 = extractvalue %dx.types.ResRet.f32 %9045, 2
  %9049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9040, float %9044, float %8962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9050 = extractvalue %dx.types.ResRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.ResRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.ResRet.f32 %9049, 2
  %9053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9038, float %9042, float %8962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9054 = extractvalue %dx.types.ResRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.ResRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.ResRet.f32 %9053, 2
  %9057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9040, float %9042, float %8962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9058 = extractvalue %dx.types.ResRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.ResRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.ResRet.f32 %9057, 2
  %9061 = fsub fast float %9054, %9046
  %9062 = fsub fast float %9055, %9047
  %9063 = fsub fast float %9056, %9048
  %9064 = fmul fast float %9061, %9034
  %9065 = fmul fast float %9062, %9034
  %9066 = fmul fast float %9063, %9034
  %9067 = fadd fast float %9064, %9046
  %9068 = fadd fast float %9065, %9047
  %9069 = fadd fast float %9066, %9048
  %9070 = fsub fast float %9058, %9050
  %9071 = fsub fast float %9059, %9051
  %9072 = fsub fast float %9060, %9052
  %9073 = fmul fast float %9070, %9034
  %9074 = fmul fast float %9071, %9034
  %9075 = fmul fast float %9072, %9034
  %9076 = fsub fast float %9050, %9067
  %9077 = fadd fast float %9076, %9073
  %9078 = fsub fast float %9051, %9068
  %9079 = fadd fast float %9078, %9074
  %9080 = fsub fast float %9052, %9069
  %9081 = fadd fast float %9080, %9075
  %9082 = fmul fast float %9077, %9022
  %9083 = fmul fast float %9079, %9022
  %9084 = fmul fast float %9081, %9022
  %9085 = fadd fast float %9082, %9067
  %9086 = fadd fast float %9083, %9068
  %9087 = fadd fast float %9084, %9069
  %9088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9088, 1
  %9090 = fmul fast float %9085, %9089
  %9091 = fmul fast float %9086, %9089
  %9092 = fmul fast float %9087, %9089
  br label %9093

; <label>:9093                                    ; preds = %8925, %8894
  %9094 = phi float [ %8964, %8925 ], [ 1.000000e+00, %8894 ]
  %9095 = phi float [ %8965, %8925 ], [ 1.000000e+00, %8894 ]
  %9096 = phi float [ %8966, %8925 ], [ 1.000000e+00, %8894 ]
  %9097 = phi float [ %9090, %8925 ], [ 0.000000e+00, %8894 ]
  %9098 = phi float [ %9091, %8925 ], [ 0.000000e+00, %8894 ]
  %9099 = phi float [ %9092, %8925 ], [ 0.000000e+00, %8894 ]
  %9100 = fmul fast float %9097, %8871
  %9101 = fmul fast float %9098, %8871
  %9102 = fmul fast float %9099, %8871
  %9103 = call float @dx.op.dot3.f32(i32 55, float %9094, float %9095, float %9096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9104 = call float @dx.op.dot3.f32(i32 55, float %9100, float %9101, float %9102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9105 = select i1 %257, float %9103, float %9094
  %9106 = select i1 %257, float %9103, float %9095
  %9107 = select i1 %257, float 1.000000e+00, float %9096
  %9108 = select i1 %257, float %9104, float %9100
  %9109 = select i1 %257, float 0.000000e+00, float %9101
  %9110 = select i1 %257, float 0.000000e+00, float %9102
  %9111 = fmul fast float %9105, %8884
  %9112 = fmul fast float %9106, %8885
  %9113 = fmul fast float %9107, %8886
  %9114 = fadd fast float %9111, %9108
  %9115 = fadd fast float %9112, %9109
  %9116 = fadd fast float %9110, %9113
  %9117 = fmul fast float %9105, %8858
  %9118 = fmul fast float %9106, %8859
  %9119 = fmul fast float %9107, %8860
  %9120 = fmul fast float %147, %8896
  %9121 = fmul fast float %149, %8897
  %9122 = fsub fast float 1.000000e+00, %9120
  %9123 = fsub fast float 1.000000e+00, %9121
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 0
  %9126 = extractvalue %dx.types.CBufRet.f32 %9124, 1
  %9127 = extractvalue %dx.types.CBufRet.f32 %9124, 2
  %9128 = fmul fast float %9122, %9125
  %9129 = fmul fast float %9122, %9126
  %9130 = fmul fast float %9122, %9127
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 0
  %9133 = extractvalue %dx.types.CBufRet.f32 %9131, 1
  %9134 = extractvalue %dx.types.CBufRet.f32 %9131, 2
  %9135 = fmul fast float %9123, %9132
  %9136 = fmul fast float %9123, %9133
  %9137 = fmul fast float %9123, %9134
  %9138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9139 = extractvalue %dx.types.CBufRet.f32 %9138, 0
  %9140 = extractvalue %dx.types.CBufRet.f32 %9138, 1
  %9141 = extractvalue %dx.types.CBufRet.f32 %9138, 2
  %9142 = fadd fast float %9135, %9139
  %9143 = fadd fast float %9142, %9128
  %9144 = fadd fast float %9136, %9140
  %9145 = fadd fast float %9144, %9129
  %9146 = fadd fast float %9137, %9141
  %9147 = fadd fast float %9146, %9130
  %9148 = fmul fast float %9143, %220
  %9149 = fmul fast float %9145, %220
  %9150 = fmul fast float %9147, %220
  br label %9151

; <label>:9151                                    ; preds = %9093, %8857
  %9152 = phi float [ %9148, %9093 ], [ %198, %8857 ]
  %9153 = phi float [ %9149, %9093 ], [ %199, %8857 ]
  %9154 = phi float [ %9150, %9093 ], [ %200, %8857 ]
  %9155 = phi float [ %220, %9093 ], [ %106, %8857 ]
  %9156 = phi float [ %9114, %9093 ], [ %8884, %8857 ]
  %9157 = phi float [ %9115, %9093 ], [ %8885, %8857 ]
  %9158 = phi float [ %9116, %9093 ], [ %8886, %8857 ]
  %9159 = phi float [ %9117, %9093 ], [ %8858, %8857 ]
  %9160 = phi float [ %9118, %9093 ], [ %8859, %8857 ]
  %9161 = phi float [ %9119, %9093 ], [ %8860, %8857 ]
  %9162 = phi float [ %9094, %9093 ], [ 1.000000e+00, %8857 ]
  br i1 %8893, label %10317, label %9163

; <label>:9163                                    ; preds = %9151
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 0
  %9166 = extractvalue %dx.types.CBufRet.f32 %9164, 1
  %9167 = extractvalue %dx.types.CBufRet.f32 %9164, 2
  %9168 = extractvalue %dx.types.CBufRet.f32 %9164, 3
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.CBufRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9173 = extractvalue %dx.types.CBufRet.f32 %9169, 3
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 0
  %9176 = extractvalue %dx.types.CBufRet.f32 %9174, 1
  %9177 = extractvalue %dx.types.CBufRet.f32 %9174, 2
  %9178 = extractvalue %dx.types.CBufRet.f32 %9174, 3
  %9179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9180 = extractvalue %dx.types.CBufRet.f32 %9179, 0
  %9181 = extractvalue %dx.types.CBufRet.f32 %9179, 1
  %9182 = extractvalue %dx.types.CBufRet.f32 %9179, 2
  %9183 = extractvalue %dx.types.CBufRet.f32 %9179, 3
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 3
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 3
  %9188 = extractvalue %dx.types.CBufRet.f32 %9186, 0
  %9189 = extractvalue %dx.types.CBufRet.f32 %9186, 1
  %9190 = extractvalue %dx.types.CBufRet.f32 %9186, 2
  %9191 = fcmp fast olt float %9190, -5.000000e-01
  %9192 = call float @dx.op.dot3.f32(i32 55, float %9152, float %9153, float %9154, float %9152, float %9153, float %9154)  ; Dot3(ax,ay,az,bx,by,bz)
  %9193 = call float @dx.op.unary.f32(i32 25, float %9192)  ; Rsqrt(value)
  %9194 = fmul fast float %9193, %9192
  %9195 = fmul fast float %9193, %9152
  %9196 = fmul fast float %9193, %9153
  %9197 = fmul fast float %9193, %9154
  %9198 = fadd fast float %9194, %9168
  %9199 = call float @dx.op.dot3.f32(i32 55, float %9195, float %9196, float %9197, float %9165, float %9166, float %9167)  ; Dot3(ax,ay,az,bx,by,bz)
  %9200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9201 = extractvalue %dx.types.CBufRet.i32 %9200, 1
  %9202 = and i32 %9201, 1
  %9203 = icmp ne i32 %9202, 0
  %9204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9205 = extractvalue %dx.types.CBufRet.f32 %9204, 2
  %9206 = fcmp fast ogt float %9205, 0.000000e+00
  %9207 = and i1 %9203, %9206
  br i1 %9207, label %9208, label %9614, !dx.controlflow.hints !137

; <label>:9208                                    ; preds = %9163
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 3
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9214 = extractvalue %dx.types.CBufRet.f32 %9213, 2
  %9215 = fsub fast float %9212, %9214
  %9216 = and i32 %9201, 2
  %9217 = extractvalue %dx.types.CBufRet.i32 %9200, 0
  %9218 = call i32 @dx.op.binary.i32(i32 40, i32 %9217, i32 3)  ; UMin(a,b)
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = extractvalue %dx.types.CBufRet.f32 %9219, 1
  %9222 = extractvalue %dx.types.CBufRet.f32 %9213, 0
  %9223 = extractvalue %dx.types.CBufRet.f32 %9213, 1
  %9224 = fsub fast float %9220, %9222
  %9225 = fsub fast float %9221, %9223
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = fcmp fast ogt float %9227, 0.000000e+00
  %9229 = fsub fast float -0.000000e+00, %9224
  %9230 = fsub fast float -0.000000e+00, %9225
  %9231 = call float @dx.op.dot2.f32(i32 54, float %9195, float %9196, float %9195, float %9196)  ; Dot2(ax,ay,bx,by)
  %9232 = call float @dx.op.dot2.f32(i32 54, float %9195, float %9196, float %9229, float %9230)  ; Dot2(ax,ay,bx,by)
  %9233 = fmul fast float %9232, 2.000000e+00
  %9234 = call float @dx.op.dot2.f32(i32 54, float %9229, float %9230, float %9229, float %9230)  ; Dot2(ax,ay,bx,by)
  %9235 = fmul fast float %9227, %9227
  %9236 = fsub fast float %9234, %9235
  %9237 = fmul fast float %9233, %9233
  %9238 = fmul fast float %9231, 4.000000e+00
  %9239 = fmul fast float %9238, %9236
  %9240 = fsub fast float %9237, %9239
  %9241 = fcmp fast ogt float %9240, 0.000000e+00
  br i1 %9241, label %9242, label %9257

; <label>:9242                                    ; preds = %9208
  %9243 = fcmp fast ogt float %9233, 0.000000e+00
  %9244 = call float @dx.op.unary.f32(i32 24, float %9240)  ; Sqrt(value)
  %9245 = fsub fast float -0.000000e+00, %9244
  %9246 = select i1 %9243, float %9244, float %9245
  %9247 = fadd fast float %9246, %9233
  %9248 = fmul float %9247, -5.000000e-01
  %9249 = fdiv fast float %9248, %9231
  %9250 = call float @dx.op.binary.f32(i32 35, float %9249, float 0.000000e+00)  ; FMax(a,b)
  %9251 = call float @dx.op.binary.f32(i32 36, float %9194, float %9250)  ; FMin(a,b)
  %9252 = fdiv fast float %9236, %9248
  %9253 = call float @dx.op.binary.f32(i32 35, float %9252, float 0.000000e+00)  ; FMax(a,b)
  %9254 = call float @dx.op.binary.f32(i32 36, float %9194, float %9253)  ; FMin(a,b)
  %9255 = call float @dx.op.binary.f32(i32 36, float %9251, float %9254)  ; FMin(a,b)
  %9256 = call float @dx.op.binary.f32(i32 35, float %9251, float %9254)  ; FMax(a,b)
  br label %9257

; <label>:9257                                    ; preds = %9242, %9208
  %9258 = phi float [ %9256, %9242 ], [ -1.000000e+00, %9208 ]
  %9259 = phi float [ %9255, %9242 ], [ -1.000000e+00, %9208 ]
  %9260 = phi i1 [ true, %9242 ], [ false, %9208 ]
  %9261 = and i1 %9228, %9260
  br i1 %9261, label %9262, label %9264

; <label>:9262                                    ; preds = %9257
  %9263 = fcmp fast oeq float %9259, %9258
  br i1 %9263, label %9567, label %9265

; <label>:9264                                    ; preds = %9257
  br i1 %9228, label %9567, label %9265

; <label>:9265                                    ; preds = %9264, %9262
  %9266 = phi float [ %9194, %9264 ], [ %9258, %9262 ]
  %9267 = phi float [ 0.000000e+00, %9264 ], [ %9259, %9262 ]
  %9268 = icmp ne i32 %9216, 0
  %9269 = fmul fast float %9266, %9197
  %9270 = fadd fast float %9269, %9210
  %9271 = fmul fast float %9270, %9266
  %9272 = select i1 %9268, float 0.000000e+00, float %9271
  %9273 = fcmp fast oeq float %9197, 0.000000e+00
  %9274 = fdiv fast float %9215, %9197
  %9275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9274)  ; FMax(a,b)
  %9276 = select i1 %9273, float %9266, float %9275
  %9277 = call float @dx.op.binary.f32(i32 36, float %9266, float %9276)  ; FMin(a,b)
  %9278 = fcmp fast ogt float %9197, 0.000000e+00
  %9279 = fcmp fast olt float %9215, 0.000000e+00
  br i1 %9278, label %9280, label %9337

; <label>:9280                                    ; preds = %9265
  %9281 = icmp eq i32 %9216, 0
  br i1 %9279, label %9282, label %9326

; <label>:9282                                    ; preds = %9280
  %9283 = select i1 %9281, float %9266, float 0.000000e+00
  %9284 = fsub fast float -0.000000e+00, %9283
  %9285 = call float @dx.op.unary.f32(i32 6, float %9284)  ; FAbs(value)
  %9286 = fmul fast float %9283, %9197
  %9287 = fadd fast float %9286, %9210
  %9288 = fmul fast float %9285, %9287
  %9289 = fsub fast float %9272, %9288
  %9290 = fsub fast float %9266, %9285
  %9291 = select i1 %9281, float %9290, float 0.000000e+00
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 0
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9295 = extractvalue %dx.types.CBufRet.f32 %9292, 2
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9298 = extractvalue %dx.types.CBufRet.f32 %9296, 1
  %9299 = extractvalue %dx.types.CBufRet.f32 %9296, 2
  %9300 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 3
  %9303 = call float @dx.op.binary.f32(i32 36, float %9289, float %9302)  ; FMin(a,b)
  %9304 = fmul fast float %9300, %9291
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fsub fast float %9297, %9293
  %9307 = fsub fast float %9298, %9294
  %9308 = fsub fast float %9299, %9295
  %9309 = fmul fast float %9305, %9306
  %9310 = fmul fast float %9305, %9307
  %9311 = fmul fast float %9305, %9308
  %9312 = fadd fast float %9309, %9293
  %9313 = fadd fast float %9310, %9294
  %9314 = fadd fast float %9311, %9295
  %9315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.f32 %9315, 0
  %9317 = extractvalue %dx.types.CBufRet.f32 %9315, 1
  %9318 = fadd fast float %9317, %9316
  %9319 = call float @dx.op.unary.f32(i32 7, float %9318)  ; Saturate(value)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9315, 2
  %9321 = extractvalue %dx.types.CBufRet.f32 %9315, 3
  %9322 = fadd fast float %9321, %9320
  %9323 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9324 = fmul fast float %9319, %9303
  %9325 = fmul fast float %9324, %9323
  br label %9567

; <label>:9326                                    ; preds = %9280
  br i1 %9281, label %9327, label %9348

; <label>:9327                                    ; preds = %9326
  %9328 = call float @dx.op.binary.f32(i32 36, float %9277, float %9267)  ; FMin(a,b)
  %9329 = fsub fast float %9277, %9328
  %9330 = fsub fast float %9329, %9266
  %9331 = call float @dx.op.unary.f32(i32 6, float %9330)  ; FAbs(value)
  %9332 = fadd fast float %9329, %9266
  %9333 = fmul fast float %9332, %9197
  %9334 = fadd fast float %9333, %9210
  %9335 = fmul fast float %9334, %9331
  %9336 = fsub fast float %9272, %9335
  br label %9348

; <label>:9337                                    ; preds = %9265
  br i1 %9279, label %9338, label %9348

; <label>:9338                                    ; preds = %9337
  %9339 = call float @dx.op.binary.f32(i32 35, float %9267, float %9277)  ; FMax(a,b)
  %9340 = icmp eq i32 %9216, 0
  %9341 = select i1 %9340, float %9277, float 0.000000e+00
  %9342 = fsub fast float -0.000000e+00, %9341
  %9343 = call float @dx.op.unary.f32(i32 6, float %9342)  ; FAbs(value)
  %9344 = fmul fast float %9341, %9197
  %9345 = fadd fast float %9344, %9210
  %9346 = fmul fast float %9343, %9345
  %9347 = fsub fast float %9272, %9346
  br label %9348

; <label>:9348                                    ; preds = %9338, %9337, %9327, %9326
  %9349 = phi float [ %9267, %9326 ], [ %9267, %9327 ], [ %9339, %9338 ], [ %9267, %9337 ]
  %9350 = phi float [ 0.000000e+00, %9326 ], [ %9331, %9327 ], [ %9343, %9338 ], [ 0.000000e+00, %9337 ]
  %9351 = phi float [ %9272, %9326 ], [ %9336, %9327 ], [ %9347, %9338 ], [ %9272, %9337 ]
  %9352 = phi float [ %9277, %9326 ], [ %9277, %9327 ], [ %9266, %9338 ], [ %9266, %9337 ]
  %9353 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 0
  store float -1.000000e+00, float* %9353, align 4, !tbaa !123, !noalias !138
  %9354 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 1
  store float -1.000000e+00, float* %9354, align 4, !tbaa !123, !noalias !138
  %9355 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 2
  store float -1.000000e+00, float* %9355, align 4, !tbaa !123, !noalias !138
  %9356 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %9356, align 4, !tbaa !123, !noalias !138
  %9357 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %9357, align 4, !tbaa !123, !noalias !138
  %9358 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %9358, align 4, !tbaa !123, !noalias !138
  %9359 = icmp sgt i32 %9218, 0
  br i1 %9359, label %9360, label %9421

; <label>:9360                                    ; preds = %9348
  br label %9361

; <label>:9361                                    ; preds = %9410, %9360
  %9362 = phi i32 [ %9411, %9410 ], [ 0, %9360 ]
  %9363 = phi i32 [ %9412, %9410 ], [ 0, %9360 ]
  %9364 = add nuw i32 %9363, 171
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9364)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 0
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 1
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.CBufRet.f32 %9368, 1
  %9371 = fsub fast float %9366, %9369
  %9372 = fsub fast float %9367, %9370
  %9373 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9374 = fsub fast float -0.000000e+00, %9371
  %9375 = fsub fast float -0.000000e+00, %9372
  %9376 = call float @dx.op.dot2.f32(i32 54, float %9195, float %9196, float %9374, float %9375)  ; Dot2(ax,ay,bx,by)
  %9377 = fmul fast float %9376, 2.000000e+00
  %9378 = call float @dx.op.dot2.f32(i32 54, float %9374, float %9375, float %9374, float %9375)  ; Dot2(ax,ay,bx,by)
  %9379 = fmul fast float %9373, %9373
  %9380 = fsub fast float %9378, %9379
  %9381 = fmul fast float %9377, %9377
  %9382 = fmul fast float %9238, %9380
  %9383 = fsub fast float %9381, %9382
  %9384 = fcmp fast ogt float %9383, 0.000000e+00
  br i1 %9384, label %9385, label %9400

; <label>:9385                                    ; preds = %9361
  %9386 = fcmp fast ogt float %9377, 0.000000e+00
  %9387 = call float @dx.op.unary.f32(i32 24, float %9383)  ; Sqrt(value)
  %9388 = fsub fast float -0.000000e+00, %9387
  %9389 = select i1 %9386, float %9387, float %9388
  %9390 = fadd fast float %9389, %9377
  %9391 = fmul float %9390, -5.000000e-01
  %9392 = fdiv fast float %9391, %9231
  %9393 = call float @dx.op.binary.f32(i32 35, float %9392, float 0.000000e+00)  ; FMax(a,b)
  %9394 = call float @dx.op.binary.f32(i32 36, float %9266, float %9393)  ; FMin(a,b)
  %9395 = fdiv fast float %9380, %9391
  %9396 = call float @dx.op.binary.f32(i32 35, float %9395, float 0.000000e+00)  ; FMax(a,b)
  %9397 = call float @dx.op.binary.f32(i32 36, float %9266, float %9396)  ; FMin(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9394, float %9397)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 35, float %9394, float %9397)  ; FMax(a,b)
  br label %9400

; <label>:9400                                    ; preds = %9385, %9361
  %9401 = phi float [ %9399, %9385 ], [ -1.000000e+00, %9361 ]
  %9402 = phi float [ %9398, %9385 ], [ -1.000000e+00, %9361 ]
  %9403 = phi i1 [ true, %9385 ], [ false, %9361 ]
  br i1 %9403, label %9404, label %9410

; <label>:9404                                    ; preds = %9400
  %9405 = call float @dx.op.binary.f32(i32 35, float %9349, float %9402)  ; FMax(a,b)
  %9406 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9363
  store float %9405, float* %9406, align 4, !tbaa !123, !noalias !138
  %9407 = call float @dx.op.binary.f32(i32 35, float %9349, float %9401)  ; FMax(a,b)
  %9408 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9363
  store float %9407, float* %9408, align 4, !tbaa !123, !noalias !138
  %9409 = add nsw i32 %9362, 1
  br label %9410

; <label>:9410                                    ; preds = %9404, %9400
  %9411 = phi i32 [ %9409, %9404 ], [ %9362, %9400 ]
  %9412 = add nuw nsw i32 %9363, 1
  %9413 = icmp eq i32 %9412, %9218
  br i1 %9413, label %9414, label %9361

; <label>:9414                                    ; preds = %9410
  %9415 = load float, float* %9355, align 4, !tbaa !123, !alias.scope !154, !noalias !157
  %9416 = load float, float* %9354, align 4, !tbaa !123, !alias.scope !160, !noalias !161
  %9417 = load float, float* %9353, align 4, !tbaa !123, !alias.scope !162, !noalias !163
  %9418 = load float, float* %9358, align 4, !tbaa !123, !alias.scope !164, !noalias !167
  %9419 = load float, float* %9357, align 4, !tbaa !123, !alias.scope !170, !noalias !171
  %9420 = load float, float* %9356, align 4, !tbaa !123, !alias.scope !172, !noalias !173
  br label %9421

; <label>:9421                                    ; preds = %9414, %9348
  %9422 = phi float [ -1.000000e+00, %9348 ], [ %9420, %9414 ]
  %9423 = phi float [ -1.000000e+00, %9348 ], [ %9419, %9414 ]
  %9424 = phi float [ -1.000000e+00, %9348 ], [ %9418, %9414 ]
  %9425 = phi float [ -1.000000e+00, %9348 ], [ %9417, %9414 ]
  %9426 = phi float [ -1.000000e+00, %9348 ], [ %9416, %9414 ]
  %9427 = phi float [ -1.000000e+00, %9348 ], [ %9415, %9414 ]
  %9428 = phi i32 [ 0, %9348 ], [ %9411, %9414 ]
  %9429 = call float @dx.op.binary.f32(i32 36, float %9426, float %9427)  ; FMin(a,b)
  %9430 = call float @dx.op.binary.f32(i32 36, float %9425, float %9429)  ; FMin(a,b)
  %9431 = call float @dx.op.binary.f32(i32 35, float %9425, float %9426)  ; FMax(a,b)
  %9432 = call float @dx.op.binary.f32(i32 36, float %9431, float %9427)  ; FMin(a,b)
  %9433 = call float @dx.op.binary.f32(i32 36, float %9425, float %9426)  ; FMin(a,b)
  %9434 = call float @dx.op.binary.f32(i32 35, float %9433, float %9432)  ; FMax(a,b)
  %9435 = call float @dx.op.binary.f32(i32 35, float %9426, float %9427)  ; FMax(a,b)
  %9436 = call float @dx.op.binary.f32(i32 35, float %9425, float %9435)  ; FMax(a,b)
  store float %9430, float* %9353, align 4, !tbaa !123, !alias.scope !162, !noalias !163
  store float %9434, float* %9354, align 4, !tbaa !123, !alias.scope !160, !noalias !161
  store float %9436, float* %9355, align 4, !tbaa !123, !alias.scope !154, !noalias !157
  %9437 = call float @dx.op.binary.f32(i32 36, float %9423, float %9424)  ; FMin(a,b)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9422, float %9437)  ; FMin(a,b)
  %9439 = call float @dx.op.binary.f32(i32 35, float %9422, float %9423)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 36, float %9439, float %9424)  ; FMin(a,b)
  %9441 = call float @dx.op.binary.f32(i32 36, float %9422, float %9423)  ; FMin(a,b)
  %9442 = call float @dx.op.binary.f32(i32 35, float %9441, float %9440)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 35, float %9423, float %9424)  ; FMax(a,b)
  %9444 = call float @dx.op.binary.f32(i32 35, float %9422, float %9443)  ; FMax(a,b)
  store float %9438, float* %9356, align 4, !tbaa !123, !alias.scope !172, !noalias !173
  store float %9442, float* %9357, align 4, !tbaa !123, !alias.scope !170, !noalias !171
  store float %9444, float* %9358, align 4, !tbaa !123, !alias.scope !164, !noalias !167
  %9445 = sub nsw i32 3, %9428
  %9446 = icmp sgt i32 %9445, 2
  br i1 %9446, label %9447, label %9485

; <label>:9447                                    ; preds = %9421
  %9448 = icmp eq i32 %9216, 0
  %9449 = fsub fast float %9266, %9350
  %9450 = select i1 %9448, float %9449, float %9350
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.CBufRet.f32 %9455, 2
  %9459 = extractvalue %dx.types.CBufRet.f32 %9455, 3
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 3
  %9462 = call float @dx.op.binary.f32(i32 36, float %9351, float %9461)  ; FMin(a,b)
  %9463 = fmul fast float %9459, %9450
  %9464 = call float @dx.op.unary.f32(i32 7, float %9463)  ; Saturate(value)
  %9465 = fsub fast float %9456, %9452
  %9466 = fsub fast float %9457, %9453
  %9467 = fsub fast float %9458, %9454
  %9468 = fmul fast float %9464, %9465
  %9469 = fmul fast float %9464, %9466
  %9470 = fmul fast float %9464, %9467
  %9471 = fadd fast float %9468, %9452
  %9472 = fadd fast float %9469, %9453
  %9473 = fadd fast float %9470, %9454
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 0
  %9476 = extractvalue %dx.types.CBufRet.f32 %9474, 1
  %9477 = fadd fast float %9476, %9475
  %9478 = call float @dx.op.unary.f32(i32 7, float %9477)  ; Saturate(value)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9474, 2
  %9480 = extractvalue %dx.types.CBufRet.f32 %9474, 3
  %9481 = fadd fast float %9480, %9479
  %9482 = call float @dx.op.unary.f32(i32 7, float %9481)  ; Saturate(value)
  %9483 = fmul fast float %9478, %9462
  %9484 = fmul fast float %9483, %9482
  br label %9567

; <label>:9485                                    ; preds = %9421
  %9486 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9445
  %9487 = load float, float* %9486, align 4, !tbaa !123, !noalias !138
  %9488 = fcmp fast olt float %9487, %9352
  %9489 = icmp sgt i32 %9428, 0
  %9490 = and i1 %9489, %9488
  br i1 %9490, label %9491, label %9528

; <label>:9491                                    ; preds = %9485
  br label %9492

; <label>:9492                                    ; preds = %9521, %9491
  %9493 = phi float [ %9522, %9521 ], [ %9350, %9491 ]
  %9494 = phi float [ %9523, %9521 ], [ %9351, %9491 ]
  %9495 = phi float [ %9503, %9521 ], [ %9487, %9491 ]
  %9496 = phi i32 [ %9500, %9521 ], [ %9445, %9491 ]
  %9497 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %9496
  %9498 = load float, float* %9497, align 4, !tbaa !123, !noalias !138
  %9499 = icmp slt i32 %9496, 2
  %9500 = add nsw i32 %9496, 1
  %9501 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9500
  %9502 = load float, float* %9501, align 4, !tbaa !123, !noalias !138
  %9503 = select i1 %9499, float %9502, float %9266
  %9504 = call float @dx.op.binary.f32(i32 36, float %9503, float %9498)  ; FMin(a,b)
  %9505 = call float @dx.op.binary.f32(i32 36, float %9352, float %9504)  ; FMin(a,b)
  %9506 = icmp eq i32 %9216, 0
  %9507 = fadd fast float %9505, %9495
  %9508 = fmul fast float %9507, %9197
  %9509 = fadd fast float %9508, %9210
  br i1 %9506, label %9515, label %9510

; <label>:9510                                    ; preds = %9492
  %9511 = fsub fast float %9505, %9495
  %9512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9511)  ; FMax(a,b)
  %9513 = fmul fast float %9512, %9509
  %9514 = fadd fast float %9513, %9494
  br label %9521

; <label>:9515                                    ; preds = %9492
  %9516 = fsub fast float %9495, %9505
  %9517 = call float @dx.op.unary.f32(i32 6, float %9516)  ; FAbs(value)
  %9518 = fadd fast float %9517, %9493
  %9519 = fmul fast float %9517, %9509
  %9520 = fsub fast float %9494, %9519
  br label %9521

; <label>:9521                                    ; preds = %9515, %9510
  %9522 = phi float [ %9512, %9510 ], [ %9518, %9515 ]
  %9523 = phi float [ %9514, %9510 ], [ %9520, %9515 ]
  %9524 = fcmp fast olt float %9503, %9352
  %9525 = icmp slt i32 %9500, 3
  %9526 = and i1 %9525, %9524
  br i1 %9526, label %9492, label %9527

; <label>:9527                                    ; preds = %9521
  br label %9528

; <label>:9528                                    ; preds = %9527, %9485
  %9529 = phi float [ %9350, %9485 ], [ %9522, %9527 ]
  %9530 = phi float [ %9351, %9485 ], [ %9523, %9527 ]
  %9531 = fsub fast float %9266, %9529
  %9532 = select i1 %9268, float %9529, float %9531
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9538 = extractvalue %dx.types.CBufRet.f32 %9537, 0
  %9539 = extractvalue %dx.types.CBufRet.f32 %9537, 1
  %9540 = extractvalue %dx.types.CBufRet.f32 %9537, 2
  %9541 = extractvalue %dx.types.CBufRet.f32 %9537, 3
  %9542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9542, 3
  %9544 = call float @dx.op.binary.f32(i32 36, float %9530, float %9543)  ; FMin(a,b)
  %9545 = fmul fast float %9541, %9532
  %9546 = call float @dx.op.unary.f32(i32 7, float %9545)  ; Saturate(value)
  %9547 = fsub fast float %9538, %9534
  %9548 = fsub fast float %9539, %9535
  %9549 = fsub fast float %9540, %9536
  %9550 = fmul fast float %9546, %9547
  %9551 = fmul fast float %9546, %9548
  %9552 = fmul fast float %9546, %9549
  %9553 = fadd fast float %9550, %9534
  %9554 = fadd fast float %9551, %9535
  %9555 = fadd fast float %9552, %9536
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.CBufRet.f32 %9556, 1
  %9559 = fadd fast float %9558, %9557
  %9560 = call float @dx.op.unary.f32(i32 7, float %9559)  ; Saturate(value)
  %9561 = extractvalue %dx.types.CBufRet.f32 %9556, 2
  %9562 = extractvalue %dx.types.CBufRet.f32 %9556, 3
  %9563 = fadd fast float %9562, %9561
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fmul fast float %9560, %9544
  %9566 = fmul fast float %9565, %9564
  br label %9567

; <label>:9567                                    ; preds = %9528, %9447, %9282, %9264, %9262
  %9568 = phi float [ %9291, %9282 ], [ %9450, %9447 ], [ %9532, %9528 ], [ 0.000000e+00, %9262 ], [ 0.000000e+00, %9264 ]
  %9569 = phi float [ %9325, %9282 ], [ %9484, %9447 ], [ %9566, %9528 ], [ 0.000000e+00, %9262 ], [ 0.000000e+00, %9264 ]
  %9570 = phi float [ %9312, %9282 ], [ %9471, %9447 ], [ %9553, %9528 ], [ 0.000000e+00, %9262 ], [ 0.000000e+00, %9264 ]
  %9571 = phi float [ %9313, %9282 ], [ %9472, %9447 ], [ %9554, %9528 ], [ 0.000000e+00, %9262 ], [ 0.000000e+00, %9264 ]
  %9572 = phi float [ %9314, %9282 ], [ %9473, %9447 ], [ %9555, %9528 ], [ 0.000000e+00, %9262 ], [ 0.000000e+00, %9264 ]
  %9573 = fmul fast float %9205, %9569
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 2
  %9576 = fsub fast float %9212, %9575
  %9577 = fcmp fast olt float %9573, -2.000000e+01
  %9578 = call float @dx.op.unary.f32(i32 21, float %9573)  ; Exp(value)
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 2
  %9581 = extractvalue %dx.types.CBufRet.f32 %9579, 3
  %9582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9583 = extractvalue %dx.types.CBufRet.f32 %9582, 2
  %9584 = fmul fast float %9581, %9576
  %9585 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9586 = fsub fast float 1.000000e+00, %9585
  %9587 = fmul fast float %9197, 5.000000e-01
  %9588 = fadd fast float %9587, 5.000000e-01
  %9589 = call float @dx.op.unary.f32(i32 7, float %9588)  ; Saturate(value)
  %9590 = fsub fast float 1.000000e+00, %9589
  %9591 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9586)  ; FMax(a,b)
  %9592 = fdiv fast float %9590, %9591
  %9593 = fsub fast float %9576, %9154
  %9594 = call float @dx.op.unary.f32(i32 6, float %9593)  ; FAbs(value)
  %9595 = fmul fast float %9594, %9580
  %9596 = call float @dx.op.unary.f32(i32 7, float %9592)  ; Saturate(value)
  %9597 = fsub fast float 1.000000e+00, %9595
  %9598 = fmul fast float %9597, %9596
  %9599 = fadd fast float %9598, %9595
  %9600 = fmul fast float %9583, %9576
  %9601 = call float @dx.op.unary.f32(i32 7, float %9600)  ; Saturate(value)
  %9602 = fsub fast float 1.000000e+00, %9599
  %9603 = fmul fast float %9602, %9601
  %9604 = fadd fast float %9603, %9599
  %9605 = call float @dx.op.unary.f32(i32 7, float %9604)  ; Saturate(value)
  %9606 = fadd fast float %9578, -1.000000e+00
  %9607 = select i1 %9577, float -1.000000e+00, float %9606
  %9608 = fmul fast float %9605, %9607
  %9609 = fadd fast float %9608, 1.000000e+00
  %9610 = fsub fast float -0.000000e+00, %9608
  %9611 = fmul fast float %9570, %9610
  %9612 = fmul fast float %9571, %9610
  %9613 = fmul fast float %9572, %9610
  br label %9614

; <label>:9614                                    ; preds = %9567, %9163
  %9615 = phi float [ %9568, %9567 ], [ 0.000000e+00, %9163 ]
  %9616 = phi float [ %9609, %9567 ], [ 1.000000e+00, %9163 ]
  %9617 = phi float [ %9611, %9567 ], [ 0.000000e+00, %9163 ]
  %9618 = phi float [ %9612, %9567 ], [ 0.000000e+00, %9163 ]
  %9619 = phi float [ %9613, %9567 ], [ 0.000000e+00, %9163 ]
  %9620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9621 = extractvalue %dx.types.CBufRet.f32 %9620, 1
  %9622 = fsub fast float 1.000000e+00, %9616
  %9623 = fmul fast float %9622, %9198
  %9624 = fmul fast float %9623, %9621
  %9625 = fsub fast float %9198, %9624
  br i1 %9191, label %9626, label %9655, !dx.controlflow.hints !174

; <label>:9626                                    ; preds = %9614
  %9627 = fmul fast float %9199, %9188
  %9628 = fadd fast float %9627, %9189
  %9629 = call float @dx.op.unary.f32(i32 7, float %9628)  ; Saturate(value)
  %9630 = fmul fast float %9170, %9625
  %9631 = fsub fast float -0.000000e+00, %9630
  %9632 = fmul fast float %9171, %9625
  %9633 = fsub fast float -0.000000e+00, %9632
  %9634 = call float @dx.op.unary.f32(i32 21, float %9631)  ; Exp(value)
  %9635 = call float @dx.op.unary.f32(i32 21, float %9633)  ; Exp(value)
  %9636 = call float @dx.op.binary.f32(i32 35, float %9178, float %9634)  ; FMax(a,b)
  %9637 = call float @dx.op.binary.f32(i32 35, float %9178, float %9635)  ; FMax(a,b)
  %9638 = fsub fast float %9637, %9636
  %9639 = fmul fast float %9638, %9629
  %9640 = fadd fast float %9639, %9636
  %9641 = call float @dx.op.unary.f32(i32 7, float %9640)  ; Saturate(value)
  %9642 = fsub fast float %9175, %9180
  %9643 = fsub fast float %9176, %9181
  %9644 = fsub fast float %9177, %9182
  %9645 = fmul fast float %9629, %9642
  %9646 = fmul fast float %9629, %9643
  %9647 = fmul fast float %9629, %9644
  %9648 = fadd fast float %9645, %9180
  %9649 = fadd fast float %9646, %9181
  %9650 = fadd fast float %9647, %9182
  %9651 = fsub fast float 1.000000e+00, %9641
  %9652 = fmul fast float %9651, %9648
  %9653 = fmul fast float %9651, %9649
  %9654 = fmul fast float %9651, %9650
  br label %9714

; <label>:9655                                    ; preds = %9614
  %9656 = fmul fast float %9625, %9187
  %9657 = call float @dx.op.unary.f32(i32 7, float %9656)  ; Saturate(value)
  %9658 = fsub fast float 2.000000e+00, %9657
  %9659 = fmul fast float %9657, 9.921875e-01
  %9660 = fmul fast float %9659, %9658
  %9661 = fadd fast float %9660, 3.906250e-03
  %9662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9661, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9663 = extractvalue %dx.types.ResRet.f32 %9662, 0
  %9664 = fsub fast float %9657, %9663
  %9665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9664)  ; FMax(a,b)
  %9666 = fmul fast float %9173, %9154
  %9667 = call float @dx.op.unary.f32(i32 6, float %9666)  ; FAbs(value)
  %9668 = fcmp fast ogt float %9667, 0x3EB0C6F7A0000000
  br i1 %9668, label %9669, label %9675, !dx.controlflow.hints !175

; <label>:9669                                    ; preds = %9655
  %9670 = fmul fast float %9666, 0xBFF7154760000000
  %9671 = call float @dx.op.unary.f32(i32 21, float %9670)  ; Exp(value)
  %9672 = fsub fast float 1.000000e+00, %9671
  %9673 = fdiv fast float %9672, %9666
  %9674 = fmul fast float %9673, %9183
  br label %9675

; <label>:9675                                    ; preds = %9669, %9655
  %9676 = phi float [ %9674, %9669 ], [ %9183, %9655 ]
  %9677 = fadd fast float %9676, %9185
  %9678 = fmul fast float %9677, %9665
  %9679 = fmul fast float %9170, %9678
  %9680 = fsub fast float -0.000000e+00, %9679
  %9681 = fmul fast float %9171, %9678
  %9682 = fsub fast float -0.000000e+00, %9681
  %9683 = fmul fast float %9172, %9678
  %9684 = fsub fast float -0.000000e+00, %9683
  %9685 = call float @dx.op.unary.f32(i32 21, float %9680)  ; Exp(value)
  %9686 = call float @dx.op.unary.f32(i32 21, float %9682)  ; Exp(value)
  %9687 = call float @dx.op.unary.f32(i32 21, float %9684)  ; Exp(value)
  %9688 = fmul fast float %9199, %9199
  %9689 = fadd fast float %9688, 1.000000e+00
  %9690 = fmul fast float %9689, 0x3FAE8EC8A0000000
  %9691 = fmul fast float %9690, %9180
  %9692 = fmul fast float %9690, %9181
  %9693 = fmul fast float %9690, %9182
  %9694 = fmul fast float %9199, %9178
  %9695 = fsub fast float 1.000000e+00, %9694
  %9696 = fmul fast float %9178, %9178
  %9697 = fsub fast float 1.000000e+00, %9696
  %9698 = fmul fast float %9697, 0x3FB45F3060000000
  %9699 = fmul fast float %9695, %9695
  %9700 = fdiv fast float 1.000000e+00, %9699
  %9701 = fmul fast float %9698, %9700
  %9702 = fmul fast float %9701, %9175
  %9703 = fmul fast float %9701, %9176
  %9704 = fmul fast float %9701, %9177
  %9705 = fadd fast float %9702, %9691
  %9706 = fadd fast float %9703, %9692
  %9707 = fadd fast float %9704, %9693
  %9708 = fsub fast float 1.000000e+00, %9685
  %9709 = fsub fast float 1.000000e+00, %9686
  %9710 = fsub fast float 1.000000e+00, %9687
  %9711 = fmul fast float %9705, %9708
  %9712 = fmul fast float %9706, %9709
  %9713 = fmul fast float %9707, %9710
  br label %9714

; <label>:9714                                    ; preds = %9675, %9626
  %9715 = phi float [ %9652, %9626 ], [ %9711, %9675 ]
  %9716 = phi float [ %9653, %9626 ], [ %9712, %9675 ]
  %9717 = phi float [ %9654, %9626 ], [ %9713, %9675 ]
  %9718 = phi float [ %9641, %9626 ], [ %9685, %9675 ]
  %9719 = phi float [ %9641, %9626 ], [ %9686, %9675 ]
  %9720 = phi float [ %9641, %9626 ], [ %9687, %9675 ]
  br i1 %9207, label %9721, label %9919, !dx.controlflow.hints !176

; <label>:9721                                    ; preds = %9714
  %9722 = extractvalue %dx.types.CBufRet.f32 %9620, 0
  %9723 = fmul fast float %9722, %9622
  %9724 = fsub fast float %9617, %9715
  %9725 = fsub fast float %9618, %9716
  %9726 = fsub fast float %9619, %9717
  %9727 = fmul fast float %9723, %9724
  %9728 = fmul fast float %9723, %9725
  %9729 = fmul fast float %9723, %9726
  %9730 = fadd fast float %9727, %9715
  %9731 = fadd fast float %9728, %9716
  %9732 = fadd fast float %9729, %9717
  %9733 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9718)  ; FMax(a,b)
  %9734 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9719)  ; FMax(a,b)
  %9735 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9720)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9616)  ; FMax(a,b)
  %9737 = call float @dx.op.binary.f32(i32 35, float %9615, float %9625)  ; FMax(a,b)
  %9738 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9737)  ; FMax(a,b)
  %9739 = fdiv fast float %9615, %9738
  %9740 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9741 = fdiv fast float %9625, %9738
  %9742 = call float @dx.op.unary.f32(i32 7, float %9741)  ; Saturate(value)
  %9743 = fcmp fast une float %9736, 1.000000e+00
  br i1 %9743, label %9744, label %9757, !dx.controlflow.hints !177

; <label>:9744                                    ; preds = %9721
  %9745 = call float @dx.op.unary.f32(i32 23, float %9736)  ; Log(value)
  %9746 = fmul fast float %9745, 0x3FE62E4300000000
  %9747 = fmul fast float %9617, %9746
  %9748 = fsub fast float -0.000000e+00, %9747
  %9749 = fmul fast float %9618, %9746
  %9750 = fsub fast float -0.000000e+00, %9749
  %9751 = fmul fast float %9619, %9746
  %9752 = fsub fast float -0.000000e+00, %9751
  %9753 = fsub fast float 1.000000e+00, %9736
  %9754 = fdiv fast float %9748, %9753
  %9755 = fdiv fast float %9750, %9753
  %9756 = fdiv fast float %9752, %9753
  br label %9757

; <label>:9757                                    ; preds = %9744, %9721
  %9758 = phi float [ %9754, %9744 ], [ %9617, %9721 ]
  %9759 = phi float [ %9755, %9744 ], [ %9618, %9721 ]
  %9760 = phi float [ %9756, %9744 ], [ %9619, %9721 ]
  %9761 = phi float [ %9746, %9744 ], [ 0.000000e+00, %9721 ]
  %9762 = fcmp fast une float %9733, 1.000000e+00
  br i1 %9762, label %9763, label %9770, !dx.controlflow.hints !178

; <label>:9763                                    ; preds = %9757
  %9764 = call float @dx.op.unary.f32(i32 23, float %9733)  ; Log(value)
  %9765 = fmul fast float %9764, 0x3FE62E4300000000
  %9766 = fmul fast float %9730, %9765
  %9767 = fsub fast float -0.000000e+00, %9766
  %9768 = fsub fast float 1.000000e+00, %9733
  %9769 = fdiv fast float %9767, %9768
  br label %9770

; <label>:9770                                    ; preds = %9763, %9757
  %9771 = phi float [ %9769, %9763 ], [ %9730, %9757 ]
  %9772 = phi float [ %9765, %9763 ], [ 0.000000e+00, %9757 ]
  %9773 = fcmp fast une float %9734, 1.000000e+00
  br i1 %9773, label %9774, label %9781, !dx.controlflow.hints !178

; <label>:9774                                    ; preds = %9770
  %9775 = call float @dx.op.unary.f32(i32 23, float %9734)  ; Log(value)
  %9776 = fmul fast float %9775, 0x3FE62E4300000000
  %9777 = fmul fast float %9731, %9776
  %9778 = fsub fast float -0.000000e+00, %9777
  %9779 = fsub fast float 1.000000e+00, %9734
  %9780 = fdiv fast float %9778, %9779
  br label %9781

; <label>:9781                                    ; preds = %9774, %9770
  %9782 = phi float [ %9780, %9774 ], [ %9731, %9770 ]
  %9783 = phi float [ %9776, %9774 ], [ 0.000000e+00, %9770 ]
  %9784 = fcmp fast une float %9735, 1.000000e+00
  br i1 %9784, label %9785, label %9792, !dx.controlflow.hints !178

; <label>:9785                                    ; preds = %9781
  %9786 = call float @dx.op.unary.f32(i32 23, float %9735)  ; Log(value)
  %9787 = fmul fast float %9786, 0x3FE62E4300000000
  %9788 = fmul fast float %9732, %9787
  %9789 = fsub fast float -0.000000e+00, %9788
  %9790 = fsub fast float 1.000000e+00, %9735
  %9791 = fdiv fast float %9789, %9790
  br label %9792

; <label>:9792                                    ; preds = %9785, %9781
  %9793 = phi float [ %9791, %9785 ], [ %9732, %9781 ]
  %9794 = phi float [ %9787, %9785 ], [ 0.000000e+00, %9781 ]
  %9795 = fmul fast float %9758, %9742
  %9796 = fmul fast float %9759, %9742
  %9797 = fmul fast float %9760, %9742
  %9798 = fmul fast float %9761, %9742
  %9799 = fmul fast float %9771, %9740
  %9800 = fmul fast float %9782, %9740
  %9801 = fmul fast float %9793, %9740
  %9802 = fmul fast float %9772, %9740
  %9803 = fmul fast float %9783, %9740
  %9804 = fmul fast float %9794, %9740
  %9805 = fadd fast float %9799, %9795
  %9806 = fadd fast float %9800, %9796
  %9807 = fadd fast float %9801, %9797
  %9808 = fadd fast float %9802, %9798
  %9809 = fadd fast float %9803, %9798
  %9810 = fadd fast float %9804, %9798
  %9811 = fcmp fast une float %9808, 0.000000e+00
  br i1 %9811, label %9812, label %9819, !dx.controlflow.hints !179

; <label>:9812                                    ; preds = %9792
  %9813 = fmul fast float %9808, 0x3FF7154760000000
  %9814 = call float @dx.op.unary.f32(i32 21, float %9813)  ; Exp(value)
  %9815 = fsub fast float 1.000000e+00, %9814
  %9816 = fmul fast float %9805, %9815
  %9817 = fsub fast float -0.000000e+00, %9816
  %9818 = fdiv fast float %9817, %9808
  br label %9819

; <label>:9819                                    ; preds = %9812, %9792
  %9820 = phi float [ %9814, %9812 ], [ 1.000000e+00, %9792 ]
  %9821 = phi float [ %9818, %9812 ], [ %9805, %9792 ]
  %9822 = fcmp fast une float %9809, 0.000000e+00
  br i1 %9822, label %9823, label %9830, !dx.controlflow.hints !179

; <label>:9823                                    ; preds = %9819
  %9824 = fmul fast float %9809, 0x3FF7154760000000
  %9825 = call float @dx.op.unary.f32(i32 21, float %9824)  ; Exp(value)
  %9826 = fsub fast float 1.000000e+00, %9825
  %9827 = fmul fast float %9806, %9826
  %9828 = fsub fast float -0.000000e+00, %9827
  %9829 = fdiv fast float %9828, %9809
  br label %9830

; <label>:9830                                    ; preds = %9823, %9819
  %9831 = phi float [ %9825, %9823 ], [ 1.000000e+00, %9819 ]
  %9832 = phi float [ %9829, %9823 ], [ %9806, %9819 ]
  %9833 = fcmp fast une float %9810, 0.000000e+00
  br i1 %9833, label %9834, label %9841, !dx.controlflow.hints !179

; <label>:9834                                    ; preds = %9830
  %9835 = fmul fast float %9810, 0x3FF7154760000000
  %9836 = call float @dx.op.unary.f32(i32 21, float %9835)  ; Exp(value)
  %9837 = fsub fast float 1.000000e+00, %9836
  %9838 = fmul fast float %9807, %9837
  %9839 = fsub fast float -0.000000e+00, %9838
  %9840 = fdiv fast float %9839, %9810
  br label %9841

; <label>:9841                                    ; preds = %9834, %9830
  %9842 = phi float [ %9836, %9834 ], [ 1.000000e+00, %9830 ]
  %9843 = phi float [ %9840, %9834 ], [ %9807, %9830 ]
  %9844 = fcmp fast ogt float %9740, %9742
  br i1 %9844, label %9845, label %9865

; <label>:9845                                    ; preds = %9841
  %9846 = fsub fast float 1.000000e+00, %9742
  %9847 = fmul fast float %9758, %9846
  %9848 = fmul fast float %9759, %9846
  %9849 = fmul fast float %9760, %9846
  %9850 = fmul fast float %9761, %9846
  %9851 = fcmp fast une float %9850, 0.000000e+00
  br i1 %9851, label %9852, label %9903, !dx.controlflow.hints !180

; <label>:9852                                    ; preds = %9845
  %9853 = fmul fast float %9850, 0x3FF7154760000000
  %9854 = call float @dx.op.unary.f32(i32 21, float %9853)  ; Exp(value)
  %9855 = fsub fast float 1.000000e+00, %9854
  %9856 = fmul fast float %9847, %9855
  %9857 = fsub fast float -0.000000e+00, %9856
  %9858 = fmul fast float %9848, %9855
  %9859 = fsub fast float -0.000000e+00, %9858
  %9860 = fmul fast float %9849, %9855
  %9861 = fsub fast float -0.000000e+00, %9860
  %9862 = fdiv fast float %9857, %9850
  %9863 = fdiv fast float %9859, %9850
  %9864 = fdiv fast float %9861, %9850
  br label %9903

; <label>:9865                                    ; preds = %9841
  %9866 = fsub fast float 1.000000e+00, %9740
  %9867 = fmul fast float %9771, %9866
  %9868 = fmul fast float %9782, %9866
  %9869 = fmul fast float %9793, %9866
  %9870 = fmul fast float %9772, %9866
  %9871 = fmul fast float %9783, %9866
  %9872 = fmul fast float %9794, %9866
  %9873 = fcmp fast une float %9870, 0.000000e+00
  br i1 %9873, label %9874, label %9881, !dx.controlflow.hints !179

; <label>:9874                                    ; preds = %9865
  %9875 = fmul fast float %9870, 0x3FF7154760000000
  %9876 = call float @dx.op.unary.f32(i32 21, float %9875)  ; Exp(value)
  %9877 = fsub fast float 1.000000e+00, %9876
  %9878 = fmul fast float %9867, %9877
  %9879 = fsub fast float -0.000000e+00, %9878
  %9880 = fdiv fast float %9879, %9870
  br label %9881

; <label>:9881                                    ; preds = %9874, %9865
  %9882 = phi float [ %9880, %9874 ], [ %9867, %9865 ]
  %9883 = phi float [ %9876, %9874 ], [ 1.000000e+00, %9865 ]
  %9884 = fcmp fast une float %9871, 0.000000e+00
  br i1 %9884, label %9885, label %9892, !dx.controlflow.hints !179

; <label>:9885                                    ; preds = %9881
  %9886 = fmul fast float %9871, 0x3FF7154760000000
  %9887 = call float @dx.op.unary.f32(i32 21, float %9886)  ; Exp(value)
  %9888 = fsub fast float 1.000000e+00, %9887
  %9889 = fmul fast float %9868, %9888
  %9890 = fsub fast float -0.000000e+00, %9889
  %9891 = fdiv fast float %9890, %9871
  br label %9892

; <label>:9892                                    ; preds = %9885, %9881
  %9893 = phi float [ %9891, %9885 ], [ %9868, %9881 ]
  %9894 = phi float [ %9887, %9885 ], [ 1.000000e+00, %9881 ]
  %9895 = fcmp fast une float %9872, 0.000000e+00
  br i1 %9895, label %9896, label %9903, !dx.controlflow.hints !179

; <label>:9896                                    ; preds = %9892
  %9897 = fmul fast float %9872, 0x3FF7154760000000
  %9898 = call float @dx.op.unary.f32(i32 21, float %9897)  ; Exp(value)
  %9899 = fsub fast float 1.000000e+00, %9898
  %9900 = fmul fast float %9869, %9899
  %9901 = fsub fast float -0.000000e+00, %9900
  %9902 = fdiv fast float %9901, %9872
  br label %9903

; <label>:9903                                    ; preds = %9896, %9892, %9852, %9845
  %9904 = phi float [ %9902, %9896 ], [ %9864, %9852 ], [ %9849, %9845 ], [ %9869, %9892 ]
  %9905 = phi float [ %9893, %9896 ], [ %9863, %9852 ], [ %9848, %9845 ], [ %9893, %9892 ]
  %9906 = phi float [ %9882, %9896 ], [ %9862, %9852 ], [ %9847, %9845 ], [ %9882, %9892 ]
  %9907 = phi float [ %9898, %9896 ], [ %9854, %9852 ], [ 1.000000e+00, %9845 ], [ 1.000000e+00, %9892 ]
  %9908 = phi float [ %9894, %9896 ], [ %9854, %9852 ], [ 1.000000e+00, %9845 ], [ %9894, %9892 ]
  %9909 = phi float [ %9883, %9896 ], [ %9854, %9852 ], [ 1.000000e+00, %9845 ], [ %9883, %9892 ]
  %9910 = fmul fast float %9909, %9821
  %9911 = fmul fast float %9908, %9832
  %9912 = fmul fast float %9907, %9843
  %9913 = fadd fast float %9910, %9906
  %9914 = fadd fast float %9911, %9905
  %9915 = fadd fast float %9912, %9904
  %9916 = fmul fast float %9909, %9820
  %9917 = fmul fast float %9908, %9831
  %9918 = fmul fast float %9907, %9842
  br label %9919

; <label>:9919                                    ; preds = %9903, %9714
  %9920 = phi float [ %9918, %9903 ], [ %9720, %9714 ]
  %9921 = phi float [ %9917, %9903 ], [ %9719, %9714 ]
  %9922 = phi float [ %9916, %9903 ], [ %9718, %9714 ]
  %9923 = phi float [ %9915, %9903 ], [ %9717, %9714 ]
  %9924 = phi float [ %9914, %9903 ], [ %9716, %9714 ]
  %9925 = phi float [ %9913, %9903 ], [ %9715, %9714 ]
  %9926 = fmul fast float %9925, %8871
  %9927 = fmul fast float %9924, %8871
  %9928 = fmul fast float %9923, %8871
  %9929 = fmul fast float %9922, %9162
  %9930 = call float @dx.op.dot3.f32(i32 55, float %9922, float %9921, float %9920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9931 = call float @dx.op.dot3.f32(i32 55, float %9926, float %9927, float %9928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9932 = select i1 %257, float %9930, float %9922
  %9933 = select i1 %257, float %9930, float %9921
  %9934 = select i1 %257, float 1.000000e+00, float %9920
  %9935 = select i1 %257, float %9931, float %9926
  %9936 = select i1 %257, float 0.000000e+00, float %9927
  %9937 = select i1 %257, float 0.000000e+00, float %9928
  %9938 = fmul fast float %9932, %9156
  %9939 = fmul fast float %9933, %9157
  %9940 = fmul fast float %9934, %9158
  %9941 = fadd fast float %9938, %9935
  %9942 = fadd fast float %9939, %9936
  %9943 = fadd fast float %9937, %9940
  %9944 = fmul fast float %9932, %9159
  %9945 = fmul fast float %9933, %9160
  %9946 = fmul fast float %9934, %9161
  %9947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9948 = extractvalue %dx.types.CBufRet.i32 %9947, 0
  %9949 = icmp eq i32 %9948, 0
  br i1 %9949, label %10317, label %9950, !dx.controlflow.hints !181

; <label>:9950                                    ; preds = %9919
  %9951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9952 = extractvalue %dx.types.CBufRet.f32 %9951, 2
  %9953 = extractvalue %dx.types.CBufRet.f32 %9951, 3
  %9954 = fmul fast float %9952, %119
  %9955 = fmul fast float %9953, %120
  %9956 = fmul fast float %9954, 2.000000e+00
  %9957 = fmul fast float %9955, 2.000000e+00
  %9958 = fsub fast float 1.000000e+00, %9956
  %9959 = fsub fast float 1.000000e+00, %9957
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 0
  %9962 = extractvalue %dx.types.CBufRet.f32 %9960, 1
  %9963 = extractvalue %dx.types.CBufRet.f32 %9960, 2
  %9964 = fmul fast float %9958, %9961
  %9965 = fmul fast float %9958, %9962
  %9966 = fmul fast float %9958, %9963
  %9967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9968 = extractvalue %dx.types.CBufRet.f32 %9967, 0
  %9969 = extractvalue %dx.types.CBufRet.f32 %9967, 1
  %9970 = extractvalue %dx.types.CBufRet.f32 %9967, 2
  %9971 = fmul fast float %9959, %9968
  %9972 = fmul fast float %9959, %9969
  %9973 = fmul fast float %9959, %9970
  %9974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9975 = extractvalue %dx.types.CBufRet.f32 %9974, 0
  %9976 = extractvalue %dx.types.CBufRet.f32 %9974, 1
  %9977 = extractvalue %dx.types.CBufRet.f32 %9974, 2
  %9978 = fadd fast float %9971, %9975
  %9979 = fadd fast float %9978, %9964
  %9980 = fadd fast float %9972, %9976
  %9981 = fadd fast float %9980, %9965
  %9982 = fadd fast float %9973, %9977
  %9983 = fadd fast float %9982, %9966
  %9984 = fmul fast float %9979, %9155
  %9985 = fmul fast float %9981, %9155
  %9986 = fmul fast float %9983, %9155
  %9987 = fmul fast float %9984, %9984
  %9988 = fmul fast float %9985, %9985
  %9989 = fadd fast float %9987, %9988
  %9990 = fmul fast float %9986, %9986
  %9991 = fadd fast float %9989, %9990
  %9992 = call float @dx.op.unary.f32(i32 24, float %9991)  ; Sqrt(value)
  %9993 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %9994 = fsub fast float %9992, %9993
  %9995 = extractvalue %dx.types.CBufRet.f32 %8882, 2
  %9996 = fmul fast float %9994, %9995
  %9997 = call float @dx.op.unary.f32(i32 7, float %9996)  ; Saturate(value)
  %9998 = fadd fast float %9997, -5.000000e-01
  %9999 = fmul fast float %9998, 2.000000e+00
  %10000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10001 = extractvalue %dx.types.CBufRet.f32 %10000, 2
  %10002 = call float @dx.op.binary.f32(i32 36, float %10001, float %9999)  ; FMin(a,b)
  %10003 = fsub fast float -0.000000e+00, %10001
  %10004 = fcmp fast ogt float %10002, %10003
  br i1 %10004, label %10005, label %10317, !dx.controlflow.hints !182

; <label>:10005                                   ; preds = %9950
  %10006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10007 = extractvalue %dx.types.CBufRet.f32 %10006, 3
  %10008 = fcmp fast ogt float %10007, 0.000000e+00
  br i1 %10008, label %10009, label %10084, !dx.controlflow.hints !183

; <label>:10009                                   ; preds = %10005
  %10010 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10011 = extractvalue %dx.types.Dimensions %10010, 0
  %10012 = sitofp i32 %10011 to float
  %10013 = extractvalue %dx.types.Dimensions %10010, 1
  %10014 = sitofp i32 %10013 to float
  %10015 = fmul fast float %9954, %10012
  %10016 = fmul fast float %9955, %10014
  %10017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10018 = extractvalue %dx.types.CBufRet.f32 %10017, 1
  %10019 = fsub fast float -0.000000e+00, %10018
  %10020 = fptoui float %10019 to i32
  %10021 = fptoui float %10015 to i32
  %10022 = fptoui float %10016 to i32
  %10023 = and i32 %10020, 31
  %10024 = lshr i32 %10021, %10023
  %10025 = lshr i32 %10022, %10023
  %10026 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10020, i32 %10024, i32 %10025, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10027 = extractvalue %dx.types.ResRet.f32 %10026, 0
  %10028 = fcmp fast olt float %10027, -1.000000e+00
  %10029 = fcmp fast ogt float %10027, -1.000000e+00
  %10030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10031 = extractvalue %dx.types.CBufRet.f32 %10030, 1
  %10032 = select i1 %10029, float %10031, float 1.000000e+00
  %10033 = fadd fast float %10027, 1.000000e+00
  %10034 = fmul fast float %10032, %10033
  %10035 = call float @dx.op.unary.f32(i32 6, float %10034)  ; FAbs(value)
  %10036 = extractvalue %dx.types.CBufRet.f32 %10030, 3
  %10037 = fcmp fast oge float %10035, %10036
  %10038 = select i1 %10037, float 0x4197782600000000, float %10035
  %10039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10040 = extractvalue %dx.types.CBufRet.f32 %10039, 0
  %10041 = extractvalue %dx.types.CBufRet.f32 %10039, 1
  %10042 = extractvalue %dx.types.CBufRet.f32 %10039, 2
  %10043 = select i1 %10028, float %10040, float %9961
  %10044 = select i1 %10028, float %10041, float %9962
  %10045 = select i1 %10028, float %10042, float %9963
  %10046 = fmul fast float %10043, %9958
  %10047 = fmul fast float %10044, %9958
  %10048 = fmul fast float %10045, %9958
  %10049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10050 = extractvalue %dx.types.CBufRet.f32 %10049, 0
  %10051 = extractvalue %dx.types.CBufRet.f32 %10049, 1
  %10052 = extractvalue %dx.types.CBufRet.f32 %10049, 2
  %10053 = select i1 %10028, float %10050, float %9968
  %10054 = select i1 %10028, float %10051, float %9969
  %10055 = select i1 %10028, float %10052, float %9970
  %10056 = fmul fast float %10053, %9959
  %10057 = fmul fast float %10054, %9959
  %10058 = fmul fast float %10055, %9959
  %10059 = fadd fast float %10056, %10046
  %10060 = fadd fast float %10057, %10047
  %10061 = fadd fast float %10058, %10048
  %10062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10063 = extractvalue %dx.types.CBufRet.f32 %10062, 0
  %10064 = extractvalue %dx.types.CBufRet.f32 %10062, 1
  %10065 = extractvalue %dx.types.CBufRet.f32 %10062, 2
  %10066 = select i1 %10028, float %10063, float %9975
  %10067 = select i1 %10028, float %10064, float %9976
  %10068 = select i1 %10028, float %10065, float %9977
  %10069 = fadd fast float %10059, %10066
  %10070 = fadd fast float %10060, %10067
  %10071 = fadd fast float %10061, %10068
  %10072 = fmul fast float %10069, %10038
  %10073 = fmul fast float %10070, %10038
  %10074 = fmul fast float %10071, %10038
  %10075 = fmul fast float %10072, %10072
  %10076 = fmul fast float %10073, %10073
  %10077 = fadd fast float %10075, %10076
  %10078 = fmul fast float %10074, %10074
  %10079 = fadd fast float %10077, %10078
  %10080 = call float @dx.op.unary.f32(i32 24, float %10079)  ; Sqrt(value)
  %10081 = fsub fast float %10080, %9993
  %10082 = fmul fast float %10081, %9995
  %10083 = call float @dx.op.unary.f32(i32 7, float %10082)  ; Saturate(value)
  br label %10084

; <label>:10084                                   ; preds = %10009, %10005
  %10085 = phi float [ %10083, %10009 ], [ 1.000000e+00, %10005 ]
  %10086 = fmul fast float %10002, 5.000000e-01
  %10087 = fadd fast float %10086, 5.000000e-01
  %10088 = call float @dx.op.unary.f32(i32 22, float %10087)  ; Frc(value)
  %10089 = call float @dx.op.unary.f32(i32 27, float %10088)  ; Round_ni(value)
  %10090 = call float @dx.op.unary.f32(i32 22, float %10088)  ; Frc(value)
  %10091 = fmul fast float %10090, 2.000000e+00
  %10092 = fadd fast float %10091, -1.000000e+00
  %10093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9954, float %9955, float %10089, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10094 = extractvalue %dx.types.ResRet.f32 %10093, 0
  %10095 = extractvalue %dx.types.ResRet.f32 %10093, 1
  %10096 = extractvalue %dx.types.ResRet.f32 %10093, 2
  %10097 = extractvalue %dx.types.ResRet.f32 %10093, 3
  %10098 = fadd fast float %10094, -5.000000e-01
  %10099 = fadd fast float %10096, -5.000000e-01
  %10100 = fmul fast float %10098, 0xBFD5555560000000
  %10101 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10099, float %10100)  ; FMad(a,b,c)
  %10102 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10095, float 0.000000e+00)  ; FMad(a,b,c)
  %10103 = fadd fast float %10102, %10097
  %10104 = fmul fast float %10098, -7.500000e-01
  %10105 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10099, float %10104)  ; FMad(a,b,c)
  %10106 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10095, float 0.000000e+00)  ; FMad(a,b,c)
  %10107 = fadd fast float %10106, %10097
  %10108 = call float @dx.op.binary.f32(i32 35, float %10101, float -1.000000e+00)  ; FMax(a,b)
  %10109 = call float @dx.op.binary.f32(i32 35, float %10103, float -1.000000e+00)  ; FMax(a,b)
  %10110 = call float @dx.op.binary.f32(i32 35, float %10105, float -1.000000e+00)  ; FMax(a,b)
  %10111 = call float @dx.op.binary.f32(i32 35, float %10107, float -1.000000e+00)  ; FMax(a,b)
  %10112 = call float @dx.op.binary.f32(i32 36, float %10108, float 1.000000e+00)  ; FMin(a,b)
  %10113 = call float @dx.op.binary.f32(i32 36, float %10109, float 1.000000e+00)  ; FMin(a,b)
  %10114 = call float @dx.op.binary.f32(i32 36, float %10110, float 1.000000e+00)  ; FMin(a,b)
  %10115 = call float @dx.op.binary.f32(i32 36, float %10111, float 1.000000e+00)  ; FMin(a,b)
  %10116 = fcmp fast olt float %10112, 0x3FEFFF8020000000
  br i1 %10116, label %10117, label %10232, !dx.controlflow.hints !184

; <label>:10117                                   ; preds = %10084
  %10118 = extractvalue %dx.types.CBufRet.f32 %10000, 3
  %10119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10120 = extractvalue %dx.types.CBufRet.f32 %10119, 0
  %10121 = extractvalue %dx.types.CBufRet.f32 %10119, 1
  %10122 = extractvalue %dx.types.CBufRet.f32 %10119, 2
  %10123 = extractvalue %dx.types.CBufRet.f32 %10119, 3
  %10124 = fsub fast float %10120, %10112
  %10125 = fsub fast float %10121, %10113
  %10126 = fsub fast float %10122, %10114
  %10127 = fsub fast float %10123, %10115
  %10128 = fmul fast float %10124, %10118
  %10129 = fmul fast float %10125, %10118
  %10130 = fmul fast float %10126, %10118
  %10131 = fmul fast float %10127, %10118
  %10132 = fadd fast float %10128, %10112
  %10133 = fadd fast float %10129, %10113
  %10134 = fsub fast float -0.000000e+00, %10133
  %10135 = fadd fast float %10130, %10114
  %10136 = fadd fast float %10131, %10115
  %10137 = fmul fast float %10132, %10132
  %10138 = fsub fast float %10133, %10137
  %10139 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10138)  ; FMax(a,b)
  %10140 = fdiv fast float 1.000000e+00, %10139
  %10141 = fmul fast float %10133, %10132
  %10142 = fsub fast float %10135, %10141
  %10143 = fsub fast float %10092, %10132
  %10144 = fmul fast float %10092, %10092
  %10145 = fsub fast float %10144, %10133
  %10146 = fmul fast float %10143, %10140
  %10147 = fmul fast float %10146, %10142
  %10148 = fsub fast float %10145, %10147
  %10149 = fmul fast float %10133, %10133
  %10150 = fsub fast float %10136, %10149
  %10151 = fmul fast float %10142, %10142
  %10152 = fmul fast float %10151, %10140
  %10153 = fsub fast float %10150, %10152
  %10154 = fdiv fast float %10148, %10153
  %10155 = fmul fast float %10142, %10154
  %10156 = fsub fast float %10143, %10155
  %10157 = fmul fast float %10156, %10140
  %10158 = fmul fast float %10157, %10132
  %10159 = fsub fast float 1.000000e+00, %10158
  %10160 = fmul fast float %10133, %10154
  %10161 = fsub fast float %10159, %10160
  %10162 = fmul fast float %10157, %10157
  %10163 = fmul fast float %10154, 4.000000e+00
  %10164 = fmul fast float %10163, %10161
  %10165 = fsub fast float %10162, %10164
  %10166 = call float @dx.op.unary.f32(i32 24, float %10165)  ; Sqrt(value)
  %10167 = fcmp fast oge float %10157, 0.000000e+00
  %10168 = fsub fast float -0.000000e+00, %10166
  %10169 = select i1 %10167, float %10168, float %10166
  %10170 = fsub fast float %10169, %10157
  %10171 = fdiv fast float %10170, %10154
  %10172 = fdiv fast float %10161, %10170
  %10173 = fmul fast float %10171, 5.000000e-01
  %10174 = fmul fast float %10172, 2.000000e+00
  %10175 = select i1 %10167, float %10173, float %10174
  %10176 = select i1 %10167, float %10174, float %10173
  %10177 = call float @dx.op.binary.f32(i32 35, float %10175, float %10176)  ; FMax(a,b)
  %10178 = call float @dx.op.binary.f32(i32 36, float %10175, float %10176)  ; FMin(a,b)
  %10179 = fcmp fast ogt float %10092, %10178
  br i1 %10179, label %10180, label %10190

; <label>:10180                                   ; preds = %10117
  %10181 = fsub fast float %10092, %10178
  %10182 = fsub fast float %10177, %10178
  %10183 = fmul fast float %10181, %10182
  %10184 = fmul fast float %10177, %10092
  %10185 = fadd fast float %10177, %10092
  %10186 = fmul fast float %10185, %10132
  %10187 = fadd fast float %10184, %10133
  %10188 = fsub fast float %10187, %10186
  %10189 = fdiv fast float %10188, %10183
  br label %10190

; <label>:10190                                   ; preds = %10180, %10117
  %10191 = phi float [ %10189, %10180 ], [ 0.000000e+00, %10117 ]
  %10192 = fcmp fast ogt float %10092, %10177
  %10193 = fsub fast float %10092, %10177
  br i1 %10192, label %10194, label %10204

; <label>:10194                                   ; preds = %10190
  %10195 = fsub fast float %10177, %10178
  %10196 = fmul fast float %10195, %10193
  %10197 = fmul fast float %10178, %10092
  %10198 = fadd fast float %10178, %10092
  %10199 = fmul fast float %10198, %10132
  %10200 = fsub fast float %10134, %10197
  %10201 = fadd fast float %10200, %10199
  %10202 = fdiv fast float %10201, %10196
  %10203 = fadd fast float %10202, %10191
  br label %10204

; <label>:10204                                   ; preds = %10194, %10190
  %10205 = phi float [ %10203, %10194 ], [ %10191, %10190 ]
  %10206 = fsub fast float %10092, %10178
  %10207 = fmul fast float %10206, %10193
  %10208 = fmul fast float %10178, %10177
  %10209 = fadd fast float %10178, %10177
  %10210 = fmul fast float %10209, %10132
  %10211 = fadd fast float %10208, %10133
  %10212 = fsub fast float %10211, %10210
  %10213 = fdiv fast float %10212, %10207
  %10214 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10215 = fcmp fast oeq float %8883, 0.000000e+00
  %10216 = extractvalue %dx.types.CBufRet.f32 %10000, 0
  %10217 = fcmp fast oeq float %10216, 0.000000e+00
  %10218 = or i1 %10215, %10217
  %10219 = fmul fast float %10216, 2.000000e+00
  %10220 = fadd fast float %10001, %10002
  %10221 = fdiv fast float %10220, %10219
  %10222 = call float @dx.op.unary.f32(i32 7, float %10221)  ; Saturate(value)
  %10223 = fmul fast float %10222, 2.000000e+00
  %10224 = fsub fast float 3.000000e+00, %10223
  %10225 = fmul fast float %10222, %10222
  %10226 = fmul fast float %10225, %10224
  %10227 = select i1 %10218, float 1.000000e+00, float %10226
  %10228 = fmul fast float %10213, %8883
  %10229 = fadd fast float %10214, %10228
  %10230 = call float @dx.op.unary.f32(i32 7, float %10229)  ; Saturate(value)
  %10231 = fmul fast float %10227, %10230
  br label %10232

; <label>:10232                                   ; preds = %10204, %10084
  %10233 = phi float [ %10231, %10204 ], [ 0.000000e+00, %10084 ]
  %10234 = fsub fast float 1.000000e+00, %10233
  %10235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9954, float %9955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10236 = extractvalue %dx.types.ResRet.f32 %10235, 0
  %10237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10238 = extractvalue %dx.types.CBufRet.i32 %10237, 2
  %10239 = icmp eq i32 %10238, 0
  br i1 %10239, label %10245, label %10240

; <label>:10240                                   ; preds = %10232
  %10241 = call float @dx.op.unary.f32(i32 7, float %10233)  ; Saturate(value)
  %10242 = fadd fast float %10236, -1.000000e+00
  %10243 = fmul fast float %10241, %10242
  %10244 = fadd fast float %10243, 1.000000e+00
  br label %10245

; <label>:10245                                   ; preds = %10240, %10232
  %10246 = phi float [ %10244, %10240 ], [ %10234, %10232 ]
  br i1 %10008, label %10247, label %10265

; <label>:10247                                   ; preds = %10245
  %10248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10249 = extractvalue %dx.types.CBufRet.f32 %10248, 1
  %10250 = fsub fast float %10085, %10249
  %10251 = call float @dx.op.unary.f32(i32 7, float %10250)  ; Saturate(value)
  %10252 = fsub fast float %10085, %10007
  %10253 = call float @dx.op.unary.f32(i32 7, float %10252)  ; Saturate(value)
  %10254 = fsub fast float %10251, %10253
  %10255 = fsub fast float %10087, %10253
  %10256 = fdiv fast float %10255, %10254
  %10257 = call float @dx.op.unary.f32(i32 7, float %10256)  ; Saturate(value)
  %10258 = fmul fast float %10257, 2.000000e+00
  %10259 = fsub fast float 3.000000e+00, %10258
  %10260 = fsub fast float %10236, %10246
  %10261 = fmul fast float %10257, %10257
  %10262 = fmul fast float %10261, %10260
  %10263 = fmul fast float %10262, %10259
  %10264 = fadd fast float %10263, %10246
  br label %10265

; <label>:10265                                   ; preds = %10247, %10245
  %10266 = phi float [ %10264, %10247 ], [ %10246, %10245 ]
  %10267 = call float @dx.op.binary.f32(i32 35, float %10236, float %10266)  ; FMax(a,b)
  %10268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10269 = extractvalue %dx.types.CBufRet.i32 %10268, 2
  %10270 = and i32 %10269, 1
  %10271 = icmp eq i32 %10270, 0
  %10272 = fcmp fast une float %10267, 1.000000e+00
  %10273 = and i1 %10272, %10271
  br i1 %10273, label %10274, label %10293

; <label>:10274                                   ; preds = %10265
  %10275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9954, float %9955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10276 = extractvalue %dx.types.ResRet.f32 %10275, 0
  %10277 = extractvalue %dx.types.ResRet.f32 %10275, 1
  %10278 = extractvalue %dx.types.ResRet.f32 %10275, 2
  %10279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10280 = extractvalue %dx.types.CBufRet.f32 %10279, 1
  %10281 = fmul fast float %10280, %10276
  %10282 = fmul fast float %10280, %10277
  %10283 = fmul fast float %10280, %10278
  %10284 = fcmp fast ogt float %10236, 0x3FEFFF2E40000000
  %10285 = fsub fast float 1.000000e+00, %10267
  %10286 = fsub fast float 1.000000e+00, %10236
  %10287 = fdiv fast float %10285, %10286
  %10288 = call float @dx.op.unary.f32(i32 7, float %10287)  ; Saturate(value)
  %10289 = select i1 %10284, float 0.000000e+00, float %10288
  %10290 = fmul fast float %10281, %10289
  %10291 = fmul fast float %10282, %10289
  %10292 = fmul fast float %10283, %10289
  br label %10293

; <label>:10293                                   ; preds = %10274, %10265
  %10294 = phi float [ 0.000000e+00, %10265 ], [ %10290, %10274 ]
  %10295 = phi float [ 0.000000e+00, %10265 ], [ %10291, %10274 ]
  %10296 = phi float [ 0.000000e+00, %10265 ], [ %10292, %10274 ]
  %10297 = fmul fast float %10294, %8871
  %10298 = fmul fast float %10295, %8871
  %10299 = fmul fast float %10296, %8871
  %10300 = fmul fast float %10267, %9929
  %10301 = call float @dx.op.dot3.f32(i32 55, float %10267, float %10267, float %10267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10302 = call float @dx.op.dot3.f32(i32 55, float %10297, float %10298, float %10299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10303 = select i1 %257, float %10301, float %10267
  %10304 = select i1 %257, float 1.000000e+00, float %10267
  %10305 = select i1 %257, float %10302, float %10297
  %10306 = select i1 %257, float 0.000000e+00, float %10298
  %10307 = select i1 %257, float 0.000000e+00, float %10299
  %10308 = fmul fast float %10303, %9941
  %10309 = fmul fast float %10303, %9942
  %10310 = fmul fast float %10304, %9943
  %10311 = fadd fast float %10308, %10305
  %10312 = fadd fast float %10309, %10306
  %10313 = fadd fast float %10307, %10310
  %10314 = fmul fast float %10303, %9944
  %10315 = fmul fast float %10303, %9945
  %10316 = fmul fast float %10304, %9946
  br label %10317

; <label>:10317                                   ; preds = %10293, %9950, %9919, %9151
  %10318 = phi float [ %9156, %9151 ], [ %9941, %9919 ], [ %10311, %10293 ], [ %9941, %9950 ]
  %10319 = phi float [ %9157, %9151 ], [ %9942, %9919 ], [ %10312, %10293 ], [ %9942, %9950 ]
  %10320 = phi float [ %9158, %9151 ], [ %9943, %9919 ], [ %10313, %10293 ], [ %9943, %9950 ]
  %10321 = phi float [ %9159, %9151 ], [ %9944, %9919 ], [ %10314, %10293 ], [ %9944, %9950 ]
  %10322 = phi float [ %9160, %9151 ], [ %9945, %9919 ], [ %10315, %10293 ], [ %9945, %9950 ]
  %10323 = phi float [ %9161, %9151 ], [ %9946, %9919 ], [ %10316, %10293 ], [ %9946, %9950 ]
  %10324 = phi float [ %9162, %9151 ], [ %9929, %9919 ], [ %10300, %10293 ], [ %9929, %9950 ]
  %10325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10326 = extractvalue %dx.types.CBufRet.f32 %10325, 2
  %10327 = extractvalue %dx.types.CBufRet.f32 %10325, 3
  %10328 = fmul fast float %10326, %119
  %10329 = fmul fast float %10327, %120
  %10330 = call float @dx.op.unary.f32(i32 7, float %10328)  ; Saturate(value)
  %10331 = call float @dx.op.unary.f32(i32 7, float %10329)  ; Saturate(value)
  %10332 = select i1 %8893, i32 2, i32 0
  %10333 = or i32 %10332, 1
  %10334 = uitofp i32 %10333 to float
  %10335 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10330, float %10331, float %10334, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10336 = extractvalue %dx.types.ResRet.f32 %10335, 0
  %10337 = extractvalue %dx.types.ResRet.f32 %10335, 1
  %10338 = extractvalue %dx.types.ResRet.f32 %10335, 2
  %10339 = extractvalue %dx.types.ResRet.f32 %10335, 3
  %10340 = add nuw nsw i32 %10332, 2
  %10341 = uitofp i32 %10340 to float
  %10342 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10330, float %10331, float %10341, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10343 = extractvalue %dx.types.ResRet.f32 %10342, 0
  %10344 = extractvalue %dx.types.ResRet.f32 %10342, 1
  %10345 = extractvalue %dx.types.ResRet.f32 %10342, 2
  %10346 = extractvalue %dx.types.ResRet.f32 %10342, 3
  %10347 = call float @dx.op.binary.f32(i32 35, float %10337, float %10338)  ; FMax(a,b)
  %10348 = call float @dx.op.binary.f32(i32 35, float %10336, float %10347)  ; FMax(a,b)
  %10349 = call float @dx.op.binary.f32(i32 35, float %10348, float %10339)  ; FMax(a,b)
  %10350 = call float @dx.op.binary.f32(i32 36, float %10344, float %10345)  ; FMin(a,b)
  %10351 = call float @dx.op.binary.f32(i32 36, float %10343, float %10350)  ; FMin(a,b)
  %10352 = call float @dx.op.binary.f32(i32 36, float %10351, float %10346)  ; FMin(a,b)
  %10353 = fmul fast float %10349, 2.550000e+02
  %10354 = fadd fast float %10353, 0x3F70101020000000
  %10355 = fptoui float %10354 to i32
  %10356 = fmul fast float %10352, 2.550000e+02
  %10357 = fadd fast float %10356, 0x3F70101020000000
  %10358 = fptoui float %10357 to i32
  %10359 = icmp ult i32 %10355, %10358
  br i1 %10359, label %10360, label %10529

; <label>:10360                                   ; preds = %10317
  %10361 = fcmp fast ogt float %105, 9.843750e-01
  %10362 = fadd fast float %9155, -4.000000e+00
  %10363 = select i1 %10361, float -4.000000e+00, float %10362
  %10364 = call float @dx.op.binary.f32(i32 35, float %10363, float 0.000000e+00)  ; FMax(a,b)
  %10365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10366 = extractvalue %dx.types.CBufRet.f32 %10365, 0
  %10367 = fadd fast float %10366, %10364
  %10368 = extractvalue %dx.types.CBufRet.f32 %10365, 2
  %10369 = fmul fast float %10367, %10368
  %10370 = call float @dx.op.unary.f32(i32 23, float %10369)  ; Log(value)
  %10371 = extractvalue %dx.types.CBufRet.f32 %10365, 3
  %10372 = fmul fast float %10371, %10370
  %10373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10374 = extractvalue %dx.types.CBufRet.f32 %10373, 2
  %10375 = fmul fast float %10372, %10374
  %10376 = call float @dx.op.unary.f32(i32 7, float %10375)  ; Saturate(value)
  %10377 = uitofp i32 %10355 to float
  %10378 = uitofp i32 %10358 to float
  %10379 = fadd fast float %10377, 5.000000e-01
  %10380 = fadd fast float %10378, 5.000000e-01
  %10381 = fmul fast float %10374, %10379
  %10382 = fmul fast float %10374, %10380
  %10383 = fadd fast float %10381, 0x3F0FFB4800000000
  %10384 = fadd fast float %10382, 0xBF0FFB4800000000
  %10385 = call float @dx.op.binary.f32(i32 35, float %10376, float %10383)  ; FMax(a,b)
  %10386 = call float @dx.op.binary.f32(i32 36, float %10385, float %10384)  ; FMin(a,b)
  %10387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10388 = extractvalue %dx.types.CBufRet.f32 %10387, 1
  %10389 = extractvalue %dx.types.CBufRet.f32 %10387, 2
  %10390 = extractvalue %dx.types.CBufRet.f32 %10387, 0
  %10391 = select i1 %8893, float %10390, float 0.000000e+00
  %10392 = fmul fast float %10388, %10386
  %10393 = fadd fast float %10391, %10392
  %10394 = fadd fast float %10391, %10389
  %10395 = fsub fast float %10388, %10389
  %10396 = fadd fast float %10395, %10391
  %10397 = call float @dx.op.binary.f32(i32 35, float %10393, float %10394)  ; FMax(a,b)
  %10398 = call float @dx.op.binary.f32(i32 36, float %10397, float %10396)  ; FMin(a,b)
  %10399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10330, float %10331, float %10398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10400 = extractvalue %dx.types.ResRet.f32 %10399, 0
  %10401 = extractvalue %dx.types.ResRet.f32 %10399, 1
  %10402 = extractvalue %dx.types.ResRet.f32 %10399, 2
  %10403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10404 = extractvalue %dx.types.CBufRet.i32 %10403, 0
  %10405 = extractvalue %dx.types.CBufRet.i32 %10403, 1
  %10406 = uitofp i32 %10404 to float
  %10407 = uitofp i32 %10405 to float
  %10408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10409 = extractvalue %dx.types.CBufRet.f32 %10408, 0
  %10410 = extractvalue %dx.types.CBufRet.f32 %10408, 1
  %10411 = fmul fast float %10406, %10330
  %10412 = fmul fast float %10407, %10331
  %10413 = fadd fast float %10411, -5.000000e-01
  %10414 = fadd fast float %10412, -5.000000e-01
  %10415 = call float @dx.op.unary.f32(i32 22, float %10413)  ; Frc(value)
  %10416 = call float @dx.op.unary.f32(i32 22, float %10414)  ; Frc(value)
  %10417 = fmul fast float %10415, %10415
  %10418 = fmul fast float %10417, %10415
  %10419 = fsub fast float 3.000000e+00, %10415
  %10420 = fmul fast float %10417, %10419
  %10421 = fmul fast float %10415, 3.000000e+00
  %10422 = fmul fast float %10418, 3.000000e+00
  %10423 = fmul fast float %10417, 6.000000e+00
  %10424 = fsub fast float %10422, %10423
  %10425 = fadd fast float %10424, 4.000000e+00
  %10426 = fmul fast float %10425, 0x3FC5555560000000
  %10427 = fmul fast float %10418, -3.000000e+00
  %10428 = fadd fast float %10417, %10415
  %10429 = fmul fast float %10428, 3.000000e+00
  %10430 = fadd fast float %10427, 1.000000e+00
  %10431 = fadd fast float %10430, %10429
  %10432 = fmul fast float %10418, 0x3FC5555560000000
  %10433 = fmul fast float %10416, %10416
  %10434 = fmul fast float %10433, %10416
  %10435 = fsub fast float 3.000000e+00, %10416
  %10436 = fmul fast float %10433, %10435
  %10437 = fmul fast float %10416, 3.000000e+00
  %10438 = fmul fast float %10434, 3.000000e+00
  %10439 = fmul fast float %10433, 6.000000e+00
  %10440 = fsub fast float %10438, %10439
  %10441 = fadd fast float %10440, 4.000000e+00
  %10442 = fmul fast float %10441, 0x3FC5555560000000
  %10443 = fmul fast float %10434, -3.000000e+00
  %10444 = fadd fast float %10433, %10416
  %10445 = fmul fast float %10444, 3.000000e+00
  %10446 = fadd fast float %10443, 1.000000e+00
  %10447 = fadd fast float %10446, %10445
  %10448 = fmul fast float %10434, 0x3FC5555560000000
  %10449 = fadd fast float %10415, 1.000000e+00
  %10450 = fsub fast float 1.000000e+00, %10421
  %10451 = fadd fast float %10450, %10420
  %10452 = fadd fast float %10451, %10425
  %10453 = fmul fast float %10452, 0x3FC5555560000000
  %10454 = fdiv fast float %10426, %10453
  %10455 = fsub fast float %10449, %10454
  %10456 = fsub fast float 1.000000e+00, %10415
  %10457 = fadd fast float %10431, %10418
  %10458 = fmul fast float %10457, 0x3FC5555560000000
  %10459 = fdiv fast float %10432, %10458
  %10460 = fadd fast float %10456, %10459
  %10461 = fadd fast float %10416, 1.000000e+00
  %10462 = fsub fast float 1.000000e+00, %10437
  %10463 = fadd fast float %10462, %10436
  %10464 = fadd fast float %10463, %10441
  %10465 = fmul fast float %10464, 0x3FC5555560000000
  %10466 = fdiv fast float %10442, %10465
  %10467 = fsub fast float %10461, %10466
  %10468 = fsub fast float 1.000000e+00, %10416
  %10469 = fadd fast float %10447, %10434
  %10470 = fmul fast float %10469, 0x3FC5555560000000
  %10471 = fdiv fast float %10448, %10470
  %10472 = fadd fast float %10471, %10468
  %10473 = fmul fast float %10455, %10409
  %10474 = fsub fast float %10330, %10473
  %10475 = fmul fast float %10460, %10409
  %10476 = fadd fast float %10475, %10330
  %10477 = fmul fast float %10472, %10410
  %10478 = fadd fast float %10477, %10331
  %10479 = fmul fast float %10467, %10410
  %10480 = fsub fast float %10331, %10479
  %10481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10474, float %10480, float %10398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10482 = extractvalue %dx.types.ResRet.f32 %10481, 0
  %10483 = extractvalue %dx.types.ResRet.f32 %10481, 1
  %10484 = extractvalue %dx.types.ResRet.f32 %10481, 2
  %10485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10476, float %10480, float %10398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10486 = extractvalue %dx.types.ResRet.f32 %10485, 0
  %10487 = extractvalue %dx.types.ResRet.f32 %10485, 1
  %10488 = extractvalue %dx.types.ResRet.f32 %10485, 2
  %10489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10474, float %10478, float %10398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10490 = extractvalue %dx.types.ResRet.f32 %10489, 0
  %10491 = extractvalue %dx.types.ResRet.f32 %10489, 1
  %10492 = extractvalue %dx.types.ResRet.f32 %10489, 2
  %10493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10476, float %10478, float %10398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10494 = extractvalue %dx.types.ResRet.f32 %10493, 0
  %10495 = extractvalue %dx.types.ResRet.f32 %10493, 1
  %10496 = extractvalue %dx.types.ResRet.f32 %10493, 2
  %10497 = fsub fast float %10490, %10482
  %10498 = fsub fast float %10491, %10483
  %10499 = fsub fast float %10492, %10484
  %10500 = fmul fast float %10497, %10470
  %10501 = fmul fast float %10498, %10470
  %10502 = fmul fast float %10499, %10470
  %10503 = fadd fast float %10500, %10482
  %10504 = fadd fast float %10501, %10483
  %10505 = fadd fast float %10502, %10484
  %10506 = fsub fast float %10494, %10486
  %10507 = fsub fast float %10495, %10487
  %10508 = fsub fast float %10496, %10488
  %10509 = fmul fast float %10506, %10470
  %10510 = fmul fast float %10507, %10470
  %10511 = fmul fast float %10508, %10470
  %10512 = fsub fast float %10486, %10503
  %10513 = fadd fast float %10512, %10509
  %10514 = fsub fast float %10487, %10504
  %10515 = fadd fast float %10514, %10510
  %10516 = fsub fast float %10488, %10505
  %10517 = fadd fast float %10516, %10511
  %10518 = fmul fast float %10513, %10458
  %10519 = fmul fast float %10515, %10458
  %10520 = fmul fast float %10517, %10458
  %10521 = fadd fast float %10518, %10503
  %10522 = fadd fast float %10519, %10504
  %10523 = fadd fast float %10520, %10505
  %10524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10525 = extractvalue %dx.types.CBufRet.f32 %10524, 1
  %10526 = fmul fast float %10521, %10525
  %10527 = fmul fast float %10522, %10525
  %10528 = fmul fast float %10523, %10525
  br label %10529

; <label>:10529                                   ; preds = %10360, %10317
  %10530 = phi float [ %10400, %10360 ], [ 1.000000e+00, %10317 ]
  %10531 = phi float [ %10401, %10360 ], [ 1.000000e+00, %10317 ]
  %10532 = phi float [ %10402, %10360 ], [ 1.000000e+00, %10317 ]
  %10533 = phi float [ %10526, %10360 ], [ 0.000000e+00, %10317 ]
  %10534 = phi float [ %10527, %10360 ], [ 0.000000e+00, %10317 ]
  %10535 = phi float [ %10528, %10360 ], [ 0.000000e+00, %10317 ]
  %10536 = fmul fast float %10533, %8871
  %10537 = fmul fast float %10534, %8871
  %10538 = fmul fast float %10535, %8871
  %10539 = fmul fast float %10530, %10324
  %10540 = call float @dx.op.dot3.f32(i32 55, float %10530, float %10531, float %10532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10541 = call float @dx.op.dot3.f32(i32 55, float %10536, float %10537, float %10538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10542 = select i1 %257, float %10540, float %10530
  %10543 = select i1 %257, float %10540, float %10531
  %10544 = select i1 %257, float 1.000000e+00, float %10532
  %10545 = select i1 %257, float %10541, float %10536
  %10546 = select i1 %257, float 0.000000e+00, float %10537
  %10547 = select i1 %257, float 0.000000e+00, float %10538
  %10548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10549 = extractvalue %dx.types.CBufRet.i32 %10548, 3
  %10550 = and i32 %10549, 3
  %10551 = icmp ne i32 %10550, 0
  %10552 = and i32 %10549, 4
  %10553 = icmp ne i32 %10552, 0
  %10554 = and i1 %10551, %10553
  %10555 = and i1 %257, %10554
  br i1 %10555, label %10556, label %10562

; <label>:10556                                   ; preds = %10529
  %10557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10558 = extractvalue %dx.types.CBufRet.f32 %10557, 1
  %10559 = fadd fast float %10539, -1.000000e+00
  %10560 = fmul fast float %10558, %10559
  %10561 = fadd fast float %10560, 1.000000e+00
  br label %10562

; <label>:10562                                   ; preds = %10556, %10529
  %10563 = phi float [ %10561, %10556 ], [ %10539, %10529 ]
  %10564 = fadd fast float %10321, %10318
  %10565 = fmul fast float %10542, %10564
  %10566 = fadd fast float %10565, %10545
  %10567 = fadd fast float %10322, %10319
  %10568 = fmul fast float %10543, %10567
  %10569 = fadd fast float %10568, %10546
  %10570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10571 = extractvalue %dx.types.CBufRet.f32 %10570, 0
  br i1 %257, label %10572, label %10595

; <label>:10572                                   ; preds = %10562
  %10573 = fadd fast float %10566, %10569
  %10574 = fmul fast float %10571, %10573
  %10575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10576 = extractvalue %dx.types.CBufRet.f32 %10575, 3
  %10577 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %10578 = fsub fast float %8880, %8874
  %10579 = fadd fast float %10578, %8881
  %10580 = fsub fast float %10579, %10577
  %10581 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %10582 = fmul fast float %10580, %10581
  %10583 = call float @dx.op.unary.f32(i32 7, float %10582)  ; Saturate(value)
  %10584 = fsub fast float %10583, %10576
  %10585 = fmul fast float %10584, %10563
  %10586 = fadd fast float %10585, %10576
  %10587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10588 = extractvalue %dx.types.CBufRet.f32 %10587, 0
  %10589 = fsub fast float %10586, %10588
  %10590 = fmul fast float %10589, 1.000000e+01
  %10591 = call float @dx.op.unary.f32(i32 7, float %10590)  ; Saturate(value)
  %10592 = fmul fast float %10591, %8870
  %10593 = fadd fast float %10592, %8871
  %10594 = fmul fast float %10593, %10586
  br label %10619

; <label>:10595                                   ; preds = %10562
  %10596 = fadd fast float %10323, %10320
  %10597 = fmul fast float %10544, %10596
  %10598 = fadd fast float %10597, %10547
  %10599 = fmul fast float %10571, %10566
  %10600 = fmul fast float %10571, %10569
  %10601 = fmul fast float %10571, %10598
  %10602 = call float @dx.op.binary.f32(i32 35, float %10600, float %10601)  ; FMax(a,b)
  %10603 = call float @dx.op.binary.f32(i32 35, float %10599, float %10602)  ; FMax(a,b)
  %10604 = call float @dx.op.binary.f32(i32 35, float %10603, float %8871)  ; FMax(a,b)
  %10605 = fcmp fast ugt float %10604, 0x3F10000000000000
  br i1 %10605, label %10607, label %10606

; <label>:10606                                   ; preds = %10595
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10607

; <label>:10607                                   ; preds = %10606, %10595
  %10608 = add i32 %60, 356
  %10609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10608, i32 undef)  ; BufferLoad(srv,index,wot)
  %10610 = extractvalue %dx.types.ResRet.i32 %10609, 0
  %10611 = and i32 %10610, 32
  %10612 = icmp eq i32 %10611, 0
  br i1 %10612, label %10619, label %10613

; <label>:10613                                   ; preds = %10607
  %10614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10615 = extractvalue %dx.types.CBufRet.f32 %10614, 0
  %10616 = fmul fast float %10615, 0x3FE99999A0000000
  %10617 = fadd fast float %10615, %10599
  %10618 = fadd fast float %10616, %10601
  br label %10619

; <label>:10619                                   ; preds = %10613, %10607, %10572
  %10620 = phi float [ %10574, %10572 ], [ %10617, %10613 ], [ %10599, %10607 ]
  %10621 = phi float [ %10594, %10572 ], [ %10600, %10613 ], [ %10600, %10607 ]
  %10622 = phi float [ %10593, %10572 ], [ %10618, %10613 ], [ %10601, %10607 ]
  %10623 = phi float [ %10593, %10572 ], [ %8871, %10613 ], [ %8871, %10607 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10624 = call float @dx.op.binary.f32(i32 36, float %10620, float 3.225500e+04)  ; FMin(a,b)
  %10625 = call float @dx.op.binary.f32(i32 36, float %10621, float 3.225500e+04)  ; FMin(a,b)
  %10626 = call float @dx.op.binary.f32(i32 36, float %10622, float 3.225500e+04)  ; FMin(a,b)
  %10627 = call float @dx.op.binary.f32(i32 36, float %10623, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10625)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10626)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!73 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !100}
!75 = !{!76, !98, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97}
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
!97 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !118, !120}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !111, i64 0}
!125 = distinct !{!125, !103}
!126 = distinct !{!126, !103}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
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
!138 = !{!139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!139 = distinct !{!139, !140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!140 = distinct !{!140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!141 = distinct !{!141, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!142 = distinct !{!142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!143 = distinct !{!143, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!153 = distinct !{!153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!162 = !{!158}
!163 = !{!159, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!172 = !{!168}
!173 = !{!169, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 2}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}

