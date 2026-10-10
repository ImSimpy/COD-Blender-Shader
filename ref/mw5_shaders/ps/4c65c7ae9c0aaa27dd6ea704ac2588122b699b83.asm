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
; shader hash: 5c6cb88cfbf3996f3d329169afd465c1
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
  %454 = add i32 %60, 472
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
  br i1 %510, label %1045, label %511

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
  %615 = add i32 %60, 424
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
  %667 = add i32 %60, 408
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
  %691 = add i32 %60, 360
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
  %714 = add i32 %60, 440
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
  %912 = add i32 %60, 376
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
  %996 = add i32 %60, 392
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
  %1032 = add i32 %60, 96
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = lshr i32 %1034, 8
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = fmul fast float %1039, %1040
  %1042 = fadd fast float %1041, %1036
  %1043 = fmul fast float %1042, 0x3F70101020000000
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  br label %1045

; <label>:1045                                    ; preds = %1028, %496
  %1046 = phi float [ 0.000000e+00, %496 ], [ %982, %1028 ]
  %1047 = phi float [ 0.000000e+00, %496 ], [ %983, %1028 ]
  %1048 = phi float [ 0.000000e+00, %496 ], [ %1029, %1028 ]
  %1049 = phi float [ 0.000000e+00, %496 ], [ %1030, %1028 ]
  %1050 = phi float [ 0.000000e+00, %496 ], [ %1031, %1028 ]
  %1051 = phi float [ 0.000000e+00, %496 ], [ %901, %1028 ]
  %1052 = phi float [ 0.000000e+00, %496 ], [ %902, %1028 ]
  %1053 = phi float [ 0.000000e+00, %496 ], [ %903, %1028 ]
  %1054 = phi float [ 0.000000e+00, %496 ], [ %887, %1028 ]
  %1055 = phi float [ 0.000000e+00, %496 ], [ %683, %1028 ]
  %1056 = phi float [ 0.000000e+00, %496 ], [ %981, %1028 ]
  %1057 = phi float [ 0.000000e+00, %496 ], [ %984, %1028 ]
  %1058 = phi float [ 0.000000e+00, %496 ], [ %1044, %1028 ]
  br i1 %444, label %1785, label %1059

; <label>:1059                                    ; preds = %1045
  %1060 = icmp ult i32 %502, 2
  %1061 = add i32 %60, 40
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %60, 44
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = or i32 %1066, %1063
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1785, label %1069

; <label>:1069                                    ; preds = %1059
  %1070 = and i32 %1063, 262144
  %1071 = icmp ne i32 %1070, 0
  %1072 = select i1 %1071, float %65, float 1.000000e+00
  %1073 = select i1 %1071, float %66, float 0.000000e+00
  %1074 = select i1 %1071, float %67, float 0.000000e+00
  %1075 = select i1 %1071, float %68, float 1.000000e+00
  %1076 = select i1 %1071, float %69, float %92
  %1077 = select i1 %1071, float %70, float %93
  %1078 = add i32 %60, 300
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1082, 0x3F50624DE0000000
  %1084 = add i32 %60, 104
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 16
  %1088 = and i32 %1087, 255
  %1089 = lshr i32 %1086, 24
  %1090 = add i32 %60, 308
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1092, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = add i32 %60, 48
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = lshr i32 %1099, 22
  %1101 = shl nuw nsw i32 %1100, 5
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = shl i32 %1099, 4
  %1104 = and i32 %1103, 32752
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = lshr i32 %1099, 7
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1111 = fmul fast float %1110, 1.000000e+03
  %1112 = fmul fast float %354, %1111
  %1113 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1114 = fadd fast float %1113, %344
  %1115 = fmul fast float %355, %1111
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = fadd fast float %1116, %346
  %1118 = fmul fast float %1083, %1111
  %1119 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1120 = fmul fast float %1119, 0x401921FB60000000
  %1121 = fadd fast float %1120, %1102
  %1122 = call float @dx.op.unary.f32(i32 13, float %1121)  ; Sin(value)
  %1123 = call float @dx.op.unary.f32(i32 12, float %1121)  ; Cos(value)
  %1124 = fsub fast float -0.000000e+00, %1122
  %1125 = fadd fast float %1076, -5.000000e-01
  %1126 = fadd fast float %1077, -5.000000e-01
  %1127 = fmul fast float %1094, %1125
  %1128 = fmul fast float %1096, %1126
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = fadd fast float %1128, 5.000000e-01
  %1131 = fmul fast float %1105, %1129
  %1132 = fmul fast float %1108, %1130
  %1133 = fmul fast float %1123, %1131
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %1132, float %1133)  ; FMad(a,b,c)
  %1135 = fmul fast float %1122, %1131
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %1132, float %1135)  ; FMad(a,b,c)
  %1137 = fadd fast float %1114, %1134
  %1138 = fadd fast float %1117, %1136
  %1139 = icmp ugt i32 %1088, 1
  %1140 = icmp ugt i32 %1086, 33554431
  %1141 = or i1 %1140, %1139
  br i1 %1141, label %1142, label %1167

; <label>:1142                                    ; preds = %1069
  %1143 = add i32 %60, 244
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = fmul fast float %1110, %1147
  %1149 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1150 = mul nuw nsw i32 %1088, %1089
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1149, %1151
  %1153 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1154 = fptoui float %1153 to i32
  %1155 = urem i32 %1154, %1088
  %1156 = udiv i32 %1154, %1089
  %1157 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1158 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1159 = uitofp i32 %1155 to float
  %1160 = uitofp i32 %1156 to float
  %1161 = fadd fast float %1157, %1159
  %1162 = fadd fast float %1158, %1160
  %1163 = uitofp i32 %1088 to float
  %1164 = uitofp i32 %1089 to float
  %1165 = fdiv fast float %1161, %1163
  %1166 = fdiv fast float %1162, %1164
  br label %1167

; <label>:1167                                    ; preds = %1142, %1069
  %1168 = phi float [ %1165, %1142 ], [ %1137, %1069 ]
  %1169 = phi float [ %1166, %1142 ], [ %1138, %1069 ]
  %1170 = and i32 %1063, 256
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1218, label %1172

; <label>:1172                                    ; preds = %1167
  %1173 = add i32 %60, 428
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = add i32 %60, 116
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = shl i32 %1182, 4
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1182, 7
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fsub fast float 1.000000e+00, %499
  %1190 = call float @dx.op.binary.f32(i32 35, float %1189, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1191 = bitcast float %499 to i32
  %1192 = sitofp i32 %1191 to float
  %1193 = fadd fast float %1192, 0xC1CFBF8940000000
  %1194 = fmul fast float %1188, %1193
  %1195 = fadd fast float %1194, 0x41CFBF8940000000
  %1196 = fptosi float %1195 to i32
  %1197 = bitcast i32 %1196 to float
  %1198 = bitcast float %1190 to i32
  %1199 = sitofp i32 %1198 to float
  %1200 = fadd fast float %1199, 0xC1CFBF8940000000
  %1201 = fmul fast float %1200, %1188
  %1202 = fadd fast float %1201, 0x41CFBF8940000000
  %1203 = fptosi float %1202 to i32
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1197, %1185
  %1206 = fmul fast float %1204, %1185
  %1207 = fsub fast float %1190, %1205
  %1208 = fadd fast float %1206, %1190
  %1209 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1210 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1211 = fsub fast float %1179, %1209
  %1212 = fsub fast float %1210, %1209
  %1213 = bitcast float %1212 to i32
  %1214 = sub nsw i32 2129859010, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1215, %1211
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  br label %1218

; <label>:1218                                    ; preds = %1172, %1167
  %1219 = phi float [ %1217, %1172 ], [ %499, %1167 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 128
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1240, label %1224

; <label>:1224                                    ; preds = %1218
  %1225 = add i32 %60, 412
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = add i32 %1227, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1229, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 524288
  %1235 = icmp ne i32 %1234, 0
  %1236 = fcmp fast ogt float %1231, 0x3FE0101020000000
  %1237 = select i1 %1236, float 1.000000e+00, float 0.000000e+00
  %1238 = select i1 %1235, float %1237, float %1231
  %1239 = fmul fast float %1238, %1219
  br label %1240

; <label>:1240                                    ; preds = %1224, %1218
  %1241 = phi float [ %1239, %1224 ], [ %1219, %1218 ]
  %1242 = fcmp fast ult float %1241, 0x3F70101020000000
  br i1 %1242, label %1785, label %1243

; <label>:1243                                    ; preds = %1240
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 16
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1446, label %1248

; <label>:1248                                    ; preds = %1243
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = add i32 %60, 364
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = and i32 %1250, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = lshr i32 %1250, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1260, %1262
  %1267 = fadd fast float %1266, %1265
  %1268 = fmul fast float %1267, 0x3F70101000000000
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 512
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1281, label %1273

; <label>:1273                                    ; preds = %1248
  %1274 = add i32 %60, 444
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = add i32 %1276, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1278, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  br label %1281

; <label>:1281                                    ; preds = %1273, %1248
  %1282 = phi float [ %1280, %1273 ], [ 1.000000e+00, %1248 ]
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 33554432
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1393, label %1287

; <label>:1287                                    ; preds = %1281
  %1288 = add i32 %60, 240
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1290, 16
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = add i32 %60, 244
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = lshr i32 %1301, 24
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = and i32 %1301, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1301, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = lshr i32 %1301, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = add i32 %60, 236
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = lshr i32 %1318, 24
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = and i32 %1318, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1318, 8
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1318, 16
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = bitcast float %1257 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1257, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1257
  %1342 = fmul fast float %1341, %1340
  %1343 = bitcast float %1258 to i32
  %1344 = ashr i32 %1343, 1
  %1345 = sub nsw i32 1597463174, %1344
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1258, 5.000000e-01
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1348, %1347
  %1350 = fsub fast float 1.500000e+00, %1349
  %1351 = fmul fast float %1346, %1258
  %1352 = fmul fast float %1351, %1350
  %1353 = bitcast float %1259 to i32
  %1354 = ashr i32 %1353, 1
  %1355 = sub nsw i32 1597463174, %1354
  %1356 = bitcast i32 %1355 to float
  %1357 = fmul fast float %1259, 5.000000e-01
  %1358 = fmul fast float %1356, %1356
  %1359 = fmul fast float %1358, %1357
  %1360 = fsub fast float 1.500000e+00, %1359
  %1361 = fmul fast float %1356, %1259
  %1362 = fmul fast float %1361, %1360
  %1363 = fsub fast float %1342, %1324
  %1364 = fsub fast float %1352, %1328
  %1365 = fsub fast float %1362, %1332
  %1366 = fmul fast float %1363, %1292
  %1367 = fmul fast float %1364, %1294
  %1368 = fmul fast float %1365, %1299
  %1369 = fadd fast float %1366, %1307
  %1370 = fadd fast float %1367, %1311
  %1371 = fadd fast float %1368, %1315
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1375 = fmul fast float %1372, %1372
  %1376 = fmul fast float %1373, %1373
  %1377 = fmul fast float %1374, %1374
  %1378 = fsub fast float %1375, %1257
  %1379 = fsub fast float %1376, %1258
  %1380 = fsub fast float %1377, %1259
  %1381 = fmul fast float %1378, %1282
  %1382 = fmul fast float %1379, %1282
  %1383 = fmul fast float %1380, %1282
  %1384 = fadd fast float %1381, %1257
  %1385 = fadd fast float %1382, %1258
  %1386 = fadd fast float %1383, %1259
  %1387 = fadd fast float %1304, %1268
  %1388 = fsub fast float %1387, %1321
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fsub fast float %1389, %1268
  %1391 = fmul fast float %1390, %1282
  %1392 = fadd fast float %1391, %1268
  br label %1446

; <label>:1393                                    ; preds = %1281
  %1394 = and i32 %1284, 134217728
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1430, label %1396

; <label>:1396                                    ; preds = %1393
  %1397 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1398 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1399 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1400 = fadd fast float %1397, -5.000000e-01
  %1401 = fadd fast float %1398, -5.000000e-01
  %1402 = fadd fast float %1399, -5.000000e-01
  %1403 = fmul fast float %1400, %1282
  %1404 = fmul fast float %1401, %1282
  %1405 = fmul fast float %1402, %1282
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = fadd fast float %1405, 5.000000e-01
  %1409 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1410 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1411 = call float @dx.op.unary.f32(i32 24, float %1259)  ; Sqrt(value)
  %1412 = fmul fast float %1406, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1409
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1409
  %1417 = fmul fast float %1407, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1410
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1410
  %1422 = fmul fast float %1408, 2.000000e+00
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = fmul fast float %1423, %1411
  %1425 = fadd fast float %1424, %1422
  %1426 = fmul fast float %1425, %1411
  %1427 = fmul fast float %1416, %1416
  %1428 = fmul fast float %1421, %1421
  %1429 = fmul fast float %1426, %1426
  br label %1446

; <label>:1430                                    ; preds = %1393
  %1431 = fmul fast float %331, %331
  %1432 = fmul fast float %335, %335
  %1433 = fmul fast float %339, %339
  %1434 = fadd fast float %1431, -1.000000e+00
  %1435 = fadd fast float %1432, -1.000000e+00
  %1436 = fadd fast float %1433, -1.000000e+00
  %1437 = fmul fast float %1282, %1434
  %1438 = fmul fast float %1282, %1435
  %1439 = fmul fast float %1282, %1436
  %1440 = fadd fast float %1437, 1.000000e+00
  %1441 = fadd fast float %1438, 1.000000e+00
  %1442 = fadd fast float %1439, 1.000000e+00
  %1443 = fmul fast float %1440, %1257
  %1444 = fmul fast float %1441, %1258
  %1445 = fmul fast float %1442, %1259
  br label %1446

; <label>:1446                                    ; preds = %1430, %1396, %1287, %1243
  %1447 = phi float [ %1392, %1287 ], [ %1268, %1396 ], [ %1268, %1430 ], [ 0x3FA23C0BE0000000, %1243 ]
  %1448 = phi float [ %1384, %1287 ], [ %1427, %1396 ], [ %1443, %1430 ], [ 1.000000e+00, %1243 ]
  %1449 = phi float [ %1385, %1287 ], [ %1428, %1396 ], [ %1444, %1430 ], [ 1.000000e+00, %1243 ]
  %1450 = phi float [ %1386, %1287 ], [ %1429, %1396 ], [ %1445, %1430 ], [ 1.000000e+00, %1243 ]
  %1451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.i32 %1451, 1
  %1453 = and i32 %1452, 1
  %1454 = icmp ne i32 %1453, 0
  %1455 = add i32 %60, 356
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp ne i32 %1458, 0
  %1460 = and i1 %1454, %1459
  %1461 = select i1 %1460, float 1.000000e+00, float %1448
  %1462 = select i1 %1460, float 0x3FD3333340000000, float %1449
  %1463 = select i1 %1460, float 0x3FD3333340000000, float %1450
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 32
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1540, label %1468

; <label>:1468                                    ; preds = %1446
  %1469 = add i32 %60, 108
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %60, 380
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.ResRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.ResRet.f32 %1477, 3
  %1482 = and i32 %1471, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1471, 8
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = lshr i32 %1471, 16
  %1488 = and i32 %1487, 255
  %1489 = uitofp i32 %1488 to float
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = fmul fast float %1478, %1483
  %1492 = fadd fast float %1491, %1486
  %1493 = fmul fast float %1492, 0x3F70101000000000
  %1494 = fadd fast float %1479, -5.000000e-01
  %1495 = fadd fast float %1481, -5.000000e-01
  %1496 = fmul fast float %1494, %1490
  %1497 = fmul fast float %1495, %1490
  %1498 = fadd fast float %1496, 5.000000e-01
  %1499 = fadd fast float %1497, 5.000000e-01
  %1500 = fmul fast float %1498, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fmul fast float %1499, 2.000000e+00
  %1503 = fadd fast float %1502, -1.000000e+00
  %1504 = fadd fast float %1501, %1503
  %1505 = fmul fast float %1504, 5.000000e-01
  %1506 = fsub fast float %1501, %1503
  %1507 = fmul fast float %1506, 5.000000e-01
  %1508 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = call float @dx.op.unary.f32(i32 6, float %1507)  ; FAbs(value)
  %1511 = fsub fast float %1509, %1510
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1505, float %1507, float %1511, float %1505, float %1507, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call float @dx.op.unary.f32(i32 25, float %1512)  ; Rsqrt(value)
  %1514 = fmul fast float %1505, %1513
  %1515 = fmul fast float %1507, %1513
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 67108864
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1536, label %1520

; <label>:1520                                    ; preds = %1468
  %1521 = add i32 %60, 296
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 65535
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 65535
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = lshr i32 %1523, 16
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = fsub fast float %1493, %1531
  %1533 = fmul fast float %1532, %1525
  %1534 = fadd fast float %1533, %1529
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  br label %1536

; <label>:1536                                    ; preds = %1520, %1468
  %1537 = phi float [ %1535, %1520 ], [ %1493, %1468 ]
  %1538 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1515, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1539 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1515, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  br label %1540

; <label>:1540                                    ; preds = %1536, %1446
  %1541 = phi float [ %1537, %1536 ], [ 0x3FD6666660000000, %1446 ]
  %1542 = phi float [ %1538, %1536 ], [ 0.000000e+00, %1446 ]
  %1543 = phi float [ %1539, %1536 ], [ 0.000000e+00, %1446 ]
  %1544 = phi float [ %1480, %1536 ], [ 1.000000e+00, %1446 ]
  %1545 = add i32 %60, 176
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = lshr i32 %1547, 22
  %1549 = shl nuw nsw i32 %1548, 5
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 64
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1588, label %1555

; <label>:1555                                    ; preds = %1540
  %1556 = add i32 %60, 396
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 131072
  %1564 = icmp eq i32 %1563, 0
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = fmul fast float %1566, %319
  %1570 = fmul fast float %1567, %322
  %1571 = fmul fast float %1568, %325
  br i1 %1564, label %1578, label %1572

; <label>:1572                                    ; preds = %1555
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = fmul fast float %1574, %1569
  %1576 = fmul fast float %1574, %1570
  %1577 = fmul fast float %1574, %1571
  br label %1578

; <label>:1578                                    ; preds = %1572, %1555
  %1579 = phi float [ %1575, %1572 ], [ %1569, %1555 ]
  %1580 = phi float [ %1576, %1572 ], [ %1570, %1555 ]
  %1581 = phi float [ %1577, %1572 ], [ %1571, %1555 ]
  %1582 = fmul fast float %1579, %1550
  %1583 = select i1 %260, float %1582, float %1579
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1580, float %1581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %260, float 0.000000e+00, float %1579
  %1586 = select i1 %260, float %1584, float %1580
  %1587 = select i1 %260, float 0.000000e+00, float %1581
  br label %1588

; <label>:1588                                    ; preds = %1578, %1540
  %1589 = phi float [ %1585, %1578 ], [ 0.000000e+00, %1540 ]
  %1590 = phi float [ %1586, %1578 ], [ 0.000000e+00, %1540 ]
  %1591 = phi float [ %1587, %1578 ], [ 0.000000e+00, %1540 ]
  %1592 = add i32 %60, 112
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = lshr i32 %1594, 8
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = fmul fast float %1599, %1600
  %1602 = fadd fast float %1601, %1596
  %1603 = fmul fast float %1602, 0x3F70101020000000
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  br i1 %1060, label %1605, label %1613

; <label>:1605                                    ; preds = %1588
  %1606 = fsub fast float 1.000000e+00, %1241
  %1607 = fmul fast float %1606, %1051
  %1608 = fmul fast float %1606, %1052
  %1609 = fmul fast float %1606, %1053
  %1610 = fmul fast float %1606, %1048
  %1611 = fmul fast float %1606, %1049
  %1612 = fmul fast float %1606, %1050
  br label %1613

; <label>:1613                                    ; preds = %1605, %1588
  %1614 = phi float [ %1610, %1605 ], [ %1048, %1588 ]
  %1615 = phi float [ %1611, %1605 ], [ %1049, %1588 ]
  %1616 = phi float [ %1612, %1605 ], [ %1050, %1588 ]
  %1617 = phi float [ %1607, %1605 ], [ %1051, %1588 ]
  %1618 = phi float [ %1608, %1605 ], [ %1052, %1588 ]
  %1619 = phi float [ %1609, %1605 ], [ %1053, %1588 ]
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 3
  %1623 = icmp eq i32 %1622, 3
  br i1 %1623, label %1702, label %1624

; <label>:1624                                    ; preds = %1613
  %1625 = and i32 %1621, 16
  %1626 = icmp ne i32 %1625, 0
  %1627 = select i1 %1626, float %1241, float 0.000000e+00
  %1628 = icmp eq i32 %1622, 0
  br i1 %1628, label %1629, label %1657

; <label>:1629                                    ; preds = %1624
  %1630 = and i32 %1621, 64
  %1631 = icmp ne i32 %1630, 0
  %1632 = select i1 %1631, float %1241, float 0.000000e+00
  %1633 = fsub fast float %1461, %1617
  %1634 = fsub fast float %1462, %1618
  %1635 = fsub fast float %1463, %1619
  %1636 = fmul fast float %1627, %1633
  %1637 = fmul fast float %1627, %1634
  %1638 = fmul fast float %1627, %1635
  %1639 = fadd fast float %1636, %1617
  %1640 = fadd fast float %1637, %1618
  %1641 = fadd fast float %1638, %1619
  %1642 = fsub fast float %1447, %1054
  %1643 = fmul fast float %1627, %1642
  %1644 = fadd fast float %1643, %1054
  %1645 = fsub fast float %1589, %1614
  %1646 = fsub fast float %1590, %1615
  %1647 = fsub fast float %1591, %1616
  %1648 = fmul fast float %1632, %1645
  %1649 = fmul fast float %1632, %1646
  %1650 = fmul fast float %1632, %1647
  %1651 = fadd fast float %1648, %1614
  %1652 = fadd fast float %1649, %1615
  %1653 = fadd fast float %1650, %1616
  %1654 = fsub fast float %1604, %1058
  %1655 = fmul fast float %1627, %1654
  %1656 = fadd fast float %1655, %1058
  br label %1702

; <label>:1657                                    ; preds = %1624
  %1658 = icmp eq i32 %1622, 1
  br i1 %1658, label %1659, label %1672

; <label>:1659                                    ; preds = %1657
  %1660 = fadd fast float %1461, -1.000000e+00
  %1661 = fadd fast float %1462, -1.000000e+00
  %1662 = fadd fast float %1463, -1.000000e+00
  %1663 = fmul fast float %1627, %1660
  %1664 = fmul fast float %1627, %1661
  %1665 = fmul fast float %1627, %1662
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fadd fast float %1665, 1.000000e+00
  %1669 = fmul fast float %1666, %1617
  %1670 = fmul fast float %1667, %1618
  %1671 = fmul fast float %1668, %1619
  br label %1702

; <label>:1672                                    ; preds = %1657
  %1673 = icmp eq i32 %1622, 2
  br i1 %1673, label %1674, label %1702

; <label>:1674                                    ; preds = %1672
  %1675 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %1463)  ; Sqrt(value)
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1678, %1627
  %1682 = fmul fast float %1679, %1627
  %1683 = fmul fast float %1680, %1627
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fmul fast float %1684, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1617
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1617
  %1692 = fmul fast float %1685, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1618
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1618
  %1697 = fmul fast float %1686, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1619
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1619
  br label %1702

; <label>:1702                                    ; preds = %1674, %1672, %1659, %1629, %1613
  %1703 = phi float [ %1614, %1613 ], [ %1614, %1674 ], [ %1614, %1672 ], [ %1614, %1659 ], [ %1651, %1629 ]
  %1704 = phi float [ %1615, %1613 ], [ %1615, %1674 ], [ %1615, %1672 ], [ %1615, %1659 ], [ %1652, %1629 ]
  %1705 = phi float [ %1616, %1613 ], [ %1616, %1674 ], [ %1616, %1672 ], [ %1616, %1659 ], [ %1653, %1629 ]
  %1706 = phi float [ %1617, %1613 ], [ %1691, %1674 ], [ %1617, %1672 ], [ %1669, %1659 ], [ %1639, %1629 ]
  %1707 = phi float [ %1618, %1613 ], [ %1696, %1674 ], [ %1618, %1672 ], [ %1670, %1659 ], [ %1640, %1629 ]
  %1708 = phi float [ %1619, %1613 ], [ %1701, %1674 ], [ %1619, %1672 ], [ %1671, %1659 ], [ %1641, %1629 ]
  %1709 = phi float [ %1054, %1613 ], [ %1054, %1674 ], [ %1054, %1672 ], [ %1054, %1659 ], [ %1644, %1629 ]
  %1710 = phi float [ %1058, %1613 ], [ %1058, %1674 ], [ %1058, %1672 ], [ %1058, %1659 ], [ %1656, %1629 ]
  %1711 = and i32 %1621, 12
  %1712 = icmp eq i32 %1711, 12
  br i1 %1712, label %1785, label %1713

; <label>:1713                                    ; preds = %1702
  %1714 = and i32 %1621, 2097184
  %1715 = icmp eq i32 %1714, 2097184
  %1716 = select i1 %1715, float %1241, float 0.000000e+00
  %1717 = and i32 %1621, 4194336
  %1718 = icmp eq i32 %1717, 4194336
  %1719 = select i1 %1718, float %1241, float 0.000000e+00
  %1720 = and i32 %1621, 8388640
  %1721 = icmp eq i32 %1720, 8388640
  %1722 = select i1 %1721, float %1241, float 0.000000e+00
  %1723 = icmp eq i32 %1711, 0
  br i1 %1723, label %1724, label %1737

; <label>:1724                                    ; preds = %1713
  %1725 = fsub fast float %1542, %1046
  %1726 = fsub fast float %1543, %1047
  %1727 = fmul fast float %1716, %1725
  %1728 = fmul fast float %1716, %1726
  %1729 = fadd fast float %1727, %1046
  %1730 = fadd fast float %1728, %1047
  %1731 = fsub fast float %1544, %1057
  %1732 = fmul fast float %1719, %1731
  %1733 = fadd fast float %1732, %1057
  %1734 = fsub fast float %1541, %1056
  %1735 = fmul fast float %1722, %1734
  %1736 = fadd fast float %1735, %1056
  br label %1785

; <label>:1737                                    ; preds = %1713
  %1738 = icmp eq i32 %1711, 4
  br i1 %1738, label %1739, label %1771

; <label>:1739                                    ; preds = %1737
  %1740 = fmul fast float %1716, %1542
  %1741 = fmul fast float %1716, %1543
  %1742 = fadd fast float %1740, %1046
  %1743 = fadd fast float %1741, %1047
  %1744 = call float @dx.op.binary.f32(i32 36, float %1057, float %1544)  ; FMin(a,b)
  %1745 = fsub fast float %1744, %1057
  %1746 = fmul fast float %1745, %1719
  %1747 = fadd fast float %1746, %1057
  %1748 = fadd fast float %1541, %1056
  %1749 = fmul fast float %1748, 0x3FF337FAE0000000
  %1750 = fmul fast float %1056, %1056
  %1751 = fmul fast float %1541, %1541
  %1752 = fadd fast float %1751, %1750
  %1753 = fmul fast float %1752, 0x3FE5152B00000000
  %1754 = fmul fast float %1056, 0xBFCC1F85E0000000
  %1755 = fmul fast float %1754, %1541
  %1756 = fadd fast float %1755, 0xBFE1363700000000
  %1757 = fadd fast float %1756, %1749
  %1758 = fsub fast float %1757, %1753
  %1759 = fmul fast float %1748, 0x3FBA6F0D00000000
  %1760 = fmul fast float %1752, 0x3FD0432880000000
  %1761 = fmul fast float %1056, 0xBFEF110800000000
  %1762 = fmul fast float %1761, %1541
  %1763 = fadd fast float %1762, 1.000000e+00
  %1764 = fsub fast float %1763, %1759
  %1765 = fadd fast float %1764, %1760
  %1766 = fdiv fast float %1758, %1765
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = fsub fast float %1767, %1056
  %1769 = fmul fast float %1768, %1722
  %1770 = fadd fast float %1769, %1056
  br label %1785

; <label>:1771                                    ; preds = %1737
  %1772 = icmp eq i32 %1711, 8
  br i1 %1772, label %1773, label %1785

; <label>:1773                                    ; preds = %1771
  %1774 = fmul fast float %1716, %1542
  %1775 = fmul fast float %1716, %1543
  %1776 = fadd fast float %1774, %1046
  %1777 = fadd fast float %1775, %1047
  %1778 = call float @dx.op.binary.f32(i32 36, float %1057, float %1544)  ; FMin(a,b)
  %1779 = fsub fast float %1778, %1057
  %1780 = fmul fast float %1779, %1719
  %1781 = fadd fast float %1780, %1057
  %1782 = fsub fast float %1541, %1056
  %1783 = fmul fast float %1722, %1782
  %1784 = fadd fast float %1783, %1056
  br label %1785

; <label>:1785                                    ; preds = %1773, %1771, %1739, %1724, %1702, %1240, %1059, %1045
  %1786 = phi float [ %1046, %1702 ], [ %1046, %1240 ], [ %1046, %1045 ], [ %1776, %1773 ], [ %1046, %1771 ], [ %1742, %1739 ], [ %1729, %1724 ], [ %1046, %1059 ]
  %1787 = phi float [ %1047, %1702 ], [ %1047, %1240 ], [ %1047, %1045 ], [ %1777, %1773 ], [ %1047, %1771 ], [ %1743, %1739 ], [ %1730, %1724 ], [ %1047, %1059 ]
  %1788 = phi float [ %1703, %1702 ], [ %1048, %1240 ], [ %1048, %1045 ], [ %1703, %1773 ], [ %1703, %1771 ], [ %1703, %1739 ], [ %1703, %1724 ], [ %1048, %1059 ]
  %1789 = phi float [ %1704, %1702 ], [ %1049, %1240 ], [ %1049, %1045 ], [ %1704, %1773 ], [ %1704, %1771 ], [ %1704, %1739 ], [ %1704, %1724 ], [ %1049, %1059 ]
  %1790 = phi float [ %1705, %1702 ], [ %1050, %1240 ], [ %1050, %1045 ], [ %1705, %1773 ], [ %1705, %1771 ], [ %1705, %1739 ], [ %1705, %1724 ], [ %1050, %1059 ]
  %1791 = phi float [ %1706, %1702 ], [ %1051, %1240 ], [ %1051, %1045 ], [ %1706, %1773 ], [ %1706, %1771 ], [ %1706, %1739 ], [ %1706, %1724 ], [ %1051, %1059 ]
  %1792 = phi float [ %1707, %1702 ], [ %1052, %1240 ], [ %1052, %1045 ], [ %1707, %1773 ], [ %1707, %1771 ], [ %1707, %1739 ], [ %1707, %1724 ], [ %1052, %1059 ]
  %1793 = phi float [ %1708, %1702 ], [ %1053, %1240 ], [ %1053, %1045 ], [ %1708, %1773 ], [ %1708, %1771 ], [ %1708, %1739 ], [ %1708, %1724 ], [ %1053, %1059 ]
  %1794 = phi float [ %1709, %1702 ], [ %1054, %1240 ], [ %1054, %1045 ], [ %1709, %1773 ], [ %1709, %1771 ], [ %1709, %1739 ], [ %1709, %1724 ], [ %1054, %1059 ]
  %1795 = phi float [ %1056, %1702 ], [ %1056, %1240 ], [ %1056, %1045 ], [ %1784, %1773 ], [ %1056, %1771 ], [ %1770, %1739 ], [ %1736, %1724 ], [ %1056, %1059 ]
  %1796 = phi float [ %1057, %1702 ], [ %1057, %1240 ], [ %1057, %1045 ], [ %1781, %1773 ], [ %1057, %1771 ], [ %1747, %1739 ], [ %1733, %1724 ], [ %1057, %1059 ]
  %1797 = phi float [ %1710, %1702 ], [ %1058, %1240 ], [ %1058, %1045 ], [ %1710, %1773 ], [ %1710, %1771 ], [ %1710, %1739 ], [ %1710, %1724 ], [ %1058, %1059 ]
  br i1 %446, label %2524, label %1798

; <label>:1798                                    ; preds = %1785
  %1799 = icmp ult i32 %502, 3
  %1800 = add i32 %60, 56
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = add i32 %60, 60
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = or i32 %1805, %1802
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %2524, label %1808

; <label>:1808                                    ; preds = %1798
  %1809 = and i32 %1802, 262144
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %65, float 1.000000e+00
  %1812 = select i1 %1810, float %66, float 0.000000e+00
  %1813 = select i1 %1810, float %67, float 0.000000e+00
  %1814 = select i1 %1810, float %68, float 1.000000e+00
  %1815 = select i1 %1810, float %69, float %92
  %1816 = select i1 %1810, float %70, float %93
  %1817 = add i32 %60, 316
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = lshr i32 %1819, 16
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = fmul fast float %1821, 0x3F50624DE0000000
  %1823 = add i32 %60, 120
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 16
  %1827 = and i32 %1826, 255
  %1828 = lshr i32 %1825, 24
  %1829 = add i32 %60, 324
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 65535
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = lshr i32 %1831, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = add i32 %60, 64
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = lshr i32 %1838, 22
  %1840 = shl nuw nsw i32 %1839, 5
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = shl i32 %1838, 4
  %1843 = and i32 %1842, 32752
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = lshr i32 %1838, 7
  %1846 = and i32 %1845, 32752
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = fmul fast float %1849, 1.000000e+03
  %1851 = fmul fast float %396, %1850
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = fadd fast float %1852, %386
  %1854 = fmul fast float %397, %1850
  %1855 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1856 = fadd fast float %1855, %388
  %1857 = fmul fast float %1822, %1850
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = fmul fast float %1858, 0x401921FB60000000
  %1860 = fadd fast float %1859, %1841
  %1861 = call float @dx.op.unary.f32(i32 13, float %1860)  ; Sin(value)
  %1862 = call float @dx.op.unary.f32(i32 12, float %1860)  ; Cos(value)
  %1863 = fsub fast float -0.000000e+00, %1861
  %1864 = fadd fast float %1815, -5.000000e-01
  %1865 = fadd fast float %1816, -5.000000e-01
  %1866 = fmul fast float %1833, %1864
  %1867 = fmul fast float %1835, %1865
  %1868 = fadd fast float %1866, 5.000000e-01
  %1869 = fadd fast float %1867, 5.000000e-01
  %1870 = fmul fast float %1844, %1868
  %1871 = fmul fast float %1847, %1869
  %1872 = fmul fast float %1862, %1870
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1871, float %1872)  ; FMad(a,b,c)
  %1874 = fmul fast float %1861, %1870
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1871, float %1874)  ; FMad(a,b,c)
  %1876 = fadd fast float %1853, %1873
  %1877 = fadd fast float %1856, %1875
  %1878 = icmp ugt i32 %1827, 1
  %1879 = icmp ugt i32 %1825, 33554431
  %1880 = or i1 %1879, %1878
  br i1 %1880, label %1881, label %1906

; <label>:1881                                    ; preds = %1808
  %1882 = add i32 %60, 260
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = lshr i32 %1884, 16
  %1886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1885)  ; LegacyF16ToF32(value)
  %1887 = fmul fast float %1849, %1886
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = mul nuw nsw i32 %1827, %1828
  %1890 = uitofp i32 %1889 to float
  %1891 = fmul fast float %1888, %1890
  %1892 = call float @dx.op.unary.f32(i32 27, float %1891)  ; Round_ni(value)
  %1893 = fptoui float %1892 to i32
  %1894 = urem i32 %1893, %1827
  %1895 = udiv i32 %1893, %1828
  %1896 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1897 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1898 = uitofp i32 %1894 to float
  %1899 = uitofp i32 %1895 to float
  %1900 = fadd fast float %1896, %1898
  %1901 = fadd fast float %1897, %1899
  %1902 = uitofp i32 %1827 to float
  %1903 = uitofp i32 %1828 to float
  %1904 = fdiv fast float %1900, %1902
  %1905 = fdiv fast float %1901, %1903
  br label %1906

; <label>:1906                                    ; preds = %1881, %1808
  %1907 = phi float [ %1904, %1881 ], [ %1876, %1808 ]
  %1908 = phi float [ %1905, %1881 ], [ %1877, %1808 ]
  %1909 = and i32 %1802, 256
  %1910 = icmp eq i32 %1909, 0
  br i1 %1910, label %1957, label %1911

; <label>:1911                                    ; preds = %1906
  %1912 = add i32 %60, 432
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %1914, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1916, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = add i32 %60, 132
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = shl i32 %1921, 4
  %1923 = and i32 %1922, 32752
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = lshr i32 %1921, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = fsub fast float 1.000000e+00, %498
  %1929 = call float @dx.op.binary.f32(i32 35, float %1928, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1930 = bitcast float %498 to i32
  %1931 = sitofp i32 %1930 to float
  %1932 = fadd fast float %1931, 0xC1CFBF8940000000
  %1933 = fmul fast float %1927, %1932
  %1934 = fadd fast float %1933, 0x41CFBF8940000000
  %1935 = fptosi float %1934 to i32
  %1936 = bitcast i32 %1935 to float
  %1937 = bitcast float %1929 to i32
  %1938 = sitofp i32 %1937 to float
  %1939 = fadd fast float %1938, 0xC1CFBF8940000000
  %1940 = fmul fast float %1939, %1927
  %1941 = fadd fast float %1940, 0x41CFBF8940000000
  %1942 = fptosi float %1941 to i32
  %1943 = bitcast i32 %1942 to float
  %1944 = fmul fast float %1936, %1924
  %1945 = fmul fast float %1943, %1924
  %1946 = fsub fast float %1929, %1944
  %1947 = fadd fast float %1945, %1929
  %1948 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1949 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1950 = fsub fast float %1918, %1948
  %1951 = fsub fast float %1949, %1948
  %1952 = bitcast float %1951 to i32
  %1953 = sub nsw i32 2129859010, %1952
  %1954 = bitcast i32 %1953 to float
  %1955 = fmul fast float %1954, %1950
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  br label %1957

; <label>:1957                                    ; preds = %1911, %1906
  %1958 = phi float [ %1956, %1911 ], [ %498, %1906 ]
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 128
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %1979, label %1963

; <label>:1963                                    ; preds = %1957
  %1964 = add i32 %60, 416
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %1966, 0
  %1968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1968, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 524288
  %1974 = icmp ne i32 %1973, 0
  %1975 = fcmp fast ogt float %1970, 0x3FE0101020000000
  %1976 = select i1 %1975, float 1.000000e+00, float 0.000000e+00
  %1977 = select i1 %1974, float %1976, float %1970
  %1978 = fmul fast float %1977, %1958
  br label %1979

; <label>:1979                                    ; preds = %1963, %1957
  %1980 = phi float [ %1978, %1963 ], [ %1958, %1957 ]
  %1981 = fcmp fast ult float %1980, 0x3F70101020000000
  br i1 %1981, label %2524, label %1982

; <label>:1982                                    ; preds = %1979
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 16
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2185, label %1987

; <label>:1987                                    ; preds = %1982
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %60, 368
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %1992, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1994, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.ResRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.ResRet.f32 %1995, 2
  %1999 = extractvalue %dx.types.ResRet.f32 %1995, 3
  %2000 = and i32 %1989, 255
  %2001 = uitofp i32 %2000 to float
  %2002 = lshr i32 %1989, 8
  %2003 = and i32 %2002, 255
  %2004 = uitofp i32 %2003 to float
  %2005 = fmul fast float %1999, %2001
  %2006 = fadd fast float %2005, %2004
  %2007 = fmul fast float %2006, 0x3F70101000000000
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 512
  %2011 = icmp eq i32 %2010, 0
  br i1 %2011, label %2020, label %2012

; <label>:2012                                    ; preds = %1987
  %2013 = add i32 %60, 448
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = add i32 %2015, 0
  %2017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2017, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  br label %2020

; <label>:2020                                    ; preds = %2012, %1987
  %2021 = phi float [ %2019, %2012 ], [ 1.000000e+00, %1987 ]
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 33554432
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2132, label %2026

; <label>:2026                                    ; preds = %2020
  %2027 = add i32 %60, 256
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2029, 16
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = add i32 %60, 260
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = lshr i32 %2040, 24
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %2042, 0x3F70101020000000
  %2044 = and i32 %2040, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = fmul fast float %2045, 0x3F70101020000000
  %2047 = lshr i32 %2040, 8
  %2048 = and i32 %2047, 255
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = lshr i32 %2040, 16
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = add i32 %60, 252
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 24
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = and i32 %2057, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = lshr i32 %2057, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = lshr i32 %2057, 16
  %2069 = and i32 %2068, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = bitcast float %1996 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1996, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1996
  %2081 = fmul fast float %2080, %2079
  %2082 = bitcast float %1997 to i32
  %2083 = ashr i32 %2082, 1
  %2084 = sub nsw i32 1597463174, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %1997, 5.000000e-01
  %2087 = fmul fast float %2085, %2085
  %2088 = fmul fast float %2087, %2086
  %2089 = fsub fast float 1.500000e+00, %2088
  %2090 = fmul fast float %2085, %1997
  %2091 = fmul fast float %2090, %2089
  %2092 = bitcast float %1998 to i32
  %2093 = ashr i32 %2092, 1
  %2094 = sub nsw i32 1597463174, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %1998, 5.000000e-01
  %2097 = fmul fast float %2095, %2095
  %2098 = fmul fast float %2097, %2096
  %2099 = fsub fast float 1.500000e+00, %2098
  %2100 = fmul fast float %2095, %1998
  %2101 = fmul fast float %2100, %2099
  %2102 = fsub fast float %2081, %2063
  %2103 = fsub fast float %2091, %2067
  %2104 = fsub fast float %2101, %2071
  %2105 = fmul fast float %2102, %2031
  %2106 = fmul fast float %2103, %2033
  %2107 = fmul fast float %2104, %2038
  %2108 = fadd fast float %2105, %2046
  %2109 = fadd fast float %2106, %2050
  %2110 = fadd fast float %2107, %2054
  %2111 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2113 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2114 = fmul fast float %2111, %2111
  %2115 = fmul fast float %2112, %2112
  %2116 = fmul fast float %2113, %2113
  %2117 = fsub fast float %2114, %1996
  %2118 = fsub fast float %2115, %1997
  %2119 = fsub fast float %2116, %1998
  %2120 = fmul fast float %2117, %2021
  %2121 = fmul fast float %2118, %2021
  %2122 = fmul fast float %2119, %2021
  %2123 = fadd fast float %2120, %1996
  %2124 = fadd fast float %2121, %1997
  %2125 = fadd fast float %2122, %1998
  %2126 = fadd fast float %2043, %2007
  %2127 = fsub fast float %2126, %2060
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fsub fast float %2128, %2007
  %2130 = fmul fast float %2129, %2021
  %2131 = fadd fast float %2130, %2007
  br label %2185

; <label>:2132                                    ; preds = %2020
  %2133 = and i32 %2023, 134217728
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2169, label %2135

; <label>:2135                                    ; preds = %2132
  %2136 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2137 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2138 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2139 = fadd fast float %2136, -5.000000e-01
  %2140 = fadd fast float %2137, -5.000000e-01
  %2141 = fadd fast float %2138, -5.000000e-01
  %2142 = fmul fast float %2139, %2021
  %2143 = fmul fast float %2140, %2021
  %2144 = fmul fast float %2141, %2021
  %2145 = fadd fast float %2142, 5.000000e-01
  %2146 = fadd fast float %2143, 5.000000e-01
  %2147 = fadd fast float %2144, 5.000000e-01
  %2148 = call float @dx.op.unary.f32(i32 24, float %1996)  ; Sqrt(value)
  %2149 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %2150 = call float @dx.op.unary.f32(i32 24, float %1998)  ; Sqrt(value)
  %2151 = fmul fast float %2145, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2148
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2148
  %2156 = fmul fast float %2146, 2.000000e+00
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %2157, %2149
  %2159 = fadd fast float %2158, %2156
  %2160 = fmul fast float %2159, %2149
  %2161 = fmul fast float %2147, 2.000000e+00
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = fmul fast float %2162, %2150
  %2164 = fadd fast float %2163, %2161
  %2165 = fmul fast float %2164, %2150
  %2166 = fmul fast float %2155, %2155
  %2167 = fmul fast float %2160, %2160
  %2168 = fmul fast float %2165, %2165
  br label %2185

; <label>:2169                                    ; preds = %2132
  %2170 = fmul fast float %373, %373
  %2171 = fmul fast float %377, %377
  %2172 = fmul fast float %381, %381
  %2173 = fadd fast float %2170, -1.000000e+00
  %2174 = fadd fast float %2171, -1.000000e+00
  %2175 = fadd fast float %2172, -1.000000e+00
  %2176 = fmul fast float %2021, %2173
  %2177 = fmul fast float %2021, %2174
  %2178 = fmul fast float %2021, %2175
  %2179 = fadd fast float %2176, 1.000000e+00
  %2180 = fadd fast float %2177, 1.000000e+00
  %2181 = fadd fast float %2178, 1.000000e+00
  %2182 = fmul fast float %2179, %1996
  %2183 = fmul fast float %2180, %1997
  %2184 = fmul fast float %2181, %1998
  br label %2185

; <label>:2185                                    ; preds = %2169, %2135, %2026, %1982
  %2186 = phi float [ %2131, %2026 ], [ %2007, %2135 ], [ %2007, %2169 ], [ 0x3FA23C0BE0000000, %1982 ]
  %2187 = phi float [ %2123, %2026 ], [ %2166, %2135 ], [ %2182, %2169 ], [ 1.000000e+00, %1982 ]
  %2188 = phi float [ %2124, %2026 ], [ %2167, %2135 ], [ %2183, %2169 ], [ 1.000000e+00, %1982 ]
  %2189 = phi float [ %2125, %2026 ], [ %2168, %2135 ], [ %2184, %2169 ], [ 1.000000e+00, %1982 ]
  %2190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.i32 %2190, 1
  %2192 = and i32 %2191, 1
  %2193 = icmp ne i32 %2192, 0
  %2194 = add i32 %60, 356
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 32
  %2198 = icmp ne i32 %2197, 0
  %2199 = and i1 %2193, %2198
  %2200 = select i1 %2199, float 1.000000e+00, float %2187
  %2201 = select i1 %2199, float 0x3FD3333340000000, float %2188
  %2202 = select i1 %2199, float 0x3FD3333340000000, float %2189
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 32
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2279, label %2207

; <label>:2207                                    ; preds = %2185
  %2208 = add i32 %60, 124
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = add i32 %60, 384
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.f32 %2216, 1
  %2219 = extractvalue %dx.types.ResRet.f32 %2216, 2
  %2220 = extractvalue %dx.types.ResRet.f32 %2216, 3
  %2221 = and i32 %2210, 255
  %2222 = uitofp i32 %2221 to float
  %2223 = lshr i32 %2210, 8
  %2224 = and i32 %2223, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = lshr i32 %2210, 16
  %2227 = and i32 %2226, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2228, 0x3F70101000000000
  %2230 = fmul fast float %2217, %2222
  %2231 = fadd fast float %2230, %2225
  %2232 = fmul fast float %2231, 0x3F70101000000000
  %2233 = fadd fast float %2218, -5.000000e-01
  %2234 = fadd fast float %2220, -5.000000e-01
  %2235 = fmul fast float %2233, %2229
  %2236 = fmul fast float %2234, %2229
  %2237 = fadd fast float %2235, 5.000000e-01
  %2238 = fadd fast float %2236, 5.000000e-01
  %2239 = fmul fast float %2237, 2.000000e+00
  %2240 = fadd fast float %2239, -1.000000e+00
  %2241 = fmul fast float %2238, 2.000000e+00
  %2242 = fadd fast float %2241, -1.000000e+00
  %2243 = fadd fast float %2240, %2242
  %2244 = fmul fast float %2243, 5.000000e-01
  %2245 = fsub fast float %2240, %2242
  %2246 = fmul fast float %2245, 5.000000e-01
  %2247 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = call float @dx.op.unary.f32(i32 6, float %2246)  ; FAbs(value)
  %2250 = fsub fast float %2248, %2249
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2246, float %2250, float %2244, float %2246, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 25, float %2251)  ; Rsqrt(value)
  %2253 = fmul fast float %2244, %2252
  %2254 = fmul fast float %2246, %2252
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 67108864
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2275, label %2259

; <label>:2259                                    ; preds = %2207
  %2260 = add i32 %60, 312
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %2262, 65535
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 65535
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2262, 16
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = fsub fast float %2232, %2270
  %2272 = fmul fast float %2271, %2264
  %2273 = fadd fast float %2272, %2268
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  br label %2275

; <label>:2275                                    ; preds = %2259, %2207
  %2276 = phi float [ %2274, %2259 ], [ %2232, %2207 ]
  %2277 = call float @dx.op.dot2.f32(i32 54, float %2253, float %2254, float %1811, float %1812)  ; Dot2(ax,ay,bx,by)
  %2278 = call float @dx.op.dot2.f32(i32 54, float %2253, float %2254, float %1813, float %1814)  ; Dot2(ax,ay,bx,by)
  br label %2279

; <label>:2279                                    ; preds = %2275, %2185
  %2280 = phi float [ %2276, %2275 ], [ 0x3FD6666660000000, %2185 ]
  %2281 = phi float [ %2277, %2275 ], [ 0.000000e+00, %2185 ]
  %2282 = phi float [ %2278, %2275 ], [ 0.000000e+00, %2185 ]
  %2283 = phi float [ %2219, %2275 ], [ 1.000000e+00, %2185 ]
  %2284 = add i32 %60, 192
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 22
  %2288 = shl nuw nsw i32 %2287, 5
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 64
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2327, label %2294

; <label>:2294                                    ; preds = %2279
  %2295 = add i32 %60, 400
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = and i32 %2301, 131072
  %2303 = icmp eq i32 %2302, 0
  %2304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = fmul fast float %2305, %361
  %2309 = fmul fast float %2306, %364
  %2310 = fmul fast float %2307, %367
  br i1 %2303, label %2317, label %2311

; <label>:2311                                    ; preds = %2294
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = fmul fast float %2313, %2308
  %2315 = fmul fast float %2313, %2309
  %2316 = fmul fast float %2313, %2310
  br label %2317

; <label>:2317                                    ; preds = %2311, %2294
  %2318 = phi float [ %2314, %2311 ], [ %2308, %2294 ]
  %2319 = phi float [ %2315, %2311 ], [ %2309, %2294 ]
  %2320 = phi float [ %2316, %2311 ], [ %2310, %2294 ]
  %2321 = fmul fast float %2318, %2289
  %2322 = select i1 %260, float %2321, float %2318
  %2323 = call float @dx.op.dot3.f32(i32 55, float %2322, float %2319, float %2320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2324 = select i1 %260, float 0.000000e+00, float %2318
  %2325 = select i1 %260, float %2323, float %2319
  %2326 = select i1 %260, float 0.000000e+00, float %2320
  br label %2327

; <label>:2327                                    ; preds = %2317, %2279
  %2328 = phi float [ %2324, %2317 ], [ 0.000000e+00, %2279 ]
  %2329 = phi float [ %2325, %2317 ], [ 0.000000e+00, %2279 ]
  %2330 = phi float [ %2326, %2317 ], [ 0.000000e+00, %2279 ]
  %2331 = add i32 %60, 128
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 255
  %2335 = uitofp i32 %2334 to float
  %2336 = lshr i32 %2333, 8
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2340 = fmul fast float %2338, %2339
  %2341 = fadd fast float %2340, %2335
  %2342 = fmul fast float %2341, 0x3F70101020000000
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  br i1 %1799, label %2344, label %2352

; <label>:2344                                    ; preds = %2327
  %2345 = fsub fast float 1.000000e+00, %1980
  %2346 = fmul fast float %2345, %1791
  %2347 = fmul fast float %2345, %1792
  %2348 = fmul fast float %2345, %1793
  %2349 = fmul fast float %2345, %1788
  %2350 = fmul fast float %2345, %1789
  %2351 = fmul fast float %2345, %1790
  br label %2352

; <label>:2352                                    ; preds = %2344, %2327
  %2353 = phi float [ %2349, %2344 ], [ %1788, %2327 ]
  %2354 = phi float [ %2350, %2344 ], [ %1789, %2327 ]
  %2355 = phi float [ %2351, %2344 ], [ %1790, %2327 ]
  %2356 = phi float [ %2346, %2344 ], [ %1791, %2327 ]
  %2357 = phi float [ %2347, %2344 ], [ %1792, %2327 ]
  %2358 = phi float [ %2348, %2344 ], [ %1793, %2327 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 3
  %2362 = icmp eq i32 %2361, 3
  br i1 %2362, label %2441, label %2363

; <label>:2363                                    ; preds = %2352
  %2364 = and i32 %2360, 16
  %2365 = icmp ne i32 %2364, 0
  %2366 = select i1 %2365, float %1980, float 0.000000e+00
  %2367 = icmp eq i32 %2361, 0
  br i1 %2367, label %2368, label %2396

; <label>:2368                                    ; preds = %2363
  %2369 = and i32 %2360, 64
  %2370 = icmp ne i32 %2369, 0
  %2371 = select i1 %2370, float %1980, float 0.000000e+00
  %2372 = fsub fast float %2200, %2356
  %2373 = fsub fast float %2201, %2357
  %2374 = fsub fast float %2202, %2358
  %2375 = fmul fast float %2366, %2372
  %2376 = fmul fast float %2366, %2373
  %2377 = fmul fast float %2366, %2374
  %2378 = fadd fast float %2375, %2356
  %2379 = fadd fast float %2376, %2357
  %2380 = fadd fast float %2377, %2358
  %2381 = fsub fast float %2186, %1794
  %2382 = fmul fast float %2366, %2381
  %2383 = fadd fast float %2382, %1794
  %2384 = fsub fast float %2328, %2353
  %2385 = fsub fast float %2329, %2354
  %2386 = fsub fast float %2330, %2355
  %2387 = fmul fast float %2371, %2384
  %2388 = fmul fast float %2371, %2385
  %2389 = fmul fast float %2371, %2386
  %2390 = fadd fast float %2387, %2353
  %2391 = fadd fast float %2388, %2354
  %2392 = fadd fast float %2389, %2355
  %2393 = fsub fast float %2343, %1797
  %2394 = fmul fast float %2366, %2393
  %2395 = fadd fast float %2394, %1797
  br label %2441

; <label>:2396                                    ; preds = %2363
  %2397 = icmp eq i32 %2361, 1
  br i1 %2397, label %2398, label %2411

; <label>:2398                                    ; preds = %2396
  %2399 = fadd fast float %2200, -1.000000e+00
  %2400 = fadd fast float %2201, -1.000000e+00
  %2401 = fadd fast float %2202, -1.000000e+00
  %2402 = fmul fast float %2366, %2399
  %2403 = fmul fast float %2366, %2400
  %2404 = fmul fast float %2366, %2401
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fmul fast float %2405, %2356
  %2409 = fmul fast float %2406, %2357
  %2410 = fmul fast float %2407, %2358
  br label %2441

; <label>:2411                                    ; preds = %2396
  %2412 = icmp eq i32 %2361, 2
  br i1 %2412, label %2413, label %2441

; <label>:2413                                    ; preds = %2411
  %2414 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2415 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2416 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2417 = fadd fast float %2414, -5.000000e-01
  %2418 = fadd fast float %2415, -5.000000e-01
  %2419 = fadd fast float %2416, -5.000000e-01
  %2420 = fmul fast float %2417, %2366
  %2421 = fmul fast float %2418, %2366
  %2422 = fmul fast float %2419, %2366
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fadd fast float %2421, 5.000000e-01
  %2425 = fadd fast float %2422, 5.000000e-01
  %2426 = fmul fast float %2423, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2356
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2356
  %2431 = fmul fast float %2424, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2357
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2357
  %2436 = fmul fast float %2425, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2358
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2358
  br label %2441

; <label>:2441                                    ; preds = %2413, %2411, %2398, %2368, %2352
  %2442 = phi float [ %2353, %2352 ], [ %2353, %2413 ], [ %2353, %2411 ], [ %2353, %2398 ], [ %2390, %2368 ]
  %2443 = phi float [ %2354, %2352 ], [ %2354, %2413 ], [ %2354, %2411 ], [ %2354, %2398 ], [ %2391, %2368 ]
  %2444 = phi float [ %2355, %2352 ], [ %2355, %2413 ], [ %2355, %2411 ], [ %2355, %2398 ], [ %2392, %2368 ]
  %2445 = phi float [ %2356, %2352 ], [ %2430, %2413 ], [ %2356, %2411 ], [ %2408, %2398 ], [ %2378, %2368 ]
  %2446 = phi float [ %2357, %2352 ], [ %2435, %2413 ], [ %2357, %2411 ], [ %2409, %2398 ], [ %2379, %2368 ]
  %2447 = phi float [ %2358, %2352 ], [ %2440, %2413 ], [ %2358, %2411 ], [ %2410, %2398 ], [ %2380, %2368 ]
  %2448 = phi float [ %1794, %2352 ], [ %1794, %2413 ], [ %1794, %2411 ], [ %1794, %2398 ], [ %2383, %2368 ]
  %2449 = phi float [ %1797, %2352 ], [ %1797, %2413 ], [ %1797, %2411 ], [ %1797, %2398 ], [ %2395, %2368 ]
  %2450 = and i32 %2360, 12
  %2451 = icmp eq i32 %2450, 12
  br i1 %2451, label %2524, label %2452

; <label>:2452                                    ; preds = %2441
  %2453 = and i32 %2360, 2097184
  %2454 = icmp eq i32 %2453, 2097184
  %2455 = select i1 %2454, float %1980, float 0.000000e+00
  %2456 = and i32 %2360, 4194336
  %2457 = icmp eq i32 %2456, 4194336
  %2458 = select i1 %2457, float %1980, float 0.000000e+00
  %2459 = and i32 %2360, 8388640
  %2460 = icmp eq i32 %2459, 8388640
  %2461 = select i1 %2460, float %1980, float 0.000000e+00
  %2462 = icmp eq i32 %2450, 0
  br i1 %2462, label %2463, label %2476

; <label>:2463                                    ; preds = %2452
  %2464 = fsub fast float %2281, %1786
  %2465 = fsub fast float %2282, %1787
  %2466 = fmul fast float %2455, %2464
  %2467 = fmul fast float %2455, %2465
  %2468 = fadd fast float %2466, %1786
  %2469 = fadd fast float %2467, %1787
  %2470 = fsub fast float %2283, %1796
  %2471 = fmul fast float %2458, %2470
  %2472 = fadd fast float %2471, %1796
  %2473 = fsub fast float %2280, %1795
  %2474 = fmul fast float %2461, %2473
  %2475 = fadd fast float %2474, %1795
  br label %2524

; <label>:2476                                    ; preds = %2452
  %2477 = icmp eq i32 %2450, 4
  br i1 %2477, label %2478, label %2510

; <label>:2478                                    ; preds = %2476
  %2479 = fmul fast float %2455, %2281
  %2480 = fmul fast float %2455, %2282
  %2481 = fadd fast float %2479, %1786
  %2482 = fadd fast float %2480, %1787
  %2483 = call float @dx.op.binary.f32(i32 36, float %1796, float %2283)  ; FMin(a,b)
  %2484 = fsub fast float %2483, %1796
  %2485 = fmul fast float %2484, %2458
  %2486 = fadd fast float %2485, %1796
  %2487 = fadd fast float %2280, %1795
  %2488 = fmul fast float %2487, 0x3FF337FAE0000000
  %2489 = fmul fast float %1795, %1795
  %2490 = fmul fast float %2280, %2280
  %2491 = fadd fast float %2490, %2489
  %2492 = fmul fast float %2491, 0x3FE5152B00000000
  %2493 = fmul fast float %1795, 0xBFCC1F85E0000000
  %2494 = fmul fast float %2493, %2280
  %2495 = fadd fast float %2494, 0xBFE1363700000000
  %2496 = fadd fast float %2495, %2488
  %2497 = fsub fast float %2496, %2492
  %2498 = fmul fast float %2487, 0x3FBA6F0D00000000
  %2499 = fmul fast float %2491, 0x3FD0432880000000
  %2500 = fmul fast float %1795, 0xBFEF110800000000
  %2501 = fmul fast float %2500, %2280
  %2502 = fadd fast float %2501, 1.000000e+00
  %2503 = fsub fast float %2502, %2498
  %2504 = fadd fast float %2503, %2499
  %2505 = fdiv fast float %2497, %2504
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = fsub fast float %2506, %1795
  %2508 = fmul fast float %2507, %2461
  %2509 = fadd fast float %2508, %1795
  br label %2524

; <label>:2510                                    ; preds = %2476
  %2511 = icmp eq i32 %2450, 8
  br i1 %2511, label %2512, label %2524

; <label>:2512                                    ; preds = %2510
  %2513 = fmul fast float %2455, %2281
  %2514 = fmul fast float %2455, %2282
  %2515 = fadd fast float %2513, %1786
  %2516 = fadd fast float %2514, %1787
  %2517 = call float @dx.op.binary.f32(i32 36, float %1796, float %2283)  ; FMin(a,b)
  %2518 = fsub fast float %2517, %1796
  %2519 = fmul fast float %2518, %2458
  %2520 = fadd fast float %2519, %1796
  %2521 = fsub fast float %2280, %1795
  %2522 = fmul fast float %2461, %2521
  %2523 = fadd fast float %2522, %1795
  br label %2524

; <label>:2524                                    ; preds = %2512, %2510, %2478, %2463, %2441, %1979, %1798, %1785
  %2525 = phi float [ %1786, %2441 ], [ %1786, %1979 ], [ %1786, %1785 ], [ %2515, %2512 ], [ %1786, %2510 ], [ %2481, %2478 ], [ %2468, %2463 ], [ %1786, %1798 ]
  %2526 = phi float [ %1787, %2441 ], [ %1787, %1979 ], [ %1787, %1785 ], [ %2516, %2512 ], [ %1787, %2510 ], [ %2482, %2478 ], [ %2469, %2463 ], [ %1787, %1798 ]
  %2527 = phi float [ %2442, %2441 ], [ %1788, %1979 ], [ %1788, %1785 ], [ %2442, %2512 ], [ %2442, %2510 ], [ %2442, %2478 ], [ %2442, %2463 ], [ %1788, %1798 ]
  %2528 = phi float [ %2443, %2441 ], [ %1789, %1979 ], [ %1789, %1785 ], [ %2443, %2512 ], [ %2443, %2510 ], [ %2443, %2478 ], [ %2443, %2463 ], [ %1789, %1798 ]
  %2529 = phi float [ %2444, %2441 ], [ %1790, %1979 ], [ %1790, %1785 ], [ %2444, %2512 ], [ %2444, %2510 ], [ %2444, %2478 ], [ %2444, %2463 ], [ %1790, %1798 ]
  %2530 = phi float [ %2445, %2441 ], [ %1791, %1979 ], [ %1791, %1785 ], [ %2445, %2512 ], [ %2445, %2510 ], [ %2445, %2478 ], [ %2445, %2463 ], [ %1791, %1798 ]
  %2531 = phi float [ %2446, %2441 ], [ %1792, %1979 ], [ %1792, %1785 ], [ %2446, %2512 ], [ %2446, %2510 ], [ %2446, %2478 ], [ %2446, %2463 ], [ %1792, %1798 ]
  %2532 = phi float [ %2447, %2441 ], [ %1793, %1979 ], [ %1793, %1785 ], [ %2447, %2512 ], [ %2447, %2510 ], [ %2447, %2478 ], [ %2447, %2463 ], [ %1793, %1798 ]
  %2533 = phi float [ %2448, %2441 ], [ %1794, %1979 ], [ %1794, %1785 ], [ %2448, %2512 ], [ %2448, %2510 ], [ %2448, %2478 ], [ %2448, %2463 ], [ %1794, %1798 ]
  %2534 = phi float [ %1795, %2441 ], [ %1795, %1979 ], [ %1795, %1785 ], [ %2523, %2512 ], [ %1795, %2510 ], [ %2509, %2478 ], [ %2475, %2463 ], [ %1795, %1798 ]
  %2535 = phi float [ %1796, %2441 ], [ %1796, %1979 ], [ %1796, %1785 ], [ %2520, %2512 ], [ %1796, %2510 ], [ %2486, %2478 ], [ %2472, %2463 ], [ %1796, %1798 ]
  %2536 = phi float [ %2449, %2441 ], [ %1797, %1979 ], [ %1797, %1785 ], [ %2449, %2512 ], [ %2449, %2510 ], [ %2449, %2478 ], [ %2449, %2463 ], [ %1797, %1798 ]
  br i1 %448, label %3263, label %2537

; <label>:2537                                    ; preds = %2524
  %2538 = icmp ult i32 %502, 4
  %2539 = add i32 %60, 72
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %60, 76
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = or i32 %2544, %2541
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %3263, label %2547

; <label>:2547                                    ; preds = %2537
  %2548 = and i32 %2541, 262144
  %2549 = icmp ne i32 %2548, 0
  %2550 = select i1 %2549, float %65, float 1.000000e+00
  %2551 = select i1 %2549, float %66, float 0.000000e+00
  %2552 = select i1 %2549, float %67, float 0.000000e+00
  %2553 = select i1 %2549, float %68, float 1.000000e+00
  %2554 = select i1 %2549, float %69, float %92
  %2555 = select i1 %2549, float %70, float %93
  %2556 = add i32 %60, 332
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = lshr i32 %2558, 16
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = fmul fast float %2560, 0x3F50624DE0000000
  %2562 = add i32 %60, 136
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = lshr i32 %2564, 16
  %2566 = and i32 %2565, 255
  %2567 = lshr i32 %2564, 24
  %2568 = add i32 %60, 340
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 65535
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = lshr i32 %2570, 16
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = add i32 %60, 80
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = lshr i32 %2577, 22
  %2579 = shl nuw nsw i32 %2578, 5
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = shl i32 %2577, 4
  %2582 = and i32 %2581, 32752
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = lshr i32 %2577, 7
  %2585 = and i32 %2584, 32752
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2589 = fmul fast float %2588, 1.000000e+03
  %2590 = fmul fast float %438, %2589
  %2591 = call float @dx.op.unary.f32(i32 22, float %2590)  ; Frc(value)
  %2592 = fadd fast float %2591, %428
  %2593 = fmul fast float %439, %2589
  %2594 = call float @dx.op.unary.f32(i32 22, float %2593)  ; Frc(value)
  %2595 = fadd fast float %2594, %430
  %2596 = fmul fast float %2561, %2589
  %2597 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2598 = fmul fast float %2597, 0x401921FB60000000
  %2599 = fadd fast float %2598, %2580
  %2600 = call float @dx.op.unary.f32(i32 13, float %2599)  ; Sin(value)
  %2601 = call float @dx.op.unary.f32(i32 12, float %2599)  ; Cos(value)
  %2602 = fsub fast float -0.000000e+00, %2600
  %2603 = fadd fast float %2554, -5.000000e-01
  %2604 = fadd fast float %2555, -5.000000e-01
  %2605 = fmul fast float %2572, %2603
  %2606 = fmul fast float %2574, %2604
  %2607 = fadd fast float %2605, 5.000000e-01
  %2608 = fadd fast float %2606, 5.000000e-01
  %2609 = fmul fast float %2583, %2607
  %2610 = fmul fast float %2586, %2608
  %2611 = fmul fast float %2601, %2609
  %2612 = call float @dx.op.tertiary.f32(i32 46, float %2602, float %2610, float %2611)  ; FMad(a,b,c)
  %2613 = fmul fast float %2600, %2609
  %2614 = call float @dx.op.tertiary.f32(i32 46, float %2601, float %2610, float %2613)  ; FMad(a,b,c)
  %2615 = fadd fast float %2592, %2612
  %2616 = fadd fast float %2595, %2614
  %2617 = icmp ugt i32 %2566, 1
  %2618 = icmp ugt i32 %2564, 33554431
  %2619 = or i1 %2618, %2617
  br i1 %2619, label %2620, label %2645

; <label>:2620                                    ; preds = %2547
  %2621 = add i32 %60, 276
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fmul fast float %2588, %2625
  %2627 = call float @dx.op.unary.f32(i32 22, float %2626)  ; Frc(value)
  %2628 = mul nuw nsw i32 %2566, %2567
  %2629 = uitofp i32 %2628 to float
  %2630 = fmul fast float %2627, %2629
  %2631 = call float @dx.op.unary.f32(i32 27, float %2630)  ; Round_ni(value)
  %2632 = fptoui float %2631 to i32
  %2633 = urem i32 %2632, %2566
  %2634 = udiv i32 %2632, %2567
  %2635 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2636 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2637 = uitofp i32 %2633 to float
  %2638 = uitofp i32 %2634 to float
  %2639 = fadd fast float %2635, %2637
  %2640 = fadd fast float %2636, %2638
  %2641 = uitofp i32 %2566 to float
  %2642 = uitofp i32 %2567 to float
  %2643 = fdiv fast float %2639, %2641
  %2644 = fdiv fast float %2640, %2642
  br label %2645

; <label>:2645                                    ; preds = %2620, %2547
  %2646 = phi float [ %2643, %2620 ], [ %2615, %2547 ]
  %2647 = phi float [ %2644, %2620 ], [ %2616, %2547 ]
  %2648 = and i32 %2541, 256
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2696, label %2650

; <label>:2650                                    ; preds = %2645
  %2651 = add i32 %60, 436
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = add i32 %60, 148
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = shl i32 %2660, 4
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = lshr i32 %2660, 7
  %2665 = and i32 %2664, 32752
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = fsub fast float 1.000000e+00, %497
  %2668 = call float @dx.op.binary.f32(i32 35, float %2667, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2669 = bitcast float %497 to i32
  %2670 = sitofp i32 %2669 to float
  %2671 = fadd fast float %2670, 0xC1CFBF8940000000
  %2672 = fmul fast float %2666, %2671
  %2673 = fadd fast float %2672, 0x41CFBF8940000000
  %2674 = fptosi float %2673 to i32
  %2675 = bitcast i32 %2674 to float
  %2676 = bitcast float %2668 to i32
  %2677 = sitofp i32 %2676 to float
  %2678 = fadd fast float %2677, 0xC1CFBF8940000000
  %2679 = fmul fast float %2678, %2666
  %2680 = fadd fast float %2679, 0x41CFBF8940000000
  %2681 = fptosi float %2680 to i32
  %2682 = bitcast i32 %2681 to float
  %2683 = fmul fast float %2675, %2663
  %2684 = fmul fast float %2682, %2663
  %2685 = fsub fast float %2668, %2683
  %2686 = fadd fast float %2684, %2668
  %2687 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2688 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2689 = fsub fast float %2657, %2687
  %2690 = fsub fast float %2688, %2687
  %2691 = bitcast float %2690 to i32
  %2692 = sub nsw i32 2129859010, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2693, %2689
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  br label %2696

; <label>:2696                                    ; preds = %2650, %2645
  %2697 = phi float [ %2695, %2650 ], [ %497, %2645 ]
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 128
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2718, label %2702

; <label>:2702                                    ; preds = %2696
  %2703 = add i32 %60, 420
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = add i32 %2705, 0
  %2707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2707, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = and i32 %2711, 524288
  %2713 = icmp ne i32 %2712, 0
  %2714 = fcmp fast ogt float %2709, 0x3FE0101020000000
  %2715 = select i1 %2714, float 1.000000e+00, float 0.000000e+00
  %2716 = select i1 %2713, float %2715, float %2709
  %2717 = fmul fast float %2716, %2697
  br label %2718

; <label>:2718                                    ; preds = %2702, %2696
  %2719 = phi float [ %2717, %2702 ], [ %2697, %2696 ]
  %2720 = fcmp fast ult float %2719, 0x3F70101020000000
  br i1 %2720, label %3263, label %2721

; <label>:2721                                    ; preds = %2718
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 16
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2924, label %2726

; <label>:2726                                    ; preds = %2721
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = add i32 %60, 372
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %2731, 0
  %2733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2733, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.ResRet.f32 %2734, 3
  %2739 = and i32 %2728, 255
  %2740 = uitofp i32 %2739 to float
  %2741 = lshr i32 %2728, 8
  %2742 = and i32 %2741, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2738, %2740
  %2745 = fadd fast float %2744, %2743
  %2746 = fmul fast float %2745, 0x3F70101000000000
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 512
  %2750 = icmp eq i32 %2749, 0
  br i1 %2750, label %2759, label %2751

; <label>:2751                                    ; preds = %2726
  %2752 = add i32 %60, 452
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = add i32 %2754, 0
  %2756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2756, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  br label %2759

; <label>:2759                                    ; preds = %2751, %2726
  %2760 = phi float [ %2758, %2751 ], [ 1.000000e+00, %2726 ]
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 33554432
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2871, label %2765

; <label>:2765                                    ; preds = %2759
  %2766 = add i32 %60, 272
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 65535
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = lshr i32 %2768, 16
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = add i32 %60, 276
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 65535
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = lshr i32 %2779, 24
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = and i32 %2779, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = lshr i32 %2779, 8
  %2787 = and i32 %2786, 255
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = lshr i32 %2779, 16
  %2791 = and i32 %2790, 255
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = add i32 %60, 268
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = lshr i32 %2796, 24
  %2798 = uitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 0x3F70101020000000
  %2800 = and i32 %2796, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, 0x3F70101020000000
  %2803 = lshr i32 %2796, 8
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = lshr i32 %2796, 16
  %2808 = and i32 %2807, 255
  %2809 = uitofp i32 %2808 to float
  %2810 = fmul fast float %2809, 0x3F70101020000000
  %2811 = bitcast float %2735 to i32
  %2812 = ashr i32 %2811, 1
  %2813 = sub nsw i32 1597463174, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2735, 5.000000e-01
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2816, %2815
  %2818 = fsub fast float 1.500000e+00, %2817
  %2819 = fmul fast float %2814, %2735
  %2820 = fmul fast float %2819, %2818
  %2821 = bitcast float %2736 to i32
  %2822 = ashr i32 %2821, 1
  %2823 = sub nsw i32 1597463174, %2822
  %2824 = bitcast i32 %2823 to float
  %2825 = fmul fast float %2736, 5.000000e-01
  %2826 = fmul fast float %2824, %2824
  %2827 = fmul fast float %2826, %2825
  %2828 = fsub fast float 1.500000e+00, %2827
  %2829 = fmul fast float %2824, %2736
  %2830 = fmul fast float %2829, %2828
  %2831 = bitcast float %2737 to i32
  %2832 = ashr i32 %2831, 1
  %2833 = sub nsw i32 1597463174, %2832
  %2834 = bitcast i32 %2833 to float
  %2835 = fmul fast float %2737, 5.000000e-01
  %2836 = fmul fast float %2834, %2834
  %2837 = fmul fast float %2836, %2835
  %2838 = fsub fast float 1.500000e+00, %2837
  %2839 = fmul fast float %2834, %2737
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float %2820, %2802
  %2842 = fsub fast float %2830, %2806
  %2843 = fsub fast float %2840, %2810
  %2844 = fmul fast float %2841, %2770
  %2845 = fmul fast float %2842, %2772
  %2846 = fmul fast float %2843, %2777
  %2847 = fadd fast float %2844, %2785
  %2848 = fadd fast float %2845, %2789
  %2849 = fadd fast float %2846, %2793
  %2850 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2852 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2853 = fmul fast float %2850, %2850
  %2854 = fmul fast float %2851, %2851
  %2855 = fmul fast float %2852, %2852
  %2856 = fsub fast float %2853, %2735
  %2857 = fsub fast float %2854, %2736
  %2858 = fsub fast float %2855, %2737
  %2859 = fmul fast float %2856, %2760
  %2860 = fmul fast float %2857, %2760
  %2861 = fmul fast float %2858, %2760
  %2862 = fadd fast float %2859, %2735
  %2863 = fadd fast float %2860, %2736
  %2864 = fadd fast float %2861, %2737
  %2865 = fadd fast float %2782, %2746
  %2866 = fsub fast float %2865, %2799
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = fsub fast float %2867, %2746
  %2869 = fmul fast float %2868, %2760
  %2870 = fadd fast float %2869, %2746
  br label %2924

; <label>:2871                                    ; preds = %2759
  %2872 = and i32 %2762, 134217728
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2908, label %2874

; <label>:2874                                    ; preds = %2871
  %2875 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %2878 = fadd fast float %2875, -5.000000e-01
  %2879 = fadd fast float %2876, -5.000000e-01
  %2880 = fadd fast float %2877, -5.000000e-01
  %2881 = fmul fast float %2878, %2760
  %2882 = fmul fast float %2879, %2760
  %2883 = fmul fast float %2880, %2760
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %2888 = call float @dx.op.unary.f32(i32 24, float %2736)  ; Sqrt(value)
  %2889 = call float @dx.op.unary.f32(i32 24, float %2737)  ; Sqrt(value)
  %2890 = fmul fast float %2884, 2.000000e+00
  %2891 = fsub fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2891, %2887
  %2893 = fadd fast float %2892, %2890
  %2894 = fmul fast float %2893, %2887
  %2895 = fmul fast float %2885, 2.000000e+00
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2896, %2888
  %2898 = fadd fast float %2897, %2895
  %2899 = fmul fast float %2898, %2888
  %2900 = fmul fast float %2886, 2.000000e+00
  %2901 = fsub fast float 1.000000e+00, %2900
  %2902 = fmul fast float %2901, %2889
  %2903 = fadd fast float %2902, %2900
  %2904 = fmul fast float %2903, %2889
  %2905 = fmul fast float %2894, %2894
  %2906 = fmul fast float %2899, %2899
  %2907 = fmul fast float %2904, %2904
  br label %2924

; <label>:2908                                    ; preds = %2871
  %2909 = fmul fast float %415, %415
  %2910 = fmul fast float %419, %419
  %2911 = fmul fast float %423, %423
  %2912 = fadd fast float %2909, -1.000000e+00
  %2913 = fadd fast float %2910, -1.000000e+00
  %2914 = fadd fast float %2911, -1.000000e+00
  %2915 = fmul fast float %2760, %2912
  %2916 = fmul fast float %2760, %2913
  %2917 = fmul fast float %2760, %2914
  %2918 = fadd fast float %2915, 1.000000e+00
  %2919 = fadd fast float %2916, 1.000000e+00
  %2920 = fadd fast float %2917, 1.000000e+00
  %2921 = fmul fast float %2918, %2735
  %2922 = fmul fast float %2919, %2736
  %2923 = fmul fast float %2920, %2737
  br label %2924

; <label>:2924                                    ; preds = %2908, %2874, %2765, %2721
  %2925 = phi float [ %2870, %2765 ], [ %2746, %2874 ], [ %2746, %2908 ], [ 0x3FA23C0BE0000000, %2721 ]
  %2926 = phi float [ %2862, %2765 ], [ %2905, %2874 ], [ %2921, %2908 ], [ 1.000000e+00, %2721 ]
  %2927 = phi float [ %2863, %2765 ], [ %2906, %2874 ], [ %2922, %2908 ], [ 1.000000e+00, %2721 ]
  %2928 = phi float [ %2864, %2765 ], [ %2907, %2874 ], [ %2923, %2908 ], [ 1.000000e+00, %2721 ]
  %2929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.i32 %2929, 1
  %2931 = and i32 %2930, 1
  %2932 = icmp ne i32 %2931, 0
  %2933 = add i32 %60, 356
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 32
  %2937 = icmp ne i32 %2936, 0
  %2938 = and i1 %2932, %2937
  %2939 = select i1 %2938, float 1.000000e+00, float %2926
  %2940 = select i1 %2938, float 0x3FD3333340000000, float %2927
  %2941 = select i1 %2938, float 0x3FD3333340000000, float %2928
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 32
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %3018, label %2946

; <label>:2946                                    ; preds = %2924
  %2947 = add i32 %60, 140
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = add i32 %60, 388
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2954, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = extractvalue %dx.types.ResRet.f32 %2955, 3
  %2960 = and i32 %2949, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2949, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = lshr i32 %2949, 16
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101000000000
  %2969 = fmul fast float %2956, %2961
  %2970 = fadd fast float %2969, %2964
  %2971 = fmul fast float %2970, 0x3F70101000000000
  %2972 = fadd fast float %2957, -5.000000e-01
  %2973 = fadd fast float %2959, -5.000000e-01
  %2974 = fmul fast float %2972, %2968
  %2975 = fmul fast float %2973, %2968
  %2976 = fadd fast float %2974, 5.000000e-01
  %2977 = fadd fast float %2975, 5.000000e-01
  %2978 = fmul fast float %2976, 2.000000e+00
  %2979 = fadd fast float %2978, -1.000000e+00
  %2980 = fmul fast float %2977, 2.000000e+00
  %2981 = fadd fast float %2980, -1.000000e+00
  %2982 = fadd fast float %2979, %2981
  %2983 = fmul fast float %2982, 5.000000e-01
  %2984 = fsub fast float %2979, %2981
  %2985 = fmul fast float %2984, 5.000000e-01
  %2986 = call float @dx.op.unary.f32(i32 6, float %2983)  ; FAbs(value)
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = call float @dx.op.unary.f32(i32 6, float %2985)  ; FAbs(value)
  %2989 = fsub fast float %2987, %2988
  %2990 = call float @dx.op.dot3.f32(i32 55, float %2983, float %2985, float %2989, float %2983, float %2985, float %2989)  ; Dot3(ax,ay,az,bx,by,bz)
  %2991 = call float @dx.op.unary.f32(i32 25, float %2990)  ; Rsqrt(value)
  %2992 = fmul fast float %2983, %2991
  %2993 = fmul fast float %2985, %2991
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 67108864
  %2997 = icmp eq i32 %2996, 0
  br i1 %2997, label %3014, label %2998

; <label>:2998                                    ; preds = %2946
  %2999 = add i32 %60, 328
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 65535
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 65535
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = lshr i32 %3001, 16
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = fsub fast float %2971, %3009
  %3011 = fmul fast float %3010, %3003
  %3012 = fadd fast float %3011, %3007
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  br label %3014

; <label>:3014                                    ; preds = %2998, %2946
  %3015 = phi float [ %3013, %2998 ], [ %2971, %2946 ]
  %3016 = call float @dx.op.dot2.f32(i32 54, float %2992, float %2993, float %2550, float %2551)  ; Dot2(ax,ay,bx,by)
  %3017 = call float @dx.op.dot2.f32(i32 54, float %2992, float %2993, float %2552, float %2553)  ; Dot2(ax,ay,bx,by)
  br label %3018

; <label>:3018                                    ; preds = %3014, %2924
  %3019 = phi float [ %3015, %3014 ], [ 0x3FD6666660000000, %2924 ]
  %3020 = phi float [ %3016, %3014 ], [ 0.000000e+00, %2924 ]
  %3021 = phi float [ %3017, %3014 ], [ 0.000000e+00, %2924 ]
  %3022 = phi float [ %2958, %3014 ], [ 1.000000e+00, %2924 ]
  %3023 = add i32 %60, 208
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = lshr i32 %3025, 22
  %3027 = shl nuw nsw i32 %3026, 5
  %3028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3027)  ; LegacyF16ToF32(value)
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 64
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3066, label %3033

; <label>:3033                                    ; preds = %3018
  %3034 = add i32 %60, 404
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = add i32 %3036, 0
  %3038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 131072
  %3042 = icmp eq i32 %3041, 0
  %3043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3038, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.ResRet.f32 %3043, 2
  %3047 = fmul fast float %3044, %403
  %3048 = fmul fast float %3045, %406
  %3049 = fmul fast float %3046, %409
  br i1 %3042, label %3056, label %3050

; <label>:3050                                    ; preds = %3033
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3053 = fmul fast float %3052, %3047
  %3054 = fmul fast float %3052, %3048
  %3055 = fmul fast float %3052, %3049
  br label %3056

; <label>:3056                                    ; preds = %3050, %3033
  %3057 = phi float [ %3053, %3050 ], [ %3047, %3033 ]
  %3058 = phi float [ %3054, %3050 ], [ %3048, %3033 ]
  %3059 = phi float [ %3055, %3050 ], [ %3049, %3033 ]
  %3060 = fmul fast float %3057, %3028
  %3061 = select i1 %260, float %3060, float %3057
  %3062 = call float @dx.op.dot3.f32(i32 55, float %3061, float %3058, float %3059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3063 = select i1 %260, float 0.000000e+00, float %3057
  %3064 = select i1 %260, float %3062, float %3058
  %3065 = select i1 %260, float 0.000000e+00, float %3059
  br label %3066

; <label>:3066                                    ; preds = %3056, %3018
  %3067 = phi float [ %3063, %3056 ], [ 0.000000e+00, %3018 ]
  %3068 = phi float [ %3064, %3056 ], [ 0.000000e+00, %3018 ]
  %3069 = phi float [ %3065, %3056 ], [ 0.000000e+00, %3018 ]
  %3070 = add i32 %60, 144
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3072, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fmul fast float %3077, %3078
  %3080 = fadd fast float %3079, %3074
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  br i1 %2538, label %3083, label %3091

; <label>:3083                                    ; preds = %3066
  %3084 = fsub fast float 1.000000e+00, %2719
  %3085 = fmul fast float %3084, %2530
  %3086 = fmul fast float %3084, %2531
  %3087 = fmul fast float %3084, %2532
  %3088 = fmul fast float %3084, %2527
  %3089 = fmul fast float %3084, %2528
  %3090 = fmul fast float %3084, %2529
  br label %3091

; <label>:3091                                    ; preds = %3083, %3066
  %3092 = phi float [ %3088, %3083 ], [ %2527, %3066 ]
  %3093 = phi float [ %3089, %3083 ], [ %2528, %3066 ]
  %3094 = phi float [ %3090, %3083 ], [ %2529, %3066 ]
  %3095 = phi float [ %3085, %3083 ], [ %2530, %3066 ]
  %3096 = phi float [ %3086, %3083 ], [ %2531, %3066 ]
  %3097 = phi float [ %3087, %3083 ], [ %2532, %3066 ]
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 3
  %3101 = icmp eq i32 %3100, 3
  br i1 %3101, label %3180, label %3102

; <label>:3102                                    ; preds = %3091
  %3103 = and i32 %3099, 16
  %3104 = icmp ne i32 %3103, 0
  %3105 = select i1 %3104, float %2719, float 0.000000e+00
  %3106 = icmp eq i32 %3100, 0
  br i1 %3106, label %3107, label %3135

; <label>:3107                                    ; preds = %3102
  %3108 = and i32 %3099, 64
  %3109 = icmp ne i32 %3108, 0
  %3110 = select i1 %3109, float %2719, float 0.000000e+00
  %3111 = fsub fast float %2939, %3095
  %3112 = fsub fast float %2940, %3096
  %3113 = fsub fast float %2941, %3097
  %3114 = fmul fast float %3105, %3111
  %3115 = fmul fast float %3105, %3112
  %3116 = fmul fast float %3105, %3113
  %3117 = fadd fast float %3114, %3095
  %3118 = fadd fast float %3115, %3096
  %3119 = fadd fast float %3116, %3097
  %3120 = fsub fast float %2925, %2533
  %3121 = fmul fast float %3105, %3120
  %3122 = fadd fast float %3121, %2533
  %3123 = fsub fast float %3067, %3092
  %3124 = fsub fast float %3068, %3093
  %3125 = fsub fast float %3069, %3094
  %3126 = fmul fast float %3110, %3123
  %3127 = fmul fast float %3110, %3124
  %3128 = fmul fast float %3110, %3125
  %3129 = fadd fast float %3126, %3092
  %3130 = fadd fast float %3127, %3093
  %3131 = fadd fast float %3128, %3094
  %3132 = fsub fast float %3082, %2536
  %3133 = fmul fast float %3105, %3132
  %3134 = fadd fast float %3133, %2536
  br label %3180

; <label>:3135                                    ; preds = %3102
  %3136 = icmp eq i32 %3100, 1
  br i1 %3136, label %3137, label %3150

; <label>:3137                                    ; preds = %3135
  %3138 = fadd fast float %2939, -1.000000e+00
  %3139 = fadd fast float %2940, -1.000000e+00
  %3140 = fadd fast float %2941, -1.000000e+00
  %3141 = fmul fast float %3105, %3138
  %3142 = fmul fast float %3105, %3139
  %3143 = fmul fast float %3105, %3140
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fmul fast float %3144, %3095
  %3148 = fmul fast float %3145, %3096
  %3149 = fmul fast float %3146, %3097
  br label %3180

; <label>:3150                                    ; preds = %3135
  %3151 = icmp eq i32 %3100, 2
  br i1 %3151, label %3152, label %3180

; <label>:3152                                    ; preds = %3150
  %3153 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3155 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fmul fast float %3156, %3105
  %3160 = fmul fast float %3157, %3105
  %3161 = fmul fast float %3158, %3105
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = fmul fast float %3162, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3095
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3095
  %3170 = fmul fast float %3163, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3096
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3096
  %3175 = fmul fast float %3164, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3097
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3097
  br label %3180

; <label>:3180                                    ; preds = %3152, %3150, %3137, %3107, %3091
  %3181 = phi float [ %3092, %3091 ], [ %3092, %3152 ], [ %3092, %3150 ], [ %3092, %3137 ], [ %3129, %3107 ]
  %3182 = phi float [ %3093, %3091 ], [ %3093, %3152 ], [ %3093, %3150 ], [ %3093, %3137 ], [ %3130, %3107 ]
  %3183 = phi float [ %3094, %3091 ], [ %3094, %3152 ], [ %3094, %3150 ], [ %3094, %3137 ], [ %3131, %3107 ]
  %3184 = phi float [ %3095, %3091 ], [ %3169, %3152 ], [ %3095, %3150 ], [ %3147, %3137 ], [ %3117, %3107 ]
  %3185 = phi float [ %3096, %3091 ], [ %3174, %3152 ], [ %3096, %3150 ], [ %3148, %3137 ], [ %3118, %3107 ]
  %3186 = phi float [ %3097, %3091 ], [ %3179, %3152 ], [ %3097, %3150 ], [ %3149, %3137 ], [ %3119, %3107 ]
  %3187 = phi float [ %2533, %3091 ], [ %2533, %3152 ], [ %2533, %3150 ], [ %2533, %3137 ], [ %3122, %3107 ]
  %3188 = phi float [ %2536, %3091 ], [ %2536, %3152 ], [ %2536, %3150 ], [ %2536, %3137 ], [ %3134, %3107 ]
  %3189 = and i32 %3099, 12
  %3190 = icmp eq i32 %3189, 12
  br i1 %3190, label %3263, label %3191

; <label>:3191                                    ; preds = %3180
  %3192 = and i32 %3099, 2097184
  %3193 = icmp eq i32 %3192, 2097184
  %3194 = select i1 %3193, float %2719, float 0.000000e+00
  %3195 = and i32 %3099, 4194336
  %3196 = icmp eq i32 %3195, 4194336
  %3197 = select i1 %3196, float %2719, float 0.000000e+00
  %3198 = and i32 %3099, 8388640
  %3199 = icmp eq i32 %3198, 8388640
  %3200 = select i1 %3199, float %2719, float 0.000000e+00
  %3201 = icmp eq i32 %3189, 0
  br i1 %3201, label %3202, label %3215

; <label>:3202                                    ; preds = %3191
  %3203 = fsub fast float %3020, %2525
  %3204 = fsub fast float %3021, %2526
  %3205 = fmul fast float %3194, %3203
  %3206 = fmul fast float %3194, %3204
  %3207 = fadd fast float %3205, %2525
  %3208 = fadd fast float %3206, %2526
  %3209 = fsub fast float %3022, %2535
  %3210 = fmul fast float %3197, %3209
  %3211 = fadd fast float %3210, %2535
  %3212 = fsub fast float %3019, %2534
  %3213 = fmul fast float %3200, %3212
  %3214 = fadd fast float %3213, %2534
  br label %3263

; <label>:3215                                    ; preds = %3191
  %3216 = icmp eq i32 %3189, 4
  br i1 %3216, label %3217, label %3249

; <label>:3217                                    ; preds = %3215
  %3218 = fmul fast float %3194, %3020
  %3219 = fmul fast float %3194, %3021
  %3220 = fadd fast float %3218, %2525
  %3221 = fadd fast float %3219, %2526
  %3222 = call float @dx.op.binary.f32(i32 36, float %2535, float %3022)  ; FMin(a,b)
  %3223 = fsub fast float %3222, %2535
  %3224 = fmul fast float %3223, %3197
  %3225 = fadd fast float %3224, %2535
  %3226 = fadd fast float %3019, %2534
  %3227 = fmul fast float %3226, 0x3FF337FAE0000000
  %3228 = fmul fast float %2534, %2534
  %3229 = fmul fast float %3019, %3019
  %3230 = fadd fast float %3229, %3228
  %3231 = fmul fast float %3230, 0x3FE5152B00000000
  %3232 = fmul fast float %2534, 0xBFCC1F85E0000000
  %3233 = fmul fast float %3232, %3019
  %3234 = fadd fast float %3233, 0xBFE1363700000000
  %3235 = fadd fast float %3234, %3227
  %3236 = fsub fast float %3235, %3231
  %3237 = fmul fast float %3226, 0x3FBA6F0D00000000
  %3238 = fmul fast float %3230, 0x3FD0432880000000
  %3239 = fmul fast float %2534, 0xBFEF110800000000
  %3240 = fmul fast float %3239, %3019
  %3241 = fadd fast float %3240, 1.000000e+00
  %3242 = fsub fast float %3241, %3237
  %3243 = fadd fast float %3242, %3238
  %3244 = fdiv fast float %3236, %3243
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = fsub fast float %3245, %2534
  %3247 = fmul fast float %3246, %3200
  %3248 = fadd fast float %3247, %2534
  br label %3263

; <label>:3249                                    ; preds = %3215
  %3250 = icmp eq i32 %3189, 8
  br i1 %3250, label %3251, label %3263

; <label>:3251                                    ; preds = %3249
  %3252 = fmul fast float %3194, %3020
  %3253 = fmul fast float %3194, %3021
  %3254 = fadd fast float %3252, %2525
  %3255 = fadd fast float %3253, %2526
  %3256 = call float @dx.op.binary.f32(i32 36, float %2535, float %3022)  ; FMin(a,b)
  %3257 = fsub fast float %3256, %2535
  %3258 = fmul fast float %3257, %3197
  %3259 = fadd fast float %3258, %2535
  %3260 = fsub fast float %3019, %2534
  %3261 = fmul fast float %3200, %3260
  %3262 = fadd fast float %3261, %2534
  br label %3263

; <label>:3263                                    ; preds = %3251, %3249, %3217, %3202, %3180, %2718, %2537, %2524
  %3264 = phi float [ %2525, %3180 ], [ %2525, %2718 ], [ %2525, %2524 ], [ %2525, %2537 ], [ %3207, %3202 ], [ %3220, %3217 ], [ %2525, %3249 ], [ %3254, %3251 ]
  %3265 = phi float [ %2526, %3180 ], [ %2526, %2718 ], [ %2526, %2524 ], [ %2526, %2537 ], [ %3208, %3202 ], [ %3221, %3217 ], [ %2526, %3249 ], [ %3255, %3251 ]
  %3266 = phi float [ %3181, %3180 ], [ %2527, %2718 ], [ %2527, %2524 ], [ %2527, %2537 ], [ %3181, %3202 ], [ %3181, %3217 ], [ %3181, %3249 ], [ %3181, %3251 ]
  %3267 = phi float [ %3182, %3180 ], [ %2528, %2718 ], [ %2528, %2524 ], [ %2528, %2537 ], [ %3182, %3202 ], [ %3182, %3217 ], [ %3182, %3249 ], [ %3182, %3251 ]
  %3268 = phi float [ %3183, %3180 ], [ %2529, %2718 ], [ %2529, %2524 ], [ %2529, %2537 ], [ %3183, %3202 ], [ %3183, %3217 ], [ %3183, %3249 ], [ %3183, %3251 ]
  %3269 = phi float [ %3184, %3180 ], [ %2530, %2718 ], [ %2530, %2524 ], [ %2530, %2537 ], [ %3184, %3202 ], [ %3184, %3217 ], [ %3184, %3249 ], [ %3184, %3251 ]
  %3270 = phi float [ %3185, %3180 ], [ %2531, %2718 ], [ %2531, %2524 ], [ %2531, %2537 ], [ %3185, %3202 ], [ %3185, %3217 ], [ %3185, %3249 ], [ %3185, %3251 ]
  %3271 = phi float [ %3186, %3180 ], [ %2532, %2718 ], [ %2532, %2524 ], [ %2532, %2537 ], [ %3186, %3202 ], [ %3186, %3217 ], [ %3186, %3249 ], [ %3186, %3251 ]
  %3272 = phi float [ %3187, %3180 ], [ %2533, %2718 ], [ %2533, %2524 ], [ %2533, %2537 ], [ %3187, %3202 ], [ %3187, %3217 ], [ %3187, %3249 ], [ %3187, %3251 ]
  %3273 = phi float [ %2534, %3180 ], [ %2534, %2718 ], [ %2534, %2524 ], [ %2534, %2537 ], [ %3214, %3202 ], [ %3248, %3217 ], [ %2534, %3249 ], [ %3262, %3251 ]
  %3274 = phi float [ %2535, %3180 ], [ %2535, %2718 ], [ %2535, %2524 ], [ %2535, %2537 ], [ %3211, %3202 ], [ %3225, %3217 ], [ %2535, %3249 ], [ %3259, %3251 ]
  %3275 = phi float [ %3188, %3180 ], [ %2536, %2718 ], [ %2536, %2524 ], [ %2536, %2537 ], [ %3188, %3202 ], [ %3188, %3217 ], [ %3188, %3249 ], [ %3188, %3251 ]
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = call float @dx.op.dot2.f32(i32 54, float %3264, float %3265, float %3264, float %3265)  ; Dot2(ax,ay,bx,by)
  %3279 = fmul fast float %3278, 0x3FE3333340000000
  %3280 = fsub fast float 1.000000e+00, %3279
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3280, float %3264, float %3265, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = call float @dx.op.unary.f32(i32 25, float %3281)  ; Rsqrt(value)
  %3283 = fmul fast float %3282, %3264
  %3284 = fmul fast float %3282, %3265
  %3285 = fmul fast float %3280, %3282
  %3286 = fmul fast float %3285, %121
  %3287 = fmul fast float %3285, %122
  %3288 = fmul fast float %3285, %123
  %3289 = fmul fast float %3283, %85
  %3290 = fmul fast float %3283, %86
  %3291 = fmul fast float %3283, %87
  %3292 = fadd fast float %3286, %3289
  %3293 = fadd fast float %3287, %3290
  %3294 = fadd fast float %3288, %3291
  %3295 = fmul fast float %133, %3284
  %3296 = fmul fast float %134, %3284
  %3297 = fmul fast float %135, %3284
  %3298 = fadd fast float %3292, %3295
  %3299 = fadd fast float %3293, %3296
  %3300 = fadd fast float %3294, %3297
  %3301 = call float @dx.op.dot3.f32(i32 55, float %3298, float %3299, float %3300, float %3298, float %3299, float %3300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3302 = call float @dx.op.unary.f32(i32 25, float %3301)  ; Rsqrt(value)
  %3303 = fmul fast float %3298, %3302
  %3304 = fmul fast float %3299, %3302
  %3305 = fmul fast float %3300, %3302
  %3306 = icmp eq i32 %61, 65535
  br i1 %3306, label %3825, label %3307

; <label>:3307                                    ; preds = %3263
  %3308 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3309 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3310 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3311 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3312 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3313 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3314 = fadd fast float %3308, %62
  %3315 = fadd fast float %3309, %63
  %3316 = fadd fast float %3310, %64
  %3317 = fadd fast float %3311, %62
  %3318 = fadd fast float %3312, %63
  %3319 = fadd fast float %3313, %64
  %3320 = mul i32 %61, 48
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = add i32 %3320, 16
  %3326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = add i32 %3320, 32
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = bitcast float %3335 to i32
  %3337 = fmul fast float %3322, %62
  %3338 = fmul fast float %3323, %63
  %3339 = fmul fast float %3324, %64
  %3340 = fsub fast float %3337, %3327
  %3341 = fsub fast float %3338, %3328
  %3342 = fsub fast float %3339, %3329
  %3343 = call float @dx.op.unary.f32(i32 7, float %3340)  ; Saturate(value)
  %3344 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3346 = fmul fast float %3343, %3332
  %3347 = fmul fast float %3344, %3333
  %3348 = fmul fast float %3345, %3334
  %3349 = fadd fast float %3332, -1.000000e+00
  %3350 = fadd fast float %3333, -1.000000e+00
  %3351 = fadd fast float %3334, -1.000000e+00
  %3352 = call float @dx.op.unary.f32(i32 27, float %3346)  ; Round_ni(value)
  %3353 = call float @dx.op.unary.f32(i32 27, float %3347)  ; Round_ni(value)
  %3354 = call float @dx.op.unary.f32(i32 27, float %3348)  ; Round_ni(value)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3352, float %3349)  ; FMin(a,b)
  %3356 = call float @dx.op.binary.f32(i32 36, float %3353, float %3350)  ; FMin(a,b)
  %3357 = call float @dx.op.binary.f32(i32 36, float %3354, float %3351)  ; FMin(a,b)
  %3358 = fmul fast float %3357, %3333
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3332
  %3361 = fadd fast float %3360, %3355
  %3362 = fptosi float %3361 to i32
  %3363 = add nsw i32 %3362, %3336
  %3364 = shl nsw i32 %3363, 2
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = lshr i32 %3366, 16
  %3368 = icmp eq i32 %3367, 0
  br i1 %3368, label %3793, label %3369

; <label>:3369                                    ; preds = %3307
  br label %3370

; <label>:3370                                    ; preds = %3492, %3369
  %3371 = phi i32 [ %3394, %3492 ], [ %3367, %3369 ]
  %3372 = phi float [ %3493, %3492 ], [ 0.000000e+00, %3369 ]
  %3373 = phi float [ %3494, %3492 ], [ %1055, %3369 ]
  %3374 = phi float [ %3495, %3492 ], [ %3277, %3369 ]
  %3375 = phi float [ %3496, %3492 ], [ %3275, %3369 ]
  %3376 = phi float [ %3497, %3492 ], [ 0.000000e+00, %3369 ]
  %3377 = phi float [ %3498, %3492 ], [ 0.000000e+00, %3369 ]
  %3378 = phi float [ %3499, %3492 ], [ %3266, %3369 ]
  %3379 = phi float [ %3500, %3492 ], [ %3267, %3369 ]
  %3380 = phi float [ %3501, %3492 ], [ %3268, %3369 ]
  %3381 = phi float [ %3502, %3492 ], [ %3303, %3369 ]
  %3382 = phi float [ %3503, %3492 ], [ %3304, %3369 ]
  %3383 = phi float [ %3504, %3492 ], [ %3305, %3369 ]
  %3384 = phi float [ %3505, %3492 ], [ %3274, %3369 ]
  %3385 = phi float [ %3506, %3492 ], [ %3273, %3369 ]
  %3386 = phi float [ %3507, %3492 ], [ 0.000000e+00, %3369 ]
  %3387 = phi float [ %3508, %3492 ], [ %3272, %3369 ]
  %3388 = phi float [ %3509, %3492 ], [ %3269, %3369 ]
  %3389 = phi float [ %3510, %3492 ], [ %3270, %3369 ]
  %3390 = phi float [ %3511, %3492 ], [ %3271, %3369 ]
  %3391 = shl nuw nsw i32 %3371, 2
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = lshr i32 %3393, 16
  %3395 = shl i32 %3393, 8
  %3396 = and i32 %3395, 16776960
  %3397 = or i32 %3396, 48
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = or i32 %3396, 64
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = extractvalue %dx.types.ResRet.i32 %3403, 1
  %3406 = or i32 %3396, 80
  %3407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 3
  %3410 = or i32 %3396, 96
  %3411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = extractvalue %dx.types.ResRet.f32 %3411, 1
  %3414 = extractvalue %dx.types.ResRet.f32 %3411, 2
  %3415 = extractvalue %dx.types.ResRet.f32 %3411, 3
  %3416 = or i32 %3396, 112
  %3417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 2
  %3419 = or i32 %3396, 128
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3425 = or i32 %3396, 144
  %3426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.ResRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3426, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3426, 3
  %3431 = or i32 %3396, 160
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = or i32 %3396, 192
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = or i32 %3396, 208
  %3441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = or i32 %3396, 248
  %3444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3453 = or i32 %3396, 16
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3460 = or i32 %3396, 32
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = call float @dx.op.dot4.f32(i32 56, float %3462, float %3463, float %3464, float %3465, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3467 = call float @dx.op.unary.f32(i32 27, float %3452)  ; Round_ni(value)
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = call float @dx.op.unary.f32(i32 27, float %3459)  ; Round_ni(value)
  %3470 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3471 = call float @dx.op.unary.f32(i32 6, float %3466)  ; FAbs(value)
  %3472 = call float @dx.op.unary.f32(i32 27, float %3471)  ; Round_ni(value)
  %3473 = fadd fast float %3470, %3468
  %3474 = fadd fast float %3473, %3472
  %3475 = fcmp fast oeq float %3474, 0.000000e+00
  %3476 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %3314, float %3315, float %3316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3477 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %3314, float %3315, float %3316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3478 = call float @dx.op.dot4.f32(i32 56, float %3448, float %3449, float %3450, float %3451, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3479 = call float @dx.op.dot4.f32(i32 56, float %3455, float %3456, float %3457, float %3458, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3480 = fsub fast float %3476, %3452
  %3481 = fsub fast float %3478, %3452
  %3482 = fsub fast float %3477, %3459
  %3483 = fsub fast float %3479, %3459
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3399, float %3400, float %3401, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3487 = fadd fast float %3486, %3484
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3490 = fcmp fast ogt float %3488, %3489
  %3491 = and i1 %3475, %3490
  br i1 %3491, label %3513, label %3492

; <label>:3492                                    ; preds = %3779, %3596, %3513, %3370
  %3493 = phi float [ %3372, %3513 ], [ %3599, %3596 ], [ %3599, %3779 ], [ %3372, %3370 ]
  %3494 = phi float [ %3373, %3513 ], [ %3373, %3596 ], [ %3754, %3779 ], [ %3373, %3370 ]
  %3495 = phi float [ %3374, %3513 ], [ %3374, %3596 ], [ %3753, %3779 ], [ %3374, %3370 ]
  %3496 = phi float [ %3375, %3513 ], [ %3375, %3596 ], [ %3751, %3779 ], [ %3375, %3370 ]
  %3497 = phi float [ %3376, %3513 ], [ %3376, %3596 ], [ %3723, %3779 ], [ %3376, %3370 ]
  %3498 = phi float [ %3377, %3513 ], [ %3377, %3596 ], [ %3721, %3779 ], [ %3377, %3370 ]
  %3499 = phi float [ %3378, %3513 ], [ %3378, %3596 ], [ %3789, %3779 ], [ %3378, %3370 ]
  %3500 = phi float [ %3379, %3513 ], [ %3379, %3596 ], [ %3790, %3779 ], [ %3379, %3370 ]
  %3501 = phi float [ %3380, %3513 ], [ %3380, %3596 ], [ %3791, %3779 ], [ %3380, %3370 ]
  %3502 = phi float [ %3381, %3513 ], [ %3381, %3596 ], [ %3702, %3779 ], [ %3381, %3370 ]
  %3503 = phi float [ %3382, %3513 ], [ %3382, %3596 ], [ %3703, %3779 ], [ %3382, %3370 ]
  %3504 = phi float [ %3383, %3513 ], [ %3383, %3596 ], [ %3704, %3779 ], [ %3383, %3370 ]
  %3505 = phi float [ %3384, %3513 ], [ %3384, %3596 ], [ %3731, %3779 ], [ %3384, %3370 ]
  %3506 = phi float [ %3385, %3513 ], [ %3385, %3596 ], [ %3728, %3779 ], [ %3385, %3370 ]
  %3507 = phi float [ %3386, %3513 ], [ %3386, %3596 ], [ %3725, %3779 ], [ %3386, %3370 ]
  %3508 = phi float [ %3387, %3513 ], [ %3387, %3596 ], [ %3719, %3779 ], [ %3387, %3370 ]
  %3509 = phi float [ %3388, %3513 ], [ %3388, %3596 ], [ %3714, %3779 ], [ %3388, %3370 ]
  %3510 = phi float [ %3389, %3513 ], [ %3389, %3596 ], [ %3715, %3779 ], [ %3389, %3370 ]
  %3511 = phi float [ %3390, %3513 ], [ %3390, %3596 ], [ %3716, %3779 ], [ %3390, %3370 ]
  %3512 = icmp eq i32 %3394, 0
  br i1 %3512, label %3792, label %3370

; <label>:3513                                    ; preds = %3370
  %3514 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3515 = extractvalue %dx.types.ResRet.f32 %3417, 3
  %3516 = extractvalue %dx.types.ResRet.f32 %3417, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3520 = extractvalue %dx.types.ResRet.i32 %3403, 3
  %3521 = extractvalue %dx.types.ResRet.i32 %3403, 2
  %3522 = bitcast float %3514 to i32
  %3523 = add i32 %3520, 0
  %3524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3526 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3524, %dx.types.Handle %3525, float %3452, float %3459, float undef, float undef, i32 0, i32 0, i32 undef, float %3480, float %3482, float undef, float %3481, float %3483, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = fmul fast float %3527, %3519
  %3529 = fadd fast float %3528, %3518
  %3530 = call float @dx.op.unary.f32(i32 7, float %3529)  ; Saturate(value)
  %3531 = fmul fast float %3452, %3412
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3413, float %3459, float %3531)  ; FMad(a,b,c)
  %3533 = fadd fast float %3532, %3517
  %3534 = fmul fast float %3452, %3414
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3459, float %3534)  ; FMad(a,b,c)
  %3536 = fadd fast float %3535, %3516
  %3537 = fmul fast float %3480, %3412
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3413, float %3482, float %3537)  ; FMad(a,b,c)
  %3539 = fmul fast float %3480, %3414
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3482, float %3539)  ; FMad(a,b,c)
  %3541 = fmul fast float %3481, %3412
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3413, float %3483, float %3541)  ; FMad(a,b,c)
  %3543 = fmul fast float %3481, %3414
  %3544 = call float @dx.op.tertiary.f32(i32 46, float %3415, float %3483, float %3543)  ; FMad(a,b,c)
  %3545 = add i32 %3521, 0
  %3546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3545, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3547 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3546, %dx.types.Handle %3525, float %3533, float %3536, float undef, float undef, i32 0, i32 0, i32 undef, float %3538, float %3540, float undef, float %3542, float %3544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = and i32 %3522, 1024
  %3550 = icmp ne i32 %3549, 0
  %3551 = fcmp fast ogt float %3548, 0x3FE0101020000000
  %3552 = uitofp i1 %3551 to float
  %3553 = select i1 %3550, float %3552, float %3548
  %3554 = and i32 %3522, 8192
  %3555 = icmp ne i32 %3554, 0
  %3556 = select i1 %3555, float %3515, float 1.000000e+00
  %3557 = fmul fast float %3452, 2.000000e+00
  %3558 = fadd fast float %3557, -1.000000e+00
  %3559 = call float @dx.op.unary.f32(i32 6, float %3558)  ; FAbs(value)
  %3560 = fmul fast float %3559, %3445
  %3561 = fsub fast float %3560, %3445
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = fmul fast float %3459, 2.000000e+00
  %3564 = fadd fast float %3563, -1.000000e+00
  %3565 = call float @dx.op.unary.f32(i32 6, float %3564)  ; FAbs(value)
  %3566 = fmul fast float %3565, %3446
  %3567 = fsub fast float %3566, %3446
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3569 = fmul fast float %3471, %3408
  %3570 = fsub fast float %3569, %3408
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3572 = fmul fast float %3530, %3556
  %3573 = fmul fast float %3572, %3527
  %3574 = fmul fast float %3573, %3562
  %3575 = fmul fast float %3574, %3553
  %3576 = fmul fast float %3575, %3568
  %3577 = fmul fast float %3576, %3571
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 1
  %3580 = extractvalue %dx.types.CBufRet.f32 %3578, 0
  %3581 = fsub fast float %3488, %3580
  %3582 = fmul fast float %3581, %3579
  %3583 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3584 = fmul fast float %3577, %3409
  %3585 = fadd fast float %3577, %3409
  %3586 = fmul fast float %3585, %3418
  %3587 = fsub fast float %3586, %3418
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = and i32 %3522, 128
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3588, float %3584
  %3592 = fmul fast float %3591, %3583
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = fcmp fast ugt float %3592, %3594
  br i1 %3595, label %3596, label %3492

; <label>:3596                                    ; preds = %3513
  %3597 = select i1 %3555, float %3592, float 0.000000e+00
  %3598 = fadd fast float %3597, %3372
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  br i1 %3555, label %3492, label %3600

; <label>:3600                                    ; preds = %3596
  %3601 = and i32 %3522, 4
  %3602 = and i32 %3522, 8
  %3603 = add i32 %3404, 0
  %3604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3603, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3604, %dx.types.Handle %3605, float %3533, float %3536, float undef, float undef, i32 0, i32 0, i32 undef, float %3538, float %3540, float undef, float %3542, float %3544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = bitcast float %3430 to i32
  %3612 = and i32 %3611, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = lshr i32 %3611, 8
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = fmul fast float %3610, %3613
  %3618 = fadd fast float %3617, %3616
  %3619 = fmul fast float %3618, 0x3F70101000000000
  %3620 = add i32 %3405, 0
  %3621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3620, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3622 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3621, %dx.types.Handle %3605, float %3533, float %3536, float undef, float undef, i32 0, i32 0, i32 undef, float %3538, float %3540, float undef, float %3542, float %3544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3627 = bitcast float %3424 to i32
  %3628 = and i32 %3627, 255
  %3629 = uitofp i32 %3628 to float
  %3630 = lshr i32 %3627, 8
  %3631 = and i32 %3630, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = lshr i32 %3627, 16
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = fmul fast float %3635, 0x3F70101000000000
  %3637 = fmul fast float %3623, %3629
  %3638 = fadd fast float %3637, %3632
  %3639 = fmul fast float %3638, 0x3F70101000000000
  %3640 = fadd fast float %3624, -5.000000e-01
  %3641 = fadd fast float %3626, -5.000000e-01
  %3642 = fmul fast float %3640, %3636
  %3643 = fmul fast float %3641, %3636
  %3644 = fadd fast float %3642, 5.000000e-01
  %3645 = fadd fast float %3643, 5.000000e-01
  %3646 = fmul fast float %3607, %3433
  %3647 = fmul fast float %3608, %3434
  %3648 = fmul fast float %3609, %3435
  %3649 = fmul fast float %3644, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = fmul fast float %3645, 2.000000e+00
  %3652 = fadd fast float %3651, -1.000000e+00
  %3653 = fadd fast float %3650, %3652
  %3654 = fmul fast float %3653, 5.000000e-01
  %3655 = fsub fast float %3650, %3652
  %3656 = fmul fast float %3655, 5.000000e-01
  %3657 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3660 = fsub fast float %3658, %3659
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3656, float %3660, float %3654, float %3656, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.unary.f32(i32 25, float %3661)  ; Rsqrt(value)
  %3663 = fmul fast float %3654, %3662
  %3664 = fmul fast float %3656, %3662
  %3665 = fmul fast float %3662, %3660
  %3666 = fmul fast float %3665, %3399
  %3667 = fmul fast float %3665, %3400
  %3668 = fmul fast float %3665, %3401
  %3669 = fmul fast float %3663, %3421
  %3670 = fmul fast float %3663, %3422
  %3671 = fmul fast float %3663, %3423
  %3672 = fadd fast float %3669, %3666
  %3673 = fadd fast float %3670, %3667
  %3674 = fadd fast float %3671, %3668
  %3675 = fmul fast float %3664, %3427
  %3676 = fmul fast float %3664, %3428
  %3677 = fmul fast float %3664, %3429
  %3678 = fadd fast float %3672, %3675
  %3679 = fadd fast float %3673, %3676
  %3680 = fadd fast float %3674, %3677
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3678, float %3679, float %3680, float %3678, float %3679, float %3680)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 25, float %3681)  ; Rsqrt(value)
  %3683 = fmul fast float %3678, %3682
  %3684 = fmul fast float %3679, %3682
  %3685 = fmul fast float %3680, %3682
  %3686 = icmp ne i32 %3602, 0
  %3687 = select i1 %3686, float 1.000000e+00, float 0.000000e+00
  %3688 = fmul fast float %3592, %3687
  %3689 = and i32 %3522, 1
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3691, label %3695

; <label>:3691                                    ; preds = %3600
  %3692 = fsub fast float %3683, %3381
  %3693 = fsub fast float %3684, %3382
  %3694 = fsub fast float %3685, %3383
  br label %3695

; <label>:3695                                    ; preds = %3691, %3600
  %3696 = phi float [ %3692, %3691 ], [ %3683, %3600 ]
  %3697 = phi float [ %3693, %3691 ], [ %3684, %3600 ]
  %3698 = phi float [ %3694, %3691 ], [ %3685, %3600 ]
  %3699 = fmul float %3698, %3688
  %3700 = fmul float %3697, %3688
  %3701 = fmul float %3696, %3688
  %3702 = fadd fast float %3701, %3381
  %3703 = fadd fast float %3700, %3382
  %3704 = fadd fast float %3699, %3383
  %3705 = icmp ne i32 %3601, 0
  %3706 = select i1 %3705, float 1.000000e+00, float 0.000000e+00
  %3707 = fmul fast float %3592, %3706
  %3708 = fsub fast float %3646, %3388
  %3709 = fsub fast float %3647, %3389
  %3710 = fsub fast float %3648, %3390
  %3711 = fmul fast float %3708, %3707
  %3712 = fmul fast float %3709, %3707
  %3713 = fmul fast float %3710, %3707
  %3714 = fadd fast float %3711, %3388
  %3715 = fadd fast float %3712, %3389
  %3716 = fadd fast float %3713, %3390
  %3717 = fsub fast float %3619, %3387
  %3718 = fmul fast float %3717, %3707
  %3719 = fadd fast float %3718, %3387
  %3720 = fmul fast float %3707, %3377
  %3721 = fsub fast float %3377, %3720
  %3722 = fmul fast float %3707, %3376
  %3723 = fsub fast float %3376, %3722
  %3724 = fadd fast float %3592, %3386
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fsub fast float %3639, %3385
  %3727 = fmul fast float %3726, %3688
  %3728 = fadd fast float %3727, %3385
  %3729 = fsub fast float %3625, %3384
  %3730 = fmul fast float %3729, %3688
  %3731 = fadd fast float %3730, %3384
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3646, float %3647, float %3648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3736 = fmul fast float %3735, %3732
  %3737 = fadd fast float %3736, %3734
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = bitcast float %3436 to i32
  %3740 = and i32 %3739, 65535
  %3741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3740)  ; LegacyF16ToF32(value)
  %3742 = lshr i32 %3739, 16
  %3743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3742)  ; LegacyF16ToF32(value)
  %3744 = fcmp fast oge float %3741, 0.000000e+00
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = select i1 %3744, float %3741, float %3746
  %3748 = fadd fast float %3747, %3743
  %3749 = fsub fast float %3738, %3375
  %3750 = fmul fast float %3749, %3592
  %3751 = fadd fast float %3750, %3375
  %3752 = fmul fast float %3748, %3592
  %3753 = call float @dx.op.binary.f32(i32 35, float %3374, float %3752)  ; FMax(a,b)
  %3754 = call float @dx.op.binary.f32(i32 35, float %3373, float %3592)  ; FMax(a,b)
  %3755 = and i32 %3522, 16
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3779, label %3757

; <label>:3757                                    ; preds = %3695
  %3758 = bitcast float %3442 to i32
  %3759 = add i32 %3439, 0
  %3760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3759, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3760, %dx.types.Handle %3605, float %3533, float %3536, float undef, float undef, i32 0, i32 0, i32 undef, float %3538, float %3540, float undef, float %3542, float %3544, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = and i32 %3758, 65535
  %3766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3765)  ; LegacyF16ToF32(value)
  %3767 = fmul fast float %3762, %3433
  %3768 = fmul fast float %3763, %3434
  %3769 = fmul fast float %3764, %3435
  %3770 = and i32 %3522, 16384
  %3771 = icmp ne i32 %3770, 0
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = select i1 %3771, float %3773, float 1.000000e+00
  %3775 = fmul fast float %3774, %3766
  %3776 = fmul fast float %3767, %3775
  %3777 = fmul fast float %3768, %3775
  %3778 = fmul fast float %3769, %3775
  br label %3779

; <label>:3779                                    ; preds = %3757, %3695
  %3780 = phi float [ %3776, %3757 ], [ 0.000000e+00, %3695 ]
  %3781 = phi float [ %3777, %3757 ], [ 0.000000e+00, %3695 ]
  %3782 = phi float [ %3778, %3757 ], [ 0.000000e+00, %3695 ]
  %3783 = fsub fast float %3780, %3378
  %3784 = fsub fast float %3781, %3379
  %3785 = fsub fast float %3782, %3380
  %3786 = fmul fast float %3783, %3592
  %3787 = fmul fast float %3784, %3592
  %3788 = fmul fast float %3785, %3592
  %3789 = fadd fast float %3786, %3378
  %3790 = fadd fast float %3787, %3379
  %3791 = fadd fast float %3788, %3380
  br label %3492

; <label>:3792                                    ; preds = %3492
  br label %3793

; <label>:3793                                    ; preds = %3792, %3307
  %3794 = phi float [ 0.000000e+00, %3307 ], [ %3493, %3792 ]
  %3795 = phi float [ %1055, %3307 ], [ %3494, %3792 ]
  %3796 = phi float [ %3277, %3307 ], [ %3495, %3792 ]
  %3797 = phi float [ %3275, %3307 ], [ %3496, %3792 ]
  %3798 = phi float [ 0.000000e+00, %3307 ], [ %3497, %3792 ]
  %3799 = phi float [ 0.000000e+00, %3307 ], [ %3498, %3792 ]
  %3800 = phi float [ %3266, %3307 ], [ %3499, %3792 ]
  %3801 = phi float [ %3267, %3307 ], [ %3500, %3792 ]
  %3802 = phi float [ %3268, %3307 ], [ %3501, %3792 ]
  %3803 = phi float [ %3303, %3307 ], [ %3502, %3792 ]
  %3804 = phi float [ %3304, %3307 ], [ %3503, %3792 ]
  %3805 = phi float [ %3305, %3307 ], [ %3504, %3792 ]
  %3806 = phi float [ %3274, %3307 ], [ %3505, %3792 ]
  %3807 = phi float [ %3273, %3307 ], [ %3506, %3792 ]
  %3808 = phi float [ 0.000000e+00, %3307 ], [ %3507, %3792 ]
  %3809 = phi float [ %3272, %3307 ], [ %3508, %3792 ]
  %3810 = phi float [ %3269, %3307 ], [ %3509, %3792 ]
  %3811 = phi float [ %3270, %3307 ], [ %3510, %3792 ]
  %3812 = phi float [ %3271, %3307 ], [ %3511, %3792 ]
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float %3803, float %3804, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call float @dx.op.unary.f32(i32 25, float %3813)  ; Rsqrt(value)
  %3815 = fmul fast float %3814, %3803
  %3816 = fmul fast float %3814, %3804
  %3817 = fmul fast float %3814, %3805
  %3818 = fadd fast float %3808, %1055
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %3815, float %3816, float %3817)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = call float @dx.op.unary.f32(i32 25, float %3820)  ; Rsqrt(value)
  %3822 = fmul fast float %3821, %3815
  %3823 = fmul fast float %3821, %3816
  %3824 = fmul fast float %3821, %3817
  br label %3825

; <label>:3825                                    ; preds = %3793, %3263
  %3826 = phi float [ %3822, %3793 ], [ %3303, %3263 ]
  %3827 = phi float [ %3823, %3793 ], [ %3304, %3263 ]
  %3828 = phi float [ %3824, %3793 ], [ %3305, %3263 ]
  %3829 = phi float [ %3810, %3793 ], [ %3269, %3263 ]
  %3830 = phi float [ %3811, %3793 ], [ %3270, %3263 ]
  %3831 = phi float [ %3812, %3793 ], [ %3271, %3263 ]
  %3832 = phi float [ %3800, %3793 ], [ %3266, %3263 ]
  %3833 = phi float [ %3801, %3793 ], [ %3267, %3263 ]
  %3834 = phi float [ %3802, %3793 ], [ %3268, %3263 ]
  %3835 = phi float [ %3809, %3793 ], [ %3272, %3263 ]
  %3836 = phi float [ %3819, %3793 ], [ %1055, %3263 ]
  %3837 = phi float [ %3807, %3793 ], [ %3273, %3263 ]
  %3838 = phi float [ %3806, %3793 ], [ %3274, %3263 ]
  %3839 = phi float [ %3799, %3793 ], [ 0.000000e+00, %3263 ]
  %3840 = phi float [ %3798, %3793 ], [ 0.000000e+00, %3263 ]
  %3841 = phi float [ %3794, %3793 ], [ 0.000000e+00, %3263 ]
  %3842 = phi float [ %3796, %3793 ], [ %3277, %3263 ]
  %3843 = phi float [ %3795, %3793 ], [ %1055, %3263 ]
  %3844 = phi float [ %3797, %3793 ], [ %3275, %3263 ]
  %3845 = fadd fast float %3835, 0xBFB99999A0000000
  %3846 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3847 = fmul fast float %3846, 0x3FF1C71C80000000
  %3848 = call float @dx.op.binary.f32(i32 36, float %3835, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3849 = fsub fast float 1.000000e+00, %3847
  %3850 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3851 = fmul fast float %3850, %3829
  %3852 = fmul fast float %3850, %3830
  %3853 = fmul fast float %3850, %3831
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = fmul fast float %3847, %3829
  %3858 = fmul fast float %3847, %3830
  %3859 = fmul fast float %3847, %3831
  %3860 = fadd fast float %3857, %3848
  %3861 = fadd fast float %3858, %3848
  %3862 = fadd fast float %3859, %3848
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.i32 %3867, 3
  %3869 = and i32 %3868, 8
  %3870 = icmp ne i32 %3869, 0
  %3871 = call float @dx.op.binary.f32(i32 35, float %3854, float %3829)  ; FMax(a,b)
  %3872 = call float @dx.op.binary.f32(i32 35, float %3855, float %3829)  ; FMax(a,b)
  %3873 = call float @dx.op.binary.f32(i32 35, float %3856, float %3829)  ; FMax(a,b)
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = select i1 %260, float %3829, float %3854
  %3876 = select i1 %260, float %3874, float %3855
  %3877 = select i1 %260, float 1.000000e+00, float %3856
  %3878 = select i1 %3870, float %3871, float %3875
  %3879 = select i1 %3870, float %3872, float %3876
  %3880 = select i1 %3870, float %3873, float %3877
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3885 = fadd fast float %3882, %201
  %3886 = fadd fast float %3883, %202
  %3887 = fadd fast float %3884, %203
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3891 = fsub fast float %3885, %3889
  %3892 = fsub fast float %3886, %3890
  %3893 = fmul fast float %3891, %3891
  %3894 = fmul fast float %3892, %3892
  %3895 = fadd fast float %3893, %3894
  %3896 = call float @dx.op.unary.f32(i32 24, float %3895)  ; Sqrt(value)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3898 = fcmp fast olt float %3896, %3897
  br i1 %3898, label %3899, label %3966

; <label>:3899                                    ; preds = %3825
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3907 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3908 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3910 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3911 = extractvalue %dx.types.CBufRet.f32 %3904, 3
  %3912 = fadd fast float %3909, %3885
  %3913 = fadd fast float %3910, %3886
  %3914 = fadd fast float %3911, %3887
  %3915 = fmul fast float %3912, %3901
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3903, float %3915)  ; FMad(a,b,c)
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3905, float %3916)  ; FMad(a,b,c)
  %3918 = fmul fast float %3912, %3906
  %3919 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3907, float %3918)  ; FMad(a,b,c)
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3908, float %3919)  ; FMad(a,b,c)
  %3921 = fsub fast float %3917, %3909
  %3922 = fsub fast float %3920, %3910
  %3923 = fsub fast float %3921, %3889
  %3924 = fadd fast float %3923, %3897
  %3925 = fsub fast float %3922, %3890
  %3926 = fadd fast float %3925, %3897
  %3927 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3928 = fmul fast float %3924, %3927
  %3929 = fmul fast float %3926, %3927
  %3930 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3931 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3932 = fsub fast float 1.000000e+00, %3930
  %3933 = fsub fast float 1.000000e+00, %3931
  %3934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3932, float %3933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = fcmp fast ugt float %3935, 0.000000e+00
  br i1 %3936, label %3937, label %4240

; <label>:3937                                    ; preds = %3899
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3940 = fmul fast float %3939, %3935
  %3941 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3942 = fadd fast float %3941, %3940
  %3943 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3944 = fadd fast float %3942, %3911
  %3945 = fmul fast float %3917, %3905
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3908, float %3945)  ; FMad(a,b,c)
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3943, float %3946)  ; FMad(a,b,c)
  %3948 = fsub fast float %3947, %3911
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3951 = fsub fast float %3948, %3950
  %3952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3932, float %3933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.ResRet.f32 %3952, 1
  %3955 = extractvalue %dx.types.ResRet.f32 %3952, 2
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3932, float %3933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = fadd fast float %3957, %3953
  %3961 = fmul fast float %3960, 0x3F847AE140000000
  %3962 = fadd fast float %3958, %3954
  %3963 = fmul fast float %3962, 0x3F847AE140000000
  %3964 = fadd fast float %3959, %3955
  %3965 = fmul fast float %3964, 0x3F847AE140000000
  br label %4240

; <label>:3966                                    ; preds = %3825
  %3967 = and i32 %239, 1
  %3968 = icmp eq i32 %3967, 0
  br i1 %3968, label %4240, label %3969

; <label>:3969                                    ; preds = %3966
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3972, 1
  %3978 = extractvalue %dx.types.CBufRet.f32 %3974, 1
  %3979 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3980 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3981 = extractvalue %dx.types.CBufRet.f32 %3974, 3
  %3982 = fadd fast float %3979, %3885
  %3983 = fadd fast float %3980, %3886
  %3984 = fadd fast float %3981, %3887
  %3985 = fmul fast float %3982, %3971
  %3986 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3973, float %3985)  ; FMad(a,b,c)
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3984, float %3975, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3982, %3976
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3977, float %3988)  ; FMad(a,b,c)
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3984, float %3978, float %3989)  ; FMad(a,b,c)
  %3991 = fsub fast float %3987, %3979
  %3992 = fsub fast float %3990, %3980
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3997 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.i32 %4000, 0
  %4002 = extractvalue %dx.types.CBufRet.i32 %4000, 1
  %4003 = udiv i32 %4002, %4001
  %4004 = fsub fast float %3991, %3994
  %4005 = fsub fast float %3992, %3995
  %4006 = call float @dx.op.binary.f32(i32 35, float %4004, float 0.000000e+00)  ; FMax(a,b)
  %4007 = call float @dx.op.binary.f32(i32 35, float %4005, float 0.000000e+00)  ; FMax(a,b)
  %4008 = call float @dx.op.binary.f32(i32 36, float %4006, float %3996)  ; FMin(a,b)
  %4009 = call float @dx.op.binary.f32(i32 36, float %4007, float %3997)  ; FMin(a,b)
  %4010 = add i32 %4001, -1
  %4011 = add i32 %4003, -1
  %4012 = fmul fast float %4008, %3999
  %4013 = fmul fast float %4009, %3999
  %4014 = fptoui float %4012 to i32
  %4015 = fptoui float %4013 to i32
  %4016 = call i32 @dx.op.binary.i32(i32 40, i32 %4014, i32 %4010)  ; UMin(a,b)
  %4017 = call i32 @dx.op.binary.i32(i32 40, i32 %4015, i32 %4011)  ; UMin(a,b)
  %4018 = mul i32 %4017, %4001
  %4019 = add i32 %4018, %4016
  %4020 = shl i32 %4019, 2
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = icmp eq i32 %4022, -1
  br i1 %4023, label %4240, label %4024

; <label>:4024                                    ; preds = %3969
  %4025 = mul i32 %4022, 148
  %4026 = add i32 %4025, 4
  %4027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = add i32 %4025, 8
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = add i32 %4025, 36
  %4033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = add i32 %4025, 60
  %4036 = add i32 %4025, 92
  %4037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.i32 %4037, 0
  %4039 = add i32 %4025, 116
  %4040 = fsub fast float %3991, %4028
  %4041 = fsub fast float %3992, %4031
  %4042 = fmul fast float %3999, %4040
  %4043 = fmul fast float %3999, %4041
  %4044 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4046 = fsub fast float 1.000000e+00, %4045
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4049 = call float @dx.op.unary.f32(i32 83, float %4044)  ; DerivCoarseX(value)
  %4050 = call float @dx.op.unary.f32(i32 83, float %4046)  ; DerivCoarseX(value)
  %4051 = call float @dx.op.unary.f32(i32 84, float %4044)  ; DerivCoarseY(value)
  %4052 = call float @dx.op.unary.f32(i32 84, float %4046)  ; DerivCoarseY(value)
  %4053 = fmul fast float %4049, %4048
  %4054 = fmul fast float %4050, %4048
  %4055 = fmul fast float %4051, %4048
  %4056 = fmul fast float %4052, %4048
  %4057 = call float @dx.op.dot2.f32(i32 54, float %4055, float %4056, float %4055, float %4056)  ; Dot2(ax,ay,bx,by)
  %4058 = call float @dx.op.dot2.f32(i32 54, float %4053, float %4054, float %4053, float %4054)  ; Dot2(ax,ay,bx,by)
  %4059 = call float @dx.op.binary.f32(i32 35, float %4058, float %4057)  ; FMax(a,b)
  %4060 = call float @dx.op.unary.f32(i32 23, float %4059)  ; Log(value)
  %4061 = fmul fast float %4060, 5.000000e-01
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4064 = fadd fast float %4063, %4061
  %4065 = call float @dx.op.binary.f32(i32 35, float %4064, float 0.000000e+00)  ; FMax(a,b)
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4068 = fadd fast float %4067, %4065
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 3
  %4071 = fadd fast float %4068, %4070
  %4072 = add i32 %4038, 0
  %4073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4072, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4074 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4073, i32 0)  ; GetDimensions(handle,mipLevel)
  %4075 = extractvalue %dx.types.Dimensions %4074, 0
  %4076 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4075)  ; FirstbitLo(value)
  %4077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.i32 %4077, 1
  %4079 = sub nsw i32 %4078, %4076
  %4080 = sitofp i32 %4079 to float
  %4081 = fsub fast float %4071, %4080
  %4082 = call float @dx.op.binary.f32(i32 35, float %4081, float 0.000000e+00)  ; FMax(a,b)
  %4083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4073, %dx.types.Handle %52, float %4044, float %4046, float %4034, float undef, i32 0, i32 0, i32 undef, float %4082)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = fcmp ule float %4084, 0x3FE0101020000000
  %4086 = extractvalue %dx.types.CBufRet.i32 %4077, 0
  %4087 = and i32 %4086, 128
  %4088 = icmp ne i32 %4087, 0
  %4089 = and i1 %4085, %4088
  br i1 %4089, label %4240, label %4090

; <label>:4090                                    ; preds = %4024
  %4091 = add i32 %4025, 20
  %4092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = add i32 %4025, 24
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = add i32 %4025, 40
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = add i32 %4025, 96
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 2
  %4105 = fmul fast float %4104, %4044
  %4106 = fmul fast float %4104, %4046
  %4107 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4108 = fadd fast float %4105, %4107
  %4109 = fadd fast float %4106, %4107
  %4110 = add i32 %4102, 0
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4110, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4111, i32 0)  ; GetDimensions(handle,mipLevel)
  %4113 = extractvalue %dx.types.Dimensions %4112, 0
  %4114 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4113)  ; FirstbitLo(value)
  %4115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.i32 %4115, 1
  %4117 = sub nsw i32 %4116, %4114
  %4118 = sitofp i32 %4117 to float
  %4119 = fsub fast float %4068, %4118
  %4120 = call float @dx.op.binary.f32(i32 35, float %4119, float 0.000000e+00)  ; FMax(a,b)
  %4121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4111, %dx.types.Handle %52, float %4108, float %4109, float %4099, float undef, i32 0, i32 0, i32 undef, float %4120)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = fmul fast float %4122, %4093
  %4124 = fadd fast float %4123, %4096
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4133 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4134 = fadd fast float %4130, %3991
  %4135 = fadd fast float %4132, %3992
  %4136 = fadd fast float %4124, %4133
  %4137 = fmul fast float %4134, %4126
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4127, float %4137)  ; FMad(a,b,c)
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4128, float %4138)  ; FMad(a,b,c)
  %4140 = fsub fast float %4139, %4133
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4143 = fsub fast float %4140, %4142
  %4144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.i32 %4144, 0
  %4146 = call i32 @dx.op.binary.i32(i32 40, i32 %4022, i32 %4145)  ; UMin(a,b)
  %4147 = mul i32 %4146, 36
  %4148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.i32 %4148, 0
  %4150 = add i32 %4147, 4
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = fmul fast float %4152, %4044
  %4154 = fmul fast float %4152, %4046
  %4155 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4156 = fadd fast float %4153, %4155
  %4157 = fadd fast float %4154, %4155
  %4158 = icmp eq i32 %4149, 0
  br i1 %4158, label %4227, label %4159

; <label>:4159                                    ; preds = %4090
  br label %4160

; <label>:4160                                    ; preds = %4217, %4159
  %4161 = phi float [ %4218, %4217 ], [ 0.000000e+00, %4159 ]
  %4162 = phi float [ %4219, %4217 ], [ 0.000000e+00, %4159 ]
  %4163 = phi float [ %4220, %4217 ], [ 0.000000e+00, %4159 ]
  %4164 = phi float [ %4221, %4217 ], [ 0.000000e+00, %4159 ]
  %4165 = phi float [ %4222, %4217 ], [ 0.000000e+00, %4159 ]
  %4166 = phi float [ %4223, %4217 ], [ 0.000000e+00, %4159 ]
  %4167 = phi i32 [ %4224, %4217 ], [ 0, %4159 ]
  %4168 = shl i32 %4167, 2
  %4169 = add i32 %4035, %4168
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = add i32 %4039, %4168
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = add i32 %4174, 0
  %4176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4175, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4177 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4176, i32 0)  ; GetDimensions(handle,mipLevel)
  %4178 = extractvalue %dx.types.Dimensions %4177, 0
  %4179 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4178)  ; FirstbitLo(value)
  %4180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.i32 %4180, 1
  %4182 = sub nsw i32 %4181, %4179
  %4183 = sitofp i32 %4182 to float
  %4184 = fsub fast float %4068, %4183
  %4185 = call float @dx.op.binary.f32(i32 35, float %4184, float 0.000000e+00)  ; FMax(a,b)
  %4186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4176, %dx.types.Handle %52, float %4156, float %4157, float %4171, float undef, i32 0, i32 0, i32 undef, float %4185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = fcmp fast ogt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4217

; <label>:4189                                    ; preds = %4160
  %4190 = add i32 %4150, %4168
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = and i32 %4192, 32767
  %4194 = mul nuw nsw i32 %4193, 928
  %4195 = add nuw nsw i32 %4194, 48
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4200 = add nuw nsw i32 %4194, 60
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = fmul fast float %4197, %4187
  %4206 = fmul fast float %4198, %4187
  %4207 = fmul fast float %4199, %4187
  %4208 = fadd fast float %4205, %4161
  %4209 = fadd fast float %4206, %4162
  %4210 = fadd fast float %4207, %4163
  %4211 = fmul fast float %4202, %4187
  %4212 = fmul fast float %4203, %4187
  %4213 = fmul fast float %4204, %4187
  %4214 = fadd fast float %4211, %4164
  %4215 = fadd fast float %4212, %4165
  %4216 = fadd fast float %4213, %4166
  br label %4217

; <label>:4217                                    ; preds = %4189, %4160
  %4218 = phi float [ %4208, %4189 ], [ %4161, %4160 ]
  %4219 = phi float [ %4209, %4189 ], [ %4162, %4160 ]
  %4220 = phi float [ %4210, %4189 ], [ %4163, %4160 ]
  %4221 = phi float [ %4214, %4189 ], [ %4164, %4160 ]
  %4222 = phi float [ %4215, %4189 ], [ %4165, %4160 ]
  %4223 = phi float [ %4216, %4189 ], [ %4166, %4160 ]
  %4224 = add nuw i32 %4167, 1
  %4225 = icmp eq i32 %4224, %4149
  br i1 %4225, label %4226, label %4160

; <label>:4226                                    ; preds = %4217
  br label %4227

; <label>:4227                                    ; preds = %4226, %4090
  %4228 = phi float [ 0.000000e+00, %4090 ], [ %4218, %4226 ]
  %4229 = phi float [ 0.000000e+00, %4090 ], [ %4219, %4226 ]
  %4230 = phi float [ 0.000000e+00, %4090 ], [ %4220, %4226 ]
  %4231 = phi float [ 0.000000e+00, %4090 ], [ %4221, %4226 ]
  %4232 = phi float [ 0.000000e+00, %4090 ], [ %4222, %4226 ]
  %4233 = phi float [ 0.000000e+00, %4090 ], [ %4223, %4226 ]
  %4234 = fadd fast float %4231, %4228
  %4235 = fmul fast float %4234, 0x3F847AE140000000
  %4236 = fadd fast float %4232, %4229
  %4237 = fmul fast float %4236, 0x3F847AE140000000
  %4238 = fadd fast float %4233, %4230
  %4239 = fmul fast float %4238, 0x3F847AE140000000
  br label %4240

; <label>:4240                                    ; preds = %4227, %4024, %3969, %3966, %3937, %3899
  %4241 = phi float [ %3961, %3937 ], [ 0.000000e+00, %3899 ], [ %4235, %4227 ], [ 0.000000e+00, %3969 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %3966 ]
  %4242 = phi float [ %3963, %3937 ], [ 0.000000e+00, %3899 ], [ %4237, %4227 ], [ 0.000000e+00, %3969 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %3966 ]
  %4243 = phi float [ %3965, %3937 ], [ 0.000000e+00, %3899 ], [ %4239, %4227 ], [ 0.000000e+00, %3969 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %3966 ]
  %4244 = phi float [ %3951, %3937 ], [ -1.310720e+05, %3899 ], [ %4143, %4227 ], [ -1.310720e+05, %3969 ], [ -1.310720e+05, %4024 ], [ -1.310720e+05, %3966 ]
  %4245 = phi i1 [ true, %3937 ], [ false, %3899 ], [ true, %4227 ], [ false, %3969 ], [ false, %4024 ], [ false, %3966 ]
  %4246 = and i32 %239, 3
  %4247 = icmp eq i32 %4246, 1
  %4248 = select i1 %4247, float 1.000000e+00, float 0.000000e+00
  %4249 = fsub fast float %4244, %203
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = select i1 %4245, float %4250, float 1.000000e+00
  %4252 = fmul fast float %4251, %4248
  %4253 = icmp eq i32 %4246, 3
  %4254 = select i1 %4253, float 1.000000e+00, float %4252
  %4255 = call float @dx.op.binary.f32(i32 35, float %3841, float %4254)  ; FMax(a,b)
  %4256 = fcmp fast olt float %4254, 1.000000e+00
  %4257 = fcmp uge float %75, 0.000000e+00
  %4258 = and i1 %4257, %4256
  br i1 %4258, label %4259, label %4269

; <label>:4259                                    ; preds = %4240
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = fadd fast float %4261, %4255
  %4265 = fcmp ule float %74, 0.000000e+00
  %4266 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4267 = select i1 %4265, float %4266, float 1.000000e+00
  %4268 = fmul fast float %4267, %4263
  br label %4269

; <label>:4269                                    ; preds = %4259, %4240
  %4270 = phi float [ %4264, %4259 ], [ %4255, %4240 ]
  %4271 = phi float [ %4262, %4259 ], [ 0.000000e+00, %4240 ]
  %4272 = phi float [ %4268, %4259 ], [ 0.000000e+00, %4240 ]
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = fcmp fast une float %4274, 0.000000e+00
  %4277 = fcmp fast une float %4275, 0.000000e+00
  %4278 = or i1 %4276, %4277
  br i1 %4278, label %4279, label %4838

; <label>:4279                                    ; preds = %4269
  br i1 %4276, label %4280, label %4553

; <label>:4280                                    ; preds = %4279
  %4281 = call float @dx.op.unary.f32(i32 23, float %3838)  ; Log(value)
  %4282 = fmul fast float %4281, 4.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 21, float %4282)  ; Exp(value)
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = fmul fast float %4285, %62
  %4287 = fmul fast float %4285, %63
  %4288 = fmul fast float %4285, %64
  %4289 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4290 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4291 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 23, float %4289)  ; Log(value)
  %4293 = call float @dx.op.unary.f32(i32 23, float %4290)  ; Log(value)
  %4294 = call float @dx.op.unary.f32(i32 23, float %4291)  ; Log(value)
  %4295 = fmul fast float %4292, 4.000000e+00
  %4296 = fmul fast float %4293, 4.000000e+00
  %4297 = fmul fast float %4294, 4.000000e+00
  %4298 = call float @dx.op.unary.f32(i32 21, float %4295)  ; Exp(value)
  %4299 = call float @dx.op.unary.f32(i32 21, float %4296)  ; Exp(value)
  %4300 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4301 = fadd fast float %4299, %4298
  %4302 = fadd fast float %4301, %4300
  %4303 = fdiv fast float 1.000000e+00, %4302
  %4304 = fmul fast float %4303, %4298
  %4305 = fcmp fast ogt float %71, 0.000000e+00
  %4306 = fcmp fast ogt float %72, 0.000000e+00
  %4307 = fcmp fast ogt float %73, 0.000000e+00
  %4308 = fcmp fast olt float %71, 0.000000e+00
  %4309 = fcmp fast olt float %72, 0.000000e+00
  %4310 = fcmp fast olt float %73, 0.000000e+00
  %4311 = zext i1 %4305 to i32
  %4312 = zext i1 %4306 to i32
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = sub nsw i32 %4311, %4314
  %4318 = sub nsw i32 %4312, %4315
  %4319 = sub nsw i32 %4313, %4316
  %4320 = call float @dx.op.unary.f32(i32 83, float %4286)  ; DerivCoarseX(value)
  %4321 = call float @dx.op.unary.f32(i32 83, float %4287)  ; DerivCoarseX(value)
  %4322 = call float @dx.op.unary.f32(i32 83, float %4288)  ; DerivCoarseX(value)
  %4323 = call float @dx.op.unary.f32(i32 84, float %4286)  ; DerivCoarseY(value)
  %4324 = call float @dx.op.unary.f32(i32 84, float %4287)  ; DerivCoarseY(value)
  %4325 = call float @dx.op.unary.f32(i32 84, float %4288)  ; DerivCoarseY(value)
  %4326 = fcmp fast ole float %271, %4304
  %4327 = fmul fast float %4303, %4301
  %4328 = fcmp fast ole float %271, %4327
  %4329 = select i1 %4328, float %4288, float %4286
  %4330 = select i1 %4328, float %4286, float %4287
  %4331 = select i1 %4326, float %4287, float %4329
  %4332 = select i1 %4326, float %4288, float %4330
  %4333 = select i1 %4328, float %4322, float %4320
  %4334 = select i1 %4328, float %4320, float %4321
  %4335 = select i1 %4326, float %4321, float %4333
  %4336 = select i1 %4326, float %4322, float %4334
  %4337 = select i1 %4328, float %4325, float %4323
  %4338 = select i1 %4328, float %4323, float %4324
  %4339 = select i1 %4326, float %4324, float %4337
  %4340 = select i1 %4326, float %4325, float %4338
  %4341 = call float @dx.op.unary.f32(i32 27, float %4331)  ; Round_ni(value)
  %4342 = call float @dx.op.unary.f32(i32 27, float %4332)  ; Round_ni(value)
  %4343 = fptosi float %4341 to i32
  %4344 = fptosi float %4342 to i32
  %4345 = xor i32 %4344, %4343
  %4346 = sitofp i32 %4345 to float
  %4347 = fptosi float %4346 to i32
  %4348 = sitofp i32 %4347 to float
  %4349 = fmul fast float %4348, 0x3FE3C6EF40000000
  %4350 = frem fast float %4341, 2.560000e+02
  %4351 = frem fast float %4342, 2.560000e+02
  %4352 = fptoui float %4350 to i32
  %4353 = fptoui float %4351 to i32
  %4354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4352, i32 %4353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = fadd fast float %4355, %4349
  %4359 = fadd fast float %4356, %4349
  %4360 = fadd fast float %4357, %4349
  %4361 = call float @dx.op.unary.f32(i32 22, float %4358)  ; Frc(value)
  %4362 = call float @dx.op.unary.f32(i32 22, float %4359)  ; Frc(value)
  %4363 = call float @dx.op.unary.f32(i32 22, float %4360)  ; Frc(value)
  %4364 = fmul fast float %4363, 0x401921FB60000000
  %4365 = call float @dx.op.unary.f32(i32 13, float %4364)  ; Sin(value)
  %4366 = call float @dx.op.unary.f32(i32 12, float %4364)  ; Cos(value)
  %4367 = fsub fast float -0.000000e+00, %4366
  %4368 = fmul fast float %4366, %4331
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4332, float %4368)  ; FMad(a,b,c)
  %4370 = fmul fast float %4365, %4331
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4332, float %4370)  ; FMad(a,b,c)
  %4372 = fadd fast float %4369, %4361
  %4373 = fadd fast float %4371, %4362
  %4374 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4375 = bitcast float %4374 to i32
  %4376 = icmp eq i32 %4375, 0
  br i1 %4376, label %4415, label %4377

; <label>:4377                                    ; preds = %4280
  %4378 = add i32 %4375, 0
  %4379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4379, %dx.types.Handle %111, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4385 = fsub fast float 1.000000e+00, %4274
  %4386 = call float @dx.op.binary.f32(i32 35, float %4385, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4387 = bitcast float %4274 to i32
  %4388 = sitofp i32 %4387 to float
  %4389 = fadd fast float %4388, 0xC1CFBF8940000000
  %4390 = fmul fast float %4384, %4389
  %4391 = fadd fast float %4390, 0x41CFBF8940000000
  %4392 = fptosi float %4391 to i32
  %4393 = bitcast i32 %4392 to float
  %4394 = bitcast float %4386 to i32
  %4395 = sitofp i32 %4394 to float
  %4396 = fadd fast float %4395, 0xC1CFBF8940000000
  %4397 = fmul fast float %4396, %4384
  %4398 = fadd fast float %4397, 0x41CFBF8940000000
  %4399 = fptosi float %4398 to i32
  %4400 = bitcast i32 %4399 to float
  %4401 = fmul fast float %4393, %4383
  %4402 = fmul fast float %4400, %4383
  %4403 = fsub fast float %4386, %4401
  %4404 = fadd fast float %4402, %4386
  %4405 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4407 = fsub fast float %4381, %4405
  %4408 = fsub fast float %4406, %4405
  %4409 = bitcast float %4408 to i32
  %4410 = sub nsw i32 2129859010, %4409
  %4411 = bitcast i32 %4410 to float
  %4412 = fmul fast float %4411, %4407
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fcmp fast olt float %4413, 0x3F70101020000000
  br i1 %4414, label %4553, label %4415

; <label>:4415                                    ; preds = %4377, %4280
  %4416 = phi float [ %4413, %4377 ], [ %4274, %4280 ]
  %4417 = fmul fast float %4416, %4283
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 1
  %4420 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4421 = add i32 %4420, 0
  %4422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4422, %dx.types.Handle %110, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = extractvalue %dx.types.ResRet.f32 %4423, 3
  %4428 = and i32 %4419, 255
  %4429 = uitofp i32 %4428 to float
  %4430 = lshr i32 %4419, 8
  %4431 = and i32 %4430, 255
  %4432 = uitofp i32 %4431 to float
  %4433 = fmul fast float %4427, %4429
  %4434 = fadd fast float %4433, %4432
  %4435 = fmul fast float %4434, 0x3F70101000000000
  %4436 = fadd fast float %4435, 0xBFB99999A0000000
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4437, 0x3FF1C71C80000000
  %4439 = call float @dx.op.binary.f32(i32 36, float %4435, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4440 = fsub fast float 1.000000e+00, %4438
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4441, %4424
  %4443 = fmul fast float %4441, %4425
  %4444 = fmul fast float %4441, %4426
  %4445 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = fmul fast float %4438, %4424
  %4449 = fmul fast float %4438, %4425
  %4450 = fmul fast float %4438, %4426
  %4451 = fadd fast float %4448, %4439
  %4452 = fadd fast float %4449, %4439
  %4453 = fadd fast float %4450, %4439
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.i32 %4457, 3
  %4459 = extractvalue %dx.types.CBufRet.i32 %4457, 2
  %4460 = add i32 %4459, 0
  %4461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4461, %dx.types.Handle %110, float %4372, float %4373, float undef, float undef, i32 0, i32 0, i32 undef, float %4335, float %4336, float undef, float %4339, float %4340, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.ResRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.ResRet.f32 %4462, 3
  %4467 = and i32 %4458, 255
  %4468 = uitofp i32 %4467 to float
  %4469 = lshr i32 %4458, 8
  %4470 = and i32 %4469, 255
  %4471 = uitofp i32 %4470 to float
  %4472 = lshr i32 %4458, 16
  %4473 = and i32 %4472, 255
  %4474 = uitofp i32 %4473 to float
  %4475 = fmul fast float %4474, 0x3F70101000000000
  %4476 = fmul fast float %4463, %4468
  %4477 = fadd fast float %4476, %4471
  %4478 = fmul fast float %4477, 0x3F70101000000000
  %4479 = fadd fast float %4464, -5.000000e-01
  %4480 = fadd fast float %4466, -5.000000e-01
  %4481 = fmul fast float %4479, %4475
  %4482 = fmul fast float %4480, %4475
  %4483 = fadd fast float %4481, 5.000000e-01
  %4484 = fadd fast float %4482, 5.000000e-01
  %4485 = fmul fast float %4483, 2.000000e+00
  %4486 = fadd fast float %4485, -1.000000e+00
  %4487 = fmul fast float %4484, 2.000000e+00
  %4488 = fadd fast float %4487, -1.000000e+00
  %4489 = fadd fast float %4486, %4488
  %4490 = fmul fast float %4489, 5.000000e-01
  %4491 = fsub fast float %4486, %4488
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = call float @dx.op.unary.f32(i32 6, float %4490)  ; FAbs(value)
  %4494 = fsub fast float 1.000000e+00, %4493
  %4495 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4496 = fsub fast float %4494, %4495
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4490, float %4492, float %4496, float %4490, float %4492, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.unary.f32(i32 25, float %4497)  ; Rsqrt(value)
  %4499 = fmul fast float %4490, %4498
  %4500 = fmul fast float %4492, %4498
  %4501 = select i1 %4328, i32 %4318, i32 %4319
  %4502 = select i1 %4326, i32 %4317, i32 %4501
  %4503 = sitofp i32 %4502 to float
  %4504 = fmul fast float %4496, %4503
  %4505 = fmul fast float %4504, %4498
  %4506 = select i1 %4328, float %4505, float %4500
  %4507 = select i1 %4328, float %4500, float %4505
  %4508 = select i1 %4326, float %4505, float %4499
  %4509 = select i1 %4326, float %4500, float %4506
  %4510 = select i1 %4326, float %4499, float %4507
  %4511 = fsub fast float %4445, %3878
  %4512 = fsub fast float %4446, %3879
  %4513 = fsub fast float %4447, %3880
  %4514 = fmul fast float %4511, %4417
  %4515 = fmul fast float %4512, %4417
  %4516 = fmul fast float %4513, %4417
  %4517 = fadd fast float %4514, %3878
  %4518 = fadd fast float %4515, %3879
  %4519 = fadd fast float %4516, %3880
  %4520 = fsub fast float %4454, %3863
  %4521 = fsub fast float %4455, %3864
  %4522 = fsub fast float %4456, %3865
  %4523 = fmul fast float %4520, %4417
  %4524 = fmul fast float %4521, %4417
  %4525 = fmul fast float %4522, %4417
  %4526 = fadd fast float %4523, %3863
  %4527 = fadd fast float %4524, %3864
  %4528 = fadd fast float %4525, %3865
  %4529 = fadd fast float %4508, %3826
  %4530 = fadd fast float %4509, %3827
  %4531 = fadd fast float %4510, %3828
  %4532 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %4531, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 25, float %4532)  ; Rsqrt(value)
  %4534 = fmul fast float %4529, %4533
  %4535 = fmul fast float %4530, %4533
  %4536 = fmul fast float %4531, %4533
  %4537 = fsub fast float %4534, %3826
  %4538 = fsub fast float %4535, %3827
  %4539 = fsub fast float %4536, %3828
  %4540 = fmul fast float %4537, %4417
  %4541 = fmul fast float %4538, %4417
  %4542 = fmul fast float %4539, %4417
  %4543 = fadd fast float %4540, %3826
  %4544 = fadd fast float %4541, %3827
  %4545 = fadd fast float %4542, %3828
  %4546 = call float @dx.op.binary.f32(i32 36, float %3838, float %4465)  ; FMin(a,b)
  %4547 = fsub fast float %4546, %3838
  %4548 = fmul fast float %4547, %4417
  %4549 = fadd fast float %4548, %3838
  %4550 = fsub fast float %4478, %3866
  %4551 = fmul fast float %4550, %4417
  %4552 = fadd fast float %4551, %3866
  br label %4553

; <label>:4553                                    ; preds = %4415, %4377, %4279
  %4554 = phi float [ %4517, %4415 ], [ %3878, %4377 ], [ %3878, %4279 ]
  %4555 = phi float [ %4518, %4415 ], [ %3879, %4377 ], [ %3879, %4279 ]
  %4556 = phi float [ %4519, %4415 ], [ %3880, %4377 ], [ %3880, %4279 ]
  %4557 = phi float [ %4543, %4415 ], [ %3826, %4377 ], [ %3826, %4279 ]
  %4558 = phi float [ %4544, %4415 ], [ %3827, %4377 ], [ %3827, %4279 ]
  %4559 = phi float [ %4545, %4415 ], [ %3828, %4377 ], [ %3828, %4279 ]
  %4560 = phi float [ %4526, %4415 ], [ %3863, %4377 ], [ %3863, %4279 ]
  %4561 = phi float [ %4527, %4415 ], [ %3864, %4377 ], [ %3864, %4279 ]
  %4562 = phi float [ %4528, %4415 ], [ %3865, %4377 ], [ %3865, %4279 ]
  %4563 = phi float [ %4552, %4415 ], [ %3866, %4377 ], [ %3866, %4279 ]
  %4564 = phi float [ %4549, %4415 ], [ %3838, %4377 ], [ %3838, %4279 ]
  br i1 %4277, label %4565, label %4838

; <label>:4565                                    ; preds = %4553
  %4566 = call float @dx.op.unary.f32(i32 23, float %4564)  ; Log(value)
  %4567 = fmul fast float %4566, 4.000000e+00
  %4568 = call float @dx.op.unary.f32(i32 21, float %4567)  ; Exp(value)
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = fmul fast float %4570, %62
  %4572 = fmul fast float %4570, %63
  %4573 = fmul fast float %4570, %64
  %4574 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4575 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4576 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4577 = call float @dx.op.unary.f32(i32 23, float %4574)  ; Log(value)
  %4578 = call float @dx.op.unary.f32(i32 23, float %4575)  ; Log(value)
  %4579 = call float @dx.op.unary.f32(i32 23, float %4576)  ; Log(value)
  %4580 = fmul fast float %4577, 4.000000e+00
  %4581 = fmul fast float %4578, 4.000000e+00
  %4582 = fmul fast float %4579, 4.000000e+00
  %4583 = call float @dx.op.unary.f32(i32 21, float %4580)  ; Exp(value)
  %4584 = call float @dx.op.unary.f32(i32 21, float %4581)  ; Exp(value)
  %4585 = call float @dx.op.unary.f32(i32 21, float %4582)  ; Exp(value)
  %4586 = fadd fast float %4584, %4583
  %4587 = fadd fast float %4586, %4585
  %4588 = fdiv fast float 1.000000e+00, %4587
  %4589 = fmul fast float %4588, %4583
  %4590 = fcmp fast ogt float %71, 0.000000e+00
  %4591 = fcmp fast ogt float %72, 0.000000e+00
  %4592 = fcmp fast ogt float %73, 0.000000e+00
  %4593 = fcmp fast olt float %71, 0.000000e+00
  %4594 = fcmp fast olt float %72, 0.000000e+00
  %4595 = fcmp fast olt float %73, 0.000000e+00
  %4596 = zext i1 %4590 to i32
  %4597 = zext i1 %4591 to i32
  %4598 = zext i1 %4592 to i32
  %4599 = zext i1 %4593 to i32
  %4600 = zext i1 %4594 to i32
  %4601 = zext i1 %4595 to i32
  %4602 = sub nsw i32 %4596, %4599
  %4603 = sub nsw i32 %4597, %4600
  %4604 = sub nsw i32 %4598, %4601
  %4605 = call float @dx.op.unary.f32(i32 83, float %4571)  ; DerivCoarseX(value)
  %4606 = call float @dx.op.unary.f32(i32 83, float %4572)  ; DerivCoarseX(value)
  %4607 = call float @dx.op.unary.f32(i32 83, float %4573)  ; DerivCoarseX(value)
  %4608 = call float @dx.op.unary.f32(i32 84, float %4571)  ; DerivCoarseY(value)
  %4609 = call float @dx.op.unary.f32(i32 84, float %4572)  ; DerivCoarseY(value)
  %4610 = call float @dx.op.unary.f32(i32 84, float %4573)  ; DerivCoarseY(value)
  %4611 = fcmp fast ole float %271, %4589
  %4612 = fmul fast float %4588, %4586
  %4613 = fcmp fast ole float %271, %4612
  %4614 = select i1 %4613, float %4573, float %4571
  %4615 = select i1 %4613, float %4571, float %4572
  %4616 = select i1 %4611, float %4572, float %4614
  %4617 = select i1 %4611, float %4573, float %4615
  %4618 = select i1 %4613, float %4607, float %4605
  %4619 = select i1 %4613, float %4605, float %4606
  %4620 = select i1 %4611, float %4606, float %4618
  %4621 = select i1 %4611, float %4607, float %4619
  %4622 = select i1 %4613, float %4610, float %4608
  %4623 = select i1 %4613, float %4608, float %4609
  %4624 = select i1 %4611, float %4609, float %4622
  %4625 = select i1 %4611, float %4610, float %4623
  %4626 = call float @dx.op.unary.f32(i32 27, float %4616)  ; Round_ni(value)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4628 = fptosi float %4626 to i32
  %4629 = fptosi float %4627 to i32
  %4630 = xor i32 %4629, %4628
  %4631 = sitofp i32 %4630 to float
  %4632 = fptosi float %4631 to i32
  %4633 = sitofp i32 %4632 to float
  %4634 = fmul fast float %4633, 0x3FE3C6EF40000000
  %4635 = frem fast float %4626, 2.560000e+02
  %4636 = frem fast float %4627, 2.560000e+02
  %4637 = fptoui float %4635 to i32
  %4638 = fptoui float %4636 to i32
  %4639 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4637, i32 %4638, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4639, 2
  %4643 = fadd fast float %4640, %4634
  %4644 = fadd fast float %4641, %4634
  %4645 = fadd fast float %4642, %4634
  %4646 = call float @dx.op.unary.f32(i32 22, float %4643)  ; Frc(value)
  %4647 = call float @dx.op.unary.f32(i32 22, float %4644)  ; Frc(value)
  %4648 = call float @dx.op.unary.f32(i32 22, float %4645)  ; Frc(value)
  %4649 = fmul fast float %4648, 0x401921FB60000000
  %4650 = call float @dx.op.unary.f32(i32 13, float %4649)  ; Sin(value)
  %4651 = call float @dx.op.unary.f32(i32 12, float %4649)  ; Cos(value)
  %4652 = fsub fast float -0.000000e+00, %4651
  %4653 = fmul fast float %4651, %4616
  %4654 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4617, float %4653)  ; FMad(a,b,c)
  %4655 = fmul fast float %4650, %4616
  %4656 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4617, float %4655)  ; FMad(a,b,c)
  %4657 = fadd fast float %4654, %4646
  %4658 = fadd fast float %4656, %4647
  %4659 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4660 = bitcast float %4659 to i32
  %4661 = icmp eq i32 %4660, 0
  br i1 %4661, label %4700, label %4662

; <label>:4662                                    ; preds = %4565
  %4663 = add i32 %4660, 0
  %4664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4665 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4664, %dx.types.Handle %111, float %4657, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float %4620, float %4621, float undef, float %4624, float %4625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4669 = extractvalue %dx.types.CBufRet.f32 %4667, 2
  %4670 = fsub fast float 1.000000e+00, %4275
  %4671 = call float @dx.op.binary.f32(i32 35, float %4670, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4672 = bitcast float %4275 to i32
  %4673 = sitofp i32 %4672 to float
  %4674 = fadd fast float %4673, 0xC1CFBF8940000000
  %4675 = fmul fast float %4669, %4674
  %4676 = fadd fast float %4675, 0x41CFBF8940000000
  %4677 = fptosi float %4676 to i32
  %4678 = bitcast i32 %4677 to float
  %4679 = bitcast float %4671 to i32
  %4680 = sitofp i32 %4679 to float
  %4681 = fadd fast float %4680, 0xC1CFBF8940000000
  %4682 = fmul fast float %4681, %4669
  %4683 = fadd fast float %4682, 0x41CFBF8940000000
  %4684 = fptosi float %4683 to i32
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul fast float %4678, %4668
  %4687 = fmul fast float %4685, %4668
  %4688 = fsub fast float %4671, %4686
  %4689 = fadd fast float %4687, %4671
  %4690 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4692 = fsub fast float %4666, %4690
  %4693 = fsub fast float %4691, %4690
  %4694 = bitcast float %4693 to i32
  %4695 = sub nsw i32 2129859010, %4694
  %4696 = bitcast i32 %4695 to float
  %4697 = fmul fast float %4696, %4692
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fcmp fast olt float %4698, 0x3F70101020000000
  br i1 %4699, label %4838, label %4700

; <label>:4700                                    ; preds = %4662, %4565
  %4701 = phi float [ %4698, %4662 ], [ %4275, %4565 ]
  %4702 = fmul fast float %4701, %4568
  %4703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.i32 %4703, 1
  %4705 = extractvalue %dx.types.CBufRet.i32 %4703, 0
  %4706 = add i32 %4705, 0
  %4707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4707, %dx.types.Handle %110, float %4657, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float %4620, float %4621, float undef, float %4624, float %4625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.ResRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.ResRet.f32 %4708, 2
  %4712 = extractvalue %dx.types.ResRet.f32 %4708, 3
  %4713 = and i32 %4704, 255
  %4714 = uitofp i32 %4713 to float
  %4715 = lshr i32 %4704, 8
  %4716 = and i32 %4715, 255
  %4717 = uitofp i32 %4716 to float
  %4718 = fmul fast float %4712, %4714
  %4719 = fadd fast float %4718, %4717
  %4720 = fmul fast float %4719, 0x3F70101000000000
  %4721 = fadd fast float %4720, 0xBFB99999A0000000
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4722, 0x3FF1C71C80000000
  %4724 = call float @dx.op.binary.f32(i32 36, float %4720, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4725 = fsub fast float 1.000000e+00, %4723
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4726, %4709
  %4728 = fmul fast float %4726, %4710
  %4729 = fmul fast float %4726, %4711
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4733 = fmul fast float %4723, %4709
  %4734 = fmul fast float %4723, %4710
  %4735 = fmul fast float %4723, %4711
  %4736 = fadd fast float %4733, %4724
  %4737 = fadd fast float %4734, %4724
  %4738 = fadd fast float %4735, %4724
  %4739 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.i32 %4742, 3
  %4744 = extractvalue %dx.types.CBufRet.i32 %4742, 2
  %4745 = add i32 %4744, 0
  %4746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4747 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4746, %dx.types.Handle %110, float %4657, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float %4620, float %4621, float undef, float %4624, float %4625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.ResRet.f32 %4747, 3
  %4752 = and i32 %4743, 255
  %4753 = uitofp i32 %4752 to float
  %4754 = lshr i32 %4743, 8
  %4755 = and i32 %4754, 255
  %4756 = uitofp i32 %4755 to float
  %4757 = lshr i32 %4743, 16
  %4758 = and i32 %4757, 255
  %4759 = uitofp i32 %4758 to float
  %4760 = fmul fast float %4759, 0x3F70101000000000
  %4761 = fmul fast float %4748, %4753
  %4762 = fadd fast float %4761, %4756
  %4763 = fmul fast float %4762, 0x3F70101000000000
  %4764 = fadd fast float %4749, -5.000000e-01
  %4765 = fadd fast float %4751, -5.000000e-01
  %4766 = fmul fast float %4764, %4760
  %4767 = fmul fast float %4765, %4760
  %4768 = fadd fast float %4766, 5.000000e-01
  %4769 = fadd fast float %4767, 5.000000e-01
  %4770 = fmul fast float %4768, 2.000000e+00
  %4771 = fadd fast float %4770, -1.000000e+00
  %4772 = fmul fast float %4769, 2.000000e+00
  %4773 = fadd fast float %4772, -1.000000e+00
  %4774 = fadd fast float %4771, %4773
  %4775 = fmul fast float %4774, 5.000000e-01
  %4776 = fsub fast float %4771, %4773
  %4777 = fmul fast float %4776, 5.000000e-01
  %4778 = call float @dx.op.unary.f32(i32 6, float %4775)  ; FAbs(value)
  %4779 = fsub fast float 1.000000e+00, %4778
  %4780 = call float @dx.op.unary.f32(i32 6, float %4777)  ; FAbs(value)
  %4781 = fsub fast float %4779, %4780
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4777, float %4781, float %4775, float %4777, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 25, float %4782)  ; Rsqrt(value)
  %4784 = fmul fast float %4775, %4783
  %4785 = fmul fast float %4777, %4783
  %4786 = select i1 %4613, i32 %4603, i32 %4604
  %4787 = select i1 %4611, i32 %4602, i32 %4786
  %4788 = sitofp i32 %4787 to float
  %4789 = fmul fast float %4781, %4788
  %4790 = fmul fast float %4789, %4783
  %4791 = select i1 %4613, float %4790, float %4785
  %4792 = select i1 %4613, float %4785, float %4790
  %4793 = select i1 %4611, float %4790, float %4784
  %4794 = select i1 %4611, float %4785, float %4791
  %4795 = select i1 %4611, float %4784, float %4792
  %4796 = fsub fast float %4730, %4554
  %4797 = fsub fast float %4731, %4555
  %4798 = fsub fast float %4732, %4556
  %4799 = fmul fast float %4796, %4702
  %4800 = fmul fast float %4797, %4702
  %4801 = fmul fast float %4798, %4702
  %4802 = fadd fast float %4799, %4554
  %4803 = fadd fast float %4800, %4555
  %4804 = fadd fast float %4801, %4556
  %4805 = fsub fast float %4739, %4560
  %4806 = fsub fast float %4740, %4561
  %4807 = fsub fast float %4741, %4562
  %4808 = fmul fast float %4805, %4702
  %4809 = fmul fast float %4806, %4702
  %4810 = fmul fast float %4807, %4702
  %4811 = fadd fast float %4808, %4560
  %4812 = fadd fast float %4809, %4561
  %4813 = fadd fast float %4810, %4562
  %4814 = fadd fast float %4793, %4557
  %4815 = fadd fast float %4794, %4558
  %4816 = fadd fast float %4795, %4559
  %4817 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float %4814, float %4815, float %4816)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call float @dx.op.unary.f32(i32 25, float %4817)  ; Rsqrt(value)
  %4819 = fmul fast float %4814, %4818
  %4820 = fmul fast float %4815, %4818
  %4821 = fmul fast float %4816, %4818
  %4822 = fsub fast float %4819, %4557
  %4823 = fsub fast float %4820, %4558
  %4824 = fsub fast float %4821, %4559
  %4825 = fmul fast float %4822, %4702
  %4826 = fmul fast float %4823, %4702
  %4827 = fmul fast float %4824, %4702
  %4828 = fadd fast float %4825, %4557
  %4829 = fadd fast float %4826, %4558
  %4830 = fadd fast float %4827, %4559
  %4831 = call float @dx.op.binary.f32(i32 36, float %4564, float %4750)  ; FMin(a,b)
  %4832 = fsub fast float %4831, %4564
  %4833 = fmul fast float %4832, %4702
  %4834 = fadd fast float %4833, %4564
  %4835 = fsub fast float %4763, %4563
  %4836 = fmul fast float %4835, %4702
  %4837 = fadd fast float %4836, %4563
  br label %4838

; <label>:4838                                    ; preds = %4700, %4662, %4553, %4269
  %4839 = phi float [ %4802, %4700 ], [ %4554, %4662 ], [ %4554, %4553 ], [ %3878, %4269 ]
  %4840 = phi float [ %4803, %4700 ], [ %4555, %4662 ], [ %4555, %4553 ], [ %3879, %4269 ]
  %4841 = phi float [ %4804, %4700 ], [ %4556, %4662 ], [ %4556, %4553 ], [ %3880, %4269 ]
  %4842 = phi float [ %4828, %4700 ], [ %4557, %4662 ], [ %4557, %4553 ], [ %3826, %4269 ]
  %4843 = phi float [ %4829, %4700 ], [ %4558, %4662 ], [ %4558, %4553 ], [ %3827, %4269 ]
  %4844 = phi float [ %4830, %4700 ], [ %4559, %4662 ], [ %4559, %4553 ], [ %3828, %4269 ]
  %4845 = phi float [ %4811, %4700 ], [ %4560, %4662 ], [ %4560, %4553 ], [ %3863, %4269 ]
  %4846 = phi float [ %4812, %4700 ], [ %4561, %4662 ], [ %4561, %4553 ], [ %3864, %4269 ]
  %4847 = phi float [ %4813, %4700 ], [ %4562, %4662 ], [ %4562, %4553 ], [ %3865, %4269 ]
  %4848 = phi float [ %4837, %4700 ], [ %4563, %4662 ], [ %4563, %4553 ], [ %3866, %4269 ]
  %4849 = phi float [ %4834, %4700 ], [ %4564, %4662 ], [ %4564, %4553 ], [ %3838, %4269 ]
  %4850 = fcmp fast une float %4273, 0.000000e+00
  %4851 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 25, float %4851)  ; Rsqrt(value)
  br i1 %4850, label %4860, label %4853

; <label>:4853                                    ; preds = %4838
  %4854 = fmul fast float %4852, %201
  %4855 = fmul fast float %4852, %202
  %4856 = fmul fast float %4852, %203
  %4857 = fsub fast float -0.000000e+00, %4854
  %4858 = fsub fast float -0.000000e+00, %4855
  %4859 = fsub fast float -0.000000e+00, %4856
  br label %5027

; <label>:4860                                    ; preds = %4838
  %4861 = fmul fast float %201, %4852
  %4862 = fsub fast float -0.000000e+00, %4861
  %4863 = fmul fast float %202, %4852
  %4864 = fsub fast float -0.000000e+00, %4863
  %4865 = fmul fast float %203, %4852
  %4866 = fsub fast float -0.000000e+00, %4865
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4864, float %4866, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = fmul fast float %4273, 2.500000e+00
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fmul fast float %4273, 0x4013FFFFE0000000
  %4871 = fadd fast float %4870, 0xBFFFFFFFE0000000
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4273, 0x4004000020000000
  %4874 = fadd fast float %4873, 0xBFF8000040000000
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %3845, 1.000000e+01
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = fmul fast float %4877, 2.000000e+00
  %4879 = fsub fast float 3.000000e+00, %4878
  %4880 = fmul fast float %4877, %4877
  %4881 = fmul fast float %4880, %4879
  %4882 = fsub fast float 1.000000e+00, %4881
  %4883 = fsub fast float 0x3FE3333340000000, %4848
  %4884 = fmul fast float %4883, 0x400AAAAAA0000000
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4882, %4885
  %4887 = fmul fast float %4839, 0x3FEA2B8620000000
  %4888 = fmul fast float %4840, 0x3FEA2B8620000000
  %4889 = fmul fast float %4841, 0x3FEA2B8620000000
  %4890 = fadd fast float %4887, 0x3FC81DFBA0000000
  %4891 = fmul fast float %4890, %4839
  %4892 = fadd fast float %4891, 0x3F910E6020000000
  %4893 = fadd fast float %4888, 0x3FC81DFBA0000000
  %4894 = fmul fast float %4893, %4840
  %4895 = fadd fast float %4894, 0x3F910E6020000000
  %4896 = fadd fast float %4889, 0x3FC81DFBA0000000
  %4897 = fmul fast float %4896, %4841
  %4898 = fadd fast float %4897, 0x3F910E6020000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = fsub fast float %4899, %4839
  %4903 = fsub fast float %4900, %4840
  %4904 = fsub fast float %4901, %4841
  %4905 = fmul fast float %4902, %4869
  %4906 = fmul fast float %4905, %4886
  %4907 = fmul fast float %4903, %4869
  %4908 = fmul fast float %4907, %4886
  %4909 = fmul fast float %4904, %4869
  %4910 = fmul fast float %4909, %4886
  %4911 = fadd fast float %4906, %4839
  %4912 = fadd fast float %4908, %4840
  %4913 = fadd fast float %4910, %4841
  %4914 = fmul fast float %4849, %4849
  %4915 = fmul fast float %4914, %4914
  %4916 = fadd fast float %4872, 1.000000e+00
  %4917 = fsub fast float %4916, %4886
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fsub fast float 1.000000e+00, %4915
  %4922 = call float @dx.op.binary.f32(i32 36, float %4918, float %4921)  ; FMin(a,b)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = fadd fast float %4920, 0xBFE4CCCCC0000000
  %4926 = fmul fast float %4925, 0x4006DB6DA0000000
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = fsub fast float 3.000000e+00, %4928
  %4930 = bitcast float %4845 to i32
  %4931 = ashr i32 %4930, 1
  %4932 = add nsw i32 %4931, 532487669
  %4933 = bitcast i32 %4932 to float
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4937, 2.000000e+00
  %4939 = bitcast float %4846 to i32
  %4940 = ashr i32 %4939, 1
  %4941 = add nsw i32 %4940, 532487669
  %4942 = bitcast i32 %4941 to float
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = bitcast float %4943 to i32
  %4945 = sub nsw i32 2129859010, %4944
  %4946 = bitcast i32 %4945 to float
  %4947 = fmul fast float %4946, 2.000000e+00
  %4948 = bitcast float %4847 to i32
  %4949 = ashr i32 %4948, 1
  %4950 = add nsw i32 %4949, 532487669
  %4951 = bitcast i32 %4950 to float
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = bitcast float %4952 to i32
  %4954 = sub nsw i32 2129859010, %4953
  %4955 = bitcast i32 %4954 to float
  %4956 = fmul fast float %4955, 2.000000e+00
  %4957 = fsub fast float 0x4002A9FBE0000000, %4938
  %4958 = fadd fast float %4938, 0x3FD54FDF00000000
  %4959 = bitcast float %4958 to i32
  %4960 = sub nsw i32 2129859010, %4959
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4961, %4957
  %4963 = fmul fast float %4962, %4962
  %4964 = fsub fast float 0x4002A9FBE0000000, %4947
  %4965 = fadd fast float %4947, 0x3FD54FDF00000000
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4968, %4964
  %4970 = fmul fast float %4969, %4969
  %4971 = fsub fast float 0x4002A9FBE0000000, %4956
  %4972 = fadd fast float %4956, 0x3FD54FDF00000000
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = fmul fast float %4975, %4971
  %4977 = fmul fast float %4976, %4976
  %4978 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4963)  ; FMax(a,b)
  %4979 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4970)  ; FMax(a,b)
  %4980 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4977)  ; FMax(a,b)
  %4981 = fsub fast float 1.000000e+00, %4867
  %4982 = fadd fast float %4981, %4882
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fsub fast float 1.000000e+00, %4254
  %4985 = fmul fast float %4924, %4984
  %4986 = fmul fast float %4927, %4927
  %4987 = fmul fast float %4986, %4985
  %4988 = fmul fast float %4987, %4929
  %4989 = fmul fast float %4984, 0xBFE99999A0000000
  %4990 = fmul fast float %4989, %4869
  %4991 = fmul fast float %4990, %4886
  %4992 = fadd fast float %4991, 1.000000e+00
  %4993 = fadd fast float %4848, -1.000000e+00
  %4994 = fmul fast float %4992, %4993
  %4995 = fadd fast float %4994, 1.000000e+00
  %4996 = fsub fast float %4978, %4845
  %4997 = fsub fast float %4979, %4846
  %4998 = fsub fast float %4980, %4847
  %4999 = fmul fast float %4988, %4996
  %5000 = fmul fast float %4988, %4997
  %5001 = fmul fast float %4988, %4998
  %5002 = fadd fast float %4999, %4845
  %5003 = fadd fast float %5000, %4846
  %5004 = fadd fast float %5001, %4847
  %5005 = fsub fast float %121, %4842
  %5006 = fsub fast float %122, %4843
  %5007 = fsub fast float %123, %4844
  %5008 = fmul fast float %4988, %5005
  %5009 = fmul fast float %4988, %5006
  %5010 = fmul fast float %4988, %5007
  %5011 = fadd fast float %5008, %4842
  %5012 = fadd fast float %5009, %4843
  %5013 = fadd fast float %5010, %4844
  %5014 = fmul fast float %4988, %4983
  %5015 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %5016 = fsub fast float 1.000000e+00, %5015
  %5017 = fmul fast float %5014, %5016
  %5018 = fadd fast float %5017, %5015
  %5019 = fsub fast float 1.000000e+00, %4849
  %5020 = fmul fast float %4988, %5019
  %5021 = fadd fast float %5020, %4849
  %5022 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5012, float %5013, float %5011, float %5012, float %5013)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = call float @dx.op.unary.f32(i32 25, float %5022)  ; Rsqrt(value)
  %5024 = fmul fast float %5011, %5023
  %5025 = fmul fast float %5012, %5023
  %5026 = fmul fast float %5013, %5023
  br label %5027

; <label>:5027                                    ; preds = %4860, %4853
  %5028 = phi float [ %4859, %4853 ], [ %4866, %4860 ]
  %5029 = phi float [ %4858, %4853 ], [ %4864, %4860 ]
  %5030 = phi float [ %4857, %4853 ], [ %4862, %4860 ]
  %5031 = phi float [ %4856, %4853 ], [ %4865, %4860 ]
  %5032 = phi float [ %4855, %4853 ], [ %4863, %4860 ]
  %5033 = phi float [ %4854, %4853 ], [ %4861, %4860 ]
  %5034 = phi float [ %4839, %4853 ], [ %4911, %4860 ]
  %5035 = phi float [ %4840, %4853 ], [ %4912, %4860 ]
  %5036 = phi float [ %4841, %4853 ], [ %4913, %4860 ]
  %5037 = phi float [ %4842, %4853 ], [ %5024, %4860 ]
  %5038 = phi float [ %4843, %4853 ], [ %5025, %4860 ]
  %5039 = phi float [ %4844, %4853 ], [ %5026, %4860 ]
  %5040 = phi float [ %4845, %4853 ], [ %5002, %4860 ]
  %5041 = phi float [ %4846, %4853 ], [ %5003, %4860 ]
  %5042 = phi float [ %4847, %4853 ], [ %5004, %4860 ]
  %5043 = phi float [ %4848, %4853 ], [ %5018, %4860 ]
  %5044 = phi float [ %4849, %4853 ], [ %5021, %4860 ]
  %5045 = fsub fast float -0.000000e+00, %203
  %5046 = select i1 %260, float 0.000000e+00, float %5042
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5030, float %5029, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5032, float %5031, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = fmul fast float %5049, 2.000000e+00
  %5051 = fmul fast float %5050, %5037
  %5052 = fmul fast float %5050, %5038
  %5053 = fmul fast float %5050, %5039
  %5054 = fsub fast float %5033, %5051
  %5055 = fsub fast float %5032, %5052
  %5056 = fsub fast float %5031, %5053
  %5057 = call float @dx.op.binary.f32(i32 36, float %5044, float 1.000000e+00)  ; FMin(a,b)
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = bitcast float %5058 to i32
  %5060 = ashr i32 %5059, 1
  %5061 = add nsw i32 %5060, 532487669
  %5062 = bitcast i32 %5061 to float
  %5063 = fsub fast float 1.000000e+00, %5043
  %5064 = call float @dx.op.binary.f32(i32 35, float %5063, float 0x3F847AE140000000)  ; FMax(a,b)
  %5065 = fmul fast float %5064, %5064
  %5066 = fmul fast float %5065, %5065
  %5067 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5062, float %5066, float %5067, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 0
  %5070 = fsub fast float 1.000000e+00, %5044
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = fsub fast float 1.000000e+00, %81
  %5075 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.binary.f32(i32 35, float %5075, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5077 = fdiv fast float %5074, %5076
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, 5.000000e-01
  %5081 = fadd fast float %5080, 5.000000e-01
  %5082 = fmul fast float %5081, %81
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, %5077
  %5086 = fadd fast float %5082, %5085
  %5087 = fsub fast float 5.000000e-01, %5080
  %5088 = fmul fast float %5087, %5034
  %5089 = fmul fast float %5087, %5035
  %5090 = fmul fast float %5087, %5036
  %5091 = fadd fast float %5086, %5088
  %5092 = fadd fast float %5086, %5089
  %5093 = fadd fast float %5086, %5090
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, 5.000000e-01
  %5097 = fadd fast float %5096, 5.000000e-01
  %5098 = fmul fast float %5097, %81
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5100, %5077
  %5102 = fadd fast float %5098, %5101
  %5103 = fsub fast float 5.000000e-01, %5096
  %5104 = fmul fast float %5103, %5034
  %5105 = fmul fast float %5103, %5035
  %5106 = fmul fast float %5103, %5036
  %5107 = fadd fast float %5102, %5104
  %5108 = fadd fast float %5102, %5105
  %5109 = fadd fast float %5102, %5106
  %5110 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = call float @dx.op.binary.f32(i32 36, float %5034, float %5112)  ; FMin(a,b)
  %5114 = fmul fast float %5113, %5058
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = bitcast float %5115 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = call float @dx.op.binary.f32(i32 36, float %5035, float %5112)  ; FMin(a,b)
  %5120 = fmul fast float %5119, %5058
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = call float @dx.op.binary.f32(i32 36, float %5036, float %5112)  ; FMin(a,b)
  %5126 = fmul fast float %5125, %5058
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = bitcast float %5127 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5057, %82
  %5132 = fmul fast float %5131, %5091
  %5133 = fmul fast float %5132, %5118
  %5134 = fmul fast float %5057, %83
  %5135 = fmul fast float %5134, %5092
  %5136 = fmul fast float %5135, %5124
  %5137 = fmul fast float %5057, %84
  %5138 = fmul fast float %5137, %5093
  %5139 = fmul fast float %5138, %5130
  %5140 = call float @dx.op.binary.f32(i32 36, float %5040, float %5112)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5058
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %5041, float %5112)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5058
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = call float @dx.op.binary.f32(i32 36, float %5046, float %5112)  ; FMin(a,b)
  %5153 = fmul fast float %5152, %5058
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = bitcast float %5154 to i32
  %5156 = sub nsw i32 2129859010, %5155
  %5157 = bitcast i32 %5156 to float
  %5158 = fmul fast float %5131, %5107
  %5159 = fmul fast float %5158, %5145
  %5160 = fmul fast float %5134, %5108
  %5161 = fmul fast float %5160, %5151
  %5162 = fmul fast float %5137, %5109
  %5163 = fmul fast float %5162, %5157
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5136, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = select i1 %260, float 0.000000e+00, float %5133
  %5166 = select i1 %260, float %5164, float %5136
  %5167 = select i1 %260, float 0.000000e+00, float %5139
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5161, float %5163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = select i1 %260, float 0.000000e+00, float %5159
  %5170 = select i1 %260, float %5168, float %5161
  %5171 = select i1 %260, float 0.000000e+00, float %5163
  %5172 = fmul fast float %5048, 9.843750e-01
  %5173 = fmul fast float %5043, 9.843750e-01
  %5174 = fadd fast float %5172, 7.812500e-03
  %5175 = fadd fast float %5173, 7.812500e-03
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 3
  %5179 = fmul fast float %5177, %5040
  %5180 = fmul fast float %5177, %5041
  %5181 = fmul fast float %5177, %5046
  %5182 = fadd fast float %5179, %5178
  %5183 = fadd fast float %5180, %5178
  %5184 = fadd fast float %5181, %5178
  %5185 = fcmp fast ogt float %3839, 0.000000e+00
  br i1 %5185, label %5186, label %5212

; <label>:5186                                    ; preds = %5027
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3839, float %5048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = fadd fast float %5188, -5.000000e-01
  %5192 = fadd fast float %5189, -5.000000e-01
  %5193 = fadd fast float %5190, -5.000000e-01
  %5194 = fsub fast float 1.000000e+00, %5040
  %5195 = fsub fast float 1.000000e+00, %5041
  %5196 = fsub fast float 1.000000e+00, %5046
  %5197 = fmul fast float %5040, 4.000000e+00
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %5198, %5191
  %5200 = fmul fast float %5041, 4.000000e+00
  %5201 = fmul fast float %5200, %5195
  %5202 = fmul fast float %5201, %5192
  %5203 = fmul fast float %5046, 4.000000e+00
  %5204 = fmul fast float %5203, %5196
  %5205 = fmul fast float %5204, %5193
  %5206 = fadd fast float %5199, %5182
  %5207 = fadd fast float %5202, %5183
  %5208 = fadd fast float %5205, %5184
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  br label %5212

; <label>:5212                                    ; preds = %5186, %5027
  %5213 = phi float [ %5209, %5186 ], [ %5182, %5027 ]
  %5214 = phi float [ %5210, %5186 ], [ %5183, %5027 ]
  %5215 = phi float [ %5211, %5186 ], [ %5184, %5027 ]
  %5216 = call float @dx.op.binary.f32(i32 35, float %5214, float %5215)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5213, float %5216)  ; FMax(a,b)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5217, %5043
  %5220 = fadd fast float %5219, %5043
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5223 = extractvalue %dx.types.CBufRet.f32 %5221, 3
  %5224 = fmul fast float %5220, %5222
  %5225 = fadd fast float %5224, %5223
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = fsub fast float 1.000000e+00, %5069
  %5228 = fadd fast float %5227, %5226
  %5229 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5230 = fcmp fast olt float %5229, 1.000000e+00
  br i1 %5230, label %5231, label %5707

; <label>:5231                                    ; preds = %5212
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 2
  %5234 = extractvalue %dx.types.CBufRet.f32 %5232, 3
  %5235 = fmul fast float %5233, %114
  %5236 = fmul fast float %5234, %115
  %5237 = fptoui float %5235 to i32
  %5238 = fptoui float %5236 to i32
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5242 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5243 = fadd fast float %101, -4.000000e+00
  %5244 = call float @dx.op.binary.f32(i32 35, float %5243, float 0.000000e+00)  ; FMax(a,b)
  %5245 = fadd fast float %5244, %5240
  %5246 = fmul fast float %5245, %5241
  %5247 = call float @dx.op.unary.f32(i32 23, float %5246)  ; Log(value)
  %5248 = fmul fast float %5247, %5242
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 2
  %5251 = fmul fast float %5248, %5250
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.i32 %5253, 1
  %5255 = add i32 %5254, -1
  %5256 = uitofp i32 %5254 to float
  %5257 = fmul fast float %5256, %5252
  %5258 = fptoui float %5257 to i32
  %5259 = call i32 @dx.op.binary.i32(i32 40, i32 %5258, i32 %5255)  ; UMin(a,b)
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 2
  %5262 = extractvalue %dx.types.CBufRet.i32 %5260, 3
  %5263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5238, i32 %5261, i32 %5237)  ; UMad(a,b,c)
  %5264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5259, i32 %5262, i32 %5263)  ; UMad(a,b,c)
  %5265 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5266 = fptoui float %5265 to i32
  %5267 = lshr i32 %5266, 5
  %5268 = call i32 @dx.op.binary.i32(i32 40, i32 %5267, i32 8191)  ; UMin(a,b)
  %5269 = fsub fast float %4244, %203
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fcmp fast ogt float %5270, 0.000000e+00
  %5272 = fcmp fast ogt float %5056, 0.000000e+00
  %5273 = and i1 %5272, %5271
  br i1 %5273, label %5274, label %5303

; <label>:5274                                    ; preds = %5231
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = call float @dx.op.binary.f32(i32 35, float %5275, float -1.000000e+00)  ; FMax(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5276, float 1.000000e+00)  ; FMin(a,b)
  %5278 = fmul fast float %5277, %5277
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fmul fast float %5279, 0x3FFC6E2300000000
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = fcmp fast ogt float %5281, 0.000000e+00
  %5283 = call float @dx.op.unary.f32(i32 24, float %5281)  ; Sqrt(value)
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = call float @dx.op.unary.f32(i32 23, float %5284)  ; Log(value)
  %5286 = fmul fast float %5285, 5.000000e+00
  %5287 = call float @dx.op.unary.f32(i32 21, float %5286)  ; Exp(value)
  %5288 = fmul fast float %5287, 0x3FEF591A60000000
  %5289 = fadd fast float %5288, 0x3F94DCB540000000
  %5290 = select i1 %5282, float %5289, float 1.000000e+00
  %5291 = fcmp fast oge float %5290, 1.000000e+00
  %5292 = fmul fast float %5275, 2.000000e+00
  %5293 = fadd fast float %5292, %5056
  %5294 = select i1 %5291, float %5293, float %5056
  %5295 = fsub fast float %5294, %5056
  %5296 = fmul fast float %5295, %5270
  %5297 = fadd fast float %5296, %5056
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5297, float %5054, float %5055, float %5297)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = call float @dx.op.unary.f32(i32 25, float %5298)  ; Rsqrt(value)
  %5300 = fmul fast float %5299, %5054
  %5301 = fmul fast float %5299, %5055
  %5302 = fmul fast float %5297, %5299
  br label %5303

; <label>:5303                                    ; preds = %5274, %5231
  %5304 = phi float [ %5300, %5274 ], [ %5054, %5231 ]
  %5305 = phi float [ %5301, %5274 ], [ %5055, %5231 ]
  %5306 = phi float [ %5302, %5274 ], [ %5056, %5231 ]
  %5307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.i32 %5307, 2
  %5309 = add nsw i32 %5308, -1
  %5310 = call i32 @dx.op.binary.i32(i32 37, i32 %5309, i32 0)  ; IMax(a,b)
  %5311 = shl i32 %5268, 2
  %5312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5311, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.i32 %5312, 0
  %5314 = lshr i32 %5313, 16
  %5315 = and i32 %5313, 65535
  %5316 = lshr i32 %5313, 21
  %5317 = lshr i32 %5315, 5
  %5318 = call i32 @dx.op.binary.i32(i32 40, i32 %5317, i32 %5310)  ; UMin(a,b)
  %5319 = icmp ugt i32 %5316, %5318
  br i1 %5319, label %5683, label %5320

; <label>:5320                                    ; preds = %5303
  br label %5321

; <label>:5321                                    ; preds = %5675, %5320
  %5322 = phi float [ %5676, %5675 ], [ 0.000000e+00, %5320 ]
  %5323 = phi float [ %5677, %5675 ], [ 0.000000e+00, %5320 ]
  %5324 = phi float [ %5678, %5675 ], [ 0.000000e+00, %5320 ]
  %5325 = phi float [ %5679, %5675 ], [ 1.000000e+00, %5320 ]
  %5326 = phi i32 [ %5680, %5675 ], [ %5316, %5320 ]
  %5327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.i32 %5327, 2
  %5329 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5264, i32 %5328, i32 %5326)  ; UMad(a,b,c)
  %5330 = shl i32 %5329, 2
  %5331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.i32 %5331, 0
  %5333 = shl i32 %5326, 5
  %5334 = sub nsw i32 %5314, %5333
  %5335 = call i32 @dx.op.binary.i32(i32 37, i32 %5334, i32 0)  ; IMax(a,b)
  %5336 = call i32 @dx.op.binary.i32(i32 38, i32 %5335, i32 31)  ; IMin(a,b)
  %5337 = sub nsw i32 1, %5314
  %5338 = add nsw i32 %5337, %5315
  %5339 = call i32 @dx.op.binary.i32(i32 37, i32 %5338, i32 0)  ; IMax(a,b)
  %5340 = call i32 @dx.op.binary.i32(i32 38, i32 %5339, i32 32)  ; IMin(a,b)
  %5341 = and i32 %5340, 31
  %5342 = shl i32 -1, %5341
  %5343 = xor i32 %5342, -1
  %5344 = and i32 %5336, 31
  %5345 = shl i32 %5343, %5344
  %5346 = icmp eq i32 %5340, 32
  %5347 = select i1 %5346, i32 -1, i32 %5345
  %5348 = and i32 %5347, %5332
  %5349 = icmp eq i32 %5348, 0
  br i1 %5349, label %5675, label %5350

; <label>:5350                                    ; preds = %5321
  br label %5351

; <label>:5351                                    ; preds = %5458, %5350
  %5352 = phi float [ %5459, %5458 ], [ %5322, %5350 ]
  %5353 = phi float [ %5460, %5458 ], [ %5323, %5350 ]
  %5354 = phi float [ %5461, %5458 ], [ %5324, %5350 ]
  %5355 = phi float [ %5462, %5458 ], [ %5325, %5350 ]
  %5356 = phi i32 [ %5361, %5458 ], [ %5348, %5350 ]
  %5357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5356)  ; FirstbitLo(value)
  %5358 = add i32 %5357, %5333
  %5359 = and i32 %5357, 31
  %5360 = shl i32 1, %5359
  %5361 = xor i32 %5360, %5356
  %5362 = mul i32 %5358, 72
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = add i32 %5362, 12
  %5368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.i32 %5368, 0
  %5370 = add i32 %5362, 16
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.ResRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.ResRet.f32 %5371, 2
  %5375 = add i32 %5362, 28
  %5376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = add i32 %5362, 32
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.ResRet.f32 %5379, 3
  %5384 = add i32 %5362, 48
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = add i32 %5362, 56
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = add i32 %5362, 64
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = mul i32 %5358, 60
  %5397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 1
  %5400 = extractvalue %dx.types.ResRet.f32 %5397, 2
  %5401 = add i32 %5396, 12
  %5402 = add i32 %5396, 48
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.ResRet.f32 %5403, 2
  %5407 = and i32 %5369, 32767
  %5408 = bitcast float %5364 to i32
  %5409 = icmp eq i32 %5408, -1
  %5410 = bitcast float %5365 to i32
  %5411 = and i32 %5369, 32768
  %5412 = icmp ne i32 %5411, 0
  %5413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5414 = extractvalue %dx.types.CBufRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.CBufRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.CBufRet.f32 %5413, 2
  %5417 = fsub fast float %5398, %5414
  %5418 = fsub fast float %5399, %5415
  %5419 = fsub fast float %5400, %5416
  %5420 = fsub fast float %201, %5417
  %5421 = fsub fast float %202, %5418
  %5422 = fsub fast float %203, %5419
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = add i32 %5396, 24
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5430, float %5431, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = add i32 %5396, 36
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.ResRet.f32 %5435, 2
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5441 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5442 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5443 = fsub fast float %5404, %5440
  %5444 = fsub fast float %5405, %5441
  %5445 = fsub fast float %5406, %5442
  %5446 = fmul fast float %5443, %5372
  %5447 = fmul fast float %5444, %5373
  %5448 = fmul fast float %5445, %5374
  %5449 = call float @dx.op.binary.f32(i32 36, float %5447, float %5448)  ; FMin(a,b)
  %5450 = call float @dx.op.binary.f32(i32 36, float %5446, float %5449)  ; FMin(a,b)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5355, float %5451)  ; FMin(a,b)
  %5453 = uitofp i1 %5412 to float
  %5454 = fadd fast float %5270, 1.000000e+00
  %5455 = fsub fast float %5454, %5453
  %5456 = fmul fast float %5452, %5455
  %5457 = fcmp fast ogt float %5456, 0.000000e+00
  br i1 %5457, label %5464, label %5458

; <label>:5458                                    ; preds = %5606, %5351
  %5459 = phi float [ %5670, %5606 ], [ %5352, %5351 ]
  %5460 = phi float [ %5671, %5606 ], [ %5353, %5351 ]
  %5461 = phi float [ %5672, %5606 ], [ %5354, %5351 ]
  %5462 = phi float [ %5673, %5606 ], [ %5355, %5351 ]
  %5463 = icmp eq i32 %5356, %5360
  br i1 %5463, label %5674, label %5351

; <label>:5464                                    ; preds = %5351
  br i1 %5409, label %5522, label %5465

; <label>:5465                                    ; preds = %5464
  %5466 = fsub fast float -0.000000e+00, %5424
  %5467 = fsub fast float -0.000000e+00, %5425
  %5468 = fsub fast float -0.000000e+00, %5426
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = fsub fast float -0.000000e+00, %5469
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = fadd fast float %5471, %5387
  %5473 = fadd fast float %5386, %5471
  %5474 = fsub fast float -0.000000e+00, %5473
  %5475 = fcmp ogt float %5469, -0.000000e+00
  %5476 = select i1 %5475, float %5474, float %5472
  %5477 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5478 = fdiv fast float 1.000000e+00, %5477
  %5479 = fmul fast float %5476, %5478
  %5480 = call float @dx.op.binary.f32(i32 35, float %5479, float 0.000000e+00)  ; FMax(a,b)
  %5481 = fsub fast float -0.000000e+00, %5430
  %5482 = fsub fast float -0.000000e+00, %5431
  %5483 = fsub fast float -0.000000e+00, %5432
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = fsub fast float -0.000000e+00, %5484
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fadd fast float %5486, %5391
  %5488 = fadd fast float %5390, %5486
  %5489 = fsub fast float -0.000000e+00, %5488
  %5490 = fcmp ogt float %5484, -0.000000e+00
  %5491 = select i1 %5490, float %5489, float %5487
  %5492 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5493 = fdiv fast float 1.000000e+00, %5492
  %5494 = fmul fast float %5491, %5493
  %5495 = call float @dx.op.binary.f32(i32 35, float %5494, float 0.000000e+00)  ; FMax(a,b)
  %5496 = fsub fast float -0.000000e+00, %5436
  %5497 = fsub fast float -0.000000e+00, %5437
  %5498 = fsub fast float -0.000000e+00, %5438
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fadd fast float %5501, %5395
  %5503 = fadd fast float %5394, %5501
  %5504 = fsub fast float -0.000000e+00, %5503
  %5505 = fcmp ogt float %5499, -0.000000e+00
  %5506 = select i1 %5505, float %5504, float %5502
  %5507 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5508 = fdiv fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5506, %5508
  %5510 = call float @dx.op.binary.f32(i32 35, float %5509, float 0.000000e+00)  ; FMax(a,b)
  %5511 = call float @dx.op.binary.f32(i32 36, float %5495, float %5510)  ; FMin(a,b)
  %5512 = call float @dx.op.binary.f32(i32 36, float %5480, float %5511)  ; FMin(a,b)
  %5513 = fmul fast float %5512, %5304
  %5514 = fmul fast float %5512, %5305
  %5515 = fmul fast float %5512, %5306
  %5516 = fadd fast float %5513, %201
  %5517 = fadd fast float %5514, %202
  %5518 = fadd fast float %5515, %203
  %5519 = fsub fast float %5516, %5364
  %5520 = fsub fast float %5517, %5365
  %5521 = fsub fast float %5518, %5366
  br label %5529

; <label>:5522                                    ; preds = %5464
  %5523 = fmul fast float %5304, 8.096000e+03
  %5524 = fmul fast float %5305, 8.096000e+03
  %5525 = fmul fast float %5306, 8.096000e+03
  %5526 = fadd fast float %5523, %201
  %5527 = fadd fast float %5524, %202
  %5528 = fadd fast float %5525, %203
  br label %5529

; <label>:5529                                    ; preds = %5522, %5465
  %5530 = phi float [ %5304, %5522 ], [ %5519, %5465 ]
  %5531 = phi float [ %5305, %5522 ], [ %5520, %5465 ]
  %5532 = phi float [ %5306, %5522 ], [ %5521, %5465 ]
  %5533 = phi float [ %5526, %5522 ], [ %5516, %5465 ]
  %5534 = phi float [ %5527, %5522 ], [ %5517, %5465 ]
  %5535 = phi float [ %5528, %5522 ], [ %5518, %5465 ]
  %5536 = fcmp fast olt float %5383, 1.000000e+00
  br i1 %5536, label %5537, label %5568, !dx.controlflow.hints !100

; <label>:5537                                    ; preds = %5529
  %5538 = fmul fast float %5532, %5381
  %5539 = fmul fast float %5531, %5382
  %5540 = fsub fast float %5538, %5539
  %5541 = fmul fast float %5530, %5382
  %5542 = fmul fast float %5532, %5380
  %5543 = fsub fast float %5541, %5542
  %5544 = fmul fast float %5531, %5380
  %5545 = fmul fast float %5530, %5381
  %5546 = fsub fast float %5544, %5545
  %5547 = fmul fast float %5540, 2.000000e+00
  %5548 = fmul fast float %5543, 2.000000e+00
  %5549 = fmul fast float %5546, 2.000000e+00
  %5550 = fmul fast float %5547, %5383
  %5551 = fmul fast float %5548, %5383
  %5552 = fmul fast float %5549, %5383
  %5553 = fmul fast float %5549, %5381
  %5554 = fmul fast float %5548, %5382
  %5555 = fmul fast float %5547, %5382
  %5556 = fmul fast float %5549, %5380
  %5557 = fmul fast float %5548, %5380
  %5558 = fmul fast float %5547, %5381
  %5559 = fadd fast float %5553, %5530
  %5560 = fadd fast float %5559, %5550
  %5561 = fsub fast float %5560, %5554
  %5562 = fsub fast float %5531, %5556
  %5563 = fadd fast float %5562, %5551
  %5564 = fadd fast float %5563, %5555
  %5565 = fadd fast float %5552, %5532
  %5566 = fsub fast float %5565, %5558
  %5567 = fadd fast float %5566, %5557
  br label %5568

; <label>:5568                                    ; preds = %5537, %5529
  %5569 = phi float [ %5561, %5537 ], [ %5530, %5529 ]
  %5570 = phi float [ %5564, %5537 ], [ %5531, %5529 ]
  %5571 = phi float [ %5567, %5537 ], [ %5532, %5529 ]
  br i1 %5409, label %5603, label %5572

; <label>:5572                                    ; preds = %5568
  %5573 = fmul fast float %5043, 0x400187C840000000
  %5574 = fadd fast float %5573, 0xC00EFC2120000000
  %5575 = fmul fast float %5574, %5043
  %5576 = fadd fast float %5575, 0x3FE5D16340000000
  %5577 = fmul fast float %5576, %5043
  %5578 = fadd fast float %5577, 1.000000e+00
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fsub fast float %5533, %201
  %5581 = fsub fast float %5534, %202
  %5582 = fsub fast float %5535, %203
  %5583 = fsub fast float %5533, %5364
  %5584 = fsub fast float %5534, %5365
  %5585 = fsub fast float %5535, %5366
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = fadd fast float %5587, 0x3EE4F8B580000000
  %5589 = fdiv fast float %5586, %5588
  %5590 = bitcast float %5589 to i32
  %5591 = ashr i32 %5590, 1
  %5592 = add nsw i32 %5591, 532487669
  %5593 = bitcast i32 %5592 to float
  %5594 = fmul fast float %5593, %5579
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fmul fast float %5595, 0x4009981AE0000000
  %5597 = fsub fast float 0x40111BBD80000000, %5596
  %5598 = fmul fast float %5597, %5595
  %5599 = fadd fast float %5598, 0xC0009F6020000000
  %5600 = fmul fast float %5599, %5595
  %5601 = fadd fast float %5600, 1.000000e+00
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  br label %5606

; <label>:5603                                    ; preds = %5568
  %5604 = icmp ne i32 %5410, -1
  %5605 = zext i1 %5604 to i32
  br label %5606

; <label>:5606                                    ; preds = %5603, %5572
  %5607 = phi float [ %5043, %5603 ], [ %5602, %5572 ]
  %5608 = phi i32 [ %5605, %5603 ], [ 0, %5572 ]
  %5609 = fmul float %5607, 5.000000e+00
  %5610 = fsub float 5.000000e+00, %5609
  %5611 = icmp ne i32 %5608, 0
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 3
  %5614 = fadd fast float %5613, %5610
  %5615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5614)  ; FMax(a,b)
  %5616 = call float @dx.op.unary.f32(i32 6, float %5569)  ; FAbs(value)
  %5617 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5618 = fadd fast float %5617, %5616
  %5619 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5620 = fadd fast float %5618, %5619
  %5621 = fcmp fast oeq float %5620, 0.000000e+00
  %5622 = fdiv fast float 1.000000e+00, %5620
  %5623 = select i1 %5621, float 1.000000e+00, float %5622
  %5624 = fmul fast float %5623, %5569
  %5625 = fmul fast float %5623, %5570
  %5626 = call float @dx.op.unary.f32(i32 6, float %5625)  ; FAbs(value)
  %5627 = call float @dx.op.unary.f32(i32 6, float %5624)  ; FAbs(value)
  %5628 = fsub fast float 1.000000e+00, %5626
  %5629 = fsub fast float 1.000000e+00, %5627
  %5630 = fcmp fast oge float %5624, 0.000000e+00
  %5631 = fcmp fast oge float %5625, 0.000000e+00
  %5632 = select i1 %5630, float 1.000000e+00, float -1.000000e+00
  %5633 = select i1 %5631, float 1.000000e+00, float -1.000000e+00
  %5634 = fcmp fast ole float %5571, 0.000000e+00
  %5635 = fmul fast float %5632, %5628
  %5636 = fmul fast float %5633, %5629
  %5637 = select i1 %5634, float %5635, float %5624
  %5638 = select i1 %5634, float %5636, float %5625
  %5639 = fmul fast float %5637, 5.000000e-01
  %5640 = fmul fast float %5638, 5.000000e-01
  %5641 = fadd fast float %5639, 5.000000e-01
  %5642 = fadd fast float %5640, 5.000000e-01
  %5643 = uitofp i32 %5407 to float
  %5644 = call float @dx.op.binary.f32(i32 36, float %5615, float 3.000000e+00)  ; FMin(a,b)
  %5645 = fadd fast float %5644, 2.000000e+00
  %5646 = call float @dx.op.unary.f32(i32 21, float %5645)  ; Exp(value)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5648 = fmul fast float %5647, %5646
  %5649 = fmul fast float %5648, 2.000000e+00
  %5650 = fsub fast float 1.000000e+00, %5649
  %5651 = fmul fast float %5641, %5650
  %5652 = fmul fast float %5642, %5650
  %5653 = fadd fast float %5651, %5648
  %5654 = fadd fast float %5652, %5648
  %5655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5653, float %5654, float %5643, float undef, i32 0, i32 0, i32 undef, float %5615)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.f32 %5659, 3
  %5661 = fmul fast float %5660, %5377
  %5662 = call float @dx.op.binary.f32(i32 36, float %5110, float %5661)  ; FMin(a,b)
  %5663 = select i1 %5611, float %5662, float %5661
  %5664 = fmul fast float %5656, %5456
  %5665 = fmul fast float %5664, %5663
  %5666 = fmul fast float %5657, %5456
  %5667 = fmul fast float %5666, %5663
  %5668 = fmul fast float %5658, %5456
  %5669 = fmul fast float %5668, %5663
  %5670 = fadd fast float %5665, %5352
  %5671 = fadd fast float %5667, %5353
  %5672 = fadd fast float %5669, %5354
  %5673 = fsub fast float %5355, %5456
  br label %5458

; <label>:5674                                    ; preds = %5458
  br label %5675

; <label>:5675                                    ; preds = %5674, %5321
  %5676 = phi float [ %5322, %5321 ], [ %5459, %5674 ]
  %5677 = phi float [ %5323, %5321 ], [ %5460, %5674 ]
  %5678 = phi float [ %5324, %5321 ], [ %5461, %5674 ]
  %5679 = phi float [ %5325, %5321 ], [ %5462, %5674 ]
  %5680 = add i32 %5326, 1
  %5681 = icmp ugt i32 %5680, %5318
  br i1 %5681, label %5682, label %5321, !llvm.loop !101

; <label>:5682                                    ; preds = %5675
  br label %5683

; <label>:5683                                    ; preds = %5682, %5303
  %5684 = phi float [ 0.000000e+00, %5303 ], [ %5676, %5682 ]
  %5685 = phi float [ 0.000000e+00, %5303 ], [ %5677, %5682 ]
  %5686 = phi float [ 0.000000e+00, %5303 ], [ %5678, %5682 ]
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5685, float %5686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = select i1 %260, float 0.000000e+00, float %5684
  %5689 = select i1 %260, float %5687, float %5685
  %5690 = select i1 %260, float 0.000000e+00, float %5686
  %5691 = fcmp fast olt float %5229, 0.000000e+00
  %5692 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5693 = fmul fast float %5692, %5169
  %5694 = fmul fast float %5692, %5170
  %5695 = fmul fast float %5692, %5171
  %5696 = select i1 %5691, float %5169, float %5693
  %5697 = select i1 %5691, float %5170, float %5694
  %5698 = select i1 %5691, float %5171, float %5695
  %5699 = fsub fast float 1.000000e+00, %5692
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fmul fast float %5700, %5688
  %5702 = fmul fast float %5700, %5689
  %5703 = fmul fast float %5700, %5690
  %5704 = fadd fast float %5696, %5701
  %5705 = fadd fast float %5697, %5702
  %5706 = fadd fast float %5698, %5703
  br label %5707

; <label>:5707                                    ; preds = %5683, %5212
  %5708 = phi float [ %5169, %5212 ], [ %5704, %5683 ]
  %5709 = phi float [ %5170, %5212 ], [ %5705, %5683 ]
  %5710 = phi float [ %5171, %5212 ], [ %5706, %5683 ]
  %5711 = fmul fast float %5218, %5165
  %5712 = fmul fast float %5218, %5166
  %5713 = fmul fast float %5218, %5167
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5035, float %5036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fcmp fast ogt float %5714, 0x3E7FF19E20000000
  %5716 = fdiv fast float 1.000000e+00, %5714
  %5717 = select i1 %5715, float %5716, float 0.000000e+00
  %5718 = fmul fast float %5717, %5034
  %5719 = fmul fast float %5717, %5035
  %5720 = fmul fast float %5717, %5036
  %5721 = fadd fast float %5718, -1.000000e+00
  %5722 = fadd fast float %5719, -1.000000e+00
  %5723 = fadd fast float %5720, -1.000000e+00
  %5724 = fmul fast float %5721, 5.000000e-01
  %5725 = fmul fast float %5722, 5.000000e-01
  %5726 = fmul fast float %5723, 5.000000e-01
  %5727 = fadd fast float %5724, 1.000000e+00
  %5728 = fadd fast float %5725, 1.000000e+00
  %5729 = fadd fast float %5726, 1.000000e+00
  %5730 = fmul fast float %5708, %5213
  %5731 = fmul fast float %5709, %5214
  %5732 = fmul fast float %5710, %5215
  %5733 = fsub fast float 1.000000e+00, %5048
  %5734 = bitcast float %5733 to i32
  %5735 = sitofp i32 %5734 to float
  %5736 = fmul fast float %5735, 5.000000e+00
  %5737 = fadd fast float %5736, 0xC1EFBF8940000000
  %5738 = fptosi float %5737 to i32
  %5739 = bitcast i32 %5738 to float
  %5740 = fmul fast float %5739, %3840
  %5741 = fmul fast float %5165, %5740
  %5742 = fmul fast float %5741, %5218
  %5743 = fmul fast float %5742, %5727
  %5744 = fmul fast float %5166, %5740
  %5745 = fmul fast float %5744, %5218
  %5746 = fmul fast float %5745, %5728
  %5747 = fmul fast float %5167, %5740
  %5748 = fmul fast float %5747, %5218
  %5749 = fmul fast float %5748, %5729
  %5750 = fmul fast float %5711, %3836
  %5751 = fmul fast float %5712, %3836
  %5752 = fmul fast float %5713, %3836
  %5753 = fadd fast float %5730, %3832
  %5754 = fadd fast float %5753, %5743
  %5755 = fmul fast float %5754, %3836
  %5756 = fadd fast float %5731, %3833
  %5757 = fadd fast float %5756, %5746
  %5758 = fmul fast float %5757, %3836
  %5759 = fadd fast float %5732, %3834
  %5760 = fadd fast float %5759, %5749
  %5761 = fmul fast float %5760, %3836
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5764 = fcmp fast oeq float %5763, 0.000000e+00
  br i1 %5764, label %7468, label %5765

; <label>:5765                                    ; preds = %5707
  %5766 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5768 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 0
  %5775 = extractvalue %dx.types.CBufRet.f32 %5773, 1
  %5776 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5771, float %5772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = select i1 %260, float %5774, float %5770
  %5778 = select i1 %260, float %5776, float %5771
  %5779 = select i1 %260, float %5775, float %5772
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 2
  %5782 = fmul fast float %5781, %121
  %5783 = fmul fast float %5781, %122
  %5784 = fmul fast float %5781, %123
  %5785 = fadd fast float %5782, %201
  %5786 = fadd fast float %5783, %202
  %5787 = fadd fast float %5784, %203
  %5788 = fcmp fast olt float %5763, 0.000000e+00
  br i1 %5788, label %7046, label %5789

; <label>:5789                                    ; preds = %5765
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5799 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.CBufRet.f32 %5800, 3
  %5805 = fmul fast float %5791, %5785
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5792, float %5805)  ; FMad(a,b,c)
  %5807 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5793, float %5806)  ; FMad(a,b,c)
  %5808 = fadd fast float %5807, %5794
  %5809 = fmul fast float %5796, %5785
  %5810 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5797, float %5809)  ; FMad(a,b,c)
  %5811 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5798, float %5810)  ; FMad(a,b,c)
  %5812 = fadd fast float %5811, %5799
  %5813 = fmul fast float %5801, %5785
  %5814 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5802, float %5813)  ; FMad(a,b,c)
  %5815 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5803, float %5814)  ; FMad(a,b,c)
  %5816 = fadd fast float %5815, %5804
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = fcmp fast une float %5818, 0.000000e+00
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5824 = fmul fast float %5823, %5808
  %5825 = fmul fast float %5823, %5812
  %5826 = fadd fast float %5824, %5821
  %5827 = fadd fast float %5825, %5822
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5828, 3
  %5832 = fmul fast float %5831, %5808
  %5833 = fmul fast float %5831, %5812
  %5834 = fadd fast float %5832, %5829
  %5835 = fadd fast float %5833, %5830
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5838 = fsub fast float %5837, %5816
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = fmul fast float %5838, %5839
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  br i1 %5819, label %5903, label %5843

; <label>:5843                                    ; preds = %5789
  %5844 = extractvalue %dx.types.CBufRet.f32 %5828, 2
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5847 = fadd fast float %5846, %5844
  %5848 = fcmp fast ogt float %5847, 0.000000e+00
  br i1 %5848, label %5849, label %5873

; <label>:5849                                    ; preds = %5843
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = fsub fast float %5834, %5851
  %5854 = fsub fast float %5835, %5852
  %5855 = fcmp fast olt float %5853, 0.000000e+00
  %5856 = fcmp fast olt float %5854, 0.000000e+00
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5862 = select i1 %5855, float %5858, float %5860
  %5863 = select i1 %5856, float %5859, float %5861
  %5864 = fmul fast float %5862, %5853
  %5865 = fmul fast float %5863, %5854
  %5866 = call float @dx.op.unary.f32(i32 6, float %5864)  ; FAbs(value)
  %5867 = call float @dx.op.unary.f32(i32 6, float %5865)  ; FAbs(value)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5869 = call float @dx.op.binary.f32(i32 35, float %5866, float %5867)  ; FMax(a,b)
  %5870 = fsub fast float %5868, %5869
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = fmul fast float %5871, %5842
  br label %5873

; <label>:5873                                    ; preds = %5849, %5843
  %5874 = phi float [ %5872, %5849 ], [ 0.000000e+00, %5843 ]
  %5875 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5876 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5877 = fadd fast float %5876, %5875
  %5878 = fcmp fast ogt float %5877, 0.000000e+00
  br i1 %5878, label %5879, label %5903

; <label>:5879                                    ; preds = %5873
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = fsub fast float %5826, %5881
  %5884 = fsub fast float %5827, %5882
  %5885 = fcmp fast olt float %5883, 0.000000e+00
  %5886 = fcmp fast olt float %5884, 0.000000e+00
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.CBufRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5892 = select i1 %5885, float %5888, float %5890
  %5893 = select i1 %5886, float %5889, float %5891
  %5894 = fmul fast float %5892, %5883
  %5895 = fmul fast float %5893, %5884
  %5896 = call float @dx.op.unary.f32(i32 6, float %5894)  ; FAbs(value)
  %5897 = call float @dx.op.unary.f32(i32 6, float %5895)  ; FAbs(value)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5899 = call float @dx.op.binary.f32(i32 35, float %5896, float %5897)  ; FMax(a,b)
  %5900 = fsub fast float %5898, %5899
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = fmul fast float %5901, %5842
  br label %5903

; <label>:5903                                    ; preds = %5879, %5873, %5789
  %5904 = phi float [ 0.000000e+00, %5789 ], [ %5902, %5879 ], [ 0.000000e+00, %5873 ]
  %5905 = phi float [ 0.000000e+00, %5789 ], [ %5874, %5879 ], [ %5874, %5873 ]
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5912 = fsub fast float %5808, %5910
  %5913 = fsub fast float %5812, %5911
  %5914 = fcmp fast olt float %5912, 0.000000e+00
  %5915 = fcmp fast olt float %5913, 0.000000e+00
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5920 = extractvalue %dx.types.CBufRet.f32 %5916, 3
  %5921 = select i1 %5914, float %5917, float %5919
  %5922 = select i1 %5915, float %5918, float %5920
  %5923 = fmul fast float %5921, %5912
  %5924 = fmul fast float %5922, %5913
  %5925 = call float @dx.op.unary.f32(i32 6, float %5923)  ; FAbs(value)
  %5926 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5928 = call float @dx.op.binary.f32(i32 35, float %5925, float %5926)  ; FMax(a,b)
  %5929 = fsub fast float %5927, %5928
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = call float @dx.op.binary.f32(i32 36, float %5930, float %5908)  ; FMin(a,b)
  %5932 = fmul fast float %5931, %5842
  %5933 = fsub fast float %5904, %5932
  %5934 = fsub fast float %5905, %5904
  %5935 = fsub fast float %5934, %5932
  %5936 = call float @dx.op.binary.f32(i32 35, float %5904, float %5905)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5932, float %5936)  ; FMax(a,b)
  %5938 = fcmp fast olt float %5937, 1.000000e+00
  br i1 %5938, label %5939, label %6337, !dx.controlflow.hints !103

; <label>:5939                                    ; preds = %5903
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = fcmp fast une float %5941, 0.000000e+00
  br i1 %5942, label %5943, label %6337, !dx.controlflow.hints !104

; <label>:5943                                    ; preds = %5939
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.CBufRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.CBufRet.f32 %5954, 2
  %5958 = extractvalue %dx.types.CBufRet.f32 %5954, 3
  %5959 = fmul fast float %5945, %5785
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5946, float %5959)  ; FMad(a,b,c)
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5947, float %5960)  ; FMad(a,b,c)
  %5962 = fadd fast float %5961, %5948
  %5963 = fmul fast float %5950, %5785
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5951, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5952, float %5964)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5953
  %5967 = fmul fast float %5955, %5785
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %5956, float %5967)  ; FMad(a,b,c)
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5957, float %5968)  ; FMad(a,b,c)
  %5970 = fadd fast float %5969, %5958
  %5971 = fcmp fast oge float %5962, 1.000000e+00
  %5972 = fcmp fast oge float %5966, 1.000000e+00
  %5973 = or i1 %5971, %5972
  %5974 = fcmp fast olt float %5962, 0.000000e+00
  %5975 = fcmp fast olt float %5966, 0.000000e+00
  %5976 = or i1 %5974, %5975
  %5977 = or i1 %5973, %5976
  br i1 %5977, label %6337, label %5978, !dx.controlflow.hints !105

; <label>:5978                                    ; preds = %5943
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %5983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.i32 %5983, 2
  %5985 = uitofp i32 %5984 to float
  %5986 = extractvalue %dx.types.CBufRet.i32 %5983, 3
  %5987 = uitofp i32 %5986 to float
  %5988 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5989 = fmul fast float %5988, 2.000000e+00
  %5990 = fsub fast float %5962, %5980
  %5991 = fsub fast float %5966, %5981
  %5992 = fmul fast float %5989, %5990
  %5993 = fmul fast float %5989, %5991
  %5994 = fdiv fast float 1.000000e+00, %5768
  %5995 = fmul fast float %5993, %5994
  %5996 = call float @dx.op.unary.f32(i32 6, float %5995)  ; FAbs(value)
  %5997 = fmul fast float %5982, %5787
  %5998 = fmul fast float %5997, %5989
  %5999 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6000 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5999, float %5996)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %6000, float %6001)  ; FMax(a,b)
  %6003 = fmul fast float %6002, 2.000000e+00
  %6004 = call float @dx.op.unary.f32(i32 23, float %6003)  ; Log(value)
  %6005 = call float @dx.op.binary.f32(i32 35, float %6004, float %5985)  ; FMax(a,b)
  %6006 = call float @dx.op.unary.f32(i32 22, float %6005)  ; Frc(value)
  %6007 = fadd fast float %6006, 0xBFEA666660000000
  %6008 = fmul fast float %6007, 8.000000e+00
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = call float @dx.op.unary.f32(i32 27, float %6005)  ; Round_ni(value)
  %6011 = fadd fast float %6010, %6009
  %6012 = call float @dx.op.binary.f32(i32 36, float %6011, float %5987)  ; FMin(a,b)
  %6013 = call float @dx.op.unary.f32(i32 27, float %6012)  ; Round_ni(value)
  %6014 = fsub fast float -0.000000e+00, %6013
  %6015 = call float @dx.op.unary.f32(i32 21, float %6014)  ; Exp(value)
  %6016 = fmul fast float %6015, %5989
  %6017 = fmul fast float %6016, %5962
  %6018 = fmul fast float %6016, %5966
  %6019 = fmul fast float %6017, 2.500000e-01
  %6020 = fmul fast float %6018, 2.500000e-01
  %6021 = fadd fast float %6019, 5.000000e-01
  %6022 = fadd fast float %6020, 5.000000e-01
  %6023 = fsub fast float %5987, %5985
  %6024 = fptoui float %6023 to i32
  %6025 = add i32 %6024, 320
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6025)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = fcmp fast une float %6012, %5987
  %6030 = fsub fast float %5962, %6027
  %6031 = fsub fast float %5966, %6028
  %6032 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6033 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6034 = fmul fast float %6032, %6016
  %6035 = fmul fast float %6033, %6016
  %6036 = fcmp fast olt float %6034, 1.000000e+00
  %6037 = fcmp fast olt float %6035, 1.000000e+00
  %6038 = and i1 %6036, %6037
  %6039 = or i1 %6029, %6038
  br i1 %6039, label %6040, label %6337, !dx.controlflow.hints !106

; <label>:6040                                    ; preds = %5978
  %6041 = fmul fast float %6018, 5.000000e-01
  %6042 = fmul fast float %6017, 5.000000e-01
  %6043 = fadd fast float %6041, 5.000000e-01
  %6044 = fadd fast float %6042, 5.000000e-01
  %6045 = sitofp i32 %5984 to float
  %6046 = fsub fast float %6012, %6045
  %6047 = call float @dx.op.unary.f32(i32 27, float %6046)  ; Round_ni(value)
  %6048 = call float @dx.op.unary.f32(i32 22, float %6012)  ; Frc(value)
  %6049 = call float @dx.op.unary.f32(i32 22, float %6044)  ; Frc(value)
  %6050 = call float @dx.op.unary.f32(i32 22, float %6043)  ; Frc(value)
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6049, float %6050, float %6047, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = extractvalue %dx.types.ResRet.f32 %6051, 3
  %6056 = fcmp fast ogt float %6048, 0.000000e+00
  br i1 %6056, label %6057, label %6078, !dx.controlflow.hints !107

; <label>:6057                                    ; preds = %6040
  %6058 = fadd fast float %6047, 1.000000e+00
  %6059 = call float @dx.op.unary.f32(i32 22, float %6021)  ; Frc(value)
  %6060 = call float @dx.op.unary.f32(i32 22, float %6022)  ; Frc(value)
  %6061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6059, float %6060, float %6058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.ResRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.ResRet.f32 %6061, 2
  %6065 = extractvalue %dx.types.ResRet.f32 %6061, 3
  %6066 = fsub fast float %6062, %6052
  %6067 = fsub fast float %6063, %6053
  %6068 = fsub fast float %6064, %6054
  %6069 = fsub fast float %6065, %6055
  %6070 = fmul fast float %6066, %6048
  %6071 = fmul fast float %6067, %6048
  %6072 = fmul fast float %6068, %6048
  %6073 = fmul fast float %6069, %6048
  %6074 = fadd fast float %6070, %6052
  %6075 = fadd fast float %6071, %6053
  %6076 = fadd fast float %6072, %6054
  %6077 = fadd fast float %6073, %6055
  br label %6078

; <label>:6078                                    ; preds = %6057, %6040
  %6079 = phi float [ %6074, %6057 ], [ %6052, %6040 ]
  %6080 = phi float [ %6075, %6057 ], [ %6053, %6040 ]
  %6081 = phi float [ %6076, %6057 ], [ %6054, %6040 ]
  %6082 = phi float [ %6077, %6057 ], [ %6055, %6040 ]
  %6083 = fadd fast float %6079, -5.000000e-01
  %6084 = fadd fast float %6081, -5.000000e-01
  %6085 = fmul fast float %6083, 0xBFD5555560000000
  %6086 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6084, float %6085)  ; FMad(a,b,c)
  %6087 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6080, float 0.000000e+00)  ; FMad(a,b,c)
  %6088 = fadd fast float %6087, %6082
  %6089 = fmul fast float %6083, -7.500000e-01
  %6090 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6084, float %6089)  ; FMad(a,b,c)
  %6091 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6080, float 0.000000e+00)  ; FMad(a,b,c)
  %6092 = fadd fast float %6091, %6082
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 0
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6100 = fsub fast float %6096, %6086
  %6101 = fsub fast float %6097, %6088
  %6102 = fsub fast float %6098, %6090
  %6103 = fsub fast float %6099, %6092
  %6104 = fmul fast float %6100, %6094
  %6105 = fmul fast float %6101, %6094
  %6106 = fmul fast float %6102, %6094
  %6107 = fmul fast float %6103, %6094
  %6108 = fadd fast float %6104, %6086
  %6109 = fadd fast float %6105, %6088
  %6110 = fadd fast float %6106, %6090
  %6111 = fadd fast float %6107, %6092
  %6112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.i32 %6112, 0
  %6114 = and i32 %6113, 536870911
  %6115 = uitofp i32 %6114 to float
  %6116 = fmul fast float %6115, %5962
  %6117 = fmul fast float %6115, %5966
  %6118 = fptoui float %6116 to i32
  %6119 = fptoui float %6117 to i32
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = and i32 %6121, 31
  %6123 = lshr i32 %6118, %6122
  %6124 = lshr i32 %6119, %6122
  %6125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.i32 %6125, 0
  %6127 = and i32 %6126, 31
  %6128 = shl i32 1, %6127
  %6129 = call i32 @dx.op.binary.i32(i32 40, i32 %6128, i32 4)  ; UMin(a,b)
  %6130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.i32 %6130, 0
  %6132 = extractvalue %dx.types.ResRet.i32 %6130, 1
  %6133 = icmp eq i32 %6129, 0
  br i1 %6133, label %6175, label %6134

; <label>:6134                                    ; preds = %6078
  br label %6135

; <label>:6135                                    ; preds = %6163, %6134
  %6136 = phi i32 [ %6166, %6163 ], [ 0, %6134 ]
  %6137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.i32 %6137, 0
  %6139 = lshr i32 %6138, 16
  %6140 = and i32 %6139, 31
  %6141 = shl i32 %6124, %6140
  %6142 = add i32 %6141, %6123
  %6143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.i32 %6143, 0
  %6145 = and i32 %6144, 31
  %6146 = shl i32 %6142, %6145
  %6147 = add i32 %6146, %6136
  %6148 = shl i32 %6147, 2
  %6149 = add i32 %6148, 32
  %6150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6149, i32 undef)  ; BufferLoad(srv,index,wot)
  %6151 = extractvalue %dx.types.ResRet.i32 %6150, 0
  %6152 = icmp slt i32 %6151, 0
  %6153 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6136
  %6154 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6136
  %6155 = bitcast float* %6153 to i32*
  %6156 = bitcast float* %6154 to i32*
  br i1 %6152, label %6157, label %6163

; <label>:6157                                    ; preds = %6135
  %6158 = and i32 %6151, 1073741823
  %6159 = add nuw nsw i32 %6158, 20
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6159, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.i32 %6160, 1
  br label %6163

; <label>:6163                                    ; preds = %6157, %6135
  %6164 = phi i32 [ %6161, %6157 ], [ %6131, %6135 ]
  %6165 = phi i32 [ %6162, %6157 ], [ %6132, %6135 ]
  store i32 %6164, i32* %6155, align 4
  store i32 %6165, i32* %6156, align 4
  %6166 = add nuw i32 %6136, 1
  %6167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.i32 %6167, 2
  %6169 = icmp eq i32 %6168, 0
  %6170 = icmp ugt i32 %6151, -1073741825
  %6171 = and i1 %6170, %6169
  %6172 = icmp ult i32 %6166, %6129
  %6173 = and i1 %6171, %6172
  br i1 %6173, label %6135, label %6174

; <label>:6174                                    ; preds = %6163
  br label %6175

; <label>:6175                                    ; preds = %6174, %6078
  %6176 = phi i32 [ 0, %6078 ], [ %6166, %6174 ]
  %6177 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %6178 = fptoui float %6177 to i32
  %6179 = icmp eq i32 %6178, 0
  br i1 %6179, label %6231, label %6180

; <label>:6180                                    ; preds = %6175
  br label %6181

; <label>:6181                                    ; preds = %6226, %6180
  %6182 = phi i32 [ %6227, %6226 ], [ %6176, %6180 ]
  %6183 = phi i32 [ %6228, %6226 ], [ 0, %6180 ]
  %6184 = lshr i32 %6183, 2
  %6185 = and i32 %6183, 3
  %6186 = add nuw nsw i32 %6184, 83
  %6187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6186)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.i32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.i32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.i32 %6187, 2
  %6191 = extractvalue %dx.types.CBufRet.i32 %6187, 3
  %6192 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6188, i32* %6192, align 4
  %6193 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6189, i32* %6193, align 4
  %6194 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6190, i32* %6194, align 4
  %6195 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6191, i32* %6195, align 4
  %6196 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6185
  %6197 = load i32, i32* %6196, align 4, !tbaa !108, !noalias !112
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = lshr i32 %6199, 16
  %6201 = and i32 %6200, 31
  %6202 = shl i32 %6124, %6201
  %6203 = add i32 %6202, %6123
  %6204 = shl i32 %6203, 2
  %6205 = add i32 %6204, %6197
  %6206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.i32 %6206, 0
  %6208 = icmp eq i32 %6207, 0
  br i1 %6208, label %6226, label %6209

; <label>:6209                                    ; preds = %6181
  %6210 = icmp slt i32 %6207, 0
  %6211 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6182
  %6212 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6182
  %6213 = bitcast float* %6211 to i32*
  %6214 = bitcast float* %6212 to i32*
  br i1 %6210, label %6215, label %6222

; <label>:6215                                    ; preds = %6209
  %6216 = and i32 %6207, 1073741823
  %6217 = add i32 %6197, 20
  %6218 = add i32 %6217, %6216
  %6219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6218, i32 undef)  ; BufferLoad(srv,index,wot)
  %6220 = extractvalue %dx.types.ResRet.i32 %6219, 0
  %6221 = extractvalue %dx.types.ResRet.i32 %6219, 1
  br label %6222

; <label>:6222                                    ; preds = %6215, %6209
  %6223 = phi i32 [ %6220, %6215 ], [ %6131, %6209 ]
  %6224 = phi i32 [ %6221, %6215 ], [ %6132, %6209 ]
  store i32 %6223, i32* %6213, align 4
  store i32 %6224, i32* %6214, align 4
  %6225 = add i32 %6182, 1
  br label %6226

; <label>:6226                                    ; preds = %6222, %6181
  %6227 = phi i32 [ %6182, %6181 ], [ %6225, %6222 ]
  %6228 = add nuw i32 %6183, 1
  %6229 = icmp eq i32 %6228, %6178
  br i1 %6229, label %6230, label %6181

; <label>:6230                                    ; preds = %6226
  br label %6231

; <label>:6231                                    ; preds = %6230, %6175
  %6232 = phi i32 [ %6176, %6175 ], [ %6227, %6230 ]
  %6233 = icmp eq i32 %6232, 1
  %6234 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6235 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6233, label %6236, label %6239

; <label>:6236                                    ; preds = %6231
  %6237 = load float, float* %6234, align 4
  %6238 = load float, float* %6235, align 4
  br label %6266

; <label>:6239                                    ; preds = %6231
  %6240 = load float, float* %6234, align 4
  %6241 = load float, float* %6235, align 4
  %6242 = fdiv fast float 1.000000e+00, %6241
  %6243 = fsub fast float %6240, %6242
  %6244 = icmp ugt i32 %6232, 1
  br i1 %6244, label %6245, label %6261

; <label>:6245                                    ; preds = %6239
  br label %6246

; <label>:6246                                    ; preds = %6246, %6245
  %6247 = phi float [ %6256, %6246 ], [ %6243, %6245 ]
  %6248 = phi float [ %6257, %6246 ], [ %6240, %6245 ]
  %6249 = phi i32 [ %6258, %6246 ], [ 1, %6245 ]
  %6250 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6249
  %6251 = load float, float* %6250, align 4
  %6252 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6249
  %6253 = load float, float* %6252, align 4
  %6254 = fdiv fast float 1.000000e+00, %6253
  %6255 = fsub fast float %6251, %6254
  %6256 = call float @dx.op.binary.f32(i32 36, float %6247, float %6255)  ; FMin(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6248, float %6251)  ; FMax(a,b)
  %6258 = add nuw i32 %6249, 1
  %6259 = icmp eq i32 %6258, %6232
  br i1 %6259, label %6260, label %6246

; <label>:6260                                    ; preds = %6246
  br label %6261

; <label>:6261                                    ; preds = %6260, %6239
  %6262 = phi float [ %6243, %6239 ], [ %6256, %6260 ]
  %6263 = phi float [ %6240, %6239 ], [ %6257, %6260 ]
  %6264 = fsub fast float %6263, %6262
  %6265 = fdiv fast float 1.000000e+00, %6264
  br label %6266

; <label>:6266                                    ; preds = %6261, %6236
  %6267 = phi float [ %6237, %6236 ], [ %6263, %6261 ]
  %6268 = phi float [ %6238, %6236 ], [ %6265, %6261 ]
  %6269 = fadd fast float %5970, %6267
  %6270 = fmul fast float %6269, %6268
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6271, 2.000000e+00
  %6273 = fsub fast float 1.000000e+00, %6272
  %6274 = fmul fast float %6108, %6108
  %6275 = fsub fast float %6109, %6274
  %6276 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6275)  ; FMax(a,b)
  %6277 = fdiv fast float 1.000000e+00, %6276
  %6278 = fmul fast float %6109, %6108
  %6279 = fsub fast float %6110, %6278
  %6280 = fsub fast float %6273, %6108
  %6281 = fmul fast float %6273, %6273
  %6282 = fsub fast float %6281, %6109
  %6283 = fmul fast float %6277, %6279
  %6284 = fmul fast float %6283, %6280
  %6285 = fsub fast float %6282, %6284
  %6286 = fmul fast float %6109, %6109
  %6287 = fsub fast float %6111, %6286
  %6288 = fmul fast float %6279, %6279
  %6289 = fmul fast float %6288, %6277
  %6290 = fsub fast float %6287, %6289
  %6291 = fdiv fast float %6285, %6290
  %6292 = fmul fast float %6291, %6279
  %6293 = fsub fast float %6280, %6292
  %6294 = fmul fast float %6293, %6277
  %6295 = fmul fast float %6294, %6108
  %6296 = fsub fast float 1.000000e+00, %6295
  %6297 = fmul fast float %6291, %6109
  %6298 = fsub fast float %6296, %6297
  %6299 = fmul fast float %6294, %6294
  %6300 = fmul fast float %6291, 4.000000e+00
  %6301 = fmul fast float %6300, %6298
  %6302 = fsub fast float %6299, %6301
  %6303 = call float @dx.op.unary.f32(i32 24, float %6302)  ; Sqrt(value)
  %6304 = fcmp fast oge float %6294, 0.000000e+00
  %6305 = fsub fast float -0.000000e+00, %6303
  %6306 = select i1 %6304, float %6305, float %6303
  %6307 = fsub fast float %6306, %6294
  %6308 = fdiv fast float %6307, %6291
  %6309 = fdiv fast float %6298, %6307
  %6310 = fmul fast float %6308, 5.000000e-01
  %6311 = fmul fast float %6309, 2.000000e+00
  %6312 = select i1 %6304, float %6310, float %6311
  %6313 = select i1 %6304, float %6311, float %6310
  %6314 = call float @dx.op.binary.f32(i32 35, float %6312, float %6313)  ; FMax(a,b)
  %6315 = call float @dx.op.binary.f32(i32 36, float %6312, float %6313)  ; FMin(a,b)
  %6316 = fcmp fast ogt float %6273, %6314
  %6317 = fsub fast float %6273, %6315
  %6318 = fsub fast float %6273, %6314
  %6319 = fsub fast float %6314, %6315
  %6320 = select i1 %6316, float %6318, float %6319
  %6321 = fmul float %6317, %6320
  %6322 = select i1 %6316, float %6315, float %6273
  %6323 = fcmp fast ogt float %6273, %6315
  %6324 = fmul fast float %6322, %6314
  %6325 = fadd fast float %6322, %6314
  %6326 = fmul fast float %6325, %6108
  %6327 = fadd fast float %6324, %6109
  %6328 = fsub fast float %6327, %6326
  %6329 = fdiv fast float %6328, %6321
  %6330 = select i1 %6323, float %6329, float 0.000000e+00
  %6331 = fsub fast float 1.000000e+00, %6330
  %6332 = select i1 %6316, float %6331, float %6330
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6093, 3
  %6335 = fmul fast float %6334, %6333
  %6336 = fsub fast float 1.000000e+00, %6335
  br label %6337

; <label>:6337                                    ; preds = %6266, %5978, %5943, %5939, %5903
  %6338 = phi float [ 1.000000e+00, %5903 ], [ %6336, %6266 ], [ 1.000000e+00, %5943 ], [ 1.000000e+00, %5978 ], [ 1.000000e+00, %5939 ]
  %6339 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %6339, label %6340, label %6504, !dx.controlflow.hints !121

; <label>:6340                                    ; preds = %6337
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6343 = fadd fast float %6342, %5816
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6349 = call float @dx.op.binary.f32(i32 35, float %6343, float 0.000000e+00)  ; FMax(a,b)
  %6350 = fadd fast float %6349, 0x3F10000000000000
  %6351 = fcmp fast oeq float %6348, 0.000000e+00
  br i1 %6351, label %6352, label %6419

; <label>:6352                                    ; preds = %6340
  %6353 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6355 = fmul fast float %6354, %5834
  %6356 = fmul fast float %6353, %5835
  %6357 = fadd fast float %6355, 5.000000e-01
  %6358 = call float @dx.op.unary.f32(i32 27, float %6357)  ; Round_ni(value)
  %6359 = fadd fast float %6356, 5.000000e-01
  %6360 = call float @dx.op.unary.f32(i32 27, float %6359)  ; Round_ni(value)
  %6361 = fsub fast float %6357, %6358
  %6362 = fsub fast float %6359, %6360
  %6363 = fadd fast float %6358, -5.000000e-01
  %6364 = fadd fast float %6360, -5.000000e-01
  %6365 = fmul fast float %6361, 2.000000e+00
  %6366 = fsub fast float 3.000000e+00, %6365
  %6367 = fadd fast float %6365, 1.000000e+00
  %6368 = fsub fast float 2.000000e+00, %6361
  %6369 = bitcast float %6366 to i32
  %6370 = sub nsw i32 2129859010, %6369
  %6371 = bitcast i32 %6370 to float
  %6372 = fmul fast float %6371, %6368
  %6373 = fadd fast float %6372, -1.000000e+00
  %6374 = bitcast float %6367 to i32
  %6375 = sub nsw i32 2129859010, %6374
  %6376 = bitcast i32 %6375 to float
  %6377 = fmul fast float %6376, %6361
  %6378 = fadd fast float %6377, 1.000000e+00
  %6379 = fmul fast float %6362, 2.000000e+00
  %6380 = fsub fast float 3.000000e+00, %6379
  %6381 = fadd fast float %6379, 1.000000e+00
  %6382 = fsub fast float 2.000000e+00, %6362
  %6383 = bitcast float %6380 to i32
  %6384 = sub nsw i32 2129859010, %6383
  %6385 = bitcast i32 %6384 to float
  %6386 = fmul fast float %6385, %6382
  %6387 = fadd fast float %6386, -1.000000e+00
  %6388 = bitcast float %6381 to i32
  %6389 = sub nsw i32 2129859010, %6388
  %6390 = bitcast i32 %6389 to float
  %6391 = fmul fast float %6390, %6362
  %6392 = fadd fast float %6391, 1.000000e+00
  %6393 = fadd fast float %6373, %6363
  %6394 = fmul fast float %6393, %6345
  %6395 = fadd fast float %6387, %6364
  %6396 = fmul fast float %6395, %6346
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6394, float %6396, float undef, float undef, i32 0, i32 0, i32 undef, float %6350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = fmul fast float %6398, %6366
  %6400 = fadd fast float %6378, %6363
  %6401 = fmul fast float %6400, %6345
  %6402 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6401, float %6396, float undef, float undef, i32 0, i32 0, i32 undef, float %6350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = fmul fast float %6403, %6367
  %6405 = fadd fast float %6392, %6364
  %6406 = fmul fast float %6405, %6346
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6394, float %6406, float undef, float undef, i32 0, i32 0, i32 undef, float %6350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = fmul fast float %6408, %6366
  %6410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6401, float %6406, float undef, float undef, i32 0, i32 0, i32 undef, float %6350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6411 = extractvalue %dx.types.ResRet.f32 %6410, 0
  %6412 = fmul fast float %6411, %6367
  %6413 = fadd fast float %6412, %6409
  %6414 = fmul fast float %6413, %6381
  %6415 = fadd fast float %6404, %6399
  %6416 = fmul fast float %6415, %6380
  %6417 = fadd fast float %6416, %6414
  %6418 = fmul fast float %6417, 6.250000e-02
  br label %6504

; <label>:6419                                    ; preds = %6340
  %6420 = fmul fast float %271, 0x401921FB60000000
  %6421 = call float @dx.op.unary.f32(i32 13, float %6420)  ; Sin(value)
  %6422 = call float @dx.op.unary.f32(i32 12, float %6420)  ; Cos(value)
  %6423 = fsub fast float -0.000000e+00, %6421
  br label %6424

; <label>:6424                                    ; preds = %6473, %6419
  %6425 = phi float [ 0.000000e+00, %6419 ], [ %6468, %6473 ]
  %6426 = phi float [ 0.000000e+00, %6419 ], [ %6470, %6473 ]
  %6427 = phi i32 [ 0, %6419 ], [ %6474, %6473 ]
  %6428 = mul i32 %6427, 2
  %6429 = add i32 0, %6428
  %6430 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6429
  %6431 = load float, float* %6430, align 4
  %6432 = mul i32 %6427, 2
  %6433 = add i32 1, %6432
  %6434 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6433
  %6435 = load float, float* %6434, align 4
  %6436 = fmul fast float %6431, %6422
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6423, float %6436)  ; FMad(a,b,c)
  %6438 = fmul fast float %6431, %6421
  %6439 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6422, float %6438)  ; FMad(a,b,c)
  %6440 = fmul fast float %6437, %6348
  %6441 = fmul fast float %6439, %6348
  %6442 = fadd fast float %6440, %5834
  %6443 = fadd fast float %6441, %5835
  %6444 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6442, float %6443, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6445 = extractvalue %dx.types.ResRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.ResRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.ResRet.f32 %6444, 2
  %6448 = extractvalue %dx.types.ResRet.f32 %6444, 3
  %6449 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6445, float* %6449, align 4
  %6450 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6446, float* %6450, align 4
  %6451 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6447, float* %6451, align 4
  %6452 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6448, float* %6452, align 4
  %6453 = fsub fast float %6445, %6350
  %6454 = fcmp fast olt float %6453, 0.000000e+00
  %6455 = select i1 %6454, float 0.000000e+00, float 1.000000e+00
  %6456 = fadd fast float %6455, %6425
  %6457 = fmul fast float %6455, %6453
  %6458 = fadd fast float %6457, %6426
  br label %6459

; <label>:6459                                    ; preds = %6459, %6424
  %6460 = phi i32 [ 1, %6424 ], [ %6471, %6459 ]
  %6461 = phi float [ %6458, %6424 ], [ %6470, %6459 ]
  %6462 = phi float [ %6456, %6424 ], [ %6468, %6459 ]
  %6463 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6460
  %6464 = load float, float* %6463, align 4, !tbaa !122, !noalias !112
  %6465 = fsub fast float %6464, %6350
  %6466 = fcmp fast olt float %6465, 0.000000e+00
  %6467 = select i1 %6466, float 0.000000e+00, float 1.000000e+00
  %6468 = fadd fast float %6467, %6462
  %6469 = fmul fast float %6467, %6465
  %6470 = fadd fast float %6469, %6461
  %6471 = add nuw nsw i32 %6460, 1
  %6472 = icmp eq i32 %6471, 4
  br i1 %6472, label %6473, label %6459, !llvm.loop !124

; <label>:6473                                    ; preds = %6459
  %6474 = add nuw nsw i32 %6427, 1
  %6475 = icmp eq i32 %6474, 8
  br i1 %6475, label %6476, label %6424, !llvm.loop !125

; <label>:6476                                    ; preds = %6473
  %6477 = fdiv fast float 1.000000e+00, %6468
  %6478 = fmul fast float %6477, %6470
  %6479 = fdiv fast float 1.000000e+00, %6350
  %6480 = fmul fast float %6478, %6479
  %6481 = call float @dx.op.unary.f32(i32 7, float %6480)  ; Saturate(value)
  %6482 = call float @dx.op.binary.f32(i32 35, float %6481, float 0.000000e+00)  ; FMax(a,b)
  %6483 = fmul fast float %6468, 3.125000e-02
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = fmul fast float %6484, 2.000000e+00
  %6486 = fadd fast float %6485, -1.000000e+00
  %6487 = fcmp fast ogt float %6486, 0.000000e+00
  %6488 = fcmp fast olt float %6486, 0.000000e+00
  %6489 = zext i1 %6487 to i32
  %6490 = zext i1 %6488 to i32
  %6491 = sub nsw i32 %6489, %6490
  %6492 = sitofp i32 %6491 to float
  %6493 = fmul fast float %6492, %6486
  %6494 = fsub fast float 1.000000e+00, %6493
  %6495 = fmul fast float %6494, %6494
  %6496 = fmul fast float %6495, %6494
  %6497 = fsub fast float %6494, %6496
  %6498 = fmul fast float %6497, %6482
  %6499 = fsub fast float 1.000000e+00, %6496
  %6500 = fsub fast float %6499, %6498
  %6501 = fmul fast float %6492, 5.000000e-01
  %6502 = fmul fast float %6501, %6500
  %6503 = fsub fast float 5.000000e-01, %6502
  br label %6504

; <label>:6504                                    ; preds = %6476, %6352, %6337
  %6505 = phi float [ 1.000000e+00, %6337 ], [ %6418, %6352 ], [ %6503, %6476 ]
  %6506 = fcmp fast ogt float %5933, 0.000000e+00
  br i1 %6506, label %6507, label %6671, !dx.controlflow.hints !126

; <label>:6507                                    ; preds = %6504
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 1
  %6510 = fadd fast float %6509, %5816
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 2
  %6513 = extractvalue %dx.types.CBufRet.f32 %6511, 3
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6516 = call float @dx.op.binary.f32(i32 35, float %6510, float 0.000000e+00)  ; FMax(a,b)
  %6517 = fadd fast float %6516, 0x3F10000000000000
  %6518 = fcmp fast oeq float %6515, 0.000000e+00
  br i1 %6518, label %6519, label %6586

; <label>:6519                                    ; preds = %6507
  %6520 = extractvalue %dx.types.CBufRet.f32 %6511, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6522 = fmul fast float %6521, %5826
  %6523 = fmul fast float %6520, %5827
  %6524 = fadd fast float %6522, 5.000000e-01
  %6525 = call float @dx.op.unary.f32(i32 27, float %6524)  ; Round_ni(value)
  %6526 = fadd fast float %6523, 5.000000e-01
  %6527 = call float @dx.op.unary.f32(i32 27, float %6526)  ; Round_ni(value)
  %6528 = fsub fast float %6524, %6525
  %6529 = fsub fast float %6526, %6527
  %6530 = fadd fast float %6525, -5.000000e-01
  %6531 = fadd fast float %6527, -5.000000e-01
  %6532 = fmul fast float %6528, 2.000000e+00
  %6533 = fsub fast float 3.000000e+00, %6532
  %6534 = fadd fast float %6532, 1.000000e+00
  %6535 = fsub fast float 2.000000e+00, %6528
  %6536 = bitcast float %6533 to i32
  %6537 = sub nsw i32 2129859010, %6536
  %6538 = bitcast i32 %6537 to float
  %6539 = fmul fast float %6538, %6535
  %6540 = fadd fast float %6539, -1.000000e+00
  %6541 = bitcast float %6534 to i32
  %6542 = sub nsw i32 2129859010, %6541
  %6543 = bitcast i32 %6542 to float
  %6544 = fmul fast float %6543, %6528
  %6545 = fadd fast float %6544, 1.000000e+00
  %6546 = fmul fast float %6529, 2.000000e+00
  %6547 = fsub fast float 3.000000e+00, %6546
  %6548 = fadd fast float %6546, 1.000000e+00
  %6549 = fsub fast float 2.000000e+00, %6529
  %6550 = bitcast float %6547 to i32
  %6551 = sub nsw i32 2129859010, %6550
  %6552 = bitcast i32 %6551 to float
  %6553 = fmul fast float %6552, %6549
  %6554 = fadd fast float %6553, -1.000000e+00
  %6555 = bitcast float %6548 to i32
  %6556 = sub nsw i32 2129859010, %6555
  %6557 = bitcast i32 %6556 to float
  %6558 = fmul fast float %6557, %6529
  %6559 = fadd fast float %6558, 1.000000e+00
  %6560 = fadd fast float %6540, %6530
  %6561 = fmul fast float %6560, %6512
  %6562 = fadd fast float %6554, %6531
  %6563 = fmul fast float %6562, %6513
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6561, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = fmul fast float %6565, %6533
  %6567 = fadd fast float %6545, %6530
  %6568 = fmul fast float %6567, %6512
  %6569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6568, float %6563, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 0
  %6571 = fmul fast float %6570, %6534
  %6572 = fadd fast float %6559, %6531
  %6573 = fmul fast float %6572, %6513
  %6574 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6561, float %6573, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = fmul fast float %6575, %6533
  %6577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6568, float %6573, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = fmul fast float %6578, %6534
  %6580 = fadd fast float %6579, %6576
  %6581 = fmul fast float %6580, %6548
  %6582 = fadd fast float %6571, %6566
  %6583 = fmul fast float %6582, %6547
  %6584 = fadd fast float %6583, %6581
  %6585 = fmul fast float %6584, 6.250000e-02
  br label %6671

; <label>:6586                                    ; preds = %6507
  %6587 = fmul fast float %271, 0x401921FB60000000
  %6588 = call float @dx.op.unary.f32(i32 13, float %6587)  ; Sin(value)
  %6589 = call float @dx.op.unary.f32(i32 12, float %6587)  ; Cos(value)
  %6590 = fsub fast float -0.000000e+00, %6588
  br label %6591

; <label>:6591                                    ; preds = %6640, %6586
  %6592 = phi float [ 0.000000e+00, %6586 ], [ %6635, %6640 ]
  %6593 = phi float [ 0.000000e+00, %6586 ], [ %6637, %6640 ]
  %6594 = phi i32 [ 0, %6586 ], [ %6641, %6640 ]
  %6595 = mul i32 %6594, 2
  %6596 = add i32 0, %6595
  %6597 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6596
  %6598 = load float, float* %6597, align 4
  %6599 = mul i32 %6594, 2
  %6600 = add i32 1, %6599
  %6601 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6600
  %6602 = load float, float* %6601, align 4
  %6603 = fmul fast float %6598, %6589
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6590, float %6603)  ; FMad(a,b,c)
  %6605 = fmul fast float %6598, %6588
  %6606 = call float @dx.op.tertiary.f32(i32 46, float %6602, float %6589, float %6605)  ; FMad(a,b,c)
  %6607 = fmul fast float %6604, %6515
  %6608 = fmul fast float %6606, %6515
  %6609 = fadd fast float %6607, %5826
  %6610 = fadd fast float %6608, %5827
  %6611 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6609, float %6610, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6612 = extractvalue %dx.types.ResRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.ResRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.ResRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.ResRet.f32 %6611, 3
  %6616 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6612, float* %6616, align 4
  %6617 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6613, float* %6617, align 4
  %6618 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6614, float* %6618, align 4
  %6619 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6615, float* %6619, align 4
  %6620 = fsub fast float %6612, %6517
  %6621 = fcmp fast olt float %6620, 0.000000e+00
  %6622 = select i1 %6621, float 0.000000e+00, float 1.000000e+00
  %6623 = fadd fast float %6622, %6592
  %6624 = fmul fast float %6622, %6620
  %6625 = fadd fast float %6624, %6593
  br label %6626

; <label>:6626                                    ; preds = %6626, %6591
  %6627 = phi i32 [ 1, %6591 ], [ %6638, %6626 ]
  %6628 = phi float [ %6625, %6591 ], [ %6637, %6626 ]
  %6629 = phi float [ %6623, %6591 ], [ %6635, %6626 ]
  %6630 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6627
  %6631 = load float, float* %6630, align 4, !tbaa !122, !noalias !112
  %6632 = fsub fast float %6631, %6517
  %6633 = fcmp fast olt float %6632, 0.000000e+00
  %6634 = select i1 %6633, float 0.000000e+00, float 1.000000e+00
  %6635 = fadd fast float %6634, %6629
  %6636 = fmul fast float %6634, %6632
  %6637 = fadd fast float %6636, %6628
  %6638 = add nuw nsw i32 %6627, 1
  %6639 = icmp eq i32 %6638, 4
  br i1 %6639, label %6640, label %6626, !llvm.loop !124

; <label>:6640                                    ; preds = %6626
  %6641 = add nuw nsw i32 %6594, 1
  %6642 = icmp eq i32 %6641, 8
  br i1 %6642, label %6643, label %6591, !llvm.loop !125

; <label>:6643                                    ; preds = %6640
  %6644 = fdiv fast float 1.000000e+00, %6635
  %6645 = fmul fast float %6644, %6637
  %6646 = fdiv fast float 1.000000e+00, %6517
  %6647 = fmul fast float %6645, %6646
  %6648 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6649 = call float @dx.op.binary.f32(i32 35, float %6648, float 0.000000e+00)  ; FMax(a,b)
  %6650 = fmul fast float %6635, 3.125000e-02
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = fmul fast float %6651, 2.000000e+00
  %6653 = fadd fast float %6652, -1.000000e+00
  %6654 = fcmp fast ogt float %6653, 0.000000e+00
  %6655 = fcmp fast olt float %6653, 0.000000e+00
  %6656 = zext i1 %6654 to i32
  %6657 = zext i1 %6655 to i32
  %6658 = sub nsw i32 %6656, %6657
  %6659 = sitofp i32 %6658 to float
  %6660 = fmul fast float %6659, %6653
  %6661 = fsub fast float 1.000000e+00, %6660
  %6662 = fmul fast float %6661, %6661
  %6663 = fmul fast float %6662, %6661
  %6664 = fsub fast float %6661, %6663
  %6665 = fmul fast float %6664, %6649
  %6666 = fsub fast float 1.000000e+00, %6663
  %6667 = fsub fast float %6666, %6665
  %6668 = fmul fast float %6659, 5.000000e-01
  %6669 = fmul fast float %6668, %6667
  %6670 = fsub fast float 5.000000e-01, %6669
  br label %6671

; <label>:6671                                    ; preds = %6643, %6519, %6504
  %6672 = phi float [ 1.000000e+00, %6504 ], [ %6585, %6519 ], [ %6670, %6643 ]
  %6673 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %6673, label %6674, label %6992, !dx.controlflow.hints !127

; <label>:6674                                    ; preds = %6671
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 0
  %6677 = fadd fast float %6676, %5816
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 2
  %6680 = extractvalue %dx.types.CBufRet.f32 %6678, 3
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  %6683 = call float @dx.op.binary.f32(i32 35, float %6677, float 0.000000e+00)  ; FMax(a,b)
  %6684 = fadd fast float %6683, 0x3F10000000000000
  %6685 = fcmp fast oeq float %6682, 0.000000e+00
  br i1 %5819, label %6686, label %6839, !dx.controlflow.hints !128

; <label>:6686                                    ; preds = %6674
  br i1 %6685, label %6687, label %6754

; <label>:6687                                    ; preds = %6686
  %6688 = extractvalue %dx.types.CBufRet.f32 %6678, 1
  %6689 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6690 = fmul fast float %6689, %5808
  %6691 = fmul fast float %6688, %5812
  %6692 = fadd fast float %6690, 5.000000e-01
  %6693 = call float @dx.op.unary.f32(i32 27, float %6692)  ; Round_ni(value)
  %6694 = fadd fast float %6691, 5.000000e-01
  %6695 = call float @dx.op.unary.f32(i32 27, float %6694)  ; Round_ni(value)
  %6696 = fsub fast float %6692, %6693
  %6697 = fsub fast float %6694, %6695
  %6698 = fadd fast float %6693, -5.000000e-01
  %6699 = fadd fast float %6695, -5.000000e-01
  %6700 = fmul fast float %6696, 2.000000e+00
  %6701 = fsub fast float 3.000000e+00, %6700
  %6702 = fadd fast float %6700, 1.000000e+00
  %6703 = fsub fast float 2.000000e+00, %6696
  %6704 = bitcast float %6701 to i32
  %6705 = sub nsw i32 2129859010, %6704
  %6706 = bitcast i32 %6705 to float
  %6707 = fmul fast float %6706, %6703
  %6708 = fadd fast float %6707, -1.000000e+00
  %6709 = bitcast float %6702 to i32
  %6710 = sub nsw i32 2129859010, %6709
  %6711 = bitcast i32 %6710 to float
  %6712 = fmul fast float %6711, %6696
  %6713 = fadd fast float %6712, 1.000000e+00
  %6714 = fmul fast float %6697, 2.000000e+00
  %6715 = fsub fast float 3.000000e+00, %6714
  %6716 = fadd fast float %6714, 1.000000e+00
  %6717 = fsub fast float 2.000000e+00, %6697
  %6718 = bitcast float %6715 to i32
  %6719 = sub nsw i32 2129859010, %6718
  %6720 = bitcast i32 %6719 to float
  %6721 = fmul fast float %6720, %6717
  %6722 = fadd fast float %6721, -1.000000e+00
  %6723 = bitcast float %6716 to i32
  %6724 = sub nsw i32 2129859010, %6723
  %6725 = bitcast i32 %6724 to float
  %6726 = fmul fast float %6725, %6697
  %6727 = fadd fast float %6726, 1.000000e+00
  %6728 = fadd fast float %6708, %6698
  %6729 = fmul fast float %6728, %6679
  %6730 = fadd fast float %6722, %6699
  %6731 = fmul fast float %6730, %6680
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6729, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = fmul fast float %6733, %6701
  %6735 = fadd fast float %6713, %6698
  %6736 = fmul fast float %6735, %6679
  %6737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6736, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = fmul fast float %6738, %6702
  %6740 = fadd fast float %6727, %6699
  %6741 = fmul fast float %6740, %6680
  %6742 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6729, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = fmul fast float %6743, %6701
  %6745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6736, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  %6747 = fmul fast float %6746, %6702
  %6748 = fadd fast float %6747, %6744
  %6749 = fmul fast float %6748, %6716
  %6750 = fadd fast float %6739, %6734
  %6751 = fmul fast float %6750, %6715
  %6752 = fadd fast float %6751, %6749
  %6753 = fmul fast float %6752, 6.250000e-02
  br label %6992

; <label>:6754                                    ; preds = %6686
  %6755 = fmul fast float %271, 0x401921FB60000000
  %6756 = call float @dx.op.unary.f32(i32 13, float %6755)  ; Sin(value)
  %6757 = call float @dx.op.unary.f32(i32 12, float %6755)  ; Cos(value)
  %6758 = fsub fast float -0.000000e+00, %6756
  br label %6759

; <label>:6759                                    ; preds = %6808, %6754
  %6760 = phi float [ 0.000000e+00, %6754 ], [ %6803, %6808 ]
  %6761 = phi float [ 0.000000e+00, %6754 ], [ %6805, %6808 ]
  %6762 = phi i32 [ 0, %6754 ], [ %6809, %6808 ]
  %6763 = mul i32 %6762, 2
  %6764 = add i32 0, %6763
  %6765 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6764
  %6766 = load float, float* %6765, align 4
  %6767 = mul i32 %6762, 2
  %6768 = add i32 1, %6767
  %6769 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6768
  %6770 = load float, float* %6769, align 4
  %6771 = fmul fast float %6766, %6757
  %6772 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6758, float %6771)  ; FMad(a,b,c)
  %6773 = fmul fast float %6766, %6756
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6757, float %6773)  ; FMad(a,b,c)
  %6775 = fmul fast float %6772, %6682
  %6776 = fmul fast float %6774, %6682
  %6777 = fadd fast float %6775, %5808
  %6778 = fadd fast float %6776, %5812
  %6779 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6777, float %6778, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.ResRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.ResRet.f32 %6779, 2
  %6783 = extractvalue %dx.types.ResRet.f32 %6779, 3
  %6784 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6780, float* %6784, align 4
  %6785 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6781, float* %6785, align 4
  %6786 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6782, float* %6786, align 4
  %6787 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6783, float* %6787, align 4
  %6788 = fsub fast float %6780, %6684
  %6789 = fcmp fast olt float %6788, 0.000000e+00
  %6790 = select i1 %6789, float 0.000000e+00, float 1.000000e+00
  %6791 = fadd fast float %6790, %6760
  %6792 = fmul fast float %6790, %6788
  %6793 = fadd fast float %6792, %6761
  br label %6794

; <label>:6794                                    ; preds = %6794, %6759
  %6795 = phi i32 [ 1, %6759 ], [ %6806, %6794 ]
  %6796 = phi float [ %6793, %6759 ], [ %6805, %6794 ]
  %6797 = phi float [ %6791, %6759 ], [ %6803, %6794 ]
  %6798 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6795
  %6799 = load float, float* %6798, align 4, !tbaa !122, !noalias !112
  %6800 = fsub fast float %6799, %6684
  %6801 = fcmp fast olt float %6800, 0.000000e+00
  %6802 = select i1 %6801, float 0.000000e+00, float 1.000000e+00
  %6803 = fadd fast float %6802, %6797
  %6804 = fmul fast float %6802, %6800
  %6805 = fadd fast float %6804, %6796
  %6806 = add nuw nsw i32 %6795, 1
  %6807 = icmp eq i32 %6806, 4
  br i1 %6807, label %6808, label %6794, !llvm.loop !124

; <label>:6808                                    ; preds = %6794
  %6809 = add nuw nsw i32 %6762, 1
  %6810 = icmp eq i32 %6809, 8
  br i1 %6810, label %6811, label %6759, !llvm.loop !125

; <label>:6811                                    ; preds = %6808
  %6812 = fdiv fast float 1.000000e+00, %6803
  %6813 = fmul fast float %6812, %6805
  %6814 = fdiv fast float 1.000000e+00, %6684
  %6815 = fmul fast float %6813, %6814
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = call float @dx.op.binary.f32(i32 35, float %6816, float 0.000000e+00)  ; FMax(a,b)
  %6818 = fmul fast float %6803, 3.125000e-02
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = fmul fast float %6819, 2.000000e+00
  %6821 = fadd fast float %6820, -1.000000e+00
  %6822 = fcmp fast ogt float %6821, 0.000000e+00
  %6823 = fcmp fast olt float %6821, 0.000000e+00
  %6824 = zext i1 %6822 to i32
  %6825 = zext i1 %6823 to i32
  %6826 = sub nsw i32 %6824, %6825
  %6827 = sitofp i32 %6826 to float
  %6828 = fmul fast float %6827, %6821
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = fmul fast float %6829, %6829
  %6831 = fmul fast float %6830, %6829
  %6832 = fsub fast float %6829, %6831
  %6833 = fmul fast float %6832, %6817
  %6834 = fsub fast float 1.000000e+00, %6831
  %6835 = fsub fast float %6834, %6833
  %6836 = fmul fast float %6827, 5.000000e-01
  %6837 = fmul fast float %6836, %6835
  %6838 = fsub fast float 5.000000e-01, %6837
  br label %6992

; <label>:6839                                    ; preds = %6674
  br i1 %6685, label %6840, label %6907

; <label>:6840                                    ; preds = %6839
  %6841 = extractvalue %dx.types.CBufRet.f32 %6678, 1
  %6842 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6843 = fmul fast float %6842, %5808
  %6844 = fmul fast float %6841, %5812
  %6845 = fadd fast float %6843, 5.000000e-01
  %6846 = call float @dx.op.unary.f32(i32 27, float %6845)  ; Round_ni(value)
  %6847 = fadd fast float %6844, 5.000000e-01
  %6848 = call float @dx.op.unary.f32(i32 27, float %6847)  ; Round_ni(value)
  %6849 = fsub fast float %6845, %6846
  %6850 = fsub fast float %6847, %6848
  %6851 = fadd fast float %6846, -5.000000e-01
  %6852 = fadd fast float %6848, -5.000000e-01
  %6853 = fmul fast float %6849, 2.000000e+00
  %6854 = fsub fast float 3.000000e+00, %6853
  %6855 = fadd fast float %6853, 1.000000e+00
  %6856 = fsub fast float 2.000000e+00, %6849
  %6857 = bitcast float %6854 to i32
  %6858 = sub nsw i32 2129859010, %6857
  %6859 = bitcast i32 %6858 to float
  %6860 = fmul fast float %6859, %6856
  %6861 = fadd fast float %6860, -1.000000e+00
  %6862 = bitcast float %6855 to i32
  %6863 = sub nsw i32 2129859010, %6862
  %6864 = bitcast i32 %6863 to float
  %6865 = fmul fast float %6864, %6849
  %6866 = fadd fast float %6865, 1.000000e+00
  %6867 = fmul fast float %6850, 2.000000e+00
  %6868 = fsub fast float 3.000000e+00, %6867
  %6869 = fadd fast float %6867, 1.000000e+00
  %6870 = fsub fast float 2.000000e+00, %6850
  %6871 = bitcast float %6868 to i32
  %6872 = sub nsw i32 2129859010, %6871
  %6873 = bitcast i32 %6872 to float
  %6874 = fmul fast float %6873, %6870
  %6875 = fadd fast float %6874, -1.000000e+00
  %6876 = bitcast float %6869 to i32
  %6877 = sub nsw i32 2129859010, %6876
  %6878 = bitcast i32 %6877 to float
  %6879 = fmul fast float %6878, %6850
  %6880 = fadd fast float %6879, 1.000000e+00
  %6881 = fadd fast float %6861, %6851
  %6882 = fmul fast float %6881, %6679
  %6883 = fadd fast float %6875, %6852
  %6884 = fmul fast float %6883, %6680
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6882, float %6884, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = fmul fast float %6886, %6854
  %6888 = fadd fast float %6866, %6851
  %6889 = fmul fast float %6888, %6679
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6889, float %6884, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = fmul fast float %6891, %6855
  %6893 = fadd fast float %6880, %6852
  %6894 = fmul fast float %6893, %6680
  %6895 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6882, float %6894, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 0
  %6897 = fmul fast float %6896, %6854
  %6898 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6889, float %6894, float undef, float undef, i32 0, i32 0, i32 undef, float %6684)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = fmul fast float %6899, %6855
  %6901 = fadd fast float %6900, %6897
  %6902 = fmul fast float %6901, %6869
  %6903 = fadd fast float %6892, %6887
  %6904 = fmul fast float %6903, %6868
  %6905 = fadd fast float %6904, %6902
  %6906 = fmul fast float %6905, 6.250000e-02
  br label %6992

; <label>:6907                                    ; preds = %6839
  %6908 = fmul fast float %271, 0x401921FB60000000
  %6909 = call float @dx.op.unary.f32(i32 13, float %6908)  ; Sin(value)
  %6910 = call float @dx.op.unary.f32(i32 12, float %6908)  ; Cos(value)
  %6911 = fsub fast float -0.000000e+00, %6909
  br label %6912

; <label>:6912                                    ; preds = %6961, %6907
  %6913 = phi float [ 0.000000e+00, %6907 ], [ %6956, %6961 ]
  %6914 = phi float [ 0.000000e+00, %6907 ], [ %6958, %6961 ]
  %6915 = phi i32 [ 0, %6907 ], [ %6962, %6961 ]
  %6916 = mul i32 %6915, 2
  %6917 = add i32 0, %6916
  %6918 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6917
  %6919 = load float, float* %6918, align 4
  %6920 = mul i32 %6915, 2
  %6921 = add i32 1, %6920
  %6922 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6921
  %6923 = load float, float* %6922, align 4
  %6924 = fmul fast float %6919, %6910
  %6925 = call float @dx.op.tertiary.f32(i32 46, float %6923, float %6911, float %6924)  ; FMad(a,b,c)
  %6926 = fmul fast float %6919, %6909
  %6927 = call float @dx.op.tertiary.f32(i32 46, float %6923, float %6910, float %6926)  ; FMad(a,b,c)
  %6928 = fmul fast float %6925, %6682
  %6929 = fmul fast float %6927, %6682
  %6930 = fadd fast float %6928, %5808
  %6931 = fadd fast float %6929, %5812
  %6932 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6930, float %6931, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.ResRet.f32 %6932, 3
  %6937 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6933, float* %6937, align 4
  %6938 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6934, float* %6938, align 4
  %6939 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6935, float* %6939, align 4
  %6940 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6936, float* %6940, align 4
  %6941 = fsub fast float %6933, %6684
  %6942 = fcmp fast olt float %6941, 0.000000e+00
  %6943 = select i1 %6942, float 0.000000e+00, float 1.000000e+00
  %6944 = fadd fast float %6943, %6913
  %6945 = fmul fast float %6943, %6941
  %6946 = fadd fast float %6945, %6914
  br label %6947

; <label>:6947                                    ; preds = %6947, %6912
  %6948 = phi i32 [ 1, %6912 ], [ %6959, %6947 ]
  %6949 = phi float [ %6946, %6912 ], [ %6958, %6947 ]
  %6950 = phi float [ %6944, %6912 ], [ %6956, %6947 ]
  %6951 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6948
  %6952 = load float, float* %6951, align 4, !tbaa !122, !noalias !112
  %6953 = fsub fast float %6952, %6684
  %6954 = fcmp fast olt float %6953, 0.000000e+00
  %6955 = select i1 %6954, float 0.000000e+00, float 1.000000e+00
  %6956 = fadd fast float %6955, %6950
  %6957 = fmul fast float %6955, %6953
  %6958 = fadd fast float %6957, %6949
  %6959 = add nuw nsw i32 %6948, 1
  %6960 = icmp eq i32 %6959, 4
  br i1 %6960, label %6961, label %6947, !llvm.loop !124

; <label>:6961                                    ; preds = %6947
  %6962 = add nuw nsw i32 %6915, 1
  %6963 = icmp eq i32 %6962, 8
  br i1 %6963, label %6964, label %6912, !llvm.loop !125

; <label>:6964                                    ; preds = %6961
  %6965 = fdiv fast float 1.000000e+00, %6956
  %6966 = fmul fast float %6965, %6958
  %6967 = fdiv fast float 1.000000e+00, %6684
  %6968 = fmul fast float %6966, %6967
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = call float @dx.op.binary.f32(i32 35, float %6969, float 0.000000e+00)  ; FMax(a,b)
  %6971 = fmul fast float %6956, 3.125000e-02
  %6972 = call float @dx.op.unary.f32(i32 7, float %6971)  ; Saturate(value)
  %6973 = fmul fast float %6972, 2.000000e+00
  %6974 = fadd fast float %6973, -1.000000e+00
  %6975 = fcmp fast ogt float %6974, 0.000000e+00
  %6976 = fcmp fast olt float %6974, 0.000000e+00
  %6977 = zext i1 %6975 to i32
  %6978 = zext i1 %6976 to i32
  %6979 = sub nsw i32 %6977, %6978
  %6980 = sitofp i32 %6979 to float
  %6981 = fmul fast float %6980, %6974
  %6982 = fsub fast float 1.000000e+00, %6981
  %6983 = fmul fast float %6982, %6982
  %6984 = fmul fast float %6983, %6982
  %6985 = fsub fast float %6982, %6984
  %6986 = fmul fast float %6985, %6970
  %6987 = fsub fast float 1.000000e+00, %6984
  %6988 = fsub fast float %6987, %6986
  %6989 = fmul fast float %6980, 5.000000e-01
  %6990 = fmul fast float %6989, %6988
  %6991 = fsub fast float 5.000000e-01, %6990
  br label %6992

; <label>:6992                                    ; preds = %6964, %6840, %6811, %6687, %6671
  %6993 = phi float [ 1.000000e+00, %6671 ], [ %6753, %6687 ], [ %6838, %6811 ], [ %6906, %6840 ], [ %6991, %6964 ]
  %6994 = fsub fast float %6505, %6338
  %6995 = fmul fast float %6994, %5905
  %6996 = fadd fast float %6995, %6338
  %6997 = fsub fast float %6672, %6996
  %6998 = fmul fast float %6997, %5904
  %6999 = fadd fast float %6998, %6996
  %7000 = fsub fast float %6993, %6999
  %7001 = fmul fast float %7000, %5932
  %7002 = fadd fast float %7001, %6999
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7005 = fcmp fast ogt float %7004, 0.000000e+00
  br i1 %7005, label %7006, label %7046, !dx.controlflow.hints !129

; <label>:7006                                    ; preds = %6992
  %7007 = fcmp fast ugt float %7004, 0.000000e+00
  br i1 %7007, label %7008, label %7043

; <label>:7008                                    ; preds = %7006
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7019 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.CBufRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = fadd fast float %7022, %5785
  %7026 = fadd fast float %7023, %5786
  %7027 = fadd fast float %7024, %5787
  %7028 = fmul fast float %7025, %7010
  %7029 = call float @dx.op.tertiary.f32(i32 46, float %7011, float %7026, float %7028)  ; FMad(a,b,c)
  %7030 = call float @dx.op.tertiary.f32(i32 46, float %7012, float %7027, float %7029)  ; FMad(a,b,c)
  %7031 = fadd fast float %7030, %7013
  %7032 = fmul fast float %7025, %7015
  %7033 = call float @dx.op.tertiary.f32(i32 46, float %7016, float %7026, float %7032)  ; FMad(a,b,c)
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %7017, float %7027, float %7033)  ; FMad(a,b,c)
  %7035 = fadd fast float %7034, %7018
  %7036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7031, float %7035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7037 = extractvalue %dx.types.ResRet.f32 %7036, 0
  %7038 = fmul fast float %7037, %7020
  %7039 = fadd fast float %7038, %7019
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7041 = fmul fast float %7040, %7004
  %7042 = fsub fast float 1.000000e+00, %7041
  br label %7043

; <label>:7043                                    ; preds = %7008, %7006
  %7044 = phi float [ %7042, %7008 ], [ 1.000000e+00, %7006 ]
  %7045 = fmul fast float %7044, %7002
  br label %7046

; <label>:7046                                    ; preds = %7043, %6992, %5765
  %7047 = phi float [ 1.000000e+00, %5765 ], [ %7045, %7043 ], [ %7002, %6992 ]
  %7048 = call float @dx.op.binary.f32(i32 36, float %7047, float %7047)  ; FMin(a,b)
  %7049 = call float @dx.op.binary.f32(i32 36, float %7047, float %7048)  ; FMin(a,b)
  %7050 = fcmp fast ogt float %7049, 0.000000e+00
  br i1 %7050, label %7051, label %7216, !dx.controlflow.hints !130

; <label>:7051                                    ; preds = %7046
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.CBufRet.f32 %7052, 3
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7057, 3
  %7062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.CBufRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.CBufRet.f32 %7062, 2
  %7066 = extractvalue %dx.types.CBufRet.f32 %7062, 3
  %7067 = fmul fast float %7053, %5785
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %7054, float %7067)  ; FMad(a,b,c)
  %7069 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %7055, float %7068)  ; FMad(a,b,c)
  %7070 = fadd fast float %7069, %7056
  %7071 = fmul fast float %7058, %5785
  %7072 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %7059, float %7071)  ; FMad(a,b,c)
  %7073 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %7060, float %7072)  ; FMad(a,b,c)
  %7074 = fadd fast float %7073, %7061
  %7075 = fmul fast float %7063, %5785
  %7076 = call float @dx.op.tertiary.f32(i32 46, float %5786, float %7064, float %7075)  ; FMad(a,b,c)
  %7077 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %7065, float %7076)  ; FMad(a,b,c)
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7082 = fmul fast float %7081, %7070
  %7083 = fmul fast float %7081, %7074
  %7084 = fadd fast float %7082, %7079
  %7085 = fadd fast float %7083, %7080
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7089 = fsub fast float %7084, %7087
  %7090 = fsub fast float %7085, %7088
  %7091 = fcmp fast olt float %7089, 0.000000e+00
  %7092 = fcmp fast olt float %7090, 0.000000e+00
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7097 = extractvalue %dx.types.CBufRet.f32 %7093, 3
  %7098 = select i1 %7091, float %7094, float %7096
  %7099 = select i1 %7092, float %7095, float %7097
  %7100 = fmul fast float %7098, %7089
  %7101 = fmul fast float %7099, %7090
  %7102 = call float @dx.op.unary.f32(i32 6, float %7100)  ; FAbs(value)
  %7103 = call float @dx.op.unary.f32(i32 6, float %7101)  ; FAbs(value)
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7106 = call float @dx.op.binary.f32(i32 35, float %7102, float %7103)  ; FMax(a,b)
  %7107 = fsub fast float %7105, %7106
  %7108 = call float @dx.op.unary.f32(i32 7, float %7107)  ; Saturate(value)
  %7109 = fcmp fast ogt float %7108, 0.000000e+00
  br i1 %7109, label %7110, label %7151, !dx.controlflow.hints !131

; <label>:7110                                    ; preds = %7051
  %7111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7084, float %7085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 1
  %7113 = fcmp fast ogt float %7112, 0.000000e+00
  br i1 %7113, label %7114, label %7146

; <label>:7114                                    ; preds = %7110
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7084, float %7085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7119 = extractvalue %dx.types.ResRet.f32 %7115, 3
  %7120 = fsub fast float 1.000000e+00, %7066
  %7121 = fsub fast float %7120, %7077
  %7122 = fmul fast float %7121, 0x400921FB60000000
  %7123 = fadd fast float %7122, 0x3FF921FB60000000
  %7124 = call float @dx.op.unary.f32(i32 13, float %7123)  ; Sin(value)
  %7125 = fadd fast float %7124, -1.000000e+00
  %7126 = fmul fast float %7125, 0x3FD45F3060000000
  %7127 = fmul fast float %7121, 0x401921FB60000000
  %7128 = fadd fast float %7127, 0x400921FB60000000
  %7129 = call float @dx.op.unary.f32(i32 13, float %7128)  ; Sin(value)
  %7130 = fadd fast float %7129, 0x3E7777A5C0000000
  %7131 = fmul fast float %7130, 0x3FC45F3060000000
  %7132 = fmul fast float %7121, 0x4022D97C80000000
  %7133 = fadd fast float %7132, 0x4012D97C80000000
  %7134 = call float @dx.op.unary.f32(i32 13, float %7133)  ; Sin(value)
  %7135 = fadd fast float %7134, 1.000000e+00
  %7136 = fmul fast float %7135, 0x3FBB2995E0000000
  %7137 = fmul fast float %7121, 0x402921FB60000000
  %7138 = fadd fast float %7137, 0x401921FB60000000
  %7139 = call float @dx.op.unary.f32(i32 13, float %7138)  ; Sin(value)
  %7140 = fadd fast float %7139, 0xBE8777A5C0000000
  %7141 = fmul fast float %7140, 0x3FB45F3060000000
  %7142 = call float @dx.op.dot4.f32(i32 56, float %7116, float %7117, float %7118, float %7119, float %7126, float %7131, float %7136, float %7141)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7143 = fmul fast float %7142, 0xBFF7154760000000
  %7144 = call float @dx.op.unary.f32(i32 21, float %7143)  ; Exp(value)
  %7145 = call float @dx.op.unary.f32(i32 7, float %7144)  ; Saturate(value)
  br label %7146

; <label>:7146                                    ; preds = %7114, %7110
  %7147 = phi float [ %7145, %7114 ], [ 1.000000e+00, %7110 ]
  %7148 = fadd fast float %7147, -1.000000e+00
  %7149 = fmul fast float %7148, %7108
  %7150 = fadd fast float %7149, 1.000000e+00
  br label %7151

; <label>:7151                                    ; preds = %7146, %7051
  %7152 = phi float [ %7150, %7146 ], [ 1.000000e+00, %7051 ]
  %7153 = fmul fast float %7152, %7047
  %7154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7155 = extractvalue %dx.types.CBufRet.f32 %7154, 0
  %7156 = extractvalue %dx.types.CBufRet.f32 %7154, 1
  %7157 = extractvalue %dx.types.CBufRet.f32 %7154, 2
  %7158 = fadd fast float %7155, %201
  %7159 = fadd fast float %7156, %202
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.CBufRet.f32 %7162, 1
  %7165 = extractvalue %dx.types.CBufRet.f32 %7162, 2
  %7166 = fsub fast float -0.000000e+00, %7158
  %7167 = fsub fast float -0.000000e+00, %7159
  %7168 = fsub fast float %5045, %7157
  %7169 = fadd fast float %7168, %7161
  %7170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7166, float %7167, float %7169)  ; Dot3(ax,ay,az,bx,by,bz)
  %7171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7163, float %7164, float %7165)  ; Dot3(ax,ay,az,bx,by,bz)
  %7172 = fdiv fast float 1.000000e+00, %7171
  %7173 = fmul fast float %7172, %7170
  %7174 = fmul fast float %7163, %7173
  %7175 = fmul fast float %7164, %7173
  %7176 = fadd fast float %7174, %7158
  %7177 = fadd fast float %7175, %7159
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7181 = fsub fast float %7176, %7179
  %7182 = fsub fast float %7177, %7180
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7186 = fmul fast float %7181, %7184
  %7187 = fmul fast float %7182, %7185
  %7188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.i32 %7188, 3
  %7190 = icmp eq i32 %7189, 0
  br i1 %7190, label %7196, label %7191

; <label>:7191                                    ; preds = %7151
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7186, float %7187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  br label %7201

; <label>:7196                                    ; preds = %7151
  %7197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7186, float %7187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = extractvalue %dx.types.ResRet.f32 %7197, 1
  %7200 = extractvalue %dx.types.ResRet.f32 %7197, 2
  br label %7201

; <label>:7201                                    ; preds = %7196, %7191
  %7202 = phi float [ %7193, %7191 ], [ %7198, %7196 ]
  %7203 = phi float [ %7194, %7191 ], [ %7199, %7196 ]
  %7204 = phi float [ %7195, %7191 ], [ %7200, %7196 ]
  %7205 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7206 = fmul fast float %7205, %7202
  %7207 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7208 = fsub fast float %7173, %7207
  %7209 = fsub fast float %7208, %7206
  %7210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7209)  ; FMax(a,b)
  %7211 = fmul fast float %7210, %7203
  %7212 = call float @dx.op.binary.f32(i32 36, float %7204, float %7211)  ; FMin(a,b)
  %7213 = fmul fast float %7212, 0xBFF7154760000000
  %7214 = call float @dx.op.unary.f32(i32 21, float %7213)  ; Exp(value)
  %7215 = fmul fast float %7153, %7214
  br label %7216

; <label>:7216                                    ; preds = %7201, %7046
  %7217 = phi float [ %7215, %7201 ], [ %7047, %7046 ]
  %7218 = call float @dx.op.binary.f32(i32 36, float %7217, float %7217)  ; FMin(a,b)
  %7219 = call float @dx.op.binary.f32(i32 36, float %7217, float %7218)  ; FMin(a,b)
  %7220 = fcmp fast ogt float %7219, 0.000000e+00
  br i1 %7220, label %7221, label %7468, !dx.controlflow.hints !132

; <label>:7221                                    ; preds = %7216
  %7222 = fmul fast float %7217, %5777
  %7223 = fmul fast float %7217, %5778
  %7224 = fmul fast float %7217, %5779
  %7225 = fsub fast float %203, %4244
  %7226 = fcmp fast ogt float %7225, 0.000000e+00
  %7227 = fmul fast float %5766, 5.120000e+02
  %7228 = fmul fast float %5767, 5.120000e+02
  %7229 = fmul fast float %5768, 5.120000e+02
  %7230 = fadd fast float %7229, %203
  %7231 = fsub fast float %4244, %7230
  %7232 = fmul fast float %7231, 2.000000e+00
  %7233 = fadd fast float %7232, %7230
  %7234 = select i1 %7226, float %7233, float %7230
  %7235 = fsub fast float %7234, %203
  %7236 = call float @dx.op.dot3.f32(i32 55, float %7227, float %7228, float %7235, float %7227, float %7228, float %7235)  ; Dot3(ax,ay,az,bx,by,bz)
  %7237 = call float @dx.op.unary.f32(i32 25, float %7236)  ; Rsqrt(value)
  %7238 = fmul fast float %7237, %7227
  %7239 = fmul fast float %7237, %7228
  %7240 = fmul fast float %7237, %7235
  %7241 = fsub fast float %4244, %203
  %7242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7241)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7238, float %7239, float %7240)  ; Dot3(ax,ay,az,bx,by,bz)
  %7244 = fdiv fast float 1.000000e+00, %7243
  %7245 = fmul fast float %7244, %7242
  %7246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7225, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7247 = fcmp fast ogt float %7246, 0.000000e+00
  %7248 = fcmp fast olt float %7246, 0.000000e+00
  %7249 = zext i1 %7247 to i32
  %7250 = zext i1 %7248 to i32
  %7251 = sub nsw i32 %7249, %7250
  %7252 = sitofp i32 %7251 to float
  %7253 = fsub fast float %7234, %4244
  %7254 = call float @dx.op.dot3.f32(i32 55, float %7227, float %7228, float %7253, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7255 = fcmp fast ogt float %7254, 0.000000e+00
  %7256 = fcmp fast olt float %7254, 0.000000e+00
  %7257 = zext i1 %7255 to i32
  %7258 = zext i1 %7256 to i32
  %7259 = sub nsw i32 %7257, %7258
  %7260 = sitofp i32 %7259 to float
  %7261 = fcmp fast une float %7252, %7260
  br i1 %7261, label %7262, label %7272

; <label>:7262                                    ; preds = %7221
  %7263 = fmul fast float %7245, %7240
  %7264 = fmul fast float %7245, %7239
  %7265 = fmul fast float %7245, %7238
  %7266 = fmul fast float %7265, %7265
  %7267 = fmul fast float %7264, %7264
  %7268 = fadd fast float %7266, %7267
  %7269 = fmul fast float %7263, %7263
  %7270 = fadd fast float %7268, %7269
  %7271 = call float @dx.op.unary.f32(i32 24, float %7270)  ; Sqrt(value)
  br label %7282

; <label>:7272                                    ; preds = %7221
  %7273 = icmp slt i32 %7251, 0
  br i1 %7273, label %7274, label %7282

; <label>:7274                                    ; preds = %7272
  %7275 = fsub fast float %203, %7234
  %7276 = fmul fast float %7227, %7227
  %7277 = fmul fast float %7228, %7228
  %7278 = fadd fast float %7276, %7277
  %7279 = fmul fast float %7275, %7275
  %7280 = fadd fast float %7278, %7279
  %7281 = call float @dx.op.unary.f32(i32 24, float %7280)  ; Sqrt(value)
  br label %7282

; <label>:7282                                    ; preds = %7274, %7272, %7262
  %7283 = phi float [ %7271, %7262 ], [ %7281, %7274 ], [ 0.000000e+00, %7272 ]
  %7284 = fsub fast float -0.000000e+00, %7283
  %7285 = select i1 %7226, float -0.000000e+00, float %7284
  %7286 = fmul fast float %4241, 0x3FF7154760000000
  %7287 = fmul fast float %7286, %7285
  %7288 = fmul fast float %4242, 0x3FF7154760000000
  %7289 = fmul fast float %7288, %7285
  %7290 = fmul fast float %4243, 0x3FF7154760000000
  %7291 = fmul fast float %7290, %7285
  %7292 = call float @dx.op.unary.f32(i32 21, float %7287)  ; Exp(value)
  %7293 = call float @dx.op.unary.f32(i32 21, float %7289)  ; Exp(value)
  %7294 = call float @dx.op.unary.f32(i32 21, float %7291)  ; Exp(value)
  %7295 = call float @dx.op.unary.f32(i32 7, float %7292)  ; Saturate(value)
  %7296 = call float @dx.op.unary.f32(i32 7, float %7293)  ; Saturate(value)
  %7297 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7298 = fmul fast float %7222, %7295
  %7299 = fmul fast float %7223, %7296
  %7300 = fmul fast float %7224, %7297
  %7301 = fsub fast float %5766, %5033
  %7302 = fsub fast float %5767, %5032
  %7303 = fsub fast float %5768, %5031
  %7304 = call float @dx.op.dot3.f32(i32 55, float %7301, float %7302, float %7303, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = call float @dx.op.unary.f32(i32 25, float %7304)  ; Rsqrt(value)
  %7306 = fmul fast float %7305, %7301
  %7307 = fmul fast float %7305, %7302
  %7308 = fmul fast float %7305, %7303
  %7309 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5029, float %5028, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7312 = fmul fast float %7311, %7311
  %7313 = fmul fast float %7312, %5073
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = fmul fast float %7314, %7311
  %7316 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7317 = fmul fast float %7316, %7316
  %7318 = call float @dx.op.unary.f32(i32 6, float %7309)  ; FAbs(value)
  %7319 = fsub fast float 1.000000e+00, %5066
  %7320 = fmul fast float %5048, %5048
  %7321 = fmul fast float %7320, %7319
  %7322 = fadd fast float %7321, %5066
  %7323 = bitcast float %7322 to i32
  %7324 = ashr i32 %7323, 1
  %7325 = add nsw i32 %7324, 532487669
  %7326 = bitcast i32 %7325 to float
  %7327 = fadd fast float %7326, %5048
  %7328 = fmul fast float %5066, %7317
  %7329 = fsub fast float 1.000000e+00, %7317
  %7330 = fadd fast float %7329, %7328
  %7331 = fmul fast float %7318, %7318
  %7332 = fmul fast float %7331, %7319
  %7333 = fadd fast float %7332, %5066
  %7334 = bitcast float %7333 to i32
  %7335 = ashr i32 %7334, 1
  %7336 = add nsw i32 %7335, 532487669
  %7337 = bitcast i32 %7336 to float
  %7338 = fadd fast float %7337, %7318
  %7339 = fmul fast float %7330, %7330
  %7340 = fmul fast float %7339, %7327
  %7341 = fmul fast float %7340, %7338
  %7342 = fdiv fast float 0x3FF0A00000000000, %7341
  %7343 = fmul fast float %7342, %5066
  %7344 = call float @dx.op.unary.f32(i32 6, float %7310)  ; FAbs(value)
  %7345 = fsub fast float 1.000000e+00, %7344
  %7346 = bitcast float %7345 to i32
  %7347 = sitofp i32 %7346 to float
  %7348 = fmul fast float %7347, 5.000000e+00
  %7349 = fadd fast float %7348, 0xC1EFBF8940000000
  %7350 = fptosi float %7349 to i32
  %7351 = bitcast i32 %7350 to float
  %7352 = fsub fast float 1.000000e+00, %5040
  %7353 = fsub fast float 1.000000e+00, %5041
  %7354 = fsub fast float 1.000000e+00, %5046
  %7355 = fmul fast float %7351, %7352
  %7356 = fmul fast float %7351, %7353
  %7357 = fmul fast float %7351, %7354
  %7358 = fadd fast float %7355, %5040
  %7359 = fadd fast float %7356, %5041
  %7360 = fadd fast float %7357, %5046
  br i1 %5185, label %7361, label %7384

; <label>:7361                                    ; preds = %7282
  %7362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3839, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.ResRet.f32 %7362, 2
  %7366 = fadd fast float %7363, -5.000000e-01
  %7367 = fadd fast float %7364, -5.000000e-01
  %7368 = fadd fast float %7365, -5.000000e-01
  %7369 = fmul fast float %5040, 4.000000e+00
  %7370 = fmul fast float %7369, %7352
  %7371 = fmul fast float %7370, %7366
  %7372 = fmul fast float %5041, 4.000000e+00
  %7373 = fmul fast float %7372, %7353
  %7374 = fmul fast float %7373, %7367
  %7375 = fmul fast float %5046, 4.000000e+00
  %7376 = fmul fast float %7375, %7354
  %7377 = fmul fast float %7376, %7368
  %7378 = fadd fast float %7371, %7358
  %7379 = fadd fast float %7374, %7359
  %7380 = fadd fast float %7377, %7360
  %7381 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  %7382 = call float @dx.op.unary.f32(i32 7, float %7379)  ; Saturate(value)
  %7383 = call float @dx.op.unary.f32(i32 7, float %7380)  ; Saturate(value)
  br label %7384

; <label>:7384                                    ; preds = %7361, %7282
  %7385 = phi float [ %7381, %7361 ], [ %7358, %7282 ]
  %7386 = phi float [ %7382, %7361 ], [ %7359, %7282 ]
  %7387 = phi float [ %7383, %7361 ], [ %7360, %7282 ]
  %7388 = fmul fast float %7309, 9.843750e-01
  %7389 = fadd fast float %7388, 7.812500e-03
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7389, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 3
  %7393 = fmul fast float %7391, %5040
  %7394 = fmul fast float %7391, %5041
  %7395 = fmul fast float %7391, %5046
  %7396 = fadd fast float %7393, %7392
  %7397 = fadd fast float %7394, %7392
  %7398 = fadd fast float %7395, %7392
  br i1 %5185, label %7399, label %7422

; <label>:7399                                    ; preds = %7384
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3839, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.ResRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.ResRet.f32 %7400, 2
  %7404 = fadd fast float %7401, -5.000000e-01
  %7405 = fadd fast float %7402, -5.000000e-01
  %7406 = fadd fast float %7403, -5.000000e-01
  %7407 = fmul fast float %5040, 4.000000e+00
  %7408 = fmul fast float %7407, %7352
  %7409 = fmul fast float %7408, %7404
  %7410 = fmul fast float %5041, 4.000000e+00
  %7411 = fmul fast float %7410, %7353
  %7412 = fmul fast float %7411, %7405
  %7413 = fmul fast float %5046, 4.000000e+00
  %7414 = fmul fast float %7413, %7354
  %7415 = fmul fast float %7414, %7406
  %7416 = fadd fast float %7409, %7396
  %7417 = fadd fast float %7412, %7397
  %7418 = fadd fast float %7415, %7398
  %7419 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  %7420 = call float @dx.op.unary.f32(i32 7, float %7417)  ; Saturate(value)
  %7421 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  br label %7422

; <label>:7422                                    ; preds = %7399, %7384
  %7423 = phi float [ %7419, %7399 ], [ %7396, %7384 ]
  %7424 = phi float [ %7420, %7399 ], [ %7397, %7384 ]
  %7425 = phi float [ %7421, %7399 ], [ %7398, %7384 ]
  %7426 = call float @dx.op.binary.f32(i32 35, float %7424, float %7425)  ; FMax(a,b)
  %7427 = call float @dx.op.binary.f32(i32 35, float %7423, float %7426)  ; FMax(a,b)
  %7428 = fsub fast float 1.000000e+00, %7427
  %7429 = fmul fast float %7385, %7343
  %7430 = fmul fast float %7386, %7343
  %7431 = fmul fast float %7387, %7343
  %7432 = fsub fast float 1.000000e+00, %7310
  %7433 = bitcast float %7432 to i32
  %7434 = sitofp i32 %7433 to float
  %7435 = fmul fast float %7434, 5.000000e+00
  %7436 = fadd fast float %7435, 0xC1EFBF8940000000
  %7437 = fptosi float %7436 to i32
  %7438 = bitcast i32 %7437 to float
  %7439 = fmul fast float %7438, %3840
  %7440 = fmul fast float %7428, %7439
  %7441 = fmul fast float %7440, %5727
  %7442 = fmul fast float %7440, %5728
  %7443 = fmul fast float %7440, %5729
  %7444 = fadd fast float %7441, %7429
  %7445 = fadd fast float %7442, %7430
  %7446 = fadd fast float %7443, %7431
  %7447 = fmul fast float %7315, %7298
  %7448 = fmul fast float %7447, %7428
  %7449 = fmul fast float %7315, %7299
  %7450 = fmul fast float %7449, %7428
  %7451 = fmul fast float %7315, %7300
  %7452 = fmul fast float %7451, %7428
  %7453 = fmul fast float %7447, %7444
  %7454 = fmul fast float %7449, %7445
  %7455 = fmul fast float %7451, %7446
  %7456 = fadd fast float %7448, %5711
  %7457 = fmul fast float %7456, %3836
  %7458 = fadd fast float %7450, %5712
  %7459 = fmul fast float %7458, %3836
  %7460 = fadd fast float %7452, %5713
  %7461 = fmul fast float %7460, %3836
  %7462 = fadd fast float %7453, %5754
  %7463 = fmul fast float %7462, %3836
  %7464 = fadd fast float %7454, %5757
  %7465 = fmul fast float %7464, %3836
  %7466 = fadd fast float %7455, %5760
  %7467 = fmul fast float %7466, %3836
  br label %7468

; <label>:7468                                    ; preds = %7422, %7216, %5707
  %7469 = phi float [ %5755, %5707 ], [ %5755, %7216 ], [ %7463, %7422 ]
  %7470 = phi float [ %5758, %5707 ], [ %5758, %7216 ], [ %7465, %7422 ]
  %7471 = phi float [ %5761, %5707 ], [ %5761, %7216 ], [ %7467, %7422 ]
  %7472 = phi float [ %5750, %5707 ], [ %5750, %7216 ], [ %7457, %7422 ]
  %7473 = phi float [ %5751, %5707 ], [ %5751, %7216 ], [ %7459, %7422 ]
  %7474 = phi float [ %5752, %5707 ], [ %5752, %7216 ], [ %7461, %7422 ]
  %7475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7476 = extractvalue %dx.types.CBufRet.i32 %7475, 0
  %7477 = icmp eq i32 %7476, 0
  br i1 %7477, label %8140, label %7478

; <label>:7478                                    ; preds = %7468
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7482 = fmul fast float %7480, %114
  %7483 = fmul fast float %7481, %115
  %7484 = fptoui float %7482 to i32
  %7485 = fptoui float %7483 to i32
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7490 = fadd fast float %101, -4.000000e+00
  %7491 = call float @dx.op.binary.f32(i32 35, float %7490, float 0.000000e+00)  ; FMax(a,b)
  %7492 = fadd fast float %7491, %7487
  %7493 = fmul fast float %7492, %7488
  %7494 = call float @dx.op.unary.f32(i32 23, float %7493)  ; Log(value)
  %7495 = fmul fast float %7494, %7489
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7498 = fmul fast float %7495, %7497
  %7499 = call float @dx.op.unary.f32(i32 7, float %7498)  ; Saturate(value)
  %7500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.i32 %7500, 1
  %7502 = add i32 %7501, -1
  %7503 = uitofp i32 %7501 to float
  %7504 = fmul fast float %7503, %7499
  %7505 = fptoui float %7504 to i32
  %7506 = call i32 @dx.op.binary.i32(i32 40, i32 %7505, i32 %7502)  ; UMin(a,b)
  %7507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.i32 %7507, 2
  %7509 = extractvalue %dx.types.CBufRet.i32 %7507, 3
  %7510 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7485, i32 %7508, i32 %7484)  ; UMad(a,b,c)
  %7511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7506, i32 %7509, i32 %7510)  ; UMad(a,b,c)
  %7512 = add nsw i32 %7476, -1
  %7513 = call i32 @dx.op.binary.i32(i32 37, i32 %7512, i32 0)  ; IMax(a,b)
  %7514 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7515 = fptoui float %7514 to i32
  %7516 = lshr i32 %7515, 5
  %7517 = call i32 @dx.op.binary.i32(i32 40, i32 %7516, i32 8191)  ; UMin(a,b)
  %7518 = shl i32 %7517, 2
  %7519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7518, i32 undef)  ; BufferLoad(srv,index,wot)
  %7520 = extractvalue %dx.types.ResRet.i32 %7519, 0
  %7521 = lshr i32 %7520, 16
  %7522 = and i32 %7520, 65535
  %7523 = lshr i32 %7520, 21
  %7524 = lshr i32 %7522, 5
  %7525 = call i32 @dx.op.binary.i32(i32 40, i32 %7524, i32 %7513)  ; UMin(a,b)
  %7526 = icmp ugt i32 %7523, %7525
  br i1 %7526, label %8140, label %7527

; <label>:7527                                    ; preds = %7478
  br label %7528

; <label>:7528                                    ; preds = %8130, %7527
  %7529 = phi i32 [ %8137, %8130 ], [ %7523, %7527 ]
  %7530 = phi float [ %8131, %8130 ], [ %7469, %7527 ]
  %7531 = phi float [ %8132, %8130 ], [ %7470, %7527 ]
  %7532 = phi float [ %8133, %8130 ], [ %7471, %7527 ]
  %7533 = phi float [ %8134, %8130 ], [ %7472, %7527 ]
  %7534 = phi float [ %8135, %8130 ], [ %7473, %7527 ]
  %7535 = phi float [ %8136, %8130 ], [ %7474, %7527 ]
  %7536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.i32 %7536, 0
  %7538 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7511, i32 %7537, i32 %7529)  ; UMad(a,b,c)
  %7539 = shl i32 %7538, 2
  %7540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7539, i32 undef)  ; BufferLoad(srv,index,wot)
  %7541 = extractvalue %dx.types.ResRet.i32 %7540, 0
  %7542 = shl i32 %7529, 5
  %7543 = sub nsw i32 %7521, %7542
  %7544 = call i32 @dx.op.binary.i32(i32 37, i32 %7543, i32 0)  ; IMax(a,b)
  %7545 = call i32 @dx.op.binary.i32(i32 38, i32 %7544, i32 31)  ; IMin(a,b)
  %7546 = sub nsw i32 1, %7521
  %7547 = add nsw i32 %7546, %7522
  %7548 = call i32 @dx.op.binary.i32(i32 37, i32 %7547, i32 0)  ; IMax(a,b)
  %7549 = call i32 @dx.op.binary.i32(i32 38, i32 %7548, i32 32)  ; IMin(a,b)
  %7550 = and i32 %7549, 31
  %7551 = shl i32 -1, %7550
  %7552 = xor i32 %7551, -1
  %7553 = and i32 %7545, 31
  %7554 = shl i32 %7552, %7553
  %7555 = icmp eq i32 %7549, 32
  %7556 = select i1 %7555, i32 -1, i32 %7554
  %7557 = and i32 %7556, %7541
  %7558 = icmp eq i32 %7557, 0
  br i1 %7558, label %8130, label %7559

; <label>:7559                                    ; preds = %7528
  br label %7560

; <label>:7560                                    ; preds = %7694, %7559
  %7561 = phi i32 [ %7572, %7694 ], [ %7557, %7559 ]
  %7562 = phi float [ %7695, %7694 ], [ %7530, %7559 ]
  %7563 = phi float [ %7696, %7694 ], [ %7531, %7559 ]
  %7564 = phi float [ %7697, %7694 ], [ %7532, %7559 ]
  %7565 = phi float [ %7698, %7694 ], [ %7533, %7559 ]
  %7566 = phi float [ %7699, %7694 ], [ %7534, %7559 ]
  %7567 = phi float [ %7700, %7694 ], [ %7535, %7559 ]
  %7568 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7561)  ; FirstbitLo(value)
  %7569 = add i32 %7568, %7542
  %7570 = and i32 %7568, 31
  %7571 = shl i32 1, %7570
  %7572 = xor i32 %7571, %7561
  %7573 = mul i32 %7569, 112
  %7574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7573, i32 undef)  ; BufferLoad(srv,index,wot)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = extractvalue %dx.types.ResRet.f32 %7574, 1
  %7577 = extractvalue %dx.types.ResRet.f32 %7574, 2
  %7578 = or i32 %7573, 12
  %7579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7578, i32 undef)  ; BufferLoad(srv,index,wot)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = add i32 %7573, 16
  %7582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7581, i32 undef)  ; BufferLoad(srv,index,wot)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.ResRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.ResRet.f32 %7582, 2
  %7586 = add i32 %7573, 28
  %7587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7586, i32 undef)  ; BufferLoad(srv,index,wot)
  %7588 = extractvalue %dx.types.ResRet.i32 %7587, 0
  %7589 = add i32 %7573, 44
  %7590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7589, i32 undef)  ; BufferLoad(srv,index,wot)
  %7591 = extractvalue %dx.types.ResRet.f32 %7590, 0
  %7592 = add i32 %7573, 48
  %7593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7592, i32 undef)  ; BufferLoad(srv,index,wot)
  %7594 = extractvalue %dx.types.ResRet.f32 %7593, 0
  %7595 = extractvalue %dx.types.ResRet.f32 %7593, 1
  %7596 = extractvalue %dx.types.ResRet.f32 %7593, 2
  %7597 = extractvalue %dx.types.ResRet.f32 %7593, 3
  %7598 = add i32 %7573, 64
  %7599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7598, i32 undef)  ; BufferLoad(srv,index,wot)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = extractvalue %dx.types.ResRet.f32 %7599, 1
  %7602 = extractvalue %dx.types.ResRet.f32 %7599, 2
  %7603 = extractvalue %dx.types.ResRet.f32 %7599, 3
  %7604 = add i32 %7573, 80
  %7605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7604, i32 undef)  ; BufferLoad(srv,index,wot)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7605, 2
  %7608 = add i32 %7573, 92
  %7609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7608, i32 undef)  ; BufferLoad(srv,index,wot)
  %7610 = extractvalue %dx.types.ResRet.i32 %7609, 0
  %7611 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7612 = select i1 %260, float %7606, float %7575
  %7613 = select i1 %260, float %7611, float %7576
  %7614 = select i1 %260, float %7607, float %7577
  %7615 = and i32 %7610, 65535
  %7616 = uitofp i32 %7615 to float
  %7617 = lshr i32 %7610, 16
  %7618 = uitofp i32 %7617 to float
  %7619 = and i32 %7588, 65535
  %7620 = and i32 %7588, 50331648
  %7621 = icmp eq i32 %7620, 33554432
  %7622 = fsub fast float %7594, %201
  %7623 = fsub fast float %7595, %202
  %7624 = fsub fast float %7596, %203
  %7625 = call float @dx.op.dot3.f32(i32 55, float %7622, float %7623, float %7624, float %7622, float %7623, float %7624)  ; Dot3(ax,ay,az,bx,by,bz)
  %7626 = call float @dx.op.unary.f32(i32 24, float %7625)  ; Sqrt(value)
  %7627 = fdiv fast float 1.000000e+00, %7626
  %7628 = fmul fast float %7627, %7622
  %7629 = fmul fast float %7627, %7623
  %7630 = fmul fast float %7627, %7624
  %7631 = fadd fast float %7626, %7580
  %7632 = fdiv fast float 1.000000e+00, %7631
  %7633 = fmul float %7591, %7632
  %7634 = fmul float %7633, %7633
  %7635 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  br i1 %7621, label %7636, label %7657

; <label>:7636                                    ; preds = %7560
  %7637 = fmul fast float %7602, %7583
  %7638 = fmul fast float %7602, %7584
  %7639 = fmul fast float %7602, %7585
  %7640 = fadd fast float %7622, %7637
  %7641 = fadd fast float %7623, %7638
  %7642 = fadd fast float %7624, %7639
  %7643 = call float @dx.op.dot3.f32(i32 55, float %7640, float %7641, float %7642, float %7640, float %7641, float %7642)  ; Dot3(ax,ay,az,bx,by,bz)
  %7644 = call float @dx.op.unary.f32(i32 25, float %7643)  ; Rsqrt(value)
  %7645 = fmul fast float %7644, %7640
  %7646 = fmul fast float %7644, %7641
  %7647 = fmul fast float %7644, %7642
  %7648 = fsub fast float %201, %7594
  %7649 = fsub fast float %202, %7595
  %7650 = fsub fast float %203, %7596
  %7651 = fsub fast float -0.000000e+00, %7648
  %7652 = fsub fast float -0.000000e+00, %7649
  %7653 = fsub fast float -0.000000e+00, %7650
  %7654 = call float @dx.op.dot3.f32(i32 55, float %7651, float %7652, float %7653, float %7583, float %7584, float %7585)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = fcmp fast ogt float %7654, 0.000000e+00
  %7656 = uitofp i1 %7655 to float
  br label %7657

; <label>:7657                                    ; preds = %7636, %7560
  %7658 = phi float [ %7656, %7636 ], [ 1.000000e+00, %7560 ]
  %7659 = phi float [ %7645, %7636 ], [ %7628, %7560 ]
  %7660 = phi float [ %7646, %7636 ], [ %7629, %7560 ]
  %7661 = phi float [ %7647, %7636 ], [ %7630, %7560 ]
  %7662 = call float @dx.op.dot3.f32(i32 55, float %7583, float %7584, float %7585, float %7659, float %7660, float %7661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = fmul fast float %7662, %7662
  %7664 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7665 = fsub fast float 1.000000e+00, %7664
  %7666 = fmul fast float %7665, 5.000000e-01
  %7667 = fcmp fast ogt float %7662, 0.000000e+00
  %7668 = fsub fast float 1.000000e+00, %7666
  %7669 = select i1 %7667, float %7666, float %7668
  %7670 = fmul fast float %7669, %7618
  %7671 = fadd fast float %7670, %7616
  %7672 = fmul fast float %7671, 0x3EF0001000000000
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7672, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = fmul fast float %7662, %7600
  %7676 = fadd fast float %7675, %7601
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = select i1 %7621, float 1.000000e+00, float %7677
  %7679 = select i1 %7621, float %7677, float 1.000000e+00
  %7680 = fmul fast float %7626, %7597
  %7681 = fsub fast float 1.000000e+00, %7680
  %7682 = fmul fast float %7681, %7603
  %7683 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7684 = fmul fast float %7683, %7679
  %7685 = fmul fast float %7684, 2.000000e+00
  %7686 = fsub fast float 3.000000e+00, %7685
  %7687 = fmul fast float %7674, %7658
  %7688 = fmul fast float %7684, %7684
  %7689 = fmul fast float %7688, %7687
  %7690 = fmul fast float %7689, %7686
  %7691 = call float @dx.op.binary.f32(i32 36, float %7690, float %7690)  ; FMin(a,b)
  %7692 = call float @dx.op.binary.f32(i32 36, float %7690, float %7691)  ; FMin(a,b)
  %7693 = fcmp fast ogt float %7692, 0.000000e+00
  br i1 %7693, label %7702, label %7694, !dx.controlflow.hints !133

; <label>:7694                                    ; preds = %8086, %7848, %7657
  %7695 = phi float [ %7562, %7848 ], [ %7562, %7657 ], [ %8126, %8086 ]
  %7696 = phi float [ %7563, %7848 ], [ %7563, %7657 ], [ %8127, %8086 ]
  %7697 = phi float [ %7564, %7848 ], [ %7564, %7657 ], [ %8128, %8086 ]
  %7698 = phi float [ %7565, %7848 ], [ %7565, %7657 ], [ %8120, %8086 ]
  %7699 = phi float [ %7566, %7848 ], [ %7566, %7657 ], [ %8121, %8086 ]
  %7700 = phi float [ %7567, %7848 ], [ %7567, %7657 ], [ %8122, %8086 ]
  %7701 = icmp eq i32 %7561, %7571
  br i1 %7701, label %8129, label %7560

; <label>:7702                                    ; preds = %7657
  %7703 = icmp eq i32 %7619, 255
  br i1 %7703, label %7848, label %7704, !dx.controlflow.hints !134

; <label>:7704                                    ; preds = %7702
  %7705 = mul nuw nsw i32 %7619, 176
  %7706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7705, i32 undef)  ; BufferLoad(srv,index,wot)
  %7707 = extractvalue %dx.types.ResRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.ResRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.ResRet.f32 %7706, 3
  %7711 = add nuw nsw i32 %7705, 16
  %7712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7711, i32 undef)  ; BufferLoad(srv,index,wot)
  %7713 = extractvalue %dx.types.ResRet.f32 %7712, 0
  %7714 = extractvalue %dx.types.ResRet.f32 %7712, 1
  %7715 = add nuw nsw i32 %7705, 32
  %7716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7715, i32 undef)  ; BufferLoad(srv,index,wot)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = extractvalue %dx.types.ResRet.f32 %7716, 1
  %7719 = extractvalue %dx.types.ResRet.f32 %7716, 2
  %7720 = add nuw nsw i32 %7705, 48
  %7721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7720, i32 undef)  ; BufferLoad(srv,index,wot)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.ResRet.f32 %7721, 1
  %7724 = extractvalue %dx.types.ResRet.f32 %7721, 2
  %7725 = extractvalue %dx.types.ResRet.f32 %7721, 3
  %7726 = add nuw nsw i32 %7705, 64
  %7727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7726, i32 undef)  ; BufferLoad(srv,index,wot)
  %7728 = extractvalue %dx.types.ResRet.f32 %7727, 0
  %7729 = extractvalue %dx.types.ResRet.f32 %7727, 1
  %7730 = extractvalue %dx.types.ResRet.f32 %7727, 2
  %7731 = extractvalue %dx.types.ResRet.f32 %7727, 3
  %7732 = add nuw nsw i32 %7705, 80
  %7733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7732, i32 undef)  ; BufferLoad(srv,index,wot)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.ResRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.ResRet.f32 %7733, 2
  %7737 = extractvalue %dx.types.ResRet.f32 %7733, 3
  %7738 = add nuw nsw i32 %7705, 96
  %7739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7738, i32 undef)  ; BufferLoad(srv,index,wot)
  %7740 = extractvalue %dx.types.ResRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.ResRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.ResRet.f32 %7739, 2
  %7743 = extractvalue %dx.types.ResRet.f32 %7739, 3
  %7744 = bitcast float %7714 to i32
  %7745 = fmul fast float %7719, %121
  %7746 = fmul fast float %7719, %122
  %7747 = fmul fast float %7719, %123
  %7748 = fadd fast float %7745, %201
  %7749 = fadd fast float %7746, %202
  %7750 = fadd fast float %7747, %203
  %7751 = fmul fast float %7748, %7722
  %7752 = call float @dx.op.tertiary.f32(i32 46, float %7749, float %7728, float %7751)  ; FMad(a,b,c)
  %7753 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7734, float %7752)  ; FMad(a,b,c)
  %7754 = fadd fast float %7753, %7740
  %7755 = fmul fast float %7748, %7723
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %7749, float %7729, float %7755)  ; FMad(a,b,c)
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7735, float %7756)  ; FMad(a,b,c)
  %7758 = fadd fast float %7757, %7741
  %7759 = fmul fast float %7748, %7724
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %7749, float %7730, float %7759)  ; FMad(a,b,c)
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7736, float %7760)  ; FMad(a,b,c)
  %7762 = fadd fast float %7761, %7742
  %7763 = fmul fast float %7748, %7725
  %7764 = call float @dx.op.tertiary.f32(i32 46, float %7749, float %7731, float %7763)  ; FMad(a,b,c)
  %7765 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7737, float %7764)  ; FMad(a,b,c)
  %7766 = fadd fast float %7765, %7743
  %7767 = fdiv fast float %7754, %7766
  %7768 = fdiv fast float %7758, %7766
  %7769 = fdiv fast float %7762, %7766
  %7770 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7769)  ; FMax(a,b)
  %7771 = fmul fast float %271, 0x401921FB60000000
  %7772 = call float @dx.op.unary.f32(i32 13, float %7771)  ; Sin(value)
  %7773 = call float @dx.op.unary.f32(i32 12, float %7771)  ; Cos(value)
  %7774 = fmul fast float %7773, %7718
  %7775 = call float @dx.op.tertiary.f32(i32 46, float %7772, float %7718, float 0.000000e+00)  ; FMad(a,b,c)
  %7776 = fmul fast float %7718, %7772
  %7777 = fsub fast float -0.000000e+00, %7776
  %7778 = call float @dx.op.tertiary.f32(i32 46, float %7773, float %7718, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7779

; <label>:7779                                    ; preds = %7779, %7704
  %7780 = phi float [ 0.000000e+00, %7704 ], [ %7812, %7779 ]
  %7781 = phi float [ 0.000000e+00, %7704 ], [ %7814, %7779 ]
  %7782 = phi i32 [ 0, %7704 ], [ %7815, %7779 ]
  %7783 = mul i32 %7782, 2
  %7784 = add i32 0, %7783
  %7785 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7784
  %7786 = load float, float* %7785, align 4
  %7787 = mul i32 %7782, 2
  %7788 = add i32 1, %7787
  %7789 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7788
  %7790 = load float, float* %7789, align 4
  %7791 = fmul fast float %7774, %7786
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7790, float %7777, float %7791)  ; FMad(a,b,c)
  %7793 = fmul fast float %7786, %7775
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7790, float %7778, float %7793)  ; FMad(a,b,c)
  %7795 = fadd fast float %7792, %7767
  %7796 = fadd fast float %7794, %7768
  %7797 = fmul fast float %7795, %7713
  %7798 = fmul fast float %7796, %7713
  %7799 = call float @dx.op.binary.f32(i32 35, float %7797, float %7709)  ; FMax(a,b)
  %7800 = call float @dx.op.binary.f32(i32 35, float %7798, float %7709)  ; FMax(a,b)
  %7801 = call float @dx.op.binary.f32(i32 36, float %7799, float %7710)  ; FMin(a,b)
  %7802 = call float @dx.op.binary.f32(i32 36, float %7800, float %7710)  ; FMin(a,b)
  %7803 = fadd fast float %7801, %7707
  %7804 = fadd fast float %7802, %7708
  %7805 = uitofp i32 %7744 to float
  %7806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7803, float %7804, float %7805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7807 = extractvalue %dx.types.ResRet.f32 %7806, 0
  %7808 = fsub fast float %7807, %7770
  %7809 = fsub fast float %7808, %7717
  %7810 = fcmp fast ogt float %7809, 0.000000e+00
  %7811 = select i1 %7810, float 1.000000e+00, float 0.000000e+00
  %7812 = fadd fast float %7811, %7780
  %7813 = select i1 %7810, float %7809, float 0.000000e+00
  %7814 = fadd fast float %7813, %7781
  %7815 = add nuw nsw i32 %7782, 1
  %7816 = icmp eq i32 %7815, 8
  br i1 %7816, label %7817, label %7779

; <label>:7817                                    ; preds = %7779
  %7818 = fdiv fast float 1.000000e+00, %7812
  %7819 = fmul fast float %7818, %7814
  %7820 = fdiv fast float 1.000000e+00, %7770
  %7821 = fmul fast float %7819, %7820
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = call float @dx.op.binary.f32(i32 35, float %7822, float 0.000000e+00)  ; FMax(a,b)
  %7824 = fmul fast float %7812, 1.250000e-01
  %7825 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7826 = fmul fast float %7825, 2.000000e+00
  %7827 = fadd fast float %7826, -1.000000e+00
  %7828 = fcmp fast ogt float %7827, 0.000000e+00
  %7829 = fcmp fast olt float %7827, 0.000000e+00
  %7830 = zext i1 %7828 to i32
  %7831 = zext i1 %7829 to i32
  %7832 = sub nsw i32 %7830, %7831
  %7833 = sitofp i32 %7832 to float
  %7834 = fmul fast float %7833, %7827
  %7835 = fsub fast float 1.000000e+00, %7834
  %7836 = fmul fast float %7835, %7835
  %7837 = fmul fast float %7836, %7835
  %7838 = fsub fast float %7835, %7837
  %7839 = fmul fast float %7838, %7823
  %7840 = fsub fast float 1.000000e+00, %7837
  %7841 = fsub fast float %7840, %7839
  %7842 = fmul fast float %7833, 5.000000e-01
  %7843 = fmul fast float %7842, %7841
  %7844 = fsub fast float -5.000000e-01, %7843
  %7845 = fmul fast float %7844, %7678
  %7846 = fadd fast float %7845, 1.000000e+00
  %7847 = fmul fast float %7846, %7690
  br label %7848

; <label>:7848                                    ; preds = %7817, %7702
  %7849 = phi float [ %7847, %7817 ], [ %7690, %7702 ]
  %7850 = call float @dx.op.binary.f32(i32 36, float %7849, float %7849)  ; FMin(a,b)
  %7851 = call float @dx.op.binary.f32(i32 36, float %7849, float %7850)  ; FMin(a,b)
  %7852 = fcmp fast ogt float %7851, 0.000000e+00
  br i1 %7852, label %7853, label %7694, !dx.controlflow.hints !135

; <label>:7853                                    ; preds = %7848
  %7854 = fmul fast float %7849, %7612
  %7855 = fmul fast float %7849, %7613
  %7856 = fmul fast float %7849, %7614
  %7857 = fsub fast float %7596, %4244
  %7858 = fcmp fast ogt float %7857, 0.000000e+00
  %7859 = fsub fast float %203, %4244
  %7860 = fcmp fast ogt float %7859, 0.000000e+00
  %7861 = xor i1 %7860, %7858
  %7862 = fsub fast float %4244, %7596
  %7863 = fmul fast float %7862, 2.000000e+00
  %7864 = fadd fast float %7863, %7596
  %7865 = select i1 %7861, float %7596, float %7864
  %7866 = fsub fast float %7865, %203
  %7867 = call float @dx.op.dot3.f32(i32 55, float %7622, float %7623, float %7866, float %7622, float %7623, float %7866)  ; Dot3(ax,ay,az,bx,by,bz)
  %7868 = call float @dx.op.unary.f32(i32 25, float %7867)  ; Rsqrt(value)
  %7869 = fmul fast float %7868, %7622
  %7870 = fmul fast float %7868, %7623
  %7871 = fmul fast float %7868, %7866
  %7872 = fsub fast float %4244, %203
  %7873 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7872)  ; Dot3(ax,ay,az,bx,by,bz)
  %7874 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7869, float %7870, float %7871)  ; Dot3(ax,ay,az,bx,by,bz)
  %7875 = fdiv fast float 1.000000e+00, %7874
  %7876 = fmul fast float %7875, %7873
  %7877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7859, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7878 = fcmp fast ogt float %7877, 0.000000e+00
  %7879 = fcmp fast olt float %7877, 0.000000e+00
  %7880 = zext i1 %7878 to i32
  %7881 = zext i1 %7879 to i32
  %7882 = sub nsw i32 %7880, %7881
  %7883 = sitofp i32 %7882 to float
  %7884 = fsub fast float %7865, %4244
  %7885 = call float @dx.op.dot3.f32(i32 55, float %7622, float %7623, float %7884, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7886 = fcmp fast ogt float %7885, 0.000000e+00
  %7887 = fcmp fast olt float %7885, 0.000000e+00
  %7888 = zext i1 %7886 to i32
  %7889 = zext i1 %7887 to i32
  %7890 = sub nsw i32 %7888, %7889
  %7891 = sitofp i32 %7890 to float
  %7892 = fcmp fast une float %7883, %7891
  br i1 %7892, label %7893, label %7903

; <label>:7893                                    ; preds = %7853
  %7894 = fmul fast float %7876, %7871
  %7895 = fmul fast float %7876, %7870
  %7896 = fmul fast float %7876, %7869
  %7897 = fmul fast float %7896, %7896
  %7898 = fmul fast float %7895, %7895
  %7899 = fadd fast float %7897, %7898
  %7900 = fmul fast float %7894, %7894
  %7901 = fadd fast float %7899, %7900
  %7902 = call float @dx.op.unary.f32(i32 24, float %7901)  ; Sqrt(value)
  br label %7915

; <label>:7903                                    ; preds = %7853
  %7904 = icmp slt i32 %7882, 0
  br i1 %7904, label %7905, label %7915

; <label>:7905                                    ; preds = %7903
  %7906 = fsub fast float %201, %7594
  %7907 = fsub fast float %202, %7595
  %7908 = fsub fast float %203, %7865
  %7909 = fmul fast float %7906, %7906
  %7910 = fmul fast float %7907, %7907
  %7911 = fadd fast float %7909, %7910
  %7912 = fmul fast float %7908, %7908
  %7913 = fadd fast float %7911, %7912
  %7914 = call float @dx.op.unary.f32(i32 24, float %7913)  ; Sqrt(value)
  br label %7915

; <label>:7915                                    ; preds = %7905, %7903, %7893
  %7916 = phi float [ %7902, %7893 ], [ %7914, %7905 ], [ 0.000000e+00, %7903 ]
  %7917 = and i1 %7860, %7858
  %7918 = fsub fast float -0.000000e+00, %7916
  %7919 = select i1 %7917, float -0.000000e+00, float %7918
  %7920 = fmul fast float %4241, 0x3FF7154760000000
  %7921 = fmul fast float %7920, %7919
  %7922 = fmul fast float %4242, 0x3FF7154760000000
  %7923 = fmul fast float %7922, %7919
  %7924 = fmul fast float %4243, 0x3FF7154760000000
  %7925 = fmul fast float %7924, %7919
  %7926 = call float @dx.op.unary.f32(i32 21, float %7921)  ; Exp(value)
  %7927 = call float @dx.op.unary.f32(i32 21, float %7923)  ; Exp(value)
  %7928 = call float @dx.op.unary.f32(i32 21, float %7925)  ; Exp(value)
  %7929 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7930 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7931 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7932 = fmul fast float %7854, %7929
  %7933 = fmul fast float %7855, %7930
  %7934 = fmul fast float %7856, %7931
  %7935 = fsub fast float %7628, %5033
  %7936 = fsub fast float %7629, %5032
  %7937 = fsub fast float %7630, %5031
  %7938 = call float @dx.op.dot3.f32(i32 55, float %7935, float %7936, float %7937, float %7935, float %7936, float %7937)  ; Dot3(ax,ay,az,bx,by,bz)
  %7939 = call float @dx.op.unary.f32(i32 25, float %7938)  ; Rsqrt(value)
  %7940 = fmul fast float %7939, %7935
  %7941 = fmul fast float %7939, %7936
  %7942 = fmul fast float %7939, %7937
  %7943 = call float @dx.op.dot3.f32(i32 55, float %7628, float %7629, float %7630, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %7944 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5029, float %5028, float %7940, float %7941, float %7942)  ; Dot3(ax,ay,az,bx,by,bz)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7946 = fmul fast float %7945, %7635
  %7947 = fmul fast float %7945, %7945
  %7948 = fmul fast float %7947, %5073
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = fmul fast float %7946, %7949
  %7951 = bitcast float %7625 to i32
  %7952 = ashr i32 %7951, 1
  %7953 = sub nsw i32 1597463007, %7952
  %7954 = bitcast i32 %7953 to float
  %7955 = fmul fast float %7954, %7622
  %7956 = fmul fast float %7954, %7623
  %7957 = fmul fast float %7954, %7624
  %7958 = fsub fast float %7955, %5033
  %7959 = fsub fast float %7956, %5032
  %7960 = fsub fast float %7957, %5031
  %7961 = call float @dx.op.dot3.f32(i32 55, float %7958, float %7959, float %7960, float %7958, float %7959, float %7960)  ; Dot3(ax,ay,az,bx,by,bz)
  %7962 = call float @dx.op.unary.f32(i32 25, float %7961)  ; Rsqrt(value)
  %7963 = fmul fast float %7958, %7962
  %7964 = fmul fast float %7959, %7962
  %7965 = fmul fast float %7960, %7962
  %7966 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %7963, float %7964, float %7965)  ; Dot3(ax,ay,az,bx,by,bz)
  %7967 = fmul fast float %7966, %7966
  %7968 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %7969 = fsub fast float 1.000000e+00, %5066
  %7970 = fmul fast float %5048, %5048
  %7971 = fmul fast float %7970, %7969
  %7972 = fadd fast float %7971, %5066
  %7973 = bitcast float %7972 to i32
  %7974 = ashr i32 %7973, 1
  %7975 = add nsw i32 %7974, 532487669
  %7976 = bitcast i32 %7975 to float
  %7977 = fadd fast float %7976, %5048
  %7978 = fmul fast float %5066, %7967
  %7979 = fsub fast float 1.000000e+00, %7967
  %7980 = fadd fast float %7979, %7978
  %7981 = fmul fast float %7968, %7968
  %7982 = fmul fast float %7981, %7969
  %7983 = fadd fast float %7982, %5066
  %7984 = bitcast float %7983 to i32
  %7985 = ashr i32 %7984, 1
  %7986 = add nsw i32 %7985, 532487669
  %7987 = bitcast i32 %7986 to float
  %7988 = fadd fast float %7987, %7968
  %7989 = fmul fast float %7980, %7980
  %7990 = fmul fast float %7989, %7977
  %7991 = fmul fast float %7990, %7988
  %7992 = fdiv fast float 1.000000e+00, %7991
  %7993 = bitcast float %5066 to i32
  %7994 = sitofp i32 %7993 to float
  %7995 = fmul fast float %7994, 0x3FE7F73180000000
  %7996 = fadd fast float %7995, 0x41AFE27C40000000
  %7997 = fptosi float %7996 to i32
  %7998 = bitcast i32 %7997 to float
  %7999 = fmul fast float %7591, 0x3FD80E9D60000000
  %8000 = fmul fast float %7999, %7954
  %8001 = fadd fast float %7998, %8000
  %8002 = bitcast float %8001 to i32
  %8003 = sub nsw i32 2129859010, %8002
  %8004 = bitcast i32 %8003 to float
  %8005 = fmul fast float %5066, %7992
  %8006 = fmul fast float %8005, %7998
  %8007 = fmul fast float %8006, %8004
  %8008 = call float @dx.op.unary.f32(i32 6, float %7944)  ; FAbs(value)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = bitcast float %8009 to i32
  %8011 = sitofp i32 %8010 to float
  %8012 = fmul fast float %8011, 5.000000e+00
  %8013 = fadd fast float %8012, 0xC1EFBF8940000000
  %8014 = fptosi float %8013 to i32
  %8015 = bitcast i32 %8014 to float
  %8016 = fsub fast float 1.000000e+00, %5040
  %8017 = fsub fast float 1.000000e+00, %5041
  %8018 = fsub fast float 1.000000e+00, %5046
  %8019 = fmul fast float %8015, %8016
  %8020 = fmul fast float %8015, %8017
  %8021 = fmul fast float %8015, %8018
  %8022 = fadd fast float %8019, %5040
  %8023 = fadd fast float %8020, %5041
  %8024 = fadd fast float %8021, %5046
  br i1 %5185, label %8025, label %8048

; <label>:8025                                    ; preds = %7915
  %8026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3839, float %8008, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = extractvalue %dx.types.ResRet.f32 %8026, 1
  %8029 = extractvalue %dx.types.ResRet.f32 %8026, 2
  %8030 = fadd fast float %8027, -5.000000e-01
  %8031 = fadd fast float %8028, -5.000000e-01
  %8032 = fadd fast float %8029, -5.000000e-01
  %8033 = fmul fast float %5040, 4.000000e+00
  %8034 = fmul fast float %8033, %8016
  %8035 = fmul fast float %8034, %8030
  %8036 = fmul fast float %5041, 4.000000e+00
  %8037 = fmul fast float %8036, %8017
  %8038 = fmul fast float %8037, %8031
  %8039 = fmul fast float %5046, 4.000000e+00
  %8040 = fmul fast float %8039, %8018
  %8041 = fmul fast float %8040, %8032
  %8042 = fadd fast float %8035, %8022
  %8043 = fadd fast float %8038, %8023
  %8044 = fadd fast float %8041, %8024
  %8045 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  br label %8048

; <label>:8048                                    ; preds = %8025, %7915
  %8049 = phi float [ %8045, %8025 ], [ %8022, %7915 ]
  %8050 = phi float [ %8046, %8025 ], [ %8023, %7915 ]
  %8051 = phi float [ %8047, %8025 ], [ %8024, %7915 ]
  %8052 = fmul fast float %7943, 9.843750e-01
  %8053 = fadd fast float %8052, 7.812500e-03
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8053, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 3
  %8057 = fmul fast float %8055, %5040
  %8058 = fmul fast float %8055, %5041
  %8059 = fmul fast float %8055, %5046
  %8060 = fadd fast float %8057, %8056
  %8061 = fadd fast float %8058, %8056
  %8062 = fadd fast float %8059, %8056
  br i1 %5185, label %8063, label %8086

; <label>:8063                                    ; preds = %8048
  %8064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3839, float %7943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = fadd fast float %8065, -5.000000e-01
  %8069 = fadd fast float %8066, -5.000000e-01
  %8070 = fadd fast float %8067, -5.000000e-01
  %8071 = fmul fast float %5040, 4.000000e+00
  %8072 = fmul fast float %8071, %8016
  %8073 = fmul fast float %8072, %8068
  %8074 = fmul fast float %5041, 4.000000e+00
  %8075 = fmul fast float %8074, %8017
  %8076 = fmul fast float %8075, %8069
  %8077 = fmul fast float %5046, 4.000000e+00
  %8078 = fmul fast float %8077, %8018
  %8079 = fmul fast float %8078, %8070
  %8080 = fadd fast float %8073, %8060
  %8081 = fadd fast float %8076, %8061
  %8082 = fadd fast float %8079, %8062
  %8083 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8084 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8085 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  br label %8086

; <label>:8086                                    ; preds = %8063, %8048
  %8087 = phi float [ %8083, %8063 ], [ %8060, %8048 ]
  %8088 = phi float [ %8084, %8063 ], [ %8061, %8048 ]
  %8089 = phi float [ %8085, %8063 ], [ %8062, %8048 ]
  %8090 = call float @dx.op.binary.f32(i32 35, float %8088, float %8089)  ; FMax(a,b)
  %8091 = call float @dx.op.binary.f32(i32 35, float %8087, float %8090)  ; FMax(a,b)
  %8092 = fsub fast float 1.000000e+00, %8091
  %8093 = fmul fast float %8049, %8007
  %8094 = fmul fast float %8050, %8007
  %8095 = fmul fast float %8051, %8007
  %8096 = fsub fast float 1.000000e+00, %7944
  %8097 = bitcast float %8096 to i32
  %8098 = sitofp i32 %8097 to float
  %8099 = fmul fast float %8098, 5.000000e+00
  %8100 = fadd fast float %8099, 0xC1EFBF8940000000
  %8101 = fptosi float %8100 to i32
  %8102 = bitcast i32 %8101 to float
  %8103 = fmul fast float %8102, %3840
  %8104 = fmul fast float %8092, %8103
  %8105 = fmul fast float %8104, %5727
  %8106 = fmul fast float %8104, %5728
  %8107 = fmul fast float %8104, %5729
  %8108 = fadd fast float %8105, %8093
  %8109 = fadd fast float %8106, %8094
  %8110 = fadd fast float %8107, %8095
  %8111 = fmul fast float %7932, %3836
  %8112 = fmul fast float %8111, %7950
  %8113 = fmul fast float %8112, %8092
  %8114 = fmul fast float %7933, %3836
  %8115 = fmul fast float %8114, %7950
  %8116 = fmul fast float %8115, %8092
  %8117 = fmul fast float %7934, %3836
  %8118 = fmul fast float %8117, %7950
  %8119 = fmul fast float %8118, %8092
  %8120 = fadd fast float %8113, %7565
  %8121 = fadd fast float %8116, %7566
  %8122 = fadd fast float %8119, %7567
  %8123 = fmul fast float %8112, %8108
  %8124 = fmul fast float %8115, %8109
  %8125 = fmul fast float %8118, %8110
  %8126 = fadd fast float %8123, %7562
  %8127 = fadd fast float %8124, %7563
  %8128 = fadd fast float %8125, %7564
  br label %7694

; <label>:8129                                    ; preds = %7694
  br label %8130

; <label>:8130                                    ; preds = %8129, %7528
  %8131 = phi float [ %7530, %7528 ], [ %7695, %8129 ]
  %8132 = phi float [ %7531, %7528 ], [ %7696, %8129 ]
  %8133 = phi float [ %7532, %7528 ], [ %7697, %8129 ]
  %8134 = phi float [ %7533, %7528 ], [ %7698, %8129 ]
  %8135 = phi float [ %7534, %7528 ], [ %7699, %8129 ]
  %8136 = phi float [ %7535, %7528 ], [ %7700, %8129 ]
  %8137 = add i32 %7529, 1
  %8138 = icmp ugt i32 %8137, %7525
  br i1 %8138, label %8139, label %7528

; <label>:8139                                    ; preds = %8130
  br label %8140

; <label>:8140                                    ; preds = %8139, %7478, %7468
  %8141 = phi float [ %7469, %7468 ], [ %7469, %7478 ], [ %8131, %8139 ]
  %8142 = phi float [ %7470, %7468 ], [ %7470, %7478 ], [ %8132, %8139 ]
  %8143 = phi float [ %7471, %7468 ], [ %7471, %7478 ], [ %8133, %8139 ]
  %8144 = phi float [ %7472, %7468 ], [ %7472, %7478 ], [ %8134, %8139 ]
  %8145 = phi float [ %7473, %7468 ], [ %7473, %7478 ], [ %8135, %8139 ]
  %8146 = phi float [ %7474, %7468 ], [ %7474, %7478 ], [ %8136, %8139 ]
  %8147 = fmul fast float %3836, %3836
  %8148 = fsub fast float 1.000000e+00, %8147
  %8149 = call float @dx.op.dot3.f32(i32 55, float %8148, float %8148, float %8148, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8150 = fsub fast float 1.000000e+00, %8149
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 0
  %8153 = fmul fast float %8152, %5733
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 3
  %8156 = fsub fast float 1.000000e+00, %3844
  %8157 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8158 = fadd fast float %8146, %3842
  %8159 = fmul fast float %8158, %3844
  %8160 = fmul fast float %8157, %8155
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 3
  %8163 = fmul fast float %8144, %5034
  %8164 = fmul fast float %8145, %5035
  %8165 = fmul fast float %8146, %5036
  %8166 = fcmp fast ogt float %101, %223
  %8167 = and i1 %8166, %4247
  %8168 = or i1 %4253, %8167
  %8169 = icmp eq i32 %4246, 2
  %8170 = fcmp fast ole float %101, %223
  %8171 = and i1 %8170, %8169
  %8172 = or i1 %8171, %8168
  br i1 %8167, label %8173, label %8430

; <label>:8173                                    ; preds = %8140
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 2
  %8176 = extractvalue %dx.types.CBufRet.f32 %8174, 3
  %8177 = fmul fast float %8175, %114
  %8178 = fmul fast float %8176, %115
  %8179 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8180 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8179, float %8180, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  %8185 = extractvalue %dx.types.ResRet.f32 %8181, 3
  %8186 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8179, float %8180, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = extractvalue %dx.types.ResRet.f32 %8186, 3
  %8191 = call float @dx.op.binary.f32(i32 35, float %8183, float %8184)  ; FMax(a,b)
  %8192 = call float @dx.op.binary.f32(i32 35, float %8182, float %8191)  ; FMax(a,b)
  %8193 = call float @dx.op.binary.f32(i32 35, float %8192, float %8185)  ; FMax(a,b)
  %8194 = call float @dx.op.binary.f32(i32 36, float %8188, float %8189)  ; FMin(a,b)
  %8195 = call float @dx.op.binary.f32(i32 36, float %8187, float %8194)  ; FMin(a,b)
  %8196 = call float @dx.op.binary.f32(i32 36, float %8195, float %8190)  ; FMin(a,b)
  %8197 = fmul fast float %8193, 2.550000e+02
  %8198 = fadd fast float %8197, 0x3F70101020000000
  %8199 = fptoui float %8198 to i32
  %8200 = fmul fast float %8196, 2.550000e+02
  %8201 = fadd fast float %8200, 0x3F70101020000000
  %8202 = fptoui float %8201 to i32
  %8203 = icmp ult i32 %8199, %8202
  br i1 %8203, label %8204, label %8372

; <label>:8204                                    ; preds = %8173
  %8205 = fcmp fast ogt float %100, 9.843750e-01
  %8206 = fadd fast float %101, -4.000000e+00
  %8207 = select i1 %8205, float -4.000000e+00, float %8206
  %8208 = call float @dx.op.binary.f32(i32 35, float %8207, float 0.000000e+00)  ; FMax(a,b)
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 0
  %8211 = fadd fast float %8210, %8208
  %8212 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8213 = fmul fast float %8211, %8212
  %8214 = call float @dx.op.unary.f32(i32 23, float %8213)  ; Log(value)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8216 = fmul fast float %8215, %8214
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8219 = fmul fast float %8216, %8218
  %8220 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8221 = uitofp i32 %8199 to float
  %8222 = uitofp i32 %8202 to float
  %8223 = fadd fast float %8221, 5.000000e-01
  %8224 = fadd fast float %8222, 5.000000e-01
  %8225 = fmul fast float %8218, %8223
  %8226 = fmul fast float %8218, %8224
  %8227 = fadd fast float %8225, 0x3F0FFB4800000000
  %8228 = fadd fast float %8226, 0xBF0FFB4800000000
  %8229 = call float @dx.op.binary.f32(i32 35, float %8220, float %8227)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8229, float %8228)  ; FMin(a,b)
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8233 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8235 = fmul fast float %8232, %8230
  %8236 = fadd fast float %8234, %8235
  %8237 = fadd fast float %8234, %8233
  %8238 = fsub fast float %8232, %8233
  %8239 = fadd fast float %8238, %8234
  %8240 = call float @dx.op.binary.f32(i32 35, float %8236, float %8237)  ; FMax(a,b)
  %8241 = call float @dx.op.binary.f32(i32 36, float %8240, float %8239)  ; FMin(a,b)
  %8242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8179, float %8180, float %8241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8243 = extractvalue %dx.types.ResRet.f32 %8242, 0
  %8244 = extractvalue %dx.types.ResRet.f32 %8242, 1
  %8245 = extractvalue %dx.types.ResRet.f32 %8242, 2
  %8246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.i32 %8246, 0
  %8248 = extractvalue %dx.types.CBufRet.i32 %8246, 1
  %8249 = uitofp i32 %8247 to float
  %8250 = uitofp i32 %8248 to float
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 0
  %8253 = extractvalue %dx.types.CBufRet.f32 %8251, 1
  %8254 = fmul fast float %8249, %8179
  %8255 = fmul fast float %8250, %8180
  %8256 = fadd fast float %8254, -5.000000e-01
  %8257 = fadd fast float %8255, -5.000000e-01
  %8258 = call float @dx.op.unary.f32(i32 22, float %8256)  ; Frc(value)
  %8259 = call float @dx.op.unary.f32(i32 22, float %8257)  ; Frc(value)
  %8260 = fmul fast float %8258, %8258
  %8261 = fmul fast float %8260, %8258
  %8262 = fsub fast float 3.000000e+00, %8258
  %8263 = fmul fast float %8260, %8262
  %8264 = fmul fast float %8258, 3.000000e+00
  %8265 = fmul fast float %8261, 3.000000e+00
  %8266 = fmul fast float %8260, 6.000000e+00
  %8267 = fsub fast float %8265, %8266
  %8268 = fadd fast float %8267, 4.000000e+00
  %8269 = fmul fast float %8268, 0x3FC5555560000000
  %8270 = fmul fast float %8261, -3.000000e+00
  %8271 = fadd fast float %8260, %8258
  %8272 = fmul fast float %8271, 3.000000e+00
  %8273 = fadd fast float %8270, 1.000000e+00
  %8274 = fadd fast float %8273, %8272
  %8275 = fmul fast float %8261, 0x3FC5555560000000
  %8276 = fmul fast float %8259, %8259
  %8277 = fmul fast float %8276, %8259
  %8278 = fsub fast float 3.000000e+00, %8259
  %8279 = fmul fast float %8276, %8278
  %8280 = fmul fast float %8259, 3.000000e+00
  %8281 = fmul fast float %8277, 3.000000e+00
  %8282 = fmul fast float %8276, 6.000000e+00
  %8283 = fsub fast float %8281, %8282
  %8284 = fadd fast float %8283, 4.000000e+00
  %8285 = fmul fast float %8284, 0x3FC5555560000000
  %8286 = fmul fast float %8277, -3.000000e+00
  %8287 = fadd fast float %8276, %8259
  %8288 = fmul fast float %8287, 3.000000e+00
  %8289 = fadd fast float %8286, 1.000000e+00
  %8290 = fadd fast float %8289, %8288
  %8291 = fmul fast float %8277, 0x3FC5555560000000
  %8292 = fadd fast float %8258, 1.000000e+00
  %8293 = fsub fast float 1.000000e+00, %8264
  %8294 = fadd fast float %8293, %8263
  %8295 = fadd fast float %8294, %8268
  %8296 = fmul fast float %8295, 0x3FC5555560000000
  %8297 = fdiv fast float %8269, %8296
  %8298 = fsub fast float %8292, %8297
  %8299 = fsub fast float 1.000000e+00, %8258
  %8300 = fadd fast float %8274, %8261
  %8301 = fmul fast float %8300, 0x3FC5555560000000
  %8302 = fdiv fast float %8275, %8301
  %8303 = fadd fast float %8299, %8302
  %8304 = fadd fast float %8259, 1.000000e+00
  %8305 = fsub fast float 1.000000e+00, %8280
  %8306 = fadd fast float %8305, %8279
  %8307 = fadd fast float %8306, %8284
  %8308 = fmul fast float %8307, 0x3FC5555560000000
  %8309 = fdiv fast float %8285, %8308
  %8310 = fsub fast float %8304, %8309
  %8311 = fsub fast float 1.000000e+00, %8259
  %8312 = fadd fast float %8290, %8277
  %8313 = fmul fast float %8312, 0x3FC5555560000000
  %8314 = fdiv fast float %8291, %8313
  %8315 = fadd fast float %8314, %8311
  %8316 = fmul fast float %8298, %8252
  %8317 = fsub fast float %8179, %8316
  %8318 = fmul fast float %8303, %8252
  %8319 = fadd fast float %8318, %8179
  %8320 = fmul fast float %8315, %8253
  %8321 = fadd fast float %8320, %8180
  %8322 = fmul fast float %8310, %8253
  %8323 = fsub fast float %8180, %8322
  %8324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8317, float %8323, float %8241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8325 = extractvalue %dx.types.ResRet.f32 %8324, 0
  %8326 = extractvalue %dx.types.ResRet.f32 %8324, 1
  %8327 = extractvalue %dx.types.ResRet.f32 %8324, 2
  %8328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8319, float %8323, float %8241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.ResRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.ResRet.f32 %8328, 2
  %8332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8317, float %8321, float %8241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8333 = extractvalue %dx.types.ResRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.ResRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.ResRet.f32 %8332, 2
  %8336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8319, float %8321, float %8241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8337 = extractvalue %dx.types.ResRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.ResRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.ResRet.f32 %8336, 2
  %8340 = fsub fast float %8333, %8325
  %8341 = fsub fast float %8334, %8326
  %8342 = fsub fast float %8335, %8327
  %8343 = fmul fast float %8340, %8313
  %8344 = fmul fast float %8341, %8313
  %8345 = fmul fast float %8342, %8313
  %8346 = fadd fast float %8343, %8325
  %8347 = fadd fast float %8344, %8326
  %8348 = fadd fast float %8345, %8327
  %8349 = fsub fast float %8337, %8329
  %8350 = fsub fast float %8338, %8330
  %8351 = fsub fast float %8339, %8331
  %8352 = fmul fast float %8349, %8313
  %8353 = fmul fast float %8350, %8313
  %8354 = fmul fast float %8351, %8313
  %8355 = fsub fast float %8329, %8346
  %8356 = fadd fast float %8355, %8352
  %8357 = fsub fast float %8330, %8347
  %8358 = fadd fast float %8357, %8353
  %8359 = fsub fast float %8331, %8348
  %8360 = fadd fast float %8359, %8354
  %8361 = fmul fast float %8356, %8301
  %8362 = fmul fast float %8358, %8301
  %8363 = fmul fast float %8360, %8301
  %8364 = fadd fast float %8361, %8346
  %8365 = fadd fast float %8362, %8347
  %8366 = fadd fast float %8363, %8348
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8369 = fmul fast float %8364, %8368
  %8370 = fmul fast float %8365, %8368
  %8371 = fmul fast float %8366, %8368
  br label %8372

; <label>:8372                                    ; preds = %8204, %8173
  %8373 = phi float [ %8243, %8204 ], [ 1.000000e+00, %8173 ]
  %8374 = phi float [ %8244, %8204 ], [ 1.000000e+00, %8173 ]
  %8375 = phi float [ %8245, %8204 ], [ 1.000000e+00, %8173 ]
  %8376 = phi float [ %8369, %8204 ], [ 0.000000e+00, %8173 ]
  %8377 = phi float [ %8370, %8204 ], [ 0.000000e+00, %8173 ]
  %8378 = phi float [ %8371, %8204 ], [ 0.000000e+00, %8173 ]
  %8379 = fmul fast float %8376, %8150
  %8380 = fmul fast float %8377, %8150
  %8381 = fmul fast float %8378, %8150
  %8382 = call float @dx.op.dot3.f32(i32 55, float %8373, float %8374, float %8375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8383 = call float @dx.op.dot3.f32(i32 55, float %8379, float %8380, float %8381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8384 = select i1 %260, float %8382, float %8373
  %8385 = select i1 %260, float %8382, float %8374
  %8386 = select i1 %260, float 1.000000e+00, float %8375
  %8387 = select i1 %260, float %8383, float %8379
  %8388 = select i1 %260, float 0.000000e+00, float %8380
  %8389 = select i1 %260, float 0.000000e+00, float %8381
  %8390 = fmul fast float %8384, %8163
  %8391 = fmul fast float %8385, %8164
  %8392 = fmul fast float %8386, %8165
  %8393 = fadd fast float %8390, %8387
  %8394 = fadd fast float %8391, %8388
  %8395 = fadd fast float %8389, %8392
  %8396 = fmul fast float %8384, %8141
  %8397 = fmul fast float %8385, %8142
  %8398 = fmul fast float %8386, %8143
  %8399 = fmul fast float %150, %8175
  %8400 = fmul fast float %152, %8176
  %8401 = fsub fast float 1.000000e+00, %8399
  %8402 = fsub fast float 1.000000e+00, %8400
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = fmul fast float %8401, %8404
  %8408 = fmul fast float %8401, %8405
  %8409 = fmul fast float %8401, %8406
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8413 = extractvalue %dx.types.CBufRet.f32 %8410, 2
  %8414 = fmul fast float %8402, %8411
  %8415 = fmul fast float %8402, %8412
  %8416 = fmul fast float %8402, %8413
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 0
  %8419 = extractvalue %dx.types.CBufRet.f32 %8417, 1
  %8420 = extractvalue %dx.types.CBufRet.f32 %8417, 2
  %8421 = fadd fast float %8414, %8418
  %8422 = fadd fast float %8421, %8407
  %8423 = fadd fast float %8415, %8419
  %8424 = fadd fast float %8423, %8408
  %8425 = fadd fast float %8416, %8420
  %8426 = fadd fast float %8425, %8409
  %8427 = fmul fast float %8422, %223
  %8428 = fmul fast float %8424, %223
  %8429 = fmul fast float %8426, %223
  br label %8430

; <label>:8430                                    ; preds = %8372, %8140
  %8431 = phi float [ %8427, %8372 ], [ %201, %8140 ]
  %8432 = phi float [ %8428, %8372 ], [ %202, %8140 ]
  %8433 = phi float [ %8429, %8372 ], [ %203, %8140 ]
  %8434 = phi float [ %223, %8372 ], [ %101, %8140 ]
  %8435 = phi float [ %8393, %8372 ], [ %8163, %8140 ]
  %8436 = phi float [ %8394, %8372 ], [ %8164, %8140 ]
  %8437 = phi float [ %8395, %8372 ], [ %8165, %8140 ]
  %8438 = phi float [ %8396, %8372 ], [ %8141, %8140 ]
  %8439 = phi float [ %8397, %8372 ], [ %8142, %8140 ]
  %8440 = phi float [ %8398, %8372 ], [ %8143, %8140 ]
  %8441 = phi float [ %8373, %8372 ], [ 1.000000e+00, %8140 ]
  br i1 %8172, label %9596, label %8442

; <label>:8442                                    ; preds = %8430
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8445 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8446 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8447 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %8452 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.CBufRet.f32 %8453, 2
  %8457 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8462 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 3
  %8467 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8469 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8470 = fcmp fast olt float %8469, -5.000000e-01
  %8471 = call float @dx.op.dot3.f32(i32 55, float %8431, float %8432, float %8433, float %8431, float %8432, float %8433)  ; Dot3(ax,ay,az,bx,by,bz)
  %8472 = call float @dx.op.unary.f32(i32 25, float %8471)  ; Rsqrt(value)
  %8473 = fmul fast float %8472, %8471
  %8474 = fmul fast float %8472, %8431
  %8475 = fmul fast float %8472, %8432
  %8476 = fmul fast float %8472, %8433
  %8477 = fadd fast float %8473, %8447
  %8478 = call float @dx.op.dot3.f32(i32 55, float %8474, float %8475, float %8476, float %8444, float %8445, float %8446)  ; Dot3(ax,ay,az,bx,by,bz)
  %8479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.i32 %8479, 1
  %8481 = and i32 %8480, 1
  %8482 = icmp ne i32 %8481, 0
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8485 = fcmp fast ogt float %8484, 0.000000e+00
  %8486 = and i1 %8482, %8485
  br i1 %8486, label %8487, label %8893, !dx.controlflow.hints !136

; <label>:8487                                    ; preds = %8442
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8494 = fsub fast float %8491, %8493
  %8495 = and i32 %8480, 2
  %8496 = extractvalue %dx.types.CBufRet.i32 %8479, 0
  %8497 = call i32 @dx.op.binary.i32(i32 40, i32 %8496, i32 3)  ; UMin(a,b)
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8502 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8503 = fsub fast float %8499, %8501
  %8504 = fsub fast float %8500, %8502
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 0
  %8507 = fcmp fast ogt float %8506, 0.000000e+00
  %8508 = fsub fast float -0.000000e+00, %8503
  %8509 = fsub fast float -0.000000e+00, %8504
  %8510 = call float @dx.op.dot2.f32(i32 54, float %8474, float %8475, float %8474, float %8475)  ; Dot2(ax,ay,bx,by)
  %8511 = call float @dx.op.dot2.f32(i32 54, float %8474, float %8475, float %8508, float %8509)  ; Dot2(ax,ay,bx,by)
  %8512 = fmul fast float %8511, 2.000000e+00
  %8513 = call float @dx.op.dot2.f32(i32 54, float %8508, float %8509, float %8508, float %8509)  ; Dot2(ax,ay,bx,by)
  %8514 = fmul fast float %8506, %8506
  %8515 = fsub fast float %8513, %8514
  %8516 = fmul fast float %8512, %8512
  %8517 = fmul fast float %8510, 4.000000e+00
  %8518 = fmul fast float %8517, %8515
  %8519 = fsub fast float %8516, %8518
  %8520 = fcmp fast ogt float %8519, 0.000000e+00
  br i1 %8520, label %8521, label %8536

; <label>:8521                                    ; preds = %8487
  %8522 = fcmp fast ogt float %8512, 0.000000e+00
  %8523 = call float @dx.op.unary.f32(i32 24, float %8519)  ; Sqrt(value)
  %8524 = fsub fast float -0.000000e+00, %8523
  %8525 = select i1 %8522, float %8523, float %8524
  %8526 = fadd fast float %8525, %8512
  %8527 = fmul float %8526, -5.000000e-01
  %8528 = fdiv fast float %8527, %8510
  %8529 = call float @dx.op.binary.f32(i32 35, float %8528, float 0.000000e+00)  ; FMax(a,b)
  %8530 = call float @dx.op.binary.f32(i32 36, float %8473, float %8529)  ; FMin(a,b)
  %8531 = fdiv fast float %8515, %8527
  %8532 = call float @dx.op.binary.f32(i32 35, float %8531, float 0.000000e+00)  ; FMax(a,b)
  %8533 = call float @dx.op.binary.f32(i32 36, float %8473, float %8532)  ; FMin(a,b)
  %8534 = call float @dx.op.binary.f32(i32 36, float %8530, float %8533)  ; FMin(a,b)
  %8535 = call float @dx.op.binary.f32(i32 35, float %8530, float %8533)  ; FMax(a,b)
  br label %8536

; <label>:8536                                    ; preds = %8521, %8487
  %8537 = phi float [ %8535, %8521 ], [ -1.000000e+00, %8487 ]
  %8538 = phi float [ %8534, %8521 ], [ -1.000000e+00, %8487 ]
  %8539 = phi i1 [ true, %8521 ], [ false, %8487 ]
  %8540 = and i1 %8507, %8539
  br i1 %8540, label %8541, label %8543

; <label>:8541                                    ; preds = %8536
  %8542 = fcmp fast oeq float %8538, %8537
  br i1 %8542, label %8846, label %8544

; <label>:8543                                    ; preds = %8536
  br i1 %8507, label %8846, label %8544

; <label>:8544                                    ; preds = %8543, %8541
  %8545 = phi float [ %8473, %8543 ], [ %8537, %8541 ]
  %8546 = phi float [ 0.000000e+00, %8543 ], [ %8538, %8541 ]
  %8547 = icmp ne i32 %8495, 0
  %8548 = fmul fast float %8545, %8476
  %8549 = fadd fast float %8548, %8489
  %8550 = fmul fast float %8549, %8545
  %8551 = select i1 %8547, float 0.000000e+00, float %8550
  %8552 = fcmp fast oeq float %8476, 0.000000e+00
  %8553 = fdiv fast float %8494, %8476
  %8554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8553)  ; FMax(a,b)
  %8555 = select i1 %8552, float %8545, float %8554
  %8556 = call float @dx.op.binary.f32(i32 36, float %8545, float %8555)  ; FMin(a,b)
  %8557 = fcmp fast ogt float %8476, 0.000000e+00
  %8558 = fcmp fast olt float %8494, 0.000000e+00
  br i1 %8557, label %8559, label %8616

; <label>:8559                                    ; preds = %8544
  %8560 = icmp eq i32 %8495, 0
  br i1 %8558, label %8561, label %8605

; <label>:8561                                    ; preds = %8559
  %8562 = select i1 %8560, float %8545, float 0.000000e+00
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = call float @dx.op.unary.f32(i32 6, float %8563)  ; FAbs(value)
  %8565 = fmul fast float %8562, %8476
  %8566 = fadd fast float %8565, %8489
  %8567 = fmul fast float %8564, %8566
  %8568 = fsub fast float %8551, %8567
  %8569 = fsub fast float %8545, %8564
  %8570 = select i1 %8560, float %8569, float 0.000000e+00
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 0
  %8573 = extractvalue %dx.types.CBufRet.f32 %8571, 1
  %8574 = extractvalue %dx.types.CBufRet.f32 %8571, 2
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8582 = call float @dx.op.binary.f32(i32 36, float %8568, float %8581)  ; FMin(a,b)
  %8583 = fmul fast float %8579, %8570
  %8584 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8585 = fsub fast float %8576, %8572
  %8586 = fsub fast float %8577, %8573
  %8587 = fsub fast float %8578, %8574
  %8588 = fmul fast float %8584, %8585
  %8589 = fmul fast float %8584, %8586
  %8590 = fmul fast float %8584, %8587
  %8591 = fadd fast float %8588, %8572
  %8592 = fadd fast float %8589, %8573
  %8593 = fadd fast float %8590, %8574
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 0
  %8596 = extractvalue %dx.types.CBufRet.f32 %8594, 1
  %8597 = fadd fast float %8596, %8595
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8594, 2
  %8600 = extractvalue %dx.types.CBufRet.f32 %8594, 3
  %8601 = fadd fast float %8600, %8599
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fmul fast float %8598, %8582
  %8604 = fmul fast float %8603, %8602
  br label %8846

; <label>:8605                                    ; preds = %8559
  br i1 %8560, label %8606, label %8627

; <label>:8606                                    ; preds = %8605
  %8607 = call float @dx.op.binary.f32(i32 36, float %8556, float %8546)  ; FMin(a,b)
  %8608 = fsub fast float %8556, %8607
  %8609 = fsub fast float %8608, %8545
  %8610 = call float @dx.op.unary.f32(i32 6, float %8609)  ; FAbs(value)
  %8611 = fadd fast float %8608, %8545
  %8612 = fmul fast float %8611, %8476
  %8613 = fadd fast float %8612, %8489
  %8614 = fmul fast float %8613, %8610
  %8615 = fsub fast float %8551, %8614
  br label %8627

; <label>:8616                                    ; preds = %8544
  br i1 %8558, label %8617, label %8627

; <label>:8617                                    ; preds = %8616
  %8618 = call float @dx.op.binary.f32(i32 35, float %8546, float %8556)  ; FMax(a,b)
  %8619 = icmp eq i32 %8495, 0
  %8620 = select i1 %8619, float %8556, float 0.000000e+00
  %8621 = fsub fast float -0.000000e+00, %8620
  %8622 = call float @dx.op.unary.f32(i32 6, float %8621)  ; FAbs(value)
  %8623 = fmul fast float %8620, %8476
  %8624 = fadd fast float %8623, %8489
  %8625 = fmul fast float %8622, %8624
  %8626 = fsub fast float %8551, %8625
  br label %8627

; <label>:8627                                    ; preds = %8617, %8616, %8606, %8605
  %8628 = phi float [ %8546, %8605 ], [ %8546, %8606 ], [ %8618, %8617 ], [ %8546, %8616 ]
  %8629 = phi float [ 0.000000e+00, %8605 ], [ %8610, %8606 ], [ %8622, %8617 ], [ 0.000000e+00, %8616 ]
  %8630 = phi float [ %8551, %8605 ], [ %8615, %8606 ], [ %8626, %8617 ], [ %8551, %8616 ]
  %8631 = phi float [ %8556, %8605 ], [ %8556, %8606 ], [ %8545, %8617 ], [ %8545, %8616 ]
  %8632 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8632, align 4, !tbaa !122, !noalias !137
  %8633 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8633, align 4, !tbaa !122, !noalias !137
  %8634 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8634, align 4, !tbaa !122, !noalias !137
  %8635 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8635, align 4, !tbaa !122, !noalias !137
  %8636 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8636, align 4, !tbaa !122, !noalias !137
  %8637 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8637, align 4, !tbaa !122, !noalias !137
  %8638 = icmp sgt i32 %8497, 0
  br i1 %8638, label %8639, label %8700

; <label>:8639                                    ; preds = %8627
  br label %8640

; <label>:8640                                    ; preds = %8689, %8639
  %8641 = phi i32 [ %8690, %8689 ], [ 0, %8639 ]
  %8642 = phi i32 [ %8691, %8689 ], [ 0, %8639 ]
  %8643 = add nuw i32 %8642, 171
  %8644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8643)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.CBufRet.f32 %8644, 1
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = fsub fast float %8645, %8648
  %8651 = fsub fast float %8646, %8649
  %8652 = extractvalue %dx.types.CBufRet.f32 %8644, 2
  %8653 = fsub fast float -0.000000e+00, %8650
  %8654 = fsub fast float -0.000000e+00, %8651
  %8655 = call float @dx.op.dot2.f32(i32 54, float %8474, float %8475, float %8653, float %8654)  ; Dot2(ax,ay,bx,by)
  %8656 = fmul fast float %8655, 2.000000e+00
  %8657 = call float @dx.op.dot2.f32(i32 54, float %8653, float %8654, float %8653, float %8654)  ; Dot2(ax,ay,bx,by)
  %8658 = fmul fast float %8652, %8652
  %8659 = fsub fast float %8657, %8658
  %8660 = fmul fast float %8656, %8656
  %8661 = fmul fast float %8517, %8659
  %8662 = fsub fast float %8660, %8661
  %8663 = fcmp fast ogt float %8662, 0.000000e+00
  br i1 %8663, label %8664, label %8679

; <label>:8664                                    ; preds = %8640
  %8665 = fcmp fast ogt float %8656, 0.000000e+00
  %8666 = call float @dx.op.unary.f32(i32 24, float %8662)  ; Sqrt(value)
  %8667 = fsub fast float -0.000000e+00, %8666
  %8668 = select i1 %8665, float %8666, float %8667
  %8669 = fadd fast float %8668, %8656
  %8670 = fmul float %8669, -5.000000e-01
  %8671 = fdiv fast float %8670, %8510
  %8672 = call float @dx.op.binary.f32(i32 35, float %8671, float 0.000000e+00)  ; FMax(a,b)
  %8673 = call float @dx.op.binary.f32(i32 36, float %8545, float %8672)  ; FMin(a,b)
  %8674 = fdiv fast float %8659, %8670
  %8675 = call float @dx.op.binary.f32(i32 35, float %8674, float 0.000000e+00)  ; FMax(a,b)
  %8676 = call float @dx.op.binary.f32(i32 36, float %8545, float %8675)  ; FMin(a,b)
  %8677 = call float @dx.op.binary.f32(i32 36, float %8673, float %8676)  ; FMin(a,b)
  %8678 = call float @dx.op.binary.f32(i32 35, float %8673, float %8676)  ; FMax(a,b)
  br label %8679

; <label>:8679                                    ; preds = %8664, %8640
  %8680 = phi float [ %8678, %8664 ], [ -1.000000e+00, %8640 ]
  %8681 = phi float [ %8677, %8664 ], [ -1.000000e+00, %8640 ]
  %8682 = phi i1 [ true, %8664 ], [ false, %8640 ]
  br i1 %8682, label %8683, label %8689

; <label>:8683                                    ; preds = %8679
  %8684 = call float @dx.op.binary.f32(i32 35, float %8628, float %8681)  ; FMax(a,b)
  %8685 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8642
  store float %8684, float* %8685, align 4, !tbaa !122, !noalias !137
  %8686 = call float @dx.op.binary.f32(i32 35, float %8628, float %8680)  ; FMax(a,b)
  %8687 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8642
  store float %8686, float* %8687, align 4, !tbaa !122, !noalias !137
  %8688 = add nsw i32 %8641, 1
  br label %8689

; <label>:8689                                    ; preds = %8683, %8679
  %8690 = phi i32 [ %8688, %8683 ], [ %8641, %8679 ]
  %8691 = add nuw nsw i32 %8642, 1
  %8692 = icmp eq i32 %8691, %8497
  br i1 %8692, label %8693, label %8640

; <label>:8693                                    ; preds = %8689
  %8694 = load float, float* %8634, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8695 = load float, float* %8633, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8696 = load float, float* %8632, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8697 = load float, float* %8637, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8698 = load float, float* %8636, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8699 = load float, float* %8635, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8700

; <label>:8700                                    ; preds = %8693, %8627
  %8701 = phi float [ -1.000000e+00, %8627 ], [ %8699, %8693 ]
  %8702 = phi float [ -1.000000e+00, %8627 ], [ %8698, %8693 ]
  %8703 = phi float [ -1.000000e+00, %8627 ], [ %8697, %8693 ]
  %8704 = phi float [ -1.000000e+00, %8627 ], [ %8696, %8693 ]
  %8705 = phi float [ -1.000000e+00, %8627 ], [ %8695, %8693 ]
  %8706 = phi float [ -1.000000e+00, %8627 ], [ %8694, %8693 ]
  %8707 = phi i32 [ 0, %8627 ], [ %8690, %8693 ]
  %8708 = call float @dx.op.binary.f32(i32 36, float %8705, float %8706)  ; FMin(a,b)
  %8709 = call float @dx.op.binary.f32(i32 36, float %8704, float %8708)  ; FMin(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8704, float %8705)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8710, float %8706)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8704, float %8705)  ; FMin(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8712, float %8711)  ; FMax(a,b)
  %8714 = call float @dx.op.binary.f32(i32 35, float %8705, float %8706)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8704, float %8714)  ; FMax(a,b)
  store float %8709, float* %8632, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8713, float* %8633, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8715, float* %8634, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8716 = call float @dx.op.binary.f32(i32 36, float %8702, float %8703)  ; FMin(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8701, float %8716)  ; FMin(a,b)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8701, float %8702)  ; FMax(a,b)
  %8719 = call float @dx.op.binary.f32(i32 36, float %8718, float %8703)  ; FMin(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8701, float %8702)  ; FMin(a,b)
  %8721 = call float @dx.op.binary.f32(i32 35, float %8720, float %8719)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 35, float %8702, float %8703)  ; FMax(a,b)
  %8723 = call float @dx.op.binary.f32(i32 35, float %8701, float %8722)  ; FMax(a,b)
  store float %8717, float* %8635, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8721, float* %8636, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8723, float* %8637, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8724 = sub nsw i32 3, %8707
  %8725 = icmp sgt i32 %8724, 2
  br i1 %8725, label %8726, label %8764

; <label>:8726                                    ; preds = %8700
  %8727 = icmp eq i32 %8495, 0
  %8728 = fsub fast float %8545, %8629
  %8729 = select i1 %8727, float %8728, float %8629
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.CBufRet.f32 %8730, 1
  %8733 = extractvalue %dx.types.CBufRet.f32 %8730, 2
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 0
  %8736 = extractvalue %dx.types.CBufRet.f32 %8734, 1
  %8737 = extractvalue %dx.types.CBufRet.f32 %8734, 2
  %8738 = extractvalue %dx.types.CBufRet.f32 %8734, 3
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8741 = call float @dx.op.binary.f32(i32 36, float %8630, float %8740)  ; FMin(a,b)
  %8742 = fmul fast float %8738, %8729
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fsub fast float %8735, %8731
  %8745 = fsub fast float %8736, %8732
  %8746 = fsub fast float %8737, %8733
  %8747 = fmul fast float %8743, %8744
  %8748 = fmul fast float %8743, %8745
  %8749 = fmul fast float %8743, %8746
  %8750 = fadd fast float %8747, %8731
  %8751 = fadd fast float %8748, %8732
  %8752 = fadd fast float %8749, %8733
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 1
  %8756 = fadd fast float %8755, %8754
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8759 = extractvalue %dx.types.CBufRet.f32 %8753, 3
  %8760 = fadd fast float %8759, %8758
  %8761 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8762 = fmul fast float %8757, %8741
  %8763 = fmul fast float %8762, %8761
  br label %8846

; <label>:8764                                    ; preds = %8700
  %8765 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8724
  %8766 = load float, float* %8765, align 4, !tbaa !122, !noalias !137
  %8767 = fcmp fast olt float %8766, %8631
  %8768 = icmp sgt i32 %8707, 0
  %8769 = and i1 %8768, %8767
  br i1 %8769, label %8770, label %8807

; <label>:8770                                    ; preds = %8764
  br label %8771

; <label>:8771                                    ; preds = %8800, %8770
  %8772 = phi float [ %8801, %8800 ], [ %8629, %8770 ]
  %8773 = phi float [ %8802, %8800 ], [ %8630, %8770 ]
  %8774 = phi float [ %8782, %8800 ], [ %8766, %8770 ]
  %8775 = phi i32 [ %8779, %8800 ], [ %8724, %8770 ]
  %8776 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8775
  %8777 = load float, float* %8776, align 4, !tbaa !122, !noalias !137
  %8778 = icmp slt i32 %8775, 2
  %8779 = add nsw i32 %8775, 1
  %8780 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8779
  %8781 = load float, float* %8780, align 4, !tbaa !122, !noalias !137
  %8782 = select i1 %8778, float %8781, float %8545
  %8783 = call float @dx.op.binary.f32(i32 36, float %8782, float %8777)  ; FMin(a,b)
  %8784 = call float @dx.op.binary.f32(i32 36, float %8631, float %8783)  ; FMin(a,b)
  %8785 = icmp eq i32 %8495, 0
  %8786 = fadd fast float %8784, %8774
  %8787 = fmul fast float %8786, %8476
  %8788 = fadd fast float %8787, %8489
  br i1 %8785, label %8794, label %8789

; <label>:8789                                    ; preds = %8771
  %8790 = fsub fast float %8784, %8774
  %8791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8790)  ; FMax(a,b)
  %8792 = fmul fast float %8791, %8788
  %8793 = fadd fast float %8792, %8773
  br label %8800

; <label>:8794                                    ; preds = %8771
  %8795 = fsub fast float %8774, %8784
  %8796 = call float @dx.op.unary.f32(i32 6, float %8795)  ; FAbs(value)
  %8797 = fadd fast float %8796, %8772
  %8798 = fmul fast float %8796, %8788
  %8799 = fsub fast float %8773, %8798
  br label %8800

; <label>:8800                                    ; preds = %8794, %8789
  %8801 = phi float [ %8791, %8789 ], [ %8797, %8794 ]
  %8802 = phi float [ %8793, %8789 ], [ %8799, %8794 ]
  %8803 = fcmp fast olt float %8782, %8631
  %8804 = icmp slt i32 %8779, 3
  %8805 = and i1 %8804, %8803
  br i1 %8805, label %8771, label %8806

; <label>:8806                                    ; preds = %8800
  br label %8807

; <label>:8807                                    ; preds = %8806, %8764
  %8808 = phi float [ %8629, %8764 ], [ %8801, %8806 ]
  %8809 = phi float [ %8630, %8764 ], [ %8802, %8806 ]
  %8810 = fsub fast float %8545, %8808
  %8811 = select i1 %8547, float %8808, float %8810
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 0
  %8814 = extractvalue %dx.types.CBufRet.f32 %8812, 1
  %8815 = extractvalue %dx.types.CBufRet.f32 %8812, 2
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 0
  %8818 = extractvalue %dx.types.CBufRet.f32 %8816, 1
  %8819 = extractvalue %dx.types.CBufRet.f32 %8816, 2
  %8820 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 3
  %8823 = call float @dx.op.binary.f32(i32 36, float %8809, float %8822)  ; FMin(a,b)
  %8824 = fmul fast float %8820, %8811
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fsub fast float %8817, %8813
  %8827 = fsub fast float %8818, %8814
  %8828 = fsub fast float %8819, %8815
  %8829 = fmul fast float %8825, %8826
  %8830 = fmul fast float %8825, %8827
  %8831 = fmul fast float %8825, %8828
  %8832 = fadd fast float %8829, %8813
  %8833 = fadd fast float %8830, %8814
  %8834 = fadd fast float %8831, %8815
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = fadd fast float %8837, %8836
  %8839 = call float @dx.op.unary.f32(i32 7, float %8838)  ; Saturate(value)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8835, 2
  %8841 = extractvalue %dx.types.CBufRet.f32 %8835, 3
  %8842 = fadd fast float %8841, %8840
  %8843 = call float @dx.op.unary.f32(i32 7, float %8842)  ; Saturate(value)
  %8844 = fmul fast float %8839, %8823
  %8845 = fmul fast float %8844, %8843
  br label %8846

; <label>:8846                                    ; preds = %8807, %8726, %8561, %8543, %8541
  %8847 = phi float [ %8570, %8561 ], [ %8729, %8726 ], [ %8811, %8807 ], [ 0.000000e+00, %8541 ], [ 0.000000e+00, %8543 ]
  %8848 = phi float [ %8604, %8561 ], [ %8763, %8726 ], [ %8845, %8807 ], [ 0.000000e+00, %8541 ], [ 0.000000e+00, %8543 ]
  %8849 = phi float [ %8591, %8561 ], [ %8750, %8726 ], [ %8832, %8807 ], [ 0.000000e+00, %8541 ], [ 0.000000e+00, %8543 ]
  %8850 = phi float [ %8592, %8561 ], [ %8751, %8726 ], [ %8833, %8807 ], [ 0.000000e+00, %8541 ], [ 0.000000e+00, %8543 ]
  %8851 = phi float [ %8593, %8561 ], [ %8752, %8726 ], [ %8834, %8807 ], [ 0.000000e+00, %8541 ], [ 0.000000e+00, %8543 ]
  %8852 = fmul fast float %8484, %8848
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8855 = fsub fast float %8491, %8854
  %8856 = fcmp fast olt float %8852, -2.000000e+01
  %8857 = call float @dx.op.unary.f32(i32 21, float %8852)  ; Exp(value)
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 2
  %8860 = extractvalue %dx.types.CBufRet.f32 %8858, 3
  %8861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8862 = extractvalue %dx.types.CBufRet.f32 %8861, 2
  %8863 = fmul fast float %8860, %8855
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = fsub fast float 1.000000e+00, %8864
  %8866 = fmul fast float %8476, 5.000000e-01
  %8867 = fadd fast float %8866, 5.000000e-01
  %8868 = call float @dx.op.unary.f32(i32 7, float %8867)  ; Saturate(value)
  %8869 = fsub fast float 1.000000e+00, %8868
  %8870 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8865)  ; FMax(a,b)
  %8871 = fdiv fast float %8869, %8870
  %8872 = fsub fast float %8855, %8433
  %8873 = call float @dx.op.unary.f32(i32 6, float %8872)  ; FAbs(value)
  %8874 = fmul fast float %8873, %8859
  %8875 = call float @dx.op.unary.f32(i32 7, float %8871)  ; Saturate(value)
  %8876 = fsub fast float 1.000000e+00, %8874
  %8877 = fmul fast float %8876, %8875
  %8878 = fadd fast float %8877, %8874
  %8879 = fmul fast float %8862, %8855
  %8880 = call float @dx.op.unary.f32(i32 7, float %8879)  ; Saturate(value)
  %8881 = fsub fast float 1.000000e+00, %8878
  %8882 = fmul fast float %8881, %8880
  %8883 = fadd fast float %8882, %8878
  %8884 = call float @dx.op.unary.f32(i32 7, float %8883)  ; Saturate(value)
  %8885 = fadd fast float %8857, -1.000000e+00
  %8886 = select i1 %8856, float -1.000000e+00, float %8885
  %8887 = fmul fast float %8884, %8886
  %8888 = fadd fast float %8887, 1.000000e+00
  %8889 = fsub fast float -0.000000e+00, %8887
  %8890 = fmul fast float %8849, %8889
  %8891 = fmul fast float %8850, %8889
  %8892 = fmul fast float %8851, %8889
  br label %8893

; <label>:8893                                    ; preds = %8846, %8442
  %8894 = phi float [ %8847, %8846 ], [ 0.000000e+00, %8442 ]
  %8895 = phi float [ %8888, %8846 ], [ 1.000000e+00, %8442 ]
  %8896 = phi float [ %8890, %8846 ], [ 0.000000e+00, %8442 ]
  %8897 = phi float [ %8891, %8846 ], [ 0.000000e+00, %8442 ]
  %8898 = phi float [ %8892, %8846 ], [ 0.000000e+00, %8442 ]
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 1
  %8901 = fsub fast float 1.000000e+00, %8895
  %8902 = fmul fast float %8901, %8477
  %8903 = fmul fast float %8902, %8900
  %8904 = fsub fast float %8477, %8903
  br i1 %8470, label %8905, label %8934, !dx.controlflow.hints !173

; <label>:8905                                    ; preds = %8893
  %8906 = fmul fast float %8478, %8467
  %8907 = fadd fast float %8906, %8468
  %8908 = call float @dx.op.unary.f32(i32 7, float %8907)  ; Saturate(value)
  %8909 = fmul fast float %8449, %8904
  %8910 = fsub fast float -0.000000e+00, %8909
  %8911 = fmul fast float %8450, %8904
  %8912 = fsub fast float -0.000000e+00, %8911
  %8913 = call float @dx.op.unary.f32(i32 21, float %8910)  ; Exp(value)
  %8914 = call float @dx.op.unary.f32(i32 21, float %8912)  ; Exp(value)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8457, float %8913)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 35, float %8457, float %8914)  ; FMax(a,b)
  %8917 = fsub fast float %8916, %8915
  %8918 = fmul fast float %8917, %8908
  %8919 = fadd fast float %8918, %8915
  %8920 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8921 = fsub fast float %8454, %8459
  %8922 = fsub fast float %8455, %8460
  %8923 = fsub fast float %8456, %8461
  %8924 = fmul fast float %8908, %8921
  %8925 = fmul fast float %8908, %8922
  %8926 = fmul fast float %8908, %8923
  %8927 = fadd fast float %8924, %8459
  %8928 = fadd fast float %8925, %8460
  %8929 = fadd fast float %8926, %8461
  %8930 = fsub fast float 1.000000e+00, %8920
  %8931 = fmul fast float %8930, %8927
  %8932 = fmul fast float %8930, %8928
  %8933 = fmul fast float %8930, %8929
  br label %8993

; <label>:8934                                    ; preds = %8893
  %8935 = fmul fast float %8904, %8466
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = fsub fast float 2.000000e+00, %8936
  %8938 = fmul fast float %8936, 9.921875e-01
  %8939 = fmul fast float %8938, %8937
  %8940 = fadd fast float %8939, 3.906250e-03
  %8941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8940, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8942 = extractvalue %dx.types.ResRet.f32 %8941, 0
  %8943 = fsub fast float %8936, %8942
  %8944 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8943)  ; FMax(a,b)
  %8945 = fmul fast float %8452, %8433
  %8946 = call float @dx.op.unary.f32(i32 6, float %8945)  ; FAbs(value)
  %8947 = fcmp fast ogt float %8946, 0x3EB0C6F7A0000000
  br i1 %8947, label %8948, label %8954, !dx.controlflow.hints !174

; <label>:8948                                    ; preds = %8934
  %8949 = fmul fast float %8945, 0xBFF7154760000000
  %8950 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8951 = fsub fast float 1.000000e+00, %8950
  %8952 = fdiv fast float %8951, %8945
  %8953 = fmul fast float %8952, %8462
  br label %8954

; <label>:8954                                    ; preds = %8948, %8934
  %8955 = phi float [ %8953, %8948 ], [ %8462, %8934 ]
  %8956 = fadd fast float %8955, %8464
  %8957 = fmul fast float %8956, %8944
  %8958 = fmul fast float %8449, %8957
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = fmul fast float %8450, %8957
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = fmul fast float %8451, %8957
  %8963 = fsub fast float -0.000000e+00, %8962
  %8964 = call float @dx.op.unary.f32(i32 21, float %8959)  ; Exp(value)
  %8965 = call float @dx.op.unary.f32(i32 21, float %8961)  ; Exp(value)
  %8966 = call float @dx.op.unary.f32(i32 21, float %8963)  ; Exp(value)
  %8967 = fmul fast float %8478, %8478
  %8968 = fadd fast float %8967, 1.000000e+00
  %8969 = fmul fast float %8968, 0x3FAE8EC8A0000000
  %8970 = fmul fast float %8969, %8459
  %8971 = fmul fast float %8969, %8460
  %8972 = fmul fast float %8969, %8461
  %8973 = fmul fast float %8478, %8457
  %8974 = fsub fast float 1.000000e+00, %8973
  %8975 = fmul fast float %8457, %8457
  %8976 = fsub fast float 1.000000e+00, %8975
  %8977 = fmul fast float %8976, 0x3FB45F3060000000
  %8978 = fmul fast float %8974, %8974
  %8979 = fdiv fast float 1.000000e+00, %8978
  %8980 = fmul fast float %8977, %8979
  %8981 = fmul fast float %8980, %8454
  %8982 = fmul fast float %8980, %8455
  %8983 = fmul fast float %8980, %8456
  %8984 = fadd fast float %8981, %8970
  %8985 = fadd fast float %8982, %8971
  %8986 = fadd fast float %8983, %8972
  %8987 = fsub fast float 1.000000e+00, %8964
  %8988 = fsub fast float 1.000000e+00, %8965
  %8989 = fsub fast float 1.000000e+00, %8966
  %8990 = fmul fast float %8984, %8987
  %8991 = fmul fast float %8985, %8988
  %8992 = fmul fast float %8986, %8989
  br label %8993

; <label>:8993                                    ; preds = %8954, %8905
  %8994 = phi float [ %8931, %8905 ], [ %8990, %8954 ]
  %8995 = phi float [ %8932, %8905 ], [ %8991, %8954 ]
  %8996 = phi float [ %8933, %8905 ], [ %8992, %8954 ]
  %8997 = phi float [ %8920, %8905 ], [ %8964, %8954 ]
  %8998 = phi float [ %8920, %8905 ], [ %8965, %8954 ]
  %8999 = phi float [ %8920, %8905 ], [ %8966, %8954 ]
  br i1 %8486, label %9000, label %9198, !dx.controlflow.hints !175

; <label>:9000                                    ; preds = %8993
  %9001 = extractvalue %dx.types.CBufRet.f32 %8899, 0
  %9002 = fmul fast float %9001, %8901
  %9003 = fsub fast float %8896, %8994
  %9004 = fsub fast float %8897, %8995
  %9005 = fsub fast float %8898, %8996
  %9006 = fmul fast float %9002, %9003
  %9007 = fmul fast float %9002, %9004
  %9008 = fmul fast float %9002, %9005
  %9009 = fadd fast float %9006, %8994
  %9010 = fadd fast float %9007, %8995
  %9011 = fadd fast float %9008, %8996
  %9012 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8997)  ; FMax(a,b)
  %9013 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8998)  ; FMax(a,b)
  %9014 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8999)  ; FMax(a,b)
  %9015 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8895)  ; FMax(a,b)
  %9016 = call float @dx.op.binary.f32(i32 35, float %8894, float %8904)  ; FMax(a,b)
  %9017 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9016)  ; FMax(a,b)
  %9018 = fdiv fast float %8894, %9017
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fdiv fast float %8904, %9017
  %9021 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9022 = fcmp fast une float %9015, 1.000000e+00
  br i1 %9022, label %9023, label %9036, !dx.controlflow.hints !176

; <label>:9023                                    ; preds = %9000
  %9024 = call float @dx.op.unary.f32(i32 23, float %9015)  ; Log(value)
  %9025 = fmul fast float %9024, 0x3FE62E4300000000
  %9026 = fmul fast float %8896, %9025
  %9027 = fsub fast float -0.000000e+00, %9026
  %9028 = fmul fast float %8897, %9025
  %9029 = fsub fast float -0.000000e+00, %9028
  %9030 = fmul fast float %8898, %9025
  %9031 = fsub fast float -0.000000e+00, %9030
  %9032 = fsub fast float 1.000000e+00, %9015
  %9033 = fdiv fast float %9027, %9032
  %9034 = fdiv fast float %9029, %9032
  %9035 = fdiv fast float %9031, %9032
  br label %9036

; <label>:9036                                    ; preds = %9023, %9000
  %9037 = phi float [ %9033, %9023 ], [ %8896, %9000 ]
  %9038 = phi float [ %9034, %9023 ], [ %8897, %9000 ]
  %9039 = phi float [ %9035, %9023 ], [ %8898, %9000 ]
  %9040 = phi float [ %9025, %9023 ], [ 0.000000e+00, %9000 ]
  %9041 = fcmp fast une float %9012, 1.000000e+00
  br i1 %9041, label %9042, label %9049, !dx.controlflow.hints !177

; <label>:9042                                    ; preds = %9036
  %9043 = call float @dx.op.unary.f32(i32 23, float %9012)  ; Log(value)
  %9044 = fmul fast float %9043, 0x3FE62E4300000000
  %9045 = fmul fast float %9009, %9044
  %9046 = fsub fast float -0.000000e+00, %9045
  %9047 = fsub fast float 1.000000e+00, %9012
  %9048 = fdiv fast float %9046, %9047
  br label %9049

; <label>:9049                                    ; preds = %9042, %9036
  %9050 = phi float [ %9048, %9042 ], [ %9009, %9036 ]
  %9051 = phi float [ %9044, %9042 ], [ 0.000000e+00, %9036 ]
  %9052 = fcmp fast une float %9013, 1.000000e+00
  br i1 %9052, label %9053, label %9060, !dx.controlflow.hints !177

; <label>:9053                                    ; preds = %9049
  %9054 = call float @dx.op.unary.f32(i32 23, float %9013)  ; Log(value)
  %9055 = fmul fast float %9054, 0x3FE62E4300000000
  %9056 = fmul fast float %9010, %9055
  %9057 = fsub fast float -0.000000e+00, %9056
  %9058 = fsub fast float 1.000000e+00, %9013
  %9059 = fdiv fast float %9057, %9058
  br label %9060

; <label>:9060                                    ; preds = %9053, %9049
  %9061 = phi float [ %9059, %9053 ], [ %9010, %9049 ]
  %9062 = phi float [ %9055, %9053 ], [ 0.000000e+00, %9049 ]
  %9063 = fcmp fast une float %9014, 1.000000e+00
  br i1 %9063, label %9064, label %9071, !dx.controlflow.hints !177

; <label>:9064                                    ; preds = %9060
  %9065 = call float @dx.op.unary.f32(i32 23, float %9014)  ; Log(value)
  %9066 = fmul fast float %9065, 0x3FE62E4300000000
  %9067 = fmul fast float %9011, %9066
  %9068 = fsub fast float -0.000000e+00, %9067
  %9069 = fsub fast float 1.000000e+00, %9014
  %9070 = fdiv fast float %9068, %9069
  br label %9071

; <label>:9071                                    ; preds = %9064, %9060
  %9072 = phi float [ %9070, %9064 ], [ %9011, %9060 ]
  %9073 = phi float [ %9066, %9064 ], [ 0.000000e+00, %9060 ]
  %9074 = fmul fast float %9037, %9021
  %9075 = fmul fast float %9038, %9021
  %9076 = fmul fast float %9039, %9021
  %9077 = fmul fast float %9040, %9021
  %9078 = fmul fast float %9050, %9019
  %9079 = fmul fast float %9061, %9019
  %9080 = fmul fast float %9072, %9019
  %9081 = fmul fast float %9051, %9019
  %9082 = fmul fast float %9062, %9019
  %9083 = fmul fast float %9073, %9019
  %9084 = fadd fast float %9078, %9074
  %9085 = fadd fast float %9079, %9075
  %9086 = fadd fast float %9080, %9076
  %9087 = fadd fast float %9081, %9077
  %9088 = fadd fast float %9082, %9077
  %9089 = fadd fast float %9083, %9077
  %9090 = fcmp fast une float %9087, 0.000000e+00
  br i1 %9090, label %9091, label %9098, !dx.controlflow.hints !178

; <label>:9091                                    ; preds = %9071
  %9092 = fmul fast float %9087, 0x3FF7154760000000
  %9093 = call float @dx.op.unary.f32(i32 21, float %9092)  ; Exp(value)
  %9094 = fsub fast float 1.000000e+00, %9093
  %9095 = fmul fast float %9084, %9094
  %9096 = fsub fast float -0.000000e+00, %9095
  %9097 = fdiv fast float %9096, %9087
  br label %9098

; <label>:9098                                    ; preds = %9091, %9071
  %9099 = phi float [ %9093, %9091 ], [ 1.000000e+00, %9071 ]
  %9100 = phi float [ %9097, %9091 ], [ %9084, %9071 ]
  %9101 = fcmp fast une float %9088, 0.000000e+00
  br i1 %9101, label %9102, label %9109, !dx.controlflow.hints !178

; <label>:9102                                    ; preds = %9098
  %9103 = fmul fast float %9088, 0x3FF7154760000000
  %9104 = call float @dx.op.unary.f32(i32 21, float %9103)  ; Exp(value)
  %9105 = fsub fast float 1.000000e+00, %9104
  %9106 = fmul fast float %9085, %9105
  %9107 = fsub fast float -0.000000e+00, %9106
  %9108 = fdiv fast float %9107, %9088
  br label %9109

; <label>:9109                                    ; preds = %9102, %9098
  %9110 = phi float [ %9104, %9102 ], [ 1.000000e+00, %9098 ]
  %9111 = phi float [ %9108, %9102 ], [ %9085, %9098 ]
  %9112 = fcmp fast une float %9089, 0.000000e+00
  br i1 %9112, label %9113, label %9120, !dx.controlflow.hints !178

; <label>:9113                                    ; preds = %9109
  %9114 = fmul fast float %9089, 0x3FF7154760000000
  %9115 = call float @dx.op.unary.f32(i32 21, float %9114)  ; Exp(value)
  %9116 = fsub fast float 1.000000e+00, %9115
  %9117 = fmul fast float %9086, %9116
  %9118 = fsub fast float -0.000000e+00, %9117
  %9119 = fdiv fast float %9118, %9089
  br label %9120

; <label>:9120                                    ; preds = %9113, %9109
  %9121 = phi float [ %9115, %9113 ], [ 1.000000e+00, %9109 ]
  %9122 = phi float [ %9119, %9113 ], [ %9086, %9109 ]
  %9123 = fcmp fast ogt float %9019, %9021
  br i1 %9123, label %9124, label %9144

; <label>:9124                                    ; preds = %9120
  %9125 = fsub fast float 1.000000e+00, %9021
  %9126 = fmul fast float %9037, %9125
  %9127 = fmul fast float %9038, %9125
  %9128 = fmul fast float %9039, %9125
  %9129 = fmul fast float %9040, %9125
  %9130 = fcmp fast une float %9129, 0.000000e+00
  br i1 %9130, label %9131, label %9182, !dx.controlflow.hints !179

; <label>:9131                                    ; preds = %9124
  %9132 = fmul fast float %9129, 0x3FF7154760000000
  %9133 = call float @dx.op.unary.f32(i32 21, float %9132)  ; Exp(value)
  %9134 = fsub fast float 1.000000e+00, %9133
  %9135 = fmul fast float %9126, %9134
  %9136 = fsub fast float -0.000000e+00, %9135
  %9137 = fmul fast float %9127, %9134
  %9138 = fsub fast float -0.000000e+00, %9137
  %9139 = fmul fast float %9128, %9134
  %9140 = fsub fast float -0.000000e+00, %9139
  %9141 = fdiv fast float %9136, %9129
  %9142 = fdiv fast float %9138, %9129
  %9143 = fdiv fast float %9140, %9129
  br label %9182

; <label>:9144                                    ; preds = %9120
  %9145 = fsub fast float 1.000000e+00, %9019
  %9146 = fmul fast float %9050, %9145
  %9147 = fmul fast float %9061, %9145
  %9148 = fmul fast float %9072, %9145
  %9149 = fmul fast float %9051, %9145
  %9150 = fmul fast float %9062, %9145
  %9151 = fmul fast float %9073, %9145
  %9152 = fcmp fast une float %9149, 0.000000e+00
  br i1 %9152, label %9153, label %9160, !dx.controlflow.hints !178

; <label>:9153                                    ; preds = %9144
  %9154 = fmul fast float %9149, 0x3FF7154760000000
  %9155 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9156 = fsub fast float 1.000000e+00, %9155
  %9157 = fmul fast float %9146, %9156
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = fdiv fast float %9158, %9149
  br label %9160

; <label>:9160                                    ; preds = %9153, %9144
  %9161 = phi float [ %9159, %9153 ], [ %9146, %9144 ]
  %9162 = phi float [ %9155, %9153 ], [ 1.000000e+00, %9144 ]
  %9163 = fcmp fast une float %9150, 0.000000e+00
  br i1 %9163, label %9164, label %9171, !dx.controlflow.hints !178

; <label>:9164                                    ; preds = %9160
  %9165 = fmul fast float %9150, 0x3FF7154760000000
  %9166 = call float @dx.op.unary.f32(i32 21, float %9165)  ; Exp(value)
  %9167 = fsub fast float 1.000000e+00, %9166
  %9168 = fmul fast float %9147, %9167
  %9169 = fsub fast float -0.000000e+00, %9168
  %9170 = fdiv fast float %9169, %9150
  br label %9171

; <label>:9171                                    ; preds = %9164, %9160
  %9172 = phi float [ %9170, %9164 ], [ %9147, %9160 ]
  %9173 = phi float [ %9166, %9164 ], [ 1.000000e+00, %9160 ]
  %9174 = fcmp fast une float %9151, 0.000000e+00
  br i1 %9174, label %9175, label %9182, !dx.controlflow.hints !178

; <label>:9175                                    ; preds = %9171
  %9176 = fmul fast float %9151, 0x3FF7154760000000
  %9177 = call float @dx.op.unary.f32(i32 21, float %9176)  ; Exp(value)
  %9178 = fsub fast float 1.000000e+00, %9177
  %9179 = fmul fast float %9148, %9178
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = fdiv fast float %9180, %9151
  br label %9182

; <label>:9182                                    ; preds = %9175, %9171, %9131, %9124
  %9183 = phi float [ %9181, %9175 ], [ %9143, %9131 ], [ %9128, %9124 ], [ %9148, %9171 ]
  %9184 = phi float [ %9172, %9175 ], [ %9142, %9131 ], [ %9127, %9124 ], [ %9172, %9171 ]
  %9185 = phi float [ %9161, %9175 ], [ %9141, %9131 ], [ %9126, %9124 ], [ %9161, %9171 ]
  %9186 = phi float [ %9177, %9175 ], [ %9133, %9131 ], [ 1.000000e+00, %9124 ], [ 1.000000e+00, %9171 ]
  %9187 = phi float [ %9173, %9175 ], [ %9133, %9131 ], [ 1.000000e+00, %9124 ], [ %9173, %9171 ]
  %9188 = phi float [ %9162, %9175 ], [ %9133, %9131 ], [ 1.000000e+00, %9124 ], [ %9162, %9171 ]
  %9189 = fmul fast float %9188, %9100
  %9190 = fmul fast float %9187, %9111
  %9191 = fmul fast float %9186, %9122
  %9192 = fadd fast float %9189, %9185
  %9193 = fadd fast float %9190, %9184
  %9194 = fadd fast float %9191, %9183
  %9195 = fmul fast float %9188, %9099
  %9196 = fmul fast float %9187, %9110
  %9197 = fmul fast float %9186, %9121
  br label %9198

; <label>:9198                                    ; preds = %9182, %8993
  %9199 = phi float [ %9197, %9182 ], [ %8999, %8993 ]
  %9200 = phi float [ %9196, %9182 ], [ %8998, %8993 ]
  %9201 = phi float [ %9195, %9182 ], [ %8997, %8993 ]
  %9202 = phi float [ %9194, %9182 ], [ %8996, %8993 ]
  %9203 = phi float [ %9193, %9182 ], [ %8995, %8993 ]
  %9204 = phi float [ %9192, %9182 ], [ %8994, %8993 ]
  %9205 = fmul fast float %9204, %8150
  %9206 = fmul fast float %9203, %8150
  %9207 = fmul fast float %9202, %8150
  %9208 = fmul fast float %9201, %8441
  %9209 = call float @dx.op.dot3.f32(i32 55, float %9201, float %9200, float %9199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9210 = call float @dx.op.dot3.f32(i32 55, float %9205, float %9206, float %9207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9211 = select i1 %260, float %9209, float %9201
  %9212 = select i1 %260, float %9209, float %9200
  %9213 = select i1 %260, float 1.000000e+00, float %9199
  %9214 = select i1 %260, float %9210, float %9205
  %9215 = select i1 %260, float 0.000000e+00, float %9206
  %9216 = select i1 %260, float 0.000000e+00, float %9207
  %9217 = fmul fast float %9211, %8435
  %9218 = fmul fast float %9212, %8436
  %9219 = fmul fast float %9213, %8437
  %9220 = fadd fast float %9217, %9214
  %9221 = fadd fast float %9218, %9215
  %9222 = fadd fast float %9216, %9219
  %9223 = fmul fast float %9211, %8438
  %9224 = fmul fast float %9212, %8439
  %9225 = fmul fast float %9213, %8440
  %9226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.i32 %9226, 0
  %9228 = icmp eq i32 %9227, 0
  br i1 %9228, label %9596, label %9229, !dx.controlflow.hints !180

; <label>:9229                                    ; preds = %9198
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9233 = fmul fast float %9231, %114
  %9234 = fmul fast float %9232, %115
  %9235 = fmul fast float %9233, 2.000000e+00
  %9236 = fmul fast float %9234, 2.000000e+00
  %9237 = fsub fast float 1.000000e+00, %9235
  %9238 = fsub fast float 1.000000e+00, %9236
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9242 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9243 = fmul fast float %9237, %9240
  %9244 = fmul fast float %9237, %9241
  %9245 = fmul fast float %9237, %9242
  %9246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9247 = extractvalue %dx.types.CBufRet.f32 %9246, 0
  %9248 = extractvalue %dx.types.CBufRet.f32 %9246, 1
  %9249 = extractvalue %dx.types.CBufRet.f32 %9246, 2
  %9250 = fmul fast float %9238, %9247
  %9251 = fmul fast float %9238, %9248
  %9252 = fmul fast float %9238, %9249
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 0
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9256 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9257 = fadd fast float %9250, %9254
  %9258 = fadd fast float %9257, %9243
  %9259 = fadd fast float %9251, %9255
  %9260 = fadd fast float %9259, %9244
  %9261 = fadd fast float %9252, %9256
  %9262 = fadd fast float %9261, %9245
  %9263 = fmul fast float %9258, %8434
  %9264 = fmul fast float %9260, %8434
  %9265 = fmul fast float %9262, %8434
  %9266 = fmul fast float %9263, %9263
  %9267 = fmul fast float %9264, %9264
  %9268 = fadd fast float %9266, %9267
  %9269 = fmul fast float %9265, %9265
  %9270 = fadd fast float %9268, %9269
  %9271 = call float @dx.op.unary.f32(i32 24, float %9270)  ; Sqrt(value)
  %9272 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %9273 = fsub fast float %9271, %9272
  %9274 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %9275 = fmul fast float %9273, %9274
  %9276 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  %9277 = fadd fast float %9276, -5.000000e-01
  %9278 = fmul fast float %9277, 2.000000e+00
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %9281 = call float @dx.op.binary.f32(i32 36, float %9280, float %9278)  ; FMin(a,b)
  %9282 = fsub fast float -0.000000e+00, %9280
  %9283 = fcmp fast ogt float %9281, %9282
  br i1 %9283, label %9284, label %9596, !dx.controlflow.hints !181

; <label>:9284                                    ; preds = %9229
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 3
  %9287 = fcmp fast ogt float %9286, 0.000000e+00
  br i1 %9287, label %9288, label %9363, !dx.controlflow.hints !182

; <label>:9288                                    ; preds = %9284
  %9289 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9290 = extractvalue %dx.types.Dimensions %9289, 0
  %9291 = sitofp i32 %9290 to float
  %9292 = extractvalue %dx.types.Dimensions %9289, 1
  %9293 = sitofp i32 %9292 to float
  %9294 = fmul fast float %9233, %9291
  %9295 = fmul fast float %9234, %9293
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 1
  %9298 = fsub fast float -0.000000e+00, %9297
  %9299 = fptoui float %9298 to i32
  %9300 = fptoui float %9294 to i32
  %9301 = fptoui float %9295 to i32
  %9302 = and i32 %9299, 31
  %9303 = lshr i32 %9300, %9302
  %9304 = lshr i32 %9301, %9302
  %9305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9299, i32 %9303, i32 %9304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9306 = extractvalue %dx.types.ResRet.f32 %9305, 0
  %9307 = fcmp fast olt float %9306, -1.000000e+00
  %9308 = fcmp fast ogt float %9306, -1.000000e+00
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 1
  %9311 = select i1 %9308, float %9310, float 1.000000e+00
  %9312 = fadd fast float %9306, 1.000000e+00
  %9313 = fmul fast float %9311, %9312
  %9314 = call float @dx.op.unary.f32(i32 6, float %9313)  ; FAbs(value)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9309, 3
  %9316 = fcmp fast oge float %9314, %9315
  %9317 = select i1 %9316, float 0x4197782600000000, float %9314
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.CBufRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9322 = select i1 %9307, float %9319, float %9240
  %9323 = select i1 %9307, float %9320, float %9241
  %9324 = select i1 %9307, float %9321, float %9242
  %9325 = fmul fast float %9322, %9237
  %9326 = fmul fast float %9323, %9237
  %9327 = fmul fast float %9324, %9237
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9332 = select i1 %9307, float %9329, float %9247
  %9333 = select i1 %9307, float %9330, float %9248
  %9334 = select i1 %9307, float %9331, float %9249
  %9335 = fmul fast float %9332, %9238
  %9336 = fmul fast float %9333, %9238
  %9337 = fmul fast float %9334, %9238
  %9338 = fadd fast float %9335, %9325
  %9339 = fadd fast float %9336, %9326
  %9340 = fadd fast float %9337, %9327
  %9341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9342 = extractvalue %dx.types.CBufRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.CBufRet.f32 %9341, 1
  %9344 = extractvalue %dx.types.CBufRet.f32 %9341, 2
  %9345 = select i1 %9307, float %9342, float %9254
  %9346 = select i1 %9307, float %9343, float %9255
  %9347 = select i1 %9307, float %9344, float %9256
  %9348 = fadd fast float %9338, %9345
  %9349 = fadd fast float %9339, %9346
  %9350 = fadd fast float %9340, %9347
  %9351 = fmul fast float %9348, %9317
  %9352 = fmul fast float %9349, %9317
  %9353 = fmul fast float %9350, %9317
  %9354 = fmul fast float %9351, %9351
  %9355 = fmul fast float %9352, %9352
  %9356 = fadd fast float %9354, %9355
  %9357 = fmul fast float %9353, %9353
  %9358 = fadd fast float %9356, %9357
  %9359 = call float @dx.op.unary.f32(i32 24, float %9358)  ; Sqrt(value)
  %9360 = fsub fast float %9359, %9272
  %9361 = fmul fast float %9360, %9274
  %9362 = call float @dx.op.unary.f32(i32 7, float %9361)  ; Saturate(value)
  br label %9363

; <label>:9363                                    ; preds = %9288, %9284
  %9364 = phi float [ %9362, %9288 ], [ 1.000000e+00, %9284 ]
  %9365 = fmul fast float %9281, 5.000000e-01
  %9366 = fadd fast float %9365, 5.000000e-01
  %9367 = call float @dx.op.unary.f32(i32 22, float %9366)  ; Frc(value)
  %9368 = call float @dx.op.unary.f32(i32 27, float %9367)  ; Round_ni(value)
  %9369 = call float @dx.op.unary.f32(i32 22, float %9367)  ; Frc(value)
  %9370 = fmul fast float %9369, 2.000000e+00
  %9371 = fadd fast float %9370, -1.000000e+00
  %9372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9233, float %9234, float %9368, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9373 = extractvalue %dx.types.ResRet.f32 %9372, 0
  %9374 = extractvalue %dx.types.ResRet.f32 %9372, 1
  %9375 = extractvalue %dx.types.ResRet.f32 %9372, 2
  %9376 = extractvalue %dx.types.ResRet.f32 %9372, 3
  %9377 = fadd fast float %9373, -5.000000e-01
  %9378 = fadd fast float %9375, -5.000000e-01
  %9379 = fmul fast float %9377, 0xBFD5555560000000
  %9380 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9378, float %9379)  ; FMad(a,b,c)
  %9381 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9374, float 0.000000e+00)  ; FMad(a,b,c)
  %9382 = fadd fast float %9381, %9376
  %9383 = fmul fast float %9377, -7.500000e-01
  %9384 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9378, float %9383)  ; FMad(a,b,c)
  %9385 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9374, float 0.000000e+00)  ; FMad(a,b,c)
  %9386 = fadd fast float %9385, %9376
  %9387 = call float @dx.op.binary.f32(i32 35, float %9380, float -1.000000e+00)  ; FMax(a,b)
  %9388 = call float @dx.op.binary.f32(i32 35, float %9382, float -1.000000e+00)  ; FMax(a,b)
  %9389 = call float @dx.op.binary.f32(i32 35, float %9384, float -1.000000e+00)  ; FMax(a,b)
  %9390 = call float @dx.op.binary.f32(i32 35, float %9386, float -1.000000e+00)  ; FMax(a,b)
  %9391 = call float @dx.op.binary.f32(i32 36, float %9387, float 1.000000e+00)  ; FMin(a,b)
  %9392 = call float @dx.op.binary.f32(i32 36, float %9388, float 1.000000e+00)  ; FMin(a,b)
  %9393 = call float @dx.op.binary.f32(i32 36, float %9389, float 1.000000e+00)  ; FMin(a,b)
  %9394 = call float @dx.op.binary.f32(i32 36, float %9390, float 1.000000e+00)  ; FMin(a,b)
  %9395 = fcmp fast olt float %9391, 0x3FEFFF8020000000
  br i1 %9395, label %9396, label %9511, !dx.controlflow.hints !183

; <label>:9396                                    ; preds = %9363
  %9397 = extractvalue %dx.types.CBufRet.f32 %9279, 3
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.CBufRet.f32 %9398, 1
  %9401 = extractvalue %dx.types.CBufRet.f32 %9398, 2
  %9402 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9403 = fsub fast float %9399, %9391
  %9404 = fsub fast float %9400, %9392
  %9405 = fsub fast float %9401, %9393
  %9406 = fsub fast float %9402, %9394
  %9407 = fmul fast float %9403, %9397
  %9408 = fmul fast float %9404, %9397
  %9409 = fmul fast float %9405, %9397
  %9410 = fmul fast float %9406, %9397
  %9411 = fadd fast float %9407, %9391
  %9412 = fadd fast float %9408, %9392
  %9413 = fsub fast float -0.000000e+00, %9412
  %9414 = fadd fast float %9409, %9393
  %9415 = fadd fast float %9410, %9394
  %9416 = fmul fast float %9411, %9411
  %9417 = fsub fast float %9412, %9416
  %9418 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9417)  ; FMax(a,b)
  %9419 = fdiv fast float 1.000000e+00, %9418
  %9420 = fmul fast float %9412, %9411
  %9421 = fsub fast float %9414, %9420
  %9422 = fsub fast float %9371, %9411
  %9423 = fmul fast float %9371, %9371
  %9424 = fsub fast float %9423, %9412
  %9425 = fmul fast float %9422, %9419
  %9426 = fmul fast float %9425, %9421
  %9427 = fsub fast float %9424, %9426
  %9428 = fmul fast float %9412, %9412
  %9429 = fsub fast float %9415, %9428
  %9430 = fmul fast float %9421, %9421
  %9431 = fmul fast float %9430, %9419
  %9432 = fsub fast float %9429, %9431
  %9433 = fdiv fast float %9427, %9432
  %9434 = fmul fast float %9421, %9433
  %9435 = fsub fast float %9422, %9434
  %9436 = fmul fast float %9435, %9419
  %9437 = fmul fast float %9436, %9411
  %9438 = fsub fast float 1.000000e+00, %9437
  %9439 = fmul fast float %9412, %9433
  %9440 = fsub fast float %9438, %9439
  %9441 = fmul fast float %9436, %9436
  %9442 = fmul fast float %9433, 4.000000e+00
  %9443 = fmul fast float %9442, %9440
  %9444 = fsub fast float %9441, %9443
  %9445 = call float @dx.op.unary.f32(i32 24, float %9444)  ; Sqrt(value)
  %9446 = fcmp fast oge float %9436, 0.000000e+00
  %9447 = fsub fast float -0.000000e+00, %9445
  %9448 = select i1 %9446, float %9447, float %9445
  %9449 = fsub fast float %9448, %9436
  %9450 = fdiv fast float %9449, %9433
  %9451 = fdiv fast float %9440, %9449
  %9452 = fmul fast float %9450, 5.000000e-01
  %9453 = fmul fast float %9451, 2.000000e+00
  %9454 = select i1 %9446, float %9452, float %9453
  %9455 = select i1 %9446, float %9453, float %9452
  %9456 = call float @dx.op.binary.f32(i32 35, float %9454, float %9455)  ; FMax(a,b)
  %9457 = call float @dx.op.binary.f32(i32 36, float %9454, float %9455)  ; FMin(a,b)
  %9458 = fcmp fast ogt float %9371, %9457
  br i1 %9458, label %9459, label %9469

; <label>:9459                                    ; preds = %9396
  %9460 = fsub fast float %9371, %9457
  %9461 = fsub fast float %9456, %9457
  %9462 = fmul fast float %9460, %9461
  %9463 = fmul fast float %9456, %9371
  %9464 = fadd fast float %9456, %9371
  %9465 = fmul fast float %9464, %9411
  %9466 = fadd fast float %9463, %9412
  %9467 = fsub fast float %9466, %9465
  %9468 = fdiv fast float %9467, %9462
  br label %9469

; <label>:9469                                    ; preds = %9459, %9396
  %9470 = phi float [ %9468, %9459 ], [ 0.000000e+00, %9396 ]
  %9471 = fcmp fast ogt float %9371, %9456
  %9472 = fsub fast float %9371, %9456
  br i1 %9471, label %9473, label %9483

; <label>:9473                                    ; preds = %9469
  %9474 = fsub fast float %9456, %9457
  %9475 = fmul fast float %9474, %9472
  %9476 = fmul fast float %9457, %9371
  %9477 = fadd fast float %9457, %9371
  %9478 = fmul fast float %9477, %9411
  %9479 = fsub fast float %9413, %9476
  %9480 = fadd fast float %9479, %9478
  %9481 = fdiv fast float %9480, %9475
  %9482 = fadd fast float %9481, %9470
  br label %9483

; <label>:9483                                    ; preds = %9473, %9469
  %9484 = phi float [ %9482, %9473 ], [ %9470, %9469 ]
  %9485 = fsub fast float %9371, %9457
  %9486 = fmul fast float %9485, %9472
  %9487 = fmul fast float %9457, %9456
  %9488 = fadd fast float %9457, %9456
  %9489 = fmul fast float %9488, %9411
  %9490 = fadd fast float %9487, %9412
  %9491 = fsub fast float %9490, %9489
  %9492 = fdiv fast float %9491, %9486
  %9493 = call float @dx.op.unary.f32(i32 7, float %9484)  ; Saturate(value)
  %9494 = fcmp fast oeq float %8162, 0.000000e+00
  %9495 = extractvalue %dx.types.CBufRet.f32 %9279, 0
  %9496 = fcmp fast oeq float %9495, 0.000000e+00
  %9497 = or i1 %9494, %9496
  %9498 = fmul fast float %9495, 2.000000e+00
  %9499 = fadd fast float %9280, %9281
  %9500 = fdiv fast float %9499, %9498
  %9501 = call float @dx.op.unary.f32(i32 7, float %9500)  ; Saturate(value)
  %9502 = fmul fast float %9501, 2.000000e+00
  %9503 = fsub fast float 3.000000e+00, %9502
  %9504 = fmul fast float %9501, %9501
  %9505 = fmul fast float %9504, %9503
  %9506 = select i1 %9497, float 1.000000e+00, float %9505
  %9507 = fmul fast float %9492, %8162
  %9508 = fadd fast float %9493, %9507
  %9509 = call float @dx.op.unary.f32(i32 7, float %9508)  ; Saturate(value)
  %9510 = fmul fast float %9506, %9509
  br label %9511

; <label>:9511                                    ; preds = %9483, %9363
  %9512 = phi float [ %9510, %9483 ], [ 0.000000e+00, %9363 ]
  %9513 = fsub fast float 1.000000e+00, %9512
  %9514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9233, float %9234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9515 = extractvalue %dx.types.ResRet.f32 %9514, 0
  %9516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.i32 %9516, 2
  %9518 = icmp eq i32 %9517, 0
  br i1 %9518, label %9524, label %9519

; <label>:9519                                    ; preds = %9511
  %9520 = call float @dx.op.unary.f32(i32 7, float %9512)  ; Saturate(value)
  %9521 = fadd fast float %9515, -1.000000e+00
  %9522 = fmul fast float %9520, %9521
  %9523 = fadd fast float %9522, 1.000000e+00
  br label %9524

; <label>:9524                                    ; preds = %9519, %9511
  %9525 = phi float [ %9523, %9519 ], [ %9513, %9511 ]
  br i1 %9287, label %9526, label %9544

; <label>:9526                                    ; preds = %9524
  %9527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9527, 1
  %9529 = fsub fast float %9364, %9528
  %9530 = call float @dx.op.unary.f32(i32 7, float %9529)  ; Saturate(value)
  %9531 = fsub fast float %9364, %9286
  %9532 = call float @dx.op.unary.f32(i32 7, float %9531)  ; Saturate(value)
  %9533 = fsub fast float %9530, %9532
  %9534 = fsub fast float %9366, %9532
  %9535 = fdiv fast float %9534, %9533
  %9536 = call float @dx.op.unary.f32(i32 7, float %9535)  ; Saturate(value)
  %9537 = fmul fast float %9536, 2.000000e+00
  %9538 = fsub fast float 3.000000e+00, %9537
  %9539 = fsub fast float %9515, %9525
  %9540 = fmul fast float %9536, %9536
  %9541 = fmul fast float %9540, %9539
  %9542 = fmul fast float %9541, %9538
  %9543 = fadd fast float %9542, %9525
  br label %9544

; <label>:9544                                    ; preds = %9526, %9524
  %9545 = phi float [ %9543, %9526 ], [ %9525, %9524 ]
  %9546 = call float @dx.op.binary.f32(i32 35, float %9515, float %9545)  ; FMax(a,b)
  %9547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.i32 %9547, 2
  %9549 = and i32 %9548, 1
  %9550 = icmp eq i32 %9549, 0
  %9551 = fcmp fast une float %9546, 1.000000e+00
  %9552 = and i1 %9551, %9550
  br i1 %9552, label %9553, label %9572

; <label>:9553                                    ; preds = %9544
  %9554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9233, float %9234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9555 = extractvalue %dx.types.ResRet.f32 %9554, 0
  %9556 = extractvalue %dx.types.ResRet.f32 %9554, 1
  %9557 = extractvalue %dx.types.ResRet.f32 %9554, 2
  %9558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9559 = extractvalue %dx.types.CBufRet.f32 %9558, 1
  %9560 = fmul fast float %9559, %9555
  %9561 = fmul fast float %9559, %9556
  %9562 = fmul fast float %9559, %9557
  %9563 = fcmp fast ogt float %9515, 0x3FEFFF2E40000000
  %9564 = fsub fast float 1.000000e+00, %9546
  %9565 = fsub fast float 1.000000e+00, %9515
  %9566 = fdiv fast float %9564, %9565
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9568 = select i1 %9563, float 0.000000e+00, float %9567
  %9569 = fmul fast float %9560, %9568
  %9570 = fmul fast float %9561, %9568
  %9571 = fmul fast float %9562, %9568
  br label %9572

; <label>:9572                                    ; preds = %9553, %9544
  %9573 = phi float [ 0.000000e+00, %9544 ], [ %9569, %9553 ]
  %9574 = phi float [ 0.000000e+00, %9544 ], [ %9570, %9553 ]
  %9575 = phi float [ 0.000000e+00, %9544 ], [ %9571, %9553 ]
  %9576 = fmul fast float %9573, %8150
  %9577 = fmul fast float %9574, %8150
  %9578 = fmul fast float %9575, %8150
  %9579 = fmul fast float %9546, %9208
  %9580 = call float @dx.op.dot3.f32(i32 55, float %9546, float %9546, float %9546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9581 = call float @dx.op.dot3.f32(i32 55, float %9576, float %9577, float %9578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9582 = select i1 %260, float %9580, float %9546
  %9583 = select i1 %260, float 1.000000e+00, float %9546
  %9584 = select i1 %260, float %9581, float %9576
  %9585 = select i1 %260, float 0.000000e+00, float %9577
  %9586 = select i1 %260, float 0.000000e+00, float %9578
  %9587 = fmul fast float %9582, %9220
  %9588 = fmul fast float %9582, %9221
  %9589 = fmul fast float %9583, %9222
  %9590 = fadd fast float %9587, %9584
  %9591 = fadd fast float %9588, %9585
  %9592 = fadd fast float %9586, %9589
  %9593 = fmul fast float %9582, %9223
  %9594 = fmul fast float %9582, %9224
  %9595 = fmul fast float %9583, %9225
  br label %9596

; <label>:9596                                    ; preds = %9572, %9229, %9198, %8430
  %9597 = phi float [ %8435, %8430 ], [ %9220, %9198 ], [ %9590, %9572 ], [ %9220, %9229 ]
  %9598 = phi float [ %8436, %8430 ], [ %9221, %9198 ], [ %9591, %9572 ], [ %9221, %9229 ]
  %9599 = phi float [ %8437, %8430 ], [ %9222, %9198 ], [ %9592, %9572 ], [ %9222, %9229 ]
  %9600 = phi float [ %8438, %8430 ], [ %9223, %9198 ], [ %9593, %9572 ], [ %9223, %9229 ]
  %9601 = phi float [ %8439, %8430 ], [ %9224, %9198 ], [ %9594, %9572 ], [ %9224, %9229 ]
  %9602 = phi float [ %8440, %8430 ], [ %9225, %9198 ], [ %9595, %9572 ], [ %9225, %9229 ]
  %9603 = phi float [ %8441, %8430 ], [ %9208, %9198 ], [ %9579, %9572 ], [ %9208, %9229 ]
  %9604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9605 = extractvalue %dx.types.CBufRet.f32 %9604, 2
  %9606 = extractvalue %dx.types.CBufRet.f32 %9604, 3
  %9607 = fmul fast float %9605, %114
  %9608 = fmul fast float %9606, %115
  %9609 = call float @dx.op.unary.f32(i32 7, float %9607)  ; Saturate(value)
  %9610 = call float @dx.op.unary.f32(i32 7, float %9608)  ; Saturate(value)
  %9611 = select i1 %8172, i32 2, i32 0
  %9612 = or i32 %9611, 1
  %9613 = uitofp i32 %9612 to float
  %9614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9609, float %9610, float %9613, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9615 = extractvalue %dx.types.ResRet.f32 %9614, 0
  %9616 = extractvalue %dx.types.ResRet.f32 %9614, 1
  %9617 = extractvalue %dx.types.ResRet.f32 %9614, 2
  %9618 = extractvalue %dx.types.ResRet.f32 %9614, 3
  %9619 = add nuw nsw i32 %9611, 2
  %9620 = uitofp i32 %9619 to float
  %9621 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9609, float %9610, float %9620, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9622 = extractvalue %dx.types.ResRet.f32 %9621, 0
  %9623 = extractvalue %dx.types.ResRet.f32 %9621, 1
  %9624 = extractvalue %dx.types.ResRet.f32 %9621, 2
  %9625 = extractvalue %dx.types.ResRet.f32 %9621, 3
  %9626 = call float @dx.op.binary.f32(i32 35, float %9616, float %9617)  ; FMax(a,b)
  %9627 = call float @dx.op.binary.f32(i32 35, float %9615, float %9626)  ; FMax(a,b)
  %9628 = call float @dx.op.binary.f32(i32 35, float %9627, float %9618)  ; FMax(a,b)
  %9629 = call float @dx.op.binary.f32(i32 36, float %9623, float %9624)  ; FMin(a,b)
  %9630 = call float @dx.op.binary.f32(i32 36, float %9622, float %9629)  ; FMin(a,b)
  %9631 = call float @dx.op.binary.f32(i32 36, float %9630, float %9625)  ; FMin(a,b)
  %9632 = fmul fast float %9628, 2.550000e+02
  %9633 = fadd fast float %9632, 0x3F70101020000000
  %9634 = fptoui float %9633 to i32
  %9635 = fmul fast float %9631, 2.550000e+02
  %9636 = fadd fast float %9635, 0x3F70101020000000
  %9637 = fptoui float %9636 to i32
  %9638 = icmp ult i32 %9634, %9637
  br i1 %9638, label %9639, label %9808

; <label>:9639                                    ; preds = %9596
  %9640 = fcmp fast ogt float %100, 9.843750e-01
  %9641 = fadd fast float %8434, -4.000000e+00
  %9642 = select i1 %9640, float -4.000000e+00, float %9641
  %9643 = call float @dx.op.binary.f32(i32 35, float %9642, float 0.000000e+00)  ; FMax(a,b)
  %9644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9644, 0
  %9646 = fadd fast float %9645, %9643
  %9647 = extractvalue %dx.types.CBufRet.f32 %9644, 2
  %9648 = fmul fast float %9646, %9647
  %9649 = call float @dx.op.unary.f32(i32 23, float %9648)  ; Log(value)
  %9650 = extractvalue %dx.types.CBufRet.f32 %9644, 3
  %9651 = fmul fast float %9650, %9649
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 2
  %9654 = fmul fast float %9651, %9653
  %9655 = call float @dx.op.unary.f32(i32 7, float %9654)  ; Saturate(value)
  %9656 = uitofp i32 %9634 to float
  %9657 = uitofp i32 %9637 to float
  %9658 = fadd fast float %9656, 5.000000e-01
  %9659 = fadd fast float %9657, 5.000000e-01
  %9660 = fmul fast float %9653, %9658
  %9661 = fmul fast float %9653, %9659
  %9662 = fadd fast float %9660, 0x3F0FFB4800000000
  %9663 = fadd fast float %9661, 0xBF0FFB4800000000
  %9664 = call float @dx.op.binary.f32(i32 35, float %9655, float %9662)  ; FMax(a,b)
  %9665 = call float @dx.op.binary.f32(i32 36, float %9664, float %9663)  ; FMin(a,b)
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 1
  %9668 = extractvalue %dx.types.CBufRet.f32 %9666, 2
  %9669 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9670 = select i1 %8172, float %9669, float 0.000000e+00
  %9671 = fmul fast float %9667, %9665
  %9672 = fadd fast float %9670, %9671
  %9673 = fadd fast float %9670, %9668
  %9674 = fsub fast float %9667, %9668
  %9675 = fadd fast float %9674, %9670
  %9676 = call float @dx.op.binary.f32(i32 35, float %9672, float %9673)  ; FMax(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9676, float %9675)  ; FMin(a,b)
  %9678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9609, float %9610, float %9677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9679 = extractvalue %dx.types.ResRet.f32 %9678, 0
  %9680 = extractvalue %dx.types.ResRet.f32 %9678, 1
  %9681 = extractvalue %dx.types.ResRet.f32 %9678, 2
  %9682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.i32 %9682, 0
  %9684 = extractvalue %dx.types.CBufRet.i32 %9682, 1
  %9685 = uitofp i32 %9683 to float
  %9686 = uitofp i32 %9684 to float
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 0
  %9689 = extractvalue %dx.types.CBufRet.f32 %9687, 1
  %9690 = fmul fast float %9685, %9609
  %9691 = fmul fast float %9686, %9610
  %9692 = fadd fast float %9690, -5.000000e-01
  %9693 = fadd fast float %9691, -5.000000e-01
  %9694 = call float @dx.op.unary.f32(i32 22, float %9692)  ; Frc(value)
  %9695 = call float @dx.op.unary.f32(i32 22, float %9693)  ; Frc(value)
  %9696 = fmul fast float %9694, %9694
  %9697 = fmul fast float %9696, %9694
  %9698 = fsub fast float 3.000000e+00, %9694
  %9699 = fmul fast float %9696, %9698
  %9700 = fmul fast float %9694, 3.000000e+00
  %9701 = fmul fast float %9697, 3.000000e+00
  %9702 = fmul fast float %9696, 6.000000e+00
  %9703 = fsub fast float %9701, %9702
  %9704 = fadd fast float %9703, 4.000000e+00
  %9705 = fmul fast float %9704, 0x3FC5555560000000
  %9706 = fmul fast float %9697, -3.000000e+00
  %9707 = fadd fast float %9696, %9694
  %9708 = fmul fast float %9707, 3.000000e+00
  %9709 = fadd fast float %9706, 1.000000e+00
  %9710 = fadd fast float %9709, %9708
  %9711 = fmul fast float %9697, 0x3FC5555560000000
  %9712 = fmul fast float %9695, %9695
  %9713 = fmul fast float %9712, %9695
  %9714 = fsub fast float 3.000000e+00, %9695
  %9715 = fmul fast float %9712, %9714
  %9716 = fmul fast float %9695, 3.000000e+00
  %9717 = fmul fast float %9713, 3.000000e+00
  %9718 = fmul fast float %9712, 6.000000e+00
  %9719 = fsub fast float %9717, %9718
  %9720 = fadd fast float %9719, 4.000000e+00
  %9721 = fmul fast float %9720, 0x3FC5555560000000
  %9722 = fmul fast float %9713, -3.000000e+00
  %9723 = fadd fast float %9712, %9695
  %9724 = fmul fast float %9723, 3.000000e+00
  %9725 = fadd fast float %9722, 1.000000e+00
  %9726 = fadd fast float %9725, %9724
  %9727 = fmul fast float %9713, 0x3FC5555560000000
  %9728 = fadd fast float %9694, 1.000000e+00
  %9729 = fsub fast float 1.000000e+00, %9700
  %9730 = fadd fast float %9729, %9699
  %9731 = fadd fast float %9730, %9704
  %9732 = fmul fast float %9731, 0x3FC5555560000000
  %9733 = fdiv fast float %9705, %9732
  %9734 = fsub fast float %9728, %9733
  %9735 = fsub fast float 1.000000e+00, %9694
  %9736 = fadd fast float %9710, %9697
  %9737 = fmul fast float %9736, 0x3FC5555560000000
  %9738 = fdiv fast float %9711, %9737
  %9739 = fadd fast float %9735, %9738
  %9740 = fadd fast float %9695, 1.000000e+00
  %9741 = fsub fast float 1.000000e+00, %9716
  %9742 = fadd fast float %9741, %9715
  %9743 = fadd fast float %9742, %9720
  %9744 = fmul fast float %9743, 0x3FC5555560000000
  %9745 = fdiv fast float %9721, %9744
  %9746 = fsub fast float %9740, %9745
  %9747 = fsub fast float 1.000000e+00, %9695
  %9748 = fadd fast float %9726, %9713
  %9749 = fmul fast float %9748, 0x3FC5555560000000
  %9750 = fdiv fast float %9727, %9749
  %9751 = fadd fast float %9750, %9747
  %9752 = fmul fast float %9734, %9688
  %9753 = fsub fast float %9609, %9752
  %9754 = fmul fast float %9739, %9688
  %9755 = fadd fast float %9754, %9609
  %9756 = fmul fast float %9751, %9689
  %9757 = fadd fast float %9756, %9610
  %9758 = fmul fast float %9746, %9689
  %9759 = fsub fast float %9610, %9758
  %9760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9753, float %9759, float %9677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9761 = extractvalue %dx.types.ResRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.ResRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.ResRet.f32 %9760, 2
  %9764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9755, float %9759, float %9677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9765 = extractvalue %dx.types.ResRet.f32 %9764, 0
  %9766 = extractvalue %dx.types.ResRet.f32 %9764, 1
  %9767 = extractvalue %dx.types.ResRet.f32 %9764, 2
  %9768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9753, float %9757, float %9677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9769 = extractvalue %dx.types.ResRet.f32 %9768, 0
  %9770 = extractvalue %dx.types.ResRet.f32 %9768, 1
  %9771 = extractvalue %dx.types.ResRet.f32 %9768, 2
  %9772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9755, float %9757, float %9677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9773 = extractvalue %dx.types.ResRet.f32 %9772, 0
  %9774 = extractvalue %dx.types.ResRet.f32 %9772, 1
  %9775 = extractvalue %dx.types.ResRet.f32 %9772, 2
  %9776 = fsub fast float %9769, %9761
  %9777 = fsub fast float %9770, %9762
  %9778 = fsub fast float %9771, %9763
  %9779 = fmul fast float %9776, %9749
  %9780 = fmul fast float %9777, %9749
  %9781 = fmul fast float %9778, %9749
  %9782 = fadd fast float %9779, %9761
  %9783 = fadd fast float %9780, %9762
  %9784 = fadd fast float %9781, %9763
  %9785 = fsub fast float %9773, %9765
  %9786 = fsub fast float %9774, %9766
  %9787 = fsub fast float %9775, %9767
  %9788 = fmul fast float %9785, %9749
  %9789 = fmul fast float %9786, %9749
  %9790 = fmul fast float %9787, %9749
  %9791 = fsub fast float %9765, %9782
  %9792 = fadd fast float %9791, %9788
  %9793 = fsub fast float %9766, %9783
  %9794 = fadd fast float %9793, %9789
  %9795 = fsub fast float %9767, %9784
  %9796 = fadd fast float %9795, %9790
  %9797 = fmul fast float %9792, %9737
  %9798 = fmul fast float %9794, %9737
  %9799 = fmul fast float %9796, %9737
  %9800 = fadd fast float %9797, %9782
  %9801 = fadd fast float %9798, %9783
  %9802 = fadd fast float %9799, %9784
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9805 = fmul fast float %9800, %9804
  %9806 = fmul fast float %9801, %9804
  %9807 = fmul fast float %9802, %9804
  br label %9808

; <label>:9808                                    ; preds = %9639, %9596
  %9809 = phi float [ %9679, %9639 ], [ 1.000000e+00, %9596 ]
  %9810 = phi float [ %9680, %9639 ], [ 1.000000e+00, %9596 ]
  %9811 = phi float [ %9681, %9639 ], [ 1.000000e+00, %9596 ]
  %9812 = phi float [ %9805, %9639 ], [ 0.000000e+00, %9596 ]
  %9813 = phi float [ %9806, %9639 ], [ 0.000000e+00, %9596 ]
  %9814 = phi float [ %9807, %9639 ], [ 0.000000e+00, %9596 ]
  %9815 = fmul fast float %9812, %8150
  %9816 = fmul fast float %9813, %8150
  %9817 = fmul fast float %9814, %8150
  %9818 = fmul fast float %9809, %9603
  %9819 = call float @dx.op.dot3.f32(i32 55, float %9809, float %9810, float %9811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9820 = call float @dx.op.dot3.f32(i32 55, float %9815, float %9816, float %9817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9821 = select i1 %260, float %9819, float %9809
  %9822 = select i1 %260, float %9819, float %9810
  %9823 = select i1 %260, float 1.000000e+00, float %9811
  %9824 = select i1 %260, float %9820, float %9815
  %9825 = select i1 %260, float 0.000000e+00, float %9816
  %9826 = select i1 %260, float 0.000000e+00, float %9817
  %9827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9828 = extractvalue %dx.types.CBufRet.i32 %9827, 3
  %9829 = and i32 %9828, 3
  %9830 = icmp ne i32 %9829, 0
  %9831 = and i32 %9828, 4
  %9832 = icmp ne i32 %9831, 0
  %9833 = and i1 %9830, %9832
  %9834 = and i1 %260, %9833
  br i1 %9834, label %9835, label %9841

; <label>:9835                                    ; preds = %9808
  %9836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9837 = extractvalue %dx.types.CBufRet.f32 %9836, 1
  %9838 = fadd fast float %9818, -1.000000e+00
  %9839 = fmul fast float %9837, %9838
  %9840 = fadd fast float %9839, 1.000000e+00
  br label %9841

; <label>:9841                                    ; preds = %9835, %9808
  %9842 = phi float [ %9840, %9835 ], [ %9818, %9808 ]
  %9843 = fadd fast float %9600, %9597
  %9844 = fmul fast float %9821, %9843
  %9845 = fadd fast float %9844, %9824
  %9846 = fadd fast float %9601, %9598
  %9847 = fmul fast float %9822, %9846
  %9848 = fadd fast float %9847, %9825
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 0
  br i1 %260, label %9851, label %9875

; <label>:9851                                    ; preds = %9841
  %9852 = fadd fast float %9845, %9848
  %9853 = fmul fast float %9850, %9852
  %9854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9855 = extractvalue %dx.types.CBufRet.f32 %9854, 3
  %9856 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %9857 = fsub fast float %8159, %8153
  %9858 = fadd fast float %9857, %8160
  %9859 = fsub fast float %9858, %9856
  %9860 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %9861 = fmul fast float %9859, %9860
  %9862 = call float @dx.op.unary.f32(i32 7, float %9861)  ; Saturate(value)
  %9863 = fsub fast float %9862, %9855
  %9864 = fmul fast float %9863, %9842
  %9865 = fadd fast float %9864, %9855
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 0
  %9868 = fsub fast float %9865, %9867
  %9869 = fmul fast float %9868, 1.000000e+01
  %9870 = call float @dx.op.unary.f32(i32 7, float %9869)  ; Saturate(value)
  %9871 = fsub fast float %3843, %8150
  %9872 = fmul fast float %9870, %9871
  %9873 = fadd fast float %9872, %8150
  %9874 = fmul fast float %9873, %9865
  br label %9899

; <label>:9875                                    ; preds = %9841
  %9876 = fadd fast float %9602, %9599
  %9877 = fmul fast float %9823, %9876
  %9878 = fadd fast float %9877, %9826
  %9879 = fmul fast float %9850, %9845
  %9880 = fmul fast float %9850, %9848
  %9881 = fmul fast float %9850, %9878
  %9882 = call float @dx.op.binary.f32(i32 35, float %9880, float %9881)  ; FMax(a,b)
  %9883 = call float @dx.op.binary.f32(i32 35, float %9879, float %9882)  ; FMax(a,b)
  %9884 = call float @dx.op.binary.f32(i32 35, float %9883, float %8150)  ; FMax(a,b)
  %9885 = fcmp fast ugt float %9884, 0x3F10000000000000
  br i1 %9885, label %9887, label %9886

; <label>:9886                                    ; preds = %9875
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9887

; <label>:9887                                    ; preds = %9886, %9875
  %9888 = add i32 %60, 356
  %9889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9888, i32 undef)  ; BufferLoad(srv,index,wot)
  %9890 = extractvalue %dx.types.ResRet.i32 %9889, 0
  %9891 = and i32 %9890, 32
  %9892 = icmp eq i32 %9891, 0
  br i1 %9892, label %9899, label %9893

; <label>:9893                                    ; preds = %9887
  %9894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9895 = extractvalue %dx.types.CBufRet.f32 %9894, 0
  %9896 = fmul fast float %9895, 0x3FE99999A0000000
  %9897 = fadd fast float %9895, %9879
  %9898 = fadd fast float %9896, %9881
  br label %9899

; <label>:9899                                    ; preds = %9893, %9887, %9851
  %9900 = phi float [ %9853, %9851 ], [ %9897, %9893 ], [ %9879, %9887 ]
  %9901 = phi float [ %9874, %9851 ], [ %9880, %9893 ], [ %9880, %9887 ]
  %9902 = phi float [ %9873, %9851 ], [ %9898, %9893 ], [ %9881, %9887 ]
  %9903 = phi float [ %9873, %9851 ], [ %8150, %9893 ], [ %8150, %9887 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9904 = call float @dx.op.binary.f32(i32 36, float %9900, float 3.225500e+04)  ; FMin(a,b)
  %9905 = call float @dx.op.binary.f32(i32 36, float %9901, float 3.225500e+04)  ; FMin(a,b)
  %9906 = call float @dx.op.binary.f32(i32 36, float %9902, float 3.225500e+04)  ; FMin(a,b)
  %9907 = call float @dx.op.binary.f32(i32 36, float %9903, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9904)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9905)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9906)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

