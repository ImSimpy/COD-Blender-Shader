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
; shader hash: 54b626e469dae3923b84d1d4318cbe64
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %104 = alloca [4 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fmul fast float %113, %98
  %115 = fmul fast float %113, %99
  %116 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %120, %89
  %122 = fmul fast float %120, %90
  %123 = fmul fast float %120, %91
  %124 = fmul fast float %90, %87
  %125 = fmul fast float %91, %86
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %91, %85
  %128 = fmul fast float %89, %87
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %89, %86
  %131 = fmul fast float %90, %85
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %88
  %134 = fmul fast float %129, %88
  %135 = fmul fast float %132, %88
  %136 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = bitcast float %136 to i32
  %138 = ashr i32 %137, 1
  %139 = sub nsw i32 1597250115, %138
  %140 = bitcast i32 %139 to float
  %141 = fmul fast float %140, %78
  %142 = fmul fast float %140, %79
  %143 = fmul fast float %140, %80
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast une float %145, 0.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %114, 2.000000e+00
  %151 = fmul fast float %150, %148
  %152 = fmul fast float %115, 2.000000e+00
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %146, float %157, float %161
  %165 = select i1 %146, float %158, float %162
  %166 = select i1 %146, float %159, float %163
  %167 = fmul fast float %164, %154
  %168 = fmul fast float %165, %154
  %169 = fmul fast float %166, %154
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = select i1 %146, float %171, float %175
  %179 = select i1 %146, float %172, float %176
  %180 = select i1 %146, float %173, float %177
  %181 = fmul fast float %178, %155
  %182 = fmul fast float %179, %155
  %183 = fmul fast float %180, %155
  %184 = fadd fast float %181, %167
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = select i1 %146, float %188, float %192
  %196 = select i1 %146, float %189, float %193
  %197 = select i1 %146, float %190, float %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fmul fast float %198, %101
  %202 = fmul fast float %199, %101
  %203 = fmul fast float %200, %101
  %204 = fmul fast float %114, 5.000000e-01
  %205 = fmul fast float %115, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %114
  %228 = fmul fast float %226, %115
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = select i1 %232, i32 %238, i32 0
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %256

; <label>:247                                     ; preds = %0
  %248 = fmul fast float %149, %115
  %249 = fmul fast float %148, %114
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %249, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %244, 0
  %258 = and i1 %243, %257
  br label %259

; <label>:259                                     ; preds = %256, %247
  %260 = phi i1 [ %255, %247 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %114, 2.560000e+02
  %265 = frem fast float %115, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fadd fast float %269, %263
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = add i32 %60, 156
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %60, 216
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %60, 36
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %60, 288
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %60, 172
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %60, 232
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %60, 52
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %60, 304
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %60, 188
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %60, 248
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %60, 68
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %60, 320
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %60, 204
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = shl i32 %400, 4
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %400, 7
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %400, 22
  %408 = shl nuw nsw i32 %407, 5
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = add i32 %60, 264
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = lshr i32 %412, 8
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %412, 16
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = add i32 %60, 84
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = add i32 %60, 336
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fmul fast float %435, 0x3F50624DE0000000
  %439 = fmul fast float %437, 0x3F50624DE0000000
  %440 = add i32 %60, 348
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 32
  %444 = icmp eq i32 %443, 0
  %445 = and i32 %442, 64
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %442, 128
  %448 = icmp eq i32 %447, 0
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 2
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %468, label %453

; <label>:453                                     ; preds = %259
  %454 = add i32 %60, 504
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = fmul fast float %463, %94
  %465 = fmul fast float %460, %95
  %466 = fmul fast float %461, %96
  %467 = fmul fast float %462, %97
  br label %468

; <label>:468                                     ; preds = %453, %259
  %469 = phi float [ %97, %259 ], [ %467, %453 ]
  %470 = phi float [ %96, %259 ], [ %466, %453 ]
  %471 = phi float [ %95, %259 ], [ %465, %453 ]
  %472 = phi float [ %94, %259 ], [ %464, %453 ]
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 2
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %496, label %477

; <label>:477                                     ; preds = %468
  %478 = add i32 %60, 44
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %471, float 1.000000e+00
  %484 = add i32 %60, 60
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %470, float 1.000000e+00
  %490 = add i32 %60, 76
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 1
  %494 = icmp ne i32 %493, 0
  %495 = select i1 %494, float %469, float 1.000000e+00
  br label %496

; <label>:496                                     ; preds = %477, %468
  %497 = phi float [ %469, %468 ], [ %495, %477 ]
  %498 = phi float [ %470, %468 ], [ %489, %477 ]
  %499 = phi float [ %471, %468 ], [ %483, %477 ]
  %500 = lshr i32 %474, 20
  %501 = and i32 %500, 3
  %502 = add nuw nsw i32 %501, 1
  %503 = add i32 %60, 24
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = add i32 %60, 28
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = or i32 %508, %505
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %1129, label %511

; <label>:511                                     ; preds = %496
  %512 = and i32 %505, 262144
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %65, float 1.000000e+00
  %515 = select i1 %513, float %66, float 0.000000e+00
  %516 = select i1 %513, float %67, float 0.000000e+00
  %517 = select i1 %513, float %68, float 1.000000e+00
  %518 = select i1 %513, float %69, float %92
  %519 = select i1 %513, float %70, float %93
  %520 = add i32 %60, 284
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = fmul fast float %524, 0x3F50624DE0000000
  %526 = add i32 %60, 88
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = lshr i32 %528, 16
  %530 = and i32 %529, 255
  %531 = lshr i32 %528, 24
  %532 = add i32 %60, 292
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 65535
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %534, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %60, 32
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 22
  %543 = shl nuw nsw i32 %542, 5
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = shl i32 %541, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %541, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = fmul fast float %552, 1.000000e+03
  %554 = fmul fast float %312, %553
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fadd fast float %555, %302
  %557 = fmul fast float %313, %553
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fadd fast float %558, %304
  %560 = fmul fast float %525, %553
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = fmul fast float %561, 0x401921FB60000000
  %563 = fadd fast float %562, %544
  %564 = call float @dx.op.unary.f32(i32 13, float %563)  ; Sin(value)
  %565 = call float @dx.op.unary.f32(i32 12, float %563)  ; Cos(value)
  %566 = fsub fast float -0.000000e+00, %564
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fadd fast float %519, -5.000000e-01
  %569 = fmul fast float %536, %567
  %570 = fmul fast float %538, %568
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fadd fast float %570, 5.000000e-01
  %573 = fmul fast float %547, %571
  %574 = fmul fast float %550, %572
  %575 = fmul fast float %565, %573
  %576 = call float @dx.op.tertiary.f32(i32 46, float %566, float %574, float %575)  ; FMad(a,b,c)
  %577 = fmul fast float %564, %573
  %578 = call float @dx.op.tertiary.f32(i32 46, float %565, float %574, float %577)  ; FMad(a,b,c)
  %579 = fadd fast float %556, %576
  %580 = fadd fast float %559, %578
  %581 = icmp ugt i32 %530, 1
  %582 = icmp ugt i32 %528, 33554431
  %583 = or i1 %582, %581
  br i1 %583, label %584, label %609

; <label>:584                                     ; preds = %511
  %585 = add i32 %60, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = lshr i32 %587, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = fmul fast float %552, %589
  %591 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %592 = mul nuw nsw i32 %530, %531
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %591, %593
  %595 = call float @dx.op.unary.f32(i32 27, float %594)  ; Round_ni(value)
  %596 = fptoui float %595 to i32
  %597 = urem i32 %596, %530
  %598 = udiv i32 %596, %531
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %601 = uitofp i32 %597 to float
  %602 = uitofp i32 %598 to float
  %603 = fadd fast float %599, %601
  %604 = fadd fast float %600, %602
  %605 = uitofp i32 %530 to float
  %606 = uitofp i32 %531 to float
  %607 = fdiv fast float %603, %605
  %608 = fdiv fast float %604, %606
  br label %609

; <label>:609                                     ; preds = %584, %511
  %610 = phi float [ %607, %584 ], [ %579, %511 ]
  %611 = phi float [ %608, %584 ], [ %580, %511 ]
  %612 = and i32 %505, 256
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %660, label %614

; <label>:614                                     ; preds = %609
  %615 = add i32 %60, 440
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = add i32 %60, 100
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 4
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %624, 7
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = fsub fast float 1.000000e+00, %472
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %633 = bitcast float %472 to i32
  %634 = sitofp i32 %633 to float
  %635 = fadd fast float %634, 0xC1CFBF8940000000
  %636 = fmul fast float %630, %635
  %637 = fadd fast float %636, 0x41CFBF8940000000
  %638 = fptosi float %637 to i32
  %639 = bitcast i32 %638 to float
  %640 = bitcast float %632 to i32
  %641 = sitofp i32 %640 to float
  %642 = fadd fast float %641, 0xC1CFBF8940000000
  %643 = fmul fast float %642, %630
  %644 = fadd fast float %643, 0x41CFBF8940000000
  %645 = fptosi float %644 to i32
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %639, %627
  %648 = fmul fast float %646, %627
  %649 = fsub fast float %632, %647
  %650 = fadd fast float %648, %632
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %653 = fsub fast float %621, %651
  %654 = fsub fast float %652, %651
  %655 = bitcast float %654 to i32
  %656 = sub nsw i32 2129859010, %655
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %657, %653
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  br label %660

; <label>:660                                     ; preds = %614, %609
  %661 = phi float [ %659, %614 ], [ %472, %609 ]
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 128
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %682, label %666

; <label>:666                                     ; preds = %660
  %667 = add i32 %60, 424
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %671, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 524288
  %677 = icmp ne i32 %676, 0
  %678 = fcmp fast ogt float %673, 0x3FE0101020000000
  %679 = select i1 %678, float 1.000000e+00, float 0.000000e+00
  %680 = select i1 %677, float %679, float %673
  %681 = fmul fast float %680, %661
  br label %682

; <label>:682                                     ; preds = %666, %660
  %683 = phi float [ %681, %666 ], [ %661, %660 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 16
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %886, label %688

; <label>:688                                     ; preds = %682
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %60, 376
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = and i32 %690, 255
  %702 = uitofp i32 %701 to float
  %703 = lshr i32 %690, 8
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %700, %702
  %707 = fadd fast float %706, %705
  %708 = fmul fast float %707, 0x3F70101000000000
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 512
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %721, label %713

; <label>:713                                     ; preds = %688
  %714 = add i32 %60, 456
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %716, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %718, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  br label %721

; <label>:721                                     ; preds = %713, %688
  %722 = phi float [ %720, %713 ], [ 1.000000e+00, %688 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 33554432
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %833, label %727

; <label>:727                                     ; preds = %721
  %728 = add i32 %60, 224
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %730, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = add i32 %60, 228
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 24
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = and i32 %741, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = lshr i32 %741, 8
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = lshr i32 %741, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = add i32 %60, 220
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = lshr i32 %758, 24
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = and i32 %758, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = lshr i32 %758, 8
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = lshr i32 %758, 16
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = bitcast float %697 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %697, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %697
  %782 = fmul fast float %781, %780
  %783 = bitcast float %698 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %698, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %698
  %792 = fmul fast float %791, %790
  %793 = bitcast float %699 to i32
  %794 = ashr i32 %793, 1
  %795 = sub nsw i32 1597463174, %794
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %699, 5.000000e-01
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %798, %797
  %800 = fsub fast float 1.500000e+00, %799
  %801 = fmul fast float %796, %699
  %802 = fmul fast float %801, %800
  %803 = fsub fast float %782, %764
  %804 = fsub fast float %792, %768
  %805 = fsub fast float %802, %772
  %806 = fmul fast float %803, %732
  %807 = fmul fast float %804, %734
  %808 = fmul fast float %805, %739
  %809 = fadd fast float %806, %747
  %810 = fadd fast float %807, %751
  %811 = fadd fast float %808, %755
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = fmul fast float %812, %812
  %816 = fmul fast float %813, %813
  %817 = fmul fast float %814, %814
  %818 = fsub fast float %815, %697
  %819 = fsub fast float %816, %698
  %820 = fsub fast float %817, %699
  %821 = fmul fast float %818, %722
  %822 = fmul fast float %819, %722
  %823 = fmul fast float %820, %722
  %824 = fadd fast float %821, %697
  %825 = fadd fast float %822, %698
  %826 = fadd fast float %823, %699
  %827 = fadd fast float %744, %708
  %828 = fsub fast float %827, %761
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = fsub fast float %829, %708
  %831 = fmul fast float %830, %722
  %832 = fadd fast float %831, %708
  br label %886

; <label>:833                                     ; preds = %721
  %834 = and i32 %724, 134217728
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %870, label %836

; <label>:836                                     ; preds = %833
  %837 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %840 = fadd fast float %837, -5.000000e-01
  %841 = fadd fast float %838, -5.000000e-01
  %842 = fadd fast float %839, -5.000000e-01
  %843 = fmul fast float %840, %722
  %844 = fmul fast float %841, %722
  %845 = fmul fast float %842, %722
  %846 = fadd fast float %843, 5.000000e-01
  %847 = fadd fast float %844, 5.000000e-01
  %848 = fadd fast float %845, 5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %850 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %851 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %852 = fmul fast float %846, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %849
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %849
  %857 = fmul fast float %847, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %850
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %850
  %862 = fmul fast float %848, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %851
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %851
  %867 = fmul fast float %856, %856
  %868 = fmul fast float %861, %861
  %869 = fmul fast float %866, %866
  br label %886

; <label>:870                                     ; preds = %833
  %871 = fmul fast float %289, %289
  %872 = fmul fast float %293, %293
  %873 = fmul fast float %297, %297
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fmul fast float %722, %874
  %878 = fmul fast float %722, %875
  %879 = fmul fast float %722, %876
  %880 = fadd fast float %877, 1.000000e+00
  %881 = fadd fast float %878, 1.000000e+00
  %882 = fadd fast float %879, 1.000000e+00
  %883 = fmul fast float %880, %697
  %884 = fmul fast float %881, %698
  %885 = fmul fast float %882, %699
  br label %886

; <label>:886                                     ; preds = %870, %836, %727, %682
  %887 = phi float [ %832, %727 ], [ %708, %836 ], [ %708, %870 ], [ 0x3FA23C0BE0000000, %682 ]
  %888 = phi float [ %824, %727 ], [ %867, %836 ], [ %883, %870 ], [ 1.000000e+00, %682 ]
  %889 = phi float [ %825, %727 ], [ %868, %836 ], [ %884, %870 ], [ 1.000000e+00, %682 ]
  %890 = phi float [ %826, %727 ], [ %869, %836 ], [ %885, %870 ], [ 1.000000e+00, %682 ]
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 1
  %893 = and i32 %892, 1
  %894 = icmp ne i32 %893, 0
  %895 = add i32 %60, 356
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp ne i32 %898, 0
  %900 = and i1 %894, %899
  %901 = select i1 %900, float 1.000000e+00, float %888
  %902 = select i1 %900, float 0x3FD3333340000000, float %889
  %903 = select i1 %900, float 0x3FD3333340000000, float %890
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 32
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %980, label %908

; <label>:908                                     ; preds = %886
  %909 = add i32 %60, 92
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %60, 392
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = and i32 %911, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %911, 8
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = lshr i32 %911, 16
  %928 = and i32 %927, 255
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F70101000000000
  %931 = fmul fast float %918, %923
  %932 = fadd fast float %931, %926
  %933 = fmul fast float %932, 0x3F70101000000000
  %934 = fadd fast float %919, -5.000000e-01
  %935 = fadd fast float %921, -5.000000e-01
  %936 = fmul fast float %934, %930
  %937 = fmul fast float %935, %930
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fadd fast float %937, 5.000000e-01
  %940 = fmul fast float %938, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = fmul fast float %939, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = fadd fast float %941, %943
  %945 = fmul fast float %944, 5.000000e-01
  %946 = fsub fast float %941, %943
  %947 = fmul fast float %946, 5.000000e-01
  %948 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %949 = fsub fast float 1.000000e+00, %948
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float %949, %950
  %952 = call float @dx.op.dot3.f32(i32 55, float %945, float %947, float %951, float %945, float %947, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = call float @dx.op.unary.f32(i32 25, float %952)  ; Rsqrt(value)
  %954 = fmul fast float %945, %953
  %955 = fmul fast float %947, %953
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 67108864
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %976, label %960

; <label>:960                                     ; preds = %908
  %961 = add i32 %60, 280
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = and i32 %963, 65535
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 65535
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %963, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fsub fast float %933, %971
  %973 = fmul fast float %972, %965
  %974 = fadd fast float %973, %969
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  br label %976

; <label>:976                                     ; preds = %960, %908
  %977 = phi float [ %975, %960 ], [ %933, %908 ]
  %978 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %514, float %515)  ; Dot2(ax,ay,bx,by)
  %979 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  br label %980

; <label>:980                                     ; preds = %976, %886
  %981 = phi float [ %977, %976 ], [ 0x3FD6666660000000, %886 ]
  %982 = phi float [ %978, %976 ], [ 0.000000e+00, %886 ]
  %983 = phi float [ %979, %976 ], [ 0.000000e+00, %886 ]
  %984 = phi float [ %920, %976 ], [ 1.000000e+00, %886 ]
  %985 = add i32 %60, 160
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = lshr i32 %987, 22
  %989 = shl nuw nsw i32 %988, 5
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 64
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1028, label %995

; <label>:995                                     ; preds = %980
  %996 = add i32 %60, 408
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 131072
  %1004 = icmp eq i32 %1003, 0
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = fmul fast float %1006, %277
  %1010 = fmul fast float %1007, %280
  %1011 = fmul fast float %1008, %283
  br i1 %1004, label %1018, label %1012

; <label>:1012                                    ; preds = %995
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fmul fast float %1014, %1009
  %1016 = fmul fast float %1014, %1010
  %1017 = fmul fast float %1014, %1011
  br label %1018

; <label>:1018                                    ; preds = %1012, %995
  %1019 = phi float [ %1015, %1012 ], [ %1009, %995 ]
  %1020 = phi float [ %1016, %1012 ], [ %1010, %995 ]
  %1021 = phi float [ %1017, %1012 ], [ %1011, %995 ]
  %1022 = fmul fast float %1019, %990
  %1023 = select i1 %260, float %1022, float %1019
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1020, float %1021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = select i1 %260, float 0.000000e+00, float %1019
  %1026 = select i1 %260, float %1024, float %1020
  %1027 = select i1 %260, float 0.000000e+00, float %1021
  br label %1028

; <label>:1028                                    ; preds = %1018, %980
  %1029 = phi float [ %1025, %1018 ], [ 0.000000e+00, %980 ]
  %1030 = phi float [ %1026, %1018 ], [ 0.000000e+00, %980 ]
  %1031 = phi float [ %1027, %1018 ], [ 0.000000e+00, %980 ]
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 1024
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1066, label %1036

; <label>:1036                                    ; preds = %1028
  %1037 = add i32 %60, 152
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = lshr i32 %1039, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = lshr i32 %1039, 16
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = fmul fast float %1042, %1042
  %1052 = fmul fast float %1046, %1046
  %1053 = fmul fast float %1050, %1050
  %1054 = add i32 %60, 472
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = fmul fast float %1051, %1060
  %1064 = fmul fast float %1052, %1061
  %1065 = fmul fast float %1053, %1062
  br label %1066

; <label>:1066                                    ; preds = %1036, %1028
  %1067 = phi float [ %1063, %1036 ], [ 0.000000e+00, %1028 ]
  %1068 = phi float [ %1064, %1036 ], [ 0.000000e+00, %1028 ]
  %1069 = phi float [ %1065, %1036 ], [ 0.000000e+00, %1028 ]
  %1070 = fcmp fast ogt float %1067, 0.000000e+00
  %1071 = fcmp fast ogt float %1068, 0.000000e+00
  %1072 = fcmp fast ogt float %1069, 0.000000e+00
  %1073 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1074 = call float @dx.op.unary.f32(i32 23, float %1068)  ; Log(value)
  %1075 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = lshr i32 %1077, 7
  %1079 = and i32 %1078, 32752
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fmul fast float %1073, 0xBFE62E4300000000
  %1082 = fmul fast float %1081, %1080
  %1083 = fmul fast float %1074, 0xBFE62E4300000000
  %1084 = fmul fast float %1083, %1080
  %1085 = fmul fast float %1075, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1080
  %1087 = select i1 %1070, float %1082, float 1.270000e+02
  %1088 = select i1 %1071, float %1084, float 1.270000e+02
  %1089 = select i1 %1072, float %1086, float 1.270000e+02
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 10240
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1114, label %1094

; <label>:1094                                    ; preds = %1066
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 2048
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1114, label %1099

; <label>:1099                                    ; preds = %1094
  %1100 = add i32 %60, 488
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fmul fast float %1111, %1106
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1114

; <label>:1114                                    ; preds = %1099, %1094, %1066
  %1115 = phi float [ %1113, %1099 ], [ 0x3F70101020000000, %1094 ], [ 0x3F70101020000000, %1066 ]
  %1116 = add i32 %60, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1118, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1123, %1124
  %1126 = fadd fast float %1125, %1120
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1114, %496
  %1130 = phi float [ 0.000000e+00, %496 ], [ %982, %1114 ]
  %1131 = phi float [ 0.000000e+00, %496 ], [ %983, %1114 ]
  %1132 = phi float [ 0.000000e+00, %496 ], [ %901, %1114 ]
  %1133 = phi float [ 0.000000e+00, %496 ], [ %902, %1114 ]
  %1134 = phi float [ 0.000000e+00, %496 ], [ %903, %1114 ]
  %1135 = phi float [ 0.000000e+00, %496 ], [ %1029, %1114 ]
  %1136 = phi float [ 0.000000e+00, %496 ], [ %1030, %1114 ]
  %1137 = phi float [ 0.000000e+00, %496 ], [ %1031, %1114 ]
  %1138 = phi float [ 0.000000e+00, %496 ], [ %1087, %1114 ]
  %1139 = phi float [ 0.000000e+00, %496 ], [ %1088, %1114 ]
  %1140 = phi float [ 0.000000e+00, %496 ], [ %1089, %1114 ]
  %1141 = phi float [ 0.000000e+00, %496 ], [ %887, %1114 ]
  %1142 = phi float [ 0.000000e+00, %496 ], [ %683, %1114 ]
  %1143 = phi float [ 0.000000e+00, %496 ], [ %981, %1114 ]
  %1144 = phi float [ 0.000000e+00, %496 ], [ %984, %1114 ]
  %1145 = phi float [ 0.000000e+00, %496 ], [ %1115, %1114 ]
  %1146 = phi float [ 0.000000e+00, %496 ], [ %1128, %1114 ]
  br i1 %444, label %2018, label %1147

; <label>:1147                                    ; preds = %1129
  %1148 = icmp ult i32 %502, 2
  %1149 = add i32 %60, 40
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %60, 44
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = or i32 %1154, %1151
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %2018, label %1157

; <label>:1157                                    ; preds = %1147
  %1158 = and i32 %1151, 262144
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %65, float 1.000000e+00
  %1161 = select i1 %1159, float %66, float 0.000000e+00
  %1162 = select i1 %1159, float %67, float 0.000000e+00
  %1163 = select i1 %1159, float %68, float 1.000000e+00
  %1164 = select i1 %1159, float %69, float %92
  %1165 = select i1 %1159, float %70, float %93
  %1166 = add i32 %60, 300
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = lshr i32 %1168, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fmul fast float %1170, 0x3F50624DE0000000
  %1172 = add i32 %60, 104
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 16
  %1176 = and i32 %1175, 255
  %1177 = lshr i32 %1174, 24
  %1178 = add i32 %60, 308
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1180, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = add i32 %60, 48
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = shl i32 %1187, 4
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1187, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1199 = fmul fast float %1198, 1.000000e+03
  %1200 = fmul fast float %354, %1199
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fadd fast float %1201, %344
  %1203 = fmul fast float %355, %1199
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1204, %346
  %1206 = fmul fast float %1171, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = fmul fast float %1207, 0x401921FB60000000
  %1209 = fadd fast float %1208, %1190
  %1210 = call float @dx.op.unary.f32(i32 13, float %1209)  ; Sin(value)
  %1211 = call float @dx.op.unary.f32(i32 12, float %1209)  ; Cos(value)
  %1212 = fsub fast float -0.000000e+00, %1210
  %1213 = fadd fast float %1164, -5.000000e-01
  %1214 = fadd fast float %1165, -5.000000e-01
  %1215 = fmul fast float %1182, %1213
  %1216 = fmul fast float %1184, %1214
  %1217 = fadd fast float %1215, 5.000000e-01
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1193, %1217
  %1220 = fmul fast float %1196, %1218
  %1221 = fmul fast float %1211, %1219
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1220, float %1221)  ; FMad(a,b,c)
  %1223 = fmul fast float %1210, %1219
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1220, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1202, %1222
  %1226 = fadd fast float %1205, %1224
  %1227 = icmp ugt i32 %1176, 1
  %1228 = icmp ugt i32 %1174, 33554431
  %1229 = or i1 %1228, %1227
  br i1 %1229, label %1230, label %1255

; <label>:1230                                    ; preds = %1157
  %1231 = add i32 %60, 244
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fmul fast float %1198, %1235
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = mul nuw nsw i32 %1176, %1177
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1237, %1239
  %1241 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1242 = fptoui float %1241 to i32
  %1243 = urem i32 %1242, %1176
  %1244 = udiv i32 %1242, %1177
  %1245 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1246 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1247 = uitofp i32 %1243 to float
  %1248 = uitofp i32 %1244 to float
  %1249 = fadd fast float %1245, %1247
  %1250 = fadd fast float %1246, %1248
  %1251 = uitofp i32 %1176 to float
  %1252 = uitofp i32 %1177 to float
  %1253 = fdiv fast float %1249, %1251
  %1254 = fdiv fast float %1250, %1252
  br label %1255

; <label>:1255                                    ; preds = %1230, %1157
  %1256 = phi float [ %1253, %1230 ], [ %1225, %1157 ]
  %1257 = phi float [ %1254, %1230 ], [ %1226, %1157 ]
  %1258 = and i32 %1151, 256
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1306, label %1260

; <label>:1260                                    ; preds = %1255
  %1261 = add i32 %60, 444
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %1263, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1265, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = add i32 %60, 116
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = shl i32 %1270, 4
  %1272 = and i32 %1271, 32752
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = lshr i32 %1270, 7
  %1275 = and i32 %1274, 32752
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fsub fast float 1.000000e+00, %499
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1279 = bitcast float %499 to i32
  %1280 = sitofp i32 %1279 to float
  %1281 = fadd fast float %1280, 0xC1CFBF8940000000
  %1282 = fmul fast float %1276, %1281
  %1283 = fadd fast float %1282, 0x41CFBF8940000000
  %1284 = fptosi float %1283 to i32
  %1285 = bitcast i32 %1284 to float
  %1286 = bitcast float %1278 to i32
  %1287 = sitofp i32 %1286 to float
  %1288 = fadd fast float %1287, 0xC1CFBF8940000000
  %1289 = fmul fast float %1288, %1276
  %1290 = fadd fast float %1289, 0x41CFBF8940000000
  %1291 = fptosi float %1290 to i32
  %1292 = bitcast i32 %1291 to float
  %1293 = fmul fast float %1285, %1273
  %1294 = fmul fast float %1292, %1273
  %1295 = fsub fast float %1278, %1293
  %1296 = fadd fast float %1294, %1278
  %1297 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = fsub fast float %1267, %1297
  %1300 = fsub fast float %1298, %1297
  %1301 = bitcast float %1300 to i32
  %1302 = sub nsw i32 2129859010, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1303, %1299
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  br label %1306

; <label>:1306                                    ; preds = %1260, %1255
  %1307 = phi float [ %1305, %1260 ], [ %499, %1255 ]
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 128
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1328, label %1312

; <label>:1312                                    ; preds = %1306
  %1313 = add i32 %60, 428
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %1315, 0
  %1317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1317, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 524288
  %1323 = icmp ne i32 %1322, 0
  %1324 = fcmp fast ogt float %1319, 0x3FE0101020000000
  %1325 = select i1 %1324, float 1.000000e+00, float 0.000000e+00
  %1326 = select i1 %1323, float %1325, float %1319
  %1327 = fmul fast float %1326, %1307
  br label %1328

; <label>:1328                                    ; preds = %1312, %1306
  %1329 = phi float [ %1327, %1312 ], [ %1307, %1306 ]
  %1330 = fcmp fast ult float %1329, 0x3F70101020000000
  br i1 %1330, label %2018, label %1331

; <label>:1331                                    ; preds = %1328
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 16
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1534, label %1336

; <label>:1336                                    ; preds = %1331
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %60, 380
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %1341, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1343, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.ResRet.f32 %1344, 3
  %1349 = and i32 %1338, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = lshr i32 %1338, 8
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1348, %1350
  %1355 = fadd fast float %1354, %1353
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 512
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1369, label %1361

; <label>:1361                                    ; preds = %1336
  %1362 = add i32 %60, 460
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1364, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1366, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  br label %1369

; <label>:1369                                    ; preds = %1361, %1336
  %1370 = phi float [ %1368, %1361 ], [ 1.000000e+00, %1336 ]
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 33554432
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1481, label %1375

; <label>:1375                                    ; preds = %1369
  %1376 = add i32 %60, 240
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = lshr i32 %1378, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = add i32 %60, 244
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = lshr i32 %1389, 24
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = and i32 %1389, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = lshr i32 %1389, 8
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = lshr i32 %1389, 16
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = add i32 %60, 236
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = lshr i32 %1406, 24
  %1408 = uitofp i32 %1407 to float
  %1409 = fmul fast float %1408, 0x3F70101020000000
  %1410 = and i32 %1406, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = lshr i32 %1406, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101020000000
  %1417 = lshr i32 %1406, 16
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = bitcast float %1345 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1345, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1345
  %1430 = fmul fast float %1429, %1428
  %1431 = bitcast float %1346 to i32
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 1597463174, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1346, 5.000000e-01
  %1436 = fmul fast float %1434, %1434
  %1437 = fmul fast float %1436, %1435
  %1438 = fsub fast float 1.500000e+00, %1437
  %1439 = fmul fast float %1434, %1346
  %1440 = fmul fast float %1439, %1438
  %1441 = bitcast float %1347 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = sub nsw i32 1597463174, %1442
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1347, 5.000000e-01
  %1446 = fmul fast float %1444, %1444
  %1447 = fmul fast float %1446, %1445
  %1448 = fsub fast float 1.500000e+00, %1447
  %1449 = fmul fast float %1444, %1347
  %1450 = fmul fast float %1449, %1448
  %1451 = fsub fast float %1430, %1412
  %1452 = fsub fast float %1440, %1416
  %1453 = fsub fast float %1450, %1420
  %1454 = fmul fast float %1451, %1380
  %1455 = fmul fast float %1452, %1382
  %1456 = fmul fast float %1453, %1387
  %1457 = fadd fast float %1454, %1395
  %1458 = fadd fast float %1455, %1399
  %1459 = fadd fast float %1456, %1403
  %1460 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1461 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = fmul fast float %1460, %1460
  %1464 = fmul fast float %1461, %1461
  %1465 = fmul fast float %1462, %1462
  %1466 = fsub fast float %1463, %1345
  %1467 = fsub fast float %1464, %1346
  %1468 = fsub fast float %1465, %1347
  %1469 = fmul fast float %1466, %1370
  %1470 = fmul fast float %1467, %1370
  %1471 = fmul fast float %1468, %1370
  %1472 = fadd fast float %1469, %1345
  %1473 = fadd fast float %1470, %1346
  %1474 = fadd fast float %1471, %1347
  %1475 = fadd fast float %1392, %1356
  %1476 = fsub fast float %1475, %1409
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fsub fast float %1477, %1356
  %1479 = fmul fast float %1478, %1370
  %1480 = fadd fast float %1479, %1356
  br label %1534

; <label>:1481                                    ; preds = %1369
  %1482 = and i32 %1372, 134217728
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1518, label %1484

; <label>:1484                                    ; preds = %1481
  %1485 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1486 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1487 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1488 = fadd fast float %1485, -5.000000e-01
  %1489 = fadd fast float %1486, -5.000000e-01
  %1490 = fadd fast float %1487, -5.000000e-01
  %1491 = fmul fast float %1488, %1370
  %1492 = fmul fast float %1489, %1370
  %1493 = fmul fast float %1490, %1370
  %1494 = fadd fast float %1491, 5.000000e-01
  %1495 = fadd fast float %1492, 5.000000e-01
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = call float @dx.op.unary.f32(i32 24, float %1345)  ; Sqrt(value)
  %1498 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1499 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1500 = fmul fast float %1494, 2.000000e+00
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1501, %1497
  %1503 = fadd fast float %1502, %1500
  %1504 = fmul fast float %1503, %1497
  %1505 = fmul fast float %1495, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1498
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1498
  %1510 = fmul fast float %1496, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1499
  %1515 = fmul fast float %1504, %1504
  %1516 = fmul fast float %1509, %1509
  %1517 = fmul fast float %1514, %1514
  br label %1534

; <label>:1518                                    ; preds = %1481
  %1519 = fmul fast float %331, %331
  %1520 = fmul fast float %335, %335
  %1521 = fmul fast float %339, %339
  %1522 = fadd fast float %1519, -1.000000e+00
  %1523 = fadd fast float %1520, -1.000000e+00
  %1524 = fadd fast float %1521, -1.000000e+00
  %1525 = fmul fast float %1370, %1522
  %1526 = fmul fast float %1370, %1523
  %1527 = fmul fast float %1370, %1524
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fmul fast float %1528, %1345
  %1532 = fmul fast float %1529, %1346
  %1533 = fmul fast float %1530, %1347
  br label %1534

; <label>:1534                                    ; preds = %1518, %1484, %1375, %1331
  %1535 = phi float [ %1480, %1375 ], [ %1356, %1484 ], [ %1356, %1518 ], [ 0x3FA23C0BE0000000, %1331 ]
  %1536 = phi float [ %1472, %1375 ], [ %1515, %1484 ], [ %1531, %1518 ], [ 1.000000e+00, %1331 ]
  %1537 = phi float [ %1473, %1375 ], [ %1516, %1484 ], [ %1532, %1518 ], [ 1.000000e+00, %1331 ]
  %1538 = phi float [ %1474, %1375 ], [ %1517, %1484 ], [ %1533, %1518 ], [ 1.000000e+00, %1331 ]
  %1539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.i32 %1539, 1
  %1541 = and i32 %1540, 1
  %1542 = icmp ne i32 %1541, 0
  %1543 = add i32 %60, 356
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 32
  %1547 = icmp ne i32 %1546, 0
  %1548 = and i1 %1542, %1547
  %1549 = select i1 %1548, float 1.000000e+00, float %1536
  %1550 = select i1 %1548, float 0x3FD3333340000000, float %1537
  %1551 = select i1 %1548, float 0x3FD3333340000000, float %1538
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 32
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1628, label %1556

; <label>:1556                                    ; preds = %1534
  %1557 = add i32 %60, 108
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %60, 396
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1564, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = extractvalue %dx.types.ResRet.f32 %1565, 3
  %1570 = and i32 %1559, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = lshr i32 %1559, 8
  %1573 = and i32 %1572, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = lshr i32 %1559, 16
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101000000000
  %1579 = fmul fast float %1566, %1571
  %1580 = fadd fast float %1579, %1574
  %1581 = fmul fast float %1580, 0x3F70101000000000
  %1582 = fadd fast float %1567, -5.000000e-01
  %1583 = fadd fast float %1569, -5.000000e-01
  %1584 = fmul fast float %1582, %1578
  %1585 = fmul fast float %1583, %1578
  %1586 = fadd fast float %1584, 5.000000e-01
  %1587 = fadd fast float %1585, 5.000000e-01
  %1588 = fmul fast float %1586, 2.000000e+00
  %1589 = fadd fast float %1588, -1.000000e+00
  %1590 = fmul fast float %1587, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fadd fast float %1589, %1591
  %1593 = fmul fast float %1592, 5.000000e-01
  %1594 = fsub fast float %1589, %1591
  %1595 = fmul fast float %1594, 5.000000e-01
  %1596 = call float @dx.op.unary.f32(i32 6, float %1593)  ; FAbs(value)
  %1597 = fsub fast float 1.000000e+00, %1596
  %1598 = call float @dx.op.unary.f32(i32 6, float %1595)  ; FAbs(value)
  %1599 = fsub fast float %1597, %1598
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1593, float %1595, float %1599, float %1593, float %1595, float %1599)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = call float @dx.op.unary.f32(i32 25, float %1600)  ; Rsqrt(value)
  %1602 = fmul fast float %1593, %1601
  %1603 = fmul fast float %1595, %1601
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 67108864
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1624, label %1608

; <label>:1608                                    ; preds = %1556
  %1609 = add i32 %60, 296
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 65535
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = lshr i32 %1611, 16
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = fsub fast float %1581, %1619
  %1621 = fmul fast float %1620, %1613
  %1622 = fadd fast float %1621, %1617
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  br label %1624

; <label>:1624                                    ; preds = %1608, %1556
  %1625 = phi float [ %1623, %1608 ], [ %1581, %1556 ]
  %1626 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  %1627 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1162, float %1163)  ; Dot2(ax,ay,bx,by)
  br label %1628

; <label>:1628                                    ; preds = %1624, %1534
  %1629 = phi float [ %1625, %1624 ], [ 0x3FD6666660000000, %1534 ]
  %1630 = phi float [ %1626, %1624 ], [ 0.000000e+00, %1534 ]
  %1631 = phi float [ %1627, %1624 ], [ 0.000000e+00, %1534 ]
  %1632 = phi float [ %1568, %1624 ], [ 1.000000e+00, %1534 ]
  %1633 = add i32 %60, 176
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = lshr i32 %1635, 22
  %1637 = shl nuw nsw i32 %1636, 5
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 64
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1676, label %1643

; <label>:1643                                    ; preds = %1628
  %1644 = add i32 %60, 412
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = add i32 %1646, 0
  %1648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 131072
  %1652 = icmp eq i32 %1651, 0
  %1653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1648, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = fmul fast float %1654, %319
  %1658 = fmul fast float %1655, %322
  %1659 = fmul fast float %1656, %325
  br i1 %1652, label %1666, label %1660

; <label>:1660                                    ; preds = %1643
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fmul fast float %1662, %1657
  %1664 = fmul fast float %1662, %1658
  %1665 = fmul fast float %1662, %1659
  br label %1666

; <label>:1666                                    ; preds = %1660, %1643
  %1667 = phi float [ %1663, %1660 ], [ %1657, %1643 ]
  %1668 = phi float [ %1664, %1660 ], [ %1658, %1643 ]
  %1669 = phi float [ %1665, %1660 ], [ %1659, %1643 ]
  %1670 = fmul fast float %1667, %1638
  %1671 = select i1 %260, float %1670, float %1667
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1668, float %1669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = select i1 %260, float 0.000000e+00, float %1667
  %1674 = select i1 %260, float %1672, float %1668
  %1675 = select i1 %260, float 0.000000e+00, float %1669
  br label %1676

; <label>:1676                                    ; preds = %1666, %1628
  %1677 = phi float [ %1673, %1666 ], [ 0.000000e+00, %1628 ]
  %1678 = phi float [ %1674, %1666 ], [ 0.000000e+00, %1628 ]
  %1679 = phi float [ %1675, %1666 ], [ 0.000000e+00, %1628 ]
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 1024
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1714, label %1684

; <label>:1684                                    ; preds = %1676
  %1685 = add i32 %60, 168
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101020000000
  %1691 = lshr i32 %1687, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = fmul fast float %1693, 0x3F70101020000000
  %1695 = lshr i32 %1687, 16
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3F70101020000000
  %1699 = fmul fast float %1690, %1690
  %1700 = fmul fast float %1694, %1694
  %1701 = fmul fast float %1698, %1698
  %1702 = add i32 %60, 476
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = add i32 %1704, 0
  %1706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1706, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = fmul fast float %1699, %1708
  %1712 = fmul fast float %1700, %1709
  %1713 = fmul fast float %1701, %1710
  br label %1714

; <label>:1714                                    ; preds = %1684, %1676
  %1715 = phi float [ %1711, %1684 ], [ 0.000000e+00, %1676 ]
  %1716 = phi float [ %1712, %1684 ], [ 0.000000e+00, %1676 ]
  %1717 = phi float [ %1713, %1684 ], [ 0.000000e+00, %1676 ]
  %1718 = fcmp fast ogt float %1715, 0.000000e+00
  %1719 = fcmp fast ogt float %1716, 0.000000e+00
  %1720 = fcmp fast ogt float %1717, 0.000000e+00
  %1721 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1722 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1723 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = lshr i32 %1725, 7
  %1727 = and i32 %1726, 32752
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = fmul fast float %1721, 0xBFE62E4300000000
  %1730 = fmul fast float %1729, %1728
  %1731 = fmul fast float %1722, 0xBFE62E4300000000
  %1732 = fmul fast float %1731, %1728
  %1733 = fmul fast float %1723, 0xBFE62E4300000000
  %1734 = fmul fast float %1733, %1728
  %1735 = select i1 %1718, float %1730, float 1.270000e+02
  %1736 = select i1 %1719, float %1732, float 1.270000e+02
  %1737 = select i1 %1720, float %1734, float 1.270000e+02
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 10240
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1762, label %1742

; <label>:1742                                    ; preds = %1714
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 2048
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1762, label %1747

; <label>:1747                                    ; preds = %1742
  %1748 = add i32 %60, 492
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = shl i32 %1756, 4
  %1758 = and i32 %1757, 32752
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, %1754
  %1761 = call float @dx.op.binary.f32(i32 35, float %1760, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1762

; <label>:1762                                    ; preds = %1747, %1742, %1714
  %1763 = phi float [ %1761, %1747 ], [ 0x3F70101020000000, %1742 ], [ 0x3F70101020000000, %1714 ]
  %1764 = add i32 %60, 112
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 255
  %1768 = uitofp i32 %1767 to float
  %1769 = lshr i32 %1766, 8
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = fmul fast float %1771, %1772
  %1774 = fadd fast float %1773, %1768
  %1775 = fmul fast float %1774, 0x3F70101020000000
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  br i1 %1148, label %1777, label %1812

; <label>:1777                                    ; preds = %1762
  %1778 = fmul fast float %1763, 2.000000e+00
  %1779 = fcmp fast olt float %1735, 1.270000e+02
  %1780 = fcmp fast olt float %1736, 1.270000e+02
  %1781 = fcmp fast olt float %1737, 1.270000e+02
  %1782 = fmul fast float %1735, 0xBFF7154760000000
  %1783 = fmul fast float %1782, %1778
  %1784 = fmul fast float %1736, 0xBFF7154760000000
  %1785 = fmul fast float %1784, %1778
  %1786 = fmul fast float %1737, 0xBFF7154760000000
  %1787 = fmul fast float %1786, %1778
  %1788 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1789 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1790 = call float @dx.op.unary.f32(i32 21, float %1787)  ; Exp(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1794 = fadd fast float %1791, -1.000000e+00
  %1795 = select i1 %1779, float %1794, float -1.000000e+00
  %1796 = fadd fast float %1792, -1.000000e+00
  %1797 = select i1 %1780, float %1796, float -1.000000e+00
  %1798 = fadd fast float %1793, -1.000000e+00
  %1799 = select i1 %1781, float %1798, float -1.000000e+00
  %1800 = fmul fast float %1795, %1329
  %1801 = fmul fast float %1797, %1329
  %1802 = fmul fast float %1799, %1329
  %1803 = fadd fast float %1800, 1.000000e+00
  %1804 = fadd fast float %1801, 1.000000e+00
  %1805 = fadd fast float %1802, 1.000000e+00
  %1806 = fmul fast float %1803, %1132
  %1807 = fmul fast float %1804, %1133
  %1808 = fmul fast float %1805, %1134
  %1809 = fmul fast float %1803, %1135
  %1810 = fmul fast float %1804, %1136
  %1811 = fmul fast float %1805, %1137
  br label %1812

; <label>:1812                                    ; preds = %1777, %1762
  %1813 = phi float [ %1806, %1777 ], [ %1132, %1762 ]
  %1814 = phi float [ %1807, %1777 ], [ %1133, %1762 ]
  %1815 = phi float [ %1808, %1777 ], [ %1134, %1762 ]
  %1816 = phi float [ %1809, %1777 ], [ %1135, %1762 ]
  %1817 = phi float [ %1810, %1777 ], [ %1136, %1762 ]
  %1818 = phi float [ %1811, %1777 ], [ %1137, %1762 ]
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 3
  %1822 = icmp eq i32 %1821, 3
  br i1 %1822, label %1901, label %1823

; <label>:1823                                    ; preds = %1812
  %1824 = and i32 %1820, 16
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %1329, float 0.000000e+00
  %1827 = icmp eq i32 %1821, 0
  br i1 %1827, label %1828, label %1856

; <label>:1828                                    ; preds = %1823
  %1829 = and i32 %1820, 64
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1329, float 0.000000e+00
  %1832 = fsub fast float %1549, %1813
  %1833 = fsub fast float %1550, %1814
  %1834 = fsub fast float %1551, %1815
  %1835 = fmul fast float %1826, %1832
  %1836 = fmul fast float %1826, %1833
  %1837 = fmul fast float %1826, %1834
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fsub fast float %1535, %1141
  %1842 = fmul fast float %1826, %1841
  %1843 = fadd fast float %1842, %1141
  %1844 = fsub fast float %1677, %1816
  %1845 = fsub fast float %1678, %1817
  %1846 = fsub fast float %1679, %1818
  %1847 = fmul fast float %1831, %1844
  %1848 = fmul fast float %1831, %1845
  %1849 = fmul fast float %1831, %1846
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fsub fast float %1776, %1146
  %1854 = fmul fast float %1826, %1853
  %1855 = fadd fast float %1854, %1146
  br label %1901

; <label>:1856                                    ; preds = %1823
  %1857 = icmp eq i32 %1821, 1
  br i1 %1857, label %1858, label %1871

; <label>:1858                                    ; preds = %1856
  %1859 = fadd fast float %1549, -1.000000e+00
  %1860 = fadd fast float %1550, -1.000000e+00
  %1861 = fadd fast float %1551, -1.000000e+00
  %1862 = fmul fast float %1826, %1859
  %1863 = fmul fast float %1826, %1860
  %1864 = fmul fast float %1826, %1861
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  br label %1901

; <label>:1871                                    ; preds = %1856
  %1872 = icmp eq i32 %1821, 2
  br i1 %1872, label %1873, label %1901

; <label>:1873                                    ; preds = %1871
  %1874 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fmul fast float %1877, %1826
  %1881 = fmul fast float %1878, %1826
  %1882 = fmul fast float %1879, %1826
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fmul fast float %1883, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1813
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1813
  %1891 = fmul fast float %1884, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1814
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1814
  %1896 = fmul fast float %1885, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1815
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1815
  br label %1901

; <label>:1901                                    ; preds = %1873, %1871, %1858, %1828, %1812
  %1902 = phi float [ %1813, %1812 ], [ %1890, %1873 ], [ %1813, %1871 ], [ %1868, %1858 ], [ %1838, %1828 ]
  %1903 = phi float [ %1814, %1812 ], [ %1895, %1873 ], [ %1814, %1871 ], [ %1869, %1858 ], [ %1839, %1828 ]
  %1904 = phi float [ %1815, %1812 ], [ %1900, %1873 ], [ %1815, %1871 ], [ %1870, %1858 ], [ %1840, %1828 ]
  %1905 = phi float [ %1816, %1812 ], [ %1816, %1873 ], [ %1816, %1871 ], [ %1816, %1858 ], [ %1850, %1828 ]
  %1906 = phi float [ %1817, %1812 ], [ %1817, %1873 ], [ %1817, %1871 ], [ %1817, %1858 ], [ %1851, %1828 ]
  %1907 = phi float [ %1818, %1812 ], [ %1818, %1873 ], [ %1818, %1871 ], [ %1818, %1858 ], [ %1852, %1828 ]
  %1908 = phi float [ %1141, %1812 ], [ %1141, %1873 ], [ %1141, %1871 ], [ %1141, %1858 ], [ %1843, %1828 ]
  %1909 = phi float [ %1146, %1812 ], [ %1146, %1873 ], [ %1146, %1871 ], [ %1146, %1858 ], [ %1855, %1828 ]
  %1910 = and i32 %1820, 12
  %1911 = icmp eq i32 %1910, 12
  br i1 %1911, label %2018, label %1912

; <label>:1912                                    ; preds = %1901
  %1913 = and i32 %1820, 2097184
  %1914 = icmp eq i32 %1913, 2097184
  %1915 = select i1 %1914, float %1329, float 0.000000e+00
  %1916 = and i32 %1820, 4194336
  %1917 = icmp eq i32 %1916, 4194336
  %1918 = select i1 %1917, float %1329, float 0.000000e+00
  %1919 = and i32 %1820, 8388640
  %1920 = icmp eq i32 %1919, 8388640
  %1921 = select i1 %1920, float %1329, float 0.000000e+00
  %1922 = and i32 %1820, 1024
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %1923, float %1329, float 0.000000e+00
  %1925 = and i32 %1820, 2048
  %1926 = icmp ne i32 %1925, 0
  %1927 = select i1 %1926, float %1329, float 0.000000e+00
  %1928 = icmp eq i32 %1910, 0
  br i1 %1928, label %1929, label %1954

; <label>:1929                                    ; preds = %1912
  %1930 = fsub fast float %1630, %1130
  %1931 = fsub fast float %1631, %1131
  %1932 = fmul fast float %1915, %1930
  %1933 = fmul fast float %1915, %1931
  %1934 = fadd fast float %1932, %1130
  %1935 = fadd fast float %1933, %1131
  %1936 = fsub fast float %1632, %1144
  %1937 = fmul fast float %1918, %1936
  %1938 = fadd fast float %1937, %1144
  %1939 = fsub fast float %1629, %1143
  %1940 = fmul fast float %1921, %1939
  %1941 = fadd fast float %1940, %1143
  %1942 = fsub fast float %1735, %1138
  %1943 = fsub fast float %1736, %1139
  %1944 = fsub fast float %1737, %1140
  %1945 = fmul fast float %1924, %1942
  %1946 = fmul fast float %1924, %1943
  %1947 = fmul fast float %1924, %1944
  %1948 = fadd fast float %1945, %1138
  %1949 = fadd fast float %1946, %1139
  %1950 = fadd fast float %1947, %1140
  %1951 = fsub fast float %1763, %1145
  %1952 = fmul fast float %1927, %1951
  %1953 = fadd fast float %1952, %1145
  br label %2018

; <label>:1954                                    ; preds = %1912
  %1955 = icmp eq i32 %1910, 4
  br i1 %1955, label %1956, label %1996

; <label>:1956                                    ; preds = %1954
  %1957 = fmul fast float %1915, %1630
  %1958 = fmul fast float %1915, %1631
  %1959 = fadd fast float %1957, %1130
  %1960 = fadd fast float %1958, %1131
  %1961 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %1962 = fsub fast float %1961, %1144
  %1963 = fmul fast float %1962, %1918
  %1964 = fadd fast float %1963, %1144
  %1965 = fadd fast float %1629, %1143
  %1966 = fmul fast float %1965, 0x3FF337FAE0000000
  %1967 = fmul fast float %1143, %1143
  %1968 = fmul fast float %1629, %1629
  %1969 = fadd fast float %1968, %1967
  %1970 = fmul fast float %1969, 0x3FE5152B00000000
  %1971 = fmul fast float %1143, 0xBFCC1F85E0000000
  %1972 = fmul fast float %1971, %1629
  %1973 = fadd fast float %1972, 0xBFE1363700000000
  %1974 = fadd fast float %1973, %1966
  %1975 = fsub fast float %1974, %1970
  %1976 = fmul fast float %1965, 0x3FBA6F0D00000000
  %1977 = fmul fast float %1969, 0x3FD0432880000000
  %1978 = fmul fast float %1143, 0xBFEF110800000000
  %1979 = fmul fast float %1978, %1629
  %1980 = fadd fast float %1979, 1.000000e+00
  %1981 = fsub fast float %1980, %1976
  %1982 = fadd fast float %1981, %1977
  %1983 = fdiv fast float %1975, %1982
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fsub fast float %1984, %1143
  %1986 = fmul fast float %1985, %1921
  %1987 = fadd fast float %1986, %1143
  %1988 = fmul fast float %1924, %1735
  %1989 = fmul fast float %1924, %1736
  %1990 = fmul fast float %1924, %1737
  %1991 = fadd fast float %1988, %1138
  %1992 = fadd fast float %1989, %1139
  %1993 = fadd fast float %1990, %1140
  %1994 = fmul fast float %1927, %1763
  %1995 = fadd fast float %1994, %1145
  br label %2018

; <label>:1996                                    ; preds = %1954
  %1997 = icmp eq i32 %1910, 8
  br i1 %1997, label %1998, label %2018

; <label>:1998                                    ; preds = %1996
  %1999 = fmul fast float %1915, %1630
  %2000 = fmul fast float %1915, %1631
  %2001 = fadd fast float %1999, %1130
  %2002 = fadd fast float %2000, %1131
  %2003 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %2004 = fsub fast float %2003, %1144
  %2005 = fmul fast float %2004, %1918
  %2006 = fadd fast float %2005, %1144
  %2007 = fsub fast float %1629, %1143
  %2008 = fmul fast float %1921, %2007
  %2009 = fadd fast float %2008, %1143
  %2010 = fmul fast float %1924, %1735
  %2011 = fmul fast float %1924, %1736
  %2012 = fmul fast float %1924, %1737
  %2013 = fadd fast float %2010, %1138
  %2014 = fadd fast float %2011, %1139
  %2015 = fadd fast float %2012, %1140
  %2016 = fmul fast float %1927, %1763
  %2017 = fadd fast float %2016, %1145
  br label %2018

; <label>:2018                                    ; preds = %1998, %1996, %1956, %1929, %1901, %1328, %1147, %1129
  %2019 = phi float [ %1130, %1901 ], [ %1130, %1328 ], [ %1130, %1129 ], [ %2001, %1998 ], [ %1130, %1996 ], [ %1959, %1956 ], [ %1934, %1929 ], [ %1130, %1147 ]
  %2020 = phi float [ %1131, %1901 ], [ %1131, %1328 ], [ %1131, %1129 ], [ %2002, %1998 ], [ %1131, %1996 ], [ %1960, %1956 ], [ %1935, %1929 ], [ %1131, %1147 ]
  %2021 = phi float [ %1902, %1901 ], [ %1132, %1328 ], [ %1132, %1129 ], [ %1902, %1998 ], [ %1902, %1996 ], [ %1902, %1956 ], [ %1902, %1929 ], [ %1132, %1147 ]
  %2022 = phi float [ %1903, %1901 ], [ %1133, %1328 ], [ %1133, %1129 ], [ %1903, %1998 ], [ %1903, %1996 ], [ %1903, %1956 ], [ %1903, %1929 ], [ %1133, %1147 ]
  %2023 = phi float [ %1904, %1901 ], [ %1134, %1328 ], [ %1134, %1129 ], [ %1904, %1998 ], [ %1904, %1996 ], [ %1904, %1956 ], [ %1904, %1929 ], [ %1134, %1147 ]
  %2024 = phi float [ %1905, %1901 ], [ %1135, %1328 ], [ %1135, %1129 ], [ %1905, %1998 ], [ %1905, %1996 ], [ %1905, %1956 ], [ %1905, %1929 ], [ %1135, %1147 ]
  %2025 = phi float [ %1906, %1901 ], [ %1136, %1328 ], [ %1136, %1129 ], [ %1906, %1998 ], [ %1906, %1996 ], [ %1906, %1956 ], [ %1906, %1929 ], [ %1136, %1147 ]
  %2026 = phi float [ %1907, %1901 ], [ %1137, %1328 ], [ %1137, %1129 ], [ %1907, %1998 ], [ %1907, %1996 ], [ %1907, %1956 ], [ %1907, %1929 ], [ %1137, %1147 ]
  %2027 = phi float [ %1138, %1901 ], [ %1138, %1328 ], [ %1138, %1129 ], [ %2013, %1998 ], [ %1138, %1996 ], [ %1991, %1956 ], [ %1948, %1929 ], [ %1138, %1147 ]
  %2028 = phi float [ %1139, %1901 ], [ %1139, %1328 ], [ %1139, %1129 ], [ %2014, %1998 ], [ %1139, %1996 ], [ %1992, %1956 ], [ %1949, %1929 ], [ %1139, %1147 ]
  %2029 = phi float [ %1140, %1901 ], [ %1140, %1328 ], [ %1140, %1129 ], [ %2015, %1998 ], [ %1140, %1996 ], [ %1993, %1956 ], [ %1950, %1929 ], [ %1140, %1147 ]
  %2030 = phi float [ %1908, %1901 ], [ %1141, %1328 ], [ %1141, %1129 ], [ %1908, %1998 ], [ %1908, %1996 ], [ %1908, %1956 ], [ %1908, %1929 ], [ %1141, %1147 ]
  %2031 = phi float [ %1143, %1901 ], [ %1143, %1328 ], [ %1143, %1129 ], [ %2009, %1998 ], [ %1143, %1996 ], [ %1987, %1956 ], [ %1941, %1929 ], [ %1143, %1147 ]
  %2032 = phi float [ %1144, %1901 ], [ %1144, %1328 ], [ %1144, %1129 ], [ %2006, %1998 ], [ %1144, %1996 ], [ %1964, %1956 ], [ %1938, %1929 ], [ %1144, %1147 ]
  %2033 = phi float [ %1145, %1901 ], [ %1145, %1328 ], [ %1145, %1129 ], [ %2017, %1998 ], [ %1145, %1996 ], [ %1995, %1956 ], [ %1953, %1929 ], [ %1145, %1147 ]
  %2034 = phi float [ %1909, %1901 ], [ %1146, %1328 ], [ %1146, %1129 ], [ %1909, %1998 ], [ %1909, %1996 ], [ %1909, %1956 ], [ %1909, %1929 ], [ %1146, %1147 ]
  br i1 %446, label %2906, label %2035

; <label>:2035                                    ; preds = %2018
  %2036 = icmp ult i32 %502, 3
  %2037 = add i32 %60, 56
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %60, 60
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = or i32 %2042, %2039
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2906, label %2045

; <label>:2045                                    ; preds = %2035
  %2046 = and i32 %2039, 262144
  %2047 = icmp ne i32 %2046, 0
  %2048 = select i1 %2047, float %65, float 1.000000e+00
  %2049 = select i1 %2047, float %66, float 0.000000e+00
  %2050 = select i1 %2047, float %67, float 0.000000e+00
  %2051 = select i1 %2047, float %68, float 1.000000e+00
  %2052 = select i1 %2047, float %69, float %92
  %2053 = select i1 %2047, float %70, float %93
  %2054 = add i32 %60, 316
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = fmul fast float %2058, 0x3F50624DE0000000
  %2060 = add i32 %60, 120
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 16
  %2064 = and i32 %2063, 255
  %2065 = lshr i32 %2062, 24
  %2066 = add i32 %60, 324
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 65535
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = lshr i32 %2068, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = add i32 %60, 64
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 22
  %2077 = shl nuw nsw i32 %2076, 5
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = shl i32 %2075, 4
  %2080 = and i32 %2079, 32752
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = lshr i32 %2075, 7
  %2083 = and i32 %2082, 32752
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2087 = fmul fast float %2086, 1.000000e+03
  %2088 = fmul fast float %396, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fadd fast float %2089, %386
  %2091 = fmul fast float %397, %2087
  %2092 = call float @dx.op.unary.f32(i32 22, float %2091)  ; Frc(value)
  %2093 = fadd fast float %2092, %388
  %2094 = fmul fast float %2059, %2087
  %2095 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2096 = fmul fast float %2095, 0x401921FB60000000
  %2097 = fadd fast float %2096, %2078
  %2098 = call float @dx.op.unary.f32(i32 13, float %2097)  ; Sin(value)
  %2099 = call float @dx.op.unary.f32(i32 12, float %2097)  ; Cos(value)
  %2100 = fsub fast float -0.000000e+00, %2098
  %2101 = fadd fast float %2052, -5.000000e-01
  %2102 = fadd fast float %2053, -5.000000e-01
  %2103 = fmul fast float %2070, %2101
  %2104 = fmul fast float %2072, %2102
  %2105 = fadd fast float %2103, 5.000000e-01
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fmul fast float %2081, %2105
  %2108 = fmul fast float %2084, %2106
  %2109 = fmul fast float %2099, %2107
  %2110 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2108, float %2109)  ; FMad(a,b,c)
  %2111 = fmul fast float %2098, %2107
  %2112 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2108, float %2111)  ; FMad(a,b,c)
  %2113 = fadd fast float %2090, %2110
  %2114 = fadd fast float %2093, %2112
  %2115 = icmp ugt i32 %2064, 1
  %2116 = icmp ugt i32 %2062, 33554431
  %2117 = or i1 %2116, %2115
  br i1 %2117, label %2118, label %2143

; <label>:2118                                    ; preds = %2045
  %2119 = add i32 %60, 260
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 16
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fmul fast float %2086, %2123
  %2125 = call float @dx.op.unary.f32(i32 22, float %2124)  ; Frc(value)
  %2126 = mul nuw nsw i32 %2064, %2065
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2125, %2127
  %2129 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2130 = fptoui float %2129 to i32
  %2131 = urem i32 %2130, %2064
  %2132 = udiv i32 %2130, %2065
  %2133 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2134 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2135 = uitofp i32 %2131 to float
  %2136 = uitofp i32 %2132 to float
  %2137 = fadd fast float %2133, %2135
  %2138 = fadd fast float %2134, %2136
  %2139 = uitofp i32 %2064 to float
  %2140 = uitofp i32 %2065 to float
  %2141 = fdiv fast float %2137, %2139
  %2142 = fdiv fast float %2138, %2140
  br label %2143

; <label>:2143                                    ; preds = %2118, %2045
  %2144 = phi float [ %2141, %2118 ], [ %2113, %2045 ]
  %2145 = phi float [ %2142, %2118 ], [ %2114, %2045 ]
  %2146 = and i32 %2039, 256
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2194, label %2148

; <label>:2148                                    ; preds = %2143
  %2149 = add i32 %60, 448
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2153, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = add i32 %60, 132
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = shl i32 %2158, 4
  %2160 = and i32 %2159, 32752
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2158, 7
  %2163 = and i32 %2162, 32752
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = fsub fast float 1.000000e+00, %498
  %2166 = call float @dx.op.binary.f32(i32 35, float %2165, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2167 = bitcast float %498 to i32
  %2168 = sitofp i32 %2167 to float
  %2169 = fadd fast float %2168, 0xC1CFBF8940000000
  %2170 = fmul fast float %2164, %2169
  %2171 = fadd fast float %2170, 0x41CFBF8940000000
  %2172 = fptosi float %2171 to i32
  %2173 = bitcast i32 %2172 to float
  %2174 = bitcast float %2166 to i32
  %2175 = sitofp i32 %2174 to float
  %2176 = fadd fast float %2175, 0xC1CFBF8940000000
  %2177 = fmul fast float %2176, %2164
  %2178 = fadd fast float %2177, 0x41CFBF8940000000
  %2179 = fptosi float %2178 to i32
  %2180 = bitcast i32 %2179 to float
  %2181 = fmul fast float %2173, %2161
  %2182 = fmul fast float %2180, %2161
  %2183 = fsub fast float %2166, %2181
  %2184 = fadd fast float %2182, %2166
  %2185 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2186 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2187 = fsub fast float %2155, %2185
  %2188 = fsub fast float %2186, %2185
  %2189 = bitcast float %2188 to i32
  %2190 = sub nsw i32 2129859010, %2189
  %2191 = bitcast i32 %2190 to float
  %2192 = fmul fast float %2191, %2187
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  br label %2194

; <label>:2194                                    ; preds = %2148, %2143
  %2195 = phi float [ %2193, %2148 ], [ %498, %2143 ]
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 128
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2216, label %2200

; <label>:2200                                    ; preds = %2194
  %2201 = add i32 %60, 432
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 524288
  %2211 = icmp ne i32 %2210, 0
  %2212 = fcmp fast ogt float %2207, 0x3FE0101020000000
  %2213 = select i1 %2212, float 1.000000e+00, float 0.000000e+00
  %2214 = select i1 %2211, float %2213, float %2207
  %2215 = fmul fast float %2214, %2195
  br label %2216

; <label>:2216                                    ; preds = %2200, %2194
  %2217 = phi float [ %2215, %2200 ], [ %2195, %2194 ]
  %2218 = fcmp fast ult float %2217, 0x3F70101020000000
  br i1 %2218, label %2906, label %2219

; <label>:2219                                    ; preds = %2216
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 16
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2422, label %2224

; <label>:2224                                    ; preds = %2219
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %60, 384
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %2229, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2231, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.ResRet.f32 %2232, 3
  %2237 = and i32 %2226, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = lshr i32 %2226, 8
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2236, %2238
  %2243 = fadd fast float %2242, %2241
  %2244 = fmul fast float %2243, 0x3F70101000000000
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 512
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2257, label %2249

; <label>:2249                                    ; preds = %2224
  %2250 = add i32 %60, 464
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = add i32 %2252, 0
  %2254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2254, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2256 = extractvalue %dx.types.ResRet.f32 %2255, 0
  br label %2257

; <label>:2257                                    ; preds = %2249, %2224
  %2258 = phi float [ %2256, %2249 ], [ 1.000000e+00, %2224 ]
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 33554432
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2369, label %2263

; <label>:2263                                    ; preds = %2257
  %2264 = add i32 %60, 256
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 65535
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2266, 16
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = add i32 %60, 260
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = lshr i32 %2277, 24
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = and i32 %2277, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = lshr i32 %2277, 8
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = lshr i32 %2277, 16
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = add i32 %60, 252
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 24
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = and i32 %2294, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = lshr i32 %2294, 8
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = lshr i32 %2294, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = bitcast float %2233 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2233, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2233
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2234 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2234, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2234
  %2328 = fmul fast float %2327, %2326
  %2329 = bitcast float %2235 to i32
  %2330 = ashr i32 %2329, 1
  %2331 = sub nsw i32 1597463174, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2235, 5.000000e-01
  %2334 = fmul fast float %2332, %2332
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float 1.500000e+00, %2335
  %2337 = fmul fast float %2332, %2235
  %2338 = fmul fast float %2337, %2336
  %2339 = fsub fast float %2318, %2300
  %2340 = fsub fast float %2328, %2304
  %2341 = fsub fast float %2338, %2308
  %2342 = fmul fast float %2339, %2268
  %2343 = fmul fast float %2340, %2270
  %2344 = fmul fast float %2341, %2275
  %2345 = fadd fast float %2342, %2283
  %2346 = fadd fast float %2343, %2287
  %2347 = fadd fast float %2344, %2291
  %2348 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = fmul fast float %2348, %2348
  %2352 = fmul fast float %2349, %2349
  %2353 = fmul fast float %2350, %2350
  %2354 = fsub fast float %2351, %2233
  %2355 = fsub fast float %2352, %2234
  %2356 = fsub fast float %2353, %2235
  %2357 = fmul fast float %2354, %2258
  %2358 = fmul fast float %2355, %2258
  %2359 = fmul fast float %2356, %2258
  %2360 = fadd fast float %2357, %2233
  %2361 = fadd fast float %2358, %2234
  %2362 = fadd fast float %2359, %2235
  %2363 = fadd fast float %2280, %2244
  %2364 = fsub fast float %2363, %2297
  %2365 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  %2366 = fsub fast float %2365, %2244
  %2367 = fmul fast float %2366, %2258
  %2368 = fadd fast float %2367, %2244
  br label %2422

; <label>:2369                                    ; preds = %2257
  %2370 = and i32 %2260, 134217728
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2406, label %2372

; <label>:2372                                    ; preds = %2369
  %2373 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2374 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2376 = fadd fast float %2373, -5.000000e-01
  %2377 = fadd fast float %2374, -5.000000e-01
  %2378 = fadd fast float %2375, -5.000000e-01
  %2379 = fmul fast float %2376, %2258
  %2380 = fmul fast float %2377, %2258
  %2381 = fmul fast float %2378, %2258
  %2382 = fadd fast float %2379, 5.000000e-01
  %2383 = fadd fast float %2380, 5.000000e-01
  %2384 = fadd fast float %2381, 5.000000e-01
  %2385 = call float @dx.op.unary.f32(i32 24, float %2233)  ; Sqrt(value)
  %2386 = call float @dx.op.unary.f32(i32 24, float %2234)  ; Sqrt(value)
  %2387 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2388 = fmul fast float %2382, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2385
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2385
  %2393 = fmul fast float %2383, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2386
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2386
  %2398 = fmul fast float %2384, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2387
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2387
  %2403 = fmul fast float %2392, %2392
  %2404 = fmul fast float %2397, %2397
  %2405 = fmul fast float %2402, %2402
  br label %2422

; <label>:2406                                    ; preds = %2369
  %2407 = fmul fast float %373, %373
  %2408 = fmul fast float %377, %377
  %2409 = fmul fast float %381, %381
  %2410 = fadd fast float %2407, -1.000000e+00
  %2411 = fadd fast float %2408, -1.000000e+00
  %2412 = fadd fast float %2409, -1.000000e+00
  %2413 = fmul fast float %2258, %2410
  %2414 = fmul fast float %2258, %2411
  %2415 = fmul fast float %2258, %2412
  %2416 = fadd fast float %2413, 1.000000e+00
  %2417 = fadd fast float %2414, 1.000000e+00
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fmul fast float %2416, %2233
  %2420 = fmul fast float %2417, %2234
  %2421 = fmul fast float %2418, %2235
  br label %2422

; <label>:2422                                    ; preds = %2406, %2372, %2263, %2219
  %2423 = phi float [ %2368, %2263 ], [ %2244, %2372 ], [ %2244, %2406 ], [ 0x3FA23C0BE0000000, %2219 ]
  %2424 = phi float [ %2360, %2263 ], [ %2403, %2372 ], [ %2419, %2406 ], [ 1.000000e+00, %2219 ]
  %2425 = phi float [ %2361, %2263 ], [ %2404, %2372 ], [ %2420, %2406 ], [ 1.000000e+00, %2219 ]
  %2426 = phi float [ %2362, %2263 ], [ %2405, %2372 ], [ %2421, %2406 ], [ 1.000000e+00, %2219 ]
  %2427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.i32 %2427, 1
  %2429 = and i32 %2428, 1
  %2430 = icmp ne i32 %2429, 0
  %2431 = add i32 %60, 356
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 32
  %2435 = icmp ne i32 %2434, 0
  %2436 = and i1 %2430, %2435
  %2437 = select i1 %2436, float 1.000000e+00, float %2424
  %2438 = select i1 %2436, float 0x3FD3333340000000, float %2425
  %2439 = select i1 %2436, float 0x3FD3333340000000, float %2426
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 32
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2516, label %2444

; <label>:2444                                    ; preds = %2422
  %2445 = add i32 %60, 124
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %60, 400
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = add i32 %2450, 0
  %2452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2452, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.ResRet.f32 %2453, 3
  %2458 = and i32 %2447, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = lshr i32 %2447, 8
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = lshr i32 %2447, 16
  %2464 = and i32 %2463, 255
  %2465 = uitofp i32 %2464 to float
  %2466 = fmul fast float %2465, 0x3F70101000000000
  %2467 = fmul fast float %2454, %2459
  %2468 = fadd fast float %2467, %2462
  %2469 = fmul fast float %2468, 0x3F70101000000000
  %2470 = fadd fast float %2455, -5.000000e-01
  %2471 = fadd fast float %2457, -5.000000e-01
  %2472 = fmul fast float %2470, %2466
  %2473 = fmul fast float %2471, %2466
  %2474 = fadd fast float %2472, 5.000000e-01
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fmul fast float %2474, 2.000000e+00
  %2477 = fadd fast float %2476, -1.000000e+00
  %2478 = fmul fast float %2475, 2.000000e+00
  %2479 = fadd fast float %2478, -1.000000e+00
  %2480 = fadd fast float %2477, %2479
  %2481 = fmul fast float %2480, 5.000000e-01
  %2482 = fsub fast float %2477, %2479
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = call float @dx.op.unary.f32(i32 6, float %2481)  ; FAbs(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2487 = fsub fast float %2485, %2486
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2481, float %2483, float %2487, float %2481, float %2483, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = call float @dx.op.unary.f32(i32 25, float %2488)  ; Rsqrt(value)
  %2490 = fmul fast float %2481, %2489
  %2491 = fmul fast float %2483, %2489
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 67108864
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2512, label %2496

; <label>:2496                                    ; preds = %2444
  %2497 = add i32 %60, 312
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 65535
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 65535
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = lshr i32 %2499, 16
  %2507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2506)  ; LegacyF16ToF32(value)
  %2508 = fsub fast float %2469, %2507
  %2509 = fmul fast float %2508, %2501
  %2510 = fadd fast float %2509, %2505
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  br label %2512

; <label>:2512                                    ; preds = %2496, %2444
  %2513 = phi float [ %2511, %2496 ], [ %2469, %2444 ]
  %2514 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2048, float %2049)  ; Dot2(ax,ay,bx,by)
  %2515 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2050, float %2051)  ; Dot2(ax,ay,bx,by)
  br label %2516

; <label>:2516                                    ; preds = %2512, %2422
  %2517 = phi float [ %2513, %2512 ], [ 0x3FD6666660000000, %2422 ]
  %2518 = phi float [ %2514, %2512 ], [ 0.000000e+00, %2422 ]
  %2519 = phi float [ %2515, %2512 ], [ 0.000000e+00, %2422 ]
  %2520 = phi float [ %2456, %2512 ], [ 1.000000e+00, %2422 ]
  %2521 = add i32 %60, 192
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = lshr i32 %2523, 22
  %2525 = shl nuw nsw i32 %2524, 5
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 64
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2564, label %2531

; <label>:2531                                    ; preds = %2516
  %2532 = add i32 %60, 416
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 131072
  %2540 = icmp eq i32 %2539, 0
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = fmul fast float %2542, %361
  %2546 = fmul fast float %2543, %364
  %2547 = fmul fast float %2544, %367
  br i1 %2540, label %2554, label %2548

; <label>:2548                                    ; preds = %2531
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = fmul fast float %2550, %2545
  %2552 = fmul fast float %2550, %2546
  %2553 = fmul fast float %2550, %2547
  br label %2554

; <label>:2554                                    ; preds = %2548, %2531
  %2555 = phi float [ %2551, %2548 ], [ %2545, %2531 ]
  %2556 = phi float [ %2552, %2548 ], [ %2546, %2531 ]
  %2557 = phi float [ %2553, %2548 ], [ %2547, %2531 ]
  %2558 = fmul fast float %2555, %2526
  %2559 = select i1 %260, float %2558, float %2555
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = select i1 %260, float 0.000000e+00, float %2555
  %2562 = select i1 %260, float %2560, float %2556
  %2563 = select i1 %260, float 0.000000e+00, float %2557
  br label %2564

; <label>:2564                                    ; preds = %2554, %2516
  %2565 = phi float [ %2561, %2554 ], [ 0.000000e+00, %2516 ]
  %2566 = phi float [ %2562, %2554 ], [ 0.000000e+00, %2516 ]
  %2567 = phi float [ %2563, %2554 ], [ 0.000000e+00, %2516 ]
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 1024
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2602, label %2572

; <label>:2572                                    ; preds = %2564
  %2573 = add i32 %60, 184
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = fmul fast float %2577, 0x3F70101020000000
  %2579 = lshr i32 %2575, 8
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101020000000
  %2583 = lshr i32 %2575, 16
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3F70101020000000
  %2587 = fmul fast float %2578, %2578
  %2588 = fmul fast float %2582, %2582
  %2589 = fmul fast float %2586, %2586
  %2590 = add i32 %60, 480
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %2592, 0
  %2594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2594, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.ResRet.f32 %2595, 2
  %2599 = fmul fast float %2587, %2596
  %2600 = fmul fast float %2588, %2597
  %2601 = fmul fast float %2589, %2598
  br label %2602

; <label>:2602                                    ; preds = %2572, %2564
  %2603 = phi float [ %2599, %2572 ], [ 0.000000e+00, %2564 ]
  %2604 = phi float [ %2600, %2572 ], [ 0.000000e+00, %2564 ]
  %2605 = phi float [ %2601, %2572 ], [ 0.000000e+00, %2564 ]
  %2606 = fcmp fast ogt float %2603, 0.000000e+00
  %2607 = fcmp fast ogt float %2604, 0.000000e+00
  %2608 = fcmp fast ogt float %2605, 0.000000e+00
  %2609 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2610 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2611 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 7
  %2615 = and i32 %2614, 32752
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2609, 0xBFE62E4300000000
  %2618 = fmul fast float %2617, %2616
  %2619 = fmul fast float %2610, 0xBFE62E4300000000
  %2620 = fmul fast float %2619, %2616
  %2621 = fmul fast float %2611, 0xBFE62E4300000000
  %2622 = fmul fast float %2621, %2616
  %2623 = select i1 %2606, float %2618, float 1.270000e+02
  %2624 = select i1 %2607, float %2620, float 1.270000e+02
  %2625 = select i1 %2608, float %2622, float 1.270000e+02
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 10240
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2650, label %2630

; <label>:2630                                    ; preds = %2602
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 2048
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2650, label %2635

; <label>:2635                                    ; preds = %2630
  %2636 = add i32 %60, 496
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 3
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = shl i32 %2644, 4
  %2646 = and i32 %2645, 32752
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fmul fast float %2647, %2642
  %2649 = call float @dx.op.binary.f32(i32 35, float %2648, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2650

; <label>:2650                                    ; preds = %2635, %2630, %2602
  %2651 = phi float [ %2649, %2635 ], [ 0x3F70101020000000, %2630 ], [ 0x3F70101020000000, %2602 ]
  %2652 = add i32 %60, 128
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = lshr i32 %2654, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2437, float %2438, float %2439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = fmul fast float %2659, %2660
  %2662 = fadd fast float %2661, %2656
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  br i1 %2036, label %2665, label %2700

; <label>:2665                                    ; preds = %2650
  %2666 = fmul fast float %2651, 2.000000e+00
  %2667 = fcmp fast olt float %2623, 1.270000e+02
  %2668 = fcmp fast olt float %2624, 1.270000e+02
  %2669 = fcmp fast olt float %2625, 1.270000e+02
  %2670 = fmul fast float %2623, 0xBFF7154760000000
  %2671 = fmul fast float %2670, %2666
  %2672 = fmul fast float %2624, 0xBFF7154760000000
  %2673 = fmul fast float %2672, %2666
  %2674 = fmul fast float %2625, 0xBFF7154760000000
  %2675 = fmul fast float %2674, %2666
  %2676 = call float @dx.op.unary.f32(i32 21, float %2671)  ; Exp(value)
  %2677 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2678 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2680 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2682 = fadd fast float %2679, -1.000000e+00
  %2683 = select i1 %2667, float %2682, float -1.000000e+00
  %2684 = fadd fast float %2680, -1.000000e+00
  %2685 = select i1 %2668, float %2684, float -1.000000e+00
  %2686 = fadd fast float %2681, -1.000000e+00
  %2687 = select i1 %2669, float %2686, float -1.000000e+00
  %2688 = fmul fast float %2683, %2217
  %2689 = fmul fast float %2685, %2217
  %2690 = fmul fast float %2687, %2217
  %2691 = fadd fast float %2688, 1.000000e+00
  %2692 = fadd fast float %2689, 1.000000e+00
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fmul fast float %2691, %2021
  %2695 = fmul fast float %2692, %2022
  %2696 = fmul fast float %2693, %2023
  %2697 = fmul fast float %2691, %2024
  %2698 = fmul fast float %2692, %2025
  %2699 = fmul fast float %2693, %2026
  br label %2700

; <label>:2700                                    ; preds = %2665, %2650
  %2701 = phi float [ %2694, %2665 ], [ %2021, %2650 ]
  %2702 = phi float [ %2695, %2665 ], [ %2022, %2650 ]
  %2703 = phi float [ %2696, %2665 ], [ %2023, %2650 ]
  %2704 = phi float [ %2697, %2665 ], [ %2024, %2650 ]
  %2705 = phi float [ %2698, %2665 ], [ %2025, %2650 ]
  %2706 = phi float [ %2699, %2665 ], [ %2026, %2650 ]
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 3
  %2710 = icmp eq i32 %2709, 3
  br i1 %2710, label %2789, label %2711

; <label>:2711                                    ; preds = %2700
  %2712 = and i32 %2708, 16
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %2217, float 0.000000e+00
  %2715 = icmp eq i32 %2709, 0
  br i1 %2715, label %2716, label %2744

; <label>:2716                                    ; preds = %2711
  %2717 = and i32 %2708, 64
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2217, float 0.000000e+00
  %2720 = fsub fast float %2437, %2701
  %2721 = fsub fast float %2438, %2702
  %2722 = fsub fast float %2439, %2703
  %2723 = fmul fast float %2714, %2720
  %2724 = fmul fast float %2714, %2721
  %2725 = fmul fast float %2714, %2722
  %2726 = fadd fast float %2723, %2701
  %2727 = fadd fast float %2724, %2702
  %2728 = fadd fast float %2725, %2703
  %2729 = fsub fast float %2423, %2030
  %2730 = fmul fast float %2714, %2729
  %2731 = fadd fast float %2730, %2030
  %2732 = fsub fast float %2565, %2704
  %2733 = fsub fast float %2566, %2705
  %2734 = fsub fast float %2567, %2706
  %2735 = fmul fast float %2719, %2732
  %2736 = fmul fast float %2719, %2733
  %2737 = fmul fast float %2719, %2734
  %2738 = fadd fast float %2735, %2704
  %2739 = fadd fast float %2736, %2705
  %2740 = fadd fast float %2737, %2706
  %2741 = fsub fast float %2664, %2034
  %2742 = fmul fast float %2714, %2741
  %2743 = fadd fast float %2742, %2034
  br label %2789

; <label>:2744                                    ; preds = %2711
  %2745 = icmp eq i32 %2709, 1
  br i1 %2745, label %2746, label %2759

; <label>:2746                                    ; preds = %2744
  %2747 = fadd fast float %2437, -1.000000e+00
  %2748 = fadd fast float %2438, -1.000000e+00
  %2749 = fadd fast float %2439, -1.000000e+00
  %2750 = fmul fast float %2714, %2747
  %2751 = fmul fast float %2714, %2748
  %2752 = fmul fast float %2714, %2749
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fadd fast float %2751, 1.000000e+00
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fmul fast float %2753, %2701
  %2757 = fmul fast float %2754, %2702
  %2758 = fmul fast float %2755, %2703
  br label %2789

; <label>:2759                                    ; preds = %2744
  %2760 = icmp eq i32 %2709, 2
  br i1 %2760, label %2761, label %2789

; <label>:2761                                    ; preds = %2759
  %2762 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %2763 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fadd fast float %2763, -5.000000e-01
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fmul fast float %2765, %2714
  %2769 = fmul fast float %2766, %2714
  %2770 = fmul fast float %2767, %2714
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fadd fast float %2769, 5.000000e-01
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fmul fast float %2771, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2701
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2701
  %2779 = fmul fast float %2772, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2702
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2702
  %2784 = fmul fast float %2773, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2703
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2703
  br label %2789

; <label>:2789                                    ; preds = %2761, %2759, %2746, %2716, %2700
  %2790 = phi float [ %2701, %2700 ], [ %2778, %2761 ], [ %2701, %2759 ], [ %2756, %2746 ], [ %2726, %2716 ]
  %2791 = phi float [ %2702, %2700 ], [ %2783, %2761 ], [ %2702, %2759 ], [ %2757, %2746 ], [ %2727, %2716 ]
  %2792 = phi float [ %2703, %2700 ], [ %2788, %2761 ], [ %2703, %2759 ], [ %2758, %2746 ], [ %2728, %2716 ]
  %2793 = phi float [ %2704, %2700 ], [ %2704, %2761 ], [ %2704, %2759 ], [ %2704, %2746 ], [ %2738, %2716 ]
  %2794 = phi float [ %2705, %2700 ], [ %2705, %2761 ], [ %2705, %2759 ], [ %2705, %2746 ], [ %2739, %2716 ]
  %2795 = phi float [ %2706, %2700 ], [ %2706, %2761 ], [ %2706, %2759 ], [ %2706, %2746 ], [ %2740, %2716 ]
  %2796 = phi float [ %2030, %2700 ], [ %2030, %2761 ], [ %2030, %2759 ], [ %2030, %2746 ], [ %2731, %2716 ]
  %2797 = phi float [ %2034, %2700 ], [ %2034, %2761 ], [ %2034, %2759 ], [ %2034, %2746 ], [ %2743, %2716 ]
  %2798 = and i32 %2708, 12
  %2799 = icmp eq i32 %2798, 12
  br i1 %2799, label %2906, label %2800

; <label>:2800                                    ; preds = %2789
  %2801 = and i32 %2708, 2097184
  %2802 = icmp eq i32 %2801, 2097184
  %2803 = select i1 %2802, float %2217, float 0.000000e+00
  %2804 = and i32 %2708, 4194336
  %2805 = icmp eq i32 %2804, 4194336
  %2806 = select i1 %2805, float %2217, float 0.000000e+00
  %2807 = and i32 %2708, 8388640
  %2808 = icmp eq i32 %2807, 8388640
  %2809 = select i1 %2808, float %2217, float 0.000000e+00
  %2810 = and i32 %2708, 1024
  %2811 = icmp ne i32 %2810, 0
  %2812 = select i1 %2811, float %2217, float 0.000000e+00
  %2813 = and i32 %2708, 2048
  %2814 = icmp ne i32 %2813, 0
  %2815 = select i1 %2814, float %2217, float 0.000000e+00
  %2816 = icmp eq i32 %2798, 0
  br i1 %2816, label %2817, label %2842

; <label>:2817                                    ; preds = %2800
  %2818 = fsub fast float %2518, %2019
  %2819 = fsub fast float %2519, %2020
  %2820 = fmul fast float %2803, %2818
  %2821 = fmul fast float %2803, %2819
  %2822 = fadd fast float %2820, %2019
  %2823 = fadd fast float %2821, %2020
  %2824 = fsub fast float %2520, %2032
  %2825 = fmul fast float %2806, %2824
  %2826 = fadd fast float %2825, %2032
  %2827 = fsub fast float %2517, %2031
  %2828 = fmul fast float %2809, %2827
  %2829 = fadd fast float %2828, %2031
  %2830 = fsub fast float %2623, %2027
  %2831 = fsub fast float %2624, %2028
  %2832 = fsub fast float %2625, %2029
  %2833 = fmul fast float %2812, %2830
  %2834 = fmul fast float %2812, %2831
  %2835 = fmul fast float %2812, %2832
  %2836 = fadd fast float %2833, %2027
  %2837 = fadd fast float %2834, %2028
  %2838 = fadd fast float %2835, %2029
  %2839 = fsub fast float %2651, %2033
  %2840 = fmul fast float %2815, %2839
  %2841 = fadd fast float %2840, %2033
  br label %2906

; <label>:2842                                    ; preds = %2800
  %2843 = icmp eq i32 %2798, 4
  br i1 %2843, label %2844, label %2884

; <label>:2844                                    ; preds = %2842
  %2845 = fmul fast float %2803, %2518
  %2846 = fmul fast float %2803, %2519
  %2847 = fadd fast float %2845, %2019
  %2848 = fadd fast float %2846, %2020
  %2849 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2850 = fsub fast float %2849, %2032
  %2851 = fmul fast float %2850, %2806
  %2852 = fadd fast float %2851, %2032
  %2853 = fadd fast float %2517, %2031
  %2854 = fmul fast float %2853, 0x3FF337FAE0000000
  %2855 = fmul fast float %2031, %2031
  %2856 = fmul fast float %2517, %2517
  %2857 = fadd fast float %2856, %2855
  %2858 = fmul fast float %2857, 0x3FE5152B00000000
  %2859 = fmul fast float %2031, 0xBFCC1F85E0000000
  %2860 = fmul fast float %2859, %2517
  %2861 = fadd fast float %2860, 0xBFE1363700000000
  %2862 = fadd fast float %2861, %2854
  %2863 = fsub fast float %2862, %2858
  %2864 = fmul fast float %2853, 0x3FBA6F0D00000000
  %2865 = fmul fast float %2857, 0x3FD0432880000000
  %2866 = fmul fast float %2031, 0xBFEF110800000000
  %2867 = fmul fast float %2866, %2517
  %2868 = fadd fast float %2867, 1.000000e+00
  %2869 = fsub fast float %2868, %2864
  %2870 = fadd fast float %2869, %2865
  %2871 = fdiv fast float %2863, %2870
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fsub fast float %2872, %2031
  %2874 = fmul fast float %2873, %2809
  %2875 = fadd fast float %2874, %2031
  %2876 = fmul fast float %2812, %2623
  %2877 = fmul fast float %2812, %2624
  %2878 = fmul fast float %2812, %2625
  %2879 = fadd fast float %2876, %2027
  %2880 = fadd fast float %2877, %2028
  %2881 = fadd fast float %2878, %2029
  %2882 = fmul fast float %2815, %2651
  %2883 = fadd fast float %2882, %2033
  br label %2906

; <label>:2884                                    ; preds = %2842
  %2885 = icmp eq i32 %2798, 8
  br i1 %2885, label %2886, label %2906

; <label>:2886                                    ; preds = %2884
  %2887 = fmul fast float %2803, %2518
  %2888 = fmul fast float %2803, %2519
  %2889 = fadd fast float %2887, %2019
  %2890 = fadd fast float %2888, %2020
  %2891 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2892 = fsub fast float %2891, %2032
  %2893 = fmul fast float %2892, %2806
  %2894 = fadd fast float %2893, %2032
  %2895 = fsub fast float %2517, %2031
  %2896 = fmul fast float %2809, %2895
  %2897 = fadd fast float %2896, %2031
  %2898 = fmul fast float %2812, %2623
  %2899 = fmul fast float %2812, %2624
  %2900 = fmul fast float %2812, %2625
  %2901 = fadd fast float %2898, %2027
  %2902 = fadd fast float %2899, %2028
  %2903 = fadd fast float %2900, %2029
  %2904 = fmul fast float %2815, %2651
  %2905 = fadd fast float %2904, %2033
  br label %2906

; <label>:2906                                    ; preds = %2886, %2884, %2844, %2817, %2789, %2216, %2035, %2018
  %2907 = phi float [ %2019, %2789 ], [ %2019, %2216 ], [ %2019, %2018 ], [ %2889, %2886 ], [ %2019, %2884 ], [ %2847, %2844 ], [ %2822, %2817 ], [ %2019, %2035 ]
  %2908 = phi float [ %2020, %2789 ], [ %2020, %2216 ], [ %2020, %2018 ], [ %2890, %2886 ], [ %2020, %2884 ], [ %2848, %2844 ], [ %2823, %2817 ], [ %2020, %2035 ]
  %2909 = phi float [ %2790, %2789 ], [ %2021, %2216 ], [ %2021, %2018 ], [ %2790, %2886 ], [ %2790, %2884 ], [ %2790, %2844 ], [ %2790, %2817 ], [ %2021, %2035 ]
  %2910 = phi float [ %2791, %2789 ], [ %2022, %2216 ], [ %2022, %2018 ], [ %2791, %2886 ], [ %2791, %2884 ], [ %2791, %2844 ], [ %2791, %2817 ], [ %2022, %2035 ]
  %2911 = phi float [ %2792, %2789 ], [ %2023, %2216 ], [ %2023, %2018 ], [ %2792, %2886 ], [ %2792, %2884 ], [ %2792, %2844 ], [ %2792, %2817 ], [ %2023, %2035 ]
  %2912 = phi float [ %2793, %2789 ], [ %2024, %2216 ], [ %2024, %2018 ], [ %2793, %2886 ], [ %2793, %2884 ], [ %2793, %2844 ], [ %2793, %2817 ], [ %2024, %2035 ]
  %2913 = phi float [ %2794, %2789 ], [ %2025, %2216 ], [ %2025, %2018 ], [ %2794, %2886 ], [ %2794, %2884 ], [ %2794, %2844 ], [ %2794, %2817 ], [ %2025, %2035 ]
  %2914 = phi float [ %2795, %2789 ], [ %2026, %2216 ], [ %2026, %2018 ], [ %2795, %2886 ], [ %2795, %2884 ], [ %2795, %2844 ], [ %2795, %2817 ], [ %2026, %2035 ]
  %2915 = phi float [ %2027, %2789 ], [ %2027, %2216 ], [ %2027, %2018 ], [ %2901, %2886 ], [ %2027, %2884 ], [ %2879, %2844 ], [ %2836, %2817 ], [ %2027, %2035 ]
  %2916 = phi float [ %2028, %2789 ], [ %2028, %2216 ], [ %2028, %2018 ], [ %2902, %2886 ], [ %2028, %2884 ], [ %2880, %2844 ], [ %2837, %2817 ], [ %2028, %2035 ]
  %2917 = phi float [ %2029, %2789 ], [ %2029, %2216 ], [ %2029, %2018 ], [ %2903, %2886 ], [ %2029, %2884 ], [ %2881, %2844 ], [ %2838, %2817 ], [ %2029, %2035 ]
  %2918 = phi float [ %2796, %2789 ], [ %2030, %2216 ], [ %2030, %2018 ], [ %2796, %2886 ], [ %2796, %2884 ], [ %2796, %2844 ], [ %2796, %2817 ], [ %2030, %2035 ]
  %2919 = phi float [ %2031, %2789 ], [ %2031, %2216 ], [ %2031, %2018 ], [ %2897, %2886 ], [ %2031, %2884 ], [ %2875, %2844 ], [ %2829, %2817 ], [ %2031, %2035 ]
  %2920 = phi float [ %2032, %2789 ], [ %2032, %2216 ], [ %2032, %2018 ], [ %2894, %2886 ], [ %2032, %2884 ], [ %2852, %2844 ], [ %2826, %2817 ], [ %2032, %2035 ]
  %2921 = phi float [ %2033, %2789 ], [ %2033, %2216 ], [ %2033, %2018 ], [ %2905, %2886 ], [ %2033, %2884 ], [ %2883, %2844 ], [ %2841, %2817 ], [ %2033, %2035 ]
  %2922 = phi float [ %2797, %2789 ], [ %2034, %2216 ], [ %2034, %2018 ], [ %2797, %2886 ], [ %2797, %2884 ], [ %2797, %2844 ], [ %2797, %2817 ], [ %2034, %2035 ]
  br i1 %448, label %3794, label %2923

; <label>:2923                                    ; preds = %2906
  %2924 = icmp ult i32 %502, 4
  %2925 = add i32 %60, 72
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %60, 76
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = or i32 %2930, %2927
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3794, label %2933

; <label>:2933                                    ; preds = %2923
  %2934 = and i32 %2927, 262144
  %2935 = icmp ne i32 %2934, 0
  %2936 = select i1 %2935, float %65, float 1.000000e+00
  %2937 = select i1 %2935, float %66, float 0.000000e+00
  %2938 = select i1 %2935, float %67, float 0.000000e+00
  %2939 = select i1 %2935, float %68, float 1.000000e+00
  %2940 = select i1 %2935, float %69, float %92
  %2941 = select i1 %2935, float %70, float %93
  %2942 = add i32 %60, 332
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = lshr i32 %2944, 16
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = fmul fast float %2946, 0x3F50624DE0000000
  %2948 = add i32 %60, 136
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 16
  %2952 = and i32 %2951, 255
  %2953 = lshr i32 %2950, 24
  %2954 = add i32 %60, 340
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 65535
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %2956, 16
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = add i32 %60, 80
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = lshr i32 %2963, 22
  %2965 = shl nuw nsw i32 %2964, 5
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = shl i32 %2963, 4
  %2968 = and i32 %2967, 32752
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = lshr i32 %2963, 7
  %2971 = and i32 %2970, 32752
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 3
  %2975 = fmul fast float %2974, 1.000000e+03
  %2976 = fmul fast float %438, %2975
  %2977 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2978 = fadd fast float %2977, %428
  %2979 = fmul fast float %439, %2975
  %2980 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %2981 = fadd fast float %2980, %430
  %2982 = fmul fast float %2947, %2975
  %2983 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2984 = fmul fast float %2983, 0x401921FB60000000
  %2985 = fadd fast float %2984, %2966
  %2986 = call float @dx.op.unary.f32(i32 13, float %2985)  ; Sin(value)
  %2987 = call float @dx.op.unary.f32(i32 12, float %2985)  ; Cos(value)
  %2988 = fsub fast float -0.000000e+00, %2986
  %2989 = fadd fast float %2940, -5.000000e-01
  %2990 = fadd fast float %2941, -5.000000e-01
  %2991 = fmul fast float %2958, %2989
  %2992 = fmul fast float %2960, %2990
  %2993 = fadd fast float %2991, 5.000000e-01
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fmul fast float %2969, %2993
  %2996 = fmul fast float %2972, %2994
  %2997 = fmul fast float %2987, %2995
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2988, float %2996, float %2997)  ; FMad(a,b,c)
  %2999 = fmul fast float %2986, %2995
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2987, float %2996, float %2999)  ; FMad(a,b,c)
  %3001 = fadd fast float %2978, %2998
  %3002 = fadd fast float %2981, %3000
  %3003 = icmp ugt i32 %2952, 1
  %3004 = icmp ugt i32 %2950, 33554431
  %3005 = or i1 %3004, %3003
  br i1 %3005, label %3006, label %3031

; <label>:3006                                    ; preds = %2933
  %3007 = add i32 %60, 276
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = lshr i32 %3009, 16
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = fmul fast float %2974, %3011
  %3013 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3014 = mul nuw nsw i32 %2952, %2953
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3013, %3015
  %3017 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3018 = fptoui float %3017 to i32
  %3019 = urem i32 %3018, %2952
  %3020 = udiv i32 %3018, %2953
  %3021 = call float @dx.op.unary.f32(i32 22, float %3001)  ; Frc(value)
  %3022 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3023 = uitofp i32 %3019 to float
  %3024 = uitofp i32 %3020 to float
  %3025 = fadd fast float %3021, %3023
  %3026 = fadd fast float %3022, %3024
  %3027 = uitofp i32 %2952 to float
  %3028 = uitofp i32 %2953 to float
  %3029 = fdiv fast float %3025, %3027
  %3030 = fdiv fast float %3026, %3028
  br label %3031

; <label>:3031                                    ; preds = %3006, %2933
  %3032 = phi float [ %3029, %3006 ], [ %3001, %2933 ]
  %3033 = phi float [ %3030, %3006 ], [ %3002, %2933 ]
  %3034 = and i32 %2927, 256
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3082, label %3036

; <label>:3036                                    ; preds = %3031
  %3037 = add i32 %60, 452
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = add i32 %3039, 0
  %3041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3041, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = add i32 %60, 148
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = shl i32 %3046, 4
  %3048 = and i32 %3047, 32752
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = lshr i32 %3046, 7
  %3051 = and i32 %3050, 32752
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = fsub fast float 1.000000e+00, %497
  %3054 = call float @dx.op.binary.f32(i32 35, float %3053, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3055 = bitcast float %497 to i32
  %3056 = sitofp i32 %3055 to float
  %3057 = fadd fast float %3056, 0xC1CFBF8940000000
  %3058 = fmul fast float %3052, %3057
  %3059 = fadd fast float %3058, 0x41CFBF8940000000
  %3060 = fptosi float %3059 to i32
  %3061 = bitcast i32 %3060 to float
  %3062 = bitcast float %3054 to i32
  %3063 = sitofp i32 %3062 to float
  %3064 = fadd fast float %3063, 0xC1CFBF8940000000
  %3065 = fmul fast float %3064, %3052
  %3066 = fadd fast float %3065, 0x41CFBF8940000000
  %3067 = fptosi float %3066 to i32
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3061, %3049
  %3070 = fmul fast float %3068, %3049
  %3071 = fsub fast float %3054, %3069
  %3072 = fadd fast float %3070, %3054
  %3073 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3074 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3075 = fsub fast float %3043, %3073
  %3076 = fsub fast float %3074, %3073
  %3077 = bitcast float %3076 to i32
  %3078 = sub nsw i32 2129859010, %3077
  %3079 = bitcast i32 %3078 to float
  %3080 = fmul fast float %3079, %3075
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  br label %3082

; <label>:3082                                    ; preds = %3036, %3031
  %3083 = phi float [ %3081, %3036 ], [ %497, %3031 ]
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, 128
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3104, label %3088

; <label>:3088                                    ; preds = %3082
  %3089 = add i32 %60, 436
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %3091, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3093, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 524288
  %3099 = icmp ne i32 %3098, 0
  %3100 = fcmp fast ogt float %3095, 0x3FE0101020000000
  %3101 = select i1 %3100, float 1.000000e+00, float 0.000000e+00
  %3102 = select i1 %3099, float %3101, float %3095
  %3103 = fmul fast float %3102, %3083
  br label %3104

; <label>:3104                                    ; preds = %3088, %3082
  %3105 = phi float [ %3103, %3088 ], [ %3083, %3082 ]
  %3106 = fcmp fast ult float %3105, 0x3F70101020000000
  br i1 %3106, label %3794, label %3107

; <label>:3107                                    ; preds = %3104
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 16
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3310, label %3112

; <label>:3112                                    ; preds = %3107
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %60, 388
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = extractvalue %dx.types.ResRet.f32 %3120, 1
  %3123 = extractvalue %dx.types.ResRet.f32 %3120, 2
  %3124 = extractvalue %dx.types.ResRet.f32 %3120, 3
  %3125 = and i32 %3114, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = lshr i32 %3114, 8
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = fmul fast float %3124, %3126
  %3131 = fadd fast float %3130, %3129
  %3132 = fmul fast float %3131, 0x3F70101000000000
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 512
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3145, label %3137

; <label>:3137                                    ; preds = %3112
  %3138 = add i32 %60, 468
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  br label %3145

; <label>:3145                                    ; preds = %3137, %3112
  %3146 = phi float [ %3144, %3137 ], [ 1.000000e+00, %3112 ]
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 33554432
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3257, label %3151

; <label>:3151                                    ; preds = %3145
  %3152 = add i32 %60, 272
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 65535
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = lshr i32 %3154, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = add i32 %60, 276
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = lshr i32 %3165, 24
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = and i32 %3165, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101020000000
  %3172 = lshr i32 %3165, 8
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = lshr i32 %3165, 16
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = add i32 %60, 268
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = lshr i32 %3182, 24
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = and i32 %3182, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = lshr i32 %3182, 8
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = lshr i32 %3182, 16
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = bitcast float %3121 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3121, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3121
  %3206 = fmul fast float %3205, %3204
  %3207 = bitcast float %3122 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = sub nsw i32 1597463174, %3208
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3122, 5.000000e-01
  %3212 = fmul fast float %3210, %3210
  %3213 = fmul fast float %3212, %3211
  %3214 = fsub fast float 1.500000e+00, %3213
  %3215 = fmul fast float %3210, %3122
  %3216 = fmul fast float %3215, %3214
  %3217 = bitcast float %3123 to i32
  %3218 = ashr i32 %3217, 1
  %3219 = sub nsw i32 1597463174, %3218
  %3220 = bitcast i32 %3219 to float
  %3221 = fmul fast float %3123, 5.000000e-01
  %3222 = fmul fast float %3220, %3220
  %3223 = fmul fast float %3222, %3221
  %3224 = fsub fast float 1.500000e+00, %3223
  %3225 = fmul fast float %3220, %3123
  %3226 = fmul fast float %3225, %3224
  %3227 = fsub fast float %3206, %3188
  %3228 = fsub fast float %3216, %3192
  %3229 = fsub fast float %3226, %3196
  %3230 = fmul fast float %3227, %3156
  %3231 = fmul fast float %3228, %3158
  %3232 = fmul fast float %3229, %3163
  %3233 = fadd fast float %3230, %3171
  %3234 = fadd fast float %3231, %3175
  %3235 = fadd fast float %3232, %3179
  %3236 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3237 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3238 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3239 = fmul fast float %3236, %3236
  %3240 = fmul fast float %3237, %3237
  %3241 = fmul fast float %3238, %3238
  %3242 = fsub fast float %3239, %3121
  %3243 = fsub fast float %3240, %3122
  %3244 = fsub fast float %3241, %3123
  %3245 = fmul fast float %3242, %3146
  %3246 = fmul fast float %3243, %3146
  %3247 = fmul fast float %3244, %3146
  %3248 = fadd fast float %3245, %3121
  %3249 = fadd fast float %3246, %3122
  %3250 = fadd fast float %3247, %3123
  %3251 = fadd fast float %3168, %3132
  %3252 = fsub fast float %3251, %3185
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %3132
  %3255 = fmul fast float %3254, %3146
  %3256 = fadd fast float %3255, %3132
  br label %3310

; <label>:3257                                    ; preds = %3145
  %3258 = and i32 %3148, 134217728
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3294, label %3260

; <label>:3260                                    ; preds = %3257
  %3261 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3262 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3264 = fadd fast float %3261, -5.000000e-01
  %3265 = fadd fast float %3262, -5.000000e-01
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fmul fast float %3264, %3146
  %3268 = fmul fast float %3265, %3146
  %3269 = fmul fast float %3266, %3146
  %3270 = fadd fast float %3267, 5.000000e-01
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3274 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3275 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3276 = fmul fast float %3270, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3273
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3273
  %3281 = fmul fast float %3271, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3274
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3274
  %3286 = fmul fast float %3272, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3275
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3275
  %3291 = fmul fast float %3280, %3280
  %3292 = fmul fast float %3285, %3285
  %3293 = fmul fast float %3290, %3290
  br label %3310

; <label>:3294                                    ; preds = %3257
  %3295 = fmul fast float %415, %415
  %3296 = fmul fast float %419, %419
  %3297 = fmul fast float %423, %423
  %3298 = fadd fast float %3295, -1.000000e+00
  %3299 = fadd fast float %3296, -1.000000e+00
  %3300 = fadd fast float %3297, -1.000000e+00
  %3301 = fmul fast float %3146, %3298
  %3302 = fmul fast float %3146, %3299
  %3303 = fmul fast float %3146, %3300
  %3304 = fadd fast float %3301, 1.000000e+00
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fmul fast float %3304, %3121
  %3308 = fmul fast float %3305, %3122
  %3309 = fmul fast float %3306, %3123
  br label %3310

; <label>:3310                                    ; preds = %3294, %3260, %3151, %3107
  %3311 = phi float [ %3256, %3151 ], [ %3132, %3260 ], [ %3132, %3294 ], [ 0x3FA23C0BE0000000, %3107 ]
  %3312 = phi float [ %3248, %3151 ], [ %3291, %3260 ], [ %3307, %3294 ], [ 1.000000e+00, %3107 ]
  %3313 = phi float [ %3249, %3151 ], [ %3292, %3260 ], [ %3308, %3294 ], [ 1.000000e+00, %3107 ]
  %3314 = phi float [ %3250, %3151 ], [ %3293, %3260 ], [ %3309, %3294 ], [ 1.000000e+00, %3107 ]
  %3315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.i32 %3315, 1
  %3317 = and i32 %3316, 1
  %3318 = icmp ne i32 %3317, 0
  %3319 = add i32 %60, 356
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 32
  %3323 = icmp ne i32 %3322, 0
  %3324 = and i1 %3318, %3323
  %3325 = select i1 %3324, float 1.000000e+00, float %3312
  %3326 = select i1 %3324, float 0x3FD3333340000000, float %3313
  %3327 = select i1 %3324, float 0x3FD3333340000000, float %3314
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = and i32 %3329, 32
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3404, label %3332

; <label>:3332                                    ; preds = %3310
  %3333 = add i32 %60, 140
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = add i32 %60, 404
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %3338, 0
  %3340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3340, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = and i32 %3335, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = lshr i32 %3335, 8
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = lshr i32 %3335, 16
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = fmul fast float %3353, 0x3F70101000000000
  %3355 = fmul fast float %3342, %3347
  %3356 = fadd fast float %3355, %3350
  %3357 = fmul fast float %3356, 0x3F70101000000000
  %3358 = fadd fast float %3343, -5.000000e-01
  %3359 = fadd fast float %3345, -5.000000e-01
  %3360 = fmul fast float %3358, %3354
  %3361 = fmul fast float %3359, %3354
  %3362 = fadd fast float %3360, 5.000000e-01
  %3363 = fadd fast float %3361, 5.000000e-01
  %3364 = fmul fast float %3362, 2.000000e+00
  %3365 = fadd fast float %3364, -1.000000e+00
  %3366 = fmul fast float %3363, 2.000000e+00
  %3367 = fadd fast float %3366, -1.000000e+00
  %3368 = fadd fast float %3365, %3367
  %3369 = fmul fast float %3368, 5.000000e-01
  %3370 = fsub fast float %3365, %3367
  %3371 = fmul fast float %3370, 5.000000e-01
  %3372 = call float @dx.op.unary.f32(i32 6, float %3369)  ; FAbs(value)
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3375 = fsub fast float %3373, %3374
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3369, float %3371, float %3375, float %3369, float %3371, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = call float @dx.op.unary.f32(i32 25, float %3376)  ; Rsqrt(value)
  %3378 = fmul fast float %3369, %3377
  %3379 = fmul fast float %3371, %3377
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 67108864
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3400, label %3384

; <label>:3384                                    ; preds = %3332
  %3385 = add i32 %60, 328
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 65535
  %3389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3388)  ; LegacyF16ToF32(value)
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = and i32 %3391, 65535
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = lshr i32 %3387, 16
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = fsub fast float %3357, %3395
  %3397 = fmul fast float %3396, %3389
  %3398 = fadd fast float %3397, %3393
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  br label %3400

; <label>:3400                                    ; preds = %3384, %3332
  %3401 = phi float [ %3399, %3384 ], [ %3357, %3332 ]
  %3402 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2936, float %2937)  ; Dot2(ax,ay,bx,by)
  %3403 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2938, float %2939)  ; Dot2(ax,ay,bx,by)
  br label %3404

; <label>:3404                                    ; preds = %3400, %3310
  %3405 = phi float [ %3401, %3400 ], [ 0x3FD6666660000000, %3310 ]
  %3406 = phi float [ %3402, %3400 ], [ 0.000000e+00, %3310 ]
  %3407 = phi float [ %3403, %3400 ], [ 0.000000e+00, %3310 ]
  %3408 = phi float [ %3344, %3400 ], [ 1.000000e+00, %3310 ]
  %3409 = add i32 %60, 208
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = lshr i32 %3411, 22
  %3413 = shl nuw nsw i32 %3412, 5
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 64
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3452, label %3419

; <label>:3419                                    ; preds = %3404
  %3420 = add i32 %60, 420
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = add i32 %3422, 0
  %3424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 131072
  %3428 = icmp eq i32 %3427, 0
  %3429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3424, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = fmul fast float %3430, %403
  %3434 = fmul fast float %3431, %406
  %3435 = fmul fast float %3432, %409
  br i1 %3428, label %3442, label %3436

; <label>:3436                                    ; preds = %3419
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = fmul fast float %3438, %3433
  %3440 = fmul fast float %3438, %3434
  %3441 = fmul fast float %3438, %3435
  br label %3442

; <label>:3442                                    ; preds = %3436, %3419
  %3443 = phi float [ %3439, %3436 ], [ %3433, %3419 ]
  %3444 = phi float [ %3440, %3436 ], [ %3434, %3419 ]
  %3445 = phi float [ %3441, %3436 ], [ %3435, %3419 ]
  %3446 = fmul fast float %3443, %3414
  %3447 = select i1 %260, float %3446, float %3443
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3444, float %3445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = select i1 %260, float 0.000000e+00, float %3443
  %3450 = select i1 %260, float %3448, float %3444
  %3451 = select i1 %260, float 0.000000e+00, float %3445
  br label %3452

; <label>:3452                                    ; preds = %3442, %3404
  %3453 = phi float [ %3449, %3442 ], [ 0.000000e+00, %3404 ]
  %3454 = phi float [ %3450, %3442 ], [ 0.000000e+00, %3404 ]
  %3455 = phi float [ %3451, %3442 ], [ 0.000000e+00, %3404 ]
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 1024
  %3459 = icmp eq i32 %3458, 0
  br i1 %3459, label %3490, label %3460

; <label>:3460                                    ; preds = %3452
  %3461 = add i32 %60, 200
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = lshr i32 %3463, 8
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = lshr i32 %3463, 16
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = fmul fast float %3466, %3466
  %3476 = fmul fast float %3470, %3470
  %3477 = fmul fast float %3474, %3474
  %3478 = add i32 %60, 484
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = fmul fast float %3475, %3484
  %3488 = fmul fast float %3476, %3485
  %3489 = fmul fast float %3477, %3486
  br label %3490

; <label>:3490                                    ; preds = %3460, %3452
  %3491 = phi float [ %3487, %3460 ], [ 0.000000e+00, %3452 ]
  %3492 = phi float [ %3488, %3460 ], [ 0.000000e+00, %3452 ]
  %3493 = phi float [ %3489, %3460 ], [ 0.000000e+00, %3452 ]
  %3494 = fcmp fast ogt float %3491, 0.000000e+00
  %3495 = fcmp fast ogt float %3492, 0.000000e+00
  %3496 = fcmp fast ogt float %3493, 0.000000e+00
  %3497 = call float @dx.op.unary.f32(i32 23, float %3491)  ; Log(value)
  %3498 = call float @dx.op.unary.f32(i32 23, float %3492)  ; Log(value)
  %3499 = call float @dx.op.unary.f32(i32 23, float %3493)  ; Log(value)
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 7
  %3503 = and i32 %3502, 32752
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = fmul fast float %3497, 0xBFE62E4300000000
  %3506 = fmul fast float %3505, %3504
  %3507 = fmul fast float %3498, 0xBFE62E4300000000
  %3508 = fmul fast float %3507, %3504
  %3509 = fmul fast float %3499, 0xBFE62E4300000000
  %3510 = fmul fast float %3509, %3504
  %3511 = select i1 %3494, float %3506, float 1.270000e+02
  %3512 = select i1 %3495, float %3508, float 1.270000e+02
  %3513 = select i1 %3496, float %3510, float 1.270000e+02
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 10240
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3538, label %3518

; <label>:3518                                    ; preds = %3490
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 2048
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3538, label %3523

; <label>:3523                                    ; preds = %3518
  %3524 = add i32 %60, 500
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = add i32 %3526, 0
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3528, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = shl i32 %3532, 4
  %3534 = and i32 %3533, 32752
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = fmul fast float %3535, %3530
  %3537 = call float @dx.op.binary.f32(i32 35, float %3536, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3538

; <label>:3538                                    ; preds = %3523, %3518, %3490
  %3539 = phi float [ %3537, %3523 ], [ 0x3F70101020000000, %3518 ], [ 0x3F70101020000000, %3490 ]
  %3540 = add i32 %60, 144
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = lshr i32 %3542, 8
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3325, float %3326, float %3327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = fmul fast float %3547, %3548
  %3550 = fadd fast float %3549, %3544
  %3551 = fmul fast float %3550, 0x3F70101020000000
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  br i1 %2924, label %3553, label %3588

; <label>:3553                                    ; preds = %3538
  %3554 = fmul fast float %3539, 2.000000e+00
  %3555 = fcmp fast olt float %3511, 1.270000e+02
  %3556 = fcmp fast olt float %3512, 1.270000e+02
  %3557 = fcmp fast olt float %3513, 1.270000e+02
  %3558 = fmul fast float %3511, 0xBFF7154760000000
  %3559 = fmul fast float %3558, %3554
  %3560 = fmul fast float %3512, 0xBFF7154760000000
  %3561 = fmul fast float %3560, %3554
  %3562 = fmul fast float %3513, 0xBFF7154760000000
  %3563 = fmul fast float %3562, %3554
  %3564 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3565 = call float @dx.op.unary.f32(i32 21, float %3561)  ; Exp(value)
  %3566 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3567 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3568 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = select i1 %3555, float %3570, float -1.000000e+00
  %3572 = fadd fast float %3568, -1.000000e+00
  %3573 = select i1 %3556, float %3572, float -1.000000e+00
  %3574 = fadd fast float %3569, -1.000000e+00
  %3575 = select i1 %3557, float %3574, float -1.000000e+00
  %3576 = fmul fast float %3571, %3105
  %3577 = fmul fast float %3573, %3105
  %3578 = fmul fast float %3575, %3105
  %3579 = fadd fast float %3576, 1.000000e+00
  %3580 = fadd fast float %3577, 1.000000e+00
  %3581 = fadd fast float %3578, 1.000000e+00
  %3582 = fmul fast float %3579, %2909
  %3583 = fmul fast float %3580, %2910
  %3584 = fmul fast float %3581, %2911
  %3585 = fmul fast float %3579, %2912
  %3586 = fmul fast float %3580, %2913
  %3587 = fmul fast float %3581, %2914
  br label %3588

; <label>:3588                                    ; preds = %3553, %3538
  %3589 = phi float [ %3582, %3553 ], [ %2909, %3538 ]
  %3590 = phi float [ %3583, %3553 ], [ %2910, %3538 ]
  %3591 = phi float [ %3584, %3553 ], [ %2911, %3538 ]
  %3592 = phi float [ %3585, %3553 ], [ %2912, %3538 ]
  %3593 = phi float [ %3586, %3553 ], [ %2913, %3538 ]
  %3594 = phi float [ %3587, %3553 ], [ %2914, %3538 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 3
  %3598 = icmp eq i32 %3597, 3
  br i1 %3598, label %3677, label %3599

; <label>:3599                                    ; preds = %3588
  %3600 = and i32 %3596, 16
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3105, float 0.000000e+00
  %3603 = icmp eq i32 %3597, 0
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3599
  %3605 = and i32 %3596, 64
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3105, float 0.000000e+00
  %3608 = fsub fast float %3325, %3589
  %3609 = fsub fast float %3326, %3590
  %3610 = fsub fast float %3327, %3591
  %3611 = fmul fast float %3602, %3608
  %3612 = fmul fast float %3602, %3609
  %3613 = fmul fast float %3602, %3610
  %3614 = fadd fast float %3611, %3589
  %3615 = fadd fast float %3612, %3590
  %3616 = fadd fast float %3613, %3591
  %3617 = fsub fast float %3311, %2918
  %3618 = fmul fast float %3602, %3617
  %3619 = fadd fast float %3618, %2918
  %3620 = fsub fast float %3453, %3592
  %3621 = fsub fast float %3454, %3593
  %3622 = fsub fast float %3455, %3594
  %3623 = fmul fast float %3607, %3620
  %3624 = fmul fast float %3607, %3621
  %3625 = fmul fast float %3607, %3622
  %3626 = fadd fast float %3623, %3592
  %3627 = fadd fast float %3624, %3593
  %3628 = fadd fast float %3625, %3594
  %3629 = fsub fast float %3552, %2922
  %3630 = fmul fast float %3602, %3629
  %3631 = fadd fast float %3630, %2922
  br label %3677

; <label>:3632                                    ; preds = %3599
  %3633 = icmp eq i32 %3597, 1
  br i1 %3633, label %3634, label %3647

; <label>:3634                                    ; preds = %3632
  %3635 = fadd fast float %3325, -1.000000e+00
  %3636 = fadd fast float %3326, -1.000000e+00
  %3637 = fadd fast float %3327, -1.000000e+00
  %3638 = fmul fast float %3602, %3635
  %3639 = fmul fast float %3602, %3636
  %3640 = fmul fast float %3602, %3637
  %3641 = fadd fast float %3638, 1.000000e+00
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fmul fast float %3641, %3589
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3591
  br label %3677

; <label>:3647                                    ; preds = %3632
  %3648 = icmp eq i32 %3597, 2
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3647
  %3650 = call float @dx.op.unary.f32(i32 24, float %3325)  ; Sqrt(value)
  %3651 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3652 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3653 = fadd fast float %3650, -5.000000e-01
  %3654 = fadd fast float %3651, -5.000000e-01
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fmul fast float %3653, %3602
  %3657 = fmul fast float %3654, %3602
  %3658 = fmul fast float %3655, %3602
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fmul fast float %3659, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3589
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3589
  %3667 = fmul fast float %3660, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3590
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3590
  %3672 = fmul fast float %3661, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3591
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3591
  br label %3677

; <label>:3677                                    ; preds = %3649, %3647, %3634, %3604, %3588
  %3678 = phi float [ %3589, %3588 ], [ %3666, %3649 ], [ %3589, %3647 ], [ %3644, %3634 ], [ %3614, %3604 ]
  %3679 = phi float [ %3590, %3588 ], [ %3671, %3649 ], [ %3590, %3647 ], [ %3645, %3634 ], [ %3615, %3604 ]
  %3680 = phi float [ %3591, %3588 ], [ %3676, %3649 ], [ %3591, %3647 ], [ %3646, %3634 ], [ %3616, %3604 ]
  %3681 = phi float [ %3592, %3588 ], [ %3592, %3649 ], [ %3592, %3647 ], [ %3592, %3634 ], [ %3626, %3604 ]
  %3682 = phi float [ %3593, %3588 ], [ %3593, %3649 ], [ %3593, %3647 ], [ %3593, %3634 ], [ %3627, %3604 ]
  %3683 = phi float [ %3594, %3588 ], [ %3594, %3649 ], [ %3594, %3647 ], [ %3594, %3634 ], [ %3628, %3604 ]
  %3684 = phi float [ %2918, %3588 ], [ %2918, %3649 ], [ %2918, %3647 ], [ %2918, %3634 ], [ %3619, %3604 ]
  %3685 = phi float [ %2922, %3588 ], [ %2922, %3649 ], [ %2922, %3647 ], [ %2922, %3634 ], [ %3631, %3604 ]
  %3686 = and i32 %3596, 12
  %3687 = icmp eq i32 %3686, 12
  br i1 %3687, label %3794, label %3688

; <label>:3688                                    ; preds = %3677
  %3689 = and i32 %3596, 2097184
  %3690 = icmp eq i32 %3689, 2097184
  %3691 = select i1 %3690, float %3105, float 0.000000e+00
  %3692 = and i32 %3596, 4194336
  %3693 = icmp eq i32 %3692, 4194336
  %3694 = select i1 %3693, float %3105, float 0.000000e+00
  %3695 = and i32 %3596, 8388640
  %3696 = icmp eq i32 %3695, 8388640
  %3697 = select i1 %3696, float %3105, float 0.000000e+00
  %3698 = and i32 %3596, 1024
  %3699 = icmp ne i32 %3698, 0
  %3700 = select i1 %3699, float %3105, float 0.000000e+00
  %3701 = and i32 %3596, 2048
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3105, float 0.000000e+00
  %3704 = icmp eq i32 %3686, 0
  br i1 %3704, label %3705, label %3730

; <label>:3705                                    ; preds = %3688
  %3706 = fsub fast float %3406, %2907
  %3707 = fsub fast float %3407, %2908
  %3708 = fmul fast float %3691, %3706
  %3709 = fmul fast float %3691, %3707
  %3710 = fadd fast float %3708, %2907
  %3711 = fadd fast float %3709, %2908
  %3712 = fsub fast float %3408, %2920
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2920
  %3715 = fsub fast float %3405, %2919
  %3716 = fmul fast float %3697, %3715
  %3717 = fadd fast float %3716, %2919
  %3718 = fsub fast float %3511, %2915
  %3719 = fsub fast float %3512, %2916
  %3720 = fsub fast float %3513, %2917
  %3721 = fmul fast float %3700, %3718
  %3722 = fmul fast float %3700, %3719
  %3723 = fmul fast float %3700, %3720
  %3724 = fadd fast float %3721, %2915
  %3725 = fadd fast float %3722, %2916
  %3726 = fadd fast float %3723, %2917
  %3727 = fsub fast float %3539, %2921
  %3728 = fmul fast float %3703, %3727
  %3729 = fadd fast float %3728, %2921
  br label %3794

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3686, 4
  br i1 %3731, label %3732, label %3772

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3691, %3406
  %3734 = fmul fast float %3691, %3407
  %3735 = fadd fast float %3733, %2907
  %3736 = fadd fast float %3734, %2908
  %3737 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2920
  %3739 = fmul fast float %3738, %3694
  %3740 = fadd fast float %3739, %2920
  %3741 = fadd fast float %3405, %2919
  %3742 = fmul fast float %3741, 0x3FF337FAE0000000
  %3743 = fmul fast float %2919, %2919
  %3744 = fmul fast float %3405, %3405
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3745, 0x3FE5152B00000000
  %3747 = fmul fast float %2919, 0xBFCC1F85E0000000
  %3748 = fmul fast float %3747, %3405
  %3749 = fadd fast float %3748, 0xBFE1363700000000
  %3750 = fadd fast float %3749, %3742
  %3751 = fsub fast float %3750, %3746
  %3752 = fmul fast float %3741, 0x3FBA6F0D00000000
  %3753 = fmul fast float %3745, 0x3FD0432880000000
  %3754 = fmul fast float %2919, 0xBFEF110800000000
  %3755 = fmul fast float %3754, %3405
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fsub fast float %3756, %3752
  %3758 = fadd fast float %3757, %3753
  %3759 = fdiv fast float %3751, %3758
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3760, %2919
  %3762 = fmul fast float %3761, %3697
  %3763 = fadd fast float %3762, %2919
  %3764 = fmul fast float %3700, %3511
  %3765 = fmul fast float %3700, %3512
  %3766 = fmul fast float %3700, %3513
  %3767 = fadd fast float %3764, %2915
  %3768 = fadd fast float %3765, %2916
  %3769 = fadd fast float %3766, %2917
  %3770 = fmul fast float %3703, %3539
  %3771 = fadd fast float %3770, %2921
  br label %3794

; <label>:3772                                    ; preds = %3730
  %3773 = icmp eq i32 %3686, 8
  br i1 %3773, label %3774, label %3794

; <label>:3774                                    ; preds = %3772
  %3775 = fmul fast float %3691, %3406
  %3776 = fmul fast float %3691, %3407
  %3777 = fadd fast float %3775, %2907
  %3778 = fadd fast float %3776, %2908
  %3779 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3780 = fsub fast float %3779, %2920
  %3781 = fmul fast float %3780, %3694
  %3782 = fadd fast float %3781, %2920
  %3783 = fsub fast float %3405, %2919
  %3784 = fmul fast float %3697, %3783
  %3785 = fadd fast float %3784, %2919
  %3786 = fmul fast float %3700, %3511
  %3787 = fmul fast float %3700, %3512
  %3788 = fmul fast float %3700, %3513
  %3789 = fadd fast float %3786, %2915
  %3790 = fadd fast float %3787, %2916
  %3791 = fadd fast float %3788, %2917
  %3792 = fmul fast float %3703, %3539
  %3793 = fadd fast float %3792, %2921
  br label %3794

; <label>:3794                                    ; preds = %3774, %3772, %3732, %3705, %3677, %3104, %2923, %2906
  %3795 = phi float [ %2907, %3677 ], [ %2907, %3104 ], [ %2907, %2906 ], [ %2907, %2923 ], [ %3710, %3705 ], [ %3735, %3732 ], [ %2907, %3772 ], [ %3777, %3774 ]
  %3796 = phi float [ %2908, %3677 ], [ %2908, %3104 ], [ %2908, %2906 ], [ %2908, %2923 ], [ %3711, %3705 ], [ %3736, %3732 ], [ %2908, %3772 ], [ %3778, %3774 ]
  %3797 = phi float [ %3678, %3677 ], [ %2909, %3104 ], [ %2909, %2906 ], [ %2909, %2923 ], [ %3678, %3705 ], [ %3678, %3732 ], [ %3678, %3772 ], [ %3678, %3774 ]
  %3798 = phi float [ %3679, %3677 ], [ %2910, %3104 ], [ %2910, %2906 ], [ %2910, %2923 ], [ %3679, %3705 ], [ %3679, %3732 ], [ %3679, %3772 ], [ %3679, %3774 ]
  %3799 = phi float [ %3680, %3677 ], [ %2911, %3104 ], [ %2911, %2906 ], [ %2911, %2923 ], [ %3680, %3705 ], [ %3680, %3732 ], [ %3680, %3772 ], [ %3680, %3774 ]
  %3800 = phi float [ %3681, %3677 ], [ %2912, %3104 ], [ %2912, %2906 ], [ %2912, %2923 ], [ %3681, %3705 ], [ %3681, %3732 ], [ %3681, %3772 ], [ %3681, %3774 ]
  %3801 = phi float [ %3682, %3677 ], [ %2913, %3104 ], [ %2913, %2906 ], [ %2913, %2923 ], [ %3682, %3705 ], [ %3682, %3732 ], [ %3682, %3772 ], [ %3682, %3774 ]
  %3802 = phi float [ %3683, %3677 ], [ %2914, %3104 ], [ %2914, %2906 ], [ %2914, %2923 ], [ %3683, %3705 ], [ %3683, %3732 ], [ %3683, %3772 ], [ %3683, %3774 ]
  %3803 = phi float [ %2915, %3677 ], [ %2915, %3104 ], [ %2915, %2906 ], [ %2915, %2923 ], [ %3724, %3705 ], [ %3767, %3732 ], [ %2915, %3772 ], [ %3789, %3774 ]
  %3804 = phi float [ %2916, %3677 ], [ %2916, %3104 ], [ %2916, %2906 ], [ %2916, %2923 ], [ %3725, %3705 ], [ %3768, %3732 ], [ %2916, %3772 ], [ %3790, %3774 ]
  %3805 = phi float [ %2917, %3677 ], [ %2917, %3104 ], [ %2917, %2906 ], [ %2917, %2923 ], [ %3726, %3705 ], [ %3769, %3732 ], [ %2917, %3772 ], [ %3791, %3774 ]
  %3806 = phi float [ %3684, %3677 ], [ %2918, %3104 ], [ %2918, %2906 ], [ %2918, %2923 ], [ %3684, %3705 ], [ %3684, %3732 ], [ %3684, %3772 ], [ %3684, %3774 ]
  %3807 = phi float [ %2919, %3677 ], [ %2919, %3104 ], [ %2919, %2906 ], [ %2919, %2923 ], [ %3717, %3705 ], [ %3763, %3732 ], [ %2919, %3772 ], [ %3785, %3774 ]
  %3808 = phi float [ %2920, %3677 ], [ %2920, %3104 ], [ %2920, %2906 ], [ %2920, %2923 ], [ %3714, %3705 ], [ %3740, %3732 ], [ %2920, %3772 ], [ %3782, %3774 ]
  %3809 = phi float [ %2921, %3677 ], [ %2921, %3104 ], [ %2921, %2906 ], [ %2921, %2923 ], [ %3729, %3705 ], [ %3771, %3732 ], [ %2921, %3772 ], [ %3793, %3774 ]
  %3810 = phi float [ %3685, %3677 ], [ %2922, %3104 ], [ %2922, %2906 ], [ %2922, %2923 ], [ %3685, %3705 ], [ %3685, %3732 ], [ %3685, %3772 ], [ %3685, %3774 ]
  %3811 = add i32 %60, 360
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = bitcast i32 %3813 to float
  %3815 = fcmp fast oge float %3814, 0.000000e+00
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = select i1 %3815, float %3814, float %3817
  %3819 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3820 = fmul fast float %3819, 0x3FE3333340000000
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3821, float %3795, float %3796, float %3821)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call float @dx.op.unary.f32(i32 25, float %3822)  ; Rsqrt(value)
  %3824 = fmul fast float %3823, %3795
  %3825 = fmul fast float %3823, %3796
  %3826 = fmul fast float %3821, %3823
  %3827 = fmul fast float %3826, %121
  %3828 = fmul fast float %3826, %122
  %3829 = fmul fast float %3826, %123
  %3830 = fmul fast float %3824, %85
  %3831 = fmul fast float %3824, %86
  %3832 = fmul fast float %3824, %87
  %3833 = fadd fast float %3827, %3830
  %3834 = fadd fast float %3828, %3831
  %3835 = fadd fast float %3829, %3832
  %3836 = fmul fast float %133, %3825
  %3837 = fmul fast float %134, %3825
  %3838 = fmul fast float %135, %3825
  %3839 = fadd fast float %3833, %3836
  %3840 = fadd fast float %3834, %3837
  %3841 = fadd fast float %3835, %3838
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float %3839, float %3840, float %3841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3839, %3843
  %3845 = fmul fast float %3840, %3843
  %3846 = fmul fast float %3841, %3843
  %3847 = icmp eq i32 %61, 65535
  br i1 %3847, label %4393, label %3848

; <label>:3848                                    ; preds = %3794
  %3849 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3850 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3851 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3852 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3853 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3854 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3855 = fadd fast float %3849, %62
  %3856 = fadd fast float %3850, %63
  %3857 = fadd fast float %3851, %64
  %3858 = fadd fast float %3852, %62
  %3859 = fadd fast float %3853, %63
  %3860 = fadd fast float %3854, %64
  %3861 = mul i32 %61, 48
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = add i32 %3861, 16
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = add i32 %3861, 32
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = bitcast float %3876 to i32
  %3878 = fmul fast float %3863, %62
  %3879 = fmul fast float %3864, %63
  %3880 = fmul fast float %3865, %64
  %3881 = fsub fast float %3878, %3868
  %3882 = fsub fast float %3879, %3869
  %3883 = fsub fast float %3880, %3870
  %3884 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3885 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3886 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3887 = fmul fast float %3884, %3873
  %3888 = fmul fast float %3885, %3874
  %3889 = fmul fast float %3886, %3875
  %3890 = fadd fast float %3873, -1.000000e+00
  %3891 = fadd fast float %3874, -1.000000e+00
  %3892 = fadd fast float %3875, -1.000000e+00
  %3893 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3895 = call float @dx.op.unary.f32(i32 27, float %3889)  ; Round_ni(value)
  %3896 = call float @dx.op.binary.f32(i32 36, float %3893, float %3890)  ; FMin(a,b)
  %3897 = call float @dx.op.binary.f32(i32 36, float %3894, float %3891)  ; FMin(a,b)
  %3898 = call float @dx.op.binary.f32(i32 36, float %3895, float %3892)  ; FMin(a,b)
  %3899 = fmul fast float %3898, %3874
  %3900 = fadd fast float %3899, %3897
  %3901 = fmul fast float %3900, %3873
  %3902 = fadd fast float %3901, %3896
  %3903 = fptosi float %3902 to i32
  %3904 = add nsw i32 %3903, %3877
  %3905 = shl nsw i32 %3904, 2
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = lshr i32 %3907, 16
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %4359, label %3910

; <label>:3910                                    ; preds = %3848
  br label %3911

; <label>:3911                                    ; preds = %4035, %3910
  %3912 = phi i32 [ %3937, %4035 ], [ %3908, %3910 ]
  %3913 = phi float [ %4036, %4035 ], [ 0.000000e+00, %3910 ]
  %3914 = phi float [ %4037, %4035 ], [ %3818, %3910 ]
  %3915 = phi float [ %4038, %4035 ], [ %3810, %3910 ]
  %3916 = phi float [ %4039, %4035 ], [ %3803, %3910 ]
  %3917 = phi float [ %4040, %4035 ], [ %3804, %3910 ]
  %3918 = phi float [ %4041, %4035 ], [ %3805, %3910 ]
  %3919 = phi float [ %4042, %4035 ], [ 0.000000e+00, %3910 ]
  %3920 = phi float [ %4043, %4035 ], [ 0.000000e+00, %3910 ]
  %3921 = phi float [ %4044, %4035 ], [ %3800, %3910 ]
  %3922 = phi float [ %4045, %4035 ], [ %3801, %3910 ]
  %3923 = phi float [ %4046, %4035 ], [ %3802, %3910 ]
  %3924 = phi float [ %4047, %4035 ], [ %3844, %3910 ]
  %3925 = phi float [ %4048, %4035 ], [ %3845, %3910 ]
  %3926 = phi float [ %4049, %4035 ], [ %3846, %3910 ]
  %3927 = phi float [ %4050, %4035 ], [ %3808, %3910 ]
  %3928 = phi float [ %4051, %4035 ], [ %3807, %3910 ]
  %3929 = phi float [ %4052, %4035 ], [ 0.000000e+00, %3910 ]
  %3930 = phi float [ %4053, %4035 ], [ %3806, %3910 ]
  %3931 = phi float [ %4054, %4035 ], [ %3797, %3910 ]
  %3932 = phi float [ %4055, %4035 ], [ %3798, %3910 ]
  %3933 = phi float [ %4056, %4035 ], [ %3799, %3910 ]
  %3934 = shl nuw nsw i32 %3912, 2
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = lshr i32 %3936, 16
  %3938 = shl i32 %3936, 8
  %3939 = and i32 %3938, 16776960
  %3940 = or i32 %3939, 48
  %3941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = or i32 %3939, 64
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.i32 %3946, 1
  %3949 = or i32 %3939, 80
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3953 = or i32 %3939, 96
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = or i32 %3939, 112
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3962 = or i32 %3939, 128
  %3963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.ResRet.f32 %3963, 3
  %3968 = or i32 %3939, 144
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = or i32 %3939, 160
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = extractvalue %dx.types.ResRet.f32 %3975, 3
  %3980 = or i32 %3939, 192
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = or i32 %3939, 208
  %3984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = or i32 %3939, 248
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = or i32 %3939, 16
  %3997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %4001 = extractvalue %dx.types.ResRet.f32 %3997, 3
  %4002 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4003 = or i32 %3939, 32
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4008 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4009 = call float @dx.op.dot4.f32(i32 56, float %4005, float %4006, float %4007, float %4008, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4010 = call float @dx.op.unary.f32(i32 27, float %3995)  ; Round_ni(value)
  %4011 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4012 = call float @dx.op.unary.f32(i32 27, float %4002)  ; Round_ni(value)
  %4013 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4014 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4015 = call float @dx.op.unary.f32(i32 27, float %4014)  ; Round_ni(value)
  %4016 = fadd fast float %4013, %4011
  %4017 = fadd fast float %4016, %4015
  %4018 = fcmp fast oeq float %4017, 0.000000e+00
  %4019 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %3855, float %3856, float %3857, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4020 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %3855, float %3856, float %3857, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4021 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %3858, float %3859, float %3860, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4022 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %3858, float %3859, float %3860, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4023 = fsub fast float %4019, %3995
  %4024 = fsub fast float %4021, %3995
  %4025 = fsub fast float %4020, %4002
  %4026 = fsub fast float %4022, %4002
  %4027 = call float @dx.op.dot3.f32(i32 55, float %3942, float %3943, float %3944, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4030 = fadd fast float %4029, %4027
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4033 = fcmp fast ogt float %4031, %4032
  %4034 = and i1 %4018, %4033
  br i1 %4034, label %4058, label %4035

; <label>:4035                                    ; preds = %4345, %4141, %4058, %3911
  %4036 = phi float [ %3913, %4058 ], [ %4144, %4141 ], [ %4144, %4345 ], [ %3913, %3911 ]
  %4037 = phi float [ %3914, %4058 ], [ %3914, %4141 ], [ %4321, %4345 ], [ %3914, %3911 ]
  %4038 = phi float [ %3915, %4058 ], [ %3915, %4141 ], [ %4319, %4345 ], [ %3915, %3911 ]
  %4039 = phi float [ %3916, %4058 ], [ %3916, %4141 ], [ %4297, %4345 ], [ %3916, %3911 ]
  %4040 = phi float [ %3917, %4058 ], [ %3917, %4141 ], [ %4298, %4345 ], [ %3917, %3911 ]
  %4041 = phi float [ %3918, %4058 ], [ %3918, %4141 ], [ %4299, %4345 ], [ %3918, %3911 ]
  %4042 = phi float [ %3919, %4058 ], [ %3919, %4141 ], [ %4268, %4345 ], [ %3919, %3911 ]
  %4043 = phi float [ %3920, %4058 ], [ %3920, %4141 ], [ %4266, %4345 ], [ %3920, %3911 ]
  %4044 = phi float [ %3921, %4058 ], [ %3921, %4141 ], [ %4355, %4345 ], [ %3921, %3911 ]
  %4045 = phi float [ %3922, %4058 ], [ %3922, %4141 ], [ %4356, %4345 ], [ %3922, %3911 ]
  %4046 = phi float [ %3923, %4058 ], [ %3923, %4141 ], [ %4357, %4345 ], [ %3923, %3911 ]
  %4047 = phi float [ %3924, %4058 ], [ %3924, %4141 ], [ %4247, %4345 ], [ %3924, %3911 ]
  %4048 = phi float [ %3925, %4058 ], [ %3925, %4141 ], [ %4248, %4345 ], [ %3925, %3911 ]
  %4049 = phi float [ %3926, %4058 ], [ %3926, %4141 ], [ %4249, %4345 ], [ %3926, %3911 ]
  %4050 = phi float [ %3927, %4058 ], [ %3927, %4141 ], [ %4277, %4345 ], [ %3927, %3911 ]
  %4051 = phi float [ %3928, %4058 ], [ %3928, %4141 ], [ %4274, %4345 ], [ %3928, %3911 ]
  %4052 = phi float [ %3929, %4058 ], [ %3929, %4141 ], [ %4271, %4345 ], [ %3929, %3911 ]
  %4053 = phi float [ %3930, %4058 ], [ %3930, %4141 ], [ %4264, %4345 ], [ %3930, %3911 ]
  %4054 = phi float [ %3931, %4058 ], [ %3931, %4141 ], [ %4259, %4345 ], [ %3931, %3911 ]
  %4055 = phi float [ %3932, %4058 ], [ %3932, %4141 ], [ %4260, %4345 ], [ %3932, %3911 ]
  %4056 = phi float [ %3933, %4058 ], [ %3933, %4141 ], [ %4261, %4345 ], [ %3933, %3911 ]
  %4057 = icmp eq i32 %3937, 0
  br i1 %4057, label %4358, label %3911

; <label>:4058                                    ; preds = %3911
  %4059 = extractvalue %dx.types.ResRet.f32 %3941, 3
  %4060 = extractvalue %dx.types.ResRet.f32 %3960, 3
  %4061 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %4065 = extractvalue %dx.types.ResRet.i32 %3946, 3
  %4066 = extractvalue %dx.types.ResRet.i32 %3946, 2
  %4067 = bitcast float %4059 to i32
  %4068 = add i32 %4065, 0
  %4069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4068, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4069, %dx.types.Handle %4070, float %3995, float %4002, float undef, float undef, i32 0, i32 0, i32 undef, float %4023, float %4025, float undef, float %4024, float %4026, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = fmul fast float %4072, %4064
  %4074 = fadd fast float %4073, %4063
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = fmul fast float %3995, %3955
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4002, float %4076)  ; FMad(a,b,c)
  %4078 = fadd fast float %4077, %4062
  %4079 = fmul fast float %3995, %3957
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4002, float %4079)  ; FMad(a,b,c)
  %4081 = fadd fast float %4080, %4061
  %4082 = fmul fast float %4023, %3955
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4025, float %4082)  ; FMad(a,b,c)
  %4084 = fmul fast float %4023, %3957
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4025, float %4084)  ; FMad(a,b,c)
  %4086 = fmul fast float %4024, %3955
  %4087 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4026, float %4086)  ; FMad(a,b,c)
  %4088 = fmul fast float %4024, %3957
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4026, float %4088)  ; FMad(a,b,c)
  %4090 = add i32 %4066, 0
  %4091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4090, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4092 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4091, %dx.types.Handle %4070, float %4078, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float %4083, float %4085, float undef, float %4087, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = and i32 %4067, 1024
  %4095 = icmp ne i32 %4094, 0
  %4096 = fcmp fast ogt float %4093, 0x3FE0101020000000
  %4097 = uitofp i1 %4096 to float
  %4098 = select i1 %4095, float %4097, float %4093
  %4099 = and i32 %4067, 8192
  %4100 = icmp ne i32 %4099, 0
  %4101 = select i1 %4100, float %4060, float 1.000000e+00
  %4102 = fmul fast float %3995, 2.000000e+00
  %4103 = fadd fast float %4102, -1.000000e+00
  %4104 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4105 = fmul fast float %4104, %3988
  %4106 = fsub fast float %4105, %3988
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fmul fast float %4002, 2.000000e+00
  %4109 = fadd fast float %4108, -1.000000e+00
  %4110 = call float @dx.op.unary.f32(i32 6, float %4109)  ; FAbs(value)
  %4111 = fmul fast float %4110, %3989
  %4112 = fsub fast float %4111, %3989
  %4113 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4114 = fmul fast float %4014, %3951
  %4115 = fsub fast float %4114, %3951
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = fmul fast float %4075, %4101
  %4118 = fmul fast float %4117, %4072
  %4119 = fmul fast float %4118, %4107
  %4120 = fmul fast float %4119, %4098
  %4121 = fmul fast float %4120, %4113
  %4122 = fmul fast float %4121, %4116
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4126 = fsub fast float %4031, %4125
  %4127 = fmul fast float %4126, %4124
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = fmul fast float %4122, %3952
  %4130 = fadd fast float %4122, %3952
  %4131 = fmul fast float %4130, %3961
  %4132 = fsub fast float %4131, %3961
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = and i32 %4067, 128
  %4135 = icmp ne i32 %4134, 0
  %4136 = select i1 %4135, float %4133, float %4129
  %4137 = fmul fast float %4136, %4128
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = fcmp fast ugt float %4137, %4139
  br i1 %4140, label %4141, label %4035

; <label>:4141                                    ; preds = %4058
  %4142 = select i1 %4100, float %4137, float 0.000000e+00
  %4143 = fadd fast float %4142, %3913
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  br i1 %4100, label %4035, label %4145

; <label>:4145                                    ; preds = %4141
  %4146 = and i32 %4067, 4
  %4147 = and i32 %4067, 8
  %4148 = add i32 %3947, 0
  %4149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4148, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4149, %dx.types.Handle %4150, float %4078, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float %4083, float %4085, float undef, float %4087, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = bitcast float %3973 to i32
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4156, 8
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = fmul fast float %4155, %4158
  %4163 = fadd fast float %4162, %4161
  %4164 = fmul fast float %4163, 0x3F70101000000000
  %4165 = add i32 %3948, 0
  %4166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4167 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4166, %dx.types.Handle %4150, float %4078, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float %4083, float %4085, float undef, float %4087, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = bitcast float %3967 to i32
  %4173 = and i32 %4172, 255
  %4174 = uitofp i32 %4173 to float
  %4175 = lshr i32 %4172, 8
  %4176 = and i32 %4175, 255
  %4177 = uitofp i32 %4176 to float
  %4178 = lshr i32 %4172, 16
  %4179 = and i32 %4178, 255
  %4180 = uitofp i32 %4179 to float
  %4181 = fmul fast float %4180, 0x3F70101000000000
  %4182 = fmul fast float %4168, %4174
  %4183 = fadd fast float %4182, %4177
  %4184 = fmul fast float %4183, 0x3F70101000000000
  %4185 = fadd fast float %4169, -5.000000e-01
  %4186 = fadd fast float %4171, -5.000000e-01
  %4187 = fmul fast float %4185, %4181
  %4188 = fmul fast float %4186, %4181
  %4189 = fadd fast float %4187, 5.000000e-01
  %4190 = fadd fast float %4188, 5.000000e-01
  %4191 = fmul fast float %4152, %3976
  %4192 = fmul fast float %4153, %3977
  %4193 = fmul fast float %4154, %3978
  %4194 = fmul fast float %4189, 2.000000e+00
  %4195 = fadd fast float %4194, -1.000000e+00
  %4196 = fmul fast float %4190, 2.000000e+00
  %4197 = fadd fast float %4196, -1.000000e+00
  %4198 = fadd fast float %4195, %4197
  %4199 = fmul fast float %4198, 5.000000e-01
  %4200 = fsub fast float %4195, %4197
  %4201 = fmul fast float %4200, 5.000000e-01
  %4202 = call float @dx.op.unary.f32(i32 6, float %4199)  ; FAbs(value)
  %4203 = fsub fast float 1.000000e+00, %4202
  %4204 = call float @dx.op.unary.f32(i32 6, float %4201)  ; FAbs(value)
  %4205 = fsub fast float %4203, %4204
  %4206 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4201, float %4205, float %4199, float %4201, float %4205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4207 = call float @dx.op.unary.f32(i32 25, float %4206)  ; Rsqrt(value)
  %4208 = fmul fast float %4199, %4207
  %4209 = fmul fast float %4201, %4207
  %4210 = fmul fast float %4207, %4205
  %4211 = fmul fast float %4210, %3942
  %4212 = fmul fast float %4210, %3943
  %4213 = fmul fast float %4210, %3944
  %4214 = fmul fast float %4208, %3964
  %4215 = fmul fast float %4208, %3965
  %4216 = fmul fast float %4208, %3966
  %4217 = fadd fast float %4214, %4211
  %4218 = fadd fast float %4215, %4212
  %4219 = fadd fast float %4216, %4213
  %4220 = fmul fast float %4209, %3970
  %4221 = fmul fast float %4209, %3971
  %4222 = fmul fast float %4209, %3972
  %4223 = fadd fast float %4217, %4220
  %4224 = fadd fast float %4218, %4221
  %4225 = fadd fast float %4219, %4222
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = call float @dx.op.unary.f32(i32 25, float %4226)  ; Rsqrt(value)
  %4228 = fmul fast float %4223, %4227
  %4229 = fmul fast float %4224, %4227
  %4230 = fmul fast float %4225, %4227
  %4231 = icmp ne i32 %4147, 0
  %4232 = select i1 %4231, float 1.000000e+00, float 0.000000e+00
  %4233 = fmul fast float %4137, %4232
  %4234 = and i32 %4067, 1
  %4235 = icmp eq i32 %4234, 0
  br i1 %4235, label %4236, label %4240

; <label>:4236                                    ; preds = %4145
  %4237 = fsub fast float %4228, %3924
  %4238 = fsub fast float %4229, %3925
  %4239 = fsub fast float %4230, %3926
  br label %4240

; <label>:4240                                    ; preds = %4236, %4145
  %4241 = phi float [ %4237, %4236 ], [ %4228, %4145 ]
  %4242 = phi float [ %4238, %4236 ], [ %4229, %4145 ]
  %4243 = phi float [ %4239, %4236 ], [ %4230, %4145 ]
  %4244 = fmul float %4243, %4233
  %4245 = fmul float %4242, %4233
  %4246 = fmul float %4241, %4233
  %4247 = fadd fast float %4246, %3924
  %4248 = fadd fast float %4245, %3925
  %4249 = fadd fast float %4244, %3926
  %4250 = icmp ne i32 %4146, 0
  %4251 = select i1 %4250, float 1.000000e+00, float 0.000000e+00
  %4252 = fmul fast float %4137, %4251
  %4253 = fsub fast float %4191, %3931
  %4254 = fsub fast float %4192, %3932
  %4255 = fsub fast float %4193, %3933
  %4256 = fmul fast float %4253, %4252
  %4257 = fmul fast float %4254, %4252
  %4258 = fmul fast float %4255, %4252
  %4259 = fadd fast float %4256, %3931
  %4260 = fadd fast float %4257, %3932
  %4261 = fadd fast float %4258, %3933
  %4262 = fsub fast float %4164, %3930
  %4263 = fmul fast float %4262, %4252
  %4264 = fadd fast float %4263, %3930
  %4265 = fmul fast float %4252, %3920
  %4266 = fsub fast float %3920, %4265
  %4267 = fmul fast float %4252, %3919
  %4268 = fsub fast float %3919, %4267
  %4269 = bitcast float %3985 to i32
  %4270 = fadd fast float %4137, %3929
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fsub fast float %4184, %3928
  %4273 = fmul fast float %4272, %4233
  %4274 = fadd fast float %4273, %3928
  %4275 = fsub fast float %4170, %3927
  %4276 = fmul fast float %4275, %4233
  %4277 = fadd fast float %4276, %3927
  br i1 %4235, label %4286, label %4278

; <label>:4278                                    ; preds = %4240
  %4279 = and i32 %4067, 32768
  %4280 = icmp eq i32 %4279, 0
  br i1 %4280, label %4296, label %4281

; <label>:4281                                    ; preds = %4278
  %4282 = fmul fast float %4233, 1.270000e+02
  %4283 = fadd fast float %4282, %3916
  %4284 = fadd fast float %4282, %3917
  %4285 = fadd fast float %4282, %3918
  br label %4296

; <label>:4286                                    ; preds = %4240
  %4287 = fsub fast float 1.270000e+02, %3916
  %4288 = fsub fast float 1.270000e+02, %3917
  %4289 = fsub fast float 1.270000e+02, %3918
  %4290 = fmul fast float %4233, %4287
  %4291 = fmul fast float %4233, %4288
  %4292 = fmul fast float %4233, %4289
  %4293 = fadd fast float %4290, %3916
  %4294 = fadd fast float %4291, %3917
  %4295 = fadd fast float %4292, %3918
  br label %4296

; <label>:4296                                    ; preds = %4286, %4281, %4278
  %4297 = phi float [ %4283, %4281 ], [ %3916, %4278 ], [ %4293, %4286 ]
  %4298 = phi float [ %4284, %4281 ], [ %3917, %4278 ], [ %4294, %4286 ]
  %4299 = phi float [ %4285, %4281 ], [ %3918, %4278 ], [ %4295, %4286 ]
  %4300 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = fmul fast float %4303, %4300
  %4305 = fadd fast float %4304, %4302
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = bitcast float %3979 to i32
  %4308 = and i32 %4307, 65535
  %4309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4308)  ; LegacyF16ToF32(value)
  %4310 = lshr i32 %4307, 16
  %4311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4310)  ; LegacyF16ToF32(value)
  %4312 = fcmp fast oge float %4309, 0.000000e+00
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = select i1 %4312, float %4309, float %4314
  %4316 = fadd fast float %4315, %4311
  %4317 = fsub fast float %4306, %3915
  %4318 = fmul fast float %4317, %4137
  %4319 = fadd fast float %4318, %3915
  %4320 = fmul fast float %4316, %4137
  %4321 = call float @dx.op.binary.f32(i32 35, float %3914, float %4320)  ; FMax(a,b)
  %4322 = and i32 %4067, 16
  %4323 = icmp eq i32 %4322, 0
  br i1 %4323, label %4345, label %4324

; <label>:4324                                    ; preds = %4296
  %4325 = add i32 %3982, 0
  %4326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4325, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4327 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4326, %dx.types.Handle %4150, float %4078, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float %4083, float %4085, float undef, float %4087, float %4089, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = and i32 %4269, 65535
  %4332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4331)  ; LegacyF16ToF32(value)
  %4333 = fmul fast float %4328, %3976
  %4334 = fmul fast float %4329, %3977
  %4335 = fmul fast float %4330, %3978
  %4336 = and i32 %4067, 16384
  %4337 = icmp ne i32 %4336, 0
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4340 = select i1 %4337, float %4339, float 1.000000e+00
  %4341 = fmul fast float %4340, %4332
  %4342 = fmul fast float %4333, %4341
  %4343 = fmul fast float %4334, %4341
  %4344 = fmul fast float %4335, %4341
  br label %4345

; <label>:4345                                    ; preds = %4324, %4296
  %4346 = phi float [ %4342, %4324 ], [ 0.000000e+00, %4296 ]
  %4347 = phi float [ %4343, %4324 ], [ 0.000000e+00, %4296 ]
  %4348 = phi float [ %4344, %4324 ], [ 0.000000e+00, %4296 ]
  %4349 = fsub fast float %4346, %3921
  %4350 = fsub fast float %4347, %3922
  %4351 = fsub fast float %4348, %3923
  %4352 = fmul fast float %4349, %4137
  %4353 = fmul fast float %4350, %4137
  %4354 = fmul fast float %4351, %4137
  %4355 = fadd fast float %4352, %3921
  %4356 = fadd fast float %4353, %3922
  %4357 = fadd fast float %4354, %3923
  br label %4035

; <label>:4358                                    ; preds = %4035
  br label %4359

; <label>:4359                                    ; preds = %4358, %3848
  %4360 = phi float [ 0.000000e+00, %3848 ], [ %4036, %4358 ]
  %4361 = phi float [ %3818, %3848 ], [ %4037, %4358 ]
  %4362 = phi float [ %3810, %3848 ], [ %4038, %4358 ]
  %4363 = phi float [ %3803, %3848 ], [ %4039, %4358 ]
  %4364 = phi float [ %3804, %3848 ], [ %4040, %4358 ]
  %4365 = phi float [ %3805, %3848 ], [ %4041, %4358 ]
  %4366 = phi float [ 0.000000e+00, %3848 ], [ %4042, %4358 ]
  %4367 = phi float [ 0.000000e+00, %3848 ], [ %4043, %4358 ]
  %4368 = phi float [ %3800, %3848 ], [ %4044, %4358 ]
  %4369 = phi float [ %3801, %3848 ], [ %4045, %4358 ]
  %4370 = phi float [ %3802, %3848 ], [ %4046, %4358 ]
  %4371 = phi float [ %3844, %3848 ], [ %4047, %4358 ]
  %4372 = phi float [ %3845, %3848 ], [ %4048, %4358 ]
  %4373 = phi float [ %3846, %3848 ], [ %4049, %4358 ]
  %4374 = phi float [ %3808, %3848 ], [ %4050, %4358 ]
  %4375 = phi float [ %3807, %3848 ], [ %4051, %4358 ]
  %4376 = phi float [ 0.000000e+00, %3848 ], [ %4052, %4358 ]
  %4377 = phi float [ %3806, %3848 ], [ %4053, %4358 ]
  %4378 = phi float [ %3797, %3848 ], [ %4054, %4358 ]
  %4379 = phi float [ %3798, %3848 ], [ %4055, %4358 ]
  %4380 = phi float [ %3799, %3848 ], [ %4056, %4358 ]
  %4381 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = call float @dx.op.unary.f32(i32 25, float %4381)  ; Rsqrt(value)
  %4383 = fmul fast float %4382, %4371
  %4384 = fmul fast float %4382, %4372
  %4385 = fmul fast float %4382, %4373
  %4386 = fadd fast float %4376, %1142
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4383, float %4384, float %4385)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 25, float %4388)  ; Rsqrt(value)
  %4390 = fmul fast float %4389, %4383
  %4391 = fmul fast float %4389, %4384
  %4392 = fmul fast float %4389, %4385
  br label %4393

; <label>:4393                                    ; preds = %4359, %3794
  %4394 = phi float [ %4368, %4359 ], [ %3800, %3794 ]
  %4395 = phi float [ %4369, %4359 ], [ %3801, %3794 ]
  %4396 = phi float [ %4370, %4359 ], [ %3802, %3794 ]
  %4397 = phi float [ %4378, %4359 ], [ %3797, %3794 ]
  %4398 = phi float [ %4379, %4359 ], [ %3798, %3794 ]
  %4399 = phi float [ %4380, %4359 ], [ %3799, %3794 ]
  %4400 = phi float [ %4363, %4359 ], [ %3803, %3794 ]
  %4401 = phi float [ %4364, %4359 ], [ %3804, %3794 ]
  %4402 = phi float [ %4365, %4359 ], [ %3805, %3794 ]
  %4403 = phi float [ %4390, %4359 ], [ %3844, %3794 ]
  %4404 = phi float [ %4391, %4359 ], [ %3845, %3794 ]
  %4405 = phi float [ %4392, %4359 ], [ %3846, %3794 ]
  %4406 = phi float [ %4377, %4359 ], [ %3806, %3794 ]
  %4407 = phi float [ %4387, %4359 ], [ %1142, %3794 ]
  %4408 = phi float [ %4375, %4359 ], [ %3807, %3794 ]
  %4409 = phi float [ %4374, %4359 ], [ %3808, %3794 ]
  %4410 = phi float [ %4367, %4359 ], [ 0.000000e+00, %3794 ]
  %4411 = phi float [ %4366, %4359 ], [ 0.000000e+00, %3794 ]
  %4412 = phi float [ %4360, %4359 ], [ 0.000000e+00, %3794 ]
  %4413 = phi float [ %4361, %4359 ], [ %3818, %3794 ]
  %4414 = phi float [ %4362, %4359 ], [ %3810, %3794 ]
  %4415 = fadd fast float %4406, 0xBFB99999A0000000
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = fmul fast float %4416, 0x3FF1C71C80000000
  %4418 = call float @dx.op.binary.f32(i32 36, float %4406, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4419 = fsub fast float 1.000000e+00, %4417
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, %4397
  %4422 = fmul fast float %4420, %4398
  %4423 = fmul fast float %4420, %4399
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4427 = fmul fast float %4417, %4397
  %4428 = fmul fast float %4417, %4398
  %4429 = fmul fast float %4417, %4399
  %4430 = fadd fast float %4427, %4418
  %4431 = fadd fast float %4428, %4418
  %4432 = fadd fast float %4429, %4418
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4437 = call float @dx.op.binary.f32(i32 36, float %4400, float 1.270000e+02)  ; FMin(a,b)
  %4438 = call float @dx.op.binary.f32(i32 36, float %4401, float 1.270000e+02)  ; FMin(a,b)
  %4439 = call float @dx.op.binary.f32(i32 36, float %4402, float 1.270000e+02)  ; FMin(a,b)
  %4440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.i32 %4440, 3
  %4442 = and i32 %4441, 8
  %4443 = icmp ne i32 %4442, 0
  %4444 = call float @dx.op.binary.f32(i32 35, float %4424, float %4397)  ; FMax(a,b)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4425, float %4397)  ; FMax(a,b)
  %4446 = call float @dx.op.binary.f32(i32 35, float %4426, float %4397)  ; FMax(a,b)
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = select i1 %260, float %4397, float %4424
  %4449 = select i1 %260, float %4447, float %4425
  %4450 = select i1 %260, float 1.000000e+00, float %4426
  %4451 = select i1 %4443, float %4444, float %4448
  %4452 = select i1 %4443, float %4445, float %4449
  %4453 = select i1 %4443, float %4446, float %4450
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4457 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4458 = fadd fast float %4455, %201
  %4459 = fadd fast float %4456, %202
  %4460 = fadd fast float %4457, %203
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = fsub fast float %4458, %4462
  %4465 = fsub fast float %4459, %4463
  %4466 = fmul fast float %4464, %4464
  %4467 = fmul fast float %4465, %4465
  %4468 = fadd fast float %4466, %4467
  %4469 = call float @dx.op.unary.f32(i32 24, float %4468)  ; Sqrt(value)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4471 = fcmp fast olt float %4469, %4470
  br i1 %4471, label %4472, label %4539

; <label>:4472                                    ; preds = %4393
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 0
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 0
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.CBufRet.f32 %4473, 1
  %4480 = extractvalue %dx.types.CBufRet.f32 %4475, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4482 = extractvalue %dx.types.CBufRet.f32 %4473, 3
  %4483 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4484 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4485 = fadd fast float %4482, %4458
  %4486 = fadd fast float %4483, %4459
  %4487 = fadd fast float %4484, %4460
  %4488 = fmul fast float %4485, %4474
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4486, float %4476, float %4488)  ; FMad(a,b,c)
  %4490 = call float @dx.op.tertiary.f32(i32 46, float %4487, float %4478, float %4489)  ; FMad(a,b,c)
  %4491 = fmul fast float %4485, %4479
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4486, float %4480, float %4491)  ; FMad(a,b,c)
  %4493 = call float @dx.op.tertiary.f32(i32 46, float %4487, float %4481, float %4492)  ; FMad(a,b,c)
  %4494 = fsub fast float %4490, %4482
  %4495 = fsub fast float %4493, %4483
  %4496 = fsub fast float %4494, %4462
  %4497 = fadd fast float %4496, %4470
  %4498 = fsub fast float %4495, %4463
  %4499 = fadd fast float %4498, %4470
  %4500 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4501 = fmul fast float %4497, %4500
  %4502 = fmul fast float %4499, %4500
  %4503 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4505 = fsub fast float 1.000000e+00, %4503
  %4506 = fsub fast float 1.000000e+00, %4504
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4505, float %4506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = fcmp fast ugt float %4508, 0.000000e+00
  br i1 %4509, label %4510, label %4813

; <label>:4510                                    ; preds = %4472
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4513 = fmul fast float %4512, %4508
  %4514 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4515 = fadd fast float %4514, %4513
  %4516 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4517 = fadd fast float %4515, %4484
  %4518 = fmul fast float %4490, %4478
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4493, float %4481, float %4518)  ; FMad(a,b,c)
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4517, float %4516, float %4519)  ; FMad(a,b,c)
  %4521 = fsub fast float %4520, %4484
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4524 = fsub fast float %4521, %4523
  %4525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4505, float %4506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4505, float %4506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4533 = fadd fast float %4530, %4526
  %4534 = fmul fast float %4533, 0x3F847AE140000000
  %4535 = fadd fast float %4531, %4527
  %4536 = fmul fast float %4535, 0x3F847AE140000000
  %4537 = fadd fast float %4532, %4528
  %4538 = fmul fast float %4537, 0x3F847AE140000000
  br label %4813

; <label>:4539                                    ; preds = %4393
  %4540 = and i32 %239, 1
  %4541 = icmp eq i32 %4540, 0
  br i1 %4541, label %4813, label %4542

; <label>:4542                                    ; preds = %4539
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4550 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4553 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4554 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4555 = fadd fast float %4552, %4458
  %4556 = fadd fast float %4553, %4459
  %4557 = fadd fast float %4554, %4460
  %4558 = fmul fast float %4555, %4544
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4546, float %4558)  ; FMad(a,b,c)
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4548, float %4559)  ; FMad(a,b,c)
  %4561 = fmul fast float %4555, %4549
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4550, float %4561)  ; FMad(a,b,c)
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4551, float %4562)  ; FMad(a,b,c)
  %4564 = fsub fast float %4560, %4552
  %4565 = fsub fast float %4563, %4553
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.CBufRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.CBufRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.CBufRet.f32 %4566, 3
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.i32 %4573, 0
  %4575 = extractvalue %dx.types.CBufRet.i32 %4573, 1
  %4576 = udiv i32 %4575, %4574
  %4577 = fsub fast float %4564, %4567
  %4578 = fsub fast float %4565, %4568
  %4579 = call float @dx.op.binary.f32(i32 35, float %4577, float 0.000000e+00)  ; FMax(a,b)
  %4580 = call float @dx.op.binary.f32(i32 35, float %4578, float 0.000000e+00)  ; FMax(a,b)
  %4581 = call float @dx.op.binary.f32(i32 36, float %4579, float %4569)  ; FMin(a,b)
  %4582 = call float @dx.op.binary.f32(i32 36, float %4580, float %4570)  ; FMin(a,b)
  %4583 = add i32 %4574, -1
  %4584 = add i32 %4576, -1
  %4585 = fmul fast float %4581, %4572
  %4586 = fmul fast float %4582, %4572
  %4587 = fptoui float %4585 to i32
  %4588 = fptoui float %4586 to i32
  %4589 = call i32 @dx.op.binary.i32(i32 40, i32 %4587, i32 %4583)  ; UMin(a,b)
  %4590 = call i32 @dx.op.binary.i32(i32 40, i32 %4588, i32 %4584)  ; UMin(a,b)
  %4591 = mul i32 %4590, %4574
  %4592 = add i32 %4591, %4589
  %4593 = shl i32 %4592, 2
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = icmp eq i32 %4595, -1
  br i1 %4596, label %4813, label %4597

; <label>:4597                                    ; preds = %4542
  %4598 = mul i32 %4595, 148
  %4599 = add i32 %4598, 4
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = add i32 %4598, 8
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = add i32 %4598, 36
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = add i32 %4598, 60
  %4609 = add i32 %4598, 92
  %4610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.i32 %4610, 0
  %4612 = add i32 %4598, 116
  %4613 = fsub fast float %4564, %4601
  %4614 = fsub fast float %4565, %4604
  %4615 = fmul fast float %4572, %4613
  %4616 = fmul fast float %4572, %4614
  %4617 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4619 = fsub fast float 1.000000e+00, %4618
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4622 = call float @dx.op.unary.f32(i32 83, float %4617)  ; DerivCoarseX(value)
  %4623 = call float @dx.op.unary.f32(i32 83, float %4619)  ; DerivCoarseX(value)
  %4624 = call float @dx.op.unary.f32(i32 84, float %4617)  ; DerivCoarseY(value)
  %4625 = call float @dx.op.unary.f32(i32 84, float %4619)  ; DerivCoarseY(value)
  %4626 = fmul fast float %4622, %4621
  %4627 = fmul fast float %4623, %4621
  %4628 = fmul fast float %4624, %4621
  %4629 = fmul fast float %4625, %4621
  %4630 = call float @dx.op.dot2.f32(i32 54, float %4628, float %4629, float %4628, float %4629)  ; Dot2(ax,ay,bx,by)
  %4631 = call float @dx.op.dot2.f32(i32 54, float %4626, float %4627, float %4626, float %4627)  ; Dot2(ax,ay,bx,by)
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float %4630)  ; FMax(a,b)
  %4633 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4634 = fmul fast float %4633, 5.000000e-01
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4637 = fadd fast float %4636, %4634
  %4638 = call float @dx.op.binary.f32(i32 35, float %4637, float 0.000000e+00)  ; FMax(a,b)
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 3
  %4641 = fadd fast float %4640, %4638
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4644 = fadd fast float %4641, %4643
  %4645 = add i32 %4611, 0
  %4646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4645, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4647 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4646, i32 0)  ; GetDimensions(handle,mipLevel)
  %4648 = extractvalue %dx.types.Dimensions %4647, 0
  %4649 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4648)  ; FirstbitLo(value)
  %4650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.i32 %4650, 1
  %4652 = sub nsw i32 %4651, %4649
  %4653 = sitofp i32 %4652 to float
  %4654 = fsub fast float %4644, %4653
  %4655 = call float @dx.op.binary.f32(i32 35, float %4654, float 0.000000e+00)  ; FMax(a,b)
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4646, %dx.types.Handle %52, float %4617, float %4619, float %4607, float undef, i32 0, i32 0, i32 undef, float %4655)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = fcmp ule float %4657, 0x3FE0101020000000
  %4659 = extractvalue %dx.types.CBufRet.i32 %4650, 0
  %4660 = and i32 %4659, 128
  %4661 = icmp ne i32 %4660, 0
  %4662 = and i1 %4658, %4661
  br i1 %4662, label %4813, label %4663

; <label>:4663                                    ; preds = %4597
  %4664 = add i32 %4598, 20
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4598, 24
  %4668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = add i32 %4598, 40
  %4671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4670, i32 undef)  ; BufferLoad(srv,index,wot)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = add i32 %4598, 96
  %4674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.i32 %4674, 0
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4678 = fmul fast float %4677, %4617
  %4679 = fmul fast float %4677, %4619
  %4680 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4681 = fadd fast float %4678, %4680
  %4682 = fadd fast float %4679, %4680
  %4683 = add i32 %4675, 0
  %4684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4684, i32 0)  ; GetDimensions(handle,mipLevel)
  %4686 = extractvalue %dx.types.Dimensions %4685, 0
  %4687 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4686)  ; FirstbitLo(value)
  %4688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.i32 %4688, 1
  %4690 = sub nsw i32 %4689, %4687
  %4691 = sitofp i32 %4690 to float
  %4692 = fsub fast float %4641, %4691
  %4693 = call float @dx.op.binary.f32(i32 35, float %4692, float 0.000000e+00)  ; FMax(a,b)
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4684, %dx.types.Handle %52, float %4681, float %4682, float %4672, float undef, i32 0, i32 0, i32 undef, float %4693)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = fmul fast float %4695, %4666
  %4697 = fadd fast float %4696, %4669
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4706 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4707 = fadd fast float %4703, %4564
  %4708 = fadd fast float %4705, %4565
  %4709 = fadd fast float %4697, %4706
  %4710 = fmul fast float %4707, %4699
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4700, float %4710)  ; FMad(a,b,c)
  %4712 = call float @dx.op.tertiary.f32(i32 46, float %4709, float %4701, float %4711)  ; FMad(a,b,c)
  %4713 = fsub fast float %4712, %4706
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 2
  %4716 = fsub fast float %4713, %4715
  %4717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.i32 %4717, 0
  %4719 = call i32 @dx.op.binary.i32(i32 40, i32 %4595, i32 %4718)  ; UMin(a,b)
  %4720 = mul i32 %4719, 36
  %4721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4720, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.i32 %4721, 0
  %4723 = add i32 %4720, 4
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = fmul fast float %4725, %4617
  %4727 = fmul fast float %4725, %4619
  %4728 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4729 = fadd fast float %4726, %4728
  %4730 = fadd fast float %4727, %4728
  %4731 = icmp eq i32 %4722, 0
  br i1 %4731, label %4800, label %4732

; <label>:4732                                    ; preds = %4663
  br label %4733

; <label>:4733                                    ; preds = %4790, %4732
  %4734 = phi float [ %4791, %4790 ], [ 0.000000e+00, %4732 ]
  %4735 = phi float [ %4792, %4790 ], [ 0.000000e+00, %4732 ]
  %4736 = phi float [ %4793, %4790 ], [ 0.000000e+00, %4732 ]
  %4737 = phi float [ %4794, %4790 ], [ 0.000000e+00, %4732 ]
  %4738 = phi float [ %4795, %4790 ], [ 0.000000e+00, %4732 ]
  %4739 = phi float [ %4796, %4790 ], [ 0.000000e+00, %4732 ]
  %4740 = phi i32 [ %4797, %4790 ], [ 0, %4732 ]
  %4741 = shl i32 %4740, 2
  %4742 = add i32 %4608, %4741
  %4743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4742, i32 undef)  ; BufferLoad(srv,index,wot)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = add i32 %4612, %4741
  %4746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4745, i32 undef)  ; BufferLoad(srv,index,wot)
  %4747 = extractvalue %dx.types.ResRet.i32 %4746, 0
  %4748 = add i32 %4747, 0
  %4749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4750 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4749, i32 0)  ; GetDimensions(handle,mipLevel)
  %4751 = extractvalue %dx.types.Dimensions %4750, 0
  %4752 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4751)  ; FirstbitLo(value)
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 1
  %4755 = sub nsw i32 %4754, %4752
  %4756 = sitofp i32 %4755 to float
  %4757 = fsub fast float %4641, %4756
  %4758 = call float @dx.op.binary.f32(i32 35, float %4757, float 0.000000e+00)  ; FMax(a,b)
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4749, %dx.types.Handle %52, float %4729, float %4730, float %4744, float undef, i32 0, i32 0, i32 undef, float %4758)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = fcmp fast ogt float %4760, 0.000000e+00
  br i1 %4761, label %4762, label %4790

; <label>:4762                                    ; preds = %4733
  %4763 = add i32 %4723, %4741
  %4764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4765 = extractvalue %dx.types.ResRet.i32 %4764, 0
  %4766 = and i32 %4765, 32767
  %4767 = mul nuw nsw i32 %4766, 928
  %4768 = add nuw nsw i32 %4767, 48
  %4769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4768, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 1
  %4772 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4773 = add nuw nsw i32 %4767, 60
  %4774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4773, i32 undef)  ; BufferLoad(srv,index,wot)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = fmul fast float %4770, %4760
  %4779 = fmul fast float %4771, %4760
  %4780 = fmul fast float %4772, %4760
  %4781 = fadd fast float %4778, %4734
  %4782 = fadd fast float %4779, %4735
  %4783 = fadd fast float %4780, %4736
  %4784 = fmul fast float %4775, %4760
  %4785 = fmul fast float %4776, %4760
  %4786 = fmul fast float %4777, %4760
  %4787 = fadd fast float %4784, %4737
  %4788 = fadd fast float %4785, %4738
  %4789 = fadd fast float %4786, %4739
  br label %4790

; <label>:4790                                    ; preds = %4762, %4733
  %4791 = phi float [ %4781, %4762 ], [ %4734, %4733 ]
  %4792 = phi float [ %4782, %4762 ], [ %4735, %4733 ]
  %4793 = phi float [ %4783, %4762 ], [ %4736, %4733 ]
  %4794 = phi float [ %4787, %4762 ], [ %4737, %4733 ]
  %4795 = phi float [ %4788, %4762 ], [ %4738, %4733 ]
  %4796 = phi float [ %4789, %4762 ], [ %4739, %4733 ]
  %4797 = add nuw i32 %4740, 1
  %4798 = icmp eq i32 %4797, %4722
  br i1 %4798, label %4799, label %4733

; <label>:4799                                    ; preds = %4790
  br label %4800

; <label>:4800                                    ; preds = %4799, %4663
  %4801 = phi float [ 0.000000e+00, %4663 ], [ %4791, %4799 ]
  %4802 = phi float [ 0.000000e+00, %4663 ], [ %4792, %4799 ]
  %4803 = phi float [ 0.000000e+00, %4663 ], [ %4793, %4799 ]
  %4804 = phi float [ 0.000000e+00, %4663 ], [ %4794, %4799 ]
  %4805 = phi float [ 0.000000e+00, %4663 ], [ %4795, %4799 ]
  %4806 = phi float [ 0.000000e+00, %4663 ], [ %4796, %4799 ]
  %4807 = fadd fast float %4804, %4801
  %4808 = fmul fast float %4807, 0x3F847AE140000000
  %4809 = fadd fast float %4805, %4802
  %4810 = fmul fast float %4809, 0x3F847AE140000000
  %4811 = fadd fast float %4806, %4803
  %4812 = fmul fast float %4811, 0x3F847AE140000000
  br label %4813

; <label>:4813                                    ; preds = %4800, %4597, %4542, %4539, %4510, %4472
  %4814 = phi float [ %4534, %4510 ], [ 0.000000e+00, %4472 ], [ %4808, %4800 ], [ 0.000000e+00, %4542 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4539 ]
  %4815 = phi float [ %4536, %4510 ], [ 0.000000e+00, %4472 ], [ %4810, %4800 ], [ 0.000000e+00, %4542 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4539 ]
  %4816 = phi float [ %4538, %4510 ], [ 0.000000e+00, %4472 ], [ %4812, %4800 ], [ 0.000000e+00, %4542 ], [ 0.000000e+00, %4597 ], [ 0.000000e+00, %4539 ]
  %4817 = phi float [ %4524, %4510 ], [ -1.310720e+05, %4472 ], [ %4716, %4800 ], [ -1.310720e+05, %4542 ], [ -1.310720e+05, %4597 ], [ -1.310720e+05, %4539 ]
  %4818 = phi i1 [ true, %4510 ], [ false, %4472 ], [ true, %4800 ], [ false, %4542 ], [ false, %4597 ], [ false, %4539 ]
  %4819 = and i32 %239, 3
  %4820 = icmp eq i32 %4819, 1
  %4821 = select i1 %4820, float 1.000000e+00, float 0.000000e+00
  %4822 = fsub fast float %4817, %203
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = select i1 %4818, float %4823, float 1.000000e+00
  %4825 = fmul fast float %4824, %4821
  %4826 = icmp eq i32 %4819, 3
  %4827 = select i1 %4826, float 1.000000e+00, float %4825
  %4828 = call float @dx.op.binary.f32(i32 35, float %4412, float %4827)  ; FMax(a,b)
  %4829 = fcmp fast olt float %4827, 1.000000e+00
  %4830 = fcmp uge float %75, 0.000000e+00
  %4831 = and i1 %4830, %4829
  br i1 %4831, label %4832, label %4842

; <label>:4832                                    ; preds = %4813
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = fadd fast float %4834, %4828
  %4838 = fcmp ule float %74, 0.000000e+00
  %4839 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = select i1 %4838, float %4839, float 1.000000e+00
  %4841 = fmul fast float %4840, %4836
  br label %4842

; <label>:4842                                    ; preds = %4832, %4813
  %4843 = phi float [ %4837, %4832 ], [ %4828, %4813 ]
  %4844 = phi float [ %4835, %4832 ], [ 0.000000e+00, %4813 ]
  %4845 = phi float [ %4841, %4832 ], [ 0.000000e+00, %4813 ]
  %4846 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = fcmp fast une float %4847, 0.000000e+00
  %4850 = fcmp fast une float %4848, 0.000000e+00
  %4851 = or i1 %4849, %4850
  br i1 %4851, label %4852, label %5411

; <label>:4852                                    ; preds = %4842
  br i1 %4849, label %4853, label %5126

; <label>:4853                                    ; preds = %4852
  %4854 = call float @dx.op.unary.f32(i32 23, float %4409)  ; Log(value)
  %4855 = fmul fast float %4854, 4.000000e+00
  %4856 = call float @dx.op.unary.f32(i32 21, float %4855)  ; Exp(value)
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = fmul fast float %4858, %62
  %4860 = fmul fast float %4858, %63
  %4861 = fmul fast float %4858, %64
  %4862 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4863 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4864 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4865 = call float @dx.op.unary.f32(i32 23, float %4862)  ; Log(value)
  %4866 = call float @dx.op.unary.f32(i32 23, float %4863)  ; Log(value)
  %4867 = call float @dx.op.unary.f32(i32 23, float %4864)  ; Log(value)
  %4868 = fmul fast float %4865, 4.000000e+00
  %4869 = fmul fast float %4866, 4.000000e+00
  %4870 = fmul fast float %4867, 4.000000e+00
  %4871 = call float @dx.op.unary.f32(i32 21, float %4868)  ; Exp(value)
  %4872 = call float @dx.op.unary.f32(i32 21, float %4869)  ; Exp(value)
  %4873 = call float @dx.op.unary.f32(i32 21, float %4870)  ; Exp(value)
  %4874 = fadd fast float %4872, %4871
  %4875 = fadd fast float %4874, %4873
  %4876 = fdiv fast float 1.000000e+00, %4875
  %4877 = fmul fast float %4876, %4871
  %4878 = fcmp fast ogt float %71, 0.000000e+00
  %4879 = fcmp fast ogt float %72, 0.000000e+00
  %4880 = fcmp fast ogt float %73, 0.000000e+00
  %4881 = fcmp fast olt float %71, 0.000000e+00
  %4882 = fcmp fast olt float %72, 0.000000e+00
  %4883 = fcmp fast olt float %73, 0.000000e+00
  %4884 = zext i1 %4878 to i32
  %4885 = zext i1 %4879 to i32
  %4886 = zext i1 %4880 to i32
  %4887 = zext i1 %4881 to i32
  %4888 = zext i1 %4882 to i32
  %4889 = zext i1 %4883 to i32
  %4890 = sub nsw i32 %4884, %4887
  %4891 = sub nsw i32 %4885, %4888
  %4892 = sub nsw i32 %4886, %4889
  %4893 = call float @dx.op.unary.f32(i32 83, float %4859)  ; DerivCoarseX(value)
  %4894 = call float @dx.op.unary.f32(i32 83, float %4860)  ; DerivCoarseX(value)
  %4895 = call float @dx.op.unary.f32(i32 83, float %4861)  ; DerivCoarseX(value)
  %4896 = call float @dx.op.unary.f32(i32 84, float %4859)  ; DerivCoarseY(value)
  %4897 = call float @dx.op.unary.f32(i32 84, float %4860)  ; DerivCoarseY(value)
  %4898 = call float @dx.op.unary.f32(i32 84, float %4861)  ; DerivCoarseY(value)
  %4899 = fcmp fast ole float %271, %4877
  %4900 = fmul fast float %4876, %4874
  %4901 = fcmp fast ole float %271, %4900
  %4902 = select i1 %4901, float %4861, float %4859
  %4903 = select i1 %4901, float %4859, float %4860
  %4904 = select i1 %4899, float %4860, float %4902
  %4905 = select i1 %4899, float %4861, float %4903
  %4906 = select i1 %4901, float %4895, float %4893
  %4907 = select i1 %4901, float %4893, float %4894
  %4908 = select i1 %4899, float %4894, float %4906
  %4909 = select i1 %4899, float %4895, float %4907
  %4910 = select i1 %4901, float %4898, float %4896
  %4911 = select i1 %4901, float %4896, float %4897
  %4912 = select i1 %4899, float %4897, float %4910
  %4913 = select i1 %4899, float %4898, float %4911
  %4914 = call float @dx.op.unary.f32(i32 27, float %4904)  ; Round_ni(value)
  %4915 = call float @dx.op.unary.f32(i32 27, float %4905)  ; Round_ni(value)
  %4916 = fptosi float %4914 to i32
  %4917 = fptosi float %4915 to i32
  %4918 = xor i32 %4917, %4916
  %4919 = sitofp i32 %4918 to float
  %4920 = fptosi float %4919 to i32
  %4921 = sitofp i32 %4920 to float
  %4922 = fmul fast float %4921, 0x3FE3C6EF40000000
  %4923 = frem fast float %4914, 2.560000e+02
  %4924 = frem fast float %4915, 2.560000e+02
  %4925 = fptoui float %4923 to i32
  %4926 = fptoui float %4924 to i32
  %4927 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4925, i32 %4926, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = fadd fast float %4928, %4922
  %4932 = fadd fast float %4929, %4922
  %4933 = fadd fast float %4930, %4922
  %4934 = call float @dx.op.unary.f32(i32 22, float %4931)  ; Frc(value)
  %4935 = call float @dx.op.unary.f32(i32 22, float %4932)  ; Frc(value)
  %4936 = call float @dx.op.unary.f32(i32 22, float %4933)  ; Frc(value)
  %4937 = fmul fast float %4936, 0x401921FB60000000
  %4938 = call float @dx.op.unary.f32(i32 13, float %4937)  ; Sin(value)
  %4939 = call float @dx.op.unary.f32(i32 12, float %4937)  ; Cos(value)
  %4940 = fsub fast float -0.000000e+00, %4939
  %4941 = fmul fast float %4939, %4904
  %4942 = call float @dx.op.tertiary.f32(i32 46, float %4938, float %4905, float %4941)  ; FMad(a,b,c)
  %4943 = fmul fast float %4938, %4904
  %4944 = call float @dx.op.tertiary.f32(i32 46, float %4940, float %4905, float %4943)  ; FMad(a,b,c)
  %4945 = fadd fast float %4942, %4934
  %4946 = fadd fast float %4944, %4935
  %4947 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4948 = bitcast float %4947 to i32
  %4949 = icmp eq i32 %4948, 0
  br i1 %4949, label %4988, label %4950

; <label>:4950                                    ; preds = %4853
  %4951 = add i32 %4948, 0
  %4952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4952, %dx.types.Handle %111, float %4945, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float %4908, float %4909, float undef, float %4912, float %4913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 2
  %4958 = fsub fast float 1.000000e+00, %4847
  %4959 = call float @dx.op.binary.f32(i32 35, float %4958, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4960 = bitcast float %4847 to i32
  %4961 = sitofp i32 %4960 to float
  %4962 = fadd fast float %4961, 0xC1CFBF8940000000
  %4963 = fmul fast float %4957, %4962
  %4964 = fadd fast float %4963, 0x41CFBF8940000000
  %4965 = fptosi float %4964 to i32
  %4966 = bitcast i32 %4965 to float
  %4967 = bitcast float %4959 to i32
  %4968 = sitofp i32 %4967 to float
  %4969 = fadd fast float %4968, 0xC1CFBF8940000000
  %4970 = fmul fast float %4969, %4957
  %4971 = fadd fast float %4970, 0x41CFBF8940000000
  %4972 = fptosi float %4971 to i32
  %4973 = bitcast i32 %4972 to float
  %4974 = fmul fast float %4966, %4956
  %4975 = fmul fast float %4973, %4956
  %4976 = fsub fast float %4959, %4974
  %4977 = fadd fast float %4975, %4959
  %4978 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4980 = fsub fast float %4954, %4978
  %4981 = fsub fast float %4979, %4978
  %4982 = bitcast float %4981 to i32
  %4983 = sub nsw i32 2129859010, %4982
  %4984 = bitcast i32 %4983 to float
  %4985 = fmul fast float %4984, %4980
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fcmp fast olt float %4986, 0x3F70101020000000
  br i1 %4987, label %5126, label %4988

; <label>:4988                                    ; preds = %4950, %4853
  %4989 = phi float [ %4986, %4950 ], [ %4847, %4853 ]
  %4990 = fmul fast float %4989, %4856
  %4991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.i32 %4991, 1
  %4993 = extractvalue %dx.types.CBufRet.i32 %4991, 0
  %4994 = add i32 %4993, 0
  %4995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4995, %dx.types.Handle %110, float %4945, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float %4908, float %4909, float undef, float %4912, float %4913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.ResRet.f32 %4996, 1
  %4999 = extractvalue %dx.types.ResRet.f32 %4996, 2
  %5000 = extractvalue %dx.types.ResRet.f32 %4996, 3
  %5001 = and i32 %4992, 255
  %5002 = uitofp i32 %5001 to float
  %5003 = lshr i32 %4992, 8
  %5004 = and i32 %5003, 255
  %5005 = uitofp i32 %5004 to float
  %5006 = fmul fast float %5000, %5002
  %5007 = fadd fast float %5006, %5005
  %5008 = fmul fast float %5007, 0x3F70101000000000
  %5009 = fadd fast float %5008, 0xBFB99999A0000000
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fmul fast float %5010, 0x3FF1C71C80000000
  %5012 = call float @dx.op.binary.f32(i32 36, float %5008, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5013 = fsub fast float 1.000000e+00, %5011
  %5014 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5015 = fmul fast float %5014, %4997
  %5016 = fmul fast float %5014, %4998
  %5017 = fmul fast float %5014, %4999
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5020 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5021 = fmul fast float %5011, %4997
  %5022 = fmul fast float %5011, %4998
  %5023 = fmul fast float %5011, %4999
  %5024 = fadd fast float %5021, %5012
  %5025 = fadd fast float %5022, %5012
  %5026 = fadd fast float %5023, %5012
  %5027 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5029 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.i32 %5030, 3
  %5032 = extractvalue %dx.types.CBufRet.i32 %5030, 2
  %5033 = add i32 %5032, 0
  %5034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5034, %dx.types.Handle %110, float %4945, float %4946, float undef, float undef, i32 0, i32 0, i32 undef, float %4908, float %4909, float undef, float %4912, float %4913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = extractvalue %dx.types.ResRet.f32 %5035, 1
  %5038 = extractvalue %dx.types.ResRet.f32 %5035, 2
  %5039 = extractvalue %dx.types.ResRet.f32 %5035, 3
  %5040 = and i32 %5031, 255
  %5041 = uitofp i32 %5040 to float
  %5042 = lshr i32 %5031, 8
  %5043 = and i32 %5042, 255
  %5044 = uitofp i32 %5043 to float
  %5045 = lshr i32 %5031, 16
  %5046 = and i32 %5045, 255
  %5047 = uitofp i32 %5046 to float
  %5048 = fmul fast float %5047, 0x3F70101000000000
  %5049 = fmul fast float %5036, %5041
  %5050 = fadd fast float %5049, %5044
  %5051 = fmul fast float %5050, 0x3F70101000000000
  %5052 = fadd fast float %5037, -5.000000e-01
  %5053 = fadd fast float %5039, -5.000000e-01
  %5054 = fmul fast float %5052, %5048
  %5055 = fmul fast float %5053, %5048
  %5056 = fadd fast float %5054, 5.000000e-01
  %5057 = fadd fast float %5055, 5.000000e-01
  %5058 = fmul fast float %5056, 2.000000e+00
  %5059 = fadd fast float %5058, -1.000000e+00
  %5060 = fmul fast float %5057, 2.000000e+00
  %5061 = fadd fast float %5060, -1.000000e+00
  %5062 = fadd fast float %5059, %5061
  %5063 = fmul fast float %5062, 5.000000e-01
  %5064 = fsub fast float %5059, %5061
  %5065 = fmul fast float %5064, 5.000000e-01
  %5066 = call float @dx.op.unary.f32(i32 6, float %5063)  ; FAbs(value)
  %5067 = fsub fast float 1.000000e+00, %5066
  %5068 = call float @dx.op.unary.f32(i32 6, float %5065)  ; FAbs(value)
  %5069 = fsub fast float %5067, %5068
  %5070 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5065, float %5069, float %5063, float %5065, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = call float @dx.op.unary.f32(i32 25, float %5070)  ; Rsqrt(value)
  %5072 = fmul fast float %5063, %5071
  %5073 = fmul fast float %5065, %5071
  %5074 = select i1 %4901, i32 %4891, i32 %4892
  %5075 = select i1 %4899, i32 %4890, i32 %5074
  %5076 = sitofp i32 %5075 to float
  %5077 = fmul fast float %5069, %5076
  %5078 = fmul fast float %5077, %5071
  %5079 = select i1 %4901, float %5078, float %5073
  %5080 = select i1 %4901, float %5073, float %5078
  %5081 = select i1 %4899, float %5078, float %5072
  %5082 = select i1 %4899, float %5073, float %5079
  %5083 = select i1 %4899, float %5072, float %5080
  %5084 = fsub fast float %5018, %4451
  %5085 = fsub fast float %5019, %4452
  %5086 = fsub fast float %5020, %4453
  %5087 = fmul fast float %5084, %4990
  %5088 = fmul fast float %5085, %4990
  %5089 = fmul fast float %5086, %4990
  %5090 = fadd fast float %5087, %4451
  %5091 = fadd fast float %5088, %4452
  %5092 = fadd fast float %5089, %4453
  %5093 = fsub fast float %5027, %4433
  %5094 = fsub fast float %5028, %4434
  %5095 = fsub fast float %5029, %4435
  %5096 = fmul fast float %5093, %4990
  %5097 = fmul fast float %5094, %4990
  %5098 = fmul fast float %5095, %4990
  %5099 = fadd fast float %5096, %4433
  %5100 = fadd fast float %5097, %4434
  %5101 = fadd fast float %5098, %4435
  %5102 = fadd fast float %5081, %4403
  %5103 = fadd fast float %5082, %4404
  %5104 = fadd fast float %5083, %4405
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 25, float %5105)  ; Rsqrt(value)
  %5107 = fmul fast float %5102, %5106
  %5108 = fmul fast float %5103, %5106
  %5109 = fmul fast float %5104, %5106
  %5110 = fsub fast float %5107, %4403
  %5111 = fsub fast float %5108, %4404
  %5112 = fsub fast float %5109, %4405
  %5113 = fmul fast float %5110, %4990
  %5114 = fmul fast float %5111, %4990
  %5115 = fmul fast float %5112, %4990
  %5116 = fadd fast float %5113, %4403
  %5117 = fadd fast float %5114, %4404
  %5118 = fadd fast float %5115, %4405
  %5119 = call float @dx.op.binary.f32(i32 36, float %4409, float %5038)  ; FMin(a,b)
  %5120 = fsub fast float %5119, %4409
  %5121 = fmul fast float %5120, %4990
  %5122 = fadd fast float %5121, %4409
  %5123 = fsub fast float %5051, %4436
  %5124 = fmul fast float %5123, %4990
  %5125 = fadd fast float %5124, %4436
  br label %5126

; <label>:5126                                    ; preds = %4988, %4950, %4852
  %5127 = phi float [ %5099, %4988 ], [ %4433, %4950 ], [ %4433, %4852 ]
  %5128 = phi float [ %5100, %4988 ], [ %4434, %4950 ], [ %4434, %4852 ]
  %5129 = phi float [ %5101, %4988 ], [ %4435, %4950 ], [ %4435, %4852 ]
  %5130 = phi float [ %5090, %4988 ], [ %4451, %4950 ], [ %4451, %4852 ]
  %5131 = phi float [ %5091, %4988 ], [ %4452, %4950 ], [ %4452, %4852 ]
  %5132 = phi float [ %5092, %4988 ], [ %4453, %4950 ], [ %4453, %4852 ]
  %5133 = phi float [ %5116, %4988 ], [ %4403, %4950 ], [ %4403, %4852 ]
  %5134 = phi float [ %5117, %4988 ], [ %4404, %4950 ], [ %4404, %4852 ]
  %5135 = phi float [ %5118, %4988 ], [ %4405, %4950 ], [ %4405, %4852 ]
  %5136 = phi float [ %5125, %4988 ], [ %4436, %4950 ], [ %4436, %4852 ]
  %5137 = phi float [ %5122, %4988 ], [ %4409, %4950 ], [ %4409, %4852 ]
  br i1 %4850, label %5138, label %5411

; <label>:5138                                    ; preds = %5126
  %5139 = call float @dx.op.unary.f32(i32 23, float %5137)  ; Log(value)
  %5140 = fmul fast float %5139, 4.000000e+00
  %5141 = call float @dx.op.unary.f32(i32 21, float %5140)  ; Exp(value)
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = fmul fast float %5143, %62
  %5145 = fmul fast float %5143, %63
  %5146 = fmul fast float %5143, %64
  %5147 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5148 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5149 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5150 = call float @dx.op.unary.f32(i32 23, float %5147)  ; Log(value)
  %5151 = call float @dx.op.unary.f32(i32 23, float %5148)  ; Log(value)
  %5152 = call float @dx.op.unary.f32(i32 23, float %5149)  ; Log(value)
  %5153 = fmul fast float %5150, 4.000000e+00
  %5154 = fmul fast float %5151, 4.000000e+00
  %5155 = fmul fast float %5152, 4.000000e+00
  %5156 = call float @dx.op.unary.f32(i32 21, float %5153)  ; Exp(value)
  %5157 = call float @dx.op.unary.f32(i32 21, float %5154)  ; Exp(value)
  %5158 = call float @dx.op.unary.f32(i32 21, float %5155)  ; Exp(value)
  %5159 = fadd fast float %5157, %5156
  %5160 = fadd fast float %5159, %5158
  %5161 = fdiv fast float 1.000000e+00, %5160
  %5162 = fmul fast float %5161, %5156
  %5163 = fcmp fast ogt float %71, 0.000000e+00
  %5164 = fcmp fast ogt float %72, 0.000000e+00
  %5165 = fcmp fast ogt float %73, 0.000000e+00
  %5166 = fcmp fast olt float %71, 0.000000e+00
  %5167 = fcmp fast olt float %72, 0.000000e+00
  %5168 = fcmp fast olt float %73, 0.000000e+00
  %5169 = zext i1 %5163 to i32
  %5170 = zext i1 %5164 to i32
  %5171 = zext i1 %5165 to i32
  %5172 = zext i1 %5166 to i32
  %5173 = zext i1 %5167 to i32
  %5174 = zext i1 %5168 to i32
  %5175 = sub nsw i32 %5169, %5172
  %5176 = sub nsw i32 %5170, %5173
  %5177 = sub nsw i32 %5171, %5174
  %5178 = call float @dx.op.unary.f32(i32 83, float %5144)  ; DerivCoarseX(value)
  %5179 = call float @dx.op.unary.f32(i32 83, float %5145)  ; DerivCoarseX(value)
  %5180 = call float @dx.op.unary.f32(i32 83, float %5146)  ; DerivCoarseX(value)
  %5181 = call float @dx.op.unary.f32(i32 84, float %5144)  ; DerivCoarseY(value)
  %5182 = call float @dx.op.unary.f32(i32 84, float %5145)  ; DerivCoarseY(value)
  %5183 = call float @dx.op.unary.f32(i32 84, float %5146)  ; DerivCoarseY(value)
  %5184 = fcmp fast ole float %271, %5162
  %5185 = fmul fast float %5161, %5159
  %5186 = fcmp fast ole float %271, %5185
  %5187 = select i1 %5186, float %5146, float %5144
  %5188 = select i1 %5186, float %5144, float %5145
  %5189 = select i1 %5184, float %5145, float %5187
  %5190 = select i1 %5184, float %5146, float %5188
  %5191 = select i1 %5186, float %5180, float %5178
  %5192 = select i1 %5186, float %5178, float %5179
  %5193 = select i1 %5184, float %5179, float %5191
  %5194 = select i1 %5184, float %5180, float %5192
  %5195 = select i1 %5186, float %5183, float %5181
  %5196 = select i1 %5186, float %5181, float %5182
  %5197 = select i1 %5184, float %5182, float %5195
  %5198 = select i1 %5184, float %5183, float %5196
  %5199 = call float @dx.op.unary.f32(i32 27, float %5189)  ; Round_ni(value)
  %5200 = call float @dx.op.unary.f32(i32 27, float %5190)  ; Round_ni(value)
  %5201 = fptosi float %5199 to i32
  %5202 = fptosi float %5200 to i32
  %5203 = xor i32 %5202, %5201
  %5204 = sitofp i32 %5203 to float
  %5205 = fptosi float %5204 to i32
  %5206 = sitofp i32 %5205 to float
  %5207 = fmul fast float %5206, 0x3FE3C6EF40000000
  %5208 = frem fast float %5199, 2.560000e+02
  %5209 = frem fast float %5200, 2.560000e+02
  %5210 = fptoui float %5208 to i32
  %5211 = fptoui float %5209 to i32
  %5212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5210, i32 %5211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = fadd fast float %5213, %5207
  %5217 = fadd fast float %5214, %5207
  %5218 = fadd fast float %5215, %5207
  %5219 = call float @dx.op.unary.f32(i32 22, float %5216)  ; Frc(value)
  %5220 = call float @dx.op.unary.f32(i32 22, float %5217)  ; Frc(value)
  %5221 = call float @dx.op.unary.f32(i32 22, float %5218)  ; Frc(value)
  %5222 = fmul fast float %5221, 0x401921FB60000000
  %5223 = call float @dx.op.unary.f32(i32 13, float %5222)  ; Sin(value)
  %5224 = call float @dx.op.unary.f32(i32 12, float %5222)  ; Cos(value)
  %5225 = fsub fast float -0.000000e+00, %5224
  %5226 = fmul fast float %5224, %5189
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5223, float %5190, float %5226)  ; FMad(a,b,c)
  %5228 = fmul fast float %5223, %5189
  %5229 = call float @dx.op.tertiary.f32(i32 46, float %5225, float %5190, float %5228)  ; FMad(a,b,c)
  %5230 = fadd fast float %5227, %5219
  %5231 = fadd fast float %5229, %5220
  %5232 = extractvalue %dx.types.CBufRet.f32 %5142, 3
  %5233 = bitcast float %5232 to i32
  %5234 = icmp eq i32 %5233, 0
  br i1 %5234, label %5273, label %5235

; <label>:5235                                    ; preds = %5138
  %5236 = add i32 %5233, 0
  %5237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5238 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5237, %dx.types.Handle %111, float %5230, float %5231, float undef, float undef, i32 0, i32 0, i32 undef, float %5193, float %5194, float undef, float %5197, float %5198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5243 = fsub fast float 1.000000e+00, %4848
  %5244 = call float @dx.op.binary.f32(i32 35, float %5243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5245 = bitcast float %4848 to i32
  %5246 = sitofp i32 %5245 to float
  %5247 = fadd fast float %5246, 0xC1CFBF8940000000
  %5248 = fmul fast float %5242, %5247
  %5249 = fadd fast float %5248, 0x41CFBF8940000000
  %5250 = fptosi float %5249 to i32
  %5251 = bitcast i32 %5250 to float
  %5252 = bitcast float %5244 to i32
  %5253 = sitofp i32 %5252 to float
  %5254 = fadd fast float %5253, 0xC1CFBF8940000000
  %5255 = fmul fast float %5254, %5242
  %5256 = fadd fast float %5255, 0x41CFBF8940000000
  %5257 = fptosi float %5256 to i32
  %5258 = bitcast i32 %5257 to float
  %5259 = fmul fast float %5251, %5241
  %5260 = fmul fast float %5258, %5241
  %5261 = fsub fast float %5244, %5259
  %5262 = fadd fast float %5260, %5244
  %5263 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5265 = fsub fast float %5239, %5263
  %5266 = fsub fast float %5264, %5263
  %5267 = bitcast float %5266 to i32
  %5268 = sub nsw i32 2129859010, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fmul fast float %5269, %5265
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5272 = fcmp fast olt float %5271, 0x3F70101020000000
  br i1 %5272, label %5411, label %5273

; <label>:5273                                    ; preds = %5235, %5138
  %5274 = phi float [ %5271, %5235 ], [ %4848, %5138 ]
  %5275 = fmul fast float %5274, %5141
  %5276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.i32 %5276, 1
  %5278 = extractvalue %dx.types.CBufRet.i32 %5276, 0
  %5279 = add i32 %5278, 0
  %5280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5281 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5280, %dx.types.Handle %110, float %5230, float %5231, float undef, float undef, i32 0, i32 0, i32 undef, float %5193, float %5194, float undef, float %5197, float %5198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = extractvalue %dx.types.ResRet.f32 %5281, 3
  %5286 = and i32 %5277, 255
  %5287 = uitofp i32 %5286 to float
  %5288 = lshr i32 %5277, 8
  %5289 = and i32 %5288, 255
  %5290 = uitofp i32 %5289 to float
  %5291 = fmul fast float %5285, %5287
  %5292 = fadd fast float %5291, %5290
  %5293 = fmul fast float %5292, 0x3F70101000000000
  %5294 = fadd fast float %5293, 0xBFB99999A0000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5295, 0x3FF1C71C80000000
  %5297 = call float @dx.op.binary.f32(i32 36, float %5293, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5298 = fsub fast float 1.000000e+00, %5296
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fmul fast float %5299, %5282
  %5301 = fmul fast float %5299, %5283
  %5302 = fmul fast float %5299, %5284
  %5303 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5306 = fmul fast float %5296, %5282
  %5307 = fmul fast float %5296, %5283
  %5308 = fmul fast float %5296, %5284
  %5309 = fadd fast float %5306, %5297
  %5310 = fadd fast float %5307, %5297
  %5311 = fadd fast float %5308, %5297
  %5312 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5314 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.i32 %5315, 3
  %5317 = extractvalue %dx.types.CBufRet.i32 %5315, 2
  %5318 = add i32 %5317, 0
  %5319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5319, %dx.types.Handle %110, float %5230, float %5231, float undef, float undef, i32 0, i32 0, i32 undef, float %5193, float %5194, float undef, float %5197, float %5198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5324 = extractvalue %dx.types.ResRet.f32 %5320, 3
  %5325 = and i32 %5316, 255
  %5326 = uitofp i32 %5325 to float
  %5327 = lshr i32 %5316, 8
  %5328 = and i32 %5327, 255
  %5329 = uitofp i32 %5328 to float
  %5330 = lshr i32 %5316, 16
  %5331 = and i32 %5330, 255
  %5332 = uitofp i32 %5331 to float
  %5333 = fmul fast float %5332, 0x3F70101000000000
  %5334 = fmul fast float %5321, %5326
  %5335 = fadd fast float %5334, %5329
  %5336 = fmul fast float %5335, 0x3F70101000000000
  %5337 = fadd fast float %5322, -5.000000e-01
  %5338 = fadd fast float %5324, -5.000000e-01
  %5339 = fmul fast float %5337, %5333
  %5340 = fmul fast float %5338, %5333
  %5341 = fadd fast float %5339, 5.000000e-01
  %5342 = fadd fast float %5340, 5.000000e-01
  %5343 = fmul fast float %5341, 2.000000e+00
  %5344 = fadd fast float %5343, -1.000000e+00
  %5345 = fmul fast float %5342, 2.000000e+00
  %5346 = fadd fast float %5345, -1.000000e+00
  %5347 = fadd fast float %5344, %5346
  %5348 = fmul fast float %5347, 5.000000e-01
  %5349 = fsub fast float %5344, %5346
  %5350 = fmul fast float %5349, 5.000000e-01
  %5351 = call float @dx.op.unary.f32(i32 6, float %5348)  ; FAbs(value)
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5354 = fsub fast float %5352, %5353
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5350, float %5354, float %5348, float %5350, float %5354)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = call float @dx.op.unary.f32(i32 25, float %5355)  ; Rsqrt(value)
  %5357 = fmul fast float %5348, %5356
  %5358 = fmul fast float %5350, %5356
  %5359 = select i1 %5186, i32 %5176, i32 %5177
  %5360 = select i1 %5184, i32 %5175, i32 %5359
  %5361 = sitofp i32 %5360 to float
  %5362 = fmul fast float %5354, %5361
  %5363 = fmul fast float %5362, %5356
  %5364 = select i1 %5186, float %5363, float %5358
  %5365 = select i1 %5186, float %5358, float %5363
  %5366 = select i1 %5184, float %5363, float %5357
  %5367 = select i1 %5184, float %5358, float %5364
  %5368 = select i1 %5184, float %5357, float %5365
  %5369 = fsub fast float %5303, %5130
  %5370 = fsub fast float %5304, %5131
  %5371 = fsub fast float %5305, %5132
  %5372 = fmul fast float %5369, %5275
  %5373 = fmul fast float %5370, %5275
  %5374 = fmul fast float %5371, %5275
  %5375 = fadd fast float %5372, %5130
  %5376 = fadd fast float %5373, %5131
  %5377 = fadd fast float %5374, %5132
  %5378 = fsub fast float %5312, %5127
  %5379 = fsub fast float %5313, %5128
  %5380 = fsub fast float %5314, %5129
  %5381 = fmul fast float %5378, %5275
  %5382 = fmul fast float %5379, %5275
  %5383 = fmul fast float %5380, %5275
  %5384 = fadd fast float %5381, %5127
  %5385 = fadd fast float %5382, %5128
  %5386 = fadd fast float %5383, %5129
  %5387 = fadd fast float %5366, %5133
  %5388 = fadd fast float %5367, %5134
  %5389 = fadd fast float %5368, %5135
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5387, float %5388, float %5389, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5387, %5391
  %5393 = fmul fast float %5388, %5391
  %5394 = fmul fast float %5389, %5391
  %5395 = fsub fast float %5392, %5133
  %5396 = fsub fast float %5393, %5134
  %5397 = fsub fast float %5394, %5135
  %5398 = fmul fast float %5395, %5275
  %5399 = fmul fast float %5396, %5275
  %5400 = fmul fast float %5397, %5275
  %5401 = fadd fast float %5398, %5133
  %5402 = fadd fast float %5399, %5134
  %5403 = fadd fast float %5400, %5135
  %5404 = call float @dx.op.binary.f32(i32 36, float %5137, float %5323)  ; FMin(a,b)
  %5405 = fsub fast float %5404, %5137
  %5406 = fmul fast float %5405, %5275
  %5407 = fadd fast float %5406, %5137
  %5408 = fsub fast float %5336, %5136
  %5409 = fmul fast float %5408, %5275
  %5410 = fadd fast float %5409, %5136
  br label %5411

; <label>:5411                                    ; preds = %5273, %5235, %5126, %4842
  %5412 = phi float [ %5384, %5273 ], [ %5127, %5235 ], [ %5127, %5126 ], [ %4433, %4842 ]
  %5413 = phi float [ %5385, %5273 ], [ %5128, %5235 ], [ %5128, %5126 ], [ %4434, %4842 ]
  %5414 = phi float [ %5386, %5273 ], [ %5129, %5235 ], [ %5129, %5126 ], [ %4435, %4842 ]
  %5415 = phi float [ %5375, %5273 ], [ %5130, %5235 ], [ %5130, %5126 ], [ %4451, %4842 ]
  %5416 = phi float [ %5376, %5273 ], [ %5131, %5235 ], [ %5131, %5126 ], [ %4452, %4842 ]
  %5417 = phi float [ %5377, %5273 ], [ %5132, %5235 ], [ %5132, %5126 ], [ %4453, %4842 ]
  %5418 = phi float [ %5401, %5273 ], [ %5133, %5235 ], [ %5133, %5126 ], [ %4403, %4842 ]
  %5419 = phi float [ %5402, %5273 ], [ %5134, %5235 ], [ %5134, %5126 ], [ %4404, %4842 ]
  %5420 = phi float [ %5403, %5273 ], [ %5135, %5235 ], [ %5135, %5126 ], [ %4405, %4842 ]
  %5421 = phi float [ %5410, %5273 ], [ %5136, %5235 ], [ %5136, %5126 ], [ %4436, %4842 ]
  %5422 = phi float [ %5407, %5273 ], [ %5137, %5235 ], [ %5137, %5126 ], [ %4409, %4842 ]
  %5423 = fcmp fast une float %4846, 0.000000e+00
  %5424 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 25, float %5424)  ; Rsqrt(value)
  br i1 %5423, label %5433, label %5426

; <label>:5426                                    ; preds = %5411
  %5427 = fmul fast float %5425, %201
  %5428 = fmul fast float %5425, %202
  %5429 = fmul fast float %5425, %203
  %5430 = fsub fast float -0.000000e+00, %5427
  %5431 = fsub fast float -0.000000e+00, %5428
  %5432 = fsub fast float -0.000000e+00, %5429
  br label %5600

; <label>:5433                                    ; preds = %5411
  %5434 = fmul fast float %201, %5425
  %5435 = fsub fast float -0.000000e+00, %5434
  %5436 = fmul fast float %202, %5425
  %5437 = fsub fast float -0.000000e+00, %5436
  %5438 = fmul fast float %203, %5425
  %5439 = fsub fast float -0.000000e+00, %5438
  %5440 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5437, float %5439, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = fmul fast float %4846, 2.500000e+00
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %4846, 0x4013FFFFE0000000
  %5444 = fadd fast float %5443, 0xBFFFFFFFE0000000
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = fmul fast float %4846, 0x4004000020000000
  %5447 = fadd fast float %5446, 0xBFF8000040000000
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fmul fast float %4415, 1.000000e+01
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5450, 2.000000e+00
  %5452 = fsub fast float 3.000000e+00, %5451
  %5453 = fmul fast float %5450, %5450
  %5454 = fmul fast float %5453, %5452
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fsub fast float 0x3FE3333340000000, %5421
  %5457 = fmul fast float %5456, 0x400AAAAAA0000000
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fmul fast float %5455, %5458
  %5460 = fmul fast float %5415, 0x3FEA2B8620000000
  %5461 = fmul fast float %5416, 0x3FEA2B8620000000
  %5462 = fmul fast float %5417, 0x3FEA2B8620000000
  %5463 = fadd fast float %5460, 0x3FC81DFBA0000000
  %5464 = fmul fast float %5463, %5415
  %5465 = fadd fast float %5464, 0x3F910E6020000000
  %5466 = fadd fast float %5461, 0x3FC81DFBA0000000
  %5467 = fmul fast float %5466, %5416
  %5468 = fadd fast float %5467, 0x3F910E6020000000
  %5469 = fadd fast float %5462, 0x3FC81DFBA0000000
  %5470 = fmul fast float %5469, %5417
  %5471 = fadd fast float %5470, 0x3F910E6020000000
  %5472 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5474 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5475 = fsub fast float %5472, %5415
  %5476 = fsub fast float %5473, %5416
  %5477 = fsub fast float %5474, %5417
  %5478 = fmul fast float %5475, %5442
  %5479 = fmul fast float %5478, %5459
  %5480 = fmul fast float %5476, %5442
  %5481 = fmul fast float %5480, %5459
  %5482 = fmul fast float %5477, %5442
  %5483 = fmul fast float %5482, %5459
  %5484 = fadd fast float %5479, %5415
  %5485 = fadd fast float %5481, %5416
  %5486 = fadd fast float %5483, %5417
  %5487 = fmul fast float %5422, %5422
  %5488 = fmul fast float %5487, %5487
  %5489 = fadd fast float %5445, 1.000000e+00
  %5490 = fsub fast float %5489, %5459
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fsub fast float 1.000000e+00, %5488
  %5495 = call float @dx.op.binary.f32(i32 36, float %5491, float %5494)  ; FMin(a,b)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5497 = call float @dx.op.binary.f32(i32 35, float %5495, float %5496)  ; FMax(a,b)
  %5498 = fadd fast float %5493, 0xBFE4CCCCC0000000
  %5499 = fmul fast float %5498, 0x4006DB6DA0000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %5500, 2.000000e+00
  %5502 = fsub fast float 3.000000e+00, %5501
  %5503 = bitcast float %5412 to i32
  %5504 = ashr i32 %5503, 1
  %5505 = add nsw i32 %5504, 532487669
  %5506 = bitcast i32 %5505 to float
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = bitcast float %5507 to i32
  %5509 = sub nsw i32 2129859010, %5508
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5510, 2.000000e+00
  %5512 = bitcast float %5413 to i32
  %5513 = ashr i32 %5512, 1
  %5514 = add nsw i32 %5513, 532487669
  %5515 = bitcast i32 %5514 to float
  %5516 = fsub fast float 1.000000e+00, %5515
  %5517 = bitcast float %5516 to i32
  %5518 = sub nsw i32 2129859010, %5517
  %5519 = bitcast i32 %5518 to float
  %5520 = fmul fast float %5519, 2.000000e+00
  %5521 = bitcast float %5414 to i32
  %5522 = ashr i32 %5521, 1
  %5523 = add nsw i32 %5522, 532487669
  %5524 = bitcast i32 %5523 to float
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = fmul fast float %5528, 2.000000e+00
  %5530 = fsub fast float 0x4002A9FBE0000000, %5511
  %5531 = fadd fast float %5511, 0x3FD54FDF00000000
  %5532 = bitcast float %5531 to i32
  %5533 = sub nsw i32 2129859010, %5532
  %5534 = bitcast i32 %5533 to float
  %5535 = fmul fast float %5534, %5530
  %5536 = fmul fast float %5535, %5535
  %5537 = fsub fast float 0x4002A9FBE0000000, %5520
  %5538 = fadd fast float %5520, 0x3FD54FDF00000000
  %5539 = bitcast float %5538 to i32
  %5540 = sub nsw i32 2129859010, %5539
  %5541 = bitcast i32 %5540 to float
  %5542 = fmul fast float %5541, %5537
  %5543 = fmul fast float %5542, %5542
  %5544 = fsub fast float 0x4002A9FBE0000000, %5529
  %5545 = fadd fast float %5529, 0x3FD54FDF00000000
  %5546 = bitcast float %5545 to i32
  %5547 = sub nsw i32 2129859010, %5546
  %5548 = bitcast i32 %5547 to float
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %5549, %5549
  %5551 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5536)  ; FMax(a,b)
  %5552 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5543)  ; FMax(a,b)
  %5553 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5550)  ; FMax(a,b)
  %5554 = fsub fast float 1.000000e+00, %5440
  %5555 = fadd fast float %5554, %5455
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fsub fast float 1.000000e+00, %4827
  %5558 = fmul fast float %5497, %5557
  %5559 = fmul fast float %5500, %5500
  %5560 = fmul fast float %5559, %5558
  %5561 = fmul fast float %5560, %5502
  %5562 = fmul fast float %5557, 0xBFE99999A0000000
  %5563 = fmul fast float %5562, %5442
  %5564 = fmul fast float %5563, %5459
  %5565 = fadd fast float %5564, 1.000000e+00
  %5566 = fadd fast float %5421, -1.000000e+00
  %5567 = fmul fast float %5565, %5566
  %5568 = fadd fast float %5567, 1.000000e+00
  %5569 = fsub fast float %5551, %5412
  %5570 = fsub fast float %5552, %5413
  %5571 = fsub fast float %5553, %5414
  %5572 = fmul fast float %5561, %5569
  %5573 = fmul fast float %5561, %5570
  %5574 = fmul fast float %5561, %5571
  %5575 = fadd fast float %5572, %5412
  %5576 = fadd fast float %5573, %5413
  %5577 = fadd fast float %5574, %5414
  %5578 = fsub fast float %121, %5418
  %5579 = fsub fast float %122, %5419
  %5580 = fsub fast float %123, %5420
  %5581 = fmul fast float %5561, %5578
  %5582 = fmul fast float %5561, %5579
  %5583 = fmul fast float %5561, %5580
  %5584 = fadd fast float %5581, %5418
  %5585 = fadd fast float %5582, %5419
  %5586 = fadd fast float %5583, %5420
  %5587 = fmul fast float %5561, %5556
  %5588 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = fmul fast float %5587, %5589
  %5591 = fadd fast float %5590, %5588
  %5592 = fsub fast float 1.000000e+00, %5422
  %5593 = fmul fast float %5561, %5592
  %5594 = fadd fast float %5593, %5422
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 25, float %5595)  ; Rsqrt(value)
  %5597 = fmul fast float %5584, %5596
  %5598 = fmul fast float %5585, %5596
  %5599 = fmul fast float %5586, %5596
  br label %5600

; <label>:5600                                    ; preds = %5433, %5426
  %5601 = phi float [ %5432, %5426 ], [ %5439, %5433 ]
  %5602 = phi float [ %5431, %5426 ], [ %5437, %5433 ]
  %5603 = phi float [ %5430, %5426 ], [ %5435, %5433 ]
  %5604 = phi float [ %5429, %5426 ], [ %5438, %5433 ]
  %5605 = phi float [ %5428, %5426 ], [ %5436, %5433 ]
  %5606 = phi float [ %5427, %5426 ], [ %5434, %5433 ]
  %5607 = phi float [ %5412, %5426 ], [ %5575, %5433 ]
  %5608 = phi float [ %5413, %5426 ], [ %5576, %5433 ]
  %5609 = phi float [ %5414, %5426 ], [ %5577, %5433 ]
  %5610 = phi float [ %5415, %5426 ], [ %5484, %5433 ]
  %5611 = phi float [ %5416, %5426 ], [ %5485, %5433 ]
  %5612 = phi float [ %5417, %5426 ], [ %5486, %5433 ]
  %5613 = phi float [ %5418, %5426 ], [ %5597, %5433 ]
  %5614 = phi float [ %5419, %5426 ], [ %5598, %5433 ]
  %5615 = phi float [ %5420, %5426 ], [ %5599, %5433 ]
  %5616 = phi float [ %5421, %5426 ], [ %5591, %5433 ]
  %5617 = phi float [ %5422, %5426 ], [ %5594, %5433 ]
  %5618 = fsub fast float -0.000000e+00, %203
  %5619 = select i1 %260, float 0.000000e+00, float %5609
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5603, float %5602, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5605, float %5604, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = fmul fast float %5623, %5613
  %5625 = fmul fast float %5623, %5614
  %5626 = fmul fast float %5623, %5615
  %5627 = fsub fast float %5606, %5624
  %5628 = fsub fast float %5605, %5625
  %5629 = fsub fast float %5604, %5626
  %5630 = call float @dx.op.binary.f32(i32 36, float %5617, float 1.000000e+00)  ; FMin(a,b)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = bitcast float %5631 to i32
  %5633 = ashr i32 %5632, 1
  %5634 = add nsw i32 %5633, 532487669
  %5635 = bitcast i32 %5634 to float
  %5636 = fsub fast float 1.000000e+00, %5616
  %5637 = call float @dx.op.binary.f32(i32 35, float %5636, float 0x3F847AE140000000)  ; FMax(a,b)
  %5638 = fmul fast float %5637, %5637
  %5639 = fmul fast float %5638, %5638
  %5640 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5635, float %5639, float %5640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5642 = extractvalue %dx.types.ResRet.f32 %5641, 0
  %5643 = fsub fast float 1.000000e+00, %5617
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = fsub fast float 1.000000e+00, %81
  %5647 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5647, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5649 = fdiv fast float %5646, %5648
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, 5.000000e-01
  %5653 = fadd fast float %5652, 5.000000e-01
  %5654 = fmul fast float %5653, %81
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5649
  %5658 = fadd fast float %5654, %5657
  %5659 = fsub fast float 5.000000e-01, %5652
  %5660 = fmul fast float %5659, %5610
  %5661 = fmul fast float %5659, %5611
  %5662 = fmul fast float %5659, %5612
  %5663 = fadd fast float %5658, %5660
  %5664 = fadd fast float %5658, %5661
  %5665 = fadd fast float %5658, %5662
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, 5.000000e-01
  %5669 = fadd fast float %5668, 5.000000e-01
  %5670 = fmul fast float %5669, %81
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5672, %5649
  %5674 = fadd fast float %5670, %5673
  %5675 = fsub fast float 5.000000e-01, %5668
  %5676 = fmul fast float %5675, %5610
  %5677 = fmul fast float %5675, %5611
  %5678 = fmul fast float %5675, %5612
  %5679 = fadd fast float %5674, %5676
  %5680 = fadd fast float %5674, %5677
  %5681 = fadd fast float %5674, %5678
  %5682 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = call float @dx.op.binary.f32(i32 36, float %5610, float %5684)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5631
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5611, float %5684)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5631
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = call float @dx.op.binary.f32(i32 36, float %5612, float %5684)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5631
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5630, %82
  %5704 = fmul fast float %5703, %5663
  %5705 = fmul fast float %5704, %5690
  %5706 = fmul fast float %5630, %83
  %5707 = fmul fast float %5706, %5664
  %5708 = fmul fast float %5707, %5696
  %5709 = fmul fast float %5630, %84
  %5710 = fmul fast float %5709, %5665
  %5711 = fmul fast float %5710, %5702
  %5712 = call float @dx.op.binary.f32(i32 36, float %5607, float %5684)  ; FMin(a,b)
  %5713 = fmul fast float %5712, %5631
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = bitcast float %5714 to i32
  %5716 = sub nsw i32 2129859010, %5715
  %5717 = bitcast i32 %5716 to float
  %5718 = call float @dx.op.binary.f32(i32 36, float %5608, float %5684)  ; FMin(a,b)
  %5719 = fmul fast float %5718, %5631
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = call float @dx.op.binary.f32(i32 36, float %5619, float %5684)  ; FMin(a,b)
  %5725 = fmul fast float %5724, %5631
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = bitcast float %5726 to i32
  %5728 = sub nsw i32 2129859010, %5727
  %5729 = bitcast i32 %5728 to float
  %5730 = fmul fast float %5703, %5679
  %5731 = fmul fast float %5730, %5717
  %5732 = fmul fast float %5706, %5680
  %5733 = fmul fast float %5732, %5723
  %5734 = fmul fast float %5709, %5681
  %5735 = fmul fast float %5734, %5729
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5708, float %5711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = select i1 %260, float 0.000000e+00, float %5705
  %5738 = select i1 %260, float %5736, float %5708
  %5739 = select i1 %260, float 0.000000e+00, float %5711
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5733, float %5735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = select i1 %260, float 0.000000e+00, float %5731
  %5742 = select i1 %260, float %5740, float %5733
  %5743 = select i1 %260, float 0.000000e+00, float %5735
  %5744 = fmul fast float %3809, %3809
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = fmul fast float %5621, 9.843750e-01
  %5747 = fmul fast float %5616, 9.843750e-01
  %5748 = fadd fast float %5746, 7.812500e-03
  %5749 = fadd fast float %5747, 7.812500e-03
  %5750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5748, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5754 = extractvalue %dx.types.ResRet.f32 %5750, 3
  %5755 = fsub fast float 1.000000e+00, %5745
  %5756 = fsub fast float %5753, %5751
  %5757 = fsub fast float %5754, %5752
  %5758 = fmul fast float %5756, %5755
  %5759 = fmul fast float %5757, %5755
  %5760 = fadd fast float %5758, %5751
  %5761 = fadd fast float %5759, %5752
  %5762 = fmul fast float %5760, %5607
  %5763 = fmul fast float %5760, %5608
  %5764 = fmul fast float %5760, %5619
  %5765 = fadd fast float %5762, %5761
  %5766 = fadd fast float %5763, %5761
  %5767 = fadd fast float %5764, %5761
  %5768 = fcmp fast ogt float %4410, 0.000000e+00
  br i1 %5768, label %5769, label %5795

; <label>:5769                                    ; preds = %5600
  %5770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4410, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5774 = fadd fast float %5771, -5.000000e-01
  %5775 = fadd fast float %5772, -5.000000e-01
  %5776 = fadd fast float %5773, -5.000000e-01
  %5777 = fsub fast float 1.000000e+00, %5607
  %5778 = fsub fast float 1.000000e+00, %5608
  %5779 = fsub fast float 1.000000e+00, %5619
  %5780 = fmul fast float %5607, 4.000000e+00
  %5781 = fmul fast float %5780, %5777
  %5782 = fmul fast float %5781, %5774
  %5783 = fmul fast float %5608, 4.000000e+00
  %5784 = fmul fast float %5783, %5778
  %5785 = fmul fast float %5784, %5775
  %5786 = fmul fast float %5619, 4.000000e+00
  %5787 = fmul fast float %5786, %5779
  %5788 = fmul fast float %5787, %5776
  %5789 = fadd fast float %5782, %5765
  %5790 = fadd fast float %5785, %5766
  %5791 = fadd fast float %5788, %5767
  %5792 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5793 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5794 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  br label %5795

; <label>:5795                                    ; preds = %5769, %5600
  %5796 = phi float [ %5792, %5769 ], [ %5765, %5600 ]
  %5797 = phi float [ %5793, %5769 ], [ %5766, %5600 ]
  %5798 = phi float [ %5794, %5769 ], [ %5767, %5600 ]
  %5799 = call float @dx.op.binary.f32(i32 35, float %5797, float %5798)  ; FMax(a,b)
  %5800 = call float @dx.op.binary.f32(i32 35, float %5796, float %5799)  ; FMax(a,b)
  %5801 = fsub fast float 1.000000e+00, %5800
  %5802 = fmul fast float %5800, %5616
  %5803 = fadd fast float %5802, %5616
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5807 = fmul fast float %5803, %5805
  %5808 = fadd fast float %5807, %5806
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fsub fast float 1.000000e+00, %5642
  %5811 = fadd fast float %5810, %5809
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fcmp fast olt float %5812, 1.000000e+00
  br i1 %5813, label %5814, label %6290

; <label>:5814                                    ; preds = %5795
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5818 = fmul fast float %5816, %114
  %5819 = fmul fast float %5817, %115
  %5820 = fptoui float %5818 to i32
  %5821 = fptoui float %5819 to i32
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5826 = fadd fast float %101, -4.000000e+00
  %5827 = call float @dx.op.binary.f32(i32 35, float %5826, float 0.000000e+00)  ; FMax(a,b)
  %5828 = fadd fast float %5827, %5823
  %5829 = fmul fast float %5828, %5824
  %5830 = call float @dx.op.unary.f32(i32 23, float %5829)  ; Log(value)
  %5831 = fmul fast float %5830, %5825
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5834 = fmul fast float %5831, %5833
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.i32 %5836, 1
  %5838 = add i32 %5837, -1
  %5839 = uitofp i32 %5837 to float
  %5840 = fmul fast float %5839, %5835
  %5841 = fptoui float %5840 to i32
  %5842 = call i32 @dx.op.binary.i32(i32 40, i32 %5841, i32 %5838)  ; UMin(a,b)
  %5843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.i32 %5843, 2
  %5845 = extractvalue %dx.types.CBufRet.i32 %5843, 3
  %5846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5821, i32 %5844, i32 %5820)  ; UMad(a,b,c)
  %5847 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5842, i32 %5845, i32 %5846)  ; UMad(a,b,c)
  %5848 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5849 = fptoui float %5848 to i32
  %5850 = lshr i32 %5849, 5
  %5851 = call i32 @dx.op.binary.i32(i32 40, i32 %5850, i32 8191)  ; UMin(a,b)
  %5852 = fsub fast float %4817, %203
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fcmp fast ogt float %5853, 0.000000e+00
  %5855 = fcmp fast ogt float %5629, 0.000000e+00
  %5856 = and i1 %5855, %5854
  br i1 %5856, label %5857, label %5886

; <label>:5857                                    ; preds = %5814
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5858, float -1.000000e+00)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 36, float %5859, float 1.000000e+00)  ; FMin(a,b)
  %5861 = fmul fast float %5860, %5860
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = fmul fast float %5862, 0x3FFC6E2300000000
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = fcmp fast ogt float %5864, 0.000000e+00
  %5866 = call float @dx.op.unary.f32(i32 24, float %5864)  ; Sqrt(value)
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = call float @dx.op.unary.f32(i32 23, float %5867)  ; Log(value)
  %5869 = fmul fast float %5868, 5.000000e+00
  %5870 = call float @dx.op.unary.f32(i32 21, float %5869)  ; Exp(value)
  %5871 = fmul fast float %5870, 0x3FEF591A60000000
  %5872 = fadd fast float %5871, 0x3F94DCB540000000
  %5873 = select i1 %5865, float %5872, float 1.000000e+00
  %5874 = fcmp fast oge float %5873, 1.000000e+00
  %5875 = fmul fast float %5858, 2.000000e+00
  %5876 = fadd fast float %5875, %5629
  %5877 = select i1 %5874, float %5876, float %5629
  %5878 = fsub fast float %5877, %5629
  %5879 = fmul fast float %5878, %5853
  %5880 = fadd fast float %5879, %5629
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5880, float %5627, float %5628, float %5880)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = call float @dx.op.unary.f32(i32 25, float %5881)  ; Rsqrt(value)
  %5883 = fmul fast float %5882, %5627
  %5884 = fmul fast float %5882, %5628
  %5885 = fmul fast float %5880, %5882
  br label %5886

; <label>:5886                                    ; preds = %5857, %5814
  %5887 = phi float [ %5883, %5857 ], [ %5627, %5814 ]
  %5888 = phi float [ %5884, %5857 ], [ %5628, %5814 ]
  %5889 = phi float [ %5885, %5857 ], [ %5629, %5814 ]
  %5890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.i32 %5890, 2
  %5892 = add nsw i32 %5891, -1
  %5893 = call i32 @dx.op.binary.i32(i32 37, i32 %5892, i32 0)  ; IMax(a,b)
  %5894 = shl i32 %5851, 2
  %5895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5894, i32 undef)  ; BufferLoad(srv,index,wot)
  %5896 = extractvalue %dx.types.ResRet.i32 %5895, 0
  %5897 = lshr i32 %5896, 16
  %5898 = and i32 %5896, 65535
  %5899 = lshr i32 %5896, 21
  %5900 = lshr i32 %5898, 5
  %5901 = call i32 @dx.op.binary.i32(i32 40, i32 %5900, i32 %5893)  ; UMin(a,b)
  %5902 = icmp ugt i32 %5899, %5901
  br i1 %5902, label %6266, label %5903

; <label>:5903                                    ; preds = %5886
  br label %5904

; <label>:5904                                    ; preds = %6258, %5903
  %5905 = phi float [ %6259, %6258 ], [ 0.000000e+00, %5903 ]
  %5906 = phi float [ %6260, %6258 ], [ 0.000000e+00, %5903 ]
  %5907 = phi float [ %6261, %6258 ], [ 0.000000e+00, %5903 ]
  %5908 = phi float [ %6262, %6258 ], [ 1.000000e+00, %5903 ]
  %5909 = phi i32 [ %6263, %6258 ], [ %5899, %5903 ]
  %5910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.i32 %5910, 2
  %5912 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5847, i32 %5911, i32 %5909)  ; UMad(a,b,c)
  %5913 = shl i32 %5912, 2
  %5914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5913, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.i32 %5914, 0
  %5916 = shl i32 %5909, 5
  %5917 = sub nsw i32 %5897, %5916
  %5918 = call i32 @dx.op.binary.i32(i32 37, i32 %5917, i32 0)  ; IMax(a,b)
  %5919 = call i32 @dx.op.binary.i32(i32 38, i32 %5918, i32 31)  ; IMin(a,b)
  %5920 = sub nsw i32 1, %5897
  %5921 = add nsw i32 %5920, %5898
  %5922 = call i32 @dx.op.binary.i32(i32 37, i32 %5921, i32 0)  ; IMax(a,b)
  %5923 = call i32 @dx.op.binary.i32(i32 38, i32 %5922, i32 32)  ; IMin(a,b)
  %5924 = and i32 %5923, 31
  %5925 = shl i32 -1, %5924
  %5926 = xor i32 %5925, -1
  %5927 = and i32 %5919, 31
  %5928 = shl i32 %5926, %5927
  %5929 = icmp eq i32 %5923, 32
  %5930 = select i1 %5929, i32 -1, i32 %5928
  %5931 = and i32 %5930, %5915
  %5932 = icmp eq i32 %5931, 0
  br i1 %5932, label %6258, label %5933

; <label>:5933                                    ; preds = %5904
  br label %5934

; <label>:5934                                    ; preds = %6041, %5933
  %5935 = phi float [ %6042, %6041 ], [ %5905, %5933 ]
  %5936 = phi float [ %6043, %6041 ], [ %5906, %5933 ]
  %5937 = phi float [ %6044, %6041 ], [ %5907, %5933 ]
  %5938 = phi float [ %6045, %6041 ], [ %5908, %5933 ]
  %5939 = phi i32 [ %5944, %6041 ], [ %5931, %5933 ]
  %5940 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5939)  ; FirstbitLo(value)
  %5941 = add i32 %5940, %5916
  %5942 = and i32 %5940, 31
  %5943 = shl i32 1, %5942
  %5944 = xor i32 %5943, %5939
  %5945 = mul i32 %5941, 72
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5945, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = add i32 %5945, 12
  %5951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5950, i32 undef)  ; BufferLoad(srv,index,wot)
  %5952 = extractvalue %dx.types.ResRet.i32 %5951, 0
  %5953 = add i32 %5945, 16
  %5954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5953, i32 undef)  ; BufferLoad(srv,index,wot)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = add i32 %5945, 28
  %5959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = add i32 %5945, 32
  %5962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5961, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.ResRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.ResRet.f32 %5962, 3
  %5967 = add i32 %5945, 48
  %5968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = add i32 %5945, 56
  %5972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5971, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 1
  %5975 = add i32 %5945, 64
  %5976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.ResRet.f32 %5976, 1
  %5979 = mul i32 %5941, 60
  %5980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.ResRet.f32 %5980, 2
  %5984 = add i32 %5979, 12
  %5985 = add i32 %5979, 48
  %5986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5985, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.ResRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.ResRet.f32 %5986, 2
  %5990 = and i32 %5952, 32767
  %5991 = bitcast float %5947 to i32
  %5992 = icmp eq i32 %5991, -1
  %5993 = bitcast float %5948 to i32
  %5994 = and i32 %5952, 32768
  %5995 = icmp ne i32 %5994, 0
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %6000 = fsub fast float %5981, %5997
  %6001 = fsub fast float %5982, %5998
  %6002 = fsub fast float %5983, %5999
  %6003 = fsub fast float %201, %6000
  %6004 = fsub fast float %202, %6001
  %6005 = fsub fast float %203, %6002
  %6006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6007, float %6008, float %6009)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = add i32 %5979, 24
  %6012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6013, float %6014, float %6015)  ; Dot3(ax,ay,az,bx,by,bz)
  %6017 = add i32 %5979, 36
  %6018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.ResRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.ResRet.f32 %6018, 2
  %6022 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6024 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6025 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6026 = fsub fast float %5987, %6023
  %6027 = fsub fast float %5988, %6024
  %6028 = fsub fast float %5989, %6025
  %6029 = fmul fast float %6026, %5955
  %6030 = fmul fast float %6027, %5956
  %6031 = fmul fast float %6028, %5957
  %6032 = call float @dx.op.binary.f32(i32 36, float %6030, float %6031)  ; FMin(a,b)
  %6033 = call float @dx.op.binary.f32(i32 36, float %6029, float %6032)  ; FMin(a,b)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = call float @dx.op.binary.f32(i32 36, float %5938, float %6034)  ; FMin(a,b)
  %6036 = uitofp i1 %5995 to float
  %6037 = fadd fast float %5853, 1.000000e+00
  %6038 = fsub fast float %6037, %6036
  %6039 = fmul fast float %6035, %6038
  %6040 = fcmp fast ogt float %6039, 0.000000e+00
  br i1 %6040, label %6047, label %6041

; <label>:6041                                    ; preds = %6189, %5934
  %6042 = phi float [ %6253, %6189 ], [ %5935, %5934 ]
  %6043 = phi float [ %6254, %6189 ], [ %5936, %5934 ]
  %6044 = phi float [ %6255, %6189 ], [ %5937, %5934 ]
  %6045 = phi float [ %6256, %6189 ], [ %5938, %5934 ]
  %6046 = icmp eq i32 %5939, %5943
  br i1 %6046, label %6257, label %5934

; <label>:6047                                    ; preds = %5934
  br i1 %5992, label %6105, label %6048

; <label>:6048                                    ; preds = %6047
  %6049 = fsub fast float -0.000000e+00, %6007
  %6050 = fsub fast float -0.000000e+00, %6008
  %6051 = fsub fast float -0.000000e+00, %6009
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fsub fast float -0.000000e+00, %6052
  %6054 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = fadd fast float %6054, %5970
  %6056 = fadd fast float %5969, %6054
  %6057 = fsub fast float -0.000000e+00, %6056
  %6058 = fcmp ogt float %6052, -0.000000e+00
  %6059 = select i1 %6058, float %6057, float %6055
  %6060 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6061 = fdiv fast float 1.000000e+00, %6060
  %6062 = fmul fast float %6059, %6061
  %6063 = call float @dx.op.binary.f32(i32 35, float %6062, float 0.000000e+00)  ; FMax(a,b)
  %6064 = fsub fast float -0.000000e+00, %6013
  %6065 = fsub fast float -0.000000e+00, %6014
  %6066 = fsub fast float -0.000000e+00, %6015
  %6067 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = fsub fast float -0.000000e+00, %6067
  %6069 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fadd fast float %6069, %5974
  %6071 = fadd fast float %5973, %6069
  %6072 = fsub fast float -0.000000e+00, %6071
  %6073 = fcmp ogt float %6067, -0.000000e+00
  %6074 = select i1 %6073, float %6072, float %6070
  %6075 = call float @dx.op.unary.f32(i32 6, float %6068)  ; FAbs(value)
  %6076 = fdiv fast float 1.000000e+00, %6075
  %6077 = fmul fast float %6074, %6076
  %6078 = call float @dx.op.binary.f32(i32 35, float %6077, float 0.000000e+00)  ; FMax(a,b)
  %6079 = fsub fast float -0.000000e+00, %6019
  %6080 = fsub fast float -0.000000e+00, %6020
  %6081 = fsub fast float -0.000000e+00, %6021
  %6082 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = fsub fast float -0.000000e+00, %6082
  %6084 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = fadd fast float %6084, %5978
  %6086 = fadd fast float %5977, %6084
  %6087 = fsub fast float -0.000000e+00, %6086
  %6088 = fcmp ogt float %6082, -0.000000e+00
  %6089 = select i1 %6088, float %6087, float %6085
  %6090 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6091 = fdiv fast float 1.000000e+00, %6090
  %6092 = fmul fast float %6089, %6091
  %6093 = call float @dx.op.binary.f32(i32 35, float %6092, float 0.000000e+00)  ; FMax(a,b)
  %6094 = call float @dx.op.binary.f32(i32 36, float %6078, float %6093)  ; FMin(a,b)
  %6095 = call float @dx.op.binary.f32(i32 36, float %6063, float %6094)  ; FMin(a,b)
  %6096 = fmul fast float %6095, %5887
  %6097 = fmul fast float %6095, %5888
  %6098 = fmul fast float %6095, %5889
  %6099 = fadd fast float %6096, %201
  %6100 = fadd fast float %6097, %202
  %6101 = fadd fast float %6098, %203
  %6102 = fsub fast float %6099, %5947
  %6103 = fsub fast float %6100, %5948
  %6104 = fsub fast float %6101, %5949
  br label %6112

; <label>:6105                                    ; preds = %6047
  %6106 = fmul fast float %5887, 8.096000e+03
  %6107 = fmul fast float %5888, 8.096000e+03
  %6108 = fmul fast float %5889, 8.096000e+03
  %6109 = fadd fast float %6106, %201
  %6110 = fadd fast float %6107, %202
  %6111 = fadd fast float %6108, %203
  br label %6112

; <label>:6112                                    ; preds = %6105, %6048
  %6113 = phi float [ %5887, %6105 ], [ %6102, %6048 ]
  %6114 = phi float [ %5888, %6105 ], [ %6103, %6048 ]
  %6115 = phi float [ %5889, %6105 ], [ %6104, %6048 ]
  %6116 = phi float [ %6109, %6105 ], [ %6099, %6048 ]
  %6117 = phi float [ %6110, %6105 ], [ %6100, %6048 ]
  %6118 = phi float [ %6111, %6105 ], [ %6101, %6048 ]
  %6119 = fcmp fast olt float %5966, 1.000000e+00
  br i1 %6119, label %6120, label %6151, !dx.controlflow.hints !100

; <label>:6120                                    ; preds = %6112
  %6121 = fmul fast float %6115, %5964
  %6122 = fmul fast float %6114, %5965
  %6123 = fsub fast float %6121, %6122
  %6124 = fmul fast float %6113, %5965
  %6125 = fmul fast float %6115, %5963
  %6126 = fsub fast float %6124, %6125
  %6127 = fmul fast float %6114, %5963
  %6128 = fmul fast float %6113, %5964
  %6129 = fsub fast float %6127, %6128
  %6130 = fmul fast float %6123, 2.000000e+00
  %6131 = fmul fast float %6126, 2.000000e+00
  %6132 = fmul fast float %6129, 2.000000e+00
  %6133 = fmul fast float %6130, %5966
  %6134 = fmul fast float %6131, %5966
  %6135 = fmul fast float %6132, %5966
  %6136 = fmul fast float %6132, %5964
  %6137 = fmul fast float %6131, %5965
  %6138 = fmul fast float %6130, %5965
  %6139 = fmul fast float %6132, %5963
  %6140 = fmul fast float %6131, %5963
  %6141 = fmul fast float %6130, %5964
  %6142 = fadd fast float %6136, %6113
  %6143 = fadd fast float %6142, %6133
  %6144 = fsub fast float %6143, %6137
  %6145 = fsub fast float %6114, %6139
  %6146 = fadd fast float %6145, %6134
  %6147 = fadd fast float %6146, %6138
  %6148 = fadd fast float %6135, %6115
  %6149 = fsub fast float %6148, %6141
  %6150 = fadd fast float %6149, %6140
  br label %6151

; <label>:6151                                    ; preds = %6120, %6112
  %6152 = phi float [ %6144, %6120 ], [ %6113, %6112 ]
  %6153 = phi float [ %6147, %6120 ], [ %6114, %6112 ]
  %6154 = phi float [ %6150, %6120 ], [ %6115, %6112 ]
  br i1 %5992, label %6186, label %6155

; <label>:6155                                    ; preds = %6151
  %6156 = fmul fast float %5616, 0x400187C840000000
  %6157 = fadd fast float %6156, 0xC00EFC2120000000
  %6158 = fmul fast float %6157, %5616
  %6159 = fadd fast float %6158, 0x3FE5D16340000000
  %6160 = fmul fast float %6159, %5616
  %6161 = fadd fast float %6160, 1.000000e+00
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fsub fast float %6116, %201
  %6164 = fsub fast float %6117, %202
  %6165 = fsub fast float %6118, %203
  %6166 = fsub fast float %6116, %5947
  %6167 = fsub fast float %6117, %5948
  %6168 = fsub fast float %6118, %5949
  %6169 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float %6163, float %6164, float %6165)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6166, float %6167, float %6168)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fadd fast float %6170, 0x3EE4F8B580000000
  %6172 = fdiv fast float %6169, %6171
  %6173 = bitcast float %6172 to i32
  %6174 = ashr i32 %6173, 1
  %6175 = add nsw i32 %6174, 532487669
  %6176 = bitcast i32 %6175 to float
  %6177 = fmul fast float %6176, %6162
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = fmul fast float %6178, 0x4009981AE0000000
  %6180 = fsub fast float 0x40111BBD80000000, %6179
  %6181 = fmul fast float %6180, %6178
  %6182 = fadd fast float %6181, 0xC0009F6020000000
  %6183 = fmul fast float %6182, %6178
  %6184 = fadd fast float %6183, 1.000000e+00
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  br label %6189

; <label>:6186                                    ; preds = %6151
  %6187 = icmp ne i32 %5993, -1
  %6188 = zext i1 %6187 to i32
  br label %6189

; <label>:6189                                    ; preds = %6186, %6155
  %6190 = phi float [ %5616, %6186 ], [ %6185, %6155 ]
  %6191 = phi i32 [ %6188, %6186 ], [ 0, %6155 ]
  %6192 = fmul float %6190, 5.000000e+00
  %6193 = fsub float 5.000000e+00, %6192
  %6194 = icmp ne i32 %6191, 0
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6197 = fadd fast float %6196, %6193
  %6198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6197)  ; FMax(a,b)
  %6199 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6200 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6201 = fadd fast float %6200, %6199
  %6202 = call float @dx.op.unary.f32(i32 6, float %6154)  ; FAbs(value)
  %6203 = fadd fast float %6201, %6202
  %6204 = fcmp fast oeq float %6203, 0.000000e+00
  %6205 = fdiv fast float 1.000000e+00, %6203
  %6206 = select i1 %6204, float 1.000000e+00, float %6205
  %6207 = fmul fast float %6206, %6152
  %6208 = fmul fast float %6206, %6153
  %6209 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6210 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6211 = fsub fast float 1.000000e+00, %6209
  %6212 = fsub fast float 1.000000e+00, %6210
  %6213 = fcmp fast oge float %6207, 0.000000e+00
  %6214 = fcmp fast oge float %6208, 0.000000e+00
  %6215 = select i1 %6213, float 1.000000e+00, float -1.000000e+00
  %6216 = select i1 %6214, float 1.000000e+00, float -1.000000e+00
  %6217 = fcmp fast ole float %6154, 0.000000e+00
  %6218 = fmul fast float %6215, %6211
  %6219 = fmul fast float %6216, %6212
  %6220 = select i1 %6217, float %6218, float %6207
  %6221 = select i1 %6217, float %6219, float %6208
  %6222 = fmul fast float %6220, 5.000000e-01
  %6223 = fmul fast float %6221, 5.000000e-01
  %6224 = fadd fast float %6222, 5.000000e-01
  %6225 = fadd fast float %6223, 5.000000e-01
  %6226 = uitofp i32 %5990 to float
  %6227 = call float @dx.op.binary.f32(i32 36, float %6198, float 3.000000e+00)  ; FMin(a,b)
  %6228 = fadd fast float %6227, 2.000000e+00
  %6229 = call float @dx.op.unary.f32(i32 21, float %6228)  ; Exp(value)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6231 = fmul fast float %6230, %6229
  %6232 = fmul fast float %6231, 2.000000e+00
  %6233 = fsub fast float 1.000000e+00, %6232
  %6234 = fmul fast float %6224, %6233
  %6235 = fmul fast float %6225, %6233
  %6236 = fadd fast float %6234, %6231
  %6237 = fadd fast float %6235, %6231
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6236, float %6237, float %6226, float undef, i32 0, i32 0, i32 undef, float %6198)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6244 = fmul fast float %6243, %5960
  %6245 = call float @dx.op.binary.f32(i32 36, float %5682, float %6244)  ; FMin(a,b)
  %6246 = select i1 %6194, float %6245, float %6244
  %6247 = fmul fast float %6239, %6039
  %6248 = fmul fast float %6247, %6246
  %6249 = fmul fast float %6240, %6039
  %6250 = fmul fast float %6249, %6246
  %6251 = fmul fast float %6241, %6039
  %6252 = fmul fast float %6251, %6246
  %6253 = fadd fast float %6248, %5935
  %6254 = fadd fast float %6250, %5936
  %6255 = fadd fast float %6252, %5937
  %6256 = fsub fast float %5938, %6039
  br label %6041

; <label>:6257                                    ; preds = %6041
  br label %6258

; <label>:6258                                    ; preds = %6257, %5904
  %6259 = phi float [ %5905, %5904 ], [ %6042, %6257 ]
  %6260 = phi float [ %5906, %5904 ], [ %6043, %6257 ]
  %6261 = phi float [ %5907, %5904 ], [ %6044, %6257 ]
  %6262 = phi float [ %5908, %5904 ], [ %6045, %6257 ]
  %6263 = add i32 %5909, 1
  %6264 = icmp ugt i32 %6263, %5901
  br i1 %6264, label %6265, label %5904, !llvm.loop !101

; <label>:6265                                    ; preds = %6258
  br label %6266

; <label>:6266                                    ; preds = %6265, %5886
  %6267 = phi float [ 0.000000e+00, %5886 ], [ %6259, %6265 ]
  %6268 = phi float [ 0.000000e+00, %5886 ], [ %6260, %6265 ]
  %6269 = phi float [ 0.000000e+00, %5886 ], [ %6261, %6265 ]
  %6270 = call float @dx.op.dot3.f32(i32 55, float %6267, float %6268, float %6269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6271 = select i1 %260, float 0.000000e+00, float %6267
  %6272 = select i1 %260, float %6270, float %6268
  %6273 = select i1 %260, float 0.000000e+00, float %6269
  %6274 = fcmp fast olt float %5812, 0.000000e+00
  %6275 = call float @dx.op.unary.f32(i32 6, float %5812)  ; FAbs(value)
  %6276 = fmul fast float %6275, %5741
  %6277 = fmul fast float %6275, %5742
  %6278 = fmul fast float %6275, %5743
  %6279 = select i1 %6274, float %5741, float %6276
  %6280 = select i1 %6274, float %5742, float %6277
  %6281 = select i1 %6274, float %5743, float %6278
  %6282 = fsub fast float 1.000000e+00, %6275
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = fmul fast float %6283, %6271
  %6285 = fmul fast float %6283, %6272
  %6286 = fmul fast float %6283, %6273
  %6287 = fadd fast float %6279, %6284
  %6288 = fadd fast float %6280, %6285
  %6289 = fadd fast float %6281, %6286
  br label %6290

; <label>:6290                                    ; preds = %6266, %5795
  %6291 = phi float [ %5741, %5795 ], [ %6287, %6266 ]
  %6292 = phi float [ %5742, %5795 ], [ %6288, %6266 ]
  %6293 = phi float [ %5743, %5795 ], [ %6289, %6266 ]
  %6294 = fmul fast float %5801, %5737
  %6295 = fmul fast float %5801, %5738
  %6296 = fmul fast float %5801, %5739
  %6297 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = fcmp fast ogt float %6297, 0x3E7FF19E20000000
  %6299 = fdiv fast float 1.000000e+00, %6297
  %6300 = select i1 %6298, float %6299, float 0.000000e+00
  %6301 = fmul fast float %6300, %5610
  %6302 = fmul fast float %6300, %5611
  %6303 = fmul fast float %6300, %5612
  %6304 = fadd fast float %6301, -1.000000e+00
  %6305 = fadd fast float %6302, -1.000000e+00
  %6306 = fadd fast float %6303, -1.000000e+00
  %6307 = fmul fast float %6304, 5.000000e-01
  %6308 = fmul fast float %6305, 5.000000e-01
  %6309 = fmul fast float %6306, 5.000000e-01
  %6310 = fadd fast float %6307, 1.000000e+00
  %6311 = fadd fast float %6308, 1.000000e+00
  %6312 = fadd fast float %6309, 1.000000e+00
  %6313 = call float @dx.op.binary.f32(i32 35, float %5621, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6314 = fdiv fast float %3809, %6313
  %6315 = fcmp fast olt float %4437, 1.270000e+02
  %6316 = fcmp fast olt float %4438, 1.270000e+02
  %6317 = fcmp fast olt float %4439, 1.270000e+02
  %6318 = fmul fast float %4437, 0xBFF7154760000000
  %6319 = fmul fast float %6318, %6314
  %6320 = fmul fast float %4438, 0xBFF7154760000000
  %6321 = fmul fast float %6320, %6314
  %6322 = fmul fast float %4439, 0xBFF7154760000000
  %6323 = fmul fast float %6322, %6314
  %6324 = call float @dx.op.unary.f32(i32 21, float %6319)  ; Exp(value)
  %6325 = call float @dx.op.unary.f32(i32 21, float %6321)  ; Exp(value)
  %6326 = call float @dx.op.unary.f32(i32 21, float %6323)  ; Exp(value)
  %6327 = call float @dx.op.unary.f32(i32 7, float %6324)  ; Saturate(value)
  %6328 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6329 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6330 = select i1 %6315, float %6327, float 0.000000e+00
  %6331 = select i1 %6316, float %6328, float 0.000000e+00
  %6332 = select i1 %6317, float %6329, float 0.000000e+00
  %6333 = fmul fast float %6330, %5801
  %6334 = fmul fast float %6331, %5801
  %6335 = fmul fast float %6332, %5801
  %6336 = fadd fast float %6333, -1.000000e+00
  %6337 = fadd fast float %6334, -1.000000e+00
  %6338 = fadd fast float %6335, -1.000000e+00
  %6339 = fmul fast float %6291, %5796
  %6340 = fmul fast float %6292, %5797
  %6341 = fmul fast float %6293, %5798
  %6342 = fsub fast float 1.000000e+00, %5621
  %6343 = bitcast float %6342 to i32
  %6344 = sitofp i32 %6343 to float
  %6345 = fmul fast float %6344, 5.000000e+00
  %6346 = fadd fast float %6345, 0xC1EFBF8940000000
  %6347 = fptosi float %6346 to i32
  %6348 = bitcast i32 %6347 to float
  %6349 = fmul fast float %6348, %4411
  %6350 = fmul fast float %5737, %6349
  %6351 = fmul fast float %6350, %5801
  %6352 = fmul fast float %6351, %6310
  %6353 = fmul fast float %5738, %6349
  %6354 = fmul fast float %6353, %5801
  %6355 = fmul fast float %6354, %6311
  %6356 = fmul fast float %5739, %6349
  %6357 = fmul fast float %6356, %5801
  %6358 = fmul fast float %6357, %6312
  %6359 = fmul fast float %6294, %4407
  %6360 = fmul fast float %6295, %4407
  %6361 = fmul fast float %6296, %4407
  %6362 = fadd fast float %6339, %4394
  %6363 = fadd fast float %6362, %6352
  %6364 = fmul fast float %6363, %4407
  %6365 = fadd fast float %6340, %4395
  %6366 = fadd fast float %6365, %6355
  %6367 = fmul fast float %6366, %4407
  %6368 = fadd fast float %6341, %4396
  %6369 = fadd fast float %6368, %6358
  %6370 = fmul fast float %6369, %4407
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 3
  %6373 = fcmp fast oeq float %6372, 0.000000e+00
  br i1 %6373, label %8090, label %6374

; <label>:6374                                    ; preds = %6290
  %6375 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6376 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6377 = extractvalue %dx.types.CBufRet.f32 %6371, 2
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = call float @dx.op.dot3.f32(i32 55, float %6379, float %6380, float %6381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6386 = select i1 %260, float %6383, float %6379
  %6387 = select i1 %260, float %6385, float %6380
  %6388 = select i1 %260, float %6384, float %6381
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6391 = fmul fast float %6390, %121
  %6392 = fmul fast float %6390, %122
  %6393 = fmul fast float %6390, %123
  %6394 = fadd fast float %6391, %201
  %6395 = fadd fast float %6392, %202
  %6396 = fadd fast float %6393, %203
  %6397 = fcmp fast olt float %6372, 0.000000e+00
  br i1 %6397, label %7655, label %6398

; <label>:6398                                    ; preds = %6374
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6403 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6408 = extractvalue %dx.types.CBufRet.f32 %6404, 3
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6409, 3
  %6414 = fmul fast float %6400, %6394
  %6415 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6401, float %6414)  ; FMad(a,b,c)
  %6416 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6402, float %6415)  ; FMad(a,b,c)
  %6417 = fadd fast float %6416, %6403
  %6418 = fmul fast float %6405, %6394
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6406, float %6418)  ; FMad(a,b,c)
  %6420 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6407, float %6419)  ; FMad(a,b,c)
  %6421 = fadd fast float %6420, %6408
  %6422 = fmul fast float %6410, %6394
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6411, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6412, float %6423)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6413
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = fcmp fast une float %6427, 0.000000e+00
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6433 = fmul fast float %6432, %6417
  %6434 = fmul fast float %6432, %6421
  %6435 = fadd fast float %6433, %6430
  %6436 = fadd fast float %6434, %6431
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 0
  %6439 = extractvalue %dx.types.CBufRet.f32 %6437, 1
  %6440 = extractvalue %dx.types.CBufRet.f32 %6437, 3
  %6441 = fmul fast float %6440, %6417
  %6442 = fmul fast float %6440, %6421
  %6443 = fadd fast float %6441, %6438
  %6444 = fadd fast float %6442, %6439
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6447 = fsub fast float %6446, %6425
  %6448 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6449 = fmul fast float %6447, %6448
  %6450 = fsub fast float 1.000000e+00, %6449
  %6451 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  br i1 %6428, label %6512, label %6452

; <label>:6452                                    ; preds = %6398
  %6453 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 2
  %6456 = fadd fast float %6455, %6453
  %6457 = fcmp fast ogt float %6456, 0.000000e+00
  br i1 %6457, label %6458, label %6482

; <label>:6458                                    ; preds = %6452
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = fsub fast float %6443, %6460
  %6463 = fsub fast float %6444, %6461
  %6464 = fcmp fast olt float %6462, 0.000000e+00
  %6465 = fcmp fast olt float %6463, 0.000000e+00
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = select i1 %6464, float %6467, float %6469
  %6472 = select i1 %6465, float %6468, float %6470
  %6473 = fmul fast float %6471, %6462
  %6474 = fmul fast float %6472, %6463
  %6475 = call float @dx.op.unary.f32(i32 6, float %6473)  ; FAbs(value)
  %6476 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6478 = call float @dx.op.binary.f32(i32 35, float %6475, float %6476)  ; FMax(a,b)
  %6479 = fsub fast float %6477, %6478
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fmul fast float %6480, %6451
  br label %6482

; <label>:6482                                    ; preds = %6458, %6452
  %6483 = phi float [ %6481, %6458 ], [ 0.000000e+00, %6452 ]
  %6484 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6485 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6486 = fadd fast float %6485, %6484
  %6487 = fcmp fast ogt float %6486, 0.000000e+00
  br i1 %6487, label %6488, label %6512

; <label>:6488                                    ; preds = %6482
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = fsub fast float %6435, %6490
  %6493 = fsub fast float %6436, %6491
  %6494 = fcmp fast olt float %6492, 0.000000e+00
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.CBufRet.f32 %6496, 3
  %6501 = select i1 %6494, float %6497, float %6499
  %6502 = select i1 %6495, float %6498, float %6500
  %6503 = fmul fast float %6501, %6492
  %6504 = fmul fast float %6502, %6493
  %6505 = call float @dx.op.unary.f32(i32 6, float %6503)  ; FAbs(value)
  %6506 = call float @dx.op.unary.f32(i32 6, float %6504)  ; FAbs(value)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6508 = call float @dx.op.binary.f32(i32 35, float %6505, float %6506)  ; FMax(a,b)
  %6509 = fsub fast float %6507, %6508
  %6510 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6511 = fmul fast float %6510, %6451
  br label %6512

; <label>:6512                                    ; preds = %6488, %6482, %6398
  %6513 = phi float [ 0.000000e+00, %6398 ], [ %6511, %6488 ], [ 0.000000e+00, %6482 ]
  %6514 = phi float [ 0.000000e+00, %6398 ], [ %6483, %6488 ], [ %6483, %6482 ]
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6517 = call float @dx.op.unary.f32(i32 7, float %6516)  ; Saturate(value)
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = fsub fast float %6417, %6519
  %6522 = fsub fast float %6421, %6520
  %6523 = fcmp fast olt float %6521, 0.000000e+00
  %6524 = fcmp fast olt float %6522, 0.000000e+00
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.CBufRet.f32 %6525, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6525, 3
  %6530 = select i1 %6523, float %6526, float %6528
  %6531 = select i1 %6524, float %6527, float %6529
  %6532 = fmul fast float %6530, %6521
  %6533 = fmul fast float %6531, %6522
  %6534 = call float @dx.op.unary.f32(i32 6, float %6532)  ; FAbs(value)
  %6535 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6537 = call float @dx.op.binary.f32(i32 35, float %6534, float %6535)  ; FMax(a,b)
  %6538 = fsub fast float %6536, %6537
  %6539 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6540 = call float @dx.op.binary.f32(i32 36, float %6539, float %6517)  ; FMin(a,b)
  %6541 = fmul fast float %6540, %6451
  %6542 = fsub fast float %6513, %6541
  %6543 = fsub fast float %6514, %6513
  %6544 = fsub fast float %6543, %6541
  %6545 = call float @dx.op.binary.f32(i32 35, float %6513, float %6514)  ; FMax(a,b)
  %6546 = call float @dx.op.binary.f32(i32 35, float %6541, float %6545)  ; FMax(a,b)
  %6547 = fcmp fast olt float %6546, 1.000000e+00
  br i1 %6547, label %6548, label %6946, !dx.controlflow.hints !103

; <label>:6548                                    ; preds = %6512
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = fcmp fast une float %6550, 0.000000e+00
  br i1 %6551, label %6552, label %6946, !dx.controlflow.hints !104

; <label>:6552                                    ; preds = %6548
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6557 = extractvalue %dx.types.CBufRet.f32 %6553, 3
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6562 = extractvalue %dx.types.CBufRet.f32 %6558, 3
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = fmul fast float %6554, %6394
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6555, float %6568)  ; FMad(a,b,c)
  %6570 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6556, float %6569)  ; FMad(a,b,c)
  %6571 = fadd fast float %6570, %6557
  %6572 = fmul fast float %6559, %6394
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6560, float %6572)  ; FMad(a,b,c)
  %6574 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6561, float %6573)  ; FMad(a,b,c)
  %6575 = fadd fast float %6574, %6562
  %6576 = fmul fast float %6564, %6394
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6565, float %6576)  ; FMad(a,b,c)
  %6578 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %6566, float %6577)  ; FMad(a,b,c)
  %6579 = fadd fast float %6578, %6567
  %6580 = fcmp fast oge float %6571, 1.000000e+00
  %6581 = fcmp fast oge float %6575, 1.000000e+00
  %6582 = or i1 %6580, %6581
  %6583 = fcmp fast olt float %6571, 0.000000e+00
  %6584 = fcmp fast olt float %6575, 0.000000e+00
  %6585 = or i1 %6583, %6584
  %6586 = or i1 %6582, %6585
  br i1 %6586, label %6946, label %6587, !dx.controlflow.hints !105

; <label>:6587                                    ; preds = %6552
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.i32 %6592, 2
  %6594 = uitofp i32 %6593 to float
  %6595 = extractvalue %dx.types.CBufRet.i32 %6592, 3
  %6596 = uitofp i32 %6595 to float
  %6597 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6598 = fmul fast float %6597, 2.000000e+00
  %6599 = fsub fast float %6571, %6589
  %6600 = fsub fast float %6575, %6590
  %6601 = fmul fast float %6598, %6599
  %6602 = fmul fast float %6598, %6600
  %6603 = fdiv fast float 1.000000e+00, %6377
  %6604 = fmul fast float %6602, %6603
  %6605 = call float @dx.op.unary.f32(i32 6, float %6604)  ; FAbs(value)
  %6606 = fmul fast float %6591, %6396
  %6607 = fmul fast float %6606, %6598
  %6608 = call float @dx.op.unary.f32(i32 6, float %6607)  ; FAbs(value)
  %6609 = call float @dx.op.unary.f32(i32 6, float %6601)  ; FAbs(value)
  %6610 = call float @dx.op.binary.f32(i32 35, float %6608, float %6605)  ; FMax(a,b)
  %6611 = call float @dx.op.binary.f32(i32 35, float %6609, float %6610)  ; FMax(a,b)
  %6612 = fmul fast float %6611, 2.000000e+00
  %6613 = call float @dx.op.unary.f32(i32 23, float %6612)  ; Log(value)
  %6614 = call float @dx.op.binary.f32(i32 35, float %6613, float %6594)  ; FMax(a,b)
  %6615 = call float @dx.op.unary.f32(i32 22, float %6614)  ; Frc(value)
  %6616 = fadd fast float %6615, 0xBFEA666660000000
  %6617 = fmul fast float %6616, 8.000000e+00
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = call float @dx.op.unary.f32(i32 27, float %6614)  ; Round_ni(value)
  %6620 = fadd fast float %6619, %6618
  %6621 = call float @dx.op.binary.f32(i32 36, float %6620, float %6596)  ; FMin(a,b)
  %6622 = call float @dx.op.unary.f32(i32 27, float %6621)  ; Round_ni(value)
  %6623 = fsub fast float -0.000000e+00, %6622
  %6624 = call float @dx.op.unary.f32(i32 21, float %6623)  ; Exp(value)
  %6625 = fmul fast float %6624, %6598
  %6626 = fmul fast float %6625, %6571
  %6627 = fmul fast float %6625, %6575
  %6628 = fmul fast float %6626, 2.500000e-01
  %6629 = fmul fast float %6627, 2.500000e-01
  %6630 = fadd fast float %6628, 5.000000e-01
  %6631 = fadd fast float %6629, 5.000000e-01
  %6632 = fsub fast float %6596, %6594
  %6633 = fptoui float %6632 to i32
  %6634 = add i32 %6633, 320
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6634)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 1
  %6638 = fcmp fast une float %6621, %6596
  %6639 = fsub fast float %6571, %6636
  %6640 = fsub fast float %6575, %6637
  %6641 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6642 = call float @dx.op.unary.f32(i32 6, float %6640)  ; FAbs(value)
  %6643 = fmul fast float %6641, %6625
  %6644 = fmul fast float %6642, %6625
  %6645 = fcmp fast olt float %6643, 1.000000e+00
  %6646 = fcmp fast olt float %6644, 1.000000e+00
  %6647 = and i1 %6645, %6646
  %6648 = or i1 %6638, %6647
  br i1 %6648, label %6649, label %6946, !dx.controlflow.hints !106

; <label>:6649                                    ; preds = %6587
  %6650 = fmul fast float %6627, 5.000000e-01
  %6651 = fmul fast float %6626, 5.000000e-01
  %6652 = fadd fast float %6650, 5.000000e-01
  %6653 = fadd fast float %6651, 5.000000e-01
  %6654 = sitofp i32 %6593 to float
  %6655 = fsub fast float %6621, %6654
  %6656 = call float @dx.op.unary.f32(i32 27, float %6655)  ; Round_ni(value)
  %6657 = call float @dx.op.unary.f32(i32 22, float %6621)  ; Frc(value)
  %6658 = call float @dx.op.unary.f32(i32 22, float %6653)  ; Frc(value)
  %6659 = call float @dx.op.unary.f32(i32 22, float %6652)  ; Frc(value)
  %6660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6658, float %6659, float %6656, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.ResRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.ResRet.f32 %6660, 2
  %6664 = extractvalue %dx.types.ResRet.f32 %6660, 3
  %6665 = fcmp fast ogt float %6657, 0.000000e+00
  br i1 %6665, label %6666, label %6687, !dx.controlflow.hints !107

; <label>:6666                                    ; preds = %6649
  %6667 = fadd fast float %6656, 1.000000e+00
  %6668 = call float @dx.op.unary.f32(i32 22, float %6630)  ; Frc(value)
  %6669 = call float @dx.op.unary.f32(i32 22, float %6631)  ; Frc(value)
  %6670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6668, float %6669, float %6667, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6674 = extractvalue %dx.types.ResRet.f32 %6670, 3
  %6675 = fsub fast float %6671, %6661
  %6676 = fsub fast float %6672, %6662
  %6677 = fsub fast float %6673, %6663
  %6678 = fsub fast float %6674, %6664
  %6679 = fmul fast float %6675, %6657
  %6680 = fmul fast float %6676, %6657
  %6681 = fmul fast float %6677, %6657
  %6682 = fmul fast float %6678, %6657
  %6683 = fadd fast float %6679, %6661
  %6684 = fadd fast float %6680, %6662
  %6685 = fadd fast float %6681, %6663
  %6686 = fadd fast float %6682, %6664
  br label %6687

; <label>:6687                                    ; preds = %6666, %6649
  %6688 = phi float [ %6683, %6666 ], [ %6661, %6649 ]
  %6689 = phi float [ %6684, %6666 ], [ %6662, %6649 ]
  %6690 = phi float [ %6685, %6666 ], [ %6663, %6649 ]
  %6691 = phi float [ %6686, %6666 ], [ %6664, %6649 ]
  %6692 = fadd fast float %6688, -5.000000e-01
  %6693 = fadd fast float %6690, -5.000000e-01
  %6694 = fmul fast float %6692, 0xBFD5555560000000
  %6695 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6693, float %6694)  ; FMad(a,b,c)
  %6696 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6689, float 0.000000e+00)  ; FMad(a,b,c)
  %6697 = fadd fast float %6696, %6691
  %6698 = fmul fast float %6692, -7.500000e-01
  %6699 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6693, float %6698)  ; FMad(a,b,c)
  %6700 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6689, float 0.000000e+00)  ; FMad(a,b,c)
  %6701 = fadd fast float %6700, %6691
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6708 = extractvalue %dx.types.CBufRet.f32 %6704, 3
  %6709 = fsub fast float %6705, %6695
  %6710 = fsub fast float %6706, %6697
  %6711 = fsub fast float %6707, %6699
  %6712 = fsub fast float %6708, %6701
  %6713 = fmul fast float %6709, %6703
  %6714 = fmul fast float %6710, %6703
  %6715 = fmul fast float %6711, %6703
  %6716 = fmul fast float %6712, %6703
  %6717 = fadd fast float %6713, %6695
  %6718 = fadd fast float %6714, %6697
  %6719 = fadd fast float %6715, %6699
  %6720 = fadd fast float %6716, %6701
  %6721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.i32 %6721, 0
  %6723 = and i32 %6722, 536870911
  %6724 = uitofp i32 %6723 to float
  %6725 = fmul fast float %6724, %6571
  %6726 = fmul fast float %6724, %6575
  %6727 = fptoui float %6725 to i32
  %6728 = fptoui float %6726 to i32
  %6729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6730 = extractvalue %dx.types.ResRet.i32 %6729, 0
  %6731 = and i32 %6730, 31
  %6732 = lshr i32 %6727, %6731
  %6733 = lshr i32 %6728, %6731
  %6734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6735 = extractvalue %dx.types.ResRet.i32 %6734, 0
  %6736 = and i32 %6735, 31
  %6737 = shl i32 1, %6736
  %6738 = call i32 @dx.op.binary.i32(i32 40, i32 %6737, i32 4)  ; UMin(a,b)
  %6739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.i32 %6739, 0
  %6741 = extractvalue %dx.types.ResRet.i32 %6739, 1
  %6742 = icmp eq i32 %6738, 0
  br i1 %6742, label %6784, label %6743

; <label>:6743                                    ; preds = %6687
  br label %6744

; <label>:6744                                    ; preds = %6772, %6743
  %6745 = phi i32 [ %6775, %6772 ], [ 0, %6743 ]
  %6746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6747 = extractvalue %dx.types.ResRet.i32 %6746, 0
  %6748 = lshr i32 %6747, 16
  %6749 = and i32 %6748, 31
  %6750 = shl i32 %6733, %6749
  %6751 = add i32 %6750, %6732
  %6752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6753 = extractvalue %dx.types.ResRet.i32 %6752, 0
  %6754 = and i32 %6753, 31
  %6755 = shl i32 %6751, %6754
  %6756 = add i32 %6755, %6745
  %6757 = shl i32 %6756, 2
  %6758 = add i32 %6757, 32
  %6759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6758, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.i32 %6759, 0
  %6761 = icmp slt i32 %6760, 0
  %6762 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6745
  %6763 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6745
  %6764 = bitcast float* %6762 to i32*
  %6765 = bitcast float* %6763 to i32*
  br i1 %6761, label %6766, label %6772

; <label>:6766                                    ; preds = %6744
  %6767 = and i32 %6760, 1073741823
  %6768 = add nuw nsw i32 %6767, 20
  %6769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6768, i32 undef)  ; BufferLoad(srv,index,wot)
  %6770 = extractvalue %dx.types.ResRet.i32 %6769, 0
  %6771 = extractvalue %dx.types.ResRet.i32 %6769, 1
  br label %6772

; <label>:6772                                    ; preds = %6766, %6744
  %6773 = phi i32 [ %6770, %6766 ], [ %6740, %6744 ]
  %6774 = phi i32 [ %6771, %6766 ], [ %6741, %6744 ]
  store i32 %6773, i32* %6764, align 4
  store i32 %6774, i32* %6765, align 4
  %6775 = add nuw i32 %6745, 1
  %6776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.i32 %6776, 2
  %6778 = icmp eq i32 %6777, 0
  %6779 = icmp ugt i32 %6760, -1073741825
  %6780 = and i1 %6779, %6778
  %6781 = icmp ult i32 %6775, %6738
  %6782 = and i1 %6780, %6781
  br i1 %6782, label %6744, label %6783

; <label>:6783                                    ; preds = %6772
  br label %6784

; <label>:6784                                    ; preds = %6783, %6687
  %6785 = phi i32 [ 0, %6687 ], [ %6775, %6783 ]
  %6786 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6787 = fptoui float %6786 to i32
  %6788 = icmp eq i32 %6787, 0
  br i1 %6788, label %6840, label %6789

; <label>:6789                                    ; preds = %6784
  br label %6790

; <label>:6790                                    ; preds = %6835, %6789
  %6791 = phi i32 [ %6836, %6835 ], [ %6785, %6789 ]
  %6792 = phi i32 [ %6837, %6835 ], [ 0, %6789 ]
  %6793 = lshr i32 %6792, 2
  %6794 = and i32 %6792, 3
  %6795 = add nuw nsw i32 %6793, 83
  %6796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6795)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.i32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.i32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.i32 %6796, 2
  %6800 = extractvalue %dx.types.CBufRet.i32 %6796, 3
  %6801 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6797, i32* %6801, align 4
  %6802 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6798, i32* %6802, align 4
  %6803 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6799, i32* %6803, align 4
  %6804 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6800, i32* %6804, align 4
  %6805 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6794
  %6806 = load i32, i32* %6805, align 4, !tbaa !108, !noalias !112
  %6807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.i32 %6807, 0
  %6809 = lshr i32 %6808, 16
  %6810 = and i32 %6809, 31
  %6811 = shl i32 %6733, %6810
  %6812 = add i32 %6811, %6732
  %6813 = shl i32 %6812, 2
  %6814 = add i32 %6813, %6806
  %6815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6814, i32 undef)  ; BufferLoad(srv,index,wot)
  %6816 = extractvalue %dx.types.ResRet.i32 %6815, 0
  %6817 = icmp eq i32 %6816, 0
  br i1 %6817, label %6835, label %6818

; <label>:6818                                    ; preds = %6790
  %6819 = icmp slt i32 %6816, 0
  %6820 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6791
  %6821 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6791
  %6822 = bitcast float* %6820 to i32*
  %6823 = bitcast float* %6821 to i32*
  br i1 %6819, label %6824, label %6831

; <label>:6824                                    ; preds = %6818
  %6825 = and i32 %6816, 1073741823
  %6826 = add i32 %6806, 20
  %6827 = add i32 %6826, %6825
  %6828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6827, i32 undef)  ; BufferLoad(srv,index,wot)
  %6829 = extractvalue %dx.types.ResRet.i32 %6828, 0
  %6830 = extractvalue %dx.types.ResRet.i32 %6828, 1
  br label %6831

; <label>:6831                                    ; preds = %6824, %6818
  %6832 = phi i32 [ %6829, %6824 ], [ %6740, %6818 ]
  %6833 = phi i32 [ %6830, %6824 ], [ %6741, %6818 ]
  store i32 %6832, i32* %6822, align 4
  store i32 %6833, i32* %6823, align 4
  %6834 = add i32 %6791, 1
  br label %6835

; <label>:6835                                    ; preds = %6831, %6790
  %6836 = phi i32 [ %6791, %6790 ], [ %6834, %6831 ]
  %6837 = add nuw i32 %6792, 1
  %6838 = icmp eq i32 %6837, %6787
  br i1 %6838, label %6839, label %6790

; <label>:6839                                    ; preds = %6835
  br label %6840

; <label>:6840                                    ; preds = %6839, %6784
  %6841 = phi i32 [ %6785, %6784 ], [ %6836, %6839 ]
  %6842 = icmp eq i32 %6841, 1
  %6843 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6844 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6842, label %6845, label %6848

; <label>:6845                                    ; preds = %6840
  %6846 = load float, float* %6843, align 4
  %6847 = load float, float* %6844, align 4
  br label %6875

; <label>:6848                                    ; preds = %6840
  %6849 = load float, float* %6843, align 4
  %6850 = load float, float* %6844, align 4
  %6851 = fdiv fast float 1.000000e+00, %6850
  %6852 = fsub fast float %6849, %6851
  %6853 = icmp ugt i32 %6841, 1
  br i1 %6853, label %6854, label %6870

; <label>:6854                                    ; preds = %6848
  br label %6855

; <label>:6855                                    ; preds = %6855, %6854
  %6856 = phi float [ %6865, %6855 ], [ %6852, %6854 ]
  %6857 = phi float [ %6866, %6855 ], [ %6849, %6854 ]
  %6858 = phi i32 [ %6867, %6855 ], [ 1, %6854 ]
  %6859 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6858
  %6860 = load float, float* %6859, align 4
  %6861 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6858
  %6862 = load float, float* %6861, align 4
  %6863 = fdiv fast float 1.000000e+00, %6862
  %6864 = fsub fast float %6860, %6863
  %6865 = call float @dx.op.binary.f32(i32 36, float %6856, float %6864)  ; FMin(a,b)
  %6866 = call float @dx.op.binary.f32(i32 35, float %6857, float %6860)  ; FMax(a,b)
  %6867 = add nuw i32 %6858, 1
  %6868 = icmp eq i32 %6867, %6841
  br i1 %6868, label %6869, label %6855

; <label>:6869                                    ; preds = %6855
  br label %6870

; <label>:6870                                    ; preds = %6869, %6848
  %6871 = phi float [ %6852, %6848 ], [ %6865, %6869 ]
  %6872 = phi float [ %6849, %6848 ], [ %6866, %6869 ]
  %6873 = fsub fast float %6872, %6871
  %6874 = fdiv fast float 1.000000e+00, %6873
  br label %6875

; <label>:6875                                    ; preds = %6870, %6845
  %6876 = phi float [ %6846, %6845 ], [ %6872, %6870 ]
  %6877 = phi float [ %6847, %6845 ], [ %6874, %6870 ]
  %6878 = fadd fast float %6579, %6876
  %6879 = fmul fast float %6878, %6877
  %6880 = call float @dx.op.unary.f32(i32 7, float %6879)  ; Saturate(value)
  %6881 = fmul fast float %6880, 2.000000e+00
  %6882 = fsub fast float 1.000000e+00, %6881
  %6883 = fmul fast float %6717, %6717
  %6884 = fsub fast float %6718, %6883
  %6885 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6884)  ; FMax(a,b)
  %6886 = fdiv fast float 1.000000e+00, %6885
  %6887 = fmul fast float %6718, %6717
  %6888 = fsub fast float %6719, %6887
  %6889 = fsub fast float %6882, %6717
  %6890 = fmul fast float %6882, %6882
  %6891 = fsub fast float %6890, %6718
  %6892 = fmul fast float %6886, %6888
  %6893 = fmul fast float %6892, %6889
  %6894 = fsub fast float %6891, %6893
  %6895 = fmul fast float %6718, %6718
  %6896 = fsub fast float %6720, %6895
  %6897 = fmul fast float %6888, %6888
  %6898 = fmul fast float %6897, %6886
  %6899 = fsub fast float %6896, %6898
  %6900 = fdiv fast float %6894, %6899
  %6901 = fmul fast float %6900, %6888
  %6902 = fsub fast float %6889, %6901
  %6903 = fmul fast float %6902, %6886
  %6904 = fmul fast float %6903, %6717
  %6905 = fsub fast float 1.000000e+00, %6904
  %6906 = fmul fast float %6900, %6718
  %6907 = fsub fast float %6905, %6906
  %6908 = fmul fast float %6903, %6903
  %6909 = fmul fast float %6900, 4.000000e+00
  %6910 = fmul fast float %6909, %6907
  %6911 = fsub fast float %6908, %6910
  %6912 = call float @dx.op.unary.f32(i32 24, float %6911)  ; Sqrt(value)
  %6913 = fcmp fast oge float %6903, 0.000000e+00
  %6914 = fsub fast float -0.000000e+00, %6912
  %6915 = select i1 %6913, float %6914, float %6912
  %6916 = fsub fast float %6915, %6903
  %6917 = fdiv fast float %6916, %6900
  %6918 = fdiv fast float %6907, %6916
  %6919 = fmul fast float %6917, 5.000000e-01
  %6920 = fmul fast float %6918, 2.000000e+00
  %6921 = select i1 %6913, float %6919, float %6920
  %6922 = select i1 %6913, float %6920, float %6919
  %6923 = call float @dx.op.binary.f32(i32 35, float %6921, float %6922)  ; FMax(a,b)
  %6924 = call float @dx.op.binary.f32(i32 36, float %6921, float %6922)  ; FMin(a,b)
  %6925 = fcmp fast ogt float %6882, %6923
  %6926 = fsub fast float %6882, %6924
  %6927 = fsub fast float %6882, %6923
  %6928 = fsub fast float %6923, %6924
  %6929 = select i1 %6925, float %6927, float %6928
  %6930 = fmul float %6926, %6929
  %6931 = select i1 %6925, float %6924, float %6882
  %6932 = fcmp fast ogt float %6882, %6924
  %6933 = fmul fast float %6931, %6923
  %6934 = fadd fast float %6931, %6923
  %6935 = fmul fast float %6934, %6717
  %6936 = fadd fast float %6933, %6718
  %6937 = fsub fast float %6936, %6935
  %6938 = fdiv fast float %6937, %6930
  %6939 = select i1 %6932, float %6938, float 0.000000e+00
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = select i1 %6925, float %6940, float %6939
  %6942 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6702, 3
  %6944 = fmul fast float %6943, %6942
  %6945 = fsub fast float 1.000000e+00, %6944
  br label %6946

; <label>:6946                                    ; preds = %6875, %6587, %6552, %6548, %6512
  %6947 = phi float [ 1.000000e+00, %6512 ], [ %6945, %6875 ], [ 1.000000e+00, %6552 ], [ 1.000000e+00, %6587 ], [ 1.000000e+00, %6548 ]
  %6948 = fcmp fast ogt float %6544, 0.000000e+00
  br i1 %6948, label %6949, label %7113, !dx.controlflow.hints !121

; <label>:6949                                    ; preds = %6946
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6952 = fadd fast float %6951, %6425
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 2
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 3
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 2
  %6958 = call float @dx.op.binary.f32(i32 35, float %6952, float 0.000000e+00)  ; FMax(a,b)
  %6959 = fadd fast float %6958, 0x3F10000000000000
  %6960 = fcmp fast oeq float %6957, 0.000000e+00
  br i1 %6960, label %6961, label %7028

; <label>:6961                                    ; preds = %6949
  %6962 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6964 = fmul fast float %6963, %6443
  %6965 = fmul fast float %6962, %6444
  %6966 = fadd fast float %6964, 5.000000e-01
  %6967 = call float @dx.op.unary.f32(i32 27, float %6966)  ; Round_ni(value)
  %6968 = fadd fast float %6965, 5.000000e-01
  %6969 = call float @dx.op.unary.f32(i32 27, float %6968)  ; Round_ni(value)
  %6970 = fsub fast float %6966, %6967
  %6971 = fsub fast float %6968, %6969
  %6972 = fadd fast float %6967, -5.000000e-01
  %6973 = fadd fast float %6969, -5.000000e-01
  %6974 = fmul fast float %6970, 2.000000e+00
  %6975 = fsub fast float 3.000000e+00, %6974
  %6976 = fadd fast float %6974, 1.000000e+00
  %6977 = fsub fast float 2.000000e+00, %6970
  %6978 = bitcast float %6975 to i32
  %6979 = sub nsw i32 2129859010, %6978
  %6980 = bitcast i32 %6979 to float
  %6981 = fmul fast float %6980, %6977
  %6982 = fadd fast float %6981, -1.000000e+00
  %6983 = bitcast float %6976 to i32
  %6984 = sub nsw i32 2129859010, %6983
  %6985 = bitcast i32 %6984 to float
  %6986 = fmul fast float %6985, %6970
  %6987 = fadd fast float %6986, 1.000000e+00
  %6988 = fmul fast float %6971, 2.000000e+00
  %6989 = fsub fast float 3.000000e+00, %6988
  %6990 = fadd fast float %6988, 1.000000e+00
  %6991 = fsub fast float 2.000000e+00, %6971
  %6992 = bitcast float %6989 to i32
  %6993 = sub nsw i32 2129859010, %6992
  %6994 = bitcast i32 %6993 to float
  %6995 = fmul fast float %6994, %6991
  %6996 = fadd fast float %6995, -1.000000e+00
  %6997 = bitcast float %6990 to i32
  %6998 = sub nsw i32 2129859010, %6997
  %6999 = bitcast i32 %6998 to float
  %7000 = fmul fast float %6999, %6971
  %7001 = fadd fast float %7000, 1.000000e+00
  %7002 = fadd fast float %6982, %6972
  %7003 = fmul fast float %7002, %6954
  %7004 = fadd fast float %6996, %6973
  %7005 = fmul fast float %7004, %6955
  %7006 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7003, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float %6959)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 0
  %7008 = fmul fast float %7007, %6975
  %7009 = fadd fast float %6987, %6972
  %7010 = fmul fast float %7009, %6954
  %7011 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7010, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float %6959)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 0
  %7013 = fmul fast float %7012, %6976
  %7014 = fadd fast float %7001, %6973
  %7015 = fmul fast float %7014, %6955
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7003, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float %6959)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = fmul fast float %7017, %6975
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7010, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float %6959)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = fmul fast float %7020, %6976
  %7022 = fadd fast float %7021, %7018
  %7023 = fmul fast float %7022, %6990
  %7024 = fadd fast float %7013, %7008
  %7025 = fmul fast float %7024, %6989
  %7026 = fadd fast float %7025, %7023
  %7027 = fmul fast float %7026, 6.250000e-02
  br label %7113

; <label>:7028                                    ; preds = %6949
  %7029 = fmul fast float %271, 0x401921FB60000000
  %7030 = call float @dx.op.unary.f32(i32 13, float %7029)  ; Sin(value)
  %7031 = call float @dx.op.unary.f32(i32 12, float %7029)  ; Cos(value)
  %7032 = fsub fast float -0.000000e+00, %7030
  br label %7033

; <label>:7033                                    ; preds = %7082, %7028
  %7034 = phi float [ 0.000000e+00, %7028 ], [ %7077, %7082 ]
  %7035 = phi float [ 0.000000e+00, %7028 ], [ %7079, %7082 ]
  %7036 = phi i32 [ 0, %7028 ], [ %7083, %7082 ]
  %7037 = mul i32 %7036, 2
  %7038 = add i32 0, %7037
  %7039 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7038
  %7040 = load float, float* %7039, align 4
  %7041 = mul i32 %7036, 2
  %7042 = add i32 1, %7041
  %7043 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7042
  %7044 = load float, float* %7043, align 4
  %7045 = fmul fast float %7040, %7031
  %7046 = call float @dx.op.tertiary.f32(i32 46, float %7044, float %7032, float %7045)  ; FMad(a,b,c)
  %7047 = fmul fast float %7040, %7030
  %7048 = call float @dx.op.tertiary.f32(i32 46, float %7044, float %7031, float %7047)  ; FMad(a,b,c)
  %7049 = fmul fast float %7046, %6957
  %7050 = fmul fast float %7048, %6957
  %7051 = fadd fast float %7049, %6443
  %7052 = fadd fast float %7050, %6444
  %7053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7051, float %7052, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.ResRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.ResRet.f32 %7053, 2
  %7057 = extractvalue %dx.types.ResRet.f32 %7053, 3
  %7058 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7054, float* %7058, align 4
  %7059 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7055, float* %7059, align 4
  %7060 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7056, float* %7060, align 4
  %7061 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7057, float* %7061, align 4
  %7062 = fsub fast float %7054, %6959
  %7063 = fcmp fast olt float %7062, 0.000000e+00
  %7064 = select i1 %7063, float 0.000000e+00, float 1.000000e+00
  %7065 = fadd fast float %7064, %7034
  %7066 = fmul fast float %7064, %7062
  %7067 = fadd fast float %7066, %7035
  br label %7068

; <label>:7068                                    ; preds = %7068, %7033
  %7069 = phi i32 [ 1, %7033 ], [ %7080, %7068 ]
  %7070 = phi float [ %7067, %7033 ], [ %7079, %7068 ]
  %7071 = phi float [ %7065, %7033 ], [ %7077, %7068 ]
  %7072 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7069
  %7073 = load float, float* %7072, align 4, !tbaa !122, !noalias !112
  %7074 = fsub fast float %7073, %6959
  %7075 = fcmp fast olt float %7074, 0.000000e+00
  %7076 = select i1 %7075, float 0.000000e+00, float 1.000000e+00
  %7077 = fadd fast float %7076, %7071
  %7078 = fmul fast float %7076, %7074
  %7079 = fadd fast float %7078, %7070
  %7080 = add nuw nsw i32 %7069, 1
  %7081 = icmp eq i32 %7080, 4
  br i1 %7081, label %7082, label %7068, !llvm.loop !124

; <label>:7082                                    ; preds = %7068
  %7083 = add nuw nsw i32 %7036, 1
  %7084 = icmp eq i32 %7083, 8
  br i1 %7084, label %7085, label %7033, !llvm.loop !125

; <label>:7085                                    ; preds = %7082
  %7086 = fdiv fast float 1.000000e+00, %7077
  %7087 = fmul fast float %7086, %7079
  %7088 = fdiv fast float 1.000000e+00, %6959
  %7089 = fmul fast float %7087, %7088
  %7090 = call float @dx.op.unary.f32(i32 7, float %7089)  ; Saturate(value)
  %7091 = call float @dx.op.binary.f32(i32 35, float %7090, float 0.000000e+00)  ; FMax(a,b)
  %7092 = fmul fast float %7077, 3.125000e-02
  %7093 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7094 = fmul fast float %7093, 2.000000e+00
  %7095 = fadd fast float %7094, -1.000000e+00
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  %7097 = fcmp fast olt float %7095, 0.000000e+00
  %7098 = zext i1 %7096 to i32
  %7099 = zext i1 %7097 to i32
  %7100 = sub nsw i32 %7098, %7099
  %7101 = sitofp i32 %7100 to float
  %7102 = fmul fast float %7101, %7095
  %7103 = fsub fast float 1.000000e+00, %7102
  %7104 = fmul fast float %7103, %7103
  %7105 = fmul fast float %7104, %7103
  %7106 = fsub fast float %7103, %7105
  %7107 = fmul fast float %7106, %7091
  %7108 = fsub fast float 1.000000e+00, %7105
  %7109 = fsub fast float %7108, %7107
  %7110 = fmul fast float %7101, 5.000000e-01
  %7111 = fmul fast float %7110, %7109
  %7112 = fsub fast float 5.000000e-01, %7111
  br label %7113

; <label>:7113                                    ; preds = %7085, %6961, %6946
  %7114 = phi float [ 1.000000e+00, %6946 ], [ %7027, %6961 ], [ %7112, %7085 ]
  %7115 = fcmp fast ogt float %6542, 0.000000e+00
  br i1 %7115, label %7116, label %7280, !dx.controlflow.hints !126

; <label>:7116                                    ; preds = %7113
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7119 = fadd fast float %7118, %6425
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 3
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7125 = call float @dx.op.binary.f32(i32 35, float %7119, float 0.000000e+00)  ; FMax(a,b)
  %7126 = fadd fast float %7125, 0x3F10000000000000
  %7127 = fcmp fast oeq float %7124, 0.000000e+00
  br i1 %7127, label %7128, label %7195

; <label>:7128                                    ; preds = %7116
  %7129 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7130 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7131 = fmul fast float %7130, %6435
  %7132 = fmul fast float %7129, %6436
  %7133 = fadd fast float %7131, 5.000000e-01
  %7134 = call float @dx.op.unary.f32(i32 27, float %7133)  ; Round_ni(value)
  %7135 = fadd fast float %7132, 5.000000e-01
  %7136 = call float @dx.op.unary.f32(i32 27, float %7135)  ; Round_ni(value)
  %7137 = fsub fast float %7133, %7134
  %7138 = fsub fast float %7135, %7136
  %7139 = fadd fast float %7134, -5.000000e-01
  %7140 = fadd fast float %7136, -5.000000e-01
  %7141 = fmul fast float %7137, 2.000000e+00
  %7142 = fsub fast float 3.000000e+00, %7141
  %7143 = fadd fast float %7141, 1.000000e+00
  %7144 = fsub fast float 2.000000e+00, %7137
  %7145 = bitcast float %7142 to i32
  %7146 = sub nsw i32 2129859010, %7145
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %7147, %7144
  %7149 = fadd fast float %7148, -1.000000e+00
  %7150 = bitcast float %7143 to i32
  %7151 = sub nsw i32 2129859010, %7150
  %7152 = bitcast i32 %7151 to float
  %7153 = fmul fast float %7152, %7137
  %7154 = fadd fast float %7153, 1.000000e+00
  %7155 = fmul fast float %7138, 2.000000e+00
  %7156 = fsub fast float 3.000000e+00, %7155
  %7157 = fadd fast float %7155, 1.000000e+00
  %7158 = fsub fast float 2.000000e+00, %7138
  %7159 = bitcast float %7156 to i32
  %7160 = sub nsw i32 2129859010, %7159
  %7161 = bitcast i32 %7160 to float
  %7162 = fmul fast float %7161, %7158
  %7163 = fadd fast float %7162, -1.000000e+00
  %7164 = bitcast float %7157 to i32
  %7165 = sub nsw i32 2129859010, %7164
  %7166 = bitcast i32 %7165 to float
  %7167 = fmul fast float %7166, %7138
  %7168 = fadd fast float %7167, 1.000000e+00
  %7169 = fadd fast float %7149, %7139
  %7170 = fmul fast float %7169, %7121
  %7171 = fadd fast float %7163, %7140
  %7172 = fmul fast float %7171, %7122
  %7173 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7170, float %7172, float undef, float undef, i32 0, i32 0, i32 undef, float %7126)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = fmul fast float %7174, %7142
  %7176 = fadd fast float %7154, %7139
  %7177 = fmul fast float %7176, %7121
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7177, float %7172, float undef, float undef, i32 0, i32 0, i32 undef, float %7126)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = fmul fast float %7179, %7143
  %7181 = fadd fast float %7168, %7140
  %7182 = fmul fast float %7181, %7122
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7170, float %7182, float undef, float undef, i32 0, i32 0, i32 undef, float %7126)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = fmul fast float %7184, %7142
  %7186 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7177, float %7182, float undef, float undef, i32 0, i32 0, i32 undef, float %7126)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = fmul fast float %7187, %7143
  %7189 = fadd fast float %7188, %7185
  %7190 = fmul fast float %7189, %7157
  %7191 = fadd fast float %7180, %7175
  %7192 = fmul fast float %7191, %7156
  %7193 = fadd fast float %7192, %7190
  %7194 = fmul fast float %7193, 6.250000e-02
  br label %7280

; <label>:7195                                    ; preds = %7116
  %7196 = fmul fast float %271, 0x401921FB60000000
  %7197 = call float @dx.op.unary.f32(i32 13, float %7196)  ; Sin(value)
  %7198 = call float @dx.op.unary.f32(i32 12, float %7196)  ; Cos(value)
  %7199 = fsub fast float -0.000000e+00, %7197
  br label %7200

; <label>:7200                                    ; preds = %7249, %7195
  %7201 = phi float [ 0.000000e+00, %7195 ], [ %7244, %7249 ]
  %7202 = phi float [ 0.000000e+00, %7195 ], [ %7246, %7249 ]
  %7203 = phi i32 [ 0, %7195 ], [ %7250, %7249 ]
  %7204 = mul i32 %7203, 2
  %7205 = add i32 0, %7204
  %7206 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7205
  %7207 = load float, float* %7206, align 4
  %7208 = mul i32 %7203, 2
  %7209 = add i32 1, %7208
  %7210 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7209
  %7211 = load float, float* %7210, align 4
  %7212 = fmul fast float %7207, %7198
  %7213 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7199, float %7212)  ; FMad(a,b,c)
  %7214 = fmul fast float %7207, %7197
  %7215 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7198, float %7214)  ; FMad(a,b,c)
  %7216 = fmul fast float %7213, %7124
  %7217 = fmul fast float %7215, %7124
  %7218 = fadd fast float %7216, %6435
  %7219 = fadd fast float %7217, %6436
  %7220 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7218, float %7219, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = extractvalue %dx.types.ResRet.f32 %7220, 3
  %7225 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7221, float* %7225, align 4
  %7226 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7222, float* %7226, align 4
  %7227 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7223, float* %7227, align 4
  %7228 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7224, float* %7228, align 4
  %7229 = fsub fast float %7221, %7126
  %7230 = fcmp fast olt float %7229, 0.000000e+00
  %7231 = select i1 %7230, float 0.000000e+00, float 1.000000e+00
  %7232 = fadd fast float %7231, %7201
  %7233 = fmul fast float %7231, %7229
  %7234 = fadd fast float %7233, %7202
  br label %7235

; <label>:7235                                    ; preds = %7235, %7200
  %7236 = phi i32 [ 1, %7200 ], [ %7247, %7235 ]
  %7237 = phi float [ %7234, %7200 ], [ %7246, %7235 ]
  %7238 = phi float [ %7232, %7200 ], [ %7244, %7235 ]
  %7239 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7236
  %7240 = load float, float* %7239, align 4, !tbaa !122, !noalias !112
  %7241 = fsub fast float %7240, %7126
  %7242 = fcmp fast olt float %7241, 0.000000e+00
  %7243 = select i1 %7242, float 0.000000e+00, float 1.000000e+00
  %7244 = fadd fast float %7243, %7238
  %7245 = fmul fast float %7243, %7241
  %7246 = fadd fast float %7245, %7237
  %7247 = add nuw nsw i32 %7236, 1
  %7248 = icmp eq i32 %7247, 4
  br i1 %7248, label %7249, label %7235, !llvm.loop !124

; <label>:7249                                    ; preds = %7235
  %7250 = add nuw nsw i32 %7203, 1
  %7251 = icmp eq i32 %7250, 8
  br i1 %7251, label %7252, label %7200, !llvm.loop !125

; <label>:7252                                    ; preds = %7249
  %7253 = fdiv fast float 1.000000e+00, %7244
  %7254 = fmul fast float %7253, %7246
  %7255 = fdiv fast float 1.000000e+00, %7126
  %7256 = fmul fast float %7254, %7255
  %7257 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7258 = call float @dx.op.binary.f32(i32 35, float %7257, float 0.000000e+00)  ; FMax(a,b)
  %7259 = fmul fast float %7244, 3.125000e-02
  %7260 = call float @dx.op.unary.f32(i32 7, float %7259)  ; Saturate(value)
  %7261 = fmul fast float %7260, 2.000000e+00
  %7262 = fadd fast float %7261, -1.000000e+00
  %7263 = fcmp fast ogt float %7262, 0.000000e+00
  %7264 = fcmp fast olt float %7262, 0.000000e+00
  %7265 = zext i1 %7263 to i32
  %7266 = zext i1 %7264 to i32
  %7267 = sub nsw i32 %7265, %7266
  %7268 = sitofp i32 %7267 to float
  %7269 = fmul fast float %7268, %7262
  %7270 = fsub fast float 1.000000e+00, %7269
  %7271 = fmul fast float %7270, %7270
  %7272 = fmul fast float %7271, %7270
  %7273 = fsub fast float %7270, %7272
  %7274 = fmul fast float %7273, %7258
  %7275 = fsub fast float 1.000000e+00, %7272
  %7276 = fsub fast float %7275, %7274
  %7277 = fmul fast float %7268, 5.000000e-01
  %7278 = fmul fast float %7277, %7276
  %7279 = fsub fast float 5.000000e-01, %7278
  br label %7280

; <label>:7280                                    ; preds = %7252, %7128, %7113
  %7281 = phi float [ 1.000000e+00, %7113 ], [ %7194, %7128 ], [ %7279, %7252 ]
  %7282 = fcmp fast ogt float %6541, 0.000000e+00
  br i1 %7282, label %7283, label %7601, !dx.controlflow.hints !127

; <label>:7283                                    ; preds = %7280
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7286 = fadd fast float %7285, %6425
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 3
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = call float @dx.op.binary.f32(i32 35, float %7286, float 0.000000e+00)  ; FMax(a,b)
  %7293 = fadd fast float %7292, 0x3F10000000000000
  %7294 = fcmp fast oeq float %7291, 0.000000e+00
  br i1 %6428, label %7295, label %7448, !dx.controlflow.hints !128

; <label>:7295                                    ; preds = %7283
  br i1 %7294, label %7296, label %7363

; <label>:7296                                    ; preds = %7295
  %7297 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7299 = fmul fast float %7298, %6417
  %7300 = fmul fast float %7297, %6421
  %7301 = fadd fast float %7299, 5.000000e-01
  %7302 = call float @dx.op.unary.f32(i32 27, float %7301)  ; Round_ni(value)
  %7303 = fadd fast float %7300, 5.000000e-01
  %7304 = call float @dx.op.unary.f32(i32 27, float %7303)  ; Round_ni(value)
  %7305 = fsub fast float %7301, %7302
  %7306 = fsub fast float %7303, %7304
  %7307 = fadd fast float %7302, -5.000000e-01
  %7308 = fadd fast float %7304, -5.000000e-01
  %7309 = fmul fast float %7305, 2.000000e+00
  %7310 = fsub fast float 3.000000e+00, %7309
  %7311 = fadd fast float %7309, 1.000000e+00
  %7312 = fsub fast float 2.000000e+00, %7305
  %7313 = bitcast float %7310 to i32
  %7314 = sub nsw i32 2129859010, %7313
  %7315 = bitcast i32 %7314 to float
  %7316 = fmul fast float %7315, %7312
  %7317 = fadd fast float %7316, -1.000000e+00
  %7318 = bitcast float %7311 to i32
  %7319 = sub nsw i32 2129859010, %7318
  %7320 = bitcast i32 %7319 to float
  %7321 = fmul fast float %7320, %7305
  %7322 = fadd fast float %7321, 1.000000e+00
  %7323 = fmul fast float %7306, 2.000000e+00
  %7324 = fsub fast float 3.000000e+00, %7323
  %7325 = fadd fast float %7323, 1.000000e+00
  %7326 = fsub fast float 2.000000e+00, %7306
  %7327 = bitcast float %7324 to i32
  %7328 = sub nsw i32 2129859010, %7327
  %7329 = bitcast i32 %7328 to float
  %7330 = fmul fast float %7329, %7326
  %7331 = fadd fast float %7330, -1.000000e+00
  %7332 = bitcast float %7325 to i32
  %7333 = sub nsw i32 2129859010, %7332
  %7334 = bitcast i32 %7333 to float
  %7335 = fmul fast float %7334, %7306
  %7336 = fadd fast float %7335, 1.000000e+00
  %7337 = fadd fast float %7317, %7307
  %7338 = fmul fast float %7337, %7288
  %7339 = fadd fast float %7331, %7308
  %7340 = fmul fast float %7339, %7289
  %7341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7338, float %7340, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7342 = extractvalue %dx.types.ResRet.f32 %7341, 0
  %7343 = fmul fast float %7342, %7310
  %7344 = fadd fast float %7322, %7307
  %7345 = fmul fast float %7344, %7288
  %7346 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7345, float %7340, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7347 = extractvalue %dx.types.ResRet.f32 %7346, 0
  %7348 = fmul fast float %7347, %7311
  %7349 = fadd fast float %7336, %7308
  %7350 = fmul fast float %7349, %7289
  %7351 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7338, float %7350, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = fmul fast float %7352, %7310
  %7354 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7345, float %7350, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = fmul fast float %7355, %7311
  %7357 = fadd fast float %7356, %7353
  %7358 = fmul fast float %7357, %7325
  %7359 = fadd fast float %7348, %7343
  %7360 = fmul fast float %7359, %7324
  %7361 = fadd fast float %7360, %7358
  %7362 = fmul fast float %7361, 6.250000e-02
  br label %7601

; <label>:7363                                    ; preds = %7295
  %7364 = fmul fast float %271, 0x401921FB60000000
  %7365 = call float @dx.op.unary.f32(i32 13, float %7364)  ; Sin(value)
  %7366 = call float @dx.op.unary.f32(i32 12, float %7364)  ; Cos(value)
  %7367 = fsub fast float -0.000000e+00, %7365
  br label %7368

; <label>:7368                                    ; preds = %7417, %7363
  %7369 = phi float [ 0.000000e+00, %7363 ], [ %7412, %7417 ]
  %7370 = phi float [ 0.000000e+00, %7363 ], [ %7414, %7417 ]
  %7371 = phi i32 [ 0, %7363 ], [ %7418, %7417 ]
  %7372 = mul i32 %7371, 2
  %7373 = add i32 0, %7372
  %7374 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7373
  %7375 = load float, float* %7374, align 4
  %7376 = mul i32 %7371, 2
  %7377 = add i32 1, %7376
  %7378 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7377
  %7379 = load float, float* %7378, align 4
  %7380 = fmul fast float %7375, %7366
  %7381 = call float @dx.op.tertiary.f32(i32 46, float %7379, float %7367, float %7380)  ; FMad(a,b,c)
  %7382 = fmul fast float %7375, %7365
  %7383 = call float @dx.op.tertiary.f32(i32 46, float %7379, float %7366, float %7382)  ; FMad(a,b,c)
  %7384 = fmul fast float %7381, %7291
  %7385 = fmul fast float %7383, %7291
  %7386 = fadd fast float %7384, %6417
  %7387 = fadd fast float %7385, %6421
  %7388 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7386, float %7387, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.ResRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.ResRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.ResRet.f32 %7388, 3
  %7393 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7389, float* %7393, align 4
  %7394 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7390, float* %7394, align 4
  %7395 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7391, float* %7395, align 4
  %7396 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7392, float* %7396, align 4
  %7397 = fsub fast float %7389, %7293
  %7398 = fcmp fast olt float %7397, 0.000000e+00
  %7399 = select i1 %7398, float 0.000000e+00, float 1.000000e+00
  %7400 = fadd fast float %7399, %7369
  %7401 = fmul fast float %7399, %7397
  %7402 = fadd fast float %7401, %7370
  br label %7403

; <label>:7403                                    ; preds = %7403, %7368
  %7404 = phi i32 [ 1, %7368 ], [ %7415, %7403 ]
  %7405 = phi float [ %7402, %7368 ], [ %7414, %7403 ]
  %7406 = phi float [ %7400, %7368 ], [ %7412, %7403 ]
  %7407 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7404
  %7408 = load float, float* %7407, align 4, !tbaa !122, !noalias !112
  %7409 = fsub fast float %7408, %7293
  %7410 = fcmp fast olt float %7409, 0.000000e+00
  %7411 = select i1 %7410, float 0.000000e+00, float 1.000000e+00
  %7412 = fadd fast float %7411, %7406
  %7413 = fmul fast float %7411, %7409
  %7414 = fadd fast float %7413, %7405
  %7415 = add nuw nsw i32 %7404, 1
  %7416 = icmp eq i32 %7415, 4
  br i1 %7416, label %7417, label %7403, !llvm.loop !124

; <label>:7417                                    ; preds = %7403
  %7418 = add nuw nsw i32 %7371, 1
  %7419 = icmp eq i32 %7418, 8
  br i1 %7419, label %7420, label %7368, !llvm.loop !125

; <label>:7420                                    ; preds = %7417
  %7421 = fdiv fast float 1.000000e+00, %7412
  %7422 = fmul fast float %7421, %7414
  %7423 = fdiv fast float 1.000000e+00, %7293
  %7424 = fmul fast float %7422, %7423
  %7425 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7426 = call float @dx.op.binary.f32(i32 35, float %7425, float 0.000000e+00)  ; FMax(a,b)
  %7427 = fmul fast float %7412, 3.125000e-02
  %7428 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  %7429 = fmul fast float %7428, 2.000000e+00
  %7430 = fadd fast float %7429, -1.000000e+00
  %7431 = fcmp fast ogt float %7430, 0.000000e+00
  %7432 = fcmp fast olt float %7430, 0.000000e+00
  %7433 = zext i1 %7431 to i32
  %7434 = zext i1 %7432 to i32
  %7435 = sub nsw i32 %7433, %7434
  %7436 = sitofp i32 %7435 to float
  %7437 = fmul fast float %7436, %7430
  %7438 = fsub fast float 1.000000e+00, %7437
  %7439 = fmul fast float %7438, %7438
  %7440 = fmul fast float %7439, %7438
  %7441 = fsub fast float %7438, %7440
  %7442 = fmul fast float %7441, %7426
  %7443 = fsub fast float 1.000000e+00, %7440
  %7444 = fsub fast float %7443, %7442
  %7445 = fmul fast float %7436, 5.000000e-01
  %7446 = fmul fast float %7445, %7444
  %7447 = fsub fast float 5.000000e-01, %7446
  br label %7601

; <label>:7448                                    ; preds = %7283
  br i1 %7294, label %7449, label %7516

; <label>:7449                                    ; preds = %7448
  %7450 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7451 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7452 = fmul fast float %7451, %6417
  %7453 = fmul fast float %7450, %6421
  %7454 = fadd fast float %7452, 5.000000e-01
  %7455 = call float @dx.op.unary.f32(i32 27, float %7454)  ; Round_ni(value)
  %7456 = fadd fast float %7453, 5.000000e-01
  %7457 = call float @dx.op.unary.f32(i32 27, float %7456)  ; Round_ni(value)
  %7458 = fsub fast float %7454, %7455
  %7459 = fsub fast float %7456, %7457
  %7460 = fadd fast float %7455, -5.000000e-01
  %7461 = fadd fast float %7457, -5.000000e-01
  %7462 = fmul fast float %7458, 2.000000e+00
  %7463 = fsub fast float 3.000000e+00, %7462
  %7464 = fadd fast float %7462, 1.000000e+00
  %7465 = fsub fast float 2.000000e+00, %7458
  %7466 = bitcast float %7463 to i32
  %7467 = sub nsw i32 2129859010, %7466
  %7468 = bitcast i32 %7467 to float
  %7469 = fmul fast float %7468, %7465
  %7470 = fadd fast float %7469, -1.000000e+00
  %7471 = bitcast float %7464 to i32
  %7472 = sub nsw i32 2129859010, %7471
  %7473 = bitcast i32 %7472 to float
  %7474 = fmul fast float %7473, %7458
  %7475 = fadd fast float %7474, 1.000000e+00
  %7476 = fmul fast float %7459, 2.000000e+00
  %7477 = fsub fast float 3.000000e+00, %7476
  %7478 = fadd fast float %7476, 1.000000e+00
  %7479 = fsub fast float 2.000000e+00, %7459
  %7480 = bitcast float %7477 to i32
  %7481 = sub nsw i32 2129859010, %7480
  %7482 = bitcast i32 %7481 to float
  %7483 = fmul fast float %7482, %7479
  %7484 = fadd fast float %7483, -1.000000e+00
  %7485 = bitcast float %7478 to i32
  %7486 = sub nsw i32 2129859010, %7485
  %7487 = bitcast i32 %7486 to float
  %7488 = fmul fast float %7487, %7459
  %7489 = fadd fast float %7488, 1.000000e+00
  %7490 = fadd fast float %7470, %7460
  %7491 = fmul fast float %7490, %7288
  %7492 = fadd fast float %7484, %7461
  %7493 = fmul fast float %7492, %7289
  %7494 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7491, float %7493, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7495 = extractvalue %dx.types.ResRet.f32 %7494, 0
  %7496 = fmul fast float %7495, %7463
  %7497 = fadd fast float %7475, %7460
  %7498 = fmul fast float %7497, %7288
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7498, float %7493, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = fmul fast float %7500, %7464
  %7502 = fadd fast float %7489, %7461
  %7503 = fmul fast float %7502, %7289
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7491, float %7503, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = fmul fast float %7505, %7463
  %7507 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7498, float %7503, float undef, float undef, i32 0, i32 0, i32 undef, float %7293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = fmul fast float %7508, %7464
  %7510 = fadd fast float %7509, %7506
  %7511 = fmul fast float %7510, %7478
  %7512 = fadd fast float %7501, %7496
  %7513 = fmul fast float %7512, %7477
  %7514 = fadd fast float %7513, %7511
  %7515 = fmul fast float %7514, 6.250000e-02
  br label %7601

; <label>:7516                                    ; preds = %7448
  %7517 = fmul fast float %271, 0x401921FB60000000
  %7518 = call float @dx.op.unary.f32(i32 13, float %7517)  ; Sin(value)
  %7519 = call float @dx.op.unary.f32(i32 12, float %7517)  ; Cos(value)
  %7520 = fsub fast float -0.000000e+00, %7518
  br label %7521

; <label>:7521                                    ; preds = %7570, %7516
  %7522 = phi float [ 0.000000e+00, %7516 ], [ %7565, %7570 ]
  %7523 = phi float [ 0.000000e+00, %7516 ], [ %7567, %7570 ]
  %7524 = phi i32 [ 0, %7516 ], [ %7571, %7570 ]
  %7525 = mul i32 %7524, 2
  %7526 = add i32 0, %7525
  %7527 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7526
  %7528 = load float, float* %7527, align 4
  %7529 = mul i32 %7524, 2
  %7530 = add i32 1, %7529
  %7531 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7530
  %7532 = load float, float* %7531, align 4
  %7533 = fmul fast float %7528, %7519
  %7534 = call float @dx.op.tertiary.f32(i32 46, float %7532, float %7520, float %7533)  ; FMad(a,b,c)
  %7535 = fmul fast float %7528, %7518
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7532, float %7519, float %7535)  ; FMad(a,b,c)
  %7537 = fmul fast float %7534, %7291
  %7538 = fmul fast float %7536, %7291
  %7539 = fadd fast float %7537, %6417
  %7540 = fadd fast float %7538, %6421
  %7541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7539, float %7540, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7542 = extractvalue %dx.types.ResRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.ResRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.ResRet.f32 %7541, 2
  %7545 = extractvalue %dx.types.ResRet.f32 %7541, 3
  %7546 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7542, float* %7546, align 4
  %7547 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7543, float* %7547, align 4
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7544, float* %7548, align 4
  %7549 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7545, float* %7549, align 4
  %7550 = fsub fast float %7542, %7293
  %7551 = fcmp fast olt float %7550, 0.000000e+00
  %7552 = select i1 %7551, float 0.000000e+00, float 1.000000e+00
  %7553 = fadd fast float %7552, %7522
  %7554 = fmul fast float %7552, %7550
  %7555 = fadd fast float %7554, %7523
  br label %7556

; <label>:7556                                    ; preds = %7556, %7521
  %7557 = phi i32 [ 1, %7521 ], [ %7568, %7556 ]
  %7558 = phi float [ %7555, %7521 ], [ %7567, %7556 ]
  %7559 = phi float [ %7553, %7521 ], [ %7565, %7556 ]
  %7560 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7557
  %7561 = load float, float* %7560, align 4, !tbaa !122, !noalias !112
  %7562 = fsub fast float %7561, %7293
  %7563 = fcmp fast olt float %7562, 0.000000e+00
  %7564 = select i1 %7563, float 0.000000e+00, float 1.000000e+00
  %7565 = fadd fast float %7564, %7559
  %7566 = fmul fast float %7564, %7562
  %7567 = fadd fast float %7566, %7558
  %7568 = add nuw nsw i32 %7557, 1
  %7569 = icmp eq i32 %7568, 4
  br i1 %7569, label %7570, label %7556, !llvm.loop !124

; <label>:7570                                    ; preds = %7556
  %7571 = add nuw nsw i32 %7524, 1
  %7572 = icmp eq i32 %7571, 8
  br i1 %7572, label %7573, label %7521, !llvm.loop !125

; <label>:7573                                    ; preds = %7570
  %7574 = fdiv fast float 1.000000e+00, %7565
  %7575 = fmul fast float %7574, %7567
  %7576 = fdiv fast float 1.000000e+00, %7293
  %7577 = fmul fast float %7575, %7576
  %7578 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7579 = call float @dx.op.binary.f32(i32 35, float %7578, float 0.000000e+00)  ; FMax(a,b)
  %7580 = fmul fast float %7565, 3.125000e-02
  %7581 = call float @dx.op.unary.f32(i32 7, float %7580)  ; Saturate(value)
  %7582 = fmul fast float %7581, 2.000000e+00
  %7583 = fadd fast float %7582, -1.000000e+00
  %7584 = fcmp fast ogt float %7583, 0.000000e+00
  %7585 = fcmp fast olt float %7583, 0.000000e+00
  %7586 = zext i1 %7584 to i32
  %7587 = zext i1 %7585 to i32
  %7588 = sub nsw i32 %7586, %7587
  %7589 = sitofp i32 %7588 to float
  %7590 = fmul fast float %7589, %7583
  %7591 = fsub fast float 1.000000e+00, %7590
  %7592 = fmul fast float %7591, %7591
  %7593 = fmul fast float %7592, %7591
  %7594 = fsub fast float %7591, %7593
  %7595 = fmul fast float %7594, %7579
  %7596 = fsub fast float 1.000000e+00, %7593
  %7597 = fsub fast float %7596, %7595
  %7598 = fmul fast float %7589, 5.000000e-01
  %7599 = fmul fast float %7598, %7597
  %7600 = fsub fast float 5.000000e-01, %7599
  br label %7601

; <label>:7601                                    ; preds = %7573, %7449, %7420, %7296, %7280
  %7602 = phi float [ 1.000000e+00, %7280 ], [ %7362, %7296 ], [ %7447, %7420 ], [ %7515, %7449 ], [ %7600, %7573 ]
  %7603 = fsub fast float %7114, %6947
  %7604 = fmul fast float %7603, %6514
  %7605 = fadd fast float %7604, %6947
  %7606 = fsub fast float %7281, %7605
  %7607 = fmul fast float %7606, %6513
  %7608 = fadd fast float %7607, %7605
  %7609 = fsub fast float %7602, %7608
  %7610 = fmul fast float %7609, %6541
  %7611 = fadd fast float %7610, %7608
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 2
  %7614 = fcmp fast ogt float %7613, 0.000000e+00
  br i1 %7614, label %7615, label %7655, !dx.controlflow.hints !129

; <label>:7615                                    ; preds = %7601
  %7616 = fcmp fast ugt float %7613, 0.000000e+00
  br i1 %7616, label %7617, label %7652

; <label>:7617                                    ; preds = %7615
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.CBufRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.CBufRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7628 = extractvalue %dx.types.CBufRet.f32 %7612, 0
  %7629 = extractvalue %dx.types.CBufRet.f32 %7612, 1
  %7630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.CBufRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.CBufRet.f32 %7630, 2
  %7634 = fadd fast float %7631, %6394
  %7635 = fadd fast float %7632, %6395
  %7636 = fadd fast float %7633, %6396
  %7637 = fmul fast float %7634, %7619
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7635, float %7637)  ; FMad(a,b,c)
  %7639 = call float @dx.op.tertiary.f32(i32 46, float %7621, float %7636, float %7638)  ; FMad(a,b,c)
  %7640 = fadd fast float %7639, %7622
  %7641 = fmul fast float %7634, %7624
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7635, float %7641)  ; FMad(a,b,c)
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7636, float %7642)  ; FMad(a,b,c)
  %7644 = fadd fast float %7643, %7627
  %7645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7640, float %7644, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = fmul fast float %7646, %7629
  %7648 = fadd fast float %7647, %7628
  %7649 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  %7650 = fmul fast float %7649, %7613
  %7651 = fsub fast float 1.000000e+00, %7650
  br label %7652

; <label>:7652                                    ; preds = %7617, %7615
  %7653 = phi float [ %7651, %7617 ], [ 1.000000e+00, %7615 ]
  %7654 = fmul fast float %7653, %7611
  br label %7655

; <label>:7655                                    ; preds = %7652, %7601, %6374
  %7656 = phi float [ 1.000000e+00, %6374 ], [ %7654, %7652 ], [ %7611, %7601 ]
  %7657 = call float @dx.op.binary.f32(i32 36, float %7656, float %7656)  ; FMin(a,b)
  %7658 = call float @dx.op.binary.f32(i32 36, float %7656, float %7657)  ; FMin(a,b)
  %7659 = fcmp fast ogt float %7658, 0.000000e+00
  br i1 %7659, label %7660, label %7825, !dx.controlflow.hints !130

; <label>:7660                                    ; preds = %7655
  %7661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7664 = extractvalue %dx.types.CBufRet.f32 %7661, 2
  %7665 = extractvalue %dx.types.CBufRet.f32 %7661, 3
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7670 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7671, 0
  %7673 = extractvalue %dx.types.CBufRet.f32 %7671, 1
  %7674 = extractvalue %dx.types.CBufRet.f32 %7671, 2
  %7675 = extractvalue %dx.types.CBufRet.f32 %7671, 3
  %7676 = fmul fast float %7662, %6394
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7663, float %7676)  ; FMad(a,b,c)
  %7678 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7664, float %7677)  ; FMad(a,b,c)
  %7679 = fadd fast float %7678, %7665
  %7680 = fmul fast float %7667, %6394
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7668, float %7680)  ; FMad(a,b,c)
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7669, float %7681)  ; FMad(a,b,c)
  %7683 = fadd fast float %7682, %7670
  %7684 = fmul fast float %7672, %6394
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7673, float %7684)  ; FMad(a,b,c)
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %6396, float %7674, float %7685)  ; FMad(a,b,c)
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.CBufRet.f32 %7687, 3
  %7691 = fmul fast float %7690, %7679
  %7692 = fmul fast float %7690, %7683
  %7693 = fadd fast float %7691, %7688
  %7694 = fadd fast float %7692, %7689
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7698 = fsub fast float %7693, %7696
  %7699 = fsub fast float %7694, %7697
  %7700 = fcmp fast olt float %7698, 0.000000e+00
  %7701 = fcmp fast olt float %7699, 0.000000e+00
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.CBufRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.CBufRet.f32 %7702, 2
  %7706 = extractvalue %dx.types.CBufRet.f32 %7702, 3
  %7707 = select i1 %7700, float %7703, float %7705
  %7708 = select i1 %7701, float %7704, float %7706
  %7709 = fmul fast float %7707, %7698
  %7710 = fmul fast float %7708, %7699
  %7711 = call float @dx.op.unary.f32(i32 6, float %7709)  ; FAbs(value)
  %7712 = call float @dx.op.unary.f32(i32 6, float %7710)  ; FAbs(value)
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7715 = call float @dx.op.binary.f32(i32 35, float %7711, float %7712)  ; FMax(a,b)
  %7716 = fsub fast float %7714, %7715
  %7717 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7718 = fcmp fast ogt float %7717, 0.000000e+00
  br i1 %7718, label %7719, label %7760, !dx.controlflow.hints !131

; <label>:7719                                    ; preds = %7660
  %7720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7693, float %7694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 1
  %7722 = fcmp fast ogt float %7721, 0.000000e+00
  br i1 %7722, label %7723, label %7755

; <label>:7723                                    ; preds = %7719
  %7724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7693, float %7694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7725 = extractvalue %dx.types.ResRet.f32 %7724, 0
  %7726 = extractvalue %dx.types.ResRet.f32 %7724, 1
  %7727 = extractvalue %dx.types.ResRet.f32 %7724, 2
  %7728 = extractvalue %dx.types.ResRet.f32 %7724, 3
  %7729 = fsub fast float 1.000000e+00, %7675
  %7730 = fsub fast float %7729, %7686
  %7731 = fmul fast float %7730, 0x400921FB60000000
  %7732 = fadd fast float %7731, 0x3FF921FB60000000
  %7733 = call float @dx.op.unary.f32(i32 13, float %7732)  ; Sin(value)
  %7734 = fadd fast float %7733, -1.000000e+00
  %7735 = fmul fast float %7734, 0x3FD45F3060000000
  %7736 = fmul fast float %7730, 0x401921FB60000000
  %7737 = fadd fast float %7736, 0x400921FB60000000
  %7738 = call float @dx.op.unary.f32(i32 13, float %7737)  ; Sin(value)
  %7739 = fadd fast float %7738, 0x3E7777A5C0000000
  %7740 = fmul fast float %7739, 0x3FC45F3060000000
  %7741 = fmul fast float %7730, 0x4022D97C80000000
  %7742 = fadd fast float %7741, 0x4012D97C80000000
  %7743 = call float @dx.op.unary.f32(i32 13, float %7742)  ; Sin(value)
  %7744 = fadd fast float %7743, 1.000000e+00
  %7745 = fmul fast float %7744, 0x3FBB2995E0000000
  %7746 = fmul fast float %7730, 0x402921FB60000000
  %7747 = fadd fast float %7746, 0x401921FB60000000
  %7748 = call float @dx.op.unary.f32(i32 13, float %7747)  ; Sin(value)
  %7749 = fadd fast float %7748, 0xBE8777A5C0000000
  %7750 = fmul fast float %7749, 0x3FB45F3060000000
  %7751 = call float @dx.op.dot4.f32(i32 56, float %7725, float %7726, float %7727, float %7728, float %7735, float %7740, float %7745, float %7750)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7752 = fmul fast float %7751, 0xBFF7154760000000
  %7753 = call float @dx.op.unary.f32(i32 21, float %7752)  ; Exp(value)
  %7754 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  br label %7755

; <label>:7755                                    ; preds = %7723, %7719
  %7756 = phi float [ %7754, %7723 ], [ 1.000000e+00, %7719 ]
  %7757 = fadd fast float %7756, -1.000000e+00
  %7758 = fmul fast float %7757, %7717
  %7759 = fadd fast float %7758, 1.000000e+00
  br label %7760

; <label>:7760                                    ; preds = %7755, %7660
  %7761 = phi float [ %7759, %7755 ], [ 1.000000e+00, %7660 ]
  %7762 = fmul fast float %7761, %7656
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 0
  %7765 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7766 = extractvalue %dx.types.CBufRet.f32 %7763, 2
  %7767 = fadd fast float %7764, %201
  %7768 = fadd fast float %7765, %202
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.CBufRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.CBufRet.f32 %7771, 2
  %7775 = fsub fast float -0.000000e+00, %7767
  %7776 = fsub fast float -0.000000e+00, %7768
  %7777 = fsub fast float %5618, %7766
  %7778 = fadd fast float %7777, %7770
  %7779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7775, float %7776, float %7778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7780 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7772, float %7773, float %7774)  ; Dot3(ax,ay,az,bx,by,bz)
  %7781 = fdiv fast float 1.000000e+00, %7780
  %7782 = fmul fast float %7781, %7779
  %7783 = fmul fast float %7772, %7782
  %7784 = fmul fast float %7773, %7782
  %7785 = fadd fast float %7783, %7767
  %7786 = fadd fast float %7784, %7768
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7790 = fsub fast float %7785, %7788
  %7791 = fsub fast float %7786, %7789
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7795 = fmul fast float %7790, %7793
  %7796 = fmul fast float %7791, %7794
  %7797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.i32 %7797, 3
  %7799 = icmp eq i32 %7798, 0
  br i1 %7799, label %7805, label %7800

; <label>:7800                                    ; preds = %7760
  %7801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7795, float %7796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = extractvalue %dx.types.ResRet.f32 %7801, 1
  %7804 = extractvalue %dx.types.ResRet.f32 %7801, 2
  br label %7810

; <label>:7805                                    ; preds = %7760
  %7806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7795, float %7796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7807 = extractvalue %dx.types.ResRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.ResRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.ResRet.f32 %7806, 2
  br label %7810

; <label>:7810                                    ; preds = %7805, %7800
  %7811 = phi float [ %7802, %7800 ], [ %7807, %7805 ]
  %7812 = phi float [ %7803, %7800 ], [ %7808, %7805 ]
  %7813 = phi float [ %7804, %7800 ], [ %7809, %7805 ]
  %7814 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7815 = fmul fast float %7814, %7811
  %7816 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  %7817 = fsub fast float %7782, %7816
  %7818 = fsub fast float %7817, %7815
  %7819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7818)  ; FMax(a,b)
  %7820 = fmul fast float %7819, %7812
  %7821 = call float @dx.op.binary.f32(i32 36, float %7813, float %7820)  ; FMin(a,b)
  %7822 = fmul fast float %7821, 0xBFF7154760000000
  %7823 = call float @dx.op.unary.f32(i32 21, float %7822)  ; Exp(value)
  %7824 = fmul fast float %7762, %7823
  br label %7825

; <label>:7825                                    ; preds = %7810, %7655
  %7826 = phi float [ %7824, %7810 ], [ %7656, %7655 ]
  %7827 = call float @dx.op.binary.f32(i32 36, float %7826, float %7826)  ; FMin(a,b)
  %7828 = call float @dx.op.binary.f32(i32 36, float %7826, float %7827)  ; FMin(a,b)
  %7829 = fcmp fast ogt float %7828, 0.000000e+00
  br i1 %7829, label %7830, label %8090, !dx.controlflow.hints !132

; <label>:7830                                    ; preds = %7825
  %7831 = fmul fast float %7826, %6386
  %7832 = fmul fast float %7826, %6387
  %7833 = fmul fast float %7826, %6388
  %7834 = fsub fast float %203, %4817
  %7835 = fcmp fast ogt float %7834, 0.000000e+00
  %7836 = fmul fast float %6375, 5.120000e+02
  %7837 = fmul fast float %6376, 5.120000e+02
  %7838 = fmul fast float %6377, 5.120000e+02
  %7839 = fadd fast float %7838, %203
  %7840 = fsub fast float %4817, %7839
  %7841 = fmul fast float %7840, 2.000000e+00
  %7842 = fadd fast float %7841, %7839
  %7843 = select i1 %7835, float %7842, float %7839
  %7844 = fsub fast float %7843, %203
  %7845 = call float @dx.op.dot3.f32(i32 55, float %7836, float %7837, float %7844, float %7836, float %7837, float %7844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = call float @dx.op.unary.f32(i32 25, float %7845)  ; Rsqrt(value)
  %7847 = fmul fast float %7846, %7836
  %7848 = fmul fast float %7846, %7837
  %7849 = fmul fast float %7846, %7844
  %7850 = fsub fast float %4817, %203
  %7851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7850)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7847, float %7848, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7853 = fdiv fast float 1.000000e+00, %7852
  %7854 = fmul fast float %7853, %7851
  %7855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7834, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7856 = fcmp fast ogt float %7855, 0.000000e+00
  %7857 = fcmp fast olt float %7855, 0.000000e+00
  %7858 = zext i1 %7856 to i32
  %7859 = zext i1 %7857 to i32
  %7860 = sub nsw i32 %7858, %7859
  %7861 = sitofp i32 %7860 to float
  %7862 = fsub fast float %7843, %4817
  %7863 = call float @dx.op.dot3.f32(i32 55, float %7836, float %7837, float %7862, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7864 = fcmp fast ogt float %7863, 0.000000e+00
  %7865 = fcmp fast olt float %7863, 0.000000e+00
  %7866 = zext i1 %7864 to i32
  %7867 = zext i1 %7865 to i32
  %7868 = sub nsw i32 %7866, %7867
  %7869 = sitofp i32 %7868 to float
  %7870 = fcmp fast une float %7861, %7869
  br i1 %7870, label %7871, label %7881

; <label>:7871                                    ; preds = %7830
  %7872 = fmul fast float %7854, %7849
  %7873 = fmul fast float %7854, %7848
  %7874 = fmul fast float %7854, %7847
  %7875 = fmul fast float %7874, %7874
  %7876 = fmul fast float %7873, %7873
  %7877 = fadd fast float %7875, %7876
  %7878 = fmul fast float %7872, %7872
  %7879 = fadd fast float %7877, %7878
  %7880 = call float @dx.op.unary.f32(i32 24, float %7879)  ; Sqrt(value)
  br label %7891

; <label>:7881                                    ; preds = %7830
  %7882 = icmp slt i32 %7860, 0
  br i1 %7882, label %7883, label %7891

; <label>:7883                                    ; preds = %7881
  %7884 = fsub fast float %203, %7843
  %7885 = fmul fast float %7836, %7836
  %7886 = fmul fast float %7837, %7837
  %7887 = fadd fast float %7885, %7886
  %7888 = fmul fast float %7884, %7884
  %7889 = fadd fast float %7887, %7888
  %7890 = call float @dx.op.unary.f32(i32 24, float %7889)  ; Sqrt(value)
  br label %7891

; <label>:7891                                    ; preds = %7883, %7881, %7871
  %7892 = phi float [ %7880, %7871 ], [ %7890, %7883 ], [ 0.000000e+00, %7881 ]
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = select i1 %7835, float -0.000000e+00, float %7893
  %7895 = fmul fast float %4814, 0x3FF7154760000000
  %7896 = fmul fast float %7895, %7894
  %7897 = fmul fast float %4815, 0x3FF7154760000000
  %7898 = fmul fast float %7897, %7894
  %7899 = fmul fast float %4816, 0x3FF7154760000000
  %7900 = fmul fast float %7899, %7894
  %7901 = call float @dx.op.unary.f32(i32 21, float %7896)  ; Exp(value)
  %7902 = call float @dx.op.unary.f32(i32 21, float %7898)  ; Exp(value)
  %7903 = call float @dx.op.unary.f32(i32 21, float %7900)  ; Exp(value)
  %7904 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7905 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7906 = call float @dx.op.unary.f32(i32 7, float %7903)  ; Saturate(value)
  %7907 = fmul fast float %7831, %7904
  %7908 = fmul fast float %7832, %7905
  %7909 = fmul fast float %7833, %7906
  %7910 = fsub fast float %6375, %5606
  %7911 = fsub fast float %6376, %5605
  %7912 = fsub fast float %6377, %5604
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7910, float %7911, float %7912, float %7910, float %7911, float %7912)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = call float @dx.op.unary.f32(i32 25, float %7913)  ; Rsqrt(value)
  %7915 = fmul fast float %7914, %7910
  %7916 = fmul fast float %7914, %7911
  %7917 = fmul fast float %7914, %7912
  %7918 = call float @dx.op.dot3.f32(i32 55, float %6375, float %6376, float %6377, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %7919 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5602, float %5601, float %7915, float %7916, float %7917)  ; Dot3(ax,ay,az,bx,by,bz)
  %7920 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7921 = bitcast i32 %5645 to float
  %7922 = fmul fast float %7920, %7920
  %7923 = fmul fast float %7922, %7921
  %7924 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7925 = fmul fast float %7924, %7920
  %7926 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %7915, float %7916, float %7917)  ; Dot3(ax,ay,az,bx,by,bz)
  %7927 = fmul fast float %7926, %7926
  %7928 = call float @dx.op.unary.f32(i32 6, float %7918)  ; FAbs(value)
  %7929 = fsub fast float 1.000000e+00, %5639
  %7930 = fmul fast float %5621, %5621
  %7931 = fmul fast float %7930, %7929
  %7932 = fadd fast float %7931, %5639
  %7933 = bitcast float %7932 to i32
  %7934 = ashr i32 %7933, 1
  %7935 = add nsw i32 %7934, 532487669
  %7936 = bitcast i32 %7935 to float
  %7937 = fadd fast float %7936, %5621
  %7938 = fmul fast float %5639, %7927
  %7939 = fsub fast float 1.000000e+00, %7927
  %7940 = fadd fast float %7939, %7938
  %7941 = fmul fast float %7928, %7928
  %7942 = fmul fast float %7941, %7929
  %7943 = fadd fast float %7942, %5639
  %7944 = bitcast float %7943 to i32
  %7945 = ashr i32 %7944, 1
  %7946 = add nsw i32 %7945, 532487669
  %7947 = bitcast i32 %7946 to float
  %7948 = fadd fast float %7947, %7928
  %7949 = fmul fast float %7940, %7940
  %7950 = fmul fast float %7949, %7937
  %7951 = fmul fast float %7950, %7948
  %7952 = fdiv fast float 0x3FF0A00000000000, %7951
  %7953 = fmul fast float %7952, %5639
  %7954 = fmul fast float %5745, 0x3FF9999980000000
  %7955 = fsub fast float 5.000000e+00, %7954
  %7956 = call float @dx.op.unary.f32(i32 6, float %7919)  ; FAbs(value)
  %7957 = fsub fast float 1.000000e+00, %7956
  %7958 = fmul fast float %5745, 0x41D9660740000000
  %7959 = fadd fast float %7958, 0xC1EFBF8940000000
  %7960 = bitcast float %7957 to i32
  %7961 = sitofp i32 %7960 to float
  %7962 = fmul fast float %7961, %7955
  %7963 = fadd fast float %7959, %7962
  %7964 = fptosi float %7963 to i32
  %7965 = bitcast i32 %7964 to float
  %7966 = fsub fast float 1.000000e+00, %5607
  %7967 = fsub fast float 1.000000e+00, %5608
  %7968 = fsub fast float 1.000000e+00, %5619
  %7969 = fmul fast float %7965, %7966
  %7970 = fmul fast float %7965, %7967
  %7971 = fmul fast float %7965, %7968
  %7972 = fadd fast float %7969, %5607
  %7973 = fadd fast float %7970, %5608
  %7974 = fadd fast float %7971, %5619
  br i1 %5768, label %7975, label %7998

; <label>:7975                                    ; preds = %7891
  %7976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4410, float %7956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7977 = extractvalue %dx.types.ResRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.ResRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.ResRet.f32 %7976, 2
  %7980 = fadd fast float %7977, -5.000000e-01
  %7981 = fadd fast float %7978, -5.000000e-01
  %7982 = fadd fast float %7979, -5.000000e-01
  %7983 = fmul fast float %5607, 4.000000e+00
  %7984 = fmul fast float %7983, %7966
  %7985 = fmul fast float %7984, %7980
  %7986 = fmul fast float %5608, 4.000000e+00
  %7987 = fmul fast float %7986, %7967
  %7988 = fmul fast float %7987, %7981
  %7989 = fmul fast float %5619, 4.000000e+00
  %7990 = fmul fast float %7989, %7968
  %7991 = fmul fast float %7990, %7982
  %7992 = fadd fast float %7985, %7972
  %7993 = fadd fast float %7988, %7973
  %7994 = fadd fast float %7991, %7974
  %7995 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7996 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7997 = call float @dx.op.unary.f32(i32 7, float %7994)  ; Saturate(value)
  br label %7998

; <label>:7998                                    ; preds = %7975, %7891
  %7999 = phi float [ %7995, %7975 ], [ %7972, %7891 ]
  %8000 = phi float [ %7996, %7975 ], [ %7973, %7891 ]
  %8001 = phi float [ %7997, %7975 ], [ %7974, %7891 ]
  %8002 = fmul fast float %7918, 9.843750e-01
  %8003 = fadd fast float %8002, 7.812500e-03
  %8004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8003, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8005 = extractvalue %dx.types.ResRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.ResRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.ResRet.f32 %8004, 2
  %8008 = extractvalue %dx.types.ResRet.f32 %8004, 3
  %8009 = fsub fast float %8007, %8005
  %8010 = fsub fast float %8008, %8006
  %8011 = fmul fast float %8009, %5755
  %8012 = fmul fast float %8010, %5755
  %8013 = fadd fast float %8011, %8005
  %8014 = fadd fast float %8012, %8006
  %8015 = fmul fast float %8013, %5607
  %8016 = fmul fast float %8013, %5608
  %8017 = fmul fast float %8013, %5619
  %8018 = fadd fast float %8015, %8014
  %8019 = fadd fast float %8016, %8014
  %8020 = fadd fast float %8017, %8014
  br i1 %5768, label %8021, label %8044

; <label>:8021                                    ; preds = %7998
  %8022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4410, float %7918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8023 = extractvalue %dx.types.ResRet.f32 %8022, 0
  %8024 = extractvalue %dx.types.ResRet.f32 %8022, 1
  %8025 = extractvalue %dx.types.ResRet.f32 %8022, 2
  %8026 = fadd fast float %8023, -5.000000e-01
  %8027 = fadd fast float %8024, -5.000000e-01
  %8028 = fadd fast float %8025, -5.000000e-01
  %8029 = fmul fast float %5607, 4.000000e+00
  %8030 = fmul fast float %8029, %7966
  %8031 = fmul fast float %8030, %8026
  %8032 = fmul fast float %5608, 4.000000e+00
  %8033 = fmul fast float %8032, %7967
  %8034 = fmul fast float %8033, %8027
  %8035 = fmul fast float %5619, 4.000000e+00
  %8036 = fmul fast float %8035, %7968
  %8037 = fmul fast float %8036, %8028
  %8038 = fadd fast float %8031, %8018
  %8039 = fadd fast float %8034, %8019
  %8040 = fadd fast float %8037, %8020
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8043 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  br label %8044

; <label>:8044                                    ; preds = %8021, %7998
  %8045 = phi float [ %8041, %8021 ], [ %8018, %7998 ]
  %8046 = phi float [ %8042, %8021 ], [ %8019, %7998 ]
  %8047 = phi float [ %8043, %8021 ], [ %8020, %7998 ]
  %8048 = call float @dx.op.binary.f32(i32 35, float %8046, float %8047)  ; FMax(a,b)
  %8049 = call float @dx.op.binary.f32(i32 35, float %8045, float %8048)  ; FMax(a,b)
  %8050 = fsub fast float 1.000000e+00, %8049
  %8051 = fmul fast float %7999, %7953
  %8052 = fmul fast float %8000, %7953
  %8053 = fmul fast float %8001, %7953
  %8054 = fsub fast float 1.000000e+00, %7919
  %8055 = bitcast float %8054 to i32
  %8056 = sitofp i32 %8055 to float
  %8057 = fmul fast float %8056, 5.000000e+00
  %8058 = fadd fast float %8057, 0xC1EFBF8940000000
  %8059 = fptosi float %8058 to i32
  %8060 = bitcast i32 %8059 to float
  %8061 = fmul fast float %8060, %4411
  %8062 = fmul fast float %8050, %8061
  %8063 = fmul fast float %8062, %6310
  %8064 = fmul fast float %8062, %6311
  %8065 = fmul fast float %8062, %6312
  %8066 = fadd fast float %8063, %8051
  %8067 = fadd fast float %8064, %8052
  %8068 = fadd fast float %8065, %8053
  %8069 = fmul fast float %7925, %7907
  %8070 = fmul fast float %8069, %8050
  %8071 = fmul fast float %7925, %7908
  %8072 = fmul fast float %8071, %8050
  %8073 = fmul fast float %7925, %7909
  %8074 = fmul fast float %8073, %8050
  %8075 = fmul fast float %8069, %8066
  %8076 = fmul fast float %8071, %8067
  %8077 = fmul fast float %8073, %8068
  %8078 = fadd fast float %8070, %6294
  %8079 = fmul fast float %8078, %4407
  %8080 = fadd fast float %8072, %6295
  %8081 = fmul fast float %8080, %4407
  %8082 = fadd fast float %8074, %6296
  %8083 = fmul fast float %8082, %4407
  %8084 = fadd fast float %8075, %6363
  %8085 = fmul fast float %8084, %4407
  %8086 = fadd fast float %8076, %6366
  %8087 = fmul fast float %8086, %4407
  %8088 = fadd fast float %8077, %6369
  %8089 = fmul fast float %8088, %4407
  br label %8090

; <label>:8090                                    ; preds = %8044, %7825, %6290
  %8091 = phi float [ %6364, %6290 ], [ %6364, %7825 ], [ %8085, %8044 ]
  %8092 = phi float [ %6367, %6290 ], [ %6367, %7825 ], [ %8087, %8044 ]
  %8093 = phi float [ %6370, %6290 ], [ %6370, %7825 ], [ %8089, %8044 ]
  %8094 = phi float [ %6359, %6290 ], [ %6359, %7825 ], [ %8079, %8044 ]
  %8095 = phi float [ %6360, %6290 ], [ %6360, %7825 ], [ %8081, %8044 ]
  %8096 = phi float [ %6361, %6290 ], [ %6361, %7825 ], [ %8083, %8044 ]
  %8097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.i32 %8097, 0
  %8099 = icmp eq i32 %8098, 0
  br i1 %8099, label %8775, label %8100

; <label>:8100                                    ; preds = %8090
  %8101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.f32 %8101, 2
  %8103 = extractvalue %dx.types.CBufRet.f32 %8101, 3
  %8104 = fmul fast float %8102, %114
  %8105 = fmul fast float %8103, %115
  %8106 = fptoui float %8104 to i32
  %8107 = fptoui float %8105 to i32
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.f32 %8108, 2
  %8111 = extractvalue %dx.types.CBufRet.f32 %8108, 3
  %8112 = fadd fast float %101, -4.000000e+00
  %8113 = call float @dx.op.binary.f32(i32 35, float %8112, float 0.000000e+00)  ; FMax(a,b)
  %8114 = fadd fast float %8113, %8109
  %8115 = fmul fast float %8114, %8110
  %8116 = call float @dx.op.unary.f32(i32 23, float %8115)  ; Log(value)
  %8117 = fmul fast float %8116, %8111
  %8118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8118, 2
  %8120 = fmul fast float %8117, %8119
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.i32 %8122, 1
  %8124 = add i32 %8123, -1
  %8125 = uitofp i32 %8123 to float
  %8126 = fmul fast float %8125, %8121
  %8127 = fptoui float %8126 to i32
  %8128 = call i32 @dx.op.binary.i32(i32 40, i32 %8127, i32 %8124)  ; UMin(a,b)
  %8129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.i32 %8129, 2
  %8131 = extractvalue %dx.types.CBufRet.i32 %8129, 3
  %8132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8107, i32 %8130, i32 %8106)  ; UMad(a,b,c)
  %8133 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8128, i32 %8131, i32 %8132)  ; UMad(a,b,c)
  %8134 = add nsw i32 %8098, -1
  %8135 = call i32 @dx.op.binary.i32(i32 37, i32 %8134, i32 0)  ; IMax(a,b)
  %8136 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %8137 = fptoui float %8136 to i32
  %8138 = lshr i32 %8137, 5
  %8139 = call i32 @dx.op.binary.i32(i32 40, i32 %8138, i32 8191)  ; UMin(a,b)
  %8140 = shl i32 %8139, 2
  %8141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8140, i32 undef)  ; BufferLoad(srv,index,wot)
  %8142 = extractvalue %dx.types.ResRet.i32 %8141, 0
  %8143 = lshr i32 %8142, 16
  %8144 = and i32 %8142, 65535
  %8145 = lshr i32 %8142, 21
  %8146 = lshr i32 %8144, 5
  %8147 = call i32 @dx.op.binary.i32(i32 40, i32 %8146, i32 %8135)  ; UMin(a,b)
  %8148 = icmp ugt i32 %8145, %8147
  br i1 %8148, label %8775, label %8149

; <label>:8149                                    ; preds = %8100
  br label %8150

; <label>:8150                                    ; preds = %8765, %8149
  %8151 = phi i32 [ %8772, %8765 ], [ %8145, %8149 ]
  %8152 = phi float [ %8766, %8765 ], [ %8091, %8149 ]
  %8153 = phi float [ %8767, %8765 ], [ %8092, %8149 ]
  %8154 = phi float [ %8768, %8765 ], [ %8093, %8149 ]
  %8155 = phi float [ %8769, %8765 ], [ %8094, %8149 ]
  %8156 = phi float [ %8770, %8765 ], [ %8095, %8149 ]
  %8157 = phi float [ %8771, %8765 ], [ %8096, %8149 ]
  %8158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.i32 %8158, 0
  %8160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8133, i32 %8159, i32 %8151)  ; UMad(a,b,c)
  %8161 = shl i32 %8160, 2
  %8162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8161, i32 undef)  ; BufferLoad(srv,index,wot)
  %8163 = extractvalue %dx.types.ResRet.i32 %8162, 0
  %8164 = shl i32 %8151, 5
  %8165 = sub nsw i32 %8143, %8164
  %8166 = call i32 @dx.op.binary.i32(i32 37, i32 %8165, i32 0)  ; IMax(a,b)
  %8167 = call i32 @dx.op.binary.i32(i32 38, i32 %8166, i32 31)  ; IMin(a,b)
  %8168 = sub nsw i32 1, %8143
  %8169 = add nsw i32 %8168, %8144
  %8170 = call i32 @dx.op.binary.i32(i32 37, i32 %8169, i32 0)  ; IMax(a,b)
  %8171 = call i32 @dx.op.binary.i32(i32 38, i32 %8170, i32 32)  ; IMin(a,b)
  %8172 = and i32 %8171, 31
  %8173 = shl i32 -1, %8172
  %8174 = xor i32 %8173, -1
  %8175 = and i32 %8167, 31
  %8176 = shl i32 %8174, %8175
  %8177 = icmp eq i32 %8171, 32
  %8178 = select i1 %8177, i32 -1, i32 %8176
  %8179 = and i32 %8178, %8163
  %8180 = icmp eq i32 %8179, 0
  br i1 %8180, label %8765, label %8181

; <label>:8181                                    ; preds = %8150
  br label %8182

; <label>:8182                                    ; preds = %8316, %8181
  %8183 = phi i32 [ %8194, %8316 ], [ %8179, %8181 ]
  %8184 = phi float [ %8317, %8316 ], [ %8152, %8181 ]
  %8185 = phi float [ %8318, %8316 ], [ %8153, %8181 ]
  %8186 = phi float [ %8319, %8316 ], [ %8154, %8181 ]
  %8187 = phi float [ %8320, %8316 ], [ %8155, %8181 ]
  %8188 = phi float [ %8321, %8316 ], [ %8156, %8181 ]
  %8189 = phi float [ %8322, %8316 ], [ %8157, %8181 ]
  %8190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8183)  ; FirstbitLo(value)
  %8191 = add i32 %8190, %8164
  %8192 = and i32 %8190, 31
  %8193 = shl i32 1, %8192
  %8194 = xor i32 %8193, %8183
  %8195 = mul i32 %8191, 112
  %8196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8195, i32 undef)  ; BufferLoad(srv,index,wot)
  %8197 = extractvalue %dx.types.ResRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.ResRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.ResRet.f32 %8196, 2
  %8200 = or i32 %8195, 12
  %8201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8200, i32 undef)  ; BufferLoad(srv,index,wot)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = add i32 %8195, 16
  %8204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8203, i32 undef)  ; BufferLoad(srv,index,wot)
  %8205 = extractvalue %dx.types.ResRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.ResRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.ResRet.f32 %8204, 2
  %8208 = add i32 %8195, 28
  %8209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8208, i32 undef)  ; BufferLoad(srv,index,wot)
  %8210 = extractvalue %dx.types.ResRet.i32 %8209, 0
  %8211 = add i32 %8195, 44
  %8212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8211, i32 undef)  ; BufferLoad(srv,index,wot)
  %8213 = extractvalue %dx.types.ResRet.f32 %8212, 0
  %8214 = add i32 %8195, 48
  %8215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8214, i32 undef)  ; BufferLoad(srv,index,wot)
  %8216 = extractvalue %dx.types.ResRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.ResRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.ResRet.f32 %8215, 2
  %8219 = extractvalue %dx.types.ResRet.f32 %8215, 3
  %8220 = add i32 %8195, 64
  %8221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8220, i32 undef)  ; BufferLoad(srv,index,wot)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.ResRet.f32 %8221, 3
  %8226 = add i32 %8195, 80
  %8227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8226, i32 undef)  ; BufferLoad(srv,index,wot)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8227, 2
  %8230 = add i32 %8195, 92
  %8231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8230, i32 undef)  ; BufferLoad(srv,index,wot)
  %8232 = extractvalue %dx.types.ResRet.i32 %8231, 0
  %8233 = call float @dx.op.dot3.f32(i32 55, float %8197, float %8198, float %8199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8234 = select i1 %260, float %8228, float %8197
  %8235 = select i1 %260, float %8233, float %8198
  %8236 = select i1 %260, float %8229, float %8199
  %8237 = and i32 %8232, 65535
  %8238 = uitofp i32 %8237 to float
  %8239 = lshr i32 %8232, 16
  %8240 = uitofp i32 %8239 to float
  %8241 = and i32 %8210, 65535
  %8242 = and i32 %8210, 50331648
  %8243 = icmp eq i32 %8242, 33554432
  %8244 = fsub fast float %8216, %201
  %8245 = fsub fast float %8217, %202
  %8246 = fsub fast float %8218, %203
  %8247 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8245, float %8246, float %8244, float %8245, float %8246)  ; Dot3(ax,ay,az,bx,by,bz)
  %8248 = call float @dx.op.unary.f32(i32 24, float %8247)  ; Sqrt(value)
  %8249 = fdiv fast float 1.000000e+00, %8248
  %8250 = fmul fast float %8249, %8244
  %8251 = fmul fast float %8249, %8245
  %8252 = fmul fast float %8249, %8246
  %8253 = fadd fast float %8248, %8202
  %8254 = fdiv fast float 1.000000e+00, %8253
  %8255 = fmul float %8213, %8254
  %8256 = fmul float %8255, %8255
  %8257 = call float @dx.op.unary.f32(i32 7, float %8256)  ; Saturate(value)
  br i1 %8243, label %8258, label %8279

; <label>:8258                                    ; preds = %8182
  %8259 = fmul fast float %8224, %8205
  %8260 = fmul fast float %8224, %8206
  %8261 = fmul fast float %8224, %8207
  %8262 = fadd fast float %8244, %8259
  %8263 = fadd fast float %8245, %8260
  %8264 = fadd fast float %8246, %8261
  %8265 = call float @dx.op.dot3.f32(i32 55, float %8262, float %8263, float %8264, float %8262, float %8263, float %8264)  ; Dot3(ax,ay,az,bx,by,bz)
  %8266 = call float @dx.op.unary.f32(i32 25, float %8265)  ; Rsqrt(value)
  %8267 = fmul fast float %8266, %8262
  %8268 = fmul fast float %8266, %8263
  %8269 = fmul fast float %8266, %8264
  %8270 = fsub fast float %201, %8216
  %8271 = fsub fast float %202, %8217
  %8272 = fsub fast float %203, %8218
  %8273 = fsub fast float -0.000000e+00, %8270
  %8274 = fsub fast float -0.000000e+00, %8271
  %8275 = fsub fast float -0.000000e+00, %8272
  %8276 = call float @dx.op.dot3.f32(i32 55, float %8273, float %8274, float %8275, float %8205, float %8206, float %8207)  ; Dot3(ax,ay,az,bx,by,bz)
  %8277 = fcmp fast ogt float %8276, 0.000000e+00
  %8278 = uitofp i1 %8277 to float
  br label %8279

; <label>:8279                                    ; preds = %8258, %8182
  %8280 = phi float [ %8278, %8258 ], [ 1.000000e+00, %8182 ]
  %8281 = phi float [ %8267, %8258 ], [ %8250, %8182 ]
  %8282 = phi float [ %8268, %8258 ], [ %8251, %8182 ]
  %8283 = phi float [ %8269, %8258 ], [ %8252, %8182 ]
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8205, float %8206, float %8207, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = fmul fast float %8284, %8284
  %8286 = call float @dx.op.unary.f32(i32 7, float %8285)  ; Saturate(value)
  %8287 = fsub fast float 1.000000e+00, %8286
  %8288 = fmul fast float %8287, 5.000000e-01
  %8289 = fcmp fast ogt float %8284, 0.000000e+00
  %8290 = fsub fast float 1.000000e+00, %8288
  %8291 = select i1 %8289, float %8288, float %8290
  %8292 = fmul fast float %8291, %8240
  %8293 = fadd fast float %8292, %8238
  %8294 = fmul fast float %8293, 0x3EF0001000000000
  %8295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8294, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8296 = extractvalue %dx.types.ResRet.f32 %8295, 0
  %8297 = fmul fast float %8284, %8222
  %8298 = fadd fast float %8297, %8223
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = select i1 %8243, float 1.000000e+00, float %8299
  %8301 = select i1 %8243, float %8299, float 1.000000e+00
  %8302 = fmul fast float %8248, %8219
  %8303 = fsub fast float 1.000000e+00, %8302
  %8304 = fmul fast float %8303, %8225
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8306 = fmul fast float %8305, %8301
  %8307 = fmul fast float %8306, 2.000000e+00
  %8308 = fsub fast float 3.000000e+00, %8307
  %8309 = fmul fast float %8296, %8280
  %8310 = fmul fast float %8306, %8306
  %8311 = fmul fast float %8310, %8309
  %8312 = fmul fast float %8311, %8308
  %8313 = call float @dx.op.binary.f32(i32 36, float %8312, float %8312)  ; FMin(a,b)
  %8314 = call float @dx.op.binary.f32(i32 36, float %8312, float %8313)  ; FMin(a,b)
  %8315 = fcmp fast ogt float %8314, 0.000000e+00
  br i1 %8315, label %8324, label %8316, !dx.controlflow.hints !133

; <label>:8316                                    ; preds = %8721, %8470, %8279
  %8317 = phi float [ %8184, %8470 ], [ %8184, %8279 ], [ %8761, %8721 ]
  %8318 = phi float [ %8185, %8470 ], [ %8185, %8279 ], [ %8762, %8721 ]
  %8319 = phi float [ %8186, %8470 ], [ %8186, %8279 ], [ %8763, %8721 ]
  %8320 = phi float [ %8187, %8470 ], [ %8187, %8279 ], [ %8755, %8721 ]
  %8321 = phi float [ %8188, %8470 ], [ %8188, %8279 ], [ %8756, %8721 ]
  %8322 = phi float [ %8189, %8470 ], [ %8189, %8279 ], [ %8757, %8721 ]
  %8323 = icmp eq i32 %8183, %8193
  br i1 %8323, label %8764, label %8182

; <label>:8324                                    ; preds = %8279
  %8325 = icmp eq i32 %8241, 255
  br i1 %8325, label %8470, label %8326, !dx.controlflow.hints !134

; <label>:8326                                    ; preds = %8324
  %8327 = mul nuw nsw i32 %8241, 176
  %8328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8327, i32 undef)  ; BufferLoad(srv,index,wot)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.ResRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.ResRet.f32 %8328, 2
  %8332 = extractvalue %dx.types.ResRet.f32 %8328, 3
  %8333 = add nuw nsw i32 %8327, 16
  %8334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8333, i32 undef)  ; BufferLoad(srv,index,wot)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.ResRet.f32 %8334, 1
  %8337 = add nuw nsw i32 %8327, 32
  %8338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8337, i32 undef)  ; BufferLoad(srv,index,wot)
  %8339 = extractvalue %dx.types.ResRet.f32 %8338, 0
  %8340 = extractvalue %dx.types.ResRet.f32 %8338, 1
  %8341 = extractvalue %dx.types.ResRet.f32 %8338, 2
  %8342 = add nuw nsw i32 %8327, 48
  %8343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8342, i32 undef)  ; BufferLoad(srv,index,wot)
  %8344 = extractvalue %dx.types.ResRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.ResRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.ResRet.f32 %8343, 2
  %8347 = extractvalue %dx.types.ResRet.f32 %8343, 3
  %8348 = add nuw nsw i32 %8327, 64
  %8349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8348, i32 undef)  ; BufferLoad(srv,index,wot)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.ResRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.ResRet.f32 %8349, 2
  %8353 = extractvalue %dx.types.ResRet.f32 %8349, 3
  %8354 = add nuw nsw i32 %8327, 80
  %8355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8354, i32 undef)  ; BufferLoad(srv,index,wot)
  %8356 = extractvalue %dx.types.ResRet.f32 %8355, 0
  %8357 = extractvalue %dx.types.ResRet.f32 %8355, 1
  %8358 = extractvalue %dx.types.ResRet.f32 %8355, 2
  %8359 = extractvalue %dx.types.ResRet.f32 %8355, 3
  %8360 = add nuw nsw i32 %8327, 96
  %8361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8360, i32 undef)  ; BufferLoad(srv,index,wot)
  %8362 = extractvalue %dx.types.ResRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.ResRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.ResRet.f32 %8361, 2
  %8365 = extractvalue %dx.types.ResRet.f32 %8361, 3
  %8366 = bitcast float %8336 to i32
  %8367 = fmul fast float %8341, %121
  %8368 = fmul fast float %8341, %122
  %8369 = fmul fast float %8341, %123
  %8370 = fadd fast float %8367, %201
  %8371 = fadd fast float %8368, %202
  %8372 = fadd fast float %8369, %203
  %8373 = fmul fast float %8370, %8344
  %8374 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8350, float %8373)  ; FMad(a,b,c)
  %8375 = call float @dx.op.tertiary.f32(i32 46, float %8372, float %8356, float %8374)  ; FMad(a,b,c)
  %8376 = fadd fast float %8375, %8362
  %8377 = fmul fast float %8370, %8345
  %8378 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8351, float %8377)  ; FMad(a,b,c)
  %8379 = call float @dx.op.tertiary.f32(i32 46, float %8372, float %8357, float %8378)  ; FMad(a,b,c)
  %8380 = fadd fast float %8379, %8363
  %8381 = fmul fast float %8370, %8346
  %8382 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8352, float %8381)  ; FMad(a,b,c)
  %8383 = call float @dx.op.tertiary.f32(i32 46, float %8372, float %8358, float %8382)  ; FMad(a,b,c)
  %8384 = fadd fast float %8383, %8364
  %8385 = fmul fast float %8370, %8347
  %8386 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8353, float %8385)  ; FMad(a,b,c)
  %8387 = call float @dx.op.tertiary.f32(i32 46, float %8372, float %8359, float %8386)  ; FMad(a,b,c)
  %8388 = fadd fast float %8387, %8365
  %8389 = fdiv fast float %8376, %8388
  %8390 = fdiv fast float %8380, %8388
  %8391 = fdiv fast float %8384, %8388
  %8392 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8391)  ; FMax(a,b)
  %8393 = fmul fast float %271, 0x401921FB60000000
  %8394 = call float @dx.op.unary.f32(i32 13, float %8393)  ; Sin(value)
  %8395 = call float @dx.op.unary.f32(i32 12, float %8393)  ; Cos(value)
  %8396 = fmul fast float %8395, %8340
  %8397 = call float @dx.op.tertiary.f32(i32 46, float %8394, float %8340, float 0.000000e+00)  ; FMad(a,b,c)
  %8398 = fmul fast float %8340, %8394
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = call float @dx.op.tertiary.f32(i32 46, float %8395, float %8340, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8401

; <label>:8401                                    ; preds = %8401, %8326
  %8402 = phi float [ 0.000000e+00, %8326 ], [ %8434, %8401 ]
  %8403 = phi float [ 0.000000e+00, %8326 ], [ %8436, %8401 ]
  %8404 = phi i32 [ 0, %8326 ], [ %8437, %8401 ]
  %8405 = mul i32 %8404, 2
  %8406 = add i32 0, %8405
  %8407 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8406
  %8408 = load float, float* %8407, align 4
  %8409 = mul i32 %8404, 2
  %8410 = add i32 1, %8409
  %8411 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8410
  %8412 = load float, float* %8411, align 4
  %8413 = fmul fast float %8396, %8408
  %8414 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8399, float %8413)  ; FMad(a,b,c)
  %8415 = fmul fast float %8408, %8397
  %8416 = call float @dx.op.tertiary.f32(i32 46, float %8412, float %8400, float %8415)  ; FMad(a,b,c)
  %8417 = fadd fast float %8414, %8389
  %8418 = fadd fast float %8416, %8390
  %8419 = fmul fast float %8417, %8335
  %8420 = fmul fast float %8418, %8335
  %8421 = call float @dx.op.binary.f32(i32 35, float %8419, float %8331)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 35, float %8420, float %8331)  ; FMax(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8421, float %8332)  ; FMin(a,b)
  %8424 = call float @dx.op.binary.f32(i32 36, float %8422, float %8332)  ; FMin(a,b)
  %8425 = fadd fast float %8423, %8329
  %8426 = fadd fast float %8424, %8330
  %8427 = uitofp i32 %8366 to float
  %8428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8425, float %8426, float %8427, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8429 = extractvalue %dx.types.ResRet.f32 %8428, 0
  %8430 = fsub fast float %8429, %8392
  %8431 = fsub fast float %8430, %8339
  %8432 = fcmp fast ogt float %8431, 0.000000e+00
  %8433 = select i1 %8432, float 1.000000e+00, float 0.000000e+00
  %8434 = fadd fast float %8433, %8402
  %8435 = select i1 %8432, float %8431, float 0.000000e+00
  %8436 = fadd fast float %8435, %8403
  %8437 = add nuw nsw i32 %8404, 1
  %8438 = icmp eq i32 %8437, 8
  br i1 %8438, label %8439, label %8401

; <label>:8439                                    ; preds = %8401
  %8440 = fdiv fast float 1.000000e+00, %8434
  %8441 = fmul fast float %8440, %8436
  %8442 = fdiv fast float 1.000000e+00, %8392
  %8443 = fmul fast float %8441, %8442
  %8444 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8445 = call float @dx.op.binary.f32(i32 35, float %8444, float 0.000000e+00)  ; FMax(a,b)
  %8446 = fmul fast float %8434, 1.250000e-01
  %8447 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8448 = fmul fast float %8447, 2.000000e+00
  %8449 = fadd fast float %8448, -1.000000e+00
  %8450 = fcmp fast ogt float %8449, 0.000000e+00
  %8451 = fcmp fast olt float %8449, 0.000000e+00
  %8452 = zext i1 %8450 to i32
  %8453 = zext i1 %8451 to i32
  %8454 = sub nsw i32 %8452, %8453
  %8455 = sitofp i32 %8454 to float
  %8456 = fmul fast float %8455, %8449
  %8457 = fsub fast float 1.000000e+00, %8456
  %8458 = fmul fast float %8457, %8457
  %8459 = fmul fast float %8458, %8457
  %8460 = fsub fast float %8457, %8459
  %8461 = fmul fast float %8460, %8445
  %8462 = fsub fast float 1.000000e+00, %8459
  %8463 = fsub fast float %8462, %8461
  %8464 = fmul fast float %8455, 5.000000e-01
  %8465 = fmul fast float %8464, %8463
  %8466 = fsub fast float -5.000000e-01, %8465
  %8467 = fmul fast float %8466, %8300
  %8468 = fadd fast float %8467, 1.000000e+00
  %8469 = fmul fast float %8468, %8312
  br label %8470

; <label>:8470                                    ; preds = %8439, %8324
  %8471 = phi float [ %8469, %8439 ], [ %8312, %8324 ]
  %8472 = call float @dx.op.binary.f32(i32 36, float %8471, float %8471)  ; FMin(a,b)
  %8473 = call float @dx.op.binary.f32(i32 36, float %8471, float %8472)  ; FMin(a,b)
  %8474 = fcmp fast ogt float %8473, 0.000000e+00
  br i1 %8474, label %8475, label %8316, !dx.controlflow.hints !135

; <label>:8475                                    ; preds = %8470
  %8476 = fmul fast float %8471, %8234
  %8477 = fmul fast float %8471, %8235
  %8478 = fmul fast float %8471, %8236
  %8479 = fsub fast float %8218, %4817
  %8480 = fcmp fast ogt float %8479, 0.000000e+00
  %8481 = fsub fast float %203, %4817
  %8482 = fcmp fast ogt float %8481, 0.000000e+00
  %8483 = xor i1 %8482, %8480
  %8484 = fsub fast float %4817, %8218
  %8485 = fmul fast float %8484, 2.000000e+00
  %8486 = fadd fast float %8485, %8218
  %8487 = select i1 %8483, float %8218, float %8486
  %8488 = fsub fast float %8487, %203
  %8489 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8245, float %8488, float %8244, float %8245, float %8488)  ; Dot3(ax,ay,az,bx,by,bz)
  %8490 = call float @dx.op.unary.f32(i32 25, float %8489)  ; Rsqrt(value)
  %8491 = fmul fast float %8490, %8244
  %8492 = fmul fast float %8490, %8245
  %8493 = fmul fast float %8490, %8488
  %8494 = fsub fast float %4817, %203
  %8495 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8494)  ; Dot3(ax,ay,az,bx,by,bz)
  %8496 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8491, float %8492, float %8493)  ; Dot3(ax,ay,az,bx,by,bz)
  %8497 = fdiv fast float 1.000000e+00, %8496
  %8498 = fmul fast float %8497, %8495
  %8499 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8481, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8500 = fcmp fast ogt float %8499, 0.000000e+00
  %8501 = fcmp fast olt float %8499, 0.000000e+00
  %8502 = zext i1 %8500 to i32
  %8503 = zext i1 %8501 to i32
  %8504 = sub nsw i32 %8502, %8503
  %8505 = sitofp i32 %8504 to float
  %8506 = fsub fast float %8487, %4817
  %8507 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8245, float %8506, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8508 = fcmp fast ogt float %8507, 0.000000e+00
  %8509 = fcmp fast olt float %8507, 0.000000e+00
  %8510 = zext i1 %8508 to i32
  %8511 = zext i1 %8509 to i32
  %8512 = sub nsw i32 %8510, %8511
  %8513 = sitofp i32 %8512 to float
  %8514 = fcmp fast une float %8505, %8513
  br i1 %8514, label %8515, label %8525

; <label>:8515                                    ; preds = %8475
  %8516 = fmul fast float %8498, %8493
  %8517 = fmul fast float %8498, %8492
  %8518 = fmul fast float %8498, %8491
  %8519 = fmul fast float %8518, %8518
  %8520 = fmul fast float %8517, %8517
  %8521 = fadd fast float %8519, %8520
  %8522 = fmul fast float %8516, %8516
  %8523 = fadd fast float %8521, %8522
  %8524 = call float @dx.op.unary.f32(i32 24, float %8523)  ; Sqrt(value)
  br label %8537

; <label>:8525                                    ; preds = %8475
  %8526 = icmp slt i32 %8504, 0
  br i1 %8526, label %8527, label %8537

; <label>:8527                                    ; preds = %8525
  %8528 = fsub fast float %201, %8216
  %8529 = fsub fast float %202, %8217
  %8530 = fsub fast float %203, %8487
  %8531 = fmul fast float %8528, %8528
  %8532 = fmul fast float %8529, %8529
  %8533 = fadd fast float %8531, %8532
  %8534 = fmul fast float %8530, %8530
  %8535 = fadd fast float %8533, %8534
  %8536 = call float @dx.op.unary.f32(i32 24, float %8535)  ; Sqrt(value)
  br label %8537

; <label>:8537                                    ; preds = %8527, %8525, %8515
  %8538 = phi float [ %8524, %8515 ], [ %8536, %8527 ], [ 0.000000e+00, %8525 ]
  %8539 = and i1 %8482, %8480
  %8540 = fsub fast float -0.000000e+00, %8538
  %8541 = select i1 %8539, float -0.000000e+00, float %8540
  %8542 = fmul fast float %4814, 0x3FF7154760000000
  %8543 = fmul fast float %8542, %8541
  %8544 = fmul fast float %4815, 0x3FF7154760000000
  %8545 = fmul fast float %8544, %8541
  %8546 = fmul fast float %4816, 0x3FF7154760000000
  %8547 = fmul fast float %8546, %8541
  %8548 = call float @dx.op.unary.f32(i32 21, float %8543)  ; Exp(value)
  %8549 = call float @dx.op.unary.f32(i32 21, float %8545)  ; Exp(value)
  %8550 = call float @dx.op.unary.f32(i32 21, float %8547)  ; Exp(value)
  %8551 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8552 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8553 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8554 = fmul fast float %8476, %8551
  %8555 = fmul fast float %8477, %8552
  %8556 = fmul fast float %8478, %8553
  %8557 = fsub fast float %8250, %5606
  %8558 = fsub fast float %8251, %5605
  %8559 = fsub fast float %8252, %5604
  %8560 = call float @dx.op.dot3.f32(i32 55, float %8557, float %8558, float %8559, float %8557, float %8558, float %8559)  ; Dot3(ax,ay,az,bx,by,bz)
  %8561 = call float @dx.op.unary.f32(i32 25, float %8560)  ; Rsqrt(value)
  %8562 = fmul fast float %8561, %8557
  %8563 = fmul fast float %8561, %8558
  %8564 = fmul fast float %8561, %8559
  %8565 = call float @dx.op.dot3.f32(i32 55, float %8250, float %8251, float %8252, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5602, float %5601, float %8562, float %8563, float %8564)  ; Dot3(ax,ay,az,bx,by,bz)
  %8567 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8568 = fmul fast float %8567, %8257
  %8569 = bitcast i32 %5645 to float
  %8570 = fmul fast float %8567, %8567
  %8571 = fmul fast float %8570, %8569
  %8572 = call float @dx.op.unary.f32(i32 7, float %8571)  ; Saturate(value)
  %8573 = fmul fast float %8568, %8572
  %8574 = bitcast float %8247 to i32
  %8575 = ashr i32 %8574, 1
  %8576 = sub nsw i32 1597463007, %8575
  %8577 = bitcast i32 %8576 to float
  %8578 = fmul fast float %8577, %8244
  %8579 = fmul fast float %8577, %8245
  %8580 = fmul fast float %8577, %8246
  %8581 = fsub fast float %8578, %5606
  %8582 = fsub fast float %8579, %5605
  %8583 = fsub fast float %8580, %5604
  %8584 = call float @dx.op.dot3.f32(i32 55, float %8581, float %8582, float %8583, float %8581, float %8582, float %8583)  ; Dot3(ax,ay,az,bx,by,bz)
  %8585 = call float @dx.op.unary.f32(i32 25, float %8584)  ; Rsqrt(value)
  %8586 = fmul fast float %8581, %8585
  %8587 = fmul fast float %8582, %8585
  %8588 = fmul fast float %8583, %8585
  %8589 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %8586, float %8587, float %8588)  ; Dot3(ax,ay,az,bx,by,bz)
  %8590 = fmul fast float %8589, %8589
  %8591 = call float @dx.op.unary.f32(i32 6, float %8565)  ; FAbs(value)
  %8592 = fsub fast float 1.000000e+00, %5639
  %8593 = fmul fast float %5621, %5621
  %8594 = fmul fast float %8593, %8592
  %8595 = fadd fast float %8594, %5639
  %8596 = bitcast float %8595 to i32
  %8597 = ashr i32 %8596, 1
  %8598 = add nsw i32 %8597, 532487669
  %8599 = bitcast i32 %8598 to float
  %8600 = fadd fast float %8599, %5621
  %8601 = fmul fast float %5639, %8590
  %8602 = fsub fast float 1.000000e+00, %8590
  %8603 = fadd fast float %8602, %8601
  %8604 = fmul fast float %8591, %8591
  %8605 = fmul fast float %8604, %8592
  %8606 = fadd fast float %8605, %5639
  %8607 = bitcast float %8606 to i32
  %8608 = ashr i32 %8607, 1
  %8609 = add nsw i32 %8608, 532487669
  %8610 = bitcast i32 %8609 to float
  %8611 = fadd fast float %8610, %8591
  %8612 = fmul fast float %8603, %8603
  %8613 = fmul fast float %8612, %8600
  %8614 = fmul fast float %8613, %8611
  %8615 = fdiv fast float 1.000000e+00, %8614
  %8616 = bitcast float %5639 to i32
  %8617 = sitofp i32 %8616 to float
  %8618 = fmul fast float %8617, 0x3FE7F73180000000
  %8619 = fadd fast float %8618, 0x41AFE27C40000000
  %8620 = fptosi float %8619 to i32
  %8621 = bitcast i32 %8620 to float
  %8622 = fmul fast float %8213, 0x3FD80E9D60000000
  %8623 = fmul fast float %8622, %8577
  %8624 = fadd fast float %8621, %8623
  %8625 = bitcast float %8624 to i32
  %8626 = sub nsw i32 2129859010, %8625
  %8627 = bitcast i32 %8626 to float
  %8628 = fmul fast float %5639, %8615
  %8629 = fmul fast float %8628, %8621
  %8630 = fmul fast float %8629, %8627
  %8631 = fmul fast float %5745, 0x3FF9999980000000
  %8632 = fsub fast float 5.000000e+00, %8631
  %8633 = call float @dx.op.unary.f32(i32 6, float %8566)  ; FAbs(value)
  %8634 = fsub fast float 1.000000e+00, %8633
  %8635 = fmul fast float %5745, 0x41D9660740000000
  %8636 = fadd fast float %8635, 0xC1EFBF8940000000
  %8637 = bitcast float %8634 to i32
  %8638 = sitofp i32 %8637 to float
  %8639 = fmul fast float %8638, %8632
  %8640 = fadd fast float %8636, %8639
  %8641 = fptosi float %8640 to i32
  %8642 = bitcast i32 %8641 to float
  %8643 = fsub fast float 1.000000e+00, %5607
  %8644 = fsub fast float 1.000000e+00, %5608
  %8645 = fsub fast float 1.000000e+00, %5619
  %8646 = fmul fast float %8642, %8643
  %8647 = fmul fast float %8642, %8644
  %8648 = fmul fast float %8642, %8645
  %8649 = fadd fast float %8646, %5607
  %8650 = fadd fast float %8647, %5608
  %8651 = fadd fast float %8648, %5619
  br i1 %5768, label %8652, label %8675

; <label>:8652                                    ; preds = %8537
  %8653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4410, float %8633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8654 = extractvalue %dx.types.ResRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.ResRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.ResRet.f32 %8653, 2
  %8657 = fadd fast float %8654, -5.000000e-01
  %8658 = fadd fast float %8655, -5.000000e-01
  %8659 = fadd fast float %8656, -5.000000e-01
  %8660 = fmul fast float %5607, 4.000000e+00
  %8661 = fmul fast float %8660, %8643
  %8662 = fmul fast float %8661, %8657
  %8663 = fmul fast float %5608, 4.000000e+00
  %8664 = fmul fast float %8663, %8644
  %8665 = fmul fast float %8664, %8658
  %8666 = fmul fast float %5619, 4.000000e+00
  %8667 = fmul fast float %8666, %8645
  %8668 = fmul fast float %8667, %8659
  %8669 = fadd fast float %8662, %8649
  %8670 = fadd fast float %8665, %8650
  %8671 = fadd fast float %8668, %8651
  %8672 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8673 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8674 = call float @dx.op.unary.f32(i32 7, float %8671)  ; Saturate(value)
  br label %8675

; <label>:8675                                    ; preds = %8652, %8537
  %8676 = phi float [ %8672, %8652 ], [ %8649, %8537 ]
  %8677 = phi float [ %8673, %8652 ], [ %8650, %8537 ]
  %8678 = phi float [ %8674, %8652 ], [ %8651, %8537 ]
  %8679 = fmul fast float %8565, 9.843750e-01
  %8680 = fadd fast float %8679, 7.812500e-03
  %8681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8680, float %5749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8682 = extractvalue %dx.types.ResRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.ResRet.f32 %8681, 1
  %8684 = extractvalue %dx.types.ResRet.f32 %8681, 2
  %8685 = extractvalue %dx.types.ResRet.f32 %8681, 3
  %8686 = fsub fast float %8684, %8682
  %8687 = fsub fast float %8685, %8683
  %8688 = fmul fast float %8686, %5755
  %8689 = fmul fast float %8687, %5755
  %8690 = fadd fast float %8688, %8682
  %8691 = fadd fast float %8689, %8683
  %8692 = fmul fast float %8690, %5607
  %8693 = fmul fast float %8690, %5608
  %8694 = fmul fast float %8690, %5619
  %8695 = fadd fast float %8692, %8691
  %8696 = fadd fast float %8693, %8691
  %8697 = fadd fast float %8694, %8691
  br i1 %5768, label %8698, label %8721

; <label>:8698                                    ; preds = %8675
  %8699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4410, float %8565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8700 = extractvalue %dx.types.ResRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.ResRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.ResRet.f32 %8699, 2
  %8703 = fadd fast float %8700, -5.000000e-01
  %8704 = fadd fast float %8701, -5.000000e-01
  %8705 = fadd fast float %8702, -5.000000e-01
  %8706 = fmul fast float %5607, 4.000000e+00
  %8707 = fmul fast float %8706, %8643
  %8708 = fmul fast float %8707, %8703
  %8709 = fmul fast float %5608, 4.000000e+00
  %8710 = fmul fast float %8709, %8644
  %8711 = fmul fast float %8710, %8704
  %8712 = fmul fast float %5619, 4.000000e+00
  %8713 = fmul fast float %8712, %8645
  %8714 = fmul fast float %8713, %8705
  %8715 = fadd fast float %8708, %8695
  %8716 = fadd fast float %8711, %8696
  %8717 = fadd fast float %8714, %8697
  %8718 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8719 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  %8720 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  br label %8721

; <label>:8721                                    ; preds = %8698, %8675
  %8722 = phi float [ %8718, %8698 ], [ %8695, %8675 ]
  %8723 = phi float [ %8719, %8698 ], [ %8696, %8675 ]
  %8724 = phi float [ %8720, %8698 ], [ %8697, %8675 ]
  %8725 = call float @dx.op.binary.f32(i32 35, float %8723, float %8724)  ; FMax(a,b)
  %8726 = call float @dx.op.binary.f32(i32 35, float %8722, float %8725)  ; FMax(a,b)
  %8727 = fsub fast float 1.000000e+00, %8726
  %8728 = fmul fast float %8676, %8630
  %8729 = fmul fast float %8677, %8630
  %8730 = fmul fast float %8678, %8630
  %8731 = fsub fast float 1.000000e+00, %8566
  %8732 = bitcast float %8731 to i32
  %8733 = sitofp i32 %8732 to float
  %8734 = fmul fast float %8733, 5.000000e+00
  %8735 = fadd fast float %8734, 0xC1EFBF8940000000
  %8736 = fptosi float %8735 to i32
  %8737 = bitcast i32 %8736 to float
  %8738 = fmul fast float %8737, %4411
  %8739 = fmul fast float %8727, %8738
  %8740 = fmul fast float %8739, %6310
  %8741 = fmul fast float %8739, %6311
  %8742 = fmul fast float %8739, %6312
  %8743 = fadd fast float %8740, %8728
  %8744 = fadd fast float %8741, %8729
  %8745 = fadd fast float %8742, %8730
  %8746 = fmul fast float %8554, %4407
  %8747 = fmul fast float %8746, %8573
  %8748 = fmul fast float %8747, %8727
  %8749 = fmul fast float %8555, %4407
  %8750 = fmul fast float %8749, %8573
  %8751 = fmul fast float %8750, %8727
  %8752 = fmul fast float %8556, %4407
  %8753 = fmul fast float %8752, %8573
  %8754 = fmul fast float %8753, %8727
  %8755 = fadd fast float %8748, %8187
  %8756 = fadd fast float %8751, %8188
  %8757 = fadd fast float %8754, %8189
  %8758 = fmul fast float %8747, %8743
  %8759 = fmul fast float %8750, %8744
  %8760 = fmul fast float %8753, %8745
  %8761 = fadd fast float %8758, %8184
  %8762 = fadd fast float %8759, %8185
  %8763 = fadd fast float %8760, %8186
  br label %8316

; <label>:8764                                    ; preds = %8316
  br label %8765

; <label>:8765                                    ; preds = %8764, %8150
  %8766 = phi float [ %8152, %8150 ], [ %8317, %8764 ]
  %8767 = phi float [ %8153, %8150 ], [ %8318, %8764 ]
  %8768 = phi float [ %8154, %8150 ], [ %8319, %8764 ]
  %8769 = phi float [ %8155, %8150 ], [ %8320, %8764 ]
  %8770 = phi float [ %8156, %8150 ], [ %8321, %8764 ]
  %8771 = phi float [ %8157, %8150 ], [ %8322, %8764 ]
  %8772 = add i32 %8151, 1
  %8773 = icmp ugt i32 %8772, %8147
  br i1 %8773, label %8774, label %8150

; <label>:8774                                    ; preds = %8765
  br label %8775

; <label>:8775                                    ; preds = %8774, %8100, %8090
  %8776 = phi float [ %8091, %8090 ], [ %8091, %8100 ], [ %8766, %8774 ]
  %8777 = phi float [ %8092, %8090 ], [ %8092, %8100 ], [ %8767, %8774 ]
  %8778 = phi float [ %8093, %8090 ], [ %8093, %8100 ], [ %8768, %8774 ]
  %8779 = phi float [ %8094, %8090 ], [ %8094, %8100 ], [ %8769, %8774 ]
  %8780 = phi float [ %8095, %8090 ], [ %8095, %8100 ], [ %8770, %8774 ]
  %8781 = phi float [ %8096, %8090 ], [ %8096, %8100 ], [ %8771, %8774 ]
  %8782 = fmul fast float %4407, %4407
  %8783 = fmul fast float %8782, %6336
  %8784 = fmul fast float %8782, %6337
  %8785 = fmul fast float %8782, %6338
  %8786 = fadd fast float %8783, 1.000000e+00
  %8787 = fadd fast float %8784, 1.000000e+00
  %8788 = fadd fast float %8785, 1.000000e+00
  %8789 = call float @dx.op.dot3.f32(i32 55, float %8786, float %8787, float %8788, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8790 = fsub fast float 1.000000e+00, %8789
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 0
  %8793 = fmul fast float %8792, %6342
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8796 = fsub fast float 1.000000e+00, %4414
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = fadd fast float %8781, %4413
  %8799 = fmul fast float %8798, %4414
  %8800 = fmul fast float %8797, %8795
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 3
  %8803 = fmul fast float %8779, %5610
  %8804 = fmul fast float %8780, %5611
  %8805 = fmul fast float %8781, %5612
  %8806 = fcmp fast ogt float %101, %223
  %8807 = and i1 %8806, %4820
  %8808 = or i1 %4826, %8807
  %8809 = icmp eq i32 %4819, 2
  %8810 = fcmp fast ole float %101, %223
  %8811 = and i1 %8810, %8809
  %8812 = or i1 %8811, %8808
  br i1 %8807, label %8813, label %9070

; <label>:8813                                    ; preds = %8775
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 2
  %8816 = extractvalue %dx.types.CBufRet.f32 %8814, 3
  %8817 = fmul fast float %8815, %114
  %8818 = fmul fast float %8816, %115
  %8819 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8820 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8819, float %8820, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8822 = extractvalue %dx.types.ResRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.ResRet.f32 %8821, 1
  %8824 = extractvalue %dx.types.ResRet.f32 %8821, 2
  %8825 = extractvalue %dx.types.ResRet.f32 %8821, 3
  %8826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8819, float %8820, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8827 = extractvalue %dx.types.ResRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.ResRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.ResRet.f32 %8826, 2
  %8830 = extractvalue %dx.types.ResRet.f32 %8826, 3
  %8831 = call float @dx.op.binary.f32(i32 35, float %8823, float %8824)  ; FMax(a,b)
  %8832 = call float @dx.op.binary.f32(i32 35, float %8822, float %8831)  ; FMax(a,b)
  %8833 = call float @dx.op.binary.f32(i32 35, float %8832, float %8825)  ; FMax(a,b)
  %8834 = call float @dx.op.binary.f32(i32 36, float %8828, float %8829)  ; FMin(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8827, float %8834)  ; FMin(a,b)
  %8836 = call float @dx.op.binary.f32(i32 36, float %8835, float %8830)  ; FMin(a,b)
  %8837 = fmul fast float %8833, 2.550000e+02
  %8838 = fadd fast float %8837, 0x3F70101020000000
  %8839 = fptoui float %8838 to i32
  %8840 = fmul fast float %8836, 2.550000e+02
  %8841 = fadd fast float %8840, 0x3F70101020000000
  %8842 = fptoui float %8841 to i32
  %8843 = icmp ult i32 %8839, %8842
  br i1 %8843, label %8844, label %9012

; <label>:8844                                    ; preds = %8813
  %8845 = fcmp fast ogt float %100, 9.843750e-01
  %8846 = fadd fast float %101, -4.000000e+00
  %8847 = select i1 %8845, float -4.000000e+00, float %8846
  %8848 = call float @dx.op.binary.f32(i32 35, float %8847, float 0.000000e+00)  ; FMax(a,b)
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = fadd fast float %8850, %8848
  %8852 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8853 = fmul fast float %8851, %8852
  %8854 = call float @dx.op.unary.f32(i32 23, float %8853)  ; Log(value)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8849, 3
  %8856 = fmul fast float %8855, %8854
  %8857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8858 = extractvalue %dx.types.CBufRet.f32 %8857, 2
  %8859 = fmul fast float %8856, %8858
  %8860 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8861 = uitofp i32 %8839 to float
  %8862 = uitofp i32 %8842 to float
  %8863 = fadd fast float %8861, 5.000000e-01
  %8864 = fadd fast float %8862, 5.000000e-01
  %8865 = fmul fast float %8858, %8863
  %8866 = fmul fast float %8858, %8864
  %8867 = fadd fast float %8865, 0x3F0FFB4800000000
  %8868 = fadd fast float %8866, 0xBF0FFB4800000000
  %8869 = call float @dx.op.binary.f32(i32 35, float %8860, float %8867)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8869, float %8868)  ; FMin(a,b)
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 1
  %8873 = extractvalue %dx.types.CBufRet.f32 %8871, 2
  %8874 = extractvalue %dx.types.CBufRet.f32 %8871, 0
  %8875 = fmul fast float %8872, %8870
  %8876 = fadd fast float %8874, %8875
  %8877 = fadd fast float %8874, %8873
  %8878 = fsub fast float %8872, %8873
  %8879 = fadd fast float %8878, %8874
  %8880 = call float @dx.op.binary.f32(i32 35, float %8876, float %8877)  ; FMax(a,b)
  %8881 = call float @dx.op.binary.f32(i32 36, float %8880, float %8879)  ; FMin(a,b)
  %8882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8819, float %8820, float %8881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8883 = extractvalue %dx.types.ResRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.ResRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.ResRet.f32 %8882, 2
  %8886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.i32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.i32 %8886, 1
  %8889 = uitofp i32 %8887 to float
  %8890 = uitofp i32 %8888 to float
  %8891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8891, 0
  %8893 = extractvalue %dx.types.CBufRet.f32 %8891, 1
  %8894 = fmul fast float %8889, %8819
  %8895 = fmul fast float %8890, %8820
  %8896 = fadd fast float %8894, -5.000000e-01
  %8897 = fadd fast float %8895, -5.000000e-01
  %8898 = call float @dx.op.unary.f32(i32 22, float %8896)  ; Frc(value)
  %8899 = call float @dx.op.unary.f32(i32 22, float %8897)  ; Frc(value)
  %8900 = fmul fast float %8898, %8898
  %8901 = fmul fast float %8900, %8898
  %8902 = fsub fast float 3.000000e+00, %8898
  %8903 = fmul fast float %8900, %8902
  %8904 = fmul fast float %8898, 3.000000e+00
  %8905 = fmul fast float %8901, 3.000000e+00
  %8906 = fmul fast float %8900, 6.000000e+00
  %8907 = fsub fast float %8905, %8906
  %8908 = fadd fast float %8907, 4.000000e+00
  %8909 = fmul fast float %8908, 0x3FC5555560000000
  %8910 = fmul fast float %8901, -3.000000e+00
  %8911 = fadd fast float %8900, %8898
  %8912 = fmul fast float %8911, 3.000000e+00
  %8913 = fadd fast float %8910, 1.000000e+00
  %8914 = fadd fast float %8913, %8912
  %8915 = fmul fast float %8901, 0x3FC5555560000000
  %8916 = fmul fast float %8899, %8899
  %8917 = fmul fast float %8916, %8899
  %8918 = fsub fast float 3.000000e+00, %8899
  %8919 = fmul fast float %8916, %8918
  %8920 = fmul fast float %8899, 3.000000e+00
  %8921 = fmul fast float %8917, 3.000000e+00
  %8922 = fmul fast float %8916, 6.000000e+00
  %8923 = fsub fast float %8921, %8922
  %8924 = fadd fast float %8923, 4.000000e+00
  %8925 = fmul fast float %8924, 0x3FC5555560000000
  %8926 = fmul fast float %8917, -3.000000e+00
  %8927 = fadd fast float %8916, %8899
  %8928 = fmul fast float %8927, 3.000000e+00
  %8929 = fadd fast float %8926, 1.000000e+00
  %8930 = fadd fast float %8929, %8928
  %8931 = fmul fast float %8917, 0x3FC5555560000000
  %8932 = fadd fast float %8898, 1.000000e+00
  %8933 = fsub fast float 1.000000e+00, %8904
  %8934 = fadd fast float %8933, %8903
  %8935 = fadd fast float %8934, %8908
  %8936 = fmul fast float %8935, 0x3FC5555560000000
  %8937 = fdiv fast float %8909, %8936
  %8938 = fsub fast float %8932, %8937
  %8939 = fsub fast float 1.000000e+00, %8898
  %8940 = fadd fast float %8914, %8901
  %8941 = fmul fast float %8940, 0x3FC5555560000000
  %8942 = fdiv fast float %8915, %8941
  %8943 = fadd fast float %8939, %8942
  %8944 = fadd fast float %8899, 1.000000e+00
  %8945 = fsub fast float 1.000000e+00, %8920
  %8946 = fadd fast float %8945, %8919
  %8947 = fadd fast float %8946, %8924
  %8948 = fmul fast float %8947, 0x3FC5555560000000
  %8949 = fdiv fast float %8925, %8948
  %8950 = fsub fast float %8944, %8949
  %8951 = fsub fast float 1.000000e+00, %8899
  %8952 = fadd fast float %8930, %8917
  %8953 = fmul fast float %8952, 0x3FC5555560000000
  %8954 = fdiv fast float %8931, %8953
  %8955 = fadd fast float %8954, %8951
  %8956 = fmul fast float %8938, %8892
  %8957 = fsub fast float %8819, %8956
  %8958 = fmul fast float %8943, %8892
  %8959 = fadd fast float %8958, %8819
  %8960 = fmul fast float %8955, %8893
  %8961 = fadd fast float %8960, %8820
  %8962 = fmul fast float %8950, %8893
  %8963 = fsub fast float %8820, %8962
  %8964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8957, float %8963, float %8881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8965 = extractvalue %dx.types.ResRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.ResRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.ResRet.f32 %8964, 2
  %8968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8959, float %8963, float %8881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8969 = extractvalue %dx.types.ResRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.ResRet.f32 %8968, 1
  %8971 = extractvalue %dx.types.ResRet.f32 %8968, 2
  %8972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8957, float %8961, float %8881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8973 = extractvalue %dx.types.ResRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.ResRet.f32 %8972, 1
  %8975 = extractvalue %dx.types.ResRet.f32 %8972, 2
  %8976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8959, float %8961, float %8881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8977 = extractvalue %dx.types.ResRet.f32 %8976, 0
  %8978 = extractvalue %dx.types.ResRet.f32 %8976, 1
  %8979 = extractvalue %dx.types.ResRet.f32 %8976, 2
  %8980 = fsub fast float %8973, %8965
  %8981 = fsub fast float %8974, %8966
  %8982 = fsub fast float %8975, %8967
  %8983 = fmul fast float %8980, %8953
  %8984 = fmul fast float %8981, %8953
  %8985 = fmul fast float %8982, %8953
  %8986 = fadd fast float %8983, %8965
  %8987 = fadd fast float %8984, %8966
  %8988 = fadd fast float %8985, %8967
  %8989 = fsub fast float %8977, %8969
  %8990 = fsub fast float %8978, %8970
  %8991 = fsub fast float %8979, %8971
  %8992 = fmul fast float %8989, %8953
  %8993 = fmul fast float %8990, %8953
  %8994 = fmul fast float %8991, %8953
  %8995 = fsub fast float %8969, %8986
  %8996 = fadd fast float %8995, %8992
  %8997 = fsub fast float %8970, %8987
  %8998 = fadd fast float %8997, %8993
  %8999 = fsub fast float %8971, %8988
  %9000 = fadd fast float %8999, %8994
  %9001 = fmul fast float %8996, %8941
  %9002 = fmul fast float %8998, %8941
  %9003 = fmul fast float %9000, %8941
  %9004 = fadd fast float %9001, %8986
  %9005 = fadd fast float %9002, %8987
  %9006 = fadd fast float %9003, %8988
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 1
  %9009 = fmul fast float %9004, %9008
  %9010 = fmul fast float %9005, %9008
  %9011 = fmul fast float %9006, %9008
  br label %9012

; <label>:9012                                    ; preds = %8844, %8813
  %9013 = phi float [ %8883, %8844 ], [ 1.000000e+00, %8813 ]
  %9014 = phi float [ %8884, %8844 ], [ 1.000000e+00, %8813 ]
  %9015 = phi float [ %8885, %8844 ], [ 1.000000e+00, %8813 ]
  %9016 = phi float [ %9009, %8844 ], [ 0.000000e+00, %8813 ]
  %9017 = phi float [ %9010, %8844 ], [ 0.000000e+00, %8813 ]
  %9018 = phi float [ %9011, %8844 ], [ 0.000000e+00, %8813 ]
  %9019 = fmul fast float %9016, %8790
  %9020 = fmul fast float %9017, %8790
  %9021 = fmul fast float %9018, %8790
  %9022 = call float @dx.op.dot3.f32(i32 55, float %9013, float %9014, float %9015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9023 = call float @dx.op.dot3.f32(i32 55, float %9019, float %9020, float %9021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9024 = select i1 %260, float %9022, float %9013
  %9025 = select i1 %260, float %9022, float %9014
  %9026 = select i1 %260, float 1.000000e+00, float %9015
  %9027 = select i1 %260, float %9023, float %9019
  %9028 = select i1 %260, float 0.000000e+00, float %9020
  %9029 = select i1 %260, float 0.000000e+00, float %9021
  %9030 = fmul fast float %9024, %8803
  %9031 = fmul fast float %9025, %8804
  %9032 = fmul fast float %9026, %8805
  %9033 = fadd fast float %9030, %9027
  %9034 = fadd fast float %9031, %9028
  %9035 = fadd fast float %9029, %9032
  %9036 = fmul fast float %9024, %8776
  %9037 = fmul fast float %9025, %8777
  %9038 = fmul fast float %9026, %8778
  %9039 = fmul fast float %150, %8815
  %9040 = fmul fast float %152, %8816
  %9041 = fsub fast float 1.000000e+00, %9039
  %9042 = fsub fast float 1.000000e+00, %9040
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  %9045 = extractvalue %dx.types.CBufRet.f32 %9043, 1
  %9046 = extractvalue %dx.types.CBufRet.f32 %9043, 2
  %9047 = fmul fast float %9041, %9044
  %9048 = fmul fast float %9041, %9045
  %9049 = fmul fast float %9041, %9046
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9053 = extractvalue %dx.types.CBufRet.f32 %9050, 2
  %9054 = fmul fast float %9042, %9051
  %9055 = fmul fast float %9042, %9052
  %9056 = fmul fast float %9042, %9053
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.CBufRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.CBufRet.f32 %9057, 2
  %9061 = fadd fast float %9054, %9058
  %9062 = fadd fast float %9061, %9047
  %9063 = fadd fast float %9055, %9059
  %9064 = fadd fast float %9063, %9048
  %9065 = fadd fast float %9056, %9060
  %9066 = fadd fast float %9065, %9049
  %9067 = fmul fast float %9062, %223
  %9068 = fmul fast float %9064, %223
  %9069 = fmul fast float %9066, %223
  br label %9070

; <label>:9070                                    ; preds = %9012, %8775
  %9071 = phi float [ %9067, %9012 ], [ %201, %8775 ]
  %9072 = phi float [ %9068, %9012 ], [ %202, %8775 ]
  %9073 = phi float [ %9069, %9012 ], [ %203, %8775 ]
  %9074 = phi float [ %223, %9012 ], [ %101, %8775 ]
  %9075 = phi float [ %9033, %9012 ], [ %8803, %8775 ]
  %9076 = phi float [ %9034, %9012 ], [ %8804, %8775 ]
  %9077 = phi float [ %9035, %9012 ], [ %8805, %8775 ]
  %9078 = phi float [ %9036, %9012 ], [ %8776, %8775 ]
  %9079 = phi float [ %9037, %9012 ], [ %8777, %8775 ]
  %9080 = phi float [ %9038, %9012 ], [ %8778, %8775 ]
  %9081 = phi float [ %9013, %9012 ], [ 1.000000e+00, %8775 ]
  br i1 %8812, label %10236, label %9082

; <label>:9082                                    ; preds = %9070
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 0
  %9085 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9086 = extractvalue %dx.types.CBufRet.f32 %9083, 2
  %9087 = extractvalue %dx.types.CBufRet.f32 %9083, 3
  %9088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9088, 0
  %9090 = extractvalue %dx.types.CBufRet.f32 %9088, 1
  %9091 = extractvalue %dx.types.CBufRet.f32 %9088, 2
  %9092 = extractvalue %dx.types.CBufRet.f32 %9088, 3
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.CBufRet.f32 %9093, 2
  %9097 = extractvalue %dx.types.CBufRet.f32 %9093, 3
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9102 = extractvalue %dx.types.CBufRet.f32 %9098, 3
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 3
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 3
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9109 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9110 = fcmp fast olt float %9109, -5.000000e-01
  %9111 = call float @dx.op.dot3.f32(i32 55, float %9071, float %9072, float %9073, float %9071, float %9072, float %9073)  ; Dot3(ax,ay,az,bx,by,bz)
  %9112 = call float @dx.op.unary.f32(i32 25, float %9111)  ; Rsqrt(value)
  %9113 = fmul fast float %9112, %9111
  %9114 = fmul fast float %9112, %9071
  %9115 = fmul fast float %9112, %9072
  %9116 = fmul fast float %9112, %9073
  %9117 = fadd fast float %9113, %9087
  %9118 = call float @dx.op.dot3.f32(i32 55, float %9114, float %9115, float %9116, float %9084, float %9085, float %9086)  ; Dot3(ax,ay,az,bx,by,bz)
  %9119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.i32 %9119, 1
  %9121 = and i32 %9120, 1
  %9122 = icmp ne i32 %9121, 0
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9125 = fcmp fast ogt float %9124, 0.000000e+00
  %9126 = and i1 %9122, %9125
  br i1 %9126, label %9127, label %9533, !dx.controlflow.hints !136

; <label>:9127                                    ; preds = %9082
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 3
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9133 = extractvalue %dx.types.CBufRet.f32 %9132, 2
  %9134 = fsub fast float %9131, %9133
  %9135 = and i32 %9120, 2
  %9136 = extractvalue %dx.types.CBufRet.i32 %9119, 0
  %9137 = call i32 @dx.op.binary.i32(i32 40, i32 %9136, i32 3)  ; UMin(a,b)
  %9138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9139 = extractvalue %dx.types.CBufRet.f32 %9138, 0
  %9140 = extractvalue %dx.types.CBufRet.f32 %9138, 1
  %9141 = extractvalue %dx.types.CBufRet.f32 %9132, 0
  %9142 = extractvalue %dx.types.CBufRet.f32 %9132, 1
  %9143 = fsub fast float %9139, %9141
  %9144 = fsub fast float %9140, %9142
  %9145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9146 = extractvalue %dx.types.CBufRet.f32 %9145, 0
  %9147 = fcmp fast ogt float %9146, 0.000000e+00
  %9148 = fsub fast float -0.000000e+00, %9143
  %9149 = fsub fast float -0.000000e+00, %9144
  %9150 = call float @dx.op.dot2.f32(i32 54, float %9114, float %9115, float %9114, float %9115)  ; Dot2(ax,ay,bx,by)
  %9151 = call float @dx.op.dot2.f32(i32 54, float %9114, float %9115, float %9148, float %9149)  ; Dot2(ax,ay,bx,by)
  %9152 = fmul fast float %9151, 2.000000e+00
  %9153 = call float @dx.op.dot2.f32(i32 54, float %9148, float %9149, float %9148, float %9149)  ; Dot2(ax,ay,bx,by)
  %9154 = fmul fast float %9146, %9146
  %9155 = fsub fast float %9153, %9154
  %9156 = fmul fast float %9152, %9152
  %9157 = fmul fast float %9150, 4.000000e+00
  %9158 = fmul fast float %9157, %9155
  %9159 = fsub fast float %9156, %9158
  %9160 = fcmp fast ogt float %9159, 0.000000e+00
  br i1 %9160, label %9161, label %9176

; <label>:9161                                    ; preds = %9127
  %9162 = fcmp fast ogt float %9152, 0.000000e+00
  %9163 = call float @dx.op.unary.f32(i32 24, float %9159)  ; Sqrt(value)
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = select i1 %9162, float %9163, float %9164
  %9166 = fadd fast float %9165, %9152
  %9167 = fmul float %9166, -5.000000e-01
  %9168 = fdiv fast float %9167, %9150
  %9169 = call float @dx.op.binary.f32(i32 35, float %9168, float 0.000000e+00)  ; FMax(a,b)
  %9170 = call float @dx.op.binary.f32(i32 36, float %9113, float %9169)  ; FMin(a,b)
  %9171 = fdiv fast float %9155, %9167
  %9172 = call float @dx.op.binary.f32(i32 35, float %9171, float 0.000000e+00)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9113, float %9172)  ; FMin(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9170, float %9173)  ; FMin(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9170, float %9173)  ; FMax(a,b)
  br label %9176

; <label>:9176                                    ; preds = %9161, %9127
  %9177 = phi float [ %9175, %9161 ], [ -1.000000e+00, %9127 ]
  %9178 = phi float [ %9174, %9161 ], [ -1.000000e+00, %9127 ]
  %9179 = phi i1 [ true, %9161 ], [ false, %9127 ]
  %9180 = and i1 %9147, %9179
  br i1 %9180, label %9181, label %9183

; <label>:9181                                    ; preds = %9176
  %9182 = fcmp fast oeq float %9178, %9177
  br i1 %9182, label %9486, label %9184

; <label>:9183                                    ; preds = %9176
  br i1 %9147, label %9486, label %9184

; <label>:9184                                    ; preds = %9183, %9181
  %9185 = phi float [ %9113, %9183 ], [ %9177, %9181 ]
  %9186 = phi float [ 0.000000e+00, %9183 ], [ %9178, %9181 ]
  %9187 = icmp ne i32 %9135, 0
  %9188 = fmul fast float %9185, %9116
  %9189 = fadd fast float %9188, %9129
  %9190 = fmul fast float %9189, %9185
  %9191 = select i1 %9187, float 0.000000e+00, float %9190
  %9192 = fcmp fast oeq float %9116, 0.000000e+00
  %9193 = fdiv fast float %9134, %9116
  %9194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9193)  ; FMax(a,b)
  %9195 = select i1 %9192, float %9185, float %9194
  %9196 = call float @dx.op.binary.f32(i32 36, float %9185, float %9195)  ; FMin(a,b)
  %9197 = fcmp fast ogt float %9116, 0.000000e+00
  %9198 = fcmp fast olt float %9134, 0.000000e+00
  br i1 %9197, label %9199, label %9256

; <label>:9199                                    ; preds = %9184
  %9200 = icmp eq i32 %9135, 0
  br i1 %9198, label %9201, label %9245

; <label>:9201                                    ; preds = %9199
  %9202 = select i1 %9200, float %9185, float 0.000000e+00
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = call float @dx.op.unary.f32(i32 6, float %9203)  ; FAbs(value)
  %9205 = fmul fast float %9202, %9116
  %9206 = fadd fast float %9205, %9129
  %9207 = fmul fast float %9204, %9206
  %9208 = fsub fast float %9191, %9207
  %9209 = fsub fast float %9185, %9204
  %9210 = select i1 %9200, float %9209, float 0.000000e+00
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 0
  %9213 = extractvalue %dx.types.CBufRet.f32 %9211, 1
  %9214 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %9215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9216 = extractvalue %dx.types.CBufRet.f32 %9215, 0
  %9217 = extractvalue %dx.types.CBufRet.f32 %9215, 1
  %9218 = extractvalue %dx.types.CBufRet.f32 %9215, 2
  %9219 = extractvalue %dx.types.CBufRet.f32 %9215, 3
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9222 = call float @dx.op.binary.f32(i32 36, float %9208, float %9221)  ; FMin(a,b)
  %9223 = fmul fast float %9219, %9210
  %9224 = call float @dx.op.unary.f32(i32 7, float %9223)  ; Saturate(value)
  %9225 = fsub fast float %9216, %9212
  %9226 = fsub fast float %9217, %9213
  %9227 = fsub fast float %9218, %9214
  %9228 = fmul fast float %9224, %9225
  %9229 = fmul fast float %9224, %9226
  %9230 = fmul fast float %9224, %9227
  %9231 = fadd fast float %9228, %9212
  %9232 = fadd fast float %9229, %9213
  %9233 = fadd fast float %9230, %9214
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9237 = fadd fast float %9236, %9235
  %9238 = call float @dx.op.unary.f32(i32 7, float %9237)  ; Saturate(value)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9240 = extractvalue %dx.types.CBufRet.f32 %9234, 3
  %9241 = fadd fast float %9240, %9239
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = fmul fast float %9238, %9222
  %9244 = fmul fast float %9243, %9242
  br label %9486

; <label>:9245                                    ; preds = %9199
  br i1 %9200, label %9246, label %9267

; <label>:9246                                    ; preds = %9245
  %9247 = call float @dx.op.binary.f32(i32 36, float %9196, float %9186)  ; FMin(a,b)
  %9248 = fsub fast float %9196, %9247
  %9249 = fsub fast float %9248, %9185
  %9250 = call float @dx.op.unary.f32(i32 6, float %9249)  ; FAbs(value)
  %9251 = fadd fast float %9248, %9185
  %9252 = fmul fast float %9251, %9116
  %9253 = fadd fast float %9252, %9129
  %9254 = fmul fast float %9253, %9250
  %9255 = fsub fast float %9191, %9254
  br label %9267

; <label>:9256                                    ; preds = %9184
  br i1 %9198, label %9257, label %9267

; <label>:9257                                    ; preds = %9256
  %9258 = call float @dx.op.binary.f32(i32 35, float %9186, float %9196)  ; FMax(a,b)
  %9259 = icmp eq i32 %9135, 0
  %9260 = select i1 %9259, float %9196, float 0.000000e+00
  %9261 = fsub fast float -0.000000e+00, %9260
  %9262 = call float @dx.op.unary.f32(i32 6, float %9261)  ; FAbs(value)
  %9263 = fmul fast float %9260, %9116
  %9264 = fadd fast float %9263, %9129
  %9265 = fmul fast float %9262, %9264
  %9266 = fsub fast float %9191, %9265
  br label %9267

; <label>:9267                                    ; preds = %9257, %9256, %9246, %9245
  %9268 = phi float [ %9186, %9245 ], [ %9186, %9246 ], [ %9258, %9257 ], [ %9186, %9256 ]
  %9269 = phi float [ 0.000000e+00, %9245 ], [ %9250, %9246 ], [ %9262, %9257 ], [ 0.000000e+00, %9256 ]
  %9270 = phi float [ %9191, %9245 ], [ %9255, %9246 ], [ %9266, %9257 ], [ %9191, %9256 ]
  %9271 = phi float [ %9196, %9245 ], [ %9196, %9246 ], [ %9185, %9257 ], [ %9185, %9256 ]
  %9272 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %9272, align 4, !tbaa !122, !noalias !137
  %9273 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %9273, align 4, !tbaa !122, !noalias !137
  %9274 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %9274, align 4, !tbaa !122, !noalias !137
  %9275 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %9275, align 4, !tbaa !122, !noalias !137
  %9276 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %9276, align 4, !tbaa !122, !noalias !137
  %9277 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %9277, align 4, !tbaa !122, !noalias !137
  %9278 = icmp sgt i32 %9137, 0
  br i1 %9278, label %9279, label %9340

; <label>:9279                                    ; preds = %9267
  br label %9280

; <label>:9280                                    ; preds = %9329, %9279
  %9281 = phi i32 [ %9330, %9329 ], [ 0, %9279 ]
  %9282 = phi i32 [ %9331, %9329 ], [ 0, %9279 ]
  %9283 = add nuw i32 %9282, 171
  %9284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9283)  ; CBufferLoadLegacy(handle,regIndex)
  %9285 = extractvalue %dx.types.CBufRet.f32 %9284, 0
  %9286 = extractvalue %dx.types.CBufRet.f32 %9284, 1
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = fsub fast float %9285, %9288
  %9291 = fsub fast float %9286, %9289
  %9292 = extractvalue %dx.types.CBufRet.f32 %9284, 2
  %9293 = fsub fast float -0.000000e+00, %9290
  %9294 = fsub fast float -0.000000e+00, %9291
  %9295 = call float @dx.op.dot2.f32(i32 54, float %9114, float %9115, float %9293, float %9294)  ; Dot2(ax,ay,bx,by)
  %9296 = fmul fast float %9295, 2.000000e+00
  %9297 = call float @dx.op.dot2.f32(i32 54, float %9293, float %9294, float %9293, float %9294)  ; Dot2(ax,ay,bx,by)
  %9298 = fmul fast float %9292, %9292
  %9299 = fsub fast float %9297, %9298
  %9300 = fmul fast float %9296, %9296
  %9301 = fmul fast float %9157, %9299
  %9302 = fsub fast float %9300, %9301
  %9303 = fcmp fast ogt float %9302, 0.000000e+00
  br i1 %9303, label %9304, label %9319

; <label>:9304                                    ; preds = %9280
  %9305 = fcmp fast ogt float %9296, 0.000000e+00
  %9306 = call float @dx.op.unary.f32(i32 24, float %9302)  ; Sqrt(value)
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = select i1 %9305, float %9306, float %9307
  %9309 = fadd fast float %9308, %9296
  %9310 = fmul float %9309, -5.000000e-01
  %9311 = fdiv fast float %9310, %9150
  %9312 = call float @dx.op.binary.f32(i32 35, float %9311, float 0.000000e+00)  ; FMax(a,b)
  %9313 = call float @dx.op.binary.f32(i32 36, float %9185, float %9312)  ; FMin(a,b)
  %9314 = fdiv fast float %9299, %9310
  %9315 = call float @dx.op.binary.f32(i32 35, float %9314, float 0.000000e+00)  ; FMax(a,b)
  %9316 = call float @dx.op.binary.f32(i32 36, float %9185, float %9315)  ; FMin(a,b)
  %9317 = call float @dx.op.binary.f32(i32 36, float %9313, float %9316)  ; FMin(a,b)
  %9318 = call float @dx.op.binary.f32(i32 35, float %9313, float %9316)  ; FMax(a,b)
  br label %9319

; <label>:9319                                    ; preds = %9304, %9280
  %9320 = phi float [ %9318, %9304 ], [ -1.000000e+00, %9280 ]
  %9321 = phi float [ %9317, %9304 ], [ -1.000000e+00, %9280 ]
  %9322 = phi i1 [ true, %9304 ], [ false, %9280 ]
  br i1 %9322, label %9323, label %9329

; <label>:9323                                    ; preds = %9319
  %9324 = call float @dx.op.binary.f32(i32 35, float %9268, float %9321)  ; FMax(a,b)
  %9325 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9282
  store float %9324, float* %9325, align 4, !tbaa !122, !noalias !137
  %9326 = call float @dx.op.binary.f32(i32 35, float %9268, float %9320)  ; FMax(a,b)
  %9327 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9282
  store float %9326, float* %9327, align 4, !tbaa !122, !noalias !137
  %9328 = add nsw i32 %9281, 1
  br label %9329

; <label>:9329                                    ; preds = %9323, %9319
  %9330 = phi i32 [ %9328, %9323 ], [ %9281, %9319 ]
  %9331 = add nuw nsw i32 %9282, 1
  %9332 = icmp eq i32 %9331, %9137
  br i1 %9332, label %9333, label %9280

; <label>:9333                                    ; preds = %9329
  %9334 = load float, float* %9274, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9335 = load float, float* %9273, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %9336 = load float, float* %9272, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %9337 = load float, float* %9277, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9338 = load float, float* %9276, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %9339 = load float, float* %9275, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %9340

; <label>:9340                                    ; preds = %9333, %9267
  %9341 = phi float [ -1.000000e+00, %9267 ], [ %9339, %9333 ]
  %9342 = phi float [ -1.000000e+00, %9267 ], [ %9338, %9333 ]
  %9343 = phi float [ -1.000000e+00, %9267 ], [ %9337, %9333 ]
  %9344 = phi float [ -1.000000e+00, %9267 ], [ %9336, %9333 ]
  %9345 = phi float [ -1.000000e+00, %9267 ], [ %9335, %9333 ]
  %9346 = phi float [ -1.000000e+00, %9267 ], [ %9334, %9333 ]
  %9347 = phi i32 [ 0, %9267 ], [ %9330, %9333 ]
  %9348 = call float @dx.op.binary.f32(i32 36, float %9345, float %9346)  ; FMin(a,b)
  %9349 = call float @dx.op.binary.f32(i32 36, float %9344, float %9348)  ; FMin(a,b)
  %9350 = call float @dx.op.binary.f32(i32 35, float %9344, float %9345)  ; FMax(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9350, float %9346)  ; FMin(a,b)
  %9352 = call float @dx.op.binary.f32(i32 36, float %9344, float %9345)  ; FMin(a,b)
  %9353 = call float @dx.op.binary.f32(i32 35, float %9352, float %9351)  ; FMax(a,b)
  %9354 = call float @dx.op.binary.f32(i32 35, float %9345, float %9346)  ; FMax(a,b)
  %9355 = call float @dx.op.binary.f32(i32 35, float %9344, float %9354)  ; FMax(a,b)
  store float %9349, float* %9272, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %9353, float* %9273, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %9355, float* %9274, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9356 = call float @dx.op.binary.f32(i32 36, float %9342, float %9343)  ; FMin(a,b)
  %9357 = call float @dx.op.binary.f32(i32 36, float %9341, float %9356)  ; FMin(a,b)
  %9358 = call float @dx.op.binary.f32(i32 35, float %9341, float %9342)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9358, float %9343)  ; FMin(a,b)
  %9360 = call float @dx.op.binary.f32(i32 36, float %9341, float %9342)  ; FMin(a,b)
  %9361 = call float @dx.op.binary.f32(i32 35, float %9360, float %9359)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 35, float %9342, float %9343)  ; FMax(a,b)
  %9363 = call float @dx.op.binary.f32(i32 35, float %9341, float %9362)  ; FMax(a,b)
  store float %9357, float* %9275, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %9361, float* %9276, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %9363, float* %9277, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9364 = sub nsw i32 3, %9347
  %9365 = icmp sgt i32 %9364, 2
  br i1 %9365, label %9366, label %9404

; <label>:9366                                    ; preds = %9340
  %9367 = icmp eq i32 %9135, 0
  %9368 = fsub fast float %9185, %9269
  %9369 = select i1 %9367, float %9368, float %9269
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 0
  %9372 = extractvalue %dx.types.CBufRet.f32 %9370, 1
  %9373 = extractvalue %dx.types.CBufRet.f32 %9370, 2
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 0
  %9376 = extractvalue %dx.types.CBufRet.f32 %9374, 1
  %9377 = extractvalue %dx.types.CBufRet.f32 %9374, 2
  %9378 = extractvalue %dx.types.CBufRet.f32 %9374, 3
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9381 = call float @dx.op.binary.f32(i32 36, float %9270, float %9380)  ; FMin(a,b)
  %9382 = fmul fast float %9378, %9369
  %9383 = call float @dx.op.unary.f32(i32 7, float %9382)  ; Saturate(value)
  %9384 = fsub fast float %9375, %9371
  %9385 = fsub fast float %9376, %9372
  %9386 = fsub fast float %9377, %9373
  %9387 = fmul fast float %9383, %9384
  %9388 = fmul fast float %9383, %9385
  %9389 = fmul fast float %9383, %9386
  %9390 = fadd fast float %9387, %9371
  %9391 = fadd fast float %9388, %9372
  %9392 = fadd fast float %9389, %9373
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  %9395 = extractvalue %dx.types.CBufRet.f32 %9393, 1
  %9396 = fadd fast float %9395, %9394
  %9397 = call float @dx.op.unary.f32(i32 7, float %9396)  ; Saturate(value)
  %9398 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %9399 = extractvalue %dx.types.CBufRet.f32 %9393, 3
  %9400 = fadd fast float %9399, %9398
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  %9402 = fmul fast float %9397, %9381
  %9403 = fmul fast float %9402, %9401
  br label %9486

; <label>:9404                                    ; preds = %9340
  %9405 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9364
  %9406 = load float, float* %9405, align 4, !tbaa !122, !noalias !137
  %9407 = fcmp fast olt float %9406, %9271
  %9408 = icmp sgt i32 %9347, 0
  %9409 = and i1 %9408, %9407
  br i1 %9409, label %9410, label %9447

; <label>:9410                                    ; preds = %9404
  br label %9411

; <label>:9411                                    ; preds = %9440, %9410
  %9412 = phi float [ %9441, %9440 ], [ %9269, %9410 ]
  %9413 = phi float [ %9442, %9440 ], [ %9270, %9410 ]
  %9414 = phi float [ %9422, %9440 ], [ %9406, %9410 ]
  %9415 = phi i32 [ %9419, %9440 ], [ %9364, %9410 ]
  %9416 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9415
  %9417 = load float, float* %9416, align 4, !tbaa !122, !noalias !137
  %9418 = icmp slt i32 %9415, 2
  %9419 = add nsw i32 %9415, 1
  %9420 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9419
  %9421 = load float, float* %9420, align 4, !tbaa !122, !noalias !137
  %9422 = select i1 %9418, float %9421, float %9185
  %9423 = call float @dx.op.binary.f32(i32 36, float %9422, float %9417)  ; FMin(a,b)
  %9424 = call float @dx.op.binary.f32(i32 36, float %9271, float %9423)  ; FMin(a,b)
  %9425 = icmp eq i32 %9135, 0
  %9426 = fadd fast float %9424, %9414
  %9427 = fmul fast float %9426, %9116
  %9428 = fadd fast float %9427, %9129
  br i1 %9425, label %9434, label %9429

; <label>:9429                                    ; preds = %9411
  %9430 = fsub fast float %9424, %9414
  %9431 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9430)  ; FMax(a,b)
  %9432 = fmul fast float %9431, %9428
  %9433 = fadd fast float %9432, %9413
  br label %9440

; <label>:9434                                    ; preds = %9411
  %9435 = fsub fast float %9414, %9424
  %9436 = call float @dx.op.unary.f32(i32 6, float %9435)  ; FAbs(value)
  %9437 = fadd fast float %9436, %9412
  %9438 = fmul fast float %9436, %9428
  %9439 = fsub fast float %9413, %9438
  br label %9440

; <label>:9440                                    ; preds = %9434, %9429
  %9441 = phi float [ %9431, %9429 ], [ %9437, %9434 ]
  %9442 = phi float [ %9433, %9429 ], [ %9439, %9434 ]
  %9443 = fcmp fast olt float %9422, %9271
  %9444 = icmp slt i32 %9419, 3
  %9445 = and i1 %9444, %9443
  br i1 %9445, label %9411, label %9446

; <label>:9446                                    ; preds = %9440
  br label %9447

; <label>:9447                                    ; preds = %9446, %9404
  %9448 = phi float [ %9269, %9404 ], [ %9441, %9446 ]
  %9449 = phi float [ %9270, %9404 ], [ %9442, %9446 ]
  %9450 = fsub fast float %9185, %9448
  %9451 = select i1 %9187, float %9448, float %9450
  %9452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.f32 %9452, 0
  %9454 = extractvalue %dx.types.CBufRet.f32 %9452, 1
  %9455 = extractvalue %dx.types.CBufRet.f32 %9452, 2
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 0
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 1
  %9459 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9460 = extractvalue %dx.types.CBufRet.f32 %9456, 3
  %9461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9462 = extractvalue %dx.types.CBufRet.f32 %9461, 3
  %9463 = call float @dx.op.binary.f32(i32 36, float %9449, float %9462)  ; FMin(a,b)
  %9464 = fmul fast float %9460, %9451
  %9465 = call float @dx.op.unary.f32(i32 7, float %9464)  ; Saturate(value)
  %9466 = fsub fast float %9457, %9453
  %9467 = fsub fast float %9458, %9454
  %9468 = fsub fast float %9459, %9455
  %9469 = fmul fast float %9465, %9466
  %9470 = fmul fast float %9465, %9467
  %9471 = fmul fast float %9465, %9468
  %9472 = fadd fast float %9469, %9453
  %9473 = fadd fast float %9470, %9454
  %9474 = fadd fast float %9471, %9455
  %9475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9476 = extractvalue %dx.types.CBufRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.CBufRet.f32 %9475, 1
  %9478 = fadd fast float %9477, %9476
  %9479 = call float @dx.op.unary.f32(i32 7, float %9478)  ; Saturate(value)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9475, 2
  %9481 = extractvalue %dx.types.CBufRet.f32 %9475, 3
  %9482 = fadd fast float %9481, %9480
  %9483 = call float @dx.op.unary.f32(i32 7, float %9482)  ; Saturate(value)
  %9484 = fmul fast float %9479, %9463
  %9485 = fmul fast float %9484, %9483
  br label %9486

; <label>:9486                                    ; preds = %9447, %9366, %9201, %9183, %9181
  %9487 = phi float [ %9210, %9201 ], [ %9369, %9366 ], [ %9451, %9447 ], [ 0.000000e+00, %9181 ], [ 0.000000e+00, %9183 ]
  %9488 = phi float [ %9244, %9201 ], [ %9403, %9366 ], [ %9485, %9447 ], [ 0.000000e+00, %9181 ], [ 0.000000e+00, %9183 ]
  %9489 = phi float [ %9231, %9201 ], [ %9390, %9366 ], [ %9472, %9447 ], [ 0.000000e+00, %9181 ], [ 0.000000e+00, %9183 ]
  %9490 = phi float [ %9232, %9201 ], [ %9391, %9366 ], [ %9473, %9447 ], [ 0.000000e+00, %9181 ], [ 0.000000e+00, %9183 ]
  %9491 = phi float [ %9233, %9201 ], [ %9392, %9366 ], [ %9474, %9447 ], [ 0.000000e+00, %9181 ], [ 0.000000e+00, %9183 ]
  %9492 = fmul fast float %9124, %9488
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9495 = fsub fast float %9131, %9494
  %9496 = fcmp fast olt float %9492, -2.000000e+01
  %9497 = call float @dx.op.unary.f32(i32 21, float %9492)  ; Exp(value)
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 2
  %9500 = extractvalue %dx.types.CBufRet.f32 %9498, 3
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 2
  %9503 = fmul fast float %9500, %9495
  %9504 = call float @dx.op.unary.f32(i32 7, float %9503)  ; Saturate(value)
  %9505 = fsub fast float 1.000000e+00, %9504
  %9506 = fmul fast float %9116, 5.000000e-01
  %9507 = fadd fast float %9506, 5.000000e-01
  %9508 = call float @dx.op.unary.f32(i32 7, float %9507)  ; Saturate(value)
  %9509 = fsub fast float 1.000000e+00, %9508
  %9510 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9505)  ; FMax(a,b)
  %9511 = fdiv fast float %9509, %9510
  %9512 = fsub fast float %9495, %9073
  %9513 = call float @dx.op.unary.f32(i32 6, float %9512)  ; FAbs(value)
  %9514 = fmul fast float %9513, %9499
  %9515 = call float @dx.op.unary.f32(i32 7, float %9511)  ; Saturate(value)
  %9516 = fsub fast float 1.000000e+00, %9514
  %9517 = fmul fast float %9516, %9515
  %9518 = fadd fast float %9517, %9514
  %9519 = fmul fast float %9502, %9495
  %9520 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9521 = fsub fast float 1.000000e+00, %9518
  %9522 = fmul fast float %9521, %9520
  %9523 = fadd fast float %9522, %9518
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fadd fast float %9497, -1.000000e+00
  %9526 = select i1 %9496, float -1.000000e+00, float %9525
  %9527 = fmul fast float %9524, %9526
  %9528 = fadd fast float %9527, 1.000000e+00
  %9529 = fsub fast float -0.000000e+00, %9527
  %9530 = fmul fast float %9489, %9529
  %9531 = fmul fast float %9490, %9529
  %9532 = fmul fast float %9491, %9529
  br label %9533

; <label>:9533                                    ; preds = %9486, %9082
  %9534 = phi float [ %9487, %9486 ], [ 0.000000e+00, %9082 ]
  %9535 = phi float [ %9528, %9486 ], [ 1.000000e+00, %9082 ]
  %9536 = phi float [ %9530, %9486 ], [ 0.000000e+00, %9082 ]
  %9537 = phi float [ %9531, %9486 ], [ 0.000000e+00, %9082 ]
  %9538 = phi float [ %9532, %9486 ], [ 0.000000e+00, %9082 ]
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 1
  %9541 = fsub fast float 1.000000e+00, %9535
  %9542 = fmul fast float %9541, %9117
  %9543 = fmul fast float %9542, %9540
  %9544 = fsub fast float %9117, %9543
  br i1 %9110, label %9545, label %9574, !dx.controlflow.hints !173

; <label>:9545                                    ; preds = %9533
  %9546 = fmul fast float %9118, %9107
  %9547 = fadd fast float %9546, %9108
  %9548 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9549 = fmul fast float %9089, %9544
  %9550 = fsub fast float -0.000000e+00, %9549
  %9551 = fmul fast float %9090, %9544
  %9552 = fsub fast float -0.000000e+00, %9551
  %9553 = call float @dx.op.unary.f32(i32 21, float %9550)  ; Exp(value)
  %9554 = call float @dx.op.unary.f32(i32 21, float %9552)  ; Exp(value)
  %9555 = call float @dx.op.binary.f32(i32 35, float %9097, float %9553)  ; FMax(a,b)
  %9556 = call float @dx.op.binary.f32(i32 35, float %9097, float %9554)  ; FMax(a,b)
  %9557 = fsub fast float %9556, %9555
  %9558 = fmul fast float %9557, %9548
  %9559 = fadd fast float %9558, %9555
  %9560 = call float @dx.op.unary.f32(i32 7, float %9559)  ; Saturate(value)
  %9561 = fsub fast float %9094, %9099
  %9562 = fsub fast float %9095, %9100
  %9563 = fsub fast float %9096, %9101
  %9564 = fmul fast float %9548, %9561
  %9565 = fmul fast float %9548, %9562
  %9566 = fmul fast float %9548, %9563
  %9567 = fadd fast float %9564, %9099
  %9568 = fadd fast float %9565, %9100
  %9569 = fadd fast float %9566, %9101
  %9570 = fsub fast float 1.000000e+00, %9560
  %9571 = fmul fast float %9570, %9567
  %9572 = fmul fast float %9570, %9568
  %9573 = fmul fast float %9570, %9569
  br label %9633

; <label>:9574                                    ; preds = %9533
  %9575 = fmul fast float %9544, %9106
  %9576 = call float @dx.op.unary.f32(i32 7, float %9575)  ; Saturate(value)
  %9577 = fsub fast float 2.000000e+00, %9576
  %9578 = fmul fast float %9576, 9.921875e-01
  %9579 = fmul fast float %9578, %9577
  %9580 = fadd fast float %9579, 3.906250e-03
  %9581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9580, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9582 = extractvalue %dx.types.ResRet.f32 %9581, 0
  %9583 = fsub fast float %9576, %9582
  %9584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9583)  ; FMax(a,b)
  %9585 = fmul fast float %9092, %9073
  %9586 = call float @dx.op.unary.f32(i32 6, float %9585)  ; FAbs(value)
  %9587 = fcmp fast ogt float %9586, 0x3EB0C6F7A0000000
  br i1 %9587, label %9588, label %9594, !dx.controlflow.hints !174

; <label>:9588                                    ; preds = %9574
  %9589 = fmul fast float %9585, 0xBFF7154760000000
  %9590 = call float @dx.op.unary.f32(i32 21, float %9589)  ; Exp(value)
  %9591 = fsub fast float 1.000000e+00, %9590
  %9592 = fdiv fast float %9591, %9585
  %9593 = fmul fast float %9592, %9102
  br label %9594

; <label>:9594                                    ; preds = %9588, %9574
  %9595 = phi float [ %9593, %9588 ], [ %9102, %9574 ]
  %9596 = fadd fast float %9595, %9104
  %9597 = fmul fast float %9596, %9584
  %9598 = fmul fast float %9089, %9597
  %9599 = fsub fast float -0.000000e+00, %9598
  %9600 = fmul fast float %9090, %9597
  %9601 = fsub fast float -0.000000e+00, %9600
  %9602 = fmul fast float %9091, %9597
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = call float @dx.op.unary.f32(i32 21, float %9599)  ; Exp(value)
  %9605 = call float @dx.op.unary.f32(i32 21, float %9601)  ; Exp(value)
  %9606 = call float @dx.op.unary.f32(i32 21, float %9603)  ; Exp(value)
  %9607 = fmul fast float %9118, %9118
  %9608 = fadd fast float %9607, 1.000000e+00
  %9609 = fmul fast float %9608, 0x3FAE8EC8A0000000
  %9610 = fmul fast float %9609, %9099
  %9611 = fmul fast float %9609, %9100
  %9612 = fmul fast float %9609, %9101
  %9613 = fmul fast float %9118, %9097
  %9614 = fsub fast float 1.000000e+00, %9613
  %9615 = fmul fast float %9097, %9097
  %9616 = fsub fast float 1.000000e+00, %9615
  %9617 = fmul fast float %9616, 0x3FB45F3060000000
  %9618 = fmul fast float %9614, %9614
  %9619 = fdiv fast float 1.000000e+00, %9618
  %9620 = fmul fast float %9617, %9619
  %9621 = fmul fast float %9620, %9094
  %9622 = fmul fast float %9620, %9095
  %9623 = fmul fast float %9620, %9096
  %9624 = fadd fast float %9621, %9610
  %9625 = fadd fast float %9622, %9611
  %9626 = fadd fast float %9623, %9612
  %9627 = fsub fast float 1.000000e+00, %9604
  %9628 = fsub fast float 1.000000e+00, %9605
  %9629 = fsub fast float 1.000000e+00, %9606
  %9630 = fmul fast float %9624, %9627
  %9631 = fmul fast float %9625, %9628
  %9632 = fmul fast float %9626, %9629
  br label %9633

; <label>:9633                                    ; preds = %9594, %9545
  %9634 = phi float [ %9571, %9545 ], [ %9630, %9594 ]
  %9635 = phi float [ %9572, %9545 ], [ %9631, %9594 ]
  %9636 = phi float [ %9573, %9545 ], [ %9632, %9594 ]
  %9637 = phi float [ %9560, %9545 ], [ %9604, %9594 ]
  %9638 = phi float [ %9560, %9545 ], [ %9605, %9594 ]
  %9639 = phi float [ %9560, %9545 ], [ %9606, %9594 ]
  br i1 %9126, label %9640, label %9838, !dx.controlflow.hints !175

; <label>:9640                                    ; preds = %9633
  %9641 = extractvalue %dx.types.CBufRet.f32 %9539, 0
  %9642 = fmul fast float %9641, %9541
  %9643 = fsub fast float %9536, %9634
  %9644 = fsub fast float %9537, %9635
  %9645 = fsub fast float %9538, %9636
  %9646 = fmul fast float %9642, %9643
  %9647 = fmul fast float %9642, %9644
  %9648 = fmul fast float %9642, %9645
  %9649 = fadd fast float %9646, %9634
  %9650 = fadd fast float %9647, %9635
  %9651 = fadd fast float %9648, %9636
  %9652 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9637)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9638)  ; FMax(a,b)
  %9654 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9639)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9535)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 35, float %9534, float %9544)  ; FMax(a,b)
  %9657 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9656)  ; FMax(a,b)
  %9658 = fdiv fast float %9534, %9657
  %9659 = call float @dx.op.unary.f32(i32 7, float %9658)  ; Saturate(value)
  %9660 = fdiv fast float %9544, %9657
  %9661 = call float @dx.op.unary.f32(i32 7, float %9660)  ; Saturate(value)
  %9662 = fcmp fast une float %9655, 1.000000e+00
  br i1 %9662, label %9663, label %9676, !dx.controlflow.hints !176

; <label>:9663                                    ; preds = %9640
  %9664 = call float @dx.op.unary.f32(i32 23, float %9655)  ; Log(value)
  %9665 = fmul fast float %9664, 0x3FE62E4300000000
  %9666 = fmul fast float %9536, %9665
  %9667 = fsub fast float -0.000000e+00, %9666
  %9668 = fmul fast float %9537, %9665
  %9669 = fsub fast float -0.000000e+00, %9668
  %9670 = fmul fast float %9538, %9665
  %9671 = fsub fast float -0.000000e+00, %9670
  %9672 = fsub fast float 1.000000e+00, %9655
  %9673 = fdiv fast float %9667, %9672
  %9674 = fdiv fast float %9669, %9672
  %9675 = fdiv fast float %9671, %9672
  br label %9676

; <label>:9676                                    ; preds = %9663, %9640
  %9677 = phi float [ %9673, %9663 ], [ %9536, %9640 ]
  %9678 = phi float [ %9674, %9663 ], [ %9537, %9640 ]
  %9679 = phi float [ %9675, %9663 ], [ %9538, %9640 ]
  %9680 = phi float [ %9665, %9663 ], [ 0.000000e+00, %9640 ]
  %9681 = fcmp fast une float %9652, 1.000000e+00
  br i1 %9681, label %9682, label %9689, !dx.controlflow.hints !177

; <label>:9682                                    ; preds = %9676
  %9683 = call float @dx.op.unary.f32(i32 23, float %9652)  ; Log(value)
  %9684 = fmul fast float %9683, 0x3FE62E4300000000
  %9685 = fmul fast float %9649, %9684
  %9686 = fsub fast float -0.000000e+00, %9685
  %9687 = fsub fast float 1.000000e+00, %9652
  %9688 = fdiv fast float %9686, %9687
  br label %9689

; <label>:9689                                    ; preds = %9682, %9676
  %9690 = phi float [ %9688, %9682 ], [ %9649, %9676 ]
  %9691 = phi float [ %9684, %9682 ], [ 0.000000e+00, %9676 ]
  %9692 = fcmp fast une float %9653, 1.000000e+00
  br i1 %9692, label %9693, label %9700, !dx.controlflow.hints !177

; <label>:9693                                    ; preds = %9689
  %9694 = call float @dx.op.unary.f32(i32 23, float %9653)  ; Log(value)
  %9695 = fmul fast float %9694, 0x3FE62E4300000000
  %9696 = fmul fast float %9650, %9695
  %9697 = fsub fast float -0.000000e+00, %9696
  %9698 = fsub fast float 1.000000e+00, %9653
  %9699 = fdiv fast float %9697, %9698
  br label %9700

; <label>:9700                                    ; preds = %9693, %9689
  %9701 = phi float [ %9699, %9693 ], [ %9650, %9689 ]
  %9702 = phi float [ %9695, %9693 ], [ 0.000000e+00, %9689 ]
  %9703 = fcmp fast une float %9654, 1.000000e+00
  br i1 %9703, label %9704, label %9711, !dx.controlflow.hints !177

; <label>:9704                                    ; preds = %9700
  %9705 = call float @dx.op.unary.f32(i32 23, float %9654)  ; Log(value)
  %9706 = fmul fast float %9705, 0x3FE62E4300000000
  %9707 = fmul fast float %9651, %9706
  %9708 = fsub fast float -0.000000e+00, %9707
  %9709 = fsub fast float 1.000000e+00, %9654
  %9710 = fdiv fast float %9708, %9709
  br label %9711

; <label>:9711                                    ; preds = %9704, %9700
  %9712 = phi float [ %9710, %9704 ], [ %9651, %9700 ]
  %9713 = phi float [ %9706, %9704 ], [ 0.000000e+00, %9700 ]
  %9714 = fmul fast float %9677, %9661
  %9715 = fmul fast float %9678, %9661
  %9716 = fmul fast float %9679, %9661
  %9717 = fmul fast float %9680, %9661
  %9718 = fmul fast float %9690, %9659
  %9719 = fmul fast float %9701, %9659
  %9720 = fmul fast float %9712, %9659
  %9721 = fmul fast float %9691, %9659
  %9722 = fmul fast float %9702, %9659
  %9723 = fmul fast float %9713, %9659
  %9724 = fadd fast float %9718, %9714
  %9725 = fadd fast float %9719, %9715
  %9726 = fadd fast float %9720, %9716
  %9727 = fadd fast float %9721, %9717
  %9728 = fadd fast float %9722, %9717
  %9729 = fadd fast float %9723, %9717
  %9730 = fcmp fast une float %9727, 0.000000e+00
  br i1 %9730, label %9731, label %9738, !dx.controlflow.hints !178

; <label>:9731                                    ; preds = %9711
  %9732 = fmul fast float %9727, 0x3FF7154760000000
  %9733 = call float @dx.op.unary.f32(i32 21, float %9732)  ; Exp(value)
  %9734 = fsub fast float 1.000000e+00, %9733
  %9735 = fmul fast float %9724, %9734
  %9736 = fsub fast float -0.000000e+00, %9735
  %9737 = fdiv fast float %9736, %9727
  br label %9738

; <label>:9738                                    ; preds = %9731, %9711
  %9739 = phi float [ %9733, %9731 ], [ 1.000000e+00, %9711 ]
  %9740 = phi float [ %9737, %9731 ], [ %9724, %9711 ]
  %9741 = fcmp fast une float %9728, 0.000000e+00
  br i1 %9741, label %9742, label %9749, !dx.controlflow.hints !178

; <label>:9742                                    ; preds = %9738
  %9743 = fmul fast float %9728, 0x3FF7154760000000
  %9744 = call float @dx.op.unary.f32(i32 21, float %9743)  ; Exp(value)
  %9745 = fsub fast float 1.000000e+00, %9744
  %9746 = fmul fast float %9725, %9745
  %9747 = fsub fast float -0.000000e+00, %9746
  %9748 = fdiv fast float %9747, %9728
  br label %9749

; <label>:9749                                    ; preds = %9742, %9738
  %9750 = phi float [ %9744, %9742 ], [ 1.000000e+00, %9738 ]
  %9751 = phi float [ %9748, %9742 ], [ %9725, %9738 ]
  %9752 = fcmp fast une float %9729, 0.000000e+00
  br i1 %9752, label %9753, label %9760, !dx.controlflow.hints !178

; <label>:9753                                    ; preds = %9749
  %9754 = fmul fast float %9729, 0x3FF7154760000000
  %9755 = call float @dx.op.unary.f32(i32 21, float %9754)  ; Exp(value)
  %9756 = fsub fast float 1.000000e+00, %9755
  %9757 = fmul fast float %9726, %9756
  %9758 = fsub fast float -0.000000e+00, %9757
  %9759 = fdiv fast float %9758, %9729
  br label %9760

; <label>:9760                                    ; preds = %9753, %9749
  %9761 = phi float [ %9755, %9753 ], [ 1.000000e+00, %9749 ]
  %9762 = phi float [ %9759, %9753 ], [ %9726, %9749 ]
  %9763 = fcmp fast ogt float %9659, %9661
  br i1 %9763, label %9764, label %9784

; <label>:9764                                    ; preds = %9760
  %9765 = fsub fast float 1.000000e+00, %9661
  %9766 = fmul fast float %9677, %9765
  %9767 = fmul fast float %9678, %9765
  %9768 = fmul fast float %9679, %9765
  %9769 = fmul fast float %9680, %9765
  %9770 = fcmp fast une float %9769, 0.000000e+00
  br i1 %9770, label %9771, label %9822, !dx.controlflow.hints !179

; <label>:9771                                    ; preds = %9764
  %9772 = fmul fast float %9769, 0x3FF7154760000000
  %9773 = call float @dx.op.unary.f32(i32 21, float %9772)  ; Exp(value)
  %9774 = fsub fast float 1.000000e+00, %9773
  %9775 = fmul fast float %9766, %9774
  %9776 = fsub fast float -0.000000e+00, %9775
  %9777 = fmul fast float %9767, %9774
  %9778 = fsub fast float -0.000000e+00, %9777
  %9779 = fmul fast float %9768, %9774
  %9780 = fsub fast float -0.000000e+00, %9779
  %9781 = fdiv fast float %9776, %9769
  %9782 = fdiv fast float %9778, %9769
  %9783 = fdiv fast float %9780, %9769
  br label %9822

; <label>:9784                                    ; preds = %9760
  %9785 = fsub fast float 1.000000e+00, %9659
  %9786 = fmul fast float %9690, %9785
  %9787 = fmul fast float %9701, %9785
  %9788 = fmul fast float %9712, %9785
  %9789 = fmul fast float %9691, %9785
  %9790 = fmul fast float %9702, %9785
  %9791 = fmul fast float %9713, %9785
  %9792 = fcmp fast une float %9789, 0.000000e+00
  br i1 %9792, label %9793, label %9800, !dx.controlflow.hints !178

; <label>:9793                                    ; preds = %9784
  %9794 = fmul fast float %9789, 0x3FF7154760000000
  %9795 = call float @dx.op.unary.f32(i32 21, float %9794)  ; Exp(value)
  %9796 = fsub fast float 1.000000e+00, %9795
  %9797 = fmul fast float %9786, %9796
  %9798 = fsub fast float -0.000000e+00, %9797
  %9799 = fdiv fast float %9798, %9789
  br label %9800

; <label>:9800                                    ; preds = %9793, %9784
  %9801 = phi float [ %9799, %9793 ], [ %9786, %9784 ]
  %9802 = phi float [ %9795, %9793 ], [ 1.000000e+00, %9784 ]
  %9803 = fcmp fast une float %9790, 0.000000e+00
  br i1 %9803, label %9804, label %9811, !dx.controlflow.hints !178

; <label>:9804                                    ; preds = %9800
  %9805 = fmul fast float %9790, 0x3FF7154760000000
  %9806 = call float @dx.op.unary.f32(i32 21, float %9805)  ; Exp(value)
  %9807 = fsub fast float 1.000000e+00, %9806
  %9808 = fmul fast float %9787, %9807
  %9809 = fsub fast float -0.000000e+00, %9808
  %9810 = fdiv fast float %9809, %9790
  br label %9811

; <label>:9811                                    ; preds = %9804, %9800
  %9812 = phi float [ %9810, %9804 ], [ %9787, %9800 ]
  %9813 = phi float [ %9806, %9804 ], [ 1.000000e+00, %9800 ]
  %9814 = fcmp fast une float %9791, 0.000000e+00
  br i1 %9814, label %9815, label %9822, !dx.controlflow.hints !178

; <label>:9815                                    ; preds = %9811
  %9816 = fmul fast float %9791, 0x3FF7154760000000
  %9817 = call float @dx.op.unary.f32(i32 21, float %9816)  ; Exp(value)
  %9818 = fsub fast float 1.000000e+00, %9817
  %9819 = fmul fast float %9788, %9818
  %9820 = fsub fast float -0.000000e+00, %9819
  %9821 = fdiv fast float %9820, %9791
  br label %9822

; <label>:9822                                    ; preds = %9815, %9811, %9771, %9764
  %9823 = phi float [ %9821, %9815 ], [ %9783, %9771 ], [ %9768, %9764 ], [ %9788, %9811 ]
  %9824 = phi float [ %9812, %9815 ], [ %9782, %9771 ], [ %9767, %9764 ], [ %9812, %9811 ]
  %9825 = phi float [ %9801, %9815 ], [ %9781, %9771 ], [ %9766, %9764 ], [ %9801, %9811 ]
  %9826 = phi float [ %9817, %9815 ], [ %9773, %9771 ], [ 1.000000e+00, %9764 ], [ 1.000000e+00, %9811 ]
  %9827 = phi float [ %9813, %9815 ], [ %9773, %9771 ], [ 1.000000e+00, %9764 ], [ %9813, %9811 ]
  %9828 = phi float [ %9802, %9815 ], [ %9773, %9771 ], [ 1.000000e+00, %9764 ], [ %9802, %9811 ]
  %9829 = fmul fast float %9828, %9740
  %9830 = fmul fast float %9827, %9751
  %9831 = fmul fast float %9826, %9762
  %9832 = fadd fast float %9829, %9825
  %9833 = fadd fast float %9830, %9824
  %9834 = fadd fast float %9831, %9823
  %9835 = fmul fast float %9828, %9739
  %9836 = fmul fast float %9827, %9750
  %9837 = fmul fast float %9826, %9761
  br label %9838

; <label>:9838                                    ; preds = %9822, %9633
  %9839 = phi float [ %9837, %9822 ], [ %9639, %9633 ]
  %9840 = phi float [ %9836, %9822 ], [ %9638, %9633 ]
  %9841 = phi float [ %9835, %9822 ], [ %9637, %9633 ]
  %9842 = phi float [ %9834, %9822 ], [ %9636, %9633 ]
  %9843 = phi float [ %9833, %9822 ], [ %9635, %9633 ]
  %9844 = phi float [ %9832, %9822 ], [ %9634, %9633 ]
  %9845 = fmul fast float %9844, %8790
  %9846 = fmul fast float %9843, %8790
  %9847 = fmul fast float %9842, %8790
  %9848 = fmul fast float %9841, %9081
  %9849 = call float @dx.op.dot3.f32(i32 55, float %9841, float %9840, float %9839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9850 = call float @dx.op.dot3.f32(i32 55, float %9845, float %9846, float %9847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9851 = select i1 %260, float %9849, float %9841
  %9852 = select i1 %260, float %9849, float %9840
  %9853 = select i1 %260, float 1.000000e+00, float %9839
  %9854 = select i1 %260, float %9850, float %9845
  %9855 = select i1 %260, float 0.000000e+00, float %9846
  %9856 = select i1 %260, float 0.000000e+00, float %9847
  %9857 = fmul fast float %9851, %9075
  %9858 = fmul fast float %9852, %9076
  %9859 = fmul fast float %9853, %9077
  %9860 = fadd fast float %9857, %9854
  %9861 = fadd fast float %9858, %9855
  %9862 = fadd fast float %9856, %9859
  %9863 = fmul fast float %9851, %9078
  %9864 = fmul fast float %9852, %9079
  %9865 = fmul fast float %9853, %9080
  %9866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.i32 %9866, 0
  %9868 = icmp eq i32 %9867, 0
  br i1 %9868, label %10236, label %9869, !dx.controlflow.hints !180

; <label>:9869                                    ; preds = %9838
  %9870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.f32 %9870, 2
  %9872 = extractvalue %dx.types.CBufRet.f32 %9870, 3
  %9873 = fmul fast float %9871, %114
  %9874 = fmul fast float %9872, %115
  %9875 = fmul fast float %9873, 2.000000e+00
  %9876 = fmul fast float %9874, 2.000000e+00
  %9877 = fsub fast float 1.000000e+00, %9875
  %9878 = fsub fast float 1.000000e+00, %9876
  %9879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.f32 %9879, 0
  %9881 = extractvalue %dx.types.CBufRet.f32 %9879, 1
  %9882 = extractvalue %dx.types.CBufRet.f32 %9879, 2
  %9883 = fmul fast float %9877, %9880
  %9884 = fmul fast float %9877, %9881
  %9885 = fmul fast float %9877, %9882
  %9886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9887 = extractvalue %dx.types.CBufRet.f32 %9886, 0
  %9888 = extractvalue %dx.types.CBufRet.f32 %9886, 1
  %9889 = extractvalue %dx.types.CBufRet.f32 %9886, 2
  %9890 = fmul fast float %9878, %9887
  %9891 = fmul fast float %9878, %9888
  %9892 = fmul fast float %9878, %9889
  %9893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9894 = extractvalue %dx.types.CBufRet.f32 %9893, 0
  %9895 = extractvalue %dx.types.CBufRet.f32 %9893, 1
  %9896 = extractvalue %dx.types.CBufRet.f32 %9893, 2
  %9897 = fadd fast float %9890, %9894
  %9898 = fadd fast float %9897, %9883
  %9899 = fadd fast float %9891, %9895
  %9900 = fadd fast float %9899, %9884
  %9901 = fadd fast float %9892, %9896
  %9902 = fadd fast float %9901, %9885
  %9903 = fmul fast float %9898, %9074
  %9904 = fmul fast float %9900, %9074
  %9905 = fmul fast float %9902, %9074
  %9906 = fmul fast float %9903, %9903
  %9907 = fmul fast float %9904, %9904
  %9908 = fadd fast float %9906, %9907
  %9909 = fmul fast float %9905, %9905
  %9910 = fadd fast float %9908, %9909
  %9911 = call float @dx.op.unary.f32(i32 24, float %9910)  ; Sqrt(value)
  %9912 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %9913 = fsub fast float %9911, %9912
  %9914 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %9915 = fmul fast float %9913, %9914
  %9916 = call float @dx.op.unary.f32(i32 7, float %9915)  ; Saturate(value)
  %9917 = fadd fast float %9916, -5.000000e-01
  %9918 = fmul fast float %9917, 2.000000e+00
  %9919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9920 = extractvalue %dx.types.CBufRet.f32 %9919, 2
  %9921 = call float @dx.op.binary.f32(i32 36, float %9920, float %9918)  ; FMin(a,b)
  %9922 = fsub fast float -0.000000e+00, %9920
  %9923 = fcmp fast ogt float %9921, %9922
  br i1 %9923, label %9924, label %10236, !dx.controlflow.hints !181

; <label>:9924                                    ; preds = %9869
  %9925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9926 = extractvalue %dx.types.CBufRet.f32 %9925, 3
  %9927 = fcmp fast ogt float %9926, 0.000000e+00
  br i1 %9927, label %9928, label %10003, !dx.controlflow.hints !182

; <label>:9928                                    ; preds = %9924
  %9929 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9930 = extractvalue %dx.types.Dimensions %9929, 0
  %9931 = sitofp i32 %9930 to float
  %9932 = extractvalue %dx.types.Dimensions %9929, 1
  %9933 = sitofp i32 %9932 to float
  %9934 = fmul fast float %9873, %9931
  %9935 = fmul fast float %9874, %9933
  %9936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9937 = extractvalue %dx.types.CBufRet.f32 %9936, 1
  %9938 = fsub fast float -0.000000e+00, %9937
  %9939 = fptoui float %9938 to i32
  %9940 = fptoui float %9934 to i32
  %9941 = fptoui float %9935 to i32
  %9942 = and i32 %9939, 31
  %9943 = lshr i32 %9940, %9942
  %9944 = lshr i32 %9941, %9942
  %9945 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9939, i32 %9943, i32 %9944, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9946 = extractvalue %dx.types.ResRet.f32 %9945, 0
  %9947 = fcmp fast olt float %9946, -1.000000e+00
  %9948 = fcmp fast ogt float %9946, -1.000000e+00
  %9949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9950 = extractvalue %dx.types.CBufRet.f32 %9949, 1
  %9951 = select i1 %9948, float %9950, float 1.000000e+00
  %9952 = fadd fast float %9946, 1.000000e+00
  %9953 = fmul fast float %9951, %9952
  %9954 = call float @dx.op.unary.f32(i32 6, float %9953)  ; FAbs(value)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9949, 3
  %9956 = fcmp fast oge float %9954, %9955
  %9957 = select i1 %9956, float 0x4197782600000000, float %9954
  %9958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9959 = extractvalue %dx.types.CBufRet.f32 %9958, 0
  %9960 = extractvalue %dx.types.CBufRet.f32 %9958, 1
  %9961 = extractvalue %dx.types.CBufRet.f32 %9958, 2
  %9962 = select i1 %9947, float %9959, float %9880
  %9963 = select i1 %9947, float %9960, float %9881
  %9964 = select i1 %9947, float %9961, float %9882
  %9965 = fmul fast float %9962, %9877
  %9966 = fmul fast float %9963, %9877
  %9967 = fmul fast float %9964, %9877
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 0
  %9970 = extractvalue %dx.types.CBufRet.f32 %9968, 1
  %9971 = extractvalue %dx.types.CBufRet.f32 %9968, 2
  %9972 = select i1 %9947, float %9969, float %9887
  %9973 = select i1 %9947, float %9970, float %9888
  %9974 = select i1 %9947, float %9971, float %9889
  %9975 = fmul fast float %9972, %9878
  %9976 = fmul fast float %9973, %9878
  %9977 = fmul fast float %9974, %9878
  %9978 = fadd fast float %9975, %9965
  %9979 = fadd fast float %9976, %9966
  %9980 = fadd fast float %9977, %9967
  %9981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9981, 0
  %9983 = extractvalue %dx.types.CBufRet.f32 %9981, 1
  %9984 = extractvalue %dx.types.CBufRet.f32 %9981, 2
  %9985 = select i1 %9947, float %9982, float %9894
  %9986 = select i1 %9947, float %9983, float %9895
  %9987 = select i1 %9947, float %9984, float %9896
  %9988 = fadd fast float %9978, %9985
  %9989 = fadd fast float %9979, %9986
  %9990 = fadd fast float %9980, %9987
  %9991 = fmul fast float %9988, %9957
  %9992 = fmul fast float %9989, %9957
  %9993 = fmul fast float %9990, %9957
  %9994 = fmul fast float %9991, %9991
  %9995 = fmul fast float %9992, %9992
  %9996 = fadd fast float %9994, %9995
  %9997 = fmul fast float %9993, %9993
  %9998 = fadd fast float %9996, %9997
  %9999 = call float @dx.op.unary.f32(i32 24, float %9998)  ; Sqrt(value)
  %10000 = fsub fast float %9999, %9912
  %10001 = fmul fast float %10000, %9914
  %10002 = call float @dx.op.unary.f32(i32 7, float %10001)  ; Saturate(value)
  br label %10003

; <label>:10003                                   ; preds = %9928, %9924
  %10004 = phi float [ %10002, %9928 ], [ 1.000000e+00, %9924 ]
  %10005 = fmul fast float %9921, 5.000000e-01
  %10006 = fadd fast float %10005, 5.000000e-01
  %10007 = call float @dx.op.unary.f32(i32 22, float %10006)  ; Frc(value)
  %10008 = call float @dx.op.unary.f32(i32 27, float %10007)  ; Round_ni(value)
  %10009 = call float @dx.op.unary.f32(i32 22, float %10007)  ; Frc(value)
  %10010 = fmul fast float %10009, 2.000000e+00
  %10011 = fadd fast float %10010, -1.000000e+00
  %10012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9873, float %9874, float %10008, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10013 = extractvalue %dx.types.ResRet.f32 %10012, 0
  %10014 = extractvalue %dx.types.ResRet.f32 %10012, 1
  %10015 = extractvalue %dx.types.ResRet.f32 %10012, 2
  %10016 = extractvalue %dx.types.ResRet.f32 %10012, 3
  %10017 = fadd fast float %10013, -5.000000e-01
  %10018 = fadd fast float %10015, -5.000000e-01
  %10019 = fmul fast float %10017, 0xBFD5555560000000
  %10020 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10018, float %10019)  ; FMad(a,b,c)
  %10021 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10014, float 0.000000e+00)  ; FMad(a,b,c)
  %10022 = fadd fast float %10021, %10016
  %10023 = fmul fast float %10017, -7.500000e-01
  %10024 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10018, float %10023)  ; FMad(a,b,c)
  %10025 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10014, float 0.000000e+00)  ; FMad(a,b,c)
  %10026 = fadd fast float %10025, %10016
  %10027 = call float @dx.op.binary.f32(i32 35, float %10020, float -1.000000e+00)  ; FMax(a,b)
  %10028 = call float @dx.op.binary.f32(i32 35, float %10022, float -1.000000e+00)  ; FMax(a,b)
  %10029 = call float @dx.op.binary.f32(i32 35, float %10024, float -1.000000e+00)  ; FMax(a,b)
  %10030 = call float @dx.op.binary.f32(i32 35, float %10026, float -1.000000e+00)  ; FMax(a,b)
  %10031 = call float @dx.op.binary.f32(i32 36, float %10027, float 1.000000e+00)  ; FMin(a,b)
  %10032 = call float @dx.op.binary.f32(i32 36, float %10028, float 1.000000e+00)  ; FMin(a,b)
  %10033 = call float @dx.op.binary.f32(i32 36, float %10029, float 1.000000e+00)  ; FMin(a,b)
  %10034 = call float @dx.op.binary.f32(i32 36, float %10030, float 1.000000e+00)  ; FMin(a,b)
  %10035 = fcmp fast olt float %10031, 0x3FEFFF8020000000
  br i1 %10035, label %10036, label %10151, !dx.controlflow.hints !183

; <label>:10036                                   ; preds = %10003
  %10037 = extractvalue %dx.types.CBufRet.f32 %9919, 3
  %10038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10039 = extractvalue %dx.types.CBufRet.f32 %10038, 0
  %10040 = extractvalue %dx.types.CBufRet.f32 %10038, 1
  %10041 = extractvalue %dx.types.CBufRet.f32 %10038, 2
  %10042 = extractvalue %dx.types.CBufRet.f32 %10038, 3
  %10043 = fsub fast float %10039, %10031
  %10044 = fsub fast float %10040, %10032
  %10045 = fsub fast float %10041, %10033
  %10046 = fsub fast float %10042, %10034
  %10047 = fmul fast float %10043, %10037
  %10048 = fmul fast float %10044, %10037
  %10049 = fmul fast float %10045, %10037
  %10050 = fmul fast float %10046, %10037
  %10051 = fadd fast float %10047, %10031
  %10052 = fadd fast float %10048, %10032
  %10053 = fsub fast float -0.000000e+00, %10052
  %10054 = fadd fast float %10049, %10033
  %10055 = fadd fast float %10050, %10034
  %10056 = fmul fast float %10051, %10051
  %10057 = fsub fast float %10052, %10056
  %10058 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10057)  ; FMax(a,b)
  %10059 = fdiv fast float 1.000000e+00, %10058
  %10060 = fmul fast float %10052, %10051
  %10061 = fsub fast float %10054, %10060
  %10062 = fsub fast float %10011, %10051
  %10063 = fmul fast float %10011, %10011
  %10064 = fsub fast float %10063, %10052
  %10065 = fmul fast float %10062, %10059
  %10066 = fmul fast float %10065, %10061
  %10067 = fsub fast float %10064, %10066
  %10068 = fmul fast float %10052, %10052
  %10069 = fsub fast float %10055, %10068
  %10070 = fmul fast float %10061, %10061
  %10071 = fmul fast float %10070, %10059
  %10072 = fsub fast float %10069, %10071
  %10073 = fdiv fast float %10067, %10072
  %10074 = fmul fast float %10061, %10073
  %10075 = fsub fast float %10062, %10074
  %10076 = fmul fast float %10075, %10059
  %10077 = fmul fast float %10076, %10051
  %10078 = fsub fast float 1.000000e+00, %10077
  %10079 = fmul fast float %10052, %10073
  %10080 = fsub fast float %10078, %10079
  %10081 = fmul fast float %10076, %10076
  %10082 = fmul fast float %10073, 4.000000e+00
  %10083 = fmul fast float %10082, %10080
  %10084 = fsub fast float %10081, %10083
  %10085 = call float @dx.op.unary.f32(i32 24, float %10084)  ; Sqrt(value)
  %10086 = fcmp fast oge float %10076, 0.000000e+00
  %10087 = fsub fast float -0.000000e+00, %10085
  %10088 = select i1 %10086, float %10087, float %10085
  %10089 = fsub fast float %10088, %10076
  %10090 = fdiv fast float %10089, %10073
  %10091 = fdiv fast float %10080, %10089
  %10092 = fmul fast float %10090, 5.000000e-01
  %10093 = fmul fast float %10091, 2.000000e+00
  %10094 = select i1 %10086, float %10092, float %10093
  %10095 = select i1 %10086, float %10093, float %10092
  %10096 = call float @dx.op.binary.f32(i32 35, float %10094, float %10095)  ; FMax(a,b)
  %10097 = call float @dx.op.binary.f32(i32 36, float %10094, float %10095)  ; FMin(a,b)
  %10098 = fcmp fast ogt float %10011, %10097
  br i1 %10098, label %10099, label %10109

; <label>:10099                                   ; preds = %10036
  %10100 = fsub fast float %10011, %10097
  %10101 = fsub fast float %10096, %10097
  %10102 = fmul fast float %10100, %10101
  %10103 = fmul fast float %10096, %10011
  %10104 = fadd fast float %10096, %10011
  %10105 = fmul fast float %10104, %10051
  %10106 = fadd fast float %10103, %10052
  %10107 = fsub fast float %10106, %10105
  %10108 = fdiv fast float %10107, %10102
  br label %10109

; <label>:10109                                   ; preds = %10099, %10036
  %10110 = phi float [ %10108, %10099 ], [ 0.000000e+00, %10036 ]
  %10111 = fcmp fast ogt float %10011, %10096
  %10112 = fsub fast float %10011, %10096
  br i1 %10111, label %10113, label %10123

; <label>:10113                                   ; preds = %10109
  %10114 = fsub fast float %10096, %10097
  %10115 = fmul fast float %10114, %10112
  %10116 = fmul fast float %10097, %10011
  %10117 = fadd fast float %10097, %10011
  %10118 = fmul fast float %10117, %10051
  %10119 = fsub fast float %10053, %10116
  %10120 = fadd fast float %10119, %10118
  %10121 = fdiv fast float %10120, %10115
  %10122 = fadd fast float %10121, %10110
  br label %10123

; <label>:10123                                   ; preds = %10113, %10109
  %10124 = phi float [ %10122, %10113 ], [ %10110, %10109 ]
  %10125 = fsub fast float %10011, %10097
  %10126 = fmul fast float %10125, %10112
  %10127 = fmul fast float %10097, %10096
  %10128 = fadd fast float %10097, %10096
  %10129 = fmul fast float %10128, %10051
  %10130 = fadd fast float %10127, %10052
  %10131 = fsub fast float %10130, %10129
  %10132 = fdiv fast float %10131, %10126
  %10133 = call float @dx.op.unary.f32(i32 7, float %10124)  ; Saturate(value)
  %10134 = fcmp fast oeq float %8802, 0.000000e+00
  %10135 = extractvalue %dx.types.CBufRet.f32 %9919, 0
  %10136 = fcmp fast oeq float %10135, 0.000000e+00
  %10137 = or i1 %10134, %10136
  %10138 = fmul fast float %10135, 2.000000e+00
  %10139 = fadd fast float %9920, %9921
  %10140 = fdiv fast float %10139, %10138
  %10141 = call float @dx.op.unary.f32(i32 7, float %10140)  ; Saturate(value)
  %10142 = fmul fast float %10141, 2.000000e+00
  %10143 = fsub fast float 3.000000e+00, %10142
  %10144 = fmul fast float %10141, %10141
  %10145 = fmul fast float %10144, %10143
  %10146 = select i1 %10137, float 1.000000e+00, float %10145
  %10147 = fmul fast float %10132, %8802
  %10148 = fadd fast float %10133, %10147
  %10149 = call float @dx.op.unary.f32(i32 7, float %10148)  ; Saturate(value)
  %10150 = fmul fast float %10146, %10149
  br label %10151

; <label>:10151                                   ; preds = %10123, %10003
  %10152 = phi float [ %10150, %10123 ], [ 0.000000e+00, %10003 ]
  %10153 = fsub fast float 1.000000e+00, %10152
  %10154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9873, float %9874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10155 = extractvalue %dx.types.ResRet.f32 %10154, 0
  %10156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.i32 %10156, 2
  %10158 = icmp eq i32 %10157, 0
  br i1 %10158, label %10164, label %10159

; <label>:10159                                   ; preds = %10151
  %10160 = call float @dx.op.unary.f32(i32 7, float %10152)  ; Saturate(value)
  %10161 = fadd fast float %10155, -1.000000e+00
  %10162 = fmul fast float %10160, %10161
  %10163 = fadd fast float %10162, 1.000000e+00
  br label %10164

; <label>:10164                                   ; preds = %10159, %10151
  %10165 = phi float [ %10163, %10159 ], [ %10153, %10151 ]
  br i1 %9927, label %10166, label %10184

; <label>:10166                                   ; preds = %10164
  %10167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10168 = extractvalue %dx.types.CBufRet.f32 %10167, 1
  %10169 = fsub fast float %10004, %10168
  %10170 = call float @dx.op.unary.f32(i32 7, float %10169)  ; Saturate(value)
  %10171 = fsub fast float %10004, %9926
  %10172 = call float @dx.op.unary.f32(i32 7, float %10171)  ; Saturate(value)
  %10173 = fsub fast float %10170, %10172
  %10174 = fsub fast float %10006, %10172
  %10175 = fdiv fast float %10174, %10173
  %10176 = call float @dx.op.unary.f32(i32 7, float %10175)  ; Saturate(value)
  %10177 = fmul fast float %10176, 2.000000e+00
  %10178 = fsub fast float 3.000000e+00, %10177
  %10179 = fsub fast float %10155, %10165
  %10180 = fmul fast float %10176, %10176
  %10181 = fmul fast float %10180, %10179
  %10182 = fmul fast float %10181, %10178
  %10183 = fadd fast float %10182, %10165
  br label %10184

; <label>:10184                                   ; preds = %10166, %10164
  %10185 = phi float [ %10183, %10166 ], [ %10165, %10164 ]
  %10186 = call float @dx.op.binary.f32(i32 35, float %10155, float %10185)  ; FMax(a,b)
  %10187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10188 = extractvalue %dx.types.CBufRet.i32 %10187, 2
  %10189 = and i32 %10188, 1
  %10190 = icmp eq i32 %10189, 0
  %10191 = fcmp fast une float %10186, 1.000000e+00
  %10192 = and i1 %10191, %10190
  br i1 %10192, label %10193, label %10212

; <label>:10193                                   ; preds = %10184
  %10194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9873, float %9874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10195 = extractvalue %dx.types.ResRet.f32 %10194, 0
  %10196 = extractvalue %dx.types.ResRet.f32 %10194, 1
  %10197 = extractvalue %dx.types.ResRet.f32 %10194, 2
  %10198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10199 = extractvalue %dx.types.CBufRet.f32 %10198, 1
  %10200 = fmul fast float %10199, %10195
  %10201 = fmul fast float %10199, %10196
  %10202 = fmul fast float %10199, %10197
  %10203 = fcmp fast ogt float %10155, 0x3FEFFF2E40000000
  %10204 = fsub fast float 1.000000e+00, %10186
  %10205 = fsub fast float 1.000000e+00, %10155
  %10206 = fdiv fast float %10204, %10205
  %10207 = call float @dx.op.unary.f32(i32 7, float %10206)  ; Saturate(value)
  %10208 = select i1 %10203, float 0.000000e+00, float %10207
  %10209 = fmul fast float %10200, %10208
  %10210 = fmul fast float %10201, %10208
  %10211 = fmul fast float %10202, %10208
  br label %10212

; <label>:10212                                   ; preds = %10193, %10184
  %10213 = phi float [ 0.000000e+00, %10184 ], [ %10209, %10193 ]
  %10214 = phi float [ 0.000000e+00, %10184 ], [ %10210, %10193 ]
  %10215 = phi float [ 0.000000e+00, %10184 ], [ %10211, %10193 ]
  %10216 = fmul fast float %10213, %8790
  %10217 = fmul fast float %10214, %8790
  %10218 = fmul fast float %10215, %8790
  %10219 = fmul fast float %10186, %9848
  %10220 = call float @dx.op.dot3.f32(i32 55, float %10186, float %10186, float %10186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10221 = call float @dx.op.dot3.f32(i32 55, float %10216, float %10217, float %10218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10222 = select i1 %260, float %10220, float %10186
  %10223 = select i1 %260, float 1.000000e+00, float %10186
  %10224 = select i1 %260, float %10221, float %10216
  %10225 = select i1 %260, float 0.000000e+00, float %10217
  %10226 = select i1 %260, float 0.000000e+00, float %10218
  %10227 = fmul fast float %10222, %9860
  %10228 = fmul fast float %10222, %9861
  %10229 = fmul fast float %10223, %9862
  %10230 = fadd fast float %10227, %10224
  %10231 = fadd fast float %10228, %10225
  %10232 = fadd fast float %10226, %10229
  %10233 = fmul fast float %10222, %9863
  %10234 = fmul fast float %10222, %9864
  %10235 = fmul fast float %10223, %9865
  br label %10236

; <label>:10236                                   ; preds = %10212, %9869, %9838, %9070
  %10237 = phi float [ %9075, %9070 ], [ %9860, %9838 ], [ %10230, %10212 ], [ %9860, %9869 ]
  %10238 = phi float [ %9076, %9070 ], [ %9861, %9838 ], [ %10231, %10212 ], [ %9861, %9869 ]
  %10239 = phi float [ %9077, %9070 ], [ %9862, %9838 ], [ %10232, %10212 ], [ %9862, %9869 ]
  %10240 = phi float [ %9078, %9070 ], [ %9863, %9838 ], [ %10233, %10212 ], [ %9863, %9869 ]
  %10241 = phi float [ %9079, %9070 ], [ %9864, %9838 ], [ %10234, %10212 ], [ %9864, %9869 ]
  %10242 = phi float [ %9080, %9070 ], [ %9865, %9838 ], [ %10235, %10212 ], [ %9865, %9869 ]
  %10243 = phi float [ %9081, %9070 ], [ %9848, %9838 ], [ %10219, %10212 ], [ %9848, %9869 ]
  %10244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10245 = extractvalue %dx.types.CBufRet.f32 %10244, 2
  %10246 = extractvalue %dx.types.CBufRet.f32 %10244, 3
  %10247 = fmul fast float %10245, %114
  %10248 = fmul fast float %10246, %115
  %10249 = call float @dx.op.unary.f32(i32 7, float %10247)  ; Saturate(value)
  %10250 = call float @dx.op.unary.f32(i32 7, float %10248)  ; Saturate(value)
  %10251 = select i1 %8812, i32 2, i32 0
  %10252 = or i32 %10251, 1
  %10253 = uitofp i32 %10252 to float
  %10254 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10249, float %10250, float %10253, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10255 = extractvalue %dx.types.ResRet.f32 %10254, 0
  %10256 = extractvalue %dx.types.ResRet.f32 %10254, 1
  %10257 = extractvalue %dx.types.ResRet.f32 %10254, 2
  %10258 = extractvalue %dx.types.ResRet.f32 %10254, 3
  %10259 = add nuw nsw i32 %10251, 2
  %10260 = uitofp i32 %10259 to float
  %10261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10249, float %10250, float %10260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10262 = extractvalue %dx.types.ResRet.f32 %10261, 0
  %10263 = extractvalue %dx.types.ResRet.f32 %10261, 1
  %10264 = extractvalue %dx.types.ResRet.f32 %10261, 2
  %10265 = extractvalue %dx.types.ResRet.f32 %10261, 3
  %10266 = call float @dx.op.binary.f32(i32 35, float %10256, float %10257)  ; FMax(a,b)
  %10267 = call float @dx.op.binary.f32(i32 35, float %10255, float %10266)  ; FMax(a,b)
  %10268 = call float @dx.op.binary.f32(i32 35, float %10267, float %10258)  ; FMax(a,b)
  %10269 = call float @dx.op.binary.f32(i32 36, float %10263, float %10264)  ; FMin(a,b)
  %10270 = call float @dx.op.binary.f32(i32 36, float %10262, float %10269)  ; FMin(a,b)
  %10271 = call float @dx.op.binary.f32(i32 36, float %10270, float %10265)  ; FMin(a,b)
  %10272 = fmul fast float %10268, 2.550000e+02
  %10273 = fadd fast float %10272, 0x3F70101020000000
  %10274 = fptoui float %10273 to i32
  %10275 = fmul fast float %10271, 2.550000e+02
  %10276 = fadd fast float %10275, 0x3F70101020000000
  %10277 = fptoui float %10276 to i32
  %10278 = icmp ult i32 %10274, %10277
  br i1 %10278, label %10279, label %10448

; <label>:10279                                   ; preds = %10236
  %10280 = fcmp fast ogt float %100, 9.843750e-01
  %10281 = fadd fast float %9074, -4.000000e+00
  %10282 = select i1 %10280, float -4.000000e+00, float %10281
  %10283 = call float @dx.op.binary.f32(i32 35, float %10282, float 0.000000e+00)  ; FMax(a,b)
  %10284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10285 = extractvalue %dx.types.CBufRet.f32 %10284, 0
  %10286 = fadd fast float %10285, %10283
  %10287 = extractvalue %dx.types.CBufRet.f32 %10284, 2
  %10288 = fmul fast float %10286, %10287
  %10289 = call float @dx.op.unary.f32(i32 23, float %10288)  ; Log(value)
  %10290 = extractvalue %dx.types.CBufRet.f32 %10284, 3
  %10291 = fmul fast float %10290, %10289
  %10292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10293 = extractvalue %dx.types.CBufRet.f32 %10292, 2
  %10294 = fmul fast float %10291, %10293
  %10295 = call float @dx.op.unary.f32(i32 7, float %10294)  ; Saturate(value)
  %10296 = uitofp i32 %10274 to float
  %10297 = uitofp i32 %10277 to float
  %10298 = fadd fast float %10296, 5.000000e-01
  %10299 = fadd fast float %10297, 5.000000e-01
  %10300 = fmul fast float %10293, %10298
  %10301 = fmul fast float %10293, %10299
  %10302 = fadd fast float %10300, 0x3F0FFB4800000000
  %10303 = fadd fast float %10301, 0xBF0FFB4800000000
  %10304 = call float @dx.op.binary.f32(i32 35, float %10295, float %10302)  ; FMax(a,b)
  %10305 = call float @dx.op.binary.f32(i32 36, float %10304, float %10303)  ; FMin(a,b)
  %10306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10307 = extractvalue %dx.types.CBufRet.f32 %10306, 1
  %10308 = extractvalue %dx.types.CBufRet.f32 %10306, 2
  %10309 = extractvalue %dx.types.CBufRet.f32 %10306, 0
  %10310 = select i1 %8812, float %10309, float 0.000000e+00
  %10311 = fmul fast float %10307, %10305
  %10312 = fadd fast float %10310, %10311
  %10313 = fadd fast float %10310, %10308
  %10314 = fsub fast float %10307, %10308
  %10315 = fadd fast float %10314, %10310
  %10316 = call float @dx.op.binary.f32(i32 35, float %10312, float %10313)  ; FMax(a,b)
  %10317 = call float @dx.op.binary.f32(i32 36, float %10316, float %10315)  ; FMin(a,b)
  %10318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10249, float %10250, float %10317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10319 = extractvalue %dx.types.ResRet.f32 %10318, 0
  %10320 = extractvalue %dx.types.ResRet.f32 %10318, 1
  %10321 = extractvalue %dx.types.ResRet.f32 %10318, 2
  %10322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10323 = extractvalue %dx.types.CBufRet.i32 %10322, 0
  %10324 = extractvalue %dx.types.CBufRet.i32 %10322, 1
  %10325 = uitofp i32 %10323 to float
  %10326 = uitofp i32 %10324 to float
  %10327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10328 = extractvalue %dx.types.CBufRet.f32 %10327, 0
  %10329 = extractvalue %dx.types.CBufRet.f32 %10327, 1
  %10330 = fmul fast float %10325, %10249
  %10331 = fmul fast float %10326, %10250
  %10332 = fadd fast float %10330, -5.000000e-01
  %10333 = fadd fast float %10331, -5.000000e-01
  %10334 = call float @dx.op.unary.f32(i32 22, float %10332)  ; Frc(value)
  %10335 = call float @dx.op.unary.f32(i32 22, float %10333)  ; Frc(value)
  %10336 = fmul fast float %10334, %10334
  %10337 = fmul fast float %10336, %10334
  %10338 = fsub fast float 3.000000e+00, %10334
  %10339 = fmul fast float %10336, %10338
  %10340 = fmul fast float %10334, 3.000000e+00
  %10341 = fmul fast float %10337, 3.000000e+00
  %10342 = fmul fast float %10336, 6.000000e+00
  %10343 = fsub fast float %10341, %10342
  %10344 = fadd fast float %10343, 4.000000e+00
  %10345 = fmul fast float %10344, 0x3FC5555560000000
  %10346 = fmul fast float %10337, -3.000000e+00
  %10347 = fadd fast float %10336, %10334
  %10348 = fmul fast float %10347, 3.000000e+00
  %10349 = fadd fast float %10346, 1.000000e+00
  %10350 = fadd fast float %10349, %10348
  %10351 = fmul fast float %10337, 0x3FC5555560000000
  %10352 = fmul fast float %10335, %10335
  %10353 = fmul fast float %10352, %10335
  %10354 = fsub fast float 3.000000e+00, %10335
  %10355 = fmul fast float %10352, %10354
  %10356 = fmul fast float %10335, 3.000000e+00
  %10357 = fmul fast float %10353, 3.000000e+00
  %10358 = fmul fast float %10352, 6.000000e+00
  %10359 = fsub fast float %10357, %10358
  %10360 = fadd fast float %10359, 4.000000e+00
  %10361 = fmul fast float %10360, 0x3FC5555560000000
  %10362 = fmul fast float %10353, -3.000000e+00
  %10363 = fadd fast float %10352, %10335
  %10364 = fmul fast float %10363, 3.000000e+00
  %10365 = fadd fast float %10362, 1.000000e+00
  %10366 = fadd fast float %10365, %10364
  %10367 = fmul fast float %10353, 0x3FC5555560000000
  %10368 = fadd fast float %10334, 1.000000e+00
  %10369 = fsub fast float 1.000000e+00, %10340
  %10370 = fadd fast float %10369, %10339
  %10371 = fadd fast float %10370, %10344
  %10372 = fmul fast float %10371, 0x3FC5555560000000
  %10373 = fdiv fast float %10345, %10372
  %10374 = fsub fast float %10368, %10373
  %10375 = fsub fast float 1.000000e+00, %10334
  %10376 = fadd fast float %10350, %10337
  %10377 = fmul fast float %10376, 0x3FC5555560000000
  %10378 = fdiv fast float %10351, %10377
  %10379 = fadd fast float %10375, %10378
  %10380 = fadd fast float %10335, 1.000000e+00
  %10381 = fsub fast float 1.000000e+00, %10356
  %10382 = fadd fast float %10381, %10355
  %10383 = fadd fast float %10382, %10360
  %10384 = fmul fast float %10383, 0x3FC5555560000000
  %10385 = fdiv fast float %10361, %10384
  %10386 = fsub fast float %10380, %10385
  %10387 = fsub fast float 1.000000e+00, %10335
  %10388 = fadd fast float %10366, %10353
  %10389 = fmul fast float %10388, 0x3FC5555560000000
  %10390 = fdiv fast float %10367, %10389
  %10391 = fadd fast float %10390, %10387
  %10392 = fmul fast float %10374, %10328
  %10393 = fsub fast float %10249, %10392
  %10394 = fmul fast float %10379, %10328
  %10395 = fadd fast float %10394, %10249
  %10396 = fmul fast float %10391, %10329
  %10397 = fadd fast float %10396, %10250
  %10398 = fmul fast float %10386, %10329
  %10399 = fsub fast float %10250, %10398
  %10400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10393, float %10399, float %10317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10401 = extractvalue %dx.types.ResRet.f32 %10400, 0
  %10402 = extractvalue %dx.types.ResRet.f32 %10400, 1
  %10403 = extractvalue %dx.types.ResRet.f32 %10400, 2
  %10404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10395, float %10399, float %10317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10405 = extractvalue %dx.types.ResRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.ResRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.ResRet.f32 %10404, 2
  %10408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10393, float %10397, float %10317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10409 = extractvalue %dx.types.ResRet.f32 %10408, 0
  %10410 = extractvalue %dx.types.ResRet.f32 %10408, 1
  %10411 = extractvalue %dx.types.ResRet.f32 %10408, 2
  %10412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10395, float %10397, float %10317, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10413 = extractvalue %dx.types.ResRet.f32 %10412, 0
  %10414 = extractvalue %dx.types.ResRet.f32 %10412, 1
  %10415 = extractvalue %dx.types.ResRet.f32 %10412, 2
  %10416 = fsub fast float %10409, %10401
  %10417 = fsub fast float %10410, %10402
  %10418 = fsub fast float %10411, %10403
  %10419 = fmul fast float %10416, %10389
  %10420 = fmul fast float %10417, %10389
  %10421 = fmul fast float %10418, %10389
  %10422 = fadd fast float %10419, %10401
  %10423 = fadd fast float %10420, %10402
  %10424 = fadd fast float %10421, %10403
  %10425 = fsub fast float %10413, %10405
  %10426 = fsub fast float %10414, %10406
  %10427 = fsub fast float %10415, %10407
  %10428 = fmul fast float %10425, %10389
  %10429 = fmul fast float %10426, %10389
  %10430 = fmul fast float %10427, %10389
  %10431 = fsub fast float %10405, %10422
  %10432 = fadd fast float %10431, %10428
  %10433 = fsub fast float %10406, %10423
  %10434 = fadd fast float %10433, %10429
  %10435 = fsub fast float %10407, %10424
  %10436 = fadd fast float %10435, %10430
  %10437 = fmul fast float %10432, %10377
  %10438 = fmul fast float %10434, %10377
  %10439 = fmul fast float %10436, %10377
  %10440 = fadd fast float %10437, %10422
  %10441 = fadd fast float %10438, %10423
  %10442 = fadd fast float %10439, %10424
  %10443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10444 = extractvalue %dx.types.CBufRet.f32 %10443, 1
  %10445 = fmul fast float %10440, %10444
  %10446 = fmul fast float %10441, %10444
  %10447 = fmul fast float %10442, %10444
  br label %10448

; <label>:10448                                   ; preds = %10279, %10236
  %10449 = phi float [ %10319, %10279 ], [ 1.000000e+00, %10236 ]
  %10450 = phi float [ %10320, %10279 ], [ 1.000000e+00, %10236 ]
  %10451 = phi float [ %10321, %10279 ], [ 1.000000e+00, %10236 ]
  %10452 = phi float [ %10445, %10279 ], [ 0.000000e+00, %10236 ]
  %10453 = phi float [ %10446, %10279 ], [ 0.000000e+00, %10236 ]
  %10454 = phi float [ %10447, %10279 ], [ 0.000000e+00, %10236 ]
  %10455 = fmul fast float %10452, %8790
  %10456 = fmul fast float %10453, %8790
  %10457 = fmul fast float %10454, %8790
  %10458 = fmul fast float %10449, %10243
  %10459 = call float @dx.op.dot3.f32(i32 55, float %10449, float %10450, float %10451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10460 = call float @dx.op.dot3.f32(i32 55, float %10455, float %10456, float %10457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10461 = select i1 %260, float %10459, float %10449
  %10462 = select i1 %260, float %10459, float %10450
  %10463 = select i1 %260, float 1.000000e+00, float %10451
  %10464 = select i1 %260, float %10460, float %10455
  %10465 = select i1 %260, float 0.000000e+00, float %10456
  %10466 = select i1 %260, float 0.000000e+00, float %10457
  %10467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10468 = extractvalue %dx.types.CBufRet.i32 %10467, 3
  %10469 = and i32 %10468, 3
  %10470 = icmp ne i32 %10469, 0
  %10471 = and i32 %10468, 4
  %10472 = icmp ne i32 %10471, 0
  %10473 = and i1 %10470, %10472
  %10474 = and i1 %260, %10473
  br i1 %10474, label %10475, label %10481

; <label>:10475                                   ; preds = %10448
  %10476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10477 = extractvalue %dx.types.CBufRet.f32 %10476, 1
  %10478 = fadd fast float %10458, -1.000000e+00
  %10479 = fmul fast float %10477, %10478
  %10480 = fadd fast float %10479, 1.000000e+00
  br label %10481

; <label>:10481                                   ; preds = %10475, %10448
  %10482 = phi float [ %10480, %10475 ], [ %10458, %10448 ]
  %10483 = fadd fast float %10240, %10237
  %10484 = fmul fast float %10461, %10483
  %10485 = fadd fast float %10484, %10464
  %10486 = fadd fast float %10241, %10238
  %10487 = fmul fast float %10462, %10486
  %10488 = fadd fast float %10487, %10465
  %10489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10490 = extractvalue %dx.types.CBufRet.f32 %10489, 0
  br i1 %260, label %10491, label %10514

; <label>:10491                                   ; preds = %10481
  %10492 = fadd fast float %10485, %10488
  %10493 = fmul fast float %10490, %10492
  %10494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10495 = extractvalue %dx.types.CBufRet.f32 %10494, 3
  %10496 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %10497 = fsub fast float %8799, %8793
  %10498 = fadd fast float %10497, %8800
  %10499 = fsub fast float %10498, %10496
  %10500 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %10501 = fmul fast float %10499, %10500
  %10502 = call float @dx.op.unary.f32(i32 7, float %10501)  ; Saturate(value)
  %10503 = fsub fast float %10502, %10495
  %10504 = fmul fast float %10503, %10482
  %10505 = fadd fast float %10504, %10495
  %10506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10507 = extractvalue %dx.types.CBufRet.f32 %10506, 0
  %10508 = fsub fast float %10505, %10507
  %10509 = fmul fast float %10508, 1.000000e+01
  %10510 = call float @dx.op.unary.f32(i32 7, float %10509)  ; Saturate(value)
  %10511 = fmul fast float %10510, %8789
  %10512 = fadd fast float %10511, %8790
  %10513 = fmul fast float %10512, %10505
  br label %10538

; <label>:10514                                   ; preds = %10481
  %10515 = fadd fast float %10242, %10239
  %10516 = fmul fast float %10463, %10515
  %10517 = fadd fast float %10516, %10466
  %10518 = fmul fast float %10490, %10485
  %10519 = fmul fast float %10490, %10488
  %10520 = fmul fast float %10490, %10517
  %10521 = call float @dx.op.binary.f32(i32 35, float %10519, float %10520)  ; FMax(a,b)
  %10522 = call float @dx.op.binary.f32(i32 35, float %10518, float %10521)  ; FMax(a,b)
  %10523 = call float @dx.op.binary.f32(i32 35, float %10522, float %8790)  ; FMax(a,b)
  %10524 = fcmp fast ugt float %10523, 0x3F10000000000000
  br i1 %10524, label %10526, label %10525

; <label>:10525                                   ; preds = %10514
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10526

; <label>:10526                                   ; preds = %10525, %10514
  %10527 = add i32 %60, 356
  %10528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10527, i32 undef)  ; BufferLoad(srv,index,wot)
  %10529 = extractvalue %dx.types.ResRet.i32 %10528, 0
  %10530 = and i32 %10529, 32
  %10531 = icmp eq i32 %10530, 0
  br i1 %10531, label %10538, label %10532

; <label>:10532                                   ; preds = %10526
  %10533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10534 = extractvalue %dx.types.CBufRet.f32 %10533, 0
  %10535 = fmul fast float %10534, 0x3FE99999A0000000
  %10536 = fadd fast float %10534, %10518
  %10537 = fadd fast float %10535, %10520
  br label %10538

; <label>:10538                                   ; preds = %10532, %10526, %10491
  %10539 = phi float [ %10493, %10491 ], [ %10536, %10532 ], [ %10518, %10526 ]
  %10540 = phi float [ %10513, %10491 ], [ %10519, %10532 ], [ %10519, %10526 ]
  %10541 = phi float [ %10512, %10491 ], [ %10537, %10532 ], [ %10520, %10526 ]
  %10542 = phi float [ %10512, %10491 ], [ %8790, %10532 ], [ %8790, %10526 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10543 = call float @dx.op.binary.f32(i32 36, float %10539, float 3.225500e+04)  ; FMin(a,b)
  %10544 = call float @dx.op.binary.f32(i32 36, float %10540, float 3.225500e+04)  ; FMin(a,b)
  %10545 = call float @dx.op.binary.f32(i32 36, float %10541, float 3.225500e+04)  ; FMin(a,b)
  %10546 = call float @dx.op.binary.f32(i32 36, float %10542, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10543)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10544)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!73 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !99}
!75 = !{!76, !97, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 1, i8 0, !79}
!81 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 5, i8 0, !84}
!87 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!88 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 7, i8 0, !84}
!89 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 8, i8 0, !79}
!90 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 9, i8 0, !82}
!91 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 10, i8 0, !79}
!92 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 11, i8 0, !84}
!93 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 12, i8 0, !94}
!94 = !{i32 3, i32 1}
!95 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !78, i8 1, i32 1, i8 4, i32 13, i8 0, !94}
!96 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !110, i64 0}
!124 = distinct !{!124, !102}
!125 = distinct !{!125, !102}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
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
!137 = !{!138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!138 = distinct !{!138, !139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!139 = distinct !{!139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!140 = distinct !{!140, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!141 = distinct !{!141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!142 = distinct !{!142, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!152 = distinct !{!152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!161 = !{!157}
!162 = !{!158, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!171 = !{!167}
!172 = !{!168, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}

